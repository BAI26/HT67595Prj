/**
 * @file    project_config.h
 * @brief   项目配置头文件 - OTA + AI 推理
 * @note    用于 Keil 项目配置选项
 */
#ifndef PROJECT_CONFIG_H
#define PROJECT_CONFIG_H

/* ================================================================
 * 应用模式配置
 * ================================================================ */
typedef enum {
    APP_MODE_NORMAL       = 0,    /* 正常模式: 传感器 + 推理 */
    APP_MODE_SENSOR_TEST  = 1,    /* 传感器测试模式 */
    APP_MODE_DATA_LOGGER  = 2,    /* 数据采集模式 */
    APP_MODE_OTA          = 3     /* OTA 模式 */
} APP_RUN_MODE_T;

/* 选择运行模式 */
#ifndef APP_RUN_MODE
    #define APP_RUN_MODE   APP_MODE_NORMAL
#endif

/* ================================================================
 * OTA 配置
 * ================================================================ */
#define OTA_ENABLED                  1       /* 启用 OTA 功能 */
#define OTA_MODEL_UPDATE_ENABLED     1       /* 启用模型 OTA */
#define OTA_DEFAULT_TARGET_BANK      1       /* 默认升级 Bank B (0=Bank A, 1=Bank B) */

/* OTA Flash 分区 (必须与 linker script 一致) */
#define OTA_FLASH_APP_A_ADDR        0x10002000UL
#define OTA_FLASH_APP_A_SIZE        (150 * 1024UL)
#define OTA_FLASH_APP_B_ADDR        0x10027800UL
#define OTA_FLASH_APP_B_SIZE        (150 * 1024UL)
#define OTA_FLASH_MODEL_SLOT1_ADDR  0x1004D000UL
#define OTA_FLASH_MODEL_SLOT1_SIZE  (40 * 1024UL)
#define OTA_FLASH_MODEL_SLOT2_ADDR  0x10057000UL
#define OTA_FLASH_MODEL_SLOT2_SIZE  (40 * 1024UL)

/* OTA 缓冲区大小 */
#define OTA_RECV_BUFFER_SIZE         256
#define OTA_CHUNK_SIZE              (OTA_RECV_BUFFER_SIZE - 16)  /* 包头占用 */

/* ================================================================
 * 模型推理配置
 * ================================================================ */
#define MODEL_INFERENCE_ENABLED      1       /* 启用模型推理 */
#define MODEL_SLOT_DEFAULT          0       /* 默认模型槽位 */

/* 推理参数 */
#define MODEL_INPUT_SAMPLES         100     /* 输入样本数 */
#define MODEL_SAMPLE_RATE_HZ        100     /* 采样率 */
#define MODEL_INFERENCE_INTERVAL_MS  10      /* 推理间隔 */
#define MODEL_CONFIDENCE_THRESHOLD  0.75f   /* 置信度阈值 */

/* 模型类型 */
typedef enum {
    MODEL_TYPE_FALL_DETECTION     = 0,
    MODEL_TYPE_ACTIVITY_RECOGNITION = 1,
    MODEL_TYPE_HEART_RATE        = 2,
    MODEL_TYPE_MAX
} MODEL_TYPE_T;

/* 默认模型类型 */
#ifndef MODEL_TYPE
    #define MODEL_TYPE    MODEL_TYPE_FALL_DETECTION
#endif

/* ================================================================
 * IMU 传感器配置
 * ================================================================ */
#define USE_IMU9DOF                 1       /* 使用 9DOF IMU */
#define IMU_SAMPLE_RATE_HZ         100     /* IMU 采样率 */
#define IMU_ACCEL_RANGE             2       /* 加速度计量程 (g) */
#define IMU_GYRO_RANGE             250      /* 陀螺仪量程 (dps) */

/* ================================================================
 * BLE 配置
 * ================================================================ */
#define BLE_OTA_SERVICE_ENABLED     1       /* 启用 BLE OTA 服务 */
#define BLE_CONNECTION_INTERVAL_MS  50       /* BLE 连接间隔 */
#define BLE_SLAVE_LATENCY          0        /* 从机延迟 */

/* ================================================================
 * 低功耗配置
 * ================================================================ */
#define LOW_POWER_MODE              1       /* 启用低功耗 */
#define SLEEP_INTERVAL_NORMAL_MS    1000     /* 正常模式睡眠间隔 */
#define SLEEP_INTERVAL_CONNECTED_MS 100      /* BLE 连接时睡眠间隔 */

/* ================================================================
 * 调试配置
 * ================================================================ */
#define DEBUG_PRINT_ENABLED         1       /* 启用调试打印 */
#define DEBUG_LOG_LEVEL            2        /* 0=ERROR, 1=WARN, 2=INFO, 3=DEBUG */

/* ================================================================
 * 版本信息
 * ================================================================ */
#define APP_VERSION_MAJOR           2
#define APP_VERSION_MINOR           0
#define APP_VERSION_PATCH           0
#define APP_VERSION_STRING         "2.0.0"

#define BUILD_DATE_STRING          __DATE__
#define BUILD_TIME_STRING          __TIME__

#endif /* PROJECT_CONFIG_H */
