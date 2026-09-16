/*************************************************************************************************************
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

/**
 * @brief  阻止 AC6 C 库 stdio 初始化（必须在任何 include 之前定义）。
 *
 * AC6 库的 _initio() 会尝试以文件系统模式打开 stdin/stdout/stderr，
 * 在裸机环境下失败后会触发 __rt_raise(SIGRTRED) → 默认死循环导致程序卡死。
 *
 * AC5 用 #pragma import(__USE_STDIO_NOTHROW)；
 * AC6 用宏 __USE_NO_STDIO_INIT（_initio 内部会检查此宏）。
 *
 * 注意：即使定义了 __USE_NO_STDIO_INIT，Keil AC6 编译器在某些配置下
 * 仍会在 main.o 中生成 _initio 的强定义，与库的 initio.o 冲突。
 * 因此需要在此提供弱定义以解决 L6200E 重复定义错误。
 */
#if defined(__ARMCC_VERSION) && (__ARMCC_VERSION < 6000000)
#pragma import(__USE_STDIO_NOTHROW)
#else
#define __USE_NO_STDIO_INIT
#endif

/**
 * @brief  空的 stdio 初始化存根（弱定义）。
 *
 * 此弱定义覆盖库中 initio.o 的 _initio 强定义，
 * 解决 L6200E: Symbol _initio multiply defined 错误。
 * 在裸机环境下 stdin/stdout/stderr 不需要初始化。
 */
__attribute__((weak))
void _initio(void)
{
    /* 空函数：裸机环境不需要 stdio 初始化 */
}

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
#include "patch_hal_pmu.h"

#include "app_cfg.h"
#include "boards.h"
#include "lpwr_ctrl.h"
#include "utility.h"
#include "app_debug.h"
#include "err_debug.h"
#include "model_inference.h"

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
 * Logic Analyzer 镜像变量（用于调试波形观测）
 * ================================================================ */
/* 强制保留在 .data 段，防止编译优化删除 */
volatile uint32_t gpio_trace __attribute__((section(".data"))) = 0;

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
#if APP_DEBUG_ENABLED
    PRINTF("[CLK] before rom_hal_pmu_set_sys_clk_src\r\n");
#endif
    rom_hal_pmu_set_sys_clk_src(enSysClkSrc, DCXO_HCLK_STABLE_TIME_2500US);
#if APP_DEBUG_ENABLED
    PRINTF("[CLK] after rom_hal_pmu_set_sys_clk_src\r\n");
#endif
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
    PRINTF("[PERI] after app_debug_init\r\n");
    PRINTF("\r\n");
    PRINTF("======================================\r\n");
    PRINTF("  BLE Peripheral + AI Inference\r\n");
    PRINTF("  UART Baudrate: %u bps\r\n", (unsigned int)UART_BPS_MP_APP_DEBUG);
    PRINTF("  Built: %s %s\r\n", __DATE__, __TIME__);
    PRINTF("======================================\r\n");
#endif

    err_debug_init();
    PRINTF("[PERI] peripheral_init done\r\n");
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
    patch_hal_pmu_set_sram_ret(RAM_APP_SIZE_KBYTE_MAX);
    lpwr_ctrl_init(enMode, NULL, NULL);
}

/* ================================================================
 * 主循环
 * ================================================================ */
static void app_main_loop(void)
{
#if defined(USE_IMU9DOF) || defined(USE_IMU6DOF)
    imu9dof_data_t imu;

    /* 读取 IMU 数据 */
    if (imu9dof_read(&imu) == ERR_STA_OK) {
        // 可在此处理 IMU 数据
    }
#endif

    rom_delay_ms(10);  /* ~100Hz */
}

/* ================================================================
 * 正常模式入口
 * ================================================================ */
static void app_mode_normal(void)
{
#if defined(USE_IMU9DOF) || defined(USE_IMU6DOF)
    /* 初始化 IMU */
    if (imu9dof_init() == ERR_STA_OK) {
        PRINTF("[APP] IMU initialized\r\n");
    } else {
        PRINTF("[APP] IMU init failed!\r\n");
    }
#endif

    /* GPIO 翻转初始化：P29 (GPIOA.29) 作为心跳灯，方便确认芯片是否在运行 */
    rom_hw_gpio_set_pin_input_output(GPIOA, GPIO_PIN_29, GPIO_MODE_OUTPUT);
    rom_hw_gpio_set_pin_output_level(GPIOA, GPIO_PIN_29, 1);  /* 初始拉高 */

    /* 初始化 AI 推理引擎 */
    {
        int rc = model_inference_init();
        if (rc == 0) {
            PRINTF("[APP] AI inference engine initialized OK\r\n");
        } else {
            PRINTF("[APP] AI inference engine init FAILED (rc=%d)\r\n", rc);
        }
    }

    PRINTF("[APP] Normal mode started\r\n");
    PRINTF("[APP] P29 (GPIOA.29) 心跳灯已激活，约每秒翻转一次\r\n");

    /* 主循环：LED 翻转 + IMU 读取 */
    uint32_t loop_cnt = 0;
    for (;;) {
        rom_hw_gpio_toggle_pin_output_level(GPIOA, GPIO_PIN_29);
        gpio_trace ^= 1;  /* Logic Analyzer 镜像方波 */
#if defined(USE_IMU9DOF) || defined(USE_IMU6DOF)
        imu9dof_data_t imu;
        if (imu9dof_read(&imu) == ERR_STA_OK) {
            /* 可在此处理 IMU 数据 */
        }
#endif
        /* 每 10 个循环（约 5 秒）打印一次心跳日志，便于串口确认程序在运行 */
        if ((++loop_cnt % 10) == 0) {
            PRINTF("[HB] loop=%u alive\r\n", (unsigned)loop_cnt);
        }
        rom_delay_ms(500);  /* 500ms 翻转 = 1Hz 方波 */
    }
}

/* ================================================================
 * GPIO 测试引脚配置（用于确认芯片是否在运行）
 * ================================================================ */
/* 选择一个空闲GPIO引脚作为测试输出，建议用万用表测量此引脚电压 */
#define TEST_GPIO_PORT       GPIOA              /* P29 = GPIOA.29 */
#define TEST_GPIO_PIN        GPIO_PIN_29        /* P29 = GPIO_PIN_29 */

/**
 * @brief  GPIO测试引脚初始化并置高
 *        此函数在main最开头调用，如果芯片运行到此，引脚应保持高电平
 */
static void gpio_test_init(void)
{
    /* 配置为输出模式 */
    rom_hw_gpio_set_pin_input_output(TEST_GPIO_PORT, TEST_GPIO_PIN, GPIO_MODE_OUTPUT);

    /* 立即置高 - 用万用表测量此引脚应该为3.3V */
    rom_hw_gpio_set_pin_output_level(TEST_GPIO_PORT, TEST_GPIO_PIN, 1);

    PRINTF("[TEST] GPIO P29 (GPIOA.29) 置高测试\r\n");
}

/* ================================================================
 * main 入口
 * ================================================================ */
int main(void)
{
    /* P29 (GPIOA.29) 作为调试标记引脚，在系统初始化各阶段拉至不同电平
     * 用万用表测量电压即可判断程序卡在哪一步：
     *   3.3V 高 = 已到达 main，等待下一步
     *   0.0V 低 = 该步骤已通过，进入下一步
     */
    volatile uint32_t dbg_dummy;
    rom_hw_gpio_set_pin_input_output(GPIOA, GPIO_PIN_29, GPIO_MODE_OUTPUT);
    rom_hw_gpio_set_pin_output_level(GPIOA, GPIO_PIN_29, 0); /* 0.0V baseline */
    dbg_dummy = 1; /* mem barrier */

    /* 关闭看门狗 */
    rom_hw_wdt_disable(WDT0);

    /* P29 -> 高：main 已到达 */
    rom_hw_gpio_set_pin_output_level(GPIOA, GPIO_PIN_29, 1);

    /* 系统初始化 */
    system_power_init(PWR_SEL_LDO);

    /* P29 -> 低：system_power_init 完成 */
    rom_hw_gpio_set_pin_output_level(GPIOA, GPIO_PIN_29, 0);

    system_clock_init(EN_SYS_CLK_PLL64M);

    /* P29 -> 高：system_clock_init 完成 */
    rom_hw_gpio_set_pin_output_level(GPIOA, GPIO_PIN_29, 1);

    peripheral_init();

    /* P29 -> 低：peripheral_init 完成，UART 已可用 */
    rom_hw_gpio_set_pin_output_level(GPIOA, GPIO_PIN_29, 0);
    PRINTF("[MAIN] boot reached\r\n");

    /* ================================================================
     * 自检信息打印（调试串口 UART1，波特率 115200，TX=P41，RX=P39）
     * 必须在 peripheral_init() 之后执行，此时 UART 已完成初始化
     * ================================================================ */
    PRINTF("\r\n");
    PRINTF("########################################\r\n");
    PRINTF("#       System Self-Test Report        #\r\n");
    PRINTF("########################################\r\n");
    PRINTF("[CHECK] Debug UART initialized\r\n");
    PRINTF("[CHECK] Baudrate: 115200 bps\r\n");
    PRINTF("[CHECK] TX = P41 (GPIOB.9)\r\n");
    PRINTF("[CHECK] RX = P39 (GPIOB.7)\r\n");
    PRINTF("[CHECK] Clock source: DCXO16M\r\n");
    PRINTF("########################################\r\n");
    PRINTF("\r\n");

    /* GPIO 测试引脚初始化（必须在 peripheral_init 之后，确保时钟已开启） */
    gpio_test_init();

    system_lpwr_init(LPWR_MODE_ACTIVE);  // LPWR_MODE_ACTIVE=禁用深度睡眠，LPWR_MODE_SLEEP=启用低功耗
    /* P29 -> 高：system_lpwr_init 完成 */
    rom_hw_gpio_set_pin_output_level(GPIOA, GPIO_PIN_29, 1);

    system_enable_cp();
    /* P29 -> 低：system_enable_cp 完成，进入主循环 */
    rom_hw_gpio_set_pin_output_level(GPIOA, GPIO_PIN_29, 0);

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
    /* OTA 模式 - 简单循环等待 */
    PRINTF("[APP] OTA mode started\r\n");
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
