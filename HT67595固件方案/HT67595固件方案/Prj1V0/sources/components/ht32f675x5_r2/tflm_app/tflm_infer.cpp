/*************************************************************************************************************
 * @file        tflm_infer.cpp
 * @brief       Hello World INT8 正弦模型推理实现（TFLite Micro）
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   实现 TFLM 解释器初始化、单次推理与自测。
 *   依赖 hello_world_model_data 与裁剪后的 tflm-tree。
 *
 ************************************************************************************************************/
#include "tflm_infer.h"

#include <cmath>
#include <cstdint>

#include "hello_world_model_data.h"

#include "tensorflow/lite/micro/micro_interpreter.h"
#include "tensorflow/lite/micro/micro_mutable_op_resolver.h"
#include "tensorflow/lite/micro/system_setup.h"
#include "tensorflow/lite/schema/schema_generated.h"

#include "app_cfg.h"

#ifndef PRINTF
#define PRINTF(...)
#endif

namespace {

using HelloOpResolver = tflite::MicroMutableOpResolver<1>;

constexpr int kArenaSize = 4096;
alignas(16) uint8_t g_tensor_arena[kArenaSize];

const tflite::Model *g_model = nullptr;
HelloOpResolver g_resolver;
tflite::MicroInterpreter *g_interpreter = nullptr;
TfLiteTensor *g_input = nullptr;
TfLiteTensor *g_output = nullptr;
bool g_ready = false;

}  // namespace

/**
 * @brief  初始化 TFLM 解释器与正弦模型。
 * @note   0=成功，<0=失败
 * @return 0 成功
 */
extern "C" int tflm_hello_init(void)
{
    if (g_ready)
    {
        return 0;
    }

    tflite::InitializeTarget();

    g_model = tflite::GetModel(g_hello_world_int8_model_data);
    if (g_model->version() != TFLITE_SCHEMA_VERSION)
    {
        PRINTF("[TFLM] schema mismatch model=%lu expect=%d\r\n",
               (unsigned long)g_model->version(), (int)TFLITE_SCHEMA_VERSION);
        return -1;
    }

    if (g_resolver.AddFullyConnected() != kTfLiteOk)
    {
        PRINTF("[TFLM] AddFullyConnected failed\r\n");
        return -2;
    }

    static tflite::MicroInterpreter static_interpreter(
        g_model, g_resolver, g_tensor_arena, kArenaSize);
    g_interpreter = &static_interpreter;

    if (g_interpreter->AllocateTensors() != kTfLiteOk)
    {
        PRINTF("[TFLM] AllocateTensors failed (arena=%d)\r\n", kArenaSize);
        return -3;
    }

    g_input = g_interpreter->input(0);
    g_output = g_interpreter->output(0);
    if ((g_input == nullptr) || (g_output == nullptr))
    {
        PRINTF("[TFLM] null IO tensors\r\n");
        return -4;
    }

    g_ready = true;
    PRINTF("[TFLM] hello init ok arena_used=%lu\r\n",
           (unsigned long)g_interpreter->arena_used_bytes());
    return 0;
}

/**
 * @brief  运行一次 Hello World 正弦模型推理。
 * @param  x_rad  输入弧度
 * @param  y_out  预测 sin，可为 NULL
 * @return 0 成功
 */
extern "C" int tflm_hello_infer(float x_rad, float *y_out)
{
    if (!g_ready)
    {
        if (tflm_hello_init() != 0)
        {
            return -1;
        }
    }

    /* quantize float -> int8 */
    const float in_scale = g_input->params.scale;
    const int in_zp = g_input->params.zero_point;
    int32_t q = (int32_t)lroundf(x_rad / in_scale) + in_zp;
    if (q < -128)
    {
        q = -128;
    }
    if (q > 127)
    {
        q = 127;
    }
    g_input->data.int8[0] = (int8_t)q;

    if (g_interpreter->Invoke() != kTfLiteOk)
    {
        PRINTF("[TFLM] Invoke failed\r\n");
        return -2;
    }

    const float out_scale = g_output->params.scale;
    const int out_zp = g_output->params.zero_point;
    const float y =
        ((float)g_output->data.int8[0] - (float)out_zp) * out_scale;
    if (y_out != nullptr)
    {
        *y_out = y;
    }
    return 0;
}

/**
 * @brief  用黄金向量自测并 PRINTF 结果。
 * @return 全过 0，否则 <0
 */
extern "C" int tflm_hello_selftest(void)
{
    if (tflm_hello_init() != 0)
    {
        return -1;
    }

    /* Same golden set as upstream hello_world_test.cc (int8 path) */
    constexpr int kN = 4;
    const float golden_x[kN] = {0.77f, 1.57f, 2.3f, 3.14f};
    const int8_t golden_x_q[kN] = {-96, -63, -34, 0};
    constexpr float kEps = 0.05f;

    int fail = 0;
    for (int i = 0; i < kN; ++i)
    {
        g_input->data.int8[0] = golden_x_q[i];
        if (g_interpreter->Invoke() != kTfLiteOk)
        {
            PRINTF("[TFLM] selftest Invoke fail i=%d\r\n", i);
            return -2;
        }
        const float out_scale = g_output->params.scale;
        const int out_zp = g_output->params.zero_point;
        const float y_pred =
            ((float)g_output->data.int8[0] - (float)out_zp) * out_scale;
        const float y_true = sinf(golden_x[i]);
        const float err = fabsf(y_true - y_pred);
        PRINTF("[TFLM] x=%.2f sin=%.3f pred=%.3f err=%.3f %s\r\n",
               (double)golden_x[i], (double)y_true, (double)y_pred,
               (double)err, (err <= kEps) ? "OK" : "FAIL");
        if (err > kEps)
        {
            fail++;
        }
    }

    if (fail == 0)
    {
        PRINTF("[TFLM] hello selftest PASS\r\n");
        return 0;
    }
    PRINTF("[TFLM] hello selftest FAIL count=%d\r\n", fail);
    return -3;
}
