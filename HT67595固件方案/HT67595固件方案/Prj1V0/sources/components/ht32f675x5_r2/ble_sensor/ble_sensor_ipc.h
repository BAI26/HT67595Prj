/*************************************************************************************************************
 * @file        ble_sensor_ipc.h
 * @brief       ble_sensor 数据包的 MP↔CP IPC 桥接接口
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   基于 ipc_general：MP 打包后发送，CP 侧转 GATT Notify。
 *   亦可将手机 CMD 经 CTRL 通道回传到 MP。
 *
 ************************************************************************************************************/
#ifndef __BLE_SENSOR_IPC_H__
#define __BLE_SENSOR_IPC_H__

#include <stdint.h>
#include "err_def.h"
#include "ble_sensor_proto.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*ble_sensor_ipc_ctrl_cb_t)(uint8_t u8Cmd, const uint8_t *pu8Data, uint16_t u16Len);

/**
 * @brief  初始化 IPC；CP 侧可将 NOTIFY 自动推到 GATT。
 * @param  pfnCtrlCb  可选 CTRL 回调（通常在 MP）
 */
EN_ERR_STA_T ble_sensor_ipc_init(ble_sensor_ipc_ctrl_cb_t pfnCtrlCb);

/**
 * @brief  MP：将已打包的传感器包发送到 CP，用于 GATT Notify。
 */
EN_ERR_STA_T ble_sensor_ipc_send_packet(const uint8_t *pu8Pkt, uint16_t u16Len);

/**
 * @brief  打包并发送 IMU 包到 CP。
 * @param  pstSample  采样
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ble_sensor_ipc_send_imu(const ble_sensor_sample_t *pstSample);

/**
 * @brief  打包并发送 ENV 包到 CP。
 * @param  pstSample  采样
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ble_sensor_ipc_send_env(const ble_sensor_sample_t *pstSample);
/**
 * @brief  打包并发送 AHRS 包到 CP。
 * @param  pstSample  采样
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ble_sensor_ipc_send_ahrs(const ble_sensor_sample_t *pstSample);
/**
 * @brief  打包并发送 MAG 包到 CP。
 * @param  pstSample  采样
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ble_sensor_ipc_send_mag(const ble_sensor_sample_t *pstSample);
/**
 * @brief  依次发送 IMU/ENV/可选 MAG/AHRS。
 * @param  pstSample  采样
 * @return 最后一次错误或 OK
 */
EN_ERR_STA_T ble_sensor_ipc_send_sample(const ble_sensor_sample_t *pstSample);

/**
 * @brief  CP：将手机 CMD 转发到 MP（可选）。
 */
EN_ERR_STA_T ble_sensor_ipc_send_ctrl(uint8_t u8Ctrl, const uint8_t *pu8Data, uint16_t u16Len);

#ifdef __cplusplus
}
#endif

#endif /* __BLE_SENSOR_IPC_H__ */
