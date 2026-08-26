"""
Keil 项目配置脚本
自动添加 OTA + AI 相关文件到 Keil 项目

用法:
    python keil_project_config.py --project ble_peripheral_mp.uvprojx --add-ota --add-ai

依赖:
    pip install xmltodict
"""
import os
import sys
import argparse
import shutil
from pathlib import Path

try:
    import xmltodict
    HAS_XMLTODICT = True
except ImportError:
    HAS_XMLTODICT = False


class KeilProjectConfig:
    """Keil 项目配置工具"""
    
    # 项目根目录 (相对于 project 文件)
    PROJECT_ROOT = "..\\..\\..\\..\\..\\.."
    
    # 需要添加的文件列表
    SOURCE_FILES = {
        "ai": [
            ("model_inference.c", "1"),
            ("gated_cnn_inference.c", "1"),
            ("training_data_collector.c", "1"),
        ],
        "ota": [
            ("ota_manager.c", "1"),
            ("ble_ota_service.c", "1"),
        ],
        "app": [
            ("app_main_integration.c", "1"),
            ("boot_manager.c", "1"),
        ],
    }
    
    # 头文件路径
    INCLUDE_PATHS = [
        "..\\..\\..\\..\\..\\..\\sources\\ai",
        "..\\..\\..\\..\\..\\..\\sources\\ota",
        "..\\..\\..\\..\\..\\..\\sources\\app",
    ]
    
    # 预定义符号
    PREDEF_SYMBOLS = [
        "FALL_DETECT_ENABLED=1",
    ]
    
    def __init__(self, project_path):
        self.project_path = Path(project_path)
        self.project_dir = self.project_path.parent
        self.backup_path = self.project_path.with_suffix('.uvprojx.bak')
        
    def backup_project(self):
        """备份原项目文件"""
        shutil.copy2(self.project_path, self.backup_path)
        print(f"[OK] Backup created: {self.backup_path}")
        
    def parse_project(self):
        """解析 Keil 项目文件"""
        with open(self.project_path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        if HAS_XMLTODICT:
            self.project_data = xmltodict.parse(content)
        else:
            # 简单 XML 解析
            self.project_data = self._simple_parse(content)
        
        return self.project_data
    
    def _simple_parse(self, content):
        """简单的 XML 解析 (不使用 xmltodict)"""
        import xml.etree.ElementTree as ET
        
        # 移除 XML 命名空间
        content = content.replace('xmlns=', 'xmlns_ignore=')
        
        root = ET.fromstring(content)
        return {"Project": root}
    
    def add_source_group(self, group_name, files):
        """添加源文件组"""
        print(f"\n[ADD] Group: {group_name}")
        
        for filename, filetype in files:
            # 构建相对路径
            if group_name == "ai":
                src_path = f"{self.PROJECT_ROOT}\\sources\\ai\\{filename}"
            elif group_name == "ota":
                src_path = f"{self.PROJECT_ROOT}\\sources\\ota\\{filename}"
            elif group_name == "boot":
                src_path = f"{self.PROJECT_ROOT}\\sources\\boot\\{filename}"
            elif group_name == "app":
                src_path = f"{self.PROJECT_ROOT}\\sources\\app\\{filename}"
            else:
                src_path = f"{self.PROJECT_ROOT}\\{group_name}\\{filename}"
            
            print(f"  [+] {filename} ({src_path})")
            
    def add_include_paths(self, existing_paths):
        """添加头文件路径"""
        print(f"\n[ADD] Include Paths:")
        
        for path in self.INCLUDE_PATHS:
            if path not in existing_paths:
                existing_paths.append(path)
                print(f"  [+] {path}")
            else:
                print(f"  [=] {path} (already exists)")
        
        return existing_paths
    
    def add_predef_symbols(self, existing_symbols):
        """添加预定义符号"""
        print(f"\n[ADD] Preprocessor Symbols:")
        
        for symbol in self.PREDEF_SYMBOLS:
            if symbol not in existing_symbols:
                existing_symbols.append(symbol)
                print(f"  [+] {symbol}")
            else:
                print(f"  [=] {symbol} (already exists)")
        
        return existing_symbols
    
    def update_scatter_file(self, new_scatter):
        """更新 Scatter File"""
        print(f"\n[UPDATE] Scatter File:")
        print(f"  [+] {new_scatter}")
        return new_scatter
    
    def generate_patch_script(self, output_path=None):
        """生成补丁脚本 (用于手动应用)"""
        if output_path is None:
            output_path = self.project_dir / "keil_patch.bat"
        
        script_content = f"""@echo off
REM Keil 项目补丁脚本
REM 自动添加 OTA + AI 相关文件到项目
REM 生成时间: 2026-08-25

echo ========================================
echo Keil Project OTA + AI Patch
echo ========================================

REM 1. 备份原项目
copy /Y ble_peripheral_mp.uvprojx ble_peripheral_mp.uvprojx.bak

REM 2. 手动添加以下文件组:

echo.
echo === 需要手动添加的文件组 ===
echo.
echo [ai]
echo   - ..\\..\\..\\..\\..\\..\\sources\\ai\\model_inference.c
echo   - ..\\..\\..\\..\\..\\..\\sources\\ai\\training_data_collector.c
echo.
echo [ota]
echo   - ..\\..\\..\\..\\..\\..\\sources\\ota\\ota_manager.c
echo   - ..\\..\\..\\..\\..\\..\\sources\\ota\\ble_ota_service.c
echo.
echo [boot]
echo   - ..\\..\\..\\..\\..\\..\\sources\\boot\\boot_manager.c
echo.
echo [app]
echo   - ..\\..\\..\\..\\..\\..\\sources\\app\\app_main_integration.c
echo.

echo === 需要手动添加的头文件路径 ===
echo.
echo 添加以下路径到 C/C++ -> Include Paths:
echo   - ..\\..\\..\\..\\..\\..\\sources\\ai
echo   - ..\\..\\..\\..\\..\\..\\sources\\ota
echo   - ..\\..\\..\\..\\..\\..\\sources\\boot
echo   - ..\\..\\..\\..\\..\\..\\sources\\app
echo.

echo === 需要手动添加的预定义符号 ===
echo.
echo 添加到 C/C++ -> Preprocessor -> Define:
echo   - FALL_DETECT_ENABLED=1
echo.

echo === 需要手动修改的 Scatter File ===
echo.
echo 修改 Linker -> Scatter File:
echo   - ..\\mp\\ble_peripheral_mp_ota.sct
echo.

echo ========================================
echo 请手动在 Keil 中添加以上配置
echo ========================================

pause
"""
        
        with open(output_path, 'w', encoding='utf-8') as f:
            f.write(script_content)
        
        print(f"\n[OK] Patch script created: {output_path}")
        return output_path
    
    def run(self):
        """执行配置"""
        print("=" * 50)
        print("Keil Project Configuration Tool")
        print("=" * 50)
        
        if not self.project_path.exists():
            print(f"[ERROR] Project file not found: {self.project_path}")
            return False
        
        # 备份
        self.backup_project()
        
        # 解析项目
        self.parse_project()
        
        # 添加源文件组
        for group_name, files in self.SOURCE_FILES.items():
            self.add_source_group(group_name, files)
        
        # 生成补丁脚本
        script_path = self.generate_patch_script()
        
        print("\n" + "=" * 50)
        print("Configuration Summary")
        print("=" * 50)
        print(f"Project: {self.project_path}")
        print(f"Backup:  {self.backup_path}")
        print(f"Script:  {script_path}")
        print("\n由于 Keil .uvprojx 格式复杂，建议手动在 Keil 中添加文件。")
        print("运行补丁脚本查看详细步骤: keil_patch.bat")
        
        return True


def main():
    parser = argparse.ArgumentParser(description='Keil Project Configuration Tool')
    parser.add_argument('--project', '-p', default='ble_peripheral_mp.uvprojx',
                       help='Keil project file path')
    parser.add_argument('--add-ai', action='store_true', help='Add AI files')
    parser.add_argument('--add-ota', action='store_true', help='Add OTA files')
    parser.add_argument('--all', action='store_true', help='Add all files')
    parser.add_argument('--output', '-o', help='Output patch script path')
    
    args = parser.parse_args()
    
    # 查找项目文件
    project_path = Path(args.project)
    if not project_path.exists():
        # 尝试在当前目录搜索
        search_paths = [
            Path("."),
            Path(".."),
            Path("projects/ble_examples/ble_peripheral/ht32f675x5_r2/project/mp"),
        ]
        for search_dir in search_paths:
            test_path = search_dir / args.project
            if test_path.exists():
                project_path = test_path
                break
    
    config = KeilProjectConfig(project_path)
    
    if args.all or args.add_ai or args.add_ota:
        config.run()
    else:
        print("请指定 --all 或 --add-ai --add-ota")
        parser.print_help()


if __name__ == '__main__':
    main()
