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
#include "..\..\..\driver\Eeprom.h"
#include "..\..\..\driver\Ram.h"

#define LEN 8
uint8_t writeData[LEN];
uint8_t readData[LEN];

void main()
{
    // 判斷是否為上電復位或者非正常情況下的復位, 如果是上電復位，執行上電復位初始化，反之執行WDT溢出初始化
    if (_to == 0 || _pdf == 0)
    {
        // config sys clock
        Oscillators_Cfg_t oscCfg;
        oscCfg.haltMode = HALT_MODE_SLEEP;
        oscCfg.irc2     = IRC2_HIRC_4MHZ;
        Oscillators_Cfg(&oscCfg);
        
        // Ram init
        Ram_Clear();
        // write read eeprom
        int8_t i;
        uint8_t *read = readData;
        for (i = 0; i < LEN; i++)
        {
            Eeprom_WriteByte(i, i);      // write data
            Eeprom_ReadByte(i, read);    // read data
            read++;
        }
        for (i = 0; i < LEN; i++)
        {
            writeData[i] = 0xA0 + i;
        }
        Eeprom_WriteBuf(0x00, writeData, LEN);
        Eeprom_ReadBuff(0x00, readData, LEN);
    }
    else
    {
        // WDT溢出復位初始化
        GCC_CLRWDT();
    }
    while (1)
    {
        GCC_CLRWDT();
        GCC_NOP();
    }
}