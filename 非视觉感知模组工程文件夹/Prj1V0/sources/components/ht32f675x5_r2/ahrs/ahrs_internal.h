/*************************************************************************************************************
 * @file        ahrs_internal.h
 * @brief       Madgwick / EKF 共用的 AHRS 内部辅助声明
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.1
 * @attention
 *
 * 文档说明：
 *   定义全局上下文、角度换算宏与算法更新入口。
 *   仅供 ahrs 模块内部 .c 文件包含，不对外导出。
 *
 ************************************************************************************************************/
#ifndef __AHRS_INTERNAL_H__
#define __AHRS_INTERNAL_H__

#include "ahrs.h"

#ifndef AHRS_PI
#define AHRS_PI 3.14159265358979323846f
#endif

#define AHRS_DEG2RAD(d) ((d) * (AHRS_PI / 180.0f))
#define AHRS_RAD2DEG(r) ((r) * (180.0f / AHRS_PI))

typedef struct
{
    ahrs_cfg_t stCfg;
    ahrs_quat_t stQ;
    float fBias_rps[3];
    /* EKF 7x7 协方差对角项；交叉项简化为 P[7] */
    float fP[7];
    float fAccNorm_g;   /* 上一拍 |a| */
    bool  bMotion;      /* 上一拍运动门控结果 */
    bool  bInited;
} ahrs_ctx_t;

extern ahrs_ctx_t g_stAhrs;

/**
 * @brief  将四元数归一化；非法时复位为单位四元数。
 * @param  pq  输入输出
 */
void ahrs_quat_normalize(ahrs_quat_t *pq);
/**
 * @brief  四元数转横滚/俯仰/偏航（°）。
 * @param  pq  四元数
 * @param  pe  输出欧拉角
 */
void ahrs_quat_to_euler(const ahrs_quat_t *pq, ahrs_euler_t *pe);
/**
 * @brief  三维向量原地归一化。
 * @param  x  X
 * @param  y  Y
 * @param  z  Z
 * @return false 表示模过小
 */
bool ahrs_vec3_normalize(float *x, float *y, float *z);

/**
 * @brief  Madgwick 一步更新（6/9 轴），实现见 ahrs_madgwick.c。
 */
void ahrs_madgwick_update(float dt,
                          float ax, float ay, float az,
                          float gx, float gy, float gz,
                          float mx, float my, float mz,
                          bool bUseMag);

/**
 * @brief  复位 EKF 协方差对角初值。
 */
void ahrs_ekf_reset(void);
/**
 * @brief  EKF 一步：陀螺预测 + 加计/磁力计校正。
 */
void ahrs_ekf_update(float dt,
                     float ax, float ay, float az,
                     float gx, float gy, float gz,
                     float mx, float my, float mz,
                     bool bUseMag);

#endif /* __AHRS_INTERNAL_H__ */
