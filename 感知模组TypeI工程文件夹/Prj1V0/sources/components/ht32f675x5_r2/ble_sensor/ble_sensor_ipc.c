/*************************************************************************************************************
 * @file        ble_sensor_ipc.c
 * @brief       IPC 桥接实现：MP 打包传感器数据 → CP GATT Notify
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   接收回调：NOTIFY 在 CP 上转 GATT；CTRL 回调到 MP 控制处理。
 *   send_sample 会依次发送 IMU/ENV/（可选 MAG）/AHRS。
 *
 ************************************************************************************************************/
#include <stdint.h>
#include <string.h>

#include "err_def.h"
#include "msg_queue.h"
#include "ipc_general_queue.h"
#include "ble_sensor_ipc.h"

#if defined(__CO_PROCESSOR)
#include "ble_sensor_service.h"
#define BLE_SENSOR_IPC_HAS_GATT 1
#else
#define BLE_SENSOR_IPC_HAS_GATT 0
#endif

static ble_sensor_ipc_ctrl_cb_t s_pfnCtrlCb = NULL;
static uint8_t s_au8IpcMem[IpcMessageBufferMemSize(IPC_MSG_COUNT, IPC_MSG_DATA_SIZE + 1u)]
    __attribute__((aligned(4)));
static uint8_t s_au8Tx[BLE_SENSOR_PKT_MAX_LEN + 1u];

/**
 * @brief  IPC 接收：NOTIFY 转 GATT，CTRL 调 MP 回调。
 * @return 固定 0
 */
static uint32_t ble_sensor_ipc_rx_cb(uint8_t *pu8Data, uint32_t u32DataLen)
{
    uint8_t  u8Cmd;
    uint8_t *pu8Payload;
    uint16_t u16PayloadLen;

    if ((NULL == pu8Data) || (0u == u32DataLen))
    {
        return 0;
    }

    u8Cmd = pu8Data[0];
    pu8Payload = (u32DataLen > 1u) ? &pu8Data[1] : NULL;
    u16PayloadLen = (u32DataLen > 1u) ? (uint16_t)(u32DataLen - 1u) : 0u;

    if (BLE_SENSOR_IPC_CMD_NOTIFY == u8Cmd)
    {
#if BLE_SENSOR_IPC_HAS_GATT
        if ((pu8Payload != NULL) && (u16PayloadLen > 0u))
        {
            (void)ble_sensor_service_notify_raw(pu8Payload, u16PayloadLen);
        }
#else
        (void)pu8Payload;
        (void)u16PayloadLen;
#endif
    }
    else if (BLE_SENSOR_IPC_CMD_CTRL == u8Cmd)
    {
        if (s_pfnCtrlCb != NULL)
        {
            s_pfnCtrlCb((pu8Payload != NULL) ? pu8Payload[0] : 0u,
                        (u16PayloadLen > 1u) ? &pu8Payload[1] : NULL,
                        (u16PayloadLen > 1u) ? (uint16_t)(u16PayloadLen - 1u) : 0u);
        }
    }

    return 0;
}

/**
 * @brief  初始化 ipc_general 并注册接收回调。
 * @param  pfnCtrlCb  可选 CTRL 回调
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ble_sensor_ipc_init(ble_sensor_ipc_ctrl_cb_t pfnCtrlCb)
{
    stIpcInit_t stInit;

    s_pfnCtrlCb = pfnCtrlCb;
    memset(&stInit, 0, sizeof(stInit));
    stInit.pu8Buf      = s_au8IpcMem;
    stInit.u32BufSize  = sizeof(s_au8IpcMem);
    stInit.u32MsgCount = IPC_MSG_COUNT;
    stInit.u32MsgSize  = IPC_MSG_DATA_SIZE;
    stInit.enMode      = QUEUE_MODE_NO_OVERFLOW;
    stInit.pfnCallback = ble_sensor_ipc_rx_cb;
    return ipc_general_init(&stInit);
}

/**
 * @brief  组装命令+载荷并非阻塞发送。
 * @return ERR_STA_OK 成功
 */
static EN_ERR_STA_T ble_sensor_ipc_send(uint8_t u8Cmd, const uint8_t *pu8Data, uint16_t u16Len)
{
    if (u16Len > IPC_MSG_DATA_SIZE)
    {
        return ERR_PARA_ERR;
    }
    if ((NULL == pu8Data) && (0u != u16Len))
    {
        return ERR_PARA_ERR;
    }

    s_au8Tx[0] = u8Cmd;
    if ((pu8Data != NULL) && (u16Len > 0u))
    {
        memcpy(&s_au8Tx[1], pu8Data, u16Len);
    }
    return ipc_general_send_msg_nonblocking(s_au8Tx, (uint32_t)u16Len + 1u);
}

/**
 * @brief  以 NOTIFY 命令发送已打包传感器包。
 * @param  pu8Pkt  包
 * @param  u16Len  长度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ble_sensor_ipc_send_packet(const uint8_t *pu8Pkt, uint16_t u16Len)
{
    if ((NULL == pu8Pkt) || (0u == u16Len) || (u16Len > BLE_SENSOR_PKT_MAX_LEN))
    {
        return ERR_PARA_ERR;
    }
    return ble_sensor_ipc_send(BLE_SENSOR_IPC_CMD_NOTIFY, pu8Pkt, u16Len);
}

/**
 * @brief  打包并发送 IMU 包到 CP。
 * @param  pstSample  采样
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ble_sensor_ipc_send_imu(const ble_sensor_sample_t *pstSample)
{
    uint8_t  au8[BLE_SENSOR_PKT_MAX_LEN];
    uint16_t u16Len = ble_sensor_pack_imu(pstSample, au8, sizeof(au8));
    return (0u == u16Len) ? ERR_PARA_ERR : ble_sensor_ipc_send_packet(au8, u16Len);
}

/**
 * @brief  打包并发送 ENV 包到 CP。
 * @param  pstSample  采样
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ble_sensor_ipc_send_env(const ble_sensor_sample_t *pstSample)
{
    uint8_t  au8[BLE_SENSOR_PKT_MAX_LEN];
    uint16_t u16Len = ble_sensor_pack_env(pstSample, au8, sizeof(au8));
    return (0u == u16Len) ? ERR_PARA_ERR : ble_sensor_ipc_send_packet(au8, u16Len);
}

/**
 * @brief  打包并发送 AHRS 包到 CP。
 * @param  pstSample  采样
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ble_sensor_ipc_send_ahrs(const ble_sensor_sample_t *pstSample)
{
    uint8_t  au8[BLE_SENSOR_PKT_MAX_LEN];
    uint16_t u16Len = ble_sensor_pack_ahrs(pstSample, au8, sizeof(au8));
    return (0u == u16Len) ? ERR_PARA_ERR : ble_sensor_ipc_send_packet(au8, u16Len);
}

/**
 * @brief  打包并发送 MAG 包到 CP。
 * @param  pstSample  采样
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ble_sensor_ipc_send_mag(const ble_sensor_sample_t *pstSample)
{
    uint8_t  au8[BLE_SENSOR_PKT_MAX_LEN];
    uint16_t u16Len = ble_sensor_pack_mag(pstSample, au8, sizeof(au8));
    return (0u == u16Len) ? ERR_PARA_ERR : ble_sensor_ipc_send_packet(au8, u16Len);
}

/**
 * @brief  依次发送 IMU/ENV/可选 MAG/AHRS。
 * @param  pstSample  采样
 * @return 最后一次错误或 OK
 */
EN_ERR_STA_T ble_sensor_ipc_send_sample(const ble_sensor_sample_t *pstSample)
{
    EN_ERR_STA_T enRet;
    EN_ERR_STA_T enLast = ERR_STA_OK;

    if (NULL == pstSample)
    {
        return ERR_PARA_ERR;
    }

    enRet = ble_sensor_ipc_send_imu(pstSample);
    if (ERR_STA_OK != enRet)
    {
        enLast = enRet;
    }
    enRet = ble_sensor_ipc_send_env(pstSample);
    if (ERR_STA_OK != enRet)
    {
        enLast = enRet;
    }
    if (0u != (pstSample->u8Flags & BLE_SENSOR_FLAG_MAG_VALID))
    {
        enRet = ble_sensor_ipc_send_mag(pstSample);
        if (ERR_STA_OK != enRet)
        {
            enLast = enRet;
        }
    }
    enRet = ble_sensor_ipc_send_ahrs(pstSample);
    if (ERR_STA_OK != enRet)
    {
        enLast = enRet;
    }
    return enLast;
}

/**
 * @brief  CP 将控制命令转发到 MP。
 * @param  u8Ctrl  命令
 * @param  pu8Data  载荷
 * @param  u16Len  长度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ble_sensor_ipc_send_ctrl(uint8_t u8Ctrl, const uint8_t *pu8Data, uint16_t u16Len)
{
    uint8_t au8[BLE_SENSOR_PKT_MAX_LEN];

    if ((u16Len + 1u) > sizeof(au8))
    {
        return ERR_PARA_ERR;
    }
    au8[0] = u8Ctrl;
    if ((pu8Data != NULL) && (u16Len > 0u))
    {
        memcpy(&au8[1], pu8Data, u16Len);
    }
    return ble_sensor_ipc_send(BLE_SENSOR_IPC_CMD_CTRL, au8, (uint16_t)(u16Len + 1u));
}
