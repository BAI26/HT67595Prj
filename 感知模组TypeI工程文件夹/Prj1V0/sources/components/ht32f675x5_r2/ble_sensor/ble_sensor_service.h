/*************************************************************************************************************
 * @file        ble_sensor_service.h
 * @brief       CP 侧私有 GATT 传感器服务接口（Notify 流 + Write CMD）
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   在 CP 的 ble_init / Host 就绪后与其它 Profile 一并注册。
 *   提供原始包 Notify 与 IMU/ENV/AHRS/MAG 打包发送辅助。
 *
 ************************************************************************************************************/
#ifndef __BLE_SENSOR_SERVICE_H__
#define __BLE_SENSOR_SERVICE_H__

#include <stdint.h>
#include <stdbool.h>
#include "err_def.h"
#include "ble_sensor_proto.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*ble_sensor_cmd_handler_t)(uint16_t u16ConnHandle, uint8_t *pu8Data, uint16_t u16Len);

/**
 * @brief  注册 GATT 服务。在 CP 的 ble_init / Host 就绪后，与其它 Profile 一并调用。
 */
EN_ERR_STA_T ble_sensor_service_init(ble_sensor_cmd_handler_t pfnCmdHandler);

/**
 * @brief  设置当前连接句柄；0 表示断开并清 CCCD。
 * @param  u16ConnHandle  连接句柄
 */
void ble_sensor_service_set_conn_handle(uint16_t u16ConnHandle);
/**
 * @brief  获取当前连接句柄。
 * @return 连接句柄
 */
uint16_t ble_sensor_service_get_conn_handle(void);

/**
 * @brief  是否已连接且客户端开启 Notify。
 * @return true 可发送
 */
bool ble_sensor_service_is_notify_enabled(void);

/**
 * @brief  发送原始数据包 Notify（建议已打包且 ≤20 字节）。
 */
EN_ERR_STA_T ble_sensor_service_notify_raw(const uint8_t *pu8Data, uint16_t u16Len);

/**
 * @brief  打包并 Notify IMU。
 * @param  pstSample  采样
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ble_sensor_service_notify_imu(const ble_sensor_sample_t *pstSample);

/**
 * @brief  打包并 Notify ENV。
 * @param  pstSample  采样
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ble_sensor_service_notify_env(const ble_sensor_sample_t *pstSample);
/**
 * @brief  打包并 Notify AHRS。
 * @param  pstSample  采样
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ble_sensor_service_notify_ahrs(const ble_sensor_sample_t *pstSample);
/**
 * @brief  打包并 Notify MAG。
 * @param  pstSample  采样
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ble_sensor_service_notify_mag(const ble_sensor_sample_t *pstSample);

/**
 * @brief  发送 IMU + ENV（以及标志置位时的 MAG/AHRS）。返回最后一次错误（全部成功则为 OK）。
 */
EN_ERR_STA_T ble_sensor_service_notify_sample(const ble_sensor_sample_t *pstSample);

#ifdef __cplusplus
}
#endif

#endif /* __BLE_SENSOR_SERVICE_H__ */
