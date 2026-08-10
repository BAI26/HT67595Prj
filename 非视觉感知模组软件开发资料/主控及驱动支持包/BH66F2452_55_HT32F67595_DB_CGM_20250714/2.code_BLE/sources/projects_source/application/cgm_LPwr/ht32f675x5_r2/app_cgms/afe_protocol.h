#ifndef _AFE_PROTOCOL_H_
#define _AFE_PROTOCOL_H_

#include "stdint.h"
#include "stdbool.h"

#include "boards.h"

#define ENABLE_AFE_BY_CS()                                                          \
    {                                                                               \
        rom_hw_gpio_set_pin_output_level(GPIO_PORT_CS, GPIO_PIN_CS, GPIO_LEVEL_LO); \
    }
#define DISABLE_AFE_BY_CS()                                                         \
    {                                                                               \
        rom_hw_gpio_set_pin_output_level(GPIO_PORT_CS, GPIO_PIN_CS, GPIO_LEVEL_HI); \
    }

#define USE_UART 1
#define USE_SPI  0
#define USE_I2C  0

#if (USE_UART + USE_SPI + USE_I2C) != 1
    #error "Only one communication interface should be selected."
#endif

// Structure definition for the configuration data
typedef struct {
    uint8_t hallLatchStatus;              // Hall Latch Status, 0x01 lock, 0x02 unlock
    uint8_t DACVREF_Data;                 // DAC VREF Data
    uint16_t DAC0O_Data;                  // DAC0 Output Data (used with CMP)
    uint16_t DAC1O_Data;                  // DAC1 Output Data (used with OPA1)
    uint16_t DAC2O_Data;                  // DAC2 Output Data (used with OPA2)
    uint16_t DAC3O_Data;                  // DAC3 Output Data (used with OPA3)
    uint16_t Feedback_Resistor1;          // Feedback Resistor Value 1 (KO)
    uint16_t K1;                          // Calibration Coefficient K1 (amplified by 10000)
    uint16_t Feedback_Resistor2;          // Feedback Resistor Value 2 (KO)
    uint16_t K2;                          // Calibration Coefficient K2 (amplified by 10000)
    int16_t Current_WE1_1;                // Current Value for WE1 (not calibrated) (nA)
    int16_t Current_WE1_2;                // Current Value for WE1 (calibrated) (nA)
    int16_t Current_WE2_1;                // Current Value for WE2 (not calibrated) (nA)
    int16_t Current_WE2_2;                // Current Value for WE2 (calibrated) (nA)
    uint8_t Sampling_Type;                // Sampling Type (bit0: Battery Voltage, bit1: Temperature, bit2: WE1 Current, bit3: WE2 Current)
    uint16_t Voltage_Divider_Resistor;    // Resistance Value of Voltage Divider (KO)
    uint8_t Valid_Data_Type;              // Valid Data Type (bit0: Battery Voltage, bit1: Temperature, bit2: WE1 Current, bit3: WE2 Current)
    uint16_t Battery_Voltage_Data;        // Battery Voltage Data (V)
    int16_t Temperature_Data;             // Temperature Data
    int16_t Current_WE1_Data;             // WE1 Current Data (/100 nA)
    int16_t Current_WE2_Data;             // WE2 Current Data (/100 nA)
    uint8_t dataTypeTT;                   // TT Service Rx Data Type

    uint32_t restartNum;
    uint8_t restartNum_WR;
} AfeData;

// Enumeration for different command codes
typedef enum {
    NULL_CMD                 = 0x00,    // Null Command
    READ_HISTORICAL_DATA_CMD = 0xA0,    // Read Historical Data Command
    PARAMETER_SETTING_CMD    = 0xB0,    // Parameter Setting Command
    HALL_LATCH_CONTROL_CMD   = 0xC0,    // Hall Latch Control Command
    CALIBRATE_VOLTAGE_CMD    = 0xC1,    // Calibration Voltage Command
    CALIBRATE_CURRENT_CMD    = 0xC2,    // Calibration Current Command
    MEASURE_CMD              = 0xD1,    // Measurement Command
    STORE_DATA_CMD           = 0xD2,    // Data Storage Command
    RESTART_RECORD_CMD       = 0xF0,    // Restart Record Command
} CommandType;

typedef enum {
    READ_ALL_UNSYNCED_DATA = 0,    // Read all unsynchronized data
    READ_SPECIFIC_NUM      = 1     // Read a specific number of records
} HistoryOperationType;

typedef enum {
    AFE_VERSION           = 0x00,    // AFE chip version (read-only)
    AFE_ADC_SAMPLING_RATE = 0x01,    // AFE ADC sampling rate (read/write)
    AFE_ADC_GAIN          = 0x02,    // AFE ADC gain value (read/write)
    AFE_VREF_DATA         = 0x03,    // AFE reference voltage (read/write)
    AFE_DAC1O_DATA        = 0x04,    // AFE DAC1 data (read/write)
    AFE_DAC2O_DATA        = 0x05,    // AFE DAC2 data (read/write)
    AFE_DAC3O_DATA        = 0x06,    // AFE DAC3 data (read/write)
    BLE_VERSION           = 0x10,    // BLE module version (read-only)
    BLE_SAMPLING_INTERVAL = 0x11,    // AFE data sampling interval (in seconds) (read/write)
    BLE_SENDING_INTERVAL  = 0x12     // BLE data sending interval (in seconds) (read/write)
} ParameterAddress;

typedef enum {
    OPERATION_SUCCESS         = 0,    // Operation succeeded
    INVALID_PARAMETER_ADDRESS = 1,    // Invalid parameter address
    INVALID_PARAMETER_VALUE   = 2,    // Invalid parameter value
    WRITE_FAILED              = 3,    // Write operation failed
    READ_FAILED               = 4     // Read operation failed
} OperationStatus;

extern uint32_t restartNumBLE;
extern uint8_t readWrite;
extern uint8_t parameterAddress;
extern uint32_t parameterValue;
extern uint8_t parameterOperationStatus;

extern uint32_t bleSendAfeDataInterval;    // Initialize with BLE interval for sending AFE data
extern uint32_t afeCollectionInterval;     // Initialize with AFE collection interval

extern HistoryOperationType historyOperationType;
extern uint16_t historyNumReadRecords;

extern volatile AfeData afeData;

uint8_t GetCheckLRC(uint8_t *buf, uint8_t startN, uint8_t endN);

void afe_start_measure_we1();
uint8_t unpack_afe_protocol_buf(uint8_t *pu8Data, uint8_t len);
bool update_afe_protocol_buf(CommandType cmd, uint8_t *pu8Data, uint8_t len);
void WakeUpAfe();
void SleepAfe();
uint8_t GetHallLatchControlStatus();

#endif
