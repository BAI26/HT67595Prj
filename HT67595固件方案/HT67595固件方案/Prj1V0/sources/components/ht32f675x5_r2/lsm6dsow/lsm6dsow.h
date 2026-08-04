/*************************************************************************************************************
 * @file        lsm6dsow.h
 * @brief       LSM6DSOW 六轴 IMU 驱动接口（SPI）及 I2C Sensor-Hub 主机 API
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   提供加计/陀螺/温度读写、FIFO、唤醒/自由落体/6D 等嵌入功能配置。
 *   Sensor-Hub（Mode 2）用于通过 MAG_SDA/MAG_SCL 访问 IST8310。
 *
 ************************************************************************************************************/
#ifndef __LSM6DSOW_H__
#define __LSM6DSOW_H__

#include <stdint.h>
#include <stdbool.h>
#include "err_def.h"
#include "lsm6dsow_regs.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct
{
    int16_t s16X;
    int16_t s16Y;
    int16_t s16Z;
} lsm6dsow_raw3_t;

typedef struct
{
    float fX;
    float fY;
    float fZ;
} lsm6dsow_vec3f_t;

typedef struct
{
    uint8_t u8AccelOdr;   /* LSM6DSOW_ODR_* */
    uint8_t u8AccelFs;    /* LSM6DSOW_FS_XL_* */
    uint8_t u8GyroOdr;    /* LSM6DSOW_ODR_* */
    uint8_t u8GyroFs;     /* LSM6DSOW_FS_G_* */
    bool    bEnableFifo;
    bool    bDrdyOnInt1;
} lsm6dsow_cfg_t;

/**
 * @brief  软复位、校验 WHO_AM_I 并配置 ODR/量程/FIFO/INT1。
 * @param  pstCfg  配置；NULL 用默认
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_init(const lsm6dsow_cfg_t *pstCfg);
/**
 * @brief  触发芯片软件复位并等待完成。
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_soft_reset(void);
/**
 * @brief  读取 WHO_AM_I 寄存器。
 * @param  pu8Id  输出器件 ID
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_who_am_i(uint8_t *pu8Id);

/**
 * @brief  SPI 读寄存器（可连续）。
 * @param  u8Reg  起始寄存器
 * @param  pu8Data  输出
 * @param  u16Len  长度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_read_reg(uint8_t u8Reg, uint8_t *pu8Data, uint16_t u16Len);
/**
 * @brief  SPI 写寄存器（可连续）。
 * @param  u8Reg  起始寄存器
 * @param  pu8Data  数据
 * @param  u16Len  长度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_write_reg(uint8_t u8Reg, const uint8_t *pu8Data, uint16_t u16Len);
/**
 * @brief  写单个 8 位寄存器。
 * @param  u8Reg  寄存器
 * @param  u8Val  值
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_write_reg8(uint8_t u8Reg, uint8_t u8Val);

/**
 * @brief  读取加计原始 LSB。
 * @param  pstRaw  输出 XYZ
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_read_accel_raw(lsm6dsow_raw3_t *pstRaw);
/**
 * @brief  读取陀螺原始 LSB。
 * @param  pstRaw  输出 XYZ
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_read_gyro_raw(lsm6dsow_raw3_t *pstRaw);
/**
 * @brief  读取温度原始码。
 * @param  ps16Temp  输出
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_read_temp_raw(int16_t *ps16Temp);
/**
 * @brief  读取加计并换算为 g。
 * @param  pstG  输出
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_read_accel_g(lsm6dsow_vec3f_t *pstG);
/**
 * @brief  读取陀螺并换算为 °/s。
 * @param  pstDps  输出
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_read_gyro_dps(lsm6dsow_vec3f_t *pstDps);
/**
 * @brief  读取 IMU 管芯温度（°C）。
 * @param  pfTempC  输出
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_read_temp_c(float *pfTempC);

/**
 * @brief  读取 STATUS_REG。
 * @param  pu8Status  输出状态字节
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_get_status(uint8_t *pu8Status);
/**
 * @brief  查询加计或陀螺数据就绪位。
 * @return true 有新数据
 */
bool         lsm6dsow_data_ready(void);
/**
 * @brief  读取 INT1/DRDY 引脚电平（假定高有效）。
 * @return true 有效
 */
bool         lsm6dsow_int1_is_active(void); /* DRDY 引脚电平（假定高有效） */

/**
 * @brief  配置唤醒检测并路由到 INT1。
 * @param  u8Ths  阈值
 * @param  u8Dur  持续时间
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_enable_wakeup(uint8_t u8Ths, uint8_t u8Dur);
/**
 * @brief  配置自由落体检测并路由到 INT1。
 * @param  u8Ths  阈值
 * @param  u8Dur  持续时间
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_enable_freefall(uint8_t u8Ths, uint8_t u8Dur);
/**
 * @brief  配置 6D 定向检测并路由到 INT1。
 * @param  u8Ths  阈值字段
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_enable_6d(uint8_t u8Ths);

/**
 * @brief  使能连续 FIFO 并设置水位。
 * @param  u16Watermark  水位
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_fifo_enable_continuous(uint16_t u16Watermark);
/**
 * @brief  将 FIFO 切回旁路模式。
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_fifo_disable(void);
/**
 * @brief  读取 FIFO 未读字数。
 * @param  pu16Level  输出水位
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_fifo_get_level(uint16_t *pu16Level);
/**
 * @brief  顺序读出 FIFO 字（每字 7 字节）。
 * @param  pu8Buf  输出缓冲
 * @param  u16Words  字数
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_fifo_read_words(uint8_t *pu8Buf, uint16_t u16Words);

/* Sensor-Hub（Mode 2）— 通过 MAG_SDA/MAG_SCL 访问 IST8310 */
/**
 * @brief  打开/关闭 Sensor-Hub I2C Master。
 * @param  bEnable  true 使能
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_shub_enable(bool bEnable);
/**
 * @brief  经 SLV0 向外设写寄存器。
 * @param  u8Addr7  7 位地址
 * @param  u8Reg  寄存器
 * @param  pu8Data  数据
 * @param  u8Len  长度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_shub_write(uint8_t u8Addr7, uint8_t u8Reg, const uint8_t *pu8Data, uint8_t u8Len);
/**
 * @brief  经 SLV0 读外设到 SENSOR_HUB 缓冲。
 * @param  u8Addr7  7 位地址
 * @param  u8Reg  寄存器
 * @param  pu8Data  输出
 * @param  u8Len  ≤7
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_shub_read(uint8_t u8Addr7, uint8_t u8Reg, uint8_t *pu8Data, uint8_t u8Len);
/**
 * @brief  直接读 SENSOR_HUB_1 起缓冲。
 * @param  pu8Data  输出
 * @param  u8Len  长度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T lsm6dsow_shub_read_sensor_hub(uint8_t *pu8Data, uint8_t u8Len);

/**
 * @brief  按当前量程返回加计灵敏度 mg/LSB。
 * @return 灵敏度
 */
float lsm6dsow_accel_sensitivity_mg_per_lsb(void);
/**
 * @brief  按当前量程返回陀螺灵敏度 mdps/LSB。
 * @return 灵敏度
 */
float lsm6dsow_gyro_sensitivity_mdps_per_lsb(void);

#ifdef __cplusplus
}
#endif

#endif /* __LSM6DSOW_H__ */
