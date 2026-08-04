/*************************************************************************************************************
 * @file        gd60932.c
 * @brief       GD60932 UART 红外温度驱动实现（可配置）
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   协议（固德泰克 UART 系列）：8N1，MS=9600 / FS=115200。
 *   发送 0xAA → 物温 ASCII "+000XXX\r\n"（XXX 为 0.1°C 单位）。
 *   发送 0xAB → 体温；0xAC 为预留/环境温（批次不同可通过配置覆盖）。
 *
 ************************************************************************************************************/
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <string.h>
#include <stdlib.h>

#include "err_def.h"
#include "utility.h"
#include "bsp_uart_irt.h"
#include "gd60932.h"

static bool          s_bInit = false;
static gd60932_cfg_t s_stCfg;

/**
 * @brief  将测量模式映射为配置中的命令字节。
 * @return 命令字
 */
static uint8_t gd60932_mode_to_cmd(gd60932_mode_t enMode)
{
    switch (enMode)
    {
        case GD60932_MODE_BODY:    return s_stCfg.u8CmdBody;
        case GD60932_MODE_AMBIENT: return s_stCfg.u8CmdAmbient;
        case GD60932_MODE_CUSTOM:  return s_stCfg.u8CmdCustom;
        case GD60932_MODE_OBJECT:
        default:                   return s_stCfg.u8CmdObject;
    }
}

/**
 * @brief  由速度档得到默认波特率（9600/115200）。
 * @return 波特率
 */
static uint32_t gd60932_speed_to_baud(gd60932_speed_t enSpeed)
{
    return (GD60932_SPEED_FS == enSpeed) ? 115200u : 9600u;
}

/**
 * @brief  由速度档得到发令后稳定等待毫秒数。
 * @return 毫秒
 */
static uint32_t gd60932_speed_to_settle(gd60932_speed_t enSpeed)
{
    return (GD60932_SPEED_FS == enSpeed) ? 30u : 320u;
}

/**
 * @brief  填充 GD60932 默认配置（MS/物温/命令字等）。
 * @param  pstCfg  输出配置
 */
void gd60932_cfg_default(gd60932_cfg_t *pstCfg)
{
    if (NULL == pstCfg)
    {
        return;
    }
    memset(pstCfg, 0, sizeof(*pstCfg));
    pstCfg->enSpeed      = GD60932_SPEED_MS;
    pstCfg->enMode       = GD60932_MODE_OBJECT;
    pstCfg->u32BaudRate  = 0; /* 自动 */
    pstCfg->u32TimeoutMs = 500;
    pstCfg->u32SettleMs  = 0; /* 自动 */
    pstCfg->u8CmdObject  = GD60932_CMD_OBJECT;
    pstCfg->u8CmdBody    = GD60932_CMD_BODY;
    pstCfg->u8CmdAmbient = GD60932_CMD_AMBIENT;
    pstCfg->u8CmdCustom  = GD60932_CMD_OBJECT;
    pstCfg->bAutoFlushRx = true;
}

/**
 * @brief  将 0 值波特率/稳定/超时补全为速度档默认。
 * @param  pstCfg  待补全配置
 */
static void gd60932_apply_runtime_defaults(gd60932_cfg_t *pstCfg)
{
    if (0u == pstCfg->u32BaudRate)
    {
        pstCfg->u32BaudRate = gd60932_speed_to_baud(pstCfg->enSpeed);
    }
    if (0u == pstCfg->u32SettleMs)
    {
        pstCfg->u32SettleMs = gd60932_speed_to_settle(pstCfg->enSpeed);
    }
    if (0u == pstCfg->u32TimeoutMs)
    {
        pstCfg->u32TimeoutMs = pstCfg->u32SettleMs + 200u;
    }
}

/**
 * @brief  初始化 UART 并应用传感器配置。
 * @param  pstCfg  配置；NULL 则用默认
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_init(const gd60932_cfg_t *pstCfg)
{
    EN_ERR_STA_T enRet;
    bsp_uart_irt_cfg_t stUart;
    gd60932_cfg_t stTmp;

    if (NULL == pstCfg)
    {
        gd60932_cfg_default(&stTmp);
        pstCfg = &stTmp;
    }

    s_stCfg = *pstCfg;
    gd60932_apply_runtime_defaults(&s_stCfg);

    stUart.u32BaudRate = s_stCfg.u32BaudRate;
    enRet = bsp_uart_irt_init(&stUart);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    s_bInit = true;
    return ERR_STA_OK;
}

/**
 * @brief  反初始化驱动并关闭 UART。
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_deinit(void)
{
    s_bInit = false;
    return bsp_uart_irt_deinit();
}

/**
 * @brief  更新配置并同步 UART 波特率。
 * @param  pstCfg  新配置
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_set_cfg(const gd60932_cfg_t *pstCfg)
{
    EN_ERR_STA_T enRet;

    if ((NULL == pstCfg) || (!s_bInit))
    {
        return ERR_STA_ERROR;
    }

    s_stCfg = *pstCfg;
    gd60932_apply_runtime_defaults(&s_stCfg);
    enRet = bsp_uart_irt_set_baudrate(s_stCfg.u32BaudRate);
    return enRet;
}

/**
 * @brief  读取当前驱动配置副本。
 * @param  pstCfg  输出配置
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_get_cfg(gd60932_cfg_t *pstCfg)
{
    if ((NULL == pstCfg) || (!s_bInit))
    {
        return ERR_STA_ERROR;
    }
    *pstCfg = s_stCfg;
    return ERR_STA_OK;
}

/**
 * @brief  设置测量模式（物温/体温/环境/自定义）。
 * @param  enMode  目标模式
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_set_mode(gd60932_mode_t enMode)
{
    if (!s_bInit)
    {
        return ERR_STA_ERROR;
    }
    s_stCfg.enMode = enMode;
    return ERR_STA_OK;
}

/**
 * @brief  按 MS/FS 档切换波特率与稳定时间。
 * @param  enSpeed  速度档
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_set_speed(gd60932_speed_t enSpeed)
{
    if (!s_bInit)
    {
        return ERR_STA_ERROR;
    }
    s_stCfg.enSpeed = enSpeed;
    s_stCfg.u32BaudRate = 0;
    s_stCfg.u32SettleMs = 0;
    gd60932_apply_runtime_defaults(&s_stCfg);
    return bsp_uart_irt_set_baudrate(s_stCfg.u32BaudRate);
}

/**
 * @brief  直接设置 UART 波特率。
 * @param  u32Baud  波特率
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_set_baudrate(uint32_t u32Baud)
{
    if (!s_bInit)
    {
        return ERR_STA_ERROR;
    }
    s_stCfg.u32BaudRate = u32Baud;
    return bsp_uart_irt_set_baudrate(u32Baud);
}

/**
 * @brief  设置自定义命令字并切到 CUSTOM 模式。
 * @param  u8Cmd  命令字节
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_set_custom_cmd(uint8_t u8Cmd)
{
    if (!s_bInit)
    {
        return ERR_STA_ERROR;
    }
    s_stCfg.u8CmdCustom = u8Cmd;
    s_stCfg.enMode = GD60932_MODE_CUSTOM;
    return ERR_STA_OK;
}

/**
 * @brief  可选清 RX 后发送单字节命令。
 * @param  u8Cmd  命令字节
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_send_cmd(uint8_t u8Cmd)
{
    if (!s_bInit)
    {
        return ERR_STA_ERROR;
    }
    if (s_stCfg.bAutoFlushRx)
    {
        (void)bsp_uart_irt_flush_rx();
    }
    return bsp_uart_irt_write_byte(u8Cmd);
}

/**
 * @brief  解析 "+/-XXX" ASCII 温度为 0.1°C 单位。
 * @return true 解析成功
 */
static bool gd60932_parse_ascii(const uint8_t *pu8Buf, uint16_t u16Len, gd60932_sample_t *pstSample)
{
    char acTmp[16];
    uint16_t i;
    uint16_t n = 0;
    long lVal;

    memset(acTmp, 0, sizeof(acTmp));
    for (i = 0; (i < u16Len) && (n < (sizeof(acTmp) - 1u)); i++)
    {
        char c = (char)pu8Buf[i];
        if ((c == '+') || (c == '-') || ((c >= '0') && (c <= '9')))
        {
            acTmp[n++] = c;
        }
        else if ((c == '\r') || (c == '\n') || (c == ' '))
        {
            if (n > 0u)
            {
                break;
            }
        }
    }

    if (n < 2u)
    {
        return false;
    }

    lVal = strtol(acTmp, NULL, 10);
    pstSample->s32RawTenths = (int32_t)lVal;
    pstSample->fTempC = ((float)lVal) * 0.1f;
    pstSample->bValid = true;
    return true;
}

/**
 * @brief  超时读取并解析 ASCII 温度应答。
 * @param  pstSample  输出采样
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_read_sample(gd60932_sample_t *pstSample)
{
    uint8_t au8Buf[24];
    uint16_t u16Got = 0;
    EN_ERR_STA_T enRet;

    if ((NULL == pstSample) || (!s_bInit))
    {
        return ERR_STA_ERROR;
    }

    memset(pstSample, 0, sizeof(*pstSample));
    enRet = bsp_uart_irt_read(au8Buf, sizeof(au8Buf) - 1u, &u16Got, s_stCfg.u32TimeoutMs);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    memcpy(pstSample->au8RawAscii, au8Buf, (u16Got < sizeof(pstSample->au8RawAscii)) ?
           u16Got : (sizeof(pstSample->au8RawAscii) - 1u));

    if (!gd60932_parse_ascii(au8Buf, u16Got, pstSample))
    {
        return ERR_STA_ERROR;
    }
    return ERR_STA_OK;
}

/**
 * @brief  发送当前模式命令、等待稳定后读取温度。
 * @param  pstSample  输出采样
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_measure(gd60932_sample_t *pstSample)
{
    EN_ERR_STA_T enRet;
    uint8_t u8Cmd;

    if (!s_bInit)
    {
        return ERR_STA_ERROR;
    }

    u8Cmd = gd60932_mode_to_cmd(s_stCfg.enMode);
    enRet = gd60932_send_cmd(u8Cmd);
    if (ERR_STA_OK != enRet)
    {
        return enRet;
    }

    /* 传感器转换时间 */
    if (s_stCfg.u32SettleMs > 0u)
    {
        rom_delay_ms(s_stCfg.u32SettleMs);
    }

    return gd60932_read_sample(pstSample);
}

/**
 * @brief  临时切换模式测量后恢复，输出摄氏度。
 * @param  enMode  临时模式
 * @param  pfTempC  输出温度
 * @return ERR_STA_OK 成功
 */
static EN_ERR_STA_T gd60932_measure_mode(gd60932_mode_t enMode, float *pfTempC)
{
    gd60932_sample_t stSample;
    EN_ERR_STA_T enRet;
    gd60932_mode_t enOld;

    if (NULL == pfTempC)
    {
        return ERR_STA_ERROR;
    }

    enOld = s_stCfg.enMode;
    s_stCfg.enMode = enMode;
    enRet = gd60932_measure(&stSample);
    s_stCfg.enMode = enOld;

    if ((ERR_STA_OK == enRet) && stSample.bValid)
    {
        *pfTempC = stSample.fTempC;
    }
    return enRet;
}

/**
 * @brief  便捷读取物温（°C）。
 * @param  pfTempC  输出温度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_read_object_c(float *pfTempC)
{
    return gd60932_measure_mode(GD60932_MODE_OBJECT, pfTempC);
}

/**
 * @brief  便捷读取体温（°C）。
 * @param  pfTempC  输出温度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_read_body_c(float *pfTempC)
{
    return gd60932_measure_mode(GD60932_MODE_BODY, pfTempC);
}

/**
 * @brief  便捷读取环境温（°C）。
 * @param  pfTempC  输出温度
 * @return ERR_STA_OK 成功
 */
EN_ERR_STA_T gd60932_read_ambient_c(float *pfTempC)
{
    return gd60932_measure_mode(GD60932_MODE_AMBIENT, pfTempC);
}
