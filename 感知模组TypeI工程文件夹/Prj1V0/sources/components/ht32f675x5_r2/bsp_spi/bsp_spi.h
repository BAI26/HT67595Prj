/*************************************************************************************************************
 * @file        bsp_spi.h
 * @brief       HT32F67595 板级 SPI0 主机封装接口
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   为 LSM6DSOW 等外设提供 SPI0 主机收发与片选控制。
 *   上层驱动通过本接口完成读写，无需直接操作硬件 SPI 寄存器。
 *
 ************************************************************************************************************/
#ifndef __BSP_SPI_H__
#define __BSP_SPI_H__

#include <stdint.h>
#include "err_def.h"

#ifdef __cplusplus
extern "C" {
#endif

/**
 * @brief  初始化 SPI0 主机、软件 CS 与 DRDY 输入。
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T bsp_spi_init(void);
/**
 * @brief  关闭 SPI 时钟并将引脚置高阻。
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T bsp_spi_deinit(void);
/**
 * @brief  片选内完成全双工传输。
 * @param  pu8Tx  发送，可为 NULL
 * @param  pu8Rx  接收，可为 NULL
 * @param  u16Len  字节数
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T bsp_spi_transfer(uint8_t *pu8Tx, uint8_t *pu8Rx, uint16_t u16Len);
/**
 * @brief  仅发送（忽略 MISO）。
 * @param  pu8Tx  发送缓冲
 * @param  u16Len  长度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T bsp_spi_write(const uint8_t *pu8Tx, uint16_t u16Len);
/**
 * @brief  仅接收（MOSI 发 0）。
 * @param  pu8Rx  接收缓冲
 * @param  u16Len  长度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T bsp_spi_read(uint8_t *pu8Rx, uint16_t u16Len);

/**
 * @brief  拉低软件片选 CS。
 */
void bsp_spi_cs_low(void);
/**
 * @brief  拉高软件片选 CS。
 */
void bsp_spi_cs_high(void);

#ifdef __cplusplus
}
#endif

#endif /* __BSP_SPI_H__ */
