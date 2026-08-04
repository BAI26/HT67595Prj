/*************************************************************************************************************
 * @file        ist8310.c
 * @brief       IST8310 经 LSM6DSOW Sensor-Hub（MAG_SDA / MAG_SCL）驱动实现
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   初始化：软复位、校验 WAI、配置 PDCNTL/平均次数/温度补偿。
 *   测量：单次触发后轮询 STAT1.DRDY，再读出并换算为 μT。
 *
 ************************************************************************************************************/
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>

#include "err_def.h"
#include "utility.h"
#include "lsm6dsow.h"
#include "ist8310_regs.h"
#include "ist8310.h"

static bool s_bInit = false;

/**
 * @brief  经 Sensor-Hub 读取 WAI。
 * @param  pu8Id  输出 ID
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ist8310_who_am_i(uint8_t *pu8Id)
{
    EN_ERR_STA_T enRet;
    uint8_t u8Val = 0;

    if (NULL == pu8Id)
    {
        return ERR_STA_ERROR;
    }

    enRet = lsm6dsow_shub_read(IST8310_I2C_ADDR_7BIT, IST8310_REG_WIA, &u8Val, 1);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }
    *pu8Id = u8Val;
    return ERR_STA_OK;
}

/**
 * @brief  对 IST8310 执行软复位。
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ist8310_soft_reset(void)
{
    uint8_t u8Val = IST8310_CNTL2_SRST;
    EN_ERR_STA_T enRet;

    enRet = lsm6dsow_shub_write(IST8310_I2C_ADDR_7BIT, IST8310_REG_CNTL2, &u8Val, 1);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }
    rom_delay_ms(20);
    return ERR_STA_OK;
}

/**
 * @brief  软复位、校验 WAI 并配置平均/温补。
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ist8310_init(void)
{
    EN_ERR_STA_T enRet;
    uint8_t u8Id = 0;
    uint8_t u8Val;

    enRet = ist8310_soft_reset();
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    enRet = ist8310_who_am_i(&u8Id);
    if ((ERR_STA_OK != enRet) || (IST8310_WAI_VALUE != u8Id))
    {
        return ERR_STA_ERROR;
    }

    /* 数据手册：PDCNTL=0xC0 以获得较好性能 */
    u8Val = IST8310_PDCNTL_DEFAULT;
    enRet = lsm6dsow_shub_write(IST8310_I2C_ADDR_7BIT, IST8310_REG_PDCNTL, &u8Val, 1);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    /* 16 倍平均以降噪（约 6 ms 间隔） */
    u8Val = IST8310_AVGCNTL_16X;
    enRet = lsm6dsow_shub_write(IST8310_I2C_ADDR_7BIT, IST8310_REG_AVGCNTL, &u8Val, 1);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    /* 使能温度补偿（0x00） */
    u8Val = 0x00;
    enRet = lsm6dsow_shub_write(IST8310_I2C_ADDR_7BIT, IST8310_REG_TCCNTL, &u8Val, 1);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    s_bInit = true;
    return ERR_STA_OK;
}

/**
 * @brief  触发单次测量。
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ist8310_trigger_single(void)
{
    uint8_t u8Val = IST8310_CNTL1_SINGLE;
    return lsm6dsow_shub_write(IST8310_I2C_ADDR_7BIT, IST8310_REG_CNTL1, &u8Val, 1);
}

/**
 * @brief  读取磁力计原始 XYZ。
 * @param  pstRaw  输出
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ist8310_read_raw(ist8310_raw3_t *pstRaw)
{
    uint8_t au8[6];
    EN_ERR_STA_T enRet;

    if (NULL == pstRaw)
    {
        return ERR_STA_ERROR;
    }

    enRet = lsm6dsow_shub_read(IST8310_I2C_ADDR_7BIT, IST8310_REG_DATAXL, au8, 6);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    pstRaw->s16X = (int16_t)((uint16_t)au8[1] << 8 | au8[0]);
    pstRaw->s16Y = (int16_t)((uint16_t)au8[3] << 8 | au8[2]);
    pstRaw->s16Z = (int16_t)((uint16_t)au8[5] << 8 | au8[4]);
    return ERR_STA_OK;
}

/**
 * @brief  读取并换算为 μT。
 * @param  pstUt  输出
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ist8310_read_uT(ist8310_vec3f_t *pstUt)
{
    ist8310_raw3_t stRaw;
    EN_ERR_STA_T enRet;

    if (NULL == pstUt)
    {
        return ERR_STA_ERROR;
    }

    enRet = ist8310_read_raw(&stRaw);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    pstUt->fX_uT = (float)stRaw.s16X * IST8310_UT_PER_LSB;
    pstUt->fY_uT = (float)stRaw.s16Y * IST8310_UT_PER_LSB;
    pstUt->fZ_uT = (float)stRaw.s16Z * IST8310_UT_PER_LSB;
    return ERR_STA_OK;
}

/**
 * @brief  触发、等待 DRDY 后读取 μT。
 * @param  pstUt  输出
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ist8310_measure(ist8310_vec3f_t *pstUt)
{
    EN_ERR_STA_T enRet;
    uint8_t u8Stat = 0;
    uint32_t i;

    if (!s_bInit)
    {
        enRet = ist8310_init();
        if (ERR_STA_OK != enRet)
        {
            return enRet;
        }
    }

    enRet = ist8310_trigger_single();
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    /* 16 倍平均 => 最少约 6 ms；轮询 STAT1.DRDY */
    for (i = 0; i < 20u; i++)
    {
        rom_delay_ms(1);
        enRet = lsm6dsow_shub_read(IST8310_I2C_ADDR_7BIT, IST8310_REG_STAT1, &u8Stat, 1);
        if (ERR_STA_OK != enRet)
        {
            return enRet;
        }
        if (u8Stat & IST8310_STAT1_DRDY)
        {
            return ist8310_read_uT(pstUt);
        }
    }

    /* 超时后固定等待再读一次兜底 */
    rom_delay_ms(5);
    return ist8310_read_uT(pstUt);
}

/**
 * @brief  自检：对比 STR 前后磁场和是否近 0。
 * @param  pbPass  输出是否通过
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T ist8310_self_test(bool *pbPass)
{
    ist8310_vec3f_t stA;
    ist8310_vec3f_t stB;
    uint8_t u8Val;
    EN_ERR_STA_T enRet;

    if (NULL == pbPass)
    {
        return ERR_STA_ERROR;
    }
    *pbPass = false;

    /* 自检期间关闭温度补偿（数据手册） */
    u8Val = 0x01;
    enRet = lsm6dsow_shub_write(IST8310_I2C_ADDR_7BIT, IST8310_REG_TCCNTL, &u8Val, 1);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    enRet = ist8310_measure(&stA);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    u8Val = IST8310_STR_SELFTEST;
    enRet = lsm6dsow_shub_write(IST8310_I2C_ADDR_7BIT, IST8310_REG_STR, &u8Val, 1);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    enRet = ist8310_measure(&stB);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    u8Val = 0x00;
    (void)lsm6dsow_shub_write(IST8310_I2C_ADDR_7BIT, IST8310_REG_STR, &u8Val, 1);
    (void)lsm6dsow_shub_write(IST8310_I2C_ADDR_7BIT, IST8310_REG_TCCNTL, &u8Val, 1);

    /* 极性反转：幅值应大致匹配（和接近 0） */
    {
        float fDx = (stA.fX_uT + stB.fX_uT);
        float fDy = (stA.fY_uT + stB.fY_uT);
        float fDz = (stA.fZ_uT + stB.fZ_uT);
        if ((fDx < 50.0f) && (fDx > -50.0f) &&
            (fDy < 50.0f) && (fDy > -50.0f) &&
            (fDz < 50.0f) && (fDz > -50.0f))
        {
            *pbPass = true;
        }
    }
    return ERR_STA_OK;
}
