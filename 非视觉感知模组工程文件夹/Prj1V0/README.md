# BLE Peripheral OTA + AI 完整项目

## 项目概述

本项目为 HT32F675x5 微控制器实现:
- **BLE OTA 无线升级** - 通过 BLE 空中升级固件和 AI 模型
- **跌倒检测** - 使用 TFLite Micro 运行 Gated-CNN 跌倒检测模型
- **双 Bank OTA** - 支持 A/B 固件备份升级

---

## 目录结构

```
Prj1V0/
├── sources/
│   ├── ai/                      # AI 模型推理
│   │   ├── fall_model_data.h    # 模型数据 (~36KB)
│   │   ├── model_inference.h/c  # 推理引擎
│   │   └── training_data_collector.h/c
│   ├── ota/                     # OTA 升级
│   │   ├── ota_manager.h/c
│   │   └── ble_ota_service.h/c
│   ├── app/                     # 应用集成 + Boot 管理
│   │   ├── app_main_integration.h/c
│   │   ├── boot_manager.h/c     # Boot 管理
│   │   └── project_config.h
│   └── components/              # 原有组件
├── model/                       # AI 模型文件
│   ├── sisfall_fall_model.tflite
│   └── train_fall_model.tflite
├── tools/
│   ├── ota/                     # OTA 工具
│   │   ├── build_config.py
│   │   └── ble_ota_tool.py
│   └── keil_project_config.py
├── docs/
│   ├── Build_Guide.md
│   └── Keil_Configuration_Guide.md
└── projects/
    └── ble_peripheral/ht32f675x5_r2/
        ├── config/
        │   └── app_cfg_ota.h
        └── project/mp/
            ├── ble_peripheral_mp.uvprojx
            └── ble_peripheral_mp_ota.sct
```

---

## 精简说明

| 原目录 | 合并后 |
|--------|--------|
| `sources/boot/` | → 合并到 `sources/app/` |
| `sources/boot/boot_manager.h/c` | → `sources/app/boot_manager.h/c` |

**原因**: boot 模块只有 2 个文件，独立目录不必要。

---

## 快速开始

### 1. 配置 Keil 项目

```bash
cd tools
python keil_project_config.py --all
```

### 2. 编译项目

1. 打开 Keil: `projects/ble_peripheral/ht32f675x5_r2/project/mp/ble_peripheral_mp.uvprojx`
2. 选择 `ble_peripheral_mp_ota.sct` 作为 Scatter File
3. 编译 (F7)

### 3. 下载运行

连接 J-Link/CMSIS-DAP，点击 Download (F8)

---

## 模块说明

| 模块 | 文件数 | 说明 |
|------|--------|------|
| **ai** | 6 | 跌倒检测推理引擎 + 模型数据 |
| **ota** | 4 | BLE 无线升级 |
| **app** | 5 | 应用集成 + Boot 管理 |

---

## 内存布局

```
Flash:
+---------------------+ 0x10002000
| Boot1 (8KB)        |
+---------------------+ 0x10004000
| APP Bank A (150KB) | ← 当前运行
+---------------------+ 0x10027800
| APP Bank B (150KB) | ← OTA 目标
+---------------------+ 0x1004D000
| Model Slot 1 (40KB)|
+---------------------+ 0x10057000
| Model Slot 2 (40KB)|
+---------------------+ 0x10061000
```

---

## BLE OTA 命令

```bash
# 安装依赖
pip install bleak

# 升级固件
python tools/ota/ble_ota_tool.py ota -a XX:XX:XX:XX:XX:XX -f output.bin

# 升级模型
python tools/ota/ble_ota_tool.py ota -a XX:XX:XX:XX:XX:XX -m model.tflite --slot 1
```

---

## 常见问题

### Q: 编译报错 "undefined reference to 'model_inference_init'"

确保 `model_inference.c` 已添加到项目的 `ai` 组中。

### Q: 链接报错 "L6218E: Undefined symbol malloc"

在 Linker 设置中添加 `--library=stdc++`

---

## 版本历史

| 版本 | 日期 | 说明 |
|------|------|------|
| V2.0 | 2026-08-25 | 添加 OTA + AI 支持，精简目录结构 |
| V1.0 | 2025-08-20 | 初始版本 |
