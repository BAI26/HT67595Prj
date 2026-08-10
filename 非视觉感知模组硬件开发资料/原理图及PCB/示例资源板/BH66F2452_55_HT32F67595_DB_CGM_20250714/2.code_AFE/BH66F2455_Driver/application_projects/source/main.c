/**
 *  Firmware Disclaimer Information
 *
 *  1. The customer hereby acknowledges and agrees that the program technical
 * documentation, including the code, which is supplied by BEST HEALTH
 * ELECTRONIC Inc., (hereinafter referred to as BestHealth) is the proprietary
 * and confidential intellectual property of BestHealth, and is protected by
 * copyright law and other intellectual property laws.
 *
 *  2. The customer hereby acknowledges and agrees that the program technical
 * documentation, including the code, is confidential information belonging to
 * BestHealth, and must not be disclosed to any third parties other than
 * BestHealth and the customer.
 *
 *  3. The program technical documentation, including the code, is provided and
 * for customer reference only. After delivery by BestHealth, the customer shall
 * use the program technical documentation, including the code, at their own
 * risk. BestHealth disclaims any expressed, implied or statutory warranties,
 * including the warranties of merchantability, satisfactory quality and fitness
 * for a particular purpose.
 *
 *  <h2><center>Copyright (C) BEST HEALTH ELECTRONIC Inc. All rights
 * reserved</center></h2>
 */

#include <stdint.h>
#include <string.h>

#include "..\..\board\BoardCfg.h"
#include "..\..\driver\Adc24.h"
#include "..\..\driver\Afe.h"
#include "..\..\driver\AfePower.h"
#include "..\..\driver\Gpio.h"
#include "..\..\driver\Uart.h"
#include "..\..\driver\IntPin.h"
#include "..\..\driver\Eeprom.h"
//#include "..\..\driver\I2c.h"
//#include "..\..\driver\Spi.h"
#include "..\..\driver\Wdt.h"
#include "User_Protocol.h"
#include "Work_Mode_Polling.h"
#include "User_Protocol.h"
#include "Sys_Init.h"

bool isWork;

void main()
{
    // Determine whether it is a power-on reset or a reset under abnormal conditions,
    // If it is a power-on reset, perform power-on reset initialization, otherwise perform WDT overflow initialization
    if (_to == 0 || _pdf == 0)
    {
        Sys_PowerOnInit();

        Sys_ReadCalibratePara();

        Init_AFE();
        
        uint32_t restartNum = 0;
		Eeprom_ReadBuff(0x01FC, (uint8_t *)(&restartNum), 4);
		restartNum ++;
		Eeprom_WriteBuf(0x01FC, (uint8_t *)(&restartNum), 4);
		cgmApiP->restartNum = restartNum;
        
        isWork = false;
    }
    else
    {
        // WDT Overflow Return First Start
        GCC_CLRWDT();
    }
    while (1)
    {
        GCC_CLRWDT();

        isWork = false;
#if AUTO_SLEEP
//		if()
//		{
//			isWork = true;
//		}
#else
        if (AFE_IO_WAKEUP_GET())    // Falling edge wake-up, low level work, high level sleep
        {
            isWork = true;
        }
#endif

        if (isWork)
        {
            Protocol_RxLoop();

            Work_Mode_Polling();
#if (USE_SPI)
            DRDY_Ready(); // Before DRDY first and then TxLoop moves to the calculation current, wake up BLE in advance to save time. It is necessary to ensure that BLE can be woken up during calculation time.
#endif
            Protocol_TxLoop();
        }
        else
        {
            Enter_Halt();

            WakeUpInit();
        }
    }
}
