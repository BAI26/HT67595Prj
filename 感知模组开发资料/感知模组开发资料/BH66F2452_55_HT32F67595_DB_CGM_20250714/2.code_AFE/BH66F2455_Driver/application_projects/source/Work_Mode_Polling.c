#include "Work_Mode_Polling.h"
#include "..\..\driver\Adc24.h"
#include "..\..\driver\Afe.h"
#include "..\..\driver\AfePower.h"
#include "..\..\driver\wdt.h"
#include "..\..\driver\Eeprom.h"
#include "..\..\driver\Gpio.h"
#include "..\..\driver\Iap.h"
#include "..\..\driver\Oscillators.h"
#include "BH66F2455.h"
#include "User_Protocol.h"
#include <stdint.h>
#include <string.h>

volatile uint16_t Temp;
int16_t TsenTable(uint16_t ntc_r);

int32_t sum;
static volatile CGM_API_t cgmApi __attribute__((at(0x0080)));
volatile CGM_API_t *cgmApiP;

#define ADC_DATA_LEN 8
volatile int32_t adcAvgWE1;
volatile uint8_t adcCntWE1;

int32_t lastNaWe1Raw;

static bool isNotFirstOffsetWe1;

typedef struct
{
    union {
        struct {
            uint8_t byteLow;     //!< R adc data low byte
            uint8_t byteMid;     //!< R adc data mid byte
            uint8_t byteHigh;    //!< R adc data high byte
            uint8_t byteRes;     //!< R reserved
        } byte;

        int32_t adcData;    //!< R adc raw data
    } data;
} Adc24_Source_Data_t;

Adc24_Source_Data_t adc24SourceDataBuf[21];

void Init_AFE()
{
    // The measurement function is disabled by default
    cgmApi.workMode                    = MODE_AFE;
    cgmApi.workStep                    = STEP_AFE_ENABLE;
    cgmApi.dataType                    = DATATYPE_CURRENT_WE1;
    deviceApi.flag1.b.isAfeMeasureData = false;

//	cgmApi. virefData = 0xb6; // 1.25V
//	cgmApi. dac1Data = 1638; // 500mV 500*4096/1250 = 1638
//	cgmApi. dac3Data = 1475; // 450mV 450*4096/1250 = 1475
//	cgmApi. dac2Data = 0;
     
    Work_Mode_Polling();

    cgmApiP               = &cgmApi;
    cgmApi.isEnterHalt    = false;
    
    isNotFirstOffsetWe1   = false;
}

void Sys_ReadCalibratePara()
{
    Eeprom_ReadBuff(EEPROM_CALIBRATE_ADDRESS, (uint8_t *)&cgmApi.calibratedId, EEPROM_VALUES_SIZE);    // calibratedId~offsetNaWe2
    if (cgmApi.we1Rf == 0)
    {
        cgmApi.we1Rf = 5600;    // 5.6M=5600k
    }
    if (cgmApi.we1CalPara == 0)
    {
        cgmApi.we1CalPara = 10000;
    }
    if (cgmApi.calibratedIdOffset != 0x55)
    {
        cgmApi.offsetNaWe1 = 0;
        cgmApi.offsetNaWe2 = 0;
    }
    if(cgmApi.calibratedIdAdcWe1 != 0x55)
    {
        cgmApi.adcSampleRateWe1 = ADC24_RATE_400KHZ_391HZ;
        cgmApi.adcGainWe1       = ADC24_REFx1_GAINx1;
    }
}

void BatVolStart()
{
    // // config Adc
    // Adc24_Cfg_t Cfg;
    // Cfg.refVoltage = ADC24_REF_DACVREF_AVSS;
    // Cfg.sampleRate = ADC24_RATE_326HZ;
    // Cfg.gain       = ADC24_REFx1_GAINx2;
    // Cfg.channel    = ADC24_CHP_AVDD5_N_AVDD6;
    // Adc24_Cfg(&Cfg);
    // Adc24_Enable();
    // Adc24_Isr_Enable();
    // _emi                = 1;
    // sum                 = 0;
    // cgmApi.isMeaCurrent = true;
}


void TemperatureStartOffset()
{
    AFE_IO_WAKEUP_DISABLE();
	
    // Adc 24
    Adc24_Cfg_t adc24Cfg;
    adc24Cfg.sampleRate   = ADC24_RATE_400KHZ_391HZ;
    adc24Cfg.gain         = ADC24_REFx1_GAINx1;
    adc24Cfg.channel      = ADC24_CHP_AN0_N_AN1;
    adc24Cfg.dataSkip     = ADC24_DATA_SKIP_4;
    adc24Cfg.dataAvgCnt   = ADC24_ADACC_DISABLE;
    adc24Cfg.autoWriteNum = ADC_DATA_LEN;
    adc24Cfg.errCheck     = ADC24_ERRCHECK_DISABLE;
    Adc24_Cfg(adc24Cfg);
    
    adc24SourceData.flag.b.isAutoModeReady = 0;
	adc24SourceData.samplingCnt    = 4;
    
    {
	    Oscillators_Cfg_t oscCfg;
	    oscCfg.haltMode = HALT_MODE_IDLE_2;
	    oscCfg.irc2     = IRC2_MIRC_400KHZ;
	    Oscillators_Cfg(&oscCfg);
	}
	
    Adc24_Enable(adc24Cfg);
    Adc24_Auto_Modo_Isr_Enable();
	
	Wdt_Disable();
    GCC_CLRWDT();
    GCC_HALT();
	
	{
	    Oscillators_Cfg_t oscCfg;
	    oscCfg.haltMode = HALT_MODE_SLEEP;
	    oscCfg.irc2     = IRC2_HIRC_4MHZ;
	    Oscillators_Cfg(&oscCfg);
	}
	
	AFE_IO_WAKEUP_SLEEP_INIT();
	Wdt_Enable(WDT_TIME_1024MS);
}

void TemperatureStart()
{
    AFE_IO_WAKEUP_DISABLE();
//TODO
//    PIN_PA3_GPIO();
//    PIN_ModeOutput(pa, 3);
//    PIN_OutputLow(pa, 3);
    
    PIN_PA1_GPIO();
    PIN_ModeOutput(pa, 1);
    PIN_OutputLow(pa, 1);
	
    // Adc 24
    Adc24_Cfg_t adc24Cfg;
    adc24Cfg.sampleRate   = ADC24_SINC2_RATE_400KHZ_391HZ;
    adc24Cfg.gain         = ADC24_REFx1_GAINx1;
    adc24Cfg.channel      = ADC24_CHP_AN0_N_DAC1O;
    adc24Cfg.dataSkip     = ADC24_DATA_SKIP_4;
    adc24Cfg.dataAvgCnt   = ADC24_ADACC_DISABLE;
    adc24Cfg.autoWriteNum = ADC_DATA_LEN;
    adc24Cfg.errCheck     = ADC24_ERRCHECK_DISABLE;
    Adc24_Cfg(adc24Cfg);
    
    adc24SourceData.flag.b.isAutoModeReady = 0;
	adc24SourceData.samplingCnt    = 4;
    
    {
	    Oscillators_Cfg_t oscCfg;
	    oscCfg.haltMode = HALT_MODE_IDLE_2;
	    oscCfg.irc2     = IRC2_MIRC_400KHZ;
	    Oscillators_Cfg(&oscCfg);
	}
	
    Adc24_Enable(adc24Cfg);
    Adc24_Auto_Modo_Isr_Enable();
	
	Wdt_Disable();
    GCC_CLRWDT();
    GCC_HALT();
	
	{
	    Oscillators_Cfg_t oscCfg;
	    oscCfg.haltMode = HALT_MODE_SLEEP;
	    oscCfg.irc2     = IRC2_HIRC_4MHZ;
	    Oscillators_Cfg(&oscCfg);
	}
	
	AFE_IO_WAKEUP_SLEEP_INIT();
	Wdt_Enable(WDT_TIME_1024MS);
}

void CurrentWe1Start()
{
	AFE_IO_WAKEUP_DISABLE();
	
    // Adc 24
    Adc24_Cfg_t adc24Cfg;
    adc24Cfg.sampleRate   = cgmApi.adcSampleRateWe1;
    adc24Cfg.gain         = cgmApi.adcGainWe1;
    adc24Cfg.channel      = ADC24_CHP_OP1O_N_DAC1O;
    adc24Cfg.dataSkip     = ADC24_DATA_SKIP_4;
    adc24Cfg.dataAvgCnt   = ADC24_ADACC_DISABLE;
    adc24Cfg.autoWriteNum = ADC_DATA_LEN;
    adc24Cfg.errCheck     = ADC24_ERRCHECK_DISABLE;
    Adc24_Cfg(adc24Cfg);
    
    adc24SourceData.flag.b.isAutoModeReady = 0;
	adc24SourceData.samplingCnt    = 4;
    
    {
	    Oscillators_Cfg_t oscCfg;
	    oscCfg.haltMode = HALT_MODE_IDLE_2;
	    oscCfg.irc2     = IRC2_MIRC_400KHZ;
	    Oscillators_Cfg(&oscCfg);
	}
	
    Adc24_Enable(adc24Cfg);
    Adc24_Auto_Modo_Isr_Enable();
	
	Wdt_Disable();
    GCC_CLRWDT();
    GCC_HALT();
	
	{
	    Oscillators_Cfg_t oscCfg;
	    oscCfg.haltMode = HALT_MODE_SLEEP;
	    oscCfg.irc2     = IRC2_HIRC_4MHZ;
	    Oscillators_Cfg(&oscCfg);
	}
	
	AFE_IO_WAKEUP_SLEEP_INIT();
	Wdt_Enable(WDT_TIME_1024MS);
	
    sum                 = 0;
    cgmApi.isMeaCurrent = true;

    // WE1
    adcAvgWE1 = 0;
    adcCntWE1 = 0;
    lastNaWe1Raw = cgmApi.currentNaWe1Raw;
}

void CurrentWe2Start()
{

}

void BatVolPolling()
{
    // if (adc24SourceData.flag.b.isReady)
    // {
    //     adc24SourceData.flag.b.isReady = 0;
    //     sum += adc24SourceData.data.adcData / 256;    // get high 16 bit data
    //     if (adc24SourceData.samplingCnt >= (3 + 8))
    //     {
    //         sum           = sum / 8;
    //         cgmApi.batVol = sum * 1875 / 32768;
    //         Adc24_Disable();
    //         // There are data updates
    //         cgmApi.isDataUpdate = true;
    //         DRDY_Ready();
    //         GCC_DELAY(3000);    // 3ms wait BLE WakeUp
    //     }
    // }
}

void TemperaturePolling()
{
    volatile int8_t *dataP = adcAutoModeBufP;	if (adc24SourceData.flag.b.isAutoModeReady)
    {
        adc24SourceData.flag.b.isAutoModeReady = 0;
        {
            uint8_t i                = 0;
            volatile int32_t dataSum = 0;
            for (i = 0; i < ADC_DATA_LEN; i++)
            {
                adc24SourceDataBuf[i].data.byte.byteLow  = 0;
                adc24SourceDataBuf[i].data.byte.byteMid  = *dataP++;
                adc24SourceDataBuf[i].data.byte.byteHigh = *dataP++;
                adc24SourceDataBuf[i].data.byte.byteRes  = *dataP++;

                adc24SourceDataBuf[i].data.adcData >>= 16;//(8+8)
                dataSum += adc24SourceDataBuf[i].data.adcData;
            }
            dataSum /= 8;
            //dataSum *= (-1);
         	//Volatile uint16_t NtcMv = (sum * 3300/32768);
         	cgmApi.temperatureRes = (int32_t)cgmApi.temperatureRfRes * dataSum / (32768 - dataSum);
          	
          	PIN_PA1_AIN1();
     
          	// There are data updates
           	cgmApi.isDataUpdate = true;
           	DRDY_Ready();
           	GCC_DELAY(3000);    // 3ms wait BLE WakeUp
        }
    }
}

void CurrentWe1Polling()
{
    if (adc24SourceData.flag.b.isAutoModeReady)
    {
        adc24SourceData.flag.b.isAutoModeReady = 0;
        
        {
            uint8_t i              = 0;
            volatile int8_t *dataP = adcAutoModeBufP;
            for (i = 0; i < ADC_DATA_LEN; i++)
            {
                adc24SourceDataBuf[i].data.byte.byteLow  = 0;
                adc24SourceDataBuf[i].data.byte.byteMid  = *dataP++;
                adc24SourceDataBuf[i].data.byte.byteHigh = *dataP++;
                adc24SourceDataBuf[i].data.byte.byteRes  = *dataP++;

                adc24SourceDataBuf[i].data.adcData >>= 16;//(8+8)
            }
        }
        
        // Remove the maximum and minimum values and find the average
        int32_t dataMin          = INT32_MAX;
        int32_t dataMax          = INT32_MIN;
        int32_t dataSum = 0;
        int32_t adcDataWE1 = 0;
	     {
	        uint8_t i;
	        for (i = 0; i < ADC_DATA_LEN; i++)
	        {
	            adcDataWE1 = adc24SourceDataBuf[i].data.adcData;
	            if (dataMin > adcDataWE1)
	            {
	                dataMin = adcDataWE1;
	            }
	            if (dataMax < adcDataWE1)
	            {
	                dataMax = adcDataWE1;
	            }
	            dataSum += adcDataWE1;
	        }
	        dataSum -= (dataMin + dataMax);
	        dataSum /= (ADC_DATA_LEN - 2);
        }
#if 0
        volatile double dataK      = (double)78125 / (double)65536;
        volatile int32_t opaMv_x1k = (int32_t)((double)dataSum * dataK);    // sum * 1250*1000 / 2^19 / Gain
        cgmApi.currentNaWe1Raw     = opaMv_x1k - cgmApi.offsetNaWe1;        // Voltage amplification 10 times
#elif MEASURE_CURRENT
        volatile int32_t opaMv_x10 = dataSum * 625 * 5 / 8192 / 1;    // Sum * 1250*10 / 32768 / Gain = sum * 1250*10 / 32768 / Gain

    #if USE_UART
        cgmApi.isDataUpdate = true;
        DRDY_Ready();    // After the TxLoop is moved to the current calculation, wake up BLE in advance to save time and reduce power consumption. Ensure that the calculation time can wake up BLE but not too long
    #endif
		
		if(_fbr1c)//OPA1 內部反馈电阻连接控制
		{
			if(_fbr1s2 == 0 && _fbr1s1 == 0 && _fbr1s0 == 0)
			{
				cgmApi.we1Rf = 500;//0.5M 500k
			}
			if(_fbr1s2 == 0 && _fbr1s1 == 0 && _fbr1s0 == 1)
			{
				cgmApi.we1Rf = 1000;//1M 1000k
			}
			if(_fbr1s2 == 0 && _fbr1s1 == 1 && _fbr1s0 == 0)
			{
				cgmApi.we1Rf = 2000;//2M 2000k
			}
			if(_fbr1s2 == 0 && _fbr1s1 == 1 && _fbr1s0 == 1)
			{
				cgmApi.we1Rf = 4000;//4M 4000k
			}
			if(_fbr1s2 == 1 && _fbr1s1 == 0 && _fbr1s0 == 0)
			{
				cgmApi.we1Rf = 8000;//8M 8000k
			}
				
		}
		
        cgmApi.currentNaWe1Raw = opaMv_x10 * 10 * 1000 / cgmApi.we1Rf - cgmApi.offsetNaWe1;    // OpaMv / OPA_R_MOhm - offsetNA
        cgmApi.currentNaWe1Cal = (int32_t)cgmApi.currentNaWe1Raw * cgmApi.we1CalPara / 10000;
#endif

        // Sending current data
        cgmApi.isDataUpdate = true;
    }
}

void CurrentWe2Polling()
{

}

void ThirdElAfeInit()
{
	// ThirdElAfeCfg afePower
    AfePower_t afePower;
    afePower.dacRefVol     = DAC_REF_VIREF;
    afePower.dacVrefSelect = DAC_VREF_1_25V;    // 1.25V or 1.83V
    afePower.vrefData      = cgmApi.virefData;
    afePower.irefEn        = IREF_ENABLE;

    afePower.dac1.modeControl = DAC_MODE_ENABLE;
    afePower.dac1.data        = cgmApi.dac1Data;

    afePower.dac3.modeControl = DAC_MODE_ENABLE;
    afePower.dac3.data        = cgmApi.dac3Data;

    // ThirdElAfeCfg opa
    OpaCfg_t opa;
    opa.opa1.enable      = OPA_ENABLE;
    opa.opa1.feedbackRes = FB_RES_NOT_CONNECTED;

    opa.opa3Enable = OPA_ENABLE;

    ThirdElAfeCfg(afePower, opa);
}

void Sys_Afe()
{
    if (cgmApi.workStep == STEP_AFE_ENABLE)
    {
        ThirdElAfeInit();

        cgmApi.workStep++;
    }
    else if (cgmApi.workStep == STEP_WAITING_MEASURE)
    {
        if (cgmApi.dataType)
        {
            cgmApi.workStep++;
            cgmApi.workStatus = STATUS_INIT;
        }
    }
    else if (cgmApi.workStep == STEP_DATA_MEASURE)
    {
        if (cgmApi.dataType & DATATYPE_CURRENT_WE1)
        {
            if (cgmApi.workStatus == STATUS_INIT)
            {
                CurrentWe1Start();
                cgmApi.workStatus++;
            }
            else if (cgmApi.workStatus == STATUS_STATE)
            {
                CurrentWe1Polling();
            }
        }
        else if (cgmApi.dataType & DATATYPE_BATVOL)
        {
            if (cgmApi.workStatus == STATUS_INIT)
            {
                BatVolStart();
                cgmApi.workStatus++;
            }
            else if (cgmApi.workStatus == STATUS_STATE)
            {
                BatVolPolling();
            }
        }
        else if (cgmApi.dataType & DATATYPE_TEMPERATURE)
        {
            if (cgmApi.workStatus == STATUS_INIT)
            {
                TemperatureStart();
                cgmApi.workStatus++;
            }
            else if (cgmApi.workStatus == STATUS_STATE)
            {
                TemperaturePolling();
            }
        }

        else if (cgmApi.dataType & DATATYPE_CURRENT_WE2)
        {
            if (cgmApi.workStatus == STATUS_INIT)
            {
                CurrentWe2Start();
                cgmApi.workStatus++;
            }
            else if (cgmApi.workStatus == STATUS_STATE)
            {
                CurrentWe2Polling();
            }
        }
        // Complete data measurement
        if (cgmApi.dataType == 0)
        {
            cgmApi.workStep = STEP_WAITING_MEASURE;
        }
    }
}

void Sys_Calibrite()
{
    if (cgmApi.workStep == STEP_CAL_VOLTAGE)
    {
        if (cgmApi.workStatus == STATUS_INIT)
        {
            // The default is 3 electrode
            ThirdElAfeInit();

            CurrentWe1Start();

            cgmApi.offsetNaWe1 = 0;    // Reset offset

            cgmApi.workStatus++;
        }
        else if (cgmApi.workStatus == STATUS_STATE)
        {
            // Automatic calibration we1 offset
            CurrentWe1Polling();
            if (cgmApi.isDataUpdate)
            {
                cgmApi.offsetNaWe1        = cgmApi.currentNaWe1Raw;
                cgmApi.calibratedIdOffset = 0x55;
                Eeprom_WriteBuf(EEPROM_OFFSET_ADDRESS, (uint8_t *)&cgmApiP->calibratedIdOffset, EEPROM_OFFSET_SIZE);
                Eeprom_ReadBuff(EEPROM_OFFSET_ADDRESS, (uint8_t *)&cgmApiP->calibratedIdOffset, EEPROM_OFFSET_SIZE);
                GCC_DELAY(2000);    // 2ms wait BLE WakeUp
                cgmApi.workStatus++;
            }
        }
        else if (cgmApi.workStatus == STATUS_FINISH)
        {
        }
        return;
    }
    if (cgmApi.workStep == STEP_CAL_CURRENT)
    {
        if (cgmApi.dataType & DATATYPE_CURRENT_WE1)
        {
            if (cgmApi.workStatus == STATUS_INIT)
            {
                CurrentWe1Start();
                cgmApi.workStatus++;
            }
            else if (cgmApi.workStatus == STATUS_STATE)
            {
                CurrentWe1Polling();
                if (cgmApi.isDataUpdate)
                {
                    cgmApi.dataType &= ~DATATYPE_CURRENT_WE1;
                    cgmApi.workStatus = STATUS_INIT;
                    if (cgmApi.dataType)
                    {
                        cgmApi.isDataUpdate = false;
                    }
                    else
                    {
                        Eeprom_WriteBuf(EEPROM_WE1RF_ADDRESS, (uint8_t *)&cgmApi.we1Rf, EEPROM_WE1RF_SIZE);
                        GCC_DELAY(2000);    // 2ms wait BLE WakeUp
                    }
                }
            }
            return;
        }
        if (cgmApi.dataType & DATATYPE_CURRENT_WE2)
        {
            if (cgmApi.workStatus == STATUS_INIT)
            {
                CurrentWe2Start();
                cgmApi.workStatus++;
            }
            else if (cgmApi.workStatus == STATUS_STATE)
            {
                CurrentWe2Polling();
                if (cgmApi.isDataUpdate)
                {
                    cgmApi.dataType &= ~DATATYPE_CURRENT_WE2;
                    Eeprom_WriteBuf(EEPROM_WE1RF_ADDRESS, (uint8_t *)&cgmApi.we1Rf, EEPROM_WE1RF_SIZE);
                }
            }
            return;
        }
    }
}

void Work_Mode_Polling()
{
    switch (cgmApi.workMode)
    {
        case MODE_AFE:
            Sys_Afe();
            break;
        case MODE_CALIBRATE:
            Sys_Calibrite();
            break;

        case MODE_NULL:
            break;
        case MODE_NORMAL:
            break;
        case MODE_PROFESSION:
            break;
        default:
            break;
    }
}
