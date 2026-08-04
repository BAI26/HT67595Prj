/*************************************************************************************************************
 * @file        ble_sensor_proto.c
 * @brief       ble_sensor 数据包打包辅助实现
 * @author      白楠帝
 * @date        2026-08-03
 * @version     V1.0
 * @attention
 *
 * 文档说明：
 *   将 ble_sensor_sample_t 按小端序打包为 IMU/ENV/AHRS/MAG 二进制包。
 *   供 MP IPC 发送与 CP GATT Notify 共用。
 *
 ************************************************************************************************************/
#include <string.h>
#include "ble_sensor_proto.h"

/**
 * @brief  将 int16 按小端写入两字节。
 */
static void store_i16_le(uint8_t *pu8, int16_t s16Val)
{
    pu8[0] = (uint8_t)(s16Val & 0xFF);
    pu8[1] = (uint8_t)((s16Val >> 8) & 0xFF);
}

/**
 * @brief  将 uint16 按小端写入两字节。
 */
static void store_u16_le(uint8_t *pu8, uint16_t u16Val)
{
    pu8[0] = (uint8_t)(u16Val & 0xFF);
    pu8[1] = (uint8_t)((u16Val >> 8) & 0xFF);
}

/**
 * @brief  清零传感器采样结构体。
 * @param  pstSample  目标
 */
void ble_sensor_sample_clear(ble_sensor_sample_t *pstSample)
{
    if (pstSample != NULL)
    {
        memset(pstSample, 0, sizeof(*pstSample));
    }
}

/**
 * @brief  打包 IMU 通知包（小端）。
 * @param  pstSample  采样
 * @param  pu8Out  输出
 * @param  u16Max  缓冲长度
 * @return 包长，失败为 0
 */
uint16_t ble_sensor_pack_imu(const ble_sensor_sample_t *pstSample, uint8_t *pu8Out, uint16_t u16Max)
{
    uint16_t i;

    if ((NULL == pstSample) || (NULL == pu8Out) || (u16Max < sizeof(ble_sensor_pkt_imu_t)))
    {
        return 0;
    }

    pu8Out[0] = (uint8_t)BLE_SENSOR_PKT_IMU;
    pu8Out[1] = pstSample->u8Seq;
    pu8Out[2] = pstSample->u8Flags;
    for (i = 0; i < 3u; i++)
    {
        store_i16_le(&pu8Out[3 + (i * 2u)], pstSample->s16AccMg[i]);
        store_i16_le(&pu8Out[9 + (i * 2u)], pstSample->s16GyrDpsx10[i]);
    }
    return (uint16_t)sizeof(ble_sensor_pkt_imu_t);
}

/**
 * @brief  打包 ENV 通知包。
 * @param  pstSample  采样
 * @param  pu8Out  输出
 * @param  u16Max  缓冲长度
 * @return 包长，失败为 0
 */
uint16_t ble_sensor_pack_env(const ble_sensor_sample_t *pstSample, uint8_t *pu8Out, uint16_t u16Max)
{
    if ((NULL == pstSample) || (NULL == pu8Out) || (u16Max < sizeof(ble_sensor_pkt_env_t)))
    {
        return 0;
    }

    pu8Out[0] = (uint8_t)BLE_SENSOR_PKT_ENV;
    pu8Out[1] = pstSample->u8Seq;
    pu8Out[2] = pstSample->u8Flags;
    store_i16_le(&pu8Out[3], pstSample->s16IrTenths);
    store_i16_le(&pu8Out[5], pstSample->s16ImuTempTenths);
    store_u16_le(&pu8Out[7], pstSample->u16Bat_mV);
    store_u16_le(&pu8Out[9], pstSample->u16Ntc_mV);
    return (uint16_t)sizeof(ble_sensor_pkt_env_t);
}

/**
 * @brief  打包 AHRS 欧拉角通知包。
 * @param  pstSample  采样
 * @param  pu8Out  输出
 * @param  u16Max  缓冲长度
 * @return 包长，失败为 0
 */
uint16_t ble_sensor_pack_ahrs(const ble_sensor_sample_t *pstSample, uint8_t *pu8Out, uint16_t u16Max)
{
    if ((NULL == pstSample) || (NULL == pu8Out) || (u16Max < sizeof(ble_sensor_pkt_ahrs_t)))
    {
        return 0;
    }

    pu8Out[0] = (uint8_t)BLE_SENSOR_PKT_AHRS;
    pu8Out[1] = pstSample->u8Seq;
    pu8Out[2] = pstSample->u8Flags;
    store_i16_le(&pu8Out[3], pstSample->s16Roll_cdeg);
    store_i16_le(&pu8Out[5], pstSample->s16Pitch_cdeg);
    store_i16_le(&pu8Out[7], pstSample->s16Yaw_cdeg);
    return (uint16_t)sizeof(ble_sensor_pkt_ahrs_t);
}

/**
 * @brief  打包磁力计通知包。
 * @param  pstSample  采样
 * @param  pu8Out  输出
 * @param  u16Max  缓冲长度
 * @return 包长，失败为 0
 */
uint16_t ble_sensor_pack_mag(const ble_sensor_sample_t *pstSample, uint8_t *pu8Out, uint16_t u16Max)
{
    uint16_t i;

    if ((NULL == pstSample) || (NULL == pu8Out) || (u16Max < sizeof(ble_sensor_pkt_mag_t)))
    {
        return 0;
    }

    pu8Out[0] = (uint8_t)BLE_SENSOR_PKT_MAG;
    pu8Out[1] = pstSample->u8Seq;
    pu8Out[2] = pstSample->u8Flags;
    for (i = 0; i < 3u; i++)
    {
        store_i16_le(&pu8Out[3 + (i * 2u)], pstSample->s16Mag_uTx10[i]);
    }
    return (uint16_t)sizeof(ble_sensor_pkt_mag_t);
}
