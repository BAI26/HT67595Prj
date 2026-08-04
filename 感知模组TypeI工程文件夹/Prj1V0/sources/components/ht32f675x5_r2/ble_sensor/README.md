# BLE Sensor SDK

把九轴 / 红外 / ADC 数据通过 **私有 GATT Service** 上报到手机；MP 采数，经 IPC 送到 CP Notify。

## UUID

| 项 | UUID |
|----|------|
| Service | `0xFEA0` |
| Stream (Notify) | `0xFEA1` |
| CMD (Write W/O Rsp) | `0xFEA2` |

开 Notify 后订阅 `0xFEA1`。手机写 `0xFEA2` 可下发命令（`BLE_SENSOR_CMD_*`）。

## 数据包（≤20B，适配默认 ATT MTU）

| type | 含义 |
|------|------|
| `0x01` IMU | seq, flags, acc_mg[3], gyr_0.1dps[3] |
| `0x02` ENV | seq, flags, IR_0.1C, IMU_temp_0.1C, BAT_mV, NTC_mV |
| `0x03` AHRS | seq, flags, roll/pitch/yaw 0.01° |
| `0x04` MAG | seq, flags, mag_0.1uT[3] |

## 文件

```
ble_sensor/
  ble_sensor.h            总头文件
  ble_sensor_proto.*      打包格式
  ble_sensor_service.*    CP GATT
  ble_sensor_ipc.*        MP↔CP IPC
```

## CP 接入

```c
#include "ble_sensor.h"

ble_sensor_sdk_init_cp(NULL, true);  /* GATT + IPC */

/* 在连接/断开事件里： */
ble_sensor_service_set_conn_handle(conn); /* 断开传 0 */
```

Keil CP：加入 `ble_sensor_proto.c` / `ble_sensor_service.c` / `ble_sensor_ipc.c`，以及 `ipc_general_queue.c`、`msg_queue.c`；Include 加 `ble_sensor`、`ipc_general`、`msg_queue`。

## MP 接入

```c
#include "ble_sensor.h"

ble_sensor_sdk_init_mp(NULL);

ble_sensor_sample_t s;
/* 填 s 后： */
ble_sensor_ipc_send_sample(&s);
```

## 手机测试

1. 扫描广播名（`BLE_ADV_NAME_STRING`）
2. 连接 → 发现 `FEA0`
3. 对 `FEA1` 打开 Notify
4. 用 nRF Connect 看十六进制通知
