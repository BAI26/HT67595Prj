/*************************************************************************************************************
 * @file    app_cfg.h
 * @version V1.1
 * @date    2025-08-20
 * @brief   ble_peripheral app configuration.
 *************************************************************************************************************
 * @attention
 *
 * Firmware Disclaimer Information
 *
 * 1. The customer hereby acknowledges and agrees that the program technical documentation, including the
 *    code, which is supplied by Holtek Semiconductor Inc., (hereinafter referred to as "HOLTEK") is the
 *    proprietary and confidential intellectual property of HOLTEK, and is protected by copyright law and
 *    other intellectual property laws.
 *
 * 2. The customer hereby acknowledges and agrees that the program technical documentation, including the
 *    code, is confidential information belonging to HOLTEK, and must not be disclosed to any third parties
 *    other than HOLTEK and the customer.
 *
 * 3. The program technical documentation, including the code, is provided "as is" and for customer reference
 *    only. After delivery by HOLTEK, the customer shall use the program technical documentation, including
 *    the code, at their own risk. HOLTEK disclaims any expressed, implied or statutory warranties, including
 *    the warranties of merchantability, satisfactory quality and fitness for a particular purpose.
 *
 * <h2><center>Copyright (C) Holtek Semiconductor Inc. All rights reserved</center></h2>
 ************************************************************************************************************/


#ifndef __APP_CFG_H__
#define __APP_CFG_H__


// HT32F675x5 Memory Map
#include "..\..\..\..\..\sources\mem_cfg\ht32f675x5_mem_cfg_r2.h"


//=====================================================================================================================
// MEMOARY MAP DEFINE
//=====================================================================================================================
//=============================================================================
// RAM(0x2000_2000 ~ 0x2003_FFFF)
//=============================================================================
// CP RAM Code & Data In SDK
#define RAM_CP_ADDR                        (RAM_2ND_BOOT_ADDR) // 0x2000_3000
#define RAM_CP_SIZE_MAX                    (80 * KBYTE)

// CP STACK and HEAP in SDK
#define RAM_CP_STACK_SIZE_MAX              (4 * KBYTE) // @ref startup_ARMCM0Plus.s
#define RAM_CP_HEAP_SIZE_MAX               (0 * KBYTE) // @ref startup_ARMCM0Plus.s
#define RAM_CP_STACK_HEAP_SIZE_MAX         (RAM_CP_STACK_SIZE_MAX + RAM_CP_HEAP_SIZE_MAX)
#define RAM_CP_STACK_HEAP_ADDR             (RAM_CP_ADDR + RAM_CP_SIZE_MAX - RAM_CP_STACK_HEAP_SIZE_MAX)

// MP NEW_VECTOR In SDK
#define RAM_MP_VECTOR_ADDR                 (RAM_CP_ADDR + RAM_CP_SIZE_MAX)
#define RAM_MP_VECTOR_SIZE_MAX             (512)

// MP RAM Code In SDK
#define RAM_MP_CODE_ADDR                   (RAM_MP_VECTOR_ADDR + RAM_MP_VECTOR_SIZE_MAX)
#define RAM_MP_CODE_SIZE_MAX               (32 * KBYTE - RAM_MP_VECTOR_SIZE_MAX)

// MP RAM Data In SDK
#define RAM_MP_DATA_ADDR                   (RAM_MP_CODE_ADDR + RAM_MP_CODE_SIZE_MAX)
#define RAM_MP_DATA_SIZE_MAX               (32 * KBYTE)

// MP STACK and HEAP in SDK
#define RAM_MP_STACK_SIZE_MAX              (4 * KBYTE) // @ref startup_ARMCM33.s
#define RAM_MP_HEAP_SIZE_MAX               (8 * KBYTE) // @ref startup_ARMCM33.s (TFLM/C++ needs heap)
#define RAM_MP_STACK_HEAP_SIZE_MAX         (RAM_MP_STACK_SIZE_MAX + RAM_MP_HEAP_SIZE_MAX)
#define RAM_MP_STACK_HEAP_ADDR             (RAM_MP_DATA_ADDR + RAM_MP_DATA_SIZE_MAX - RAM_MP_STACK_HEAP_SIZE_MAX)

#define RAM_APP_SIZE_KBYTE_MAX             (((RAM_MP_DATA_ADDR + RAM_MP_DATA_SIZE_MAX) - RAM_BASE_ADDR) / KBYTE)

//=============================================================================
// Flash(0x1000_0000 ~ 0x1007_FFFF)
//=============================================================================
// APP Code
#define FLASH_MP_APP_CODE_ADDR             (FLASH_BASE_ADDR + FLASH_BOOT_RESERVED_SIZE_MAX)
#define FLASH_MP_APP_CODE_ADDR_OFFSET      (FLASH_MP_APP_CODE_ADDR - FLASH_BASE_ADDR)
#define FLASH_MP_APP_CODE_SIZE_MAX         (120 * KBYTE)


//=====================================================================================================================
// PERIPHERAL DEFINE
//=====================================================================================================================
//=============================================================================
// GPIO
//=============================================================================
// mp app_debug  -> TX_LOG (P41) hardware UART1
#define GPIO_PORT_MP_APP_DEBUG_TX          (GPIO_PORT_UART1_TX)
#define GPIO_PIN_MP_APP_DEBUG_TX           (GPIO_PIN_UART1_TX)

// cp app_debug  -> TX_LOG (P41) hardware UART1
#define GPIO_PORT_CP_APP_DEBUG_TX          (GPIO_PORT_UART1_TX)
#define GPIO_PIN_CP_APP_DEBUG_TX           (GPIO_PIN_UART1_TX)

// cp mlog: board only has one LOG UART, keep disabled or share UART1 TX
#define GPIO_PORT_CP_MLOG_TX               (GPIO_PORT_UART1_TX)
#define GPIO_PIN_CP_MLOG_TX                (GPIO_PIN_UART1_TX)

//=============================================================================
// UART (hardware)
//=============================================================================
// LOG: P41=TX, P39=RX  -> UART1
#define UART_HANDLE_MP_APP_DEBUG           (UART1)
#define UART_BPS_MP_APP_DEBUG              (460800)

#define UART_HANDLE_CP_APP_DEBUG           (UART1)
#define UART_BPS_CP_APP_DEBUG              (460800)

#define UART_HANDLE_CP_MLOG                (UART1)
#define UART_BPS_CP_MLOG                   (460800)

// User LOG UART aliases
#define UART_HANDLE_LOG                    (UART1)
#define UART_BPS_LOG                       (460800)
#define GPIO_PORT_LOG_TX                   (GPIO_PORT_UART1_TX)  // P41
#define GPIO_PIN_LOG_TX                    (GPIO_PIN_UART1_TX)
#define GPIO_PORT_LOG_RX                   (GPIO_PORT_UART1_RX)  // P39
#define GPIO_PIN_LOG_RX                    (GPIO_PIN_UART1_RX)

//=============================================================================
// SPI0 (hardware)  P42=SCLK, P43=MOSI(SDI_RX), P44=MISO(SDO_TX), P00=CS
//=============================================================================
#define SPI_MASTER_HANDLE                  (SPI0)
#define GPIO_MASTER_PORT_SPI_CLK           (GPIO_PORT_SPI0_CLK)
#define GPIO_MASTER_PIN_SPI_CLK            (GPIO_PIN_SPI0_CLK)
#define GPIO_MASTER_PORT_SPI_SI            (GPIO_PORT_SPI0_MOSI)
#define GPIO_MASTER_PIN_SPI_SI             (GPIO_PIN_SPI0_MOSI)
#define GPIO_MASTER_PORT_SPI_SO            (GPIO_PORT_SPI0_MISO)
#define GPIO_MASTER_PIN_SPI_SO             (GPIO_PIN_SPI0_MISO)
#define GPIO_MASTER_PORT_SPI_CS            (GPIO_PORT_SPI0_CS)
#define GPIO_MASTER_PIN_SPI_CS             (GPIO_PIN_SPI0_CS)

/* Enable onboard 9-axis (LSM6DSOW SPI + IST8310 via sensor-hub) */
#define IMU9DOF_ENABLED                    (1)

/* GD60932 UART IR temp on TX_LOG/RX_LOG (UART1 P41/P39) */
#define GD60932_ENABLED                    (1)
#define GD60932_DEFAULT_SPEED_FS           (0) /* 0=MS 9600/300ms, 1=FS 115200/20ms */

/* MP main: poll sensors + ADC and print via UART1 (PC serial @ same baud as IR) */
#define SENSOR_SDK_TEST_ENABLED            (1)
#define SENSOR_SDK_TEST_PERIOD_MS          (1000)

/* BLE proprietary sensor GATT + MP->CP IPC */
#define BLE_SENSOR_SDK_ENABLED             (1)

//=============================================================================
// BLE
//=============================================================================
#define BLE_ADV_INTERVAL_MS                MSEC_TO_UNITS(100, UNIT_0_625_MS)
#define BLE_ADV_NAME_STRING                ("HT32F675x5_BLE_PERIPHERAL")
#define BLE_DEVICE_MAC                     {0x55, 0x40, 0x4D, 0x03, 0x03, 0xBA}


//=====================================================================================================================
// APP Version
//=====================================================================================================================
#define APP_VERSION                        (0x0020) // V0.2


//=====================================================================================================================
// APP Configuration
//=====================================================================================================================
//=============================================================================
// DEFAULT CFG
//=============================================================================
#define RC_HCLK_TUNE_DEFAUT_VAL            (0x56)
#define RC_LCLK_TUNE_DEFAUT_VAL            (0xA9)

//=============================================================================
// SYSTEM CLOCK
//=============================================================================
#define DCXO_HCLK_STABLE_TIME_2500US       (2500)
#define DCXO_HCLK_STABLE_TIME_2000US       (2000)
#define DCXO_HCLK_STABLE_TIME              (DCXO_HCLK_STABLE_TIME_2500US)
#define SYSTEM_CLOCK_PLL64M_ENABLED        (0)

//=============================================================================
// LOG CFG
//=============================================================================
#if GD60932_ENABLED
    /* UART1 occupied by GD60932 — disable app_debug on same pins */
    #define APP_DEBUG_ENABLED              (0)
    #define MLOG_DEBUG_ENABLED             (0)
#elif defined(__MAIN_PROCESSOR)
    #define APP_DEBUG_ENABLED              (1)
    #define MLOG_DEBUG_ENABLED             (0)
#else
    #define APP_DEBUG_ENABLED              (1)
    #define MLOG_DEBUG_ENABLED             (0)
#endif

#if APP_DEBUG_ENABLED
    #define PRINTF(fmt, args...)           printf(fmt, ##args)
#else
    #define PRINTF(fmt, args...)
#endif


//=====================================================================================================================
// SYSTEM CONTROL COMMON REGISTER DEFINE
//=====================================================================================================================
#define SYS_CTRL_COM_REG_MP_CTRL_CP        (3)


//=====================================================================================================================
//Wakeup LUT Index
//=====================================================================================================================
#define LUT_INDEX_CP_LLC                   (15)


#endif /* __APP_CFG_H__ */


