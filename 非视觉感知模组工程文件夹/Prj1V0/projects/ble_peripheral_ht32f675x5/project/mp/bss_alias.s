        PRESERVE8
        THUMB

; ---------------------------------------------------------------------------
; 提供 startup_ARMCM33.s 中 Reset_Handler 使用的 BSS 区间符号。
;
; armclang + 自定义 .sct 时 armlink 不会自动生成 __bss_start__/__bss_end__，
; 但 scatter 会为每个 ZI 执行区生成 Image$$<region>$$ZI$$Base / $$Limit。
;
; 这里把两个符号别名到 RAM_MP_DATA 区的 ZI 区间，避免修改 startup 源码。
; ---------------------------------------------------------------------------
        IMPORT   Image$$RAM_MP_DATA$$ZI$$Base
        IMPORT   Image$$RAM_MP_DATA$$ZI$$Limit

        EXPORT   __bss_start__
        EXPORT   __bss_end__

__bss_start__   EQU      Image$$RAM_MP_DATA$$ZI$$Base
__bss_end__     EQU      Image$$RAM_MP_DATA$$ZI$$Limit

        END
