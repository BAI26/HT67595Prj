/*************************************************************************************************************
 * @file        bsp_uart_irt.h
 * @brief       GD60932 所用 UART1 板级封装接口
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   在 TX_LOG/RX_LOG（P41/P39）上提供 UART1 初始化、收发与清 FIFO。
 *   供红外温度传感器 GD60932 通信使用。
 *
 ************************************************************************************************************/
#ifndef __BSP_UART_IRT_H__
#define __BSP_UART_IRT_H__

#include <stdint.h>
#include <stdbool.h>
#include "err_def.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct
{
    uint32_t u32BaudRate;   /* 典型 9600 或 115200 */
} bsp_uart_irt_cfg_t;

/**
 * @brief  初始化 UART1 引脚与波特率（供 GD60932）。
 * @param  pstCfg  配置；NULL 默认 9600
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T bsp_uart_irt_init(const bsp_uart_irt_cfg_t *pstCfg);
/**
 * @brief  反初始化 UART1。
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T bsp_uart_irt_deinit(void);
/**
 * @brief  运行时修改波特率。
 * @param  u32BaudRate  新波特率
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T bsp_uart_irt_set_baudrate(uint32_t u32BaudRate);
/**
 * @brief  阻塞发送多字节。
 * @param  pu8Data  数据
 * @param  u16Len  长度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T bsp_uart_irt_write(const uint8_t *pu8Data, uint16_t u16Len);
/**
 * @brief  发送单字节。
 * @param  u8Data  数据
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T bsp_uart_irt_write_byte(uint8_t u8Data);
/**
 * @brief  带超时读取，遇换行提前结束。
 * @param  pu8Buf  缓冲
 * @param  u16MaxLen  最大长度
 * @param  pu16Got  实际长度，可为 NULL
 * @param  u32TimeoutMs  超时毫秒
 * @return ERR_STA_OK 或 TIMEOUT
 */
EN_ERR_STA_T bsp_uart_irt_read(uint8_t *pu8Buf, uint16_t u16MaxLen, uint16_t *pu16Got, uint32_t u32TimeoutMs);
/**
 * @brief  清空 UART RX FIFO。
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T bsp_uart_irt_flush_rx(void);
/**
 * @brief  查询 UART 是否已初始化就绪。
 * @return true 已就绪
 */
bool         bsp_uart_irt_is_ready(void);

#ifdef __cplusplus
}
#endif

#endif /* __BSP_UART_IRT_H__ */
