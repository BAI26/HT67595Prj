/*************************************************************************************************************
 * @file        ahrs.c
 * @brief       AHRS 门面：经 Madgwick 或 EKF 由 imu9dof 估计姿态四元数
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   负责配置默认值、单位换算（deg/s→rad/s）及算法分发。
 *   提供四元数归一化、欧拉角换算与零偏读取辅助。
 *
 ************************************************************************************************************/
#include <stdint.h>
#include <stddef.h>
#include <math.h>
#include "ahrs_internal.h"

ahrs_ctx_t g_stAhrs;

/**
 * @brief  将四元数归一化；非法时复位为单位四元数。
 * @param  pq  输入输出
 */
void ahrs_quat_normalize(ahrs_quat_t *pq)
{
    float n;

    if (pq == NULL)
    {
        return;
    }

    n = pq->q0 * pq->q0 + pq->q1 * pq->q1 + pq->q2 * pq->q2 + pq->q3 * pq->q3;
    if (n > 0.0f)
    {
        n = 1.0f / sqrtf(n);
        pq->q0 *= n;
        pq->q1 *= n;
        pq->q2 *= n;
        pq->q3 *= n;
    }
    else
    {
        pq->q0 = 1.0f;
        pq->q1 = 0.0f;
        pq->q2 = 0.0f;
        pq->q3 = 0.0f;
    }
}

/**
 * @brief  三维向量原地归一化。
 * @param  x  X
 * @param  y  Y
 * @param  z  Z
 * @return false 表示模过小
 */
bool ahrs_vec3_normalize(float *x, float *y, float *z)
{
    float n;

    if ((x == NULL) || (y == NULL) || (z == NULL))
    {
        return false;
    }

    n = (*x) * (*x) + (*y) * (*y) + (*z) * (*z);
    if (n < 1.0e-12f)
    {
        return false;
    }

    n = 1.0f / sqrtf(n);
    *x *= n;
    *y *= n;
    *z *= n;
    return true;
}

/**
 * @brief  四元数转横滚/俯仰/偏航（°）。
 * @param  pq  四元数
 * @param  pe  输出欧拉角
 */
void ahrs_quat_to_euler(const ahrs_quat_t *pq, ahrs_euler_t *pe)
{
    float sinr_cosp, cosr_cosp;
    float sinp;
    float siny_cosp, cosy_cosp;

    if ((pq == NULL) || (pe == NULL))
    {
        return;
    }

    /* 横滚 roll (x) */
    sinr_cosp = 2.0f * (pq->q0 * pq->q1 + pq->q2 * pq->q3);
    cosr_cosp = 1.0f - 2.0f * (pq->q1 * pq->q1 + pq->q2 * pq->q2);
    pe->fRoll_deg = AHRS_RAD2DEG(atan2f(sinr_cosp, cosr_cosp));

    /* 俯仰 pitch (y) */
    sinp = 2.0f * (pq->q0 * pq->q2 - pq->q3 * pq->q1);
    if (fabsf(sinp) >= 1.0f)
    {
        pe->fPitch_deg = AHRS_RAD2DEG(copysignf(AHRS_PI / 2.0f, sinp));
    }
    else
    {
        pe->fPitch_deg = AHRS_RAD2DEG(asinf(sinp));
    }

    /* 偏航 yaw (z) */
    siny_cosp = 2.0f * (pq->q0 * pq->q3 + pq->q1 * pq->q2);
    cosy_cosp = 1.0f - 2.0f * (pq->q2 * pq->q2 + pq->q3 * pq->q3);
    pe->fYaw_deg = AHRS_RAD2DEG(atan2f(siny_cosp, cosy_cosp));
}

/**
 * @brief  填充 AHRS 默认配置（Madgwick @100Hz）。
 * @param  pc  输出配置
 */
static void ahrs_set_defaults(ahrs_cfg_t *pc)
{
    pc->enAlg          = AHRS_ALG_MADGWICK;
    pc->fSampleHz      = 100.0f;
    pc->fMadgwickBeta  = 0.1f;
    pc->fEkfQ_gyro     = 1.0e-4f;
    pc->fEkfQ_bias     = 1.0e-8f;
    pc->fEkfR_acc      = 0.01f;
    pc->fEkfR_mag      = 0.01f;
}

/**
 * @brief  初始化 AHRS；pstCfg 为 NULL 时用默认。
 * @param  pstCfg  配置
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ahrs_init(const ahrs_cfg_t *pstCfg)
{
    ahrs_set_defaults(&g_stAhrs.stCfg);
    if (pstCfg != NULL)
    {
        g_stAhrs.stCfg = *pstCfg;
        if (g_stAhrs.stCfg.fSampleHz <= 0.0f)
        {
            g_stAhrs.stCfg.fSampleHz = 100.0f;
        }
        if (g_stAhrs.stCfg.fMadgwickBeta <= 0.0f)
        {
            g_stAhrs.stCfg.fMadgwickBeta = 0.1f;
        }
    }

    ahrs_reset();
    g_stAhrs.bInited = true;
    return ERR_STA_OK;
}

/**
 * @brief  复位四元数、陀螺零偏与 EKF 协方差。
 */
void ahrs_reset(void)
{
    g_stAhrs.stQ.q0 = 1.0f;
    g_stAhrs.stQ.q1 = 0.0f;
    g_stAhrs.stQ.q2 = 0.0f;
    g_stAhrs.stQ.q3 = 0.0f;
    g_stAhrs.fBias_rps[0] = 0.0f;
    g_stAhrs.fBias_rps[1] = 0.0f;
    g_stAhrs.fBias_rps[2] = 0.0f;
    ahrs_ekf_reset();
}

/**
 * @brief  按物理量更新姿态；陀螺单位为 °/s，内部转 rad/s。
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ahrs_update_raw(float fDt_s,
                             float ax, float ay, float az,
                             float gx_dps, float gy_dps, float gz_dps,
                             float mx, float my, float mz,
                             bool bUseMag)
{
    float gx, gy, gz;

    if (!g_stAhrs.bInited)
    {
        ahrs_init(NULL);
    }

    if (fDt_s <= 0.0f)
    {
        fDt_s = 1.0f / g_stAhrs.stCfg.fSampleHz;
    }

    gx = AHRS_DEG2RAD(gx_dps);
    gy = AHRS_DEG2RAD(gy_dps);
    gz = AHRS_DEG2RAD(gz_dps);

    if (g_stAhrs.stCfg.enAlg == AHRS_ALG_EKF)
    {
        ahrs_ekf_update(fDt_s, ax, ay, az, gx, gy, gz, mx, my, mz, bUseMag);
    }
    else
    {
        ahrs_madgwick_update(fDt_s, ax, ay, az, gx, gy, gz, mx, my, mz, bUseMag);
    }

    return ERR_STA_OK;
}

/**
 * @brief  用 imu9dof 采样更新姿态。
 * @param  fDt_s  采样周期秒
 * @param  pstSample  九轴采样
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ahrs_update(float fDt_s, const imu9dof_sample_t *pstSample)
{
    if (pstSample == NULL)
    {
        return ERR_STA_ERROR;
    }

    return ahrs_update_raw(fDt_s,
                           pstSample->stAccel_g.fX,
                           pstSample->stAccel_g.fY,
                           pstSample->stAccel_g.fZ,
                           pstSample->stGyro_dps.fX,
                           pstSample->stGyro_dps.fY,
                           pstSample->stGyro_dps.fZ,
                           pstSample->stMag_uT.fX_uT,
                           pstSample->stMag_uT.fY_uT,
                           pstSample->stMag_uT.fZ_uT,
                           pstSample->bMagValid);
}

/**
 * @brief  读取当前姿态四元数。
 * @param  pstQuat  输出
 */
void ahrs_get_quat(ahrs_quat_t *pstQuat)
{
    if (pstQuat != NULL)
    {
        *pstQuat = g_stAhrs.stQ;
    }
}

/**
 * @brief  由当前四元数换算欧拉角（°）。
 * @param  pstEuler  输出
 */
void ahrs_get_euler(ahrs_euler_t *pstEuler)
{
    if (pstEuler != NULL)
    {
        ahrs_quat_to_euler(&g_stAhrs.stQ, pstEuler);
    }
}

/**
 * @brief  读取陀螺零偏估计（°/s）。
 * @param  pbx  X，可为 NULL
 * @param  pby  Y
 * @param  pbz  Z
 */
void ahrs_get_gyro_bias_dps(float *pbx, float *pby, float *pbz)
{
    if (pbx != NULL)
    {
        *pbx = AHRS_RAD2DEG(g_stAhrs.fBias_rps[0]);
    }
    if (pby != NULL)
    {
        *pby = AHRS_RAD2DEG(g_stAhrs.fBias_rps[1]);
    }
    if (pbz != NULL)
    {
        *pbz = AHRS_RAD2DEG(g_stAhrs.fBias_rps[2]);
    }
}

/**
 * @brief  返回当前选用的姿态算法。
 * @return Madgwick 或 EKF
 */
ahrs_alg_t ahrs_get_alg(void)
{
    return g_stAhrs.stCfg.enAlg;
}
