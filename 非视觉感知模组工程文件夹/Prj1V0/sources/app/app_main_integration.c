/**
 * @file    app_main_integration.c
 * @brief   应用程序主集成模块实现
 */
#include "app_main_integration.h"
#include "app_cfg_ota.h"
#include "model_inference.h"
#include "ota_manager.h"
#include "boot_manager.h"
#include "ble_ota_service.h"
#include "imu9dof.h"
#include "lpwr_ctrl.h"
#include "utility.h"
#include "ARMCM33_DSP_FP.h"
#include <stdio.h>
#include <string.h>

/* 特征提取缓冲区 */
#define IMU_WINDOW_SAMPLES    100  /* 1秒 @ 100Hz */
static float g_accel_buffer[IMU_WINDOW_SAMPLES * 3];
static float g_gyro_buffer[IMU_WINDOW_SAMPLES * 3];
static uint16_t g_sample_index = 0;
static uint8_t g_window_full = 0;

/* 推理结果回调 */
typedef void (*inference_result_cb_t)(model_result_t *result);
static inference_result_cb_t g_inference_cb = NULL;

/* OTA 状态 */
static uint8_t g_ota_in_progress = 0;
static uint8_t g_ota_progress = 0;

/* 全局配置 */
static app_config_t g_app_config = {
    .state = APP_STATE_INIT,
    .model_slot = 0,
    .ble_connected = 0,
    .sleep_interval_ms = 1000,
    .inference_enabled = 1
};

/**
 * @brief   OTA 事件回调
 */
static void ota_evt_callback(uint8_t evt, uint16_t len, const uint8_t *data)
{
    switch (evt) {
        case BLE_OTA_CMD_START:
            app_on_ota_start(*(uint32_t *)data);
            break;
            
        case BLE_OTA_CMD_VERIFY:
        case BLE_OTA_CMD_REBOOT:
            /* 这些由 ble_ota_service 处理 */
            break;
            
        default:
            break;
    }
}

/**
 * @brief   OTA 进度回调
 */
static void ota_progress_callback(uint8_t percent)
{
    g_ota_progress = percent;
    PRINTF("[OTA] Progress: %u%%\r\n", percent);
}

/**
 * @brief   OTA 完成回调
 */
static void ota_complete_callback(uint8_t success, const char *msg)
{
    g_ota_in_progress = 0;
    if (success) {
        PRINTF("[OTA] Success! Rebooting...\r\n");
        /* 延迟后重启 */
        rom_delay_ms(500);
        NVIC_SystemReset();
    } else {
        PRINTF("[OTA] Failed: %s\r\n", msg);
        app_on_ota_complete(0);
    }
}

/**
 * @brief   初始化应用程序
 */
void app_main_init(void)
{
    /* 检查启动模式 */
    boot_mode_t boot_mode = boot_get_mode();
    
    if (boot_mode == BOOT_MODE_OTA) {
        /* OTA 升级后首次启动 */
        PRINTF("[APP] OTA boot mode detected\r\n");
        g_app_config.state = APP_STATE_OTA_MODE;
        
        /* 确认 OTA 成功 */
        boot_confirm_ota_success();
        
        /* 加载新模型 */
        uint8_t active_model_slot = boot_get_model_slot();
        if (model_load_from_slot(active_model_slot) == 0) {
            PRINTF("[APP] Model loaded from slot %d\r\n", active_model_slot);
        }
    } else {
        /* 正常启动 */
        g_app_config.state = APP_STATE_RUNNING;
        
        /* 初始化模型推理 */
        if (model_inference_init() != 0) {
            PRINTF("[APP] Model init failed, waiting for OTA...\r\n");
        } else {
            model_dump_info();
        }
    }
    
    /* 初始化 BLE OTA 服务 */
    ble_ota_service_init(ota_evt_callback);
    
    /* 初始化 IMU */
    if (imu9dof_init() == ERR_STA_OK) {
        PRINTF("[APP] IMU initialized\r\n");
    }
    
    PRINTF("[APP] Application initialized\r\n");
}

/**
 * @brief   处理 IMU 数据
 */
void app_on_imu_data(float *accel, float *gyro, uint16_t sample_count)
{
    uint16_t i;
    
    if (!accel || sample_count == 0) {
        return;
    }
    
    /* 填充缓冲区 */
    for (i = 0; i < sample_count; i++) {
        uint16_t idx = (g_sample_index + i) % IMU_WINDOW_SAMPLES;
        
        g_accel_buffer[idx * 3] = accel[i * 3];
        g_accel_buffer[idx * 3 + 1] = accel[i * 3 + 1];
        g_accel_buffer[idx * 3 + 2] = accel[i * 3 + 2];
        
        if (gyro) {
            g_gyro_buffer[idx * 3] = gyro[i * 3];
            g_gyro_buffer[idx * 3 + 1] = gyro[i * 3 + 1];
            g_gyro_buffer[idx * 3 + 2] = gyro[i * 3 + 2];
        }
        
        g_sample_index++;
        if (g_sample_index >= IMU_WINDOW_SAMPLES) {
            g_sample_index = 0;
            g_window_full = 1;
        }
    }
    
    /* 窗口满时运行推理 */
    if (g_window_full && g_app_config.inference_enabled && !g_ota_in_progress) {
        model_result_t result;
        float features[32];
        
        /* 提取特征 */
        int feature_count = model_extract_features(
            g_accel_buffer, g_gyro_buffer,
            IMU_WINDOW_SAMPLES, features);
        
        if (feature_count > 0) {
            /* 运行推理 */
            if (model_run_inference(features, feature_count, &result) == 0) {
                if (result.is_valid && result.confidence > 0.7f) {
                    PRINTF("[INFER] Class=%u, Conf=%.2f, Time=%luus\r\n",
                           result.class_id, result.confidence,
                           (unsigned long)result.inference_time_us);
                    
                    /* 回调通知 */
                    if (g_inference_cb) {
                        g_inference_cb(&result);
                    }
                }
            }
        }
    }
}

/**
 * @brief   主循环
 */
void app_main_loop(void)
{
    imu9dof_sample_t imu_sample;
    
    /* 读取 IMU 数据 */
    if (imu9dof_read(&imu_sample) == ERR_STA_OK) {
        float accel[3] = {
            imu_sample.stAccel_g.fX,
            imu_sample.stAccel_g.fY,
            imu_sample.stAccel_g.fZ
        };
        float gyro[3] = {
            imu_sample.stGyro_dps.fX,
            imu_sample.stGyro_dps.fY,
            imu_sample.stGyro_dps.fZ
        };
        
        app_on_imu_data(accel, gyro, 1);
    }
    
    /* 检查 BLE 连接状态 */
    /* TODO: 集成实际 BLE 状态检查 */
    
    /* 低功耗延迟 */
    rom_delay_ms(10);  /* ~100Hz */
}

/**
 * @brief   进入睡眠模式
 */
void app_enter_sleep(uint32_t wakeup_time_ms)
{
    g_app_config.state = APP_STATE_SLEEP;
    lpwr_ctrl_goto_sleep();
    g_app_config.state = APP_STATE_RUNNING;
}

/**
 * @brief   唤醒处理
 */
void app_wakeup_handler(void)
{
    PRINTF("[APP] Wake up\r\n");
    g_app_config.state = APP_STATE_RUNNING;
}

/**
 * @brief   OTA 开始回调
 */
void app_on_ota_start(uint32_t total_size)
{
    PRINTF("[APP] OTA start: %lu bytes\r\n", (unsigned long)total_size);
    g_ota_in_progress = 1;
    g_ota_progress = 0;
    g_app_config.inference_enabled = 0;  /* 暂停推理 */
    g_app_config.state = APP_STATE_OTA_MODE;
}

/**
 * @brief   OTA 进度回调
 */
void app_on_ota_progress(uint8_t percent)
{
    g_ota_progress = percent;
}

/**
 * @brief   OTA 完成回调
 */
void app_on_ota_complete(uint8_t success)
{
    g_ota_in_progress = 0;
    g_app_config.inference_enabled = 1;
    g_app_config.state = APP_STATE_RUNNING;
    
    if (success) {
        PRINTF("[APP] OTA completed successfully\r\n");
        /* 模型自动重新加载 */
        model_load_from_slot(g_app_config.model_slot);
    } else {
        PRINTF("[APP] OTA failed\r\n");
    }
}

/**
 * @brief   模型更新完成
 */
void app_on_model_update(uint8_t slot_id, uint8_t success)
{
    if (success) {
        PRINTF("[APP] Model slot %d updated\r\n", slot_id);
        g_app_config.model_slot = slot_id;
        boot_set_model_slot(slot_id);
        
        /* 重新加载模型 */
        model_load_from_slot(slot_id);
    } else {
        PRINTF("[APP] Model slot %d update failed\r\n", slot_id);
    }
}

/**
 * @brief   BLE 连接回调
 */
void app_on_ble_connected(void)
{
    PRINTF("[APP] BLE connected\r\n");
    g_app_config.ble_connected = 1;
    g_app_config.sleep_interval_ms = 100;  /* 保持连接时更快响应 */
}

/**
 * @brief   BLE 断开回调
 */
void app_on_ble_disconnected(void)
{
    PRINTF("[APP] BLE disconnected\r\n");
    g_app_config.ble_connected = 0;
    g_app_config.sleep_interval_ms = 1000;  /* 断开时降低功耗 */
}

/**
 * @brief   注册推理结果回调
 */
void app_register_inference_callback(inference_result_cb_t cb)
{
    g_inference_cb = cb;
}
