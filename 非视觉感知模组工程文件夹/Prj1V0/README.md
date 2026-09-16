# BLE Peripheral + AI 完整项目

## 项目概述

本项目为 HT32F675x5 微控制器实现:
- **跌倒检测** - 使用 TFLite Micro 运行 1D-CNN 跌倒检测模型
- **BLE 外设** - 通过蓝牙广播传感器数据
- **OTA 源码** - 保留在 `sources/ota/`，但当前 Scatter File **未启用双 Bank**，编译产物不带 OTA 升级功能
- **双 Bank OTA（可选）** - 通过切换 `ble_peripheral_mp_ota.sct` 可启用 A/B 固件备份升级

---

## 目录结构

```
Prj1V0/
├── sources/
│   ├── ai/                       # AI 模型推理
│   │   ├── fall_model_data.h     # 模型数据 (~36KB)
│   │   ├── model_inference.h/cpp # 推理引擎
│   │   └── training_data_collector.h/c
│   ├── ota/                      # OTA 升级（源码保留，当前未启用双 Bank）
│   │   ├── ota_manager.h/c
│   │   └── ble_ota_service.h/c
│   ├── app/                      # 应用集成
│   │   ├── app_main_integration.h/c
│   │   ├── boot_manager.h/c      # OTA Boot 管理（当前未使用）
│   │   └── project_config.h
│   ├── components/               # 驱动组件
│   ├── device/                   # CMSIS 启动 + 系统文件
│   ├── drivers/                  # HAL / HW / ext_flash
│   ├── patch/                    # patch_lib
│   ├── boards/                   # 板级支持包 (boards.h)
│   └── mem_cfg/                  # 内存映射配置
├── third_party/
│   ├── CMSIS/                    # CMSIS 头文件
│   └── tflm-tree/                # TensorFlow Lite Micro 源码树
├── model/                        # AI 模型文件
├── tools/
│   ├── ota/                      # OTA 工具脚本
│   ├── keil_project_config.py
│   ├── add_tflm_sources_to_keil.py
│   └── build_tflm_tree.py
├── docs/
│   ├── Build_Guide.md
│   └── Keil_Configuration_Guide.md
└── projects/
    └── ble_peripheral_ht32f675x5/
        ├── config/
        │   ├── app_cfg.h         # 当前使用
        │   └── app_cfg_ota.h     # OTA 配置（仅在切换 OTA 散列时使用）
        └── project/mp/
            ├── ble_peripheral_mp.uvprojx
            ├── ble_peripheral_mp.sct         # 当前使用（单 Bank）
            └── ble_peripheral_mp_ota.sct     # OTA 双 Bank（备用）
```

---

## 快速开始

### 1. 打开工程

Keil 已配置好所有 AI/TFLM 源文件，**无需再运行任何补丁脚本**：

```
projects/ble_peripheral_ht32f675x5/project/mp/ble_peripheral_mp.uvprojx
```

当前 Scatter File 是 `ble_peripheral_mp.sct`（**未启用 OTA 双 Bank**）。

### 2. 编译

按 F7。预期输出：
- `0 Errors`
- `Program Size: Code=约 70~80KB, RO-data=约 30~40KB, ZI-data=约 50~80KB`

### 3. 下载与运行

按 F8。下载后用串口工具（115200 bps 8N1）连接 UART1（TX=P41, RX=P39）应该看到：

```
[MAIN] boot reached

########################################
#       System Self-Test Report        #
########################################
[CHECK] Debug UART initialized
[CHECK] Baudrate: 115200 bps
[CHECK] TX = P41 (GPIOB.9)
[CHECK] RX = P39 (GPIOB.7)
[CHECK] Clock source: DCXO16M
########################################

[TEST] GPIO P29 (GPIOA.29) 置高测试
[APP] Normal mode started
[APP] P29 (GPIOA.29) 心跳灯已激活，约每秒翻转一次
[APP] AI inference engine initialized OK
[HB] loop=10 alive
[HB] loop=20 alive
...
```

P29 (GPIOA.29) 是 1Hz 心跳方波，可用万用表测量引脚电压应在 0V 和 3.3V 之间切换。

### 4. 调试

如程序卡死：
1. 用万用表测 P29 的电压
   - 3.3V（高）= main 已到达，等待下一步
   - 0V（低）= 该步骤已通过，进入下一步
   - 持续某电平 = 卡在该步骤
2. 看串口是否输出 `[MAIN] boot reached` 之前的任何 log
3. 串口无输出但 GPIO 有翻转 = UART 初始化失败
4. 串口和 GPIO 都无反应 = 系统初始化或时钟异常

---

## 模块说明

| 模块 | 文件数 | 说明 |
|------|--------|------|
| **ai** | 3 | 跌倒检测推理引擎 + 模型数据 |
| **ota**（源码） | 4 | BLE 无线升级（未启用） |
| **app** | 5 | 应用集成 + Boot 管理 |
| **tflm_core** | 18 | TFLite Micro 核心 |
| **tflm_kernels** | 21 | TFLite Micro 算子 |
| **tflm_utils** | 10 | TFLite Micro 工具 |
| **tflm_allocator** | 4 | TFLite Micro 内存分配 |
| **tflm_platform** | 2 | TFLite Micro 平台抽象 |

---

## 内存布局（当前 Scatter File）

```
Flash:
+---------------------+ 0x10000000
| Boot Reserved       |
+---------------------+ 0x10002000
| APP Code (160KB)    | ← 当前运行
+---------------------+ 0x1002A000
| (未使用)            |
+---------------------+ 0x10080000
```

---

## 启用 OTA 双 Bank（可选）

如需 OTA 双 Bank 升级：

1. 在 Keil Options → Linker → Scatter File 选择 `ble_peripheral_mp_ota.sct`
2. 在 C/C++ Define 中确保 `OTA_ENABLED=1`（来自 `app_cfg_ota.h`）

启用后布局：

```
Flash:
+---------------------+ 0x10002000
| APP Bank A (150KB)  | ← 当前运行
+---------------------+ 0x10027800
| APP Bank B (150KB)  | ← OTA 目标
+---------------------+ 0x1004D000
| Model Slot 1 (40KB) |
+---------------------+ 0x10057000
| Model Slot 2 (40KB) |
+---------------------+ 0x10061000
```

---

## 常见问题

### Q: 编译报错 "undefined reference to 'model_inference_init'"

确认 `sources\ai\model_inference.cpp` 已在 uvprojx 的 `ai` 组中。

### Q: 编译报错 "fatal error: tensorflow/lite/micro/...: No such file"

确认 IncludePath 包含 `third_party\tflm-tree` 和 `third_party\tflm-tree\third_party\flatbuffers\include`。

### Q: 链接报错 "L6218E: Undefined symbol malloc"

在 Linker → Misc Controls 中添加 `--library=stdc++`。

### Q: 链接报错 "L6320W: Ignoring --keep command"

`--keep=g_u8CpAppCode` 已删除。如再出现，检查是否残留旧 Misc 设置。

### Q: 下载后串口/GPIO 无反应

按"调试"小节的步骤排查。

---

## 版本历史

| 版本 | 日期 | 说明 |
|------|------|------|
| V2.1 | 2026-09-15 | 修复 AI/TFLM 缺失、调试引脚注释、Define 宏、boards.h、keil_patch.bat |
| V2.0 | 2026-08-25 | 添加 OTA + AI 支持，精简目录结构 |
| V1.0 | 2025-08-20 | 初始版本 |
