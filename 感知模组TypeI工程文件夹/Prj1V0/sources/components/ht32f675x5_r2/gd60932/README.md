# GD60932 UART IR Temperature SDK

GooDeTek **GD60932U** 红外温度传感器驱动（UART 形态）。

## 板级接线（你的原理图）

| 网名 | MCU | GD60932 |
|------|-----|---------|
| TX_LOG | P41 UART1 TX | Pin5 (SDA/RX) |
| RX_LOG | P39 UART1 RX | Pin8 (SCL/TX) |

交叉连接：MCU TX→传感器 RX，MCU RX←传感器 TX。

> 注意：与 `app_debug` 共用 **UART1**。连续测温时建议关闭 `APP_DEBUG_ENABLED`，或测温前后不要并发 printf。

## 协议（可配置）

- 8N1
- **MS**（约 300ms）：9600 bps
- **FS**（约 20ms）：115200 bps
- 指令（HEX，可改）：
  - `0xAA` 物温
  - `0xAB` 体温
  - `0xAC` 环境温（若批次不同，用 cfg 覆盖）
- 返回 ASCII：`+000242` → 24.2℃（0.1℃ 单位）

## 目录

```
bsp_uart_irt/   UART1 平台层
gd60932/        传感器 SDK
```

## 用法

```c
#include "gd60932.h"

gd60932_cfg_t cfg;
gd60932_sample_t s;

gd60932_cfg_default(&cfg);
cfg.enSpeed = GD60932_SPEED_MS;     /* or FS */
cfg.enMode  = GD60932_MODE_OBJECT;  /* OBJECT / BODY / AMBIENT / CUSTOM */
gd60932_init(&cfg);

gd60932_measure(&s);                /* 按当前模式测一次 */
/* 或 */
float t;
gd60932_read_body_c(&t);

/* 运行时改配置 */
gd60932_set_mode(GD60932_MODE_BODY);
gd60932_set_speed(GD60932_SPEED_FS);
gd60932_set_custom_cmd(0xAA);       /* 自定义指令 */
```

## Keil

MP 工程已加入 `gd60932` / `bsp_uart_irt` 源文件与 Include 路径。
