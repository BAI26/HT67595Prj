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
#include "..\..\..\driver\uart.h"
#include "..\..\..\driver\AfePower.h"
#include "..\..\..\driver\Adc24.h"
#include "..\..\..\driver\Gpio.h"

volatile uint32_t sum;
volatile uint16_t VoltageMv;

void main()
{
    // 判斷是否為上電復位或者非正常情況下的復位, 如果是上電復位，執行上電復位初始化，反之執行WDT溢出初始化
    if (_to == 0 || _pdf == 0)
    {
        // config sys clock
        Oscillators_Cfg();

        // config AfePower
        Voreg_Cfg(VOREG_2V4);
        Voreg_Enable();
        Viref_Cfg(0x64);    // Calibration viref, adjusted for different IC needs
        Viref_Enable();
        // config Adc
        Adc24_Cfg_t adcCfg;
        adcCfg.refVoltage = ADC24_REF_DACVREF_AVSS;
        adcCfg.sampleRate = ADC24_RATE_326HZ;
        adcCfg.gain       = ADC24_REFx1_GAINx2;
        adcCfg.channel    = ADC24_CHP_AN0_N_AN1;
        Adc24_Cfg(&adcCfg);
        Adc24_Enable();
        Adc24_Isr_Enable();
        // enable emi
        _emi = 1;

        sum = 0;
    }
    else
    {
        // WDT溢出復位初始化
        GCC_CLRWDT();
    }
    while (1)
    {
        GCC_CLRWDT();
        if (adc24SourceData.flag.b.isReady)
        {
            adc24SourceData.flag.b.isReady = 0;
            sum += adc24SourceData.data.adcData / 256;    // get high 16 bit data
            if (adc24SourceData.samplingCnt >= (3 + 8))
            {
                sum                         = sum / 8;
                adc24SourceData.samplingCnt = 0x00;
                // 1. How to calculate the input voltage of an ADC
                // LSB = ΔVR_I/2^K (K=adc bits,不含符號bit) = AdcRefVoltage/2^15
                // InputVoltage = ( Adc × LSB-DCSET )/(gain)
                // eg:DCSET = 0, gain = 2
                // InputVoltage = Adc × AdcRefVoltage/2^15/2 = Adc x 1250 / 2^15 / 2
                VoltageMv = sum * 1250 / 32768 / 2;
                sum       = 0;
                Adc24_Disable();
            }
        }
    }
}