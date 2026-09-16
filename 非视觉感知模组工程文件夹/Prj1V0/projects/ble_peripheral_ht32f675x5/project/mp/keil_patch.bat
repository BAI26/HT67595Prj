@echo off
REM =================================================================
REM  Keil 项目补丁脚本 - ble_peripheral_mp
REM  自动备份 + 提示手动配置
REM  注意：当前 uvprojx 已经包含 OTA + AI 配置，
REM       本脚本仅作为旧版备份工程的迁移说明。
REM =================================================================

setlocal

set PROJ_DIR=%~dp0
set PROJ_FILE=ble_peripheral_mp.uvprojx
set BAK_FILE=ble_peripheral_mp.uvprojx.bak

echo ========================================
echo  Keil Project Backup - ble_peripheral_mp
echo ========================================

if exist "%PROJ_FILE%" (
    if not exist "%BAK_FILE%" (
        copy /Y "%PROJ_FILE%" "%BAK_FILE%"
        echo [OK] 已备份 %PROJ_FILE% -^> %BAK_FILE%
    ) else (
        echo [SKIP] 备份文件已存在，跳过备份
    )
) else (
    echo [ERR] 未找到 %PROJ_FILE%
    goto END
)

echo.
echo === 当前工程已经包含以下配置 ===
echo.
echo [组件] ai
echo   - sources\ai\model_inference.cpp
echo.
echo [组件] ota (源码存在但 Scatter 未启用双 Bank)
echo   - sources\ota\ota_manager.c
echo   - sources\ota\ble_ota_service.c
echo.
echo [组件] tflm_core / tflm_kernels / tflm_utils / tflm_allocator / tflm_platform
echo   - third_party\tflm-tree\tensorflow\lite\micro\*.cc
echo   - 全部 .cc 文件已在 uvprojx 中
echo.
echo [宏] C/C++ Define:
echo   __MAIN_PROCESSOR HT32F67595_EVB FALL_DETECT_ENABLED=1
echo.
echo [路径] C/C++ Include Paths 已包含:
echo   sources\ai
echo   third_party\tflm-tree
echo   third_party\tflm-tree\third_party\flatbuffers\include
echo   third_party\tflm-tree\tensorflow\lite\micro\cortex_m_generic
echo.
echo [散列] 当前使用 .\ble_peripheral_mp.sct
echo       若要启用 OTA 双 Bank，请改用 .\ble_peripheral_mp_ota.sct
echo.

:END
endlocal
pause
