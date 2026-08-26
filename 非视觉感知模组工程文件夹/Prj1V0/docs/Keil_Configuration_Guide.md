# BLE Peripheral MP OTA + AI 项目配置指南

## 1. 在 Keil uVision 中添加新文件

### 1.1 打开项目

1. 打开 Keil uVision
2. 打开项目: `projects\ble_examples\ble_peripheral\ht32f675x5_r2\project\mp\ble_peripheral_mp.uvprojx`

### 1.2 添加新的文件组

在 Project 窗口中，右键点击项目名称，选择 "Manage Project Items" 或 "Add Group"

添加以下组:

| 组名 | 说明 |
|------|------|
| `ai` | AI 模型推理模块 |
| `ota` | OTA 升级模块 |
| `boot` | Boot 管理模块 |
| `app` | 应用集成模块 |

### 1.3 添加源文件到各组

#### AI 组 (ai)

添加以下文件:
```
..\..\..\..\..\..\sources\ai\model_inference.c
..\..\..\..\..\..\sources\ai\training_data_collector.c
```

**注意**: `fall_model_data.h` 是头文件，不需要添加到项目中（会被 `#include` 自动包含）

#### OTA 组 (ota)

添加以下文件:
```
..\..\..\..\..\..\sources\ota\ota_manager.c
..\..\..\..\..\..\sources\ota\ble_ota_service.c
```

#### Boot 组 (boot)

添加以下文件:
```
..\..\..\..\..\..\sources\boot\boot_manager.c
```

#### App 组 (app)

添加以下文件:
```
..\..\..\..\..\..\sources\app\app_main_integration.c
```

### 1.4 添加头文件路径

在项目选项中 (Project -> Options for Target -> C/C++ -> Include Paths)，添加:

```
..\..\..\..\..\..\sources\ai
..\..\..\..\..\..\sources\ota
..\..\..\..\..\..\sources\boot
..\..\..\..\..\..\sources\app
```

## 2. 编译器预定义符号

在 Project -> Options for Target -> C/C++ -> Preprocessor Symbols -> Define，添加:

```
__MAIN_PROCESSOR
HT32F67595_EVB
TF_LITE_STATIC_MEMORY
USE_IMU9DOF
```

## 3. 切换 Linker Script

### 3.1 修改 Scatter File

在 Project -> Options for Target -> Linker -> Scatter File，修改为:

```
..\project_HT32-IDE\mp\ble_peripheral_mp_ota.sct
```

### 3.2 创建 OTA 版 Scatter File

复制原始的 `ble_peripheral_mp.sct`，创建 `ble_peripheral_mp_ota.sct`:

```scatter
; OTA 版本 Scatter File
; APP Bank A: 0x10002000 - 0x100277FF (150KB)
; APP Bank B: 0x10027800 - 0x1004CFFF (150KB) [OTA 目标区]
; Model Slot 1: 0x1004D000 - 0x10056FFF (40KB)
; Model Slot 2: 0x10057000 - 0x10060FFF (40KB)

LR_IROM1 0x10002000 0x00025800 {  ; APP Bank A (150KB)
    ER_IROM1 0x10002000 0x00025800 {
        *.o (RESET, +First)
        *(InRoot$$Sections)
        .ANY (+RO)
    }
    RW_IRAM1 0x20000000 0x00020000 {
        .ANY (+RW +ZI)
    }
}

LR_IROM2 0x10027800 0x00025800 {  ; APP Bank B (OTA 目标区)
    ER_IROM2 0x10027800 0x00025800 {
        *.o (ota_code)
    }
}

LR_IROM3 0x1004D000 0x0000A000 {  ; Model Slot 1 (40KB)
    ER_IROM3 0x1004D000 0x0000A000 {
        *(model_data)
    }
}

LR_IROM4 0x10057000 0x0000A000 {  ; Model Slot 2 (40KB)
    ER_IROM4 0x10057000 0x0000A000 {
        *(model_data_backup)
    }
}
```

## 4. 内存布局

```
Flash Memory Map:
+-------------+ 0x00000000
|   Boot2    |  8KB
+-------------+ 0x00002000
|   Boot1    |  8KB
+-------------+ 0x10002000
|  APP A    |  150KB (当前运行)
+-------------+ 0x10027800
|  APP B    |  150KB (OTA 目标)
+-------------+ 0x1004D000
| Model 1   |   40KB
+-------------+ 0x10057000
| Model 2   |   40KB
+-------------+ 0x10061000
|   NVM     |  ~40KB
+-------------+ 0x10080000

RAM:
0x20000000 - 0x20020000: 128KB SRAM
```

## 5. 编译配置建议

### 5.1 优化级别

- Debug: `-O0` (Level 0)
- Release: `-O2` (Level 2)

### 5.2 关键编译选项

```
Misc Controls: -fno-rtti -fno-exceptions
Optim: 2 (Release)
```

### 5.3 链接选项

```
--entry=Reset_Handler
--keep=g_boot2LibCode
--keep=g_u8CpAppCode
```

## 6. 快速添加脚本 (Python)

如果不想手动添加，可以使用项目提供的脚本生成配置:

```python
# tools/keil_config_generator.py
import xml.etree.ElementTree as ET

def add_source_group(uvprojx_path, group_name, source_files):
    tree = ET.parse(uvprojx_path)
    root = tree.getroot()
    
    # 找到 Groups 节点
    groups = root.find('.//Groups')
    
    # 创建新组
    new_group = ET.SubElement(groups, 'Group')
    group_elem = ET.SubElement(new_group, 'GroupName')
    group_elem.text = group_name
    
    files_elem = ET.SubElement(new_group, 'Files')
    
    for src_file in source_files:
        file_elem = ET.SubElement(files_elem, 'File')
        name_elem = ET.SubElement(file_elem, 'FileName')
        name_elem.text = src_file.split('\\')[-1]
        type_elem = ET.SubElement(file_elem, 'FileType')
        type_elem.text = '1'  # C file
        path_elem = ET.SubElement(file_elem, 'FilePath')
        path_elem.text = src_file
    
    tree.write(uvprojx_path)

# 使用示例
add_source_group('ble_peripheral_mp.uvprojx', 'ai', [
    '..\\..\\..\\..\\..\\..\\sources\\ai\\model_inference.c',
    '..\\..\\..\\..\\..\\..\\sources\\ai\\training_data_collector.c',
])
```

## 7. 验证编译

编译完成后，检查:

1. **Code Size**: 应该包含模型数据 (~36KB)
2. **RO Size**: 不应超过 150KB
3. **RW Size**: 不应超过 RAM 大小

## 8. 常见问题

### Q1: 编译报错 "undefined reference to 'model_inference_init'"

检查:
1. `model_inference.c` 是否添加到项目中
2. 头文件路径是否正确

### Q2: 编译报错 "cannot find -lstdc++"

添加链接选项:
```
--no_lto -lstdc++ --no_multifile
```

### Q3: 内存溢出

检查 scatter file 配置，确保模型数据放在正确的 Flash 区域
