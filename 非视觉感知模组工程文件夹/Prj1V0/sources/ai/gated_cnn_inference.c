/**
 * @file    gated_cnn_inference.c
 * @brief   Gated-CNN 模型 TFLite Micro 推理实现
 */
#include "gated_cnn_inference.h"
#include "ht32f675x5_flash.h"
#include "app_cfg_ota.h"
#include <string.h>
#include <math.h>

/* 外部模型数据 (由训练脚本生成) */
extern const uint8_t g_gated_cnn_model_data[];
extern const uint32_t g_gated_cnn_model_data_size;

/* 特征提取缓冲区 */
static float g_feature_buffer[GATED_CNN_INPUT_SAMPLES * GATED_CNN_INPUT_FEATURES];
static int8_t g_quantized_buffer[GATED_CNN_INPUT_SAMPLES * GATED_CNN_INPUT_FEATURES];
static int8_t g_output_buffer[1];

/* 归一化参数 (需从训练配置加载) */
static float g_input_mean[6] = {0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f};
static float g_input_std[6] = {0.3f, 0.3f, 0.3f, 0.5f, 0.5f, 0.5f};

/* 全局上下文 */
gated_cnn_context_t g_gated_cnn_ctx = {
    .state = MODEL_STATE_UNINIT,
    .inference_count = 0,
    .fall_count = 0,
    .total_time_us = 0,
    .last_confidence = 0.0f
};

/**
 * @brief   初始化 Gated-CNN 推理引擎
 */
int model_gated_cnn_init(void)
{
    PRINTF("[GatedCNN] Initializing...\n");
    
    /* 加载量化参数 */
    /* TODO: 从 Flash/EEPROM 加载实际校准值 */
    
    g_gated_cnn_ctx.state = MODEL_STATE_READY;
    g_gated_cnn_ctx.inference_count = 0;
    g_gated_cnn_ctx.fall_count = 0;
    g_gated_cnn_ctx.total_time_us = 0;
    
    PRINTF("[GatedCNN] Initialized successfully\n");
    PRINTF("  Input:  [%d x %d] int8\n", GATED_CNN_INPUT_SAMPLES, GATED_CNN_INPUT_FEATURES);
    PRINTF("  Model size: %lu bytes\n", (unsigned long)g_gated_cnn_model_data_size);
    
    return 0;
}

/**
 * @brief   量化输入数据
 */
void gated_cnn_quantize_input(const float *float_input, int8_t *quantized_output, 
                              uint16_t sample_count)
{
    uint16_t i;
    
    for (i = 0; i < sample_count && i < GATED_CNN_INPUT_SAMPLES; i++) {
        quantized_output[i * GATED_CNN_INPUT_FEATURES + 0] = (int8_t)roundf(
            float_input[i * GATED_CNN_INPUT_FEATURES + 0] / GATED_CNN_INPUT_SCALE + GATED_CNN_INPUT_ZERO_POINT);
        quantized_output[i * GATED_CNN_INPUT_FEATURES + 1] = (int8_t)roundf(
            float_input[i * GATED_CNN_INPUT_FEATURES + 1] / GATED_CNN_INPUT_SCALE + GATED_CNN_INPUT_ZERO_POINT);
        quantized_output[i * GATED_CNN_INPUT_FEATURES + 2] = (int8_t)roundf(
            float_input[i * GATED_CNN_INPUT_FEATURES + 2] / GATED_CNN_INPUT_SCALE + GATED_CNN_INPUT_ZERO_POINT);
        quantized_output[i * GATED_CNN_INPUT_FEATURES + 3] = (int8_t)roundf(
            float_input[i * GATED_CNN_INPUT_FEATURES + 3] / GATED_CNN_INPUT_SCALE + GATED_CNN_INPUT_ZERO_POINT);
        quantized_output[i * GATED_CNN_INPUT_FEATURES + 4] = (int8_t)roundf(
            float_input[i * GATED_CNN_INPUT_FEATURES + 4] / GATED_CNN_INPUT_SCALE + GATED_CNN_INPUT_ZERO_POINT);
        quantized_output[i * GATED_CNN_INPUT_FEATURES + 5] = (int8_t)roundf(
            float_input[i * GATED_CNN_INPUT_FEATURES + 5] / GATED_CNN_INPUT_SCALE + GATED_CNN_INPUT_ZERO_POINT);
    }
    
    /* 填充剩余空间为零 */
    for (; i < GATED_CNN_INPUT_SAMPLES; i++) {
        memset(&quantized_output[i * GATED_CNN_INPUT_FEATURES], 0, 
               GATED_CNN_INPUT_FEATURES * sizeof(int8_t));
    }
}

/**
 * @brief   Gated-CNN 特征提取
 */
int gated_cnn_extract_features(const float *raw_accel, const float *raw_gyro,
                              uint16_t sample_count, float *features)
{
    uint16_t i;
    uint16_t copy_count;
    
    if (!raw_accel || !features || sample_count == 0) {
        return -1;
    }
    
    /* 复制数据到缓冲区 */
    copy_count = (sample_count > GATED_CNN_INPUT_SAMPLES) ? 
                 GATED_CNN_INPUT_SAMPLES : sample_count;
    
    for (i = 0; i < copy_count; i++) {
        /* 加速度 */
        features[i * 6 + 0] = raw_accel[i * 3 + 0];
        features[i * 6 + 1] = raw_accel[i * 3 + 1];
        features[i * 6 + 2] = raw_accel[i * 3 + 2];
        
        /* 陀螺仪 (如果提供) */
        if (raw_gyro) {
            features[i * 6 + 3] = raw_gyro[i * 3 + 0];
            features[i * 6 + 4] = raw_gyro[i * 3 + 1];
            features[i * 6 + 5] = raw_gyro[i * 3 + 2];
        } else {
            features[i * 6 + 3] = 0.0f;
            features[i * 6 + 4] = 0.0f;
            features[i * 6 + 5] = 0.0f;
        }
    }
    
    /* 填充不足的样本为零 */
    for (i = copy_count; i < GATED_CNN_INPUT_SAMPLES; i++) {
        memset(&features[i * 6], 0, 6 * sizeof(float));
    }
    
    /* 归一化 */
    for (i = 0; i < GATED_CNN_INPUT_SAMPLES * GATED_CNN_INPUT_FEATURES; i++) {
        features[i] = (features[i] - g_input_mean[i % 6]) / g_input_std[i % 6];
    }
    
    return GATED_CNN_INPUT_SAMPLES * GATED_CNN_INPUT_FEATURES;
}

/**
 * @brief   运行 Gated-CNN 推理 (float 版本)
 */
int model_gated_cnn_infer(const float *imu_data, uint16_t sample_count, 
                         gated_cnn_result_t *result)
{
    uint32_t start_time, end_time;
    int ret = 0;
    
    if (g_gated_cnn_ctx.state != MODEL_STATE_READY) {
        return -1;
    }
    
    if (!imu_data || !result) {
        return -2;
    }
    
    /* 提取特征 */
    ret = gated_cnn_extract_features(imu_data, imu_data + sample_count * 3, 
                                    sample_count, g_feature_buffer);
    if (ret < 0) {
        return ret;
    }
    
    /* 量化输入 */
    gated_cnn_quantize_input(g_feature_buffer, g_quantized_buffer, GATED_CNN_INPUT_SAMPLES);
    
    /* 运行推理 */
    start_time = DWT->CYCCNT;
    /* TODO: 调用 TFLite Micro 推理 */
    /* 
     * ret = tflite_infer(g_quantized_buffer, g_output_buffer);
     */
    end_time = DWT->CYCCNT;
    
    /* 更新统计 */
    g_gated_cnn_ctx.inference_count++;
    g_gated_cnn_ctx.total_time_us += (end_time - start_time) / 48;  /* 48MHz */
    
    /* 解析结果 */
    result->raw_output = g_output_buffer[0];
    result->confidence = result->raw_output * GATED_CNN_OUTPUT_SCALE + GATED_CNN_OUTPUT_ZERO_POINT;
    result->class_id = (result->confidence > GATED_CNN_FALL_THRESHOLD) ? 1 : 0;
    result->inference_time_us = (end_time - start_time) / 48;
    
    g_gated_cnn_ctx.last_confidence = result->confidence;
    
    if (result->class_id == 1) {
        g_gated_cnn_ctx.fall_count++;
    }
    
    return ret;
}

/**
 * @brief   运行 Gated-CNN 推理 (量化版本)
 */
int model_gated_cnn_infer_quantized(const int8_t *quantized_input, 
                                    uint16_t sample_count,
                                    gated_cnn_result_t *result)
{
    uint32_t start_time, end_time;
    int ret = 0;
    
    if (g_gated_cnn_ctx.state != MODEL_STATE_READY) {
        return -1;
    }
    
    if (!quantized_input || !result) {
        return -2;
    }
    
    /* 直接运行推理 */
    start_time = DWT->CYCCNT;
    /* TODO: 调用 TFLite Micro 推理 */
    /* 
     * ret = tflite_infer(quantized_input, g_output_buffer);
     */
    end_time = DWT->CYCCNT;
    
    /* 更新统计 */
    g_gated_cnn_ctx.inference_count++;
    g_gated_cnn_ctx.total_time_us += (end_time - start_time) / 48;
    
    /* 解析结果 */
    result->raw_output = g_output_buffer[0];
    result->confidence = result->raw_output * GATED_CNN_OUTPUT_SCALE + GATED_CNN_OUTPUT_ZERO_POINT;
    result->class_id = (result->confidence > GATED_CNN_FALL_THRESHOLD) ? 1 : 0;
    result->inference_time_us = (end_time - start_time) / 48;
    
    g_gated_cnn_ctx.last_confidence = result->confidence;
    
    if (result->class_id == 1) {
        g_gated_cnn_ctx.fall_count++;
    }
    
    return ret;
}

/**
 * @brief   获取推理上下文信息
 */
void model_gated_cnn_get_context(gated_cnn_context_t *ctx)
{
    if (ctx) {
        memcpy(ctx, &g_gated_cnn_ctx, sizeof(gated_cnn_context_t));
    }
}

/**
 * @brief   重置推理上下文
 */
void model_gated_cnn_reset(void)
{
    g_gated_cnn_ctx.inference_count = 0;
    g_gated_cnn_ctx.fall_count = 0;
    g_gated_cnn_ctx.total_time_us = 0;
    g_gated_cnn_ctx.last_confidence = 0.0f;
}

/**
 * @brief   转储模型信息
 */
void model_gated_cnn_dump_info(void)
{
    PRINTF("\n");
    PRINTF("+======================================+\n");
    PRINTF("|       Gated-CNN Model Info           |\n");
    PRINTF("+======================================+\n");
    PRINTF("| Model type:     Gated-CNN            |\n");
    PRINTF("| Input shape:    [%d x %d]            |\n", 
           GATED_CNN_INPUT_SAMPLES, GATED_CNN_INPUT_FEATURES);
    PRINTF("| Fall threshold: %.2f                 |\n", GATED_CNN_FALL_THRESHOLD);
    PRINTF("| Model size:     %lu bytes           |\n", 
           (unsigned long)g_gated_cnn_model_data_size);
    PRINTF("+--------------------------------------+\n");
    PRINTF("| Statistics:                          |\n");
    PRINTF("|   Inferences:  %lu                   |\n", 
           (unsigned long)g_gated_cnn_ctx.inference_count);
    PRINTF("|   Falls:       %lu                   |\n", 
           (unsigned long)g_gated_cnn_ctx.fall_count);
    if (g_gated_cnn_ctx.inference_count > 0) {
        PRINTF("|   Avg time:    %lu us                |\n", 
               (unsigned long)(g_gated_cnn_ctx.total_time_us / g_gated_cnn_ctx.inference_count));
    }
    PRINTF("|   Last conf:   %.3f                  |\n", 
           g_gated_cnn_ctx.last_confidence);
    PRINTF("+======================================+\n");
}
