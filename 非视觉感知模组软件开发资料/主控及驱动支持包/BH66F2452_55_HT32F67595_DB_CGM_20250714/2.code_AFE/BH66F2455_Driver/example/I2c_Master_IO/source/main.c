/**
 *  Firmware Disclaimer Information
 *
 *  1. The customer hereby acknowledges and agrees that the program technical documentation, including the
 *     code, which is supplied by BEST HEALTH ELECTRONIC Inc., (hereinafter referred to as BestHealth) is the
 *     proprietary and confidential intellectual property of BestHealth, and is protected by copyright law and
 *     other intellectual property laws.
 *
 *  2. The customer hereby acknowledges and agrees that the program technical documentation, including the
 *     code, is confidential information belonging to BestHealth, and must not be disclosed to any third parties
 *     other than BestHealth and the customer.
 *
 *  3. The program technical documentation, including the code, is provided and for customer reference
 *     only. After delivery by BestHealth, the customer shall use the program technical documentation, including
 *     the code, at their own risk. BestHealth disclaims any expressed, implied or statutory warranties, including
 *     the warranties of merchantability, satisfactory quality and fitness for a particular purpose.
 *
 *  <h2><center>Copyright (C) BEST HEALTH ELECTRONIC Inc. All rights reserved</center></h2>
 */
#include <stdint.h>
#include "..\..\..\driver\wdt.h"
#include "..\..\..\driver\Oscillators.h"
#include "..\..\..\driver\I2cMaster.h"

#define DEVICE_I2C_ADDRESS 0xA0

typedef struct {
    uint8_t regAddress;
    uint8_t regData[3];
} deviceReg_t;

deviceReg_t deviceReg;

void main()
{
    // 判斷是否為上電復位或者非正常情況下的復位, 如果是上電復位，執行上電復位初始化，反之執行WDT溢出初始化
    if (_to == 0 || _pdf == 0)
    {
        // config sys clock
        Oscillators_Cfg();
        // read default data
        deviceReg.regAddress = 0xD0;
        I2c_Master_ReadData(DEVICE_I2C_ADDRESS, &deviceReg.regAddress, 3);
        // write new data
        deviceReg.regData[0] = 0x01;
        deviceReg.regData[1] = 0x02;
        deviceReg.regData[2] = 0x03;
        I2c_Master_WriteData(DEVICE_I2C_ADDRESS, &deviceReg.regAddress, 3);
        deviceReg.regData[0] = 0x00;
        deviceReg.regData[1] = 0x00;
        deviceReg.regData[2] = 0x00;
    }
    else
    {
        // WDT溢出復位初始化
        GCC_CLRWDT();
    }
    while (1)
    {
        GCC_DELAY(10000);
        GCC_CLRWDT();
        // read new data
        I2c_Master_ReadData(DEVICE_I2C_ADDRESS, &deviceReg.regAddress, 3);
    }
}