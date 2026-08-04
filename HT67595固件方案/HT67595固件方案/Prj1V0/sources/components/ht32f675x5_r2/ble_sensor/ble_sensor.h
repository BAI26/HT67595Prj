/*************************************************************************************************************
 * @file        ble_sensor.h
 * @brief       BLE 传感器 SDK 门面（协议 + GATT 服务 + IPC）
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   CP 侧可一键初始化 GATT（及可选 IPC 接收转 Notify）。
 *   MP 侧仅初始化 IPC，负责打包并发送到 CP。
 *
 ************************************************************************************************************/
#ifndef __BLE_SENSOR_H__
#define __BLE_SENSOR_H__

#include <stdbool.h>
#include "err_def.h"
#include "ble_sensor_proto.h"
#include "ble_sensor_ipc.h"

#if defined(__CO_PROCESSOR)
#include "ble_sensor_service.h"
#endif

#ifdef __cplusplus
extern "C" {
#endif

#if defined(__CO_PROCESSOR)
/**
 * @brief  CP：GATT 服务（可选 IPC 接收 → Notify）。
 */
static inline EN_ERR_STA_T ble_sensor_sdk_init_cp(ble_sensor_cmd_handler_t pfnCmdHandler, bool bEnableIpc)
{
    EN_ERR_STA_T enRet = ble_sensor_service_init(pfnCmdHandler);
    if ((ERR_STA_OK == enRet) && bEnableIpc)
    {
        enRet = ble_sensor_ipc_init(NULL);
    }
    return enRet;
}
#endif

/**
 * @brief  MP：仅 IPC（打包并发送到 CP）。
 */
static inline EN_ERR_STA_T ble_sensor_sdk_init_mp(ble_sensor_ipc_ctrl_cb_t pfnCtrlCb)
{
    return ble_sensor_ipc_init(pfnCtrlCb);
}

#ifdef __cplusplus
}
#endif

#endif /* __BLE_SENSOR_H__ */
