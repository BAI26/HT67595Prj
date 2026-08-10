// #include <stdint.h>
#include <string.h>
#include "BH66F2455.h"
#include "..\..\board\BoardCfg.h"
#include "..\..\driver\wdt.h"
#include "..\..\driver\Uart.h"
#include "..\..\driver\Eeprom.h"
//#include "..\..\driver\Spi.h"
#include "..\..\driver\Afe.h"
#include "..\..\driver\Adc24.h"

#include "User_Protocol.h"
#include "Work_Mode_Polling.h"

// UART
#define DEVICE_TX_FRAME_HEAD 0xAA
#define DEVICE_RX_FRAME_HEAD 0x55

#if USE_SPI
volatile uint8_t spiDataStatus;
volatile uint8_t spiTxLength;
#endif

#if USE_I2C
volatile uint8_t workModeLast;
#endif

volatile uint8_t isDeepSleep;

volatile uint8_t isWaitingBleRespond;

volatile uint8_t rxBuf[32];
volatile uint8_t txBuf[32];

static uint8_t read_write;
static uint8_t parameter_address;
static uint16_t parameter_value;
static uint8_t read_write_result;

DEVICE_API_T deviceApi;

static uint8_t GetCheckLRC(volatile uint8_t *buf, uint8_t startN, uint8_t endN)
{
    uint8_t i, checkLRC;
    buf += startN;
    checkLRC = 0;
    for (i = startN; i <= endN; i++)
    {
        checkLRC += *buf++;
    }
    checkLRC = ~checkLRC + 1;
    return checkLRC;
}

void TxAfeSetParameter()
{
    // Fill the txBuf
    txBuf[0]  = DEVICE_TX_FRAME_HEAD;                   // Frame header
    txBuf[1]  = 0x0D;                                   // Frame length
    txBuf[2]  = DEVICE_SET_PARAMETER;                   // Command code
    txBuf[3]  = read_write;                             // Read/Write flag
    txBuf[4]  = read_write_result;                      // Read/Write result
    txBuf[5]  = parameter_address;                      // Parameter address
    txBuf[6]  = (parameter_value & 0x00FF);             // Parameter value low byte
    txBuf[7]  = (parameter_value >> 8) & 0x00FF;        // Parameter value high byte
    txBuf[8]  = 0x00;                                   // Reserved byte
    txBuf[9]  = 0x00;                                   // Reserved byte
    txBuf[10] = 0x00;                                   // Reserved byte
    txBuf[11] = 0x00;                                   // Reserved byte
    txBuf[12] = GetCheckLRC(txBuf, 0, txBuf[1] - 2);    // Calculate checkLRC (LRC)

    // Send data
#if USE_UART
    Uart_TxByte_Interrupt(txBuf, txBuf[1]);    // Send data via UART
#endif
#if USE_SPI
    spiDataStatus = SPI_DATA_TX_READY;    // Data ready to be sent
    spiTxLength   = txBuf[1];             // Set the length of SPI transmission
#endif
}

void TxCalVoltage()
{
    txBuf[0] = DEVICE_TX_FRAME_HEAD;
    txBuf[1] = 0x0D;                  // Length
    txBuf[2] = DEVICE_CAL_VOLTAGE;    // Type
    uint8_t i;
    uint8_t *txBufPoint = (uint8_t *)&cgmApiP->virefData;
    for (i = 3; i < 3 + 9; i++)
    {
        txBuf[i] = *txBufPoint;
        txBufPoint++;
    }
    txBuf[12] = GetCheckLRC(txBuf, 0, txBuf[1] - 2);
#if USE_UART
    Uart_TxByte_Interrupt(txBuf, txBuf[1]);
#endif
#if USE_SPI
    spiDataStatus = SPI_DATA_TX_READY;    // Data ready, send data from txBuf when receive 0x 00
    spiTxLength   = txBuf[1];
#endif
}

void TxCalCurrent()
{
    txBuf[0]  = DEVICE_TX_FRAME_HEAD;
    txBuf[1]  = 0x0D;                  // Length
    txBuf[2]  = DEVICE_CAL_CURRENT;    // Type
    txBuf[3]  = cgmApiP->currentNaWe1Raw & 0x00ff;
    txBuf[4]  = (cgmApiP->currentNaWe1Raw & 0xff00) >> 8;
    txBuf[5]  = cgmApiP->currentNaWe1Cal & 0x00ff;
    txBuf[6]  = (cgmApiP->currentNaWe1Cal & 0xff00) >> 8;
    txBuf[7]  = cgmApiP->currentNaWe2Raw & 0x00ff;
    txBuf[8]  = (cgmApiP->currentNaWe2Raw & 0xff00) >> 8;
    txBuf[9]  = cgmApiP->currentNaWe2Cal & 0x00ff;
    txBuf[10] = (cgmApiP->currentNaWe2Cal & 0xff00) >> 8;
    txBuf[11] = 0x00;
    txBuf[12] = GetCheckLRC(txBuf, 0, txBuf[1] - 2);
#if USE_UART
    Uart_TxByte_Interrupt(txBuf, txBuf[1]);
#endif
#if USE_SPI
    spiDataStatus = SPI_DATA_TX_READY;    // Data ready, send data from txBuf when receive 0x 00
    spiTxLength   = txBuf[1];
#endif
}

void TxRestartNum()
{
    txBuf[0]  = DEVICE_TX_FRAME_HEAD;
    txBuf[1]  = 0x0D;                  // Length
    txBuf[2]  = RESTART_RECORD_CMD;    // Type
    txBuf[3]  = cgmApiP->restartNum_WR;
    txBuf[4]  = (uint8_t)(cgmApiP->restartNum & 0xFF);          // Lowest byte (0-7 bits)
	txBuf[5]  = (uint8_t)((cgmApiP->restartNum >> 8) & 0xFF);   // Next byte (8-15 bits)
	txBuf[6]  = (uint8_t)((cgmApiP->restartNum >> 16) & 0xFF);  // Next byte (16-23 bits)
	txBuf[7]  = (uint8_t)((cgmApiP->restartNum >> 24) & 0xFF);  // Highest byte (24-31 bits)
    txBuf[8]  = 0x00;
    txBuf[9]  = 0x00;
    txBuf[10] = 0x00;
    txBuf[11] = 0x00;
    txBuf[12] = GetCheckLRC(txBuf, 0, txBuf[1] - 2);
#if USE_UART
    Uart_TxByte_Interrupt(txBuf, txBuf[1]);
#endif
#if USE_SPI
    spiDataStatus = SPI_DATA_TX_READY;    // Data ready, send data from txBuf when receive 0x 00
    spiTxLength   = txBuf[1];
#endif
}

void TxAfeMeasureData()
{
    txBuf[0] = DEVICE_TX_FRAME_HEAD;
    txBuf[1] = 0x0D;                       // Length
    txBuf[2] = DEVICE_AFE_MEASURE_DATA;    // Type
    if (cgmApiP->dataType & DATATYPE_BATVOL)
    {
        deviceApi.flagAfe.b.isStartBatVol = true;
        cgmApiP->dataType &= (~DATATYPE_BATVOL);
    }
    if (cgmApiP->dataType & DATATYPE_TEMPERATURE)
    {
        deviceApi.flagAfe.b.isStartTemperatureRes = true;
        cgmApiP->dataType &= (~DATATYPE_TEMPERATURE);
    }
    if (cgmApiP->dataType & DATATYPE_CURRENT_WE1)
    {
        deviceApi.flagAfe.b.isStartWe1Current = true;
        cgmApiP->dataType &= (~DATATYPE_CURRENT_WE1);
    }
    if (cgmApiP->dataType & DATATYPE_CURRENT_WE2)
    {
        deviceApi.flagAfe.b.isStartWe2Current = true;
        cgmApiP->dataType &= (~DATATYPE_CURRENT_WE2);
    }
    txBuf[3] = deviceApi.flagAfe.byte;    // Data Type
    uint8_t i;
    uint8_t *txBufPoint;
    txBufPoint = (uint8_t *)&cgmApiP->batVol;
    for (i = 4; i < 4 + 8; i++)
    {
        txBuf[i] = *txBufPoint;
        txBufPoint++;
    }
    txBuf[12] = GetCheckLRC(txBuf, 0, txBuf[1] - 2);
#if USE_UART
    Uart_TxByte_Interrupt(txBuf, txBuf[1]);
#endif
#if USE_SPI
    spiDataStatus = SPI_DATA_TX_READY;    // Data ready, send data from txBuf when receive 0x 00
    spiTxLength   = txBuf[1];
#endif
}

//void Device_ReadWriteData()
//{
//    txBuf[0]  = DEVICE_TX_FRAME_HEAD;
//    txBuf[1]  = 0x0D;                        // Length
//    txBuf[2]  = DEVICE_READ_WRITE_DATA;      // Type
//    txBuf[3]  = cgmApiP->readWriteResult;    // Data Type
//    txBuf[4]  = cgmApiP->dataAddr & 0x00ff;
//    txBuf[5]  = (cgmApiP->dataAddr & 0xff00) >> 8;
//    txBuf[6]  = cgmApiP->dataSave & 0x00ff;
//    txBuf[7]  = (cgmApiP->dataSave & 0xff00) >> 8;
//    txBuf[8]  = 0x00;
//    txBuf[9]  = 0x00;
//    txBuf[10] = 0x00;
//    txBuf[11] = 0x00;
//    txBuf[12] = GetCheckLRC(txBuf, 0, txBuf[1] - 2);
//#if USE_UART
//    Uart_TxByte_Interrupt(txBuf, txBuf[1]);
//#endif
//#if USE_SPI
//    spiDataStatus = SPI_DATA_TX_READY;    // Data ready, send data from txBuf when receive 0x 00
//    spiTxLength   = txBuf[1];
//#endif
//}

typedef enum {
    UART_REV_STATE_FOUND_Null,
    UART_REV_STATE_FOUND_Head,
    UART_REV_STATE_FOUND_Len,
    UART_REV_STATE_FOUND_Cmd,
} mcu_uart_rev_state_type_e;

static uint8_t uartRevState;
static uint8_t uartDataLen;
static uint8_t uartCmd;
static uint8_t uartRxCount;

bool ProtocolUnPack(uint8_t data)
{
    switch (uartRevState)
    {
        case UART_REV_STATE_FOUND_Null:
            if (data == DEVICE_RX_FRAME_HEAD)
            {
                //memset((uint8_t *)rxBuf, 0, sizeof(rxBuf));
                uartDataLen          = 0;
                uartRxCount          = 0;
                uartCmd              = 0;
                rxBuf[uartRxCount++] = data;
                uartRevState         = UART_REV_STATE_FOUND_Head;
            }
            break;
        case UART_REV_STATE_FOUND_Head:
            if (data == 0x0D)    // fixed length is 13
            {
                rxBuf[uartRxCount++] = data;
                uartDataLen          = data;
                uartRevState         = UART_REV_STATE_FOUND_Len;
            }
            else
            {
                uartRevState = UART_REV_STATE_FOUND_Null;
            }
            break;
        case UART_REV_STATE_FOUND_Len:
            rxBuf[uartRxCount++] = data;
            uartCmd              = data;
            uartRevState         = UART_REV_STATE_FOUND_Cmd;
            break;
        case UART_REV_STATE_FOUND_Cmd:
            rxBuf[uartRxCount++] = data;
            if (uartRxCount == uartDataLen)
            {
                uartRevState     = UART_REV_STATE_FOUND_Null;
                uint8_t checkLRC = 0;
                checkLRC         = GetCheckLRC(rxBuf, 0, uartDataLen - 2);
                if (checkLRC == rxBuf[uartDataLen - 1])
                {
                    return true;
                }
            }
            break;
        default:
            break;
    }
    return false;
}

 void Protocol_ReceiveLoop(uint8_t data)
{
    if (ProtocolUnPack(data))
    {
        switch (uartCmd)
        {
        	case DEVICE_SET_PARAMETER:
                {
                    read_write = rxBuf[3];
                    parameter_address = rxBuf[4];
                    parameter_value = (rxBuf[5] | (rxBuf[6] << 8));
                    read_write_result = OPERATION_SUCCESS;
                    if (parameter_address == AFE_VERSION)
                    {
                        if (read_write == 0)    // Read operation
                        {
                            parameter_value = VER_SOFTWAVE;    // Return software version
                        }
                        else    // Write operation
                        {
                            read_write_result = WRITE_FAILED;    // Writing not allowed, operation failed
                        }
                    }
                    else if (parameter_address == AFE_ADC_SAMPLING_RATE)
                    {
                        if (read_write == 0)    // Read operation
                        {
                            parameter_value = cgmApiP->adcSampleRateWe1;    // Return current ADC sampling rate
                        }
                        else    // Write operation
                        {
                            if (parameter_value >= ADC24_RATE_400KHZ_6HZ && parameter_value <= ADC24_RATE_400KHZ_3125HZ)
                            {
                                cgmApiP->calibratedIdAdcWe1 = 0x55;
                                cgmApiP->adcSampleRateWe1   = parameter_value;    // Set new ADC sampling rate
                                Eeprom_WriteBuf(EEPROM_ADC_WE1_ADDRESS, (uint8_t *)&cgmApiP->calibratedIdAdcWe1, 3);
                                Eeprom_ReadBuff(EEPROM_ADC_WE1_ADDRESS, (uint8_t *)&cgmApiP->calibratedIdAdcWe1, 3);
                                if ((cgmApiP->adcSampleRateWe1 != parameter_value) || (cgmApiP->calibratedIdAdcWe1 != 0x55))
                                {
                                    read_write_result = WRITE_FAILED;
                                }
                            }
                            else
                            {
                                read_write_result = INVALID_PARAMETER_VALUE;    // Invalid parameter value
                            }
                        }
                    }
                    else if (parameter_address == AFE_ADC_GAIN)
                    {
                        if (read_write == 0)    // Read operation
                        {
                            parameter_value = cgmApiP->adcGainWe1;    // Return current ADC gain
                        }
                        else    // Write operation
                        {
                            // Check if the parameter value is within the valid ADC gain configurations
                            if (parameter_value == ADC24_REFx1_GAINx1 || parameter_value == ADC24_REFx1_GAINx2 || parameter_value == ADC24_REFx1_GAINx4 || parameter_value == ADC24_REFx1_GAINx8 || parameter_value == ADC24_REFx1_GAINx16 || parameter_value == ADC24_REFx1_GAINx32 || parameter_value == ADC24_REFx1_GAINx64 || parameter_value == ADC24_REFx1_GAINx128 || parameter_value == ADC24_REFx1_GAINx256 || parameter_value == ADC24_REFx1_GAINx1BYPASS)    // Check for valid gains
                            {
                                cgmApiP->calibratedIdAdcWe1 = 0x55;
                                cgmApiP->adcGainWe1         = parameter_value;    // Set new ADC gain
                                Eeprom_WriteBuf(EEPROM_ADC_WE1_ADDRESS, (uint8_t *)&cgmApiP->adcGainWe1, 3);
                                Eeprom_ReadBuff(EEPROM_ADC_WE1_ADDRESS, (uint8_t *)&cgmApiP->adcGainWe1, 3);
                                if ((cgmApiP->adcGainWe1 != parameter_value) || (cgmApiP->calibratedIdAdcWe1 != 0x55))
                                {
                                    read_write_result = WRITE_FAILED;
                                }
                            }
                            else
                            {
                                read_write_result = INVALID_PARAMETER_VALUE;    // Invalid parameter value
                            }
                        }
                    }
                    else if(parameter_address == AFE_VREF_DATA)
                    {
                        if (read_write == 0)    // Read operation
                        {
                            parameter_value = cgmApiP->virefData;    // Return current ADC gain
                        }
                        else
                        {
                            if (parameter_value > 0 && parameter_value <= 0xFF)
                            {
                                cgmApiP->virefData = parameter_value;
                                ConfigureViref(cgmApiP->virefData);
                                Eeprom_WriteBuf(EEPROM_CALPARA_ADDRESS, (uint8_t *)&cgmApiP->virefData, 1);
                                Eeprom_ReadBuff(EEPROM_CALPARA_ADDRESS, (uint8_t *)&cgmApiP->virefData, 1);
                                if(cgmApiP->virefData != parameter_value)
                                {
                                    read_write_result = WRITE_FAILED;
                                }
                            }
                            else if(parameter_value == 0) // Only disable output without saving to EEPROM,In situations where DACVREF is needed to control the TMR LATCH.
                        	{
                        		cgmApiP->virefData = parameter_value;
                                ConfigureViref(cgmApiP->virefData);
                        	}
                            else
                            {
                                read_write_result = INVALID_PARAMETER_VALUE;    // Invalid parameter value
                            }
                        }
                    }
                    else if (parameter_address == AFE_DAC1O_DATA)
                    {
                        if (read_write == 0)    // Read operation
                        {
                            parameter_value = cgmApiP->dac1Data;    // Return current DAC1 output data
                        }
                        else    // Write operation
                        {
                            // Check if the parameter value is within the valid range for a 12-bit DAC (0-4095)
                            if (parameter_value >= 0 && parameter_value <= 4095)    // 12-bit range
                            {
                                cgmApiP->dac1Data = parameter_value;    // Update DAC1 output data
                                ConfigureDAC1(cgmApiP->dac1Data);       // Apply the new configuration to DAC1
                                Eeprom_WriteBuf(EEPROM_CALPARA_ADDRESS + 2 + 1, (uint8_t *)&cgmApiP->dac1Data, 2);
                                Eeprom_ReadBuff(EEPROM_CALPARA_ADDRESS + 2 + 1, (uint8_t *)&cgmApiP->dac1Data, 2);
                                if(cgmApiP->dac1Data != parameter_value)
                                {
                                    read_write_result = WRITE_FAILED;
                                }
                            }
                            else
                            {
                                read_write_result = INVALID_PARAMETER_VALUE;    // Invalid parameter value
                            }
                        }
                    }
                    else if (parameter_address == AFE_DAC2O_DATA)
                    {
                        if (read_write == 0)    // Read operation
                        {
                            parameter_value = cgmApiP->dac2Data;    // Return current DAC2 output data
                        }
                        else    // Write operation
                        {
                            if (parameter_value >= 0 && parameter_value <= 4095)    // 12-bit range
                            {
                                cgmApiP->dac2Data = parameter_value;    // Update DAC2 output data
                                ConfigureDAC2(cgmApiP->dac2Data);       // Apply the new configuration to DAC2
                                Eeprom_WriteBuf(EEPROM_CALPARA_ADDRESS + 2 * 2 + 1, (uint8_t *)&cgmApiP->dac2Data, 2);
                                Eeprom_ReadBuff(EEPROM_CALPARA_ADDRESS + 2 * 2 + 1, (uint8_t *)&cgmApiP->dac2Data, 2);
                                if(cgmApiP->dac2Data != parameter_value)
                                {
                                    read_write_result = WRITE_FAILED;
                                }
                            }
                            else
                            {
                                read_write_result = INVALID_PARAMETER_VALUE;    // Invalid parameter value
                            }
                        }
                    }
                    else if (parameter_address == AFE_DAC3O_DATA)
                    {
                        if (read_write == 0)    // Read operation
                        {
                            parameter_value = cgmApiP->dac3Data;    // Return current DAC3 output data
                        }
                        else    // Write operation
                        {
                            if (parameter_value >= 0 && parameter_value <= 4095)    // 12-bit range
                            {
                                cgmApiP->dac3Data = parameter_value;    // Update DAC3 output data
                                ConfigureDAC3(cgmApiP->dac3Data);       // Apply the new configuration to DAC3
                                Eeprom_WriteBuf(EEPROM_CALPARA_ADDRESS + 2 * 3 + 1, (uint8_t *)&cgmApiP->dac3Data, 2);
                                Eeprom_ReadBuff(EEPROM_CALPARA_ADDRESS + 2 * 3 + 1, (uint8_t *)&cgmApiP->dac3Data, 2);
                                if(cgmApiP->dac3Data != parameter_value)
                                {
                                    read_write_result = WRITE_FAILED;
                                }
                            }
                            else
                            {
                                read_write_result = INVALID_PARAMETER_VALUE;    // Invalid parameter value
                            }
                        }
                    }
                    else
                    {
                        read_write_result = INVALID_PARAMETER_ADDRESS;
                    }
                    deviceApi.flag1.b.isSetParameter = true;
                    cgmApiP->isDataUpdate = true;
		            DRDY_Ready();
		            GCC_DELAY(3000);//3ms wait BLE WakeUp
                }
            break;
            case DEVICE_CAL_VOLTAGE:
                cgmApiP->workMode   = MODE_CALIBRATE;
                cgmApiP->workStep   = STEP_CAL_VOLTAGE;
                cgmApiP->workStatus = STATUS_INIT;
                // 1virefData 2dac0Data 2dac1Data 2dac2Data 2dac3Data
                Eeprom_WriteBuf(EEPROM_CALPARA_ADDRESS, (uint8_t *)&rxBuf[3], 9);
                Eeprom_ReadBuff(EEPROM_CALPARA_ADDRESS, (uint8_t *)&cgmApiP->virefData, 9);
                deviceApi.flag1.b.isCalVoltage = true;
                break;
            case DEVICE_CAL_CURRENT:
                cgmApiP->workMode   = MODE_CALIBRATE;
                cgmApiP->workStep   = STEP_CAL_CURRENT;
                cgmApiP->workStatus = STATUS_INIT;
                // 2we1Rf 2we1CalPara 2we2Rf 2we2CalPara
                Eeprom_WriteBuf(EEPROM_WE1RF_ADDRESS, (uint8_t *)&rxBuf[3], 8);
                Eeprom_ReadBuff(EEPROM_WE1RF_ADDRESS, (uint8_t *)&cgmApiP->we1Rf, 8);
                cgmApiP->dataType = 0;
                if (cgmApiP->we1Rf != 0)
                {
                    cgmApiP->dataType = DATATYPE_CURRENT_WE1;
                }
                if (cgmApiP->we2Rf != 0)
                {
                    cgmApiP->dataType += DATATYPE_CURRENT_WE2;
                }
                deviceApi.flag1.b.isCalCurrent = true;
                break;
            case DEVICE_AFE_MEASURE_DATA:
                cgmApiP->workMode                  = MODE_AFE;
                cgmApiP->workStep                  = STEP_WAITING_MEASURE;
                cgmApiP->dataType                  = rxBuf[3] & 0x0f;
                cgmApiP->temperatureRfRes          = ((uint16_t)rxBuf[5] << 8) + rxBuf[4];
                deviceApi.flag1.b.isAfeMeasureData = true;
                break;
//            case DEVICE_READ_WRITE_DATA:
//                cgmApiP->readOrWriteData          = rxBuf[3];
//                cgmApiP->dataAddr                 = ((uint16_t)rxBuf[5] << 8) + rxBuf[4];
//                cgmApiP->dataSave                 = ((uint16_t)rxBuf[7] << 8) + rxBuf[6];
//                deviceApi.flag1.b.isReadWriteData = true;
//                break;
                
            case RESTART_RECORD_CMD:
            	deviceApi.flag1.b.isGetRestartNum = true;
            	cgmApiP->restartNum_WR = rxBuf[3];
            	if((cgmApiP->restartNum_WR & 0x01) == 0x01) //clear AFE restartNum
	        	{
	        		uint32_t restartNum = 0;
					Eeprom_WriteBuf(0x01FC, (uint8_t *)(&restartNum), 4);
					cgmApiP->restartNum = restartNum;
	        	}

            default:
                break;
        }
    }
}

void Protocol_TxLoop()
{
#if USE_I2C

#elif USE_UART || USE_SPI
    //	UART TX Processing
    if (!isWaitingBleRespond && !uartStatus.flag.b.isBusy)
    {
        if(deviceApi.flag1.b.isSetParameter && cgmApiP->isDataUpdate)
        {
            deviceApi.flag1.b.isSetParameter = false;
            cgmApiP->isDataUpdate            = false;
            TxAfeSetParameter();
            cgmApiP->isEnterHalt = true;
        }
        else if (deviceApi.flag1.b.isAfeMeasureData && cgmApiP->isDataUpdate)
        {
            deviceApi.flag1.b.isAfeMeasureData = false;
            cgmApiP->isDataUpdate              = false;
            TxAfeMeasureData();
            cgmApiP->isEnterHalt = true;
        }
        else if (deviceApi.flag1.b.isCalVoltage && cgmApiP->isDataUpdate)
        {
            deviceApi.flag1.b.isCalVoltage = false;
            TxCalVoltage();
            cgmApiP->isEnterHalt = true;
        }
        else if (deviceApi.flag1.b.isCalCurrent && cgmApiP->isDataUpdate)
        {
            deviceApi.flag1.b.isCalCurrent = false;
            cgmApiP->isDataUpdate          = false;
            TxCalCurrent();
            cgmApiP->isEnterHalt = true;
        }
//        else if (deviceApi.flag1.b.isReadWriteData)
//        {
//            deviceApi.flag1.b.isReadWriteData = false;
//            Device_ReadWriteData();
//            cgmApiP->isEnterHalt = true;
//        }
        else if (deviceApi.flag1.b.isGetRestartNum)
        {
        	deviceApi.flag1.b.isGetRestartNum = false;
        	cgmApiP->isDataUpdate = true;
        	DRDY_Ready();
        	GCC_DELAY(3000);    // 3ms wait BLE WakeUp
        	TxRestartNum();
        	cgmApiP->isEnterHalt = true;
        }
    }
#endif
}

void Protocol_RxLoop()
{
    // Receive data
    uint8_t data;
    
    while (Uart_IsAvailable_ReadByte(&data))
    {
    	//_pa4 = 1;//标记
    	//_pa4 = 0;
        Protocol_ReceiveLoop(data);
    }
    //_pa4 = 1;//标记
}

void DRDY_Ready()
{
    bool isDrdy = false;

#if USE_SPI
    if (spiDataStatus == SPI_DATA_TX_READY)
    {
        spiDataStatus = SPI_DATA_TX_READY_DRDY;
        isDrdy        = true;
    }
#else
    if (cgmApiP->isDataUpdate)
    {
    #if USE_I2C
        cgmApiP->isDataUpdate = false;    // Clear on Uart Tx
    #endif
        isDrdy = true;
    }
#endif

    if (isDrdy)
    {
        AFE_DRDY_LOW();
#if DRDY_LOW_PULSE
        GCC_DELAY(1000);    // 1000us low pulse indicates data is valid
        AFE_DRDY_HIGH();
#else
        // keep low
// Use calculation time instead
// GCC_DELAY(2000);
#endif
    }
}
