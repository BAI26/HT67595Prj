/**
 * @file    build_config.py
 * @brief   Keil uVision 构建配置脚本
 * @note    用于自动化构建和 OTA 固件打包
 * 
 * 用法:
 *   python build_config.py --build      # 构建
 *   python build_config.py --pack       # 打包 OTA
 *   python build_config.py --all       # 构建并打包
 */
import os
import sys
import struct
import hashlib
import argparse
from pathlib import Path

# ================================================================
# 配置
# ================================================================
PROJECT_ROOT = Path(__file__).parent.parent.parent
KEIL_UVproj = PROJECT_ROOT / "projects" / "ble_examples" / "ble_peripheral" / "ht32f675x5_r2" / "project" / "mp" / "ble_peripheral_mp.uvprojx"
OUTPUT_DIR = PROJECT_ROOT / "output"
OTA_TOOLS_DIR = PROJECT_ROOT / "tools" / "ota"

# OTA 固件格式
FIRMWARE_MAGIC = b'OTAF'
FIRMWARE_VERSION = 2

# ================================================================
# 工具函数
# ================================================================
def ensure_dir(path):
    """确保目录存在"""
    p = Path(path)
    p.mkdir(parents=True, exist_ok=True)
    return p

def calc_crc32(data):
    """计算 CRC32"""
    crc = 0xFFFFFFFF
    for byte in data:
        crc ^= byte
        for _ in range(8):
            if crc & 1:
                crc = (crc >> 1) ^ 0xEDB88320
            else:
                crc >>= 1
    return (~crc) & 0xFFFFFFFF

def read_hex_file(hex_path):
    """读取 Intel HEX 文件并返回二进制数据"""
    data = bytearray()
    with open(hex_path, 'r') as f:
        for line in f:
            line = line.strip()
            if not line or line[0] != ':':
                continue
            
            # 解析 HEX 行
            byte_count = int(line[1:3], 16)
            address = int(line[3:7], 16)
            record_type = int(line[7:9], 16)
            record_data = bytes.fromhex(line[9:9 + byte_count * 2])
            
            if record_type == 0x00:  # Data
                data.extend(record_data)
            elif record_type == 0x01:  # End of file
                break
    
    return bytes(data)

def create_ota_package(firmware_data, version, model_data=None):
    """创建 OTA 升级包"""
    output = bytearray()
    
    # 包头
    output.extend(FIRMWARE_MAGIC)  # 4 bytes: Magic
    output.extend(struct.pack('<I', FIRMWARE_VERSION))  # 4 bytes: Version
    output.extend(struct.pack('<I', len(firmware_data)))  # 4 bytes: Firmware size
    output.extend(struct.pack('<I', calc_crc32(firmware_data)))  # 4 bytes: CRC32
    
    # 元数据
    import datetime
    timestamp = int(datetime.datetime.now().timestamp())
    output.extend(struct.pack('<I', timestamp))  # 4 bytes: Timestamp
    
    # 预留
    output.extend(struct.pack('<H', 0))  # 2 bytes: Flags
    output.extend(bytes(10))  # 10 bytes: Reserved
    
    # 模型数据 (如果有)
    if model_data:
        output.extend(struct.pack('<I', len(model_data)))  # 4 bytes: Model size
        output.extend(struct.pack('<I', calc_crc32(model_data)))  # 4 bytes: Model CRC
    else:
        output.extend(struct.pack('<I', 0))  # 4 bytes: No model
        output.extend(struct.pack('<I', 0))  # 4 bytes: No model CRC
    
    # 包头 CRC
    header_crc = calc_crc32(bytes(output))
    header_crc_pos = len(output)
    output.extend(struct.pack('<I', header_crc))  # 4 bytes: Header CRC
    
    # 固件数据
    output.extend(firmware_data)
    
    # 模型数据
    if model_data:
        output.extend(model_data)
    
    return bytes(output)

# ================================================================
# 构建命令
# ================================================================
def build_project():
    """使用 Keil 命令行构建项目"""
    print("=" * 50)
    print("Building project...")
    print("=" * 50)
    
    # 检查 Keil 安装
    keil_path = os.environ.get('KEIL_ROOT', r'C:\Keil_v5')
    uv4_exe = Path(keil_path) / 'UV4' / 'UV4.exe'
    
    if not uv4_exe.exists():
        print(f"ERROR: Keil UV4 not found at {uv4_exe}")
        print("Please set KEIL_ROOT environment variable or install Keil MDK")
        return False
    
    # 构建参数
    build_args = [
        str(uv4_exe),
        '-j0',                    # 不限制线程数
        '-o', 'build.log',        # 输出日志
        str(KEIL_UVproj),
    ]
    
    print(f"Running: {' '.join(build_args)}")
    
    import subprocess
    result = subprocess.run(build_args, capture_output=True, text=True)
    
    if result.returncode == 0:
        print("Build SUCCESS")
        return True
    else:
        print("Build FAILED")
        print(result.stdout)
        print(result.stderr)
        return False

def pack_ota_package():
    """打包 OTA 固件"""
    print("=" * 50)
    print("Packing OTA package...")
    print("=" * 50)
    
    ensure_dir(OUTPUT_DIR)
    
    # 查找编译输出
    hex_file = PROJECT_ROOT / "projects" / "ble_examples" / "ble_peripheral" / "ht32f675x5_r2" / "project" / "mp" / "Objects" / "ble_peripheral_mp.hex"
    bin_file = PROJECT_ROOT / "projects" / "ble_examples" / "ble_peripheral" / "ht32f675x5_r2" / "project" / "mp" / "Objects" / "ble_peripheral_mp.bin"
    
    firmware_data = None
    
    if hex_file.exists():
        print(f"Reading HEX: {hex_file}")
        firmware_data = read_hex_file(hex_file)
    elif bin_file.exists():
        print(f"Reading BIN: {bin_file}")
        with open(bin_file, 'rb') as f:
            firmware_data = f.read()
    else:
        print("ERROR: No firmware file found!")
        return False
    
    print(f"Firmware size: {len(firmware_data)} bytes")
    
    # 查找模型文件
    model_file = PROJECT_ROOT / "model" / "fall_detection.tflite"
    model_data = None
    if model_file.exists():
        print(f"Reading model: {model_file}")
        with open(model_file, 'rb') as f:
            model_data = f.read()
        print(f"Model size: {len(model_data)} bytes")
    
    # 创建 OTA 包
    ota_package = create_ota_package(firmware_data, FIRMWARE_VERSION, model_data)
    
    # 保存
    ota_file = OUTPUT_DIR / f"ble_peripheral_v{FIRMWARE_VERSION}_ota.bin"
    with open(ota_file, 'wb') as f:
        f.write(ota_package)
    
    print(f"OTA package saved: {ota_file}")
    print(f"OTA package size: {len(ota_package)} bytes")
    
    # 生成 CRC 信息
    print(f"Firmware CRC: 0x{calc_crc32(firmware_data):08X}")
    
    return True

def extract_model_from_tflite(tflite_file, output_header):
    """从 TFLite 文件提取模型数据生成 C 头文件"""
    print("=" * 50)
    print("Extracting model to C header...")
    print("=" * 50)
    
    with open(tflite_file, 'rb') as f:
        model_data = f.read()
    
    print(f"Model size: {len(model_data)} bytes")
    
    # 生成 C 头文件
    ensure_dir(Path(output_header).parent)
    
    with open(output_header, 'w') as f:
        f.write('/**\n')
        f.write(' * @file    tflm_model_data.h\n')
        f.write(' * @brief   TFLite 模型数据\n')
        f.write(' * @note    自动生成 - 请勿手动修改\n')
        f.write(' */\n')
        f.write('#ifndef TFLM_MODEL_DATA_H\n')
        f.write('#define TFLM_MODEL_DATA_H\n\n')
        f.write('#include <stdint.h>\n\n')
        f.write(f'#define TFLM_MODEL_SIZE {len(model_data)}\n\n')
        f.write('/* 模型数据 */\n')
        f.write('static const uint8_t g_tflm_model_data[] __attribute__((section(".model_data"))) = {\\n')
        
        # 分行输出，每行 16 字节
        for i in range(0, len(model_data), 16):
            chunk = model_data[i:i+16]
            hex_str = ','.join(f'0x{b:02X}' for b in chunk)
            f.write(f'    {hex_str},\\n')
        
        f.write('};\n\n')
        f.write('#endif /* TFLM_MODEL_DATA_H */\n')
    
    print(f"Model header saved: {output_header}")

# ================================================================
# 主函数
# ================================================================
def main():
    parser = argparse.ArgumentParser(description='BLE Peripheral Build Tools')
    parser.add_argument('--build', action='store_true', help='Build project')
    parser.add_argument('--pack', action='store_true', help='Pack OTA package')
    parser.add_argument('--extract-model', metavar='FILE', help='Extract TFLite model to C header')
    parser.add_argument('--all', action='store_true', help='Build and pack')
    
    args = parser.parse_args()
    
    if args.build:
        if build_project():
            pack_ota_package()
    elif args.pack:
        pack_ota_package()
    elif args.extract_model:
        output = PROJECT_ROOT / 'sources' / 'ai' / 'tflm_model_data.h'
        extract_model_from_tflite(args.extract_model, output)
    elif args.all:
        if build_project():
            pack_ota_package()
    else:
        parser.print_help()

if __name__ == '__main__':
    main()
