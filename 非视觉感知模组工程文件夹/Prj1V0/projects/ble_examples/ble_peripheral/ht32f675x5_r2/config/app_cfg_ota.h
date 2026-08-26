/*************************************************************************************************************
 * @file    app_cfg_ota.h
 * @version V2.0
 * @date    2026-08-25
 * @brief   ble_peripheral OTA + AI app configuration.
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

#ifndef __APP_CFG_OTA_H__
#define __APP_CFG_OTA_H__

// HT32F675x5 Memory Map
#include "..\..\..\..\..\sources\mem_cfg\ht32f675x5_mem_cfg_r2.h"

//=====================================================================================================================
// OTA + AI CONFIGURATION
//=====================================================================================================================

//=============================================================================
// OTA Flash Layout (Dual Bank A/B)
//=============================================================================
#define OTA_ENABLED                         (1)    /* 启用 OTA 功能 */
#define OTA_MODEL_UPDATE_ENABLED            (1)    /* 启用模型 OTA */

/* APP Bank A (当前运行区) */
#define FLASH_APP_A_ADDR                   (FLASH_BASE_ADDR + FLASH_BOOT_RESERVED_SIZE_MAX)  // 0x10002000
#define FLASH_APP_A_SIZE                   (150 * KBYTE)  // 150KB

/* APP Bank B (OTA 目标区) */
#define FLASH_APP_B_ADDR                   (FLASH_APP_A_ADDR + FLASH_APP_A_SIZE)  // 0x10027800
#define FLASH_APP_B_SIZE                   (150 * KBYTE)  // 150KB

/* Model Storage Slots */
#define FLASH_MODEL_SLOT1_ADDR             (FLASH_APP_B_ADDR + FLASH_APP_B_SIZE)  // 0x1004D000
#define FLASH_MODEL_SLOT1_SIZE             (40 * KBYTE)  // 40KB

#define FLASH_MODEL_SLOT2_ADDR             (FLASH_MODEL_SLOT1_ADDR + FLASH_MODEL_SLOT1_SIZE)  // 0x10057000
#define FLASH_MODEL_SLOT2_SIZE             (40 * KBYTE)  // 40KB

/* Bootloader Info */
#define FLASH_BOOT_INFO_ADDR               (FLASH_MODEL_SLOT2_ADDR + FLASH_MODEL_SLOT2_SIZE)  // 0x10061000
#define FLASH_BOOT_INFO_SIZE              (4 * KBYTE)  // 4KB

//=============================================================================
// RAM(0x2000_2000 ~ 0x2003_FFFF)
//=============================================================================
#define RAM_CP_ADDR                        (RAM_2ND_BOOT_ADDR)
#define RAM_CP_SIZE_MAX                    (80 * KBYTE)
#define RAM_CP_STACK_SIZE_MAX              (4 * KBYTE)
#define RAM_CP_HEAP_SIZE_MAX               (0 * KBYTE)
#define RAM_CP_STACK_HEAP_SIZE_MAX         (RAM_CP_STACK_SIZE_MAX + RAM_CP_HEAP_SIZE_MAX)
#define RAM_CP_STACK_HEAP_ADDR             (RAM_CP_ADDR + RAM_CP_SIZE_MAX - RAM_CP_STACK_HEAP_SIZE_MAX)

#define RAM_MP_VECTOR_ADDR                 (RAM_CP_ADDR + RAM_CP_SIZE_MAX)
#define RAM_MP_VECTOR_SIZE_MAX             (512)

#define RAM_MP_CODE_ADDR                   (RAM_MP_VECTOR_ADDR + RAM_MP_VECTOR_SIZE_MAX)
#define RAM_MP_CODE_SIZE_MAX               (32 * KBYTE - RAM_MP_VECTOR_SIZE_MAX)

#define RAM_MP_DATA_ADDR                   (RAM_MP_CODE_ADDR + RAM_MP_CODE_SIZE_MAX)
#define RAM_MP_DATA_SIZE_MAX               (32 * KBYTE)

#define RAM_MP_STACK_SIZE_MAX              (4 * KBYTE)
#define RAM_MP_HEAP_SIZE_MAX               (24 * KBYTE)  /* 增大堆区用于 TFLM */
#define RAM_MP_STACK_HEAP_SIZE_MAX         (RAM_MP_STACK_SIZE_MAX + RAM_MP_HEAP_SIZE_MAX)
#define RAM_MP_STACK_HEAP_ADDR             (RAM_MP_DATA_ADDR + RAM_MP_DATA_SIZE_MAX - RAM_MP_STACK_HEAP_SIZE_MAX)

#define RAM_APP_SIZE_KBYTE_MAX             (((RAM_MP_DATA_ADDR + RAM_MP_DATA_SIZE_MAX) - RAM_BASE_ADDR) / KBYTE)

//=============================================================================
// OTA Settings
//=============================================================================
#define OTA_RECV_BUFFER_SIZE               (256)
#define OTA_CHUNK_SIZE                    (OTA_RECV_BUFFER_SIZE - 16)
#define OTA_DEFAULT_TARGET_BANK            (1)   /* 默认升级 Bank B */

//=============================================================================
// BLE
//=============================================================================
#define BLE_ADV_INTERVAL_MS                MSEC_TO_UNITS(100, UNIT_0_625_MS)
#define BLE_ADV_NAME_STRING                ("HT32F675x5_OTA_AI")
#define BLE_DEVICE_MAC                     {0x55, 0x40, 0x4D, 0x03, 0x03, 0xBA}

//=============================================================================
// APP Version
//=============================================================================
#define APP_VERSION                        (0x0030) // V3.0
#define APP_VERSION_STRING                 "3.0.0"

//=============================================================================
// LOG
//=============================================================================
#if defined(__MAIN_PROCESSOR)
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

//=============================================================================
// IMU / Sensor
//=============================================================================
#define GPIO_PORT_IMU_DRDY               (GPIOA)
#define GPIO_PIN_IMU_DRDY                (GPIO_PIN_27)
#define GPIO_MASTER_PORT_SPI_CS          (GPIOA)
#define GPIO_MASTER_PIN_SPI_CS            (GPIO_PIN_24)
#define GPIO_MASTER_PORT_SPI_CLK         (GPIOA)
#define GPIO_MASTER_PIN_SPI_CLK          (GPIO_PIN_27)
#define GPIO_MASTER_PORT_SPI_SI          (GPIOB)
#define GPIO_MASTER_PIN_SPI_SI           (GPIO_PIN_21)
#define GPIO_MASTER_PORT_SPI_SO          (GPIOB)
#define GPIO_MASTER_PIN_SPI_SO           (GPIO_PIN_17)
#define SPI_MASTER_HANDLE                 (SPI0)

//=============================================================================
// Fall Detection Model Config
//=============================================================================
#define FALL_DETECT_ENABLED              (1)   /* 启用跌倒检测 */
#define FALL_DETECT_THRESHOLD            (0.6f)  /* 跌倒阈值 */
#define FALL_DETECT_WINDOW_SIZE         (128)   /* 窗口大小 */
#define FALL_MODEL_WINDOW_SIZE           (128)
#define FALL_MODEL_INPUT_FEATURES        (6)
#define FALL_MODEL_DATA_SIZE            (36328)  /* 模型大小 */
#define MODEL_INFERENCE_INTERVAL_MS      (10)    /* 推理间隔 100Hz */

//=============================================================================
// DATA LOGGER (Training Data Collection)
//=============================================================================
#define DATA_LOGGER_ENABLED              (0)   /* 数据采集模式 */
#define DATA_LOGGER_TYPE                 (0)   /* 0=ADL, 1=FALL */
#define DATA_LOGGER_SAMPLE_COUNT         (512)
#define DATA_LOGGER_UART_BAUD            (460800)

//=============================================================================
// UART
//=============================================================================
#define UART_HANDLE_MP_APP_DEBUG           (UART0)
#define UART_BPS_MP_APP_DEBUG            (460800)
#define UART_HANDLE_CP_APP_DEBUG          (UART1)
#define UART_BPS_CP_APP_DEBUG            (460800)
#define UART_HANDLE_CP_MLOG               (UART0)
#define UART_BPS_CP_MLOG                 (460800)

//=============================================================================
// SYSTEM CLOCK
//=============================================================================
#define DCXO_HCLK_STABLE_TIME_2500US       (2500)
#define DCXO_HCLK_STABLE_TIME_2000US       (2000)
#define DCXO_HCLK_STABLE_TIME              (DCXO_HCLK_STABLE_TIME_2500US)
#define SYSTEM_CLOCK_PLL64M_ENABLED        (0)

//=============================================================================
// SYSTEM CONTROL COMMON REGISTER DEFINE
//=============================================================================
#define SYS_CTRL_COM_REG_MP_CTRL_CP        (3)

//=============================================================================
//Wakeup LUT Index
//=============================================================================
#define LUT_INDEX_CP_LLC                   (15)

//=============================================================================
// Default Config
//=============================================================================
#define RC_HCLK_TUNE_DEFAUT_VAL            (0x56)
#define RC_LCLK_TUNE_DEFAUT_VAL            (0xA9)


#endif /* __APP_CFG_OTA_H__ */
