/**
 * @file    main.c
 * @version V2.0
 * @date    2026-08-25
 * @brief   ble_peripheral mp app main file - 集成 OTA + 模型推理
 *************************************************************************************************************
 * @attention
 *
 * Firmware Disclaimer Information
 *
 * 1. The customer hereby acknowledges and agrees that the program technical documentation, including the
 *    code, which is supplied by Holtek Semiconductor Inc., (hereinafter referred to as "HOLTEK") is the
 *    proprietary and confidential intellectual property of HOLTEK, and is protected by copyright law and
 *    other intellectual property laws.
 *
 * 2. The customer hereby acknowledges and agrees that the program technical documentation, including the
 *    code, is confidential information belonging to HOLTEK, and must not be disclosed to any third parties
 *    other than HOLTEK and the customer.
 *
 * 3. The program technical documentation, including the code, is provided "as is" and for customer reference
 *    only. After delivery by HOLTEK, the customer shall use the program technical documentation, including
 *    the code, at their own risk. HOLTEK disclaims any expressed, implied or statutory warranties, including
 *    the warranties of merchantability, satisfactory quality and fitness for a particular purpose.
 *
 * <h2><center>Copyright (C) Holtek Semiconductor Inc. All rights reserved</center></h2>
 ************************************************************************************************************/

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "RegHT32F675x5.h"
#include "err_def.h"
#include "hw_efuse.h"
#include "hw_crg.h"
#include "hw_gpio.h"
#include "hw_pmu.h"
#include "hw_sys_ctrl.h"
#include "hw_wdt.h"
#include "hal_pmu.h"

#include "app_cfg.h"
#include "boards.h"
#include "lpwr_ctrl.h"
#include "utility.h"
#include "app_debug.h"
#include "err_debug.h"

#include "boot_manager.h"
#include "ota_manager.h"
#include "model_inference.h"
#include "fall_model_data.h"
#include "ble_ota_service.h"

/* ================================================================
 * 宏定义配置
 * ================================================================ */
#define APP_MODE_NORMAL        0  /* 正常模式：传感器 + 推理 */
#define APP_MODE_SENSOR_TEST   1  /* 传感器测试模式 */
#define APP_MODE_DATA_LOGGER   2  /* 数据采集模式 */
#define APP_MODE_OTA           3  /* OTA 模式 */

#ifndef APP_RUN_MODE
#define APP_RUN_MODE            APP_MODE_NORMAL
#endif

/* ================================================================
 * 系统初始化
 * ================================================================ */

/**
 * @brief  System power manage.
 */
static void system_power_init(EN_PMU_PWR_SEL_T enSel)
{
    rom_hw_pmu_set_ldo_act_voltage(EN_LDO_ACT_1200mV);
    rom_hw_pmu_dcdc_init();
    rom_hw_pmu_set_dcdc_act_voltage(EN_DCDC_ACT_VOLT_1200mV);
    rom_hw_pmu_set_ldo_dig_voltage(EN_LDO_DIG_1100mV);
    rom_hw_pmu_set_ldo_ret_sleep_voltage(EN_LDO_RET_1100mV);
    rom_hal_pmu_sel_power_act_out_mode(enSel);
}

/**
 * @brief  System clock init.
 */
static void system_clock_init(EN_SYS_CLK_SRC_SEL_T enSysClkSrc)
{
    uint8_t u8Tune = 0;

    rom_hw_efuse_read_bytes(EFUSE_RC_HCLK_TUNE_ADDR, &u8Tune, sizeof(u8Tune));
    if (0 == u8Tune) {
        rom_hw_pmu_set_rc_hclk_tune(RC_HCLK_TUNE_DEFAUT_VAL);
    }

    rom_hw_efuse_read_bytes(EFUSE_RC_LCLK_TUNE_ADDR, &u8Tune, sizeof(u8Tune));
    if (u8Tune) {
        rom_hw_pmu_set_rc_lclk_tune(u8Tune);
    } else {
        rom_hw_pmu_set_rc_lclk_tune(RC_LCLK_TUNE_DEFAUT_VAL);
    }

    rom_hw_pmu_sel_dcxo_hclk_pwr(EN_DCXO_HCLK_PWR_VDDR);
    rom_hal_pmu_cfg_dcxo_hclk_param(DCXO_HCLK_IB_3, DCXO_HCLK_NGM_3, DCXO_HCLK_CAP_10PF);
    rom_hal_pmu_set_sys_clk_src(enSysClkSrc, DCXO_HCLK_STABLE_TIME_2500US);
}

/**
 * @brief  Peripheral init.
 */
static void peripheral_init(void)
{
    rom_hw_sys_ctrl_peri_int_ctrl(SYS_CTRL_MP, 0, 0);

#if APP_DEBUG_ENABLED
    app_debug_init(GPIO_PORT_MP_APP_DEBUG_TX, GPIO_PIN_MP_APP_DEBUG_TX,
                   UART_HANDLE_MP_APP_DEBUG, UART_BPS_MP_APP_DEBUG, NULL);
    PRINTF("\r\n");
    PRINTF("======================================\r\n");
    PRINTF("  BLE Peripheral + AI Inference\r\n");
    PRINTF("  Built: %s %s\r\n", __DATE__, __TIME__);
    PRINTF("======================================\r\n");
#endif

    err_debug_init();
}

/**
 * @brief  Enable CM0P coprocessor.
 */
static void system_enable_cp(void)
{
    rom_hw_crg_keep_reset(CRG_CP_SW_RST);

    if (ERR_STA_OK == rom_hw_sys_ctrl_enable_cp_remap(ROM_CP_STARTUP_CODE_ADDR,
                                                      ROM_CP_STARTUP_CODE_SIZE_MAX)) {
        rom_hw_sys_ctrl_write_com_reg(SYS_CTRL_COM_REG_REMAP_ADDR,
                                       (*(volatile uint32_t *)((RAM_CP_ADDR + 4))));

        rom_hw_crg_enable_clk_gate(CRG_CP_CLK_GATE);
        rom_hw_crg_enable_clk_gate(CRG_CP_DAP_CLK_GATE);
        rom_hw_crg_release_reset(CRG_CP_SW_RST);
    }
}

/**
 * @brief  Low power init.
 */
static void system_lpwr_init(EN_LPWR_MODE_SEL_T enMode)
{
    extern uint32_t RAM_APP_SIZE_KBYTE_MAX;
    patch_hal_pmu_set_sram_ret(RAM_APP_SIZE_KBYTE_MAX);
    lpwr_ctrl_init(enMode, NULL, NULL);
}

/* ================================================================
 * OTA 事件回调
 * ================================================================ */
static void app_ota_progress_cb(uint8_t percent)
{
    PRINTF("[OTA] Downloading... %u%%\r\n", percent);
}

static void app_ota_complete_cb(uint8_t success, const char *msg)
{
    if (success) {
        PRINTF("[OTA] Complete! Rebooting...\r\n");
        rom_delay_ms(1000);
        NVIC_SystemReset();
    } else {
        PRINTF("[OTA] Failed: %s\r\n", msg);
    }
}

/* ================================================================
 * 推理结果处理
 * ================================================================ */
static void app_inference_result_cb(model_result_t *result)
{
    static uint32_t s_fall_count = 0;
    static uint32_t s_last_alert_tick = 0;
    uint32_t now = get_system_tick_ms();

    /* 置信度阈值 */
    if (result->confidence < 0.75f) {
        return;
    }

    /* 检测到跌倒 */
    if (result->class_id == 1) {
        s_fall_count++;

        /* 防抖：5秒内不重复报警 */
        if ((now - s_last_alert_tick) > 5000) {
            PRINTF("\r\n!!! FALL DETECTED !!!\r\n");
            PRINTF("    Confidence: %.2f%%\r\n", result->confidence * 100);
            PRINTF("    Inference time: %lu us\r\n",
                   (unsigned long)result->inference_time_us);
            PRINTF("    Fall count: %lu\r\n\r\n", (unsigned long)s_fall_count);

            /* TODO: 通过 BLE 发送跌倒告警 */
            /* ble_send_alert(BLE_ALERT_FALL, result->confidence); */

            s_last_alert_tick = now;
        }
    }
}

/* ================================================================
 * IMU 数据采集 (用于推理)
 * ================================================================ */
#if defined(USE_IMU9DOF) || defined(USE_IMU6DOF)
#include "imu9dof.h"

#define INFERENCE_WINDOW_SIZE   128  /* 128 samples @ 100Hz = 1.28秒 */
#define INFERENCE_INTERVAL_MS  10   /* 100Hz sampling */

static float g_accel_buf[INFERENCE_WINDOW_SIZE * 3];
static float g_gyro_buf[INFERENCE_WINDOW_SIZE * 3];
static uint16_t g_sample_idx = 0;
static uint8_t g_window_ready = 0;

static void app_collect_imu_sample(const imu9dof_sample_t *sample)
{
    uint16_t idx = g_sample_idx % INFERENCE_WINDOW_SIZE;

    /* 加速度计 */
    g_accel_buf[idx * 3] = sample->stAccel_g.fX;
    g_accel_buf[idx * 3 + 1] = sample->stAccel_g.fY;
    g_accel_buf[idx * 3 + 2] = sample->stAccel_g.fZ;

    /* 陀螺仪 */
    g_gyro_buf[idx * 3] = sample->stGyro_dps.fX;
    g_gyro_buf[idx * 3 + 1] = sample->stGyro_dps.fY;
    g_gyro_buf[idx * 3 + 2] = sample->stGyro_dps.fZ;

    g_sample_idx++;

    if (g_sample_idx >= INFERENCE_WINDOW_SIZE) {
        g_sample_idx = 0;
        g_window_ready = 1;
    }
}

static void app_run_inference_if_ready(void)
{
    model_result_t result;
    float features[128 * 6];  /* 模型输入: 128样本 x 6特征 */

    if (!g_window_ready) {
        return;
    }
    g_window_ready = 0;

    /* 特征提取 */
    int feat_cnt = model_extract_features(g_accel_buf, g_gyro_buf,
                                         INFERENCE_WINDOW_SIZE, features);
    if (feat_cnt <= 0) {
        return;
    }

    /* 推理 */
    if (model_run_inference(features, feat_cnt, &result) == 0) {
        if (result.is_valid) {
            app_inference_result_cb(&result);
        }
    }
}
#endif

/* ================================================================
 * 主循环
 * ================================================================ */
static void app_main_loop(void)
{
#if defined(USE_IMU9DOF) || defined(USE_IMU6DOF)
    imu9dof_sample_t imu;
#endif

    /* BLE OTA 任务 */
    /* 实际项目中通过 BLE 事件触发，这里做后台处理 */

#if defined(USE_IMU9DOF) || defined(USE_IMU6DOF)
    /* 读取 IMU 数据 */
    if (imu9dof_read(&imu) == ERR_STA_OK) {
        app_collect_imu_sample(&imu);
    }

    /* 运行推理 */
    app_run_inference_if_ready();
#endif

    /* 低功耗延时 */
    rom_delay_ms(INFERENCE_INTERVAL_MS);
}

/* ================================================================
 * 正常模式入口
 * ================================================================ */
static void app_mode_normal(void)
{
    /* 初始化 Boot Manager */
    boot_manager_init();

    /* 检查启动模式 */
    boot_mode_t boot_mode = boot_get_mode();
    if (boot_mode == BOOT_MODE_OTA) {
        PRINTF("[APP] OTA boot confirmed, switching to new firmware\r\n");
        boot_confirm_ota_success();
    }

    /* 初始化模型推理 */
    int model_ret = model_inference_init();
    if (model_ret == 0) {
        PRINTF("[APP] Model inference ready\r\n");
        model_dump_info();
    } else {
        PRINTF("[APP] Model init returned %d (may load via OTA later)\r\n", model_ret);
    }

    /* 初始化 BLE OTA 服务 */
    g_ota_handle.progress_cb = app_ota_progress_cb;
    g_ota_handle.complete_cb = app_ota_complete_cb;
    ble_ota_service_init(NULL);

#if defined(USE_IMU9DOF) || defined(USE_IMU6DOF)
    /* 初始化 IMU */
    if (imu9dof_init() == ERR_STA_OK) {
        PRINTF("[APP] IMU initialized\r\n");
    } else {
        PRINTF("[APP] IMU init failed!\r\n");
    }
#endif

    PRINTF("[APP] Normal mode started\r\n");
    PRINTF("[APP] Waiting for BLE connection or IMU data...\r\n");

    /* 主循环 */
    for (;;) {
        app_main_loop();
    }
}

/* ================================================================
 * main 入口
 * ================================================================ */
int main(void)
{
    /* 关闭看门狗 */
    rom_hw_wdt_disable(WDT0);
    rom_delay_ms(100);

    /* 系统初始化 */
    system_power_init(PWR_SEL_LDO);
    system_clock_init(EN_SYS_CLK_DCXO16M);
    peripheral_init();
    system_lpwr_init(LPWR_MODE_SLEEP);
    system_enable_cp();

    /* 根据模式选择入口 */
#if APP_RUN_MODE == APP_MODE_NORMAL
    app_mode_normal();

#elif APP_RUN_MODE == APP_MODE_SENSOR_TEST
    /* 传感器测试模式 */
    extern void sensor_sdk_test_run(void);
    sensor_sdk_test_run();  /* never returns */

#elif APP_RUN_MODE == APP_MODE_DATA_LOGGER
    /* 数据采集模式 */
    extern void data_logger_task(void);
    data_logger_task();  /* never returns */

#elif APP_RUN_MODE == APP_MODE_OTA
    /* OTA 模式 - 只接收 BLE 数据，不运行推理 */
    ble_ota_service_init(NULL);
    for (;;) {
        rom_delay_ms(100);
    }

#else
    /* 默认: 低功耗待机 */
    for (;;) {
        lpwr_ctrl_goto_sleep();
    }
#endif

    return 0;
}
