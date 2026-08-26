/**
 * @file    tflm_model_data.h
 * @brief   TFLite 模型数据 - Fall Detection
 * @note    自动生成文件
 * 
 * 模型信息:
 *   - 类型: 跌倒检测
 *   - 输入: 100 样本 x 6 轴 (加速度计 XYZ + 陀螺仪 XYZ)
 *   - 输出: 2 类 (正常活动 / 跌倒)
 *   - 编译日期: 2026-08-25
 * 
 * 使用方法:
 *   1. 训练模型后，使用 tools/ota/build_config.py 提取:
 *      python build_config.py --extract-model path/to/model.tflite
 *   
 *   2. 将生成的头文件复制到 sources/ai/ 目录
 *   
 *   3. 在 Keil 项目中添加该头文件
 *   
 *   4. 链接时会自动放入 MODEL_SLOT1 区域
 */
#ifndef TFLM_MODEL_DATA_H
#define TFLM_MODEL_DATA_H

#include <stdint.h>

/* 模型元信息 */
#define TFLM_MODEL_SIZE           0       /* 需要更新为实际大小 */
#define TFLM_MODEL_VERSION        0
#define TFLM_MODEL_TYPE           MODEL_TYPE_FALL_DETECTION
#define TFLM_MODEL_INPUT_SIZE     600     /* 100 samples x 6 features */
#define TFLM_MODEL_OUTPUT_SIZE    2       /* 2 classes */
#define TFLM_MODEL_MAGIC          0xDEADBEEF

/* 模型信息结构 (放在模型数据之前) */
typedef struct {
    uint32_t magic;
    uint32_t version;
    uint32_t size;
    uint32_t crc32;
    uint32_t input_size;
    uint32_t output_size;
    uint8_t  model_type;
    uint8_t  reserved[15];
} model_header_t;

/**
 * @brief 获取模型数据指针
 */
static inline const uint8_t* model_get_data(void)
{
    extern const uint8_t g_tflm_model_data[];
    return g_tflm_model_data;
}

/**
 * @brief 获取模型大小
 */
static inline uint32_t model_get_size(void)
{
    return TFLM_MODEL_SIZE;
}

/**
 * @brief 检查模型有效性
 */
static inline uint8_t model_is_valid(void)
{
    return (TFLM_MODEL_SIZE > 0 && TFLM_MODEL_SIZE < 40 * 1024);
}

#endif /* TFLM_MODEL_DATA_H */

/*
 * ===========================================================================
 * 训练数据格式说明
 * ===========================================================================
 * 
 * 输入数据 (600 字节 = 100 样本 x 6 特征):
 * 
 * 样本格式: [acc_x, acc_y, acc_z, gyro_x, gyro_y, gyro_z]
 * 单位: g (加速度), dps (角速度)
 * 采样率: 100 Hz
 * 窗口: 1 秒
 * 
 * 示例 (第一个样本):
 *   [0.01, 0.02, 1.02, 0.1, -0.2, 0.05]
 *   = 加速度计 XYZ (静止时 Z 轴约 1g)
 *   = 陀螺仪 XYZ (静止时接近 0)
 * 
 * 输出数据 (2 字节 = 2 类概率):
 * 
 *   [P_normal, P_fall]
 *   概率值: 0.0 ~ 1.0
 * 
 *   示例:
 *     [0.95, 0.05]  -> 正常活动，95% 置信度
 *     [0.10, 0.90]  -> 跌倒检测，90% 置信度
 * 
 * ===========================================================================
 */
