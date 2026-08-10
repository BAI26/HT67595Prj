/*
 * File Name: historical_data_process.h
 *
 * Version: V0.2
 * Author: viking
 * Company: Best Health
 * Mailbox: cviking@e-besthealth.com
 * Description: This file contains the implementation of historical data processing
 *              including initialization, reading, and writing historical records
 */

#ifndef _HISTORICAL_DATA_PROCESS_H_
#define _HISTORICAL_DATA_PROCESS_H_

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdbool.h>

/* Ble OTA Mtu */
#define BLE_HISTORICAL_DATA_MTU               (200)
#define BLE_HISTORICAL_DATA_MAXCONNINTERVAL   (50)   /*unit ms*/
#define BLE_HISTORICAL_DATA_MINCONNINTERVAL   (50)   /*unit ms*/
#define BLE_HISTORICAL_DATA_SUPERTIMOUT       (5000) /*unit ms*/
#define HISTORICAL_DATA_CHIP_DELAY_RESET_TIME (500)

// Structure definition for historical data record
typedef struct {
    uint32_t timestamp;                      // Timestamp (4 bytes) - Record time in seconds since epoch (UNIX time)
    uint16_t writeNum;                       // Write number - A unique identifier for each written record (2 bytes)
    int16_t temperature;                     // Temperature in tenths of degrees Celsius (2 bytes) - e.g., 250 represents 25.0°C
    uint16_t batteryVoltage_mV;              // Battery voltage in millivolts (2 bytes) - Voltage level of the device's battery
    uint16_t currentWE1;                     // Current measurement from sensor 1 (2 bytes) - Measured current value from sensor 1
    uint16_t currentWE2;                     // Current measurement from sensor 2 (2 bytes) - Measured current value from sensor 2
    uint16_t bloodSugar;                     // Blood sugar level (2 bytes) - Measured blood sugar level in mg/dL or mmol/L
    uint16_t sensorDeviceStatusCode;         // Sensor or device status code (2 bytes) - Indicates the operational status of the sensor/device
    uint16_t bloodSugarChangeRate_SFLOAT;    // Blood sugar change rate in SFLOAT format (2 bytes) - Rate of change of blood sugar level
    uint8_t qualityIndex;                    // Quality index (0-100) (1 byte) - Represents the quality of the measurement (0 = poor quality, 100 = excellent quality)
    uint8_t reserved[7];                    // Reserved for future use (10 bytes) - Padding to maintain structure alignment and reserved for future expansion
    uint16_t reserved1;
    uint16_t readNum;                         // Read number (1 byte) - An identifier for the read operation, or to indicate the number of reads performed
} historyDataRecord;

// Initialize the historical data
void historical_data_init(void);

void app_timer_start_historical_data_upload(void);

void historical_data_delete_all(void);

bool has_unsynced_data(void);

bool get_is_changing_historical_data_connect_param(void);
void set_is_changing_historical_data_connect_param(bool is_changing);

// Read the next unsynced historical data record
EN_ERR_STA_T historical_data_read(bool *hasUnsyncedData, historyDataRecord *record);

// Write a new historical data record
EN_ERR_STA_T historical_data_write(bool *isDataFull, historyDataRecord record);

EN_ERR_STA_T historical_data_upload(uint32_t ttNumMax);

void historical_data_update_connect_param(uint32_t u32TimeoutMs);

void historical_data_test();
#endif
