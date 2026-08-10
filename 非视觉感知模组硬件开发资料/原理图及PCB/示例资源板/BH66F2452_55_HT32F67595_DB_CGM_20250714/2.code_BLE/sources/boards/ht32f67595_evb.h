/*************************************************************************************************************
 * @file    ht32f67595_evb.h
 * @version V1.0
 * @date    2022-09-22
 * @brief
 *************************************************************************************************************
 * @attention
 *
 * Firmware Disclaimer Information
 *
 * 1. The customer hereby acknowledges and agrees that the program technical
 *documentation, including the code, which is supplied by Holtek Semiconductor
 *Inc., (hereinafter referred to as "HOLTEK") is the proprietary and
 *confidential intellectual property of HOLTEK, and is protected by copyright
 *law and other intellectual property laws.
 *
 * 2. The customer hereby acknowledges and agrees that the program technical
 *documentation, including the code, is confidential information belonging to
 *HOLTEK, and must not be disclosed to any third parties other than HOLTEK and
 *the customer.
 *
 * 3. The program technical documentation, including the code, is provided "as
 *is" and for customer reference only. After delivery by HOLTEK, the customer
 *shall use the program technical documentation, including the code, at their
 *own risk. HOLTEK disclaims any expressed, implied or statutory warranties,
 *including the warranties of merchantability, satisfactory quality and fitness
 *for a particular purpose.
 *
 * <h2><center>Copyright (C) Holtek Semiconductor Inc. All rights
 *reserved</center></h2>
 ************************************************************************************************************/

#ifndef __HT32F67595_EVB__H__
#define __HT32F67595_EVB__H__

// NTC GPIO
#define GPIO_PORT_NTC_GND       (GPIOB)
#define GPIO_PIN_NTC_GND        (GPIO_PIN_0)    // P32, PB0
#define GPIO_PORT_NTC_ADC_AN    (GPIOB)
#define GPIO_PIN_NTC_ADC_AN     (GPIO_PIN_17)    // P49, PB17
#define GPIO_PORT_NTC_ADC_V     (GPIOB)
#define GPIO_PIN_NTC_ADC_V      (GPIO_PIN_21)    // P53, PB21

// HALL LATCH PIN
#define GPIO_PORT_HALL_LATCH (GPIOB)
#define GPIO_PIN_HALL_LATCH  (GPIO_PIN_11)    // P43, PB11

// CS PIN
#define GPIO_PORT_CS (GPIOA)
#define GPIO_PIN_CS  (GPIO_PIN_0)    // P00, PA0

// Key DRDY pin
#define GPIO_PORT_KEY       (GPIOB)
#define GPIO_PIN_KEY        (GPIO_PIN_9)    // P41, PB9
#define LUT_TRIG_ID_FOR_KEY (LUT_TRIG_ID_GPIOB)

// UART Pins
// UART0
#define GPIO_PORT_UART0_TX (GPIOA)
#define GPIO_PIN_UART0_TX  (GPIO_PIN_25)    // P25, PA25
#define GPIO_PORT_UART0_RX (GPIOA)
#define GPIO_PIN_UART0_RX  (GPIO_PIN_22)    // P22, PA22

//#define GPIO_PORT_UART1_TX (GPIOA)
//#define GPIO_PIN_UART1_TX  (GPIO_PIN_29)    // 29, PA29
#define GPIO_PORT_UART1_TX (GPIOA)
#define GPIO_PIN_UART1_TX  (GPIO_PIN_24)    // 24, PA24
#define GPIO_PORT_UART1_RX (GPIOA)
#define GPIO_PIN_UART1_RX  (GPIO_PIN_21)    // P21, PA21

#define GPIO_PORT_UART2_TX (GPIOB)
#define GPIO_PIN_UART2_TX  (GPIO_PIN_10)    // P42, PB10
#define GPIO_PORT_UART2_RX (GPIOB)
#define GPIO_PIN_UART2_RX  (GPIO_PIN_7)    // P39, PB7

#endif /* __HT32F67595_EVB__H__ */
