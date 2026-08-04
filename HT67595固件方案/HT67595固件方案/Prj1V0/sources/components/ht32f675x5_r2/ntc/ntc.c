/*************************************************************************************************************
 * @file        ntc.c
 * @brief       板级 NTC 与电池 ADC 感测驱动实现
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   实现 NTC 偏置控制、ADC 采样、阻值与温度换算。
 *   同步支持电池电压与 MCU 管芯温度通道。
 *   依赖 patch_hal_adc 与板级 GPIO 宏定义。
 *
 ************************************************************************************************************/
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <string.h>
#include <math.h>

#include "RegHT32F675x5.h"
#include "err_def.h"
#include "boards.h"
#include "hw_gpio.h"
#include "hw_adc.h"
#include "hal_adc.h"
#include "patch_hal_adc.h"
#include "ntc.h"

/* 数据手册 LGA28：P09=ADC0_1，P21=ADC0_2；管芯传感器 = ADC_CH_TEMP */
#define NTC_ADC_CH_BAT                     (ADC_CH_1)
#define NTC_ADC_CH_NTC                     (ADC_CH_2)
#define NTC_ADC_CH_MCU_TEMP                (ADC_CH_TEMP)

#ifndef NTC_DEFAULT_VREF_MV
#define NTC_DEFAULT_VREF_MV                (3300u)
#endif
#ifndef NTC_DEFAULT_RPULL_OHM
#define NTC_DEFAULT_RPULL_OHM              (10000u)
#endif
#ifndef NTC_DEFAULT_R25_OHM
#define NTC_DEFAULT_R25_OHM                (10000u)
#endif
#ifndef NTC_DEFAULT_BETA
#define NTC_DEFAULT_BETA                   (3950.0f)
#endif

#define NTC_T25_K                          (298.15f)

static bool              s_bInit = false;
static ntc_cfg_t         s_stCfg;
static stADCInitHandle_t s_stAdcHandle;

/**
 * @brief  将 NTC_GND 配为输出并默认拉高（偏置关闭）。
 */
static void ntc_gpio_bias_init(void)
{
    rom_hw_gpio_set_pin_pull_mode(GPIO_PORT_NTC_GND, GPIO_PIN_NTC_GND, GPIO_PULL_NONE);
    rom_hw_gpio_set_pin_input_output(GPIO_PORT_NTC_GND, GPIO_PIN_NTC_GND, GPIO_MODE_OUTPUT);
    rom_hw_gpio_set_pin_output_level(GPIO_PORT_NTC_GND, GPIO_PIN_NTC_GND, GPIO_LEVEL_HI);
}

/**
 * @brief  配置 NTC/BAT ADC 引脚为无上下拉模拟输入。
 */
static void ntc_gpio_adc_init(void)
{
    rom_hw_gpio_set_pin_pull_mode(GPIO_PORT_NTC_ADC, GPIO_PIN_NTC_ADC, GPIO_PULL_NONE);
    if (s_stCfg.bEnableBatCh)
    {
        rom_hw_gpio_set_pin_pull_mode(GPIO_PORT_BAT_ADC, GPIO_PIN_BAT_ADC, GPIO_PULL_NONE);
    }
}

/**
 * @brief  填充 NTC 默认配置（Vref/Rpull/R25/Beta 等）。
 * @param  pstCfg  输出配置结构体
 */
void ntc_cfg_default(ntc_cfg_t *pstCfg)
{
    if (NULL == pstCfg)
    {
        return;
    }

    memset(pstCfg, 0, sizeof(*pstCfg));
    pstCfg->u16Vref_mV   = NTC_DEFAULT_VREF_MV;
    pstCfg->u32Rpull_ohm = NTC_DEFAULT_RPULL_OHM;
    pstCfg->u32R25_ohm   = NTC_DEFAULT_R25_OHM;
    pstCfg->fBeta        = NTC_DEFAULT_BETA;
    pstCfg->bKeepBiasOn      = false;
    pstCfg->bEnableBatCh     = true;
    pstCfg->bEnableMcuTempCh = true;
}

/**
 * @brief  初始化 NTC 偏置 GPIO 与 ADC 通道。
 * @param  pstCfg  配置；NULL 则用默认
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_init(const ntc_cfg_t *pstCfg)
{
    EN_ERR_STA_T enRet;
    EN_ADC_CH_T  enCh;

    if (s_bInit)
    {
        return ERR_STA_OK;
    }

    if (NULL != pstCfg)
    {
        s_stCfg = *pstCfg;
    }
    else
    {
        ntc_cfg_default(&s_stCfg);
    }

    if ((0u == s_stCfg.u16Vref_mV) || (0u == s_stCfg.u32Rpull_ohm) ||
        (0u == s_stCfg.u32R25_ohm) || (s_stCfg.fBeta <= 0.0f))
    {
        return ERR_PARA_ERR;
    }

    ntc_gpio_bias_init();
    ntc_gpio_adc_init();

    enCh = (EN_ADC_CH_T)NTC_ADC_CH_NTC;
    if (s_stCfg.bEnableBatCh)
    {
        enCh = (EN_ADC_CH_T)((uint32_t)enCh | (uint32_t)NTC_ADC_CH_BAT);
    }
    if (s_stCfg.bEnableMcuTempCh)
    {
        enCh = (EN_ADC_CH_T)((uint32_t)enCh | (uint32_t)NTC_ADC_CH_MCU_TEMP);
    }

    memset(&s_stAdcHandle, 0, sizeof(s_stAdcHandle));
    s_stAdcHandle.pstADCHandle = ADC0;
    s_stAdcHandle.u8Resolution = ADC_RESOLUTION_10BIT;
    s_stAdcHandle.enCh         = enCh;
    s_stAdcHandle.enSampMode   = ADC_SAMP_BY_SW_TRIG;
    s_stAdcHandle.enSampSrc    = 0;
    s_stAdcHandle.enPwmSampSrc = 0;

    enRet = patch_hal_adc_init(&s_stAdcHandle, 1);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    s_bInit = true;
    return ERR_STA_OK;
}

/**
 * @brief  关闭偏置并标记未初始化。
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_deinit(void)
{
    if (!s_bInit)
    {
        return ERR_STA_OK;
    }

    (void)ntc_bias_enable(false);
    s_bInit = false;
    return ERR_STA_OK;
}

/**
 * @brief  运行时更新换算参数（不重新初始化 ADC）。
 * @param  pstCfg  新配置
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_set_cfg(const ntc_cfg_t *pstCfg)
{
    if ((NULL == pstCfg) || (0u == pstCfg->u16Vref_mV) || (0u == pstCfg->u32Rpull_ohm) ||
        (0u == pstCfg->u32R25_ohm) || (pstCfg->fBeta <= 0.0f))
    {
        return ERR_PARA_ERR;
    }

    s_stCfg = *pstCfg;
    return ERR_STA_OK;
}

/**
 * @brief  读取当前 NTC 配置副本。
 * @param  pstCfg  输出配置
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_get_cfg(ntc_cfg_t *pstCfg)
{
    if (NULL == pstCfg)
    {
        return ERR_PARA_ERR;
    }

    *pstCfg = s_stCfg;
    return ERR_STA_OK;
}

/**
 * @brief  打开/关闭 NTC 下端偏置（NTC_GND）。
 * @param  bEnable  true=拉低使能分压
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_bias_enable(bool bEnable)
{
    if (!s_bInit)
    {
        return ERR_STA_ERROR;
    }

    rom_hw_gpio_set_pin_output_level(GPIO_PORT_NTC_GND,
                                     GPIO_PIN_NTC_GND,
                                     bEnable ? GPIO_LEVEL_LO : GPIO_LEVEL_HI);
    return ERR_STA_OK;
}

/**
 * @brief  读取 NTC_ADC 原始电压（mV）；采样时会打开偏置。
 * @param  pu16Ntc_mV  输出毫伏
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_read_mv(uint16_t *pu16Ntc_mV)
{
    EN_ERR_STA_T enRet;
    uint16_t     u16Mv = 0;

    if (!s_bInit)
    {
        return ERR_STA_ERROR;
    }
    if (NULL == pu16Ntc_mV)
    {
        return ERR_PARA_ERR;
    }

    (void)ntc_bias_enable(true);
    enRet = patch_hal_adc_get_voltage(&s_stAdcHandle, NTC_ADC_CH_NTC, &u16Mv);
    if (!s_stCfg.bKeepBiasOn)
    {
        (void)ntc_bias_enable(false);
    }

    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    *pu16Ntc_mV = u16Mv;
    return ERR_STA_OK;
}

/**
 * @brief  由分压电压换算 NTC 阻值。
 * @param  u16Ntc_mV  ADC 毫伏
 * @param  pu32R_ohm  输出欧姆
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_mv_to_ohm(uint16_t u16Ntc_mV, uint32_t *pu32R_ohm)
{
    uint32_t u32Vref;
    uint32_t u32Vntc;
    uint64_t u64Num;

    if (!s_bInit)
    {
        return ERR_STA_ERROR;
    }
    if (NULL == pu32R_ohm)
    {
        return ERR_PARA_ERR;
    }

    u32Vref = (uint32_t)s_stCfg.u16Vref_mV;
    u32Vntc = (uint32_t)u16Ntc_mV;

    /* 开路 / 短路 / 超量程 */
    if ((0u == u32Vntc) || (u32Vntc >= u32Vref))
    {
        return ERR_STA_ERROR;
    }

    /* Rntc = Rpull * Vntc / (Vref - Vntc) */
    u64Num = (uint64_t)s_stCfg.u32Rpull_ohm * (uint64_t)u32Vntc;
    *pu32R_ohm = (uint32_t)(u64Num / (uint64_t)(u32Vref - u32Vntc));
    return ERR_STA_OK;
}

/**
 * @brief  用 B 参数方程将阻值换算为摄氏度。
 * @param  u32R_ohm   NTC 阻值
 * @param  pfTemp_C   输出温度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_ohm_to_c(uint32_t u32R_ohm, float *pfTemp_C)
{
    float fLn;
    float fInvT;

    if (!s_bInit)
    {
        return ERR_STA_ERROR;
    }
    if ((NULL == pfTemp_C) || (0u == u32R_ohm) || (0u == s_stCfg.u32R25_ohm))
    {
        return ERR_PARA_ERR;
    }

    fLn   = logf((float)u32R_ohm / (float)s_stCfg.u32R25_ohm);
    fInvT = (1.0f / NTC_T25_K) + (fLn / s_stCfg.fBeta);
    if (fInvT <= 0.0f)
    {
        return ERR_STA_ERROR;
    }

    *pfTemp_C = (1.0f / fInvT) - 273.15f;
    return ERR_STA_OK;
}

/**
 * @brief  采样并换算当前 NTC 阻值。
 * @param  pu32R_ohm  输出欧姆
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_read_ohm(uint32_t *pu32R_ohm)
{
    EN_ERR_STA_T enRet;
    uint16_t     u16Mv = 0;

    enRet = ntc_read_mv(&u16Mv);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }
    return ntc_mv_to_ohm(u16Mv, pu32R_ohm);
}

/**
 * @brief  采样并换算当前 NTC 温度（°C）。
 * @param  pfTemp_C  输出温度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_read_c(float *pfTemp_C)
{
    EN_ERR_STA_T enRet;
    uint32_t     u32R = 0;

    enRet = ntc_read_ohm(&u32R);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }
    return ntc_ohm_to_c(u32R, pfTemp_C);
}

/**
 * @brief  一次完成电压/阻值/温度采样并填入 sample。
 * @param  pstSample  输出采样结果
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_measure(ntc_sample_t *pstSample)
{
    EN_ERR_STA_T enRet;

    if (NULL == pstSample)
    {
        return ERR_PARA_ERR;
    }

    memset(pstSample, 0, sizeof(*pstSample));

    enRet = ntc_read_mv(&pstSample->u16Adc_mV);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    enRet = ntc_mv_to_ohm(pstSample->u16Adc_mV, &pstSample->u32R_ohm);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    enRet = ntc_ohm_to_c(pstSample->u32R_ohm, &pstSample->fTemp_C);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    pstSample->bValid = true;
    return ERR_STA_OK;
}

/**
 * @brief  读取电池 ADC 通道电压（mV）。
 * @param  pu16Bat_mV  输出毫伏
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_read_bat_mv(uint16_t *pu16Bat_mV)
{
    EN_ERR_STA_T enRet;
    uint16_t     u16Mv = 0;

    if (!s_bInit)
    {
        return ERR_STA_ERROR;
    }
    if (NULL == pu16Bat_mV)
    {
        return ERR_PARA_ERR;
    }
    if (!s_stCfg.bEnableBatCh)
    {
        return ERR_NOT_ALLOWED;
    }

    enRet = patch_hal_adc_get_voltage(&s_stAdcHandle, NTC_ADC_CH_BAT, &u16Mv);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    *pu16Bat_mV = u16Mv;
    return ERR_STA_OK;
}

/**
 * @brief  同时读取电池与 NTC 毫伏（供 BLE ENV 等使用）。
 * @param  pu16Bat_mV  输出电池毫伏，可为 NULL
 * @param  pu16Ntc_mV  输出 NTC 毫伏，可为 NULL
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_read_bat_ntc_mv(uint16_t *pu16Bat_mV, uint16_t *pu16Ntc_mV)
{
    EN_ERR_STA_T enRet;
    uint16_t     u16Bat = 0xFFFF;
    uint16_t     u16Ntc = 0xFFFF;

    if (!s_bInit)
    {
        return ERR_STA_ERROR;
    }

    if (s_stCfg.bEnableBatCh)
    {
        enRet = ntc_read_bat_mv(&u16Bat);
        if (ERR_STA_OK != enRet)
        {
            u16Bat = 0xFFFF;
        }
    }

    enRet = ntc_read_mv(&u16Ntc);
    if (ERR_STA_OK != enRet)
    {
        u16Ntc = 0xFFFF;
    }

    if (NULL != pu16Bat_mV)
    {
        *pu16Bat_mV = u16Bat;
    }
    if (NULL != pu16Ntc_mV)
    {
        *pu16Ntc_mV = u16Ntc;
    }

    if ((0xFFFF == u16Ntc) || (s_stCfg.bEnableBatCh && (0xFFFF == u16Bat)))
    {
        return ERR_STA_ERROR;
    }
    return ERR_STA_OK;
}

/**
 * @brief  通过 ADC_CH_TEMP 校准映射读取 MCU 管芯温度。
 * @param  pfTemp_C  输出摄氏度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_read_mcu_c(float *pfTemp_C)
{
    EN_ERR_STA_T enRet;
    uint16_t     u16Code = 0;
    float        fDen;
    float        fT;

    if (!s_bInit)
    {
        return ERR_STA_ERROR;
    }
    if (NULL == pfTemp_C)
    {
        return ERR_PARA_ERR;
    }
    if (!s_stCfg.bEnableMcuTempCh)
    {
        return ERR_NOT_ALLOWED;
    }

    /* 管芯传感器使用原始码值 + 出厂校准点，而非毫伏换算。 */
    enRet = patch_hal_adc_get_data(&s_stAdcHandle, NTC_ADC_CH_MCU_TEMP, &u16Code);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    fDen = (float)ADC_TEMPERATURE_TRIM2 - (float)ADC_TEMPERATURE_TRIM1;
    if ((fDen > -0.5f) && (fDen < 0.5f))
    {
        return ERR_STA_ERROR;
    }

    fT = (float)ADC_TEMPERATURE_STANDARD_NEG40_VAL +
         (((float)u16Code - (float)ADC_TEMPERATURE_TRIM1) *
          ((float)ADC_TEMPERATURE_STANDARD_116_VAL - (float)ADC_TEMPERATURE_STANDARD_NEG40_VAL) / fDen);

    *pfTemp_C = fT;
    return ERR_STA_OK;
}
