/*************************************************************************************************************
 * @file        gd60932.h
 * @brief       固德泰克 GD60932 UART 红外温度传感器接口
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   封装物温/体温/环境温命令、波特率档位与采样读取。
 *   依赖 bsp_uart_irt 板级 UART；命令字可按批次配置覆盖。
 *
 ************************************************************************************************************/
#ifndef __GD60932_H__
#define __GD60932_H__

#include <stdint.h>
#include <stdbool.h>
#include "err_def.h"

#ifdef __cplusplus
extern "C" {
#endif

/* 官方 UART 命令（十六进制） */
#define GD60932_CMD_OBJECT                 (0xAAu) /* 物温 */
#define GD60932_CMD_BODY                   (0xABu) /* 体温 */
#define GD60932_CMD_AMBIENT                (0xACu) /* 环境温（可配置覆盖） */

typedef enum
{
    GD60932_MODE_OBJECT  = 0,
    GD60932_MODE_BODY    = 1,
    GD60932_MODE_AMBIENT = 2,
    GD60932_MODE_CUSTOM  = 3,
} gd60932_mode_t;

typedef enum
{
    GD60932_SPEED_MS = 0, /* 约 300 ms，波特率 9600 */
    GD60932_SPEED_FS = 1, /* 约 20 ms，波特率 115200 */
} gd60932_speed_t;

typedef struct
{
    gd60932_speed_t enSpeed;
    gd60932_mode_t  enMode;
    uint32_t        u32BaudRate;      /* 0 = 按 enSpeed 自动选择 */
    uint32_t        u32TimeoutMs;     /* 接收超时 */
    uint32_t        u32SettleMs;      /* 发命令后等待/读取前稳定时间 */
    uint8_t         u8CmdObject;
    uint8_t         u8CmdBody;
    uint8_t         u8CmdAmbient;
    uint8_t         u8CmdCustom;      /* enMode == CUSTOM 时使用 */
    bool            bAutoFlushRx;
} gd60932_cfg_t;

typedef struct
{
    float   fTempC;
    int32_t s32RawTenths; /* 例如 242 表示 24.2°C */
    bool    bValid;
    uint8_t au8RawAscii[16];
} gd60932_sample_t;

/**
 * @brief  填充 GD60932 默认配置（MS/物温/命令字等）。
 * @param  pstCfg  输出配置
 */
void gd60932_cfg_default(gd60932_cfg_t *pstCfg);

/**
 * @brief  初始化 UART 并应用传感器配置。
 * @param  pstCfg  配置；NULL 则用默认
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_init(const gd60932_cfg_t *pstCfg);
/**
 * @brief  反初始化驱动并关闭 UART。
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_deinit(void);

/**
 * @brief  更新配置并同步 UART 波特率。
 * @param  pstCfg  新配置
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_set_cfg(const gd60932_cfg_t *pstCfg);
/**
 * @brief  读取当前驱动配置副本。
 * @param  pstCfg  输出配置
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_get_cfg(gd60932_cfg_t *pstCfg);

/**
 * @brief  设置测量模式（物温/体温/环境/自定义）。
 * @param  enMode  目标模式
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_set_mode(gd60932_mode_t enMode);
/**
 * @brief  按 MS/FS 档切换波特率与稳定时间。
 * @param  enSpeed  速度档
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_set_speed(gd60932_speed_t enSpeed);
/**
 * @brief  直接设置 UART 波特率。
 * @param  u32Baud  波特率
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_set_baudrate(uint32_t u32Baud);
/**
 * @brief  设置自定义命令字并切到 CUSTOM 模式。
 * @param  u8Cmd  命令字节
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_set_custom_cmd(uint8_t u8Cmd);

/**
 * @brief  可选清 RX 后发送单字节命令。
 * @param  u8Cmd  命令字节
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_send_cmd(uint8_t u8Cmd);
/**
 * @brief  超时读取并解析 ASCII 温度应答。
 * @param  pstSample  输出采样
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_read_sample(gd60932_sample_t *pstSample);
/**
 * @brief  发送当前模式命令、等待稳定后读取温度。
 * @param  pstSample  输出采样
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_measure(gd60932_sample_t *pstSample); /* 发送当前模式命令并读取 */

/* 便捷接口 */
/**
 * @brief  便捷读取物温（°C）。
 * @param  pfTempC  输出温度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_read_object_c(float *pfTempC);
/**
 * @brief  便捷读取体温（°C）。
 * @param  pfTempC  输出温度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_read_body_c(float *pfTempC);
/**
 * @brief  便捷读取环境温（°C）。
 * @param  pfTempC  输出温度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_read_ambient_c(float *pfTempC);

#ifdef __cplusplus
}
#endif

#endif /* __GD60932_H__ */
