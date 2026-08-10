/*************************************************************************************************************
 * @file        ist8310.h
 * @brief       IST8310 磁力计驱动接口（经 LSM6DSOW Sensor-Hub 访问）
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   提供软复位、WHO_AM_I、单次触发测量与 μT 读出。
 *   不直接挂 MCU I2C，而是通过 LSM6 的 Sensor-Hub 主控访问。
 *
 ************************************************************************************************************/
#ifndef __IST8310_H__
#define __IST8310_H__

#include <stdint.h>
#include <stdbool.h>
#include "err_def.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct
{
    int16_t s16X;
    int16_t s16Y;
    int16_t s16Z;
} ist8310_raw3_t;

typedef struct
{
    float fX_uT;
    float fY_uT;
    float fZ_uT;
} ist8310_vec3f_t;

/**
 * @brief  软复位、校验 WAI 并配置平均/温补。
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ist8310_init(void);
/**
 * @brief  经 Sensor-Hub 读取 WAI。
 * @param  pu8Id  输出 ID
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ist8310_who_am_i(uint8_t *pu8Id);
/**
 * @brief  对 IST8310 执行软复位。
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ist8310_soft_reset(void);
/**
 * @brief  自检：对比 STR 前后磁场和是否近 0。
 * @param  pbPass  输出是否通过
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ist8310_self_test(bool *pbPass);

/**
 * @brief  触发单次测量。
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ist8310_trigger_single(void);
/**
 * @brief  读取磁力计原始 XYZ。
 * @param  pstRaw  输出
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ist8310_read_raw(ist8310_raw3_t *pstRaw);
/**
 * @brief  读取并换算为 μT。
 * @param  pstUt  输出
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ist8310_read_uT(ist8310_vec3f_t *pstUt);
/**
 * @brief  触发、等待 DRDY 后读取 μT。
 * @param  pstUt  输出
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ist8310_measure(ist8310_vec3f_t *pstUt); /* 触发 + 等待 + 读取 */

#ifdef __cplusplus
}
#endif

#endif /* __IST8310_H__ */
