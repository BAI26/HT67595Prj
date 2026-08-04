/*************************************************************************************************************
 * @file        ble_sensor_proto.h
 * @brief       BLE 传感器共享数据包格式（MP/CP/App）
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   默认 ATT MTU 下每包建议 ≤ 20 字节。
 *   定义 IMU/ENV/AHRS/MAG 包类型、命令字与打包辅助声明。
 *   UUID 使用私有 16-bit，避免与 Holtek MUS 0xFFF0 冲突。
 *
 ************************************************************************************************************/
#ifndef __BLE_SENSOR_PROTO_H__
#define __BLE_SENSOR_PROTO_H__

#include <stdint.h>
#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

/* 私有 16-bit UUID（避免与 Holtek MUS 0xFFF0 冲突） */
#define BLE_SENSOR_UUID_SERVICE            (0xFEA0u)
#define BLE_SENSOR_UUID_STREAM             (0xFEA1u) /* Notify */
#define BLE_SENSOR_UUID_CMD                (0xFEA2u) /* Write Without Response */

#define BLE_SENSOR_PKT_MAX_LEN             (20u)

typedef enum
{
    BLE_SENSOR_PKT_IMU  = 0x01, /* 加计 + 陀螺 */
    BLE_SENSOR_PKT_ENV  = 0x02, /* 红外 / IMU 温度 / 电池 / NTC */
    BLE_SENSOR_PKT_AHRS = 0x03, /* 欧拉角 deg*100 */
    BLE_SENSOR_PKT_MAG  = 0x04, /* 磁力计 μT*10 */
} ble_sensor_pkt_type_t;

typedef enum
{
    BLE_SENSOR_FLAG_MAG_VALID = (1u << 0),
    BLE_SENSOR_FLAG_IR_VALID  = (1u << 1),
} ble_sensor_flags_t;

/* 手机 → 设备命令（CMD 特征） */
typedef enum
{
    BLE_SENSOR_CMD_NOP       = 0x00,
    BLE_SENSOR_CMD_STREAM_ON = 0x01,
    BLE_SENSOR_CMD_STREAM_OFF= 0x02,
    BLE_SENSOR_CMD_ONESHOT   = 0x03,
} ble_sensor_cmd_t;

/* IPC 命令字节（MP ↔ CP），载荷为 ble sensor 数据包 */
#define BLE_SENSOR_IPC_CMD_NOTIFY          (0xA0u)
#define BLE_SENSOR_IPC_CMD_CTRL            (0xA1u) /* CP → MP：开关流等控制 */

#pragma pack(push, 1)
typedef struct
{
    uint8_t  u8Type;   /* BLE_SENSOR_PKT_IMU */
    uint8_t  u8Seq;
    uint8_t  u8Flags;
    int16_t  s16AccMg[3];     /* milli-g */
    int16_t  s16GyrDpsx10[3]; /* 0.1 dps */
} ble_sensor_pkt_imu_t; /* 3+6+6=15 */

typedef struct
{
    uint8_t  u8Type;   /* BLE_SENSOR_PKT_ENV */
    uint8_t  u8Seq;
    uint8_t  u8Flags;
    int16_t  s16IrTenths;      /* 0.1 °C */
    int16_t  s16ImuTempTenths; /* 0.1 °C */
    uint16_t u16Bat_mV;
    uint16_t u16Ntc_mV;
} ble_sensor_pkt_env_t; /* 3+2+2+2+2=11 */

typedef struct
{
    uint8_t  u8Type; /* BLE_SENSOR_PKT_AHRS */
    uint8_t  u8Seq;
    uint8_t  u8Flags;
    int16_t  s16Roll_cdeg;  /* 0.01 ° */
    int16_t  s16Pitch_cdeg;
    int16_t  s16Yaw_cdeg;
} ble_sensor_pkt_ahrs_t; /* 3+6=9 */

typedef struct
{
    uint8_t  u8Type; /* BLE_SENSOR_PKT_MAG */
    uint8_t  u8Seq;
    uint8_t  u8Flags;
    int16_t  s16Mag_uTx10[3]; /* 0.1 μT */
} ble_sensor_pkt_mag_t; /* 3+6=9 */
#pragma pack(pop)

typedef struct
{
    int16_t  s16AccMg[3];
    int16_t  s16GyrDpsx10[3];
    int16_t  s16Mag_uTx10[3];
    int16_t  s16IrTenths;
    int16_t  s16ImuTempTenths;
    uint16_t u16Bat_mV;
    uint16_t u16Ntc_mV;
    int16_t  s16Roll_cdeg;
    int16_t  s16Pitch_cdeg;
    int16_t  s16Yaw_cdeg;
    uint8_t  u8Flags;
    uint8_t  u8Seq;
} ble_sensor_sample_t;

/**
 * @brief  清零传感器采样结构体。
 * @param  pstSample  目标
 */
void     ble_sensor_sample_clear(ble_sensor_sample_t *pstSample);
/**
 * @brief  打包 IMU 通知包（小端）。
 * @param  pstSample  采样
 * @param  pu8Out  输出
 * @param  u16Max  缓冲长度
 * @return 包长，失败为 0
 */
uint16_t ble_sensor_pack_imu(const ble_sensor_sample_t *pstSample, uint8_t *pu8Out, uint16_t u16Max);
/**
 * @brief  打包 ENV 通知包。
 * @param  pstSample  采样
 * @param  pu8Out  输出
 * @param  u16Max  缓冲长度
 * @return 包长，失败为 0
 */
uint16_t ble_sensor_pack_env(const ble_sensor_sample_t *pstSample, uint8_t *pu8Out, uint16_t u16Max);
/**
 * @brief  打包 AHRS 欧拉角通知包。
 * @param  pstSample  采样
 * @param  pu8Out  输出
 * @param  u16Max  缓冲长度
 * @return 包长，失败为 0
 */
uint16_t ble_sensor_pack_ahrs(const ble_sensor_sample_t *pstSample, uint8_t *pu8Out, uint16_t u16Max);
/**
 * @brief  打包磁力计通知包。
 * @param  pstSample  采样
 * @param  pu8Out  输出
 * @param  u16Max  缓冲长度
 * @return 包长，失败为 0
 */
uint16_t ble_sensor_pack_mag(const ble_sensor_sample_t *pstSample, uint8_t *pu8Out, uint16_t u16Max);

#ifdef __cplusplus
}
#endif

#endif /* __BLE_SENSOR_PROTO_H__ */
