/*
 * File Name: historical_data_process.c
 *
 * Version: V0.2
 * Author: viking
 * Company: Best Health
 * Mailbox: cviking@e-besthealth.com
 * Description: This file contains the implementation of historical data processing
 *              including initialization, reading, and writing historical records
 */
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>

#include "RegHT32F675x5.h"
#include "err_def.h"
#include "app_cfg.h"
#include "boards.h"
#include "utility.h"
#include "ble_event.h"
#include "tt_service.h"

#include "app_timer.h"

#include "gap_api.h"
#include "gatt_client_api.h"

#include "hw_flash.h"
#include "flash.h"

#include "historical_data_process.h"

#define DEBUG_CHECK_RECORD_CONSISTENCY (0)

// Define the starting address for storing historical data, typically the base address plus an offset
#define HISTORY_DATA_ADDR (FLASH_HISTORY_DATA_BASE_ADDR_OFFSET)

// Define the size of a single historical data record, using sizeof to get the byte size of historyDataRecord structure
#define HISTORY_DATA_ONE_DATA_SIZE (sizeof(historyDataRecord))

// Define the maximum number of historical data records, calculated based on the total size of flash memory divided by the size of one data record
#define HISTORY_DATA_NUM_MAX (FLASH_HISTORY_DATA_SIZE_MAX / HISTORY_DATA_ONE_DATA_SIZE)

#define HISTORY_DATA_ONE_CACHE_NUM (FLASH_CACHE_SIZE / HISTORY_DATA_ONE_DATA_SIZE)

static uint32_t writeNum = 0;
static uint32_t readNum  = 0;

static uint8_t readDataBuf[FLASH_CACHE_SIZE];
static uint8_t sendDataBuf[FLASH_CACHE_SIZE];

static bool is_changing_historical_data_connect_param = false;

static stAppTimerNode_t gstHistoryTimer;

static void check_record_consistency(historyDataRecord record);
EN_ERR_STA_T historical_data_upload(uint32_t ttNumMax);

static uint8_t GetCheckLRC(uint8_t *buf, uint8_t startN, uint8_t endN)
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

static void historical_data_upload_timeout(void *pContext)
{
    app_timer_stop(&gstHistoryTimer);
    app_timer_start(&gstHistoryTimer, 60, NULL);
    historical_data_upload(4);
}

// Initialize historical data
void historical_data_init(void)
{
    is_changing_historical_data_connect_param = false;
    app_timer_create(&gstHistoryTimer, APP_TIMER_MODE_REPEAT, historical_data_upload_timeout);
}

void app_timer_start_historical_data_upload(void)
{
    app_timer_start(&gstHistoryTimer, 1200, NULL);
}

void historical_data_delete_all(void)
{
    writeNum                                  = 0;
    readNum                                   = 0;
    is_changing_historical_data_connect_param = false;
}

uint32_t get_historical_data_writeNum(void)
{
    return writeNum;
}

uint32_t get_historical_data_readNum(void)
{
    return readNum;
}

bool has_unsynced_data(void)
{
    return (readNum < writeNum);
}

bool get_is_changing_historical_data_connect_param(void)
{
    return is_changing_historical_data_connect_param;
}

void set_is_changing_historical_data_connect_param(bool is_changing)
{
    is_changing_historical_data_connect_param = is_changing;
}

// Get the address of a historical data record
static uint32_t historical_data_get_addr(uint16_t num)
{
    // PRINTF("Requested record number: %d\n", num);
    if (num == 0)
    {
        return 0xFFFFFFFF;
    }
    uint32_t u32AddrOffset = (num - 1) * sizeof(historyDataRecord);
    uint32_t u32Addr       = HISTORY_DATA_ADDR + u32AddrOffset;

    PRINTF("Calculated address offset: %u ", u32AddrOffset);
    PRINTF("Calculated address: 0x%08X\n", u32Addr);

    // Check if the address offset is within range
    if (u32AddrOffset < FLASH_HISTORY_DATA_SIZE_MAX)
    {
        return u32Addr;
    }
    return 0xFFFFFFFF;    // Return an error address if out of range
}

EN_ERR_STA_T historical_data_read(bool *hasUnsyncedData, historyDataRecord *record)
{
    EN_ERR_STA_T enRet = ERR_STA_OK;

    // Check if there are any unsynced records
    *hasUnsyncedData = has_unsynced_data();

    if (!(*hasUnsyncedData))
    {
        PRINTF("No unsynced data available.\n");    // Log message for no unsynced data
        return ERR_DATA_NOT_FOUND;                  // No unsynced data available
    }

    uint32_t u32WriteNumOffset = writeNum % HISTORY_DATA_NUM_MAX;
    uint32_t u32WriteOffset    = writeNum / HISTORY_DATA_NUM_MAX;

    uint32_t u32Addr = historical_data_get_addr(readNum);
    if (0xFFFFFFFF == u32Addr)
    {
        PRINTF("Address out of range\n");    // Log the error message
        return ERR_PARA_ERR;                 // Parameter error
    }

    enRet = rom_hw_flash_read_bytes(FLASH, u32Addr, (uint8_t *)(record), HISTORY_DATA_ONE_DATA_SIZE, BUS_MODE_QPI);
    if (ERR_STA_OK != enRet)
        return enRet;

    readNum++;
    enRet = rom_hw_flash_write_bytes(FLASH, u32Addr + HISTORY_DATA_ONE_DATA_SIZE - 1 - 2, (uint8_t *)(&readNum), 1, BUS_MODE_QPI, FLASH_WRITE_TIME_US);
    if (ERR_STA_OK != enRet)
        return enRet;

    return enRet;    // Return the result of the read operation
}

static void get_data_packet(uint16_t u16ConnHandle, uint8_t *pu8Data, uint32_t *pu8DataLen, historyDataRecord record, EN_ERR_STA_T enRet)
{
    uint8_t len = 0;    // Initialize data packet length

    pu8Data[len++] = 0xAA;                                             // Frame header
    pu8Data[len++] = 0x24;                                             // Frame length
    pu8Data[len++] = 0xA0;                                             // Command number
    pu8Data[len++] = enRet;                                            // Status: set based on whether there is unsynced data
    pu8Data[len++] = BREAK_UINT32(record.timestamp, 0);                // Timestamp low byte
    pu8Data[len++] = BREAK_UINT32(record.timestamp, 1);                // Timestamp second byte
    pu8Data[len++] = BREAK_UINT32(record.timestamp, 2);                // Timestamp third byte
    pu8Data[len++] = BREAK_UINT32(record.timestamp, 3);                // Timestamp high byte
    pu8Data[len++] = LO_UINT16(record.writeNum);                       // Record number low byte
    pu8Data[len++] = HI_UINT16(record.writeNum);                       // Record number high byte
    pu8Data[len++] = LO_UINT16(record.temperature);                    // Temperature low byte
    pu8Data[len++] = HI_UINT16(record.temperature);                    // Temperature high byte
    pu8Data[len++] = LO_UINT16(record.batteryVoltage_mV);              // Battery voltage low byte
    pu8Data[len++] = HI_UINT16(record.batteryVoltage_mV);              // Battery voltage high byte
    pu8Data[len++] = LO_UINT16(record.currentWE1);                     // Current sensor 1 low byte
    pu8Data[len++] = HI_UINT16(record.currentWE1);                     // Current sensor 1 high byte
    pu8Data[len++] = LO_UINT16(record.currentWE2);                     // Current sensor 2 low byte
    pu8Data[len++] = HI_UINT16(record.currentWE2);                     // Current sensor 2 high byte
    pu8Data[len++] = LO_UINT16(record.bloodSugar);                     // Blood sugar low byte
    pu8Data[len++] = HI_UINT16(record.bloodSugar);                     // Blood sugar high byte
    pu8Data[len++] = LO_UINT16(record.sensorDeviceStatusCode);         // Device status code low byte
    pu8Data[len++] = HI_UINT16(record.sensorDeviceStatusCode);         // Device status code high byte
    pu8Data[len++] = LO_UINT16(record.bloodSugarChangeRate_SFLOAT);    // Blood sugar change rate low byte
    pu8Data[len++] = HI_UINT16(record.bloodSugarChangeRate_SFLOAT);    // Blood sugar change rate high byte
    pu8Data[len++] = record.qualityIndex;                              // Quality index

    memset(&pu8Data[len], 0, 10);    // Fill 10 reserved bytes with 0
    len += 10;                       // Update data packet length

    uint8_t lrc    = GetCheckLRC(pu8Data, 0, len - 2);    // Calculate LRC
    pu8Data[len++] = lrc;                                 // Calculate and add LRC checksum

    *pu8DataLen = len;

    PRINTF("historical_data_upload data is: ");
    for (uint8_t i = 0; i < len; i++)
    {
        PRINTF("%02X ", pu8Data[i]);    // Print each byte in hexadecimal format
    }
    PRINTF("\n");    // New line after printing all data
}

EN_ERR_STA_T historical_data_upload(uint32_t ttNumMax)
{
    EN_ERR_STA_T enRet = ERR_STA_OK;

    // Get the current BLE connection handle
    uint16_t u16ConnHandle = get_ble_conn_handle();
    if (u16ConnHandle == 0)
    {
        INFO("Error: Invalid connection handle.\n");
        return ERR_STA_ERROR;    // Invalid connection handle, return error
    }

    historyDataRecord record = {0};                   // Initialize record structure for storing historical data
    uint32_t unsyncedDataNum = writeNum - readNum;    // Calculate the number of unsynced data records
    if (unsyncedDataNum > ttNumMax)
    {
        unsyncedDataNum = ttNumMax;
    }
    uint32_t unsyncedDataReadBufSize = 0;    // Size of the data to read in the current buffer

    uint32_t readNumCache  = (readNum * HISTORY_DATA_ONE_DATA_SIZE) / FLASH_CACHE_SIZE;
    uint32_t writeNumCache = (writeNum * HISTORY_DATA_ONE_DATA_SIZE) / FLASH_CACHE_SIZE;
    uint32_t readBufCount  = writeNumCache - readNumCache + 1;
    printf("readNum: %u\n", readNum);
    printf("writeNum: %u\n", writeNum);
    printf("readNumCache: %u\n", readNumCache);
    printf("writeNumCache: %u\n", writeNumCache);
    printf("Total Cache Count (readBufCount): %d\n", readBufCount);

    for (int32_t i = readBufCount; i > 0; i--)
    {
        if (unsyncedDataNum >= HISTORY_DATA_ONE_CACHE_NUM)
        {
            if (readNum % HISTORY_DATA_ONE_CACHE_NUM != 0)
            {
                unsyncedDataReadBufSize = HISTORY_DATA_ONE_DATA_SIZE * (HISTORY_DATA_ONE_CACHE_NUM - (readNum % HISTORY_DATA_ONE_CACHE_NUM));
                unsyncedDataNum -= (HISTORY_DATA_ONE_CACHE_NUM - readNum % HISTORY_DATA_ONE_CACHE_NUM);
                printf("Condition 1:\n");
                printf("unsyncedDataNum: %u\n", unsyncedDataNum);
                printf("unsyncedDataReadBufSize: %u\n", unsyncedDataReadBufSize);
            }
            else
            {
                unsyncedDataReadBufSize = FLASH_CACHE_SIZE;       // Use full buffer size
                unsyncedDataNum -= HISTORY_DATA_ONE_CACHE_NUM;    // Decrease the remaining size
                printf("Condition 2:\n");
                printf("unsyncedDataNum: %u\n", unsyncedDataNum);
                printf("unsyncedDataReadBufSize: %u\n", unsyncedDataReadBufSize);
            }
        }
        else
        {
            unsyncedDataReadBufSize = unsyncedDataNum * HISTORY_DATA_ONE_DATA_SIZE;    // Use full buffer size
            printf("Condition 3:\n");
            printf("unsyncedDataNum: %u\n", unsyncedDataNum);
            printf("unsyncedDataReadBufSize: %u\n", unsyncedDataReadBufSize);
        }

        // Read data from flash memory
        uint32_t readNumOffset = readNum % HISTORY_DATA_NUM_MAX;
        uint32_t addr          = historical_data_get_addr(readNumOffset + 1);
        PRINTF("Reading data from flash memory at address: 0x%X\n", addr);

        enRet = rom_hw_flash_read_bytes(FLASH, addr, (uint8_t *)(readDataBuf), unsyncedDataReadBufSize, BUS_MODE_QPI);
        if (ERR_STA_OK != enRet)
            return enRet;

        // Log the content of readDataBuf
        INFO("Unsynced data buffer content (size: %u bytes): \r\n", unsyncedDataReadBufSize);

        uint32_t m = 0;
        for (m = 0; m < unsyncedDataReadBufSize; m++)
        {
            // Print each byte in hexadecimal format
            PRINTF("%02X ", readDataBuf[m]);
        }
        PRINTF("\r\n");

        // Calculate the number of records read in this buffer
        uint32_t getDataByBufNum = unsyncedDataReadBufSize / HISTORY_DATA_ONE_DATA_SIZE;
        INFO("Reading %u records from buffer, starting at index %u", getDataByBufNum, readNum);

        // Process each record in the buffer
        uint32_t k            = 0;
        uint32_t sendLenSum   = 0;
        uint32_t sendLenCount = 0;
        for (uint32_t j = 0; j < getDataByBufNum; j++)
        {
            memcpy(&record, &readDataBuf[j * sizeof(historyDataRecord)], sizeof(historyDataRecord));     // Copy record data
            get_data_packet(u16ConnHandle, &sendDataBuf[sendLenSum], &sendLenCount, record, enRet);    // Send the record via BLE
            sendLenSum += sendLenCount;
            // PRINTF("historical_data_upload tt_service_send len = %d\n", len);
            INFO("Sent record %u, timestamp: %u", j, record.timestamp);    // Log the sent record's timestamp

            if (sendLenSum >= 150 || (j == (getDataByBufNum - 1)))
            {
                tt_service_send(u16ConnHandle, sendDataBuf, sendLenSum);    // Send data
            }

#if DEBUG_CHECK_RECORD_CONSISTENCY
            check_record_consistency(record);
#endif
        }

        readNum += (unsyncedDataReadBufSize / HISTORY_DATA_ONE_DATA_SIZE);
    }

    if (!has_unsynced_data())
    {
        app_timer_stop(&gstHistoryTimer);

        stGapConnectionUpdate_t stConnectionUpdateParam =
            {
                .u16ConnIntervalMax1250us  = MSEC_TO_UNITS(1000, UNIT_1_25_MS),
                .u16ConnIntervalMin1250us  = MSEC_TO_UNITS(1000, UNIT_1_25_MS),
                .u16ConnLatency            = 0,
                .u16SupervisionTimeout10ms = MSEC_TO_UNITS(6000, UNIT_10_MS),
            };

        rom_gap_api_connection_parameters_update(u16ConnHandle, &stConnectionUpdateParam);
        INFO("Updating BLE connection parameters. %dms", 1000);
    }

    return enRet;
}

EN_ERR_STA_T historical_data_write(bool *isDataFull, historyDataRecord record)
{
    EN_ERR_STA_T enRet = ERR_STA_OK;
    *isDataFull        = false;

    uint32_t _writeNumOffste = (writeNum % (HISTORY_DATA_NUM_MAX));
    uint32_t u32Addr         = historical_data_get_addr(_writeNumOffste + 1);
    if (u32Addr == 0xFFFFFFFF)
    {
        printf("Address out of range\n");    // Log the error message
        return ERR_PARA_ERR;                 // Parameter error
    }
    uint32_t currentCacheNumoffSet = _writeNumOffste / HISTORY_DATA_ONE_CACHE_NUM;
    uint32_t currentCacheNum       = HISTORY_DATA_ADDR / FLASH_CACHE_SIZE + currentCacheNumoffSet;
    if ((writeNum % HISTORY_DATA_ONE_CACHE_NUM) == 0)
    {
        enRet = rom_hw_flash_erase(FLASH, ERASE_SECTOR, currentCacheNum, FLASH_ERASE_TIME_US);
        printf("rom_hw_flash_erase :%u\r\n", currentCacheNumoffSet);
        if (ERR_STA_OK != enRet)
            return enRet;
        if (_writeNumOffste <= HISTORY_DATA_ONE_CACHE_NUM)
        {
            if (readNum % HISTORY_DATA_NUM_MAX < HISTORY_DATA_ONE_CACHE_NUM)
            {
                if ((writeNum / HISTORY_DATA_NUM_MAX) != (readNum / HISTORY_DATA_NUM_MAX))
                {
                    readNum += (HISTORY_DATA_ONE_CACHE_NUM - (readNum % HISTORY_DATA_ONE_CACHE_NUM));
                    INFO("updata readNum is:%u", readNum);
                }
            }
        }
    }

    writeNum++;
    record.writeNum = writeNum;

    enRet = rom_hw_flash_write_bytes(FLASH, u32Addr, (uint8_t *)(&record), HISTORY_DATA_ONE_DATA_SIZE - 2, BUS_MODE_QPI, FLASH_WRITE_TIME_US);
    if (ERR_STA_OK != enRet)
        return enRet;

    if (writeNum - readNum > HISTORY_DATA_NUM_MAX)
    {
        readNum++;
        printf("Updated readNum: %u\n", readNum);
    }

    return ERR_STA_OK;    // Return success
}

/**********************************************************************************************************************
 * @brief  historical_data update ble connection parameters.
 * @param  u32TimeoutMs: Waiting for mtu exchange.
 * @output
 * @return None
 *********************************************************************************************************************/
void historical_data_update_connect_param(uint32_t u32TimeoutMs)
{
    uint16_t u16ConnHandle = get_ble_conn_handle();
    if (!has_unsynced_data())
    {
        INFO("No historical data");
        historyDataRecord record = {0};
        uint8_t sendDataBuf[128] = {0};
        uint32_t sendLenCount    = 0;
        get_data_packet(u16ConnHandle, &sendDataBuf[sendLenCount], &sendLenCount, record, ERR_DATA_NOT_FOUND);
        tt_service_send(u16ConnHandle, sendDataBuf, sendLenCount);
        return;
    }
    // uint16_t gu16OldMtu = rom_gap_api_get_mtu(gu16ConnHandle);
    // uint32_t u32Timeout = 0;
    //
    // if (gu16OldMtu != BLE_HISTORICAL_DATA_MTU)
    //     rom_gatt_client_api_mtu_exchange(gu16ConnHandle,BLE_HISTORICAL_DATA_MTU);

    // while(is_mtu_exchanging())
    // {
    //     if (u32Timeout++ > u32TimeoutMs)
    //     {
    //         PRINTF("MTU Exchange Timeout\n");
    //         break;
    //     }
    //     rom_delay_ms(1);
    // }
    //

    stGapConnectionUpdate_t stConnectionUpdateParam =
        {
            .u16ConnIntervalMax1250us  = MSEC_TO_UNITS(BLE_HISTORICAL_DATA_MAXCONNINTERVAL, UNIT_1_25_MS),
            .u16ConnIntervalMin1250us  = MSEC_TO_UNITS(BLE_HISTORICAL_DATA_MINCONNINTERVAL, UNIT_1_25_MS),
            .u16ConnLatency            = 0,
            .u16SupervisionTimeout10ms = MSEC_TO_UNITS(BLE_HISTORICAL_DATA_SUPERTIMOUT, UNIT_10_MS),
        };

    rom_gap_api_connection_parameters_update(u16ConnHandle, &stConnectionUpdateParam);
    INFO("Updating BLE connection parameters. %dms", BLE_HISTORICAL_DATA_MAXCONNINTERVAL);
    is_changing_historical_data_connect_param = 1;
}

static void check_record_consistency(historyDataRecord record)
{
#if DEBUG_CHECK_RECORD_CONSISTENCY
    int isConsistent = 1;
    int k            = record.writeNum - 1;
    if (record.writeNum != ((k + 1) % UINT16_MAX))
    {
        printf("\r\nRecord #%d: num is inconsistent! Expected: %d, Found: %d\r\n", record.writeNum, (k + 1) % UINT16_MAX, record.writeNum);
        isConsistent = 0;
    }

    if (record.timestamp != (k % UINT32_MAX))
    {
        printf("\r\nRecord #%d: timestamp is inconsistent! Expected: %d, Found: %d\r\n", record.writeNum, (k % UINT32_MAX), record.timestamp);
        isConsistent = 0;
    }

    if (record.temperature != 250)
    {
        printf("\r\nRecord #%d: temperature is inconsistent! Expected: %d, Found: %d\r\n", record.writeNum, 250, record.temperature);
        isConsistent = 0;
    }

    if (record.batteryVoltage_mV != 3000)
    {
        printf("\r\nRecord #%d: batteryVoltage_mV is inconsistent! Expected: 3000, Found: %d\r\n", record.writeNum, record.batteryVoltage_mV);
        isConsistent = 0;
    }

    if (record.currentWE1 != ((k + 1) % UINT16_MAX))
    {
        printf("\r\nRecord #%d: currentWE1 is inconsistent! Expected: %d, Found: %d\r\n", record.writeNum, (k + 1) % UINT16_MAX, record.currentWE1);
        isConsistent = 0;
    }

    if (record.currentWE2 != ((k + 1) % UINT16_MAX))
    {    // currentWE2 是 uint16_t
        printf("\r\nRecord #%d: currentWE2 is inconsistent! Expected: %d, Found: %d\r\n", record.writeNum, (k + 1) % UINT16_MAX, record.currentWE2);
        isConsistent = 0;
    }

    if (record.bloodSugar != ((k + 1) * 5 % UINT16_MAX))
    {    // bloodSugar 是 uint16_t
        printf("\r\nRecord #%d: bloodSugar is inconsistent! Expected: %d, Found: %d\r\n", record.writeNum, ((k + 1) * 5 % UINT16_MAX), record.bloodSugar);
        isConsistent = 0;
    }

    if (record.sensorDeviceStatusCode != 0)
    {
        printf("\r\nRecord #%d: sensorDeviceStatusCode is inconsistent! Expected: 0, Found: %d\r\n", record.writeNum, record.sensorDeviceStatusCode);
        isConsistent = 0;
    }

    if (record.bloodSugarChangeRate_SFLOAT != 1)
    {
        printf("\r\nRecord #%d: bloodSugarChangeRate_SFLOAT is inconsistent! Expected: 1, Found: %d\r\n", record.writeNum, record.bloodSugarChangeRate_SFLOAT);
        isConsistent = 0;
    }

    if (record.qualityIndex != (k % UINT8_MAX))
    {
        printf("\r\nRecord #%d: qualityIndex is inconsistent! Expected: %d, Found: %d\r\n", record.writeNum, (k % UINT8_MAX), record.qualityIndex);
        isConsistent = 0;
    }

    if (isConsistent)
    {
        printf("\r\nRecord #%d is consistent.\r\n", record.writeNum);
    }
    else
    {
        printf("\r\nRecord #%d has inconsistent fields.\r\n", record.writeNum);
    }
#endif
}

void historical_data_test()
{
#if DEBUG_CHECK_RECORD_CONSISTENCY
    // Print flash memory configuration
    printf("FLASH_BASE_ADDR: 0x%08X\n", FLASH_BASE_ADDR);
    printf("FLASH_BOOT_RESERVED_SIZE_MAX: %d bytes\n", FLASH_BOOT_RESERVED_SIZE_MAX);
    printf("FLASH_MP_APP_CODE_ADDR: 0x%08X\n", FLASH_MP_APP_CODE_ADDR);
    printf("FLASH_MP_APP_CODE_ADDR_OFFSET: %d bytes\n", FLASH_MP_APP_CODE_ADDR_OFFSET);
    printf("FLASH_MP_APP_CODE_SIZE_MAX: %d bytes\n", FLASH_MP_APP_CODE_SIZE_MAX);
    printf("FLASH_MMU_SIZE_MAX: %d bytes\n", FLASH_MMU_SIZE_MAX);
    printf("FLASH_MMU_BASE_ADDR: 0x%08X\n", FLASH_MMU_BASE_ADDR);
    printf("FLASH_MMU_BASE_ADDR_OFFSET: %d bytes\n", FLASH_MMU_BASE_ADDR_OFFSET);
    printf("FLASH_HISTORY_DATA_SIZE_MAX: %d bytes\n", FLASH_HISTORY_DATA_SIZE_MAX);
    printf("FLASH_HISTORY_DATA_BASE_ADDR: 0x%08X\n", FLASH_HISTORY_DATA_BASE_ADDR);
    printf("FLASH_HISTORY_DATA_BASE_ADDR_OFFSET: %d bytes\n", FLASH_HISTORY_DATA_BASE_ADDR_OFFSET);
    printf("FLASH_FW_UPGRADE_CODE_ADDR: 0x%08X\n", FLASH_FW_UPGRADE_CODE_ADDR);
    printf("FLASH_FW_UPGRADE_CODE_SIZE_MAX: %d bytes\n", FLASH_FW_UPGRADE_CODE_SIZE_MAX);

    // Initialize historical data
    historical_data_init();
    bool isDataFull          = false;
    historyDataRecord record = {0};
    uint32_t i               = 0;

    // Write historical data records
    // for (i = 0; i < FLASH_HISTORY_DATA_SIZE_MAX / sizeof(historyDataRecord); i++)
    for (i = 0; i < 255; i++)
    {
        record.timestamp                   = i;              // Set timestamp (example)
        record.writeNum                    = i + 1;          // Set record number
        record.temperature                 = 250;            // Set temperature (e.g., 0.1 degree Celsius)
        record.batteryVoltage_mV           = 3000;           // Set battery voltage (example)
        record.currentWE1                  = i + 1;          // Set current value from sensor 1
        record.currentWE2                  = i + 1;          // Set current value from sensor 2
        record.bloodSugar                  = (i + 1) * 5;    // Set blood sugar value
        record.sensorDeviceStatusCode      = 0;              // Set device status code (example)
        record.bloodSugarChangeRate_SFLOAT = 1;              // Set blood sugar change rate (example)
        record.qualityIndex                = (i);            // Set quality index (example, 0-100)

        EN_ERR_STA_T result = historical_data_write(&isDataFull, record);

        // Output write result
        if (result == ERR_STA_OK)
        {
            printf("Successfully wrote record #%d\n", record.writeNum);
        }
        else
        {
            printf("Failed to write record #%d. Error code: %d\n", record.writeNum, result);
        }

        // Exit loop if data storage is full
        if (isDataFull)
        {
            printf("Data storage is full after writing record #%d.\n", record.writeNum);
            break;    // Exit loop
        }
    }

    // Print current and unsynced record counts
    printf("Current Number of Records: %d\n", get_historical_data_writeNum());
    printf("Unsynced Start Number of Records: %d\n", get_historical_data_readNum());

    historical_data_upload();
#endif
}
