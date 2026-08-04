/*************************************************************************************************************
 * @file        temp_fusion.h
 * @brief       多源温度融合接口（GD 红外 + NTC + MCU 管芯 + IMU 管芯）
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.1
 * @attention
 *
 * 文档说明：
 *   GD 物温/体温作为快速目标温度；NTC（+ MCU 管芯）作为环境/板温主源。
 *   IMU 管芯仅作诊断（自热），不作为环境温度主源。
 *   本模块为纯算法：调用方需传入已采样的温度值。
 *   V1.1：输入限幅、GD 环境补偿、物温 hold 超时与更细 flags。
 *
 ************************************************************************************************************/
#ifndef __TEMP_FUSION_H__
#define __TEMP_FUSION_H__

#include <stdint.h>
#include <stdbool.h>
#include "err_def.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef enum
{
    TEMP_FUSION_FLAG_OBJ_VALID         = (1u << 0),  /* 融合物温可用（新值或未超时 hold） */
    TEMP_FUSION_FLAG_AMB_VALID         = (1u << 1),
    TEMP_FUSION_FLAG_GD_VALID          = (1u << 2),  /* 本步 GD 物温输入有效 */
    TEMP_FUSION_FLAG_NTC_VALID         = (1u << 3),
    TEMP_FUSION_FLAG_MCU_VALID         = (1u << 4),
    TEMP_FUSION_FLAG_IMU_VALID         = (1u << 5),
    TEMP_FUSION_FLAG_AMB_CROSS_WARN    = (1u << 6),
    TEMP_FUSION_FLAG_IMU_SELFHEAT_WARN = (1u << 7),
    TEMP_FUSION_FLAG_OBJ_HOLD          = (1u << 8),  /* 物温为保持值，非本步新融合 */
    TEMP_FUSION_FLAG_OBJ_STALE         = (1u << 9),  /* hold 已超时，物温不可靠 */
    TEMP_FUSION_FLAG_GD_AMB_VALID      = (1u << 10), /* 本步 GD 环境温参与补偿 */
    TEMP_FUSION_FLAG_INPUT_CLIP        = (1u << 11), /* 有输入被限幅 */
} temp_fusion_flags_t;

typedef struct
{
    float    fAlpha;            /* 物温环境补偿增益，典型 0.1~0.5 */
    float    fObjCalibBias_C;   /* 物温静态校准偏置 */
    float    fAmbNtcWeight;     /* 0..1，环境融合中 NTC 相对 MCU 的权重 */
    float    fAmbLpfAlpha;      /* 0..1，环境低通系数（1 = 无滤波） */
    float    fObjLpfAlpha;      /* 0..1，物温低通系数（1 = 无滤波） */
    float    fAmbCrossMax_C;    /* |NTC-MCU| 告警阈值 */
    float    fImuSelfHeatMax_C; /* |IMU-NTC| 告警阈值 */
    float    fGdJumpMax_C;      /* 相对上次有效值的 |dT| 超限则拒绝 GD 样本 */
    float    fTempMin_C;        /* 输入温度下限，默认 -40 */
    float    fTempMax_C;        /* 输入温度上限，默认 125 */
    uint16_t u16ObjHoldMaxSteps;/* 无新 GD 时最多保持步数，0=不保持 */
} temp_fusion_cfg_t;

typedef struct
{
    float fGdObj_C;
    bool  bGdObjValid;
    float fGdAmb_C;          /* GD 环境温；有效时参与补偿 */
    bool  bGdAmbValid;
    float fNtc_C;
    bool  bNtcValid;
    float fMcu_C;
    bool  bMcuValid;
    float fImu_C;            /* 诊断用 */
    bool  bImuValid;
} temp_fusion_input_t;

typedef struct
{
    float    fObj_C;         /* 融合后的目标/物温 */
    float    fAmb_C;         /* 融合后的环境/板温 */
    float    fGdObj_C;
    float    fNtc_C;
    float    fMcu_C;
    float    fImu_C;
    uint16_t u16Flags;
} temp_fusion_sample_t;

/**
 * @brief  填充温度融合默认参数（权重/低通/告警阈值）。
 * @param  pstCfg  输出配置
 */
void temp_fusion_cfg_default(temp_fusion_cfg_t *pstCfg);

/**
 * @brief  初始化融合模块并复位内部滤波器状态。
 * @param  pstCfg  配置；NULL 则用默认
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T temp_fusion_init(const temp_fusion_cfg_t *pstCfg);

/**
 * @brief  清空输出与低通/跳变记忆，不改配置。
 */
void temp_fusion_reset(void);

/**
 * @brief  更新融合配置并钳位权重/滤波系数到 [0,1]。
 * @param  pstCfg  新配置
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T temp_fusion_set_cfg(const temp_fusion_cfg_t *pstCfg);

/**
 * @brief  读取当前融合配置副本。
 * @param  pstCfg  输出配置
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T temp_fusion_get_cfg(temp_fusion_cfg_t *pstCfg);

/**
 * @brief  执行一步融合；pstOut 可为 NULL，结果仍会内部保存。
 * @param  pstIn   各传感器输入温度与有效标志
 * @param  pstOut  可选输出本步结果
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T temp_fusion_update(const temp_fusion_input_t *pstIn, temp_fusion_sample_t *pstOut);

/**
 * @brief  取最近一次融合结果副本。
 * @param  pstOut  输出采样
 */
void temp_fusion_get(temp_fusion_sample_t *pstOut);

/**
 * @brief  查询当前物温是否可用（含未超时 hold）。
 * @return true 表示物温可用
 */
bool temp_fusion_is_obj_valid(void);

/**
 * @brief  查询当前环境温标志是否有效。
 * @return true 表示环境温可用
 */
bool temp_fusion_is_amb_valid(void);

#ifdef __cplusplus
}
#endif

#endif /* __TEMP_FUSION_H__ */
