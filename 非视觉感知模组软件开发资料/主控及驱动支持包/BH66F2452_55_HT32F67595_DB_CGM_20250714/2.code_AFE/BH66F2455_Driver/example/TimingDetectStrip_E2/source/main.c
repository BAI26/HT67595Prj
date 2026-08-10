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
#include "..\..\..\driver\Afe.h"
#include "..\..\..\driver\AfePower.h"
#include "..\..\..\driver\Gpio.h"

void main()
{
    // 判斷是否為上電復位或者非正常情況下的復位, 如果是上電復位，執行上電復位初始化，反之執行WDT溢出初始化
    if (_to == 0 || _pdf == 0)
    {
        // config sys clock
        Oscillators_Cfg();
        // Afe power config
        Dac_vref_Cfg(DAC_REF_VIREF);
        Viref_Cfg(0XC9);
        Viref_Enable();
        // timing config
        timing_Cfg_t Cfg;
        AfeCircuit_t afeCircuit;
        Cfg.opaStartDelay = 0;
        Cfg.opaWork       = 8;
        Cfg.dacStartDelay = 0;
        Cfg.dacWork       = 8;
        Cfg.cmpStartDelay = 0;
        Cfg.cmpWork       = 8;
        Cfg.flag.byte     = 0x99;
        Cfg.period        = 3;

        afeCircuit.cmpPselect = 1;    // op1o
        afeCircuit.dac0Data   = 1832;
        afeCircuit.dac1Data   = 1802;
        afeCircuit.dac2Data   = 0;
        afeCircuit.dac3Data   = 0;
        Timing_Cfg(&Cfg, &afeCircuit);
        Timing_Enable();

        _pa  = 0;
        _pb  = 0;
        _pac = 0;
        _pbc = 0;

        PIN_PA1_AN1();
        PIN_PA3_AN0();

        _fsiden = 1;
        _fhiden = 0;
        Wdt_Disable();
    }
    else
    {
        // WDT溢出復位初始化
        GCC_CLRWDT();
    }
    while (1)
    {
        GCC_NOP();
        GCC_NOP();
        GCC_HALT();
        GCC_NOP();
        GCC_NOP();
        if (_cmpf)
        {
            _cmpf = 0;
            GCC_CLRWDT();
        }
    }
}