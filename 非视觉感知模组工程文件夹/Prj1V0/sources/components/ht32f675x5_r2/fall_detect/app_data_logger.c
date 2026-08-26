/*************************************************************************************************************
 * @file    app_data_logger.c
 * @brief   跌倒检测数据采集实现
 * @author  白楠帝
 * @date    2026-08-24
 * @version V1.0
 * @attention
 *
 * 功能说明：
 *   - 采集 IMU 数据 (加速度计 + 陀螺仪) 用于模型训练
 *   - 支持 ADL 和 FALL 两种模式
 *   - 数据通过 UART 输出供 PC 端捕获
 *
 * UART 输出格式：
 *   $START,<type>,<sample_count>
 *   <accX>,<accY>,<accZ>,<gyroX>,<gyroY>,<gyroZ>
 *   ...
 *   $END,<sample_count>
 *
 * 使用方法：
 *   1. 配置 DATA_LOGGER_ENABLED = 1
 *   2. 配置 DATA_LOGGER_TYPE = FALL_TYPE_ADL 或 FALL_TYPE_FALL
 *   3. 编译下载
 *   4. 在 UART 终端观察输出，复制保存为 .txt 文件
 *
 ************************************************************************************************************/
#include "app_data_logger.h"
#include <string.h>
#include <stdio.h>

// ==================== 默认值定义 ====================
#ifndef DATA_WINDOW_SIZE
#define DATA_WINDOW_SIZE          512   // 每次采集样本数 (~5秒 @ 100Hz)
#endif

#ifndef DATA_LOG_UART_BAUD
#define DATA_LOG_UART_BAUD        460800  // 高速 UART 输出
#endif

// ==================== 私有类型 ====================
typedef struct {
    fall_type_t eType;          // 当前采集类型
    uint32_t u32Count;          // 已采集样本数
    float afAccX[DATA_WINDOW_SIZE];
    float afAccY[DATA_WINDOW_SIZE];
    float afAccZ[DATA_WINDOW_SIZE];
    float afGyroX[DATA_WINDOW_SIZE];
    float afGyroY[DATA_WINDOW_SIZE];
    float afGyroZ[DATA_WINDOW_SIZE];
} data_logger_t;

// ==================== 外部函数声明 ====================
// app_debug.h 中定义的 PRINTF 宏
#if defined(APP_DEBUG_ENABLED) && (APP_DEBUG_ENABLED == 1)
    extern int printf(const char *fmt, ...);
    #define LOG_PRINTF(fmt, ...)     printf(fmt, ##__VA_ARGS__)
#else
    #define LOG_PRINTF(fmt, ...)     ((void)0)
#endif

// ==================== 静态变量 ====================
static data_logger_t s_stLogger;
static bool s_bInitialized = false;

// ==================== 内部函数 ====================

/**
 * @brief  输出单行数据
 */
static void print_sample(int idx)
{
    // 使用高精度打印，保留6位小数
    // 格式: accX,accY,accZ,gyroX,gyroY,gyroZ
    LOG_PRINTF("%.6f,%.6f,%.6f,%.6f,%.6f,%.6f\r\n",
           (double)s_stLogger.afAccX[idx],
           (double)s_stLogger.afAccY[idx],
           (double)s_stLogger.afAccZ[idx],
           (double)s_stLogger.afGyroX[idx],
           (double)s_stLogger.afGyroY[idx],
           (double)s_stLogger.afGyroZ[idx]);
}

/**
 * @brief  打印头部信息
 */
static void print_header(void)
{
    // 打印分隔行便于识别
    LOG_PRINTF("\r\n");
    LOG_PRINTF("========================================\r\n");
    LOG_PRINTF("$START,%u,%lu\r\n",
           (unsigned int)s_stLogger.eType,
           (unsigned long)s_stLogger.u32Count);
    LOG_PRINTF("# Type: %s\r\n",
           (s_stLogger.eType == FALL_TYPE_ADL) ? "ADL" : "FALL");
    LOG_PRINTF("# Samples: %lu\r\n", (unsigned long)s_stLogger.u32Count);
    LOG_PRINTF("# Format: accX(g),accY(g),accZ(g),gyroX(dps),gyroY(dps),gyroZ(dps)\r\n");
    LOG_PRINTF("----------------------------------------\r\n");
}

/**
 * @brief  打印尾部信息
 */
static void print_footer(void)
{
    LOG_PRINTF("----------------------------------------\r\n");
    LOG_PRINTF("$END,%lu\r\n", (unsigned long)s_stLogger.u32Count);
    LOG_PRINTF("========================================\r\n");
    LOG_PRINTF("\r\n");
}

/**
 * @brief  内部保存函数
 */
static void save_and_reset(void)
{
    if (s_stLogger.u32Count == 0) {
        LOG_PRINTF("[LOGGER] Buffer empty, skip.\r\n");
        return;
    }

    print_header();

    // 输出所有数据
    for (uint32_t i = 0; i < s_stLogger.u32Count; i++) {
        print_sample(i);
    }

    print_footer();

    LOG_PRINTF("[LOGGER] Saved %lu samples\r\n", (unsigned long)s_stLogger.u32Count);

    // 重置缓冲区
    s_stLogger.u32Count = 0;
    memset(s_stLogger.afAccX, 0, sizeof(s_stLogger.afAccX));
    memset(s_stLogger.afAccY, 0, sizeof(s_stLogger.afAccY));
    memset(s_stLogger.afAccZ, 0, sizeof(s_stLogger.afAccZ));
    memset(s_stLogger.afGyroX, 0, sizeof(s_stLogger.afGyroX));
    memset(s_stLogger.afGyroY, 0, sizeof(s_stLogger.afGyroY));
    memset(s_stLogger.afGyroZ, 0, sizeof(s_stLogger.afGyroZ));
}

// ==================== 公共函数 ====================

void data_logger_init(fall_type_t eType)
{
    memset(&s_stLogger, 0, sizeof(s_stLogger));
    s_stLogger.eType = eType;
    s_bInitialized = true;

    LOG_PRINTF("\r\n");
    LOG_PRINTF("========================================\r\n");
    LOG_PRINTF("  Data Logger Initialized\r\n");
    LOG_PRINTF("========================================\r\n");
    LOG_PRINTF("  Mode:   %s\r\n", (eType == FALL_TYPE_ADL) ? "ADL (Daily Activities)" : "FALL (Fall Detection)");
    LOG_PRINTF("  Rate:   ~100 Hz\r\n");
    LOG_PRINTF("  Buffer: %d samples\r\n", DATA_WINDOW_SIZE);
    LOG_PRINTF("  Duration: ~%.1f seconds\r\n", (float)DATA_WINDOW_SIZE / 100.0f);
    LOG_PRINTF("========================================\r\n");
    LOG_PRINTF("\r\n");

    LOG_PRINTF("[LOGGER] Ready. Collect data and output to UART.\r\n");
    LOG_PRINTF("[LOGGER] UART baud: %u\r\n", DATA_LOG_UART_BAUD);
    LOG_PRINTF("\r\n");
}

void data_logger_add_sample(float accX, float accY, float accZ,
                          float gyroX, float gyroY, float gyroZ)
{
    if (!s_bInitialized) {
        return;
    }

    if (s_stLogger.u32Count >= DATA_WINDOW_SIZE) {
        // 缓冲区满，自动保存
        save_and_reset();
        return;
    }

    uint32_t idx = s_stLogger.u32Count;

    s_stLogger.afAccX[idx] = accX;
    s_stLogger.afAccY[idx] = accY;
    s_stLogger.afAccZ[idx] = accZ;
    s_stLogger.afGyroX[idx] = gyroX;
    s_stLogger.afGyroY[idx] = gyroY;
    s_stLogger.afGyroZ[idx] = gyroZ;

    s_stLogger.u32Count++;
}

void data_logger_add_sample_raw(float accX_g, float accY_g, float accZ_g,
                               float gyroX_dps, float gyroY_dps, float gyroZ_dps)
{
    data_logger_add_sample(accX_g, accY_g, accZ_g,
                          gyroX_dps, gyroY_dps, gyroZ_dps);
}

void data_logger_flush_uart(void)
{
    if (!s_bInitialized) {
        LOG_PRINTF("[LOGGER] Not initialized!\r\n");
        return;
    }

    save_and_reset();
}

uint32_t data_logger_get_count(void)
{
    return s_stLogger.u32Count;
}

uint32_t data_logger_get_capacity(void)
{
    return DATA_WINDOW_SIZE;
}

bool data_logger_is_full(void)
{
    return (s_stLogger.u32Count >= DATA_WINDOW_SIZE);
}

fall_type_t data_logger_get_type(void)
{
    return s_stLogger.eType;
}

void data_logger_trigger_save(void)
{
    if (!s_bInitialized) {
        return;
    }
    save_and_reset();
}

uint8_t data_logger_get_progress(void)
{
    return (uint8_t)((s_stLogger.u32Count * 100) / DATA_WINDOW_SIZE);
}
