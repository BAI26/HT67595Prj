/*************************************************************************************************************
 * @file        ble_sensor_service.c
 * @brief       私有 GATT 传感器服务实现（CP）
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   注册 Service/Stream/CCCD/CMD，处理 CCCD 开关与 CMD 写回调。
 *   Notify 仅在连接有效且客户端开启 Notify 时发送。
 *
 ************************************************************************************************************/
#include <stdint.h>
#include <stdbool.h>
#include <string.h>

#include "err_def.h"
#include "gatt_service_api.h"
#include "patch_gatt_service_api.h"
#include "ble_sensor_service.h"

#define BLE_SENSOR_RETURN_IF_ZERO(h) \
    do { if ((h) == 0u) { return ERR_STA_ERROR; } } while (0)

typedef enum
{
    BLE_SENSOR_H_STREAM = 0,
    BLE_SENSOR_H_CCCD,
    BLE_SENSOR_H_CMD,
    BLE_SENSOR_H_MAX
} ble_sensor_handle_idx_t;

static uint16_t                 s_au16Hdl[BLE_SENSOR_H_MAX];
static uint8_t                  s_u8Cccd = 0;
static uint16_t                 s_u16Conn = 0;
static ble_sensor_cmd_handler_t s_pfnCmd = NULL;
static uint8_t                  s_au8Tx[BLE_SENSOR_PKT_MAX_LEN];

static uint16_t ble_sensor_get_attr_len_cb(uint16_t u16ConnHandle, uint16_t u16AttrHandle);
static uint16_t ble_sensor_read_attr_cb(uint16_t u16ConnHandle, uint16_t u16AttrHandle, uint16_t u16Offset,
                                        uint8_t *pu8Data, uint16_t u16DataLen);
static uint32_t ble_sensor_write_attr_cb(uint16_t u16ConnHandle, uint16_t u16AttrHandle, uint16_t u16Mode,
                                         uint16_t u16Offset, uint8_t *pu8Data, uint16_t u16DataLen);

static const gatt_serviceCBs_t s_stCbs = {
    ble_sensor_get_attr_len_cb,
    ble_sensor_read_attr_cb,
    ble_sensor_write_attr_cb,
};

/**
 * @brief  注册私有 GATT 服务（Stream/CCCD/CMD）。
 * @param  pfnCmdHandler  CMD 写回调
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ble_sensor_service_init(ble_sensor_cmd_handler_t pfnCmdHandler)
{
    uint16_t u16Hdl;

    s_pfnCmd = pfnCmdHandler;
    s_u8Cccd = 0;
    s_u16Conn = 0;
    memset(s_au16Hdl, 0, sizeof(s_au16Hdl));

    u16Hdl = patch_gatts_api_add_service_start(false, BLE_SENSOR_UUID_SERVICE, NULL,
                                               (gatt_serviceCBs_t *)&s_stCbs);
    BLE_SENSOR_RETURN_IF_ZERO(u16Hdl);

    u16Hdl = patch_gatts_api_add_char(0, BLE_SENSOR_UUID_STREAM, NULL,
                                      (ATT_PROPERTY_NOTIFY | ATT_PROPERTY_DYNAMIC), NULL, 0);
    BLE_SENSOR_RETURN_IF_ZERO(u16Hdl);
    s_au16Hdl[BLE_SENSOR_H_STREAM] = u16Hdl;

    u16Hdl = rom_gatts_api_add_char_descrip_client_config();
    BLE_SENSOR_RETURN_IF_ZERO(u16Hdl);
    s_au16Hdl[BLE_SENSOR_H_CCCD] = u16Hdl;

    u16Hdl = patch_gatts_api_add_char(0, BLE_SENSOR_UUID_CMD, NULL,
                                      (ATT_PROPERTY_WRITE_WITHOUT_RESPONSE | ATT_PROPERTY_DYNAMIC), NULL, 0);
    BLE_SENSOR_RETURN_IF_ZERO(u16Hdl);
    s_au16Hdl[BLE_SENSOR_H_CMD] = u16Hdl;

    patch_gatts_api_add_service_end();
    return ERR_STA_OK;
}

/**
 * @brief  设置当前连接句柄；0 表示断开并清 CCCD。
 * @param  u16ConnHandle  连接句柄
 */
void ble_sensor_service_set_conn_handle(uint16_t u16ConnHandle)
{
    s_u16Conn = u16ConnHandle;
    if (0u == u16ConnHandle)
    {
        s_u8Cccd = 0;
    }
}

/**
 * @brief  获取当前连接句柄。
 * @return 连接句柄
 */
uint16_t ble_sensor_service_get_conn_handle(void)
{
    return s_u16Conn;
}

/**
 * @brief  是否已连接且客户端开启 Notify。
 * @return true 可发送
 */
bool ble_sensor_service_is_notify_enabled(void)
{
    return (0u != (s_u8Cccd & (uint8_t)GATT_CLIENT_CFG_NOTIFY)) && (0u != s_u16Conn);
}

/**
 * @brief  发送原始数据包 Notify。
 * @param  pu8Data  数据
 * @param  u16Len  长度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ble_sensor_service_notify_raw(const uint8_t *pu8Data, uint16_t u16Len)
{
    uint8_t u8Ret;

    if ((NULL == pu8Data) || (0u == u16Len) || (u16Len > BLE_SENSOR_PKT_MAX_LEN))
    {
        return ERR_PARA_ERR;
    }
    if (!ble_sensor_service_is_notify_enabled())
    {
        return ERR_NOT_ALLOWED;
    }

    u8Ret = rom_gatts_api_send_notify(s_u16Conn, s_au16Hdl[BLE_SENSOR_H_STREAM], (uint8_t *)pu8Data, u16Len);
    return (0u == u8Ret) ? ERR_STA_OK : ERR_STA_ERROR;
}

/**
 * @brief  打包并 Notify IMU。
 * @param  pstSample  采样
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ble_sensor_service_notify_imu(const ble_sensor_sample_t *pstSample)
{
    uint16_t u16Len = ble_sensor_pack_imu(pstSample, s_au8Tx, sizeof(s_au8Tx));
    return (0u == u16Len) ? ERR_PARA_ERR : ble_sensor_service_notify_raw(s_au8Tx, u16Len);
}

/**
 * @brief  打包并 Notify ENV。
 * @param  pstSample  采样
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ble_sensor_service_notify_env(const ble_sensor_sample_t *pstSample)
{
    uint16_t u16Len = ble_sensor_pack_env(pstSample, s_au8Tx, sizeof(s_au8Tx));
    return (0u == u16Len) ? ERR_PARA_ERR : ble_sensor_service_notify_raw(s_au8Tx, u16Len);
}

/**
 * @brief  打包并 Notify AHRS。
 * @param  pstSample  采样
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ble_sensor_service_notify_ahrs(const ble_sensor_sample_t *pstSample)
{
    uint16_t u16Len = ble_sensor_pack_ahrs(pstSample, s_au8Tx, sizeof(s_au8Tx));
    return (0u == u16Len) ? ERR_PARA_ERR : ble_sensor_service_notify_raw(s_au8Tx, u16Len);
}

/**
 * @brief  打包并 Notify MAG。
 * @param  pstSample  采样
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ble_sensor_service_notify_mag(const ble_sensor_sample_t *pstSample)
{
    uint16_t u16Len = ble_sensor_pack_mag(pstSample, s_au8Tx, sizeof(s_au8Tx));
    return (0u == u16Len) ? ERR_PARA_ERR : ble_sensor_service_notify_raw(s_au8Tx, u16Len);
}

/**
 * @brief  发送 IMU+ENV+可选 MAG+AHRS Notify。
 * @param  pstSample  采样
 * @return 最后一次错误或 OK
 */
EN_ERR_STA_T ble_sensor_service_notify_sample(const ble_sensor_sample_t *pstSample)
{
    EN_ERR_STA_T enRet;
    EN_ERR_STA_T enLast = ERR_STA_OK;

    if (NULL == pstSample)
    {
        return ERR_PARA_ERR;
    }

    enRet = ble_sensor_service_notify_imu(pstSample);
    if (ERR_STA_OK != enRet)
    {
        enLast = enRet;
    }
    enRet = ble_sensor_service_notify_env(pstSample);
    if (ERR_STA_OK != enRet)
    {
        enLast = enRet;
    }
    if (0u != (pstSample->u8Flags & BLE_SENSOR_FLAG_MAG_VALID))
    {
        enRet = ble_sensor_service_notify_mag(pstSample);
        if (ERR_STA_OK != enRet)
        {
            enLast = enRet;
        }
    }
    enRet = ble_sensor_service_notify_ahrs(pstSample);
    if (ERR_STA_OK != enRet)
    {
        enLast = enRet;
    }
    return enLast;
}

/**
 * @brief  GATT 属性长度回调（CCCD=2）。
 * @return 属性长度
 */
static uint16_t ble_sensor_get_attr_len_cb(uint16_t u16ConnHandle, uint16_t u16AttrHandle)
{
    (void)u16ConnHandle;
    if (s_au16Hdl[BLE_SENSOR_H_CCCD] == u16AttrHandle)
    {
        return 2;
    }
    return 0;
}

/**
 * @brief  GATT 读回调，返回 CCCD 值。
 * @return 读出字节数
 */
static uint16_t ble_sensor_read_attr_cb(uint16_t u16ConnHandle, uint16_t u16AttrHandle, uint16_t u16Offset,
                                        uint8_t *pu8Data, uint16_t u16DataLen)
{
    (void)u16ConnHandle;
    (void)u16Offset;
    (void)u16DataLen;
    if (s_au16Hdl[BLE_SENSOR_H_CCCD] == u16AttrHandle)
    {
        if (pu8Data != NULL)
        {
            pu8Data[0] = s_u8Cccd;
            pu8Data[1] = 0;
        }
        return 2;
    }
    return 0;
}

/**
 * @brief  GATT 写回调：处理 CMD 与 CCCD。
 * @return 固定 0
 */
static uint32_t ble_sensor_write_attr_cb(uint16_t u16ConnHandle, uint16_t u16AttrHandle, uint16_t u16Mode,
                                         uint16_t u16Offset, uint8_t *pu8Data, uint16_t u16DataLen)
{
    (void)u16Offset;
    if ((s_au16Hdl[BLE_SENSOR_H_CMD] == u16AttrHandle) && (ATT_TRANSACTION_MODE_NONE == u16Mode))
    {
        if ((s_pfnCmd != NULL) && (pu8Data != NULL) && (u16DataLen > 0u))
        {
            s_pfnCmd(u16ConnHandle, pu8Data, u16DataLen);
        }
    }
    else if (s_au16Hdl[BLE_SENSOR_H_CCCD] == u16AttrHandle)
    {
        if ((pu8Data != NULL) && (u16DataLen > 0u))
        {
            s_u8Cccd = pu8Data[0];
        }
    }
    return 0;
}
