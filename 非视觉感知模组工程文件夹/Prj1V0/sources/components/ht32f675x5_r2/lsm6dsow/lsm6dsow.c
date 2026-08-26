/*************************************************************************************************************
 * @file        lsm6dsow.c
 * @brief       LSM6DSOW SPI 驱动与 Sensor-Hub 主机实现
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   通过 bsp_spi 完成寄存器读写、六轴数据换算与 FIFO 操作。
 *   Sensor-Hub 侧实现 SLV0 读写，供 IST8310 磁力计使用。
 *
 ************************************************************************************************************/
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <string.h>

#include "RegHT32F675x5.h"
#include "err_def.h"
#include "boards.h"
#include "app_cfg.h"
#include "hw_gpio.h"
#include "utility.h"
#include "bsp_spi.h"
#include "lsm6dsow.h"

#define LSM6_SPI_READ                      (0x80u)
#define LSM6_SPI_AUTOINC                   (0x40u)

static uint8_t s_u8AccelFs = LSM6DSOW_FS_XL_4G;
static uint8_t s_u8GyroFs  = LSM6DSOW_FS_G_2000DPS;
static bool    s_bInit     = false;

/**
 * @brief  SPI 写寄存器底层封装。
 * @return ERR_STA_OK 成功
 */
static EN_ERR_STA_T lsm6_spi_write(uint8_t u8Reg, const uint8_t *pu8Data, uint16_t u16Len)
{
    uint8_t au8Buf[32];
    uint16_t i;

    if ((u16Len + 1u) > sizeof(au8Buf))
    {
        return ERR_STA_ERROR;
    }

    au8Buf[0] = (uint8_t)(u8Reg & 0x7Fu);
    for (i = 0; i < u16Len; i++)
    {
        au8Buf[i + 1u] = pu8Data[i];
    }
    return bsp_spi_write(au8Buf, (uint16_t)(u16Len + 1u));
}

/**
 * @brief  SPI 读寄存器底层封装（支持自增）。
 * @return ERR_STA_OK 成功
 */
static EN_ERR_STA_T lsm6_spi_read(uint8_t u8Reg, uint8_t *pu8Data, uint16_t u16Len)
{
    uint8_t au8Tx[32];
    uint8_t au8Rx[32];
    uint16_t i;
    EN_ERR_STA_T enRet;

    if ((u16Len + 1u) > sizeof(au8Tx))
    {
        return ERR_STA_ERROR;
    }

    memset(au8Tx, 0x00, sizeof(au8Tx));
    au8Tx[0] = (uint8_t)(LSM6_SPI_READ | (u8Reg & 0x7Fu));
    if (u16Len > 1u)
    {
        au8Tx[0] |= LSM6_SPI_AUTOINC;
    }

    enRet = bsp_spi_transfer(au8Tx, au8Rx, (uint16_t)(u16Len + 1u));
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    for (i = 0; i < u16Len; i++)
    {
        pu8Data[i] = au8Rx[i + 1u];
    }
    return ERR_STA_OK;
}

/**
 * @brief  SPI 读寄存器（可连续）。
 * @param  u8Reg  起始寄存器
 * @param  pu8Data  输出
 * @param  u16Len  长度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_read_reg(uint8_t u8Reg, uint8_t *pu8Data, uint16_t u16Len)
{
    return lsm6_spi_read(u8Reg, pu8Data, u16Len);
}

/**
 * @brief  SPI 写寄存器（可连续）。
 * @param  u8Reg  起始寄存器
 * @param  pu8Data  数据
 * @param  u16Len  长度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_write_reg(uint8_t u8Reg, const uint8_t *pu8Data, uint16_t u16Len)
{
    return lsm6_spi_write(u8Reg, pu8Data, u16Len);
}

/**
 * @brief  写单个 8 位寄存器。
 * @param  u8Reg  寄存器
 * @param  u8Val  值
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_write_reg8(uint8_t u8Reg, uint8_t u8Val)
{
    return lsm6_spi_write(u8Reg, &u8Val, 1);
}

/**
 * @brief  进入/退出 Sensor-Hub 寄存器页。
 * @param  bEnter  true 进入
 * @return ERR_STA_OK 成功
 */
static EN_ERR_STA_T lsm6_shub_bank(bool bEnter)
{
    return lsm6dsow_write_reg8(LSM6DSOW_FUNC_CFG_ACCESS,
                               bEnter ? (uint8_t)LSM6DSOW_SHUB_REG_ACCESS : 0x00u);
}

/**
 * @brief  轮询等待 Sensor-Hub 事务结束。
 * @param  u32TimeoutMs  超时毫秒
 * @return ERR_STA_OK 或 TIMEOUT
 */
static EN_ERR_STA_T lsm6_wait_shub_end(uint32_t u32TimeoutMs)
{
    uint8_t u8St = 0;
    uint32_t t;

    for (t = 0; t < u32TimeoutMs; t++)
    {
        if (ERR_STA_OK != lsm6_shub_bank(true))
        {
            return ERR_STA_ERROR;
        }
        if (ERR_STA_OK != lsm6_spi_read(LSM6DSOW_SHUB_STATUS_MASTER, &u8St, 1))
        {
            (void)lsm6_shub_bank(false);
            return ERR_STA_ERROR;
        }
        (void)lsm6_shub_bank(false);

        /* SENS_HUB_ENDOP bit0 */
        if (u8St & 0x01u)
        {
            return ERR_STA_OK;
        }
        rom_delay_ms(1);
    }
    return ERR_STA_TIMEOUT;
}

/**
 * @brief  触发芯片软件复位并等待完成。
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_soft_reset(void)
{
    EN_ERR_STA_T enRet;
    uint8_t u8Val;
    uint32_t i;

    enRet = lsm6dsow_write_reg8(LSM6DSOW_CTRL3_C, LSM6DSOW_CTRL3_SW_RESET);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    for (i = 0; i < 50u; i++)
    {
        rom_delay_ms(1);
        enRet = lsm6_spi_read(LSM6DSOW_CTRL3_C, &u8Val, 1);
        if ((ERR_STA_OK == enRet) && (0u == (u8Val & LSM6DSOW_CTRL3_SW_RESET)))
        {
            return ERR_STA_OK;
        }
    }
    return ERR_STA_TIMEOUT;
}

/**
 * @brief  读取 WHO_AM_I 寄存器。
 * @param  pu8Id  输出器件 ID
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_who_am_i(uint8_t *pu8Id)
{
    if (NULL == pu8Id)
    {
        return ERR_STA_ERROR;
    }
    return lsm6_spi_read(LSM6DSOW_WHO_AM_I, pu8Id, 1);
}

/**
 * @brief  按当前量程返回加计灵敏度 mg/LSB。
 * @return 灵敏度
 */
float lsm6dsow_accel_sensitivity_mg_per_lsb(void)
{
    switch (s_u8AccelFs)
    {
        case LSM6DSOW_FS_XL_2G:  return 0.061f;
        case LSM6DSOW_FS_XL_4G:  return 0.122f;
        case LSM6DSOW_FS_XL_8G:  return 0.244f;
        case LSM6DSOW_FS_XL_16G: return 0.488f;
        default:                 return 0.122f;
    }
}

/**
 * @brief  按当前量程返回陀螺灵敏度 mdps/LSB。
 * @return 灵敏度
 */
float lsm6dsow_gyro_sensitivity_mdps_per_lsb(void)
{
    switch (s_u8GyroFs)
    {
        case LSM6DSOW_FS_G_125DPS:  return 4.375f;
        case LSM6DSOW_FS_G_250DPS:  return 8.75f;
        case LSM6DSOW_FS_G_500DPS:  return 17.50f;
        case LSM6DSOW_FS_G_1000DPS: return 35.0f;
        case LSM6DSOW_FS_G_2000DPS: return 70.0f;
        default:                    return 70.0f;
    }
}

/**
 * @brief  软复位、校验 WHO_AM_I 并配置 ODR/量程/FIFO/INT1。
 * @param  pstCfg  配置；NULL 用默认
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_init(const lsm6dsow_cfg_t *pstCfg)
{
    EN_ERR_STA_T enRet;
    uint8_t u8Id = 0;
    uint8_t u8Ctrl1;
    uint8_t u8Ctrl2;
    lsm6dsow_cfg_t stDef;

    enRet = bsp_spi_init();
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    if (NULL == pstCfg)
    {
        stDef.u8AccelOdr   = LSM6DSOW_ODR_104Hz;
        stDef.u8AccelFs    = LSM6DSOW_FS_XL_4G;
        stDef.u8GyroOdr    = LSM6DSOW_ODR_104Hz;
        stDef.u8GyroFs     = LSM6DSOW_FS_G_2000DPS;
        stDef.bEnableFifo  = true;
        stDef.bDrdyOnInt1  = true;
        pstCfg = &stDef;
    }

    enRet = lsm6dsow_soft_reset();
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }
    rom_delay_ms(10);

    enRet = lsm6dsow_who_am_i(&u8Id);
    if ((ERR_STA_OK != enRet) || (LSM6DSOW_WHO_AM_I_VAL != u8Id))
    {
        return ERR_STA_ERROR;
    }

    /* BDU + 地址自动递增 */
    enRet = lsm6dsow_write_reg8(LSM6DSOW_CTRL3_C, (uint8_t)(LSM6DSOW_CTRL3_BDU | LSM6DSOW_CTRL3_IF_INC));
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    s_u8AccelFs = pstCfg->u8AccelFs;
    s_u8GyroFs  = pstCfg->u8GyroFs;

    u8Ctrl1 = (uint8_t)((pstCfg->u8AccelOdr << 4) | (pstCfg->u8AccelFs << 2));
    u8Ctrl2 = (uint8_t)((pstCfg->u8GyroOdr << 4) | (pstCfg->u8GyroFs << 2));

    enRet = lsm6dsow_write_reg8(LSM6DSOW_CTRL1_XL, u8Ctrl1);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }
    enRet = lsm6dsow_write_reg8(LSM6DSOW_CTRL2_G, u8Ctrl2);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    /* 使能时间戳 */
    enRet = lsm6dsow_write_reg8(LSM6DSOW_CTRL10_C, 0x20);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    if (pstCfg->bDrdyOnInt1)
    {
        enRet = lsm6dsow_write_reg8(LSM6DSOW_INT1_CTRL,
                                    (uint8_t)(LSM6DSOW_INT1_DRDY_XL | LSM6DSOW_INT1_DRDY_G));
        if (ERR_STA_OK != enRet)
        {
            return enRet;
        }
    }

    if (pstCfg->bEnableFifo)
    {
        enRet = lsm6dsow_fifo_enable_continuous(32);
        if (ERR_STA_OK != enRet)
        {
            return enRet;
        }
    }

    s_bInit = true;
    return ERR_STA_OK;
}

/**
 * @brief  读取 STATUS_REG。
 * @param  pu8Status  输出状态字节
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_get_status(uint8_t *pu8Status)
{
    return lsm6_spi_read(LSM6DSOW_STATUS_REG, pu8Status, 1);
}

/**
 * @brief  查询加计或陀螺数据就绪位。
 * @return true 有新数据
 */
bool lsm6dsow_data_ready(void)
{
    uint8_t u8St = 0;
    if (ERR_STA_OK != lsm6dsow_get_status(&u8St))
    {
        return false;
    }
    return (0u != (u8St & (LSM6DSOW_STATUS_XLDA | LSM6DSOW_STATUS_GDA)));
}

/**
 * @brief  读取 INT1/DRDY 引脚电平（假定高有效）。
 * @return true 有效
 */
bool lsm6dsow_int1_is_active(void)
{
    uint32_t u32Level = 0;
    if (ERR_STA_OK != rom_hw_gpio_get_pin_input_level(GPIO_PORT_IMU_DRDY, GPIO_PIN_IMU_DRDY, &u32Level))
    {
        return false;
    }
    return (0u != u32Level);
}

/**
 * @brief  从指定寄存器读 6 字节小端 XYZ。
 * @return ERR_STA_OK 成功
 */
static EN_ERR_STA_T lsm6_read_xyz(uint8_t u8Reg, lsm6dsow_raw3_t *pstRaw)
{
    uint8_t au8[6];
    EN_ERR_STA_T enRet;

    if (NULL == pstRaw)
    {
        return ERR_STA_ERROR;
    }

    enRet = lsm6_spi_read(u8Reg, au8, 6);
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
 * @brief  读取加计原始 LSB。
 * @param  pstRaw  输出 XYZ
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_read_accel_raw(lsm6dsow_raw3_t *pstRaw)
{
    return lsm6_read_xyz(LSM6DSOW_OUTX_L_A, pstRaw);
}

/**
 * @brief  读取陀螺原始 LSB。
 * @param  pstRaw  输出 XYZ
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_read_gyro_raw(lsm6dsow_raw3_t *pstRaw)
{
    return lsm6_read_xyz(LSM6DSOW_OUTX_L_G, pstRaw);
}

/**
 * @brief  读取温度原始码。
 * @param  ps16Temp  输出
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_read_temp_raw(int16_t *ps16Temp)
{
    uint8_t au8[2];
    EN_ERR_STA_T enRet;

    if (NULL == ps16Temp)
    {
        return ERR_STA_ERROR;
    }
    enRet = lsm6_spi_read(LSM6DSOW_OUT_TEMP_L, au8, 2);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }
    *ps16Temp = (int16_t)((uint16_t)au8[1] << 8 | au8[0]);
    return ERR_STA_OK;
}

/**
 * @brief  读取加计并换算为 g。
 * @param  pstG  输出
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_read_accel_g(lsm6dsow_vec3f_t *pstG)
{
    lsm6dsow_raw3_t stRaw;
    float fSens;
    EN_ERR_STA_T enRet;

    if (NULL == pstG)
    {
        return ERR_STA_ERROR;
    }
    enRet = lsm6dsow_read_accel_raw(&stRaw);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }
    fSens = lsm6dsow_accel_sensitivity_mg_per_lsb() * 0.001f;
    pstG->fX = (float)stRaw.s16X * fSens;
    pstG->fY = (float)stRaw.s16Y * fSens;
    pstG->fZ = (float)stRaw.s16Z * fSens;
    return ERR_STA_OK;
}

/**
 * @brief  读取陀螺并换算为 °/s。
 * @param  pstDps  输出
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_read_gyro_dps(lsm6dsow_vec3f_t *pstDps)
{
    lsm6dsow_raw3_t stRaw;
    float fSens;
    EN_ERR_STA_T enRet;

    if (NULL == pstDps)
    {
        return ERR_STA_ERROR;
    }
    enRet = lsm6dsow_read_gyro_raw(&stRaw);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }
    fSens = lsm6dsow_gyro_sensitivity_mdps_per_lsb() * 0.001f;
    pstDps->fX = (float)stRaw.s16X * fSens;
    pstDps->fY = (float)stRaw.s16Y * fSens;
    pstDps->fZ = (float)stRaw.s16Z * fSens;
    return ERR_STA_OK;
}

/**
 * @brief  读取 IMU 管芯温度（°C）。
 * @param  pfTempC  输出
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_read_temp_c(float *pfTempC)
{
    int16_t s16Raw;
    EN_ERR_STA_T enRet;

    if (NULL == pfTempC)
    {
        return ERR_STA_ERROR;
    }
    enRet = lsm6dsow_read_temp_raw(&s16Raw);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }
    /* LSM6DSO：T = 25 + raw/256 */
    *pfTempC = 25.0f + ((float)s16Raw / 256.0f);
    return ERR_STA_OK;
}

/**
 * @brief  配置唤醒检测并路由到 INT1。
 * @param  u8Ths  阈值
 * @param  u8Dur  持续时间
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_enable_wakeup(uint8_t u8Ths, uint8_t u8Dur)
{
    EN_ERR_STA_T enRet;
    enRet = lsm6dsow_write_reg8(LSM6DSOW_WAKE_UP_THS, (uint8_t)(u8Ths & 0x3Fu));
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }
    enRet = lsm6dsow_write_reg8(LSM6DSOW_WAKE_UP_DUR, u8Dur);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }
    enRet = lsm6dsow_write_reg8(LSM6DSOW_TAP_CFG0, 0x10); /* SLOPE_FDS 等可选项 */
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }
    return lsm6dsow_write_reg8(LSM6DSOW_MD1_CFG, 0x20); /* INT1_WU */
}

/**
 * @brief  配置自由落体检测并路由到 INT1。
 * @param  u8Ths  阈值
 * @param  u8Dur  持续时间
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_enable_freefall(uint8_t u8Ths, uint8_t u8Dur)
{
    EN_ERR_STA_T enRet;
    uint8_t u8Ff = (uint8_t)(((u8Dur & 0x07u) << 3) | (u8Ths & 0x07u));
    enRet = lsm6dsow_write_reg8(LSM6DSOW_FREE_FALL, u8Ff);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }
    return lsm6dsow_write_reg8(LSM6DSOW_MD1_CFG, 0x10); /* INT1_FF */
}

/**
 * @brief  配置 6D 定向检测并路由到 INT1。
 * @param  u8Ths  阈值字段
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_enable_6d(uint8_t u8Ths)
{
    EN_ERR_STA_T enRet;
    enRet = lsm6dsow_write_reg8(LSM6DSOW_TAP_THS_6D, (uint8_t)(u8Ths & 0x60u));
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }
    return lsm6dsow_write_reg8(LSM6DSOW_MD1_CFG, 0x04); /* INT1_6D */
}

/**
 * @brief  使能连续 FIFO 并设置水位。
 * @param  u16Watermark  水位
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_fifo_enable_continuous(uint16_t u16Watermark)
{
    EN_ERR_STA_T enRet;
    uint8_t u8Ctrl1 = (uint8_t)(u16Watermark & 0xFFu);
    uint8_t u8Ctrl2 = (uint8_t)((u16Watermark >> 8) & 0x01u);

    enRet = lsm6dsow_write_reg8(LSM6DSOW_FIFO_CTRL1, u8Ctrl1);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }
    enRet = lsm6dsow_write_reg8(LSM6DSOW_FIFO_CTRL2, u8Ctrl2);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }
    /* 将 XL+G 按与 CTRL 相同 ODR 批量写入 FIFO */
    enRet = lsm6dsow_write_reg8(LSM6DSOW_FIFO_CTRL3, 0x44); /* BDR_GY_104 | BDR_XL_104 示例 */
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }
    return lsm6dsow_write_reg8(LSM6DSOW_FIFO_CTRL4, LSM6DSOW_FIFO_CONT);
}

/**
 * @brief  将 FIFO 切回旁路模式。
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_fifo_disable(void)
{
    return lsm6dsow_write_reg8(LSM6DSOW_FIFO_CTRL4, LSM6DSOW_FIFO_BYPASS);
}

/**
 * @brief  读取 FIFO 未读字数。
 * @param  pu16Level  输出水位
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_fifo_get_level(uint16_t *pu16Level)
{
    uint8_t au8[2];
    EN_ERR_STA_T enRet;

    if (NULL == pu16Level)
    {
        return ERR_STA_ERROR;
    }
    enRet = lsm6_spi_read(LSM6DSOW_FIFO_STATUS1, au8, 2);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }
    *pu16Level = (uint16_t)((((uint16_t)au8[1] & 0x03u) << 8) | au8[0]);
    return ERR_STA_OK;
}

/**
 * @brief  顺序读出 FIFO 字（每字 7 字节）。
 * @param  pu8Buf  输出缓冲
 * @param  u16Words  字数
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_fifo_read_words(uint8_t *pu8Buf, uint16_t u16Words)
{
    /* 每个 FIFO 字通常为 TAG + 6 字节数据，经 FIFO_DATA_OUT 读取 */
    uint16_t i;
    EN_ERR_STA_T enRet;

    if ((NULL == pu8Buf) || (0u == u16Words))
    {
        return ERR_STA_ERROR;
    }

    for (i = 0; i < u16Words; i++)
    {
        enRet = lsm6_spi_read(LSM6DSOW_FIFO_DATA_OUT_TAG, &pu8Buf[i * 7u], 7);
        if (ERR_STA_OK != enRet)
        {
            return enRet;
        }
    }
    return ERR_STA_OK;
}

/**
 * @brief  打开/关闭 Sensor-Hub I2C Master。
 * @param  bEnable  true 使能
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_shub_enable(bool bEnable)
{
    EN_ERR_STA_T enRet;

    enRet = lsm6_shub_bank(true);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    if (bEnable)
    {
        /* 连续模式下清除 WRITE_ONCE；使能 Master */
        enRet = lsm6dsow_write_reg8(LSM6DSOW_SHUB_MASTER_CONFIG, (uint8_t)LSM6DSOW_MASTER_ON);
    }
    else
    {
        enRet = lsm6dsow_write_reg8(LSM6DSOW_SHUB_MASTER_CONFIG, 0x00);
    }

    (void)lsm6_shub_bank(false);
    return enRet;
}

/**
 * @brief  经 SLV0 向外设写寄存器。
 * @param  u8Addr7  7 位地址
 * @param  u8Reg  寄存器
 * @param  pu8Data  数据
 * @param  u8Len  长度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_shub_write(uint8_t u8Addr7, uint8_t u8Reg, const uint8_t *pu8Data, uint8_t u8Len)
{
    EN_ERR_STA_T enRet;
    uint8_t i;

    if ((NULL == pu8Data) || (0u == u8Len))
    {
        return ERR_STA_ERROR;
    }

    for (i = 0; i < u8Len; i++)
    {
        enRet = lsm6_shub_bank(true);
        if (ERR_STA_OK != enRet)
        {
            return enRet;
        }

        /* SLV0 写：addr<<1 | 0 */
        enRet = lsm6dsow_write_reg8(LSM6DSOW_SHUB_SLV0_ADD, (uint8_t)(u8Addr7 << 1));
        if (ERR_STA_OK != enRet)
        {
            (void)lsm6_shub_bank(false);
            return enRet;
        }
        enRet = lsm6dsow_write_reg8(LSM6DSOW_SHUB_SLV0_SUBADD, (uint8_t)(u8Reg + i));
        if (ERR_STA_OK != enRet)
        {
            (void)lsm6_shub_bank(false);
            return enRet;
        }
        enRet = lsm6dsow_write_reg8(LSM6DSOW_SHUB_DATAWRITE_SLV0, pu8Data[i]);
        if (ERR_STA_OK != enRet)
        {
            (void)lsm6_shub_bank(false);
            return enRet;
        }
        enRet = lsm6dsow_write_reg8(LSM6DSOW_SHUB_SLV0_CONFIG, 0x00); /* 写次数由 write_once 机制处理 */
        if (ERR_STA_OK != enRet)
        {
            (void)lsm6_shub_bank(false);
            return enRet;
        }
        enRet = lsm6dsow_write_reg8(LSM6DSOW_SHUB_MASTER_CONFIG,
                                    (uint8_t)(LSM6DSOW_MASTER_ON | LSM6DSOW_WRITE_ONCE));
        (void)lsm6_shub_bank(false);
        if (ERR_STA_OK != enRet)
        {
            return enRet;
        }

        enRet = lsm6_wait_shub_end(50);
        if (ERR_STA_OK != enRet)
        {
            return enRet;
        }
    }
    return ERR_STA_OK;
}

/**
 * @brief  经 SLV0 读外设到 SENSOR_HUB 缓冲。
 * @param  u8Addr7  7 位地址
 * @param  u8Reg  寄存器
 * @param  pu8Data  输出
 * @param  u8Len  ≤7
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_shub_read(uint8_t u8Addr7, uint8_t u8Reg, uint8_t *pu8Data, uint8_t u8Len)
{
    EN_ERR_STA_T enRet;
    uint8_t u8Cfg;

    if ((NULL == pu8Data) || (0u == u8Len) || (u8Len > 7u))
    {
        return ERR_STA_ERROR;
    }

    enRet = lsm6_shub_bank(true);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    enRet = lsm6dsow_write_reg8(LSM6DSOW_SHUB_SLV0_ADD, (uint8_t)((u8Addr7 << 1) | LSM6DSOW_SLV_READ));
    if (ERR_STA_OK != enRet)
    {
        (void)lsm6_shub_bank(false);
        return enRet;
    }
    enRet = lsm6dsow_write_reg8(LSM6DSOW_SHUB_SLV0_SUBADD, u8Reg);
    if (ERR_STA_OK != enRet)
    {
        (void)lsm6_shub_bank(false);
        return enRet;
    }

    u8Cfg = (uint8_t)(u8Len & 0x07u); /* NumOp[2:0] */
    enRet = lsm6dsow_write_reg8(LSM6DSOW_SHUB_SLV0_CONFIG, u8Cfg);
    if (ERR_STA_OK != enRet)
    {
        (void)lsm6_shub_bank(false);
        return enRet;
    }

    enRet = lsm6dsow_write_reg8(LSM6DSOW_SHUB_MASTER_CONFIG, (uint8_t)LSM6DSOW_MASTER_ON);
    (void)lsm6_shub_bank(false);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    /* 在 104 Hz 下等待一个加计 ODR 周期即可完成 Hub 事务 */
    rom_delay_ms(15);

    enRet = lsm6_wait_shub_end(50);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    return lsm6dsow_shub_read_sensor_hub(pu8Data, u8Len);
}

/**
 * @brief  直接读 SENSOR_HUB_1 起缓冲。
 * @param  pu8Data  输出
 * @param  u8Len  长度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_shub_read_sensor_hub(uint8_t *pu8Data, uint8_t u8Len)
{
    EN_ERR_STA_T enRet;

    if ((NULL == pu8Data) || (0u == u8Len) || (u8Len > 18u))
    {
        return ERR_STA_ERROR;
    }

    enRet = lsm6_shub_bank(true);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }
    enRet = lsm6_spi_read(LSM6DSOW_SHUB_SENSOR_HUB_1, pu8Data, u8Len);
    (void)lsm6_shub_bank(false);
    return enRet;
}
