/**
 * @file    model_inference.h
 * @brief   跌倒检测模型推理管理器
 * @note    使用 TFLite Micro，模型规格:
 *          - 输入: float [128, 6] - 6轴IMU数据
 *          - 输出: float [1] - 跌倒概率
 */
#ifndef MODEL_INFERENCE_H
#define MODEL_INFERENCE_H

#include <stdint.h>

/* 模型类型枚举 */
typedef enum {
    MODEL_TYPE_FALL_DETECTION = 0,
    MODEL_TYPE_ACTIVITY_RECOGNITION,
    MODEL_TYPE_HEART_RATE,
    MODEL_TYPE_MAX
} model_type_t;

/* 模型运行状态 */
typedef enum {
    MODEL_STATE_UNINIT = 0,
    MODEL_STATE_LOADING,
    MODEL_STATE_READY,
    MODEL_STATE_RUNNING,
    MODEL_STATE_ERROR
} model_state_t;

/* 模型输出结果 */
typedef struct {
    uint8_t  class_id;       /* 分类结果 ID: 0=正常, 1=跌倒 */
    float    confidence;     /* 置信度 0.0~1.0 */
    uint32_t inference_time_us; /* 推理耗时 (微秒) */
    uint8_t  is_valid;      /* 结果是否有效 */
} model_result_t;

/* 模型配置 */
typedef struct {
    model_type_t type;
    uint8_t      slot_id;      /* 存储槽位 */
    uint16_t     input_dim;    /* 输入维度 */
    uint16_t     output_dim;   /* 输出维度 */
} model_config_t;

/* 模型运行时信息 */
typedef struct {
    model_config_t  config;
    model_state_t  state;
    uint32_t       version;
    uint32_t       size;
    uint32_t       last_inference_time;
    uint32_t       total_inferences;
    uint32_t       error_count;
} model_runtime_info_t;

/* 特征提取配置 */
typedef struct {
    uint16_t window_size;      /* 窗口大小 (样本数) */
    uint16_t step_size;        /* 滑动步长 */
    uint16_t sample_rate;      /* 采样率 Hz */
    uint8_t  use_accel;       /* 是否使用加速度计 */
    uint8_t  use_gyro;        /* 是否使用陀螺仪 */
} feature_config_t;

/* 推理管理器句柄 */
typedef struct {
    model_runtime_info_t current_model;
    model_result_t      last_result;
    feature_config_t    feature_cfg;
    uint8_t            *input_buffer;
    uint8_t            *output_buffer;
} model_inference_handle_t;

#ifdef __cplusplus
extern "C" {
#endif

/* 全局句柄 */
extern model_inference_handle_t g_model_handle;

/* API 函数 */

/* 初始化 */
int model_inference_init(void);

/* 模型加载 */
int model_load_from_slot(uint8_t slot_id);
int model_load_from_memory(const uint8_t *model_data, uint32_t size);

/* 模型推理 */
int model_run_inference(const float *input_data, uint16_t input_len, model_result_t *result);

/* 特征提取 */
int model_extract_features(const float *raw_accel, const float *raw_gyro,
                          uint16_t sample_count, float *features);

/* 模型信息 */
int model_get_info(model_runtime_info_t *info);
model_type_t model_get_type(void);

/* 推理配置 */
void model_set_feature_config(const feature_config_t *cfg);
int model_get_feature_config(feature_config_t *cfg);

/* 统计信息 */
uint32_t model_get_total_inferences(void);
uint32_t model_get_avg_inference_time(void);

/* 调试 */
void model_dump_info(void);

#ifdef __cplusplus
}
#endif

#endif /* MODEL_INFERENCE_H */
