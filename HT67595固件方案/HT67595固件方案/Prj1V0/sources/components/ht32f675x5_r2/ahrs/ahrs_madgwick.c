/*************************************************************************************************************
 * @file        ahrs_madgwick.c
 * @brief       Madgwick 梯度下降姿态融合实现
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   实现 6 轴（加计+陀螺）与 9 轴（含磁力计）Madgwick AHRS。
 *   陀螺输入为 rad/s；磁力计任意一致单位；无磁力计时自动退化为 6 轴。
 *   参考 Sebastian Madgwick 开源算法，纯浮点实现。
 *
 ************************************************************************************************************/
#include <math.h>
#include "ahrs_internal.h"

/**
 * @brief  Madgwick 一步更新（6/9 轴），结果写入 g_stAhrs.stQ。
 * @param  dt  采样周期（秒）
 * @param  ax/ay/az  加速度（g 或任意同比例）
 * @param  gx/gy/gz  角速度（rad/s）
 * @param  mx/my/mz  磁力计；bUseMag=false 时忽略
 * @param  bUseMag   是否使用磁力计
 */
void ahrs_madgwick_update(float dt,
                          float ax, float ay, float az,
                          float gx, float gy, float gz,
                          float mx, float my, float mz,
                          bool bUseMag)
{
    float q0 = g_stAhrs.stQ.q0;
    float q1 = g_stAhrs.stQ.q1;
    float q2 = g_stAhrs.stQ.q2;
    float q3 = g_stAhrs.stQ.q3;
    float beta = g_stAhrs.stCfg.fMadgwickBeta;
    float recipNorm;
    float s0, s1, s2, s3;
    float qDot1, qDot2, qDot3, qDot4;
    float hx, hy;
    float _2q0, _2q1, _2q2, _2q3;
    float _2q0mx, _2q0my, _2q0mz, _2q1mx;
    float _2bx, _2bz, _4bx, _4bz;
    float q0q0, q0q1, q0q2, q0q3, q1q1, q1q2, q1q3, q2q2, q2q3, q3q3;
    float _2q0q2, _2q2q3;

    if (dt <= 0.0f)
    {
        dt = 1.0f / g_stAhrs.stCfg.fSampleHz;
    }
    if (beta <= 0.0f)
    {
        beta = 0.1f;
    }

    /* 由陀螺积分得到四元数变化率 */
    qDot1 = 0.5f * (-q1 * gx - q2 * gy - q3 * gz);
    qDot2 = 0.5f * (q0 * gx + q2 * gz - q3 * gy);
    qDot3 = 0.5f * (q0 * gy - q1 * gz + q3 * gx);
    qDot4 = 0.5f * (q0 * gz + q1 * gy - q2 * gx);

    if (!ahrs_vec3_normalize(&ax, &ay, &az))
    {
        /* 无有效加计：仅积分陀螺 */
        q0 += qDot1 * dt;
        q1 += qDot2 * dt;
        q2 += qDot3 * dt;
        q3 += qDot4 * dt;
        g_stAhrs.stQ.q0 = q0;
        g_stAhrs.stQ.q1 = q1;
        g_stAhrs.stQ.q2 = q2;
        g_stAhrs.stQ.q3 = q3;
        ahrs_quat_normalize(&g_stAhrs.stQ);
        return;
    }

    if (bUseMag && ahrs_vec3_normalize(&mx, &my, &mz))
    {
        /* ---- 9 轴 ---- */
        _2q0mx = 2.0f * q0 * mx;
        _2q0my = 2.0f * q0 * my;
        _2q0mz = 2.0f * q0 * mz;
        _2q1mx = 2.0f * q1 * mx;
        _2q0 = 2.0f * q0;
        _2q1 = 2.0f * q1;
        _2q2 = 2.0f * q2;
        _2q3 = 2.0f * q3;
        _2q0q2 = 2.0f * q0 * q2;
        _2q2q3 = 2.0f * q2 * q3;
        q0q0 = q0 * q0;
        q0q1 = q0 * q1;
        q0q2 = q0 * q2;
        q0q3 = q0 * q3;
        q1q1 = q1 * q1;
        q1q2 = q1 * q2;
        q1q3 = q1 * q3;
        q2q2 = q2 * q2;
        q2q3 = q2 * q3;
        q3q3 = q3 * q3;

        /* 参考磁场方向 */
        hx = mx * q0q0 - _2q0my * q3 + _2q0mz * q2 + mx * q1q1 + _2q1 * my * q2
             + _2q1 * mz * q3 - mx * q2q2 - mx * q3q3;
        hy = _2q0mx * q3 + my * q0q0 - _2q0mz * q1 + _2q1mx * q2 - my * q1q1
             + my * q2q2 + _2q2 * mz * q3 - my * q3q3;
        _2bx = sqrtf(hx * hx + hy * hy);
        _2bz = -_2q0mx * q2 + _2q0my * q1 + mz * q0q0 + _2q1mx * q3 - mz * q1q1
               + _2q2 * my * q3 - mz * q2q2 + mz * q3q3;
        _4bx = 2.0f * _2bx;
        _4bz = 2.0f * _2bz;

        /* 梯度下降步 */
        s0 = -_2q2 * (2.0f * q1q3 - _2q0q2 - ax)
             + _2q1 * (2.0f * q0q1 + _2q2q3 - ay)
             - _2bz * q2 * (_2bx * (0.5f - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - mx)
             + (-_2bx * q3 + _2bz * q1) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - my)
             + _2bx * q2 * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - q1q1 - q2q2) - mz);
        s1 = _2q3 * (2.0f * q1q3 - _2q0q2 - ax)
             + _2q0 * (2.0f * q0q1 + _2q2q3 - ay)
             - 4.0f * q1 * (1.0f - 2.0f * q1q1 - 2.0f * q2q2 - az)
             + _2bz * q3 * (_2bx * (0.5f - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - mx)
             + (_2bx * q2 + _2bz * q0) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - my)
             + (_2bx * q3 - _4bz * q1) * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - q1q1 - q2q2) - mz);
        s2 = -_2q0 * (2.0f * q1q3 - _2q0q2 - ax)
             + _2q3 * (2.0f * q0q1 + _2q2q3 - ay)
             - 4.0f * q2 * (1.0f - 2.0f * q1q1 - 2.0f * q2q2 - az)
             + (-_4bx * q2 - _2bz * q0) * (_2bx * (0.5f - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - mx)
             + (_2bx * q1 + _2bz * q3) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - my)
             + (_2bx * q0 - _4bz * q2) * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - q1q1 - q2q2) - mz);
        s3 = _2q1 * (2.0f * q1q3 - _2q0q2 - ax)
             + _2q2 * (2.0f * q0q1 + _2q2q3 - ay)
             + (-_4bx * q3 + _2bz * q1) * (_2bx * (0.5f - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - mx)
             + (-_2bx * q0 + _2bz * q2) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - my)
             + _2bx * q1 * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - q1q1 - q2q2) - mz);
    }
    else
    {
        /* ---- 6 轴（加计 + 陀螺）---- */
        _2q0 = 2.0f * q0;
        _2q1 = 2.0f * q1;
        _2q2 = 2.0f * q2;
        _2q3 = 2.0f * q3;
        q1q1 = q1 * q1;
        q2q2 = q2 * q2;

        s0 = -_2q2 * (2.0f * (q1 * q3 - q0 * q2) - ax)
             + _2q1 * (2.0f * (q0 * q1 + q2 * q3) - ay);
        s1 = _2q3 * (2.0f * (q1 * q3 - q0 * q2) - ax)
             + _2q0 * (2.0f * (q0 * q1 + q2 * q3) - ay)
             - 4.0f * q1 * (1.0f - 2.0f * q1q1 - 2.0f * q2q2 - az);
        s2 = -_2q0 * (2.0f * (q1 * q3 - q0 * q2) - ax)
             + _2q3 * (2.0f * (q0 * q1 + q2 * q3) - ay)
             - 4.0f * q2 * (1.0f - 2.0f * q1q1 - 2.0f * q2q2 - az);
        s3 = _2q1 * (2.0f * (q1 * q3 - q0 * q2) - ax)
             + _2q2 * (2.0f * (q0 * q1 + q2 * q3) - ay);
    }

    recipNorm = s0 * s0 + s1 * s1 + s2 * s2 + s3 * s3;
    if (recipNorm > 1.0e-12f)
    {
        recipNorm = 1.0f / sqrtf(recipNorm);
        s0 *= recipNorm;
        s1 *= recipNorm;
        s2 *= recipNorm;
        s3 *= recipNorm;

        qDot1 -= beta * s0;
        qDot2 -= beta * s1;
        qDot3 -= beta * s2;
        qDot4 -= beta * s3;
    }

    q0 += qDot1 * dt;
    q1 += qDot2 * dt;
    q2 += qDot3 * dt;
    q3 += qDot4 * dt;

    g_stAhrs.stQ.q0 = q0;
    g_stAhrs.stQ.q1 = q1;
    g_stAhrs.stQ.q2 = q2;
    g_stAhrs.stQ.q3 = q3;
    ahrs_quat_normalize(&g_stAhrs.stQ);
}
