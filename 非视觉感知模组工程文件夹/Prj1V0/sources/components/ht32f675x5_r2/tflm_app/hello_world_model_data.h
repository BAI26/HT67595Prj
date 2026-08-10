/*************************************************************************************************************
 * @file        hello_world_model_data.h
 * @brief       TFLM Hello World INT8 模型数据声明
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   声明嵌入固件的正弦示例模型字节数组及其长度。
 *   实际数据由 hello_world_model_data.cc 提供。
 *
 ************************************************************************************************************/
#ifndef HELLO_WORLD_MODEL_DATA_H
#define HELLO_WORLD_MODEL_DATA_H

#include <cstdint>

extern const unsigned char g_hello_world_int8_model_data[];
extern const unsigned int g_hello_world_int8_model_data_len;

#endif /* HELLO_WORLD_MODEL_DATA_H */
