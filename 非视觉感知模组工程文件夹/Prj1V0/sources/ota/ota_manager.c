/**
 * @file    ota_manager.c
 * @brief   OTA 升级管理器实现
 * @note    支持 A/B 双区升级，多模型切换
 */
#include "ota_manager.h"
#include "app_flash.h"
#include "string.h"

#include "ARMCM33_DSP_FP.h"

/* Flash 编程参数 */
#define FLASH_PAGE_SIZE    256
#define FLASH_SECTOR_SIZE 4096

/* Magic 头 */
#define FW_INFO_MAGIC     0xCAFEBABE
#define MODEL_INFO_MAGIC  0xDEADBEEF

/* 临时缓冲（对齐到扇区） */
static uint8_t g_ota_buffer[FLASH_SECTOR_SIZE] __attribute__((aligned(4)));
static uint32_t g_ota_write_addr = 0;
static uint32_t g_ota_buffer_offset = 0;

/* 全局句柄 */
ota_handle_t g_ota_handle = {
    .state = OTA_STATE_IDLE,
    .target_bank = 1,  /* 默认升级 Bank B */
};

/* CRC32 表 */
static const uint32_t crc32_table[256] = {
    0x00000000, 0x77073096, 0xEE0E612C, 0x990951BA,
    0x076DC419, 0x706AF48F, 0xE963A535, 0x9E6495A3,
    /* ... 完整表略 */
};

/**
 * @brief   CRC32 计算
 */
uint32_t flash_crc32(uint32_t addr, uint32_t len)
{
    uint32_t crc = 0xFFFFFFFF;
    const uint8_t *p = (const uint8_t *)addr;
    
    while (len--) {
        crc = crc ^ *p++;
        for (int i = 0; i < 8; i++) {
            crc = (crc >> 1) ^ (0xEDB88320 & -(crc & 1));
        }
    }
    return ~crc;
}

/**
 * @brief   Flash 页编程
 */
uint8_t flash_write_page(uint32_t addr, const uint8_t *data)
{
    /* 使用 app_flash API 写入一个页 (256 bytes) */
    app_flash_write(addr, (uint8_t *)data, FLASH_PAGE_SIZE, BUS_MODE_QPI);
    return 0;
}

/**
 * @brief   Flash 扇区擦除
 */
uint8_t flash_erase_sector(uint32_t addr)
{
    /* 使用 app_flash API 擦除一个扇区 (4KB) */
    app_flash_erase(ERASE_SECTOR, 1);
    return 0;
}

/**
 * @brief   OTA 初始化
 */
void ota_init(void)
{
    fw_info_t *fw_info = (fw_info_t *)FLASH_APP_A_ADDR;
    
    /* 检查 Bank B 是否有有效固件 */
    if (fw_info->magic == FW_INFO_MAGIC) {
        g_ota_handle.target_bank = 1;  /* 上次升级到 Bank B */
    }
}

/**
 * @brief   开始下载
 */
uint8_t ota_start_download(uint32_t total_size, uint8_t target_bank)
{
    if (g_ota_handle.state != OTA_STATE_IDLE) {
        return 1;  /* 已在进行中 */
    }
    
    g_ota_handle.state = OTA_STATE_DOWNLOADING;
    g_ota_handle.total_size = total_size;
    g_ota_handle.target_bank = target_bank;
    g_ota_handle.bytes_received = 0;
    
    /* 计算目标地址 */
    if (target_bank == 0) {
        g_ota_write_addr = FLASH_APP_A_ADDR;
    } else {
        g_ota_write_addr = FLASH_APP_B_ADDR;
    }
    
    /* 擦除目标区域 */
    uint32_t erase_size = (total_size + FLASH_SECTOR_SIZE - 1) & ~(FLASH_SECTOR_SIZE - 1);
    flash_erase_sector(g_ota_write_addr);
    
    g_ota_buffer_offset = 0;
    memset(g_ota_buffer, 0xFF, sizeof(g_ota_buffer));
    
    return 0;
}

/**
 * @brief   写入数据块
 */
uint8_t ota_write_chunk(uint32_t offset, const uint8_t *data, uint32_t len)
{
    uint32_t i;
    
    for (i = 0; i < len; i++) {
        g_ota_buffer[g_ota_buffer_offset++] = data[i];
        
        /* 缓冲区满，写入 Flash */
        if (g_ota_buffer_offset >= FLASH_SECTOR_SIZE) {
            flash_write_page(g_ota_write_addr, g_ota_buffer);
            g_ota_write_addr += FLASH_SECTOR_SIZE;
            g_ota_buffer_offset = 0;
            memset(g_ota_buffer, 0xFF, sizeof(g_ota_buffer));
            
            /* 进度回调 */
            if (g_ota_handle.progress_cb) {
                uint8_t percent = (uint8_t)((g_ota_handle.bytes_received * 100) / g_ota_handle.total_size);
                g_ota_handle.progress_cb(percent);
            }
        }
    }
    
    g_ota_handle.bytes_received += len;
    return 0;
}

/**
 * @brief   验证并提交
 */
uint8_t ota_verify_and_commit(void)
{
    fw_info_t *fw_info;
    uint32_t calc_crc;
    uint32_t target_addr;
    
    g_ota_handle.state = OTA_STATE_VERIFYING;
    
    /* 写剩余数据 */
    if (g_ota_buffer_offset > 0) {
        flash_write_page(g_ota_write_addr, g_ota_buffer);
        g_ota_write_addr += FLASH_SECTOR_SIZE;
    }
    
    /* 获取目标地址 */
    if (g_ota_handle.target_bank == 0) {
        target_addr = FLASH_APP_A_ADDR;
    } else {
        target_addr = FLASH_APP_B_ADDR;
    }
    
    /* 读取固件信息 */
    fw_info = (fw_info_t *)target_addr;
    
    /* 验证 Magic */
    if (fw_info->magic != FW_INFO_MAGIC) {
        g_ota_handle.state = OTA_STATE_FAILED;
        return 1;
    }
    
    /* 验证 CRC */
    calc_crc = flash_crc32(target_addr + sizeof(fw_info_t), 
                           fw_info->size - sizeof(fw_info_t));
    if (calc_crc != fw_info->crc32) {
        g_ota_handle.state = OTA_STATE_FAILED;
        return 2;
    }
    
    /* 写入启动标记，触发重启 */
    g_ota_handle.state = OTA_STATE_BOOTING_NEW;
    
    /* 更新启动信息 */
    fw_info_t boot_info;
    boot_info.magic = FW_INFO_MAGIC;
    boot_info.app_bank = g_ota_handle.target_bank;
    /* 写入 Boot 区域 */
    
    return 0;
}

/**
 * @brief   回滚
 */
uint8_t ota_rollback(void)
{
    g_ota_handle.state = OTA_STATE_IDLE;
    /* 擦除失败的 Bank */
    return 0;
}

/**
 * @brief   中止 OTA */
void ota_abort(void)
{
    g_ota_handle.state = OTA_STATE_IDLE;
    g_ota_handle.bytes_received = 0;
    g_ota_handle.total_size = 0;
}

/**
 * @brief   跳转到指定 Bank
 */
void boot_jump_to_bank(uint8_t bank)
{
    uint32_t jump_addr;
    void (*boot_jump)(void);
    
    if (bank == 0) {
        jump_addr = FLASH_APP_A_ADDR + 4;  /* 跳过向量表 */
    } else {
        jump_addr = FLASH_APP_B_ADDR + 4;
    }
    
    /* 禁止中断 */
    __disable_irq();
    
    /* 设置向量表 */
    SCB->VTOR = (bank == 0) ? FLASH_APP_A_ADDR : FLASH_APP_B_ADDR;
    
    /* 跳转 */
    boot_jump = (void (*)(void))(*(uint32_t *)jump_addr);
    boot_jump();
}

/* ==================== 模型管理 ==================== */

/**
 * @brief   加载模型槽位
 */
uint8_t model_slot_load(uint8_t slot_id)
{
    model_info_t *info;
    uint32_t addr;
    
    if (slot_id == 0) {
        addr = FLASH_MODEL_SLOT1_ADDR;
    } else {
        addr = FLASH_MODEL_SLOT2_ADDR;
    }
    
    info = (model_info_t *)addr;
    
    if (info->magic != MODEL_INFO_MAGIC) {
        return 1;  /* 无效模型 */
    }
    
    return 0;
}

/**
 * @brief   获取模型信息
 */
uint8_t model_slot_get_info(uint8_t slot_id, model_info_t *info)
{
    uint32_t addr = (slot_id == 0) ? FLASH_MODEL_SLOT1_ADDR : FLASH_MODEL_SLOT2_ADDR;
    memcpy(info, (void *)addr, sizeof(model_info_t));
    
    return (info->magic == MODEL_INFO_MAGIC) ? 0 : 1;
}

/**
 * @brief   获取模型数据指针
 */
const uint8_t* model_slot_get_data(uint8_t slot_id)
{
    uint32_t addr = (slot_id == 0) ? FLASH_MODEL_SLOT1_ADDR : FLASH_MODEL_SLOT2_ADDR;
    return (const uint8_t *)(addr + sizeof(model_info_t));
}

/**
 * @brief   获取模型大小
 */
uint32_t model_slot_get_size(uint8_t slot_id)
{
    model_info_t info;
    if (model_slot_get_info(slot_id, &info) == 0) {
        return info.size - sizeof(model_info_t);
    }
    return 0;
}

/**
 * @brief   激活模型槽位
 */
uint8_t model_slot_activate(uint8_t slot_id)
{
    model_info_t *info;
    uint32_t addr = (slot_id == 0) ? FLASH_MODEL_SLOT1_ADDR : FLASH_MODEL_SLOT2_ADDR;
    
    info = (model_info_t *)addr;
    info->is_active = 1;
    
    /* 写入 Flash */
    flash_write_page(addr, (const uint8_t *)info);
    
    return 0;
}
