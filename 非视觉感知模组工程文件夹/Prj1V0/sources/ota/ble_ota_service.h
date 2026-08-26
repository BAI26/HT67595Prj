/**
 * @file    ble_ota_service.h
 * @brief   BLE OTA 服务
 * @note    通过 BLE 接收 OTA 数据
 */
#ifndef BLE_OTA_SERVICE_H
#define BLE_OTA_SERVICE_H

#include <stdint.h>

/* BLE OTA 特性 UUID (示例) */
#define BLE_OTA_SERVICE_UUID         {0x12, 0x34, 0x56, 0x78, 0x9A, 0xBC, 0xDE, 0xF0}
#define BLE_OTA_CTRL_UUID            {0x12, 0x34, 0x56, 0x78, 0x9A, 0xBC, 0xDE, 0xF1}
#define BLE_OTA_DATA_UUID            {0x12, 0x34, 0x56, 0x78, 0x9A, 0xBC, 0xDE, 0xF2}

/* OTA 控制命令 */
#define BLE_OTA_CMD_START            0x01
#define BLE_OTA_CMD_DATA             0x02
#define BLE_OTA_CMD_VERIFY           0x03
#define BLE_OTA_CMD_REBOOT           0x04
#define BLE_OTA_CMD_ABORT            0x05
#define BLE_OTA_CMD_MODEL_START      0x10
#define BLE_OTA_CMD_MODEL_DATA       0x11
#define BLE_OTA_CMD_MODEL_COMMIT     0x12

/* OTA 状态通知 */
#define BLE_OTA_STATUS_IDLE          0x00
#define BLE_OTA_STATUS_READY         0x01
#define BLE_OTA_STATUS_DOWNLOADING   0x02
#define BLE_OTA_STATUS_VERIFYING     0x03
#define BLE_OTA_STATUS_SUCCESS       0x04
#define BLE_OTA_STATUS_FAILED        0x05
#define BLE_OTA_STATUS_MODEL_OK      0x10

/* BLE OTA 事件回调 */
typedef void (*ble_ota_evt_cb_t)(uint8_t evt, uint16_t len, const uint8_t *data);

/* API */
void ble_ota_service_init(ble_ota_evt_cb_t callback);
void ble_ota_on_data_received(const uint8_t *data, uint16_t len);
void ble_ota_send_response(uint8_t status, uint16_t seq, const uint8_t *data, uint16_t len);
void ble_ota_send_progress(uint8_t percent);

#endif /* BLE_OTA_SERVICE_H */
