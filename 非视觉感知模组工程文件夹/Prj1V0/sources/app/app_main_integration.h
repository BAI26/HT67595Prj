/**
 * @file    app_main_integration.h
 * @brief   应用程序主集成模块
 * @note    整合 OTA、BLE OTA Service、模型推理
 */
#ifndef APP_MAIN_INTEGRATION_H
#define APP_MAIN_INTEGRATION_H

#include <stdint.h>

/* 应用程序状态 */
typedef enum {
    APP_STATE_INIT = 0,
    APP_STATE_RUNNING,
    APP_STATE_SLEEP,
    APP_STATE_OTA_MODE,
    APP_STATE_ERROR
} app_state_t;

/* 应用程序配置 */
typedef struct {
    app_state_t state;
    uint8_t  model_slot;
    uint8_t  ble_connected;
    uint32_t sleep_interval_ms;
    uint8_t  inference_enabled;
} app_config_t;

/* 初始化 */
void app_main_init(void);

/* 主循环 */
void app_main_loop(void);

/* 睡眠管理 */
void app_enter_sleep(uint32_t wakeup_time_ms);
void app_wakeup_handler(void);

/* OTA 事件处理 */
void app_on_ota_start(uint32_t total_size);
void app_on_ota_progress(uint8_t percent);
void app_on_ota_complete(uint8_t success);
void app_on_model_update(uint8_t slot_id, uint8_t success);

/* BLE 事件 */
void app_on_ble_connected(void);
void app_on_ble_disconnected(void);

/* IMU 数据处理 */
void app_on_imu_data(float *accel, float *gyro, uint16_t sample_count);

#endif /* APP_MAIN_INTEGRATION_H */
