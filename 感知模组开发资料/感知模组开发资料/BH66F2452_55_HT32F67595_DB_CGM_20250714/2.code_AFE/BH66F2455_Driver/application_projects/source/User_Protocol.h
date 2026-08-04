
#ifndef _USER_PROTOCOL_H_
#define _USER_PROTOCOL_H_
#include "..\..\driver\stdbool.h"
#include "Work_Mode_Polling.h"
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Predefined @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
// Choose one of the following modes
// Beta, No BLE Initial & Halt & Wake up
#define Beta

// Final Version, Use BLE, BLE Enter Halt & Wake up
// #define Final_Version
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Common Variables @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
/* Exported types ------------------------------------------------------------------------------------------*/
typedef enum {
	DEVICE_SET_PARAMETER    = 0xB0,    //! < Set parameters command
    DEVICE_CAL_VOLTAGE      = 0xC1,    //! <Production Calibration Voltage
    DEVICE_CAL_CURRENT      = 0xC2,    //! <Production Calibration Current
    DEVICE_AFE_MEASURE_DATA = 0xD1,    //! <Start measurement data
    DEVICE_READ_WRITE_DATA  = 0xD2,    //! <Read/write data
    
    RESTART_RECORD_CMD      = 0xF0,
} DEVICE_Command_Type_t;

typedef enum {
    AFE_VERSION           = 0x00,    // AFE chip version (read-only)
    AFE_ADC_SAMPLING_RATE = 0x01,    // AFE ADC sampling rate (read/write)
    AFE_ADC_GAIN          = 0x02,    // AFE ADC gain value (read/write)
    AFE_VREF_DATA         = 0x03,    // AFE reference voltage (read/write)
    AFE_DAC1O_DATA        = 0x04,    // AFE DAC1 data (read/write)
    AFE_DAC2O_DATA        = 0x05,    // AFE DAC2 data (read/write)
    AFE_DAC3O_DATA        = 0x06,    // AFE DAC3 data (read/write)
    // BLE_VERSION           = 0x10,    // BLE module version (read-only)
    // BLE_SAMPLING_INTERVAL = 0x11,    // AFE data sampling interval (in seconds) (read/write)
    // BLE_SENDING_INTERVAL  = 0x12     // BLE data sending interval (in seconds) (read/write)
} ParameterAddress;

typedef enum {
    OPERATION_SUCCESS         = 0,    // Operation succeeded
    INVALID_PARAMETER_ADDRESS = 1,    // Invalid parameter address
    INVALID_PARAMETER_VALUE   = 2,    // Invalid parameter value
    WRITE_FAILED              = 3,    // Write operation failed
    READ_FAILED               = 4     // Read operation failed
} OperationStatus;

typedef struct {
    // uint8_t period;    //!< period = 0.5S*(p + 1)

    union {
        struct {
            uint16_t isBleSet            : 1;    //! <R/W Whether Bluetooth is set
            uint16_t isCalVoltage        : 1;    //! <R/W Calibration voltage
            uint16_t isCalCurrent        : 1;    //! <R/W Calibration current
            uint16_t isAfeMeasureData    : 1;    //! <R/W Start measuring data
            uint16_t isReadWriteData     : 1;    //! <R/W Read/write data
            uint16_t isEnterHalt         : 1;    //! <R/W Enters Sleep
            uint16_t isMeasureDataUpdate : 1;    //! <R/W Is there any measurement data update
            uint16_t isGetRestartNum     : 1;
            uint16_t isSetParameter      : 1;
        } b;

        uint16_t byte;
    } flag1;

    union {
        struct {
            uint8_t isStartBatVol         : 1;    //! <R/W Does the battery voltage be measured
            uint8_t isStartTemperatureRes : 1;    //! <R/W Whether NTC resistance value is measured
            uint8_t isStartWe1Current     : 1;    //! <R/W MEASURING WE1 CURRENT
            uint8_t isStartWe2Current     : 1;    //! <R/W MEASURING WE2 CURRENT
        } b;

        uint8_t byte;
    } flagAfe;

    // union {
    // struct {
    // uint8_t isStartBatVol : 1; //! <R/W Does the battery voltage be measured
    // uint8_t isStartTemperatureRes : 1; //! <R/W Whether NTC resistance value is measured
    // uint8_t isStartWe1Current : 1; //! <R/W MEASURING WE1 CURRENT
    // uint8_t isStartWe2Current : 1; //! <R/W MEASURING WE2 CURRENT
    //     } b;

    // uint8_t byte;
    // } flagCal;
} DEVICE_API_T;

extern DEVICE_API_T deviceApi;

#if USE_I2C
extern volatile uint8_t workModeLast;
#endif
#if USE_SPI
extern volatile uint8_t spiDataStatus;
extern volatile uint8_t spiTxLength;
#endif
extern volatile uint8_t isDeepSleep;

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ common function @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
void Protocol_TxLoop();
void Protocol_RxLoop();
void DRDY_Ready();

#endif
