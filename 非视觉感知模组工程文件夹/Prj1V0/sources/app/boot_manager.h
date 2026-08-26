/**
 * @file    boot_manager.h
 * @brief   Boot 管理器
 * @note    处理启动选择、OTA 回退、模型加载
 */
#ifndef BOOT_MANAGER_H
#define BOOT_MANAGER_H

#include <stdint.h>

/* 启动模式 */
typedef enum {
    BOOT_MODE_NORMAL = 0,    /* 正常启动 */
    BOOT_MODE_OTA,           /* OTA 升级后首次启动 */
    BOOT_MODE_RECOVERY,      /* 恢复模式 */
    BOOT_MODE_FACTORY        /* 出厂模式 */
} boot_mode_t;

/* 启动信息（存放在非易失区域） */
typedef struct {
    uint32_t magic;
    uint8_t  active_bank;      /* 当前活动的 APP Bank */
    uint8_t  boot_count;      /* 启动计数 */
    uint8_t  ota_triggered;   /* OTA 触发标志 */
    uint8_t  boot_mode;       /* 启动模式 */
    uint32_t last_fw_version;  /* 上次固件版本 */
    uint32_t active_model_slot; /* 当前激活的模型槽 */
    uint32_t crc;
} boot_info_t;

/* Boot 信息地址（与 app_cfg_ota.h 保持一致） */
#define BOOT_INFO_ADDR       FLASH_BOOT_INFO_ADDR
#define BOOT_INFO_MAGIC      0x424F4F54  /* "BOOT" */

/* API */
void boot_manager_init(void);
boot_mode_t boot_get_mode(void);
uint8_t boot_get_active_bank(void);
uint8_t boot_trigger_ota(uint8_t target_bank);
uint8_t boot_confirm_ota_success(void);
void boot_clear_ota_flag(void);
void boot_set_model_slot(uint8_t slot_id);
uint8_t boot_get_model_slot(void);
void boot_jump_to_app(void);

#endif /* BOOT_MANAGER_H */
