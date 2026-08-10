#ifndef _WORK_MODE_POLLING_H_
#define _WORK_MODE_POLLING_H_
#include <stdint.h>
#include "..\..\driver\stdbool.h"

#define VER_SOFTWAVE 0x0003    // V0.3

// Define the starting address and size of the calibration flag in EEPROM
#define EEPROM_CALIBRATE_ADDRESS 0    // Calibration flag address (CalibrateFlag): indicates whether calibration has been performed
#define EEPROM_CALIBRATE_SIZE    1    // Size of the calibration flag (CalibrateFlag) in memory (1 byte)

// Define the starting address and size of the calibration parameters
#define EEPROM_CALPARA_ADDRESS (EEPROM_CALIBRATE_ADDRESS + EEPROM_CALIBRATE_SIZE)    // Calibration parameters address (PolarizeFor)
#define EEPROM_CALPARA_SIZE    (1 + 2 * 4)                                           // Size of calibration parameters in memory (9 bytes: 1 byte + 8 bytes)

// Define the starting address and size for the first RF-related DAC parameters
#define EEPROM_WE1RF_ADDRESS (EEPROM_CALPARA_ADDRESS + EEPROM_CALPARA_SIZE)    // DAC parameters address (DacPara)
#define EEPROM_WE1RF_SIZE    (2 * 4)                                           // Size of RF DAC parameters in memory (8 bytes: 2 parameters of 4 bytes each)

// Define the starting address and size for the offset parameters
#define EEPROM_OFFSET_ADDRESS (EEPROM_WE1RF_ADDRESS + EEPROM_WE1RF_SIZE)    // Offset parameters address (DacPara)
#define EEPROM_OFFSET_SIZE    (1 + 2 * 2)                                   // Size of offset parameters in memory (5 bytes: 1 byte + 4 bytes)

// Define the starting address and size for ADC WE1 parameters
#define EEPROM_ADC_WE1_ADDRESS (EEPROM_OFFSET_ADDRESS + EEPROM_OFFSET_SIZE)    // ADC WE1 parameters address
#define EEPROM_ADC_WE1_SIZE    (1 + 2)                                         // Size of ADC WE1 parameters in memory (2 bytes)

// Define the starting address and size for ADC WE1 parameters
#define EEPROM_ADC_WE2_ADDRESS (EEPROM_ADC_WE1_ADDRESS + EEPROM_ADC_WE1_SIZE)    // ADC WE2 parameters address
#define EEPROM_ADC_WE2_SIZE    (1 + 2)                                           // Size of ADC WE2 parameters in memory (2 bytes)

// Define the end address and total size of all values in EEPROM
#define EEPROM_VALUES_END_ADDRESS (EEPROM_ADC_WE2_ADDRESS + EEPROM_ADC_WE2_SIZE)            // End address for all values
#define EEPROM_VALUES_SIZE        (EEPROM_VALUES_END_ADDRESS - EEPROM_CALIBRATE_ADDRESS)    // Total memory size occupied by all values in EEPROM

/*! Sys Afe Status*/
typedef enum {
    STATUS_INIT   = 0x00,
    STATUS_STATE  = 0x01,
    STATUS_FINISH = 0x02,
} CGM_SysWorkStatus_e;

/*! Sys Afe Step*/
typedef enum {
    STEP_AFE_ENABLE      = 0x00,
    STEP_WAITING_MEASURE = 0x01,
    STEP_DATA_MEASURE    = 0x02,
} CGM_SysAfeWorkStep_e;

/*! Sys Calibrite Step*/
typedef enum {
    STEP_CAL_VOLTAGE = 0x00,
    STEP_CAL_CURRENT = 0x01,
} CGM_SysCalibriteWorkStep_e;

typedef enum {
    MODE_NULL       = 0x00,
    MODE_NORMAL     = 0x01,
    MODE_AFE        = 0x02,
    MODE_PROFESSION = 0X03,
    MODE_CALIBRATE  = 0X04,
    MODE_SLEEP      = 0x05,
} CGM_WorkMode_e;

typedef enum {
    DATATYPE_NULL        = 0x00,
    DATATYPE_BATVOL      = 0x01,
    DATATYPE_TEMPERATURE = 0x02,
    DATATYPE_CURRENT_WE1 = 0x04,
    DATATYPE_CURRENT_WE2 = 0X08,
} CGM_DataType_e;

typedef struct {
    bool isStartMeaCurrent;
    bool isMeaCurrent;
    bool isStateUpdate;
    bool isDataUpdate;
    bool isEnterHalt;
    uint8_t workMode;
    uint8_t workStep;
    uint8_t workStatus;
    uint8_t dataType;
    
    uint16_t temperatureRfRes;    // KΩ(* 10)
    uint16_t batVol;              // V(*100)
    uint16_t temperatureRes;      // KΩ(* 10)
    
    int16_t currentNaWe1Cal;      // Na (* 100)
    int16_t currentNaWe2Cal;      // Na (* 100)
    int32_t currentNaWe1Raw;      // Na (* 100)
    int16_t currentNaWe2Raw;      // Na (* 100)

    // Calibration parameters
    uint8_t calibratedId;
    uint8_t virefData;
    uint16_t NC;
    uint16_t dac1Data;
    uint16_t dac2Data;
    uint16_t dac3Data;
    uint16_t we1Rf;
    uint16_t we1CalPara;
    uint16_t we2Rf;
    uint16_t we2CalPara;

    uint8_t calibratedIdOffset;
    int16_t offsetNaWe1;    // Na (* 100)
    int16_t offsetNaWe2;    // Na (* 100)
    
    uint8_t calibratedIdAdcWe1;
    uint8_t adcSampleRateWe1;
    uint8_t adcGainWe1;

    uint8_t calibratedIdAdcWe2;
    uint8_t adcSampleRateWe2;
    uint8_t adcGainWe2;
    
    uint32_t restartNum;
    uint8_t restartNum_WR;

} CGM_API_t;

extern volatile CGM_API_t *cgmApiP;
extern uint8_t writeData[128];            // If the page size exceeds 128 bytes, it needs to be read and written twice.
extern uint8_t writeDataIndex;            // 0~127
extern uint8_t readData[128];             // If the page size exceeds 128 bytes, it needs to be read and written twice.
extern uint16_t writeDataBufFirstAddr;    // Iap address of writeData[0]

void Init_AFE();
void Work_Mode_Polling();
void Sys_ReadCalibratePara();

#endif
