"""
BLE OTA 升级工具
用于通过 BLE 升级固件和模型

用法:
    python ble_ota_tool.py --firmware path/to/firmware.bin
    python ble_ota_tool.py --model path/to/model.tflite
    python ble_ota_tool.py --com COM3 --firmware path/to/firmware.bin
"""
import os
import sys
import struct
import hashlib
import time
import logging
from pathlib import Path
from typing import Optional, Callable

# BLE 库 (根据实际硬件选择)
try:
    from bleak import BleakClient, BleakScanner
    BLEAK_AVAILABLE = True
except ImportError:
    BLEAK_AVAILABLE = False
    print("Warning: bleak not installed. BLE functionality disabled.")
    print("Install with: pip install bleak")

# 日志配置
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
logger = logging.getLogger(__name__)

# OTA 命令
OTA_CMD_START       = 0x01
OTA_CMD_DATA        = 0x02
OTA_CMD_VERIFY      = 0x03
OTA_CMD_REBOOT      = 0x04
OTA_CMD_ABORT       = 0x05
OTA_CMD_MODEL_START = 0x10
OTA_CMD_MODEL_DATA  = 0x11
OTA_CMD_MODEL_COMMIT = 0x12

# OTA 状态
OTA_STATUS_IDLE         = 0x00
OTA_STATUS_READY        = 0x01
OTA_STATUS_DOWNLOADING  = 0x02
OTA_STATUS_VERIFYING    = 0x03
OTA_STATUS_SUCCESS      = 0x04
OTA_STATUS_FAILED       = 0x05

# BLE OTA Service UUID
OTA_SERVICE_UUID = "12345678-9ABC-DEF0-1234-56789ABCDEF0"
OTA_CTRL_UUID    = "12345678-9ABC-DEF0-1234-56789ABCDEF1"
OTA_DATA_UUID    = "12345678-9ABC-DEF0-1234-56789ABCDEF2"


class BLEOTATool:
    """BLE OTA 工具类"""
    
    def __init__(self, device_address: Optional[str] = None, debug: bool = False):
        self.device_address = device_address
        self.client: Optional[BleakClient] = None
        self.debug = debug
        self.progress_callback: Optional[Callable[[int], None]] = None
        self.seq = 0
        
    def set_progress_callback(self, callback: Callable[[int], None]):
        """设置进度回调"""
        self.progress_callback = callback
        
    def _make_packet(self, cmd: int, data: bytes = b'') -> bytes:
        """构建 OTA 数据包"""
        pkt = bytearray()
        pkt.append(cmd)                    # 命令
        pkt.append(0)                      # 标志
        pkt.extend(struct.pack('<H', self.seq))  # 序列号
        pkt.extend(struct.pack('<H', len(data))) # 数据长度
        pkt.extend(struct.pack('<I', 0))    # 偏移量 (预留)
        pkt.extend(data)                   # 数据
        self.seq += 1
        return bytes(pkt)
    
    async def connect(self) -> bool:
        """连接 BLE 设备"""
        if not BLEAK_AVAILABLE:
            logger.error("BLE library not available")
            return False
            
        try:
            if not self.device_address:
                # 扫描设备
                logger.info("Scanning for BLE devices...")
                devices = await BleakScanner.discover(timeout=5.0)
                
                for d in devices:
                    if "HT32" in d.name or "BLE" in d.name:
                        self.device_address = d.address
                        logger.info(f"Found device: {d.name} ({d.address})")
                        break
                        
            if not self.device_address:
                logger.error("No device found")
                return False
                
            # 连接
            logger.info(f"Connecting to {self.device_address}...")
            self.client = BleakClient(self.device_address)
            await self.client.connect()
            logger.info("Connected!")
            return True
            
        except Exception as e:
            logger.error(f"Connection failed: {e}")
            return False
    
    async def disconnect(self):
        """断开连接"""
        if self.client:
            await self.client.disconnect()
            logger.info("Disconnected")
    
    async def _send_cmd(self, cmd: int, data: bytes = b'') -> bool:
        """发送命令"""
        if not self.client:
            logger.error("Not connected")
            return False
            
        try:
            pkt = self._make_packet(cmd, data)
            
            if self.debug:
                logger.debug(f"Send: cmd=0x{cmd:02X}, len={len(data)}")
                
            await self.client.write_gatt_char(OTA_CTRL_UUID, pkt)
            return True
            
        except Exception as e:
            logger.error(f"Send failed: {e}")
            return False
    
    async def _read_response(self, timeout: float = 10.0) -> Optional[bytes]:
        """读取响应"""
        if not self.client:
            return None
            
        try:
            start = time.time()
            while time.time() - start < timeout:
                data = await self.client.read_gatt_char(OTA_CTRL_UUID)
                if data:
                    return data
                await asyncio.sleep(0.1)
            return None
            
        except Exception as e:
            logger.error(f"Read failed: {e}")
            return None
    
    async def upgrade_firmware(self, firmware_path: str, target_bank: int = 1) -> bool:
        """升级固件"""
        logger.info(f"Upgrading firmware: {firmware_path}")
        
        # 读取固件
        with open(firmware_path, 'rb') as f:
            firmware_data = f.read()
            
        total_size = len(firmware_data)
        logger.info(f"Firmware size: {total_size} bytes")
        
        # 计算 CRC
        crc = self._calc_crc32(firmware_data)
        logger.info(f"Firmware CRC: 0x{crc:08X}")
        
        # 发送开始命令
        cmd_data = struct.pack('<IB', total_size, target_bank)
        if not await self._send_cmd(OTA_CMD_START, cmd_data):
            return False
            
        # 等待就绪
        await asyncio.sleep(0.5)
        
        # 分包发送
        chunk_size = 240  # BLE MTU - 包头
        sent = 0
        last_progress = -1
        
        while sent < total_size:
            chunk = firmware_data[sent:sent + chunk_size]
            
            if not await self._send_cmd(OTA_CMD_DATA, chunk):
                logger.error("Data send failed")
                return False
                
            sent += len(chunk)
            progress = int(sent * 100 / total_size)
            
            if progress != last_progress and self.progress_callback:
                self.progress_callback(progress)
                last_progress = progress
                
            if self.debug:
                print(f"\rProgress: {progress}%", end='', flush=True)
                
            await asyncio.sleep(0.01)  # 防止 BLE 缓冲区溢出
            
        if self.debug:
            print()
            
        # 发送验证命令
        logger.info("Verifying firmware...")
        if not await self._send_cmd(OTA_CMD_VERIFY):
            return False
            
        await asyncio.sleep(1)
        
        # 发送重启命令
        logger.info("Rebooting device...")
        if not await self._send_cmd(OTA_CMD_REBOOT):
            return False
            
        logger.info("Firmware upgrade completed!")
        return True
    
    async def upgrade_model(self, model_path: str, slot: int = 1) -> bool:
        """升级模型"""
        logger.info(f"Upgrading model: {model_path}")
        
        # 读取模型
        with open(model_path, 'rb') as f:
            model_data = f.read()
            
        total_size = len(model_data)
        logger.info(f"Model size: {total_size} bytes")
        
        # 发送开始命令
        cmd_data = bytes([slot])
        if not await self._send_cmd(OTA_CMD_MODEL_START, cmd_data):
            return False
            
        await asyncio.sleep(0.5)
        
        # 分包发送
        chunk_size = 240
        sent = 0
        
        while sent < total_size:
            chunk = model_data[sent:sent + chunk_size]
            
            if not await self._send_cmd(OTA_CMD_MODEL_DATA, chunk):
                logger.error("Model data send failed")
                return False
                
            sent += len(chunk)
            progress = int(sent * 100 / total_size)
            
            if self.debug:
                print(f"\rModel progress: {progress}%", end='', flush=True)
                
            await asyncio.sleep(0.01)
            
        if self.debug:
            print()
            
        # 提交
        logger.info("Committing model...")
        if not await self._send_cmd(OTA_CMD_MODEL_COMMIT):
            return False
            
        logger.info("Model upgrade completed!")
        return True
    
    async def abort(self) -> bool:
        """中止 OTA"""
        logger.info("Aborting OTA...")
        return await self._send_cmd(OTA_CMD_ABORT)
    
    @staticmethod
    def _calc_crc32(data: bytes) -> int:
        """计算 CRC32"""
        return hashlib.crc32(data) & 0xFFFFFFFF


def create_ota_package(firmware_path: str, output_path: str, 
                       model_path: Optional[str] = None,
                       version: int = 2) -> str:
    """创建 OTA 升级包 (包含固件和可选的模型)"""
    logger.info("Creating OTA package...")
    
    # 读取固件
    with open(firmware_path, 'rb') as f:
        firmware = f.read()
        
    # 读取模型
    model = None
    if model_path and os.path.exists(model_path):
        with open(model_path, 'rb') as f:
            model = f.read()
            
    # 构建包
    pkg = bytearray()
    
    # 包头
    pkg.extend(b'OTAF')                        # Magic
    pkg.extend(struct.pack('<I', version))      # Version
    pkg.extend(struct.pack('<I', len(firmware)))# Size
    pkg.extend(struct.pack('<I', hashlib.crc32(firmware) & 0xFFFFFFFF))  # CRC
    pkg.extend(struct.pack('<I', int(time.time())))  # Timestamp
    pkg.extend(struct.pack('<H', 0))           # Flags
    pkg.extend(bytes(10))                       # Reserved
    
    # 模型信息
    if model:
        pkg.extend(struct.pack('<I', len(model)))
        pkg.extend(struct.pack('<I', hashlib.crc32(model) & 0xFFFFFFFF))
    else:
        pkg.extend(struct.pack('<I', 0))
        pkg.extend(struct.pack('<I', 0))
    
    # 包头 CRC
    header_crc = hashlib.crc32(bytes(pkg)) & 0xFFFFFFFF
    pkg.extend(struct.pack('<I', header_crc))
    
    # 数据
    pkg.extend(firmware)
    if model:
        pkg.extend(model)
    
    # 写入文件
    with open(output_path, 'wb') as f:
        f.write(bytes(pkg))
        
    logger.info(f"OTA package created: {output_path}")
    logger.info(f"Package size: {len(pkg)} bytes")
    
    return output_path


def extract_model_from_tflite(tflite_path: str, output_header: str):
    """从 TFLite 文件提取模型数据生成 C 头文件"""
    logger.info(f"Extracting model from: {tflite_path}")
    
    with open(tflite_path, 'rb') as f:
        data = f.read()
        
    with open(output_header, 'w', encoding='utf-8') as f:
        f.write('/**\n')
        f.write(' * @file    tflm_model_data.h\n')
        f.write(' * @brief   TFLite 模型数据\n')
        f.write(' * @note    自动生成 - 请勿手动修改\n')
        f.write(' */\n')
        f.write('#ifndef TFLM_MODEL_DATA_H\\n')
        f.write('#define TFLM_MODEL_DATA_H\\n\\n')
        f.write('#include <stdint.h>\\n\\n')
        f.write(f'#define TFLM_MODEL_SIZE {len(data)}\\n\\n')
        f.write('/* 模型数据 */\\n')
        f.write('static const uint8_t g_tflm_model_data[] __attribute__((section(".model_data"))) = {\\n')
        
        for i in range(0, len(data), 16):
            chunk = data[i:i+16]
            hex_str = ','.join(f'0x{b:02X}' for b in chunk)
            f.write(f'    {hex_str},\\n')
            
        f.write('};\\n\\n')
        f.write('#endif /* TFLM_MODEL_DATA_H */\\n')
        
    logger.info(f"Model header created: {output_header}")


async def main_async(args):
    """异步主函数"""
    if args.command == 'package':
        # 创建 OTA 包
        create_ota_package(
            args.firmware,
            args.output or 'output_ota.bin',
            args.model,
            args.version or 2
        )
        return
        
    if args.command == 'extract':
        # 提取模型
        extract_model_from_tflite(
            args.tflite,
            args.output or 'tflm_model_data.h'
        )
        return
        
    if not BLEAK_AVAILABLE:
        logger.error("BLE not available. Use --package or --extract commands.")
        return
        
    # BLE OTA 升级
    tool = BLEOTATool(debug=args.debug)
    
    if args.progress:
        def progress(p):
            print(f"\rProgress: {p}%", end='', flush=True)
        tool.set_progress_callback(progress)
    
    # 连接
    if args.address:
        tool.device_address = args.address
        
    if not await tool.connect():
        return
        
    try:
        if args.firmware:
            success = await tool.upgrade_firmware(args.firmware, args.bank or 1)
        elif args.model:
            success = await tool.upgrade_model(args.model, args.slot or 1)
        else:
            logger.error("No firmware or model specified")
            return
            
        if success:
            print("\nOTA completed successfully!")
        else:
            print("\nOTA failed!")
            
    finally:
        await tool.disconnect()


def main():
    import argparse
    import asyncio
    
    parser = argparse.ArgumentParser(description='BLE OTA Tool')
    subparsers = parser.add_subparsers(dest='command', help='Commands')
    
    # Package 命令
    pkg_parser = subparsers.add_parser('package', help='Create OTA package')
    pkg_parser.add_argument('--firmware', '-f', required=True, help='Firmware file')
    pkg_parser.add_argument('--model', '-m', help='Model file')
    pkg_parser.add_argument('--output', '-o', help='Output file')
    pkg_parser.add_argument('--version', '-v', type=int, default=2, help='Version')
    
    # Extract 命令
    ext_parser = subparsers.add_parser('extract', help='Extract model from TFLite')
    ext_parser.add_argument('--tflite', '-t', required=True, help='TFLite file')
    ext_parser.add_argument('--output', '-o', help='Output header file')
    
    # OTA 命令
    ota_parser = subparsers.add_parser('ota', help='OTA upgrade via BLE')
    ota_parser.add_argument('--address', '-a', help='BLE device address')
    ota_parser.add_argument('--firmware', '-f', help='Firmware file')
    ota_parser.add_argument('--model', '-m', help='Model file')
    ota_parser.add_argument('--bank', '-b', type=int, default=1, help='Target bank')
    ota_parser.add_argument('--slot', '-s', type=int, default=1, help='Model slot')
    ota_parser.add_argument('--debug', '-d', action='store_true', help='Debug mode')
    ota_parser.add_argument('--progress', '-p', action='store_true', help='Show progress')
    
    args = parser.parse_args()
    
    if not args.command:
        parser.print_help()
        return
        
    asyncio.run(main_async(args))


if __name__ == '__main__':
    main()
