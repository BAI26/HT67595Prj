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
#include "..\..\..\driver\stdbool.h"
#include "..\..\..\driver\wdt.h"
#include "..\..\..\driver\Oscillators.h"
#include "..\..\..\driver\AfePower.h"
#include "..\..\..\driver\Adc24.h"
#include "..\..\..\driver\Gpio.h"
// 47K NTC	 NTC_NO : NTCG104BF473FT1X
#define TABLE_TEMP_START    (-10)
#define TABLE_TEMP_LEN      61
#define TEMP_SENSOR_KOHMx10 470
const uint16_t NTC_TABLE[TABLE_TEMP_LEN] = {
    2726, 2577, 2438, 2307, 2184, 2069, 1960, 1857, 1761, 1670,    // -10 ~ -1
    1584, 1504, 1427, 1356, 1288, 1224, 1163, 1106, 1052, 1001,    // 0 ~  9
    953, 907, 864, 823, 784, 747, 713, 680, 648, 619,              // 10 ~ 19
    591, 564, 539, 515, 492, 470, 449, 430, 411, 393,              // 20 ~ 29
    376, 360, 345, 330, 317, 303, 291, 279, 267, 256,              // 30 ~ 39
    246, 236, 226, 217, 209, 200, 193, 185, 178, 171,              // 40 ~ 49
    164};
#define TEMP_LOWER  10001
#define TEMP_HIGHER 10002
#define TEMP_ERROR  20001

volatile int32_t sum;
volatile uint16_t Temp;
int16_t TsenTable(uint16_t ntc_r);

void main()
{
    // 判斷是否為上電復位或者非正常情況下的復位, 如果是上電復位，執行上電復位初始化，反之執行WDT溢出初始化
    if (_to == 0 || _pdf == 0)
    {
        // config sys clock
        Oscillators_Cfg();
        // config AfePower
        Voreg_Cfg(VOREG_BYPASS);
        Voreg_Enable();
        Viref_Cfg(0x80);    // Calibration viref, adjusted for different IC needs
        Viref_Enable();
        // config Adc
        Adc24_Cfg_t cfg;
        cfg.refVoltage = ADC24_REF_VOREG_AVSS;
        cfg.sampleRate = ADC24_RATE_326HZ;
        cfg.gain       = ADC24_REFx1_GAINx1;
        // 開啟NTC 電路
        PIN_ModeOutput(pa, 1);
        PIN_OutputLow(pa, 1);
        PIN_PA3_AN0();
        cfg.channel = ADC24_CHP_AN0_N_AVSS;
        Adc24_Cfg(&cfg);
        Adc24_Enable();
        Adc24_Isr_Enable();
        // enable emi
        _emi = 1;
        sum  = 0;
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
                sum = sum / 8;
                // 1. How to calculate the input voltage of an ADC
                // LSB = ΔVR_I/2^K (K=adc bits,不含符號bit) = ΔVR_I/2^15
                // gain = 1
                // InputVoltage = Adc × 3300mV/2^15/1
                volatile uint16_t NtcMv = (sum * 3300 / 32768);
                // 2. How to get the NTC R
                // NTC_R / (NTC_R+TEMP_SENSOR_KOHMx10) = InputVoltage / 3300mV
                // NTC_R / TEMP_SENSOR_KOHMx10 = InputVoltage / (3300mV - InputVoltage)
                // NTC_R = TEMP_SENSOR_KOHMx10 * adc / (2^15 - adc)
                volatile uint16_t NTC_R;
                NTC_R = (int32_t)TEMP_SENSOR_KOHMx10 * sum / (32768 - sum);
                Temp  = TsenTable(NTC_R);
                sum   = 0;
                PIN_OutputHigh(pa, 1);    // 關閉NTC 電路
                Adc24_Disable();
                GCC_HALT();
            }
        }
    }
}

int16_t TsenTable(uint16_t ntc_r)
{
    uint16_t temp;
    if (ntc_r > NTC_TABLE[0])
    {
        return TEMP_LOWER;
    }
    else if (ntc_r < NTC_TABLE[TABLE_TEMP_LEN - 1])
    {
        return TEMP_HIGHER;
    }
    else
    {
        uint8_t i;
        for (i = 0; i < TABLE_TEMP_LEN - 1; i++)
        {
            if (ntc_r <= NTC_TABLE[i] && ntc_r > NTC_TABLE[i + 1])
            {
                temp = 10 * (NTC_TABLE[i] - ntc_r) / (NTC_TABLE[i] - NTC_TABLE[i + 1]);
                temp += 10 * (i + TABLE_TEMP_START);
                return temp;
            }
        }
        return TEMP_ERROR;
    }
}