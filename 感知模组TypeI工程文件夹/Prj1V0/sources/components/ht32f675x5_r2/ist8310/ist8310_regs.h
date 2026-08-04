/*************************************************************************************************************
 * @file        ist8310_regs.h
 * @brief       iSentek IST8310 寄存器映射定义
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   定义 I2C 地址、WHO_AM_I、控制/数据寄存器及常用配置宏。
 *   CAD 浮空时 7 位地址为 0x0E；灵敏度约 0.303 μT/LSB。
 *
 ************************************************************************************************************/
#ifndef __IST8310_REGS_H__
#define __IST8310_REGS_H__

/* CAD 浮空 => 7 位地址 0x0E */
#define IST8310_I2C_ADDR_7BIT              (0x0E)
#define IST8310_WAI_VALUE                  (0x10)

#define IST8310_REG_WIA                    (0x00)
#define IST8310_REG_INFO                   (0x01)
#define IST8310_REG_STAT1                  (0x02)
#define IST8310_REG_DATAXL                 (0x03)
#define IST8310_REG_DATAXH                 (0x04)
#define IST8310_REG_DATAYL                 (0x05)
#define IST8310_REG_DATAYH                 (0x06)
#define IST8310_REG_DATAZL                 (0x07)
#define IST8310_REG_DATAZH                 (0x08)
#define IST8310_REG_STAT2                  (0x09)
#define IST8310_REG_CNTL1                  (0x0A)
#define IST8310_REG_CNTL2                  (0x0B)
#define IST8310_REG_STR                    (0x0C)
#define IST8310_REG_TEMPL                  (0x1C)
#define IST8310_REG_TEMPH                  (0x1D)
#define IST8310_REG_TCCNTL                 (0x40)
#define IST8310_REG_AVGCNTL                (0x41)
#define IST8310_REG_PDCNTL                 (0x42)

#define IST8310_STAT1_DRDY                 (1u << 0)
#define IST8310_STAT1_DOR                  (1u << 1)

#define IST8310_CNTL1_STANDBY              (0x00)
#define IST8310_CNTL1_SINGLE               (0x01)

#define IST8310_CNTL2_SRST                 (1u << 0)
#define IST8310_CNTL2_DRP                  (1u << 2)
#define IST8310_CNTL2_DREN                 (1u << 3)

#define IST8310_STR_SELFTEST               (0x40)

#define IST8310_PDCNTL_DEFAULT             (0xC0)
#define IST8310_AVGCNTL_16X                (0x24)

/* 3.3 LSB/μT => 约 0.303 μT/LSB */
#define IST8310_UT_PER_LSB                 (0.3030303f)

#endif /* __IST8310_REGS_H__ */
