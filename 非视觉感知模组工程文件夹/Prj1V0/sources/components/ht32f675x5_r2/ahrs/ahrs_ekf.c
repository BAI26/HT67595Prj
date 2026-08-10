/*************************************************************************************************************
 * @file        ahrs_ekf.c
 * @brief       简化 7 状态四元数 EKF（q0..q3 + 陀螺零偏）及加计/磁力计更新
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   状态 x=[q0,q1,q2,q3,bx,by,bz]；为控制 MCU 开销，P 仅保留对角近似。
 *   预测用去偏陀螺积分；校正用重力/磁场矢量残差的软修正。
 *
 ************************************************************************************************************/
#include <math.h>
#include "ahrs_internal.h"

/* 状态：x = [q0,q1,q2,q3, bx,by,bz]，P 以对角形式保存以降低 MCU 开销。 */

/**
 * @brief  复位 EKF 协方差对角初值。
 */
void ahrs_ekf_reset(void)
{
    unsigned i;

    for (i = 0u; i < 4u; i++)
    {
        g_stAhrs.fP[i] = 1.0e-2f;
    }
    for (i = 4u; i < 7u; i++)
    {
        g_stAhrs.fP[i] = 1.0e-4f;
    }
}

/**
 * @brief  去偏陀螺积分预测四元数并增大过程噪声。
 */
static void ekf_predict(float dt, float gx, float gy, float gz)
{
    float q0 = g_stAhrs.stQ.q0;
    float q1 = g_stAhrs.stQ.q1;
    float q2 = g_stAhrs.stQ.q2;
    float q3 = g_stAhrs.stQ.q3;
    float wx, wy, wz;
    float qDot0, qDot1, qDot2, qDot3;
    float qg;
    unsigned i;

    wx = gx - g_stAhrs.fBias_rps[0];
    wy = gy - g_stAhrs.fBias_rps[1];
    wz = gz - g_stAhrs.fBias_rps[2];

    qDot0 = 0.5f * (-q1 * wx - q2 * wy - q3 * wz);
    qDot1 = 0.5f * ( q0 * wx + q2 * wz - q3 * wy);
    qDot2 = 0.5f * ( q0 * wy - q1 * wz + q3 * wx);
    qDot3 = 0.5f * ( q0 * wz + q1 * wy - q2 * wx);

    g_stAhrs.stQ.q0 = q0 + qDot0 * dt;
    g_stAhrs.stQ.q1 = q1 + qDot1 * dt;
    g_stAhrs.stQ.q2 = q2 + qDot2 * dt;
    g_stAhrs.stQ.q3 = q3 + qDot3 * dt;
    ahrs_quat_normalize(&g_stAhrs.stQ);

    qg = g_stAhrs.stCfg.fEkfQ_gyro;
    for (i = 0u; i < 4u; i++)
    {
        g_stAhrs.fP[i] += qg;
        if (g_stAhrs.fP[i] > 1.0f)
        {
            g_stAhrs.fP[i] = 1.0f;
        }
    }
    for (i = 4u; i < 7u; i++)
    {
        g_stAhrs.fP[i] += g_stAhrs.stCfg.fEkfQ_bias;
        if (g_stAhrs.fP[i] > 0.1f)
        {
            g_stAhrs.fP[i] = 0.1f;
        }
    }
}

/**
 * @brief  用矢量残差对角增益软校正四元数与零偏。
 */
static void ekf_correct_vec(float mx_b, float my_b, float mz_b,
                            float mx_e, float my_e, float mz_e,
                            float R, float bias_gain)
{
    float q0 = g_stAhrs.stQ.q0;
    float q1 = g_stAhrs.stQ.q1;
    float q2 = g_stAhrs.stQ.q2;
    float q3 = g_stAhrs.stQ.q3;
    float ex, ey, ez;
    float Kq, Kb;
    float half_ex, half_ey, half_ez;
    float dq0, dq1, dq2, dq3;
    float Pq, Pb;
    unsigned i;

    /* 本体系残差 = 量测 × 由地球系预测得到的矢量 */
    {
        float px, py, pz;
        /* 将地球系矢量旋到本体系：v_b = q* ⊗ v_e ⊗ q */
        float vw0 = -q1 * mx_e - q2 * my_e - q3 * mz_e;
        float vw1 =  q0 * mx_e + q2 * mz_e - q3 * my_e;
        float vw2 =  q0 * my_e - q1 * mz_e + q3 * mx_e;
        float vw3 =  q0 * mz_e + q1 * my_e - q2 * mx_e;

        px = -vw0 * q1 + vw1 * q0 - vw2 * q3 + vw3 * q2;
        py = -vw0 * q2 + vw1 * q3 + vw2 * q0 - vw3 * q1;
        pz = -vw0 * q3 - vw1 * q2 + vw2 * q1 + vw3 * q0;

        ex = my_b * pz - mz_b * py; /* cross(meas, pred) 作为姿态误差 */
        ey = mz_b * px - mx_b * pz;
        ez = mx_b * py - my_b * px;
    }

    Pq = 0.25f * (g_stAhrs.fP[0] + g_stAhrs.fP[1] + g_stAhrs.fP[2] + g_stAhrs.fP[3]);
    Pb = 0.333f * (g_stAhrs.fP[4] + g_stAhrs.fP[5] + g_stAhrs.fP[6]);

    Kq = Pq / (Pq + R);
    Kb = bias_gain * (Pb / (Pb + R));

    half_ex = 0.5f * Kq * ex;
    half_ey = 0.5f * Kq * ey;
    half_ez = 0.5f * Kq * ez;

    /* δq ≈ [1, 0.5*e]，以 q := q ⊗ δq 施加 */
    dq0 = -q1 * half_ex - q2 * half_ey - q3 * half_ez;
    dq1 =  q0 * half_ex + q2 * half_ez - q3 * half_ey;
    dq2 =  q0 * half_ey - q1 * half_ez + q3 * half_ex;
    dq3 =  q0 * half_ez + q1 * half_ey - q2 * half_ex;

    g_stAhrs.stQ.q0 = q0 + dq0;
    g_stAhrs.stQ.q1 = q1 + dq1;
    g_stAhrs.stQ.q2 = q2 + dq2;
    g_stAhrs.stQ.q3 = q3 + dq3;
    ahrs_quat_normalize(&g_stAhrs.stQ);

    g_stAhrs.fBias_rps[0] -= Kb * ex;
    g_stAhrs.fBias_rps[1] -= Kb * ey;
    g_stAhrs.fBias_rps[2] -= Kb * ez;

    /* 将零偏限制在合理范围（约 20 dps） */
    for (i = 0u; i < 3u; i++)
    {
        if (g_stAhrs.fBias_rps[i] > 0.35f)
        {
            g_stAhrs.fBias_rps[i] = 0.35f;
        }
        else if (g_stAhrs.fBias_rps[i] < -0.35f)
        {
            g_stAhrs.fBias_rps[i] = -0.35f;
        }
    }

    for (i = 0u; i < 4u; i++)
    {
        g_stAhrs.fP[i] *= (1.0f - Kq);
        if (g_stAhrs.fP[i] < 1.0e-6f)
        {
            g_stAhrs.fP[i] = 1.0e-6f;
        }
    }
    for (i = 4u; i < 7u; i++)
    {
        g_stAhrs.fP[i] *= (1.0f - Kb);
        if (g_stAhrs.fP[i] < 1.0e-8f)
        {
            g_stAhrs.fP[i] = 1.0e-8f;
        }
    }
}

/**
 * @brief  EKF 一步：陀螺预测 + 加计/磁力计校正。
 */
void ahrs_ekf_update(float dt,
                     float ax, float ay, float az,
                     float gx, float gy, float gz,
                     float mx, float my, float mz,
                     bool bUseMag)
{
    ekf_predict(dt, gx, gy, gz);

    if (ahrs_vec3_normalize(&ax, &ay, &az))
    {
        /* 地球系重力参考（NED/类 ENU）：[0,0,1]（平放时传感器 z 朝上） */
        ekf_correct_vec(ax, ay, az, 0.0f, 0.0f, 1.0f,
                        g_stAhrs.stCfg.fEkfR_acc, 0.5f);
    }

    if (bUseMag && ahrs_vec3_normalize(&mx, &my, &mz))
    {
        /* 倾角补偿后的水平磁场地球参考近似为 [1,0,0]。
           用本体系磁力计投影，仅通过地球系 X 参考校正偏航。 */
        float bx = mx;
        float by = my;
        float bz = 0.0f;

        /* 用当前本体系重力估计去除垂直分量 */
        {
            float q0 = g_stAhrs.stQ.q0;
            float q1 = g_stAhrs.stQ.q1;
            float q2 = g_stAhrs.stQ.q2;
            float q3 = g_stAhrs.stQ.q3;
            float gx_b, gy_b, gz_b;
            float vw0 = -q1 * 0.0f - q2 * 0.0f - q3 * 1.0f;
            float vw1 =  q0 * 0.0f + q2 * 1.0f - q3 * 0.0f;
            float vw2 =  q0 * 0.0f - q1 * 1.0f + q3 * 0.0f;
            float vw3 =  q0 * 1.0f + q1 * 0.0f - q2 * 0.0f;
            float dot;

            gx_b = -vw0 * q1 + vw1 * q0 - vw2 * q3 + vw3 * q2;
            gy_b = -vw0 * q2 + vw1 * q3 + vw2 * q0 - vw3 * q1;
            gz_b = -vw0 * q3 - vw1 * q2 + vw2 * q1 + vw3 * q0;

            dot = mx * gx_b + my * gy_b + mz * gz_b;
            bx = mx - dot * gx_b;
            by = my - dot * gy_b;
            bz = mz - dot * gz_b;
        }

        if (ahrs_vec3_normalize(&bx, &by, &bz))
        {
            ekf_correct_vec(bx, by, bz, 1.0f, 0.0f, 0.0f,
                            g_stAhrs.stCfg.fEkfR_mag, 0.25f);
        }
    }
}
