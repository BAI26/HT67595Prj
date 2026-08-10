/*************************************************************************************************************
 * @file        ahrs.h
 * @brief       姿态估计接口：四元数 + Madgwick / EKF 融合 imu9dof 采样
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.1
 * @attention
 *
 * 文档说明：
 *   对外提供初始化、复位、更新与四元数/欧拉角/陀螺零偏读取。
 *   支持 6/9 轴：磁力计有效时用九轴，否则退化为加计+陀螺。
 *   V1.1：加速度运动门控（振动时少信/不信加计）+ Madgwick 静止零偏跟踪。
 *
 ************************************************************************************************************/
#ifndef __AHRS_H__
#define __AHRS_H__

#include <stdint.h>
#include <stdbool.h>
#include "err_def.h"
#include "imu9dof.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef enum
{
    AHRS_ALG_MADGWICK = 0,  /* 梯度下降 AHRS（默认，支持 6/9 轴） */
    AHRS_ALG_EKF      = 1   /* 简化四元数 EKF + 陀螺零偏 */
} ahrs_alg_t;

typedef struct
{
    float q0; /* w */
    float q1; /* x */
    float q2; /* y */
    float q3; /* z */
} ahrs_quat_t;

typedef struct
{
    float fRoll_deg;
    float fPitch_deg;
    float fYaw_deg;
} ahrs_euler_t;

typedef struct
{
    ahrs_alg_t enAlg;
    float      fSampleHz;      /* 标称更新频率；当 dt<=0 时使用 */
    float      fMadgwickBeta;  /* Madgwick 增益，典型 0.05~0.2 */
    float      fEkfQ_gyro;     /* EKF 过程噪声 (rad/s)^2 */
    float      fEkfQ_bias;     /* EKF 陀螺零偏过程噪声 */
    float      fEkfR_acc;      /* EKF 加计量测噪声 */
    float      fEkfR_mag;      /* EKF 磁力计量测噪声 */
    /* 运动门控：|||a||-1g| > fAccNormTol_g 时判定为运动，融合少信/不信加计 */
    bool       bMotionGateEn;    /* 默认 true */
    float      fAccNormTol_g;    /* 默认 0.15g */
    bool       bRestBiasEn;      /* Madgwick 静止时跟踪陀螺零偏，默认 true；EKF 自带 bias 不受影响 */
    float      fRestBiasAlpha;   /* 静止零偏 EMA 系数，默认 0.01 */
} ahrs_cfg_t;

/**
 * @brief  初始化 AHRS；NULL 则用默认（Madgwick @100Hz）。
 */
EN_ERR_STA_T ahrs_init(const ahrs_cfg_t *pstCfg);

/**
 * @brief  复位单位四元数并清除陀螺零偏/协方差。
 */
void ahrs_reset(void);

/**
 * @brief  融合一次 IMU 采样；dt<=0 时用 1/fSampleHz；有磁力计则九轴。
 */
EN_ERR_STA_T ahrs_update(float fDt_s, const imu9dof_sample_t *pstSample);

/**
 * @brief  按物理量更新姿态（加计 g、陀螺 °/s、磁力计 μT）。
 */
EN_ERR_STA_T ahrs_update_raw(float fDt_s,
                             float ax, float ay, float az,
                             float gx_dps, float gy_dps, float gz_dps,
                             float mx, float my, float mz,
                             bool bUseMag);

/**
 * @brief  读取当前姿态四元数。
 * @param  pstQuat  输出
 */
void ahrs_get_quat(ahrs_quat_t *pstQuat);
/**
 * @brief  由当前四元数换算欧拉角（°）。
 * @param  pstEuler  输出
 */
void ahrs_get_euler(ahrs_euler_t *pstEuler);
/**
 * @brief  读取陀螺零偏估计（°/s）。
 * @param  pbx  X，可为 NULL
 * @param  pby  Y
 * @param  pbz  Z
 */
void ahrs_get_gyro_bias_dps(float *pbx, float *pby, float *pbz);

/**
 * @brief  返回当前选用的姿态算法。
 * @return Madgwick 或 EKF
 */
ahrs_alg_t ahrs_get_alg(void);

/**
 * @brief  上一拍是否因加计模长偏离 1g 被判为运动（门控开启时有效）。
 */
bool ahrs_is_motion(void);

/**
 * @brief  上一拍加计模长（g）；未更新过可为 0。
 */
float ahrs_get_acc_norm_g(void);

#ifdef __cplusplus
}
#endif

#endif /* __AHRS_H__ */
