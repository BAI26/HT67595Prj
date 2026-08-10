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
#include "..\..\..\driver\AfePower.h"
#include "..\..\..\driver\Afe.h"
#include "..\..\..\driver\Adc24.h"
#include "..\..\..\driver\Gpio.h"
#include "..\..\..\driver\Uart.h"

volatile uint8_t uartQueueBuf[20];    // 中断使用需要加 volatile
uint8_t uartTxBuf[20];

void ADC24_ENOB_TEST();

void main()
{
    // 判斷是否為上電復位或者非正常情況下的復位, 如果是上電復位，執行上電復位初始化，反之執行WDT溢出初始化
    if (_to == 0 || _pdf == 0)
    {
        // config sys clock
        Oscillators_Cfg_t oscCfg;
        oscCfg.haltMode = HALT_MODE_SLEEP;
        oscCfg.irc2 = IRC2_HIRC_4MHZ;
    	Oscillators_Cfg(&oscCfg);
    	
    	Wdt_Disable();
    	
        // config AfePower
        AfePower_t afePower;
        afePower.dacRefVol        = DAC_REF_VIREF;
        afePower.dacVrefSelect    = DAC_VREF_1_25V;    // 1.25V or 1.83V
        afePower.vrefData    	  = 0x80;
        afePower.irefEn           = IREF_ENABLE;
        VirefCfg(afePower);
        
        // config uart
        uartStatus.rxBuf    = uartQueueBuf;            // 傳入緩存Buf地址
        uartStatus.rxBufLen = sizeof(uartQueueBuf);    // 傳入緩存Buf長度
        Uart_Cfg_t uartCfg;
        uartCfg.flag.b.addr   = false;
        uartCfg.flag.b.wakeUp = true;
        Uart_Cfg(&uartCfg);
        Uart_Enable();
        Uart_Isr_Enable();
        // enable emi
        _emi = 1;
        ADC24_ENOB_TEST();
    }
    else
    {
        // WDT溢出復位初始化
        GCC_CLRWDT();
    }
    while (1)
    {
        GCC_CLRWDT();
    }
}

uint8_t adcRate;
uint8_t adcGain;
// clang-format off
const uint8_t adcRateTable[] = {
#if ADC_USE_RATE3
     ADC24_RATE_4MHZ_4HZ,
     ADC24_RATE_4MHZ_8HZ,
     ADC24_RATE_4MHZ_10HZ,
     ADC24_RATE_4MHZ_16HZ,
     ADC24_RATE_4MHZ_20HZ,
     ADC24_RATE_4MHZ_33HZ,
     ADC24_RATE_4MHZ_41HZ,
     ADC24_RATE_4MHZ_65HZ,
     ADC24_RATE_4MHZ_81HZ,
     ADC24_RATE_4MHZ_130HZ,
     ADC24_RATE_4MHZ_163HZ,
     ADC24_RATE_4MHZ_260HZ,
     ADC24_RATE_4MHZ_326HZ,
     ADC24_RATE_4MHZ_521HZ,
     ADC24_RATE_4MHZ_651HZ,
     ADC24_RATE_4MHZ_1302HZ,
#endif

#if ADC_USE_RATE2
    ADC24_RATE_4MHZ_2HZ,
    ADC24_RATE_4MHZ_4HZ,
    ADC24_RATE_4MHZ_5HZ,
    ADC24_RATE_4MHZ_8HZ,
    ADC24_RATE_4MHZ_10HZ,
    ADC24_RATE_4MHZ_16HZ,
    ADC24_RATE_4MHZ_20HZ,
    ADC24_RATE_4MHZ_33HZ,
    ADC24_RATE_4MHZ_41HZ,
    ADC24_RATE_4MHZ_65HZ,
    ADC24_RATE_4MHZ_81HZ,
    ADC24_RATE_4MHZ_130HZ,
    ADC24_RATE_4MHZ_163HZ,
    ADC24_RATE_4MHZ_260HZ,
    ADC24_RATE_4MHZ_326HZ,
    ADC24_RATE_4MHZ_521HZ,
    ADC24_RATE_4MHZ_651HZ,
    ADC24_RATE_4MHZ_1302HZ,
#endif
};
const uint8_t adcGainTable[] = {
    ADC24_REFx1_GAINx1      ,
    ADC24_REFx1_GAINx2      ,
    ADC24_REFx1_GAINx4      ,
    ADC24_REFx1_GAINx8      ,
    ADC24_REFx1_GAINx16     ,
    ADC24_REFx1_GAINx32     ,
    ADC24_REFx1_GAINx64     ,
    ADC24_REFx1_GAINx128    ,
    ADC24_REFx1_GAINx256    ,
    ADC24_REFx1_GAINx1BYPASS,
};
const uint8_t adcVrefVoltageTable[] = {
    DAC_VREF_1_25V,
    DAC_VREF_1_83V,
};

// clang-format on

void ADC24_ENOB_TEST()
{
    volatile uint8_t iAdcRate, iAdcGain, iAdcVrefVoltage;
    for (iAdcRate = 0; iAdcRate < sizeof(adcRateTable) / sizeof(adcRateTable[0]); iAdcRate++)
    {
        for (iAdcGain = 0; iAdcGain < sizeof(adcGainTable) / sizeof(adcGainTable[0]); iAdcGain++)
        {
            for (iAdcVrefVoltage = 0; iAdcVrefVoltage < sizeof(adcVrefVoltageTable) / sizeof(adcVrefVoltageTable[0]); iAdcVrefVoltage++)
            {
                // config Adc
                //Adc 24
		        Adc24_Cfg_t adc24Cfg;
		        adc24Cfg.sampleRate   = adcRateTable[iAdcRate];
		        adc24Cfg.gain         = adcGainTable[iAdcGain];
		        adc24Cfg.channel      = ADC24_CHP_AN0_N_AN1;
		        adc24Cfg.dataSkip     = ADC24_DATA_SKIP_DISABLE;
		        adc24Cfg.dataAvgCnt   = ADC24_ADACC_DISABLE;
		        adc24Cfg.autoWriteNum = ADC24_WRNUM_DISABLE;
		        Adc24_Cfg(adc24Cfg);
		        
		        PIN_PA3_GPIO();
		        _pac3 = 0;
		        _pa3 = 0;
		        
		        _inis = true;
		        
		        Adc24_Enable(adc24Cfg);
                while (adc24SourceData.samplingCnt < 1200)
                {
                    GCC_CLRWDT();
                    Adc24_Poling();
                    if (adc24SourceData.flag.b.isReady)
                    {
                        adc24SourceData.flag.b.isReady = 0;

                        uartTxBuf[0]  = 0x55;
                        uartTxBuf[1]  = 0xAA;
                        uartTxBuf[2]  = adcRateTable[iAdcRate];
                        uartTxBuf[3]  = adcGainTable[iAdcGain];
                        uartTxBuf[4]  = 0;//adcVrefVoltageTable[iAdcVrefVoltage];
                        uartTxBuf[5]  = adc24SourceData.samplingCnt >> 8;
                        uartTxBuf[6]  = adc24SourceData.samplingCnt & 0xff;
                        uartTxBuf[7]  = adc24SourceData.data.byte.byteRes;
                        uartTxBuf[8]  = adc24SourceData.data.byte.byteHigh;
                        uartTxBuf[9]  = adc24SourceData.data.byte.byteMid;
                        uartTxBuf[10] = adc24SourceData.data.byte.byteLow;
                        Uart_TxByte_Interrupt(uartTxBuf, 11);
                    }
                }
                AfePower_t afePower;
		        afePower.dacRefVol        = DAC_REF_VIREF;
		        afePower.dacVrefSelect    = iAdcVrefVoltage;    // 1.25V or 1.83V
		        afePower.vrefData    	  = 0x80;
		        afePower.irefEn           = IREF_ENABLE;
		        VirefCfg(afePower);
            }
        }
    }
}