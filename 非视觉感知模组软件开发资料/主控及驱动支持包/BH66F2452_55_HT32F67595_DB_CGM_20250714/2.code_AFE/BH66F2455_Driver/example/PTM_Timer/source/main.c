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
#include "..\..\..\driver\PTM.h"
#include "..\..\..\driver\GPIO.h"

void main()
{
    // 判斷是否為上電復位或者非正常情況下的復位, 如果是上電復位，執行上電復位初始化，反之執行WDT溢出初始化
    if (_to == 0 || _pdf == 0)
    {
        // config sys clock
        Oscillators_Cfg();

        // config PTM to timer mode
        PTM_Cfg_TimerCounter_t cfg;
        cfg.clockSource = PTM_CLOCK_FSYS_4;
        cfg.countClear  = PTM_COUNT_CLEAR_A_MATCH;
        cfg.count       = 500;
        PTM_Cfg_TimerCounter(&cfg);

        // enable PTM
        PTM_Enable();

        // enable Interrupt : Non-required
        PTMA_Isr_Enable();
        _emi = 1;

        // config pin to gpio
        PIN_ModeOutput(pa, 1);
        PIN_OutputHigh(pa, 1);
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

DEFINE_ISR(PTM_ISR, 0x14)
{
    _ptmaf = 0;
    PIN_OutputInvert(pa, 1);
}