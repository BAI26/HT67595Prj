/*************************************************************************************************************
 * @file    main.c
 * @version V1.1
 * @date    2022-02-10
 * @brief   ble_peripheral mp app main file
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
#include <stdarg.h>
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

#if TFLM_HELLO_TEST_ENABLED
#include "tflm_infer.h"
#endif

#if SENSOR_SDK_TEST_ENABLED
#include "imu9dof.h"
#include "ahrs.h"
#include "gd60932.h"
#include "bsp_uart_irt.h"
#include "ntc.h"
#include "temp_fusion.h"
#if BLE_SENSOR_SDK_ENABLED
#include "ble_sensor.h"
#endif
#endif

/**
 * @brief  System power manage.
 * @param  enSel: Select DCDC or LDO, @ref EN_PMU_POWER_SEL_T.
 */
static void system_power_init(EN_PMU_PWR_SEL_T enSel)
{
    // Set ldo_act voltage.
    rom_hw_pmu_set_ldo_act_voltage(EN_LDO_ACT_1200mV);

    // Init dcdc configuration and set dcdc_act voltage.
    rom_hw_pmu_dcdc_init();
    rom_hw_pmu_set_dcdc_act_voltage(EN_DCDC_ACT_VOLT_1200mV);

    // Set ldo_dig and ldo_ret voltage.
    rom_hw_pmu_set_ldo_dig_voltage(EN_LDO_DIG_1100mV);
    rom_hw_pmu_set_ldo_ret_sleep_voltage(EN_LDO_RET_1100mV);

    // Power selection. It will be valid after the system gets into sleep, default is ldo mode.
    rom_hal_pmu_sel_power_act_out_mode(enSel);
}

/**
 * @brief  System clock init.
 * @param  enSrc: System clock source selection, @ref EN_SYS_CLK_SRC_SEL_T.
 */
static void system_clock_init(EN_SYS_CLK_SRC_SEL_T enSysClkSrc)
{
    uint8_t u8Tune = 0;

    /* Set rc_hclk tune value */
    rom_hw_efuse_read_bytes(EFUSE_RC_HCLK_TUNE_ADDR, &u8Tune, sizeof(u8Tune));
    if (0 == u8Tune)
    {
        rom_hw_pmu_set_rc_hclk_tune(RC_HCLK_TUNE_DEFAUT_VAL);
    }

    /* Set rc32k tune value */
    rom_hw_efuse_read_bytes(EFUSE_RC_LCLK_TUNE_ADDR, &u8Tune, sizeof(u8Tune));
    if (u8Tune)
    {
        rom_hw_pmu_set_rc_lclk_tune(u8Tune);
    }
    else
    {
        rom_hw_pmu_set_rc_lclk_tune(RC_LCLK_TUNE_DEFAUT_VAL);
    }

    /* System clock */
    rom_hw_pmu_sel_dcxo_hclk_pwr(EN_DCXO_HCLK_PWR_VDDR);
    rom_hal_pmu_cfg_dcxo_hclk_param(DCXO_HCLK_IB_3, DCXO_HCLK_NGM_3, DCXO_HCLK_CAP_10PF);
    rom_hal_pmu_set_sys_clk_src(enSysClkSrc, DCXO_HCLK_STABLE_TIME_2500US);
}

/**
 * @brief  All peripheral init.
 */
static void peripheral_init(void)
{
    /* Disable MP all Peripheral interrupt. */
    rom_hw_sys_ctrl_peri_int_ctrl(SYS_CTRL_MP, 0, 0);

#if APP_DEBUG_ENABLED
    app_debug_init(GPIO_PORT_MP_APP_DEBUG_TX, GPIO_PIN_MP_APP_DEBUG_TX, UART_HANDLE_MP_APP_DEBUG, UART_BPS_MP_APP_DEBUG,
                   NULL);
    PRINTF("[%s T %s]ble peripheral project(mp) start to work.\n", __DATE__, __TIME__);
#endif

    err_debug_init();
}

/**
 * @brief  Enable CM0P. Remap cm0p, release cm0p reset signal.
 */
static void system_enable_cp(void)
{
    rom_hw_crg_keep_reset(CRG_CP_SW_RST);

    if (ERR_STA_OK == rom_hw_sys_ctrl_enable_cp_remap(ROM_CP_STARTUP_CODE_ADDR, ROM_CP_STARTUP_CODE_SIZE_MAX))
    {
        rom_hw_sys_ctrl_write_com_reg(SYS_CTRL_COM_REG_REMAP_ADDR, (*(volatile uint32_t *)((RAM_CP_ADDR + 4))));

        rom_hw_crg_enable_clk_gate(CRG_CP_CLK_GATE);
        rom_hw_crg_enable_clk_gate(CRG_CP_DAP_CLK_GATE);
        rom_hw_crg_release_reset(CRG_CP_SW_RST);
    }
}

/**
 * @brief  Check if the system can enter sleep
 * @return false(0) - System can not goto sleep.
 * @return true(1)  - System can goto sleep.
 */
static bool lpwr_before_sleep(void)
{
    return true;
}

/**
 * @brief  CPU after wakeup from sleep func.
 */
static void lpwr_after_wakeup(void)
{
// System clock need configure to pll64m
#if SYSTEM_CLOCK_PLL64M_ENABLED
    uint32_t u32Value = 0;
    uint32_t u32Time  = 0;
    do
    {
        u32Time = lpwr_ctrl_get_ble_remain_sleep_time_us();
        rom_hw_sys_ctrl_read_com_reg(SYS_CTRL_COM_REG_CP_WFI_FLAG, &u32Value);
    } while ((u32Time <= DCXO_HCLK_STABLE_TIME) || (0 == u32Value));

    rom_hal_pmu_set_sys_clk_src(EN_SYS_CLK_PLL64M, DCXO_HCLK_STABLE_TIME_2500US);
#endif

#if APP_DEBUG_ENABLED
    app_debug_reinit();

    PRINTF("A");
#endif
}

/**
 * @brief  Low power init.
 * @param  enMode: System work mode, @ref EN_LPWR_MODE_SEL_T.
 */
static void system_lpwr_init(EN_LPWR_MODE_SEL_T enMode)
{
    patch_hal_pmu_set_sram_ret(RAM_APP_SIZE_KBYTE_MAX);
    lpwr_ctrl_init(enMode, lpwr_before_sleep, lpwr_after_wakeup);
}

#if SENSOR_SDK_TEST_ENABLED

static char s_acLogBuf[192];

static int32_t sensor_test_f_milli(float fVal)
{
    return (int32_t)(fVal * 1000.0f);
}

static void sensor_test_uart_puts(const char *pcStr)
{
    if ((NULL == pcStr) || (!bsp_uart_irt_is_ready()))
    {
        return;
    }
    (void)bsp_uart_irt_write((const uint8_t *)pcStr, (uint16_t)strlen(pcStr));
}

static void sensor_test_uart_printf(const char *pcFmt, ...)
{
    va_list stArgs;
    int     s32Len;

    va_start(stArgs, pcFmt);
    s32Len = vsnprintf(s_acLogBuf, sizeof(s_acLogBuf), pcFmt, stArgs);
    va_end(stArgs);

    if (s32Len > 0)
    {
        if (s32Len >= (int)sizeof(s_acLogBuf))
        {
            s32Len = (int)sizeof(s_acLogBuf) - 1;
        }
        (void)bsp_uart_irt_write((const uint8_t *)s_acLogBuf, (uint16_t)s32Len);
    }
}

/**
 * @brief  Poll IMU / IR / ADC and dump ASCII lines on UART1 (PC @ IR baud).
 */
static void sensor_sdk_test_run(void)
{
    EN_ERR_STA_T         enImuInit;
    EN_ERR_STA_T         enIrInit;
    EN_ERR_STA_T         enNtcInit;
    EN_ERR_STA_T         enFusionInit;
    EN_ERR_STA_T         enImuRead;
    EN_ERR_STA_T         enMcuTemp;
    EN_ERR_STA_T         enGdAmb;
    imu9dof_sample_t     stImu;
    gd60932_sample_t     stIr;
    gd60932_cfg_t        stIrCfg;
    ahrs_euler_t         stEuler;
    ahrs_cfg_t           stAhrsCfg;
    ntc_cfg_t            stNtcCfg;
    ntc_sample_t         stNtc;
    temp_fusion_cfg_t    stFusionCfg;
    temp_fusion_input_t  stFusionIn;
    temp_fusion_sample_t stFusionOut;
    float                fMcu_C      = 0.0f;
    float                fGdAmb_C    = 0.0f;
    float                fAhrsDt_s   = 0.0f;
    uint16_t             u16Bat_mV   = 0;
    uint16_t             u16Ntc_mV   = 0;
    uint32_t             u32Tick     = 0;

    ntc_cfg_default(&stNtcCfg);
    enNtcInit = ntc_init(&stNtcCfg);

    gd60932_cfg_default(&stIrCfg);
#if GD60932_DEFAULT_SPEED_FS
    stIrCfg.enSpeed = GD60932_SPEED_FS;
#else
    stIrCfg.enSpeed = GD60932_SPEED_MS;
#endif
    stIrCfg.enMode = GD60932_MODE_OBJECT;
    enIrInit       = gd60932_init(&stIrCfg);

    temp_fusion_cfg_default(&stFusionCfg);
    enFusionInit = temp_fusion_init(&stFusionCfg);

    sensor_test_uart_puts("\r\n==== SENSOR_SDK_TEST start ====\r\n");
    sensor_test_uart_printf("PC serial baud = %s\r\n",
                            (GD60932_SPEED_FS == stIrCfg.enSpeed) ? "115200" : "9600");
    sensor_test_uart_printf("ntc_init=%d\r\n", (int)enNtcInit);
    sensor_test_uart_printf("gd60932_init=%d\r\n", (int)enIrInit);
    sensor_test_uart_printf("temp_fusion_init=%d\r\n", (int)enFusionInit);

    enImuInit = imu9dof_init();
    sensor_test_uart_printf("imu9dof_init=%d\r\n", (int)enImuInit);

    memset(&stAhrsCfg, 0, sizeof(stAhrsCfg));
    stAhrsCfg.enAlg         = AHRS_ALG_MADGWICK;
    /* 与测试轮询周期一致；量产建议 50~100Hz 单独调用 ahrs_update */
    fAhrsDt_s               = (float)SENSOR_SDK_TEST_PERIOD_MS / 1000.0f;
    if (fAhrsDt_s <= 0.0f)
    {
        fAhrsDt_s = 0.01f;
    }
    stAhrsCfg.fSampleHz     = 1.0f / fAhrsDt_s;
    stAhrsCfg.fMadgwickBeta = 0.1f;
    stAhrsCfg.bMotionGateEn = true;   /* 振动时不信加计 */
    stAhrsCfg.fAccNormTol_g = 0.15f;
    stAhrsCfg.bRestBiasEn   = true;   /* 静止跟踪陀螺零偏 */
    stAhrsCfg.fRestBiasAlpha = 0.01f;
    ahrs_init(&stAhrsCfg);

#if BLE_SENSOR_SDK_ENABLED
    (void)ble_sensor_sdk_init_mp(NULL);
    sensor_test_uart_puts("ble_sensor_ipc ready\r\n");
#endif

    for (;;)
    {
        memset(&stImu, 0, sizeof(stImu));
        memset(&stIr, 0, sizeof(stIr));
        memset(&stEuler, 0, sizeof(stEuler));

        enImuRead = imu9dof_read(&stImu);
        if (ERR_STA_OK == enImuRead)
        {
            ahrs_update(fAhrsDt_s, &stImu);
            ahrs_get_euler(&stEuler);
        }

        memset(&stNtc, 0, sizeof(stNtc));
        if (ERR_STA_OK != ntc_read_bat_mv(&u16Bat_mV))
        {
            u16Bat_mV = 0xFFFF;
        }
        if (ERR_STA_OK == ntc_measure(&stNtc))
        {
            u16Ntc_mV = stNtc.u16Adc_mV;
        }
        else
        {
            u16Ntc_mV = 0xFFFF;
        }
        enMcuTemp = ntc_read_mcu_c(&fMcu_C);

        /* IR 与 PC 日志共用 UART1：先测物温，再测环境温，再打印 */
        (void)gd60932_measure(&stIr);
        rom_delay_ms(20);
        (void)bsp_uart_irt_flush_rx();
        enGdAmb = gd60932_read_ambient_c(&fGdAmb_C);
        rom_delay_ms(20);
        (void)bsp_uart_irt_flush_rx();

        memset(&stFusionIn, 0, sizeof(stFusionIn));
        memset(&stFusionOut, 0, sizeof(stFusionOut));
        if (stIr.bValid)
        {
            stFusionIn.fGdObj_C    = stIr.fTempC;
            stFusionIn.bGdObjValid = true;
        }
        if (ERR_STA_OK == enGdAmb)
        {
            stFusionIn.fGdAmb_C    = fGdAmb_C;
            stFusionIn.bGdAmbValid = true;
        }
        if (stNtc.bValid)
        {
            stFusionIn.fNtc_C    = stNtc.fTemp_C;
            stFusionIn.bNtcValid = true;
        }
        if (ERR_STA_OK == enMcuTemp)
        {
            stFusionIn.fMcu_C    = fMcu_C;
            stFusionIn.bMcuValid = true;
        }
        if (ERR_STA_OK == enImuRead)
        {
            stFusionIn.fImu_C    = stImu.fTemp_C;
            stFusionIn.bImuValid = true;
        }
        (void)temp_fusion_update(&stFusionIn, &stFusionOut);

#if BLE_SENSOR_SDK_ENABLED
        {
            ble_sensor_sample_t stBle;
            ble_sensor_sample_clear(&stBle);
            stBle.u8Seq = (uint8_t)(u32Tick & 0xFFu);
            stBle.u16Bat_mV = u16Bat_mV;
            stBle.u16Ntc_mV = u16Ntc_mV;
            if (0u != (stFusionOut.u16Flags & TEMP_FUSION_FLAG_OBJ_VALID))
            {
                stBle.u8Flags |= BLE_SENSOR_FLAG_IR_VALID;
                stBle.s16IrTenths = (int16_t)(stFusionOut.fObj_C * 10.0f);
            }
            else if (stIr.bValid)
            {
                stBle.u8Flags |= BLE_SENSOR_FLAG_IR_VALID;
                stBle.s16IrTenths = (int16_t)stIr.s32RawTenths;
            }
            if (ERR_STA_OK == enImuRead)
            {
                stBle.s16AccMg[0] = (int16_t)sensor_test_f_milli(stImu.stAccel_g.fX);
                stBle.s16AccMg[1] = (int16_t)sensor_test_f_milli(stImu.stAccel_g.fY);
                stBle.s16AccMg[2] = (int16_t)sensor_test_f_milli(stImu.stAccel_g.fZ);
                stBle.s16GyrDpsx10[0] = (int16_t)(stImu.stGyro_dps.fX * 10.0f);
                stBle.s16GyrDpsx10[1] = (int16_t)(stImu.stGyro_dps.fY * 10.0f);
                stBle.s16GyrDpsx10[2] = (int16_t)(stImu.stGyro_dps.fZ * 10.0f);
                stBle.s16ImuTempTenths = (int16_t)(stImu.fTemp_C * 10.0f);
                stBle.s16Roll_cdeg  = (int16_t)(stEuler.fRoll_deg * 100.0f);
                stBle.s16Pitch_cdeg = (int16_t)(stEuler.fPitch_deg * 100.0f);
                stBle.s16Yaw_cdeg   = (int16_t)(stEuler.fYaw_deg * 100.0f);
                if (stImu.bMagValid)
                {
                    stBle.u8Flags |= BLE_SENSOR_FLAG_MAG_VALID;
                    stBle.s16Mag_uTx10[0] = (int16_t)(stImu.stMag_uT.fX_uT * 10.0f);
                    stBle.s16Mag_uTx10[1] = (int16_t)(stImu.stMag_uT.fY_uT * 10.0f);
                    stBle.s16Mag_uTx10[2] = (int16_t)(stImu.stMag_uT.fZ_uT * 10.0f);
                }
            }
            (void)ble_sensor_ipc_send_sample(&stBle);
        }
#endif

        sensor_test_uart_printf("\r\n-- tick %lu --\r\n", (unsigned long)u32Tick++);
        sensor_test_uart_printf("BAT_ADC=%umV NTC_ADC=%umV\r\n",
                                (unsigned)u16Bat_mV, (unsigned)u16Ntc_mV);
        if (stNtc.bValid)
        {
            sensor_test_uart_printf("NTC_R=%luohm NTC_mC=%ld\r\n",
                                    (unsigned long)stNtc.u32R_ohm,
                                    (long)sensor_test_f_milli(stNtc.fTemp_C));
        }
        else
        {
            sensor_test_uart_puts("NTC_TEMP=FAIL\r\n");
        }

        if (stIr.bValid)
        {
            sensor_test_uart_printf("IR_OBJ_mC=%ld raw_tenths=%ld\r\n",
                                    (long)sensor_test_f_milli(stIr.fTempC),
                                    (long)stIr.s32RawTenths);
        }
        else
        {
            sensor_test_uart_puts("IR_OBJ=FAIL\r\n");
        }

        if (ERR_STA_OK == enGdAmb)
        {
            sensor_test_uart_printf("IR_AMB_mC=%ld\r\n",
                                    (long)sensor_test_f_milli(fGdAmb_C));
        }
        else
        {
            sensor_test_uart_printf("IR_AMB=FAIL %d\r\n", (int)enGdAmb);
        }

        if (ERR_STA_OK == enMcuTemp)
        {
            sensor_test_uart_printf("MCU_TEMP_mC=%ld\r\n",
                                    (long)sensor_test_f_milli(fMcu_C));
        }
        else
        {
            sensor_test_uart_printf("MCU_TEMP=FAIL %d\r\n", (int)enMcuTemp);
        }

        if (0u != (stFusionOut.u16Flags & (TEMP_FUSION_FLAG_OBJ_VALID | TEMP_FUSION_FLAG_AMB_VALID |
                                           TEMP_FUSION_FLAG_OBJ_STALE)))
        {
            sensor_test_uart_printf("FUSION_OBJ_mC=%ld AMB_mC=%ld flags=0x%04X\r\n",
                                    (long)sensor_test_f_milli(stFusionOut.fObj_C),
                                    (long)sensor_test_f_milli(stFusionOut.fAmb_C),
                                    (unsigned)stFusionOut.u16Flags);
        }
        else
        {
            sensor_test_uart_puts("FUSION=FAIL\r\n");
        }

        if (ERR_STA_OK == enImuRead)
        {
            sensor_test_uart_printf("ACC_mg=%ld,%ld,%ld\r\n",
                                    (long)sensor_test_f_milli(stImu.stAccel_g.fX),
                                    (long)sensor_test_f_milli(stImu.stAccel_g.fY),
                                    (long)sensor_test_f_milli(stImu.stAccel_g.fZ));
            sensor_test_uart_printf("GYR_mdps=%ld,%ld,%ld\r\n",
                                    (long)sensor_test_f_milli(stImu.stGyro_dps.fX),
                                    (long)sensor_test_f_milli(stImu.stGyro_dps.fY),
                                    (long)sensor_test_f_milli(stImu.stGyro_dps.fZ));
            sensor_test_uart_printf("IMU_TEMP_mC=%ld\r\n",
                                    (long)sensor_test_f_milli(stImu.fTemp_C));
            if (stImu.bMagValid)
            {
                sensor_test_uart_printf("MAG_uT_x1000=%ld,%ld,%ld\r\n",
                                        (long)sensor_test_f_milli(stImu.stMag_uT.fX_uT),
                                        (long)sensor_test_f_milli(stImu.stMag_uT.fY_uT),
                                        (long)sensor_test_f_milli(stImu.stMag_uT.fZ_uT));
            }
            else
            {
                sensor_test_uart_puts("MAG=INVALID\r\n");
            }
            sensor_test_uart_printf("EULER_mdeg R/P/Y=%ld,%ld,%ld\r\n",
                                    (long)sensor_test_f_milli(stEuler.fRoll_deg),
                                    (long)sensor_test_f_milli(stEuler.fPitch_deg),
                                    (long)sensor_test_f_milli(stEuler.fYaw_deg));
        }
        else
        {
            sensor_test_uart_printf("IMU_READ_FAIL=%d\r\n", (int)enImuRead);
        }

        rom_delay_ms(SENSOR_SDK_TEST_PERIOD_MS);
    }
}

#endif /* SENSOR_SDK_TEST_ENABLED */

/**
 * @brief  main function.
 * @return 0.
 */
int main(void)
{
    // Disable watchdog timer.
    rom_hw_wdt_disable(WDT0);

    rom_delay_ms(100);

    system_power_init(PWR_SEL_LDO);
    system_clock_init(EN_SYS_CLK_DCXO16M);
    peripheral_init();
    system_lpwr_init(LPWR_MODE_SLEEP);
    system_enable_cp();

#if TFLM_HELLO_TEST_ENABLED
    PRINTF("\r\n==== TFLM Hello World test ====\r\n");
    if (0 == tflm_hello_selftest())
    {
        float y = 0.f;
        (void)tflm_hello_infer(1.57f, &y);
        PRINTF("[TFLM] infer(pi/2)=%.3f (expect ~1.0)\r\n", (double)y);
    }
    PRINTF("==== TFLM test done ====\r\n");
#endif

#if SENSOR_SDK_TEST_ENABLED
    sensor_sdk_test_run(); /* never returns */
#else
    for (;;)
    {
        lpwr_ctrl_goto_sleep();
    }
#endif

    return 0;
}
