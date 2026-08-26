@echo off
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
echo   - ..\..\..\..\..\..\sources\ai\model_inference.c
echo   - ..\..\..\..\..\..\sources\ai\training_data_collector.c
echo.
echo [ota]
echo   - ..\..\..\..\..\..\sources\ota\ota_manager.c
echo   - ..\..\..\..\..\..\sources\ota\ble_ota_service.c
echo.
echo [boot]
echo   - ..\..\..\..\..\..\sources\boot\boot_manager.c
echo.
echo [app]
echo   - ..\..\..\..\..\..\sources\app\app_main_integration.c
echo.

echo === 需要手动添加的头文件路径 ===
echo.
echo 添加以下路径到 C/C++ -> Include Paths:
echo   - ..\..\..\..\..\..\sources\ai
echo   - ..\..\..\..\..\..\sources\ota
echo   - ..\..\..\..\..\..\sources\boot
echo   - ..\..\..\..\..\..\sources\app
echo.

echo === 需要手动添加的预定义符号 ===
echo.
echo 添加到 C/C++ -> Preprocessor -> Define:
echo   - FALL_DETECT_ENABLED=1
echo.

echo === 需要手动修改的 Scatter File ===
echo.
echo 修改 Linker -> Scatter File:
echo   - ..\mp\ble_peripheral_mp_ota.sct
echo.

echo ========================================
echo 请手动在 Keil 中添加以上配置
echo ========================================

pause
