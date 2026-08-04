# AHRS — 四元数姿态 / 卡尔曼融合

在 `imu9dof` 之上做姿态解算，输出四元数与欧拉角。

## 算法

| 算法 | 宏 | 说明 |
|------|-----|------|
| Madgwick（默认） | `AHRS_ALG_MADGWICK` | 梯度下降 6/9 轴 AHRS，算力小、常用 |
| 简化 EKF | `AHRS_ALG_EKF` | 7 状态（四元数 + 陀螺零偏），加速度/磁力校正 |

有磁力计且 `bMagValid==true` 时用 9 轴；否则自动退化为 6 轴（accel+gyro）。

## 文件

```
ahrs/
  ahrs.h / ahrs.c          对外 API
  ahrs_madgwick.c          Madgwick
  ahrs_ekf.c               简化卡尔曼
  ahrs_internal.h          内部共享
```

## Keil

在 `imu_sdk` 组增加：

- `ahrs/ahrs.c`
- `ahrs/ahrs_madgwick.c`
- `ahrs/ahrs_ekf.c`

Include Path 增加：

```
...\sources\components\ht32f675x5_r2\ahrs
```

## 用法

```c
#include "imu9dof.h"
#include "ahrs.h"

imu9dof_sample_t s;
ahrs_quat_t q;
ahrs_euler_t e;
ahrs_cfg_t cfg;

imu9dof_init();

cfg.enAlg         = AHRS_ALG_MADGWICK; /* 或 AHRS_ALG_EKF */
cfg.fSampleHz     = 100.0f;
cfg.fMadgwickBeta = 0.1f;
ahrs_init(&cfg);   /* 或 ahrs_init(NULL) 用默认 */

/* 周期调用，dt = 采样周期 (s) */
imu9dof_read(&s);
ahrs_update(0.01f, &s);
ahrs_get_quat(&q);
ahrs_get_euler(&e); /* roll/pitch/yaw, deg */
```

## 调参建议

- **Madgwick `fMadgwickBeta`**：越大收敛越快、越抖；静止建议 `0.05~0.1`，运动可 `0.1~0.2`
- **EKF**：`fEkfR_acc`/`fEkfR_mag` 越大越信陀螺；振动大时适当增大 `fEkfR_acc`
- 采样尽量固定周期（如 100 Hz），`fDt_s` 与实际一致
