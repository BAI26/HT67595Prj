/*************************************************************************************************************
 * @file        ht32f67595_user.h
 * @brief       HT32F67595-LGA28 自定义板级引脚映射
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   按用户原理图定义非视觉感知模组的 GPIO / UART / SPI / ADC 引脚宏。
 *   焊盘编号规则：Pn => GPIO_PIN_N(n)。
 *   本文件由 boards.h 在 HT32F67595_USER 宏下包含。
 *
 ************************************************************************************************************/

#ifndef __HT32F67595_USER_H__
#define __HT32F67595_USER_H__

/*
 * 原理图摘要：
 *   UART LOG：P41=TX，P39=RX
 *   SPI：     P42=SCLK，P43=SDI_RX(MOSI)，P44=SDO_TX(MISO)，P00=CS
 *   GPIO：    P29 / P32 / P49 / P53
 *   NTC/BAT： P24=NTC_GND，P27=DRDY，P21=NTC_ADC，P09=BAT_ADC
 */

//=============================================================================
// UART（LOG 脚使用硬件 UART1）
//=============================================================================
/* UART0：本板未使用（保留宏以兼容 SDK 引用） */
#define GPIO_PORT_UART0_TX                 (GPIOB)
#define GPIO_PIN_UART0_TX                  (GPIO_PIN_9)   /* 若需要可与 LOG TX 共用 */
#define GPIO_PORT_UART0_RX                 (GPIOB)
#define GPIO_PIN_UART0_RX                  (GPIO_PIN_7)

/* UART1：TX_LOG / RX_LOG（同时接 GD60932U UART）
 *   P41 TX_LOG -> GD60932 RX (pin5)
 *   P39 RX_LOG <- GD60932 TX (pin8)
 */
#define GPIO_PORT_UART1_TX                 (GPIOB)
#define GPIO_PIN_UART1_TX                  (GPIO_PIN_9)   /* P41 */
#define GPIO_PORT_UART1_RX                 (GPIOB)
#define GPIO_PIN_UART1_RX                  (GPIO_PIN_7)   /* P39 */

#define GPIO_PORT_GD60932_TX               (GPIO_PORT_UART1_TX)
#define GPIO_PIN_GD60932_TX                (GPIO_PIN_UART1_TX)
#define GPIO_PORT_GD60932_RX               (GPIO_PORT_UART1_RX)
#define GPIO_PIN_GD60932_RX                (GPIO_PIN_UART1_RX)

/* UART2：未使用 */
#define GPIO_PORT_UART2_TX                 (GPIOA)
#define GPIO_PIN_UART2_TX                  (GPIO_PIN_9)   /* P09，与 BAT_ADC 共用，勿与 ADC 同时开 UART2 */
#define GPIO_PORT_UART2_RX                 (GPIOA)
#define GPIO_PIN_UART2_RX                  (GPIO_PIN_21)  /* P21 */

//=============================================================================
// SPI0（硬件）+ CS 为 GPIO（软件片选）
/* 网络名与 LSM6DSOW Mode2 接线一致：
 *   SDI_RX -> IMU SDA/SDI  => MCU MOSI (P43)
 *   SDO_TX -> IMU SDO      => MCU MISO (P44)
 */
//=============================================================================
#define GPIO_PORT_SPI0_CLK                 (GPIOB)
#define GPIO_PIN_SPI0_CLK                  (GPIO_PIN_10)  /* P42 SCLK */
#define GPIO_PORT_SPI0_MOSI                (GPIOB)
#define GPIO_PIN_SPI0_MOSI                 (GPIO_PIN_11)  /* P43 SDI_RX -> IMU SDI */
#define GPIO_PORT_SPI0_MISO                (GPIOB)
#define GPIO_PIN_SPI0_MISO                 (GPIO_PIN_12)  /* P44 SDO_TX -> IMU SDO */
#define GPIO_PORT_SPI0_CS                  (GPIOA)
#define GPIO_PIN_SPI0_CS                   (GPIO_PIN_0)   /* P00 CS */
/* LSM6DSOW INT1 */
#define GPIO_PORT_IMU_DRDY                 (GPIO_PORT_DRDY)
#define GPIO_PIN_IMU_DRDY                  (GPIO_PIN_DRDY) /* P27 */

//=============================================================================
// 用户 GPIO
//=============================================================================
#define GPIO_PORT_USER_GPIO0               (GPIOA)
#define GPIO_PIN_USER_GPIO0                (GPIO_PIN_29)  /* P29 */
#define GPIO_PORT_USER_GPIO1               (GPIOB)
#define GPIO_PIN_USER_GPIO1                (GPIO_PIN_0)   /* P32 */
#define GPIO_PORT_USER_GPIO2               (GPIOB)
#define GPIO_PIN_USER_GPIO2                (GPIO_PIN_17)  /* P49 */
#define GPIO_PORT_USER_GPIO3               (GPIOB)
#define GPIO_PIN_USER_GPIO3                (GPIO_PIN_21)  /* P53 */

#define GPIO_PORT_NTC_GND                  (GPIOA)
#define GPIO_PIN_NTC_GND                   (GPIO_PIN_24)  /* P24 */
#define GPIO_PORT_DRDY                     (GPIOA)
#define GPIO_PIN_DRDY                      (GPIO_PIN_27)  /* P27 */

/* ADC 引脚（LGA28 复用：P09=ADC0_1，P21=ADC0_2） */
#define GPIO_PORT_BAT_ADC                  (GPIOA)
#define GPIO_PIN_BAT_ADC                   (GPIO_PIN_9)   /* P09 BAT_ADC */
#define GPIO_PORT_NTC_ADC                  (GPIOA)
#define GPIO_PIN_NTC_ADC                   (GPIO_PIN_21)  /* P21 NTC_ADC */


//=============================================================================
// SDK 示例兼容别名（KEY / LED）
//=============================================================================
#define GPIO_PORT_KEY                      (GPIO_PORT_DRDY)
#define GPIO_PIN_KEY                       (GPIO_PIN_DRDY)
#define GPIO_PORT_KEY1                     (GPIO_PORT_DRDY)
#define GPIO_PIN_KEY1                      (GPIO_PIN_DRDY)
#define GPIO_PORT_KEY2                     (GPIO_PORT_NTC_GND)
#define GPIO_PIN_KEY2                      (GPIO_PIN_NTC_GND)
#define GPIO_PORT_KEY3                     (GPIO_PORT_USER_GPIO3)
#define GPIO_PIN_KEY3                      (GPIO_PIN_USER_GPIO3)

#define GPIO_PORT_LED1                     (GPIO_PORT_USER_GPIO0)
#define GPIO_PIN_LED1                      (GPIO_PIN_USER_GPIO0)
#define GPIO_PORT_LED2                     (GPIO_PORT_USER_GPIO1)
#define GPIO_PIN_LED2                      (GPIO_PIN_USER_GPIO1)
#define GPIO_PORT_LED3                     (GPIO_PORT_USER_GPIO2)
#define GPIO_PIN_LED3                      (GPIO_PIN_USER_GPIO2)

#endif /* __HT32F67595_USER_H__ */
