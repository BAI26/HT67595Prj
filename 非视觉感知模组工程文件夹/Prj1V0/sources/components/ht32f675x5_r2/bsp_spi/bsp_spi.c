/*************************************************************************************************************
 * @file        bsp_spi.c
 * @brief       SPI0 主机板级驱动实现
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   引脚：P42=SCLK，P43=MOSI，P44=MISO，P00=CS（GPIO 软件片选）。
 *   默认 Mode0、约 1 MHz，满足 LSM6 SPI ≤ 10 MHz 的安全速率。
 *   同时将 IMU_DRDY 配置为上拉输入。
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
#include "hw_spi.h"
#include "patch_hw_spi.h"
#include "bsp_spi.h"

static bool s_bInit = false;

/**
 * @brief  拉低软件片选 CS。
 */
void bsp_spi_cs_low(void)
{
    rom_hw_gpio_set_pin_output_level(GPIO_MASTER_PORT_SPI_CS, GPIO_MASTER_PIN_SPI_CS, GPIO_LEVEL_LO);
}

/**
 * @brief  拉高软件片选 CS。
 */
void bsp_spi_cs_high(void)
{
    rom_hw_gpio_set_pin_output_level(GPIO_MASTER_PORT_SPI_CS, GPIO_MASTER_PIN_SPI_CS, GPIO_LEVEL_HI);
}

/**
 * @brief  初始化 SPI0 主机、软件 CS 与 DRDY 输入。
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T bsp_spi_init(void)
{
    EN_ERR_STA_T enRet;
    stSpiInit_t stSpiInit;

    if (s_bInit)
    {
        return ERR_STA_OK;
    }

    rom_hw_gpio_set_pin_pid(GPIO_MASTER_PORT_SPI_CLK, GPIO_MASTER_PIN_SPI_CLK, PID_SPI0_CLK);
    rom_hw_gpio_set_pin_pid(GPIO_MASTER_PORT_SPI_SI,  GPIO_MASTER_PIN_SPI_SI,  PID_SPI0_MOSI);
    rom_hw_gpio_set_pin_pid(GPIO_MASTER_PORT_SPI_SO,  GPIO_MASTER_PIN_SPI_SO,  PID_SPI0_MISO);

    rom_hw_gpio_set_pin_input_output(GPIO_MASTER_PORT_SPI_CS, GPIO_MASTER_PIN_SPI_CS, GPIO_MODE_OUTPUT);
    bsp_spi_cs_high();

    /* INT1 / DRDY 配置为输入 */
    rom_hw_gpio_set_pin_input_output(GPIO_PORT_IMU_DRDY, GPIO_PIN_IMU_DRDY, GPIO_MODE_INPUT);
    rom_hw_gpio_set_pin_pull_mode(GPIO_PORT_IMU_DRDY, GPIO_PIN_IMU_DRDY, GPIO_PULL_UP);

    rom_hw_crg_enable_clk_gate(CRG_SPI0_CLK_GATE);

    memset(&stSpiInit, 0, sizeof(stSpiInit));
    stSpiInit.u32ClkDiv = EN_SPI_CLK_DIV_16M_1M; /* LSM6 SPI ≤ 10 MHz；1 MHz 安全 */
    stSpiInit.unSpiCfg.stSpiCfg.u8Enable   = 1;
    stSpiInit.unSpiCfg.stSpiCfg.u8Cpha     = SPI_CPHA_0_0; /* Mode 0 */
    stSpiInit.unSpiCfg.stSpiCfg.u8WorkMode = SPI_MODE_MASTER;
    stSpiInit.unSpiCfg.stSpiCfg.u8RxTimeOut = 0xFF;
    stSpiInit.unSpiCfg.stSpiCfg.u8TrxMode  = SPI_MODE_FULL_TXRX;
    stSpiInit.unSpiCfg.stSpiCfg.u8DataBits = SPI_DATA_BITS_8;
    stSpiInit.unSpiCfg.stSpiCfg.u8ByteWait = SPI_WORD_SPACE_DIS;
    stSpiInit.unSpiCfg.stSpiCfg.u8CsMode   = SPI_SW_CS;
    stSpiInit.unSpiCfg.stSpiCfg.u8CsSwCtrl = SPI_SW_SET_CS_HIGH;

    enRet = rom_hw_spi_init(SPI_MASTER_HANDLE, &stSpiInit);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    rom_hw_spi_enable(SPI_MASTER_HANDLE);
    s_bInit = true;
    return ERR_STA_OK;
}

/**
 * @brief  关闭 SPI 时钟并将引脚置高阻。
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T bsp_spi_deinit(void)
{
    if (!s_bInit)
    {
        return ERR_STA_OK;
    }

    s_bInit = false;
    bsp_spi_cs_high();
    rom_hw_gpio_set_pin_input_output(GPIO_MASTER_PORT_SPI_CLK, GPIO_MASTER_PIN_SPI_CLK, GPIO_MODE_IMPEDANCE);
    rom_hw_gpio_set_pin_input_output(GPIO_MASTER_PORT_SPI_SI,  GPIO_MASTER_PIN_SPI_SI,  GPIO_MODE_IMPEDANCE);
    rom_hw_gpio_set_pin_input_output(GPIO_MASTER_PORT_SPI_SO,  GPIO_MASTER_PIN_SPI_SO,  GPIO_MODE_IMPEDANCE);
    return rom_hw_crg_disable_clk_gate(CRG_SPI0_CLK_GATE);
}

/**
 * @brief  片选内完成全双工传输。
 * @param  pu8Tx  发送，可为 NULL
 * @param  pu8Rx  接收，可为 NULL
 * @param  u16Len  字节数
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T bsp_spi_transfer(uint8_t *pu8Tx, uint8_t *pu8Rx, uint16_t u16Len)
{
    EN_ERR_STA_T enRet;

    if (!s_bInit)
    {
        enRet = bsp_spi_init();
        if (ERR_STA_OK != enRet)
        {
            return enRet;
        }
    }

    bsp_spi_cs_low();
    enRet = patch_hw_spi_transmit_bytes(SPI_MASTER_HANDLE, pu8Tx, pu8Rx, u16Len);
    bsp_spi_cs_high();
    return enRet;
}

/**
 * @brief  仅发送（忽略 MISO）。
 * @param  pu8Tx  发送缓冲
 * @param  u16Len  长度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T bsp_spi_write(const uint8_t *pu8Tx, uint16_t u16Len)
{
    return bsp_spi_transfer((uint8_t *)pu8Tx, NULL, u16Len);
}

/**
 * @brief  仅接收（MOSI 发 0）。
 * @param  pu8Rx  接收缓冲
 * @param  u16Len  长度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T bsp_spi_read(uint8_t *pu8Rx, uint16_t u16Len)
{
    return bsp_spi_transfer(NULL, pu8Rx, u16Len);
}
