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
#include "..\..\..\driver\TimeBase.h"
#include "..\..\..\driver\Uart.h"

void currentMeaStart();

#define MEASURETIME 10
#define OPA_R       5600    // 5.6M

volatile uint32_t measureTime;
volatile int32_t sum;
volatile uint8_t txCharInterrupt[10];    // 中断使用需要加 volatile
volatile uint8_t uartQueueBuf[20];       // 中断使用需要加 volatile
volatile bit isMeaCurrent;
volatile int16_t currentNaOffset;

#define VIREF_VAL_DATA 0xC9
#define DAC1O_VAL_DATA 1802

void main()
{
    // 判斷是否為上電復位或者非正常情況下的復位, 如果是上電復位，執行上電復位初始化，反之執行WDT溢出初始化
    if (_to == 0 || _pdf == 0)
    {
        // config sys clock
        Oscillators_Cfg();
        // Wdt config
        Wdt_Enable(WDT_TIME_125MS);
        // Afe config
        TwoElAfeCfg(VIREF_VAL_DATA, DAC1O_VAL_DATA);
        // Uart config
        uartStatus.rxBuf    = uartQueueBuf;
        uartStatus.rxBufLen = sizeof(uartQueueBuf);
        Uart_Cfg_t uartCfg;
        uartCfg.flag.b.addr   = false;
        uartCfg.flag.b.wakeUp = true;
        Uart_Cfg(&uartCfg);
        Uart_Enable();
        Uart_Isr_Enable();
        measureTime = 0;

        _pac  = 0x02;
        _pbc  = 0x00;
        _pa   = 0x00;
        _pb   = 0x00;
        _papu = 0x00;
        _pbpu = 0x00;
        // enable emi
        _emi            = 1;
        currentNaOffset = 0;
        currentMeaStart();
    }
    else
    {
        // WDT溢出復位初始化
        GCC_CLRWDT();
        measureTime++;
        if (measureTime >= MEASURETIME)
        {
            measureTime = 0;
            Wdt_Enable(WDT_TIME_125MS);
            currentMeaStart();
        }
    }
    while (1)
    {
        GCC_CLRWDT();
        if (isMeaCurrent == false && uartStatus.flag.b.isBusy == false)
        {
            Wdt_Enable(WDT_TIME_1000MS);
            GCC_HALT();
        }
        if (adc24SourceData.flag.b.isReady)
        {
            adc24SourceData.flag.b.isReady = 0;
            sum += adc24SourceData.data.adcData / 256;    // get high 16 bit data
            if (adc24SourceData.samplingCnt >= (3 + 20))
            {
                sum = sum / 20;
                // 1. How to calculate the input voltage of an ADC
                // LSB = ΔVR_I/2^K (K=adc bits,不含符號bit) = ΔVR_I/2^15
                // gain = 1
                // InputVoltage = Adc × 1250mV × 100 /2^15/1
                // 放大100倍
                volatile int32_t opaMv = sum * 1250 * 100 / 32768;

                // 2. How to get the current
                // current = InputVoltage/ OPA_R
                volatile int16_t currentNa = opaMv * 1000 / OPA_R;
                if (currentNaOffset == 0)
                {
                    currentNa       = 0;
                    currentNaOffset = currentNa;
                }
                else
                {
                    currentNa -= currentNaOffset;
                }
                if (currentNa < 0)
                {
                    currentNa = 0;
                }
                // 關閉ADC
                isMeaCurrent = false;
                Adc24_Disable();

                // 輸出電流
                txCharInterrupt[0] = 0xAA;
                txCharInterrupt[1] = 0x06;
                txCharInterrupt[2] = 0xC0;
                txCharInterrupt[3] = (currentNa & 0xFF00) >> 8;
                txCharInterrupt[4] = currentNa & 0x00FF;
                txCharInterrupt[5] = 0x00;
                uint8_t i;
                for (i = 0; i < 6 - 1; i++)
                {
                    txCharInterrupt[5] += txCharInterrupt[i];
                }
                Uart_TxByte_Interrupt(txCharInterrupt, 6);
            }
        }
    }
}

void currentMeaStart()
{
    // config Adc
    Adc24_Cfg_t Cfg;
    Cfg.refVoltage = ADC24_REF_DACVREF_AVSS;
    Cfg.sampleRate = ADC24_RATE_326HZ;
    Cfg.gain       = ADC24_REFx1_GAINx1;
    Cfg.channel    = ADC24_CHP_OP1O_N_DAC1O;
    Adc24_Cfg(&Cfg);
    Adc24_Enable();
    Adc24_Isr_Enable();
    sum          = 0;
    isMeaCurrent = true;
}
