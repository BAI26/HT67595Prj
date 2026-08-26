/*************************************************************************************************************
 * @file    app_data_logger.h
 * @brief   跌倒检测数据采集接口
 * @author  白楠帝
 * @date    2026-08-24
 * @version V1.0
 * @attention
 *
 * 用于采集 IMU 数据用于模型训练。
 * 支持 ADL（日常活动）和 FALL（跌倒）两种模式。
 *
 ************************************************************************************************************/
#ifndef APP_DATA_LOGGER_H
#define APP_DATA_LOGGER_H

#include <stdint.h>
#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

// Forward declaration - actual types defined in app_cfg.h
#ifndef DATA_LOGGER_SAMPLE_COUNT
#define DATA_LOGGER_SAMPLE_COUNT    512
#endif

#ifndef DATA_LOGGER_UART_BAUD
#define DATA_LOGGER_UART_BAUD       460800
#endif

/**
 * @brief  数据采集模式/活动类型枚举
 */
typedef enum {
    FALL_TYPE_ADL = 0,   // 日常活动 (Activities of Daily Living)
    FALL_TYPE_FALL = 1,   // 跌倒 (Fall)
} fall_type_t;

/**
 * @brief  初始化数据采集
 * @param  eType  当前活动类型 (ADL 或 FALL)
 * @note   调用后会自动清空缓冲区并开始记录
 */
void data_logger_init(fall_type_t eType);

/**
 * @brief  添加一个 IMU 采样到缓冲区
 * @param  accX    X轴加速度 (g)
 * @param  accY    Y轴加速度 (g)
 * @param  accZ    Z轴加速度 (g)
 * @param  gyroX   X轴角速度 (dps, degrees per second)
 * @param  gyroY   Y轴角速度 (dps)
 * @param  gyroZ   Z轴角速度 (dps)
 */
void data_logger_add_sample(float accX, float accY, float accZ,
                           float gyroX, float gyroY, float gyroZ);

/**
 * @brief  添加一个 IMU9DOF 采样到缓冲区 (便利函数)
 * @param  accX_g  X轴加速度 (g)
 * @param  accY_g  Y轴加速度 (g)
 * @param  accZ_g  Z轴加速度 (g)
 * @param  gyroX_dps   X轴角速度 (dps)
 * @param  gyroY_dps   Y轴角速度 (dps)
 * @param  gyroZ_dps   Z轴角速度 (dps)
 */
void data_logger_add_sample_raw(float accX_g, float accY_g, float accZ_g,
                                float gyroX_dps, float gyroY_dps, float gyroZ_dps);

/**
 * @brief  保存当前缓冲区数据到 UART 输出
 * @note   输出格式用于 PC 端捕获保存:
 *         $START,<type>,<sample_count>\n
 *         <accX>,<accY>,<accZ>,<gyroX>,<gyroY>,<gyroZ>\n
 *         ...\n
 *         $END,<sample_count>\n
 */
void data_logger_flush_uart(void);

/**
 * @brief  获取已采集的样本数
 * @return 当前缓冲区中的样本数
 */
uint32_t data_logger_get_count(void);

/**
 * @brief  获取缓冲区最大容量
 * @return 最大可存储的样本数
 */
uint32_t data_logger_get_capacity(void);

/**
 * @brief  检查缓冲区是否已满
 * @return true 缓冲区已满
 */
bool data_logger_is_full(void);

/**
 * @brief  获取当前采集模式
 * @return 当前活动类型 (ADL 或 FALL)
 */
fall_type_t data_logger_get_type(void);

/**
 * @brief  手动触发保存并重置 (缓冲区满时自动调用)
 */
void data_logger_trigger_save(void);

/**
 * @brief  获取采集进度百分比
 * @return 0-100 的进度值
 */
uint8_t data_logger_get_progress(void);

#ifdef __cplusplus
}
#endif

#endif /* APP_DATA_LOGGER_H */
