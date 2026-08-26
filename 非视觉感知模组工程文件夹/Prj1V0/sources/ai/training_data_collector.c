/**
 * @file    training_data_collector.c
 * @brief   训练数据采集器实现
 */
#include "training_data_collector.h"
#include "app_debug.h"
#include <string.h>

/* 采集缓冲区大小 */
#define MAX_SAMPLES         60000      /* 10 分钟 @ 100Hz */
#define MAX_WINDOWS         6000       /* 最大窗口数 */
#define MAX_FEATURES        10         /* 最大特征数 */

/* 默认配置 */
static const collector_config_t DEFAULT_CONFIG = {
    .sample_rate_hz = 100,
    .window_size = 100,
    .step_size = 50,
    .use_accel = 1,
    .use_gyro = 1,
    .use_mag = 0
};

/* 采集状态 */
static collector_state_t s_state = COLLECTOR_STATE_IDLE;
static collector_config_t s_config;
static activity_type_t s_current_activity = ACTIVITY_NORMAL;

/* 缓冲区 */
static imu_sample_t s_samples[MAX_SAMPLES];
static uint32_t s_sample_count = 0;
static uint32_t s_sample_head = 0;  /* 写入位置 */

/* 窗口缓冲 */
static float s_windows[MAX_WINDOWS][100 * 6];  /* 简化：固定 6 特征 */
static uint16_t s_window_count = 0;
static uint8_t s_window_activity[MAX_WINDOWS];
static uint16_t s_window_sample_start[MAX_WINDOWS];

/* 统计 */
static collector_stats_t s_stats;

/* 当前窗口数据 */
static float s_current_window[100 * 6];
static uint16_t s_current_window_size = 0;
static uint32_t s_window_start_sample = 0;

/* ================================================================ */
static const char* activity_name(activity_type_t type)
{
    static const char* names[] = {
        "Normal", "Walking", "Running", "Sitting", "Standing",
        "Fall_Forward", "Fall_Backward", "Fall_Left", "Fall_Right", "Stumbling"
    };
    if (type < ACTIVITY_ACTIVITY_MAX) {
        return names[type];
    }
    return "Unknown";
}

/* ================================================================ */
void collector_init(const collector_config_t *config)
{
    memset(s_samples, 0, sizeof(s_samples));
    memset(s_windows, 0, sizeof(s_windows));
    memset(&s_stats, 0, sizeof(s_stats));
    
    s_sample_count = 0;
    s_sample_head = 0;
    s_window_count = 0;
    s_current_window_size = 0;
    s_state = COLLECTOR_STATE_IDLE;
    
    if (config) {
        memcpy(&s_config, config, sizeof(collector_config_t));
    } else {
        s_config = DEFAULT_CONFIG;
    }
}

/* ================================================================ */
void collector_set_config(const collector_config_t *config)
{
    if (config) {
        memcpy(&s_config, config, sizeof(collector_config_t));
    }
}

/* ================================================================ */
void collector_get_config(collector_config_t *config)
{
    if (config) {
        memcpy(config, &s_config, sizeof(collector_config_t));
    }
}

/* ================================================================ */
void collector_start(activity_type_t activity)
{
    s_current_activity = activity;
    s_state = COLLECTOR_STATE_COLLECTING;
    s_sample_count = 0;
    s_sample_head = 0;
    s_window_count = 0;
    s_current_window_size = 0;
    
    PRINTF("[COLLECTOR] Started: %s\r\n", activity_name(activity));
}

/* ================================================================ */
void collector_stop(void)
{
    s_state = COLLECTOR_STATE_IDLE;
    
    /* 保存最后一个不完整的窗口 */
    if (s_current_window_size > 0) {
        /* TODO: 保存不完整窗口 */
    }
    
    PRINTF("[COLLECTOR] Stopped. Total: %lu samples, %u windows\r\n",
           (unsigned long)s_sample_count, s_window_count);
}

/* ================================================================ */
void collector_pause(void)
{
    s_state = COLLECTOR_STATE_PAUSED;
    PRINTF("[COLLECTOR] Paused\r\n");
}

/* ================================================================ */
void collector_resume(void)
{
    s_state = COLLECTOR_STATE_COLLECTING;
    PRINTF("[COLLECTOR] Resumed\r\n");
}

/* ================================================================ */
void collector_set_activity(activity_type_t activity)
{
    s_current_activity = activity;
    PRINTF("[COLLECTOR] Activity: %s\r\n", activity_name(activity));
}

/* ================================================================ */
void collector_add_sample(const imu_sample_t *sample)
{
    uint16_t idx;
    
    if (s_state != COLLECTOR_STATE_COLLECTING) {
        return;
    }
    
    if (!sample) {
        return;
    }
    
    /* 写入循环缓冲区 */
    idx = s_sample_head % MAX_SAMPLES;
    s_samples[idx] = *sample;
    s_sample_head++;
    
    if (s_sample_count < MAX_SAMPLES) {
        s_sample_count++;
    } else {
        /* 缓冲区满，覆盖最旧的数据 */
        s_stats.buffer_overruns++;
    }
    
    /* 更新统计 */
    s_stats.total_samples++;
    s_stats.activity_counts[s_current_activity]++;
    
    /* 添加到当前窗口 */
    collector_add_raw_data(
        sample->accel_x, sample->accel_y, sample->accel_z,
        sample->gyro_x, sample->gyro_y, sample->gyro_z,
        sample->mag_x, sample->mag_y, sample->mag_z
    );
}

/* ================================================================ */
void collector_add_raw_data(float ax, float ay, float az,
                          float gx, float gy, float gz,
                          float mx, float my, float mz)
{
    uint16_t i;
    uint16_t feature_count = 0;
    uint16_t window_capacity = s_config.window_size;
    
    if (s_state != COLLECTOR_STATE_COLLECTING) {
        return;
    }
    
    /* 构建特征向量 */
    i = s_current_window_size;
    if (s_config.use_accel) {
        s_current_window[i++] = ax;
        s_current_window[i++] = ay;
        s_current_window[i++] = az;
        feature_count += 3;
    }
    if (s_config.use_gyro) {
        s_current_window[i++] = gx;
        s_current_window[i++] = gy;
        s_current_window[i++] = gz;
        feature_count += 3;
    }
    if (s_config.use_mag) {
        s_current_window[i++] = mx;
        s_current_window[i++] = my;
        s_current_window[i++] = mz;
        feature_count += 3;
    }
    
    s_current_window_size++;
    
    /* 检查是否达到窗口大小 */
    if (s_current_window_size >= window_capacity) {
        /* 保存窗口 */
        if (s_window_count < MAX_WINDOWS) {
            /* 复制窗口数据 */
            uint16_t features_per_sample = feature_count;
            uint16_t total_features = window_capacity * features_per_sample;
            
            for (uint16_t j = 0; j < total_features && j < 100 * 6; j++) {
                s_windows[s_window_count][j] = s_current_window[j];
            }
            
            s_window_activity[s_window_count] = s_current_activity;
            s_window_sample_start[s_window_count] = (uint16_t)(s_sample_head - s_current_window_size);
            s_window_count++;
            
            s_stats.total_windows++;
        }
        
        /* 滑动窗口 */
        uint16_t step = s_config.step_size;
        if (step >= window_capacity) {
            step = window_capacity / 2;
        }
        
        /* 移动数据 */
        uint16_t features = feature_count;
        for (uint16_t w = step; w < s_current_window_size; w++) {
            for (uint16_t f = 0; f < features; f++) {
                s_current_window[(w - step) * features + f] = s_current_window[w * features + f];
            }
        }
        
        s_current_window_size -= step;
    }
}

/* ================================================================ */
uint16_t collector_get_window_count(void)
{
    return s_window_count;
}

/* ================================================================ */
uint16_t collector_get_window(uint16_t index, float *buffer, uint16_t buf_size)
{
    uint16_t features_per_sample = 6;  /* 简化：固定 6 */
    uint16_t total_size = s_config.window_size * features_per_sample;
    
    if (index >= s_window_count || !buffer) {
        return 0;
    }
    
    if (buf_size < total_size) {
        return 0;
    }
    
    memcpy(buffer, s_windows[index], total_size * sizeof(float));
    return total_size;
}

/* ================================================================ */
uint8_t collector_export_csv(const char *filename)
{
    /* TODO: 实现 CSV 导出 */
    PRINTF("[COLLECTOR] CSV export: %s\r\n", filename ? filename : "stdout");
    
    /* 打印到调试口 */
    PRINTF("activity,window_idx,sample_idx,acc_x,acc_y,acc_z,gyro_x,gyro_y,gyro_z\r\n");
    
    for (uint16_t w = 0; w < s_window_count; w++) {
        uint16_t features = 6;
        for (uint16_t s = 0; s < s_config.window_size; s++) {
            PRINTF("%s,%u,%u,",
                   activity_name((activity_type_t)s_window_activity[w]),
                   w, s);
            
            for (uint16_t f = 0; f < features; f++) {
                PRINTF("%.4f", s_windows[w][s * features + f]);
                if (f < features - 1) PRINTF(",");
            }
            PRINTF("\r\n");
        }
    }
    
    PRINTF("[COLLECTOR] Export complete\r\n");
    return 0;
}

/* ================================================================ */
uint8_t collector_export_binary(const char *filename)
{
    /* TODO: 实现二进制导出 */
    PRINTF("[COLLECTOR] Binary export not implemented yet\r\n");
    return 1;
}

/* ================================================================ */
void collector_get_stats(collector_stats_t *stats)
{
    if (stats) {
        memcpy(stats, &s_stats, sizeof(collector_stats_t));
    }
}

/* ================================================================ */
void collector_reset_stats(void)
{
    memset(&s_stats, 0, sizeof(s_stats));
}

/* ================================================================ */
collector_state_t collector_get_state(void)
{
    return s_state;
}

/* ================================================================ */
void collector_set_buffer_size(uint32_t max_samples)
{
    /* 静态分配，不支持运行时调整 */
    (void)max_samples;
}

/* ================================================================ */
void collector_clear(void)
{
    s_sample_count = 0;
    s_sample_head = 0;
    s_window_count = 0;
    s_current_window_size = 0;
    memset(&s_stats, 0, sizeof(s_stats));
}
