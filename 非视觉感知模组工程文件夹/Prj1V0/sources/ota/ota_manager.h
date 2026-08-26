/**
 * @file    ota_manager.h
 * @brief   OTA 升级管理器
 * @note    支持 A/B 双区升级，多模型切换
 */
#ifndef OTA_MANAGER_H
#define OTA_MANAGER_H

#include <stdint.h>

/* Flash 地址定义 */
#define FLASH_BASE_ADDR          0x10000000
#define FLASH_APP_A_ADDR        0x10002000
#define FLASH_APP_A_SIZE         (150 * 1024)
#define FLASH_APP_B_ADDR         0x10027800
#define FLASH_APP_B_SIZE         (150 * 1024)
#define FLASH_MODEL_SLOT1_ADDR   0x1004D000
#define FLASH_MODEL_SLOT1_SIZE   (40 * 1024)
#define FLASH_MODEL_SLOT2_ADDR   0x10057000
#define FLASH_MODEL_SLOT2_SIZE   (40 * 1024)
#define FLASH_CONFIG_ADDR        0x10061000
#define FLASH_CONFIG_SIZE        (16 * 1024)

/* 当前运行区 */
#define CURRENT_APP_ADDR         FLASH_APP_A_ADDR

/* OTA 状态 */
typedef enum {
    OTA_STATE_IDLE = 0,
    OTA_STATE_DOWNLOADING,
    OTA_STATE_VERIFYING,
    OTA_STATE_BOOTING_NEW,
    OTA_STATE_FAILED
} ota_state_t;

/* 固件信息结构 */
typedef struct {
    uint32_t magic;              /* 0xCAFEBABE */
    uint32_t version;            /* 固件版本 */
    uint32_t size;               /* 固件大小 */
    uint32_t crc32;             /* CRC校验 */
    uint32_t timestamp;         /* 编译时间戳 */
    uint8_t  app_bank;           /* APP Bank A=0, B=1 */
    uint8_t  model_count;        /* 包含的模型数量 */
    uint8_t  reserved[14];
} __attribute__((packed)) fw_info_t;

/* 模型槽位信息 */
typedef struct {
    uint32_t magic;              /* 0xDEADBEEF */
    uint32_t version;            /* 模型版本 */
    uint32_t size;               /* 模型大小 */
    uint32_t crc32;             /* CRC校验 */
    uint32_t tensor_count;       /* Tensor数量 */
    uint32_t input_size;         /* 输入维度 */
    uint32_t output_size;        /* 输出维度 */
    uint8_t  model_type;        /* 模型类型 */
    uint8_t  is_active;         /* 是否激活 */
    uint8_t  reserved[10];
} __attribute__((packed)) model_info_t;

/* OTA 事件回调 */
typedef void (*ota_progress_cb_t)(uint8_t percent);
typedef void (*ota_complete_cb_t)(uint8_t success, const char *msg);

/* OTA 管理器句柄 */
typedef struct {
    ota_state_t state;
    fw_info_t   target_fw;
    uint32_t    bytes_received;
    uint32_t    total_size;
    uint8_t     target_bank;     /* 升级目标区 */
    ota_progress_cb_t progress_cb;
    ota_complete_cb_t complete_cb;
} ota_handle_t;

/* 全局句柄 */
extern ota_handle_t g_ota_handle;

/* API 函数 */
void ota_init(void);
ota_state_t ota_get_state(void);
uint8_t ota_start_download(uint32_t total_size, uint8_t target_bank);
uint8_t ota_write_chunk(uint32_t offset, const uint8_t *data, uint32_t len);
uint8_t ota_verify_and_commit(void);
uint8_t ota_rollback(void);
void ota_abort(void);

/* 模型管理 */
uint8_t model_slot_load(uint8_t slot_id);
uint8_t model_slot_get_info(uint8_t slot_id, model_info_t *info);
uint8_t model_slot_activate(uint8_t slot_id);
const uint8_t* model_slot_get_data(uint8_t slot_id);
uint32_t model_slot_get_size(uint8_t slot_id);

/* Flash 操作 */
uint8_t flash_write(uint32_t addr, const uint8_t *data, uint32_t len);
uint8_t flash_erase(uint32_t addr, uint32_t len);
uint32_t flash_crc32(uint32_t addr, uint32_t len);

/* Bootloader 跳转 */
void boot_jump_to_bank(uint8_t bank);

#endif /* OTA_MANAGER_H */
