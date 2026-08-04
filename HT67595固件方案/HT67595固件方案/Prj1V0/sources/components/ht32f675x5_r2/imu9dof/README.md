# IMU 9-DoF SDK (HT32F67595)

板级：LSM6DSOW 走 **SPI0**，IST8310 挂在 LSM6 **Sensor Hub**（MAG_SDA / MAG_SCL），MCU 不直接连磁力计 I2C。

## 引脚

| 信号 | MCU | 器件 |
|------|-----|------|
| SCLK | P42 | LSM6 SCL |
| MOSI | P43 (SDI_RX 网名) | LSM6 SDA/SDI |
| MISO | P44 (SDO_TX 网名) | LSM6 SDO |
| CS   | P00 | LSM6 CS |
| DRDY | P27 | LSM6 INT1 |

## 目录

```
sources/components/ht32f675x5_r2/
  bsp_spi/     SPI 平台层
  lsm6dsow/    六轴 + sensor-hub
  ist8310/     磁力计（经 hub）
  imu9dof/     对外一键 API
  ahrs/        四元数姿态 + Madgwick / EKF
```

## Keil 工程加入

1. 新建 Group：`imu_sdk`
2. 添加源文件：
   - `bsp_spi/bsp_spi.c`
   - `lsm6dsow/lsm6dsow.c`
   - `ist8310/ist8310.c`
   - `imu9dof/imu9dof.c`
3. Include Path 增加：
```
..\..\..\..\..\sources\components\ht32f675x5_r2\bsp_spi
..\..\..\..\..\sources\components\ht32f675x5_r2\lsm6dsow
..\..\..\..\..\sources\components\ht32f675x5_r2\ist8310
..\..\..\..\..\sources\components\ht32f675x5_r2\imu9dof
```

建议在 **MP** 工程加入（应用核）。

## 用法

```c
#include "imu9dof.h"

imu9dof_sample_t s;

if (ERR_STA_OK == imu9dof_init()) {
    imu9dof_read(&s);      /* 9轴 + 温度 */
    /* 或 imu9dof_read_imu6(&s); 仅 accel/gyro */
}
```

## 已实现功能

**LSM6DSOW：** WHO_AM_I、软复位、accel/gyro/温度、BDU、FIFO continuous、INT1 DRDY、唤醒/自由落体/6D 配置 API、Sensor Hub 读写  

**IST8310：** WIA、软复位、PDCNTL/平均、单次测量、物理量 μT、自检  

CAD0/CAD1 悬空 → I2C 地址 `0x0E`。

## 姿态解算

见 [`../ahrs/README.md`](../ahrs/README.md)：`ahrs_init` / `ahrs_update` / `ahrs_get_quat` / `ahrs_get_euler`。
