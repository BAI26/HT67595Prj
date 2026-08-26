/**
 * @file    training_data_collector.h
 * @brief   训练数据采集器
 * @note    用于收集 IMU 数据用于模型训练
 */
#ifndef TRAINING_DATA_COLLECTOR_H
#define TRAINING_DATA_COLLECTOR_H

#include <stdint.h>

/* 活动类型 */
typedef enum {
    ACTIVITY_NORMAL = 0,
    ACTIVITY_WALKING,
    ACTIVITY_RUNNING,
    ACTIVITY_SITTING,
    ACTIVITY_STANDING,
    ACTIVITY_FALLING_FORWARD,
    ACTIVITY_FALLING_BACKWARD,
    ACTIVITY_FALLING_LEFT,
    ACTIVITY_FALLING_RIGHT,
    ACTIVITY_STUMBLING,
    ACTIVITY_ACTIVITY_MAX
} activity_type_t;

/* 采集配置 */
typedef struct {
    uint16_t sample_rate_hz;     /* 采样率 */
    uint16_t window_size;         /* 窗口大小 (样本数) */
    uint16_t step_size;          /* 滑动步长 */
    uint8_t  use_accel;         /* 使用加速度计 */
    uint8_t  use_gyro;          /* 使用陀螺仪 */
    uint8_t  use_mag;           /* 使用磁力计 */
} collector_config_t;

/* 样本结构 */
typedef struct {
    float accel_x;
    float accel_y;
    float accel_z;
    float gyro_x;
    float gyro_y;
    float gyro_z;
    float mag_x;
    float mag_y;
    float mag_z;
    uint32_t timestamp_ms;
} imu_sample_t;

/* 采集状态 */
typedef enum {
    COLLECTOR_STATE_IDLE = 0,
    COLLECTOR_STATE_COLLECTING,
    COLLECTOR_STATE_PAUSED,
    COLLECTOR_STATE_FULL
} collector_state_t;

/* 采集统计 */
typedef struct {
    uint32_t total_samples;
    uint32_t total_windows;
    uint32_t activity_counts[ACTIVITY_ACTIVITY_MAX];
    uint32_t buffer_overruns;
} collector_stats_t;

/* API 函数 */

/* 初始化和配置 */
void collector_init(const collector_config_t *config);
void collector_set_config(const collector_config_t *config);
void collector_get_config(collector_config_t *config);

/* 采集控制 */
void collector_start(activity_type_t activity);
void collector_stop(void);
void collector_pause(void);
void collector_resume(void);
void collector_set_activity(activity_type_t activity);

/* 数据输入 */
void collector_add_sample(const imu_sample_t *sample);
void collector_add_raw_data(float accel_x, float accel_y, float accel_z,
                          float gyro_x, float gyro_y, float gyro_z,
                          float mag_x, float mag_y, float mag_z);

/* 数据输出 */
uint16_t collector_get_window_count(void);
uint16_t collector_get_window(uint16_t index, float *buffer, uint16_t buf_size);
uint8_t collector_export_csv(const char *filename);
uint8_t collector_export_binary(const char *filename);

/* 统计 */
void collector_get_stats(collector_stats_t *stats);
void collector_reset_stats(void);
collector_state_t collector_get_state(void);

/* 内存管理 */
void collector_set_buffer_size(uint32_t max_samples);
void collector_clear(void);

#endif /* TRAINING_DATA_COLLECTOR_H */
