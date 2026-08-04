/*************************************************************************************************************
 * @file        temp_fusion.c
 * @brief       多源温度融合算法实现
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.1
 * @attention
 *
 * 文档说明：
 *   对环境温做 NTC 主、MCU 辅加权，并对物温做 GD+环境补偿与低通。
 *   含输入限幅、交叉/自热告警、GD 跳变拒绝与物温 hold 超时。
 *   无硬件依赖，由上层周期喂入采样温度。
 *
 ************************************************************************************************************/
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <string.h>
#include "err_def.h"
#include "temp_fusion.h"

typedef struct
{
    bool                 bInit;
    temp_fusion_cfg_t    stCfg;
    temp_fusion_sample_t stOut;
    float                fAmbLpf;
    float                fObjLpf;
    float                fLastGdObj;
    uint16_t             u16ObjHoldSteps;
    bool                 bAmbLpfValid;
    bool                 bObjLpfValid;
    bool                 bLastGdValid;
} temp_fusion_ctx_t;

static temp_fusion_ctx_t s_stCtx;

/**
 * @brief  将浮点值钳位到 [fLo, fHi]。
 * @return 钳位后的值
 */
static float temp_fusion_clampf(float fVal, float fLo, float fHi)
{
    if (fVal < fLo)
    {
        return fLo;
    }
    if (fVal > fHi)
    {
        return fHi;
    }
    return fVal;
}

/**
 * @brief  返回浮点数的绝对值。
 * @return |fVal|
 */
static float temp_fusion_fabsf(float fVal)
{
    return (fVal < 0.0f) ? (-fVal) : fVal;
}

/**
 * @brief  一阶低通：首次直接取新值，其后按 alpha 混合。
 * @return 滤波后的值
 */
static float temp_fusion_lpf(float fPrev, float fNew, float fAlpha, bool bPrevValid)
{
    float fA = temp_fusion_clampf(fAlpha, 0.0f, 1.0f);

    if (!bPrevValid)
    {
        return fNew;
    }
    return (fPrev * (1.0f - fA)) + (fNew * fA);
}

/**
 * @brief  校验并限幅单路温度；越界则钳位并置 INPUT_CLIP。
 * @return true 表示该路仍可作为有效输入
 */
static bool temp_fusion_sanitize(float *pfTemp_C, bool bValid, uint16_t *pu16Flags)
{
    float fMin;
    float fMax;

    if ((!bValid) || (NULL == pfTemp_C) || (NULL == pu16Flags))
    {
        return false;
    }

    fMin = s_stCtx.stCfg.fTempMin_C;
    fMax = s_stCtx.stCfg.fTempMax_C;
    if (fMax <= fMin)
    {
        fMin = -40.0f;
        fMax = 125.0f;
    }

    if ((*pfTemp_C < fMin) || (*pfTemp_C > fMax))
    {
        *pfTemp_C = temp_fusion_clampf(*pfTemp_C, fMin, fMax);
        *pu16Flags |= TEMP_FUSION_FLAG_INPUT_CLIP;
    }
    return true;
}

/**
 * @brief  填充温度融合默认参数（权重/低通/告警阈值）。
 * @param  pstCfg  输出配置
 */
void temp_fusion_cfg_default(temp_fusion_cfg_t *pstCfg)
{
    if (NULL == pstCfg)
    {
        return;
    }

    memset(pstCfg, 0, sizeof(*pstCfg));
    pstCfg->fAlpha             = 0.25f;
    pstCfg->fObjCalibBias_C    = 0.0f;
    pstCfg->fAmbNtcWeight      = 0.80f;
    pstCfg->fAmbLpfAlpha       = 0.20f;
    pstCfg->fObjLpfAlpha       = 0.35f;
    pstCfg->fAmbCrossMax_C     = 8.0f;
    pstCfg->fImuSelfHeatMax_C  = 15.0f;
    pstCfg->fGdJumpMax_C       = 12.0f;
    pstCfg->fTempMin_C         = -40.0f;
    pstCfg->fTempMax_C         = 125.0f;
    pstCfg->u16ObjHoldMaxSteps = 3u; /* 默认最多保持 3 步 */
}

/**
 * @brief  初始化融合模块并复位内部滤波器状态。
 * @param  pstCfg  配置；NULL 则用默认
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T temp_fusion_init(const temp_fusion_cfg_t *pstCfg)
{
    if (NULL != pstCfg)
    {
        s_stCtx.stCfg = *pstCfg;
    }
    else
    {
        temp_fusion_cfg_default(&s_stCtx.stCfg);
    }

    s_stCtx.stCfg.fAmbNtcWeight = temp_fusion_clampf(s_stCtx.stCfg.fAmbNtcWeight, 0.0f, 1.0f);
    s_stCtx.stCfg.fAmbLpfAlpha  = temp_fusion_clampf(s_stCtx.stCfg.fAmbLpfAlpha, 0.0f, 1.0f);
    s_stCtx.stCfg.fObjLpfAlpha  = temp_fusion_clampf(s_stCtx.stCfg.fObjLpfAlpha, 0.0f, 1.0f);

    temp_fusion_reset();
    s_stCtx.bInit = true;
    return ERR_STA_OK;
}

/**
 * @brief  清空输出与低通/跳变记忆，不改配置。
 */
void temp_fusion_reset(void)
{
    memset(&s_stCtx.stOut, 0, sizeof(s_stCtx.stOut));
    s_stCtx.fAmbLpf          = 0.0f;
    s_stCtx.fObjLpf          = 0.0f;
    s_stCtx.fLastGdObj       = 0.0f;
    s_stCtx.u16ObjHoldSteps  = 0u;
    s_stCtx.bAmbLpfValid     = false;
    s_stCtx.bObjLpfValid     = false;
    s_stCtx.bLastGdValid     = false;
}

/**
 * @brief  更新融合配置并钳位权重/滤波系数到 [0,1]。
 * @param  pstCfg  新配置
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T temp_fusion_set_cfg(const temp_fusion_cfg_t *pstCfg)
{
    if (NULL == pstCfg)
    {
        return ERR_PARA_ERR;
    }

    s_stCtx.stCfg = *pstCfg;
    s_stCtx.stCfg.fAmbNtcWeight = temp_fusion_clampf(s_stCtx.stCfg.fAmbNtcWeight, 0.0f, 1.0f);
    s_stCtx.stCfg.fAmbLpfAlpha  = temp_fusion_clampf(s_stCtx.stCfg.fAmbLpfAlpha, 0.0f, 1.0f);
    s_stCtx.stCfg.fObjLpfAlpha  = temp_fusion_clampf(s_stCtx.stCfg.fObjLpfAlpha, 0.0f, 1.0f);
    return ERR_STA_OK;
}

/**
 * @brief  读取当前融合配置副本。
 * @param  pstCfg  输出配置
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T temp_fusion_get_cfg(temp_fusion_cfg_t *pstCfg)
{
    if (NULL == pstCfg)
    {
        return ERR_PARA_ERR;
    }

    *pstCfg = s_stCtx.stCfg;
    return ERR_STA_OK;
}

/**
 * @brief  执行一步融合；pstOut 可为 NULL，结果仍会内部保存。
 * @param  pstIn   各传感器输入温度与有效标志
 * @param  pstOut  可选输出本步结果
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T temp_fusion_update(const temp_fusion_input_t *pstIn, temp_fusion_sample_t *pstOut)
{
    temp_fusion_input_t  stIn;
    temp_fusion_sample_t stOut;
    float                fAmbRaw = 0.0f;
    float                fAmbRef = 0.0f;
    float                fGdAmb  = 0.0f;
    float                fObjRaw = 0.0f;
    float                fW;
    bool                 bAmbRawValid = false;
    bool                 bGdUse       = false;
    bool                 bNtcOk;
    bool                 bMcuOk;
    bool                 bImuOk;
    bool                 bGdObjOk;
    bool                 bGdAmbOk;

    if (!s_stCtx.bInit)
    {
        return ERR_STA_ERROR;
    }
    if (NULL == pstIn)
    {
        return ERR_PARA_ERR;
    }

    stIn = *pstIn;
    memset(&stOut, 0, sizeof(stOut));

    bNtcOk   = temp_fusion_sanitize(&stIn.fNtc_C, stIn.bNtcValid, &stOut.u16Flags);
    bMcuOk   = temp_fusion_sanitize(&stIn.fMcu_C, stIn.bMcuValid, &stOut.u16Flags);
    bImuOk   = temp_fusion_sanitize(&stIn.fImu_C, stIn.bImuValid, &stOut.u16Flags);
    bGdObjOk = temp_fusion_sanitize(&stIn.fGdObj_C, stIn.bGdObjValid, &stOut.u16Flags);
    bGdAmbOk = temp_fusion_sanitize(&stIn.fGdAmb_C, stIn.bGdAmbValid, &stOut.u16Flags);

    if (bNtcOk)
    {
        stOut.fNtc_C = stIn.fNtc_C;
        stOut.u16Flags |= TEMP_FUSION_FLAG_NTC_VALID;
    }
    if (bMcuOk)
    {
        stOut.fMcu_C = stIn.fMcu_C;
        stOut.u16Flags |= TEMP_FUSION_FLAG_MCU_VALID;
    }
    if (bImuOk)
    {
        stOut.fImu_C = stIn.fImu_C;
        stOut.u16Flags |= TEMP_FUSION_FLAG_IMU_VALID;
    }
    if (bGdObjOk)
    {
        stOut.fGdObj_C = stIn.fGdObj_C;
        stOut.u16Flags |= TEMP_FUSION_FLAG_GD_VALID;
    }
    if (bGdAmbOk)
    {
        stOut.u16Flags |= TEMP_FUSION_FLAG_GD_AMB_VALID;
    }

    /* ---- 环境温：NTC 为主，MCU 为辅 ---- */
    if (bNtcOk && bMcuOk)
    {
        fW = s_stCtx.stCfg.fAmbNtcWeight;
        fAmbRaw = (stIn.fNtc_C * fW) + (stIn.fMcu_C * (1.0f - fW));
        bAmbRawValid = true;
        if (temp_fusion_fabsf(stIn.fNtc_C - stIn.fMcu_C) > s_stCtx.stCfg.fAmbCrossMax_C)
        {
            stOut.u16Flags |= TEMP_FUSION_FLAG_AMB_CROSS_WARN;
            fAmbRaw = stIn.fNtc_C;
        }
    }
    else if (bNtcOk)
    {
        fAmbRaw = stIn.fNtc_C;
        bAmbRawValid = true;
    }
    else if (bMcuOk)
    {
        fAmbRaw = stIn.fMcu_C;
        bAmbRawValid = true;
    }

    if (bAmbRawValid)
    {
        s_stCtx.fAmbLpf = temp_fusion_lpf(s_stCtx.fAmbLpf, fAmbRaw, s_stCtx.stCfg.fAmbLpfAlpha, s_stCtx.bAmbLpfValid);
        s_stCtx.bAmbLpfValid = true;
        stOut.fAmb_C = s_stCtx.fAmbLpf;
        stOut.u16Flags |= TEMP_FUSION_FLAG_AMB_VALID;
        fAmbRef = stOut.fAmb_C;
    }

    if (bImuOk && bNtcOk)
    {
        if (temp_fusion_fabsf(stIn.fImu_C - stIn.fNtc_C) > s_stCtx.stCfg.fImuSelfHeatMax_C)
        {
            stOut.u16Flags |= TEMP_FUSION_FLAG_IMU_SELFHEAT_WARN;
        }
    }

    /* ---- 物温：GD + 环境补偿 ---- */
    if (bGdObjOk)
    {
        bGdUse = true;
        if (s_stCtx.bLastGdValid &&
            (temp_fusion_fabsf(stIn.fGdObj_C - s_stCtx.fLastGdObj) > s_stCtx.stCfg.fGdJumpMax_C))
        {
            bGdUse = false;
        }
    }

    if (bGdUse)
    {
        fObjRaw = stIn.fGdObj_C;

        /* 板级 Amb 可用时：优先用 GD 环境温作差，否则差分=0 */
        if (bAmbRawValid)
        {
            fGdAmb  = bGdAmbOk ? stIn.fGdAmb_C : fAmbRef;
            fObjRaw += s_stCtx.stCfg.fAlpha * (fAmbRef - fGdAmb);
        }
        fObjRaw += s_stCtx.stCfg.fObjCalibBias_C;

        s_stCtx.fObjLpf = temp_fusion_lpf(s_stCtx.fObjLpf, fObjRaw, s_stCtx.stCfg.fObjLpfAlpha, s_stCtx.bObjLpfValid);
        s_stCtx.bObjLpfValid = true;
        s_stCtx.fLastGdObj   = stIn.fGdObj_C;
        s_stCtx.bLastGdValid = true;
        s_stCtx.u16ObjHoldSteps = 0u;

        stOut.fObj_C = s_stCtx.fObjLpf;
        stOut.u16Flags |= TEMP_FUSION_FLAG_OBJ_VALID;
    }
    else if (s_stCtx.bObjLpfValid && (s_stCtx.stCfg.u16ObjHoldMaxSteps > 0u))
    {
        s_stCtx.u16ObjHoldSteps++;
        stOut.fObj_C = s_stCtx.fObjLpf;
        if (s_stCtx.u16ObjHoldSteps <= s_stCtx.stCfg.u16ObjHoldMaxSteps)
        {
            stOut.u16Flags |= (TEMP_FUSION_FLAG_OBJ_VALID | TEMP_FUSION_FLAG_OBJ_HOLD);
        }
        else
        {
            stOut.u16Flags |= TEMP_FUSION_FLAG_OBJ_STALE;
            /* 超时后不再宣称物温有效；保留数值便于调试 */
        }
    }
    /* 不再用环境温冒充物温 */

    s_stCtx.stOut = stOut;

    if (NULL != pstOut)
    {
        *pstOut = stOut;
    }

    return ERR_STA_OK;
}

/**
 * @brief  取最近一次融合结果副本。
 * @param  pstOut  输出采样
 */
void temp_fusion_get(temp_fusion_sample_t *pstOut)
{
    if (NULL == pstOut)
    {
        return;
    }
    *pstOut = s_stCtx.stOut;
}

/**
 * @brief  查询当前物温是否可用（含未超时 hold）。
 * @return true 表示物温可用
 */
bool temp_fusion_is_obj_valid(void)
{
    return (0u != (s_stCtx.stOut.u16Flags & TEMP_FUSION_FLAG_OBJ_VALID));
}

/**
 * @brief  查询当前环境温标志是否有效。
 * @return true 表示环境温可用
 */
bool temp_fusion_is_amb_valid(void)
{
    return (0u != (s_stCtx.stOut.u16Flags & TEMP_FUSION_FLAG_AMB_VALID));
}
