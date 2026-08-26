/**
 * @file    model_inference.c
 * @brief   跌倒检测模型推理引擎
 * @note    基于 TFLite Micro，专为 HT32F675x5 优化
 * 
 * 模型规格:
 *   - 架构: 1D CNN
 *   - 输入: float [128, 6] - 6轴IMU数据
 *   - 输出: float [1] - 跌倒概率 (0.0-0.5=正常, 0.5-1.0=跌倒)
 */
#include "model_inference.h"
#include "fall_model_data.h"
#include <string.h>
#include <math.h>

/* TFLite Micro 头文件 */
#include "tensorflow/lite/micro/micro_mutable_op_resolver.h"
#include "tensorflow/lite/micro/micro_error_reporter.h"
#include "tensorflow/lite/micro/micro_interpreter.h"

/* 推理缓冲区大小 */
#define MODEL_INTERPRETER_BUFFER_SIZE  (64 * 1024)
#define MODEL_INPUT_BUFFER_SIZE       (128 * 6 * sizeof(float))
#define MODEL_OUTPUT_BUFFER_SIZE      (1 * sizeof(float))

/* 全局句柄 */
model_inference_handle_t g_model_handle = {
    .current_model.state = MODEL_STATE_UNINIT,
    .feature_cfg.window_size = 128,
    .feature_cfg.step_size = 64,
    .feature_cfg.sample_rate = 100,
    .feature_cfg.use_accel = 1,
    .feature_cfg.use_gyro = 1,
};

/* TFLite Micro 相关变量 */
static tflite::MicroErrorReporter g_micro_reporter;
static tflite::ErrorReporter *g_error_reporter = &g_micro_reporter;
static tflite::MicroMutableOpResolver<10> g_resolver;
static uint8_t g_interpreter_buffer[MODEL_INTERPRETER_BUFFER_SIZE];
static const tflite::Model *g_model = nullptr;
static TfLiteTensor *g_input_tensor = nullptr;
static TfLiteTensor *g_output_tensor = nullptr;
static tflite::MicroInterpreter *g_interpreter = nullptr;

/* 统计变量 */
static uint64_t g_total_inference_time_us = 0;
static uint32_t g_total_inference_count = 0;

/**
 * @brief   初始化 TFLite Micro Op Resolver
 */
static int init_tflite_resolver(void)
{
    int resolver_status = 0;
    
    /* 注册需要的 OP */
    resolver_status |= g_resolver.AddConv2D();
    resolver_status |= g_resolver.AddDepthwiseConv2D();
    resolver_status |= g_resolver.AddFullyConnected();
    resolver_status |= g_resolver.AddMaxPool2D();
    resolver_status |= g_resolver.AddAveragePool2D();
    resolver_status |= g_resolver.AddSoftmax();
    resolver_status |= g_resolver.AddReshape();
    resolver_status |= g_resolver.AddQuantize();
    resolver_status |= g_resolver.AddDequantize();
    resolver_status |= g_resolver.AddRelu();
    resolver_status |= g_resolver.AddRelu6();
    
    return resolver_status;
}

/**
 * @brief   初始化模型推理
 */
int model_inference_init(void)
{
    int ret = 0;
    
    /* 初始化默认特征配置 */
    g_model_handle.feature_cfg.window_size = FALL_MODEL_WINDOW_SIZE;
    g_model_handle.feature_cfg.step_size = FALL_MODEL_WINDOW_SIZE / 2;
    g_model_handle.feature_cfg.sample_rate = 100;
    g_model_handle.feature_cfg.use_accel = 1;
    g_model_handle.feature_cfg.use_gyro = 1;
    
    /* 分配缓冲区 */
    g_model_handle.input_buffer = (uint8_t *)malloc(MODEL_INPUT_BUFFER_SIZE);
    g_model_handle.output_buffer = (uint8_t *)malloc(MODEL_OUTPUT_BUFFER_SIZE);
    
    if (!g_model_handle.input_buffer || !g_model_handle.output_buffer) {
        return -1;
    }
    
    /* 初始化 TFLite resolver */
    ret = init_tflite_resolver();
    if (ret != 0) {
        g_model_handle.current_model.state = MODEL_STATE_ERROR;
        return -2;
    }
    
    /* 从 flash 加载内置模型 */
    ret = model_load_from_memory(fall_model_data, FALL_MODEL_DATA_SIZE);
    if (ret == 0) {
        g_model_handle.current_model.config.type = MODEL_TYPE_FALL_DETECTION;
        g_model_handle.current_model.config.input_dim = FALL_MODEL_WINDOW_SIZE * FALL_MODEL_INPUT_FEATURES;
        g_model_handle.current_model.config.output_dim = 1;
        g_model_handle.current_model.config.slot_id = 0xFF;  /* 内置模型 */
    }
    
    return ret;
}

/**
 * @brief   从内存加载模型
 */
int model_load_from_memory(const uint8_t *model_data, uint32_t size)
{
    TfLiteStatus status;
    
    if (!model_data || size == 0) {
        return -1;
    }
    
    /* 释放旧的解释器 */
    if (g_interpreter != nullptr) {
        delete g_interpreter;
        g_interpreter = nullptr;
    }
    
    /* 加载模型 */
    g_model = tflite::GetModel(model_data);
    if (g_model->version() != TFLITE_SCHEMA_VERSION) {
        g_error_reporter->Report("Model schema version mismatch!");
        return -2;
    }
    
    /* 创建解释器 */
    g_interpreter = new tflite::MicroInterpreter(
        g_model, g_resolver, g_interpreter_buffer,
        MODEL_INTERPRETER_BUFFER_SIZE, g_error_reporter);
    
    if (g_interpreter == nullptr) {
        return -3;
    }
    
    /* 分配张量 */
    status = g_interpreter->AllocateTensors();
    if (status != kTfLiteOk) {
        g_error_reporter->Report("AllocateTensors failed!");
        return -4;
    }
    
    /* 获取输入输出张量 */
    g_input_tensor = g_interpreter->input(0);
    g_output_tensor = g_interpreter->output(0);
    
    /* 更新运行时信息 */
    g_model_handle.current_model.state = MODEL_STATE_READY;
    g_model_handle.current_model.size = size;
    
    return 0;
}

/**
 * @brief   从槽位加载模型 (OTA 更新的模型)
 */
int model_load_from_slot(uint8_t slot_id)
{
    /* TODO: 实现从 Flash 槽位加载模型 */
    (void)slot_id;
    return -1;
}

/**
 * @brief   运行推理
 */
int model_run_inference(const float *input_data, uint16_t input_len, model_result_t *result)
{
    uint64_t start_time, end_time;
    
    if (!input_data || !result) {
        return -1;
    }
    
    if (g_model_handle.current_model.state != MODEL_STATE_READY) {
        result->is_valid = 0;
        return -2;
    }
    
    if (g_input_tensor == nullptr || g_output_tensor == nullptr) {
        result->is_valid = 0;
        return -3;
    }
    
    /* 记录开始时间 */
    start_time = get_system_tick_us();
    
    /* 检查输入大小 */
    uint16_t expected_size = FALL_MODEL_WINDOW_SIZE * FALL_MODEL_INPUT_FEATURES;
    if (input_len != expected_size) {
        g_error_reporter->Report("Input size mismatch! Expected %d, got %d", 
                                 expected_size, input_len);
        result->is_valid = 0;
        return -4;
    }
    
    /* 填充输入数据 */
    float *input = g_input_tensor->data.f;
    memcpy(input, input_data, input_len * sizeof(float));
    
    /* 运行推理 */
    TfLiteStatus status = g_interpreter->Invoke();
    if (status != kTfLiteOk) {
        g_error_reporter->Report("Inference failed!");
        result->is_valid = 0;
        g_model_handle.current_model.error_count++;
        return -5;
    }
    
    /* 记录结束时间 */
    end_time = get_system_tick_us();
    
    /* 提取输出结果 */
    float *output = g_output_tensor->data.f;
    float fall_probability = output[0];
    
    /* 判断类别和置信度 */
    uint8_t class_id;
    float confidence;
    
    if (fall_probability >= FALL_DETECT_THRESHOLD) {
        class_id = 1;  /* 跌倒 */
        confidence = fall_probability;
    } else {
        class_id = 0;  /* 正常活动 */
        confidence = 1.0f - fall_probability;
    }
    
    /* 填充结果 */
    result->class_id = class_id;
    result->confidence = confidence;
    result->inference_time_us = (uint32_t)(end_time - start_time);
    result->is_valid = 1;
    
    /* 更新统计 */
    g_model_handle.last_result = *result;
    g_model_handle.current_model.last_inference_time = result->inference_time_us;
    g_model_handle.current_model.total_inferences++;
    g_total_inference_time_us += result->inference_time_us;
    g_total_inference_count++;
    
    return 0;
}

/**
 * @brief   特征提取 - 从原始IMU数据提取特征
 * @note    输入: 6轴原始数据 (accel XYZ + gyro XYZ)
 * @note    输出: 768个float值 (128样本 x 6特征)
 */
int model_extract_features(const float *raw_accel, const float *raw_gyro,
                          uint16_t sample_count, float *features)
{
    uint16_t i, j;
    
    if (!raw_accel || !features) {
        return -1;
    }
    
    if (sample_count == 0 || sample_count > FALL_MODEL_WINDOW_SIZE) {
        return -2;
    }
    
    /* 复制原始数据到特征缓冲区 */
    j = 0;
    for (i = 0; i < sample_count; i++) {
        /* 加速度计 XYZ (g) */
        features[j++] = raw_accel[i * 3];
        features[j++] = raw_accel[i * 3 + 1];
        features[j++] = raw_accel[i * 3 + 2];
        
        /* 陀螺仪 XYZ (dps) */
        if (raw_gyro) {
            features[j++] = raw_gyro[i * 3];
            features[j++] = raw_gyro[i * 3 + 1];
            features[j++] = raw_gyro[i * 3 + 2];
        } else {
            /* 如果没有陀螺仪数据，填充0 */
            features[j++] = 0;
            features[j++] = 0;
            features[j++] = 0;
        }
    }
    
    /* 如果样本不足，用最后一个样本填充 */
    while (j < FALL_MODEL_WINDOW_SIZE * FALL_MODEL_INPUT_FEATURES) {
        uint16_t last_idx = (sample_count - 1) * FALL_MODEL_INPUT_FEATURES;
        features[j++] = features[last_idx];
        features[j++] = features[last_idx + 1];
        features[j++] = features[last_idx + 2];
        features[j++] = features[last_idx + 3];
        features[j++] = features[last_idx + 4];
        features[j++] = features[last_idx + 5];
    }
    
    return FALL_MODEL_WINDOW_SIZE * FALL_MODEL_INPUT_FEATURES;
}

/**
 * @brief   获取模型信息
 */
int model_get_info(model_runtime_info_t *info)
{
    if (!info) {
        return -1;
    }
    memcpy(info, &g_model_handle.current_model, sizeof(model_runtime_info_t));
    return 0;
}

/**
 * @brief   获取当前模型类型
 */
model_type_t model_get_type(void)
{
    return g_model_handle.current_model.config.type;
}

/**
 * @brief   设置特征配置
 */
void model_set_feature_config(const feature_config_t *cfg)
{
    if (cfg) {
        memcpy(&g_model_handle.feature_cfg, cfg, sizeof(feature_config_t));
    }
}

/**
 * @brief   获取特征配置
 */
int model_get_feature_config(feature_config_t *cfg)
{
    if (!cfg) {
        return -1;
    }
    memcpy(cfg, &g_model_handle.feature_cfg, sizeof(feature_config_t));
    return 0;
}

/**
 * @brief   获取总推理次数
 */
uint32_t model_get_total_inferences(void)
{
    return g_model_handle.current_model.total_inferences;
}

/**
 * @brief   获取平均推理时间
 */
uint32_t model_get_avg_inference_time(void)
{
    if (g_total_inference_count == 0) {
        return 0;
    }
    return (uint32_t)(g_total_inference_time_us / g_total_inference_count);
}

/**
 * @brief   打印模型信息
 */
void model_dump_info(void)
{
    model_runtime_info_t *info = &g_model_handle.current_model;
    
    PRINTF("\r\n========== Fall Detection Model Info ==========\r\n");
    PRINTF("Type:     Fall Detection (1D CNN)\r\n");
    PRINTF("State:    %s\r\n", 
           info->state == MODEL_STATE_READY ? "READY" : "UNINIT");
    PRINTF("Size:     %lu bytes\r\n", (unsigned long)info->size);
    PRINTF("Input:    %d samples x %d features = %d floats\r\n",
           FALL_MODEL_WINDOW_SIZE, FALL_MODEL_INPUT_FEATURES,
           FALL_MODEL_WINDOW_SIZE * FALL_MODEL_INPUT_FEATURES);
    PRINTF("Output:   1 float (fall probability)\r\n");
    PRINTF("Threshold: %.2f\r\n", FALL_DETECT_THRESHOLD);
    PRINTF("Infer #:  %lu\r\n", (unsigned long)info->total_inferences);
    PRINTF("Avg Time: %lu us\r\n", (unsigned long)model_get_avg_inference_time());
    PRINTF("Errors:   %lu\r\n", (unsigned long)info->error_count);
    PRINTF("===============================================\r\n");
}
