/**
 * @file    gated_cnn_inference.h
 * @brief   Gated-CNN 模型 TFLite Micro 推理接口
 * @note    适配 HT32F675x5 MCU
 * 
 * 模型规格:
 * - 输入: int8 [100, 6] - 量化后的 IMU 数据
 * - 输出: int8 [1] - 跌倒概率 (需转换为 float)
 * 
 * 使用方法:
 * 1. model_gated_cnn_init()  - 初始化
 * 2. model_gated_cnn_infer() - 运行推理
 */
#ifndef GATED_CNN_INFERENCE_H
#define GATED_CNN_INFERENCE_H

#include <stdint.h>
#include "model_inference.h"

/* 模型输入规格 */
#define GATED_CNN_INPUT_SAMPLES    100     /* 序列长度: 1秒 @ 100Hz */
#define GATED_CNN_INPUT_FEATURES   6       /* 6轴 IMU: ax, ay, az, gx, gy, gz */

/* 量化参数 (训练时自动生成) */
#define GATED_CNN_INPUT_SCALE      0.02f   /* 输入量化 scale */
#define GATED_CNN_INPUT_ZERO_POINT 0       /* 输入量化 zero point */
#define GATED_CNN_OUTPUT_SCALE     0.005f  /* 输出量化 scale */
#define GATED_CNN_OUTPUT_ZERO_POINT 0      /* 输出量化 zero point */

/* 跌倒阈值 */
#define GATED_CNN_FALL_THRESHOLD   0.65f   /* 跌倒置信度阈值 */

/* 推理结果 */
typedef struct {
    uint8_t  class_id;           /* 0=正常, 1=跌倒 */
    float    confidence;          /* 置信度 0.0~1.0 */
    int8_t   raw_output;         /* 原始量化输出 */
    uint32_t inference_time_us;   /* 推理耗时 */
} gated_cnn_result_t;

/* 运行时上下文 */
typedef struct {
    model_state_t state;
    uint32_t inference_count;
    uint32_t fall_count;
    uint32_t total_time_us;
    float last_confidence;
} gated_cnn_context_t;

/* 全局上下文 */
extern gated_cnn_context_t g_gated_cnn_ctx;

/* API 函数 */

/**
 * @brief   初始化 Gated-CNN 推理引擎
 * @return  0=成功, 负值=错误码
 */
int model_gated_cnn_init(void);

/**
 * @brief   运行 Gated-CNN 推理
 * @param   imu_data     IMU 数据缓冲区 [samples][6]
 * @param   sample_count 数据样本数
 * @param   result       推理结果
 * @return  0=成功, 负值=错误码
 */
int model_gated_cnn_infer(const float *imu_data, uint16_t sample_count, 
                          gated_cnn_result_t *result);

/**
 * @brief   运行推理 (int8 量化版本)
 * @param   quantized_input  量化输入数据 [samples][6]
 * @param   sample_count     数据样本数
 * @param   result           推理结果
 * @return  0=成功, 负值=错误码
 */
int model_gated_cnn_infer_quantized(const int8_t *quantized_input, 
                                     uint16_t sample_count,
                                     gated_cnn_result_t *result);

/**
 * @brief   获取推理上下文信息
 * @param   ctx  上下文结构体指针
 */
void model_gated_cnn_get_context(gated_cnn_context_t *ctx);

/**
 * @brief   重置推理上下文
 */
void model_gated_cnn_reset(void);

/**
 * @brief   转储模型信息
 */
void model_gated_cnn_dump_info(void);

/* 内部函数 (供 model_inference.c 调用) */

/**
 * @brief   Gated-CNN 特征提取
 * @note    提取用于推理的特征
 */
int gated_cnn_extract_features(const float *raw_accel, const float *raw_gyro,
                                uint16_t sample_count, float *features);

/**
 * @brief   量化输入数据
 */
void gated_cnn_quantize_input(const float *float_input, int8_t *quantized_output, 
                               uint16_t sample_count);

#endif /* GATED_CNN_INFERENCE_H */
