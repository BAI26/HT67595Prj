/*************************************************************************************************************
 * @file        imu9dof.c
 * @brief       九轴 SDK：LSM6DSOW（SPI）+ IST8310（Sensor-Hub）实现
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   默认配置加计/陀螺 104 Hz、±4 g / ±2000 dps，并开启 FIFO 与 INT1 DRDY。
 *   初始化时打开 I2C Master 以访问 IST8310。
 *
 ************************************************************************************************************/
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>

#include "err_def.h"
#include "bsp_spi.h"
#include "lsm6dsow.h"
#include "ist8310.h"
#include "imu9dof.h"

/**
 * @brief  初始化 SPI + LSM6DSOW + IST8310 Sensor-Hub 路径。
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T imu9dof_init(void)
{
    EN_ERR_STA_T enRet;
    lsm6dsow_cfg_t stCfg;

    stCfg.u8AccelOdr  = LSM6DSOW_ODR_104Hz;
    stCfg.u8AccelFs   = LSM6DSOW_FS_XL_4G;
    stCfg.u8GyroOdr   = LSM6DSOW_ODR_104Hz;
    stCfg.u8GyroFs    = LSM6DSOW_FS_G_2000DPS;
    stCfg.bEnableFifo = true;
    stCfg.bDrdyOnInt1 = true;

    enRet = lsm6dsow_init(&stCfg);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    /* 使能 I2C Master，通过 MAG_* 与 IST8310 通信 */
    enRet = lsm6dsow_shub_enable(true);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    enRet = ist8310_init();
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    return ERR_STA_OK;
}

/**
 * @brief  仅轮询加计/陀螺/温度（不等待磁力计）。
 * @param  pstSample  输出六轴采样
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T imu9dof_read_imu6(imu9dof_sample_t *pstSample)
{
    EN_ERR_STA_T enRet;

    if (NULL == pstSample)
    {
        return ERR_STA_ERROR;
    }

    enRet = lsm6dsow_read_accel_g(&pstSample->stAccel_g);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }
    enRet = lsm6dsow_read_gyro_dps(&pstSample->stGyro_dps);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }
    enRet = lsm6dsow_read_temp_c(&pstSample->fTemp_C);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    pstSample->bMagValid = false;
    pstSample->stMag_uT.fX_uT = 0.0f;
    pstSample->stMag_uT.fY_uT = 0.0f;
    pstSample->stMag_uT.fZ_uT = 0.0f;
    return ERR_STA_OK;
}

/**
 * @brief  读取加计/陀螺/温度，并经 Hub 单次读磁力计。
 * @param  pstSample  输出九轴采样
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T imu9dof_read(imu9dof_sample_t *pstSample)
{
    EN_ERR_STA_T enRet;

    enRet = imu9dof_read_imu6(pstSample);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    enRet = ist8310_measure(&pstSample->stMag_uT);
    pstSample->bMagValid = (ERR_STA_OK == enRet);
    return enRet;
}

/**
 * @brief  读取 IMU INT1/DRDY 引脚是否有效。
 * @return true 数据就绪
 */
bool imu9dof_drdy_pin(void)
{
    return lsm6dsow_int1_is_active();
}
