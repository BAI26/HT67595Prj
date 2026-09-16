/**
 * @file    gated_cnn_model_data.h
 * @brief   Gated-CNN 跌倒检测模型数据
 * @date    2026-08-26
 * 
 * Model: Gated-CNN (PyTorch)
 * Input:  [100, 6] - 1秒 @ 100Hz, 6轴IMU
 * Output: [1] - 跌倒概率
 * Size:   81428 bytes (79.52 KB)
 */

#ifndef GATED_CNN_MODEL_DATA_H
#define GATED_CNN_MODEL_DATA_H

#include <stdint.h>

/* 模型数据数组 */
extern const uint8_t g_gated_cnn_model_data[];
extern const uint32_t g_gated_cnn_model_data_size;

#endif /* GATED_CNN_MODEL_DATA_H */
