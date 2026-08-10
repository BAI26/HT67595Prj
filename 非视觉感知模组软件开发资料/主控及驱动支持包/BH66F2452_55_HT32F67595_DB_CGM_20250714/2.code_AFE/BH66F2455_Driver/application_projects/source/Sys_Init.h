#ifndef _SYS_INIT_H_
#define _SYS_INIT_H_

// // // Excitation voltage and measurement interval time setting
// // // Wdt 1s
// // #Define WDTTIME 1
// // #Define workMode_TIME1 (WDTTIME) // Excitation voltage 1 time s
// // #Define workMode_TIME2 (WDTTIME) // Excitation voltage 2 time s
// // #Define WORKMODETIME3 (WDTTIME) // Excitation voltage 3 time s
// // #Define MEASURETIME (WDTTIME) // sampling interval s

// // // Excitation voltage setting
// // // EVM
// // #Define VIREF_1250MV_VAL_DATA 0x5D
// // #Define DAC1O_550MV_VAL_DATA 1799 // DATA = 4096/1250*DACO_mV
// // #Define DAC1O_900MV_VAL_DATA 2949 // DATA = 4096/1250*DACO_mV

// // #Define DAC1O_VAL 950 // 950mV
// // #Define DAC2O_VAL 500 // 500mV
// // #Define VIREF_VAL_DATA 0x80
// // #Define DAC1O_VAL_DATA (DAC1O_VAL * 4096l / 1250) // DACO_VAL_DATA = Vdaco * 4096 / Viref
// // #Define DAC2O_VAL_DATA (DAC2O_VAL * 4096l / 1250)

// // #Define EEPROM_VIREF 0x01
// // #Define EEPROM_DAC1 0x02
// // #Define EEPROM_DAC2 0x04
// // #define EEPROM_OPA1  0x06
// // #define EEPROM_OPA2  0x07
// // #define EEPROM_OPA3  0x08

// //=========================================================
// // Internal EEPROM storage area, size: 128*8
// // Store information such as calibration values and setting parameters
// //=========================================================
// #define EEPROM_Calibrate_ADDRESS 0                                                         // Calibration Flag Bit CalibrateFlag: Calibrated
// #define EEPROM_Calibrate_SIZE    1                                                         // Calibration flag bit CalibrateFlag occupies memory size 1*8

// #define EEPROM_PolarizePara_ADDRESS (EEPROM_Calibrate_ADDRESS   EEPROM_Calibrate_SIZE)     // polarizePara
// #define EEPROM_PolarizePara_SIZE    (1   1   5 * 2)                                        // Memory: 12*8

// #define EEPROM_DacPara_ADDRESS (EEPROM_PolarizePara_ADDRESS   EEPROM_PolarizePara_SIZE)    // DacPara
// #define EEPROM_DacPara_SIZE    (2 * 3 * 6)                                                 // Memory: 6*6*8

// #Define EEPROM_AdcPara_ADDRESS (EEPROM_DacPara_ADDRESS EEPROM_DacPara _SIZE) // AdcPara
// #Define EEPROM_AdcPara_SIZE 2

void Sys_PowerOnInit();
void Enter_Halt();
void WakeUpInit();

#endif