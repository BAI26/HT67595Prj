#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdbool.h>
#include <stdlib.h>

#include "RegHT32F675x5.h"
#include "err_def.h"
#include "app_cfg.h"
#include "boards.h"
#include "utility.h"
#include "hw_gpio.h"
#include "hw_pmu.h"
#include "hw_sys_ctrl.h"
#include "err_def.h"

#include "..\driver\uart.h"
#include "afe_protocol.h"

uint32_t restartNumBLE = 0xFFFFFFFF;

uint8_t readWrite;
uint8_t parameterAddress;
uint32_t parameterValue;
uint8_t parameterOperationStatus;

uint32_t bleSendAfeDataInterval;    // Initialize with BLE interval for sending AFE data
uint32_t afeCollectionInterval;     // Initialize with AFE collection interval

HistoryOperationType historyOperationType;
uint16_t historyNumReadRecords;

volatile AfeData afeData;

static uint8_t rxBuf[32];
static uint8_t txBuf[32];

typedef enum {
    MEASURE_BAT  = (1 << 0),
    MEASURE_TEMP = (1 << 1),
    MEASURE_WE1  = (1 << 2),
    MEASURE_WE2  = (1 << 3),
} Measure_Mode_e;

uint8_t GetCheckLRC(uint8_t *buf, uint8_t startN, uint8_t endN)
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

// UART
#define DEVICE_TX_FRAME_HEAD 0x55
#define DEVICE_RX_FRAME_HEAD 0xAA

typedef enum {
    UART_REV_STATE_FOUND_Null,
    UART_REV_STATE_FOUND_Head,
    UART_REV_STATE_FOUND_Len,
    UART_REV_STATE_FOUND_Cmd,
} mcu_uart_rev_state_type_e;

static uint8_t revState;
static uint8_t dataLen;
static uint8_t cmd;
static uint8_t rxCount;

static bool ProtocolUnPack(uint8_t data)
{
    switch (revState)
    {
        case UART_REV_STATE_FOUND_Null:
            if (data == DEVICE_RX_FRAME_HEAD || data == DEVICE_TX_FRAME_HEAD)
            {
                memset((uint8_t *)rxBuf, 0, 0x0D);
                dataLen          = 0;
                rxCount          = 0;
                cmd              = 0;
                rxBuf[rxCount++] = data;
                revState         = UART_REV_STATE_FOUND_Head;
            }
            else
            {
                INFO("!!!error AFE UART Protocol HEAD %u\r\n", data);
            }
            break;
        case UART_REV_STATE_FOUND_Head:
            if (data == 0x0D)    // Fixed length of 13
            {
                rxBuf[rxCount++] = data;
                dataLen          = data;
                revState         = UART_REV_STATE_FOUND_Len;
            }
            else
            {
                INFO("!!!error AFE UART Protocol LEN %u\r\n", data);
                revState = UART_REV_STATE_FOUND_Null;
            }
            break;
        case UART_REV_STATE_FOUND_Len:
            rxBuf[rxCount++] = data;
            cmd              = data;
            revState         = UART_REV_STATE_FOUND_Cmd;
            break;
        case UART_REV_STATE_FOUND_Cmd:
            rxBuf[rxCount++] = data;
            if (rxCount == dataLen)
            {
                revState         = UART_REV_STATE_FOUND_Null;
                uint8_t checkLRC = 0;
                checkLRC         = GetCheckLRC(rxBuf, 0, dataLen - 2);
                if (checkLRC == rxBuf[dataLen - 1])
                {
                    return true;
                }
                else
                {
                    INFO("!!!error AFE UART Protocol CheckLRC %u\r\n", checkLRC);
                }
            }
            break;
        default:
            break;
    }
    return false;
}

static void start_measure(Measure_Mode_e mode)
{
    uint8_t len  = 0;
    txBuf[len++] = 0x55;
    txBuf[len++] = 0x0D;
    txBuf[len++] = 0xD1;
    txBuf[len++] = (uint8_t)mode;
    txBuf[len++] = 0x00;    // Resistance value of voltage divider resistor of temperature measurement circuit-low 8-bit reserved bit
    txBuf[len++] = 0x00;    // Resistance value of voltage divider resistor of temperature measurement circuit-high 8-bit reserved bit
    txBuf[len++] = 0x00;
    txBuf[len++] = 0x00;
    txBuf[len++] = 0x00;
    txBuf[len++] = 0x00;
    txBuf[len++] = 0x00;
    txBuf[len++] = 0x00;
    txBuf[len++] = GetCheckLRC(txBuf, 0, txBuf[1] - 2);
#if USE_UART
    // CGM Send Start Measure By UART
    uart_send_bytes(txBuf, txBuf[1]);

    INFO("Start Measure: ");
    uint8_t i = 0;
    for (i = 0; i < len; i++)
    {
        PRINTF("%02X ", txBuf[i]);
    }
    PRINTF("\r\n");
#endif
}

void afe_start_measure_we1()
{
    start_measure(MEASURE_WE1);
}

uint8_t unpack_afe_protocol_buf(uint8_t *pu8Data, uint8_t len)
{
    uint8_t i      = 0;
    bool isRxFrame = false;
    for (i = 0; i < len; i++)
    {
        isRxFrame = ProtocolUnPack(pu8Data[i]);
        if (isRxFrame)
        {
            // APP → BLE → AFE
            if (rxBuf[0] == DEVICE_TX_FRAME_HEAD)
            {
                if (rxBuf[2] == HALL_LATCH_CONTROL_CMD)
                {
                    afeData.hallLatchStatus = rxBuf[3];

                    // Print the received data for debugging
                    PRINTF("=====================HALL_LATCH_CONTROL_CMD SET=======================\r\n");
                    PRINTF("hallLatchStatus Data: 0x%02X\r\n", afeData.hallLatchStatus);
                    PRINTF("================================================\r\n");
                    return rxBuf[2];
                }
                if (rxBuf[2] == CALIBRATE_VOLTAGE_CMD)
                {
                    afeData.DACVREF_Data = rxBuf[3];
                    afeData.DAC0O_Data   = (rxBuf[5] << 8) | rxBuf[4];
                    afeData.DAC1O_Data   = (rxBuf[7] << 8) | rxBuf[6];
                    afeData.DAC2O_Data   = (rxBuf[9] << 8) | rxBuf[8];
                    afeData.DAC3O_Data   = (rxBuf[11] << 8) | rxBuf[10];

                    // Print the received data for debugging
                    PRINTF("=====================CALIBRATE_VOLTAGE_CMD SET=======================\r\n");
                    PRINTF("DACVREF Data: 0x%02X\r\n", afeData.DACVREF_Data);
                    PRINTF("DAC0O Data: %u\r\n", afeData.DAC0O_Data);
                    PRINTF("DAC1O Data: %u\r\n", afeData.DAC1O_Data);
                    PRINTF("DAC2O Data: %u\r\n", afeData.DAC2O_Data);
                    PRINTF("DAC3O Data: %u\r\n", afeData.DAC3O_Data);
                    PRINTF("================================================\r\n");
                    return rxBuf[2];
                }
                if (rxBuf[2] == CALIBRATE_CURRENT_CMD)
                {
                    return rxBuf[2];
                }
                if (rxBuf[2] == MEASURE_CMD)
                {
                    afeData.dataTypeTT = rxBuf[3];
                    afeData.Voltage_Divider_Resistor = (rxBuf[5] << 8) | rxBuf[4];
                    return rxBuf[2];
                }
                if (rxBuf[2] == STORE_DATA_CMD)
                {
                    return rxBuf[2];
                }
                if (rxBuf[2] == RESTART_RECORD_CMD)
                {
                    return rxBuf[2];
                }
                if(rxBuf[2] == PARAMETER_SETTING_CMD)
                {
                    readWrite        = pu8Data[3];
                    parameterAddress = pu8Data[4];
                    parameterValue   = pu8Data[5] | (pu8Data[6] << 8);
                    return rxBuf[2];
                }
                if(rxBuf[2] == READ_HISTORICAL_DATA_CMD)
                {
                    historyOperationType = pu8Data[3];
                    historyNumReadRecords = pu8Data[4] | (pu8Data[5] << 8);
                    return rxBuf[2];
                }
            }
            // AFE → BLE → APP
            else if (rxBuf[0] == DEVICE_RX_FRAME_HEAD)
            {
                if (rxBuf[2] == CALIBRATE_VOLTAGE_CMD)
                {
                    afeData.DACVREF_Data = rxBuf[3];
                    afeData.DAC0O_Data   = (rxBuf[5] << 8) | rxBuf[4];
                    afeData.DAC1O_Data   = (rxBuf[7] << 8) | rxBuf[6];
                    afeData.DAC2O_Data   = (rxBuf[9] << 8) | rxBuf[8];
                    afeData.DAC3O_Data   = (rxBuf[11] << 8) | rxBuf[10];

                    // Print the received data for debugging
                    PRINTF("=====================CALIBRATE_VOLTAGE_CMD RETURN=======================\r\n");
                    PRINTF("DACVREF Data: 0x%02X\r\n", afeData.DACVREF_Data);
                    PRINTF("DAC0O Data: %u\r\n", afeData.DAC0O_Data);
                    PRINTF("DAC1O Data: %u\r\n", afeData.DAC1O_Data);
                    PRINTF("DAC2O Data: %u\r\n", afeData.DAC2O_Data);
                    PRINTF("DAC3O Data: %u\r\n", afeData.DAC3O_Data);
                    PRINTF("================================================\r\n");
                    return rxBuf[2];
                }
                if (rxBuf[2] == CALIBRATE_CURRENT_CMD)
                {
                    afeData.Feedback_Resistor1 = (rxBuf[4] << 8) | rxBuf[3];
                    afeData.K1                 = (rxBuf[6] << 8) | rxBuf[5];
                    afeData.Feedback_Resistor2 = (rxBuf[8] << 8) | rxBuf[7];
                    afeData.K2                 = (rxBuf[10] << 8) | rxBuf[9];

                    // Print the received data for debugging
                    PRINTF("=====================CALIBRATE_CURRENT_CMD=======================\r\n");
                    PRINTF("Feedback Resistor 1: %u kR\r\n", afeData.Feedback_Resistor1);
                    PRINTF("K1: %u\r\n", afeData.K1);
                    PRINTF("Feedback Resistor 2: %u kR\r\n", afeData.Feedback_Resistor2);
                    PRINTF("K2: %u\r\n", afeData.K2);
                    PRINTF("================================================\r\n");
                    return rxBuf[2];
                }
                if (rxBuf[2] == MEASURE_CMD)
                {
                    afeData.Valid_Data_Type      = rxBuf[3];
                    //afeData.Battery_Voltage_Data = (rxBuf[5] << 8) | rxBuf[4]; // Measure battery voltage using BLE
#if !NTC_MEASURE_BY_BLE
                    afeData.Temperature_Data     = (rxBuf[7] << 8) | rxBuf[6];
#endif
                    afeData.Current_WE1_Data     = (rxBuf[9] << 8) | rxBuf[8];
                    afeData.Current_WE2_Data     = (rxBuf[11] << 8) | rxBuf[10];

                    // Print the received data for debugging
                    PRINTF("=====================MEASURE_CMD=======================\r\n");
                    PRINTF("Valid Data Type: 0x%2X\r\n", afeData.Valid_Data_Type);
                    //PRINTF("Battery Voltage: %u/100 mV\r\n", afeData.Battery_Voltage_Data);
                    #if !NTC_MEASURE_BY_BLE
                    PRINTF("Temperature Data: %d/10 \r\n", afeData.Temperature_Data);
                    #endif
                    PRINTF("WE1 Current: %d/100 nA\r\n", afeData.Current_WE1_Data);
                    PRINTF("WE2 Current: %d/100 nA\r\n", afeData.Current_WE2_Data);
                    PRINTF("================================================\r\n");
                    return rxBuf[2];
                }
                if (rxBuf[2] == STORE_DATA_CMD)
                {
                    PRINTF("=====================STORE_DATA_CMD=======================\r\n");
                    PRINTF("0xD2 TODO !!!");
                    PRINTF("================================================\r\n");
                    return rxBuf[2];
                }
                if (rxBuf[2] == RESTART_RECORD_CMD)
                {
                    afeData.restartNum_WR = rxBuf[3];
                    afeData.restartNum    = (uint32_t)(rxBuf[4]) |    // Lowest byte (0-7 bits)
                        ((uint32_t)(rxBuf[5]) << 8) |                 // Next byte (8-15 bits)
                        ((uint32_t)(rxBuf[6]) << 16) |                // Next byte (16-23 bits)
                        ((uint32_t)(rxBuf[7]) << 24);                 // Highest byte (24-31 bits)

                    // Print output
                    PRINTF("=====================STORE_DATA_CMD=======================\r\n");
                    PRINTF("AFE Power Up Count: %u\r\n", afeData.restartNum);    // Print the AFE power-up count
                    PRINTF("================================================\r\n");
                    return rxBuf[2];
                }
                if (rxBuf[2] == PARAMETER_SETTING_CMD)
                {
                    readWrite                = rxBuf[3];                                  // Read/Write flag (0: read, 1: write)
                    parameterOperationStatus = rxBuf[4];                                  // Read/Write result
                    parameterAddress         = rxBuf[5];                                  // Parameter address
                    parameterValue           = (uint32_t)(rxBuf[6] | (rxBuf[7] << 8));    // Convert parameter value to uint32_t

                    // Print debug information
                    printf("=====================PARAMETER_SETTING_CMD=======================\r\n");
                    printf("Read/Write Flag: %u\r\n", readWrite);                    // Print the read/write flag
                    printf("Operation Status: %u\r\n", parameterOperationStatus);    // Print the operation status
                    printf("Parameter Address: 0x%2X\r\n", parameterAddress);        // Print the parameter address
                    printf("Parameter Value: 0x%2X\r\n", parameterValue);            // Print the parameter value
                    printf("================================================\r\n");
                    return rxBuf[2];
                }
            }
        }
    }
    return 0x00;
}

bool update_afe_protocol_buf(CommandType cmd, uint8_t *pu8Data, uint8_t len)
{
    if (len > 13 || (cmd != HALL_LATCH_CONTROL_CMD && cmd != CALIBRATE_VOLTAGE_CMD && cmd != CALIBRATE_CURRENT_CMD && cmd != MEASURE_CMD && cmd != STORE_DATA_CMD && cmd != RESTART_RECORD_CMD && cmd != PARAMETER_SETTING_CMD))
    {
        INFO("Error: Array length is less than 13 bytes or invalid command.\n");
        return false;
    }
    pu8Data[0] = 0xAA;
    pu8Data[1] = 0x0D;

    pu8Data[2] = cmd;
    if (cmd == HALL_LATCH_CONTROL_CMD)
    {
        pu8Data[3]  = afeData.hallLatchStatus;
        pu8Data[4]  = 0x00;
        pu8Data[5]  = 0x00;
        pu8Data[6]  = 0x00;
        pu8Data[7]  = 0x00;
        pu8Data[8]  = 0x00;
        pu8Data[9]  = 0x00;
        pu8Data[10] = 0x00;
        pu8Data[11] = 0x00;
    }
    if (cmd == CALIBRATE_VOLTAGE_CMD)
    {
        pu8Data[3]  = afeData.DACVREF_Data;
        pu8Data[4]  = (uint8_t)(afeData.DAC0O_Data & 0xFF);
        pu8Data[5]  = (uint8_t)(afeData.DAC0O_Data >> 8);
        pu8Data[6]  = (uint8_t)(afeData.DAC1O_Data & 0xFF);
        pu8Data[7]  = (uint8_t)(afeData.DAC1O_Data >> 8);
        pu8Data[8]  = (uint8_t)(afeData.DAC2O_Data & 0xFF);
        pu8Data[9]  = (uint8_t)(afeData.DAC2O_Data >> 8);
        pu8Data[10] = (uint8_t)(afeData.DAC3O_Data & 0xFF);
        pu8Data[11] = (uint8_t)(afeData.DAC3O_Data >> 8);
    }
    if (cmd == CALIBRATE_CURRENT_CMD)
    {
        pu8Data[3]  = (uint8_t)(afeData.Current_WE1_1 & 0xFF);
        pu8Data[4]  = (uint8_t)(afeData.Current_WE1_1 >> 8);
        pu8Data[5]  = (uint8_t)(afeData.Current_WE1_2 & 0xFF);
        pu8Data[6]  = (uint8_t)(afeData.Current_WE1_2 >> 8);
        pu8Data[7]  = (uint8_t)(afeData.Current_WE2_1 & 0xFF);
        pu8Data[8]  = (uint8_t)(afeData.Current_WE2_1 >> 8);
        pu8Data[9]  = (uint8_t)(afeData.Current_WE2_2 & 0xFF);
        pu8Data[10] = (uint8_t)(afeData.Current_WE2_2 >> 8);
        pu8Data[11] = 0x00;
    }
    if (cmd == MEASURE_CMD)
    {
        // Valid Data Type
        pu8Data[3] = afeData.Valid_Data_Type;
        // Battery Voltage Data
        pu8Data[4] = (uint8_t)((afeData.Battery_Voltage_Data) & 0xFF);
        pu8Data[5] = (uint8_t)((afeData.Battery_Voltage_Data) >> 8);
        // Temperature Data
        pu8Data[6] = (uint8_t)((afeData.Temperature_Data) & 0xFF);
        pu8Data[7] = (uint8_t)((afeData.Temperature_Data) >> 8);
        // WE1 Current Data
        pu8Data[8] = (uint8_t)((afeData.Current_WE1_Data) & 0xFF);
        pu8Data[9] = (uint8_t)((afeData.Current_WE1_Data) >> 8);
        // WE2 Current Data
        pu8Data[10] = (uint8_t)((afeData.Current_WE2_Data) & 0xFF);
        pu8Data[11] = (uint8_t)((afeData.Current_WE2_Data) >> 8);
    }
    if (cmd == RESTART_RECORD_CMD)
    {
        pu8Data[3] = afeData.restartNum_WR;
        pu8Data[4] = (uint8_t)(afeData.restartNum & 0xFF);            // Lowest byte (0-7 bits)
        pu8Data[5] = (uint8_t)((afeData.restartNum >> 8) & 0xFF);     // Next byte (8-15 bits)
        pu8Data[6] = (uint8_t)((afeData.restartNum >> 16) & 0xFF);    // Next byte (16-23 bits)
        pu8Data[7] = (uint8_t)((afeData.restartNum >> 24) & 0xFF);    // Highest byte (24-31 bits)
    }
    if (cmd == PARAMETER_SETTING_CMD)
    {
        pu8Data[3] = readWrite;                                  // Read/Write flag
        pu8Data[4] = parameterOperationStatus;                   // Read/Write result
        pu8Data[5] = parameterAddress;                           // Parameter address
        pu8Data[6] = (uint8_t)(parameterValue & 0xFF);           // Lower byte
        pu8Data[7] = (uint8_t)((parameterValue >> 8) & 0xFF);    // Higher byte
    }
    // Calculate and fill the checkLRC
    pu8Data[12] = GetCheckLRC(pu8Data, 0, pu8Data[1] - 2);
    
    INFO("First 13 bytes of pu8Data:\n");
    uint8_t i = 0;
    for (i = 0; i < 13; i++) {
        printf("%02X ", pu8Data[i]);
    }
    printf("\n");

    return true;
}

void WakeUpAfe()
{
    uint32_t pu32Level = 0;
    rom_hw_gpio_get_pin_output_level(GPIO_PORT_CS, GPIO_PIN_CS, &pu32Level);
    if (0 == pu32Level)    // The last time you failed to enter hibernation, the control enters hibernation.
    {
        DISABLE_AFE_BY_CS();    // CS AFE
        rom_delay_ms(100);
    }
    ENABLE_AFE_BY_CS();    // CS AFE
    rom_delay_us(50);
    INFO("IO CS output low, wakeup afe, delay wait afe ready\r\n");
}

void SleepAfe()
{
    // rom_delay_ms(1);
    DISABLE_AFE_BY_CS();    // CS Hibernation AFE
    INFO("IO CS output high, delay 1ms wait afe ready, sleep afe\r\n");
}

uint8_t GetHallLatchControlStatus()
{
    return afeData.hallLatchStatus;
}
