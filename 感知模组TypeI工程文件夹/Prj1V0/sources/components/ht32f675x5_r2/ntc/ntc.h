/*************************************************************************************************************
 * @file        ntc.h
 * @brief       板级 NTC 与电池 ADC 感测接口
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   提供 NTC 温度、电池电压与 MCU 管芯温度的采样与换算接口。
 *   引脚：P21=NTC_ADC，P24=NTC_GND（偏置开关），P09=BAT_ADC。
 *   分压假设：Vref — Rpull — NTC_ADC — NTC — NTC_GND；温度用 B 参数方程计算。
 *   Rpull / R25 / Beta 可按板级配置修改。
 *
 ************************************************************************************************************/
#ifndef __NTC_H__
#define __NTC_H__

#include <stdint.h>
#include <stdbool.h>
#include "err_def.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct
{
    uint16_t u16Vref_mV;     /* ADC / 分压上端电压，默认 3300 */
    uint32_t u32Rpull_ohm;   /* 上拉串联电阻，默认 10000 */
    uint32_t u32R25_ohm;     /* NTC 在 25°C 的阻值，默认 10000 */
    float    fBeta;          /* B25/50 或 B25/85，默认 3950 */
    bool     bKeepBiasOn;      /* true：采样后保持 NTC_GND 为低 */
    bool     bEnableBatCh;     /* true：同时初始化电池 ADC 通道 */
    bool     bEnableMcuTempCh; /* true：同时初始化 HT67595 ADC_CH_TEMP */
} ntc_cfg_t;

typedef struct
{
    uint16_t u16Adc_mV;
    uint32_t u32R_ohm;
    float    fTemp_C;
    bool     bValid;
} ntc_sample_t;

/**
 * @brief  填充 NTC 默认配置（Vref/Rpull/R25/Beta 等）。
 * @param  pstCfg  输出配置结构体
 */
void ntc_cfg_default(ntc_cfg_t *pstCfg);

/**
 * @brief  初始化 NTC 偏置 GPIO 与 ADC 通道。
 * @param  pstCfg  配置；NULL 则用默认
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_init(const ntc_cfg_t *pstCfg);

/**
 * @brief  关闭偏置并标记未初始化。
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_deinit(void);

/**
 * @brief  运行时更新换算参数（不重新初始化 ADC）。
 * @param  pstCfg  新配置
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_set_cfg(const ntc_cfg_t *pstCfg);

/**
 * @brief  读取当前 NTC 配置副本。
 * @param  pstCfg  输出配置
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_get_cfg(ntc_cfg_t *pstCfg);

/**
 * @brief  打开/关闭 NTC 下端偏置（NTC_GND）。
 * @param  bEnable  true=拉低使能分压
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_bias_enable(bool bEnable);

/**
 * @brief  读取 NTC_ADC 原始电压（mV）；采样时会打开偏置。
 * @param  pu16Ntc_mV  输出毫伏
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_read_mv(uint16_t *pu16Ntc_mV);

/**
 * @brief  由分压电压换算 NTC 阻值。
 * @param  u16Ntc_mV  ADC 毫伏
 * @param  pu32R_ohm  输出欧姆
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_mv_to_ohm(uint16_t u16Ntc_mV, uint32_t *pu32R_ohm);

/**
 * @brief  用 B 参数方程将阻值换算为摄氏度。
 * @param  u32R_ohm   NTC 阻值
 * @param  pfTemp_C   输出温度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_ohm_to_c(uint32_t u32R_ohm, float *pfTemp_C);

/**
 * @brief  采样并换算当前 NTC 阻值。
 * @param  pu32R_ohm  输出欧姆
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_read_ohm(uint32_t *pu32R_ohm);

/**
 * @brief  采样并换算当前 NTC 温度（°C）。
 * @param  pfTemp_C  输出温度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_read_c(float *pfTemp_C);

/**
 * @brief  一次完成电压/阻值/温度采样并填入 sample。
 * @param  pstSample  输出采样结果
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_measure(ntc_sample_t *pstSample);

/**
 * @brief  读取电池 ADC 通道电压（mV）。
 * @param  pu16Bat_mV  输出毫伏
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_read_bat_mv(uint16_t *pu16Bat_mV);

/**
 * @brief  同时读取电池与 NTC 毫伏（供 BLE ENV 等使用）。
 * @param  pu16Bat_mV  输出电池毫伏，可为 NULL
 * @param  pu16Ntc_mV  输出 NTC 毫伏，可为 NULL
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_read_bat_ntc_mv(uint16_t *pu16Bat_mV, uint16_t *pu16Ntc_mV);

/**
 * @brief  通过 ADC_CH_TEMP 校准映射读取 MCU 管芯温度。
 * @param  pfTemp_C  输出摄氏度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ntc_read_mcu_c(float *pfTemp_C);

#ifdef __cplusplus
}
#endif

#endif /* __NTC_H__ */
