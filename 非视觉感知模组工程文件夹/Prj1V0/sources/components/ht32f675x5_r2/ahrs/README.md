# AHRS — 四元数姿态 / 卡尔曼融合

在 `imu9dof` 之上做姿态解算，输出四元数与欧拉角。

## 选型结论（已落地）

| 场景 | 选用 | 说明 |
|------|------|------|
| **默认 / 穿戴 / 一般姿态** | **Madgwick** | 算力小、好调；工程默认 |
| **长漂 / 要估陀螺零偏** | **简化 EKF** | 7 状态含 bias；振动大时加大 `fEkfR_acc` |
| **工业振动 / 机械臂** | Madgwick 或 EKF **+ 运动门控** | `|||a||-1g|` 超阈值时本拍不加计修正 |
| 不推荐首期 | UKF / 完整 INS | 投入大，收益不明显 |

互补滤波族用 Madgwick 即可，不必再单独上 Mahony（除非要极简代码体积）。

## 算法

| 算法 | 宏 | 说明 |
|------|-----|------|
| Madgwick（默认） | `AHRS_ALG_MADGWICK` | 梯度下降 6/9 轴 AHRS；可配静止零偏 EMA |
| 简化 EKF | `AHRS_ALG_EKF` | 7 状态（四元数 + 陀螺零偏），加速度/磁力校正 |

有磁力计且 `bMagValid==true` 时用 9 轴；否则自动退化为 6 轴（accel+gyro）。

## V1.1 已落地能力

1. **运动门控** `bMotionGateEn`：`|||a||-1g| > fAccNormTol_g`（默认 0.15g）→ 本拍加计不参与修正，只积分陀螺。  
2. **静止零偏** `bRestBiasEn`（仅 Madgwick）：静止时对陀螺做 EMA，融合前扣除；EKF 自带 bias，不双重补偿。  
3. 查询：`ahrs_is_motion()` / `ahrs_get_acc_norm_g()`。

## 文件

```
ahrs/
  ahrs.h / ahrs.c          对外 API + 门控/零偏
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

cfg.enAlg          = AHRS_ALG_MADGWICK; /* 或 AHRS_ALG_EKF */
cfg.fSampleHz      = 100.0f;
cfg.fMadgwickBeta  = 0.1f;
cfg.bMotionGateEn  = true;
cfg.fAccNormTol_g  = 0.15f;
cfg.bRestBiasEn    = true;
cfg.fRestBiasAlpha = 0.01f;
ahrs_init(&cfg);   /* 或 ahrs_init(NULL) 用默认（门控/零偏已开） */

/* 周期调用，dt = 采样周期 (s) */
imu9dof_read(&s);
ahrs_update(0.01f, &s);
ahrs_get_quat(&q);
ahrs_get_euler(&e); /* roll/pitch/yaw, deg */
/* if (ahrs_is_motion()) { ... } */
```

> 注意：若 `memset` 后再填配置，务必显式打开 `bMotionGateEn` / `bRestBiasEn`，否则会被置 0 关掉。

## 调参建议

- **Madgwick `fMadgwickBeta`**：越大收敛越快、越抖；静止建议 `0.05~0.1`，运动可 `0.1~0.2`
- **门控 `fAccNormTol_g`**：振动大可略增到 `0.2~0.3`；过小会频繁纯陀螺、倾角易漂
- **静止零偏 `fRestBiasAlpha`**：越大跟零偏越快、也越易把慢转当成零偏；典型 `0.005~0.02`
- **EKF**：`fEkfR_acc`/`fEkfR_mag` 越大越信陀螺；振动大时适当增大 `fEkfR_acc`（门控开启时运动拍已跳过加计）
- 采样尽量固定周期（如 100 Hz），`fDt_s` 与实际一致
- 要绝对航向必须磁力计 + 硬/软铁校准；6 轴 yaw 仅为相对值
