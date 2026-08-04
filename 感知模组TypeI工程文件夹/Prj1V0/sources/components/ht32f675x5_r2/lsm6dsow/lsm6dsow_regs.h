/*************************************************************************************************************
 * @file        lsm6dsow_regs.h
 * @brief       LSM6DSOW 寄存器映射（兼容 LSM6DSO 系列）
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   定义 WHO_AM_I、CTRL/FIFO/中断及 Sensor-Hub Bank 相关寄存器。
 *   并提供 ODR / 量程等辅助宏，供驱动层配置使用。
 *
 ************************************************************************************************************/
#ifndef __LSM6DSOW_REGS_H__
#define __LSM6DSOW_REGS_H__

#define LSM6DSOW_WHO_AM_I_VAL              (0x6C)

#define LSM6DSOW_FUNC_CFG_ACCESS           (0x01)
#define LSM6DSOW_PIN_CTRL                  (0x02)
#define LSM6DSOW_FIFO_CTRL1                (0x07)
#define LSM6DSOW_FIFO_CTRL2                (0x08)
#define LSM6DSOW_FIFO_CTRL3                (0x09)
#define LSM6DSOW_FIFO_CTRL4                (0x0A)
#define LSM6DSOW_COUNTER_BDR_REG1          (0x0B)
#define LSM6DSOW_COUNTER_BDR_REG2          (0x0C)
#define LSM6DSOW_INT1_CTRL                 (0x0D)
#define LSM6DSOW_INT2_CTRL                 (0x0E)
#define LSM6DSOW_WHO_AM_I                  (0x0F)
#define LSM6DSOW_CTRL1_XL                  (0x10)
#define LSM6DSOW_CTRL2_G                   (0x11)
#define LSM6DSOW_CTRL3_C                   (0x12)
#define LSM6DSOW_CTRL4_C                   (0x13)
#define LSM6DSOW_CTRL5_C                   (0x14)
#define LSM6DSOW_CTRL6_C                   (0x15)
#define LSM6DSOW_CTRL7_G                   (0x16)
#define LSM6DSOW_CTRL8_XL                  (0x17)
#define LSM6DSOW_CTRL9_XL                  (0x18)
#define LSM6DSOW_CTRL10_C                  (0x19)
#define LSM6DSOW_ALL_INT_SRC               (0x1A)
#define LSM6DSOW_WAKE_UP_SRC               (0x1B)
#define LSM6DSOW_TAP_SRC                   (0x1C)
#define LSM6DSOW_D6D_SRC                   (0x1D)
#define LSM6DSOW_STATUS_REG                (0x1E)
#define LSM6DSOW_OUT_TEMP_L                (0x20)
#define LSM6DSOW_OUT_TEMP_H                (0x21)
#define LSM6DSOW_OUTX_L_G                  (0x22)
#define LSM6DSOW_OUTX_H_G                  (0x23)
#define LSM6DSOW_OUTY_L_G                  (0x24)
#define LSM6DSOW_OUTY_H_G                  (0x25)
#define LSM6DSOW_OUTZ_L_G                  (0x26)
#define LSM6DSOW_OUTZ_H_G                  (0x27)
#define LSM6DSOW_OUTX_L_A                  (0x28)
#define LSM6DSOW_OUTX_H_A                  (0x29)
#define LSM6DSOW_OUTY_L_A                  (0x2A)
#define LSM6DSOW_OUTY_H_A                  (0x2B)
#define LSM6DSOW_OUTZ_L_A                  (0x2C)
#define LSM6DSOW_OUTZ_H_A                  (0x2D)
#define LSM6DSOW_EMB_FUNC_STATUS_MAINPAGE  (0x35)
#define LSM6DSOW_STATUS_MASTER_MAINPAGE    (0x39)
#define LSM6DSOW_FIFO_STATUS1              (0x3A)
#define LSM6DSOW_FIFO_STATUS2              (0x3B)
#define LSM6DSOW_TIMESTAMP0                (0x40)
#define LSM6DSOW_TAP_CFG0                  (0x56)
#define LSM6DSOW_TAP_CFG1                  (0x57)
#define LSM6DSOW_TAP_CFG2                  (0x58)
#define LSM6DSOW_TAP_THS_6D                (0x59)
#define LSM6DSOW_INT_DUR2                  (0x5A)
#define LSM6DSOW_WAKE_UP_THS               (0x5B)
#define LSM6DSOW_WAKE_UP_DUR               (0x5C)
#define LSM6DSOW_FREE_FALL                 (0x5D)
#define LSM6DSOW_MD1_CFG                   (0x5E)
#define LSM6DSOW_MD2_CFG                   (0x5F)
#define LSM6DSOW_I3C_BUS_AVB               (0x62)
#define LSM6DSOW_INTERNAL_FREQ_FINE        (0x63)
#define LSM6DSOW_FIFO_DATA_OUT_TAG         (0x78)
#define LSM6DSOW_FIFO_DATA_OUT_X_L         (0x79)

/* FUNC_CFG_ACCESS */
#define LSM6DSOW_FUNC_CFG_EN               (1u << 7)
#define LSM6DSOW_SHUB_REG_ACCESS           (1u << 6)

/* CTRL3_C */
#define LSM6DSOW_CTRL3_BDU                 (1u << 6)
#define LSM6DSOW_CTRL3_IF_INC              (1u << 2)
#define LSM6DSOW_CTRL3_SW_RESET            (1u << 0)

/* STATUS_REG */
#define LSM6DSOW_STATUS_TDA                (1u << 2)
#define LSM6DSOW_STATUS_GDA                (1u << 1)
#define LSM6DSOW_STATUS_XLDA               (1u << 0)

/* INT1_CTRL */
#define LSM6DSOW_INT1_DRDY_G               (1u << 1)
#define LSM6DSOW_INT1_DRDY_XL              (1u << 0)
#define LSM6DSOW_INT1_FIFO_TH              (1u << 3)
#define LSM6DSOW_INT1_FIFO_OVR             (1u << 5)
#define LSM6DSOW_INT1_FIFO_FULL            (1u << 4)

/* Sensor-Hub Bank */
#define LSM6DSOW_SHUB_SENSOR_HUB_1         (0x02)
#define LSM6DSOW_SHUB_MASTER_CONFIG        (0x14)
#define LSM6DSOW_SHUB_SLV0_ADD             (0x15)
#define LSM6DSOW_SHUB_SLV0_SUBADD          (0x16)
#define LSM6DSOW_SHUB_SLV0_CONFIG          (0x17)
#define LSM6DSOW_SHUB_DATAWRITE_SLV0       (0x21)
#define LSM6DSOW_SHUB_STATUS_MASTER        (0x22)

#define LSM6DSOW_MASTER_ON                 (1u << 2)
#define LSM6DSOW_WRITE_ONCE                (1u << 3)
#define LSM6DSOW_START_CONFIG              (1u << 4)
#define LSM6DSOW_PASS_THROUGH_MODE         (1u << 5)
#define LSM6DSOW_RST_MASTER_REGS           (1u << 7)
#define LSM6DSOW_SHUB_PU_EN                (1u << 3) /* MASTER_CONFIG bit3 为 WRITE_ONCE；部分文档把 SHUB_PU 也标为 bit3，使用 0x08 时需谨慎 */

/* SLV0_ADD：bit0 = 读/写（1=读） */
#define LSM6DSOW_SLV_READ                  (1u << 0)

/* FIFO_CTRL4 模式 */
#define LSM6DSOW_FIFO_BYPASS               (0x00)
#define LSM6DSOW_FIFO_MODE                 (0x01)
#define LSM6DSOW_FIFO_CONT                 (0x06)

/* ODR / FS 辅助宏（CTRL1_XL / CTRL2_G 高半字节为 ODR） */
#define LSM6DSOW_ODR_OFF                   (0x00)
#define LSM6DSOW_ODR_12Hz5                 (0x01)
#define LSM6DSOW_ODR_26Hz                  (0x02)
#define LSM6DSOW_ODR_52Hz                  (0x03)
#define LSM6DSOW_ODR_104Hz                 (0x04)
#define LSM6DSOW_ODR_208Hz                 (0x05)
#define LSM6DSOW_ODR_416Hz                 (0x06)
#define LSM6DSOW_ODR_833Hz                 (0x07)
#define LSM6DSOW_ODR_1k66Hz                (0x08)
#define LSM6DSOW_ODR_3k33Hz                (0x09)
#define LSM6DSOW_ODR_6k66Hz                (0x0A)

#define LSM6DSOW_FS_XL_2G                  (0x00)
#define LSM6DSOW_FS_XL_16G                 (0x01)
#define LSM6DSOW_FS_XL_4G                  (0x02)
#define LSM6DSOW_FS_XL_8G                  (0x03)

#define LSM6DSOW_FS_G_250DPS               (0x00)
#define LSM6DSOW_FS_G_125DPS               (0x01)
#define LSM6DSOW_FS_G_500DPS               (0x02)
#define LSM6DSOW_FS_G_1000DPS              (0x04)
#define LSM6DSOW_FS_G_2000DPS              (0x06)

#endif /* __LSM6DSOW_REGS_H__ */
