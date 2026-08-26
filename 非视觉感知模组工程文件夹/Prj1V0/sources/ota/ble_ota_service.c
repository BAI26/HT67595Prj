/**
 * @file    ble_ota_service.c
 * @brief   BLE OTA 服务实现
 */
#include "ble_ota_service.h"
#include "ota_manager.h"

/* 包头结构 */
typedef struct {
    uint8_t  cmd;           /* 命令 */
    uint8_t  flags;         /* 标志 */
    uint16_t seq;           /* 序列号 */
    uint16_t len;           /* 数据长度 */
    uint32_t offset;        /* 偏移量 */
} __attribute__((packed)) ota_packet_hdr_t;

/* BLE 接收缓冲 */
static uint8_t g_ble_rx_buf[256];
static uint16_t g_ble_rx_len = 0;

/* OTA 事件回调 */
static ble_ota_evt_cb_t g_evt_cb = NULL;

/* 当前下载信息 */
static uint8_t  g_current_target_bank = 1;
static uint16_t g_expected_seq = 0;
static uint8_t  g_model_download_slot = 0xFF;

/**
 * @brief   初始化 BLE OTA 服务
 */
void ble_ota_service_init(ble_ota_evt_cb_t callback)
{
    g_evt_cb = callback;
    g_ble_rx_len = 0;
    g_expected_seq = 0;
}

/**
 * @brief   处理接收到的 BLE 数据
 */
void ble_ota_on_data_received(const uint8_t *data, uint16_t len)
{
    ota_packet_hdr_t *hdr;
    uint8_t *payload;
    uint16_t payload_len;
    
    /* 复制到缓冲 */
    if (g_ble_rx_len + len > sizeof(g_ble_rx_buf)) {
        /* 缓冲溢出，重置 */
        g_ble_rx_len = 0;
        return;
    }
    
    memcpy(g_ble_rx_buf + g_ble_rx_len, data, len);
    g_ble_rx_len += len;
    
    /* 解析包头 */
    while (g_ble_rx_len >= sizeof(ota_packet_hdr_t)) {
        hdr = (ota_packet_hdr_t *)g_ble_rx_buf;
        
        /* 检查包完整性 */
        payload_len = hdr->len;
        if (g_ble_rx_len < sizeof(ota_packet_hdr_t) + payload_len) {
            break;  /* 等待更多数据 */
        }
        
        payload = g_ble_rx_buf + sizeof(ota_packet_hdr_t);
        
        /* 处理命令 */
        switch (hdr->cmd) {
            case BLE_OTA_CMD_START:
                /* 开始固件下载 */
                if (payload_len >= 8) {
                    uint32_t total_size = *(uint32_t *)payload;
                    uint8_t target_bank = payload[4];
                    g_current_target_bank = target_bank;
                    g_expected_seq = 0;
                    
                    ota_start_download(total_size, target_bank);
                    ble_ota_send_response(BLE_OTA_STATUS_READY, hdr->seq, NULL, 0);
                }
                break;
                
            case BLE_OTA_CMD_DATA:
                /* 固件数据 */
                if (hdr->seq == g_expected_seq) {
                    ota_write_chunk(hdr->offset, payload, payload_len);
                    g_expected_seq++;
                    ble_ota_send_response(BLE_OTA_STATUS_DOWNLOADING, hdr->seq, NULL, 0);
                } else {
                    /* 序列号错误 */
                    ble_ota_send_response(BLE_OTA_STATUS_FAILED, hdr->seq, (uint8_t *)"SEQ_ERR", 7);
                }
                break;
                
            case BLE_OTA_CMD_VERIFY:
                /* 验证固件 */
                if (ota_verify_and_commit() == 0) {
                    ble_ota_send_response(BLE_OTA_STATUS_SUCCESS, hdr->seq, NULL, 0);
                } else {
                    ble_ota_send_response(BLE_OTA_STATUS_FAILED, hdr->seq, (uint8_t *)"VER_ERR", 7);
                }
                break;
                
            case BLE_OTA_CMD_REBOOT:
                /* 重启到新固件 */
                ble_ota_send_response(BLE_OTA_STATUS_SUCCESS, hdr->seq, NULL, 0);
                delay_ms(100);
                NVIC_SystemReset();
                break;
                
            case BLE_OTA_CMD_ABORT:
                ota_abort();
                ble_ota_send_response(BLE_OTA_STATUS_IDLE, hdr->seq, NULL, 0);
                break;
                
            case BLE_OTA_CMD_MODEL_START:
                /* 开始模型下载 */
                if (payload_len >= 1) {
                    g_model_download_slot = payload[0];
                    /* TODO: 擦除模型存储区，准备接收 */
                    ble_ota_send_response(BLE_OTA_STATUS_MODEL_OK, hdr->seq, NULL, 0);
                }
                break;
                
            case BLE_OTA_CMD_MODEL_DATA:
                /* 模型数据 */
                if (g_model_download_slot < 2) {
                    uint32_t model_addr = (g_model_download_slot == 0) ? 
                                          FLASH_MODEL_SLOT1_ADDR : FLASH_MODEL_SLOT2_ADDR;
                    /* TODO: 写入模型数据到 Flash */
                    ble_ota_send_response(BLE_OTA_STATUS_MODEL_OK, hdr->seq, NULL, 0);
                }
                break;
                
            case BLE_OTA_CMD_MODEL_COMMIT:
                /* 提交模型 */
                if (g_model_download_slot < 2) {
                    model_slot_activate(g_model_download_slot);
                    g_model_download_slot = 0xFF;
                    ble_ota_send_response(BLE_OTA_STATUS_MODEL_OK, hdr->seq, NULL, 0);
                }
                break;
                
            default:
                break;
        }
        
        /* 移动缓冲 */
        uint16_t consumed = sizeof(ota_packet_hdr_t) + payload_len;
        memmove(g_ble_rx_buf, g_ble_rx_buf + consumed, g_ble_rx_len - consumed);
        g_ble_rx_len -= consumed;
    }
}

/**
 * @brief   发送响应（通过 GATT Notification） */
void ble_ota_send_response(uint8_t status, uint16_t seq, const uint8_t *data, uint16_t len)
{
    uint8_t resp[32];
    resp[0] = status;
    resp[1] = (uint8_t)(seq >> 8);
    resp[2] = (uint8_t)seq;
    
    if (data && len > 0 && len <= 28) {
        memcpy(&resp[3], data, len);
    }
    
    /* TODO: 调用 BLE stack 发送 Notification */
    // ble_gatt_notify(BLE_OTA_CTRL_UUID, resp, 3 + len);
}

/**
 * @brief   发送下载进度
 */
void ble_ota_send_progress(uint8_t percent)
{
    uint8_t notif[4];
    notif[0] = BLE_OTA_STATUS_DOWNLOADING;
    notif[1] = percent;
    notif[2] = 0;
    notif[3] = 0;
    
    /* TODO: 调用 BLE stack 发送 Notification */
    // ble_gatt_notify(BLE_OTA_CTRL_UUID, notif, 4);
}
