/*************************************************************************************************************
 * @file        tflm_infer.h
 * @brief       TFLM Hello World（正弦）推理测试接口（MP）
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   面向 HT32F67595 MP 核的 TensorFlow Lite Micro 最小验证封装。
 *   使用 INT8 正弦示例模型，用于确认算子裁剪、堆/arena 与链接是否正常。
 *
 ************************************************************************************************************/
#ifndef TFLM_INFER_H
#define TFLM_INFER_H

#ifdef __cplusplus
extern "C" {
#endif

/**
 * @brief  初始化 TFLM 解释器与正弦模型。
 * @note   0=成功，<0=失败
 * @return 0 成功
 */
int tflm_hello_init(void);

/**
 * @brief  运行一次 Hello World 正弦模型推理。
 * @param  x_rad  输入角度（弧度，浮点域）
 * @param  y_out  预测 sin(x) 输出，可为 NULL
 * @return 0=成功
 */
int tflm_hello_infer(float x_rad, float *y_out);

/**
 * @brief  运行若干黄金向量并通过 PRINTF 打印。
 * @return 全部在容差内返回 0，否则 <0
 */
int tflm_hello_selftest(void);

#ifdef __cplusplus
}
#endif

#endif /* TFLM_INFER_H */
