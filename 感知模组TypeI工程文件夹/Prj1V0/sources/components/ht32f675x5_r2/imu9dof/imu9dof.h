/*************************************************************************************************************
 * @file        imu9dof.h
 * @brief       九轴传感器门面接口：LSM6DSOW（SPI）+ IST8310（Sensor-Hub I2C）
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   统一初始化与读取加计/陀螺/温度/磁力计。
 *   磁力计经 LSM6 Sensor-Hub 访问 MAG_* 线路。
 *
 ************************************************************************************************************/
#ifndef __IMU9DOF_H__
#define __IMU9DOF_H__

#include <stdint.h>
#include <stdbool.h>
#include "err_def.h"
#include "lsm6dsow.h"
#include "ist8310.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct
{
    lsm6dsow_vec3f_t stAccel_g;
    lsm6dsow_vec3f_t stGyro_dps;
    ist8310_vec3f_t  stMag_uT;
    float            fTemp_C;
    bool             bMagValid;
} imu9dof_sample_t;

/**
 * @brief  初始化 SPI + LSM6DSOW + IST8310 Sensor-Hub 路径。
 */
EN_ERR_STA_T imu9dof_init(void);

/**
 * @brief  始终读取加计/陀螺/温度；磁力计经单次 Hub 事务读取。
 */
EN_ERR_STA_T imu9dof_read(imu9dof_sample_t *pstSample);

/**
 * @brief  仅轮询加计/陀螺/温度（更快，不等待磁力计）。
 */
EN_ERR_STA_T imu9dof_read_imu6(imu9dof_sample_t *pstSample);

/**
 * @brief  读取 IMU INT1/DRDY 引脚是否有效。
 * @return true 数据就绪
 */
bool imu9dof_drdy_pin(void);

#ifdef __cplusplus
}
#endif

#endif /* __IMU9DOF_H__ */
