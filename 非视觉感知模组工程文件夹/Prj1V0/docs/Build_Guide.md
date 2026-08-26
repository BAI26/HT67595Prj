# BLE Peripheral OTA + AI 编译指南

## 快速开始

### 1. 打开 Keil 项目

```
项目路径: projects\ble_examples\ble_peripheral\ht32f675x5_r2\project\mp\ble_peripheral_mp.uvprojx
```

### 2. 添加源文件

在 Keil 中按以下顺序添加文件组和文件:

#### 新增组: `ai`
| 文件 | 路径 |
|------|------|
| `model_inference.c` | `..\..\..\..\..\..\sources\ai\model_inference.c` |
| `training_data_collector.c` | `..\..\..\..\..\..\sources\ai\training_data_collector.c` |

#### 新增组: `ota`
| 文件 | 路径 |
|------|------|
| `ota_manager.c` | `..\..\..\..\..\..\sources\ota\ota_manager.c` |
| `ble_ota_service.c` | `..\..\..\..\..\..\sources\ota\ble_ota_service.c` |

#### 新增组: `boot`
| 文件 | 路径 |
|------|------|
| `boot_manager.c` | `..\..\..\..\..\..\sources\boot\boot_manager.c` |

#### 新增组: `app`
| 文件 | 路径 |
|------|------|
| `app_main_integration.c` | `..\..\..\..\..\..\sources\app\app_main_integration.c` |

### 3. 修改头文件路径

Project → Options → C/C++ → Include Paths 添加:
```
..\..\..\..\..\..\sources\ai
..\..\..\..\..\..\sources\ota
..\..\..\..\..\..\sources\boot
..\..\..\..\..\..\sources\app
```

### 4. 修改预定义符号

Project → Options → C/C++ → Preprocessor → Define 添加:
```
__MAIN_PROCESSOR
HT32F67595_EVB
TF_LITE_STATIC_MEMORY
USE_IMU9DOF
FALL_DETECT_ENABLED=1
```

### 5. 切换 Scatter File

Project → Options → Linker → Scatter File:
```
..\mp\ble_peripheral_mp_ota.sct
```

### 6. 修改配置头文件

在 `main.c` 中修改包含:
```c
// 替换
#include "app_cfg.h"
// 为
#include "app_cfg_ota.h"
```

---

## 编译

### Debug 编译
1. 选择 `Debug` 配置
2. 点击 `Rebuild` 或按 `F7`

### Release 编译
1. 选择 `Release` 配置
2. 点击 `Rebuild`

---

## 常见问题

### Q1: 编译报错 "undefined reference to 'model_inference_init'"

**原因**: `model_inference.c` 未添加到项目

**解决**:
1. 在 Project 窗口中右键项目 → Manage Project Items
2. 添加 `model_inference.c` 到 `ai` 组

### Q2: 编译报错 "cannot find 'fall_model_data.h'"

**原因**: 头文件路径未配置

**解决**:
1. Project → Options → C/C++ → Include Paths
2. 添加 `..\..\..\..\..\..\sources\ai`

### Q3: 链接报错 "L6218E: Undefined symbol malloc"

**原因**: 缺少 C 库

**解决**:
1. Project → Options → Linker → Misc Controls
2. 添加: `--library=stdc++`

### Q4: 内存溢出 "L6220E: More than one load region"

**原因**: Scatter File 配置错误

**解决**: 确保使用 `ble_peripheral_mp_ota.sct`

### Q5: TFLM 报错 "AllocateTensors failed"

**原因**: 堆内存不足

**解决**:
1. 在 `app_cfg_ota.h` 中增大堆:
```c
#define RAM_MP_HEAP_SIZE_MAX  (24 * KBYTE)  /* 增大堆区用于 TFLM */
```

---

## 输出文件

编译成功后生成以下文件:

| 文件 | 说明 |
|------|------|
| `Objects\ble_peripheral_mp.axf` | ELF 可执行文件 |
| `Objects\ble_peripheral_mp.hex` | HEX 烧录文件 |
| `Objects\ble_peripheral_mp.bin` | BIN 二进制文件 |

---

## 下载烧录

### 使用 J-Link / CMSIS-DAP

1. 连接调试器
2. 点击 `Download` 或按 `F8`

### 使用 Holtek 工具

1. 打开 Holtek Flash Utility
2. 选择 HEX/BIN 文件
3. 选择起始地址 `0x10002000`
4. 点击烧录

---

## OTA 升级测试

### 使用 Python 工具

```bash
cd tools/ota

# 安装依赖
pip install bleak

# 升级固件
python ble_ota_tool.py ota -a XX:XX:XX:XX:XX:XX -f Objects\ble_peripheral_mp.bin

# 打包完整 OTA
python ble_ota_tool.py package -f Objects\ble_peripheral_mp.hex
```

---

## 内存布局

```
Flash (0x10000000 - 0x1007FFFF):
+---------------------+ 0x00000000
| Boot2 (8KB)         |
+---------------------+ 0x00002000
| Boot1 (8KB)         |
+---------------------+ 0x10002000
| APP Bank A (150KB)  | ← 当前运行区
+---------------------+ 0x10027800
| APP Bank B (150KB)  | ← OTA 目标区
+---------------------+ 0x1004D000
| Model Slot 1 (40KB) |
+---------------------+ 0x10057000
| Model Slot 2 (40KB) |
+---------------------+ 0x10061000
| Boot Info (4KB)     |
+---------------------+ 0x10065000
| NVM (Reserved)      |
+---------------------+ 0x10080000

RAM (0x20000000 - 0x2003FFFF):
+---------------------+ 0x20000000
| CP RAM (80KB)       |
+---------------------+ 0x20014000
| MP Vector (512B)    |
+---------------------+ 0x20014200
| MP RAM Code (32KB)  |
+---------------------+ 0x2001C200
| MP Data (32KB)      |
+---------------------+ 0x20024200
| MP Stack/Heap       |
+---------------------+ 0x20028000
```
