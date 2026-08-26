/**
 * @file    boot_manager.c
 * @brief   Boot 管理器实现
 */
#include "boot_manager.h"
#include "app_cfg_ota.h"
#include "ht32f675x5_flash.h"

extern uint32_t _estack;  /* From linker script */

/* Boot 信息 */
static boot_info_t g_boot_info __attribute__((section(".boot_info")));
static boot_info_t g_boot_info_ram;

/**
 * @brief   Boot 管理器初始化
 */
void boot_manager_init(void)
{
    /* 从 Flash 加载 Boot 信息 */
    memcpy(&g_boot_info_ram, (void *)BOOT_INFO_ADDR, sizeof(boot_info_t));
    
    /* 检查 Magic */
    if (g_boot_info_ram.magic != BOOT_INFO_MAGIC) {
        /* 首次启动，初始化默认值 */
        memset(&g_boot_info_ram, 0, sizeof(boot_info_t));
        g_boot_info_ram.magic = BOOT_INFO_MAGIC;
        g_boot_info_ram.active_bank = 0;  /* 默认 Bank A */
        g_boot_info_ram.boot_mode = BOOT_MODE_NORMAL;
        g_boot_info_ram.active_model_slot = 0;
    }
    
    /* 检查 OTA 触发标志 */
    if (g_boot_info_ram.ota_triggered) {
        g_boot_info_ram.boot_mode = BOOT_MODE_OTA;
        g_boot_info_ram.ota_triggered = 0;
        g_boot_info_ram.boot_count = 0;
        boot_save_info();
    }
    
    /* 增加启动计数 */
    g_boot_info_ram.boot_count++;
    boot_save_info();
}

/**
 * @brief   保存 Boot 信息到 Flash
 */
static void boot_save_info(void)
{
    /* 计算 CRC */
    g_boot_info_ram.crc = 0;
    g_boot_info_ram.crc = calc_crc32((uint8_t *)&g_boot_info_ram, 
                                      sizeof(boot_info_t) - 4);
    
    /* 写入 Flash */
    FLASH_EraseSector(BOOT_INFO_ADDR);
    FLASH_ProgramPage(BOOT_INFO_ADDR, (uint32_t *)&g_boot_info_ram);
}

/**
 * @brief   获取启动模式
 */
boot_mode_t boot_get_mode(void)
{
    return (boot_mode_t)g_boot_info_ram.boot_mode;
}

/**
 * @brief   获取当前活动的 Bank
 */
uint8_t boot_get_active_bank(void)
{
    return g_boot_info_ram.active_bank;
}

/**
 * @brief   触发 OTA 切换
 */
uint8_t boot_trigger_ota(uint8_t target_bank)
{
    g_boot_info_ram.ota_triggered = 1;
    g_boot_info_ram.active_bank = target_bank;
    boot_save_info();
    return 0;
}

/**
 * @brief   确认 OTA 成功
 */
uint8_t boot_confirm_ota_success(void)
{
    g_boot_info_ram.boot_mode = BOOT_MODE_NORMAL;
    g_boot_info_ram.ota_triggered = 0;
    boot_save_info();
    return 0;
}

/**
 * @brief   清除 OTA 标志
 */
void boot_clear_ota_flag(void)
{
    g_boot_info_ram.ota_triggered = 0;
    boot_save_info();
}

/**
 * @brief   设置当前模型槽
 */
void boot_set_model_slot(uint8_t slot_id)
{
    g_boot_info_ram.active_model_slot = slot_id;
    boot_save_info();
}

/**
 * @brief   获取当前模型槽
 */
uint8_t boot_get_model_slot(void)
{
    return (uint8_t)g_boot_info_ram.active_model_slot;
}

/**
 * @brief   跳转到应用程序
 */
void boot_jump_to_app(void)
{
    uint32_t app_addr;
    uint32_t app_sp;
    uint32_t app_reset_handler;
    void (*app_jump)(void);
    
    /* 获取应用程序地址 */
    if (g_boot_info_ram.active_bank == 0) {
        app_addr = FLASH_APP_A_ADDR;
    } else {
        app_addr = FLASH_APP_B_ADDR;
    }
    
    /* 获取 SP 和 Reset Handler */
    app_sp = *(uint32_t *)app_addr;
    app_reset_handler = *(uint32_t *)(app_addr + 4);
    
    /* 检查有效性 */
    if (app_sp == 0xFFFFFFFF || app_reset_handler == 0xFFFFFFFF) {
        /* 应用程序无效，尝试回退 */
        if (g_boot_info_ram.active_bank == 0) {
            /* 切换到 Bank B */
            g_boot_info_ram.active_bank = 1;
        } else {
            /* 切换到 Bank A */
            g_boot_info_ram.active_bank = 0;
        }
        boot_save_info();
        return;  /* 重新启动 */
    }
    
    /* 禁能中断 */
    __disable_irq();
    
    /* 设置向量表 */
    SCB->VTOR = app_addr;
    
    /* 设置 MSP */
    __set_MSP(app_sp);
    
    /* 跳转 */
    app_jump = (void (*)(void))app_reset_handler;
    app_jump();
    
    /* 不应到达这里 */
    while (1);
}

/**
 * @brief   简单的 CRC32 计算
 */
static uint32_t calc_crc32(uint8_t *data, uint32_t len)
{
    uint32_t crc = 0xFFFFFFFF;
    while (len--) {
        crc ^= *data++;
        for (int i = 0; i < 8; i++) {
            crc = (crc >> 1) ^ (0xEDB88320 & -(crc & 1));
        }
    }
    return ~crc;
}
