/*************************************************************************************************************
 * @file        bsp_uart_irt.c
 * @brief       GD60932 红外温感 UART1 板级驱动实现
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   硬件 UART1：P41(TX_LOG)/P39(RX_LOG)。
 *   交叉接线：MCU TX P41 → GD60932 RX（脚5 SDA）；MCU RX P39 ← GD60932 TX（脚8 SCL）。
 *   注意：与 app_debug 共用 UART1；连续使用红外传感器时应关闭 APP_DEBUG。
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
#include "hw_crg.h"
#include "hw_uart.h"
#include "utility.h"
#include "bsp_uart_irt.h"

#ifndef GD60932_UART_HANDLE
#define GD60932_UART_HANDLE                (UART1)
#endif

#ifndef GD60932_UART_CLK_GATE
#define GD60932_UART_CLK_GATE              (CRG_UART1_CLK_GATE)
#endif

#ifndef GD60932_UART_PID_TX
#define GD60932_UART_PID_TX                (PID_UART1_TXD)
#endif

#ifndef GD60932_UART_PID_RX
#define GD60932_UART_PID_RX                (PID_UART1_RXD)
#endif

static bool     s_bReady = false;
static uint32_t s_u32Baud = 9600;

/**
 * @brief  初始化 UART1 引脚与波特率（供 GD60932）。
 * @param  pstCfg  配置；NULL 默认 9600
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T bsp_uart_irt_init(const bsp_uart_irt_cfg_t *pstCfg)
{
    EN_ERR_STA_T enRet;
    stUartInit_t stInit;
    bsp_uart_irt_cfg_t stDef;

    if (NULL == pstCfg)
    {
        stDef.u32BaudRate = 9600;
        pstCfg = &stDef;
    }

    rom_hw_gpio_set_pin_pid(GPIO_PORT_UART1_TX, GPIO_PIN_UART1_TX, GD60932_UART_PID_TX);
    rom_hw_gpio_set_pin_pid(GPIO_PORT_UART1_RX, GPIO_PIN_UART1_RX, GD60932_UART_PID_RX);
    rom_hw_gpio_set_pin_pull_mode(GPIO_PORT_UART1_TX, GPIO_PIN_UART1_TX, GPIO_PULL_UP);
    rom_hw_gpio_set_pin_pull_mode(GPIO_PORT_UART1_RX, GPIO_PIN_UART1_RX, GPIO_PULL_UP);

    enRet = rom_hw_crg_enable_clk_gate(GD60932_UART_CLK_GATE);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    memset(&stInit, 0, sizeof(stInit));
    stInit.u32UartBaudRate = pstCfg->u32BaudRate;
    stInit.unUartCfg.u32UartCfg = UART_INIT_DEFAULT(UART_PARITY_NONE);

    enRet = rom_hw_uart_init(GD60932_UART_HANDLE, &stInit);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    (void)rom_hw_uart_clear_rxfifo(GD60932_UART_HANDLE);
    s_u32Baud = pstCfg->u32BaudRate;
    s_bReady = true;
    return ERR_STA_OK;
}

/**
 * @brief  反初始化 UART1。
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T bsp_uart_irt_deinit(void)
{
    s_bReady = false;
    return rom_hw_uart_deinit(GD60932_UART_HANDLE);
}

/**
 * @brief  运行时修改波特率。
 * @param  u32BaudRate  新波特率
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T bsp_uart_irt_set_baudrate(uint32_t u32BaudRate)
{
    EN_ERR_STA_T enRet;

    if (!s_bReady)
    {
        return ERR_STA_ERROR;
    }

    enRet = rom_hw_uart_set_baudrate(GD60932_UART_HANDLE, u32BaudRate);
    if (ERR_STA_OK == enRet)
    {
        s_u32Baud = u32BaudRate;
    }
    return enRet;
}

/**
 * @brief  清空 UART RX FIFO。
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T bsp_uart_irt_flush_rx(void)
{
    if (!s_bReady)
    {
        return ERR_STA_ERROR;
    }
    return rom_hw_uart_clear_rxfifo(GD60932_UART_HANDLE);
}

/**
 * @brief  发送单字节。
 * @param  u8Data  数据
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T bsp_uart_irt_write_byte(uint8_t u8Data)
{
    if (!s_bReady)
    {
        return ERR_STA_ERROR;
    }
    return rom_hw_uart_send_byte(GD60932_UART_HANDLE, u8Data);
}

/**
 * @brief  阻塞发送多字节。
 * @param  pu8Data  数据
 * @param  u16Len  长度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T bsp_uart_irt_write(const uint8_t *pu8Data, uint16_t u16Len)
{
    if ((!s_bReady) || (NULL == pu8Data) || (0u == u16Len))
    {
        return ERR_STA_ERROR;
    }
    return rom_hw_uart_transmit(GD60932_UART_HANDLE, (uint8_t *)pu8Data, u16Len);
}

/**
 * @brief  带超时读取，遇换行提前结束。
 * @param  pu8Buf  缓冲
 * @param  u16MaxLen  最大长度
 * @param  pu16Got  实际长度，可为 NULL
 * @param  u32TimeoutMs  超时毫秒
 * @return ERR_STA_OK 或 TIMEOUT
 */
EN_ERR_STA_T bsp_uart_irt_read(uint8_t *pu8Buf, uint16_t u16MaxLen, uint16_t *pu16Got, uint32_t u32TimeoutMs)
{
    uint32_t u32Elapsed = 0;
    uint16_t u16Cnt = 0;
    uint8_t u8Fifo = 0;
    uint8_t u8Byte = 0;

    if ((!s_bReady) || (NULL == pu8Buf) || (0u == u16MaxLen))
    {
        return ERR_STA_ERROR;
    }

    if (NULL != pu16Got)
    {
        *pu16Got = 0;
    }

    while ((u16Cnt < u16MaxLen) && (u32Elapsed <= u32TimeoutMs))
    {
        (void)rom_hw_uart_get_rxfifo_cnt(GD60932_UART_HANDLE, &u8Fifo);
        if (u8Fifo > 0u)
        {
            if (ERR_STA_OK == rom_hw_uart_get_byte(GD60932_UART_HANDLE, &u8Byte))
            {
                pu8Buf[u16Cnt++] = u8Byte;
                /* 行结束 */
                if (('\n' == u8Byte) || ('\r' == u8Byte))
                {
                    break;
                }
            }
        }
        rom_delay_ms(1);
        u32Elapsed++;
    }

    if (NULL != pu16Got)
    {
        *pu16Got = u16Cnt;
    }

    return (u16Cnt > 0u) ? ERR_STA_OK : ERR_STA_TIMEOUT;
}

/**
 * @brief  查询 UART 是否已初始化就绪。
 * @return true 已就绪
 */
bool bsp_uart_irt_is_ready(void)
{
    return s_bReady;
}
