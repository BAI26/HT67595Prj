
========================================================================

** ELF Header Information

    File Name: .\Objects\ble_peripheral_cp.axf

    Machine class: ELFCLASS32 (32-bit)
    Data encoding: ELFDATA2LSB (Little endian)
    Header version: EV_CURRENT (Current version)
    Operating System ABI: none
    ABI Version: 0
    File Type: ET_EXEC (Executable) (2)
    Machine: EM_ARM (ARM)

    Image Entry point: 0x200031b1
    Flags: EF_ARM_HASENTRY + EF_ARM_ABI_FLOAT_SOFT (0x05000202)

    ARM ELF revision: 5 (ABI version 2)

    Conforms to Soft float procedure-call standard

    Built with
    Component: ARM Compiler 6.15 Tool: armasm [5dd78d00]
    Component: ARM Compiler 6.15 Tool: armlink [5dd79300]

    Header size: 52 bytes (0x34)
    Program header entry size: 32 bytes (0x20)
    Section header entry size: 40 bytes (0x28)

    Program header entries: 1
    Section header entries: 18

    Program header offset: 539436 (0x00083b2c)
    Section header offset: 539468 (0x00083b4c)

    Section header string table index: 17

========================================================================

** Program header #0 (PT_LOAD) [PF_X + PF_W + PF_R + PF_ARM_ENTRY]
    Size : 49628 bytes (19744 bytes in file)
    Virtual address: 0x20003000 (Alignment 8)


========================================================================

** Section #1 'CP_APP_CODE' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 296 bytes (alignment 4)
    Address: 0x20003000

    $d.realdata
    RESET
    __Vectors
        0x20003000:    20017000    .p.     DCD    536965120
        0x20003004:    200031b1    .1.     DCD    536883633
        0x20003008:    200031b9    .1.     DCD    536883641
        0x2000300c:    200031c9    .1.     DCD    536883657
        0x20003010:    00000000    ....    DCD    0
        0x20003014:    00000000    ....    DCD    0
        0x20003018:    00000000    ....    DCD    0
        0x2000301c:    00000000    ....    DCD    0
        0x20003020:    00000000    ....    DCD    0
        0x20003024:    00000000    ....    DCD    0
        0x20003028:    00000000    ....    DCD    0
        0x2000302c:    00010519    ....    DCD    66841
        0x20003030:    00000000    ....    DCD    0
        0x20003034:    00000000    ....    DCD    0
        0x20003038:    0001059d    ....    DCD    66973
        0x2000303c:    000105a9    ....    DCD    66985
        0x20003040:    200031d9    .1.     DCD    536883673
        0x20003044:    200031db    .1.     DCD    536883675
        0x20003048:    20003491    .4.     DCD    536884369
        0x2000304c:    200031df    .1.     DCD    536883679
        0x20003050:    200031e1    .1.     DCD    536883681
        0x20003054:    200031e3    .1.     DCD    536883683
        0x20003058:    200031e5    .1.     DCD    536883685
        0x2000305c:    200031e7    .1.     DCD    536883687
        0x20003060:    200031e9    .1.     DCD    536883689
        0x20003064:    200031eb    .1.     DCD    536883691
        0x20003068:    200031ed    .1.     DCD    536883693
        0x2000306c:    200031ef    .1.     DCD    536883695
        0x20003070:    200031f1    .1.     DCD    536883697
        0x20003074:    200031f3    .1.     DCD    536883699
        0x20003078:    200031f5    .1.     DCD    536883701
        0x2000307c:    200031f7    .1.     DCD    536883703
        0x20003080:    200031f9    .1.     DCD    536883705
        0x20003084:    200031fb    .1.     DCD    536883707
        0x20003088:    200031fd    .1.     DCD    536883709
        0x2000308c:    200031ff    .1.     DCD    536883711
        0x20003090:    20003201    .2.     DCD    536883713
        0x20003094:    20003203    .2.     DCD    536883715
        0x20003098:    20003205    .2.     DCD    536883717
        0x2000309c:    200034d5    .4.     DCD    536884437
        0x200030a0:    20003209    .2.     DCD    536883721
        0x200030a4:    2000320b    .2.     DCD    536883723
        0x200030a8:    2000320d    .2.     DCD    536883725
        0x200030ac:    2000320f    .2.     DCD    536883727
        0x200030b0:    20003211    .2.     DCD    536883729
        0x200030b4:    20003213    .2.     DCD    536883731
        0x200030b8:    20003215    .2.     DCD    536883733
        0x200030bc:    200034f5    .4.     DCD    536884469
    $t
    .ARM.Collect$$$$00000000
    .ARM.Collect$$$$00000001
    __Vectors_End
    __main
    _main_stk
        0x200030c0:    4803        .H      LDR      r0,__lit__00000000 ; [0x200030d0] = 0x20017000
        0x200030c2:    4685        .F      MOV      sp,r0
    .ARM.Collect$$$$00000004
    _main_scatterload
        0x200030c4:    f000f806    ....    BL       __scatterload ; 0x200030d4
    .ARM.Collect$$$$00000008
    .ARM.Collect$$$$0000000A
    .ARM.Collect$$$$0000000B
    __main_after_scatterload
    _main_clock
    _main_cpp_init
    _main_init
        0x200030c8:    4800        .H      LDR      r0,[pc,#0] ; [0x200030cc] = 0x20004935
        0x200030ca:    4700        .G      BX       r0
    $d
        0x200030cc:    20004935    5I.     DCD    536889653
    .ARM.Collect$$$$00002712
    __lit__00000000
    .ARM.Collect$$$$0000000D
    .ARM.Collect$$$$0000000F
    __rt_final_cpp
    __rt_final_exit
        0x200030d0:    20017000    .p.     DCD    536965120
    $t
    .text
    __scatterload
    __scatterload_rt2
        0x200030d4:    4c06        .L      LDR      r4,[pc,#24] ; [0x200030f0] = 0x20003118
        0x200030d6:    2501        .%      MOVS     r5,#1
        0x200030d8:    4e06        .N      LDR      r6,[pc,#24] ; [0x200030f4] = 0x20003128
        0x200030da:    e005        ..      B        0x200030e8 ; __scatterload + 20
        0x200030dc:    68e3        .h      LDR      r3,[r4,#0xc]
        0x200030de:    cc07        ..      LDM      r4!,{r0-r2}
        0x200030e0:    432b        +C      ORRS     r3,r3,r5
        0x200030e2:    3c0c        .<      SUBS     r4,r4,#0xc
        0x200030e4:    4798        .G      BLX      r3
        0x200030e6:    3410        .4      ADDS     r4,r4,#0x10
        0x200030e8:    42b4        .B      CMP      r4,r6
        0x200030ea:    d3f7        ..      BCC      0x200030dc ; __scatterload + 8
        0x200030ec:    f7ffffec    ....    BL       __main_after_scatterload ; 0x200030c8
    $d
        0x200030f0:    20003118    .1.     DCD    536883480
        0x200030f4:    20003128    (1.     DCD    536883496
    $t
    i.__scatterload_copy
    __scatterload_copy
        0x200030f8:    e002        ..      B        0x20003100 ; __scatterload_copy + 8
        0x200030fa:    c808        ..      LDM      r0!,{r3}
        0x200030fc:    1f12        ..      SUBS     r2,r2,#4
        0x200030fe:    c108        ..      STM      r1!,{r3}
        0x20003100:    2a00        .*      CMP      r2,#0
        0x20003102:    d1fa        ..      BNE      0x200030fa ; __scatterload_copy + 2
        0x20003104:    4770        pG      BX       lr
    i.__scatterload_null
    __scatterload_null
        0x20003106:    4770        pG      BX       lr
    i.__scatterload_zeroinit
    __scatterload_zeroinit
        0x20003108:    2000        .       MOVS     r0,#0
        0x2000310a:    e001        ..      B        0x20003110 ; __scatterload_zeroinit + 8
        0x2000310c:    c101        ..      STM      r1!,{r0}
        0x2000310e:    1f12        ..      SUBS     r2,r2,#4
        0x20003110:    2a00        .*      CMP      r2,#0
        0x20003112:    d1fb        ..      BNE      0x2000310c ; __scatterload_zeroinit + 4
        0x20003114:    4770        pG      BX       lr
        0x20003116:    0000        ..      MOVS     r0,r0
    $d.realdata
    Region$$Table$$Base
        0x20003118:    20007d20     }.     DCD    536902944
        0x2000311c:    20007d20     }.     DCD    536902944
        0x20003120:    000064bc    .d..    DCD    25788
        0x20003124:    20003108    .1.     DCD    536883464
    Region$$Table$$Limit

** Section #2 'ER_CP_APP_CODE' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 19432 bytes (alignment 4)
    Address: 0x20003128

    $t.5
    lpwr_ctrl_goto_sleep
        0x20003128:    b570        p.      PUSH     {r4-r6,lr}
        0x2000312a:    4e1d        .N      LDR      r6,[pc,#116] ; [0x200031a0] = 0x2000ba5c
        0x2000312c:    7830        0x      LDRB     r0,[r6,#0]
        0x2000312e:    2800        .(      CMP      r0,#0
        0x20003130:    d034        4.      BEQ      0x2000319c ; lpwr_ctrl_goto_sleep + 116
        0x20003132:    f3ef8510    ....    MRS      r5,PRIMASK
        0x20003136:    f3ef8010    ....    MRS      r0,PRIMASK
        0x2000313a:    b672        r.      CPSID    i
        0x2000313c:    4819        .H      LDR      r0,[pc,#100] ; [0x200031a4] = 0x2000e1d8
        0x2000313e:    6800        .h      LDR      r0,[r0,#0]
        0x20003140:    2800        .(      CMP      r0,#0
        0x20003142:    d002        ..      BEQ      0x2000314a ; lpwr_ctrl_goto_sleep + 34
        0x20003144:    4780        .G      BLX      r0
        0x20003146:    2800        .(      CMP      r0,#0
        0x20003148:    d013        ..      BEQ      0x20003172 ; lpwr_ctrl_goto_sleep + 74
        0x2000314a:    7830        0x      LDRB     r0,[r6,#0]
        0x2000314c:    1e81        ..      SUBS     r1,r0,#2
        0x2000314e:    2903        .)      CMP      r1,#3
        0x20003150:    d212        ..      BCS      0x20003178 ; lpwr_ctrl_goto_sleep + 80
        0x20003152:    2401        .$      MOVS     r4,#1
        0x20003154:    4620         F      MOV      r0,r4
        0x20003156:    4621        !F      MOV      r1,r4
        0x20003158:    f003fc62    ..b.    BL       $Ven$TT$L$$rom_hw_sys_ctrl_write_com_reg ; 0x20006a20
        0x2000315c:    4812        .H      LDR      r0,[pc,#72] ; [0x200031a8] = 0xe000ed10
        0x2000315e:    6801        .h      LDR      r1,[r0,#0]
        0x20003160:    2204        ."      MOVS     r2,#4
        0x20003162:    430a        .C      ORRS     r2,r2,r1
        0x20003164:    6002        .`      STR      r2,[r0,#0]
        0x20003166:    bf30        0.      WFI      
        0x20003168:    2100        .!      MOVS     r1,#0
        0x2000316a:    4620         F      MOV      r0,r4
        0x2000316c:    f003fc58    ..X.    BL       $Ven$TT$L$$rom_hw_sys_ctrl_write_com_reg ; 0x20006a20
        0x20003170:    e00a        ..      B        0x20003188 ; lpwr_ctrl_goto_sleep + 96
        0x20003172:    f3858810    ....    MSR      PRIMASK,r5
        0x20003176:    bd70        p.      POP      {r4-r6,pc}
        0x20003178:    2801        .(      CMP      r0,#1
        0x2000317a:    d105        ..      BNE      0x20003188 ; lpwr_ctrl_goto_sleep + 96
        0x2000317c:    480a        .H      LDR      r0,[pc,#40] ; [0x200031a8] = 0xe000ed10
        0x2000317e:    6801        .h      LDR      r1,[r0,#0]
        0x20003180:    2204        ."      MOVS     r2,#4
        0x20003182:    4391        .C      BICS     r1,r1,r2
        0x20003184:    6001        .`      STR      r1,[r0,#0]
        0x20003186:    bf30        0.      WFI      
        0x20003188:    4808        .H      LDR      r0,[pc,#32] ; [0x200031ac] = 0x2000e1d4
        0x2000318a:    6800        .h      LDR      r0,[r0,#0]
        0x2000318c:    2800        .(      CMP      r0,#0
        0x2000318e:    d003        ..      BEQ      0x20003198 ; lpwr_ctrl_goto_sleep + 112
        0x20003190:    7831        1x      LDRB     r1,[r6,#0]
        0x20003192:    2902        .)      CMP      r1,#2
        0x20003194:    d100        ..      BNE      0x20003198 ; lpwr_ctrl_goto_sleep + 112
        0x20003196:    4780        .G      BLX      r0
        0x20003198:    f3858810    ....    MSR      PRIMASK,r5
        0x2000319c:    bd70        p.      POP      {r4-r6,pc}
        0x2000319e:    46c0        .F      MOV      r8,r8
    $d.6
    __arm_cp.3_0
        0x200031a0:    2000ba5c    \..     DCD    536918620
    __arm_cp.3_1
        0x200031a4:    2000e1d8    ...     DCD    536928728
    __arm_cp.3_2
        0x200031a8:    e000ed10    ....    DCD    3758157072
    __arm_cp.3_3
        0x200031ac:    2000e1d4    ...     DCD    536928724
    $t
    .text
    Reset_Handler
        0x200031b0:    4819        .H      LDR      r0,[pc,#100] ; [0x20003218] = 0x200035d9
        0x200031b2:    4780        .G      BLX      r0
        0x200031b4:    4819        .H      LDR      r0,[pc,#100] ; [0x2000321c] = 0x200030c1
        0x200031b6:    4700        .G      BX       r0
    NMI_Handler
        0x200031b8:    4670        pF      MOV      r0,lr
        0x200031ba:    f3ef8108    ....    MRS      r1,MSP
        0x200031be:    f3ef8209    ....    MRS      r2,PSP
        0x200031c2:    4b17        .K      LDR      r3,[pc,#92] ; [0x20003220] = 0x20003499
        0x200031c4:    4798        .G      BLX      r3
        0x200031c6:    e7fe        ..      B        0x200031c6 ; NMI_Handler + 14
    HardFault_Handler
        0x200031c8:    4670        pF      MOV      r0,lr
        0x200031ca:    f3ef8108    ....    MRS      r1,MSP
        0x200031ce:    f3ef8209    ....    MRS      r2,PSP
        0x200031d2:    4b14        .K      LDR      r3,[pc,#80] ; [0x20003224] = 0x2000335d
        0x200031d4:    4798        .G      BLX      r3
        0x200031d6:    e7fe        ..      B        0x200031d6 ; HardFault_Handler + 14
    RTC_CH3_IRQ_Handler
        0x200031d8:    e7fe        ..      B        RTC_CH3_IRQ_Handler ; 0x200031d8
    GPADC1_IRQ_Handler
        0x200031da:    e7fe        ..      B        GPADC1_IRQ_Handler ; 0x200031da
        0x200031dc:    e7fe        ..      B        0x200031dc ; GPADC1_IRQ_Handler + 2
    I2S_IRQ_Handler
        0x200031de:    e7fe        ..      B        I2S_IRQ_Handler ; 0x200031de
    I2C2_IRQ_Handler
        0x200031e0:    e7fe        ..      B        I2C2_IRQ_Handler ; 0x200031e0
    CIC1_IRQ_Handler
        0x200031e2:    e7fe        ..      B        CIC1_IRQ_Handler ; 0x200031e2
    CRYPT_IRQ_Handler
        0x200031e4:    e7fe        ..      B        CRYPT_IRQ_Handler ; 0x200031e4
    TRNG_IRQ_Handler
        0x200031e6:    e7fe        ..      B        TRNG_IRQ_Handler ; 0x200031e6
    RF_CAL_IRQ_Handler
        0x200031e8:    e7fe        ..      B        RF_CAL_IRQ_Handler ; 0x200031e8
    UART0_IRQ_Handler
        0x200031ea:    e7fe        ..      B        UART0_IRQ_Handler ; 0x200031ea
    UART1_IRQ_Handler
        0x200031ec:    e7fe        ..      B        UART1_IRQ_Handler ; 0x200031ec
    UART2_IRQ_Handler
        0x200031ee:    e7fe        ..      B        UART2_IRQ_Handler ; 0x200031ee
    SPI0_IRQ_Handler
        0x200031f0:    e7fe        ..      B        SPI0_IRQ_Handler ; 0x200031f0
    SPI1_IRQ_Handler
        0x200031f2:    e7fe        ..      B        SPI1_IRQ_Handler ; 0x200031f2
    DMA_IRQ4_Handler
        0x200031f4:    e7fe        ..      B        DMA_IRQ4_Handler ; 0x200031f4
    DMA_IRQ5_Handler
        0x200031f6:    e7fe        ..      B        DMA_IRQ5_Handler ; 0x200031f6
    I2C3_IRQ_Handler
        0x200031f8:    e7fe        ..      B        I2C3_IRQ_Handler ; 0x200031f8
    DMA_IRQ6_Handler
        0x200031fa:    e7fe        ..      B        DMA_IRQ6_Handler ; 0x200031fa
    DMA_IRQ7_Handler
        0x200031fc:    e7fe        ..      B        DMA_IRQ7_Handler ; 0x200031fc
    SW_IRQ1_Handler
        0x200031fe:    e7fe        ..      B        SW_IRQ1_Handler ; 0x200031fe
    TIMER2_IRQ_Handler
        0x20003200:    e7fe        ..      B        TIMER2_IRQ_Handler ; 0x20003200
    STIM1_IRQ0_Handler
        0x20003202:    e7fe        ..      B        STIM1_IRQ0_Handler ; 0x20003202
    GPIO_IRQ2_Handler
        0x20003204:    e7fe        ..      B        GPIO_IRQ2_Handler ; 0x20003204
        0x20003206:    e7fe        ..      B        0x20003206 ; GPIO_IRQ2_Handler + 2
    STIM1_IRQ1_Handler
        0x20003208:    e7fe        ..      B        STIM1_IRQ1_Handler ; 0x20003208
    STIM1_IRQ2_Handler
        0x2000320a:    e7fe        ..      B        STIM1_IRQ2_Handler ; 0x2000320a
    USB_IRQ_Handler
        0x2000320c:    e7fe        ..      B        USB_IRQ_Handler ; 0x2000320c
    TIMER3_IRQ_Handler
        0x2000320e:    e7fe        ..      B        TIMER3_IRQ_Handler ; 0x2000320e
    SW_IRQ0_Handler
        0x20003210:    e7fe        ..      B        SW_IRQ0_Handler ; 0x20003210
    SW_IRQ2_Handler
        0x20003212:    e7fe        ..      B        SW_IRQ2_Handler ; 0x20003212
    USB_PHY_IRQ_Handler
        0x20003214:    e7fe        ..      B        USB_PHY_IRQ_Handler ; 0x20003214
        0x20003216:    e7fe        ..      B        0x20003216 ; USB_PHY_IRQ_Handler + 2
    $d
        0x20003218:    200035d9    .5.     DCD    536884697
        0x2000321c:    200030c1    .0.     DCD    536883393
        0x20003220:    20003499    .4.     DCD    536884377
        0x20003224:    2000335d    ]3.     DCD    536884061
    $t
    .text
    __aeabi_uldivmod
        0x20003228:    b5f0        ..      PUSH     {r4-r7,lr}
        0x2000322a:    b41f        ..      PUSH     {r0-r4}
        0x2000322c:    4606        .F      MOV      r6,r0
        0x2000322e:    2000        .       MOVS     r0,#0
        0x20003230:    b082        ..      SUB      sp,sp,#8
        0x20003232:    4605        .F      MOV      r5,r0
        0x20003234:    2440        @$      MOVS     r4,#0x40
        0x20003236:    9101        ..      STR      r1,[sp,#4]
        0x20003238:    9000        ..      STR      r0,[sp,#0]
        0x2000323a:    e01b        ..      B        0x20003274 ; __aeabi_uldivmod + 76
        0x2000323c:    9901        ..      LDR      r1,[sp,#4]
        0x2000323e:    4622        "F      MOV      r2,r4
        0x20003240:    460f        .F      MOV      r7,r1
        0x20003242:    4630        0F      MOV      r0,r6
        0x20003244:    f000f879    ..y.    BL       __aeabi_llsr ; 0x2000333a
        0x20003248:    9a04        ..      LDR      r2,[sp,#0x10]
        0x2000324a:    9b05        ..      LDR      r3,[sp,#0x14]
        0x2000324c:    1a80        ..      SUBS     r0,r0,r2
        0x2000324e:    4199        .A      SBCS     r1,r1,r3
        0x20003250:    d310        ..      BCC      0x20003274 ; __aeabi_uldivmod + 76
        0x20003252:    4610        .F      MOV      r0,r2
        0x20003254:    4619        .F      MOV      r1,r3
        0x20003256:    4622        "F      MOV      r2,r4
        0x20003258:    f000f85f    .._.    BL       __aeabi_llsl ; 0x2000331a
        0x2000325c:    1a36        6.      SUBS     r6,r6,r0
        0x2000325e:    418f        .A      SBCS     r7,r7,r1
        0x20003260:    9701        ..      STR      r7,[sp,#4]
        0x20003262:    4622        "F      MOV      r2,r4
        0x20003264:    2001        .       MOVS     r0,#1
        0x20003266:    2100        .!      MOVS     r1,#0
        0x20003268:    9f00        ..      LDR      r7,[sp,#0]
        0x2000326a:    f000f856    ..V.    BL       __aeabi_llsl ; 0x2000331a
        0x2000326e:    1838        8.      ADDS     r0,r7,r0
        0x20003270:    414d        MA      ADCS     r5,r5,r1
        0x20003272:    9000        ..      STR      r0,[sp,#0]
        0x20003274:    4620         F      MOV      r0,r4
        0x20003276:    1e64        d.      SUBS     r4,r4,#1
        0x20003278:    2800        .(      CMP      r0,#0
        0x2000327a:    dcdf        ..      BGT      0x2000323c ; __aeabi_uldivmod + 20
        0x2000327c:    9b01        ..      LDR      r3,[sp,#4]
        0x2000327e:    9800        ..      LDR      r0,[sp,#0]
        0x20003280:    4629        )F      MOV      r1,r5
        0x20003282:    4632        2F      MOV      r2,r6
        0x20003284:    b007        ..      ADD      sp,sp,#0x1c
        0x20003286:    bdf0        ..      POP      {r4-r7,pc}
    .text
    __aeabi_lmul
    _ll_mul
        0x20003288:    b530        0.      PUSH     {r4,r5,lr}
        0x2000328a:    4343        CC      MULS     r3,r0,r3
        0x2000328c:    4351        QC      MULS     r1,r2,r1
        0x2000328e:    185c        \.      ADDS     r4,r3,r1
        0x20003290:    0c01        ..      LSRS     r1,r0,#16
        0x20003292:    0c13        ..      LSRS     r3,r2,#16
        0x20003294:    460d        .F      MOV      r5,r1
        0x20003296:    435d        ]C      MULS     r5,r3,r5
        0x20003298:    192c        ,.      ADDS     r4,r5,r4
        0x2000329a:    b280        ..      UXTH     r0,r0
        0x2000329c:    b292        ..      UXTH     r2,r2
        0x2000329e:    4605        .F      MOV      r5,r0
        0x200032a0:    4355        UC      MULS     r5,r2,r5
        0x200032a2:    4351        QC      MULS     r1,r2,r1
        0x200032a4:    0c0a        ..      LSRS     r2,r1,#16
        0x200032a6:    0409        ..      LSLS     r1,r1,#16
        0x200032a8:    194d        M.      ADDS     r5,r1,r5
        0x200032aa:    4162        bA      ADCS     r2,r2,r4
        0x200032ac:    4358        XC      MULS     r0,r3,r0
        0x200032ae:    0c01        ..      LSRS     r1,r0,#16
        0x200032b0:    0400        ..      LSLS     r0,r0,#16
        0x200032b2:    1940        @.      ADDS     r0,r0,r5
        0x200032b4:    4151        QA      ADCS     r1,r1,r2
        0x200032b6:    bd30        0.      POP      {r4,r5,pc}
    .text
    __aeabi_memcpy
    __aeabi_memcpy4
    __aeabi_memcpy8
        0x200032b8:    4603        .F      MOV      r3,r0
        0x200032ba:    430b        .C      ORRS     r3,r3,r1
        0x200032bc:    079b        ..      LSLS     r3,r3,#30
        0x200032be:    d003        ..      BEQ      0x200032c8 ; __aeabi_memcpy + 16
        0x200032c0:    e009        ..      B        0x200032d6 ; __aeabi_memcpy + 30
        0x200032c2:    c908        ..      LDM      r1!,{r3}
        0x200032c4:    1f12        ..      SUBS     r2,r2,#4
        0x200032c6:    c008        ..      STM      r0!,{r3}
        0x200032c8:    2a04        .*      CMP      r2,#4
        0x200032ca:    d2fa        ..      BCS      0x200032c2 ; __aeabi_memcpy + 10
        0x200032cc:    e003        ..      B        0x200032d6 ; __aeabi_memcpy + 30
        0x200032ce:    780b        .x      LDRB     r3,[r1,#0]
        0x200032d0:    7003        .p      STRB     r3,[r0,#0]
        0x200032d2:    1c40        @.      ADDS     r0,r0,#1
        0x200032d4:    1c49        I.      ADDS     r1,r1,#1
        0x200032d6:    1e52        R.      SUBS     r2,r2,#1
        0x200032d8:    d2f9        ..      BCS      0x200032ce ; __aeabi_memcpy + 22
        0x200032da:    4770        pG      BX       lr
    .text
    __aeabi_uidiv
    __aeabi_uidivmod
        0x200032dc:    b570        p.      PUSH     {r4-r6,lr}
        0x200032de:    4604        .F      MOV      r4,r0
        0x200032e0:    2900        .)      CMP      r1,#0
        0x200032e2:    d003        ..      BEQ      0x200032ec ; __aeabi_uidiv + 16
        0x200032e4:    2000        .       MOVS     r0,#0
        0x200032e6:    2220         "      MOVS     r2,#0x20
        0x200032e8:    2301        .#      MOVS     r3,#1
        0x200032ea:    e010        ..      B        0x2000330e ; __aeabi_uidiv + 50
        0x200032ec:    2800        .(      CMP      r0,#0
        0x200032ee:    d001        ..      BEQ      0x200032f4 ; __aeabi_uidiv + 24
        0x200032f0:    2000        .       MOVS     r0,#0
        0x200032f2:    43c0        .C      MVNS     r0,r0
        0x200032f4:    46c0        .F      MOV      r8,r8
        0x200032f6:    46c0        .F      MOV      r8,r8
        0x200032f8:    e00d        ..      B        0x20003316 ; __aeabi_uidiv + 58
        0x200032fa:    4625        %F      MOV      r5,r4
        0x200032fc:    40d5        .@      LSRS     r5,r5,r2
        0x200032fe:    428d        .B      CMP      r5,r1
        0x20003300:    d305        ..      BCC      0x2000330e ; __aeabi_uidiv + 50
        0x20003302:    460d        .F      MOV      r5,r1
        0x20003304:    4095        .@      LSLS     r5,r5,r2
        0x20003306:    1b64        d.      SUBS     r4,r4,r5
        0x20003308:    461d        .F      MOV      r5,r3
        0x2000330a:    4095        .@      LSLS     r5,r5,r2
        0x2000330c:    1940        @.      ADDS     r0,r0,r5
        0x2000330e:    4615        .F      MOV      r5,r2
        0x20003310:    1e52        R.      SUBS     r2,r2,#1
        0x20003312:    2d00        .-      CMP      r5,#0
        0x20003314:    dcf1        ..      BGT      0x200032fa ; __aeabi_uidiv + 30
        0x20003316:    4621        !F      MOV      r1,r4
        0x20003318:    bd70        p.      POP      {r4-r6,pc}
    .text
    __aeabi_llsl
    _ll_shift_l
        0x2000331a:    b510        ..      PUSH     {r4,lr}
        0x2000331c:    2a20         *      CMP      r2,#0x20
        0x2000331e:    db04        ..      BLT      0x2000332a ; __aeabi_llsl + 16
        0x20003320:    4601        .F      MOV      r1,r0
        0x20003322:    3a20         :      SUBS     r2,r2,#0x20
        0x20003324:    4091        .@      LSLS     r1,r1,r2
        0x20003326:    2000        .       MOVS     r0,#0
        0x20003328:    bd10        ..      POP      {r4,pc}
        0x2000332a:    4091        .@      LSLS     r1,r1,r2
        0x2000332c:    2320         #      MOVS     r3,#0x20
        0x2000332e:    1a9c        ..      SUBS     r4,r3,r2
        0x20003330:    4603        .F      MOV      r3,r0
        0x20003332:    40e3        .@      LSRS     r3,r3,r4
        0x20003334:    4319        .C      ORRS     r1,r1,r3
        0x20003336:    4090        .@      LSLS     r0,r0,r2
        0x20003338:    bd10        ..      POP      {r4,pc}
    .text
    __aeabi_llsr
    _ll_ushift_r
        0x2000333a:    b510        ..      PUSH     {r4,lr}
        0x2000333c:    2a20         *      CMP      r2,#0x20
        0x2000333e:    db04        ..      BLT      0x2000334a ; __aeabi_llsr + 16
        0x20003340:    4608        .F      MOV      r0,r1
        0x20003342:    3a20         :      SUBS     r2,r2,#0x20
        0x20003344:    40d0        .@      LSRS     r0,r0,r2
        0x20003346:    2100        .!      MOVS     r1,#0
        0x20003348:    bd10        ..      POP      {r4,pc}
        0x2000334a:    460b        .F      MOV      r3,r1
        0x2000334c:    40d3        .@      LSRS     r3,r3,r2
        0x2000334e:    40d0        .@      LSRS     r0,r0,r2
        0x20003350:    2420         $      MOVS     r4,#0x20
        0x20003352:    1aa2        ..      SUBS     r2,r4,r2
        0x20003354:    4091        .@      LSLS     r1,r1,r2
        0x20003356:    4308        .C      ORRS     r0,r0,r1
        0x20003358:    4619        .F      MOV      r1,r3
        0x2000335a:    bd10        ..      POP      {r4,pc}
    $t.2
    HardFault_Handler_Proc
        0x2000335c:    4615        .F      MOV      r5,r2
        0x2000335e:    460c        .F      MOV      r4,r1
        0x20003360:    4606        .F      MOV      r6,r0
        0x20003362:    f000fa11    ....    BL       app_debug_reinit ; 0x20003788
        0x20003366:    f3ef8108    ....    MRS      r1,MSP
        0x2000336a:    481d        .H      LDR      r0,[pc,#116] ; [0x200033e0] = 0x20007a32
        0x2000336c:    f004f832    ..2.    BL       __0printf$8 ; 0x200073d4
        0x20003370:    0730        0.      LSLS     r0,r6,#28
        0x20003372:    d501        ..      BPL      0x20003378 ; HardFault_Handler_Proc + 28
        0x20003374:    481c        .H      LDR      r0,[pc,#112] ; [0x200033e8] = 0x20007a5a
        0x20003376:    e000        ..      B        0x2000337a ; HardFault_Handler_Proc + 30
        0x20003378:    481a        .H      LDR      r0,[pc,#104] ; [0x200033e4] = 0x20007a79
        0x2000337a:    f004fa75    ..u.    BL       puts ; 0x20007868
        0x2000337e:    2004        .       MOVS     r0,#4
        0x20003380:    4006        .@      ANDS     r6,r6,r0
        0x20003382:    d001        ..      BEQ      0x20003388 ; HardFault_Handler_Proc + 44
        0x20003384:    a01a        ..      ADR      r0,{pc}+0x6c ; 0x200033f0
        0x20003386:    e000        ..      B        0x2000338a ; HardFault_Handler_Proc + 46
        0x20003388:    4818        .H      LDR      r0,[pc,#96] ; [0x200033ec] = 0x20007a6b
        0x2000338a:    f004fa6d    ..m.    BL       puts ; 0x20007868
        0x2000338e:    a01c        ..      ADR      r0,{pc}+0x72 ; 0x20003400
        0x20003390:    f004fa6a    ..j.    BL       puts ; 0x20007868
        0x20003394:    2e00        ..      CMP      r6,#0
        0x20003396:    d000        ..      BEQ      0x2000339a ; HardFault_Handler_Proc + 62
        0x20003398:    462c        ,F      MOV      r4,r5
        0x2000339a:    6821        !h      LDR      r1,[r4,#0]
        0x2000339c:    a01c        ..      ADR      r0,{pc}+0x74 ; 0x20003410
        0x2000339e:    f004f819    ....    BL       __0printf$8 ; 0x200073d4
        0x200033a2:    6861        ah      LDR      r1,[r4,#4]
        0x200033a4:    a01e        ..      ADR      r0,{pc}+0x7c ; 0x20003420
        0x200033a6:    f004f815    ....    BL       __0printf$8 ; 0x200073d4
        0x200033aa:    68a1        .h      LDR      r1,[r4,#8]
        0x200033ac:    a020         .      ADR      r0,{pc}+0x84 ; 0x20003430
        0x200033ae:    f004f811    ....    BL       __0printf$8 ; 0x200073d4
        0x200033b2:    68e1        .h      LDR      r1,[r4,#0xc]
        0x200033b4:    a022        ".      ADR      r0,{pc}+0x8c ; 0x20003440
        0x200033b6:    f004f80d    ....    BL       __0printf$8 ; 0x200073d4
        0x200033ba:    6921        !i      LDR      r1,[r4,#0x10]
        0x200033bc:    a024        $.      ADR      r0,{pc}+0x94 ; 0x20003450
        0x200033be:    f004f809    ....    BL       __0printf$8 ; 0x200073d4
        0x200033c2:    6961        ai      LDR      r1,[r4,#0x14]
        0x200033c4:    a026        &.      ADR      r0,{pc}+0x9c ; 0x20003460
        0x200033c6:    f004f805    ....    BL       __0printf$8 ; 0x200073d4
        0x200033ca:    69a1        .i      LDR      r1,[r4,#0x18]
        0x200033cc:    a028        (.      ADR      r0,{pc}+0xa4 ; 0x20003470
        0x200033ce:    f004f801    ....    BL       __0printf$8 ; 0x200073d4
        0x200033d2:    69e1        .i      LDR      r1,[r4,#0x1c]
        0x200033d4:    a02a        *.      ADR      r0,{pc}+0xac ; 0x20003480
        0x200033d6:    f003fffd    ....    BL       __0printf$8 ; 0x200073d4
        0x200033da:    f000f9a9    ....    BL       app_debug_printf ; 0x20003730
        0x200033de:    e7fe        ..      B        0x200033de ; HardFault_Handler_Proc + 130
    $d.3
    __arm_cp.1_0
        0x200033e0:    20007a32    2z.     DCD    536902194
    __arm_cp.1_1
        0x200033e4:    20007a79    yz.     DCD    536902265
    __arm_cp.1_2
        0x200033e8:    20007a5a    Zz.     DCD    536902234
    __arm_cp.1_3
        0x200033ec:    20007a6b    kz.     DCD    536902251
        0x200033f0:    6e697355    Usin    DCD    1852404565
        0x200033f4:    33752067    g u3    DCD    863314023
        0x200033f8:    70735032    2Psp    DCD    1886605362
        0x200033fc:    0000002e    ....    DCD    46
        0x20003400:    63617453    Stac    DCD    1667331155
        0x20003404:    7266206b    k fr    DCD    1919295595
        0x20003408:    3a656d61    ame:    DCD    979725665
        0x2000340c:    00000000    ....    DCD    0
        0x20003410:    20203052    R0      DCD    538980434
        0x20003414:    7830203a    : 0x    DCD    2016419898
        0x20003418:    58383025    %08X    DCD    1480077349
        0x2000341c:    0000000a    ....    DCD    10
        0x20003420:    20203152    R1      DCD    538980690
        0x20003424:    7830203a    : 0x    DCD    2016419898
        0x20003428:    58383025    %08X    DCD    1480077349
        0x2000342c:    0000000a    ....    DCD    10
        0x20003430:    20203252    R2      DCD    538980946
        0x20003434:    7830203a    : 0x    DCD    2016419898
        0x20003438:    58383025    %08X    DCD    1480077349
        0x2000343c:    0000000a    ....    DCD    10
        0x20003440:    20203352    R3      DCD    538981202
        0x20003444:    7830203a    : 0x    DCD    2016419898
        0x20003448:    58383025    %08X    DCD    1480077349
        0x2000344c:    0000000a    ....    DCD    10
        0x20003450:    20323152    R12     DCD    540160338
        0x20003454:    7830203a    : 0x    DCD    2016419898
        0x20003458:    58383025    %08X    DCD    1480077349
        0x2000345c:    0000000a    ....    DCD    10
        0x20003460:    2020524c    LR      DCD    538989132
        0x20003464:    7830203a    : 0x    DCD    2016419898
        0x20003468:    58383025    %08X    DCD    1480077349
        0x2000346c:    0000000a    ....    DCD    10
        0x20003470:    20204350    PC      DCD    538985296
        0x20003474:    7830203a    : 0x    DCD    2016419898
        0x20003478:    58383025    %08X    DCD    1480077349
        0x2000347c:    0000000a    ....    DCD    10
        0x20003480:    52535078    xPSR    DCD    1381191800
        0x20003484:    7830203a    : 0x    DCD    2016419898
        0x20003488:    58383025    %08X    DCD    1480077349
        0x2000348c:    0000000a    ....    DCD    10
    $t.0
    LLC_IRQ_Handler
        0x20003490:    b580        ..      PUSH     {r7,lr}
        0x20003492:    f003facb    ....    BL       $Ven$TT$L$$rom_llp_hw_int_irq_handler ; 0x20006a2c
        0x20003496:    bd80        ..      POP      {r7,pc}
    NMI_Handler_Proc
        0x20003498:    4614        .F      MOV      r4,r2
        0x2000349a:    460d        .F      MOV      r5,r1
        0x2000349c:    4606        .F      MOV      r6,r0
        0x2000349e:    f000f973    ..s.    BL       app_debug_reinit ; 0x20003788
        0x200034a2:    a004        ..      ADR      r0,{pc}+0x12 ; 0x200034b4
        0x200034a4:    4631        1F      MOV      r1,r6
        0x200034a6:    462a        *F      MOV      r2,r5
        0x200034a8:    4623        #F      MOV      r3,r4
        0x200034aa:    f003ff93    ....    BL       __0printf$8 ; 0x200073d4
        0x200034ae:    f000f93f    ..?.    BL       app_debug_printf ; 0x20003730
        0x200034b2:    e7fe        ..      B        0x200034b2 ; NMI_Handler_Proc + 26
    $d.1
        0x200034b4:    5f494d4e    NMI_    DCD    1598639438
        0x200034b8:    646e6148    Hand    DCD    1684955464
        0x200034bc:    3a72656c    ler:    DCD    980575596
        0x200034c0:    38302520     %08    DCD    942679328
        0x200034c4:    25202c58    X, %    DCD    622865496
        0x200034c8:    2c583830    08X,    DCD    743979056
        0x200034cc:    38302520     %08    DCD    942679328
        0x200034d0:    00000a58    X...    DCD    2648
    $t.0
    PMU_IRQ_Handler
        0x200034d4:    b510        ..      PUSH     {r4,lr}
        0x200034d6:    b082        ..      SUB      sp,sp,#8
        0x200034d8:    ac01        ..      ADD      r4,sp,#4
        0x200034da:    4620         F      MOV      r0,r4
        0x200034dc:    f003faac    ....    BL       $Ven$TT$L$$rom_hw_pmu_get_interrupt_flag ; 0x20006a38
        0x200034e0:    9801        ..      LDR      r0,[sp,#4]
        0x200034e2:    f003faaf    ....    BL       $Ven$TT$L$$rom_hw_pmu_clear_interrupt_flag ; 0x20006a44
        0x200034e6:    7860        `x      LDRB     r0,[r4,#1]
        0x200034e8:    0600        ..      LSLS     r0,r0,#24
        0x200034ea:    d501        ..      BPL      0x200034f0 ; PMU_IRQ_Handler + 28
        0x200034ec:    f000ff20    .. .    BL       ble_init_on_system_wakeup_by_llc ; 0x20004330
        0x200034f0:    b002        ..      ADD      sp,sp,#8
        0x200034f2:    bd10        ..      POP      {r4,pc}
    STIM1_IRQ3_Handler
        0x200034f4:    b5f0        ..      PUSH     {r4-r7,lr}
        0x200034f6:    b083        ..      SUB      sp,sp,#0xc
        0x200034f8:    2500        .%      MOVS     r5,#0
        0x200034fa:    9501        ..      STR      r5,[sp,#4]
        0x200034fc:    4c35        5L      LDR      r4,[pc,#212] ; [0x200035d4] = 0x60053000
        0x200034fe:    ae02        ..      ADD      r6,sp,#8
        0x20003500:    4620         F      MOV      r0,r4
        0x20003502:    4631        1F      MOV      r1,r6
        0x20003504:    f003faa4    ....    BL       $Ven$TT$L$$rom_hw_stim_get_interrupt_flag ; 0x20006a50
        0x20003508:    8830        0.      LDRH     r0,[r6,#0]
        0x2000350a:    2108        .!      MOVS     r1,#8
        0x2000350c:    4001        .@      ANDS     r1,r1,r0
        0x2000350e:    d007        ..      BEQ      0x20003520 ; STIM1_IRQ3_Handler + 44
        0x20003510:    4620         F      MOV      r0,r4
        0x20003512:    f003faa3    ....    BL       $Ven$TT$L$$rom_hw_stim_clear_interrupt_flag ; 0x20006a5c
        0x20003516:    2064        d       MOVS     r0,#0x64
        0x20003518:    f003faa6    ....    BL       $Ven$TT$L$$rom_delay_us ; 0x20006a68
        0x2000351c:    f003fa7c    ..|.    BL       timer_trig_schedule ; 0x20006a18
        0x20003520:    2103        .!      MOVS     r1,#3
        0x20003522:    aa01        ..      ADD      r2,sp,#4
        0x20003524:    4620         F      MOV      r0,r4
        0x20003526:    f003faa5    ....    BL       $Ven$TT$L$$rom_hw_stim_get_compare ; 0x20006a74
        0x2000352a:    4fd6        .O      LDR      r7,[pc,#856] ; [0x20003884] = 0x2000bafc
        0x2000352c:    683c        <h      LDR      r4,[r7,#0]
        0x2000352e:    e004        ..      B        0x2000353a ; STIM1_IRQ3_Handler + 70
        0x20003530:    4630        0F      MOV      r0,r6
        0x20003532:    f003f9e3    ....    BL       timer_config ; 0x200068fc
        0x20003536:    f003fa6f    ..o.    BL       timer_trig_schedule ; 0x20006a18
        0x2000353a:    2c00        .,      CMP      r4,#0
        0x2000353c:    d022        ".      BEQ      0x20003584 ; STIM1_IRQ3_Handler + 144
        0x2000353e:    4626        &F      MOV      r6,r4
        0x20003540:    6aa4        .j      LDR      r4,[r4,#0x28]
        0x20003542:    7d30        0}      LDRB     r0,[r6,#0x14]
        0x20003544:    2800        .(      CMP      r0,#0
        0x20003546:    d1f3        ..      BNE      0x20003530 ; STIM1_IRQ3_Handler + 60
        0x20003548:    7d70        p}      LDRB     r0,[r6,#0x15]
        0x2000354a:    2800        .(      CMP      r0,#0
        0x2000354c:    d1f0        ..      BNE      0x20003530 ; STIM1_IRQ3_Handler + 60
        0x2000354e:    7db0        .}      LDRB     r0,[r6,#0x16]
        0x20003550:    2802        .(      CMP      r0,#2
        0x20003552:    d1f2        ..      BNE      0x2000353a ; STIM1_IRQ3_Handler + 70
        0x20003554:    4669        iF      MOV      r1,sp
        0x20003556:    48e9        .H      LDR      r0,[pc,#932] ; [0x200038fc] = 0x60053000
        0x20003558:    f003fa92    ....    BL       $Ven$TT$L$$rom_hw_stim_get_count ; 0x20006a80
        0x2000355c:    68b1        .h      LDR      r1,[r6,#8]
        0x2000355e:    68f2        .h      LDR      r2,[r6,#0xc]
        0x20003560:    9800        ..      LDR      r0,[sp,#0]
        0x20003562:    4291        .B      CMP      r1,r2
        0x20003564:    d204        ..      BCS      0x20003570 ; STIM1_IRQ3_Handler + 124
        0x20003566:    4288        .B      CMP      r0,r1
        0x20003568:    d3e7        ..      BCC      0x2000353a ; STIM1_IRQ3_Handler + 70
        0x2000356a:    4290        .B      CMP      r0,r2
        0x2000356c:    d304        ..      BCC      0x20003578 ; STIM1_IRQ3_Handler + 132
        0x2000356e:    e7e4        ..      B        0x2000353a ; STIM1_IRQ3_Handler + 70
        0x20003570:    4290        .B      CMP      r0,r2
        0x20003572:    d301        ..      BCC      0x20003578 ; STIM1_IRQ3_Handler + 132
        0x20003574:    4288        .B      CMP      r0,r1
        0x20003576:    d3e0        ..      BCC      0x2000353a ; STIM1_IRQ3_Handler + 70
        0x20003578:    69f1        .i      LDR      r1,[r6,#0x1c]
        0x2000357a:    2900        .)      CMP      r1,#0
        0x2000357c:    d0d8        ..      BEQ      0x20003530 ; STIM1_IRQ3_Handler + 60
        0x2000357e:    6a30        0j      LDR      r0,[r6,#0x20]
        0x20003580:    4788        .G      BLX      r1
        0x20003582:    e7d5        ..      B        0x20003530 ; STIM1_IRQ3_Handler + 60
        0x20003584:    6839        9h      LDR      r1,[r7,#0]
        0x20003586:    2900        .)      CMP      r1,#0
        0x20003588:    d015        ..      BEQ      0x200035b6 ; STIM1_IRQ3_Handler + 194
        0x2000358a:    2700        .'      MOVS     r7,#0
        0x2000358c:    9a00        ..      LDR      r2,[sp,#0]
        0x2000358e:    463d        =F      MOV      r5,r7
        0x20003590:    48da        .H      LDR      r0,[pc,#872] ; [0x200038fc] = 0x60053000
        0x20003592:    e004        ..      B        0x2000359e ; STIM1_IRQ3_Handler + 170
        0x20003594:    2701        .'      MOVS     r7,#1
        0x20003596:    461d        .F      MOV      r5,r3
        0x20003598:    6a89        .j      LDR      r1,[r1,#0x28]
        0x2000359a:    2900        .)      CMP      r1,#0
        0x2000359c:    d00d        ..      BEQ      0x200035ba ; STIM1_IRQ3_Handler + 198
        0x2000359e:    7d8b        .}      LDRB     r3,[r1,#0x16]
        0x200035a0:    2b02        .+      CMP      r3,#2
        0x200035a2:    d1f9        ..      BNE      0x20003598 ; STIM1_IRQ3_Handler + 164
        0x200035a4:    688b        .h      LDR      r3,[r1,#8]
        0x200035a6:    07fc        ..      LSLS     r4,r7,#31
        0x200035a8:    d0f4        ..      BEQ      0x20003594 ; STIM1_IRQ3_Handler + 160
        0x200035aa:    1aac        ..      SUBS     r4,r5,r2
        0x200035ac:    1a9e        ..      SUBS     r6,r3,r2
        0x200035ae:    42a6        .B      CMP      r6,r4
        0x200035b0:    d3f1        ..      BCC      0x20003596 ; STIM1_IRQ3_Handler + 162
        0x200035b2:    462b        +F      MOV      r3,r5
        0x200035b4:    e7ef        ..      B        0x20003596 ; STIM1_IRQ3_Handler + 162
        0x200035b6:    462f        /F      MOV      r7,r5
        0x200035b8:    48df        .H      LDR      r0,[pc,#892] ; [0x20003938] = 0x60053000
        0x200035ba:    9901        ..      LDR      r1,[sp,#4]
        0x200035bc:    428d        .B      CMP      r5,r1
        0x200035be:    d007        ..      BEQ      0x200035d0 ; STIM1_IRQ3_Handler + 220
        0x200035c0:    07f9        ..      LSLS     r1,r7,#31
        0x200035c2:    d005        ..      BEQ      0x200035d0 ; STIM1_IRQ3_Handler + 220
        0x200035c4:    2103        .!      MOVS     r1,#3
        0x200035c6:    462a        *F      MOV      r2,r5
        0x200035c8:    f003fa60    ..`.    BL       $Ven$TT$L$$rom_hw_stim_set_compare ; 0x20006a8c
        0x200035cc:    f003fa24    ..$.    BL       timer_trig_schedule ; 0x20006a18
        0x200035d0:    b003        ..      ADD      sp,sp,#0xc
        0x200035d2:    bdf0        ..      POP      {r4-r7,pc}
    $d.1
    __arm_cp.0_0
        0x200035d4:    60053000    .0.`    DCD    1610952704
    $t.0
    SystemInit
        0x200035d8:    4801        .H      LDR      r0,[pc,#4] ; [0x200035e0] = 0xe000ed08
        0x200035da:    4902        .I      LDR      r1,[pc,#8] ; [0x200035e4] = 0x20003000
        0x200035dc:    6001        .`      STR      r1,[r0,#0]
        0x200035de:    4770        pG      BX       lr
    $d.1
    __arm_cp.0_0
        0x200035e0:    e000ed08    ....    DCD    3758157064
    __arm_cp.0_1
        0x200035e4:    20003000    .0.     DCD    536883200
    $t.7
    __NVIC_ClearPendingIRQ
        0x200035e8:    2001        .       MOVS     r0,#1
        0x200035ea:    07c0        ..      LSLS     r0,r0,#31
        0x200035ec:    4906        .I      LDR      r1,[pc,#24] ; [0x20003608] = 0xe000e280
        0x200035ee:    6008        .`      STR      r0,[r1,#0]
        0x200035f0:    4770        pG      BX       lr
        0x200035f2:    46c0        .F      MOV      r8,r8
    __NVIC_ClearPendingIRQ
        0x200035f4:    4804        .H      LDR      r0,[pc,#16] ; [0x20003608] = 0xe000e280
        0x200035f6:    2104        .!      MOVS     r1,#4
        0x200035f8:    6001        .`      STR      r1,[r0,#0]
        0x200035fa:    4770        pG      BX       lr
    __NVIC_ClearPendingIRQ
        0x200035fc:    2001        .       MOVS     r0,#1
        0x200035fe:    05c0        ..      LSLS     r0,r0,#23
        0x20003600:    4901        .I      LDR      r1,[pc,#4] ; [0x20003608] = 0xe000e280
        0x20003602:    6008        .`      STR      r0,[r1,#0]
        0x20003604:    4770        pG      BX       lr
        0x20003606:    46c0        .F      MOV      r8,r8
    $d.10
    __arm_cp.6_0
        0x20003608:    e000e280    ....    DCD    3758154368
    $t.11
    __NVIC_EnableIRQ
        0x2000360c:    2001        .       MOVS     r0,#1
        0x2000360e:    07c0        ..      LSLS     r0,r0,#31
        0x20003610:    4906        .I      LDR      r1,[pc,#24] ; [0x2000362c] = 0xe000e100
        0x20003612:    6008        .`      STR      r0,[r1,#0]
        0x20003614:    4770        pG      BX       lr
        0x20003616:    46c0        .F      MOV      r8,r8
    __NVIC_EnableIRQ
        0x20003618:    4804        .H      LDR      r0,[pc,#16] ; [0x2000362c] = 0xe000e100
        0x2000361a:    2104        .!      MOVS     r1,#4
        0x2000361c:    6001        .`      STR      r1,[r0,#0]
        0x2000361e:    4770        pG      BX       lr
    __NVIC_EnableIRQ
        0x20003620:    2001        .       MOVS     r0,#1
        0x20003622:    05c0        ..      LSLS     r0,r0,#23
        0x20003624:    4901        .I      LDR      r1,[pc,#4] ; [0x2000362c] = 0xe000e100
        0x20003626:    6008        .`      STR      r0,[r1,#0]
        0x20003628:    4770        pG      BX       lr
        0x2000362a:    46c0        .F      MOV      r8,r8
    $d.14
    __arm_cp.8_0
        0x2000362c:    e000e100    ....    DCD    3758153984
    $t.19
    __NVIC_SetPendingIRQ
        0x20003630:    2001        .       MOVS     r0,#1
        0x20003632:    07c0        ..      LSLS     r0,r0,#31
        0x20003634:    4901        .I      LDR      r1,[pc,#4] ; [0x2000363c] = 0xe000e200
        0x20003636:    6008        .`      STR      r0,[r1,#0]
        0x20003638:    4770        pG      BX       lr
        0x2000363a:    46c0        .F      MOV      r8,r8
    $d.20
    __arm_cp.11_0
        0x2000363c:    e000e200    ....    DCD    3758154240
    $t.9
    __NVIC_SetPriority
        0x20003640:    20ff        .       MOVS     r0,#0xff
        0x20003642:    0600        ..      LSLS     r0,r0,#24
        0x20003644:    4903        .I      LDR      r1,[pc,#12] ; [0x20003654] = 0xe000e41c
        0x20003646:    680a        .h      LDR      r2,[r1,#0]
        0x20003648:    4382        .C      BICS     r2,r2,r0
        0x2000364a:    2003        .       MOVS     r0,#3
        0x2000364c:    0780        ..      LSLS     r0,r0,#30
        0x2000364e:    1810        ..      ADDS     r0,r2,r0
        0x20003650:    6008        .`      STR      r0,[r1,#0]
        0x20003652:    4770        pG      BX       lr
    $d.10
    __arm_cp.5_0
        0x20003654:    e000e41c    ....    DCD    3758154780
    $t.5
    __NVIC_SetPriority
        0x20003658:    20ff        .       MOVS     r0,#0xff
        0x2000365a:    0400        ..      LSLS     r0,r0,#16
        0x2000365c:    4902        .I      LDR      r1,[pc,#8] ; [0x20003668] = 0xe000e400
        0x2000365e:    680a        .h      LDR      r2,[r1,#0]
        0x20003660:    4382        .C      BICS     r2,r2,r0
        0x20003662:    600a        .`      STR      r2,[r1,#0]
        0x20003664:    4770        pG      BX       lr
        0x20003666:    46c0        .F      MOV      r8,r8
    $d.6
    __arm_cp.3_0
        0x20003668:    e000e400    ....    DCD    3758154752
    $t.11
    __NVIC_SetPriority
        0x2000366c:    20ff        .       MOVS     r0,#0xff
        0x2000366e:    0600        ..      LSLS     r0,r0,#24
        0x20003670:    4902        .I      LDR      r1,[pc,#8] ; [0x2000367c] = 0xe000e414
        0x20003672:    680a        .h      LDR      r2,[r1,#0]
        0x20003674:    4382        .C      BICS     r2,r2,r0
        0x20003676:    600a        .`      STR      r2,[r1,#0]
        0x20003678:    4770        pG      BX       lr
        0x2000367a:    46c0        .F      MOV      r8,r8
    $d.12
    __arm_cp.7_0
        0x2000367c:    e000e414    ....    DCD    3758154772
    $t.4
    app_debug_deinit
        0x20003680:    b570        p.      PUSH     {r4-r6,lr}
        0x20003682:    4d5d        ]M      LDR      r5,[pc,#372] ; [0x200037f8] = 0x2000bb10
        0x20003684:    6829        )h      LDR      r1,[r5,#0]
        0x20003686:    4e5b        [N      LDR      r6,[pc,#364] ; [0x200037f4] = 0x2000ba6c
        0x20003688:    6830        0h      LDR      r0,[r6,#0]
        0x2000368a:    2400        .$      MOVS     r4,#0
        0x2000368c:    4622        "F      MOV      r2,r4
        0x2000368e:    f003fa03    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_input_output ; 0x20006a98
        0x20003692:    6830        0h      LDR      r0,[r6,#0]
        0x20003694:    6829        )h      LDR      r1,[r5,#0]
        0x20003696:    4622        "F      MOV      r2,r4
        0x20003698:    f003fa04    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x20006aa4
        0x2000369c:    4853        SH      LDR      r0,[pc,#332] ; [0x200037ec] = 0x2000ba70
        0x2000369e:    6801        .h      LDR      r1,[r0,#0]
        0x200036a0:    4853        SH      LDR      r0,[pc,#332] ; [0x200037f0] = 0x60000400
        0x200036a2:    4281        .B      CMP      r1,r0
        0x200036a4:    d001        ..      BEQ      0x200036aa ; app_debug_deinit + 42
        0x200036a6:    202d        -       MOVS     r0,#0x2d
        0x200036a8:    e000        ..      B        0x200036ac ; app_debug_deinit + 44
        0x200036aa:    202c        ,       MOVS     r0,#0x2c
        0x200036ac:    2203        ."      MOVS     r2,#3
        0x200036ae:    0752        R.      LSLS     r2,r2,#29
        0x200036b0:    4291        .B      CMP      r1,r2
        0x200036b2:    d100        ..      BNE      0x200036b6 ; app_debug_deinit + 54
        0x200036b4:    202b        +       MOVS     r0,#0x2b
        0x200036b6:    f003f9fb    ....    BL       $Ven$TT$L$$rom_hw_crg_disable_clk_gate ; 0x20006ab0
        0x200036ba:    bd70        p.      POP      {r4-r6,pc}
    app_debug_init
        0x200036bc:    b570        p.      PUSH     {r4-r6,lr}
        0x200036be:    2403        .$      MOVS     r4,#3
        0x200036c0:    0765        e.      LSLS     r5,r4,#29
        0x200036c2:    2410        .$      MOVS     r4,#0x10
        0x200036c4:    42aa        .B      CMP      r2,r5
        0x200036c6:    d005        ..      BEQ      0x200036d4 ; app_debug_init + 24
        0x200036c8:    4d10        .M      LDR      r5,[pc,#64] ; [0x2000370c] = 0x60000800
        0x200036ca:    42aa        .B      CMP      r2,r5
        0x200036cc:    d002        ..      BEQ      0x200036d4 ; app_debug_init + 24
        0x200036ce:    4d48        HM      LDR      r5,[pc,#288] ; [0x200037f0] = 0x60000400
        0x200036d0:    42aa        .B      CMP      r2,r5
        0x200036d2:    d119        ..      BNE      0x20003708 ; app_debug_init + 76
        0x200036d4:    2580        .%      MOVS     r5,#0x80
        0x200036d6:    4305        .C      ORRS     r5,r5,r0
        0x200036d8:    4e0d        .N      LDR      r6,[pc,#52] ; [0x20003710] = 0x6004b080
        0x200036da:    42b5        .B      CMP      r5,r6
        0x200036dc:    d114        ..      BNE      0x20003708 ; app_debug_init + 76
        0x200036de:    9c04        ..      LDR      r4,[sp,#0x10]
        0x200036e0:    4d26        &M      LDR      r5,[pc,#152] ; [0x2000377c] = 0x2000ba68
        0x200036e2:    602c        ,`      STR      r4,[r5,#0]
        0x200036e4:    2c00        .,      CMP      r4,#0
        0x200036e6:    d004        ..      BEQ      0x200036f2 ; app_debug_init + 54
        0x200036e8:    4c26        &L      LDR      r4,[pc,#152] ; [0x20003784] = 0x2000bb08
        0x200036ea:    2500        .%      MOVS     r5,#0
        0x200036ec:    8025        %.      STRH     r5,[r4,#0]
        0x200036ee:    4c24        $L      LDR      r4,[pc,#144] ; [0x20003780] = 0x2000bb0a
        0x200036f0:    8025        %.      STRH     r5,[r4,#0]
        0x200036f2:    4c40        @L      LDR      r4,[pc,#256] ; [0x200037f4] = 0x2000ba6c
        0x200036f4:    6020         `      STR      r0,[r4,#0]
        0x200036f6:    483d        =H      LDR      r0,[pc,#244] ; [0x200037ec] = 0x2000ba70
        0x200036f8:    6002        .`      STR      r2,[r0,#0]
        0x200036fa:    483f        ?H      LDR      r0,[pc,#252] ; [0x200037f8] = 0x2000bb10
        0x200036fc:    6001        .`      STR      r1,[r0,#0]
        0x200036fe:    4840        @H      LDR      r0,[pc,#256] ; [0x20003800] = 0x2000bb14
        0x20003700:    6003        .`      STR      r3,[r0,#0]
        0x20003702:    f000f841    ..A.    BL       app_debug_reinit ; 0x20003788
        0x20003706:    4604        .F      MOV      r4,r0
        0x20003708:    4620         F      MOV      r0,r4
        0x2000370a:    bd70        p.      POP      {r4-r6,pc}
    $d.1
    __arm_cp.0_0
        0x2000370c:    60000800    ...`    DCD    1610614784
    __arm_cp.0_2
        0x20003710:    6004b080    ...`    DCD    1610920064
    $t.6
    app_debug_print_complete
        0x20003714:    481b        .H      LDR      r0,[pc,#108] ; [0x20003784] = 0x2000bb08
        0x20003716:    8800        ..      LDRH     r0,[r0,#0]
        0x20003718:    4919        .I      LDR      r1,[pc,#100] ; [0x20003780] = 0x2000bb0a
        0x2000371a:    8809        ..      LDRH     r1,[r1,#0]
        0x2000371c:    1a08        ..      SUBS     r0,r1,r0
        0x2000371e:    4241        AB      RSBS     r1,r0,#0
        0x20003720:    4141        AA      ADCS     r1,r1,r0
        0x20003722:    4816        .H      LDR      r0,[pc,#88] ; [0x2000377c] = 0x2000ba68
        0x20003724:    6802        .h      LDR      r2,[r0,#0]
        0x20003726:    4250        PB      RSBS     r0,r2,#0
        0x20003728:    4150        PA      ADCS     r0,r0,r2
        0x2000372a:    4308        .C      ORRS     r0,r0,r1
        0x2000372c:    4770        pG      BX       lr
        0x2000372e:    46c0        .F      MOV      r8,r8
    app_debug_printf
        0x20003730:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20003732:    b081        ..      SUB      sp,sp,#4
        0x20003734:    4c11        .L      LDR      r4,[pc,#68] ; [0x2000377c] = 0x2000ba68
        0x20003736:    6820         h      LDR      r0,[r4,#0]
        0x20003738:    2800        .(      CMP      r0,#0
        0x2000373a:    d005        ..      BEQ      0x20003748 ; app_debug_printf + 24
        0x2000373c:    4d10        .M      LDR      r5,[pc,#64] ; [0x20003780] = 0x2000bb0a
        0x2000373e:    8828        (.      LDRH     r0,[r5,#0]
        0x20003740:    4e10        .N      LDR      r6,[pc,#64] ; [0x20003784] = 0x2000bb08
        0x20003742:    8831        1.      LDRH     r1,[r6,#0]
        0x20003744:    4288        .B      CMP      r0,r1
        0x20003746:    d101        ..      BNE      0x2000374c ; app_debug_printf + 28
        0x20003748:    b001        ..      ADD      sp,sp,#4
        0x2000374a:    bdf0        ..      POP      {r4-r7,pc}
        0x2000374c:    4f27        'O      LDR      r7,[pc,#156] ; [0x200037ec] = 0x2000ba70
        0x2000374e:    e004        ..      B        0x2000375a ; app_debug_printf + 42
        0x20003750:    8028        (.      STRH     r0,[r5,#0]
        0x20003752:    b281        ..      UXTH     r1,r0
        0x20003754:    8832        2.      LDRH     r2,[r6,#0]
        0x20003756:    4291        .B      CMP      r1,r2
        0x20003758:    d0f6        ..      BEQ      0x20003748 ; app_debug_printf + 24
        0x2000375a:    b280        ..      UXTH     r0,r0
        0x2000375c:    6821        !h      LDR      r1,[r4,#0]
        0x2000375e:    6809        .h      LDR      r1,[r1,#0]
        0x20003760:    5c09        .\      LDRB     r1,[r1,r0]
        0x20003762:    6838        8h      LDR      r0,[r7,#0]
        0x20003764:    f003f9aa    ....    BL       $Ven$TT$L$$rom_hw_uart_send_byte ; 0x20006abc
        0x20003768:    6820         h      LDR      r0,[r4,#0]
        0x2000376a:    8881        ..      LDRH     r1,[r0,#4]
        0x2000376c:    8828        (.      LDRH     r0,[r5,#0]
        0x2000376e:    1c40        @.      ADDS     r0,r0,#1
        0x20003770:    b282        ..      UXTH     r2,r0
        0x20003772:    428a        .B      CMP      r2,r1
        0x20003774:    d3ec        ..      BCC      0x20003750 ; app_debug_printf + 32
        0x20003776:    2000        .       MOVS     r0,#0
        0x20003778:    e7ea        ..      B        0x20003750 ; app_debug_printf + 32
        0x2000377a:    46c0        .F      MOV      r8,r8
    $d.9
    __arm_cp.4_0
        0x2000377c:    2000ba68    h..     DCD    536918632
    __arm_cp.4_1
        0x20003780:    2000bb0a    ...     DCD    536918794
    __arm_cp.4_2
        0x20003784:    2000bb08    ...     DCD    536918792
    $t.2
    app_debug_reinit
        0x20003788:    b5f0        ..      PUSH     {r4-r7,lr}
        0x2000378a:    b083        ..      SUB      sp,sp,#0xc
        0x2000378c:    4d17        .M      LDR      r5,[pc,#92] ; [0x200037ec] = 0x2000ba70
        0x2000378e:    6828        (h      LDR      r0,[r5,#0]
        0x20003790:    2103        .!      MOVS     r1,#3
        0x20003792:    0749        I.      LSLS     r1,r1,#29
        0x20003794:    4288        .B      CMP      r0,r1
        0x20003796:    d005        ..      BEQ      0x200037a4 ; app_debug_reinit + 28
        0x20003798:    4915        .I      LDR      r1,[pc,#84] ; [0x200037f0] = 0x60000400
        0x2000379a:    4288        .B      CMP      r0,r1
        0x2000379c:    d105        ..      BNE      0x200037aa ; app_debug_reinit + 34
        0x2000379e:    2408        .$      MOVS     r4,#8
        0x200037a0:    202c        ,       MOVS     r0,#0x2c
        0x200037a2:    e004        ..      B        0x200037ae ; app_debug_reinit + 38
        0x200037a4:    2404        .$      MOVS     r4,#4
        0x200037a6:    202b        +       MOVS     r0,#0x2b
        0x200037a8:    e001        ..      B        0x200037ae ; app_debug_reinit + 38
        0x200037aa:    240c        .$      MOVS     r4,#0xc
        0x200037ac:    202d        -       MOVS     r0,#0x2d
        0x200037ae:    f003f98b    ....    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x20006ac8
        0x200037b2:    4e10        .N      LDR      r6,[pc,#64] ; [0x200037f4] = 0x2000ba6c
        0x200037b4:    6830        0h      LDR      r0,[r6,#0]
        0x200037b6:    4f10        .O      LDR      r7,[pc,#64] ; [0x200037f8] = 0x2000bb10
        0x200037b8:    6839        9h      LDR      r1,[r7,#0]
        0x200037ba:    4622        "F      MOV      r2,r4
        0x200037bc:    f003f98a    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pid ; 0x20006ad4
        0x200037c0:    2800        .(      CMP      r0,#0
        0x200037c2:    d001        ..      BEQ      0x200037c8 ; app_debug_reinit + 64
        0x200037c4:    b003        ..      ADD      sp,sp,#0xc
        0x200037c6:    bdf0        ..      POP      {r4-r7,pc}
        0x200037c8:    6839        9h      LDR      r1,[r7,#0]
        0x200037ca:    6830        0h      LDR      r0,[r6,#0]
        0x200037cc:    2202        ."      MOVS     r2,#2
        0x200037ce:    f003f969    ..i.    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x20006aa4
        0x200037d2:    2800        .(      CMP      r0,#0
        0x200037d4:    d1f6        ..      BNE      0x200037c4 ; app_debug_reinit + 60
        0x200037d6:    4809        .H      LDR      r0,[pc,#36] ; [0x200037fc] = 0x1013021
        0x200037d8:    9002        ..      STR      r0,[sp,#8]
        0x200037da:    4809        .H      LDR      r0,[pc,#36] ; [0x20003800] = 0x2000bb14
        0x200037dc:    6800        .h      LDR      r0,[r0,#0]
        0x200037de:    9001        ..      STR      r0,[sp,#4]
        0x200037e0:    6828        (h      LDR      r0,[r5,#0]
        0x200037e2:    a901        ..      ADD      r1,sp,#4
        0x200037e4:    f003f97c    ..|.    BL       $Ven$TT$L$$rom_hw_uart_init ; 0x20006ae0
        0x200037e8:    b003        ..      ADD      sp,sp,#0xc
        0x200037ea:    bdf0        ..      POP      {r4-r7,pc}
    $d.3
    __arm_cp.1_0
        0x200037ec:    2000ba70    p..     DCD    536918640
    __arm_cp.1_1
        0x200037f0:    60000400    ...`    DCD    1610613760
    __arm_cp.1_2
        0x200037f4:    2000ba6c    l..     DCD    536918636
    __arm_cp.1_3
        0x200037f8:    2000bb10    ...     DCD    536918800
    __arm_cp.1_4
        0x200037fc:    01013021    !0..    DCD    16855073
    __arm_cp.1_5
        0x20003800:    2000bb14    ...     DCD    536918804
    $t.1
    app_main
        0x20003804:    b580        ..      PUSH     {r7,lr}
        0x20003806:    f002fff1    ....    BL       system_clock_init ; 0x200067ec
        0x2000380a:    f002fda3    ....    BL       peripheral_init ; 0x20006354
        0x2000380e:    f000fd47    ..G.    BL       ble_init ; 0x200042a0
        0x20003812:    f000fc91    ....    BL       ble_event_init ; 0x20004138
        0x20003816:    f000fe19    ....    BL       ble_peripheral_init ; 0x2000444c
        0x2000381a:    f000fe8d    ....    BL       ble_profile_init ; 0x20004538
        0x2000381e:    f001f81f    ....    BL       idle_task_init ; 0x20004860
        0x20003822:    f003f847    ..G.    BL       system_lpwr_init ; 0x200068b4
        0x20003826:    f003f961    ..a.    BL       $Ven$TT$L$$osThreadGetId ; 0x20006aec
        0x2000382a:    f003f965    ..e.    BL       $Ven$TT$L$$osThreadTerminate ; 0x20006af8
        0x2000382e:    bd80        ..      POP      {r7,pc}
    app_timer_create
        0x20003830:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20003832:    4603        .F      MOV      r3,r0
        0x20003834:    2010        .       MOVS     r0,#0x10
        0x20003836:    2b00        .+      CMP      r3,#0
        0x20003838:    d022        ".      BEQ      0x20003880 ; app_timer_create + 80
        0x2000383a:    2901        .)      CMP      r1,#1
        0x2000383c:    d820         .      BHI      0x20003880 ; app_timer_create + 80
        0x2000383e:    f3ef8410    ....    MRS      r4,PRIMASK
        0x20003842:    f3ef8510    ....    MRS      r5,PRIMASK
        0x20003846:    b672        r.      CPSID    i
        0x20003848:    7d9d        .}      LDRB     r5,[r3,#0x16]
        0x2000384a:    2d00        .-      CMP      r5,#0
        0x2000384c:    d002        ..      BEQ      0x20003854 ; app_timer_create + 36
        0x2000384e:    f3848810    ....    MSR      PRIMASK,r4
        0x20003852:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003854:    2000        .       MOVS     r0,#0
        0x20003856:    6298        .b      STR      r0,[r3,#0x28]
        0x20003858:    61da        .a      STR      r2,[r3,#0x1c]
        0x2000385a:    7619        .v      STRB     r1,[r3,#0x18]
        0x2000385c:    2101        .!      MOVS     r1,#1
        0x2000385e:    7599        .u      STRB     r1,[r3,#0x16]
        0x20003860:    4927        'I      LDR      r1,[pc,#156] ; [0x20003900] = 0x2000bafc
        0x20003862:    680a        .h      LDR      r2,[r1,#0]
        0x20003864:    2a00        .*      CMP      r2,#0
        0x20003866:    d102        ..      BNE      0x2000386e ; app_timer_create + 62
        0x20003868:    600b        .`      STR      r3,[r1,#0]
        0x2000386a:    2100        .!      MOVS     r1,#0
        0x2000386c:    62d9        .b      STR      r1,[r3,#0x2c]
        0x2000386e:    4925        %I      LDR      r1,[pc,#148] ; [0x20003904] = 0x2000bb00
        0x20003870:    680a        .h      LDR      r2,[r1,#0]
        0x20003872:    2a00        .*      CMP      r2,#0
        0x20003874:    d001        ..      BEQ      0x2000387a ; app_timer_create + 74
        0x20003876:    6293        .b      STR      r3,[r2,#0x28]
        0x20003878:    62da        .b      STR      r2,[r3,#0x2c]
        0x2000387a:    600b        .`      STR      r3,[r1,#0]
        0x2000387c:    f3848810    ....    MSR      PRIMASK,r4
        0x20003880:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003882:    46c0        .F      MOV      r8,r8
    $d.14
    __arm_cp.7_0
        0x20003884:    2000bafc    ...     DCD    536918780
    $t.18
    app_timer_delete
        0x20003888:    b510        ..      PUSH     {r4,lr}
        0x2000388a:    2410        .$      MOVS     r4,#0x10
        0x2000388c:    2800        .(      CMP      r0,#0
        0x2000388e:    d008        ..      BEQ      0x200038a2 ; app_timer_delete + 26
        0x20003890:    7d81        .}      LDRB     r1,[r0,#0x16]
        0x20003892:    2900        .)      CMP      r1,#0
        0x20003894:    d005        ..      BEQ      0x200038a2 ; app_timer_delete + 26
        0x20003896:    2101        .!      MOVS     r1,#1
        0x20003898:    7541        Au      STRB     r1,[r0,#0x15]
        0x2000389a:    2400        .$      MOVS     r4,#0
        0x2000389c:    75c4        .u      STRB     r4,[r0,#0x17]
        0x2000389e:    f003f8bb    ....    BL       timer_trig_schedule ; 0x20006a18
        0x200038a2:    4620         F      MOV      r0,r4
        0x200038a4:    bd10        ..      POP      {r4,pc}
        0x200038a6:    0000        ..      MOVS     r0,r0
    app_timer_init
        0x200038a8:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x200038aa:    2005        .       MOVS     r0,#5
        0x200038ac:    f003f90c    ....    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x20006ac8
        0x200038b0:    4d21        !M      LDR      r5,[pc,#132] ; [0x20003938] = 0x60053000
        0x200038b2:    2400        .$      MOVS     r4,#0
        0x200038b4:    4628        (F      MOV      r0,r5
        0x200038b6:    4621        !F      MOV      r1,r4
        0x200038b8:    f003f924    ..$.    BL       $Ven$TT$L$$rom_hw_stim_set_prescale ; 0x20006b04
        0x200038bc:    f7fffe94    ....    BL       __NVIC_ClearPendingIRQ ; 0x200035e8
        0x200038c0:    f7fffebe    ....    BL       __NVIC_SetPriority ; 0x20003640
        0x200038c4:    f7fffea2    ....    BL       __NVIC_EnableIRQ ; 0x2000360c
        0x200038c8:    211f        .!      MOVS     r1,#0x1f
        0x200038ca:    4620         F      MOV      r0,r4
        0x200038cc:    f003f920    .. .    BL       $Ven$TT$L$$rom_hw_sys_ctrl_enable_peri_int ; 0x20006b10
        0x200038d0:    2001        .       MOVS     r0,#1
        0x200038d2:    0241        A.      LSLS     r1,r0,#9
        0x200038d4:    4628        (F      MOV      r0,r5
        0x200038d6:    f003f921    ..!.    BL       $Ven$TT$L$$rom_hw_stim_enable_wakeup ; 0x20006b1c
        0x200038da:    2108        .!      MOVS     r1,#8
        0x200038dc:    4628        (F      MOV      r0,r5
        0x200038de:    f003f923    ..#.    BL       $Ven$TT$L$$rom_hw_stim_enable_interrupt ; 0x20006b28
        0x200038e2:    21ff        .!      MOVS     r1,#0xff
        0x200038e4:    4628        (F      MOV      r0,r5
        0x200038e6:    f003f925    ..%.    BL       $Ven$TT$L$$rom_hw_stim_disable_tick_overflow_interrupt ; 0x20006b34
        0x200038ea:    4628        (F      MOV      r0,r5
        0x200038ec:    f003f928    ..(.    BL       $Ven$TT$L$$rom_hw_stim_start ; 0x20006b40
        0x200038f0:    4803        .H      LDR      r0,[pc,#12] ; [0x20003900] = 0x2000bafc
        0x200038f2:    6004        .`      STR      r4,[r0,#0]
        0x200038f4:    4803        .H      LDR      r0,[pc,#12] ; [0x20003904] = 0x2000bb00
        0x200038f6:    6004        .`      STR      r4,[r0,#0]
        0x200038f8:    4620         F      MOV      r0,r4
        0x200038fa:    bdb0        ..      POP      {r4,r5,r7,pc}
    $d.6
    __arm_cp.3_0
        0x200038fc:    60053000    .0.`    DCD    1610952704
    __arm_cp.3_1
        0x20003900:    2000bafc    ...     DCD    536918780
    __arm_cp.3_2
        0x20003904:    2000bb00    ...     DCD    536918784
    $t.15
    app_timer_start
        0x20003908:    b510        ..      PUSH     {r4,lr}
        0x2000390a:    4604        .F      MOV      r4,r0
        0x2000390c:    2010        .       MOVS     r0,#0x10
        0x2000390e:    2c00        .,      CMP      r4,#0
        0x20003910:    d011        ..      BEQ      0x20003936 ; app_timer_start + 46
        0x20003912:    7da3        .}      LDRB     r3,[r4,#0x16]
        0x20003914:    2b00        .+      CMP      r3,#0
        0x20003916:    d00e        ..      BEQ      0x20003936 ; app_timer_start + 46
        0x20003918:    6262        bb      STR      r2,[r4,#0x24]
        0x2000391a:    6061        a`      STR      r1,[r4,#4]
        0x2000391c:    4621        !F      MOV      r1,r4
        0x2000391e:    3110        .1      ADDS     r1,r1,#0x10
        0x20003920:    4805        .H      LDR      r0,[pc,#20] ; [0x20003938] = 0x60053000
        0x20003922:    f003f8ad    ....    BL       $Ven$TT$L$$rom_hw_stim_get_count ; 0x20006a80
        0x20003926:    2002        .       MOVS     r0,#2
        0x20003928:    75e0        .u      STRB     r0,[r4,#0x17]
        0x2000392a:    20ff        .       MOVS     r0,#0xff
        0x2000392c:    3002        .0      ADDS     r0,#2
        0x2000392e:    82a0        ..      STRH     r0,[r4,#0x14]
        0x20003930:    f003f872    ..r.    BL       timer_trig_schedule ; 0x20006a18
        0x20003934:    2000        .       MOVS     r0,#0
        0x20003936:    bd10        ..      POP      {r4,pc}
    $d.16
    __arm_cp.8_0
        0x20003938:    60053000    .0.`    DCD    1610952704
    $t.17
    app_timer_stop
        0x2000393c:    b580        ..      PUSH     {r7,lr}
        0x2000393e:    4601        .F      MOV      r1,r0
        0x20003940:    2010        .       MOVS     r0,#0x10
        0x20003942:    2900        .)      CMP      r1,#0
        0x20003944:    d008        ..      BEQ      0x20003958 ; app_timer_stop + 28
        0x20003946:    7d8a        .}      LDRB     r2,[r1,#0x16]
        0x20003948:    2a00        .*      CMP      r2,#0
        0x2000394a:    d005        ..      BEQ      0x20003958 ; app_timer_stop + 28
        0x2000394c:    2001        .       MOVS     r0,#1
        0x2000394e:    7548        Hu      STRB     r0,[r1,#0x15]
        0x20003950:    75c8        .u      STRB     r0,[r1,#0x17]
        0x20003952:    f003f861    ..a.    BL       timer_trig_schedule ; 0x20006a18
        0x20003956:    2000        .       MOVS     r0,#0
        0x20003958:    bd80        ..      POP      {r7,pc}
        0x2000395a:    0000        ..      MOVS     r0,r0
    bleStackTask_init
        0x2000395c:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x2000395e:    b090        ..      SUB      sp,sp,#0x40
        0x20003960:    481a        .H      LDR      r0,[pc,#104] ; [0x200039cc] = 0x20007888
        0x20003962:    ac0a        ..      ADD      r4,sp,#0x28
        0x20003964:    4621        !F      MOV      r1,r4
        0x20003966:    c82c        ,.      LDM      r0!,{r2,r3,r5}
        0x20003968:    c12c        ,.      STM      r1!,{r2,r3,r5}
        0x2000396a:    c82c        ,.      LDM      r0!,{r2,r3,r5}
        0x2000396c:    c12c        ,.      STM      r1!,{r2,r3,r5}
        0x2000396e:    f000f85f    .._.    BL       bleStack_task_init_MemPool ; 0x20003a30
        0x20003972:    2040        @       MOVS     r0,#0x40
        0x20003974:    210c        .!      MOVS     r1,#0xc
        0x20003976:    4622        "F      MOV      r2,r4
        0x20003978:    f003f8e8    ....    BL       $Ven$TT$L$$osMessageQueueNew ; 0x20006b4c
        0x2000397c:    492b        +I      LDR      r1,[pc,#172] ; [0x20003a2c] = 0x20007d9c
        0x2000397e:    6008        .`      STR      r0,[r1,#0]
        0x20003980:    2800        .(      CMP      r0,#0
        0x20003982:    d018        ..      BEQ      0x200039b6 ; bleStackTask_init + 90
        0x20003984:    4812        .H      LDR      r0,[pc,#72] ; [0x200039d0] = 0x200078a0
        0x20003986:    aa01        ..      ADD      r2,sp,#4
        0x20003988:    4611        .F      MOV      r1,r2
        0x2000398a:    c838        8.      LDM      r0!,{r3-r5}
        0x2000398c:    c138        8.      STM      r1!,{r3-r5}
        0x2000398e:    c838        8.      LDM      r0!,{r3-r5}
        0x20003990:    c138        8.      STM      r1!,{r3-r5}
        0x20003992:    c838        8.      LDM      r0!,{r3-r5}
        0x20003994:    c138        8.      STM      r1!,{r3-r5}
        0x20003996:    480f        .H      LDR      r0,[pc,#60] ; [0x200039d4] = 0x200039e5
        0x20003998:    2100        .!      MOVS     r1,#0
        0x2000399a:    f003f8dd    ....    BL       $Ven$TT$L$$osThreadNew ; 0x20006b58
        0x2000399e:    4604        .F      MOV      r4,r0
        0x200039a0:    480d        .H      LDR      r0,[pc,#52] ; [0x200039d8] = 0x20007d64
        0x200039a2:    6004        .`      STR      r4,[r0,#0]
        0x200039a4:    2c00        .,      CMP      r4,#0
        0x200039a6:    d008        ..      BEQ      0x200039ba ; bleStackTask_init + 94
        0x200039a8:    2080        .       MOVS     r0,#0x80
        0x200039aa:    f003f8db    ....    BL       $Ven$TT$L$$rom_host_interface_set_hci_event_parameter_max_length ; 0x20006b64
        0x200039ae:    480b        .H      LDR      r0,[pc,#44] ; [0x200039dc] = 0x200066a1
        0x200039b0:    f003f8de    ....    BL       $Ven$TT$L$$ble_callback_set_send_msg_to_stack_task_callback ; 0x20006b70
        0x200039b4:    e004        ..      B        0x200039c0 ; bleStackTask_init + 100
        0x200039b6:    2400        .$      MOVS     r4,#0
        0x200039b8:    e004        ..      B        0x200039c4 ; bleStackTask_init + 104
        0x200039ba:    4809        .H      LDR      r0,[pc,#36] ; [0x200039e0] = 0x6009
        0x200039bc:    f003f8de    ....    BL       $Ven$TT$L$$mlog_0 ; 0x20006b7c
        0x200039c0:    1e60        `.      SUBS     r0,r4,#1
        0x200039c2:    4184        .A      SBCS     r4,r4,r0
        0x200039c4:    4620         F      MOV      r0,r4
        0x200039c6:    b010        ..      ADD      sp,sp,#0x40
        0x200039c8:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x200039ca:    46c0        .F      MOV      r8,r8
    $d.3
    __arm_cp.1_0
        0x200039cc:    20007888    .x.     DCD    536901768
    __arm_cp.1_2
        0x200039d0:    200078a0    .x.     DCD    536901792
    __arm_cp.1_3
        0x200039d4:    200039e5    .9.     DCD    536885733
    __arm_cp.1_4
        0x200039d8:    20007d64    d}.     DCD    536903012
    __arm_cp.1_5
        0x200039dc:    200066a1    .f.     DCD    536897185
    __arm_cp.1_6
        0x200039e0:    00006009    .`..    DCD    24585
    $t.10
    bleStack_task
        0x200039e4:    b084        ..      SUB      sp,sp,#0x10
        0x200039e6:    4c10        .L      LDR      r4,[pc,#64] ; [0x20003a28] = 0x6002
        0x200039e8:    4d10        .M      LDR      r5,[pc,#64] ; [0x20003a2c] = 0x20007d9c
        0x200039ea:    e004        ..      B        0x200039f6 ; bleStack_task + 18
        0x200039ec:    1c62        b.      ADDS     r2,r4,#1
        0x200039ee:    b281        ..      UXTH     r1,r0
        0x200039f0:    4610        .F      MOV      r0,r2
        0x200039f2:    f003f8c9    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x200039f6:    6828        (h      LDR      r0,[r5,#0]
        0x200039f8:    2200        ."      MOVS     r2,#0
        0x200039fa:    43d3        .C      MVNS     r3,r2
        0x200039fc:    a901        ..      ADD      r1,sp,#4
        0x200039fe:    f003f8c9    ....    BL       $Ven$TT$L$$osMessageQueueGet ; 0x20006b94
        0x20003a02:    2800        .(      CMP      r0,#0
        0x20003a04:    d1f2        ..      BNE      0x200039ec ; bleStack_task + 8
        0x20003a06:    a801        ..      ADD      r0,sp,#4
        0x20003a08:    f003f8ca    ....    BL       $Ven$TT$L$$rom_st_ctrl_task_handler ; 0x20006ba0
        0x20003a0c:    9902        ..      LDR      r1,[sp,#8]
        0x20003a0e:    2900        .)      CMP      r1,#0
        0x20003a10:    d0f1        ..      BEQ      0x200039f6 ; bleStack_task + 18
        0x20003a12:    9803        ..      LDR      r0,[sp,#0xc]
        0x20003a14:    2800        .(      CMP      r0,#0
        0x20003a16:    d002        ..      BEQ      0x20003a1e ; bleStack_task + 58
        0x20003a18:    f003f8c8    ....    BL       $Ven$TT$L$$osMemoryPoolFree ; 0x20006bac
        0x20003a1c:    e7eb        ..      B        0x200039f6 ; bleStack_task + 18
        0x20003a1e:    4620         F      MOV      r0,r4
        0x20003a20:    f003f8ac    ....    BL       $Ven$TT$L$$mlog_0 ; 0x20006b7c
        0x20003a24:    e7e7        ..      B        0x200039f6 ; bleStack_task + 18
        0x20003a26:    46c0        .F      MOV      r8,r8
    $d.11
    __arm_cp.7_0
        0x20003a28:    00006002    .`..    DCD    24578
    __arm_cp.7_1
        0x20003a2c:    20007d9c    .}.     DCD    536903068
    $t.8
    bleStack_task_init_MemPool
        0x20003a30:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20003a32:    b08c        ..      SUB      sp,sp,#0x30
        0x20003a34:    4814        .H      LDR      r0,[pc,#80] ; [0x20003a88] = 0x200078dc
        0x20003a36:    aa06        ..      ADD      r2,sp,#0x18
        0x20003a38:    4611        .F      MOV      r1,r2
        0x20003a3a:    c838        8.      LDM      r0!,{r3-r5}
        0x20003a3c:    c138        8.      STM      r1!,{r3-r5}
        0x20003a3e:    c838        8.      LDM      r0!,{r3-r5}
        0x20003a40:    c138        8.      STM      r1!,{r3-r5}
        0x20003a42:    2010        .       MOVS     r0,#0x10
        0x20003a44:    2124        $!      MOVS     r1,#0x24
        0x20003a46:    f003f8b7    ....    BL       $Ven$TT$L$$osMemoryPoolNew ; 0x20006bb8
        0x20003a4a:    4910        .I      LDR      r1,[pc,#64] ; [0x20003a8c] = 0x2000ba64
        0x20003a4c:    6008        .`      STR      r0,[r1,#0]
        0x20003a4e:    2800        .(      CMP      r0,#0
        0x20003a50:    d010        ..      BEQ      0x20003a74 ; bleStack_task_init_MemPool + 68
        0x20003a52:    480f        .H      LDR      r0,[pc,#60] ; [0x20003a90] = 0x200078c4
        0x20003a54:    466a        jF      MOV      r2,sp
        0x20003a56:    4611        .F      MOV      r1,r2
        0x20003a58:    c838        8.      LDM      r0!,{r3-r5}
        0x20003a5a:    c138        8.      STM      r1!,{r3-r5}
        0x20003a5c:    c838        8.      LDM      r0!,{r3-r5}
        0x20003a5e:    c138        8.      STM      r1!,{r3-r5}
        0x20003a60:    2008        .       MOVS     r0,#8
        0x20003a62:    2180        .!      MOVS     r1,#0x80
        0x20003a64:    f003f8a8    ....    BL       $Ven$TT$L$$osMemoryPoolNew ; 0x20006bb8
        0x20003a68:    490a        .I      LDR      r1,[pc,#40] ; [0x20003a94] = 0x2000ba60
        0x20003a6a:    6008        .`      STR      r0,[r1,#0]
        0x20003a6c:    2800        .(      CMP      r0,#0
        0x20003a6e:    d004        ..      BEQ      0x20003a7a ; bleStack_task_init_MemPool + 74
        0x20003a70:    b00c        ..      ADD      sp,sp,#0x30
        0x20003a72:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003a74:    2003        .       MOVS     r0,#3
        0x20003a76:    0340        @.      LSLS     r0,r0,#13
        0x20003a78:    e002        ..      B        0x20003a80 ; bleStack_task_init_MemPool + 80
        0x20003a7a:    2003        .       MOVS     r0,#3
        0x20003a7c:    0340        @.      LSLS     r0,r0,#13
        0x20003a7e:    1c40        @.      ADDS     r0,r0,#1
        0x20003a80:    f003f87c    ..|.    BL       $Ven$TT$L$$mlog_0 ; 0x20006b7c
        0x20003a84:    b00c        ..      ADD      sp,sp,#0x30
        0x20003a86:    bdb0        ..      POP      {r4,r5,r7,pc}
    $d.9
    __arm_cp.6_0
        0x20003a88:    200078dc    .x.     DCD    536901852
    __arm_cp.6_1
        0x20003a8c:    2000ba64    d..     DCD    536918628
    __arm_cp.6_2
        0x20003a90:    200078c4    .x.     DCD    536901828
    __arm_cp.6_3
        0x20003a94:    2000ba60    `..     DCD    536918624
    $t.4
    ble_app_timer_create
        0x20003a98:    b580        ..      PUSH     {r7,lr}
        0x20003a9a:    460a        .F      MOV      r2,r1
        0x20003a9c:    2100        .!      MOVS     r1,#0
        0x20003a9e:    f7fffec7    ....    BL       app_timer_create ; 0x20003830
        0x20003aa2:    4241        AB      RSBS     r1,r0,#0
        0x20003aa4:    4148        HA      ADCS     r0,r0,r1
        0x20003aa6:    bd80        ..      POP      {r7,pc}
    ble_app_timer_delete
        0x20003aa8:    b580        ..      PUSH     {r7,lr}
        0x20003aaa:    f7fffeed    ....    BL       app_timer_delete ; 0x20003888
        0x20003aae:    4241        AB      RSBS     r1,r0,#0
        0x20003ab0:    4148        HA      ADCS     r0,r0,r1
        0x20003ab2:    bd80        ..      POP      {r7,pc}
    ble_app_timer_start
        0x20003ab4:    b580        ..      PUSH     {r7,lr}
        0x20003ab6:    f7ffff27    ..'.    BL       app_timer_start ; 0x20003908
        0x20003aba:    4241        AB      RSBS     r1,r0,#0
        0x20003abc:    4148        HA      ADCS     r0,r0,r1
        0x20003abe:    bd80        ..      POP      {r7,pc}
    ble_app_timer_stop
        0x20003ac0:    b580        ..      PUSH     {r7,lr}
        0x20003ac2:    f7ffff3b    ..;.    BL       app_timer_stop ; 0x2000393c
        0x20003ac6:    4241        AB      RSBS     r1,r0,#0
        0x20003ac8:    4148        HA      ADCS     r0,r0,r1
        0x20003aca:    bd80        ..      POP      {r7,pc}
    ble_controller_init
        0x20003acc:    b510        ..      PUSH     {r4,lr}
        0x20003ace:    2400        .$      MOVS     r4,#0
        0x20003ad0:    f000fd4a    ..J.    BL       controller_mem_init ; 0x20004568
        0x20003ad4:    2800        .(      CMP      r0,#0
        0x20003ad6:    d010        ..      BEQ      0x20003afa ; ble_controller_init + 46
        0x20003ad8:    f000fe3a    ..:.    BL       controller_task_init ; 0x20004750
        0x20003adc:    2800        .(      CMP      r0,#0
        0x20003ade:    d00c        ..      BEQ      0x20003afa ; ble_controller_init + 46
        0x20003ae0:    f003f870    ..p.    BL       $Ven$TT$L$$rom_llp_init ; 0x20006bc4
        0x20003ae4:    247d        }$      MOVS     r4,#0x7d
        0x20003ae6:    00a0        ..      LSLS     r0,r4,#2
        0x20003ae8:    f003f872    ..r.    BL       $Ven$TT$L$$rom_llp_set_clock_accuracy_ppm ; 0x20006bd0
        0x20003aec:    0160        `.      LSLS     r0,r4,#5
        0x20003aee:    4904        .I      LDR      r1,[pc,#16] ; [0x20003b00] = 0xdac
        0x20003af0:    f003f874    ..t.    BL       $Ven$TT$L$$rom_llp_sleep_set_time ; 0x20006bdc
        0x20003af4:    f003f878    ..x.    BL       $Ven$TT$L$$rom_llc_init ; 0x20006be8
        0x20003af8:    2401        .$      MOVS     r4,#1
        0x20003afa:    4620         F      MOV      r0,r4
        0x20003afc:    bd10        ..      POP      {r4,pc}
        0x20003afe:    46c0        .F      MOV      r8,r8
    $d.7
    __arm_cp.3_0
        0x20003b00:    00000dac    ....    DCD    3500
    $t.8
    ble_dis_get_attr_len_cb
        0x20003b04:    486a        jH      LDR      r0,[pc,#424] ; [0x20003cb0] = 0x2000bb0e
        0x20003b06:    8800        ..      LDRH     r0,[r0,#0]
        0x20003b08:    1a40        @.      SUBS     r0,r0,r1
        0x20003b0a:    4241        AB      RSBS     r1,r0,#0
        0x20003b0c:    4141        AA      ADCS     r1,r1,r0
        0x20003b0e:    00c8        ..      LSLS     r0,r1,#3
        0x20003b10:    4770        pG      BX       lr
        0x20003b12:    46c0        .F      MOV      r8,r8
    ble_dis_init
        0x20003b14:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20003b16:    b083        ..      SUB      sp,sp,#0xc
        0x20003b18:    4943        CI      LDR      r1,[pc,#268] ; [0x20003c28] = 0x180a
        0x20003b1a:    2500        .%      MOVS     r5,#0
        0x20003b1c:    4b43        CK      LDR      r3,[pc,#268] ; [0x20003c2c] = 0x2000799c
        0x20003b1e:    4628        (F      MOV      r0,r5
        0x20003b20:    462a        *F      MOV      r2,r5
        0x20003b22:    f001f9ab    ....    BL       patch_gatts_api_add_service_start ; 0x20004e7c
        0x20003b26:    2800        .(      CMP      r0,#0
        0x20003b28:    d067        g.      BEQ      0x20003bfa ; ble_dis_init + 230
        0x20003b2a:    9500        ..      STR      r5,[sp,#0]
        0x20003b2c:    9501        ..      STR      r5,[sp,#4]
        0x20003b2e:    2081        .       MOVS     r0,#0x81
        0x20003b30:    0043        C.      LSLS     r3,r0,#1
        0x20003b32:    4c3f        ?L      LDR      r4,[pc,#252] ; [0x20003c30] = 0x2a23
        0x20003b34:    4628        (F      MOV      r0,r5
        0x20003b36:    4621        !F      MOV      r1,r4
        0x20003b38:    462a        *F      MOV      r2,r5
        0x20003b3a:    f001f933    ..3.    BL       patch_gatts_api_add_char ; 0x20004da4
        0x20003b3e:    2800        .(      CMP      r0,#0
        0x20003b40:    d060        `.      BEQ      0x20003c04 ; ble_dis_init + 240
        0x20003b42:    493c        <I      LDR      r1,[pc,#240] ; [0x20003c34] = 0x2000bb0e
        0x20003b44:    8008        ..      STRH     r0,[r1,#0]
        0x20003b46:    200d        .       MOVS     r0,#0xd
        0x20003b48:    9001        ..      STR      r0,[sp,#4]
        0x20003b4a:    483b        ;H      LDR      r0,[pc,#236] ; [0x20003c38] = 0x20007a00
        0x20003b4c:    9000        ..      STR      r0,[sp,#0]
        0x20003b4e:    1c61        a.      ADDS     r1,r4,#1
        0x20003b50:    2000        .       MOVS     r0,#0
        0x20003b52:    2302        .#      MOVS     r3,#2
        0x20003b54:    4602        .F      MOV      r2,r0
        0x20003b56:    f001f925    ..%.    BL       patch_gatts_api_add_char ; 0x20004da4
        0x20003b5a:    2800        .(      CMP      r0,#0
        0x20003b5c:    d057        W.      BEQ      0x20003c0e ; ble_dis_init + 250
        0x20003b5e:    260e        .&      MOVS     r6,#0xe
        0x20003b60:    9601        ..      STR      r6,[sp,#4]
        0x20003b62:    4836        6H      LDR      r0,[pc,#216] ; [0x20003c3c] = 0x20007a10
        0x20003b64:    9000        ..      STR      r0,[sp,#0]
        0x20003b66:    1ca1        ..      ADDS     r1,r4,#2
        0x20003b68:    2500        .%      MOVS     r5,#0
        0x20003b6a:    2302        .#      MOVS     r3,#2
        0x20003b6c:    4628        (F      MOV      r0,r5
        0x20003b6e:    462a        *F      MOV      r2,r5
        0x20003b70:    f001f918    ....    BL       patch_gatts_api_add_char ; 0x20004da4
        0x20003b74:    2800        .(      CMP      r0,#0
        0x20003b76:    d04f        O.      BEQ      0x20003c18 ; ble_dis_init + 260
        0x20003b78:    2712        .'      MOVS     r7,#0x12
        0x20003b7a:    9701        ..      STR      r7,[sp,#4]
        0x20003b7c:    4830        0H      LDR      r0,[pc,#192] ; [0x20003c40] = 0x200079c4
        0x20003b7e:    9000        ..      STR      r0,[sp,#0]
        0x20003b80:    1ce1        ..      ADDS     r1,r4,#3
        0x20003b82:    9602        ..      STR      r6,[sp,#8]
        0x20003b84:    2602        .&      MOVS     r6,#2
        0x20003b86:    4628        (F      MOV      r0,r5
        0x20003b88:    462a        *F      MOV      r2,r5
        0x20003b8a:    4633        3F      MOV      r3,r6
        0x20003b8c:    f001f90a    ....    BL       patch_gatts_api_add_char ; 0x20004da4
        0x20003b90:    9701        ..      STR      r7,[sp,#4]
        0x20003b92:    482c        ,H      LDR      r0,[pc,#176] ; [0x20003c44] = 0x200079d8
        0x20003b94:    9000        ..      STR      r0,[sp,#0]
        0x20003b96:    1d21        !.      ADDS     r1,r4,#4
        0x20003b98:    4628        (F      MOV      r0,r5
        0x20003b9a:    462a        *F      MOV      r2,r5
        0x20003b9c:    4633        3F      MOV      r3,r6
        0x20003b9e:    f001f901    ....    BL       patch_gatts_api_add_char ; 0x20004da4
        0x20003ba2:    9701        ..      STR      r7,[sp,#4]
        0x20003ba4:    4828        (H      LDR      r0,[pc,#160] ; [0x20003c48] = 0x20007a20
        0x20003ba6:    9000        ..      STR      r0,[sp,#0]
        0x20003ba8:    1d61        a.      ADDS     r1,r4,#5
        0x20003baa:    4628        (F      MOV      r0,r5
        0x20003bac:    462a        *F      MOV      r2,r5
        0x20003bae:    4633        3F      MOV      r3,r6
        0x20003bb0:    f001f8f8    ....    BL       patch_gatts_api_add_char ; 0x20004da4
        0x20003bb4:    9701        ..      STR      r7,[sp,#4]
        0x20003bb6:    4825        %H      LDR      r0,[pc,#148] ; [0x20003c4c] = 0x200079ec
        0x20003bb8:    9000        ..      STR      r0,[sp,#0]
        0x20003bba:    1da1        ..      ADDS     r1,r4,#6
        0x20003bbc:    4628        (F      MOV      r0,r5
        0x20003bbe:    462a        *F      MOV      r2,r5
        0x20003bc0:    4633        3F      MOV      r3,r6
        0x20003bc2:    f001f8ef    ....    BL       patch_gatts_api_add_char ; 0x20004da4
        0x20003bc6:    9802        ..      LDR      r0,[sp,#8]
        0x20003bc8:    9001        ..      STR      r0,[sp,#4]
        0x20003bca:    4821        !H      LDR      r0,[pc,#132] ; [0x20003c50] = 0x200079b4
        0x20003bcc:    9000        ..      STR      r0,[sp,#0]
        0x20003bce:    1de1        ..      ADDS     r1,r4,#7
        0x20003bd0:    4628        (F      MOV      r0,r5
        0x20003bd2:    462a        *F      MOV      r2,r5
        0x20003bd4:    4633        3F      MOV      r3,r6
        0x20003bd6:    f001f8e5    ....    BL       patch_gatts_api_add_char ; 0x20004da4
        0x20003bda:    2007        .       MOVS     r0,#7
        0x20003bdc:    9001        ..      STR      r0,[sp,#4]
        0x20003bde:    481d        .H      LDR      r0,[pc,#116] ; [0x20003c54] = 0x20007d14
        0x20003be0:    9000        ..      STR      r0,[sp,#0]
        0x20003be2:    342d        -4      ADDS     r4,r4,#0x2d
        0x20003be4:    4628        (F      MOV      r0,r5
        0x20003be6:    4621        !F      MOV      r1,r4
        0x20003be8:    462a        *F      MOV      r2,r5
        0x20003bea:    4633        3F      MOV      r3,r6
        0x20003bec:    f001f8da    ....    BL       patch_gatts_api_add_char ; 0x20004da4
        0x20003bf0:    f001f90a    ....    BL       patch_gatts_api_add_service_end ; 0x20004e08
        0x20003bf4:    f002fffe    ....    BL       $Ven$TT$L$$rom_gatts_api_get_last_attribute_handle ; 0x20006bf4
        0x20003bf8:    e012        ..      B        0x20003c20 ; ble_dis_init + 268
        0x20003bfa:    a017        ..      ADR      r0,{pc}+0x5e ; 0x20003c58
        0x20003bfc:    f003fe34    ..4.    BL       puts ; 0x20007868
        0x20003c00:    2501        .%      MOVS     r5,#1
        0x20003c02:    e00d        ..      B        0x20003c20 ; ble_dis_init + 268
        0x20003c04:    a014        ..      ADR      r0,{pc}+0x54 ; 0x20003c58
        0x20003c06:    f003fe2f    ../.    BL       puts ; 0x20007868
        0x20003c0a:    2501        .%      MOVS     r5,#1
        0x20003c0c:    e008        ..      B        0x20003c20 ; ble_dis_init + 268
        0x20003c0e:    a012        ..      ADR      r0,{pc}+0x4a ; 0x20003c58
        0x20003c10:    f003fe2a    ..*.    BL       puts ; 0x20007868
        0x20003c14:    2501        .%      MOVS     r5,#1
        0x20003c16:    e003        ..      B        0x20003c20 ; ble_dis_init + 268
        0x20003c18:    a00f        ..      ADR      r0,{pc}+0x40 ; 0x20003c58
        0x20003c1a:    f003fe25    ..%.    BL       puts ; 0x20007868
        0x20003c1e:    2501        .%      MOVS     r5,#1
        0x20003c20:    4628        (F      MOV      r0,r5
        0x20003c22:    b003        ..      ADD      sp,sp,#0xc
        0x20003c24:    bdf0        ..      POP      {r4-r7,pc}
        0x20003c26:    46c0        .F      MOV      r8,r8
    $d.1
    __arm_cp.0_0
        0x20003c28:    0000180a    ....    DCD    6154
    __arm_cp.0_1
        0x20003c2c:    2000799c    .y.     DCD    536902044
    __arm_cp.0_2
        0x20003c30:    00002a23    #*..    DCD    10787
    __arm_cp.0_3
        0x20003c34:    2000bb0e    ...     DCD    536918798
    __arm_cp.0_4
        0x20003c38:    20007a00    .z.     DCD    536902144
    __arm_cp.0_5
        0x20003c3c:    20007a10    .z.     DCD    536902160
    __arm_cp.0_6
        0x20003c40:    200079c4    .y.     DCD    536902084
    __arm_cp.0_7
        0x20003c44:    200079d8    .y.     DCD    536902104
    __arm_cp.0_8
        0x20003c48:    20007a20     z.     DCD    536902176
    __arm_cp.0_9
        0x20003c4c:    200079ec    .y.     DCD    536902124
    __arm_cp.0_10
        0x20003c50:    200079b4    .y.     DCD    536902068
    __arm_cp.0_11
        0x20003c54:    20007d14    .}.     DCD    536902932
        0x20003c58:    20766544    Dev     DCD    544630084
        0x20003c5c:    6f666e69    info    DCD    1868983913
        0x20003c60:    72657320     ser    DCD    1919251232
        0x20003c64:    65636976    vice    DCD    1701013878
        0x20003c68:    696e6920     ini    DCD    1768843552
        0x20003c6c:    61662074    t fa    DCD    1634082932
        0x20003c70:    72756c69    ilur    DCD    1920298089
        0x20003c74:    00002e65    e...    DCD    11877
    $t.10
    ble_dis_read_attr_cb
        0x20003c78:    b510        ..      PUSH     {r4,lr}
        0x20003c7a:    480d        .H      LDR      r0,[pc,#52] ; [0x20003cb0] = 0x2000bb0e
        0x20003c7c:    8800        ..      LDRH     r0,[r0,#0]
        0x20003c7e:    4288        .B      CMP      r0,r1
        0x20003c80:    d114        ..      BNE      0x20003cac ; ble_dis_read_attr_cb + 52
        0x20003c82:    2008        .       MOVS     r0,#8
        0x20003c84:    2b00        .+      CMP      r3,#0
        0x20003c86:    d010        ..      BEQ      0x20003caa ; ble_dis_read_attr_cb + 50
        0x20003c88:    490a        .I      LDR      r1,[pc,#40] ; [0x20003cb4] = 0x2000e140
        0x20003c8a:    680a        .h      LDR      r2,[r1,#0]
        0x20003c8c:    6849        Ih      LDR      r1,[r1,#4]
        0x20003c8e:    7119        .q      STRB     r1,[r3,#4]
        0x20003c90:    701a        .p      STRB     r2,[r3,#0]
        0x20003c92:    0e0c        ..      LSRS     r4,r1,#24
        0x20003c94:    71dc        .q      STRB     r4,[r3,#7]
        0x20003c96:    0c0c        ..      LSRS     r4,r1,#16
        0x20003c98:    719c        .q      STRB     r4,[r3,#6]
        0x20003c9a:    0a09        ..      LSRS     r1,r1,#8
        0x20003c9c:    7159        Yq      STRB     r1,[r3,#5]
        0x20003c9e:    0e11        ..      LSRS     r1,r2,#24
        0x20003ca0:    70d9        .p      STRB     r1,[r3,#3]
        0x20003ca2:    0c11        ..      LSRS     r1,r2,#16
        0x20003ca4:    7099        .p      STRB     r1,[r3,#2]
        0x20003ca6:    0a11        ..      LSRS     r1,r2,#8
        0x20003ca8:    7059        Yp      STRB     r1,[r3,#1]
        0x20003caa:    bd10        ..      POP      {r4,pc}
        0x20003cac:    2000        .       MOVS     r0,#0
        0x20003cae:    bd10        ..      POP      {r4,pc}
    $d.11
    __arm_cp.4_0
        0x20003cb0:    2000bb0e    ...     DCD    536918798
    __arm_cp.4_1
        0x20003cb4:    2000e140    @..     DCD    536928576
    $t.2
    ble_event_handler
        0x20003cb8:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20003cba:    1e40        @.      SUBS     r0,r0,#1
        0x20003cbc:    2862        b(      CMP      r0,#0x62
        0x20003cbe:    d900        ..      BLS      0x20003cc2 ; ble_event_handler + 10
        0x20003cc0:    e1b6        ..      B        0x20004030 ; ble_event_handler + 888
        0x20003cc2:    460c        .F      MOV      r4,r1
        0x20003cc4:    1c4d        M.      ADDS     r5,r1,#1
        0x20003cc6:    0040        @.      LSLS     r0,r0,#1
        0x20003cc8:    4478        xD      ADD      r0,r0,pc
        0x20003cca:    8880        ..      LDRH     r0,[r0,#4]
        0x20003ccc:    0040        @.      LSLS     r0,r0,#1
        0x20003cce:    4487        .D      ADD      pc,pc,r0
    $d.3
        0x20003cd0:    00770062    b.w.    DCD    7798882
        0x20003cd4:    00a1008b    ....    DCD    10551435
        0x20003cd8:    00d200c5    ....    DCD    13762757
        0x20003cdc:    00f500e2    ....    DCD    16056546
        0x20003ce0:    01120103    ....    DCD    17957123
        0x20003ce4:    01af01af    ....    DCD    28246447
        0x20003ce8:    01af01af    ....    DCD    28246447
        0x20003cec:    01af01af    ....    DCD    28246447
        0x20003cf0:    01af01af    ....    DCD    28246447
        0x20003cf4:    01af01af    ....    DCD    28246447
        0x20003cf8:    01af01af    ....    DCD    28246447
        0x20003cfc:    01af01af    ....    DCD    28246447
        0x20003d00:    01af01af    ....    DCD    28246447
        0x20003d04:    01af01af    ....    DCD    28246447
        0x20003d08:    01af01af    ....    DCD    28246447
        0x20003d0c:    012901af    ..).    DCD    19464623
        0x20003d10:    013b012e    ..;.    DCD    20644142
        0x20003d14:    01af0148    H...    DCD    28246344
        0x20003d18:    0155014d    M.U.    DCD    22348109
        0x20003d1c:    01af015b    [...    DCD    28246363
        0x20003d20:    01af01af    ....    DCD    28246447
        0x20003d24:    01af01af    ....    DCD    28246447
        0x20003d28:    01af01af    ....    DCD    28246447
        0x20003d2c:    01af01af    ....    DCD    28246447
        0x20003d30:    01af01af    ....    DCD    28246447
        0x20003d34:    01af01af    ....    DCD    28246447
        0x20003d38:    01af01af    ....    DCD    28246447
        0x20003d3c:    01af01af    ....    DCD    28246447
        0x20003d40:    01af01af    ....    DCD    28246447
        0x20003d44:    01af01af    ....    DCD    28246447
        0x20003d48:    01af01af    ....    DCD    28246447
        0x20003d4c:    016701af    ..g.    DCD    23527855
        0x20003d50:    01af01af    ....    DCD    28246447
        0x20003d54:    0174016f    o.t.    DCD    24379759
        0x20003d58:    017e0179    y.~.    DCD    25035129
        0x20003d5c:    01880183    ....    DCD    25690499
        0x20003d60:    0192018d    ....    DCD    26345869
        0x20003d64:    01af0197    ....    DCD    28246423
        0x20003d68:    01af019c    ....    DCD    28246428
        0x20003d6c:    01af01af    ....    DCD    28246447
        0x20003d70:    01af01af    ....    DCD    28246447
        0x20003d74:    01af01af    ....    DCD    28246447
        0x20003d78:    01af01af    ....    DCD    28246447
        0x20003d7c:    01af01af    ....    DCD    28246447
        0x20003d80:    01af01a1    ....    DCD    28246433
        0x20003d84:    01af01af    ....    DCD    28246447
        0x20003d88:    01af01af    ....    DCD    28246447
        0x20003d8c:    01af01af    ....    DCD    28246447
        0x20003d90:    01a601af    ....    DCD    27656623
        0x20003d94:    01ab        ..      DCW    427
    $t.4
        0x20003d96:    78a0        .x      LDRB     r0,[r4,#2]
        0x20003d98:    78e1        .x      LDRB     r1,[r4,#3]
        0x20003d9a:    0209        ..      LSLS     r1,r1,#8
        0x20003d9c:    1809        ..      ADDS     r1,r1,r0
        0x20003d9e:    48e4        .H      LDR      r0,[pc,#912] ; [0x20004130] = 0xa003
        0x20003da0:    f002fef2    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20003da4:    78a0        .x      LDRB     r0,[r4,#2]
        0x20003da6:    78e1        .x      LDRB     r1,[r4,#3]
        0x20003da8:    0209        ..      LSLS     r1,r1,#8
        0x20003daa:    1809        ..      ADDS     r1,r1,r0
        0x20003dac:    48e1        .H      LDR      r0,[pc,#900] ; [0x20004134] = 0x20007cc2
        0x20003dae:    f003fb11    ....    BL       __0printf$8 ; 0x200073d4
        0x20003db2:    78a0        .x      LDRB     r0,[r4,#2]
        0x20003db4:    78e1        .x      LDRB     r1,[r4,#3]
        0x20003db6:    0209        ..      LSLS     r1,r1,#8
        0x20003db8:    1808        ..      ADDS     r0,r1,r0
        0x20003dba:    49dc        .I      LDR      r1,[pc,#880] ; [0x2000412c] = 0x2000bb06
        0x20003dbc:    8008        ..      STRH     r0,[r1,#0]
        0x20003dbe:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003dc0:    78e2        .x      LDRB     r2,[r4,#3]
        0x20003dc2:    7829        )x      LDRB     r1,[r5,#0]
        0x20003dc4:    48d7        .H      LDR      r0,[pc,#860] ; [0x20004124] = 0xa005
        0x20003dc6:    f002ff1b    ....    BL       $Ven$TT$L$$mlog_88 ; 0x20006c00
        0x20003dca:    7828        (x      LDRB     r0,[r5,#0]
        0x20003dcc:    7869        ix      LDRB     r1,[r5,#1]
        0x20003dce:    0209        ..      LSLS     r1,r1,#8
        0x20003dd0:    1809        ..      ADDS     r1,r1,r0
        0x20003dd2:    78e2        .x      LDRB     r2,[r4,#3]
        0x20003dd4:    48d4        .H      LDR      r0,[pc,#848] ; [0x20004128] = 0x20007c1a
        0x20003dd6:    f003fafd    ....    BL       __0printf$8 ; 0x200073d4
        0x20003dda:    49d4        .I      LDR      r1,[pc,#848] ; [0x2000412c] = 0x2000bb06
        0x20003ddc:    2000        .       MOVS     r0,#0
        0x20003dde:    8008        ..      STRH     r0,[r1,#0]
        0x20003de0:    2101        .!      MOVS     r1,#1
        0x20003de2:    f002ff13    ....    BL       $Ven$TT$L$$rom_gap_api_set_advertising_enable ; 0x20006c0c
        0x20003de6:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003de8:    7920         y      LDRB     r0,[r4,#4]
        0x20003dea:    7961        ay      LDRB     r1,[r4,#5]
        0x20003dec:    0209        ..      LSLS     r1,r1,#8
        0x20003dee:    1809        ..      ADDS     r1,r1,r0
        0x20003df0:    78e3        .x      LDRB     r3,[r4,#3]
        0x20003df2:    782a        *x      LDRB     r2,[r5,#0]
        0x20003df4:    48c5        .H      LDR      r0,[pc,#788] ; [0x2000410c] = 0xa009
        0x20003df6:    f002ff0f    ....    BL       $Ven$TT$L$$mlog_1688 ; 0x20006c18
        0x20003dfa:    7920         y      LDRB     r0,[r4,#4]
        0x20003dfc:    7961        ay      LDRB     r1,[r4,#5]
        0x20003dfe:    0209        ..      LSLS     r1,r1,#8
        0x20003e00:    1809        ..      ADDS     r1,r1,r0
        0x20003e02:    7828        (x      LDRB     r0,[r5,#0]
        0x20003e04:    786a        jx      LDRB     r2,[r5,#1]
        0x20003e06:    0212        ..      LSLS     r2,r2,#8
        0x20003e08:    1812        ..      ADDS     r2,r2,r0
        0x20003e0a:    78e3        .x      LDRB     r3,[r4,#3]
        0x20003e0c:    48c0        .H      LDR      r0,[pc,#768] ; [0x20004110] = 0x20007bc8
        0x20003e0e:    f003fae1    ....    BL       __0printf$8 ; 0x200073d4
        0x20003e12:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003e14:    7920         y      LDRB     r0,[r4,#4]
        0x20003e16:    7961        ay      LDRB     r1,[r4,#5]
        0x20003e18:    0209        ..      LSLS     r1,r1,#8
        0x20003e1a:    1809        ..      ADDS     r1,r1,r0
        0x20003e1c:    48ae        .H      LDR      r0,[pc,#696] ; [0x200040d8] = 0xa00a
        0x20003e1e:    f002feb3    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20003e22:    1d21        !.      ADDS     r1,r4,#4
        0x20003e24:    48ad        .H      LDR      r0,[pc,#692] ; [0x200040dc] = 0xa00b
        0x20003e26:    2208        ."      MOVS     r2,#8
        0x20003e28:    f002fefc    ....    BL       $Ven$TT$L$$mlog_x ; 0x20006c24
        0x20003e2c:    7920         y      LDRB     r0,[r4,#4]
        0x20003e2e:    7961        ay      LDRB     r1,[r4,#5]
        0x20003e30:    0209        ..      LSLS     r1,r1,#8
        0x20003e32:    1808        ..      ADDS     r0,r1,r0
        0x20003e34:    79a1        .y      LDRB     r1,[r4,#6]
        0x20003e36:    79e2        .y      LDRB     r2,[r4,#7]
        0x20003e38:    0212        ..      LSLS     r2,r2,#8
        0x20003e3a:    1851        Q.      ADDS     r1,r2,r1
        0x20003e3c:    0409        ..      LSLS     r1,r1,#16
        0x20003e3e:    180a        ..      ADDS     r2,r1,r0
        0x20003e40:    7a20         z      LDRB     r0,[r4,#8]
        0x20003e42:    7a61        az      LDRB     r1,[r4,#9]
        0x20003e44:    0209        ..      LSLS     r1,r1,#8
        0x20003e46:    1808        ..      ADDS     r0,r1,r0
        0x20003e48:    7aa1        .z      LDRB     r1,[r4,#0xa]
        0x20003e4a:    7ae3        .z      LDRB     r3,[r4,#0xb]
        0x20003e4c:    021b        ..      LSLS     r3,r3,#8
        0x20003e4e:    1859        Y.      ADDS     r1,r3,r1
        0x20003e50:    0409        ..      LSLS     r1,r1,#16
        0x20003e52:    180b        ..      ADDS     r3,r1,r0
        0x20003e54:    a0a2        ..      ADR      r0,{pc}+0x28c ; 0x200040e0
        0x20003e56:    f003fabd    ....    BL       __0printf$8 ; 0x200073d4
        0x20003e5a:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003e5c:    8923        #.      LDRH     r3,[r4,#8]
        0x20003e5e:    88e2        ..      LDRH     r2,[r4,#6]
        0x20003e60:    88a1        ..      LDRH     r1,[r4,#4]
        0x20003e62:    489b        .H      LDR      r0,[pc,#620] ; [0x200040d0] = 0xa00c
        0x20003e64:    f002fee4    ....    BL       $Ven$TT$L$$mlog_161616 ; 0x20006c30
        0x20003e68:    8923        #.      LDRH     r3,[r4,#8]
        0x20003e6a:    88e2        ..      LDRH     r2,[r4,#6]
        0x20003e6c:    88a1        ..      LDRH     r1,[r4,#4]
        0x20003e6e:    4899        .H      LDR      r0,[pc,#612] ; [0x200040d4] = 0x20007c53
        0x20003e70:    f003fab0    ....    BL       __0printf$8 ; 0x200073d4
        0x20003e74:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003e76:    7828        (x      LDRB     r0,[r5,#0]
        0x20003e78:    7869        ix      LDRB     r1,[r5,#1]
        0x20003e7a:    0209        ..      LSLS     r1,r1,#8
        0x20003e7c:    1809        ..      ADDS     r1,r1,r0
        0x20003e7e:    78a8        .x      LDRB     r0,[r5,#2]
        0x20003e80:    78ea        .x      LDRB     r2,[r5,#3]
        0x20003e82:    0212        ..      LSLS     r2,r2,#8
        0x20003e84:    1812        ..      ADDS     r2,r2,r0
        0x20003e86:    79a8        .y      LDRB     r0,[r5,#6]
        0x20003e88:    79eb        .y      LDRB     r3,[r5,#7]
        0x20003e8a:    021b        ..      LSLS     r3,r3,#8
        0x20003e8c:    181b        ..      ADDS     r3,r3,r0
        0x20003e8e:    488f        .H      LDR      r0,[pc,#572] ; [0x200040cc] = 0xa00d
        0x20003e90:    f002fece    ....    BL       $Ven$TT$L$$mlog_161616 ; 0x20006c30
        0x20003e94:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003e96:    78a0        .x      LDRB     r0,[r4,#2]
        0x20003e98:    78e1        .x      LDRB     r1,[r4,#3]
        0x20003e9a:    0209        ..      LSLS     r1,r1,#8
        0x20003e9c:    1809        ..      ADDS     r1,r1,r0
        0x20003e9e:    7963        cy      LDRB     r3,[r4,#5]
        0x20003ea0:    7922        "y      LDRB     r2,[r4,#4]
        0x20003ea2:    4888        .H      LDR      r0,[pc,#544] ; [0x200040c4] = 0xa00e
        0x20003ea4:    f002feb8    ....    BL       $Ven$TT$L$$mlog_1688 ; 0x20006c18
        0x20003ea8:    78a0        .x      LDRB     r0,[r4,#2]
        0x20003eaa:    78e1        .x      LDRB     r1,[r4,#3]
        0x20003eac:    0209        ..      LSLS     r1,r1,#8
        0x20003eae:    1809        ..      ADDS     r1,r1,r0
        0x20003eb0:    7963        cy      LDRB     r3,[r4,#5]
        0x20003eb2:    7922        "y      LDRB     r2,[r4,#4]
        0x20003eb4:    4884        .H      LDR      r0,[pc,#528] ; [0x200040c8] = 0x20007b00
        0x20003eb6:    f003fa8d    ....    BL       __0printf$8 ; 0x200073d4
        0x20003eba:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003ebc:    78e2        .x      LDRB     r2,[r4,#3]
        0x20003ebe:    7829        )x      LDRB     r1,[r5,#0]
        0x20003ec0:    4896        .H      LDR      r0,[pc,#600] ; [0x2000411c] = 0xa007
        0x20003ec2:    f002fe9d    ....    BL       $Ven$TT$L$$mlog_88 ; 0x20006c00
        0x20003ec6:    7828        (x      LDRB     r0,[r5,#0]
        0x20003ec8:    7869        ix      LDRB     r1,[r5,#1]
        0x20003eca:    0209        ..      LSLS     r1,r1,#8
        0x20003ecc:    1809        ..      ADDS     r1,r1,r0
        0x20003ece:    78e2        .x      LDRB     r2,[r4,#3]
        0x20003ed0:    4893        .H      LDR      r0,[pc,#588] ; [0x20004120] = 0x20007b4f
        0x20003ed2:    f003fa7f    ....    BL       __0printf$8 ; 0x200073d4
        0x20003ed6:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003ed8:    7828        (x      LDRB     r0,[r5,#0]
        0x20003eda:    7869        ix      LDRB     r1,[r5,#1]
        0x20003edc:    0209        ..      LSLS     r1,r1,#8
        0x20003ede:    1809        ..      ADDS     r1,r1,r0
        0x20003ee0:    488c        .H      LDR      r0,[pc,#560] ; [0x20004114] = 0xa008
        0x20003ee2:    f002fe51    ..Q.    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20003ee6:    7828        (x      LDRB     r0,[r5,#0]
        0x20003ee8:    7869        ix      LDRB     r1,[r5,#1]
        0x20003eea:    0209        ..      LSLS     r1,r1,#8
        0x20003eec:    1809        ..      ADDS     r1,r1,r0
        0x20003eee:    488a        .H      LDR      r0,[pc,#552] ; [0x20004118] = 0x20007b99
        0x20003ef0:    f003fa70    ..p.    BL       __0printf$8 ; 0x200073d4
        0x20003ef4:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003ef6:    7820         x      LDRB     r0,[r4,#0]
        0x20003ef8:    7861        ax      LDRB     r1,[r4,#1]
        0x20003efa:    0209        ..      LSLS     r1,r1,#8
        0x20003efc:    1809        ..      ADDS     r1,r1,r0
        0x20003efe:    78a0        .x      LDRB     r0,[r4,#2]
        0x20003f00:    78e2        .x      LDRB     r2,[r4,#3]
        0x20003f02:    0212        ..      LSLS     r2,r2,#8
        0x20003f04:    1812        ..      ADDS     r2,r2,r0
        0x20003f06:    4860        `H      LDR      r0,[pc,#384] ; [0x20004088] = 0xa00f
        0x20003f08:    f002fe98    ....    BL       $Ven$TT$L$$mlog_1616 ; 0x20006c3c
        0x20003f0c:    7820         x      LDRB     r0,[r4,#0]
        0x20003f0e:    7861        ax      LDRB     r1,[r4,#1]
        0x20003f10:    0209        ..      LSLS     r1,r1,#8
        0x20003f12:    1809        ..      ADDS     r1,r1,r0
        0x20003f14:    78a0        .x      LDRB     r0,[r4,#2]
        0x20003f16:    78e2        .x      LDRB     r2,[r4,#3]
        0x20003f18:    0212        ..      LSLS     r2,r2,#8
        0x20003f1a:    1812        ..      ADDS     r2,r2,r0
        0x20003f1c:    a05b        [.      ADR      r0,{pc}+0x170 ; 0x2000408c
        0x20003f1e:    f003fa59    ..Y.    BL       __0printf$8 ; 0x200073d4
        0x20003f22:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003f24:    8821        !.      LDRH     r1,[r4,#0]
        0x20003f26:    4856        VH      LDR      r0,[pc,#344] ; [0x20004080] = 0xa010
        0x20003f28:    f002fe2e    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20003f2c:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003f2e:    1ca0        ..      ADDS     r0,r4,#2
        0x20003f30:    2100        .!      MOVS     r1,#0
        0x20003f32:    f002fe89    ....    BL       $Ven$TT$L$$rom_little_endian_read_32 ; 0x20006c48
        0x20003f36:    4601        .F      MOV      r1,r0
        0x20003f38:    7820         x      LDRB     r0,[r4,#0]
        0x20003f3a:    7862        bx      LDRB     r2,[r4,#1]
        0x20003f3c:    0212        ..      LSLS     r2,r2,#8
        0x20003f3e:    1812        ..      ADDS     r2,r2,r0
        0x20003f40:    484e        NH      LDR      r0,[pc,#312] ; [0x2000407c] = 0xa011
        0x20003f42:    f002fe87    ....    BL       $Ven$TT$L$$mlog_3216 ; 0x20006c54
        0x20003f46:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003f48:    1ca0        ..      ADDS     r0,r4,#2
        0x20003f4a:    2100        .!      MOVS     r1,#0
        0x20003f4c:    f002fe7c    ..|.    BL       $Ven$TT$L$$rom_little_endian_read_32 ; 0x20006c48
        0x20003f50:    4601        .F      MOV      r1,r0
        0x20003f52:    7820         x      LDRB     r0,[r4,#0]
        0x20003f54:    7862        bx      LDRB     r2,[r4,#1]
        0x20003f56:    0212        ..      LSLS     r2,r2,#8
        0x20003f58:    1812        ..      ADDS     r2,r2,r0
        0x20003f5a:    4847        GH      LDR      r0,[pc,#284] ; [0x20004078] = 0xa012
        0x20003f5c:    f002fe7a    ..z.    BL       $Ven$TT$L$$mlog_3216 ; 0x20006c54
        0x20003f60:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003f62:    8821        !.      LDRH     r1,[r4,#0]
        0x20003f64:    4843        CH      LDR      r0,[pc,#268] ; [0x20004074] = 0xa013
        0x20003f66:    f002fe0f    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20003f6a:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003f6c:    7820         x      LDRB     r0,[r4,#0]
        0x20003f6e:    7861        ax      LDRB     r1,[r4,#1]
        0x20003f70:    0209        ..      LSLS     r1,r1,#8
        0x20003f72:    1809        ..      ADDS     r1,r1,r0
        0x20003f74:    483e        >H      LDR      r0,[pc,#248] ; [0x20004070] = 0xa014
        0x20003f76:    f002fe07    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20003f7a:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003f7c:    78a2        .x      LDRB     r2,[r4,#2]
        0x20003f7e:    7821        !x      LDRB     r1,[r4,#0]
        0x20003f80:    483a        :H      LDR      r0,[pc,#232] ; [0x2000406c] = 0xa015
        0x20003f82:    f002fe3d    ..=.    BL       $Ven$TT$L$$mlog_88 ; 0x20006c00
        0x20003f86:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003f88:    7820         x      LDRB     r0,[r4,#0]
        0x20003f8a:    7861        ax      LDRB     r1,[r4,#1]
        0x20003f8c:    0209        ..      LSLS     r1,r1,#8
        0x20003f8e:    1809        ..      ADDS     r1,r1,r0
        0x20003f90:    7aa0        .z      LDRB     r0,[r4,#0xa]
        0x20003f92:    7ae2        .z      LDRB     r2,[r4,#0xb]
        0x20003f94:    0212        ..      LSLS     r2,r2,#8
        0x20003f96:    1812        ..      ADDS     r2,r2,r0
        0x20003f98:    4833        3H      LDR      r0,[pc,#204] ; [0x20004068] = 0xa016
        0x20003f9a:    f002fe4f    ..O.    BL       $Ven$TT$L$$mlog_1616 ; 0x20006c3c
        0x20003f9e:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003fa0:    7821        !x      LDRB     r1,[r4,#0]
        0x20003fa2:    78e0        .x      LDRB     r0,[r4,#3]
        0x20003fa4:    4240        @B      RSBS     r0,r0,#0
        0x20003fa6:    b2c2        ..      UXTB     r2,r0
        0x20003fa8:    482e        .H      LDR      r0,[pc,#184] ; [0x20004064] = 0xa021
        0x20003faa:    f002fe29    ..).    BL       $Ven$TT$L$$mlog_88 ; 0x20006c00
        0x20003fae:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003fb0:    7821        !x      LDRB     r1,[r4,#0]
        0x20003fb2:    4829        )H      LDR      r0,[pc,#164] ; [0x20004058] = 0xa022
        0x20003fb4:    f002fde8    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20003fb8:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003fba:    7821        !x      LDRB     r1,[r4,#0]
        0x20003fbc:    4825        %H      LDR      r0,[pc,#148] ; [0x20004054] = 0xa023
        0x20003fbe:    f002fde3    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20003fc2:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003fc4:    7821        !x      LDRB     r1,[r4,#0]
        0x20003fc6:    4822        "H      LDR      r0,[pc,#136] ; [0x20004050] = 0xa024
        0x20003fc8:    f002fdde    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20003fcc:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003fce:    7821        !x      LDRB     r1,[r4,#0]
        0x20003fd0:    481e        .H      LDR      r0,[pc,#120] ; [0x2000404c] = 0xa025
        0x20003fd2:    f002fdd9    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20003fd6:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003fd8:    7821        !x      LDRB     r1,[r4,#0]
        0x20003fda:    481b        .H      LDR      r0,[pc,#108] ; [0x20004048] = 0xa026
        0x20003fdc:    f002fdd4    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20003fe0:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003fe2:    7821        !x      LDRB     r1,[r4,#0]
        0x20003fe4:    4817        .H      LDR      r0,[pc,#92] ; [0x20004044] = 0xa027
        0x20003fe6:    f002fdcf    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20003fea:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003fec:    7821        !x      LDRB     r1,[r4,#0]
        0x20003fee:    4814        .H      LDR      r0,[pc,#80] ; [0x20004040] = 0xa028
        0x20003ff0:    f002fdca    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20003ff4:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003ff6:    7821        !x      LDRB     r1,[r4,#0]
        0x20003ff8:    4810        .H      LDR      r0,[pc,#64] ; [0x2000403c] = 0xa029
        0x20003ffa:    f002fdc5    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20003ffe:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20004000:    7821        !x      LDRB     r1,[r4,#0]
        0x20004002:    480d        .H      LDR      r0,[pc,#52] ; [0x20004038] = 0xa02a
        0x20004004:    f002fdc0    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20004008:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x2000400a:    7821        !x      LDRB     r1,[r4,#0]
        0x2000400c:    4809        .H      LDR      r0,[pc,#36] ; [0x20004034] = 0xa02b
        0x2000400e:    f002fdbb    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20004012:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20004014:    7821        !x      LDRB     r1,[r4,#0]
        0x20004016:    4811        .H      LDR      r0,[pc,#68] ; [0x2000405c] = 0xa02c
        0x20004018:    f002fdb6    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x2000401c:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x2000401e:    7821        !x      LDRB     r1,[r4,#0]
        0x20004020:    480f        .H      LDR      r0,[pc,#60] ; [0x20004060] = 0xa033
        0x20004022:    f002fdb1    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20004026:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20004028:    7821        !x      LDRB     r1,[r4,#0]
        0x2000402a:    4816        .H      LDR      r0,[pc,#88] ; [0x20004084] = 0xa034
        0x2000402c:    f002fdac    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20004030:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20004032:    46c0        .F      MOV      r8,r8
    $d.5
    __arm_cp.1_0
        0x20004034:    0000a02b    +...    DCD    41003
    __arm_cp.1_1
        0x20004038:    0000a02a    *...    DCD    41002
    __arm_cp.1_2
        0x2000403c:    0000a029    )...    DCD    41001
    __arm_cp.1_3
        0x20004040:    0000a028    (...    DCD    41000
    __arm_cp.1_4
        0x20004044:    0000a027    '...    DCD    40999
    __arm_cp.1_5
        0x20004048:    0000a026    &...    DCD    40998
    __arm_cp.1_6
        0x2000404c:    0000a025    %...    DCD    40997
    __arm_cp.1_7
        0x20004050:    0000a024    $...    DCD    40996
    __arm_cp.1_8
        0x20004054:    0000a023    #...    DCD    40995
    __arm_cp.1_9
        0x20004058:    0000a022    "...    DCD    40994
    __arm_cp.1_10
        0x2000405c:    0000a02c    ,...    DCD    41004
    __arm_cp.1_11
        0x20004060:    0000a033    3...    DCD    41011
    __arm_cp.1_12
        0x20004064:    0000a021    !...    DCD    40993
    __arm_cp.1_13
        0x20004068:    0000a016    ....    DCD    40982
    __arm_cp.1_14
        0x2000406c:    0000a015    ....    DCD    40981
    __arm_cp.1_15
        0x20004070:    0000a014    ....    DCD    40980
    __arm_cp.1_16
        0x20004074:    0000a013    ....    DCD    40979
    __arm_cp.1_17
        0x20004078:    0000a012    ....    DCD    40978
    __arm_cp.1_18
        0x2000407c:    0000a011    ....    DCD    40977
    __arm_cp.1_19
        0x20004080:    0000a010    ....    DCD    40976
    __arm_cp.1_20
        0x20004084:    0000a034    4...    DCD    41012
    __arm_cp.1_21
        0x20004088:    0000a00f    ....    DCD    40975
        0x2000408c:    47534d5b    [MSG    DCD    1196641627
        0x20004090:    454c425f    _BLE    DCD    1162625631
        0x20004094:    55544d5f    _MTU    DCD    1431588191
        0x20004098:    4358455f    _EXC    DCD    1129858399
        0x2000409c:    474e4148    HANG    DCD    1196310856
        0x200040a0:    495f4445    ED_I    DCD    1230980165
        0x200040a4:    205d444e    ND]     DCD    542983246
        0x200040a8:    646e6148    Hand    DCD    1684955464
        0x200040ac:    3d20656c    le =    DCD    1025533292
        0x200040b0:    25783020     0x%    DCD    628633632
        0x200040b4:    6d202c58    X, m    DCD    1830825048
        0x200040b8:    3d207574    tu =    DCD    1025537396
        0x200040bc:    0a642520     %d.    DCD    174335264
        0x200040c0:    00000000    ....    DCD    0
    __arm_cp.1_23
        0x200040c4:    0000a00e    ....    DCD    40974
    __arm_cp.1_24
        0x200040c8:    20007b00    .{.     DCD    536902400
    __arm_cp.1_25
        0x200040cc:    0000a00d    ....    DCD    40973
    __arm_cp.1_26
        0x200040d0:    0000a00c    ....    DCD    40972
    __arm_cp.1_27
        0x200040d4:    20007c53    S|.     DCD    536902739
    __arm_cp.1_28
        0x200040d8:    0000a00a    ....    DCD    40970
    __arm_cp.1_29
        0x200040dc:    0000a00b    ....    DCD    40971
        0x200040e0:    47534d5b    [MSG    DCD    1196641627
        0x200040e4:    454c425f    _BLE    DCD    1162625631
        0x200040e8:    5f4c4c5f    _LL_    DCD    1598835807
        0x200040ec:    54414546    FEAT    DCD    1413563718
        0x200040f0:    5f455552    RUE_    DCD    1598379346
        0x200040f4:    5d444e49    IND]    DCD    1564757577
        0x200040f8:    6e614820     Han    DCD    1851869216
        0x200040fc:    20656c64    dle     DCD    543517796
        0x20004100:    7830203d    = 0x    DCD    2016419901
        0x20004104:    0a584c25    %LX.    DCD    173558821
        0x20004108:    00000000    ....    DCD    0
    __arm_cp.1_31
        0x2000410c:    0000a009    ....    DCD    40969
    __arm_cp.1_32
        0x20004110:    20007bc8    .{.     DCD    536902600
    __arm_cp.1_33
        0x20004114:    0000a008    ....    DCD    40968
    __arm_cp.1_34
        0x20004118:    20007b99    .{.     DCD    536902553
    __arm_cp.1_35
        0x2000411c:    0000a007    ....    DCD    40967
    __arm_cp.1_36
        0x20004120:    20007b4f    O{.     DCD    536902479
    __arm_cp.1_37
        0x20004124:    0000a005    ....    DCD    40965
    __arm_cp.1_38
        0x20004128:    20007c1a    .|.     DCD    536902682
    __arm_cp.1_39
        0x2000412c:    2000bb06    ...     DCD    536918790
    __arm_cp.1_40
        0x20004130:    0000a003    ....    DCD    40963
    __arm_cp.1_41
        0x20004134:    20007cc2    .|.     DCD    536902850
    $t.0
    ble_event_init
        0x20004138:    b580        ..      PUSH     {r7,lr}
        0x2000413a:    4802        .H      LDR      r0,[pc,#8] ; [0x20004144] = 0x20003cb9
        0x2000413c:    f002fd90    ....    BL       $Ven$TT$L$$ble_callback_set_host_stack_send_event_callback ; 0x20006c60
        0x20004140:    bd80        ..      POP      {r7,pc}
        0x20004142:    46c0        .F      MOV      r8,r8
    $d.1
    __arm_cp.0_0
        0x20004144:    20003cb9    .<.     DCD    536886457
    $t.4
    ble_gap_get_attr_len_cb
        0x20004148:    482f        /H      LDR      r0,[pc,#188] ; [0x20004208] = 0x2000bb04
        0x2000414a:    8800        ..      LDRH     r0,[r0,#0]
        0x2000414c:    1a41        A.      SUBS     r1,r0,r1
        0x2000414e:    4248        HB      RSBS     r0,r1,#0
        0x20004150:    4148        HA      ADCS     r0,r0,r1
        0x20004152:    4770        pG      BX       lr
    ble_gap_read_attr_cb
        0x20004154:    482c        ,H      LDR      r0,[pc,#176] ; [0x20004208] = 0x2000bb04
        0x20004156:    8800        ..      LDRH     r0,[r0,#0]
        0x20004158:    4288        .B      CMP      r0,r1
        0x2000415a:    d105        ..      BNE      0x20004168 ; ble_gap_read_attr_cb + 20
        0x2000415c:    2001        .       MOVS     r0,#1
        0x2000415e:    2b00        .+      CMP      r3,#0
        0x20004160:    d001        ..      BEQ      0x20004166 ; ble_gap_read_attr_cb + 18
        0x20004162:    2100        .!      MOVS     r1,#0
        0x20004164:    7019        .p      STRB     r1,[r3,#0]
        0x20004166:    4770        pG      BX       lr
        0x20004168:    2000        .       MOVS     r0,#0
        0x2000416a:    4770        pG      BX       lr
    ble_gap_service_init
        0x2000416c:    b5f0        ..      PUSH     {r4-r7,lr}
        0x2000416e:    b083        ..      SUB      sp,sp,#0xc
        0x20004170:    4614        .F      MOV      r4,r2
        0x20004172:    460d        .F      MOV      r5,r1
        0x20004174:    4601        .F      MOV      r1,r0
        0x20004176:    2d20         -      CMP      r5,#0x20
        0x20004178:    d300        ..      BCC      0x2000417c ; ble_gap_service_init + 16
        0x2000417a:    2520         %      MOVS     r5,#0x20
        0x2000417c:    4f1f        .O      LDR      r7,[pc,#124] ; [0x200041fc] = 0x2000ba3c
        0x2000417e:    4638        8F      MOV      r0,r7
        0x20004180:    462a        *F      MOV      r2,r5
        0x20004182:    f7fff899    ....    BL       __aeabi_memcpy ; 0x200032b8
        0x20004186:    0a20         .      LSRS     r0,r4,#8
        0x20004188:    4e1d        .N      LDR      r6,[pc,#116] ; [0x20004200] = 0x2000ba38
        0x2000418a:    7070        pp      STRB     r0,[r6,#1]
        0x2000418c:    7034        4p      STRB     r4,[r6,#0]
        0x2000418e:    2003        .       MOVS     r0,#3
        0x20004190:    02c1        ..      LSLS     r1,r0,#11
        0x20004192:    2000        .       MOVS     r0,#0
        0x20004194:    4b1b        .K      LDR      r3,[pc,#108] ; [0x20004204] = 0x200079a8
        0x20004196:    4602        .F      MOV      r2,r0
        0x20004198:    f000fe70    ..p.    BL       patch_gatts_api_add_service_start ; 0x20004e7c
        0x2000419c:    2401        .$      MOVS     r4,#1
        0x2000419e:    2800        .(      CMP      r0,#0
        0x200041a0:    d028        (.      BEQ      0x200041f4 ; ble_gap_service_init + 136
        0x200041a2:    9700        ..      STR      r7,[sp,#0]
        0x200041a4:    9501        ..      STR      r5,[sp,#4]
        0x200041a6:    2015        .       MOVS     r0,#0x15
        0x200041a8:    0245        E.      LSLS     r5,r0,#9
        0x200041aa:    2000        .       MOVS     r0,#0
        0x200041ac:    2702        .'      MOVS     r7,#2
        0x200041ae:    4629        )F      MOV      r1,r5
        0x200041b0:    4602        .F      MOV      r2,r0
        0x200041b2:    463b        ;F      MOV      r3,r7
        0x200041b4:    f000fdf6    ....    BL       patch_gatts_api_add_char ; 0x20004da4
        0x200041b8:    2800        .(      CMP      r0,#0
        0x200041ba:    d01b        ..      BEQ      0x200041f4 ; ble_gap_service_init + 136
        0x200041bc:    9600        ..      STR      r6,[sp,#0]
        0x200041be:    9701        ..      STR      r7,[sp,#4]
        0x200041c0:    1c69        i.      ADDS     r1,r5,#1
        0x200041c2:    2600        .&      MOVS     r6,#0
        0x200041c4:    4630        0F      MOV      r0,r6
        0x200041c6:    4632        2F      MOV      r2,r6
        0x200041c8:    463b        ;F      MOV      r3,r7
        0x200041ca:    f000fdeb    ....    BL       patch_gatts_api_add_char ; 0x20004da4
        0x200041ce:    2800        .(      CMP      r0,#0
        0x200041d0:    d010        ..      BEQ      0x200041f4 ; ble_gap_service_init + 136
        0x200041d2:    9600        ..      STR      r6,[sp,#0]
        0x200041d4:    9601        ..      STR      r6,[sp,#4]
        0x200041d6:    35a6        .5      ADDS     r5,r5,#0xa6
        0x200041d8:    2081        .       MOVS     r0,#0x81
        0x200041da:    0043        C.      LSLS     r3,r0,#1
        0x200041dc:    4630        0F      MOV      r0,r6
        0x200041de:    4629        )F      MOV      r1,r5
        0x200041e0:    4632        2F      MOV      r2,r6
        0x200041e2:    f000fddf    ....    BL       patch_gatts_api_add_char ; 0x20004da4
        0x200041e6:    2800        .(      CMP      r0,#0
        0x200041e8:    d004        ..      BEQ      0x200041f4 ; ble_gap_service_init + 136
        0x200041ea:    4907        .I      LDR      r1,[pc,#28] ; [0x20004208] = 0x2000bb04
        0x200041ec:    8008        ..      STRH     r0,[r1,#0]
        0x200041ee:    f000fe0b    ....    BL       patch_gatts_api_add_service_end ; 0x20004e08
        0x200041f2:    4634        4F      MOV      r4,r6
        0x200041f4:    4620         F      MOV      r0,r4
        0x200041f6:    b003        ..      ADD      sp,sp,#0xc
        0x200041f8:    bdf0        ..      POP      {r4-r7,pc}
        0x200041fa:    46c0        .F      MOV      r8,r8
    $d.1
    __arm_cp.0_0
        0x200041fc:    2000ba3c    <..     DCD    536918588
    __arm_cp.0_1
        0x20004200:    2000ba38    8..     DCD    536918584
    __arm_cp.0_2
        0x20004204:    200079a8    .y.     DCD    536902056
    __arm_cp.0_3
        0x20004208:    2000bb04    ...     DCD    536918788
    $t.8
    ble_gap_write_attr_cb
        0x2000420c:    2000        .       MOVS     r0,#0
        0x2000420e:    4770        pG      BX       lr
    ble_host_init
        0x20004210:    b570        p.      PUSH     {r4-r6,lr}
        0x20004212:    b082        ..      SUB      sp,sp,#8
        0x20004214:    2501        .%      MOVS     r5,#1
        0x20004216:    02a9        ..      LSLS     r1,r5,#10
        0x20004218:    4818        .H      LDR      r0,[pc,#96] ; [0x2000427c] = 0x2000d080
        0x2000421a:    4a19        .J      LDR      r2,[pc,#100] ; [0x20004280] = 0x2000ba7c
        0x2000421c:    2310        .#      MOVS     r3,#0x10
        0x2000421e:    f000fe8b    ....    BL       patch_gatts_api_init ; 0x20004f38
        0x20004222:    f7fffb9b    ....    BL       bleStackTask_init ; 0x2000395c
        0x20004226:    4604        .F      MOV      r4,r0
        0x20004228:    2800        .(      CMP      r0,#0
        0x2000422a:    d024        $.      BEQ      0x20004276 ; ble_host_init + 102
        0x2000422c:    022e        ..      LSLS     r6,r5,#8
        0x2000422e:    9600        ..      STR      r6,[sp,#0]
        0x20004230:    2110        .!      MOVS     r1,#0x10
        0x20004232:    2228        ("      MOVS     r2,#0x28
        0x20004234:    2308        .#      MOVS     r3,#8
        0x20004236:    4628        (F      MOV      r0,r5
        0x20004238:    f002fd18    ....    BL       $Ven$TT$L$$rom_ble_host_stack_mem_init ; 0x20006c6c
        0x2000423c:    3668        h6      ADDS     r6,r6,#0x68
        0x2000423e:    4811        .H      LDR      r0,[pc,#68] ; [0x20004284] = 0x2000bf18
        0x20004240:    4631        1F      MOV      r1,r6
        0x20004242:    f002fd19    ....    BL       $Ven$TT$L$$rom_host_stack_mem_ctrl_init ; 0x20006c78
        0x20004246:    2033        3       MOVS     r0,#0x33
        0x20004248:    0181        ..      LSLS     r1,r0,#6
        0x2000424a:    480f        .H      LDR      r0,[pc,#60] ; [0x20004288] = 0x2000d480
        0x2000424c:    f002fd1a    ....    BL       $Ven$TT$L$$rom_host_stack_mem_acl_data_mem_init ; 0x20006c84
        0x20004250:    480e        .H      LDR      r0,[pc,#56] ; [0x2000428c] = 0x20008ba0
        0x20004252:    2102        .!      MOVS     r1,#2
        0x20004254:    2230        0"      MOVS     r2,#0x30
        0x20004256:    f002fd1b    ....    BL       $Ven$TT$L$$rom_ble_host_stack_timer_init ; 0x20006c90
        0x2000425a:    f002fd1f    ....    BL       $Ven$TT$L$$rom_gap_api_sm_init ; 0x20006c9c
        0x2000425e:    480c        .H      LDR      r0,[pc,#48] ; [0x20004290] = 0x20003a99
        0x20004260:    f002fd22    ..".    BL       $Ven$TT$L$$ble_callback_set_timer_create_callback ; 0x20006ca8
        0x20004264:    480b        .H      LDR      r0,[pc,#44] ; [0x20004294] = 0x20003ab5
        0x20004266:    f002fd25    ..%.    BL       $Ven$TT$L$$ble_callback_set_timer_start_callback ; 0x20006cb4
        0x2000426a:    480b        .H      LDR      r0,[pc,#44] ; [0x20004298] = 0x20003ac1
        0x2000426c:    f002fd28    ..(.    BL       $Ven$TT$L$$ble_callback_set_send_timer_stop_callback ; 0x20006cc0
        0x20004270:    480a        .H      LDR      r0,[pc,#40] ; [0x2000429c] = 0x20003aa9
        0x20004272:    f002fd2b    ..+.    BL       $Ven$TT$L$$ble_callback_set_send_timer_delete_callback ; 0x20006ccc
        0x20004276:    4620         F      MOV      r0,r4
        0x20004278:    b002        ..      ADD      sp,sp,#8
        0x2000427a:    bd70        p.      POP      {r4-r6,pc}
    $d.1
    __arm_cp.0_0
        0x2000427c:    2000d080    ...     DCD    536924288
    __arm_cp.0_1
        0x20004280:    2000ba7c    |..     DCD    536918652
    __arm_cp.0_2
        0x20004284:    2000bf18    ...     DCD    536919832
    __arm_cp.0_3
        0x20004288:    2000d480    ...     DCD    536925312
    __arm_cp.0_4
        0x2000428c:    20008ba0    ...     DCD    536906656
    __arm_cp.0_5
        0x20004290:    20003a99    .:.     DCD    536885913
    __arm_cp.0_6
        0x20004294:    20003ab5    .:.     DCD    536885941
    __arm_cp.0_7
        0x20004298:    20003ac1    .:.     DCD    536885953
    __arm_cp.0_8
        0x2000429c:    20003aa9    .:.     DCD    536885929
    $t.1
    ble_init
        0x200042a0:    b510        ..      PUSH     {r4,lr}
        0x200042a2:    f002f8a9    ....    BL       rf_init ; 0x200063f8
        0x200042a6:    2400        .$      MOVS     r4,#0
        0x200042a8:    2102        .!      MOVS     r1,#2
        0x200042aa:    4620         F      MOV      r0,r4
        0x200042ac:    f002fc30    ..0.    BL       $Ven$TT$L$$rom_hw_sys_ctrl_enable_peri_int ; 0x20006b10
        0x200042b0:    f7fff9a0    ....    BL       __NVIC_ClearPendingIRQ ; 0x200035f4
        0x200042b4:    f7fff9d0    ....    BL       __NVIC_SetPriority ; 0x20003658
        0x200042b8:    f7fff9ae    ....    BL       __NVIC_EnableIRQ ; 0x20003618
        0x200042bc:    200f        .       MOVS     r0,#0xf
        0x200042be:    2103        .!      MOVS     r1,#3
        0x200042c0:    2204        ."      MOVS     r2,#4
        0x200042c2:    2307        .#      MOVS     r3,#7
        0x200042c4:    f002fd08    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_wakeup_source ; 0x20006cd8
        0x200042c8:    f000f836    ..6.    BL       ble_interface_init ; 0x20004338
        0x200042cc:    f7fffbfe    ....    BL       ble_controller_init ; 0x20003acc
        0x200042d0:    2800        .(      CMP      r0,#0
        0x200042d2:    d007        ..      BEQ      0x200042e4 ; ble_init + 68
        0x200042d4:    f7ffff9c    ....    BL       ble_host_init ; 0x20004210
        0x200042d8:    2800        .(      CMP      r0,#0
        0x200042da:    d005        ..      BEQ      0x200042e8 ; ble_init + 72
        0x200042dc:    f000fd10    ....    BL       patch_ble_init ; 0x20004d00
        0x200042e0:    4620         F      MOV      r0,r4
        0x200042e2:    bd10        ..      POP      {r4,pc}
        0x200042e4:    a003        ..      ADR      r0,{pc}+0x10 ; 0x200042f4
        0x200042e6:    e000        ..      B        0x200042ea ; ble_init + 74
        0x200042e8:    a009        ..      ADR      r0,{pc}+0x28 ; 0x20004310
        0x200042ea:    f003fabd    ....    BL       puts ; 0x20007868
        0x200042ee:    2001        .       MOVS     r0,#1
        0x200042f0:    bd10        ..      POP      {r4,pc}
        0x200042f2:    46c0        .F      MOV      r8,r8
    $d.2
        0x200042f4:    5f656c62    ble_    DCD    1600482402
        0x200042f8:    746e6f63    cont    DCD    1953394531
        0x200042fc:    6c6c6f72    roll    DCD    1819045746
        0x20004300:    695f7265    er_i    DCD    1767862885
        0x20004304:    2074696e    nit     DCD    544500078
        0x20004308:    6f727265    erro    DCD    1869771365
        0x2000430c:    00002e72    r...    DCD    11890
        0x20004310:    5f656c62    ble_    DCD    1600482402
        0x20004314:    74736f68    host    DCD    1953722216
        0x20004318:    696e695f    _ini    DCD    1768843615
        0x2000431c:    72652074    t er    DCD    1919230068
        0x20004320:    2e726f72    ror.    DCD    779251570
        0x20004324:    00000000    ....    DCD    0
    $t.9
    ble_init_is_system_sleep_allowed
        0x20004328:    b580        ..      PUSH     {r7,lr}
        0x2000432a:    f002fcdb    ....    BL       $Ven$TT$L$$rom_llp_is_system_sleep_allowed ; 0x20006ce4
        0x2000432e:    bd80        ..      POP      {r7,pc}
    ble_init_on_system_wakeup_by_llc
        0x20004330:    b580        ..      PUSH     {r7,lr}
        0x20004332:    f002fcdd    ....    BL       $Ven$TT$L$$rom_llp_sleep_on_system_wakeup_by_llc ; 0x20006cf0
        0x20004336:    bd80        ..      POP      {r7,pc}
    ble_interface_init
        0x20004338:    b510        ..      PUSH     {r4,lr}
        0x2000433a:    482b        +H      LDR      r0,[pc,#172] ; [0x200043e8] = 0x2bcd3
        0x2000433c:    f002fcde    ....    BL       $Ven$TT$L$$rom_llp_set_schedule_report_callback ; 0x20006cfc
        0x20004340:    482a        *H      LDR      r0,[pc,#168] ; [0x200043ec] = 0x2bcb3
        0x20004342:    f002fce1    ....    BL       $Ven$TT$L$$rom_llp_set_fragment_start_report_callback ; 0x20006d08
        0x20004346:    482a        *H      LDR      r0,[pc,#168] ; [0x200043f0] = 0x2bcbb
        0x20004348:    f002fce4    ....    BL       $Ven$TT$L$$rom_llp_set_fragment_stop_report_callback ; 0x20006d14
        0x2000434c:    4829        )H      LDR      r0,[pc,#164] ; [0x200043f4] = 0x2bccb
        0x2000434e:    f002fce7    ....    BL       $Ven$TT$L$$rom_llp_set_tx_end_report_callback ; 0x20006d20
        0x20004352:    4829        )H      LDR      r0,[pc,#164] ; [0x200043f8] = 0x2bcc3
        0x20004354:    f002fcea    ....    BL       $Ven$TT$L$$rom_llp_set_rx_end_report_callback ; 0x20006d2c
        0x20004358:    4828        (H      LDR      r0,[pc,#160] ; [0x200043fc] = 0x155b9
        0x2000435a:    f002fced    ....    BL       $Ven$TT$L$$rom_llp_set_rf_rx_calib_callback ; 0x20006d38
        0x2000435e:    4828        (H      LDR      r0,[pc,#160] ; [0x20004400] = 0x15669
        0x20004360:    f002fcf0    ....    BL       $Ven$TT$L$$rom_llp_set_rf_tx_calib_callback ; 0x20006d44
        0x20004364:    4827        'H      LDR      r0,[pc,#156] ; [0x20004404] = 0x22761
        0x20004366:    f002fcf3    ....    BL       $Ven$TT$L$$rom_llc_set_trig_schedule_report_callback ; 0x20006d50
        0x2000436a:    4827        'H      LDR      r0,[pc,#156] ; [0x20004408] = 0x22701
        0x2000436c:    f002fcf6    ....    BL       $Ven$TT$L$$rom_llc_set_timer_enable_callback ; 0x20006d5c
        0x20004370:    4826        &H      LDR      r0,[pc,#152] ; [0x2000440c] = 0x22715
        0x20004372:    f002fcf9    ....    BL       $Ven$TT$L$$rom_llc_set_timer_get_count_callback ; 0x20006d68
        0x20004376:    4826        &H      LDR      r0,[pc,#152] ; [0x20004410] = 0x20b71
        0x20004378:    f002fcfc    ....    BL       $Ven$TT$L$$rom_llc_set_llp_clock_accuracy_callback ; 0x20006d74
        0x2000437c:    4825        %H      LDR      r0,[pc,#148] ; [0x20004414] = 0x2245d
        0x2000437e:    f002fcff    ....    BL       $Ven$TT$L$$rom_llc_set_start_adv_fragment_callback ; 0x20006d80
        0x20004382:    4825        %H      LDR      r0,[pc,#148] ; [0x20004418] = 0x22631
        0x20004384:    f002fd02    ....    BL       $Ven$TT$L$$rom_llc_set_start_scan_fragment_callback ; 0x20006d8c
        0x20004388:    4824        $H      LDR      r0,[pc,#144] ; [0x2000441c] = 0x2259d
        0x2000438a:    f002fd05    ....    BL       $Ven$TT$L$$rom_llc_set_start_init_fragment_callback ; 0x20006d98
        0x2000438e:    4824        $H      LDR      r0,[pc,#144] ; [0x20004420] = 0x2268d
        0x20004390:    f002fd08    ....    BL       $Ven$TT$L$$rom_llc_set_start_slave_fragment_callback ; 0x20006da4
        0x20004394:    4823        #H      LDR      r0,[pc,#140] ; [0x20004424] = 0x225f9
        0x20004396:    f002fd0b    ....    BL       $Ven$TT$L$$rom_llc_set_start_master_fragment_callback ; 0x20006db0
        0x2000439a:    4823        #H      LDR      r0,[pc,#140] ; [0x20004428] = 0x226c5
        0x2000439c:    f002fd0e    ....    BL       $Ven$TT$L$$rom_llc_set_stop_fragment_callback ; 0x20006dbc
        0x200043a0:    4822        "H      LDR      r0,[pc,#136] ; [0x2000442c] = 0x2277d
        0x200043a2:    f002fd11    ....    BL       $Ven$TT$L$$rom_llc_set_update_tx_pdu_callback ; 0x20006dc8
        0x200043a6:    4822        "H      LDR      r0,[pc,#136] ; [0x20004430] = 0x22775
        0x200043a8:    f002fd14    ....    BL       $Ven$TT$L$$rom_llc_set_update_rx_pdu_callback ; 0x20006dd4
        0x200043ac:    4821        !H      LDR      r0,[pc,#132] ; [0x20004434] = 0x20b7d
        0x200043ae:    f002fd17    ....    BL       $Ven$TT$L$$rom_llc_set_get_rssi_callback ; 0x20006de0
        0x200043b2:    4821        !H      LDR      r0,[pc,#132] ; [0x20004438] = 0x3e9d9
        0x200043b4:    f002fd1a    ....    BL       $Ven$TT$L$$rom_hci_set_get_event_paramter_max_length_callback ; 0x20006dec
        0x200043b8:    4820         H      LDR      r0,[pc,#128] ; [0x2000443c] = 0x3e801
        0x200043ba:    f002fd1d    ....    BL       $Ven$TT$L$$rom_hci_set_host_send_command_packet_callback ; 0x20006df8
        0x200043be:    4820         H      LDR      r0,[pc,#128] ; [0x20004440] = 0x3e73d
        0x200043c0:    f002fd20    .. .    BL       $Ven$TT$L$$rom_hci_set_host_send_acl_data_callback ; 0x20006e04
        0x200043c4:    481f        .H      LDR      r0,[pc,#124] ; [0x20004444] = 0x3eac5
        0x200043c6:    f002fd23    ..#.    BL       $Ven$TT$L$$rom_hci_set_controller_report_event_callback ; 0x20006e10
        0x200043ca:    481f        .H      LDR      r0,[pc,#124] ; [0x20004448] = 0x3ea9d
        0x200043cc:    f002fd26    ..&.    BL       $Ven$TT$L$$rom_hci_set_controller_report_acl_data_callback ; 0x20006e1c
        0x200043d0:    2000        .       MOVS     r0,#0
        0x200043d2:    43c4        .C      MVNS     r4,r0
        0x200043d4:    4620         F      MOV      r0,r4
        0x200043d6:    4621        !F      MOV      r1,r4
        0x200043d8:    f002fd26    ..&.    BL       $Ven$TT$L$$rom_controller_event_mask_set_event_mask ; 0x20006e28
        0x200043dc:    4620         F      MOV      r0,r4
        0x200043de:    4621        !F      MOV      r1,r4
        0x200043e0:    f002fd28    ..(.    BL       $Ven$TT$L$$rom_controller_event_mask_set_le_event_mask ; 0x20006e34
        0x200043e4:    bd10        ..      POP      {r4,pc}
        0x200043e6:    46c0        .F      MOV      r8,r8
    $d.1
    __arm_cp.0_0
        0x200043e8:    0002bcd3    ....    DCD    179411
    __arm_cp.0_1
        0x200043ec:    0002bcb3    ....    DCD    179379
    __arm_cp.0_2
        0x200043f0:    0002bcbb    ....    DCD    179387
    __arm_cp.0_3
        0x200043f4:    0002bccb    ....    DCD    179403
    __arm_cp.0_4
        0x200043f8:    0002bcc3    ....    DCD    179395
    __arm_cp.0_5
        0x200043fc:    000155b9    .U..    DCD    87481
    __arm_cp.0_6
        0x20004400:    00015669    iV..    DCD    87657
    __arm_cp.0_7
        0x20004404:    00022761    a'..    DCD    141153
    __arm_cp.0_8
        0x20004408:    00022701    .'..    DCD    141057
    __arm_cp.0_9
        0x2000440c:    00022715    .'..    DCD    141077
    __arm_cp.0_10
        0x20004410:    00020b71    q...    DCD    134001
    __arm_cp.0_11
        0x20004414:    0002245d    ]$..    DCD    140381
    __arm_cp.0_12
        0x20004418:    00022631    1&..    DCD    140849
    __arm_cp.0_13
        0x2000441c:    0002259d    .%..    DCD    140701
    __arm_cp.0_14
        0x20004420:    0002268d    .&..    DCD    140941
    __arm_cp.0_15
        0x20004424:    000225f9    .%..    DCD    140793
    __arm_cp.0_16
        0x20004428:    000226c5    .&..    DCD    140997
    __arm_cp.0_17
        0x2000442c:    0002277d    }'..    DCD    141181
    __arm_cp.0_18
        0x20004430:    00022775    u'..    DCD    141173
    __arm_cp.0_19
        0x20004434:    00020b7d    }...    DCD    134013
    __arm_cp.0_20
        0x20004438:    0003e9d9    ....    DCD    256473
    __arm_cp.0_21
        0x2000443c:    0003e801    ....    DCD    256001
    __arm_cp.0_22
        0x20004440:    0003e73d    =...    DCD    255805
    __arm_cp.0_23
        0x20004444:    0003eac5    ....    DCD    256709
    __arm_cp.0_24
        0x20004448:    0003ea9d    ....    DCD    256669
    $t.0
    ble_peripheral_init
        0x2000444c:    b570        p.      PUSH     {r4-r6,lr}
        0x2000444e:    b08e        ..      SUB      sp,sp,#0x38
        0x20004450:    2002        .       MOVS     r0,#2
        0x20004452:    f002fcf5    ....    BL       $Ven$TT$L$$rom_hal_rf_tx_power_set ; 0x20006e40
        0x20004456:    ac0c        ..      ADD      r4,sp,#0x30
        0x20004458:    4620         F      MOV      r0,r4
        0x2000445a:    f000f83d    ..=.    BL       ble_peripheral_set_device_addr ; 0x200044d8
        0x2000445e:    4620         F      MOV      r0,r4
        0x20004460:    f002fcf4    ....    BL       $Ven$TT$L$$rom_gap_api_set_public_device_address ; 0x20006e4c
        0x20004464:    481a        .H      LDR      r0,[pc,#104] ; [0x200044d0] = 0x200078f4
        0x20004466:    a908        ..      ADD      r1,sp,#0x20
        0x20004468:    460a        .F      MOV      r2,r1
        0x2000446a:    c838        8.      LDM      r0!,{r3-r5}
        0x2000446c:    c238        8.      STM      r2!,{r3-r5}
        0x2000446e:    8803        ..      LDRH     r3,[r0,#0]
        0x20004470:    8013        ..      STRH     r3,[r2,#0]
        0x20004472:    7880        .x      LDRB     r0,[r0,#2]
        0x20004474:    7090        .p      STRB     r0,[r2,#2]
        0x20004476:    2400        .$      MOVS     r4,#0
        0x20004478:    4620         F      MOV      r0,r4
        0x2000447a:    f002fced    ....    BL       $Ven$TT$L$$rom_gap_api_set_advertising_parameters ; 0x20006e58
        0x2000447e:    a907        ..      ADD      r1,sp,#0x1c
        0x20004480:    2006        .       MOVS     r0,#6
        0x20004482:    7088        .p      STRB     r0,[r1,#2]
        0x20004484:    2081        .       MOVS     r0,#0x81
        0x20004486:    0040        @.      LSLS     r0,r0,#1
        0x20004488:    8008        ..      STRH     r0,[r1,#0]
        0x2000448a:    2503        .%      MOVS     r5,#3
        0x2000448c:    4620         F      MOV      r0,r4
        0x2000448e:    462a        *F      MOV      r2,r5
        0x20004490:    f002fce8    ....    BL       $Ven$TT$L$$rom_gap_api_set_advertising_data ; 0x20006e64
        0x20004494:    466e        nF      MOV      r6,sp
        0x20004496:    2009        .       MOVS     r0,#9
        0x20004498:    7070        pp      STRB     r0,[r6,#1]
        0x2000449a:    201a        .       MOVS     r0,#0x1a
        0x2000449c:    7030        0p      STRB     r0,[r6,#0]
        0x2000449e:    1cb0        ..      ADDS     r0,r6,#2
        0x200044a0:    490c        .I      LDR      r1,[pc,#48] ; [0x200044d4] = 0x20007cf4
        0x200044a2:    2219        ."      MOVS     r2,#0x19
        0x200044a4:    f7feff08    ....    BL       __aeabi_memcpy ; 0x200032b8
        0x200044a8:    221b        ."      MOVS     r2,#0x1b
        0x200044aa:    4620         F      MOV      r0,r4
        0x200044ac:    4631        1F      MOV      r1,r6
        0x200044ae:    f002fcdf    ....    BL       $Ven$TT$L$$rom_gap_api_set_scan_response_data ; 0x20006e70
        0x200044b2:    4620         F      MOV      r0,r4
        0x200044b4:    f002fce2    ....    BL       $Ven$TT$L$$rom_gap_api_sm_bond_info_save_by_app_config_only_for_legacy_pair ; 0x20006e7c
        0x200044b8:    2105        .!      MOVS     r1,#5
        0x200044ba:    2210        ."      MOVS     r2,#0x10
        0x200044bc:    4628        (F      MOV      r0,r5
        0x200044be:    f002fce3    ....    BL       $Ven$TT$L$$rom_gap_api_update_pair_para ; 0x20006e88
        0x200044c2:    2101        .!      MOVS     r1,#1
        0x200044c4:    4620         F      MOV      r0,r4
        0x200044c6:    f002fba1    ....    BL       $Ven$TT$L$$rom_gap_api_set_advertising_enable ; 0x20006c0c
        0x200044ca:    b00e        ..      ADD      sp,sp,#0x38
        0x200044cc:    bd70        p.      POP      {r4-r6,pc}
        0x200044ce:    46c0        .F      MOV      r8,r8
    $d.1
    __arm_cp.0_0
        0x200044d0:    200078f4    .x.     DCD    536901876
    __arm_cp.0_1
        0x200044d4:    20007cf4    .|.     DCD    536902900
    $t.2
    ble_peripheral_set_device_addr
        0x200044d8:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x200044da:    b082        ..      SUB      sp,sp,#8
        0x200044dc:    2800        .(      CMP      r0,#0
        0x200044de:    d01f        ..      BEQ      0x20004520 ; ble_peripheral_set_device_addr + 72
        0x200044e0:    4604        .F      MOV      r4,r0
        0x200044e2:    2009        .       MOVS     r0,#9
        0x200044e4:    466d        mF      MOV      r5,sp
        0x200044e6:    2206        ."      MOVS     r2,#6
        0x200044e8:    4629        )F      MOV      r1,r5
        0x200044ea:    f002fcd3    ....    BL       $Ven$TT$L$$rom_hw_efuse_read_bytes ; 0x20006e94
        0x200044ee:    7828        (x      LDRB     r0,[r5,#0]
        0x200044f0:    2800        .(      CMP      r0,#0
        0x200044f2:    d103        ..      BNE      0x200044fc ; ble_peripheral_set_device_addr + 36
        0x200044f4:    4669        iF      MOV      r1,sp
        0x200044f6:    7849        Ix      LDRB     r1,[r1,#1]
        0x200044f8:    2900        .)      CMP      r1,#0
        0x200044fa:    d013        ..      BEQ      0x20004524 ; ble_peripheral_set_device_addr + 76
        0x200044fc:    4669        iF      MOV      r1,sp
        0x200044fe:    794a        Jy      LDRB     r2,[r1,#5]
        0x20004500:    7162        bq      STRB     r2,[r4,#5]
        0x20004502:    784a        Jx      LDRB     r2,[r1,#1]
        0x20004504:    70e2        .p      STRB     r2,[r4,#3]
        0x20004506:    788a        .x      LDRB     r2,[r1,#2]
        0x20004508:    70a2        .p      STRB     r2,[r4,#2]
        0x2000450a:    0902        ..      LSRS     r2,r0,#4
        0x2000450c:    0100        ..      LSLS     r0,r0,#4
        0x2000450e:    1880        ..      ADDS     r0,r0,r2
        0x20004510:    7120         q      STRB     r0,[r4,#4]
        0x20004512:    78c8        .x      LDRB     r0,[r1,#3]
        0x20004514:    223f        ?"      MOVS     r2,#0x3f
        0x20004516:    4010        .@      ANDS     r0,r0,r2
        0x20004518:    7060        `p      STRB     r0,[r4,#1]
        0x2000451a:    7908        .y      LDRB     r0,[r1,#4]
        0x2000451c:    4010        .@      ANDS     r0,r0,r2
        0x2000451e:    7020         p      STRB     r0,[r4,#0]
        0x20004520:    b002        ..      ADD      sp,sp,#8
        0x20004522:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20004524:    4903        .I      LDR      r1,[pc,#12] ; [0x20004534] = 0x20007903
        0x20004526:    2206        ."      MOVS     r2,#6
        0x20004528:    4620         F      MOV      r0,r4
        0x2000452a:    f7fefec5    ....    BL       __aeabi_memcpy ; 0x200032b8
        0x2000452e:    b002        ..      ADD      sp,sp,#8
        0x20004530:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20004532:    46c0        .F      MOV      r8,r8
    $d.3
    __arm_cp.1_0
        0x20004534:    20007903    .y.     DCD    536901891
    $t.5
    ble_profile_init
        0x20004538:    b580        ..      PUSH     {r7,lr}
        0x2000453a:    a004        ..      ADR      r0,{pc}+0x12 ; 0x2000454c
        0x2000453c:    2119        .!      MOVS     r1,#0x19
        0x2000453e:    2200        ."      MOVS     r2,#0
        0x20004540:    f7fffe14    ....    BL       ble_gap_service_init ; 0x2000416c
        0x20004544:    f7fffae6    ....    BL       ble_dis_init ; 0x20003b14
        0x20004548:    bd80        ..      POP      {r7,pc}
        0x2000454a:    46c0        .F      MOV      r8,r8
    $d.6
        0x2000454c:    32335448    HT32    DCD    842224712
        0x20004550:    35373646    F675    DCD    892810822
        0x20004554:    425f3578    x5_B    DCD    1113535864
        0x20004558:    505f454c    LE_P    DCD    1348420940
        0x2000455c:    50495245    ERIP    DCD    1346982469
        0x20004560:    41524548    HERA    DCD    1095910728
        0x20004564:    0000004c    L...    DCD    76
    $t.8
    controller_mem_init
        0x20004568:    b5f0        ..      PUSH     {r4-r7,lr}
        0x2000456a:    b08f        ..      SUB      sp,sp,#0x3c
        0x2000456c:    485e        ^H      LDR      r0,[pc,#376] ; [0x200046e8] = 0x200090d0
        0x2000456e:    2101        .!      MOVS     r1,#1
        0x20004570:    f002fc96    ....    BL       $Ven$TT$L$$rom_llc_legacy_adv_mem_init ; 0x20006ea0
        0x20004574:    2400        .$      MOVS     r4,#0
        0x20004576:    2800        .(      CMP      r0,#0
        0x20004578:    d100        ..      BNE      0x2000457c ; controller_mem_init + 20
        0x2000457a:    e0b1        ..      B        0x200046e0 ; controller_mem_init + 376
        0x2000457c:    485b        [H      LDR      r0,[pc,#364] ; [0x200046ec] = 0x200093a0
        0x2000457e:    f002fc95    ....    BL       $Ven$TT$L$$rom_llc_legacy_scan_mem_init ; 0x20006eac
        0x20004582:    2800        .(      CMP      r0,#0
        0x20004584:    d100        ..      BNE      0x20004588 ; controller_mem_init + 32
        0x20004586:    e0ab        ..      B        0x200046e0 ; controller_mem_init + 376
        0x20004588:    4859        YH      LDR      r0,[pc,#356] ; [0x200046f0] = 0x20009268
        0x2000458a:    f002fc95    ....    BL       $Ven$TT$L$$rom_llc_legacy_initiator_mem_init ; 0x20006eb8
        0x2000458e:    2800        .(      CMP      r0,#0
        0x20004590:    d100        ..      BNE      0x20004594 ; controller_mem_init + 44
        0x20004592:    e0a5        ..      B        0x200046e0 ; controller_mem_init + 376
        0x20004594:    4857        WH      LDR      r0,[pc,#348] ; [0x200046f4] = 0x20008c40
        0x20004596:    2501        .%      MOVS     r5,#1
        0x20004598:    4629        )F      MOV      r1,r5
        0x2000459a:    f002fc93    ....    BL       $Ven$TT$L$$rom_llc_connection_role_mem_init ; 0x20006ec4
        0x2000459e:    2800        .(      CMP      r0,#0
        0x200045a0:    d100        ..      BNE      0x200045a4 ; controller_mem_init + 60
        0x200045a2:    e09d        ..      B        0x200046e0 ; controller_mem_init + 376
        0x200045a4:    2004        .       MOVS     r0,#4
        0x200045a6:    9000        ..      STR      r0,[sp,#0]
        0x200045a8:    4853        SH      LDR      r0,[pc,#332] ; [0x200046f8] = 0x20009618
        0x200045aa:    4a54        TJ      LDR      r2,[pc,#336] ; [0x200046fc] = 0x20009628
        0x200045ac:    2110        .!      MOVS     r1,#0x10
        0x200045ae:    460b        .F      MOV      r3,r1
        0x200045b0:    f002fc8e    ....    BL       $Ven$TT$L$$rom_llc_scheduler_mem_init ; 0x20006ed0
        0x200045b4:    2800        .(      CMP      r0,#0
        0x200045b6:    d100        ..      BNE      0x200045ba ; controller_mem_init + 82
        0x200045b8:    e092        ..      B        0x200046e0 ; controller_mem_init + 376
        0x200045ba:    4851        QH      LDR      r0,[pc,#324] ; [0x20004700] = 0x20009828
        0x200045bc:    2106        .!      MOVS     r1,#6
        0x200045be:    f002fc8d    ....    BL       $Ven$TT$L$$rom_llc_white_list_init ; 0x20006edc
        0x200045c2:    2800        .(      CMP      r0,#0
        0x200045c4:    d100        ..      BNE      0x200045c8 ; controller_mem_init + 96
        0x200045c6:    e08b        ..      B        0x200046e0 ; controller_mem_init + 376
        0x200045c8:    484e        NH      LDR      r0,[pc,#312] ; [0x20004704] = 0x200095b8
        0x200045ca:    2102        .!      MOVS     r1,#2
        0x200045cc:    f002fc8c    ....    BL       $Ven$TT$L$$rom_llc_privacy_init ; 0x20006ee8
        0x200045d0:    2800        .(      CMP      r0,#0
        0x200045d2:    d100        ..      BNE      0x200045d6 ; controller_mem_init + 110
        0x200045d4:    e084        ..      B        0x200046e0 ; controller_mem_init + 376
        0x200045d6:    022c        ,.      LSLS     r4,r5,#8
        0x200045d8:    2000        .       MOVS     r0,#0
        0x200045da:    494b        KI      LDR      r1,[pc,#300] ; [0x20004708] = 0x20009c58
        0x200045dc:    4a4b        KJ      LDR      r2,[pc,#300] ; [0x2000470c] = 0x20009488
        0x200045de:    1813        ..      ADDS     r3,r2,r0
        0x200045e0:    6059        Y`      STR      r1,[r3,#4]
        0x200045e2:    811c        ..      STRH     r4,[r3,#8]
        0x200045e4:    1909        ..      ADDS     r1,r1,r4
        0x200045e6:    301c        .0      ADDS     r0,r0,#0x1c
        0x200045e8:    2870        p(      CMP      r0,#0x70
        0x200045ea:    d1f8        ..      BNE      0x200045de ; controller_mem_init + 118
        0x200045ec:    2000        .       MOVS     r0,#0
        0x200045ee:    4948        HI      LDR      r1,[pc,#288] ; [0x20004710] = 0x2000a468
        0x200045f0:    4a48        HJ      LDR      r2,[pc,#288] ; [0x20004714] = 0x20009638
        0x200045f2:    1813        ..      ADDS     r3,r2,r0
        0x200045f4:    6059        Y`      STR      r1,[r3,#4]
        0x200045f6:    2528        (%      MOVS     r5,#0x28
        0x200045f8:    811d        ..      STRH     r5,[r3,#8]
        0x200045fa:    3128        (1      ADDS     r1,r1,#0x28
        0x200045fc:    301c        .0      ADDS     r0,r0,#0x1c
        0x200045fe:    2870        p(      CMP      r0,#0x70
        0x20004600:    d1f7        ..      BNE      0x200045f2 ; controller_mem_init + 138
        0x20004602:    4845        EH      LDR      r0,[pc,#276] ; [0x20004718] = 0x2000790c
        0x20004604:    c80e        ..      LDM      r0!,{r1-r3}
        0x20004606:    6800        .h      LDR      r0,[r0,#0]
        0x20004608:    900e        ..      STR      r0,[sp,#0x38]
        0x2000460a:    a80b        ..      ADD      r0,sp,#0x2c
        0x2000460c:    c00e        ..      STM      r0!,{r1-r3}
        0x2000460e:    a80b        ..      ADD      r0,sp,#0x2c
        0x20004610:    f002fc70    ..p.    BL       $Ven$TT$L$$rom_llc_adv_channel_pdu_mem_init ; 0x20006ef4
        0x20004614:    2800        .(      CMP      r0,#0
        0x20004616:    d05e        ^.      BEQ      0x200046d6 ; controller_mem_init + 366
        0x20004618:    2000        .       MOVS     r0,#0
        0x2000461a:    4a40        @J      LDR      r2,[pc,#256] ; [0x2000471c] = 0x2000a260
        0x2000461c:    4b40        @K      LDR      r3,[pc,#256] ; [0x20004720] = 0x20009558
        0x2000461e:    1819        ..      ADDS     r1,r3,r0
        0x20004620:    60ca        .`      STR      r2,[r1,#0xc]
        0x20004622:    820c        ..      STRH     r4,[r1,#0x10]
        0x20004624:    2141        A!      MOVS     r1,#0x41
        0x20004626:    0089        ..      LSLS     r1,r1,#2
        0x20004628:    1852        R.      ADDS     r2,r2,r1
        0x2000462a:    3030        00      ADDS     r0,r0,#0x30
        0x2000462c:    2860        `(      CMP      r0,#0x60
        0x2000462e:    d1f6        ..      BNE      0x2000461e ; controller_mem_init + 182
        0x20004630:    9402        ..      STR      r4,[sp,#8]
        0x20004632:    20bf        .       MOVS     r0,#0xbf
        0x20004634:    43c4        .C      MVNS     r4,r0
        0x20004636:    4e3b        ;N      LDR      r6,[pc,#236] ; [0x20004724] = 0x2000a5b8
        0x20004638:    4620         F      MOV      r0,r4
        0x2000463a:    4a3b        ;J      LDR      r2,[pc,#236] ; [0x20004728] = 0x20009768
        0x2000463c:    1817        ..      ADDS     r7,r2,r0
        0x2000463e:    22cc        ."      MOVS     r2,#0xcc
        0x20004640:    50be        .P      STR      r6,[r7,r2]
        0x20004642:    23d0        .#      MOVS     r3,#0xd0
        0x20004644:    52fd        .R      STRH     r5,[r7,r3]
        0x20004646:    362c        ,6      ADDS     r6,r6,#0x2c
        0x20004648:    3030        00      ADDS     r0,r0,#0x30
        0x2000464a:    d1f6        ..      BNE      0x2000463a ; controller_mem_init + 210
        0x2000464c:    9201        ..      STR      r2,[sp,#4]
        0x2000464e:    2600        .&      MOVS     r6,#0
        0x20004650:    4f36        6O      LDR      r7,[pc,#216] ; [0x2000472c] = 0x2000a058
        0x20004652:    4837        7H      LDR      r0,[pc,#220] ; [0x20004730] = 0x200094f8
        0x20004654:    1980        ..      ADDS     r0,r0,r6
        0x20004656:    60c7        .`      STR      r7,[r0,#0xc]
        0x20004658:    460a        .F      MOV      r2,r1
        0x2000465a:    9902        ..      LDR      r1,[sp,#8]
        0x2000465c:    8201        ..      STRH     r1,[r0,#0x10]
        0x2000465e:    4611        .F      MOV      r1,r2
        0x20004660:    18bf        ..      ADDS     r7,r7,r2
        0x20004662:    3630        06      ADDS     r6,r6,#0x30
        0x20004664:    2e60        `.      CMP      r6,#0x60
        0x20004666:    d1f4        ..      BNE      0x20004652 ; controller_mem_init + 234
        0x20004668:    4932        2I      LDR      r1,[pc,#200] ; [0x20004734] = 0x2000a508
        0x2000466a:    4e33        3N      LDR      r6,[pc,#204] ; [0x20004738] = 0x200096a8
        0x2000466c:    9a01        ..      LDR      r2,[sp,#4]
        0x2000466e:    1930        0.      ADDS     r0,r6,r4
        0x20004670:    5081        .P      STR      r1,[r0,r2]
        0x20004672:    52c5        .R      STRH     r5,[r0,r3]
        0x20004674:    312c        ,1      ADDS     r1,r1,#0x2c
        0x20004676:    3430        04      ADDS     r4,r4,#0x30
        0x20004678:    d1f9        ..      BNE      0x2000466e ; controller_mem_init + 262
        0x2000467a:    4930        0I      LDR      r1,[pc,#192] ; [0x2000473c] = 0x2000791c
        0x2000467c:    a803        ..      ADD      r0,sp,#0xc
        0x2000467e:    4602        .F      MOV      r2,r0
        0x20004680:    c978        x.      LDM      r1!,{r3-r6}
        0x20004682:    c278        x.      STM      r2!,{r3-r6}
        0x20004684:    c978        x.      LDM      r1!,{r3-r6}
        0x20004686:    c278        x.      STM      r2!,{r3-r6}
        0x20004688:    f002fc3a    ..:.    BL       $Ven$TT$L$$rom_llc_data_channel_pdu_mem_init ; 0x20006f00
        0x2000468c:    2800        .(      CMP      r0,#0
        0x2000468e:    d024        $.      BEQ      0x200046da ; controller_mem_init + 370
        0x20004690:    2000        .       MOVS     r0,#0
        0x20004692:    492b        +I      LDR      r1,[pc,#172] ; [0x20004740] = 0x20009858
        0x20004694:    4a2b        +J      LDR      r2,[pc,#172] ; [0x20004744] = 0x20008c00
        0x20004696:    9c02        ..      LDR      r4,[sp,#8]
        0x20004698:    1813        ..      ADDS     r3,r2,r0
        0x2000469a:    819c        ..      STRH     r4,[r3,#0xc]
        0x2000469c:    6099        .`      STR      r1,[r3,#8]
        0x2000469e:    1909        ..      ADDS     r1,r1,r4
        0x200046a0:    3020         0      ADDS     r0,r0,#0x20
        0x200046a2:    2840        @(      CMP      r0,#0x40
        0x200046a4:    d1f8        ..      BNE      0x20004698 ; controller_mem_init + 304
        0x200046a6:    4827        'H      LDR      r0,[pc,#156] ; [0x20004744] = 0x20008c00
        0x200046a8:    2202        ."      MOVS     r2,#2
        0x200046aa:    4621        !F      MOV      r1,r4
        0x200046ac:    f002fc2e    ....    BL       $Ven$TT$L$$rom_llc_acl_data_mem_init ; 0x20006f0c
        0x200046b0:    2800        .(      CMP      r0,#0
        0x200046b2:    d014        ..      BEQ      0x200046de ; controller_mem_init + 374
        0x200046b4:    2000        .       MOVS     r0,#0
        0x200046b6:    4924        $I      LDR      r1,[pc,#144] ; [0x20004748] = 0x20009a58
        0x200046b8:    4a24        $J      LDR      r2,[pc,#144] ; [0x2000474c] = 0x200090b0
        0x200046ba:    5011        .P      STR      r1,[r2,r0]
        0x200046bc:    1813        ..      ADDS     r3,r2,r0
        0x200046be:    809c        ..      STRH     r4,[r3,#4]
        0x200046c0:    1909        ..      ADDS     r1,r1,r4
        0x200046c2:    3010        .0      ADDS     r0,r0,#0x10
        0x200046c4:    2820         (      CMP      r0,#0x20
        0x200046c6:    d1f8        ..      BNE      0x200046ba ; controller_mem_init + 338
        0x200046c8:    4820         H      LDR      r0,[pc,#128] ; [0x2000474c] = 0x200090b0
        0x200046ca:    2202        ."      MOVS     r2,#2
        0x200046cc:    4621        !F      MOV      r1,r4
        0x200046ce:    f002fc23    ..#.    BL       $Ven$TT$L$$rom_llc_hci_command_mem_init ; 0x20006f18
        0x200046d2:    4604        .F      MOV      r4,r0
        0x200046d4:    e004        ..      B        0x200046e0 ; controller_mem_init + 376
        0x200046d6:    2400        .$      MOVS     r4,#0
        0x200046d8:    e002        ..      B        0x200046e0 ; controller_mem_init + 376
        0x200046da:    2400        .$      MOVS     r4,#0
        0x200046dc:    e000        ..      B        0x200046e0 ; controller_mem_init + 376
        0x200046de:    2400        .$      MOVS     r4,#0
        0x200046e0:    4620         F      MOV      r0,r4
        0x200046e2:    b00f        ..      ADD      sp,sp,#0x3c
        0x200046e4:    bdf0        ..      POP      {r4-r7,pc}
        0x200046e6:    46c0        .F      MOV      r8,r8
    $d.9
    __arm_cp.4_0
        0x200046e8:    200090d0    ...     DCD    536907984
    __arm_cp.4_1
        0x200046ec:    200093a0    ...     DCD    536908704
    __arm_cp.4_2
        0x200046f0:    20009268    h..     DCD    536908392
    __arm_cp.4_3
        0x200046f4:    20008c40    @..     DCD    536906816
    __arm_cp.4_4
        0x200046f8:    20009618    ...     DCD    536909336
    __arm_cp.4_5
        0x200046fc:    20009628    (..     DCD    536909352
    __arm_cp.4_6
        0x20004700:    20009828    (..     DCD    536909864
    __arm_cp.4_7
        0x20004704:    200095b8    ...     DCD    536909240
    __arm_cp.4_8
        0x20004708:    20009c58    X..     DCD    536910936
    __arm_cp.4_9
        0x2000470c:    20009488    ...     DCD    536908936
    __arm_cp.4_10
        0x20004710:    2000a468    h..     DCD    536913000
    __arm_cp.4_11
        0x20004714:    20009638    8..     DCD    536909368
    __arm_cp.4_12
        0x20004718:    2000790c    .y.     DCD    536901900
    __arm_cp.4_13
        0x2000471c:    2000a260    `..     DCD    536912480
    __arm_cp.4_14
        0x20004720:    20009558    X..     DCD    536909144
    __arm_cp.4_15
        0x20004724:    2000a5b8    ...     DCD    536913336
    __arm_cp.4_16
        0x20004728:    20009768    h..     DCD    536909672
    __arm_cp.4_17
        0x2000472c:    2000a058    X..     DCD    536911960
    __arm_cp.4_18
        0x20004730:    200094f8    ...     DCD    536909048
    __arm_cp.4_19
        0x20004734:    2000a508    ...     DCD    536913160
    __arm_cp.4_20
        0x20004738:    200096a8    ...     DCD    536909480
    __arm_cp.4_21
        0x2000473c:    2000791c    .y.     DCD    536901916
    __arm_cp.4_22
        0x20004740:    20009858    X..     DCD    536909912
    __arm_cp.4_23
        0x20004744:    20008c00    ...     DCD    536906752
    __arm_cp.4_24
        0x20004748:    20009a58    X..     DCD    536910424
    __arm_cp.4_25
        0x2000474c:    200090b0    ...     DCD    536907952
    $t.0
    controller_task_init
        0x20004750:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20004752:    b090        ..      SUB      sp,sp,#0x40
        0x20004754:    4818        .H      LDR      r0,[pc,#96] ; [0x200047b8] = 0x20007960
        0x20004756:    aa0a        ..      ADD      r2,sp,#0x28
        0x20004758:    4611        .F      MOV      r1,r2
        0x2000475a:    c838        8.      LDM      r0!,{r3-r5}
        0x2000475c:    c138        8.      STM      r1!,{r3-r5}
        0x2000475e:    c838        8.      LDM      r0!,{r3-r5}
        0x20004760:    c138        8.      STM      r1!,{r3-r5}
        0x20004762:    2040        @       MOVS     r0,#0x40
        0x20004764:    2108        .!      MOVS     r1,#8
        0x20004766:    f002f9f1    ....    BL       $Ven$TT$L$$osMessageQueueNew ; 0x20006b4c
        0x2000476a:    4914        .I      LDR      r1,[pc,#80] ; [0x200047bc] = 0x2000a6f4
        0x2000476c:    6008        .`      STR      r0,[r1,#0]
        0x2000476e:    2800        .(      CMP      r0,#0
        0x20004770:    d015        ..      BEQ      0x2000479e ; controller_task_init + 78
        0x20004772:    4813        .H      LDR      r0,[pc,#76] ; [0x200047c0] = 0x2000793c
        0x20004774:    aa01        ..      ADD      r2,sp,#4
        0x20004776:    4611        .F      MOV      r1,r2
        0x20004778:    c838        8.      LDM      r0!,{r3-r5}
        0x2000477a:    c138        8.      STM      r1!,{r3-r5}
        0x2000477c:    c838        8.      LDM      r0!,{r3-r5}
        0x2000477e:    c138        8.      STM      r1!,{r3-r5}
        0x20004780:    c838        8.      LDM      r0!,{r3-r5}
        0x20004782:    c138        8.      STM      r1!,{r3-r5}
        0x20004784:    480f        .H      LDR      r0,[pc,#60] ; [0x200047c4] = 0x20004885
        0x20004786:    2100        .!      MOVS     r1,#0
        0x20004788:    f002f9e6    ....    BL       $Ven$TT$L$$osThreadNew ; 0x20006b58
        0x2000478c:    4604        .F      MOV      r4,r0
        0x2000478e:    480e        .H      LDR      r0,[pc,#56] ; [0x200047c8] = 0x2000a6bc
        0x20004790:    6004        .`      STR      r4,[r0,#0]
        0x20004792:    2c00        .,      CMP      r4,#0
        0x20004794:    d008        ..      BEQ      0x200047a8 ; controller_task_init + 88
        0x20004796:    480d        .H      LDR      r0,[pc,#52] ; [0x200047cc] = 0x20006785
        0x20004798:    f002fbc4    ....    BL       $Ven$TT$L$$rom_llc_set_send_msg_to_llc_task_callback ; 0x20006f24
        0x2000479c:    e007        ..      B        0x200047ae ; controller_task_init + 94
        0x2000479e:    a010        ..      ADR      r0,{pc}+0x42 ; 0x200047e0
        0x200047a0:    f003f862    ..b.    BL       puts ; 0x20007868
        0x200047a4:    2400        .$      MOVS     r4,#0
        0x200047a6:    e004        ..      B        0x200047b2 ; controller_task_init + 98
        0x200047a8:    a009        ..      ADR      r0,{pc}+0x28 ; 0x200047d0
        0x200047aa:    f003f85d    ..].    BL       puts ; 0x20007868
        0x200047ae:    1e60        `.      SUBS     r0,r4,#1
        0x200047b0:    4184        .A      SBCS     r4,r4,r0
        0x200047b2:    4620         F      MOV      r0,r4
        0x200047b4:    b010        ..      ADD      sp,sp,#0x40
        0x200047b6:    bdb0        ..      POP      {r4,r5,r7,pc}
    $d.1
    __arm_cp.0_0
        0x200047b8:    20007960    `y.     DCD    536901984
    __arm_cp.0_1
        0x200047bc:    2000a6f4    ...     DCD    536913652
    __arm_cp.0_2
        0x200047c0:    2000793c    <y.     DCD    536901948
    __arm_cp.0_3
        0x200047c4:    20004885    .H.     DCD    536889477
    __arm_cp.0_4
        0x200047c8:    2000a6bc    ...     DCD    536913596
    __arm_cp.0_5
        0x200047cc:    20006785    .g.     DCD    536897413
        0x200047d0:    54636c6c    llcT    DCD    1415801964
        0x200047d4:    496b7361    askI    DCD    1231778657
        0x200047d8:    554e2064    d NU    DCD    1431183460
        0x200047dc:    00004c4c    LL..    DCD    19532
        0x200047e0:    54636c6c    llcT    DCD    1415801964
        0x200047e4:    4d6b7361    askM    DCD    1298887521
        0x200047e8:    75516773    sgQu    DCD    1968269171
        0x200047ec:    49657565    eueI    DCD    1231385957
        0x200047f0:    554e2064    d NU    DCD    1431183460
        0x200047f4:    00004c4c    LL..    DCD    19532
    $t.10
    err_debug_init
        0x200047f8:    4803        .H      LDR      r0,[pc,#12] ; [0x20004808] = 0x20000b30
        0x200047fa:    4904        .I      LDR      r1,[pc,#16] ; [0x2000480c] = 0x20006835
        0x200047fc:    6001        .`      STR      r1,[r0,#0]
        0x200047fe:    4804        .H      LDR      r0,[pc,#16] ; [0x20004810] = 0x20000b2c
        0x20004800:    4904        .I      LDR      r1,[pc,#16] ; [0x20004814] = 0x20004965
        0x20004802:    6001        .`      STR      r1,[r0,#0]
        0x20004804:    4770        pG      BX       lr
        0x20004806:    46c0        .F      MOV      r8,r8
    $d.11
    __arm_cp.5_0
        0x20004808:    20000b30    0..     DCD    536873776
    __arm_cp.5_1
        0x2000480c:    20006835    5h.     DCD    536897589
    __arm_cp.5_2
        0x20004810:    20000b2c    ,..     DCD    536873772
    __arm_cp.5_3
        0x20004814:    20004965    eI.     DCD    536889701
    $t.16
    fputc
        0x20004818:    b510        ..      PUSH     {r4,lr}
        0x2000481a:    b082        ..      SUB      sp,sp,#8
        0x2000481c:    4604        .F      MOV      r4,r0
        0x2000481e:    480d        .H      LDR      r0,[pc,#52] ; [0x20004854] = 0x2000ba68
        0x20004820:    6801        .h      LDR      r1,[r0,#0]
        0x20004822:    2900        .)      CMP      r1,#0
        0x20004824:    d00b        ..      BEQ      0x2000483e ; fputc + 38
        0x20004826:    480c        .H      LDR      r0,[pc,#48] ; [0x20004858] = 0x2000bb08
        0x20004828:    8802        ..      LDRH     r2,[r0,#0]
        0x2000482a:    680b        .h      LDR      r3,[r1,#0]
        0x2000482c:    549c        .T      STRB     r4,[r3,r2]
        0x2000482e:    888b        ..      LDRH     r3,[r1,#4]
        0x20004830:    1c51        Q.      ADDS     r1,r2,#1
        0x20004832:    b28a        ..      UXTH     r2,r1
        0x20004834:    429a        .B      CMP      r2,r3
        0x20004836:    d300        ..      BCC      0x2000483a ; fputc + 34
        0x20004838:    2100        .!      MOVS     r1,#0
        0x2000483a:    8001        ..      STRH     r1,[r0,#0]
        0x2000483c:    e006        ..      B        0x2000484c ; fputc + 52
        0x2000483e:    a901        ..      ADD      r1,sp,#4
        0x20004840:    700c        .p      STRB     r4,[r1,#0]
        0x20004842:    4806        .H      LDR      r0,[pc,#24] ; [0x2000485c] = 0x2000ba70
        0x20004844:    6800        .h      LDR      r0,[r0,#0]
        0x20004846:    2201        ."      MOVS     r2,#1
        0x20004848:    f002fb72    ..r.    BL       $Ven$TT$L$$rom_hw_uart_transmit ; 0x20006f30
        0x2000484c:    4620         F      MOV      r0,r4
        0x2000484e:    b002        ..      ADD      sp,sp,#8
        0x20004850:    bd10        ..      POP      {r4,pc}
        0x20004852:    46c0        .F      MOV      r8,r8
    $d.17
    __arm_cp.8_0
        0x20004854:    2000ba68    h..     DCD    536918632
    __arm_cp.8_1
        0x20004858:    2000bb08    ...     DCD    536918792
    __arm_cp.8_2
        0x2000485c:    2000ba70    p..     DCD    536918640
    $t.0
    idle_task_init
        0x20004860:    4801        .H      LDR      r0,[pc,#4] ; [0x20004868] = 0x20000b28
        0x20004862:    4902        .I      LDR      r1,[pc,#8] ; [0x2000486c] = 0x20004871
        0x20004864:    6001        .`      STR      r1,[r0,#0]
        0x20004866:    4770        pG      BX       lr
    $d.1
    __arm_cp.0_0
        0x20004868:    20000b28    (..     DCD    536873768
    __arm_cp.0_1
        0x2000486c:    20004871    qH.     DCD    536889457
    $t.2
    idle_task_sys_idle_process
        0x20004870:    b580        ..      PUSH     {r7,lr}
        0x20004872:    f7feff5d    ..].    BL       app_debug_printf ; 0x20003730
        0x20004876:    207d        }       MOVS     r0,#0x7d
        0x20004878:    0080        ..      LSLS     r0,r0,#2
        0x2000487a:    f002f8f5    ....    BL       $Ven$TT$L$$rom_delay_us ; 0x20006a68
        0x2000487e:    f7fefc53    ..S.    BL       lpwr_ctrl_goto_sleep ; 0x20003128
        0x20004882:    bd80        ..      POP      {r7,pc}
    llc_task
        0x20004884:    b082        ..      SUB      sp,sp,#8
        0x20004886:    4d0a        .M      LDR      r5,[pc,#40] ; [0x200048b0] = 0x2000a6f4
        0x20004888:    a40a        ..      ADR      r4,{pc}+0x2c ; 0x200048b4
        0x2000488a:    e003        ..      B        0x20004894 ; llc_task + 16
        0x2000488c:    4601        .F      MOV      r1,r0
        0x2000488e:    4620         F      MOV      r0,r4
        0x20004890:    f002fda0    ....    BL       __0printf$8 ; 0x200073d4
        0x20004894:    6828        (h      LDR      r0,[r5,#0]
        0x20004896:    2200        ."      MOVS     r2,#0
        0x20004898:    43d3        .C      MVNS     r3,r2
        0x2000489a:    4669        iF      MOV      r1,sp
        0x2000489c:    f002f97a    ..z.    BL       $Ven$TT$L$$osMessageQueueGet ; 0x20006b94
        0x200048a0:    2800        .(      CMP      r0,#0
        0x200048a2:    d1f3        ..      BNE      0x2000488c ; llc_task + 8
        0x200048a4:    9901        ..      LDR      r1,[sp,#4]
        0x200048a6:    9800        ..      LDR      r0,[sp,#0]
        0x200048a8:    f002fb48    ..H.    BL       $Ven$TT$L$$rom_llc_on_llc_task_received_msg ; 0x20006f3c
        0x200048ac:    e7f2        ..      B        0x20004894 ; llc_task + 16
        0x200048ae:    46c0        .F      MOV      r8,r8
    $d.3
    __arm_cp.1_0
        0x200048b0:    2000a6f4    ...     DCD    536913652
        0x200048b4:    5f636c6c    llc_    DCD    1600351340
        0x200048b8:    6b736174    task    DCD    1802723700
        0x200048bc:    74656720     get    DCD    1952802592
        0x200048c0:    67736d20     msg    DCD    1735617824
        0x200048c4:    69616620     fai    DCD    1767990816
        0x200048c8:    3a64656c    led:    DCD    979658092
        0x200048cc:    000a7525    %u..    DCD    685349
    $t.16
    lpwr_after_wakeup
        0x200048d0:    b580        ..      PUSH     {r7,lr}
        0x200048d2:    f7feff59    ..Y.    BL       app_debug_reinit ; 0x20003788
        0x200048d6:    f002fb37    ..7.    BL       $Ven$TT$L$$OS_Tick_Enable ; 0x20006f48
        0x200048da:    bd80        ..      POP      {r7,pc}
    lpwr_before_sleep
        0x200048dc:    b510        ..      PUSH     {r4,lr}
        0x200048de:    2400        .$      MOVS     r4,#0
        0x200048e0:    f7fffd22    ..".    BL       ble_init_is_system_sleep_allowed ; 0x20004328
        0x200048e4:    2800        .(      CMP      r0,#0
        0x200048e6:    d008        ..      BEQ      0x200048fa ; lpwr_before_sleep + 30
        0x200048e8:    f7feff14    ....    BL       app_debug_print_complete ; 0x20003714
        0x200048ec:    2800        .(      CMP      r0,#0
        0x200048ee:    d004        ..      BEQ      0x200048fa ; lpwr_before_sleep + 30
        0x200048f0:    f7fefec6    ....    BL       app_debug_deinit ; 0x20003680
        0x200048f4:    f002fb2e    ....    BL       $Ven$TT$L$$OS_Tick_Disable ; 0x20006f54
        0x200048f8:    2401        .$      MOVS     r4,#1
        0x200048fa:    4620         F      MOV      r0,r4
        0x200048fc:    bd10        ..      POP      {r4,pc}
        0x200048fe:    0000        ..      MOVS     r0,r0
    lpwr_ctrl_init
        0x20004900:    b510        ..      PUSH     {r4,lr}
        0x20004902:    4b09        .K      LDR      r3,[pc,#36] ; [0x20004928] = 0x2000e1d8
        0x20004904:    6019        .`      STR      r1,[r3,#0]
        0x20004906:    4909        .I      LDR      r1,[pc,#36] ; [0x2000492c] = 0x2000ba5c
        0x20004908:    7008        .p      STRB     r0,[r1,#0]
        0x2000490a:    4809        .H      LDR      r0,[pc,#36] ; [0x20004930] = 0x2000e1d4
        0x2000490c:    6002        .`      STR      r2,[r0,#0]
        0x2000490e:    2001        .       MOVS     r0,#1
        0x20004910:    2400        .$      MOVS     r4,#0
        0x20004912:    4621        !F      MOV      r1,r4
        0x20004914:    f002f884    ....    BL       $Ven$TT$L$$rom_hw_sys_ctrl_write_com_reg ; 0x20006a20
        0x20004918:    2103        .!      MOVS     r1,#3
        0x2000491a:    220a        ."      MOVS     r2,#0xa
        0x2000491c:    2305        .#      MOVS     r3,#5
        0x2000491e:    4620         F      MOV      r0,r4
        0x20004920:    f002f9da    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_wakeup_source ; 0x20006cd8
        0x20004924:    bd10        ..      POP      {r4,pc}
        0x20004926:    46c0        .F      MOV      r8,r8
    $d.4
    __arm_cp.2_0
        0x20004928:    2000e1d8    ...     DCD    536928728
    __arm_cp.2_1
        0x2000492c:    2000ba5c    \..     DCD    536918620
    __arm_cp.2_2
        0x20004930:    2000e1d4    ...     DCD    536928724
    $t.0
    main
        0x20004934:    b08a        ..      SUB      sp,sp,#0x28
        0x20004936:    4809        .H      LDR      r0,[pc,#36] ; [0x2000495c] = 0x20007978
        0x20004938:    ac01        ..      ADD      r4,sp,#4
        0x2000493a:    4621        !F      MOV      r1,r4
        0x2000493c:    c82c        ,.      LDM      r0!,{r2,r3,r5}
        0x2000493e:    c12c        ,.      STM      r1!,{r2,r3,r5}
        0x20004940:    c82c        ,.      LDM      r0!,{r2,r3,r5}
        0x20004942:    c12c        ,.      STM      r1!,{r2,r3,r5}
        0x20004944:    c82c        ,.      LDM      r0!,{r2,r3,r5}
        0x20004946:    c12c        ,.      STM      r1!,{r2,r3,r5}
        0x20004948:    f002fb0a    ....    BL       $Ven$TT$L$$osKernelInitialize ; 0x20006f60
        0x2000494c:    4804        .H      LDR      r0,[pc,#16] ; [0x20004960] = 0x20003805
        0x2000494e:    2100        .!      MOVS     r1,#0
        0x20004950:    4622        "F      MOV      r2,r4
        0x20004952:    f002f901    ....    BL       $Ven$TT$L$$osThreadNew ; 0x20006b58
        0x20004956:    f002fb09    ....    BL       $Ven$TT$L$$osKernelStart ; 0x20006f6c
        0x2000495a:    e7fe        ..      B        0x2000495a ; main + 38
    $d.1
    __arm_cp.0_0
        0x2000495c:    20007978    xy.     DCD    536902008
    __arm_cp.0_1
        0x20004960:    20003805    .8.     DCD    536885253
    $t.4
    os_error_handler
        0x20004964:    460c        .F      MOV      r4,r1
        0x20004966:    4605        .F      MOV      r5,r0
        0x20004968:    f7feff0e    ....    BL       app_debug_reinit ; 0x20003788
        0x2000496c:    a006        ..      ADR      r0,{pc}+0x1c ; 0x20004988
        0x2000496e:    f002ff7b    ..{.    BL       puts ; 0x20007868
        0x20004972:    a009        ..      ADR      r0,{pc}+0x26 ; 0x20004998
        0x20004974:    4629        )F      MOV      r1,r5
        0x20004976:    f002fd2d    ..-.    BL       __0printf$8 ; 0x200073d4
        0x2000497a:    a00c        ..      ADR      r0,{pc}+0x32 ; 0x200049ac
        0x2000497c:    4621        !F      MOV      r1,r4
        0x2000497e:    f002fd29    ..).    BL       __0printf$8 ; 0x200073d4
        0x20004982:    f7fefed5    ....    BL       app_debug_printf ; 0x20003730
        0x20004986:    e7fe        ..      B        0x20004986 ; os_error_handler + 34
    $d.5
        0x20004988:    6520736f    os e    DCD    1696625519
        0x2000498c:    6f207272    rr o    DCD    1864397426
        0x20004990:    72756363    ccur    DCD    1920295779
        0x20004994:    00000073    s...    DCD    115
        0x20004998:    65646f63    code    DCD    1701080931
        0x2000499c:    20202020            DCD    538976288
        0x200049a0:    30203a20     : 0    DCD    807418400
        0x200049a4:    38302578    x%08    DCD    942679416
        0x200049a8:    00000a58    X...    DCD    2648
        0x200049ac:    656a626f    obje    DCD    1701470831
        0x200049b0:    695f7463    ct_i    DCD    1767863395
        0x200049b4:    30203a64    d: 0    DCD    807418468
        0x200049b8:    38302578    x%08    DCD    942679416
        0x200049bc:    00000a58    X...    DCD    2648
    $t.1
    patch_att_copy_value
        0x200049c0:    b5f0        ..      PUSH     {r4-r7,lr}
        0x200049c2:    b083        ..      SUB      sp,sp,#0xc
        0x200049c4:    461c        .F      MOV      r4,r3
        0x200049c6:    4616        .F      MOV      r6,r2
        0x200049c8:    460f        .F      MOV      r7,r1
        0x200049ca:    9002        ..      STR      r0,[sp,#8]
        0x200049cc:    8909        ..      LDRH     r1,[r1,#8]
        0x200049ce:    4813        .H      LDR      r0,[pc,#76] ; [0x20004a1c] = 0x5115
        0x200049d0:    9d08        ..      LDR      r5,[sp,#0x20]
        0x200049d2:    462a        *F      MOV      r2,r5
        0x200049d4:    f002f932    ..2.    BL       $Ven$TT$L$$mlog_1616 ; 0x20006c3c
        0x200049d8:    88f8        ..      LDRH     r0,[r7,#6]
        0x200049da:    05c0        ..      LSLS     r0,r0,#23
        0x200049dc:    d413        ..      BMI      0x20004a06 ; patch_att_copy_value + 70
        0x200049de:    9402        ..      STR      r4,[sp,#8]
        0x200049e0:    8a3c        <.      LDRH     r4,[r7,#0x10]
        0x200049e2:    480e        .H      LDR      r0,[pc,#56] ; [0x20004a1c] = 0x5115
        0x200049e4:    1c40        @.      ADDS     r0,r0,#1
        0x200049e6:    4621        !F      MOV      r1,r4
        0x200049e8:    4632        2F      MOV      r2,r6
        0x200049ea:    f002f927    ..'.    BL       $Ven$TT$L$$mlog_1616 ; 0x20006c3c
        0x200049ee:    1ba0        ..      SUBS     r0,r4,r6
        0x200049f0:    b281        ..      UXTH     r1,r0
        0x200049f2:    42a9        .B      CMP      r1,r5
        0x200049f4:    d800        ..      BHI      0x200049f8 ; patch_att_copy_value + 56
        0x200049f6:    4605        .F      MOV      r5,r0
        0x200049f8:    b2aa        ..      UXTH     r2,r5
        0x200049fa:    6978        xi      LDR      r0,[r7,#0x14]
        0x200049fc:    1981        ..      ADDS     r1,r0,r6
        0x200049fe:    9802        ..      LDR      r0,[sp,#8]
        0x20004a00:    f7fefc5a    ..Z.    BL       __aeabi_memcpy ; 0x200032b8
        0x20004a04:    e007        ..      B        0x20004a16 ; patch_att_copy_value + 86
        0x20004a06:    8939        9.      LDRH     r1,[r7,#8]
        0x20004a08:    9500        ..      STR      r5,[sp,#0]
        0x20004a0a:    9802        ..      LDR      r0,[sp,#8]
        0x20004a0c:    4632        2F      MOV      r2,r6
        0x20004a0e:    4623        #F      MOV      r3,r4
        0x20004a10:    f000fde4    ....    BL       patch_ht32_att_read_callback ; 0x200055dc
        0x20004a14:    4605        .F      MOV      r5,r0
        0x20004a16:    b2a8        ..      UXTH     r0,r5
        0x20004a18:    b003        ..      ADD      sp,sp,#0xc
        0x20004a1a:    bdf0        ..      POP      {r4-r7,pc}
    $d.2
    __arm_cp.1_0
        0x20004a1c:    00005115    .Q..    DCD    20757
    $t.0
    patch_att_packet_handler
        0x20004a20:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20004a22:    b085        ..      SUB      sp,sp,#0x14
        0x20004a24:    461d        .F      MOV      r5,r3
        0x20004a26:    4616        .F      MOV      r6,r2
        0x20004a28:    460f        .F      MOV      r7,r1
        0x20004a2a:    2101        .!      MOVS     r1,#1
        0x20004a2c:    7001        .p      STRB     r1,[r0,#0]
        0x20004a2e:    7814        .x      LDRB     r4,[r2,#0]
        0x20004a30:    4638        8F      MOV      r0,r7
        0x20004a32:    f002faa1    ....    BL       $Ven$TT$L$$rom_host_connection_for_handle ; 0x20006f78
        0x20004a36:    2800        .(      CMP      r0,#0
        0x20004a38:    d100        ..      BNE      0x20004a3c ; patch_att_packet_handler + 28
        0x20004a3a:    e06e        n.      B        0x20004b1a ; patch_att_packet_handler + 250
        0x20004a3c:    9700        ..      STR      r7,[sp,#0]
        0x20004a3e:    9501        ..      STR      r5,[sp,#4]
        0x20004a40:    4607        .F      MOV      r7,r0
        0x20004a42:    37c8        .7      ADDS     r7,r7,#0xc8
        0x20004a44:    499d        .I      LDR      r1,[pc,#628] ; [0x20004cbc] = 0x5214
        0x20004a46:    4605        .F      MOV      r5,r0
        0x20004a48:    1c48        H.      ADDS     r0,r1,#1
        0x20004a4a:    4621        !F      MOV      r1,r4
        0x20004a4c:    f002f89c    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20004a50:    35d8        .5      ADDS     r5,r5,#0xd8
        0x20004a52:    9502        ..      STR      r5,[sp,#8]
        0x20004a54:    1e60        `.      SUBS     r0,r4,#1
        0x20004a56:    2851        Q(      CMP      r0,#0x51
        0x20004a58:    d900        ..      BLS      0x20004a5c ; patch_att_packet_handler + 60
        0x20004a5a:    e0d9        ..      B        0x20004c10 ; patch_att_packet_handler + 496
        0x20004a5c:    0040        @.      LSLS     r0,r0,#1
        0x20004a5e:    46c0        .F      MOV      r8,r8
        0x20004a60:    4478        xD      ADD      r0,r0,pc
        0x20004a62:    8880        ..      LDRH     r0,[r0,#4]
        0x20004a64:    0040        @.      LSLS     r0,r0,#1
        0x20004a66:    4487        .D      ADD      pc,pc,r0
    $d.1
        0x20004a68:    005d0051    Q.].    DCD    6094929
        0x20004a6c:    0095006f    o...    DCD    9764975
        0x20004a70:    00a1009a    ....    DCD    10551450
        0x20004a74:    00ae00a7    ....    DCD    11403431
        0x20004a78:    00bb00b4    ....    DCD    12255412
        0x20004a7c:    00c700c0    ....    DCD    13041856
        0x20004a80:    00d300cc    ....    DCD    13828300
        0x20004a84:    00d900d3    ....    DCD    14221523
        0x20004a88:    00e600df    ....    DCD    15073503
        0x20004a8c:    00d300ec    ....    DCD    13828332
        0x20004a90:    00f300d3    ....    DCD    15925459
        0x20004a94:    010000f9    ....    DCD    16777465
        0x20004a98:    00d30105    ....    DCD    13828357
        0x20004a9c:    00d3010c    ....    DCD    13828364
        0x20004aa0:    011a0113    ....    DCD    18481427
        0x20004aa4:    00d300d3    ....    DCD    13828307
        0x20004aa8:    00d300d3    ....    DCD    13828307
        0x20004aac:    00d300d3    ....    DCD    13828307
        0x20004ab0:    00d300d3    ....    DCD    13828307
        0x20004ab4:    00d300d3    ....    DCD    13828307
        0x20004ab8:    00d300d3    ....    DCD    13828307
        0x20004abc:    00d300d3    ....    DCD    13828307
        0x20004ac0:    00d300d3    ....    DCD    13828307
        0x20004ac4:    00d300d3    ....    DCD    13828307
        0x20004ac8:    00d300d3    ....    DCD    13828307
        0x20004acc:    00d300d3    ....    DCD    13828307
        0x20004ad0:    00d300d3    ....    DCD    13828307
        0x20004ad4:    00d300d3    ....    DCD    13828307
        0x20004ad8:    00d300d3    ....    DCD    13828307
        0x20004adc:    00d300d3    ....    DCD    13828307
        0x20004ae0:    00d300d3    ....    DCD    13828307
        0x20004ae4:    00d300d3    ....    DCD    13828307
        0x20004ae8:    00d300d3    ....    DCD    13828307
        0x20004aec:    00d300d3    ....    DCD    13828307
        0x20004af0:    00d300d3    ....    DCD    13828307
        0x20004af4:    00d300d3    ....    DCD    13828307
        0x20004af8:    00d300d3    ....    DCD    13828307
        0x20004afc:    00d300d3    ....    DCD    13828307
        0x20004b00:    00d300d3    ....    DCD    13828307
        0x20004b04:    00d300d3    ....    DCD    13828307
        0x20004b08:    011e00d3    ....    DCD    18743507
    $t.2
        0x20004b0c:    9c02        ..      LDR      r4,[sp,#8]
        0x20004b0e:    4620         F      MOV      r0,r4
        0x20004b10:    4631        1F      MOV      r1,r6
        0x20004b12:    9a01        ..      LDR      r2,[sp,#4]
        0x20004b14:    f002fa36    ..6.    BL       $Ven$TT$L$$rom_gatt_client_handle_error_response ; 0x20006f84
        0x20004b18:    e0cb        ..      B        0x20004cb2 ; patch_att_packet_handler + 658
        0x20004b1a:    4868        hH      LDR      r0,[pc,#416] ; [0x20004cbc] = 0x5214
        0x20004b1c:    f002f82e    ....    BL       $Ven$TT$L$$mlog_0 ; 0x20006b7c
        0x20004b20:    b005        ..      ADD      sp,sp,#0x14
        0x20004b22:    bdf0        ..      POP      {r4-r7,pc}
        0x20004b24:    4638        8F      MOV      r0,r7
        0x20004b26:    4631        1F      MOV      r1,r6
        0x20004b28:    f002fa32    ..2.    BL       $Ven$TT$L$$rom_handle_exchange_mtu_request ; 0x20006f90
        0x20004b2c:    2800        .(      CMP      r0,#0
        0x20004b2e:    9c02        ..      LDR      r4,[sp,#8]
        0x20004b30:    d000        ..      BEQ      0x20004b34 ; patch_att_packet_handler + 276
        0x20004b32:    e0be        ..      B        0x20004cb2 ; patch_att_packet_handler + 658
        0x20004b34:    a904        ..      ADD      r1,sp,#0x10
        0x20004b36:    9800        ..      LDR      r0,[sp,#0]
        0x20004b38:    8008        ..      STRH     r0,[r1,#0]
        0x20004b3a:    8838        8.      LDRH     r0,[r7,#0]
        0x20004b3c:    8048        H.      STRH     r0,[r1,#2]
        0x20004b3e:    200a        .       MOVS     r0,#0xa
        0x20004b40:    2204        ."      MOVS     r2,#4
        0x20004b42:    f002fa2b    ..+.    BL       $Ven$TT$L$$ble_callback_send_event ; 0x20006f9c
        0x20004b46:    e0b4        ..      B        0x20004cb2 ; patch_att_packet_handler + 658
        0x20004b48:    2101        .!      MOVS     r1,#1
        0x20004b4a:    4630        0F      MOV      r0,r6
        0x20004b4c:    f002fa2c    ..,.    BL       $Ven$TT$L$$rom_stack_utility_little_endian_read_16 ; 0x20006fa8
        0x20004b50:    887a        z.      LDRH     r2,[r7,#2]
        0x20004b52:    4290        .B      CMP      r0,r2
        0x20004b54:    4601        .F      MOV      r1,r0
        0x20004b56:    d300        ..      BCC      0x20004b5a ; patch_att_packet_handler + 314
        0x20004b58:    4611        .F      MOV      r1,r2
        0x20004b5a:    883a        :.      LDRH     r2,[r7,#0]
        0x20004b5c:    4291        .B      CMP      r1,r2
        0x20004b5e:    d202        ..      BCS      0x20004b66 ; patch_att_packet_handler + 326
        0x20004b60:    2917        .)      CMP      r1,#0x17
        0x20004b62:    d300        ..      BCC      0x20004b66 ; patch_att_packet_handler + 326
        0x20004b64:    8039        9.      STRH     r1,[r7,#0]
        0x20004b66:    783a        :x      LDRB     r2,[r7,#0]
        0x20004b68:    4954        TI      LDR      r1,[pc,#336] ; [0x20004cbc] = 0x5214
        0x20004b6a:    1c8b        ..      ADDS     r3,r1,#2
        0x20004b6c:    b2c1        ..      UXTB     r1,r0
        0x20004b6e:    4618        .F      MOV      r0,r3
        0x20004b70:    f002f846    ..F.    BL       $Ven$TT$L$$mlog_88 ; 0x20006c00
        0x20004b74:    2002        .       MOVS     r0,#2
        0x20004b76:    71b8        .q      STRB     r0,[r7,#6]
        0x20004b78:    8839        9.      LDRH     r1,[r7,#0]
        0x20004b7a:    9c00        ..      LDR      r4,[sp,#0]
        0x20004b7c:    4620         F      MOV      r0,r4
        0x20004b7e:    f002fa19    ....    BL       $Ven$TT$L$$rom_gatt_client_handle_exchange_mtu_response ; 0x20006fb4
        0x20004b82:    a903        ..      ADD      r1,sp,#0xc
        0x20004b84:    800c        ..      STRH     r4,[r1,#0]
        0x20004b86:    8838        8.      LDRH     r0,[r7,#0]
        0x20004b88:    8048        H.      STRH     r0,[r1,#2]
        0x20004b8a:    200a        .       MOVS     r0,#0xa
        0x20004b8c:    2204        ."      MOVS     r2,#4
        0x20004b8e:    f002fa05    ....    BL       $Ven$TT$L$$ble_callback_send_event ; 0x20006f9c
        0x20004b92:    e08d        ..      B        0x20004cb0 ; patch_att_packet_handler + 656
        0x20004b94:    4638        8F      MOV      r0,r7
        0x20004b96:    4631        1F      MOV      r1,r6
        0x20004b98:    f002fa12    ....    BL       $Ven$TT$L$$rom_handle_find_information_request ; 0x20006fc0
        0x20004b9c:    e088        ..      B        0x20004cb0 ; patch_att_packet_handler + 656
        0x20004b9e:    9c02        ..      LDR      r4,[sp,#8]
        0x20004ba0:    4620         F      MOV      r0,r4
        0x20004ba2:    4631        1F      MOV      r1,r6
        0x20004ba4:    9a01        ..      LDR      r2,[sp,#4]
        0x20004ba6:    f002fa11    ....    BL       $Ven$TT$L$$rom_gatt_client_handle_find_information_reply ; 0x20006fcc
        0x20004baa:    e082        ..      B        0x20004cb2 ; patch_att_packet_handler + 658
        0x20004bac:    4638        8F      MOV      r0,r7
        0x20004bae:    4631        1F      MOV      r1,r6
        0x20004bb0:    9a01        ..      LDR      r2,[sp,#4]
        0x20004bb2:    f002fa11    ....    BL       $Ven$TT$L$$rom_handle_find_by_type_value_request ; 0x20006fd8
        0x20004bb6:    e07b        {.      B        0x20004cb0 ; patch_att_packet_handler + 656
        0x20004bb8:    9c02        ..      LDR      r4,[sp,#8]
        0x20004bba:    4620         F      MOV      r0,r4
        0x20004bbc:    4631        1F      MOV      r1,r6
        0x20004bbe:    9a01        ..      LDR      r2,[sp,#4]
        0x20004bc0:    f002fa10    ....    BL       $Ven$TT$L$$rom_gatt_client_handle_find_by_type_value_response ; 0x20006fe4
        0x20004bc4:    e075        u.      B        0x20004cb2 ; patch_att_packet_handler + 658
        0x20004bc6:    4638        8F      MOV      r0,r7
        0x20004bc8:    4631        1F      MOV      r1,r6
        0x20004bca:    9a01        ..      LDR      r2,[sp,#4]
        0x20004bcc:    f000faec    ....    BL       patch_handle_read_by_type_request ; 0x200051a8
        0x20004bd0:    e06e        n.      B        0x20004cb0 ; patch_att_packet_handler + 656
        0x20004bd2:    9c02        ..      LDR      r4,[sp,#8]
        0x20004bd4:    4620         F      MOV      r0,r4
        0x20004bd6:    4631        1F      MOV      r1,r6
        0x20004bd8:    9a01        ..      LDR      r2,[sp,#4]
        0x20004bda:    f002fa09    ....    BL       $Ven$TT$L$$rom_gatt_client_handle_read_by_type_response ; 0x20006ff0
        0x20004bde:    e068        h.      B        0x20004cb2 ; patch_att_packet_handler + 658
        0x20004be0:    4638        8F      MOV      r0,r7
        0x20004be2:    4631        1F      MOV      r1,r6
        0x20004be4:    f000fbd6    ....    BL       patch_handle_read_request ; 0x20005394
        0x20004be8:    e062        b.      B        0x20004cb0 ; patch_att_packet_handler + 656
        0x20004bea:    9c02        ..      LDR      r4,[sp,#8]
        0x20004bec:    4620         F      MOV      r0,r4
        0x20004bee:    4631        1F      MOV      r1,r6
        0x20004bf0:    9a01        ..      LDR      r2,[sp,#4]
        0x20004bf2:    f002fa03    ....    BL       $Ven$TT$L$$rom_gatt_client_handle_read_response ; 0x20006ffc
        0x20004bf6:    e05c        \.      B        0x20004cb2 ; patch_att_packet_handler + 658
        0x20004bf8:    4638        8F      MOV      r0,r7
        0x20004bfa:    4631        1F      MOV      r1,r6
        0x20004bfc:    f000fa66    ..f.    BL       patch_handle_read_blob_request ; 0x200050cc
        0x20004c00:    e056        V.      B        0x20004cb0 ; patch_att_packet_handler + 656
        0x20004c02:    9c02        ..      LDR      r4,[sp,#8]
        0x20004c04:    4620         F      MOV      r0,r4
        0x20004c06:    4631        1F      MOV      r1,r6
        0x20004c08:    9a01        ..      LDR      r2,[sp,#4]
        0x20004c0a:    f002f9fd    ....    BL       $Ven$TT$L$$rom_gatt_client_handle_read_blob_response ; 0x20007008
        0x20004c0e:    e050        P.      B        0x20004cb2 ; patch_att_packet_handler + 658
        0x20004c10:    2206        ."      MOVS     r2,#6
        0x20004c12:    4638        8F      MOV      r0,r7
        0x20004c14:    4621        !F      MOV      r1,r4
        0x20004c16:    f002f9fd    ....    BL       $Ven$TT$L$$rom_handle_rfu_request_opcode ; 0x20007014
        0x20004c1a:    e049        I.      B        0x20004cb0 ; patch_att_packet_handler + 656
        0x20004c1c:    4638        8F      MOV      r0,r7
        0x20004c1e:    4631        1F      MOV      r1,r6
        0x20004c20:    9a01        ..      LDR      r2,[sp,#4]
        0x20004c22:    f002f9fd    ....    BL       $Ven$TT$L$$rom_handle_read_by_group_type_request ; 0x20007020
        0x20004c26:    e043        C.      B        0x20004cb0 ; patch_att_packet_handler + 656
        0x20004c28:    9c02        ..      LDR      r4,[sp,#8]
        0x20004c2a:    4620         F      MOV      r0,r4
        0x20004c2c:    4631        1F      MOV      r1,r6
        0x20004c2e:    9a01        ..      LDR      r2,[sp,#4]
        0x20004c30:    f002f9fc    ....    BL       $Ven$TT$L$$rom_gatt_client_handle_read_by_group_type_response ; 0x2000702c
        0x20004c34:    e03d        =.      B        0x20004cb2 ; patch_att_packet_handler + 658
        0x20004c36:    4638        8F      MOV      r0,r7
        0x20004c38:    4631        1F      MOV      r1,r6
        0x20004c3a:    9a01        ..      LDR      r2,[sp,#4]
        0x20004c3c:    f000fc42    ..B.    BL       patch_handle_write_request ; 0x200054c4
        0x20004c40:    e036        6.      B        0x20004cb0 ; patch_att_packet_handler + 656
        0x20004c42:    9c02        ..      LDR      r4,[sp,#8]
        0x20004c44:    4620         F      MOV      r0,r4
        0x20004c46:    4631        1F      MOV      r1,r6
        0x20004c48:    9a01        ..      LDR      r2,[sp,#4]
        0x20004c4a:    f002f9f5    ....    BL       $Ven$TT$L$$rom_gatt_client_handle_write_response ; 0x20007038
        0x20004c4e:    e030        0.      B        0x20004cb2 ; patch_att_packet_handler + 658
        0x20004c50:    4638        8F      MOV      r0,r7
        0x20004c52:    4631        1F      MOV      r1,r6
        0x20004c54:    9a01        ..      LDR      r2,[sp,#4]
        0x20004c56:    f000f9d1    ....    BL       patch_handle_prepare_write_request ; 0x20004ffc
        0x20004c5a:    e029        ).      B        0x20004cb0 ; patch_att_packet_handler + 656
        0x20004c5c:    9c02        ..      LDR      r4,[sp,#8]
        0x20004c5e:    4620         F      MOV      r0,r4
        0x20004c60:    4631        1F      MOV      r1,r6
        0x20004c62:    9a01        ..      LDR      r2,[sp,#4]
        0x20004c64:    f002f9ee    ....    BL       $Ven$TT$L$$rom_gatt_client_handle_prepare_write_response ; 0x20007044
        0x20004c68:    e023        #.      B        0x20004cb2 ; patch_att_packet_handler + 658
        0x20004c6a:    4638        8F      MOV      r0,r7
        0x20004c6c:    4631        1F      MOV      r1,r6
        0x20004c6e:    f000f993    ....    BL       patch_handle_execute_write_request ; 0x20004f98
        0x20004c72:    e01d        ..      B        0x20004cb0 ; patch_att_packet_handler + 656
        0x20004c74:    9c02        ..      LDR      r4,[sp,#8]
        0x20004c76:    4620         F      MOV      r0,r4
        0x20004c78:    4631        1F      MOV      r1,r6
        0x20004c7a:    9a01        ..      LDR      r2,[sp,#4]
        0x20004c7c:    f002f9e8    ....    BL       $Ven$TT$L$$rom_gatt_client_handle_execute_write_response ; 0x20007050
        0x20004c80:    e017        ..      B        0x20004cb2 ; patch_att_packet_handler + 658
        0x20004c82:    9c02        ..      LDR      r4,[sp,#8]
        0x20004c84:    4620         F      MOV      r0,r4
        0x20004c86:    4631        1F      MOV      r1,r6
        0x20004c88:    9a01        ..      LDR      r2,[sp,#4]
        0x20004c8a:    f002f9e7    ....    BL       $Ven$TT$L$$rom_gatt_client_handle_value_notification ; 0x2000705c
        0x20004c8e:    e010        ..      B        0x20004cb2 ; patch_att_packet_handler + 658
        0x20004c90:    9c02        ..      LDR      r4,[sp,#8]
        0x20004c92:    4620         F      MOV      r0,r4
        0x20004c94:    4631        1F      MOV      r1,r6
        0x20004c96:    9a01        ..      LDR      r2,[sp,#4]
        0x20004c98:    f002f9e6    ....    BL       $Ven$TT$L$$rom_gatt_client_handle_value_indication ; 0x20007068
        0x20004c9c:    e009        ..      B        0x20004cb2 ; patch_att_packet_handler + 658
        0x20004c9e:    4638        8F      MOV      r0,r7
        0x20004ca0:    f000fbd4    ....    BL       patch_handle_value_indication ; 0x2000544c
        0x20004ca4:    e004        ..      B        0x20004cb0 ; patch_att_packet_handler + 656
        0x20004ca6:    4638        8F      MOV      r0,r7
        0x20004ca8:    4631        1F      MOV      r1,r6
        0x20004caa:    9a01        ..      LDR      r2,[sp,#4]
        0x20004cac:    f000fbdd    ....    BL       patch_handle_write_command ; 0x2000546a
        0x20004cb0:    9c02        ..      LDR      r4,[sp,#8]
        0x20004cb2:    4620         F      MOV      r0,r4
        0x20004cb4:    f002f9de    ....    BL       $Ven$TT$L$$rom_gatt_client_run ; 0x20007074
        0x20004cb8:    b005        ..      ADD      sp,sp,#0x14
        0x20004cba:    bdf0        ..      POP      {r4-r7,pc}
    $d.3
    __arm_cp.0_0
        0x20004cbc:    00005214    .R..    DCD    21012
    $t.4
    patch_att_packet_handler_init
        0x20004cc0:    4801        .H      LDR      r0,[pc,#4] ; [0x20004cc8] = 0x20000abc
        0x20004cc2:    4902        .I      LDR      r1,[pc,#8] ; [0x20004ccc] = 0x20004a21
        0x20004cc4:    6041        A`      STR      r1,[r0,#4]
        0x20004cc6:    4770        pG      BX       lr
    $d.5
    __arm_cp.1_0
        0x20004cc8:    20000abc    ...     DCD    536873660
    __arm_cp.1_1
        0x20004ccc:    20004a21    !J.     DCD    536889889
    $t.0
    patch_att_update_value_len
        0x20004cd0:    b510        ..      PUSH     {r4,lr}
        0x20004cd2:    460c        .F      MOV      r4,r1
        0x20004cd4:    88c9        ..      LDRH     r1,[r1,#6]
        0x20004cd6:    05c9        ..      LSLS     r1,r1,#23
        0x20004cd8:    d503        ..      BPL      0x20004ce2 ; patch_att_update_value_len + 18
        0x20004cda:    8921        !.      LDRH     r1,[r4,#8]
        0x20004cdc:    f000fc66    ..f.    BL       patch_ht32_att_get_attribute_length_callback ; 0x200055ac
        0x20004ce0:    8220         .      STRH     r0,[r4,#0x10]
        0x20004ce2:    bd10        ..      POP      {r4,pc}
    patch_ble_impl
        0x20004ce4:    4801        .H      LDR      r0,[pc,#4] ; [0x20004cec] = 0x20000964
        0x20004ce6:    4902        .I      LDR      r1,[pc,#8] ; [0x20004cf0] = 0x20004cf5
        0x20004ce8:    6101        .a      STR      r1,[r0,#0x10]
        0x20004cea:    4770        pG      BX       lr
    $d.1
    __arm_cp.0_0
        0x20004cec:    20000964    d..     DCD    536873316
    __arm_cp.0_1
        0x20004cf0:    20004cf5    .L.     DCD    536890613
    $t.2
    patch_ble_impl_get_comp_id
        0x20004cf4:    2101        .!      MOVS     r1,#1
        0x20004cf6:    7001        .p      STRB     r1,[r0,#0]
        0x20004cf8:    4800        .H      LDR      r0,[pc,#0] ; [0x20004cfc] = 0xffff
        0x20004cfa:    4770        pG      BX       lr
    $d.3
    __arm_cp.1_0
        0x20004cfc:    0000ffff    ....    DCD    65535
    $t.0
    patch_ble_init
        0x20004d00:    b580        ..      PUSH     {r7,lr}
        0x20004d02:    4811        .H      LDR      r0,[pc,#68] ; [0x20004d48] = 0x20006171
        0x20004d04:    f002f83c    ..<.    BL       $Ven$TT$L$$rom_llc_set_start_adv_fragment_callback ; 0x20006d80
        0x20004d08:    4810        .H      LDR      r0,[pc,#64] ; [0x20004d4c] = 0x2000623d
        0x20004d0a:    f002f83f    ..?.    BL       $Ven$TT$L$$rom_llc_set_start_scan_fragment_callback ; 0x20006d8c
        0x20004d0e:    4810        .H      LDR      r0,[pc,#64] ; [0x20004d50] = 0x200061a9
        0x20004d10:    f002f842    ..B.    BL       $Ven$TT$L$$rom_llc_set_start_init_fragment_callback ; 0x20006d98
        0x20004d14:    480f        .H      LDR      r0,[pc,#60] ; [0x20004d54] = 0x20006299
        0x20004d16:    f002f845    ..E.    BL       $Ven$TT$L$$rom_llc_set_start_slave_fragment_callback ; 0x20006da4
        0x20004d1a:    480f        .H      LDR      r0,[pc,#60] ; [0x20004d58] = 0x20006205
        0x20004d1c:    f002f848    ..H.    BL       $Ven$TT$L$$rom_llc_set_start_master_fragment_callback ; 0x20006db0
        0x20004d20:    f001fa1a    ....    BL       patch_llp_sleep ; 0x20006158
        0x20004d24:    f001f84a    ..J.    BL       patch_llp ; 0x20005dbc
        0x20004d28:    f001f832    ..2.    BL       patch_llc_privacy ; 0x20005d90
        0x20004d2c:    f000fc9c    ....    BL       patch_llc_address ; 0x20005668
        0x20004d30:    f001f834    ..4.    BL       patch_llc_white_list ; 0x20005d9c
        0x20004d34:    f001f812    ....    BL       patch_llc_priority ; 0x20005d5c
        0x20004d38:    f000fc9c    ....    BL       patch_llc_ctrl_procedure ; 0x20005674
        0x20004d3c:    f7ffffd2    ....    BL       patch_ble_impl ; 0x20004ce4
        0x20004d40:    f7ffffbe    ....    BL       patch_att_packet_handler_init ; 0x20004cc0
        0x20004d44:    bd80        ..      POP      {r7,pc}
        0x20004d46:    46c0        .F      MOV      r8,r8
    $d.1
    __arm_cp.0_0
        0x20004d48:    20006171    qa.     DCD    536895857
    __arm_cp.0_1
        0x20004d4c:    2000623d    =b.     DCD    536896061
    __arm_cp.0_2
        0x20004d50:    200061a9    .a.     DCD    536895913
    __arm_cp.0_3
        0x20004d54:    20006299    .b.     DCD    536896153
    __arm_cp.0_4
        0x20004d58:    20006205    .b.     DCD    536896005
    $t.0
    patch_gatt_find_server
        0x20004d5c:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20004d5e:    4601        .F      MOV      r1,r0
        0x20004d60:    4a8b        .J      LDR      r2,[pc,#556] ; [0x20004f90] = 0x2000a668
        0x20004d62:    8810        ..      LDRH     r0,[r2,#0]
        0x20004d64:    2800        .(      CMP      r0,#0
        0x20004d66:    d010        ..      BEQ      0x20004d8a ; patch_gatt_find_server + 46
        0x20004d68:    8813        ..      LDRH     r3,[r2,#0]
        0x20004d6a:    4a8a        .J      LDR      r2,[pc,#552] ; [0x20004f94] = 0x2000a66c
        0x20004d6c:    6814        .h      LDR      r4,[r2,#0]
        0x20004d6e:    2200        ."      MOVS     r2,#0
        0x20004d70:    e004        ..      B        0x20004d7c ; patch_gatt_find_server + 32
        0x20004d72:    3408        .4      ADDS     r4,r4,#8
        0x20004d74:    1c52        R.      ADDS     r2,r2,#1
        0x20004d76:    429a        .B      CMP      r2,r3
        0x20004d78:    4618        .F      MOV      r0,r3
        0x20004d7a:    d208        ..      BCS      0x20004d8e ; patch_gatt_find_server + 50
        0x20004d7c:    8825        %.      LDRH     r5,[r4,#0]
        0x20004d7e:    428d        .B      CMP      r5,r1
        0x20004d80:    d8f7        ..      BHI      0x20004d72 ; patch_gatt_find_server + 22
        0x20004d82:    8865        e.      LDRH     r5,[r4,#2]
        0x20004d84:    428d        .B      CMP      r5,r1
        0x20004d86:    d3f4        ..      BCC      0x20004d72 ; patch_gatt_find_server + 22
        0x20004d88:    e002        ..      B        0x20004d90 ; patch_gatt_find_server + 52
        0x20004d8a:    2200        ."      MOVS     r2,#0
        0x20004d8c:    e000        ..      B        0x20004d90 ; patch_gatt_find_server + 52
        0x20004d8e:    4618        .F      MOV      r0,r3
        0x20004d90:    00d1        ..      LSLS     r1,r2,#3
        0x20004d92:    4b80        .K      LDR      r3,[pc,#512] ; [0x20004f94] = 0x2000a66c
        0x20004d94:    681b        .h      LDR      r3,[r3,#0]
        0x20004d96:    1859        Y.      ADDS     r1,r3,r1
        0x20004d98:    6849        Ih      LDR      r1,[r1,#4]
        0x20004d9a:    2900        .)      CMP      r1,#0
        0x20004d9c:    d000        ..      BEQ      0x20004da0 ; patch_gatt_find_server + 68
        0x20004d9e:    4610        .F      MOV      r0,r2
        0x20004da0:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20004da2:    46c0        .F      MOV      r8,r8
    patch_gatts_api_add_char
        0x20004da4:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20004da6:    b081        ..      SUB      sp,sp,#4
        0x20004da8:    461c        .F      MOV      r4,r3
        0x20004daa:    4617        .F      MOV      r7,r2
        0x20004dac:    460d        .F      MOV      r5,r1
        0x20004dae:    4915        .I      LDR      r1,[pc,#84] ; [0x20004e04] = 0x52a5
        0x20004db0:    9b07        ..      LDR      r3,[sp,#0x1c]
        0x20004db2:    9a06        ..      LDR      r2,[sp,#0x18]
        0x20004db4:    2800        .(      CMP      r0,#0
        0x20004db6:    d00d        ..      BEQ      0x20004dd4 ; patch_gatts_api_add_char + 48
        0x20004db8:    460d        .F      MOV      r5,r1
        0x20004dba:    2f00        ./      CMP      r7,#0
        0x20004dbc:    d01b        ..      BEQ      0x20004df6 ; patch_gatts_api_add_char + 82
        0x20004dbe:    4638        8F      MOV      r0,r7
        0x20004dc0:    4621        !F      MOV      r1,r4
        0x20004dc2:    f002f95d    ..].    BL       $Ven$TT$L$$rom_att_db_util_add_characteristic_uuid128 ; 0x20007080
        0x20004dc6:    4606        .F      MOV      r6,r0
        0x20004dc8:    1c68        h.      ADDS     r0,r5,#1
        0x20004dca:    2210        ."      MOVS     r2,#0x10
        0x20004dcc:    4639        9F      MOV      r1,r7
        0x20004dce:    f001ff29    ..).    BL       $Ven$TT$L$$mlog_x ; 0x20006c24
        0x20004dd2:    e00a        ..      B        0x20004dea ; patch_gatts_api_add_char + 70
        0x20004dd4:    4628        (F      MOV      r0,r5
        0x20004dd6:    460f        .F      MOV      r7,r1
        0x20004dd8:    4621        !F      MOV      r1,r4
        0x20004dda:    f002f957    ..W.    BL       $Ven$TT$L$$rom_att_db_util_add_characteristic_uuid16 ; 0x2000708c
        0x20004dde:    4606        .F      MOV      r6,r0
        0x20004de0:    1cb8        ..      ADDS     r0,r7,#2
        0x20004de2:    4629        )F      MOV      r1,r5
        0x20004de4:    f001fed0    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20004de8:    463d        =F      MOV      r5,r7
        0x20004dea:    1ce8        ..      ADDS     r0,r5,#3
        0x20004dec:    4631        1F      MOV      r1,r6
        0x20004dee:    4622        "F      MOV      r2,r4
        0x20004df0:    f001ff24    ..$.    BL       $Ven$TT$L$$mlog_1616 ; 0x20006c3c
        0x20004df4:    e003        ..      B        0x20004dfe ; patch_gatts_api_add_char + 90
        0x20004df6:    4628        (F      MOV      r0,r5
        0x20004df8:    f001fec0    ....    BL       $Ven$TT$L$$mlog_0 ; 0x20006b7c
        0x20004dfc:    2600        .&      MOVS     r6,#0
        0x20004dfe:    4630        0F      MOV      r0,r6
        0x20004e00:    b001        ..      ADD      sp,sp,#4
        0x20004e02:    bdf0        ..      POP      {r4-r7,pc}
    $d.17
    __arm_cp.8_0
        0x20004e04:    000052a5    .R..    DCD    21157
    $t.14
    patch_gatts_api_add_service_end
        0x20004e08:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20004e0a:    b081        ..      SUB      sp,sp,#4
        0x20004e0c:    4860        `H      LDR      r0,[pc,#384] ; [0x20004f90] = 0x2000a668
        0x20004e0e:    8801        ..      LDRH     r1,[r0,#0]
        0x20004e10:    2900        .)      CMP      r1,#0
        0x20004e12:    d012        ..      BEQ      0x20004e3a ; patch_gatts_api_add_service_end + 50
        0x20004e14:    8802        ..      LDRH     r2,[r0,#0]
        0x20004e16:    485f        _H      LDR      r0,[pc,#380] ; [0x20004f94] = 0x2000a66c
        0x20004e18:    6803        .h      LDR      r3,[r0,#0]
        0x20004e1a:    2000        .       MOVS     r0,#0
        0x20004e1c:    e004        ..      B        0x20004e28 ; patch_gatts_api_add_service_end + 32
        0x20004e1e:    3308        .3      ADDS     r3,r3,#8
        0x20004e20:    1c40        @.      ADDS     r0,r0,#1
        0x20004e22:    4290        .B      CMP      r0,r2
        0x20004e24:    4611        .F      MOV      r1,r2
        0x20004e26:    d206        ..      BCS      0x20004e36 ; patch_gatts_api_add_service_end + 46
        0x20004e28:    885c        \.      LDRH     r4,[r3,#2]
        0x20004e2a:    2c00        .,      CMP      r4,#0
        0x20004e2c:    d1f7        ..      BNE      0x20004e1e ; patch_gatts_api_add_service_end + 22
        0x20004e2e:    881c        ..      LDRH     r4,[r3,#0]
        0x20004e30:    2c00        .,      CMP      r4,#0
        0x20004e32:    d0f4        ..      BEQ      0x20004e1e ; patch_gatts_api_add_service_end + 22
        0x20004e34:    e002        ..      B        0x20004e3c ; patch_gatts_api_add_service_end + 52
        0x20004e36:    4611        .F      MOV      r1,r2
        0x20004e38:    e000        ..      B        0x20004e3c ; patch_gatts_api_add_service_end + 52
        0x20004e3a:    2000        .       MOVS     r0,#0
        0x20004e3c:    4c0e        .L      LDR      r4,[pc,#56] ; [0x20004e78] = 0x52a3
        0x20004e3e:    4288        .B      CMP      r0,r1
        0x20004e40:    d106        ..      BNE      0x20004e50 ; patch_gatts_api_add_service_end + 72
        0x20004e42:    b281        ..      UXTH     r1,r0
        0x20004e44:    4620         F      MOV      r0,r4
        0x20004e46:    f001fe9f    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20004e4a:    2000        .       MOVS     r0,#0
        0x20004e4c:    b001        ..      ADD      sp,sp,#4
        0x20004e4e:    bdf0        ..      POP      {r4-r7,pc}
        0x20004e50:    00c6        ..      LSLS     r6,r0,#3
        0x20004e52:    f002f921    ..!.    BL       $Ven$TT$L$$rom_att_db_util_get_last_handle ; 0x20007098
        0x20004e56:    4605        .F      MOV      r5,r0
        0x20004e58:    4f4e        NO      LDR      r7,[pc,#312] ; [0x20004f94] = 0x2000a66c
        0x20004e5a:    6838        8h      LDR      r0,[r7,#0]
        0x20004e5c:    1980        ..      ADDS     r0,r0,r6
        0x20004e5e:    8045        E.      STRH     r5,[r0,#2]
        0x20004e60:    f002f920    .. .    BL       $Ven$TT$L$$rom_att_db_util_get_size ; 0x200070a4
        0x20004e64:    4602        .F      MOV      r2,r0
        0x20004e66:    1c60        `.      ADDS     r0,r4,#1
        0x20004e68:    4629        )F      MOV      r1,r5
        0x20004e6a:    f001fee7    ....    BL       $Ven$TT$L$$mlog_1616 ; 0x20006c3c
        0x20004e6e:    6838        8h      LDR      r0,[r7,#0]
        0x20004e70:    1980        ..      ADDS     r0,r0,r6
        0x20004e72:    8840        @.      LDRH     r0,[r0,#2]
        0x20004e74:    b001        ..      ADD      sp,sp,#4
        0x20004e76:    bdf0        ..      POP      {r4-r7,pc}
    $d.15
    __arm_cp.7_2
        0x20004e78:    000052a3    .R..    DCD    21155
    $t.10
    patch_gatts_api_add_service_start
        0x20004e7c:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20004e7e:    b083        ..      SUB      sp,sp,#0xc
        0x20004e80:    9201        ..      STR      r2,[sp,#4]
        0x20004e82:    460e        .F      MOV      r6,r1
        0x20004e84:    4d42        BM      LDR      r5,[pc,#264] ; [0x20004f90] = 0x2000a668
        0x20004e86:    8829        ).      LDRH     r1,[r5,#0]
        0x20004e88:    2400        .$      MOVS     r4,#0
        0x20004e8a:    2900        .)      CMP      r1,#0
        0x20004e8c:    9302        ..      STR      r3,[sp,#8]
        0x20004e8e:    d00f        ..      BEQ      0x20004eb0 ; patch_gatts_api_add_service_start + 52
        0x20004e90:    4a40        @J      LDR      r2,[pc,#256] ; [0x20004f94] = 0x2000a66c
        0x20004e92:    6812        .h      LDR      r2,[r2,#0]
        0x20004e94:    8817        ..      LDRH     r7,[r2,#0]
        0x20004e96:    2f00        ./      CMP      r7,#0
        0x20004e98:    d00a        ..      BEQ      0x20004eb0 ; patch_gatts_api_add_service_start + 52
        0x20004e9a:    8829        ).      LDRH     r1,[r5,#0]
        0x20004e9c:    3208        .2      ADDS     r2,r2,#8
        0x20004e9e:    2301        .#      MOVS     r3,#1
        0x20004ea0:    461c        .F      MOV      r4,r3
        0x20004ea2:    428b        .B      CMP      r3,r1
        0x20004ea4:    d204        ..      BCS      0x20004eb0 ; patch_gatts_api_add_service_start + 52
        0x20004ea6:    1c63        c.      ADDS     r3,r4,#1
        0x20004ea8:    8817        ..      LDRH     r7,[r2,#0]
        0x20004eaa:    3208        .2      ADDS     r2,r2,#8
        0x20004eac:    2f00        ./      CMP      r7,#0
        0x20004eae:    d1f7        ..      BNE      0x20004ea0 ; patch_gatts_api_add_service_start + 36
        0x20004eb0:    428c        .B      CMP      r4,r1
        0x20004eb2:    d105        ..      BNE      0x20004ec0 ; patch_gatts_api_add_service_start + 68
        0x20004eb4:    b2a1        ..      UXTH     r1,r4
        0x20004eb6:    481f        .H      LDR      r0,[pc,#124] ; [0x20004f34] = 0x5299
        0x20004eb8:    f001fe66    ..f.    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20004ebc:    2700        .'      MOVS     r7,#0
        0x20004ebe:    e035        5.      B        0x20004f2c ; patch_gatts_api_add_service_start + 176
        0x20004ec0:    4d1c        .M      LDR      r5,[pc,#112] ; [0x20004f34] = 0x5299
        0x20004ec2:    2800        .(      CMP      r0,#0
        0x20004ec4:    d013        ..      BEQ      0x20004eee ; patch_gatts_api_add_service_start + 114
        0x20004ec6:    462e        .F      MOV      r6,r5
        0x20004ec8:    9d01        ..      LDR      r5,[sp,#4]
        0x20004eca:    2d00        .-      CMP      r5,#0
        0x20004ecc:    d02a        *.      BEQ      0x20004f24 ; patch_gatts_api_add_service_start + 168
        0x20004ece:    2005        .       MOVS     r0,#5
        0x20004ed0:    02c1        ..      LSLS     r1,r0,#11
        0x20004ed2:    4628        (F      MOV      r0,r5
        0x20004ed4:    f002f8ec    ....    BL       $Ven$TT$L$$rom_att_db_util_add_service_uuid128 ; 0x200070b0
        0x20004ed8:    4607        .F      MOV      r7,r0
        0x20004eda:    1cb0        ..      ADDS     r0,r6,#2
        0x20004edc:    2210        ."      MOVS     r2,#0x10
        0x20004ede:    4629        )F      MOV      r1,r5
        0x20004ee0:    4635        5F      MOV      r5,r6
        0x20004ee2:    f001fe9f    ....    BL       $Ven$TT$L$$mlog_x ; 0x20006c24
        0x20004ee6:    2f00        ./      CMP      r7,#0
        0x20004ee8:    d10d        ..      BNE      0x20004f06 ; patch_gatts_api_add_service_start + 138
        0x20004eea:    2700        .'      MOVS     r7,#0
        0x20004eec:    e01e        ..      B        0x20004f2c ; patch_gatts_api_add_service_start + 176
        0x20004eee:    2005        .       MOVS     r0,#5
        0x20004ef0:    02c1        ..      LSLS     r1,r0,#11
        0x20004ef2:    4630        0F      MOV      r0,r6
        0x20004ef4:    f002f8e2    ....    BL       $Ven$TT$L$$rom_att_db_util_add_service_uuid16 ; 0x200070bc
        0x20004ef8:    4607        .F      MOV      r7,r0
        0x20004efa:    1ce8        ..      ADDS     r0,r5,#3
        0x20004efc:    4631        1F      MOV      r1,r6
        0x20004efe:    f001fe43    ..C.    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20004f02:    2f00        ./      CMP      r7,#0
        0x20004f04:    d0f1        ..      BEQ      0x20004eea ; patch_gatts_api_add_service_start + 110
        0x20004f06:    00e0        ..      LSLS     r0,r4,#3
        0x20004f08:    4922        "I      LDR      r1,[pc,#136] ; [0x20004f94] = 0x2000a66c
        0x20004f0a:    6809        .h      LDR      r1,[r1,#0]
        0x20004f0c:    520f        .R      STRH     r7,[r1,r0]
        0x20004f0e:    1808        ..      ADDS     r0,r1,r0
        0x20004f10:    9902        ..      LDR      r1,[sp,#8]
        0x20004f12:    6041        A`      STR      r1,[r0,#4]
        0x20004f14:    2100        .!      MOVS     r1,#0
        0x20004f16:    8041        A.      STRH     r1,[r0,#2]
        0x20004f18:    1d28        (.      ADDS     r0,r5,#4
        0x20004f1a:    b2a2        ..      UXTH     r2,r4
        0x20004f1c:    4639        9F      MOV      r1,r7
        0x20004f1e:    f001fe8d    ....    BL       $Ven$TT$L$$mlog_1616 ; 0x20006c3c
        0x20004f22:    e003        ..      B        0x20004f2c ; patch_gatts_api_add_service_start + 176
        0x20004f24:    1c70        p.      ADDS     r0,r6,#1
        0x20004f26:    f001fe29    ..).    BL       $Ven$TT$L$$mlog_0 ; 0x20006b7c
        0x20004f2a:    2700        .'      MOVS     r7,#0
        0x20004f2c:    4638        8F      MOV      r0,r7
        0x20004f2e:    b003        ..      ADD      sp,sp,#0xc
        0x20004f30:    bdf0        ..      POP      {r4-r7,pc}
        0x20004f32:    46c0        .F      MOV      r8,r8
    $d.11
    __arm_cp.5_2
        0x20004f34:    00005299    .R..    DCD    21145
    $t.8
    patch_gatts_api_init
        0x20004f38:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20004f3a:    b081        ..      SUB      sp,sp,#4
        0x20004f3c:    4d13        .M      LDR      r5,[pc,#76] ; [0x20004f8c] = 0x5297
        0x20004f3e:    2800        .(      CMP      r0,#0
        0x20004f40:    d01f        ..      BEQ      0x20004f82 ; patch_gatts_api_init + 74
        0x20004f42:    2a00        .*      CMP      r2,#0
        0x20004f44:    d01d        ..      BEQ      0x20004f82 ; patch_gatts_api_init + 74
        0x20004f46:    460c        .F      MOV      r4,r1
        0x20004f48:    2900        .)      CMP      r1,#0
        0x20004f4a:    d01a        ..      BEQ      0x20004f82 ; patch_gatts_api_init + 74
        0x20004f4c:    2b00        .+      CMP      r3,#0
        0x20004f4e:    d018        ..      BEQ      0x20004f82 ; patch_gatts_api_init + 74
        0x20004f50:    490f        .I      LDR      r1,[pc,#60] ; [0x20004f90] = 0x2000a668
        0x20004f52:    800b        ..      STRH     r3,[r1,#0]
        0x20004f54:    490f        .I      LDR      r1,[pc,#60] ; [0x20004f94] = 0x2000a66c
        0x20004f56:    600a        .`      STR      r2,[r1,#0]
        0x20004f58:    2100        .!      MOVS     r1,#0
        0x20004f5a:    460f        .F      MOV      r7,r1
        0x20004f5c:    460e        .F      MOV      r6,r1
        0x20004f5e:    00ff        ..      LSLS     r7,r7,#3
        0x20004f60:    51d1        .Q      STR      r1,[r2,r7]
        0x20004f62:    1c76        v.      ADDS     r6,r6,#1
        0x20004f64:    b2f7        ..      UXTB     r7,r6
        0x20004f66:    429f        .B      CMP      r7,r3
        0x20004f68:    d3f9        ..      BCC      0x20004f5e ; patch_gatts_api_init + 38
        0x20004f6a:    2200        ."      MOVS     r2,#0
        0x20004f6c:    9200        ..      STR      r2,[sp,#0]
        0x20004f6e:    4621        !F      MOV      r1,r4
        0x20004f70:    4613        .F      MOV      r3,r2
        0x20004f72:    f002f8a9    ....    BL       $Ven$TT$L$$rom_att_db_util_init ; 0x200070c8
        0x20004f76:    1c68        h.      ADDS     r0,r5,#1
        0x20004f78:    4621        !F      MOV      r1,r4
        0x20004f7a:    f001fe05    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20004f7e:    b001        ..      ADD      sp,sp,#4
        0x20004f80:    bdf0        ..      POP      {r4-r7,pc}
        0x20004f82:    4628        (F      MOV      r0,r5
        0x20004f84:    f001fdfa    ....    BL       $Ven$TT$L$$mlog_0 ; 0x20006b7c
        0x20004f88:    b001        ..      ADD      sp,sp,#4
        0x20004f8a:    bdf0        ..      POP      {r4-r7,pc}
    $d.9
    __arm_cp.4_0
        0x20004f8c:    00005297    .R..    DCD    21143
    __arm_cp.4_1
        0x20004f90:    2000a668    h..     DCD    536913512
    __arm_cp.4_2
        0x20004f94:    2000a66c    l..     DCD    536913516
    $t.16
    patch_handle_execute_write_request
        0x20004f98:    b570        p.      PUSH     {r4-r6,lr}
        0x20004f9a:    b082        ..      SUB      sp,sp,#8
        0x20004f9c:    460e        .F      MOV      r6,r1
        0x20004f9e:    4604        .F      MOV      r4,r0
        0x20004fa0:    2010        .       MOVS     r0,#0x10
        0x20004fa2:    f002f897    ....    BL       $Ven$TT$L$$rom_l2cap_get_avail_data_buffer ; 0x200070d4
        0x20004fa6:    2800        .(      CMP      r0,#0
        0x20004fa8:    d00a        ..      BEQ      0x20004fc0 ; patch_handle_execute_write_request + 40
        0x20004faa:    4605        .F      MOV      r5,r0
        0x20004fac:    8961        a.      LDRH     r1,[r4,#0xa]
        0x20004fae:    88a0        ..      LDRH     r0,[r4,#4]
        0x20004fb0:    7872        rx      LDRB     r2,[r6,#1]
        0x20004fb2:    2300        .#      MOVS     r3,#0
        0x20004fb4:    9300        ..      STR      r3,[sp,#0]
        0x20004fb6:    9301        ..      STR      r3,[sp,#4]
        0x20004fb8:    2a01        .*      CMP      r2,#1
        0x20004fba:    d006        ..      BEQ      0x20004fca ; patch_handle_execute_write_request + 50
        0x20004fbc:    2203        ."      MOVS     r2,#3
        0x20004fbe:    e005        ..      B        0x20004fcc ; patch_handle_execute_write_request + 52
        0x20004fc0:    480d        .H      LDR      r0,[pc,#52] ; [0x20004ff8] = 0x5123
        0x20004fc2:    f001fddb    ....    BL       $Ven$TT$L$$mlog_0 ; 0x20006b7c
        0x20004fc6:    b002        ..      ADD      sp,sp,#8
        0x20004fc8:    bd70        p.      POP      {r4-r6,pc}
        0x20004fca:    2202        ."      MOVS     r2,#2
        0x20004fcc:    f000fb26    ..&.    BL       patch_ht32_att_write_callback ; 0x2000561c
        0x20004fd0:    0601        ..      LSLS     r1,r0,#24
        0x20004fd2:    d007        ..      BEQ      0x20004fe4 ; patch_handle_execute_write_request + 76
        0x20004fd4:    b2c3        ..      UXTB     r3,r0
        0x20004fd6:    2118        .!      MOVS     r1,#0x18
        0x20004fd8:    2200        ."      MOVS     r2,#0
        0x20004fda:    4628        (F      MOV      r0,r5
        0x20004fdc:    f002f880    ....    BL       $Ven$TT$L$$rom_setup_error ; 0x200070e0
        0x20004fe0:    4602        .F      MOV      r2,r0
        0x20004fe2:    e002        ..      B        0x20004fea ; patch_handle_execute_write_request + 82
        0x20004fe4:    2019        .       MOVS     r0,#0x19
        0x20004fe6:    7028        (p      STRB     r0,[r5,#0]
        0x20004fe8:    2201        ."      MOVS     r2,#1
        0x20004fea:    88a0        ..      LDRH     r0,[r4,#4]
        0x20004fec:    4629        )F      MOV      r1,r5
        0x20004fee:    f002f87d    ..}.    BL       $Ven$TT$L$$rom_att_tx_buffer_commit ; 0x200070ec
        0x20004ff2:    b002        ..      ADD      sp,sp,#8
        0x20004ff4:    bd70        p.      POP      {r4-r6,pc}
        0x20004ff6:    46c0        .F      MOV      r8,r8
    $d.17
    __arm_cp.9_0
        0x20004ff8:    00005123    #Q..    DCD    20771
    $t.13
    patch_handle_prepare_write_request
        0x20004ffc:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20004ffe:    b08b        ..      SUB      sp,sp,#0x2c
        0x20005000:    9204        ..      STR      r2,[sp,#0x10]
        0x20005002:    460c        .F      MOV      r4,r1
        0x20005004:    4605        .F      MOV      r5,r0
        0x20005006:    2101        .!      MOVS     r1,#1
        0x20005008:    4620         F      MOV      r0,r4
        0x2000500a:    f001ffcd    ....    BL       $Ven$TT$L$$rom_stack_utility_little_endian_read_16 ; 0x20006fa8
        0x2000500e:    4607        .F      MOV      r7,r0
        0x20005010:    2103        .!      MOVS     r1,#3
        0x20005012:    4620         F      MOV      r0,r4
        0x20005014:    f001ffc8    ....    BL       $Ven$TT$L$$rom_stack_utility_little_endian_read_16 ; 0x20006fa8
        0x20005018:    9003        ..      STR      r0,[sp,#0xc]
        0x2000501a:    462e        .F      MOV      r6,r5
        0x2000501c:    8828        (.      LDRH     r0,[r5,#0]
        0x2000501e:    1d00        ..      ADDS     r0,r0,#4
        0x20005020:    b280        ..      UXTH     r0,r0
        0x20005022:    f002f857    ..W.    BL       $Ven$TT$L$$rom_l2cap_get_avail_data_buffer ; 0x200070d4
        0x20005026:    2800        .(      CMP      r0,#0
        0x20005028:    d013        ..      BEQ      0x20005052 ; patch_handle_prepare_write_request + 86
        0x2000502a:    4605        .F      MOV      r5,r0
        0x2000502c:    a805        ..      ADD      r0,sp,#0x14
        0x2000502e:    4639        9F      MOV      r1,r7
        0x20005030:    f002f862    ..b.    BL       $Ven$TT$L$$rom_att_find_handle ; 0x200070f8
        0x20005034:    2800        .(      CMP      r0,#0
        0x20005036:    d011        ..      BEQ      0x2000505c ; patch_handle_prepare_write_request + 96
        0x20005038:    a805        ..      ADD      r0,sp,#0x14
        0x2000503a:    88c0        ..      LDRH     r0,[r0,#6]
        0x2000503c:    0701        ..      LSLS     r1,r0,#28
        0x2000503e:    d501        ..      BPL      0x20005044 ; patch_handle_prepare_write_request + 72
        0x20005040:    05c0        ..      LSLS     r0,r0,#23
        0x20005042:    d412        ..      BMI      0x2000506a ; patch_handle_prepare_write_request + 110
        0x20005044:    2116        .!      MOVS     r1,#0x16
        0x20005046:    4628        (F      MOV      r0,r5
        0x20005048:    463a        :F      MOV      r2,r7
        0x2000504a:    f002f85b    ..[.    BL       $Ven$TT$L$$rom_setup_error_write_not_permitted ; 0x20007104
        0x2000504e:    4602        .F      MOV      r2,r0
        0x20005050:    e028        (.      B        0x200050a4 ; patch_handle_prepare_write_request + 168
        0x20005052:    481d        .H      LDR      r0,[pc,#116] ; [0x200050c8] = 0x5122
        0x20005054:    f001fd92    ....    BL       $Ven$TT$L$$mlog_0 ; 0x20006b7c
        0x20005058:    b00b        ..      ADD      sp,sp,#0x2c
        0x2000505a:    bdf0        ..      POP      {r4-r7,pc}
        0x2000505c:    2116        .!      MOVS     r1,#0x16
        0x2000505e:    4628        (F      MOV      r0,r5
        0x20005060:    463a        :F      MOV      r2,r7
        0x20005062:    f002f855    ..U.    BL       $Ven$TT$L$$rom_setup_error_invalid_handle ; 0x20007110
        0x20005066:    4602        .F      MOV      r2,r0
        0x20005068:    e01c        ..      B        0x200050a4 ; patch_handle_prepare_write_request + 168
        0x2000506a:    a905        ..      ADD      r1,sp,#0x14
        0x2000506c:    4630        0F      MOV      r0,r6
        0x2000506e:    f002f855    ..U.    BL       $Ven$TT$L$$rom_att_validate_security ; 0x2000711c
        0x20005072:    2800        .(      CMP      r0,#0
        0x20005074:    d001        ..      BEQ      0x2000507a ; patch_handle_prepare_write_request + 126
        0x20005076:    4603        .F      MOV      r3,r0
        0x20005078:    e00e        ..      B        0x20005098 ; patch_handle_prepare_write_request + 156
        0x2000507a:    88b0        ..      LDRH     r0,[r6,#4]
        0x2000507c:    9904        ..      LDR      r1,[sp,#0x10]
        0x2000507e:    1f49        I.      SUBS     r1,r1,#5
        0x20005080:    b289        ..      UXTH     r1,r1
        0x20005082:    1d62        b.      ADDS     r2,r4,#5
        0x20005084:    9200        ..      STR      r2,[sp,#0]
        0x20005086:    9101        ..      STR      r1,[sp,#4]
        0x20005088:    2201        ."      MOVS     r2,#1
        0x2000508a:    4639        9F      MOV      r1,r7
        0x2000508c:    9b03        ..      LDR      r3,[sp,#0xc]
        0x2000508e:    f000fac5    ....    BL       patch_ht32_att_write_callback ; 0x2000561c
        0x20005092:    0601        ..      LSLS     r1,r0,#24
        0x20005094:    d00c        ..      BEQ      0x200050b0 ; patch_handle_prepare_write_request + 180
        0x20005096:    b2c3        ..      UXTB     r3,r0
        0x20005098:    2116        .!      MOVS     r1,#0x16
        0x2000509a:    4628        (F      MOV      r0,r5
        0x2000509c:    463a        :F      MOV      r2,r7
        0x2000509e:    f002f81f    ....    BL       $Ven$TT$L$$rom_setup_error ; 0x200070e0
        0x200050a2:    4602        .F      MOV      r2,r0
        0x200050a4:    88b0        ..      LDRH     r0,[r6,#4]
        0x200050a6:    4629        )F      MOV      r1,r5
        0x200050a8:    f002f820    .. .    BL       $Ven$TT$L$$rom_att_tx_buffer_commit ; 0x200070ec
        0x200050ac:    b00b        ..      ADD      sp,sp,#0x2c
        0x200050ae:    bdf0        ..      POP      {r4-r7,pc}
        0x200050b0:    4628        (F      MOV      r0,r5
        0x200050b2:    4621        !F      MOV      r1,r4
        0x200050b4:    9c04        ..      LDR      r4,[sp,#0x10]
        0x200050b6:    4622        "F      MOV      r2,r4
        0x200050b8:    f7fef8fe    ....    BL       __aeabi_memcpy ; 0x200032b8
        0x200050bc:    2017        .       MOVS     r0,#0x17
        0x200050be:    7028        (p      STRB     r0,[r5,#0]
        0x200050c0:    8177        w.      STRH     r7,[r6,#0xa]
        0x200050c2:    4622        "F      MOV      r2,r4
        0x200050c4:    e7ee        ..      B        0x200050a4 ; patch_handle_prepare_write_request + 168
        0x200050c6:    46c0        .F      MOV      r8,r8
    $d.14
    __arm_cp.7_0
        0x200050c8:    00005122    "Q..    DCD    20770
    $t.7
    patch_handle_read_blob_request
        0x200050cc:    b5f0        ..      PUSH     {r4-r7,lr}
        0x200050ce:    b089        ..      SUB      sp,sp,#0x24
        0x200050d0:    460d        .F      MOV      r5,r1
        0x200050d2:    4604        .F      MOV      r4,r0
        0x200050d4:    2101        .!      MOVS     r1,#1
        0x200050d6:    4628        (F      MOV      r0,r5
        0x200050d8:    f001ff66    ..f.    BL       $Ven$TT$L$$rom_stack_utility_little_endian_read_16 ; 0x20006fa8
        0x200050dc:    4606        .F      MOV      r6,r0
        0x200050de:    2103        .!      MOVS     r1,#3
        0x200050e0:    4628        (F      MOV      r0,r5
        0x200050e2:    f001ff61    ..a.    BL       $Ven$TT$L$$rom_stack_utility_little_endian_read_16 ; 0x20006fa8
        0x200050e6:    9002        ..      STR      r0,[sp,#8]
        0x200050e8:    a803        ..      ADD      r0,sp,#0xc
        0x200050ea:    4631        1F      MOV      r1,r6
        0x200050ec:    f002f804    ....    BL       $Ven$TT$L$$rom_att_find_handle ; 0x200070f8
        0x200050f0:    4607        .F      MOV      r7,r0
        0x200050f2:    8820         .      LDRH     r0,[r4,#0]
        0x200050f4:    1d00        ..      ADDS     r0,r0,#4
        0x200050f6:    b280        ..      UXTH     r0,r0
        0x200050f8:    f001ffec    ....    BL       $Ven$TT$L$$rom_l2cap_get_avail_data_buffer ; 0x200070d4
        0x200050fc:    2800        .(      CMP      r0,#0
        0x200050fe:    d00c        ..      BEQ      0x2000511a ; patch_handle_read_blob_request + 78
        0x20005100:    4605        .F      MOV      r5,r0
        0x20005102:    2f00        ./      CMP      r7,#0
        0x20005104:    d00e        ..      BEQ      0x20005124 ; patch_handle_read_blob_request + 88
        0x20005106:    a803        ..      ADD      r0,sp,#0xc
        0x20005108:    88c0        ..      LDRH     r0,[r0,#6]
        0x2000510a:    0780        ..      LSLS     r0,r0,#30
        0x2000510c:    d410        ..      BMI      0x20005130 ; patch_handle_read_blob_request + 100
        0x2000510e:    210c        .!      MOVS     r1,#0xc
        0x20005110:    4628        (F      MOV      r0,r5
        0x20005112:    4632        2F      MOV      r2,r6
        0x20005114:    f002f808    ....    BL       $Ven$TT$L$$rom_setup_error_read_not_permitted ; 0x20007128
        0x20005118:    e03b        ;.      B        0x20005192 ; patch_handle_read_blob_request + 198
        0x2000511a:    4822        "H      LDR      r0,[pc,#136] ; [0x200051a4] = 0x511f
        0x2000511c:    f001fd2e    ....    BL       $Ven$TT$L$$mlog_0 ; 0x20006b7c
        0x20005120:    b009        ..      ADD      sp,sp,#0x24
        0x20005122:    bdf0        ..      POP      {r4-r7,pc}
        0x20005124:    210c        .!      MOVS     r1,#0xc
        0x20005126:    4628        (F      MOV      r0,r5
        0x20005128:    4632        2F      MOV      r2,r6
        0x2000512a:    f001fff1    ....    BL       $Ven$TT$L$$rom_setup_error_invalid_handle ; 0x20007110
        0x2000512e:    e030        0.      B        0x20005192 ; patch_handle_read_blob_request + 198
        0x20005130:    a903        ..      ADD      r1,sp,#0xc
        0x20005132:    4620         F      MOV      r0,r4
        0x20005134:    f001fff2    ....    BL       $Ven$TT$L$$rom_att_validate_security ; 0x2000711c
        0x20005138:    2800        .(      CMP      r0,#0
        0x2000513a:    d006        ..      BEQ      0x2000514a ; patch_handle_read_blob_request + 126
        0x2000513c:    4603        .F      MOV      r3,r0
        0x2000513e:    210c        .!      MOVS     r1,#0xc
        0x20005140:    4628        (F      MOV      r0,r5
        0x20005142:    4632        2F      MOV      r2,r6
        0x20005144:    f001ffcc    ....    BL       $Ven$TT$L$$rom_setup_error ; 0x200070e0
        0x20005148:    e023        #.      B        0x20005192 ; patch_handle_read_blob_request + 198
        0x2000514a:    88a0        ..      LDRH     r0,[r4,#4]
        0x2000514c:    af03        ..      ADD      r7,sp,#0xc
        0x2000514e:    4639        9F      MOV      r1,r7
        0x20005150:    f7fffdbe    ....    BL       patch_att_update_value_len ; 0x20004cd0
        0x20005154:    8a38        8.      LDRH     r0,[r7,#0x10]
        0x20005156:    9a02        ..      LDR      r2,[sp,#8]
        0x20005158:    4282        .B      CMP      r2,r0
        0x2000515a:    d905        ..      BLS      0x20005168 ; patch_handle_read_blob_request + 156
        0x2000515c:    210c        .!      MOVS     r1,#0xc
        0x2000515e:    4628        (F      MOV      r0,r5
        0x20005160:    4632        2F      MOV      r2,r6
        0x20005162:    f001ffe7    ....    BL       $Ven$TT$L$$rom_setup_error_invalid_offset ; 0x20007134
        0x20005166:    e014        ..      B        0x20005192 ; patch_handle_read_blob_request + 198
        0x20005168:    1a80        ..      SUBS     r0,r0,r2
        0x2000516a:    1c41        A.      ADDS     r1,r0,#1
        0x2000516c:    8820         .      LDRH     r0,[r4,#0]
        0x2000516e:    4281        .B      CMP      r1,r0
        0x20005170:    dd03        ..      BLE      0x2000517a ; patch_handle_read_blob_request + 174
        0x20005172:    1810        ..      ADDS     r0,r2,r0
        0x20005174:    1e40        @.      SUBS     r0,r0,#1
        0x20005176:    a903        ..      ADD      r1,sp,#0xc
        0x20005178:    8208        ..      STRH     r0,[r1,#0x10]
        0x2000517a:    9807        ..      LDR      r0,[sp,#0x1c]
        0x2000517c:    1a80        ..      SUBS     r0,r0,r2
        0x2000517e:    b281        ..      UXTH     r1,r0
        0x20005180:    88a0        ..      LDRH     r0,[r4,#4]
        0x20005182:    9100        ..      STR      r1,[sp,#0]
        0x20005184:    1c6b        k.      ADDS     r3,r5,#1
        0x20005186:    a903        ..      ADD      r1,sp,#0xc
        0x20005188:    f7fffc1a    ....    BL       patch_att_copy_value ; 0x200049c0
        0x2000518c:    210d        .!      MOVS     r1,#0xd
        0x2000518e:    7029        )p      STRB     r1,[r5,#0]
        0x20005190:    1c40        @.      ADDS     r0,r0,#1
        0x20005192:    88a1        ..      LDRH     r1,[r4,#4]
        0x20005194:    b282        ..      UXTH     r2,r0
        0x20005196:    4608        .F      MOV      r0,r1
        0x20005198:    4629        )F      MOV      r1,r5
        0x2000519a:    f001ffa7    ....    BL       $Ven$TT$L$$rom_att_tx_buffer_commit ; 0x200070ec
        0x2000519e:    b009        ..      ADD      sp,sp,#0x24
        0x200051a0:    bdf0        ..      POP      {r4-r7,pc}
        0x200051a2:    46c0        .F      MOV      r8,r8
    $d.8
    __arm_cp.4_0
        0x200051a4:    0000511f    .Q..    DCD    20767
    $t.3
    patch_handle_read_by_type_request
        0x200051a8:    b5f0        ..      PUSH     {r4-r7,lr}
        0x200051aa:    b091        ..      SUB      sp,sp,#0x44
        0x200051ac:    4614        .F      MOV      r4,r2
        0x200051ae:    460e        .F      MOV      r6,r1
        0x200051b0:    4607        .F      MOV      r7,r0
        0x200051b2:    2101        .!      MOVS     r1,#1
        0x200051b4:    4630        0F      MOV      r0,r6
        0x200051b6:    9109        ..      STR      r1,[sp,#0x24]
        0x200051b8:    f001fef6    ....    BL       $Ven$TT$L$$rom_stack_utility_little_endian_read_16 ; 0x20006fa8
        0x200051bc:    4605        .F      MOV      r5,r0
        0x200051be:    2103        .!      MOVS     r1,#3
        0x200051c0:    4630        0F      MOV      r0,r6
        0x200051c2:    f001fef1    ....    BL       $Ven$TT$L$$rom_stack_utility_little_endian_read_16 ; 0x20006fa8
        0x200051c6:    4602        .F      MOV      r2,r0
        0x200051c8:    4871        qH      LDR      r0,[pc,#452] ; [0x20005390] = 0x5117
        0x200051ca:    950a        ..      STR      r5,[sp,#0x28]
        0x200051cc:    4629        )F      MOV      r1,r5
        0x200051ce:    4605        .F      MOV      r5,r0
        0x200051d0:    9208        ..      STR      r2,[sp,#0x20]
        0x200051d2:    f001fd33    ..3.    BL       $Ven$TT$L$$mlog_1616 ; 0x20006c3c
        0x200051d6:    7972        ry      LDRB     r2,[r6,#5]
        0x200051d8:    1c68        h.      ADDS     r0,r5,#1
        0x200051da:    4621        !F      MOV      r1,r4
        0x200051dc:    f001fd2e    ....    BL       $Ven$TT$L$$mlog_1616 ; 0x20006c3c
        0x200051e0:    9707        ..      STR      r7,[sp,#0x1c]
        0x200051e2:    8838        8.      LDRH     r0,[r7,#0]
        0x200051e4:    1d00        ..      ADDS     r0,r0,#4
        0x200051e6:    b280        ..      UXTH     r0,r0
        0x200051e8:    f001ff74    ..t.    BL       $Ven$TT$L$$rom_l2cap_get_avail_data_buffer ; 0x200070d4
        0x200051ec:    2800        .(      CMP      r0,#0
        0x200051ee:    d004        ..      BEQ      0x200051fa ; patch_handle_read_by_type_request + 82
        0x200051f0:    4607        .F      MOV      r7,r0
        0x200051f2:    2c08        .,      CMP      r4,#8
        0x200051f4:    d306        ..      BCC      0x20005204 ; patch_handle_read_by_type_request + 92
        0x200051f6:    2010        .       MOVS     r0,#0x10
        0x200051f8:    e005        ..      B        0x20005206 ; patch_handle_read_by_type_request + 94
        0x200051fa:    1ca8        ..      ADDS     r0,r5,#2
        0x200051fc:    f001fcbe    ....    BL       $Ven$TT$L$$mlog_0 ; 0x20006b7c
        0x20005200:    b011        ..      ADD      sp,sp,#0x44
        0x20005202:    bdf0        ..      POP      {r4-r7,pc}
        0x20005204:    2002        .       MOVS     r0,#2
        0x20005206:    9006        ..      STR      r0,[sp,#0x18]
        0x20005208:    9a0a        ..      LDR      r2,[sp,#0x28]
        0x2000520a:    9908        ..      LDR      r1,[sp,#0x20]
        0x2000520c:    1e50        P.      SUBS     r0,r2,#1
        0x2000520e:    b280        ..      UXTH     r0,r0
        0x20005210:    4288        .B      CMP      r0,r1
        0x20005212:    d20a        ..      BCS      0x2000522a ; patch_handle_read_by_type_request + 130
        0x20005214:    1d70        p.      ADDS     r0,r6,#5
        0x20005216:    9005        ..      STR      r0,[sp,#0x14]
        0x20005218:    a80b        ..      ADD      r0,sp,#0x2c
        0x2000521a:    f001ff91    ....    BL       $Ven$TT$L$$rom_att_iterator_init ; 0x20007140
        0x2000521e:    2600        .&      MOVS     r6,#0
        0x20005220:    9603        ..      STR      r6,[sp,#0xc]
        0x20005222:    9602        ..      STR      r6,[sp,#8]
        0x20005224:    9809        ..      LDR      r0,[sp,#0x24]
        0x20005226:    9004        ..      STR      r0,[sp,#0x10]
        0x20005228:    e00f        ..      B        0x2000524a ; patch_handle_read_by_type_request + 162
        0x2000522a:    2108        .!      MOVS     r1,#8
        0x2000522c:    4638        8F      MOV      r0,r7
        0x2000522e:    f001ff6f    ..o.    BL       $Ven$TT$L$$rom_setup_error_invalid_handle ; 0x20007110
        0x20005232:    e09e        ..      B        0x20005372 ; patch_handle_read_by_type_request + 458
        0x20005234:    a90b        ..      ADD      r1,sp,#0x2c
        0x20005236:    9c07        ..      LDR      r4,[sp,#0x1c]
        0x20005238:    4620         F      MOV      r0,r4
        0x2000523a:    f001ff6f    ..o.    BL       $Ven$TT$L$$rom_att_validate_security ; 0x2000711c
        0x2000523e:    2800        .(      CMP      r0,#0
        0x20005240:    d034        4.      BEQ      0x200052ac ; patch_handle_read_by_type_request + 260
        0x20005242:    9003        ..      STR      r0,[sp,#0xc]
        0x20005244:    9c09        ..      LDR      r4,[sp,#0x24]
        0x20005246:    2c00        .,      CMP      r4,#0
        0x20005248:    d175        u.      BNE      0x20005336 ; patch_handle_read_by_type_request + 398
        0x2000524a:    a80b        ..      ADD      r0,sp,#0x2c
        0x2000524c:    f001ff7e    ..~.    BL       $Ven$TT$L$$rom_att_iterator_has_next ; 0x2000714c
        0x20005250:    2800        .(      CMP      r0,#0
        0x20005252:    d070        p.      BEQ      0x20005336 ; patch_handle_read_by_type_request + 398
        0x20005254:    ac0b        ..      ADD      r4,sp,#0x2c
        0x20005256:    4620         F      MOV      r0,r4
        0x20005258:    f001ff7e    ..~.    BL       $Ven$TT$L$$rom_att_iterator_fetch_next ; 0x20007158
        0x2000525c:    8922        ".      LDRH     r2,[r4,#8]
        0x2000525e:    88a1        ..      LDRH     r1,[r4,#4]
        0x20005260:    1ce8        ..      ADDS     r0,r5,#3
        0x20005262:    f001fceb    ....    BL       $Ven$TT$L$$mlog_1616 ; 0x20006c3c
        0x20005266:    980e        ..      LDR      r0,[sp,#0x38]
        0x20005268:    7801        .x      LDRB     r1,[r0,#0]
        0x2000526a:    7840        @x      LDRB     r0,[r0,#1]
        0x2000526c:    0200        ..      LSLS     r0,r0,#8
        0x2000526e:    1840        @.      ADDS     r0,r0,r1
        0x20005270:    b282        ..      UXTH     r2,r0
        0x20005272:    88e1        ..      LDRH     r1,[r4,#6]
        0x20005274:    1d28        (.      ADDS     r0,r5,#4
        0x20005276:    f001fce1    ....    BL       $Ven$TT$L$$mlog_1616 ; 0x20006c3c
        0x2000527a:    8920         .      LDRH     r0,[r4,#8]
        0x2000527c:    2800        .(      CMP      r0,#0
        0x2000527e:    d0e1        ..      BEQ      0x20005244 ; patch_handle_read_by_type_request + 156
        0x20005280:    2400        .$      MOVS     r4,#0
        0x20005282:    990a        ..      LDR      r1,[sp,#0x28]
        0x20005284:    4288        .B      CMP      r0,r1
        0x20005286:    d3de        ..      BCC      0x20005246 ; patch_handle_read_by_type_request + 158
        0x20005288:    9908        ..      LDR      r1,[sp,#0x20]
        0x2000528a:    4288        .B      CMP      r0,r1
        0x2000528c:    d8da        ..      BHI      0x20005244 ; patch_handle_read_by_type_request + 156
        0x2000528e:    a80b        ..      ADD      r0,sp,#0x2c
        0x20005290:    9905        ..      LDR      r1,[sp,#0x14]
        0x20005292:    9a06        ..      LDR      r2,[sp,#0x18]
        0x20005294:    f001ff66    ..f.    BL       $Ven$TT$L$$rom_att_iterator_match_uuid ; 0x20007164
        0x20005298:    2800        .(      CMP      r0,#0
        0x2000529a:    d0d4        ..      BEQ      0x20005246 ; patch_handle_read_by_type_request + 158
        0x2000529c:    a80b        ..      ADD      r0,sp,#0x2c
        0x2000529e:    88c0        ..      LDRH     r0,[r0,#6]
        0x200052a0:    0780        ..      LSLS     r0,r0,#30
        0x200052a2:    d4c7        ..      BMI      0x20005234 ; patch_handle_read_by_type_request + 140
        0x200052a4:    0430        0.      LSLS     r0,r6,#16
        0x200052a6:    d1ce        ..      BNE      0x20005246 ; patch_handle_read_by_type_request + 158
        0x200052a8:    9e0d        ..      LDR      r6,[sp,#0x34]
        0x200052aa:    e7cc        ..      B        0x20005246 ; patch_handle_read_by_type_request + 158
        0x200052ac:    88a0        ..      LDRH     r0,[r4,#4]
        0x200052ae:    a90b        ..      ADD      r1,sp,#0x2c
        0x200052b0:    f7fffd0e    ....    BL       patch_att_update_value_len ; 0x20004cd0
        0x200052b4:    980f        ..      LDR      r0,[sp,#0x3c]
        0x200052b6:    1c80        ..      ADDS     r0,r0,#2
        0x200052b8:    9904        ..      LDR      r1,[sp,#0x10]
        0x200052ba:    b289        ..      UXTH     r1,r1
        0x200052bc:    2200        ."      MOVS     r2,#0
        0x200052be:    9203        ..      STR      r2,[sp,#0xc]
        0x200052c0:    2902        .)      CMP      r1,#2
        0x200052c2:    d304        ..      BCC      0x200052ce ; patch_handle_read_by_type_request + 294
        0x200052c4:    b282        ..      UXTH     r2,r0
        0x200052c6:    9b02        ..      LDR      r3,[sp,#8]
        0x200052c8:    b29b        ..      UXTH     r3,r3
        0x200052ca:    4293        .B      CMP      r3,r2
        0x200052cc:    d1ba        ..      BNE      0x20005244 ; patch_handle_read_by_type_request + 156
        0x200052ce:    2901        .)      CMP      r1,#1
        0x200052d0:    d103        ..      BNE      0x200052da ; patch_handle_read_by_type_request + 306
        0x200052d2:    7078        xp      STRB     r0,[r7,#1]
        0x200052d4:    9b04        ..      LDR      r3,[sp,#0x10]
        0x200052d6:    1c5b        [.      ADDS     r3,r3,#1
        0x200052d8:    e001        ..      B        0x200052de ; patch_handle_read_by_type_request + 310
        0x200052da:    9b04        ..      LDR      r3,[sp,#0x10]
        0x200052dc:    9802        ..      LDR      r0,[sp,#8]
        0x200052de:    9002        ..      STR      r0,[sp,#8]
        0x200052e0:    b280        ..      UXTH     r0,r0
        0x200052e2:    b299        ..      UXTH     r1,r3
        0x200052e4:    180a        ..      ADDS     r2,r1,r0
        0x200052e6:    8820         .      LDRH     r0,[r4,#0]
        0x200052e8:    4282        .B      CMP      r2,r0
        0x200052ea:    9304        ..      STR      r3,[sp,#0x10]
        0x200052ec:    d906        ..      BLS      0x200052fc ; patch_handle_read_by_type_request + 340
        0x200052ee:    2902        .)      CMP      r1,#2
        0x200052f0:    d8a8        ..      BHI      0x20005244 ; patch_handle_read_by_type_request + 156
        0x200052f2:    1f00        ..      SUBS     r0,r0,#4
        0x200052f4:    aa0b        ..      ADD      r2,sp,#0x2c
        0x200052f6:    8210        ..      STRH     r0,[r2,#0x10]
        0x200052f8:    1c80        ..      ADDS     r0,r0,#2
        0x200052fa:    7078        xp      STRB     r0,[r7,#1]
        0x200052fc:    ac0b        ..      ADD      r4,sp,#0x2c
        0x200052fe:    8922        ".      LDRH     r2,[r4,#8]
        0x20005300:    4638        8F      MOV      r0,r7
        0x20005302:    f001ff35    ..5.    BL       $Ven$TT$L$$rom_stack_utility_little_endian_store_16 ; 0x20007170
        0x20005306:    9807        ..      LDR      r0,[sp,#0x1c]
        0x20005308:    8880        ..      LDRH     r0,[r0,#4]
        0x2000530a:    8a21        !.      LDRH     r1,[r4,#0x10]
        0x2000530c:    9100        ..      STR      r1,[sp,#0]
        0x2000530e:    9904        ..      LDR      r1,[sp,#0x10]
        0x20005310:    1c89        ..      ADDS     r1,r1,#2
        0x20005312:    9104        ..      STR      r1,[sp,#0x10]
        0x20005314:    b289        ..      UXTH     r1,r1
        0x20005316:    187b        {.      ADDS     r3,r7,r1
        0x20005318:    2200        ."      MOVS     r2,#0
        0x2000531a:    9203        ..      STR      r2,[sp,#0xc]
        0x2000531c:    4621        !F      MOV      r1,r4
        0x2000531e:    f7fffb4f    ..O.    BL       patch_att_copy_value ; 0x200049c0
        0x20005322:    4604        .F      MOV      r4,r0
        0x20005324:    1d68        h.      ADDS     r0,r5,#5
        0x20005326:    4621        !F      MOV      r1,r4
        0x20005328:    f001fc2e    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x2000532c:    9804        ..      LDR      r0,[sp,#0x10]
        0x2000532e:    1820         .      ADDS     r0,r4,r0
        0x20005330:    9004        ..      STR      r0,[sp,#0x10]
        0x20005332:    9c03        ..      LDR      r4,[sp,#0xc]
        0x20005334:    e787        ..      B        0x20005246 ; patch_handle_read_by_type_request + 158
        0x20005336:    9904        ..      LDR      r1,[sp,#0x10]
        0x20005338:    b288        ..      UXTH     r0,r1
        0x2000533a:    2802        .(      CMP      r0,#2
        0x2000533c:    d302        ..      BCC      0x20005344 ; patch_handle_read_by_type_request + 412
        0x2000533e:    2009        .       MOVS     r0,#9
        0x20005340:    7038        8p      STRB     r0,[r7,#0]
        0x20005342:    e017        ..      B        0x20005374 ; patch_handle_read_by_type_request + 460
        0x20005344:    9903        ..      LDR      r1,[sp,#0xc]
        0x20005346:    0608        ..      LSLS     r0,r1,#24
        0x20005348:    d006        ..      BEQ      0x20005358 ; patch_handle_read_by_type_request + 432
        0x2000534a:    b2cb        ..      UXTB     r3,r1
        0x2000534c:    2108        .!      MOVS     r1,#8
        0x2000534e:    4638        8F      MOV      r0,r7
        0x20005350:    9a0a        ..      LDR      r2,[sp,#0x28]
        0x20005352:    f001fec5    ....    BL       $Ven$TT$L$$rom_setup_error ; 0x200070e0
        0x20005356:    e00c        ..      B        0x20005372 ; patch_handle_read_by_type_request + 458
        0x20005358:    0430        0.      LSLS     r0,r6,#16
        0x2000535a:    d005        ..      BEQ      0x20005368 ; patch_handle_read_by_type_request + 448
        0x2000535c:    b2b2        ..      UXTH     r2,r6
        0x2000535e:    2108        .!      MOVS     r1,#8
        0x20005360:    4638        8F      MOV      r0,r7
        0x20005362:    f001fee1    ....    BL       $Ven$TT$L$$rom_setup_error_read_not_permitted ; 0x20007128
        0x20005366:    e004        ..      B        0x20005372 ; patch_handle_read_by_type_request + 458
        0x20005368:    2108        .!      MOVS     r1,#8
        0x2000536a:    4638        8F      MOV      r0,r7
        0x2000536c:    9a0a        ..      LDR      r2,[sp,#0x28]
        0x2000536e:    f001ff05    ....    BL       $Ven$TT$L$$rom_setup_error_atribute_not_found ; 0x2000717c
        0x20005372:    4601        .F      MOV      r1,r0
        0x20005374:    1da8        ..      ADDS     r0,r5,#6
        0x20005376:    b28c        ..      UXTH     r4,r1
        0x20005378:    4621        !F      MOV      r1,r4
        0x2000537a:    f001fc05    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x2000537e:    9807        ..      LDR      r0,[sp,#0x1c]
        0x20005380:    8880        ..      LDRH     r0,[r0,#4]
        0x20005382:    4639        9F      MOV      r1,r7
        0x20005384:    4622        "F      MOV      r2,r4
        0x20005386:    f001feb1    ....    BL       $Ven$TT$L$$rom_att_tx_buffer_commit ; 0x200070ec
        0x2000538a:    b011        ..      ADD      sp,sp,#0x44
        0x2000538c:    bdf0        ..      POP      {r4-r7,pc}
        0x2000538e:    46c0        .F      MOV      r8,r8
    $d.4
    __arm_cp.2_0
        0x20005390:    00005117    .Q..    DCD    20759
    $t.5
    patch_handle_read_request
        0x20005394:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20005396:    b087        ..      SUB      sp,sp,#0x1c
        0x20005398:    460a        .F      MOV      r2,r1
        0x2000539a:    4604        .F      MOV      r4,r0
        0x2000539c:    2101        .!      MOVS     r1,#1
        0x2000539e:    4610        .F      MOV      r0,r2
        0x200053a0:    f001fe02    ....    BL       $Ven$TT$L$$rom_stack_utility_little_endian_read_16 ; 0x20006fa8
        0x200053a4:    4606        .F      MOV      r6,r0
        0x200053a6:    a801        ..      ADD      r0,sp,#4
        0x200053a8:    4631        1F      MOV      r1,r6
        0x200053aa:    f001fea5    ....    BL       $Ven$TT$L$$rom_att_find_handle ; 0x200070f8
        0x200053ae:    4607        .F      MOV      r7,r0
        0x200053b0:    8820         .      LDRH     r0,[r4,#0]
        0x200053b2:    1d00        ..      ADDS     r0,r0,#4
        0x200053b4:    b280        ..      UXTH     r0,r0
        0x200053b6:    f001fe8d    ....    BL       $Ven$TT$L$$rom_l2cap_get_avail_data_buffer ; 0x200070d4
        0x200053ba:    2800        .(      CMP      r0,#0
        0x200053bc:    d00c        ..      BEQ      0x200053d8 ; patch_handle_read_request + 68
        0x200053be:    4605        .F      MOV      r5,r0
        0x200053c0:    2f00        ./      CMP      r7,#0
        0x200053c2:    d00e        ..      BEQ      0x200053e2 ; patch_handle_read_request + 78
        0x200053c4:    a801        ..      ADD      r0,sp,#4
        0x200053c6:    88c0        ..      LDRH     r0,[r0,#6]
        0x200053c8:    0780        ..      LSLS     r0,r0,#30
        0x200053ca:    d410        ..      BMI      0x200053ee ; patch_handle_read_request + 90
        0x200053cc:    210a        .!      MOVS     r1,#0xa
        0x200053ce:    4628        (F      MOV      r0,r5
        0x200053d0:    4632        2F      MOV      r2,r6
        0x200053d2:    f001fea9    ....    BL       $Ven$TT$L$$rom_setup_error_read_not_permitted ; 0x20007128
        0x200053d6:    e02e        ..      B        0x20005436 ; patch_handle_read_request + 162
        0x200053d8:    481b        .H      LDR      r0,[pc,#108] ; [0x20005448] = 0x511e
        0x200053da:    f001fbcf    ....    BL       $Ven$TT$L$$mlog_0 ; 0x20006b7c
        0x200053de:    b007        ..      ADD      sp,sp,#0x1c
        0x200053e0:    bdf0        ..      POP      {r4-r7,pc}
        0x200053e2:    210a        .!      MOVS     r1,#0xa
        0x200053e4:    4628        (F      MOV      r0,r5
        0x200053e6:    4632        2F      MOV      r2,r6
        0x200053e8:    f001fe92    ....    BL       $Ven$TT$L$$rom_setup_error_invalid_handle ; 0x20007110
        0x200053ec:    e023        #.      B        0x20005436 ; patch_handle_read_request + 162
        0x200053ee:    a901        ..      ADD      r1,sp,#4
        0x200053f0:    4620         F      MOV      r0,r4
        0x200053f2:    f001fe93    ....    BL       $Ven$TT$L$$rom_att_validate_security ; 0x2000711c
        0x200053f6:    2800        .(      CMP      r0,#0
        0x200053f8:    d006        ..      BEQ      0x20005408 ; patch_handle_read_request + 116
        0x200053fa:    4603        .F      MOV      r3,r0
        0x200053fc:    210a        .!      MOVS     r1,#0xa
        0x200053fe:    4628        (F      MOV      r0,r5
        0x20005400:    4632        2F      MOV      r2,r6
        0x20005402:    f001fe6d    ..m.    BL       $Ven$TT$L$$rom_setup_error ; 0x200070e0
        0x20005406:    e016        ..      B        0x20005436 ; patch_handle_read_request + 162
        0x20005408:    88a0        ..      LDRH     r0,[r4,#4]
        0x2000540a:    ae01        ..      ADD      r6,sp,#4
        0x2000540c:    4631        1F      MOV      r1,r6
        0x2000540e:    f7fffc5f    .._.    BL       patch_att_update_value_len ; 0x20004cd0
        0x20005412:    8820         .      LDRH     r0,[r4,#0]
        0x20005414:    8a31        1.      LDRH     r1,[r6,#0x10]
        0x20005416:    4281        .B      CMP      r1,r0
        0x20005418:    d302        ..      BCC      0x20005420 ; patch_handle_read_request + 140
        0x2000541a:    1e40        @.      SUBS     r0,r0,#1
        0x2000541c:    a901        ..      ADD      r1,sp,#4
        0x2000541e:    8208        ..      STRH     r0,[r1,#0x10]
        0x20005420:    88a0        ..      LDRH     r0,[r4,#4]
        0x20005422:    a901        ..      ADD      r1,sp,#4
        0x20005424:    8a0a        ..      LDRH     r2,[r1,#0x10]
        0x20005426:    9200        ..      STR      r2,[sp,#0]
        0x20005428:    1c6b        k.      ADDS     r3,r5,#1
        0x2000542a:    2200        ."      MOVS     r2,#0
        0x2000542c:    f7fffac8    ....    BL       patch_att_copy_value ; 0x200049c0
        0x20005430:    210b        .!      MOVS     r1,#0xb
        0x20005432:    7029        )p      STRB     r1,[r5,#0]
        0x20005434:    1c40        @.      ADDS     r0,r0,#1
        0x20005436:    88a1        ..      LDRH     r1,[r4,#4]
        0x20005438:    b282        ..      UXTH     r2,r0
        0x2000543a:    4608        .F      MOV      r0,r1
        0x2000543c:    4629        )F      MOV      r1,r5
        0x2000543e:    f001fe55    ..U.    BL       $Ven$TT$L$$rom_att_tx_buffer_commit ; 0x200070ec
        0x20005442:    b007        ..      ADD      sp,sp,#0x1c
        0x20005444:    bdf0        ..      POP      {r4-r7,pc}
        0x20005446:    46c0        .F      MOV      r8,r8
    $d.6
    __arm_cp.3_0
        0x20005448:    0000511e    .Q..    DCD    20766
    $t.15
    patch_handle_value_indication
        0x2000544c:    b580        ..      PUSH     {r7,lr}
        0x2000544e:    b082        ..      SUB      sp,sp,#8
        0x20005450:    8901        ..      LDRH     r1,[r0,#8]
        0x20005452:    2900        .)      CMP      r1,#0
        0x20005454:    d007        ..      BEQ      0x20005466 ; patch_handle_value_indication + 26
        0x20005456:    2300        .#      MOVS     r3,#0
        0x20005458:    8103        ..      STRH     r3,[r0,#8]
        0x2000545a:    8880        ..      LDRH     r0,[r0,#4]
        0x2000545c:    9300        ..      STR      r3,[sp,#0]
        0x2000545e:    9301        ..      STR      r3,[sp,#4]
        0x20005460:    2204        ."      MOVS     r2,#4
        0x20005462:    f000f8db    ....    BL       patch_ht32_att_write_callback ; 0x2000561c
        0x20005466:    b002        ..      ADD      sp,sp,#8
        0x20005468:    bd80        ..      POP      {r7,pc}
    patch_handle_write_command
        0x2000546a:    b5f0        ..      PUSH     {r4-r7,lr}
        0x2000546c:    b089        ..      SUB      sp,sp,#0x24
        0x2000546e:    4615        .F      MOV      r5,r2
        0x20005470:    460c        .F      MOV      r4,r1
        0x20005472:    4607        .F      MOV      r7,r0
        0x20005474:    2101        .!      MOVS     r1,#1
        0x20005476:    4620         F      MOV      r0,r4
        0x20005478:    f001fd96    ....    BL       $Ven$TT$L$$rom_stack_utility_little_endian_read_16 ; 0x20006fa8
        0x2000547c:    4606        .F      MOV      r6,r0
        0x2000547e:    a803        ..      ADD      r0,sp,#0xc
        0x20005480:    4631        1F      MOV      r1,r6
        0x20005482:    f001fe39    ..9.    BL       $Ven$TT$L$$rom_att_find_handle ; 0x200070f8
        0x20005486:    2800        .(      CMP      r0,#0
        0x20005488:    d00c        ..      BEQ      0x200054a4 ; patch_handle_write_command + 58
        0x2000548a:    2041        A       MOVS     r0,#0x41
        0x2000548c:    0080        ..      LSLS     r0,r0,#2
        0x2000548e:    a903        ..      ADD      r1,sp,#0xc
        0x20005490:    88c9        ..      LDRH     r1,[r1,#6]
        0x20005492:    4001        .@      ANDS     r1,r1,r0
        0x20005494:    4281        .B      CMP      r1,r0
        0x20005496:    d105        ..      BNE      0x200054a4 ; patch_handle_write_command + 58
        0x20005498:    a903        ..      ADD      r1,sp,#0xc
        0x2000549a:    4638        8F      MOV      r0,r7
        0x2000549c:    f001fe3e    ..>.    BL       $Ven$TT$L$$rom_att_validate_security ; 0x2000711c
        0x200054a0:    2800        .(      CMP      r0,#0
        0x200054a2:    d001        ..      BEQ      0x200054a8 ; patch_handle_write_command + 62
        0x200054a4:    b009        ..      ADD      sp,sp,#0x24
        0x200054a6:    bdf0        ..      POP      {r4-r7,pc}
        0x200054a8:    88b8        ..      LDRH     r0,[r7,#4]
        0x200054aa:    1ee9        ..      SUBS     r1,r5,#3
        0x200054ac:    b289        ..      UXTH     r1,r1
        0x200054ae:    1ce2        ..      ADDS     r2,r4,#3
        0x200054b0:    9200        ..      STR      r2,[sp,#0]
        0x200054b2:    9101        ..      STR      r1,[sp,#4]
        0x200054b4:    2200        ."      MOVS     r2,#0
        0x200054b6:    4631        1F      MOV      r1,r6
        0x200054b8:    4613        .F      MOV      r3,r2
        0x200054ba:    f000f8af    ....    BL       patch_ht32_att_write_callback ; 0x2000561c
        0x200054be:    b009        ..      ADD      sp,sp,#0x24
        0x200054c0:    bdf0        ..      POP      {r4-r7,pc}
        0x200054c2:    0000        ..      MOVS     r0,r0
    patch_handle_write_request
        0x200054c4:    b5f0        ..      PUSH     {r4-r7,lr}
        0x200054c6:    b08b        ..      SUB      sp,sp,#0x2c
        0x200054c8:    9203        ..      STR      r2,[sp,#0xc]
        0x200054ca:    460c        .F      MOV      r4,r1
        0x200054cc:    4607        .F      MOV      r7,r0
        0x200054ce:    2601        .&      MOVS     r6,#1
        0x200054d0:    4608        .F      MOV      r0,r1
        0x200054d2:    4631        1F      MOV      r1,r6
        0x200054d4:    f001fd68    ..h.    BL       $Ven$TT$L$$rom_stack_utility_little_endian_read_16 ; 0x20006fa8
        0x200054d8:    4601        .F      MOV      r1,r0
        0x200054da:    a805        ..      ADD      r0,sp,#0x14
        0x200054dc:    9104        ..      STR      r1,[sp,#0x10]
        0x200054de:    f001fe0b    ....    BL       $Ven$TT$L$$rom_att_find_handle ; 0x200070f8
        0x200054e2:    4605        .F      MOV      r5,r0
        0x200054e4:    2010        .       MOVS     r0,#0x10
        0x200054e6:    f001fdf5    ....    BL       $Ven$TT$L$$rom_l2cap_get_avail_data_buffer ; 0x200070d4
        0x200054ea:    2800        .(      CMP      r0,#0
        0x200054ec:    d00c        ..      BEQ      0x20005508 ; patch_handle_write_request + 68
        0x200054ee:    2d00        .-      CMP      r5,#0
        0x200054f0:    d00f        ..      BEQ      0x20005512 ; patch_handle_write_request + 78
        0x200054f2:    a905        ..      ADD      r1,sp,#0x14
        0x200054f4:    88ca        ..      LDRH     r2,[r1,#6]
        0x200054f6:    0711        ..      LSLS     r1,r2,#28
        0x200054f8:    463d        =F      MOV      r5,r7
        0x200054fa:    d413        ..      BMI      0x20005524 ; patch_handle_write_request + 96
        0x200054fc:    2112        .!      MOVS     r1,#0x12
        0x200054fe:    4604        .F      MOV      r4,r0
        0x20005500:    9a04        ..      LDR      r2,[sp,#0x10]
        0x20005502:    f001fdff    ....    BL       $Ven$TT$L$$rom_setup_error_write_not_permitted ; 0x20007104
        0x20005506:    e01a        ..      B        0x2000553e ; patch_handle_write_request + 122
        0x20005508:    4827        'H      LDR      r0,[pc,#156] ; [0x200055a8] = 0x5121
        0x2000550a:    f001fb37    ..7.    BL       $Ven$TT$L$$mlog_0 ; 0x20006b7c
        0x2000550e:    b00b        ..      ADD      sp,sp,#0x2c
        0x20005510:    bdf0        ..      POP      {r4-r7,pc}
        0x20005512:    2112        .!      MOVS     r1,#0x12
        0x20005514:    4604        .F      MOV      r4,r0
        0x20005516:    9a04        ..      LDR      r2,[sp,#0x10]
        0x20005518:    f001fdfa    ....    BL       $Ven$TT$L$$rom_setup_error_invalid_handle ; 0x20007110
        0x2000551c:    4621        !F      MOV      r1,r4
        0x2000551e:    4606        .F      MOV      r6,r0
        0x20005520:    463d        =F      MOV      r5,r7
        0x20005522:    e00e        ..      B        0x20005542 ; patch_handle_write_request + 126
        0x20005524:    a905        ..      ADD      r1,sp,#0x14
        0x20005526:    05d2        ..      LSLS     r2,r2,#23
        0x20005528:    d411        ..      BMI      0x2000554e ; patch_handle_write_request + 138
        0x2000552a:    8a09        ..      LDRH     r1,[r1,#0x10]
        0x2000552c:    1cc9        ..      ADDS     r1,r1,#3
        0x2000552e:    9b03        ..      LDR      r3,[sp,#0xc]
        0x20005530:    4299        .B      CMP      r1,r3
        0x20005532:    d20c        ..      BCS      0x2000554e ; patch_handle_write_request + 138
        0x20005534:    2112        .!      MOVS     r1,#0x12
        0x20005536:    4604        .F      MOV      r4,r0
        0x20005538:    9a04        ..      LDR      r2,[sp,#0x10]
        0x2000553a:    f001fe25    ..%.    BL       $Ven$TT$L$$rom_setup_error_invalid_value_length ; 0x20007188
        0x2000553e:    4621        !F      MOV      r1,r4
        0x20005540:    4606        .F      MOV      r6,r0
        0x20005542:    88a8        ..      LDRH     r0,[r5,#4]
        0x20005544:    4632        2F      MOV      r2,r6
        0x20005546:    f001fdd1    ....    BL       $Ven$TT$L$$rom_att_tx_buffer_commit ; 0x200070ec
        0x2000554a:    b00b        ..      ADD      sp,sp,#0x2c
        0x2000554c:    bdf0        ..      POP      {r4-r7,pc}
        0x2000554e:    2a00        .*      CMP      r2,#0
        0x20005550:    d5d4        ..      BPL      0x200054fc ; patch_handle_write_request + 56
        0x20005552:    4607        .F      MOV      r7,r0
        0x20005554:    a905        ..      ADD      r1,sp,#0x14
        0x20005556:    4628        (F      MOV      r0,r5
        0x20005558:    f001fde0    ....    BL       $Ven$TT$L$$rom_att_validate_security ; 0x2000711c
        0x2000555c:    2800        .(      CMP      r0,#0
        0x2000555e:    d005        ..      BEQ      0x2000556c ; patch_handle_write_request + 168
        0x20005560:    4603        .F      MOV      r3,r0
        0x20005562:    2112        .!      MOVS     r1,#0x12
        0x20005564:    463c        <F      MOV      r4,r7
        0x20005566:    4638        8F      MOV      r0,r7
        0x20005568:    9a04        ..      LDR      r2,[sp,#0x10]
        0x2000556a:    e013        ..      B        0x20005594 ; patch_handle_write_request + 208
        0x2000556c:    88a8        ..      LDRH     r0,[r5,#4]
        0x2000556e:    9903        ..      LDR      r1,[sp,#0xc]
        0x20005570:    1ec9        ..      SUBS     r1,r1,#3
        0x20005572:    b289        ..      UXTH     r1,r1
        0x20005574:    1ce2        ..      ADDS     r2,r4,#3
        0x20005576:    9200        ..      STR      r2,[sp,#0]
        0x20005578:    9101        ..      STR      r1,[sp,#4]
        0x2000557a:    2200        ."      MOVS     r2,#0
        0x2000557c:    9c04        ..      LDR      r4,[sp,#0x10]
        0x2000557e:    4621        !F      MOV      r1,r4
        0x20005580:    4613        .F      MOV      r3,r2
        0x20005582:    f000f84b    ..K.    BL       patch_ht32_att_write_callback ; 0x2000561c
        0x20005586:    0601        ..      LSLS     r1,r0,#24
        0x20005588:    d009        ..      BEQ      0x2000559e ; patch_handle_write_request + 218
        0x2000558a:    b2c3        ..      UXTB     r3,r0
        0x2000558c:    2112        .!      MOVS     r1,#0x12
        0x2000558e:    4622        "F      MOV      r2,r4
        0x20005590:    463c        <F      MOV      r4,r7
        0x20005592:    4638        8F      MOV      r0,r7
        0x20005594:    f001fda4    ....    BL       $Ven$TT$L$$rom_setup_error ; 0x200070e0
        0x20005598:    4639        9F      MOV      r1,r7
        0x2000559a:    4606        .F      MOV      r6,r0
        0x2000559c:    e7d1        ..      B        0x20005542 ; patch_handle_write_request + 126
        0x2000559e:    2013        .       MOVS     r0,#0x13
        0x200055a0:    4639        9F      MOV      r1,r7
        0x200055a2:    7038        8p      STRB     r0,[r7,#0]
        0x200055a4:    e7cd        ..      B        0x20005542 ; patch_handle_write_request + 126
        0x200055a6:    46c0        .F      MOV      r8,r8
    $d.12
    __arm_cp.6_0
        0x200055a8:    00005121    !Q..    DCD    20769
    $t.2
    patch_ht32_att_get_attribute_length_callback
        0x200055ac:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x200055ae:    460c        .F      MOV      r4,r1
        0x200055b0:    4605        .F      MOV      r5,r0
        0x200055b2:    4608        .F      MOV      r0,r1
        0x200055b4:    f7fffbd2    ....    BL       patch_gatt_find_server ; 0x20004d5c
        0x200055b8:    4601        .F      MOV      r1,r0
        0x200055ba:    4829        )H      LDR      r0,[pc,#164] ; [0x20005660] = 0x2000a668
        0x200055bc:    8802        ..      LDRH     r2,[r0,#0]
        0x200055be:    2000        .       MOVS     r0,#0
        0x200055c0:    4291        .B      CMP      r1,r2
        0x200055c2:    d00a        ..      BEQ      0x200055da ; patch_ht32_att_get_attribute_length_callback + 46
        0x200055c4:    00c9        ..      LSLS     r1,r1,#3
        0x200055c6:    4a27        'J      LDR      r2,[pc,#156] ; [0x20005664] = 0x2000a66c
        0x200055c8:    6812        .h      LDR      r2,[r2,#0]
        0x200055ca:    1851        Q.      ADDS     r1,r2,r1
        0x200055cc:    6849        Ih      LDR      r1,[r1,#4]
        0x200055ce:    680a        .h      LDR      r2,[r1,#0]
        0x200055d0:    2a00        .*      CMP      r2,#0
        0x200055d2:    d002        ..      BEQ      0x200055da ; patch_ht32_att_get_attribute_length_callback + 46
        0x200055d4:    4628        (F      MOV      r0,r5
        0x200055d6:    4621        !F      MOV      r1,r4
        0x200055d8:    4790        .G      BLX      r2
        0x200055da:    bdb0        ..      POP      {r4,r5,r7,pc}
    patch_ht32_att_read_callback
        0x200055dc:    b5f0        ..      PUSH     {r4-r7,lr}
        0x200055de:    b081        ..      SUB      sp,sp,#4
        0x200055e0:    461c        .F      MOV      r4,r3
        0x200055e2:    4615        .F      MOV      r5,r2
        0x200055e4:    460e        .F      MOV      r6,r1
        0x200055e6:    4607        .F      MOV      r7,r0
        0x200055e8:    4608        .F      MOV      r0,r1
        0x200055ea:    f7fffbb7    ....    BL       patch_gatt_find_server ; 0x20004d5c
        0x200055ee:    4601        .F      MOV      r1,r0
        0x200055f0:    481b        .H      LDR      r0,[pc,#108] ; [0x20005660] = 0x2000a668
        0x200055f2:    8802        ..      LDRH     r2,[r0,#0]
        0x200055f4:    2000        .       MOVS     r0,#0
        0x200055f6:    4291        .B      CMP      r1,r2
        0x200055f8:    d00e        ..      BEQ      0x20005618 ; patch_ht32_att_read_callback + 60
        0x200055fa:    4623        #F      MOV      r3,r4
        0x200055fc:    00c9        ..      LSLS     r1,r1,#3
        0x200055fe:    4a19        .J      LDR      r2,[pc,#100] ; [0x20005664] = 0x2000a66c
        0x20005600:    6812        .h      LDR      r2,[r2,#0]
        0x20005602:    1851        Q.      ADDS     r1,r2,r1
        0x20005604:    6849        Ih      LDR      r1,[r1,#4]
        0x20005606:    684c        Lh      LDR      r4,[r1,#4]
        0x20005608:    2c00        .,      CMP      r4,#0
        0x2000560a:    d005        ..      BEQ      0x20005618 ; patch_ht32_att_read_callback + 60
        0x2000560c:    9806        ..      LDR      r0,[sp,#0x18]
        0x2000560e:    9000        ..      STR      r0,[sp,#0]
        0x20005610:    4638        8F      MOV      r0,r7
        0x20005612:    4631        1F      MOV      r1,r6
        0x20005614:    462a        *F      MOV      r2,r5
        0x20005616:    47a0        .G      BLX      r4
        0x20005618:    b001        ..      ADD      sp,sp,#4
        0x2000561a:    bdf0        ..      POP      {r4-r7,pc}
    patch_ht32_att_write_callback
        0x2000561c:    b5f0        ..      PUSH     {r4-r7,lr}
        0x2000561e:    b083        ..      SUB      sp,sp,#0xc
        0x20005620:    461c        .F      MOV      r4,r3
        0x20005622:    4615        .F      MOV      r5,r2
        0x20005624:    460e        .F      MOV      r6,r1
        0x20005626:    4607        .F      MOV      r7,r0
        0x20005628:    4608        .F      MOV      r0,r1
        0x2000562a:    f7fffb97    ....    BL       patch_gatt_find_server ; 0x20004d5c
        0x2000562e:    4601        .F      MOV      r1,r0
        0x20005630:    480b        .H      LDR      r0,[pc,#44] ; [0x20005660] = 0x2000a668
        0x20005632:    8802        ..      LDRH     r2,[r0,#0]
        0x20005634:    2000        .       MOVS     r0,#0
        0x20005636:    4291        .B      CMP      r1,r2
        0x20005638:    d010        ..      BEQ      0x2000565c ; patch_ht32_att_write_callback + 64
        0x2000563a:    4623        #F      MOV      r3,r4
        0x2000563c:    00c9        ..      LSLS     r1,r1,#3
        0x2000563e:    4a09        .J      LDR      r2,[pc,#36] ; [0x20005664] = 0x2000a66c
        0x20005640:    6812        .h      LDR      r2,[r2,#0]
        0x20005642:    1851        Q.      ADDS     r1,r2,r1
        0x20005644:    6849        Ih      LDR      r1,[r1,#4]
        0x20005646:    688c        .h      LDR      r4,[r1,#8]
        0x20005648:    2c00        .,      CMP      r4,#0
        0x2000564a:    d007        ..      BEQ      0x2000565c ; patch_ht32_att_write_callback + 64
        0x2000564c:    9809        ..      LDR      r0,[sp,#0x24]
        0x2000564e:    9908        ..      LDR      r1,[sp,#0x20]
        0x20005650:    9100        ..      STR      r1,[sp,#0]
        0x20005652:    9001        ..      STR      r0,[sp,#4]
        0x20005654:    4638        8F      MOV      r0,r7
        0x20005656:    4631        1F      MOV      r1,r6
        0x20005658:    462a        *F      MOV      r2,r5
        0x2000565a:    47a0        .G      BLX      r4
        0x2000565c:    b003        ..      ADD      sp,sp,#0xc
        0x2000565e:    bdf0        ..      POP      {r4-r7,pc}
    $d.7
    __arm_cp.3_0
        0x20005660:    2000a668    h..     DCD    536913512
    __arm_cp.3_1
        0x20005664:    2000a66c    l..     DCD    536913516
    $t.1
    patch_llc_address
        0x20005668:    4808        .H      LDR      r0,[pc,#32] ; [0x2000568c] = 0x20000b50
        0x2000566a:    4901        .I      LDR      r1,[pc,#4] ; [0x20005670] = 0x20005a99
        0x2000566c:    64c1        .d      STR      r1,[r0,#0x4c]
        0x2000566e:    4770        pG      BX       lr
    $d.2
    __arm_cp.1_1
        0x20005670:    20005a99    .Z.     DCD    536894105
    $t.3
    patch_llc_ctrl_procedure
        0x20005674:    2009        .       MOVS     r0,#9
        0x20005676:    0140        @.      LSLS     r0,r0,#5
        0x20005678:    4904        .I      LDR      r1,[pc,#16] ; [0x2000568c] = 0x20000b50
        0x2000567a:    4a05        .J      LDR      r2,[pc,#20] ; [0x20005690] = 0x200062d5
        0x2000567c:    500a        .P      STR      r2,[r1,r0]
        0x2000567e:    48e2        .H      LDR      r0,[pc,#904] ; [0x20005a08] = 0x2000a670
        0x20005680:    2100        .!      MOVS     r1,#0
        0x20005682:    4a04        .J      LDR      r2,[pc,#16] ; [0x20005694] = 0x49ed
        0x20005684:    6002        .`      STR      r2,[r0,#0]
        0x20005686:    6041        A`      STR      r1,[r0,#4]
        0x20005688:    4770        pG      BX       lr
        0x2000568a:    46c0        .F      MOV      r8,r8
    $d.4
    __arm_cp.1_0
        0x2000568c:    20000b50    P..     DCD    536873808
    __arm_cp.1_1
        0x20005690:    200062d5    .b.     DCD    536896213
    __arm_cp.1_3
        0x20005694:    000049ed    .I..    DCD    18925
    $t.2
    patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu
        0x20005698:    b5f0        ..      PUSH     {r4-r7,lr}
        0x2000569a:    b087        ..      SUB      sp,sp,#0x1c
        0x2000569c:    4605        .F      MOV      r5,r0
        0x2000569e:    48d8        .H      LDR      r0,[pc,#864] ; [0x20005a00] = 0x449
        0x200056a0:    182e        ..      ADDS     r6,r5,r0
        0x200056a2:    2045        E       MOVS     r0,#0x45
        0x200056a4:    0100        ..      LSLS     r0,r0,#4
        0x200056a6:    1828        (.      ADDS     r0,r5,r0
        0x200056a8:    9002        ..      STR      r0,[sp,#8]
        0x200056aa:    48f8        .H      LDR      r0,[pc,#992] ; [0x20005a8c] = 0x351
        0x200056ac:    5c2b        +\      LDRB     r3,[r5,r0]
        0x200056ae:    9103        ..      STR      r1,[sp,#0xc]
        0x200056b0:    7b49        I{      LDRB     r1,[r1,#0xd]
        0x200056b2:    6897        .h      LDR      r7,[r2,#8]
        0x200056b4:    68d0        .h      LDR      r0,[r2,#0xc]
        0x200056b6:    462c        ,F      MOV      r4,r5
        0x200056b8:    3450        P4      ADDS     r4,r4,#0x50
        0x200056ba:    7802        .x      LDRB     r2,[r0,#0]
        0x200056bc:    2b00        .+      CMP      r3,#0
        0x200056be:    d045        E.      BEQ      0x2000574c ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 180
        0x200056c0:    2900        .)      CMP      r1,#0
        0x200056c2:    d065        e.      BEQ      0x20005790 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 248
        0x200056c4:    2a09        .*      CMP      r2,#9
        0x200056c6:    d000        ..      BEQ      0x200056ca ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 50
        0x200056c8:    e0b1        ..      B        0x2000582e ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 406
        0x200056ca:    21ff        .!      MOVS     r1,#0xff
        0x200056cc:    0209        ..      LSLS     r1,r1,#8
        0x200056ce:    400f        .@      ANDS     r7,r7,r1
        0x200056d0:    2109        .!      MOVS     r1,#9
        0x200056d2:    0209        ..      LSLS     r1,r1,#8
        0x200056d4:    428f        .B      CMP      r7,r1
        0x200056d6:    d000        ..      BEQ      0x200056da ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 66
        0x200056d8:    e0fc        ..      B        0x200058d4 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 572
        0x200056da:    7a02        .z      LDRB     r2,[r0,#8]
        0x200056dc:    a904        ..      ADD      r1,sp,#0x10
        0x200056de:    720a        .r      STRB     r2,[r1,#8]
        0x200056e0:    7902        .y      LDRB     r2,[r0,#4]
        0x200056e2:    7943        Cy      LDRB     r3,[r0,#5]
        0x200056e4:    021b        ..      LSLS     r3,r3,#8
        0x200056e6:    189a        ..      ADDS     r2,r3,r2
        0x200056e8:    7983        .y      LDRB     r3,[r0,#6]
        0x200056ea:    79c5        .y      LDRB     r5,[r0,#7]
        0x200056ec:    022d        -.      LSLS     r5,r5,#8
        0x200056ee:    18eb        ..      ADDS     r3,r5,r3
        0x200056f0:    041b        ..      LSLS     r3,r3,#16
        0x200056f2:    189a        ..      ADDS     r2,r3,r2
        0x200056f4:    9205        ..      STR      r2,[sp,#0x14]
        0x200056f6:    7802        .x      LDRB     r2,[r0,#0]
        0x200056f8:    7843        Cx      LDRB     r3,[r0,#1]
        0x200056fa:    021b        ..      LSLS     r3,r3,#8
        0x200056fc:    189a        ..      ADDS     r2,r3,r2
        0x200056fe:    7883        .x      LDRB     r3,[r0,#2]
        0x20005700:    78c0        .x      LDRB     r0,[r0,#3]
        0x20005702:    0200        ..      LSLS     r0,r0,#8
        0x20005704:    18c0        ..      ADDS     r0,r0,r3
        0x20005706:    0400        ..      LSLS     r0,r0,#16
        0x20005708:    1880        ..      ADDS     r0,r0,r2
        0x2000570a:    9004        ..      STR      r0,[sp,#0x10]
        0x2000570c:    1c48        H.      ADDS     r0,r1,#1
        0x2000570e:    f001fd41    ..A.    BL       $Ven$TT$L$$rom_llc_tool_read_little_endian_uint64 ; 0x20007194
        0x20005712:    4607        .F      MOV      r7,r0
        0x20005714:    460d        .F      MOV      r5,r1
        0x20005716:    2001        .       MOVS     r0,#1
        0x20005718:    7030        0p      STRB     r0,[r6,#0]
        0x2000571a:    2600        .&      MOVS     r6,#0
        0x2000571c:    9a03        ..      LDR      r2,[sp,#0xc]
        0x2000571e:    7296        .r      STRB     r6,[r2,#0xa]
        0x20005720:    2010        .       MOVS     r0,#0x10
        0x20005722:    4381        .C      BICS     r1,r1,r0
        0x20005724:    48b9        .H      LDR      r0,[pc,#740] ; [0x20005a0c] = 0xf787cf00
        0x20005726:    302f        /0      ADDS     r0,r0,#0x2f
        0x20005728:    4038        8@      ANDS     r0,r0,r7
        0x2000572a:    9b02        ..      LDR      r3,[sp,#8]
        0x2000572c:    c303        ..      STM      r3!,{r0,r1}
        0x2000572e:    7b51        Q{      LDRB     r1,[r2,#0xd]
        0x20005730:    48b4        .H      LDR      r0,[pc,#720] ; [0x20005a04] = 0x36ce
        0x20005732:    1c40        @.      ADDS     r0,r0,#1
        0x20005734:    f001fa28    ..(.    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20005738:    4ab6        .J      LDR      r2,[pc,#728] ; [0x20005a14] = 0xf787cf2f
        0x2000573a:    403a        :@      ANDS     r2,r2,r7
        0x2000573c:    2051        Q       MOVS     r0,#0x51
        0x2000573e:    4385        .C      BICS     r5,r5,r0
        0x20005740:    8821        !.      LDRH     r1,[r4,#0]
        0x20005742:    4630        0F      MOV      r0,r6
        0x20005744:    462b        +F      MOV      r3,r5
        0x20005746:    f001fd2b    ..+.    BL       $Ven$TT$L$$rom_controller_event_HCI_LE_Read_Remote_Features_Complete ; 0x200071a0
        0x2000574a:    e155        U.      B        0x200059f8 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x2000574c:    2900        .)      CMP      r1,#0
        0x2000574e:    d070        p.      BEQ      0x20005832 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 410
        0x20005750:    2a09        .*      CMP      r2,#9
        0x20005752:    d100        ..      BNE      0x20005756 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 190
        0x20005754:    e0ca        ..      B        0x200058ec ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 596
        0x20005756:    2a07        .*      CMP      r2,#7
        0x20005758:    d000        ..      BEQ      0x2000575c ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 196
        0x2000575a:    e108        ..      B        0x2000596e ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 726
        0x2000575c:    23ff        .#      MOVS     r3,#0xff
        0x2000575e:    021b        ..      LSLS     r3,r3,#8
        0x20005760:    401f        .@      ANDS     r7,r7,r3
        0x20005762:    2601        .&      MOVS     r6,#1
        0x20005764:    0273        s.      LSLS     r3,r6,#9
        0x20005766:    429f        .B      CMP      r7,r3
        0x20005768:    d000        ..      BEQ      0x2000576c ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 212
        0x2000576a:    e115        ..      B        0x20005998 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 768
        0x2000576c:    7840        @x      LDRB     r0,[r0,#1]
        0x2000576e:    280e        .(      CMP      r0,#0xe
        0x20005770:    d000        ..      BEQ      0x20005774 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 220
        0x20005772:    e141        A.      B        0x200059f8 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x20005774:    2600        .&      MOVS     r6,#0
        0x20005776:    9803        ..      LDR      r0,[sp,#0xc]
        0x20005778:    7286        .r      STRB     r6,[r0,#0xa]
        0x2000577a:    48a2        .H      LDR      r0,[pc,#648] ; [0x20005a04] = 0x36ce
        0x2000577c:    1d40        @.      ADDS     r0,r0,#5
        0x2000577e:    f001fa03    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20005782:    8821        !.      LDRH     r1,[r4,#0]
        0x20005784:    201a        .       MOVS     r0,#0x1a
        0x20005786:    4632        2F      MOV      r2,r6
        0x20005788:    4633        3F      MOV      r3,r6
        0x2000578a:    f001fd09    ....    BL       $Ven$TT$L$$rom_controller_event_HCI_LE_Read_Remote_Features_Complete ; 0x200071a0
        0x2000578e:    e133        3.      B        0x200059f8 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x20005790:    2a0e        .*      CMP      r2,#0xe
        0x20005792:    d000        ..      BEQ      0x20005796 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 254
        0x20005794:    e09c        ..      B        0x200058d0 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 568
        0x20005796:    21ff        .!      MOVS     r1,#0xff
        0x20005798:    0209        ..      LSLS     r1,r1,#8
        0x2000579a:    4039        9@      ANDS     r1,r1,r7
        0x2000579c:    2309        .#      MOVS     r3,#9
        0x2000579e:    021b        ..      LSLS     r3,r3,#8
        0x200057a0:    4299        .B      CMP      r1,r3
        0x200057a2:    d000        ..      BEQ      0x200057a6 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 270
        0x200057a4:    e0e7        ..      B        0x20005976 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 734
        0x200057a6:    7a02        .z      LDRB     r2,[r0,#8]
        0x200057a8:    a904        ..      ADD      r1,sp,#0x10
        0x200057aa:    720a        .r      STRB     r2,[r1,#8]
        0x200057ac:    7902        .y      LDRB     r2,[r0,#4]
        0x200057ae:    7943        Cy      LDRB     r3,[r0,#5]
        0x200057b0:    021b        ..      LSLS     r3,r3,#8
        0x200057b2:    189a        ..      ADDS     r2,r3,r2
        0x200057b4:    7983        .y      LDRB     r3,[r0,#6]
        0x200057b6:    79c4        .y      LDRB     r4,[r0,#7]
        0x200057b8:    0224        $.      LSLS     r4,r4,#8
        0x200057ba:    18e3        ..      ADDS     r3,r4,r3
        0x200057bc:    041b        ..      LSLS     r3,r3,#16
        0x200057be:    189a        ..      ADDS     r2,r3,r2
        0x200057c0:    9205        ..      STR      r2,[sp,#0x14]
        0x200057c2:    7802        .x      LDRB     r2,[r0,#0]
        0x200057c4:    7843        Cx      LDRB     r3,[r0,#1]
        0x200057c6:    021b        ..      LSLS     r3,r3,#8
        0x200057c8:    189a        ..      ADDS     r2,r3,r2
        0x200057ca:    7883        .x      LDRB     r3,[r0,#2]
        0x200057cc:    78c0        .x      LDRB     r0,[r0,#3]
        0x200057ce:    0200        ..      LSLS     r0,r0,#8
        0x200057d0:    18c0        ..      ADDS     r0,r0,r3
        0x200057d2:    0400        ..      LSLS     r0,r0,#16
        0x200057d4:    1880        ..      ADDS     r0,r0,r2
        0x200057d6:    9004        ..      STR      r0,[sp,#0x10]
        0x200057d8:    1c48        H.      ADDS     r0,r1,#1
        0x200057da:    f001fcdb    ....    BL       $Ven$TT$L$$rom_llc_tool_read_little_endian_uint64 ; 0x20007194
        0x200057de:    9101        ..      STR      r1,[sp,#4]
        0x200057e0:    4a89        .J      LDR      r2,[pc,#548] ; [0x20005a08] = 0x2000a670
        0x200057e2:    ca0a        ..      LDM      r2!,{r1,r3}
        0x200057e4:    4a89        .J      LDR      r2,[pc,#548] ; [0x20005a0c] = 0xf787cf00
        0x200057e6:    9000        ..      STR      r0,[sp,#0]
        0x200057e8:    4008        .@      ANDS     r0,r0,r1
        0x200057ea:    4011        .@      ANDS     r1,r1,r2
        0x200057ec:    242f        /$      MOVS     r4,#0x2f
        0x200057ee:    4004        .@      ANDS     r4,r4,r0
        0x200057f0:    190a        ..      ADDS     r2,r1,r4
        0x200057f2:    2710        .'      MOVS     r7,#0x10
        0x200057f4:    43bb        .C      BICS     r3,r3,r7
        0x200057f6:    4628        (F      MOV      r0,r5
        0x200057f8:    f001fcd8    ....    BL       $Ven$TT$L$$rom_llc_feature_exchange_procedure_alloc_rsp_pdu ; 0x200071ac
        0x200057fc:    2800        .(      CMP      r0,#0
        0x200057fe:    d100        ..      BNE      0x20005802 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 362
        0x20005800:    e0f7        ..      B        0x200059f2 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 858
        0x20005802:    4602        .F      MOV      r2,r0
        0x20005804:    43f8        .C      MVNS     r0,r7
        0x20005806:    2101        .!      MOVS     r1,#1
        0x20005808:    7031        1p      STRB     r1,[r6,#0]
        0x2000580a:    4981        .I      LDR      r1,[pc,#516] ; [0x20005a10] = 0x280a9
        0x2000580c:    6191        .a      STR      r1,[r2,#0x18]
        0x2000580e:    9903        ..      LDR      r1,[sp,#0xc]
        0x20005810:    61d1        .a      STR      r1,[r2,#0x1c]
        0x20005812:    9b01        ..      LDR      r3,[sp,#4]
        0x20005814:    4003        .@      ANDS     r3,r3,r0
        0x20005816:    9800        ..      LDR      r0,[sp,#0]
        0x20005818:    4e7c        |N      LDR      r6,[pc,#496] ; [0x20005a0c] = 0xf787cf00
        0x2000581a:    4030        0@      ANDS     r0,r0,r6
        0x2000581c:    4304        .C      ORRS     r4,r4,r0
        0x2000581e:    9802        ..      LDR      r0,[sp,#8]
        0x20005820:    6004        .`      STR      r4,[r0,#0]
        0x20005822:    6043        C`      STR      r3,[r0,#4]
        0x20005824:    4628        (F      MOV      r0,r5
        0x20005826:    f001fcc7    ....    BL       $Ven$TT$L$$rom_llc_ctrl_procedure_send_ctrl_pdu ; 0x200071b8
        0x2000582a:    2600        .&      MOVS     r6,#0
        0x2000582c:    e0e4        ..      B        0x200059f8 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x2000582e:    2601        .&      MOVS     r6,#1
        0x20005830:    e0e2        ..      B        0x200059f8 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x20005832:    2a08        .*      CMP      r2,#8
        0x20005834:    d000        ..      BEQ      0x20005838 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 416
        0x20005836:    e09c        ..      B        0x20005972 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 730
        0x20005838:    21ff        .!      MOVS     r1,#0xff
        0x2000583a:    0209        ..      LSLS     r1,r1,#8
        0x2000583c:    4039        9@      ANDS     r1,r1,r7
        0x2000583e:    2309        .#      MOVS     r3,#9
        0x20005840:    021b        ..      LSLS     r3,r3,#8
        0x20005842:    4299        .B      CMP      r1,r3
        0x20005844:    d000        ..      BEQ      0x20005848 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 432
        0x20005846:    e0c1        ..      B        0x200059cc ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 820
        0x20005848:    7a02        .z      LDRB     r2,[r0,#8]
        0x2000584a:    a904        ..      ADD      r1,sp,#0x10
        0x2000584c:    720a        .r      STRB     r2,[r1,#8]
        0x2000584e:    7902        .y      LDRB     r2,[r0,#4]
        0x20005850:    7943        Cy      LDRB     r3,[r0,#5]
        0x20005852:    021b        ..      LSLS     r3,r3,#8
        0x20005854:    189a        ..      ADDS     r2,r3,r2
        0x20005856:    7983        .y      LDRB     r3,[r0,#6]
        0x20005858:    79c4        .y      LDRB     r4,[r0,#7]
        0x2000585a:    0224        $.      LSLS     r4,r4,#8
        0x2000585c:    18e3        ..      ADDS     r3,r4,r3
        0x2000585e:    041b        ..      LSLS     r3,r3,#16
        0x20005860:    189a        ..      ADDS     r2,r3,r2
        0x20005862:    9205        ..      STR      r2,[sp,#0x14]
        0x20005864:    7802        .x      LDRB     r2,[r0,#0]
        0x20005866:    7843        Cx      LDRB     r3,[r0,#1]
        0x20005868:    021b        ..      LSLS     r3,r3,#8
        0x2000586a:    189a        ..      ADDS     r2,r3,r2
        0x2000586c:    7883        .x      LDRB     r3,[r0,#2]
        0x2000586e:    78c0        .x      LDRB     r0,[r0,#3]
        0x20005870:    0200        ..      LSLS     r0,r0,#8
        0x20005872:    18c0        ..      ADDS     r0,r0,r3
        0x20005874:    0400        ..      LSLS     r0,r0,#16
        0x20005876:    1880        ..      ADDS     r0,r0,r2
        0x20005878:    9004        ..      STR      r0,[sp,#0x10]
        0x2000587a:    1c48        H.      ADDS     r0,r1,#1
        0x2000587c:    f001fc8a    ....    BL       $Ven$TT$L$$rom_llc_tool_read_little_endian_uint64 ; 0x20007194
        0x20005880:    9101        ..      STR      r1,[sp,#4]
        0x20005882:    4a61        aJ      LDR      r2,[pc,#388] ; [0x20005a08] = 0x2000a670
        0x20005884:    ca0a        ..      LDM      r2!,{r1,r3}
        0x20005886:    4a61        aJ      LDR      r2,[pc,#388] ; [0x20005a0c] = 0xf787cf00
        0x20005888:    9000        ..      STR      r0,[sp,#0]
        0x2000588a:    4008        .@      ANDS     r0,r0,r1
        0x2000588c:    4011        .@      ANDS     r1,r1,r2
        0x2000588e:    242f        /$      MOVS     r4,#0x2f
        0x20005890:    4004        .@      ANDS     r4,r4,r0
        0x20005892:    190a        ..      ADDS     r2,r1,r4
        0x20005894:    2710        .'      MOVS     r7,#0x10
        0x20005896:    43bb        .C      BICS     r3,r3,r7
        0x20005898:    4628        (F      MOV      r0,r5
        0x2000589a:    f001fc87    ....    BL       $Ven$TT$L$$rom_llc_feature_exchange_procedure_alloc_rsp_pdu ; 0x200071ac
        0x2000589e:    2800        .(      CMP      r0,#0
        0x200058a0:    d100        ..      BNE      0x200058a4 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 524
        0x200058a2:    e0a8        ..      B        0x200059f6 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 862
        0x200058a4:    4602        .F      MOV      r2,r0
        0x200058a6:    43f8        .C      MVNS     r0,r7
        0x200058a8:    2101        .!      MOVS     r1,#1
        0x200058aa:    7031        1p      STRB     r1,[r6,#0]
        0x200058ac:    4958        XI      LDR      r1,[pc,#352] ; [0x20005a10] = 0x280a9
        0x200058ae:    6191        .a      STR      r1,[r2,#0x18]
        0x200058b0:    9903        ..      LDR      r1,[sp,#0xc]
        0x200058b2:    61d1        .a      STR      r1,[r2,#0x1c]
        0x200058b4:    9b01        ..      LDR      r3,[sp,#4]
        0x200058b6:    4003        .@      ANDS     r3,r3,r0
        0x200058b8:    9800        ..      LDR      r0,[sp,#0]
        0x200058ba:    4e54        TN      LDR      r6,[pc,#336] ; [0x20005a0c] = 0xf787cf00
        0x200058bc:    4030        0@      ANDS     r0,r0,r6
        0x200058be:    4304        .C      ORRS     r4,r4,r0
        0x200058c0:    9802        ..      LDR      r0,[sp,#8]
        0x200058c2:    6004        .`      STR      r4,[r0,#0]
        0x200058c4:    6043        C`      STR      r3,[r0,#4]
        0x200058c6:    4628        (F      MOV      r0,r5
        0x200058c8:    f001fc76    ..v.    BL       $Ven$TT$L$$rom_llc_ctrl_procedure_send_ctrl_pdu ; 0x200071b8
        0x200058cc:    2600        .&      MOVS     r6,#0
        0x200058ce:    e093        ..      B        0x200059f8 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x200058d0:    2601        .&      MOVS     r6,#1
        0x200058d2:    e091        ..      B        0x200059f8 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x200058d4:    4628        (F      MOV      r0,r5
        0x200058d6:    9c03        ..      LDR      r4,[sp,#0xc]
        0x200058d8:    4621        !F      MOV      r1,r4
        0x200058da:    f001fc73    ..s.    BL       $Ven$TT$L$$rom_llc_ctrl_procedure_rsp_unknown ; 0x200071c4
        0x200058de:    2600        .&      MOVS     r6,#0
        0x200058e0:    72a6        .r      STRB     r6,[r4,#0xa]
        0x200058e2:    7b61        a{      LDRB     r1,[r4,#0xd]
        0x200058e4:    4847        GH      LDR      r0,[pc,#284] ; [0x20005a04] = 0x36ce
        0x200058e6:    f001f94f    ..O.    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x200058ea:    e085        ..      B        0x200059f8 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x200058ec:    21ff        .!      MOVS     r1,#0xff
        0x200058ee:    0209        ..      LSLS     r1,r1,#8
        0x200058f0:    400f        .@      ANDS     r7,r7,r1
        0x200058f2:    2109        .!      MOVS     r1,#9
        0x200058f4:    0209        ..      LSLS     r1,r1,#8
        0x200058f6:    4b43        CK      LDR      r3,[pc,#268] ; [0x20005a04] = 0x36ce
        0x200058f8:    428f        .B      CMP      r7,r1
        0x200058fa:    d15a        Z.      BNE      0x200059b2 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 794
        0x200058fc:    7a02        .z      LDRB     r2,[r0,#8]
        0x200058fe:    a904        ..      ADD      r1,sp,#0x10
        0x20005900:    720a        .r      STRB     r2,[r1,#8]
        0x20005902:    7902        .y      LDRB     r2,[r0,#4]
        0x20005904:    7943        Cy      LDRB     r3,[r0,#5]
        0x20005906:    021b        ..      LSLS     r3,r3,#8
        0x20005908:    189a        ..      ADDS     r2,r3,r2
        0x2000590a:    7983        .y      LDRB     r3,[r0,#6]
        0x2000590c:    79c5        .y      LDRB     r5,[r0,#7]
        0x2000590e:    022d        -.      LSLS     r5,r5,#8
        0x20005910:    18eb        ..      ADDS     r3,r5,r3
        0x20005912:    041b        ..      LSLS     r3,r3,#16
        0x20005914:    189a        ..      ADDS     r2,r3,r2
        0x20005916:    9205        ..      STR      r2,[sp,#0x14]
        0x20005918:    7802        .x      LDRB     r2,[r0,#0]
        0x2000591a:    7843        Cx      LDRB     r3,[r0,#1]
        0x2000591c:    021b        ..      LSLS     r3,r3,#8
        0x2000591e:    189a        ..      ADDS     r2,r3,r2
        0x20005920:    7883        .x      LDRB     r3,[r0,#2]
        0x20005922:    78c0        .x      LDRB     r0,[r0,#3]
        0x20005924:    0200        ..      LSLS     r0,r0,#8
        0x20005926:    18c0        ..      ADDS     r0,r0,r3
        0x20005928:    0400        ..      LSLS     r0,r0,#16
        0x2000592a:    1880        ..      ADDS     r0,r0,r2
        0x2000592c:    9004        ..      STR      r0,[sp,#0x10]
        0x2000592e:    1c48        H.      ADDS     r0,r1,#1
        0x20005930:    f001fc30    ..0.    BL       $Ven$TT$L$$rom_llc_tool_read_little_endian_uint64 ; 0x20007194
        0x20005934:    4607        .F      MOV      r7,r0
        0x20005936:    460d        .F      MOV      r5,r1
        0x20005938:    2001        .       MOVS     r0,#1
        0x2000593a:    7030        0p      STRB     r0,[r6,#0]
        0x2000593c:    2600        .&      MOVS     r6,#0
        0x2000593e:    9a03        ..      LDR      r2,[sp,#0xc]
        0x20005940:    7296        .r      STRB     r6,[r2,#0xa]
        0x20005942:    2010        .       MOVS     r0,#0x10
        0x20005944:    4381        .C      BICS     r1,r1,r0
        0x20005946:    4831        1H      LDR      r0,[pc,#196] ; [0x20005a0c] = 0xf787cf00
        0x20005948:    302f        /0      ADDS     r0,r0,#0x2f
        0x2000594a:    4038        8@      ANDS     r0,r0,r7
        0x2000594c:    9b02        ..      LDR      r3,[sp,#8]
        0x2000594e:    c303        ..      STM      r3!,{r0,r1}
        0x20005950:    7b51        Q{      LDRB     r1,[r2,#0xd]
        0x20005952:    482c        ,H      LDR      r0,[pc,#176] ; [0x20005a04] = 0x36ce
        0x20005954:    1dc0        ..      ADDS     r0,r0,#7
        0x20005956:    f001f917    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x2000595a:    4a2e        .J      LDR      r2,[pc,#184] ; [0x20005a14] = 0xf787cf2f
        0x2000595c:    403a        :@      ANDS     r2,r2,r7
        0x2000595e:    2051        Q       MOVS     r0,#0x51
        0x20005960:    4385        .C      BICS     r5,r5,r0
        0x20005962:    8821        !.      LDRH     r1,[r4,#0]
        0x20005964:    4630        0F      MOV      r0,r6
        0x20005966:    462b        +F      MOV      r3,r5
        0x20005968:    f001fc1a    ....    BL       $Ven$TT$L$$rom_controller_event_HCI_LE_Read_Remote_Features_Complete ; 0x200071a0
        0x2000596c:    e044        D.      B        0x200059f8 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x2000596e:    2601        .&      MOVS     r6,#1
        0x20005970:    e042        B.      B        0x200059f8 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x20005972:    2601        .&      MOVS     r6,#1
        0x20005974:    e040        @.      B        0x200059f8 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x20005976:    4628        (F      MOV      r0,r5
        0x20005978:    9d03        ..      LDR      r5,[sp,#0xc]
        0x2000597a:    4629        )F      MOV      r1,r5
        0x2000597c:    f001fc22    ..".    BL       $Ven$TT$L$$rom_llc_ctrl_procedure_rsp_unknown ; 0x200071c4
        0x20005980:    4c20         L      LDR      r4,[pc,#128] ; [0x20005a04] = 0x36ce
        0x20005982:    1ca0        ..      ADDS     r0,r4,#2
        0x20005984:    4639        9F      MOV      r1,r7
        0x20005986:    f001fc23    ..#.    BL       $Ven$TT$L$$mlog_32 ; 0x200071d0
        0x2000598a:    2600        .&      MOVS     r6,#0
        0x2000598c:    72ae        .r      STRB     r6,[r5,#0xa]
        0x2000598e:    7b69        i{      LDRB     r1,[r5,#0xd]
        0x20005990:    1ce0        ..      ADDS     r0,r4,#3
        0x20005992:    f001f8f9    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20005996:    e02f        /.      B        0x200059f8 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x20005998:    4628        (F      MOV      r0,r5
        0x2000599a:    9c03        ..      LDR      r4,[sp,#0xc]
        0x2000599c:    4621        !F      MOV      r1,r4
        0x2000599e:    f001fc11    ....    BL       $Ven$TT$L$$rom_llc_ctrl_procedure_rsp_unknown ; 0x200071c4
        0x200059a2:    2600        .&      MOVS     r6,#0
        0x200059a4:    72a6        .r      STRB     r6,[r4,#0xa]
        0x200059a6:    7b61        a{      LDRB     r1,[r4,#0xd]
        0x200059a8:    4816        .H      LDR      r0,[pc,#88] ; [0x20005a04] = 0x36ce
        0x200059aa:    1d00        ..      ADDS     r0,r0,#4
        0x200059ac:    f001f8ec    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x200059b0:    e022        ".      B        0x200059f8 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x200059b2:    4628        (F      MOV      r0,r5
        0x200059b4:    9c03        ..      LDR      r4,[sp,#0xc]
        0x200059b6:    4621        !F      MOV      r1,r4
        0x200059b8:    461d        .F      MOV      r5,r3
        0x200059ba:    f001fc03    ....    BL       $Ven$TT$L$$rom_llc_ctrl_procedure_rsp_unknown ; 0x200071c4
        0x200059be:    2600        .&      MOVS     r6,#0
        0x200059c0:    72a6        .r      STRB     r6,[r4,#0xa]
        0x200059c2:    7b61        a{      LDRB     r1,[r4,#0xd]
        0x200059c4:    1da8        ..      ADDS     r0,r5,#6
        0x200059c6:    f001f8df    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x200059ca:    e015        ..      B        0x200059f8 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x200059cc:    4628        (F      MOV      r0,r5
        0x200059ce:    9c03        ..      LDR      r4,[sp,#0xc]
        0x200059d0:    4621        !F      MOV      r1,r4
        0x200059d2:    f001fbf7    ....    BL       $Ven$TT$L$$rom_llc_ctrl_procedure_rsp_unknown ; 0x200071c4
        0x200059d6:    4d0b        .M      LDR      r5,[pc,#44] ; [0x20005a04] = 0x36ce
        0x200059d8:    4628        (F      MOV      r0,r5
        0x200059da:    3008        .0      ADDS     r0,r0,#8
        0x200059dc:    4639        9F      MOV      r1,r7
        0x200059de:    f001fbf7    ....    BL       $Ven$TT$L$$mlog_32 ; 0x200071d0
        0x200059e2:    2600        .&      MOVS     r6,#0
        0x200059e4:    72a6        .r      STRB     r6,[r4,#0xa]
        0x200059e6:    7b61        a{      LDRB     r1,[r4,#0xd]
        0x200059e8:    3509        .5      ADDS     r5,r5,#9
        0x200059ea:    4628        (F      MOV      r0,r5
        0x200059ec:    f001f8cc    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x200059f0:    e002        ..      B        0x200059f8 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x200059f2:    2602        .&      MOVS     r6,#2
        0x200059f4:    e000        ..      B        0x200059f8 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x200059f6:    2602        .&      MOVS     r6,#2
        0x200059f8:    4630        0F      MOV      r0,r6
        0x200059fa:    b007        ..      ADD      sp,sp,#0x1c
        0x200059fc:    bdf0        ..      POP      {r4-r7,pc}
        0x200059fe:    46c0        .F      MOV      r8,r8
    $d.3
    __arm_cp.1_0
        0x20005a00:    00000449    I...    DCD    1097
    __arm_cp.1_2
        0x20005a04:    000036ce    .6..    DCD    14030
    __arm_cp.1_3
        0x20005a08:    2000a670    p..     DCD    536913520
    __arm_cp.1_4
        0x20005a0c:    f787cf00    ....    DCD    4152872704
    __arm_cp.1_5
        0x20005a10:    000280a9    ....    DCD    164009
    __arm_cp.1_6
        0x20005a14:    f787cf2f    /...    DCD    4152872751
    $t.0
    patch_llc_feature_exchange_procedure_peer_initiated_init
        0x20005a18:    b570        p.      PUSH     {r4-r6,lr}
        0x20005a1a:    2800        .(      CMP      r0,#0
        0x20005a1c:    d010        ..      BEQ      0x20005a40 ; patch_llc_feature_exchange_procedure_peer_initiated_init + 40
        0x20005a1e:    460d        .F      MOV      r5,r1
        0x20005a20:    2900        .)      CMP      r1,#0
        0x20005a22:    d00d        ..      BEQ      0x20005a40 ; patch_llc_feature_exchange_procedure_peer_initiated_init + 40
        0x20005a24:    2a00        .*      CMP      r2,#0
        0x20005a26:    d00b        ..      BEQ      0x20005a40 ; patch_llc_feature_exchange_procedure_peer_initiated_init + 40
        0x20005a28:    68d1        .h      LDR      r1,[r2,#0xc]
        0x20005a2a:    7809        .x      LDRB     r1,[r1,#0]
        0x20005a2c:    2400        .$      MOVS     r4,#0
        0x20005a2e:    290e        .)      CMP      r1,#0xe
        0x20005a30:    d00f        ..      BEQ      0x20005a52 ; patch_llc_feature_exchange_procedure_peer_initiated_init + 58
        0x20005a32:    2908        .)      CMP      r1,#8
        0x20005a34:    d127        '.      BNE      0x20005a86 ; patch_llc_feature_exchange_procedure_peer_initiated_init + 110
        0x20005a36:    4915        .I      LDR      r1,[pc,#84] ; [0x20005a8c] = 0x351
        0x20005a38:    5c40        @\      LDRB     r0,[r0,r1]
        0x20005a3a:    2800        .(      CMP      r0,#0
        0x20005a3c:    d123        #.      BNE      0x20005a86 ; patch_llc_feature_exchange_procedure_peer_initiated_init + 110
        0x20005a3e:    e00c        ..      B        0x20005a5a ; patch_llc_feature_exchange_procedure_peer_initiated_init + 66
        0x20005a40:    2016        .       MOVS     r0,#0x16
        0x20005a42:    2149        I!      MOVS     r1,#0x49
        0x20005a44:    2400        .$      MOVS     r4,#0
        0x20005a46:    4622        "F      MOV      r2,r4
        0x20005a48:    4623        #F      MOV      r3,r4
        0x20005a4a:    f001fbc7    ....    BL       $Ven$TT$L$$system_error ; 0x200071dc
        0x20005a4e:    4620         F      MOV      r0,r4
        0x20005a50:    bd70        p.      POP      {r4-r6,pc}
        0x20005a52:    490e        .I      LDR      r1,[pc,#56] ; [0x20005a8c] = 0x351
        0x20005a54:    5c40        @\      LDRB     r0,[r0,r1]
        0x20005a56:    2800        .(      CMP      r0,#0
        0x20005a58:    d015        ..      BEQ      0x20005a86 ; patch_llc_feature_exchange_procedure_peer_initiated_init + 110
        0x20005a5a:    2401        .$      MOVS     r4,#1
        0x20005a5c:    732c        ,s      STRB     r4,[r5,#0xc]
        0x20005a5e:    2600        .&      MOVS     r6,#0
        0x20005a60:    72ee        .r      STRB     r6,[r5,#0xb]
        0x20005a62:    20ff        .       MOVS     r0,#0xff
        0x20005a64:    3004        .0      ADDS     r0,#4
        0x20005a66:    8128        (.      STRH     r0,[r5,#8]
        0x20005a68:    4630        0F      MOV      r0,r6
        0x20005a6a:    f001fbbd    ....    BL       $Ven$TT$L$$rom_llc_timer_get_count ; 0x200071e8
        0x20005a6e:    c503        ..      STM      r5!,{r0,r1}
        0x20005a70:    4807        .H      LDR      r0,[pc,#28] ; [0x20005a90] = 0x20005699
        0x20005a72:    80ee        ..      STRH     r6,[r5,#6]
        0x20005a74:    716e        nq      STRB     r6,[r5,#5]
        0x20005a76:    616e        na      STR      r6,[r5,#0x14]
        0x20005a78:    61ae        .a      STR      r6,[r5,#0x18]
        0x20005a7a:    61e8        .a      STR      r0,[r5,#0x1c]
        0x20005a7c:    70ac        .p      STRB     r4,[r5,#2]
        0x20005a7e:    4805        .H      LDR      r0,[pc,#20] ; [0x20005a94] = 0x36cd
        0x20005a80:    4631        1F      MOV      r1,r6
        0x20005a82:    f001f881    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20005a86:    4620         F      MOV      r0,r4
        0x20005a88:    bd70        p.      POP      {r4-r6,pc}
        0x20005a8a:    46c0        .F      MOV      r8,r8
    $d.1
    __arm_cp.0_0
        0x20005a8c:    00000351    Q...    DCD    849
    __arm_cp.0_1
        0x20005a90:    20005699    .V.     DCD    536893081
    __arm_cp.0_2
        0x20005a94:    000036cd    .6..    DCD    14029
    $t.0
    patch_llc_hook_prefix_address_set_random_address
        0x20005a98:    b510        ..      PUSH     {r4,lr}
        0x20005a9a:    4604        .F      MOV      r4,r0
        0x20005a9c:    f000fd78    ..x.    BL       rom_llc_ext_scan_is_enabled ; 0x20006590
        0x20005aa0:    2800        .(      CMP      r0,#0
        0x20005aa2:    d002        ..      BEQ      0x20005aaa ; patch_llc_hook_prefix_address_set_random_address + 18
        0x20005aa4:    210c        .!      MOVS     r1,#0xc
        0x20005aa6:    2001        .       MOVS     r0,#1
        0x20005aa8:    e006        ..      B        0x20005ab8 ; patch_llc_hook_prefix_address_set_random_address + 32
        0x20005aaa:    f000fd4b    ..K.    BL       rom_llc_ext_initiator_is_enabled ; 0x20006544
        0x20005aae:    2800        .(      CMP      r0,#0
        0x20005ab0:    d101        ..      BNE      0x20005ab6 ; patch_llc_hook_prefix_address_set_random_address + 30
        0x20005ab2:    4601        .F      MOV      r1,r0
        0x20005ab4:    e000        ..      B        0x20005ab8 ; patch_llc_hook_prefix_address_set_random_address + 32
        0x20005ab6:    210c        .!      MOVS     r1,#0xc
        0x20005ab8:    7020         p      STRB     r0,[r4,#0]
        0x20005aba:    4608        .F      MOV      r0,r1
        0x20005abc:    bd10        ..      POP      {r4,pc}
        0x20005abe:    0000        ..      MOVS     r0,r0
    patch_llc_hook_prefix_priority_on_event_added
        0x20005ac0:    b510        ..      PUSH     {r4,lr}
        0x20005ac2:    460a        .F      MOV      r2,r1
        0x20005ac4:    2900        .)      CMP      r1,#0
        0x20005ac6:    d011        ..      BEQ      0x20005aec ; patch_llc_hook_prefix_priority_on_event_added + 44
        0x20005ac8:    4604        .F      MOV      r4,r0
        0x20005aca:    6b90        .k      LDR      r0,[r2,#0x38]
        0x20005acc:    2800        .(      CMP      r0,#0
        0x20005ace:    d00d        ..      BEQ      0x20005aec ; patch_llc_hook_prefix_priority_on_event_added + 44
        0x20005ad0:    7c10        .|      LDRB     r0,[r2,#0x10]
        0x20005ad2:    2807        .(      CMP      r0,#7
        0x20005ad4:    d011        ..      BEQ      0x20005afa ; patch_llc_hook_prefix_priority_on_event_added + 58
        0x20005ad6:    2806        .(      CMP      r0,#6
        0x20005ad8:    d016        ..      BEQ      0x20005b08 ; patch_llc_hook_prefix_priority_on_event_added + 72
        0x20005ada:    2805        .(      CMP      r0,#5
        0x20005adc:    d11d        ..      BNE      0x20005b1a ; patch_llc_hook_prefix_priority_on_event_added + 90
        0x20005ade:    4810        .H      LDR      r0,[pc,#64] ; [0x20005b20] = 0x20000850
        0x20005ae0:    6800        .h      LDR      r0,[r0,#0]
        0x20005ae2:    60d0        .`      STR      r0,[r2,#0xc]
        0x20005ae4:    4610        .F      MOV      r0,r2
        0x20005ae6:    f000fd75    ..u.    BL       rom_llc_priority_ext_adv_on_event_added ; 0x200065d4
        0x20005aea:    e013        ..      B        0x20005b14 ; patch_llc_hook_prefix_priority_on_event_added + 84
        0x20005aec:    2085        .       MOVS     r0,#0x85
        0x20005aee:    00c1        ..      LSLS     r1,r0,#3
        0x20005af0:    201c        .       MOVS     r0,#0x1c
        0x20005af2:    2300        .#      MOVS     r3,#0
        0x20005af4:    f001fb72    ..r.    BL       $Ven$TT$L$$system_error ; 0x200071dc
        0x20005af8:    bd10        ..      POP      {r4,pc}
        0x20005afa:    4809        .H      LDR      r0,[pc,#36] ; [0x20005b20] = 0x20000850
        0x20005afc:    6800        .h      LDR      r0,[r0,#0]
        0x20005afe:    60d0        .`      STR      r0,[r2,#0xc]
        0x20005b00:    4610        .F      MOV      r0,r2
        0x20005b02:    f000fd6b    ..k.    BL       rom_llc_priority_ext_initiator_on_event_added ; 0x200065dc
        0x20005b06:    e005        ..      B        0x20005b14 ; patch_llc_hook_prefix_priority_on_event_added + 84
        0x20005b08:    4805        .H      LDR      r0,[pc,#20] ; [0x20005b20] = 0x20000850
        0x20005b0a:    6800        .h      LDR      r0,[r0,#0]
        0x20005b0c:    60d0        .`      STR      r0,[r2,#0xc]
        0x20005b0e:    4610        .F      MOV      r0,r2
        0x20005b10:    f000fd6a    ..j.    BL       rom_llc_priority_ext_scan_on_event_added ; 0x200065e8
        0x20005b14:    2001        .       MOVS     r0,#1
        0x20005b16:    7020         p      STRB     r0,[r4,#0]
        0x20005b18:    bd10        ..      POP      {r4,pc}
        0x20005b1a:    2000        .       MOVS     r0,#0
        0x20005b1c:    7020         p      STRB     r0,[r4,#0]
        0x20005b1e:    bd10        ..      POP      {r4,pc}
    $d.1
    __arm_cp.0_0
        0x20005b20:    20000850    P..     DCD    536873040
    $t.4
    patch_llc_hook_prefix_priority_on_event_blocked
        0x20005b24:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20005b26:    460d        .F      MOV      r5,r1
        0x20005b28:    2900        .)      CMP      r1,#0
        0x20005b2a:    d00f        ..      BEQ      0x20005b4c ; patch_llc_hook_prefix_priority_on_event_blocked + 40
        0x20005b2c:    4604        .F      MOV      r4,r0
        0x20005b2e:    6ba8        .k      LDR      r0,[r5,#0x38]
        0x20005b30:    2800        .(      CMP      r0,#0
        0x20005b32:    d00b        ..      BEQ      0x20005b4c ; patch_llc_hook_prefix_priority_on_event_blocked + 40
        0x20005b34:    7c28        (|      LDRB     r0,[r5,#0x10]
        0x20005b36:    2807        .(      CMP      r0,#7
        0x20005b38:    d00f        ..      BEQ      0x20005b5a ; patch_llc_hook_prefix_priority_on_event_blocked + 54
        0x20005b3a:    2806        .(      CMP      r0,#6
        0x20005b3c:    d012        ..      BEQ      0x20005b64 ; patch_llc_hook_prefix_priority_on_event_blocked + 64
        0x20005b3e:    2805        .(      CMP      r0,#5
        0x20005b40:    d117        ..      BNE      0x20005b72 ; patch_llc_hook_prefix_priority_on_event_blocked + 78
        0x20005b42:    4628        (F      MOV      r0,r5
        0x20005b44:    4611        .F      MOV      r1,r2
        0x20005b46:    f000fd46    ..F.    BL       rom_llc_priority_ext_adv_on_event_blocked ; 0x200065d6
        0x20005b4a:    e00f        ..      B        0x20005b6c ; patch_llc_hook_prefix_priority_on_event_blocked + 72
        0x20005b4c:    201c        .       MOVS     r0,#0x1c
        0x20005b4e:    490a        .I      LDR      r1,[pc,#40] ; [0x20005b78] = 0x48d
        0x20005b50:    2300        .#      MOVS     r3,#0
        0x20005b52:    462a        *F      MOV      r2,r5
        0x20005b54:    f001fb42    ..B.    BL       $Ven$TT$L$$system_error ; 0x200071dc
        0x20005b58:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20005b5a:    4628        (F      MOV      r0,r5
        0x20005b5c:    4611        .F      MOV      r1,r2
        0x20005b5e:    f000fd40    ..@.    BL       rom_llc_priority_ext_initiator_on_event_blocked ; 0x200065e2
        0x20005b62:    e003        ..      B        0x20005b6c ; patch_llc_hook_prefix_priority_on_event_blocked + 72
        0x20005b64:    4628        (F      MOV      r0,r5
        0x20005b66:    4611        .F      MOV      r1,r2
        0x20005b68:    f000fd48    ..H.    BL       rom_llc_priority_ext_scan_on_event_blocked ; 0x200065fc
        0x20005b6c:    2001        .       MOVS     r0,#1
        0x20005b6e:    7020         p      STRB     r0,[r4,#0]
        0x20005b70:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20005b72:    2000        .       MOVS     r0,#0
        0x20005b74:    7020         p      STRB     r0,[r4,#0]
        0x20005b76:    bdb0        ..      POP      {r4,r5,r7,pc}
    $d.5
    __arm_cp.2_0
        0x20005b78:    0000048d    ....    DCD    1165
    $t.2
    patch_llc_hook_prefix_priority_on_event_config_failed
        0x20005b7c:    b510        ..      PUSH     {r4,lr}
        0x20005b7e:    460a        .F      MOV      r2,r1
        0x20005b80:    2900        .)      CMP      r1,#0
        0x20005b82:    d018        ..      BEQ      0x20005bb6 ; patch_llc_hook_prefix_priority_on_event_config_failed + 58
        0x20005b84:    4604        .F      MOV      r4,r0
        0x20005b86:    6b90        .k      LDR      r0,[r2,#0x38]
        0x20005b88:    2800        .(      CMP      r0,#0
        0x20005b8a:    d014        ..      BEQ      0x20005bb6 ; patch_llc_hook_prefix_priority_on_event_config_failed + 58
        0x20005b8c:    7c10        .|      LDRB     r0,[r2,#0x10]
        0x20005b8e:    2807        .(      CMP      r0,#7
        0x20005b90:    d017        ..      BEQ      0x20005bc2 ; patch_llc_hook_prefix_priority_on_event_config_failed + 70
        0x20005b92:    2806        .(      CMP      r0,#6
        0x20005b94:    d023        #.      BEQ      0x20005bde ; patch_llc_hook_prefix_priority_on_event_config_failed + 98
        0x20005b96:    2805        .(      CMP      r0,#5
        0x20005b98:    d131        1.      BNE      0x20005bfe ; patch_llc_hook_prefix_priority_on_event_config_failed + 130
        0x20005b9a:    4840        @H      LDR      r0,[pc,#256] ; [0x20005c9c] = 0x2000085c
        0x20005b9c:    7801        .x      LDRB     r1,[r0,#0]
        0x20005b9e:    68d0        .h      LDR      r0,[r2,#0xc]
        0x20005ba0:    4348        HC      MULS     r0,r1,r0
        0x20005ba2:    4918        .I      LDR      r1,[pc,#96] ; [0x20005c04] = 0x20000854
        0x20005ba4:    6809        .h      LDR      r1,[r1,#0]
        0x20005ba6:    4288        .B      CMP      r0,r1
        0x20005ba8:    d800        ..      BHI      0x20005bac ; patch_llc_hook_prefix_priority_on_event_config_failed + 48
        0x20005baa:    4601        .F      MOV      r1,r0
        0x20005bac:    60d1        .`      STR      r1,[r2,#0xc]
        0x20005bae:    4610        .F      MOV      r0,r2
        0x20005bb0:    f000fd12    ....    BL       rom_llc_priority_ext_adv_on_event_config_failed ; 0x200065d8
        0x20005bb4:    e020         .      B        0x20005bf8 ; patch_llc_hook_prefix_priority_on_event_config_failed + 124
        0x20005bb6:    201c        .       MOVS     r0,#0x1c
        0x20005bb8:    4913        .I      LDR      r1,[pc,#76] ; [0x20005c08] = 0x453
        0x20005bba:    2300        .#      MOVS     r3,#0
        0x20005bbc:    f001fb0e    ....    BL       $Ven$TT$L$$system_error ; 0x200071dc
        0x20005bc0:    bd10        ..      POP      {r4,pc}
        0x20005bc2:    4836        6H      LDR      r0,[pc,#216] ; [0x20005c9c] = 0x2000085c
        0x20005bc4:    7801        .x      LDRB     r1,[r0,#0]
        0x20005bc6:    68d0        .h      LDR      r0,[r2,#0xc]
        0x20005bc8:    4348        HC      MULS     r0,r1,r0
        0x20005bca:    490e        .I      LDR      r1,[pc,#56] ; [0x20005c04] = 0x20000854
        0x20005bcc:    6809        .h      LDR      r1,[r1,#0]
        0x20005bce:    4288        .B      CMP      r0,r1
        0x20005bd0:    d800        ..      BHI      0x20005bd4 ; patch_llc_hook_prefix_priority_on_event_config_failed + 88
        0x20005bd2:    4601        .F      MOV      r1,r0
        0x20005bd4:    60d1        .`      STR      r1,[r2,#0xc]
        0x20005bd6:    4610        .F      MOV      r0,r2
        0x20005bd8:    f000fd04    ....    BL       rom_llc_priority_ext_initiator_on_event_config_failed ; 0x200065e4
        0x20005bdc:    e00c        ..      B        0x20005bf8 ; patch_llc_hook_prefix_priority_on_event_config_failed + 124
        0x20005bde:    482f        /H      LDR      r0,[pc,#188] ; [0x20005c9c] = 0x2000085c
        0x20005be0:    7801        .x      LDRB     r1,[r0,#0]
        0x20005be2:    68d0        .h      LDR      r0,[r2,#0xc]
        0x20005be4:    4348        HC      MULS     r0,r1,r0
        0x20005be6:    4907        .I      LDR      r1,[pc,#28] ; [0x20005c04] = 0x20000854
        0x20005be8:    6809        .h      LDR      r1,[r1,#0]
        0x20005bea:    4288        .B      CMP      r0,r1
        0x20005bec:    d800        ..      BHI      0x20005bf0 ; patch_llc_hook_prefix_priority_on_event_config_failed + 116
        0x20005bee:    4601        .F      MOV      r1,r0
        0x20005bf0:    60d1        .`      STR      r1,[r2,#0xc]
        0x20005bf2:    4610        .F      MOV      r0,r2
        0x20005bf4:    f000fd21    ..!.    BL       rom_llc_priority_ext_scan_on_event_config_failed ; 0x2000663a
        0x20005bf8:    2001        .       MOVS     r0,#1
        0x20005bfa:    7020         p      STRB     r0,[r4,#0]
        0x20005bfc:    bd10        ..      POP      {r4,pc}
        0x20005bfe:    2000        .       MOVS     r0,#0
        0x20005c00:    7020         p      STRB     r0,[r4,#0]
        0x20005c02:    bd10        ..      POP      {r4,pc}
    $d.3
    __arm_cp.1_1
        0x20005c04:    20000854    T..     DCD    536873044
    __arm_cp.1_2
        0x20005c08:    00000453    S...    DCD    1107
    $t.6
    patch_llc_hook_prefix_priority_on_event_stopped
        0x20005c0c:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20005c0e:    460d        .F      MOV      r5,r1
        0x20005c10:    2900        .)      CMP      r1,#0
        0x20005c12:    d019        ..      BEQ      0x20005c48 ; patch_llc_hook_prefix_priority_on_event_stopped + 60
        0x20005c14:    4604        .F      MOV      r4,r0
        0x20005c16:    6ba8        .k      LDR      r0,[r5,#0x38]
        0x20005c18:    2800        .(      CMP      r0,#0
        0x20005c1a:    d015        ..      BEQ      0x20005c48 ; patch_llc_hook_prefix_priority_on_event_stopped + 60
        0x20005c1c:    7c28        (|      LDRB     r0,[r5,#0x10]
        0x20005c1e:    2807        .(      CMP      r0,#7
        0x20005c20:    d019        ..      BEQ      0x20005c56 ; patch_llc_hook_prefix_priority_on_event_stopped + 74
        0x20005c22:    2806        .(      CMP      r0,#6
        0x20005c24:    d026        &.      BEQ      0x20005c74 ; patch_llc_hook_prefix_priority_on_event_stopped + 104
        0x20005c26:    2805        .(      CMP      r0,#5
        0x20005c28:    d135        5.      BNE      0x20005c96 ; patch_llc_hook_prefix_priority_on_event_stopped + 138
        0x20005c2a:    68e8        .h      LDR      r0,[r5,#0xc]
        0x20005c2c:    491b        .I      LDR      r1,[pc,#108] ; [0x20005c9c] = 0x2000085c
        0x20005c2e:    7809        .x      LDRB     r1,[r1,#0]
        0x20005c30:    f7fdfb54    ..T.    BL       __aeabi_uidiv ; 0x200032dc
        0x20005c34:    491a        .I      LDR      r1,[pc,#104] ; [0x20005ca0] = 0x20000858
        0x20005c36:    6809        .h      LDR      r1,[r1,#0]
        0x20005c38:    4288        .B      CMP      r0,r1
        0x20005c3a:    d300        ..      BCC      0x20005c3e ; patch_llc_hook_prefix_priority_on_event_stopped + 50
        0x20005c3c:    4601        .F      MOV      r1,r0
        0x20005c3e:    60e9        .`      STR      r1,[r5,#0xc]
        0x20005c40:    4628        (F      MOV      r0,r5
        0x20005c42:    f000fcca    ....    BL       rom_llc_priority_ext_adv_on_event_stopped ; 0x200065da
        0x20005c46:    e023        #.      B        0x20005c90 ; patch_llc_hook_prefix_priority_on_event_stopped + 132
        0x20005c48:    201c        .       MOVS     r0,#0x1c
        0x20005c4a:    4916        .I      LDR      r1,[pc,#88] ; [0x20005ca4] = 0x4b5
        0x20005c4c:    2300        .#      MOVS     r3,#0
        0x20005c4e:    462a        *F      MOV      r2,r5
        0x20005c50:    f001fac4    ....    BL       $Ven$TT$L$$system_error ; 0x200071dc
        0x20005c54:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20005c56:    68e8        .h      LDR      r0,[r5,#0xc]
        0x20005c58:    4910        .I      LDR      r1,[pc,#64] ; [0x20005c9c] = 0x2000085c
        0x20005c5a:    7809        .x      LDRB     r1,[r1,#0]
        0x20005c5c:    f7fdfb3e    ..>.    BL       __aeabi_uidiv ; 0x200032dc
        0x20005c60:    490f        .I      LDR      r1,[pc,#60] ; [0x20005ca0] = 0x20000858
        0x20005c62:    6809        .h      LDR      r1,[r1,#0]
        0x20005c64:    4288        .B      CMP      r0,r1
        0x20005c66:    d300        ..      BCC      0x20005c6a ; patch_llc_hook_prefix_priority_on_event_stopped + 94
        0x20005c68:    4601        .F      MOV      r1,r0
        0x20005c6a:    60e9        .`      STR      r1,[r5,#0xc]
        0x20005c6c:    4628        (F      MOV      r0,r5
        0x20005c6e:    f000fcba    ....    BL       rom_llc_priority_ext_initiator_on_event_stopped ; 0x200065e6
        0x20005c72:    e00d        ..      B        0x20005c90 ; patch_llc_hook_prefix_priority_on_event_stopped + 132
        0x20005c74:    68e8        .h      LDR      r0,[r5,#0xc]
        0x20005c76:    4909        .I      LDR      r1,[pc,#36] ; [0x20005c9c] = 0x2000085c
        0x20005c78:    7809        .x      LDRB     r1,[r1,#0]
        0x20005c7a:    f7fdfb2f    ../.    BL       __aeabi_uidiv ; 0x200032dc
        0x20005c7e:    4908        .I      LDR      r1,[pc,#32] ; [0x20005ca0] = 0x20000858
        0x20005c80:    6809        .h      LDR      r1,[r1,#0]
        0x20005c82:    4288        .B      CMP      r0,r1
        0x20005c84:    d300        ..      BCC      0x20005c88 ; patch_llc_hook_prefix_priority_on_event_stopped + 124
        0x20005c86:    4601        .F      MOV      r1,r0
        0x20005c88:    60e9        .`      STR      r1,[r5,#0xc]
        0x20005c8a:    4628        (F      MOV      r0,r5
        0x20005c8c:    f000fce8    ....    BL       rom_llc_priority_ext_scan_on_event_stopped ; 0x20006660
        0x20005c90:    2001        .       MOVS     r0,#1
        0x20005c92:    7020         p      STRB     r0,[r4,#0]
        0x20005c94:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20005c96:    2000        .       MOVS     r0,#0
        0x20005c98:    7020         p      STRB     r0,[r4,#0]
        0x20005c9a:    bdb0        ..      POP      {r4,r5,r7,pc}
    $d.7
    __arm_cp.3_0
        0x20005c9c:    2000085c    \..     DCD    536873052
    __arm_cp.3_1
        0x20005ca0:    20000858    X..     DCD    536873048
    __arm_cp.3_2
        0x20005ca4:    000004b5    ....    DCD    1205
    $t.0
    patch_llc_hook_prefix_privacy_is_adv_scan_init_active
        0x20005ca8:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20005caa:    4604        .F      MOV      r4,r0
        0x20005cac:    2501        .%      MOVS     r5,#1
        0x20005cae:    f000fbd7    ....    BL       rom_llc_ext_adv_is_any_advertising_set_enabled ; 0x20006460
        0x20005cb2:    2800        .(      CMP      r0,#0
        0x20005cb4:    d001        ..      BEQ      0x20005cba ; patch_llc_hook_prefix_privacy_is_adv_scan_init_active + 18
        0x20005cb6:    4628        (F      MOV      r0,r5
        0x20005cb8:    e008        ..      B        0x20005ccc ; patch_llc_hook_prefix_privacy_is_adv_scan_init_active + 36
        0x20005cba:    f000fc69    ..i.    BL       rom_llc_ext_scan_is_enabled ; 0x20006590
        0x20005cbe:    2800        .(      CMP      r0,#0
        0x20005cc0:    d001        ..      BEQ      0x20005cc6 ; patch_llc_hook_prefix_privacy_is_adv_scan_init_active + 30
        0x20005cc2:    2001        .       MOVS     r0,#1
        0x20005cc4:    e002        ..      B        0x20005ccc ; patch_llc_hook_prefix_privacy_is_adv_scan_init_active + 36
        0x20005cc6:    f000fc3d    ..=.    BL       rom_llc_ext_initiator_is_enabled ; 0x20006544
        0x20005cca:    4605        .F      MOV      r5,r0
        0x20005ccc:    7020         p      STRB     r0,[r4,#0]
        0x20005cce:    4628        (F      MOV      r0,r5
        0x20005cd0:    bdb0        ..      POP      {r4,r5,r7,pc}
    patch_llc_hook_prefix_white_list_add_device
        0x20005cd2:    b570        p.      PUSH     {r4-r6,lr}
        0x20005cd4:    4604        .F      MOV      r4,r0
        0x20005cd6:    260c        .&      MOVS     r6,#0xc
        0x20005cd8:    2501        .%      MOVS     r5,#1
        0x20005cda:    f000fbf5    ....    BL       rom_llc_ext_adv_is_white_list_in_use ; 0x200064c8
        0x20005cde:    2800        .(      CMP      r0,#0
        0x20005ce0:    d10b        ..      BNE      0x20005cfa ; patch_llc_hook_prefix_white_list_add_device + 40
        0x20005ce2:    f000fc62    ..b.    BL       rom_llc_ext_scan_is_white_list_in_use ; 0x200065aa
        0x20005ce6:    2800        .(      CMP      r0,#0
        0x20005ce8:    d107        ..      BNE      0x20005cfa ; patch_llc_hook_prefix_white_list_add_device + 40
        0x20005cea:    f000fc38    ..8.    BL       rom_llc_ext_initiator_is_white_list_in_use ; 0x2000655e
        0x20005cee:    4605        .F      MOV      r5,r0
        0x20005cf0:    2800        .(      CMP      r0,#0
        0x20005cf2:    d101        ..      BNE      0x20005cf8 ; patch_llc_hook_prefix_white_list_add_device + 38
        0x20005cf4:    462e        .F      MOV      r6,r5
        0x20005cf6:    e000        ..      B        0x20005cfa ; patch_llc_hook_prefix_white_list_add_device + 40
        0x20005cf8:    260c        .&      MOVS     r6,#0xc
        0x20005cfa:    7025        %p      STRB     r5,[r4,#0]
        0x20005cfc:    4630        0F      MOV      r0,r6
        0x20005cfe:    bd70        p.      POP      {r4-r6,pc}
    patch_llc_hook_prefix_white_list_clear
        0x20005d00:    b570        p.      PUSH     {r4-r6,lr}
        0x20005d02:    4604        .F      MOV      r4,r0
        0x20005d04:    260c        .&      MOVS     r6,#0xc
        0x20005d06:    2501        .%      MOVS     r5,#1
        0x20005d08:    f000fbde    ....    BL       rom_llc_ext_adv_is_white_list_in_use ; 0x200064c8
        0x20005d0c:    2800        .(      CMP      r0,#0
        0x20005d0e:    d10b        ..      BNE      0x20005d28 ; patch_llc_hook_prefix_white_list_clear + 40
        0x20005d10:    f000fc4b    ..K.    BL       rom_llc_ext_scan_is_white_list_in_use ; 0x200065aa
        0x20005d14:    2800        .(      CMP      r0,#0
        0x20005d16:    d107        ..      BNE      0x20005d28 ; patch_llc_hook_prefix_white_list_clear + 40
        0x20005d18:    f000fc21    ..!.    BL       rom_llc_ext_initiator_is_white_list_in_use ; 0x2000655e
        0x20005d1c:    4605        .F      MOV      r5,r0
        0x20005d1e:    2800        .(      CMP      r0,#0
        0x20005d20:    d101        ..      BNE      0x20005d26 ; patch_llc_hook_prefix_white_list_clear + 38
        0x20005d22:    462e        .F      MOV      r6,r5
        0x20005d24:    e000        ..      B        0x20005d28 ; patch_llc_hook_prefix_white_list_clear + 40
        0x20005d26:    260c        .&      MOVS     r6,#0xc
        0x20005d28:    7025        %p      STRB     r5,[r4,#0]
        0x20005d2a:    4630        0F      MOV      r0,r6
        0x20005d2c:    bd70        p.      POP      {r4-r6,pc}
    patch_llc_hook_prefix_white_list_remove_device
        0x20005d2e:    b510        ..      PUSH     {r4,lr}
        0x20005d30:    4604        .F      MOV      r4,r0
        0x20005d32:    f000fbc9    ....    BL       rom_llc_ext_adv_is_white_list_in_use ; 0x200064c8
        0x20005d36:    2800        .(      CMP      r0,#0
        0x20005d38:    d103        ..      BNE      0x20005d42 ; patch_llc_hook_prefix_white_list_remove_device + 20
        0x20005d3a:    f000fc36    ..6.    BL       rom_llc_ext_scan_is_white_list_in_use ; 0x200065aa
        0x20005d3e:    2800        .(      CMP      r0,#0
        0x20005d40:    d003        ..      BEQ      0x20005d4a ; patch_llc_hook_prefix_white_list_remove_device + 28
        0x20005d42:    2000        .       MOVS     r0,#0
        0x20005d44:    7020         p      STRB     r0,[r4,#0]
        0x20005d46:    200c        .       MOVS     r0,#0xc
        0x20005d48:    bd10        ..      POP      {r4,pc}
        0x20005d4a:    f000fc08    ....    BL       rom_llc_ext_initiator_is_white_list_in_use ; 0x2000655e
        0x20005d4e:    2100        .!      MOVS     r1,#0
        0x20005d50:    7021        !p      STRB     r1,[r4,#0]
        0x20005d52:    2800        .(      CMP      r0,#0
        0x20005d54:    d000        ..      BEQ      0x20005d58 ; patch_llc_hook_prefix_white_list_remove_device + 42
        0x20005d56:    200c        .       MOVS     r0,#0xc
        0x20005d58:    bd10        ..      POP      {r4,pc}
        0x20005d5a:    0000        ..      MOVS     r0,r0
    patch_llc_priority
        0x20005d5c:    2015        .       MOVS     r0,#0x15
        0x20005d5e:    0100        ..      LSLS     r0,r0,#4
        0x20005d60:    4912        .I      LDR      r1,[pc,#72] ; [0x20005dac] = 0x20000b50
        0x20005d62:    4a07        .J      LDR      r2,[pc,#28] ; [0x20005d80] = 0x20005c0d
        0x20005d64:    500a        .P      STR      r2,[r1,r0]
        0x20005d66:    2053        S       MOVS     r0,#0x53
        0x20005d68:    0080        ..      LSLS     r0,r0,#2
        0x20005d6a:    4a06        .J      LDR      r2,[pc,#24] ; [0x20005d84] = 0x20005b25
        0x20005d6c:    500a        .P      STR      r2,[r1,r0]
        0x20005d6e:    2029        )       MOVS     r0,#0x29
        0x20005d70:    00c0        ..      LSLS     r0,r0,#3
        0x20005d72:    4a05        .J      LDR      r2,[pc,#20] ; [0x20005d88] = 0x20005b7d
        0x20005d74:    500a        .P      STR      r2,[r1,r0]
        0x20005d76:    2051        Q       MOVS     r0,#0x51
        0x20005d78:    0080        ..      LSLS     r0,r0,#2
        0x20005d7a:    4a04        .J      LDR      r2,[pc,#16] ; [0x20005d8c] = 0x20005ac1
        0x20005d7c:    500a        .P      STR      r2,[r1,r0]
        0x20005d7e:    4770        pG      BX       lr
    $d.11
    __arm_cp.6_1
        0x20005d80:    20005c0d    .\.     DCD    536894477
    __arm_cp.6_2
        0x20005d84:    20005b25    %[.     DCD    536894245
    __arm_cp.6_3
        0x20005d88:    20005b7d    }[.     DCD    536894333
    __arm_cp.6_4
        0x20005d8c:    20005ac1    .Z.     DCD    536894145
    $t.1
    patch_llc_privacy
        0x20005d90:    4806        .H      LDR      r0,[pc,#24] ; [0x20005dac] = 0x20000b50
        0x20005d92:    4901        .I      LDR      r1,[pc,#4] ; [0x20005d98] = 0x20005ca9
        0x20005d94:    6601        .f      STR      r1,[r0,#0x60]
        0x20005d96:    4770        pG      BX       lr
    $d.2
    __arm_cp.1_1
        0x20005d98:    20005ca9    .\.     DCD    536894633
    $t.3
    patch_llc_white_list
        0x20005d9c:    4803        .H      LDR      r0,[pc,#12] ; [0x20005dac] = 0x20000b50
        0x20005d9e:    4904        .I      LDR      r1,[pc,#16] ; [0x20005db0] = 0x20005d2f
        0x20005da0:    4a04        .J      LDR      r2,[pc,#16] ; [0x20005db4] = 0x20005cd3
        0x20005da2:    4b05        .K      LDR      r3,[pc,#20] ; [0x20005db8] = 0x20005d01
        0x20005da4:    6383        .c      STR      r3,[r0,#0x38]
        0x20005da6:    63c2        .c      STR      r2,[r0,#0x3c]
        0x20005da8:    6401        .d      STR      r1,[r0,#0x40]
        0x20005daa:    4770        pG      BX       lr
    $d.4
    __arm_cp.3_0
        0x20005dac:    20000b50    P..     DCD    536873808
    __arm_cp.3_1
        0x20005db0:    20005d2f    /].     DCD    536894767
    __arm_cp.3_2
        0x20005db4:    20005cd3    .\.     DCD    536894675
    __arm_cp.3_3
        0x20005db8:    20005d01    .].     DCD    536894721
    $t.16
    patch_llp
        0x20005dbc:    4770        pG      BX       lr
        0x20005dbe:    0000        ..      MOVS     r0,r0
    patch_llp_adv_fragment_start
        0x20005dc0:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20005dc2:    b084        ..      SUB      sp,sp,#0x10
        0x20005dc4:    2800        .(      CMP      r0,#0
        0x20005dc6:    d008        ..      BEQ      0x20005dda ; patch_llp_adv_fragment_start + 26
        0x20005dc8:    4604        .F      MOV      r4,r0
        0x20005dca:    6881        .h      LDR      r1,[r0,#8]
        0x20005dcc:    2002        .       MOVS     r0,#2
        0x20005dce:    f001fa11    ....    BL       $Ven$TT$L$$rom_llp_hw_set_work_time_us ; 0x200071f4
        0x20005dd2:    2800        .(      CMP      r0,#0
        0x20005dd4:    d004        ..      BEQ      0x20005de0 ; patch_llp_adv_fragment_start + 32
        0x20005dd6:    b004        ..      ADD      sp,sp,#0x10
        0x20005dd8:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20005dda:    2004        .       MOVS     r0,#4
        0x20005ddc:    b004        ..      ADD      sp,sp,#0x10
        0x20005dde:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20005de0:    89e3        ..      LDRH     r3,[r4,#0xe]
        0x20005de2:    89a2        ..      LDRH     r2,[r4,#0xc]
        0x20005de4:    7c60        `|      LDRB     r0,[r4,#0x11]
        0x20005de6:    4601        .F      MOV      r1,r0
        0x20005de8:    f001fa0a    ....    BL       $Ven$TT$L$$rom_llp_hw_set_ifs ; 0x20007200
        0x20005dec:    2800        .(      CMP      r0,#0
        0x20005dee:    d1f2        ..      BNE      0x20005dd6 ; patch_llp_adv_fragment_start + 22
        0x20005df0:    6962        bi      LDR      r2,[r4,#0x14]
        0x20005df2:    69a3        .i      LDR      r3,[r4,#0x18]
        0x20005df4:    7c21        !|      LDRB     r1,[r4,#0x10]
        0x20005df6:    7c60        `|      LDRB     r0,[r4,#0x11]
        0x20005df8:    2501        .%      MOVS     r5,#1
        0x20005dfa:    9500        ..      STR      r5,[sp,#0]
        0x20005dfc:    9001        ..      STR      r0,[sp,#4]
        0x20005dfe:    9002        ..      STR      r0,[sp,#8]
        0x20005e00:    2500        .%      MOVS     r5,#0
        0x20005e02:    4628        (F      MOV      r0,r5
        0x20005e04:    f001fa02    ....    BL       $Ven$TT$L$$rom_llp_hw_set_trx_param ; 0x2000720c
        0x20005e08:    2800        .(      CMP      r0,#0
        0x20005e0a:    d1e4        ..      BNE      0x20005dd6 ; patch_llp_adv_fragment_start + 22
        0x20005e0c:    6a20         j      LDR      r0,[r4,#0x20]
        0x20005e0e:    f001fa03    ....    BL       $Ven$TT$L$$rom_llp_hw_set_tx_pdu ; 0x20007218
        0x20005e12:    2800        .(      CMP      r0,#0
        0x20005e14:    d1df        ..      BNE      0x20005dd6 ; patch_llp_adv_fragment_start + 22
        0x20005e16:    8ba1        ..      LDRH     r1,[r4,#0x1c]
        0x20005e18:    6a60        `j      LDR      r0,[r4,#0x24]
        0x20005e1a:    f001fa03    ....    BL       $Ven$TT$L$$rom_llp_hw_set_rx_pdu ; 0x20007224
        0x20005e1e:    2800        .(      CMP      r0,#0
        0x20005e20:    d1d9        ..      BNE      0x20005dd6 ; patch_llp_adv_fragment_start + 22
        0x20005e22:    4806        .H      LDR      r0,[pc,#24] ; [0x20005e3c] = 0x20000d0c
        0x20005e24:    7005        .p      STRB     r5,[r0,#0]
        0x20005e26:    7c62        b|      LDRB     r2,[r4,#0x11]
        0x20005e28:    cc03        ..      LDM      r4!,{r0,r1}
        0x20005e2a:    f001fa01    ....    BL       $Ven$TT$L$$rom_llp_hw_set_trt_mode_start_time ; 0x20007230
        0x20005e2e:    2800        .(      CMP      r0,#0
        0x20005e30:    d1d1        ..      BNE      0x20005dd6 ; patch_llp_adv_fragment_start + 22
        0x20005e32:    f001fa03    ....    BL       $Ven$TT$L$$rom_llp_hw_set_adv_mode ; 0x2000723c
        0x20005e36:    4628        (F      MOV      r0,r5
        0x20005e38:    b004        ..      ADD      sp,sp,#0x10
        0x20005e3a:    bdb0        ..      POP      {r4,r5,r7,pc}
    $d.1
    __arm_cp.0_0
        0x20005e3c:    20000d0c    ...     DCD    536874252
    $t.2
    patch_llp_hook_prefix_sleep_is_system_sleep_allowed
        0x20005e40:    b570        p.      PUSH     {r4-r6,lr}
        0x20005e42:    2601        .&      MOVS     r6,#1
        0x20005e44:    7006        .p      STRB     r6,[r0,#0]
        0x20005e46:    4827        'H      LDR      r0,[pc,#156] ; [0x20005ee4] = 0x2000095f
        0x20005e48:    7800        .x      LDRB     r0,[r0,#0]
        0x20005e4a:    2400        .$      MOVS     r4,#0
        0x20005e4c:    2800        .(      CMP      r0,#0
        0x20005e4e:    d001        ..      BEQ      0x20005e54 ; patch_llp_hook_prefix_sleep_is_system_sleep_allowed + 20
        0x20005e50:    4620         F      MOV      r0,r4
        0x20005e52:    bd70        p.      POP      {r4-r6,pc}
        0x20005e54:    f3ef8510    ....    MRS      r5,PRIMASK
        0x20005e58:    f3ef8010    ....    MRS      r0,PRIMASK
        0x20005e5c:    b672        r.      CPSID    i
        0x20005e5e:    f001f9f3    ....    BL       $Ven$TT$L$$rom_llp_is_idle ; 0x20007248
        0x20005e62:    2800        .(      CMP      r0,#0
        0x20005e64:    d00c        ..      BEQ      0x20005e80 ; patch_llp_hook_prefix_sleep_is_system_sleep_allowed + 64
        0x20005e66:    4c34        4L      LDR      r4,[pc,#208] ; [0x20005f38] = 0x2000095b
        0x20005e68:    7820         x      LDRB     r0,[r4,#0]
        0x20005e6a:    2800        .(      CMP      r0,#0
        0x20005e6c:    d104        ..      BNE      0x20005e78 ; patch_llp_hook_prefix_sleep_is_system_sleep_allowed + 56
        0x20005e6e:    481f        .H      LDR      r0,[pc,#124] ; [0x20005eec] = 0x1fffffff
        0x20005e70:    f001f9f0    ....    BL       $Ven$TT$L$$rom_llp_hw_sleep_cycles_of_low_clk ; 0x20007254
        0x20005e74:    2001        .       MOVS     r0,#1
        0x20005e76:    7020         p      STRB     r0,[r4,#0]
        0x20005e78:    f3858810    ....    MSR      PRIMASK,r5
        0x20005e7c:    2001        .       MOVS     r0,#1
        0x20005e7e:    bd70        p.      POP      {r4-r6,pc}
        0x20005e80:    492f        /I      LDR      r1,[pc,#188] ; [0x20005f40] = 0x400001e8
        0x20005e82:    4608        .F      MOV      r0,r1
        0x20005e84:    3868        h8      SUBS     r0,r0,#0x68
        0x20005e86:    6800        .h      LDR      r0,[r0,#0]
        0x20005e88:    4a2b        +J      LDR      r2,[pc,#172] ; [0x20005f38] = 0x2000095b
        0x20005e8a:    7812        .x      LDRB     r2,[r2,#0]
        0x20005e8c:    2a00        .*      CMP      r2,#0
        0x20005e8e:    d01d        ..      BEQ      0x20005ecc ; patch_llp_hook_prefix_sleep_is_system_sleep_allowed + 140
        0x20005e90:    4030        0@      ANDS     r0,r0,r6
        0x20005e92:    d01b        ..      BEQ      0x20005ecc ; patch_llp_hook_prefix_sleep_is_system_sleep_allowed + 140
        0x20005e94:    2205        ."      MOVS     r2,#5
        0x20005e96:    6808        .h      LDR      r0,[r1,#0]
        0x20005e98:    680b        .h      LDR      r3,[r1,#0]
        0x20005e9a:    4298        .B      CMP      r0,r3
        0x20005e9c:    d004        ..      BEQ      0x20005ea8 ; patch_llp_hook_prefix_sleep_is_system_sleep_allowed + 104
        0x20005e9e:    1e53        S.      SUBS     r3,r2,#1
        0x20005ea0:    0612        ..      LSLS     r2,r2,#24
        0x20005ea2:    461a        .F      MOV      r2,r3
        0x20005ea4:    d1f7        ..      BNE      0x20005e96 ; patch_llp_hook_prefix_sleep_is_system_sleep_allowed + 86
        0x20005ea6:    22ff        ."      MOVS     r2,#0xff
        0x20005ea8:    0611        ..      LSLS     r1,r2,#24
        0x20005eaa:    d013        ..      BEQ      0x20005ed4 ; patch_llp_hook_prefix_sleep_is_system_sleep_allowed + 148
        0x20005eac:    4923        #I      LDR      r1,[pc,#140] ; [0x20005f3c] = 0x40000080
        0x20005eae:    6809        .h      LDR      r1,[r1,#0]
        0x20005eb0:    4281        .B      CMP      r1,r0
        0x20005eb2:    d913        ..      BLS      0x20005edc ; patch_llp_hook_prefix_sleep_is_system_sleep_allowed + 156
        0x20005eb4:    4a0c        .J      LDR      r2,[pc,#48] ; [0x20005ee8] = 0x20000822
        0x20005eb6:    8812        ..      LDRH     r2,[r2,#0]
        0x20005eb8:    f3858810    ....    MSR      PRIMASK,r5
        0x20005ebc:    1a08        ..      SUBS     r0,r1,r0
        0x20005ebe:    0951        Q.      LSRS     r1,r2,#5
        0x20005ec0:    4288        .B      CMP      r0,r1
        0x20005ec2:    d800        ..      BHI      0x20005ec6 ; patch_llp_hook_prefix_sleep_is_system_sleep_allowed + 134
        0x20005ec4:    2600        .&      MOVS     r6,#0
        0x20005ec6:    4634        4F      MOV      r4,r6
        0x20005ec8:    4620         F      MOV      r0,r4
        0x20005eca:    bd70        p.      POP      {r4-r6,pc}
        0x20005ecc:    f3858810    ....    MSR      PRIMASK,r5
        0x20005ed0:    4620         F      MOV      r0,r4
        0x20005ed2:    bd70        p.      POP      {r4-r6,pc}
        0x20005ed4:    f3858810    ....    MSR      PRIMASK,r5
        0x20005ed8:    4620         F      MOV      r0,r4
        0x20005eda:    bd70        p.      POP      {r4-r6,pc}
        0x20005edc:    f3858810    ....    MSR      PRIMASK,r5
        0x20005ee0:    4620         F      MOV      r0,r4
        0x20005ee2:    bd70        p.      POP      {r4-r6,pc}
    $d.3
    __arm_cp.1_0
        0x20005ee4:    2000095f    _..     DCD    536873311
    __arm_cp.1_4
        0x20005ee8:    20000822    "..     DCD    536872994
    __arm_cp.1_5
        0x20005eec:    1fffffff    ....    DCD    536870911
    $t.0
    patch_llp_hook_prefix_sleep_wakeup
        0x20005ef0:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20005ef2:    2101        .!      MOVS     r1,#1
        0x20005ef4:    7001        .p      STRB     r1,[r0,#0]
        0x20005ef6:    f3ef8410    ....    MRS      r4,PRIMASK
        0x20005efa:    f3ef8010    ....    MRS      r0,PRIMASK
        0x20005efe:    b672        r.      CPSID    i
        0x20005f00:    4d0d        .M      LDR      r5,[pc,#52] ; [0x20005f38] = 0x2000095b
        0x20005f02:    7828        (x      LDRB     r0,[r5,#0]
        0x20005f04:    2800        .(      CMP      r0,#0
        0x20005f06:    d013        ..      BEQ      0x20005f30 ; patch_llp_hook_prefix_sleep_wakeup + 64
        0x20005f08:    480c        .H      LDR      r0,[pc,#48] ; [0x20005f3c] = 0x40000080
        0x20005f0a:    6800        .h      LDR      r0,[r0,#0]
        0x20005f0c:    490c        .I      LDR      r1,[pc,#48] ; [0x20005f40] = 0x400001e8
        0x20005f0e:    6809        .h      LDR      r1,[r1,#0]
        0x20005f10:    4281        .B      CMP      r1,r0
        0x20005f12:    d205        ..      BCS      0x20005f20 ; patch_llp_hook_prefix_sleep_wakeup + 48
        0x20005f14:    1d49        I.      ADDS     r1,r1,#5
        0x20005f16:    4281        .B      CMP      r1,r0
        0x20005f18:    d204        ..      BCS      0x20005f24 ; patch_llp_hook_prefix_sleep_wakeup + 52
        0x20005f1a:    f001f9a1    ....    BL       $Ven$TT$L$$rom_llp_hw_wakeup ; 0x20007260
        0x20005f1e:    e005        ..      B        0x20005f2c ; patch_llp_hook_prefix_sleep_wakeup + 60
        0x20005f20:    2064        d       MOVS     r0,#0x64
        0x20005f22:    e001        ..      B        0x20005f28 ; patch_llp_hook_prefix_sleep_wakeup + 56
        0x20005f24:    204b        K       MOVS     r0,#0x4b
        0x20005f26:    0080        ..      LSLS     r0,r0,#2
        0x20005f28:    f000fd9e    ....    BL       $Ven$TT$L$$rom_delay_us ; 0x20006a68
        0x20005f2c:    2000        .       MOVS     r0,#0
        0x20005f2e:    7028        (p      STRB     r0,[r5,#0]
        0x20005f30:    f3848810    ....    MSR      PRIMASK,r4
        0x20005f34:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20005f36:    46c0        .F      MOV      r8,r8
    $d.1
    __arm_cp.0_0
        0x20005f38:    2000095b    [..     DCD    536873307
    __arm_cp.0_1
        0x20005f3c:    40000080    ...@    DCD    1073741952
    __arm_cp.0_2
        0x20005f40:    400001e8    ...@    DCD    1073742312
    $t.0
    patch_llp_initiator_fragment_start
        0x20005f44:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20005f46:    b084        ..      SUB      sp,sp,#0x10
        0x20005f48:    2800        .(      CMP      r0,#0
        0x20005f4a:    d008        ..      BEQ      0x20005f5e ; patch_llp_initiator_fragment_start + 26
        0x20005f4c:    4604        .F      MOV      r4,r0
        0x20005f4e:    6881        .h      LDR      r1,[r0,#8]
        0x20005f50:    2004        .       MOVS     r0,#4
        0x20005f52:    f001f94f    ..O.    BL       $Ven$TT$L$$rom_llp_hw_set_work_time_us ; 0x200071f4
        0x20005f56:    2800        .(      CMP      r0,#0
        0x20005f58:    d004        ..      BEQ      0x20005f64 ; patch_llp_initiator_fragment_start + 32
        0x20005f5a:    b004        ..      ADD      sp,sp,#0x10
        0x20005f5c:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20005f5e:    2004        .       MOVS     r0,#4
        0x20005f60:    b004        ..      ADD      sp,sp,#0x10
        0x20005f62:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20005f64:    89e3        ..      LDRH     r3,[r4,#0xe]
        0x20005f66:    89a2        ..      LDRH     r2,[r4,#0xc]
        0x20005f68:    7c60        `|      LDRB     r0,[r4,#0x11]
        0x20005f6a:    4601        .F      MOV      r1,r0
        0x20005f6c:    f001f948    ..H.    BL       $Ven$TT$L$$rom_llp_hw_set_ifs ; 0x20007200
        0x20005f70:    2800        .(      CMP      r0,#0
        0x20005f72:    d1f2        ..      BNE      0x20005f5a ; patch_llp_initiator_fragment_start + 22
        0x20005f74:    6962        bi      LDR      r2,[r4,#0x14]
        0x20005f76:    69a3        .i      LDR      r3,[r4,#0x18]
        0x20005f78:    7c21        !|      LDRB     r1,[r4,#0x10]
        0x20005f7a:    7c60        `|      LDRB     r0,[r4,#0x11]
        0x20005f7c:    2501        .%      MOVS     r5,#1
        0x20005f7e:    9500        ..      STR      r5,[sp,#0]
        0x20005f80:    9001        ..      STR      r0,[sp,#4]
        0x20005f82:    9002        ..      STR      r0,[sp,#8]
        0x20005f84:    2500        .%      MOVS     r5,#0
        0x20005f86:    4628        (F      MOV      r0,r5
        0x20005f88:    f001f940    ..@.    BL       $Ven$TT$L$$rom_llp_hw_set_trx_param ; 0x2000720c
        0x20005f8c:    2800        .(      CMP      r0,#0
        0x20005f8e:    d1e4        ..      BNE      0x20005f5a ; patch_llp_initiator_fragment_start + 22
        0x20005f90:    6a20         j      LDR      r0,[r4,#0x20]
        0x20005f92:    f001f941    ..A.    BL       $Ven$TT$L$$rom_llp_hw_set_tx_pdu ; 0x20007218
        0x20005f96:    2800        .(      CMP      r0,#0
        0x20005f98:    d1df        ..      BNE      0x20005f5a ; patch_llp_initiator_fragment_start + 22
        0x20005f9a:    8ba1        ..      LDRH     r1,[r4,#0x1c]
        0x20005f9c:    6a60        `j      LDR      r0,[r4,#0x24]
        0x20005f9e:    f001f941    ..A.    BL       $Ven$TT$L$$rom_llp_hw_set_rx_pdu ; 0x20007224
        0x20005fa2:    2800        .(      CMP      r0,#0
        0x20005fa4:    d1d9        ..      BNE      0x20005f5a ; patch_llp_initiator_fragment_start + 22
        0x20005fa6:    cc03        ..      LDM      r4!,{r0,r1}
        0x20005fa8:    7a62        bz      LDRB     r2,[r4,#9]
        0x20005faa:    f001f95f    .._.    BL       $Ven$TT$L$$rom_llp_hw_set_rtr_mode_start_time ; 0x2000726c
        0x20005fae:    2800        .(      CMP      r0,#0
        0x20005fb0:    d1d3        ..      BNE      0x20005f5a ; patch_llp_initiator_fragment_start + 22
        0x20005fb2:    4803        .H      LDR      r0,[pc,#12] ; [0x20005fc0] = 0x20000d9c
        0x20005fb4:    7005        .p      STRB     r5,[r0,#0]
        0x20005fb6:    f001f95f    .._.    BL       $Ven$TT$L$$rom_llp_hw_set_init_mode ; 0x20007278
        0x20005fba:    4628        (F      MOV      r0,r5
        0x20005fbc:    b004        ..      ADD      sp,sp,#0x10
        0x20005fbe:    bdb0        ..      POP      {r4,r5,r7,pc}
    $d.1
    __arm_cp.0_0
        0x20005fc0:    20000d9c    ...     DCD    536874396
    $t.0
    patch_llp_master_fragment_start
        0x20005fc4:    b570        p.      PUSH     {r4-r6,lr}
        0x20005fc6:    b084        ..      SUB      sp,sp,#0x10
        0x20005fc8:    2800        .(      CMP      r0,#0
        0x20005fca:    d008        ..      BEQ      0x20005fde ; patch_llp_master_fragment_start + 26
        0x20005fcc:    4604        .F      MOV      r4,r0
        0x20005fce:    6881        .h      LDR      r1,[r0,#8]
        0x20005fd0:    2006        .       MOVS     r0,#6
        0x20005fd2:    f001f90f    ....    BL       $Ven$TT$L$$rom_llp_hw_set_work_time_us ; 0x200071f4
        0x20005fd6:    2800        .(      CMP      r0,#0
        0x20005fd8:    d004        ..      BEQ      0x20005fe4 ; patch_llp_master_fragment_start + 32
        0x20005fda:    b004        ..      ADD      sp,sp,#0x10
        0x20005fdc:    bd70        p.      POP      {r4-r6,pc}
        0x20005fde:    2004        .       MOVS     r0,#4
        0x20005fe0:    b004        ..      ADD      sp,sp,#0x10
        0x20005fe2:    bd70        p.      POP      {r4-r6,pc}
        0x20005fe4:    89e3        ..      LDRH     r3,[r4,#0xe]
        0x20005fe6:    89a2        ..      LDRH     r2,[r4,#0xc]
        0x20005fe8:    7ca1        .|      LDRB     r1,[r4,#0x12]
        0x20005fea:    7c60        `|      LDRB     r0,[r4,#0x11]
        0x20005fec:    f001f908    ....    BL       $Ven$TT$L$$rom_llp_hw_set_ifs ; 0x20007200
        0x20005ff0:    2800        .(      CMP      r0,#0
        0x20005ff2:    d1f2        ..      BNE      0x20005fda ; patch_llp_master_fragment_start + 22
        0x20005ff4:    6962        bi      LDR      r2,[r4,#0x14]
        0x20005ff6:    69a3        .i      LDR      r3,[r4,#0x18]
        0x20005ff8:    7c21        !|      LDRB     r1,[r4,#0x10]
        0x20005ffa:    7c60        `|      LDRB     r0,[r4,#0x11]
        0x20005ffc:    7ca5        .|      LDRB     r5,[r4,#0x12]
        0x20005ffe:    2601        .&      MOVS     r6,#1
        0x20006000:    9600        ..      STR      r6,[sp,#0]
        0x20006002:    9001        ..      STR      r0,[sp,#4]
        0x20006004:    9502        ..      STR      r5,[sp,#8]
        0x20006006:    2500        .%      MOVS     r5,#0
        0x20006008:    4628        (F      MOV      r0,r5
        0x2000600a:    f001f8ff    ....    BL       $Ven$TT$L$$rom_llp_hw_set_trx_param ; 0x2000720c
        0x2000600e:    2800        .(      CMP      r0,#0
        0x20006010:    d1e3        ..      BNE      0x20005fda ; patch_llp_master_fragment_start + 22
        0x20006012:    6a20         j      LDR      r0,[r4,#0x20]
        0x20006014:    f001f900    ....    BL       $Ven$TT$L$$rom_llp_hw_set_tx_pdu ; 0x20007218
        0x20006018:    2800        .(      CMP      r0,#0
        0x2000601a:    d1de        ..      BNE      0x20005fda ; patch_llp_master_fragment_start + 22
        0x2000601c:    8ba1        ..      LDRH     r1,[r4,#0x1c]
        0x2000601e:    6a60        `j      LDR      r0,[r4,#0x24]
        0x20006020:    f001f900    ....    BL       $Ven$TT$L$$rom_llp_hw_set_rx_pdu ; 0x20007224
        0x20006024:    2800        .(      CMP      r0,#0
        0x20006026:    d1d8        ..      BNE      0x20005fda ; patch_llp_master_fragment_start + 22
        0x20006028:    cc03        ..      LDM      r4!,{r0,r1}
        0x2000602a:    7a62        bz      LDRB     r2,[r4,#9]
        0x2000602c:    f001f900    ....    BL       $Ven$TT$L$$rom_llp_hw_set_trt_mode_start_time ; 0x20007230
        0x20006030:    2800        .(      CMP      r0,#0
        0x20006032:    d1d2        ..      BNE      0x20005fda ; patch_llp_master_fragment_start + 22
        0x20006034:    4803        .H      LDR      r0,[pc,#12] ; [0x20006044] = 0x20000d9d
        0x20006036:    7005        .p      STRB     r5,[r0,#0]
        0x20006038:    f001f924    ..$.    BL       $Ven$TT$L$$rom_llp_hw_set_master_mode ; 0x20007284
        0x2000603c:    4628        (F      MOV      r0,r5
        0x2000603e:    b004        ..      ADD      sp,sp,#0x10
        0x20006040:    bd70        p.      POP      {r4-r6,pc}
        0x20006042:    46c0        .F      MOV      r8,r8
    $d.1
    __arm_cp.0_0
        0x20006044:    20000d9d    ...     DCD    536874397
    $t.0
    patch_llp_scan_fragment_start
        0x20006048:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x2000604a:    b084        ..      SUB      sp,sp,#0x10
        0x2000604c:    2800        .(      CMP      r0,#0
        0x2000604e:    d008        ..      BEQ      0x20006062 ; patch_llp_scan_fragment_start + 26
        0x20006050:    4604        .F      MOV      r4,r0
        0x20006052:    6881        .h      LDR      r1,[r0,#8]
        0x20006054:    2003        .       MOVS     r0,#3
        0x20006056:    f001f8cd    ....    BL       $Ven$TT$L$$rom_llp_hw_set_work_time_us ; 0x200071f4
        0x2000605a:    2800        .(      CMP      r0,#0
        0x2000605c:    d004        ..      BEQ      0x20006068 ; patch_llp_scan_fragment_start + 32
        0x2000605e:    b004        ..      ADD      sp,sp,#0x10
        0x20006060:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20006062:    2004        .       MOVS     r0,#4
        0x20006064:    b004        ..      ADD      sp,sp,#0x10
        0x20006066:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20006068:    89e3        ..      LDRH     r3,[r4,#0xe]
        0x2000606a:    89a2        ..      LDRH     r2,[r4,#0xc]
        0x2000606c:    7c60        `|      LDRB     r0,[r4,#0x11]
        0x2000606e:    4601        .F      MOV      r1,r0
        0x20006070:    f001f8c6    ....    BL       $Ven$TT$L$$rom_llp_hw_set_ifs ; 0x20007200
        0x20006074:    2800        .(      CMP      r0,#0
        0x20006076:    d1f2        ..      BNE      0x2000605e ; patch_llp_scan_fragment_start + 22
        0x20006078:    6962        bi      LDR      r2,[r4,#0x14]
        0x2000607a:    69a3        .i      LDR      r3,[r4,#0x18]
        0x2000607c:    7c21        !|      LDRB     r1,[r4,#0x10]
        0x2000607e:    7c60        `|      LDRB     r0,[r4,#0x11]
        0x20006080:    2501        .%      MOVS     r5,#1
        0x20006082:    9500        ..      STR      r5,[sp,#0]
        0x20006084:    9001        ..      STR      r0,[sp,#4]
        0x20006086:    9002        ..      STR      r0,[sp,#8]
        0x20006088:    2500        .%      MOVS     r5,#0
        0x2000608a:    4628        (F      MOV      r0,r5
        0x2000608c:    f001f8be    ....    BL       $Ven$TT$L$$rom_llp_hw_set_trx_param ; 0x2000720c
        0x20006090:    2800        .(      CMP      r0,#0
        0x20006092:    d1e4        ..      BNE      0x2000605e ; patch_llp_scan_fragment_start + 22
        0x20006094:    6a20         j      LDR      r0,[r4,#0x20]
        0x20006096:    f001f8bf    ....    BL       $Ven$TT$L$$rom_llp_hw_set_tx_pdu ; 0x20007218
        0x2000609a:    2800        .(      CMP      r0,#0
        0x2000609c:    d1df        ..      BNE      0x2000605e ; patch_llp_scan_fragment_start + 22
        0x2000609e:    8ba1        ..      LDRH     r1,[r4,#0x1c]
        0x200060a0:    6a60        `j      LDR      r0,[r4,#0x24]
        0x200060a2:    f001f8bf    ....    BL       $Ven$TT$L$$rom_llp_hw_set_rx_pdu ; 0x20007224
        0x200060a6:    2800        .(      CMP      r0,#0
        0x200060a8:    d1d9        ..      BNE      0x2000605e ; patch_llp_scan_fragment_start + 22
        0x200060aa:    cc03        ..      LDM      r4!,{r0,r1}
        0x200060ac:    7a62        bz      LDRB     r2,[r4,#9]
        0x200060ae:    f001f8dd    ....    BL       $Ven$TT$L$$rom_llp_hw_set_rtr_mode_start_time ; 0x2000726c
        0x200060b2:    2800        .(      CMP      r0,#0
        0x200060b4:    d1d3        ..      BNE      0x2000605e ; patch_llp_scan_fragment_start + 22
        0x200060b6:    4803        .H      LDR      r0,[pc,#12] ; [0x200060c4] = 0x20000dbc
        0x200060b8:    7005        .p      STRB     r5,[r0,#0]
        0x200060ba:    f001f8e9    ....    BL       $Ven$TT$L$$rom_llp_hw_set_scan_mode ; 0x20007290
        0x200060be:    4628        (F      MOV      r0,r5
        0x200060c0:    b004        ..      ADD      sp,sp,#0x10
        0x200060c2:    bdb0        ..      POP      {r4,r5,r7,pc}
    $d.1
    __arm_cp.0_0
        0x200060c4:    20000dbc    ...     DCD    536874428
    $t.0
    patch_llp_slave_fragment_start
        0x200060c8:    b570        p.      PUSH     {r4-r6,lr}
        0x200060ca:    b084        ..      SUB      sp,sp,#0x10
        0x200060cc:    2800        .(      CMP      r0,#0
        0x200060ce:    d008        ..      BEQ      0x200060e2 ; patch_llp_slave_fragment_start + 26
        0x200060d0:    4604        .F      MOV      r4,r0
        0x200060d2:    6881        .h      LDR      r1,[r0,#8]
        0x200060d4:    2005        .       MOVS     r0,#5
        0x200060d6:    f001f88d    ....    BL       $Ven$TT$L$$rom_llp_hw_set_work_time_us ; 0x200071f4
        0x200060da:    2800        .(      CMP      r0,#0
        0x200060dc:    d004        ..      BEQ      0x200060e8 ; patch_llp_slave_fragment_start + 32
        0x200060de:    b004        ..      ADD      sp,sp,#0x10
        0x200060e0:    bd70        p.      POP      {r4-r6,pc}
        0x200060e2:    2004        .       MOVS     r0,#4
        0x200060e4:    b004        ..      ADD      sp,sp,#0x10
        0x200060e6:    bd70        p.      POP      {r4-r6,pc}
        0x200060e8:    8a63        c.      LDRH     r3,[r4,#0x12]
        0x200060ea:    8a22        ".      LDRH     r2,[r4,#0x10]
        0x200060ec:    7da1        .}      LDRB     r1,[r4,#0x16]
        0x200060ee:    7d60        `}      LDRB     r0,[r4,#0x15]
        0x200060f0:    f001f886    ....    BL       $Ven$TT$L$$rom_llp_hw_set_ifs ; 0x20007200
        0x200060f4:    2800        .(      CMP      r0,#0
        0x200060f6:    d1f2        ..      BNE      0x200060de ; patch_llp_slave_fragment_start + 22
        0x200060f8:    7da1        .}      LDRB     r1,[r4,#0x16]
        0x200060fa:    68e0        .h      LDR      r0,[r4,#0xc]
        0x200060fc:    f001f8ce    ....    BL       $Ven$TT$L$$rom_llp_hw_set_slave_rx_window ; 0x2000729c
        0x20006100:    2800        .(      CMP      r0,#0
        0x20006102:    d1ec        ..      BNE      0x200060de ; patch_llp_slave_fragment_start + 22
        0x20006104:    69a2        .i      LDR      r2,[r4,#0x18]
        0x20006106:    69e3        .i      LDR      r3,[r4,#0x1c]
        0x20006108:    7d21        !}      LDRB     r1,[r4,#0x14]
        0x2000610a:    7d60        `}      LDRB     r0,[r4,#0x15]
        0x2000610c:    7da5        .}      LDRB     r5,[r4,#0x16]
        0x2000610e:    2601        .&      MOVS     r6,#1
        0x20006110:    9600        ..      STR      r6,[sp,#0]
        0x20006112:    9001        ..      STR      r0,[sp,#4]
        0x20006114:    9502        ..      STR      r5,[sp,#8]
        0x20006116:    2500        .%      MOVS     r5,#0
        0x20006118:    4628        (F      MOV      r0,r5
        0x2000611a:    f001f877    ..w.    BL       $Ven$TT$L$$rom_llp_hw_set_trx_param ; 0x2000720c
        0x2000611e:    2800        .(      CMP      r0,#0
        0x20006120:    d1dd        ..      BNE      0x200060de ; patch_llp_slave_fragment_start + 22
        0x20006122:    6a60        `j      LDR      r0,[r4,#0x24]
        0x20006124:    f001f878    ..x.    BL       $Ven$TT$L$$rom_llp_hw_set_tx_pdu ; 0x20007218
        0x20006128:    2800        .(      CMP      r0,#0
        0x2000612a:    d1d8        ..      BNE      0x200060de ; patch_llp_slave_fragment_start + 22
        0x2000612c:    8c21        !.      LDRH     r1,[r4,#0x20]
        0x2000612e:    6aa0        .j      LDR      r0,[r4,#0x28]
        0x20006130:    f001f878    ..x.    BL       $Ven$TT$L$$rom_llp_hw_set_rx_pdu ; 0x20007224
        0x20006134:    2800        .(      CMP      r0,#0
        0x20006136:    d1d2        ..      BNE      0x200060de ; patch_llp_slave_fragment_start + 22
        0x20006138:    cc03        ..      LDM      r4!,{r0,r1}
        0x2000613a:    7ba2        .{      LDRB     r2,[r4,#0xe]
        0x2000613c:    f001f896    ....    BL       $Ven$TT$L$$rom_llp_hw_set_rtr_mode_start_time ; 0x2000726c
        0x20006140:    2800        .(      CMP      r0,#0
        0x20006142:    d1cc        ..      BNE      0x200060de ; patch_llp_slave_fragment_start + 22
        0x20006144:    4803        .H      LDR      r0,[pc,#12] ; [0x20006154] = 0x20000dbd
        0x20006146:    7005        .p      STRB     r5,[r0,#0]
        0x20006148:    f001f8ae    ....    BL       $Ven$TT$L$$rom_llp_hw_set_slave_mode ; 0x200072a8
        0x2000614c:    4628        (F      MOV      r0,r5
        0x2000614e:    b004        ..      ADD      sp,sp,#0x10
        0x20006150:    bd70        p.      POP      {r4-r6,pc}
        0x20006152:    46c0        .F      MOV      r8,r8
    $d.1
    __arm_cp.0_0
        0x20006154:    20000dbd    ...     DCD    536874429
    $t.4
    patch_llp_sleep
        0x20006158:    4802        .H      LDR      r0,[pc,#8] ; [0x20006164] = 0x20000d20
        0x2000615a:    4903        .I      LDR      r1,[pc,#12] ; [0x20006168] = 0x20005ef1
        0x2000615c:    6481        .d      STR      r1,[r0,#0x48]
        0x2000615e:    4903        .I      LDR      r1,[pc,#12] ; [0x2000616c] = 0x20005e41
        0x20006160:    6541        Ae      STR      r1,[r0,#0x54]
        0x20006162:    4770        pG      BX       lr
    $d.5
    __arm_cp.2_0
        0x20006164:    20000d20     ..     DCD    536874272
    __arm_cp.2_1
        0x20006168:    20005ef1    .^.     DCD    536895217
    __arm_cp.2_2
        0x2000616c:    20005e41    A^.     DCD    536895041
    $t.0
    patch_llp_start_adv_fragment
        0x20006170:    b570        p.      PUSH     {r4-r6,lr}
        0x20006172:    4605        .F      MOV      r5,r0
        0x20006174:    4e55        UN      LDR      r6,[pc,#340] ; [0x200062cc] = 0x20000dc0
        0x20006176:    6830        0h      LDR      r0,[r6,#0]
        0x20006178:    2800        .(      CMP      r0,#0
        0x2000617a:    d001        ..      BEQ      0x20006180 ; patch_llp_start_adv_fragment + 16
        0x2000617c:    2001        .       MOVS     r0,#1
        0x2000617e:    bd70        p.      POP      {r4-r6,pc}
        0x20006180:    f001f898    ....    BL       $Ven$TT$L$$rom_llp_sleep_wakeup ; 0x200072b4
        0x20006184:    4628        (F      MOV      r0,r5
        0x20006186:    f7fffe1b    ....    BL       patch_llp_adv_fragment_start ; 0x20005dc0
        0x2000618a:    4604        .F      MOV      r4,r0
        0x2000618c:    2800        .(      CMP      r0,#0
        0x2000618e:    d001        ..      BEQ      0x20006194 ; patch_llp_start_adv_fragment + 36
        0x20006190:    4620         F      MOV      r0,r4
        0x20006192:    bd70        p.      POP      {r4-r6,pc}
        0x20006194:    4803        .H      LDR      r0,[pc,#12] ; [0x200061a4] = 0x22784
        0x20006196:    6030        0`      STR      r0,[r6,#0]
        0x20006198:    cd03        ..      LDM      r5!,{r0,r1}
        0x2000619a:    f001f891    ....    BL       $Ven$TT$L$$rom_llp_sleep_on_fragment_config_succeed ; 0x200072c0
        0x2000619e:    4620         F      MOV      r0,r4
        0x200061a0:    bd70        p.      POP      {r4-r6,pc}
        0x200061a2:    46c0        .F      MOV      r8,r8
    $d.1
    __arm_cp.0_1
        0x200061a4:    00022784    .'..    DCD    141188
    $t.4
    patch_llp_start_init_fragment
        0x200061a8:    b5f0        ..      PUSH     {r4-r7,lr}
        0x200061aa:    b081        ..      SUB      sp,sp,#4
        0x200061ac:    4604        .F      MOV      r4,r0
        0x200061ae:    4f47        GO      LDR      r7,[pc,#284] ; [0x200062cc] = 0x20000dc0
        0x200061b0:    6838        8h      LDR      r0,[r7,#0]
        0x200061b2:    2800        .(      CMP      r0,#0
        0x200061b4:    d001        ..      BEQ      0x200061ba ; patch_llp_start_init_fragment + 18
        0x200061b6:    2601        .&      MOVS     r6,#1
        0x200061b8:    e01e        ..      B        0x200061f8 ; patch_llp_start_init_fragment + 80
        0x200061ba:    f001f87b    ..{.    BL       $Ven$TT$L$$rom_llp_sleep_wakeup ; 0x200072b4
        0x200061be:    cc03        ..      LDM      r4!,{r0,r1}
        0x200061c0:    7a63        cz      LDRB     r3,[r4,#9]
        0x200061c2:    2500        .%      MOVS     r5,#0
        0x200061c4:    462a        *F      MOV      r2,r5
        0x200061c6:    3c08        .<      SUBS     r4,r4,#8
        0x200061c8:    f001f880    ....    BL       $Ven$TT$L$$rom_llp_scan_init_start_time_adjust ; 0x200072cc
        0x200061cc:    c403        ..      STM      r4!,{r0,r1}
        0x200061ce:    6820         h      LDR      r0,[r4,#0]
        0x200061d0:    7a62        bz      LDRB     r2,[r4,#9]
        0x200061d2:    4629        )F      MOV      r1,r5
        0x200061d4:    3c08        .<      SUBS     r4,r4,#8
        0x200061d6:    f001f87f    ....    BL       $Ven$TT$L$$rom_llp_scan_init_work_time_adjust ; 0x200072d8
        0x200061da:    60a0        .`      STR      r0,[r4,#8]
        0x200061dc:    4620         F      MOV      r0,r4
        0x200061de:    f7fffeb1    ....    BL       patch_llp_initiator_fragment_start ; 0x20005f44
        0x200061e2:    4606        .F      MOV      r6,r0
        0x200061e4:    4628        (F      MOV      r0,r5
        0x200061e6:    f001f87d    ..}.    BL       $Ven$TT$L$$rom_llp_scan_init_mode_rx_en_time_adjust ; 0x200072e4
        0x200061ea:    2e00        ..      CMP      r6,#0
        0x200061ec:    d104        ..      BNE      0x200061f8 ; patch_llp_start_init_fragment + 80
        0x200061ee:    4804        .H      LDR      r0,[pc,#16] ; [0x20006200] = 0x227d4
        0x200061f0:    6038        8`      STR      r0,[r7,#0]
        0x200061f2:    cc03        ..      LDM      r4!,{r0,r1}
        0x200061f4:    f001f864    ..d.    BL       $Ven$TT$L$$rom_llp_sleep_on_fragment_config_succeed ; 0x200072c0
        0x200061f8:    4630        0F      MOV      r0,r6
        0x200061fa:    b001        ..      ADD      sp,sp,#4
        0x200061fc:    bdf0        ..      POP      {r4-r7,pc}
        0x200061fe:    46c0        .F      MOV      r8,r8
    $d.5
    __arm_cp.2_1
        0x20006200:    000227d4    .'..    DCD    141268
    $t.8
    patch_llp_start_master_fragment
        0x20006204:    b570        p.      PUSH     {r4-r6,lr}
        0x20006206:    4605        .F      MOV      r5,r0
        0x20006208:    4e30        0N      LDR      r6,[pc,#192] ; [0x200062cc] = 0x20000dc0
        0x2000620a:    6830        0h      LDR      r0,[r6,#0]
        0x2000620c:    2800        .(      CMP      r0,#0
        0x2000620e:    d001        ..      BEQ      0x20006214 ; patch_llp_start_master_fragment + 16
        0x20006210:    2001        .       MOVS     r0,#1
        0x20006212:    bd70        p.      POP      {r4-r6,pc}
        0x20006214:    f001f84e    ..N.    BL       $Ven$TT$L$$rom_llp_sleep_wakeup ; 0x200072b4
        0x20006218:    4628        (F      MOV      r0,r5
        0x2000621a:    f7fffed3    ....    BL       patch_llp_master_fragment_start ; 0x20005fc4
        0x2000621e:    4604        .F      MOV      r4,r0
        0x20006220:    2800        .(      CMP      r0,#0
        0x20006222:    d001        ..      BEQ      0x20006228 ; patch_llp_start_master_fragment + 36
        0x20006224:    4620         F      MOV      r0,r4
        0x20006226:    bd70        p.      POP      {r4-r6,pc}
        0x20006228:    4803        .H      LDR      r0,[pc,#12] ; [0x20006238] = 0x227e4
        0x2000622a:    6030        0`      STR      r0,[r6,#0]
        0x2000622c:    cd03        ..      LDM      r5!,{r0,r1}
        0x2000622e:    f001f847    ..G.    BL       $Ven$TT$L$$rom_llp_sleep_on_fragment_config_succeed ; 0x200072c0
        0x20006232:    4620         F      MOV      r0,r4
        0x20006234:    bd70        p.      POP      {r4-r6,pc}
        0x20006236:    46c0        .F      MOV      r8,r8
    $d.9
    __arm_cp.4_1
        0x20006238:    000227e4    .'..    DCD    141284
    $t.2
    patch_llp_start_scan_fragment
        0x2000623c:    b5f0        ..      PUSH     {r4-r7,lr}
        0x2000623e:    b081        ..      SUB      sp,sp,#4
        0x20006240:    4604        .F      MOV      r4,r0
        0x20006242:    4f22        "O      LDR      r7,[pc,#136] ; [0x200062cc] = 0x20000dc0
        0x20006244:    6838        8h      LDR      r0,[r7,#0]
        0x20006246:    2800        .(      CMP      r0,#0
        0x20006248:    d001        ..      BEQ      0x2000624e ; patch_llp_start_scan_fragment + 18
        0x2000624a:    2601        .&      MOVS     r6,#1
        0x2000624c:    e01e        ..      B        0x2000628c ; patch_llp_start_scan_fragment + 80
        0x2000624e:    f001f831    ..1.    BL       $Ven$TT$L$$rom_llp_sleep_wakeup ; 0x200072b4
        0x20006252:    cc03        ..      LDM      r4!,{r0,r1}
        0x20006254:    7a63        cz      LDRB     r3,[r4,#9]
        0x20006256:    2500        .%      MOVS     r5,#0
        0x20006258:    462a        *F      MOV      r2,r5
        0x2000625a:    3c08        .<      SUBS     r4,r4,#8
        0x2000625c:    f001f836    ..6.    BL       $Ven$TT$L$$rom_llp_scan_init_start_time_adjust ; 0x200072cc
        0x20006260:    c403        ..      STM      r4!,{r0,r1}
        0x20006262:    6820         h      LDR      r0,[r4,#0]
        0x20006264:    7a62        bz      LDRB     r2,[r4,#9]
        0x20006266:    4629        )F      MOV      r1,r5
        0x20006268:    3c08        .<      SUBS     r4,r4,#8
        0x2000626a:    f001f835    ..5.    BL       $Ven$TT$L$$rom_llp_scan_init_work_time_adjust ; 0x200072d8
        0x2000626e:    60a0        .`      STR      r0,[r4,#8]
        0x20006270:    4620         F      MOV      r0,r4
        0x20006272:    f7fffee9    ....    BL       patch_llp_scan_fragment_start ; 0x20006048
        0x20006276:    4606        .F      MOV      r6,r0
        0x20006278:    4628        (F      MOV      r0,r5
        0x2000627a:    f001f833    ..3.    BL       $Ven$TT$L$$rom_llp_scan_init_mode_rx_en_time_adjust ; 0x200072e4
        0x2000627e:    2e00        ..      CMP      r6,#0
        0x20006280:    d104        ..      BNE      0x2000628c ; patch_llp_start_scan_fragment + 80
        0x20006282:    4804        .H      LDR      r0,[pc,#16] ; [0x20006294] = 0x227f4
        0x20006284:    6038        8`      STR      r0,[r7,#0]
        0x20006286:    cc03        ..      LDM      r4!,{r0,r1}
        0x20006288:    f001f81a    ....    BL       $Ven$TT$L$$rom_llp_sleep_on_fragment_config_succeed ; 0x200072c0
        0x2000628c:    4630        0F      MOV      r0,r6
        0x2000628e:    b001        ..      ADD      sp,sp,#4
        0x20006290:    bdf0        ..      POP      {r4-r7,pc}
        0x20006292:    46c0        .F      MOV      r8,r8
    $d.3
    __arm_cp.1_1
        0x20006294:    000227f4    .'..    DCD    141300
    $t.6
    patch_llp_start_slave_fragment
        0x20006298:    b570        p.      PUSH     {r4-r6,lr}
        0x2000629a:    4605        .F      MOV      r5,r0
        0x2000629c:    4e0b        .N      LDR      r6,[pc,#44] ; [0x200062cc] = 0x20000dc0
        0x2000629e:    6830        0h      LDR      r0,[r6,#0]
        0x200062a0:    2800        .(      CMP      r0,#0
        0x200062a2:    d001        ..      BEQ      0x200062a8 ; patch_llp_start_slave_fragment + 16
        0x200062a4:    2001        .       MOVS     r0,#1
        0x200062a6:    bd70        p.      POP      {r4-r6,pc}
        0x200062a8:    f001f804    ....    BL       $Ven$TT$L$$rom_llp_sleep_wakeup ; 0x200072b4
        0x200062ac:    4628        (F      MOV      r0,r5
        0x200062ae:    f7ffff0b    ....    BL       patch_llp_slave_fragment_start ; 0x200060c8
        0x200062b2:    4604        .F      MOV      r4,r0
        0x200062b4:    2800        .(      CMP      r0,#0
        0x200062b6:    d001        ..      BEQ      0x200062bc ; patch_llp_start_slave_fragment + 36
        0x200062b8:    4620         F      MOV      r0,r4
        0x200062ba:    bd70        p.      POP      {r4-r6,pc}
        0x200062bc:    4804        .H      LDR      r0,[pc,#16] ; [0x200062d0] = 0x22804
        0x200062be:    6030        0`      STR      r0,[r6,#0]
        0x200062c0:    cd03        ..      LDM      r5!,{r0,r1}
        0x200062c2:    f000fffd    ....    BL       $Ven$TT$L$$rom_llp_sleep_on_fragment_config_succeed ; 0x200072c0
        0x200062c6:    4620         F      MOV      r0,r4
        0x200062c8:    bd70        p.      POP      {r4-r6,pc}
        0x200062ca:    46c0        .F      MOV      r8,r8
    $d.7
    __arm_cp.3_0
        0x200062cc:    20000dc0    ...     DCD    536874432
    __arm_cp.3_1
        0x200062d0:    00022804    .(..    DCD    141316
    $t.0
    patch_on_prefix_llc_ctrl_procedure_check_and_init_peer_initiated_procedure_by_first_pdu
        0x200062d4:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x200062d6:    2301        .#      MOVS     r3,#1
        0x200062d8:    7003        .p      STRB     r3,[r0,#0]
        0x200062da:    68d0        .h      LDR      r0,[r2,#0xc]
        0x200062dc:    7804        .x      LDRB     r4,[r0,#0]
        0x200062de:    2000        .       MOVS     r0,#0
        0x200062e0:    2c16        .,      CMP      r4,#0x16
        0x200062e2:    d835        5.      BHI      0x20006350 ; patch_on_prefix_llc_ctrl_procedure_check_and_init_peer_initiated_procedure_by_first_pdu + 124
        0x200062e4:    2371        q#      MOVS     r3,#0x71
        0x200062e6:    00db        ..      LSLS     r3,r3,#3
        0x200062e8:    18cb        ..      ADDS     r3,r1,r3
        0x200062ea:    46c0        .F      MOV      r8,r8
        0x200062ec:    447c        |D      ADD      r4,r4,pc
        0x200062ee:    7924        $y      LDRB     r4,[r4,#4]
        0x200062f0:    0064        d.      LSLS     r4,r4,#1
        0x200062f2:    44a7        .D      ADD      pc,pc,r4
    $d.1
        0x200062f4:    0b2d1a15    ..-.    DCD    187505173
        0x200062f8:    2d2d2d2d    ----    DCD    757935405
        0x200062fc:    2d0b2d10    .-.-    DCD    755707152
        0x20006300:    2d102d1f    .-.-    DCD    756034847
        0x20006304:    2d2d2d2d    ----    DCD    757935405
        0x20006308:    00292d24    $-).    DCD    2698532
    $t.2
        0x2000630c:    4608        .F      MOV      r0,r1
        0x2000630e:    4619        .F      MOV      r1,r3
        0x20006310:    f000ffee    ....    BL       $Ven$TT$L$$rom_llc_encryption_procedure_peer_initiated_init ; 0x200072f0
        0x20006314:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20006316:    4608        .F      MOV      r0,r1
        0x20006318:    4619        .F      MOV      r1,r3
        0x2000631a:    f7fffb7d    ..}.    BL       patch_llc_feature_exchange_procedure_peer_initiated_init ; 0x20005a18
        0x2000631e:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20006320:    4608        .F      MOV      r0,r1
        0x20006322:    4619        .F      MOV      r1,r3
        0x20006324:    f000ffea    ....    BL       $Ven$TT$L$$rom_llc_connection_update_procedure_peer_initiated_init ; 0x200072fc
        0x20006328:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x2000632a:    4608        .F      MOV      r0,r1
        0x2000632c:    4619        .F      MOV      r1,r3
        0x2000632e:    f000ffeb    ....    BL       $Ven$TT$L$$rom_llc_channel_map_update_procedure_peer_initiated_init ; 0x20007308
        0x20006332:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20006334:    4608        .F      MOV      r0,r1
        0x20006336:    4619        .F      MOV      r1,r3
        0x20006338:    f000ffec    ....    BL       $Ven$TT$L$$rom_llc_version_exchange_procedure_peer_initiated_init ; 0x20007314
        0x2000633c:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x2000633e:    4608        .F      MOV      r0,r1
        0x20006340:    4619        .F      MOV      r1,r3
        0x20006342:    f000ffed    ....    BL       $Ven$TT$L$$rom_llc_data_length_update_procedure_peer_initiated_init ; 0x20007320
        0x20006346:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20006348:    4608        .F      MOV      r0,r1
        0x2000634a:    4619        .F      MOV      r1,r3
        0x2000634c:    f000ffee    ....    BL       $Ven$TT$L$$rom_llc_phy_update_procedure_peer_initiated_init ; 0x2000732c
        0x20006350:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20006352:    0000        ..      MOVS     r0,r0
    peripheral_init
        0x20006354:    b580        ..      PUSH     {r7,lr}
        0x20006356:    b082        ..      SUB      sp,sp,#8
        0x20006358:    2000        .       MOVS     r0,#0
        0x2000635a:    4601        .F      MOV      r1,r0
        0x2000635c:    4602        .F      MOV      r2,r0
        0x2000635e:    f000ffeb    ....    BL       $Ven$TT$L$$rom_hw_sys_ctrl_peri_int_ctrl ; 0x20007338
        0x20006362:    f000ffef    ....    BL       $Ven$TT$L$$rom_hw_trng_gen_32bit ; 0x20007344
        0x20006366:    f000fff3    ....    BL       $Ven$TT$L$$rom_rand_init ; 0x20007350
        0x2000636a:    f7fdfa9d    ....    BL       app_timer_init ; 0x200038a8
        0x2000636e:    2001        .       MOVS     r0,#1
        0x20006370:    0301        ..      LSLS     r1,r0,#12
        0x20006372:    480a        .H      LDR      r0,[pc,#40] ; [0x2000639c] = 0x2000ba74
        0x20006374:    8081        ..      STRH     r1,[r0,#4]
        0x20006376:    4a0a        .J      LDR      r2,[pc,#40] ; [0x200063a0] = 0x2000c080
        0x20006378:    6002        .`      STR      r2,[r0,#0]
        0x2000637a:    9000        ..      STR      r0,[sp,#0]
        0x2000637c:    20e1        .       MOVS     r0,#0xe1
        0x2000637e:    02c3        ..      LSLS     r3,r0,#11
        0x20006380:    4808        .H      LDR      r0,[pc,#32] ; [0x200063a4] = 0x6004b080
        0x20006382:    4a09        .J      LDR      r2,[pc,#36] ; [0x200063a8] = 0x60000400
        0x20006384:    f7fdf99a    ....    BL       app_debug_init ; 0x200036bc
        0x20006388:    a008        ..      ADR      r0,{pc}+0x24 ; 0x200063ac
        0x2000638a:    a115        ..      ADR      r1,{pc}+0x56 ; 0x200063e0
        0x2000638c:    a217        ..      ADR      r2,{pc}+0x60 ; 0x200063ec
        0x2000638e:    f001f821    ..!.    BL       __0printf$8 ; 0x200073d4
        0x20006392:    f7fefa31    ..1.    BL       err_debug_init ; 0x200047f8
        0x20006396:    b002        ..      ADD      sp,sp,#8
        0x20006398:    bd80        ..      POP      {r7,pc}
        0x2000639a:    46c0        .F      MOV      r8,r8
    $d.4
    __arm_cp.3_0
        0x2000639c:    2000ba74    t..     DCD    536918644
    __arm_cp.3_1
        0x200063a0:    2000c080    ...     DCD    536920192
    __arm_cp.3_2
        0x200063a4:    6004b080    ...`    DCD    1610920064
    __arm_cp.3_3
        0x200063a8:    60000400    ...`    DCD    1610613760
        0x200063ac:    2073255b    [%s     DCD    544417115
        0x200063b0:    73252054    T %s    DCD    1931812948
        0x200063b4:    656c625d    ]ble    DCD    1701601885
        0x200063b8:    72657020     per    DCD    1919250464
        0x200063bc:    65687069    iphe    DCD    1701343337
        0x200063c0:    206c6172    ral     DCD    543973746
        0x200063c4:    6a6f7270    proj    DCD    1785688688
        0x200063c8:    28746365    ect(    DCD    678716261
        0x200063cc:    20297063    cp)     DCD    539586659
        0x200063d0:    72617473    star    DCD    1918989427
        0x200063d4:    6f742074    t to    DCD    1869881460
        0x200063d8:    726f7720     wor    DCD    1919907616
        0x200063dc:    000a2e6b    k...    DCD    667243
        0x200063e0:    20677541    Aug     DCD    543651137
        0x200063e4:    32203931    19 2    DCD    840972593
        0x200063e8:    00363230    026.    DCD    3551792
        0x200063ec:    353a3830    08:5    DCD    893007920
        0x200063f0:    37313a31    1:17    DCD    925973041
        0x200063f4:    00000000    ....    DCD    0
    $t.0
    rf_init
        0x200063f8:    b580        ..      PUSH     {r7,lr}
        0x200063fa:    f000ffaf    ....    BL       $Ven$TT$L$$rom_hal_rf_cali_init ; 0x2000735c
        0x200063fe:    f000ffb3    ....    BL       $Ven$TT$L$$rom_hal_rf_tx_cali ; 0x20007368
        0x20006402:    f000ffb7    ....    BL       $Ven$TT$L$$rom_hal_rf_rx_cali ; 0x20007374
        0x20006406:    2800        .(      CMP      r0,#0
        0x20006408:    d000        ..      BEQ      0x2000640c ; rf_init + 20
        0x2000640a:    bd80        ..      POP      {r7,pc}
        0x2000640c:    f000ffb8    ....    BL       $Ven$TT$L$$rom_hal_rf_rx_dc_cal_sweep ; 0x20007380
        0x20006410:    4805        .H      LDR      r0,[pc,#20] ; [0x20006428] = 0x1f520
        0x20006412:    f000ffbb    ....    BL       $Ven$TT$L$$rom_hal_rf_tx_power_table_init ; 0x2000738c
        0x20006416:    2002        .       MOVS     r0,#2
        0x20006418:    f000fd12    ....    BL       $Ven$TT$L$$rom_hal_rf_tx_power_set ; 0x20006e40
        0x2000641c:    200b        .       MOVS     r0,#0xb
        0x2000641e:    f000ffbb    ....    BL       $Ven$TT$L$$rom_hw_rf_tx_pa_h2_config ; 0x20007398
        0x20006422:    2000        .       MOVS     r0,#0
        0x20006424:    bd80        ..      POP      {r7,pc}
        0x20006426:    46c0        .F      MOV      r8,r8
    $d.1
    __arm_cp.0_0
        0x20006428:    0001f520     ...    DCD    128288
    $t.4
    rom_llc_ext_adv_get_instance_by_index
        0x2000642c:    4908        .I      LDR      r1,[pc,#32] ; [0x20006450] = 0x20009390
        0x2000642e:    6809        .h      LDR      r1,[r1,#0]
        0x20006430:    4a0a        .J      LDR      r2,[pc,#40] ; [0x2000645c] = 0x2000a66a
        0x20006432:    7812        .x      LDRB     r2,[r2,#0]
        0x20006434:    4282        .B      CMP      r2,r0
        0x20006436:    d803        ..      BHI      0x20006440 ; rom_llc_ext_adv_get_instance_by_index + 20
        0x20006438:    2000        .       MOVS     r0,#0
        0x2000643a:    2900        .)      CMP      r1,#0
        0x2000643c:    d107        ..      BNE      0x2000644e ; rom_llc_ext_adv_get_instance_by_index + 34
        0x2000643e:    e005        ..      B        0x2000644c ; rom_llc_ext_adv_get_instance_by_index + 32
        0x20006440:    2235        5"      MOVS     r2,#0x35
        0x20006442:    00d2        ..      LSLS     r2,r2,#3
        0x20006444:    4342        BC      MULS     r2,r0,r2
        0x20006446:    1888        ..      ADDS     r0,r1,r2
        0x20006448:    2900        .)      CMP      r1,#0
        0x2000644a:    d100        ..      BNE      0x2000644e ; rom_llc_ext_adv_get_instance_by_index + 34
        0x2000644c:    4608        .F      MOV      r0,r1
        0x2000644e:    4770        pG      BX       lr
    $d.5
    __arm_cp.2_0
        0x20006450:    20009390    ...     DCD    536908688
    $t.2
    rom_llc_ext_adv_get_num
        0x20006454:    4801        .H      LDR      r0,[pc,#4] ; [0x2000645c] = 0x2000a66a
        0x20006456:    7800        .x      LDRB     r0,[r0,#0]
        0x20006458:    4770        pG      BX       lr
        0x2000645a:    46c0        .F      MOV      r8,r8
    $d.3
    __arm_cp.1_0
        0x2000645c:    2000a66a    j..     DCD    536913514
    $t.48
    rom_llc_ext_adv_is_any_advertising_set_enabled
        0x20006460:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20006462:    b081        ..      SUB      sp,sp,#4
        0x20006464:    f7fffff6    ....    BL       rom_llc_ext_adv_get_num ; 0x20006454
        0x20006468:    2800        .(      CMP      r0,#0
        0x2000646a:    d027        '.      BEQ      0x200064bc ; rom_llc_ext_adv_is_any_advertising_set_enabled + 92
        0x2000646c:    4604        .F      MOV      r4,r0
        0x2000646e:    2500        .%      MOVS     r5,#0
        0x20006470:    2601        .&      MOVS     r6,#1
        0x20006472:    b2e8        ..      UXTB     r0,r5
        0x20006474:    f7ffffda    ....    BL       rom_llc_ext_adv_get_instance_by_index ; 0x2000642c
        0x20006478:    2800        .(      CMP      r0,#0
        0x2000647a:    d00f        ..      BEQ      0x2000649c ; rom_llc_ext_adv_is_any_advertising_set_enabled + 60
        0x2000647c:    3099        .0      ADDS     r0,r0,#0x99
        0x2000647e:    7801        .x      LDRB     r1,[r0,#0]
        0x20006480:    2900        .)      CMP      r1,#0
        0x20006482:    d007        ..      BEQ      0x20006494 ; rom_llc_ext_adv_is_any_advertising_set_enabled + 52
        0x20006484:    7840        @x      LDRB     r0,[r0,#1]
        0x20006486:    2800        .(      CMP      r0,#0
        0x20006488:    d004        ..      BEQ      0x20006494 ; rom_llc_ext_adv_is_any_advertising_set_enabled + 52
        0x2000648a:    2000        .       MOVS     r0,#0
        0x2000648c:    4637        7F      MOV      r7,r6
        0x2000648e:    2800        .(      CMP      r0,#0
        0x20006490:    d10f        ..      BNE      0x200064b2 ; rom_llc_ext_adv_is_any_advertising_set_enabled + 82
        0x20006492:    e014        ..      B        0x200064be ; rom_llc_ext_adv_is_any_advertising_set_enabled + 94
        0x20006494:    4630        0F      MOV      r0,r6
        0x20006496:    2800        .(      CMP      r0,#0
        0x20006498:    d10b        ..      BNE      0x200064b2 ; rom_llc_ext_adv_is_any_advertising_set_enabled + 82
        0x2000649a:    e010        ..      B        0x200064be ; rom_llc_ext_adv_is_any_advertising_set_enabled + 94
        0x2000649c:    2091        .       MOVS     r0,#0x91
        0x2000649e:    0101        ..      LSLS     r1,r0,#4
        0x200064a0:    201e        .       MOVS     r0,#0x1e
        0x200064a2:    462a        *F      MOV      r2,r5
        0x200064a4:    4623        #F      MOV      r3,r4
        0x200064a6:    f000fe99    ....    BL       $Ven$TT$L$$system_error ; 0x200071dc
        0x200064aa:    2700        .'      MOVS     r7,#0
        0x200064ac:    4638        8F      MOV      r0,r7
        0x200064ae:    2800        .(      CMP      r0,#0
        0x200064b0:    d005        ..      BEQ      0x200064be ; rom_llc_ext_adv_is_any_advertising_set_enabled + 94
        0x200064b2:    1c6d        m.      ADDS     r5,r5,#1
        0x200064b4:    42ac        .B      CMP      r4,r5
        0x200064b6:    d1dc        ..      BNE      0x20006472 ; rom_llc_ext_adv_is_any_advertising_set_enabled + 18
        0x200064b8:    2700        .'      MOVS     r7,#0
        0x200064ba:    e000        ..      B        0x200064be ; rom_llc_ext_adv_is_any_advertising_set_enabled + 94
        0x200064bc:    2700        .'      MOVS     r7,#0
        0x200064be:    2001        .       MOVS     r0,#1
        0x200064c0:    4038        8@      ANDS     r0,r0,r7
        0x200064c2:    b001        ..      ADD      sp,sp,#4
        0x200064c4:    bdf0        ..      POP      {r4-r7,pc}
        0x200064c6:    0000        ..      MOVS     r0,r0
    rom_llc_ext_adv_is_white_list_in_use
        0x200064c8:    b5f0        ..      PUSH     {r4-r7,lr}
        0x200064ca:    b081        ..      SUB      sp,sp,#4
        0x200064cc:    f7ffffc2    ....    BL       rom_llc_ext_adv_get_num ; 0x20006454
        0x200064d0:    2800        .(      CMP      r0,#0
        0x200064d2:    d028        (.      BEQ      0x20006526 ; rom_llc_ext_adv_is_white_list_in_use + 94
        0x200064d4:    4604        .F      MOV      r4,r0
        0x200064d6:    2500        .%      MOVS     r5,#0
        0x200064d8:    2601        .&      MOVS     r6,#1
        0x200064da:    b2e8        ..      UXTB     r0,r5
        0x200064dc:    f7ffffa6    ....    BL       rom_llc_ext_adv_get_instance_by_index ; 0x2000642c
        0x200064e0:    2800        .(      CMP      r0,#0
        0x200064e2:    d00d        ..      BEQ      0x20006500 ; rom_llc_ext_adv_is_white_list_in_use + 56
        0x200064e4:    308d        .0      ADDS     r0,r0,#0x8d
        0x200064e6:    7b01        .{      LDRB     r1,[r0,#0xc]
        0x200064e8:    2900        .)      CMP      r1,#0
        0x200064ea:    d005        ..      BEQ      0x200064f8 ; rom_llc_ext_adv_is_white_list_in_use + 48
        0x200064ec:    7b41        A{      LDRB     r1,[r0,#0xd]
        0x200064ee:    2900        .)      CMP      r1,#0
        0x200064f0:    d002        ..      BEQ      0x200064f8 ; rom_llc_ext_adv_is_white_list_in_use + 48
        0x200064f2:    7800        .x      LDRB     r0,[r0,#0]
        0x200064f4:    2800        .(      CMP      r0,#0
        0x200064f6:    d011        ..      BEQ      0x2000651c ; rom_llc_ext_adv_is_white_list_in_use + 84
        0x200064f8:    4630        0F      MOV      r0,r6
        0x200064fa:    2800        .(      CMP      r0,#0
        0x200064fc:    d10a        ..      BNE      0x20006514 ; rom_llc_ext_adv_is_white_list_in_use + 76
        0x200064fe:    e015        ..      B        0x2000652c ; rom_llc_ext_adv_is_white_list_in_use + 100
        0x20006500:    201e        .       MOVS     r0,#0x1e
        0x20006502:    490c        .I      LDR      r1,[pc,#48] ; [0x20006534] = 0x926
        0x20006504:    462a        *F      MOV      r2,r5
        0x20006506:    4623        #F      MOV      r3,r4
        0x20006508:    f000fe68    ..h.    BL       $Ven$TT$L$$system_error ; 0x200071dc
        0x2000650c:    2700        .'      MOVS     r7,#0
        0x2000650e:    4638        8F      MOV      r0,r7
        0x20006510:    2800        .(      CMP      r0,#0
        0x20006512:    d00b        ..      BEQ      0x2000652c ; rom_llc_ext_adv_is_white_list_in_use + 100
        0x20006514:    1c6d        m.      ADDS     r5,r5,#1
        0x20006516:    42ac        .B      CMP      r4,r5
        0x20006518:    d1df        ..      BNE      0x200064da ; rom_llc_ext_adv_is_white_list_in_use + 18
        0x2000651a:    e006        ..      B        0x2000652a ; rom_llc_ext_adv_is_white_list_in_use + 98
        0x2000651c:    2000        .       MOVS     r0,#0
        0x2000651e:    4637        7F      MOV      r7,r6
        0x20006520:    2800        .(      CMP      r0,#0
        0x20006522:    d1f7        ..      BNE      0x20006514 ; rom_llc_ext_adv_is_white_list_in_use + 76
        0x20006524:    e002        ..      B        0x2000652c ; rom_llc_ext_adv_is_white_list_in_use + 100
        0x20006526:    2700        .'      MOVS     r7,#0
        0x20006528:    e000        ..      B        0x2000652c ; rom_llc_ext_adv_is_white_list_in_use + 100
        0x2000652a:    2700        .'      MOVS     r7,#0
        0x2000652c:    2001        .       MOVS     r0,#1
        0x2000652e:    4038        8@      ANDS     r0,r0,r7
        0x20006530:    b001        ..      ADD      sp,sp,#4
        0x20006532:    bdf0        ..      POP      {r4-r7,pc}
    $d.50
    __arm_cp.27_0
        0x20006534:    00000926    &...    DCD    2342
    $t.10
    rom_llc_ext_initiator_get_instance
        0x20006538:    4801        .H      LDR      r0,[pc,#4] ; [0x20006540] = 0x20009394
        0x2000653a:    6800        .h      LDR      r0,[r0,#0]
        0x2000653c:    4770        pG      BX       lr
        0x2000653e:    46c0        .F      MOV      r8,r8
    $d.11
    __arm_cp.7_0
        0x20006540:    20009394    ...     DCD    536908692
    $t.13
    rom_llc_ext_initiator_is_enabled
        0x20006544:    b580        ..      PUSH     {r7,lr}
        0x20006546:    f7fffff7    ....    BL       rom_llc_ext_initiator_get_instance ; 0x20006538
        0x2000654a:    2800        .(      CMP      r0,#0
        0x2000654c:    d005        ..      BEQ      0x2000655a ; rom_llc_ext_initiator_is_enabled + 22
        0x2000654e:    2133        3!      MOVS     r1,#0x33
        0x20006550:    00c9        ..      LSLS     r1,r1,#3
        0x20006552:    5c40        @\      LDRB     r0,[r0,r1]
        0x20006554:    1e41        A.      SUBS     r1,r0,#1
        0x20006556:    4188        .A      SBCS     r0,r0,r1
        0x20006558:    bd80        ..      POP      {r7,pc}
        0x2000655a:    2000        .       MOVS     r0,#0
        0x2000655c:    bd80        ..      POP      {r7,pc}
    rom_llc_ext_initiator_is_white_list_in_use
        0x2000655e:    b580        ..      PUSH     {r7,lr}
        0x20006560:    f7ffffea    ....    BL       rom_llc_ext_initiator_get_instance ; 0x20006538
        0x20006564:    4601        .F      MOV      r1,r0
        0x20006566:    2000        .       MOVS     r0,#0
        0x20006568:    2900        .)      CMP      r1,#0
        0x2000656a:    d00a        ..      BEQ      0x20006582 ; rom_llc_ext_initiator_is_white_list_in_use + 36
        0x2000656c:    2233        3"      MOVS     r2,#0x33
        0x2000656e:    00d2        ..      LSLS     r2,r2,#3
        0x20006570:    188a        ..      ADDS     r2,r1,r2
        0x20006572:    7812        .x      LDRB     r2,[r2,#0]
        0x20006574:    2a00        .*      CMP      r2,#0
        0x20006576:    d004        ..      BEQ      0x20006582 ; rom_llc_ext_initiator_is_white_list_in_use + 36
        0x20006578:    3191        .1      ADDS     r1,r1,#0x91
        0x2000657a:    7808        .x      LDRB     r0,[r1,#0]
        0x2000657c:    1e41        A.      SUBS     r1,r0,#1
        0x2000657e:    4248        HB      RSBS     r0,r1,#0
        0x20006580:    4148        HA      ADCS     r0,r0,r1
        0x20006582:    bd80        ..      POP      {r7,pc}
    rom_llc_ext_scan_get_instance
        0x20006584:    4801        .H      LDR      r0,[pc,#4] ; [0x2000658c] = 0x20009398
        0x20006586:    6800        .h      LDR      r0,[r0,#0]
        0x20006588:    4770        pG      BX       lr
        0x2000658a:    46c0        .F      MOV      r8,r8
    $d.11
    __arm_cp.7_0
        0x2000658c:    20009398    ...     DCD    536908696
    $t.13
    rom_llc_ext_scan_is_enabled
        0x20006590:    b580        ..      PUSH     {r7,lr}
        0x20006592:    f7fffff7    ....    BL       rom_llc_ext_scan_get_instance ; 0x20006584
        0x20006596:    2800        .(      CMP      r0,#0
        0x20006598:    d005        ..      BEQ      0x200065a6 ; rom_llc_ext_scan_is_enabled + 22
        0x2000659a:    2147        G!      MOVS     r1,#0x47
        0x2000659c:    0089        ..      LSLS     r1,r1,#2
        0x2000659e:    5c40        @\      LDRB     r0,[r0,r1]
        0x200065a0:    1e41        A.      SUBS     r1,r0,#1
        0x200065a2:    4188        .A      SBCS     r0,r0,r1
        0x200065a4:    bd80        ..      POP      {r7,pc}
        0x200065a6:    2000        .       MOVS     r0,#0
        0x200065a8:    bd80        ..      POP      {r7,pc}
    rom_llc_ext_scan_is_white_list_in_use
        0x200065aa:    b580        ..      PUSH     {r7,lr}
        0x200065ac:    f7ffffea    ....    BL       rom_llc_ext_scan_get_instance ; 0x20006584
        0x200065b0:    4601        .F      MOV      r1,r0
        0x200065b2:    2000        .       MOVS     r0,#0
        0x200065b4:    2900        .)      CMP      r1,#0
        0x200065b6:    d00c        ..      BEQ      0x200065d2 ; rom_llc_ext_scan_is_white_list_in_use + 40
        0x200065b8:    2247        G"      MOVS     r2,#0x47
        0x200065ba:    0092        ..      LSLS     r2,r2,#2
        0x200065bc:    188a        ..      ADDS     r2,r1,r2
        0x200065be:    7812        .x      LDRB     r2,[r2,#0]
        0x200065c0:    2a00        .*      CMP      r2,#0
        0x200065c2:    d006        ..      BEQ      0x200065d2 ; rom_llc_ext_scan_is_white_list_in_use + 40
        0x200065c4:    31a5        .1      ADDS     r1,r1,#0xa5
        0x200065c6:    7809        .x      LDRB     r1,[r1,#0]
        0x200065c8:    2202        ."      MOVS     r2,#2
        0x200065ca:    430a        .C      ORRS     r2,r2,r1
        0x200065cc:    2a03        .*      CMP      r2,#3
        0x200065ce:    d100        ..      BNE      0x200065d2 ; rom_llc_ext_scan_is_white_list_in_use + 40
        0x200065d0:    2001        .       MOVS     r0,#1
        0x200065d2:    bd80        ..      POP      {r7,pc}
    rom_llc_priority_ext_adv_on_event_added
        0x200065d4:    4770        pG      BX       lr
    rom_llc_priority_ext_adv_on_event_blocked
        0x200065d6:    4770        pG      BX       lr
    rom_llc_priority_ext_adv_on_event_config_failed
        0x200065d8:    4770        pG      BX       lr
    rom_llc_priority_ext_adv_on_event_stopped
        0x200065da:    4770        pG      BX       lr
    rom_llc_priority_ext_initiator_on_event_added
        0x200065dc:    2117        .!      MOVS     r1,#0x17
        0x200065de:    7481        .t      STRB     r1,[r0,#0x12]
        0x200065e0:    4770        pG      BX       lr
    rom_llc_priority_ext_initiator_on_event_blocked
        0x200065e2:    4770        pG      BX       lr
    rom_llc_priority_ext_initiator_on_event_config_failed
        0x200065e4:    4770        pG      BX       lr
    rom_llc_priority_ext_initiator_on_event_stopped
        0x200065e6:    4770        pG      BX       lr
    rom_llc_priority_ext_scan_on_event_added
        0x200065e8:    21ff        .!      MOVS     r1,#0xff
        0x200065ea:    3174        t1      ADDS     r1,r1,#0x74
        0x200065ec:    6b82        .k      LDR      r2,[r0,#0x38]
        0x200065ee:    2364        d#      MOVS     r3,#0x64
        0x200065f0:    5453        ST      STRB     r3,[r2,r1]
        0x200065f2:    7483        .t      STRB     r3,[r0,#0x12]
        0x200065f4:    1850        P.      ADDS     r0,r2,r1
        0x200065f6:    2119        .!      MOVS     r1,#0x19
        0x200065f8:    7041        Ap      STRB     r1,[r0,#1]
        0x200065fa:    4770        pG      BX       lr
    rom_llc_priority_ext_scan_on_event_blocked
        0x200065fc:    b570        p.      PUSH     {r4-r6,lr}
        0x200065fe:    460a        .F      MOV      r2,r1
        0x20006600:    4604        .F      MOV      r4,r0
        0x20006602:    21ff        .!      MOVS     r1,#0xff
        0x20006604:    4608        .F      MOV      r0,r1
        0x20006606:    3020         0      ADDS     r0,r0,#0x20
        0x20006608:    6ba3        .k      LDR      r3,[r4,#0x38]
        0x2000660a:    181e        ..      ADDS     r6,r3,r0
        0x2000660c:    20b9        .       MOVS     r0,#0xb9
        0x2000660e:    0040        @.      LSLS     r0,r0,#1
        0x20006610:    181d        ..      ADDS     r5,r3,r0
        0x20006612:    5c18        .\      LDRB     r0,[r3,r0]
        0x20006614:    2800        .(      CMP      r0,#0
        0x20006616:    d007        ..      BEQ      0x20006628 ; rom_llc_priority_ext_scan_on_event_blocked + 44
        0x20006618:    2aff        .*      CMP      r2,#0xff
        0x2000661a:    d800        ..      BHI      0x2000661e ; rom_llc_priority_ext_scan_on_event_blocked + 34
        0x2000661c:    b2d1        ..      UXTB     r1,r2
        0x2000661e:    7868        hx      LDRB     r0,[r5,#1]
        0x20006620:    221a        ."      MOVS     r2,#0x1a
        0x20006622:    f000f836    ..6.    BL       rom_llc_priority_get_sub_level ; 0x20006692
        0x20006626:    7068        hp      STRB     r0,[r5,#1]
        0x20006628:    7830        0x      LDRB     r0,[r6,#0]
        0x2000662a:    2800        .(      CMP      r0,#0
        0x2000662c:    d001        ..      BEQ      0x20006632 ; rom_llc_priority_ext_scan_on_event_blocked + 54
        0x2000662e:    2001        .       MOVS     r0,#1
        0x20006630:    e000        ..      B        0x20006634 ; rom_llc_priority_ext_scan_on_event_blocked + 56
        0x20006632:    2002        .       MOVS     r0,#2
        0x20006634:    5c28        (\      LDRB     r0,[r5,r0]
        0x20006636:    74a0        .t      STRB     r0,[r4,#0x12]
        0x20006638:    bd70        p.      POP      {r4-r6,pc}
    rom_llc_priority_ext_scan_on_event_config_failed
        0x2000663a:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x2000663c:    4604        .F      MOV      r4,r0
        0x2000663e:    20ff        .       MOVS     r0,#0xff
        0x20006640:    6ba1        .k      LDR      r1,[r4,#0x38]
        0x20006642:    4602        .F      MOV      r2,r0
        0x20006644:    3220         2      ADDS     r2,r2,#0x20
        0x20006646:    5c8a        .\      LDRB     r2,[r1,r2]
        0x20006648:    2a00        .*      CMP      r2,#0
        0x2000664a:    d008        ..      BEQ      0x2000665e ; rom_llc_priority_ext_scan_on_event_config_failed + 36
        0x2000664c:    3074        t0      ADDS     r0,r0,#0x74
        0x2000664e:    180d        ..      ADDS     r5,r1,r0
        0x20006650:    7828        (x      LDRB     r0,[r5,#0]
        0x20006652:    2101        .!      MOVS     r1,#1
        0x20006654:    221a        ."      MOVS     r2,#0x1a
        0x20006656:    f000f81c    ....    BL       rom_llc_priority_get_sub_level ; 0x20006692
        0x2000665a:    7028        (p      STRB     r0,[r5,#0]
        0x2000665c:    74a0        .t      STRB     r0,[r4,#0x12]
        0x2000665e:    bdb0        ..      POP      {r4,r5,r7,pc}
    rom_llc_priority_ext_scan_on_event_stopped
        0x20006660:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20006662:    4604        .F      MOV      r4,r0
        0x20006664:    20ff        .       MOVS     r0,#0xff
        0x20006666:    6ba1        .k      LDR      r1,[r4,#0x38]
        0x20006668:    4602        .F      MOV      r2,r0
        0x2000666a:    3220         2      ADDS     r2,r2,#0x20
        0x2000666c:    5c8a        .\      LDRB     r2,[r1,r2]
        0x2000666e:    2a00        .*      CMP      r2,#0
        0x20006670:    d008        ..      BEQ      0x20006684 ; rom_llc_priority_ext_scan_on_event_stopped + 36
        0x20006672:    3074        t0      ADDS     r0,r0,#0x74
        0x20006674:    180d        ..      ADDS     r5,r1,r0
        0x20006676:    7828        (x      LDRB     r0,[r5,#0]
        0x20006678:    2132        2!      MOVS     r1,#0x32
        0x2000667a:    2264        d"      MOVS     r2,#0x64
        0x2000667c:    f000f803    ....    BL       rom_llc_priority_get_add_level ; 0x20006686
        0x20006680:    7028        (p      STRB     r0,[r5,#0]
        0x20006682:    74a0        .t      STRB     r0,[r4,#0x12]
        0x20006684:    bdb0        ..      POP      {r4,r5,r7,pc}
    rom_llc_priority_get_add_level
        0x20006686:    1840        @.      ADDS     r0,r0,r1
        0x20006688:    4290        .B      CMP      r0,r2
        0x2000668a:    d800        ..      BHI      0x2000668e ; rom_llc_priority_get_add_level + 8
        0x2000668c:    4602        .F      MOV      r2,r0
        0x2000668e:    b2d0        ..      UXTB     r0,r2
        0x20006690:    4770        pG      BX       lr
    rom_llc_priority_get_sub_level
        0x20006692:    1853        S.      ADDS     r3,r2,r1
        0x20006694:    4283        .B      CMP      r3,r0
        0x20006696:    d200        ..      BCS      0x2000669a ; rom_llc_priority_get_sub_level + 8
        0x20006698:    1a42        B.      SUBS     r2,r0,r1
        0x2000669a:    b2d0        ..      UXTB     r0,r2
        0x2000669c:    4770        pG      BX       lr
        0x2000669e:    0000        ..      MOVS     r0,r0
    send_msg_to_bleStackTask
        0x200066a0:    b5f0        ..      PUSH     {r4-r7,lr}
        0x200066a2:    b085        ..      SUB      sp,sp,#0x14
        0x200066a4:    4616        .F      MOV      r6,r2
        0x200066a6:    4605        .F      MOV      r5,r0
        0x200066a8:    f3ef8005    ....    MRS      r0,IPSR
        0x200066ac:    aa02        ..      ADD      r2,sp,#8
        0x200066ae:    7095        .p      STRB     r5,[r2,#2]
        0x200066b0:    8011        ..      STRH     r1,[r2,#0]
        0x200066b2:    70d6        .p      STRB     r6,[r2,#3]
        0x200066b4:    2400        .$      MOVS     r4,#0
        0x200066b6:    9403        ..      STR      r4,[sp,#0xc]
        0x200066b8:    2800        .(      CMP      r0,#0
        0x200066ba:    d100        ..      BNE      0x200066be ; send_msg_to_bleStackTask + 30
        0x200066bc:    43e4        .C      MVNS     r4,r4
        0x200066be:    2e00        ..      CMP      r6,#0
        0x200066c0:    d02d        -.      BEQ      0x2000671e ; send_msg_to_bleStackTask + 126
        0x200066c2:    2e24        $.      CMP      r6,#0x24
        0x200066c4:    d818        ..      BHI      0x200066f8 ; send_msg_to_bleStackTask + 88
        0x200066c6:    9301        ..      STR      r3,[sp,#4]
        0x200066c8:    482c        ,H      LDR      r0,[pc,#176] ; [0x2000677c] = 0x2000ba64
        0x200066ca:    9000        ..      STR      r0,[sp,#0]
        0x200066cc:    6800        .h      LDR      r0,[r0,#0]
        0x200066ce:    2100        .!      MOVS     r1,#0
        0x200066d0:    f000fe68    ..h.    BL       $Ven$TT$L$$osMemoryPoolAlloc ; 0x200073a4
        0x200066d4:    9003        ..      STR      r0,[sp,#0xc]
        0x200066d6:    2800        .(      CMP      r0,#0
        0x200066d8:    d109        ..      BNE      0x200066ee ; send_msg_to_bleStackTask + 78
        0x200066da:    4827        'H      LDR      r0,[pc,#156] ; [0x20006778] = 0x2000ba60
        0x200066dc:    9000        ..      STR      r0,[sp,#0]
        0x200066de:    6800        .h      LDR      r0,[r0,#0]
        0x200066e0:    2700        .'      MOVS     r7,#0
        0x200066e2:    4639        9F      MOV      r1,r7
        0x200066e4:    f000fe5e    ..^.    BL       $Ven$TT$L$$osMemoryPoolAlloc ; 0x200073a4
        0x200066e8:    9003        ..      STR      r0,[sp,#0xc]
        0x200066ea:    2800        .(      CMP      r0,#0
        0x200066ec:    d03b        ;.      BEQ      0x20006766 ; send_msg_to_bleStackTask + 198
        0x200066ee:    9800        ..      LDR      r0,[sp,#0]
        0x200066f0:    6800        .h      LDR      r0,[r0,#0]
        0x200066f2:    9004        ..      STR      r0,[sp,#0x10]
        0x200066f4:    9803        ..      LDR      r0,[sp,#0xc]
        0x200066f6:    e00e        ..      B        0x20006716 ; send_msg_to_bleStackTask + 118
        0x200066f8:    2e80        ..      CMP      r6,#0x80
        0x200066fa:    d828        (.      BHI      0x2000674e ; send_msg_to_bleStackTask + 174
        0x200066fc:    9301        ..      STR      r3,[sp,#4]
        0x200066fe:    481e        .H      LDR      r0,[pc,#120] ; [0x20006778] = 0x2000ba60
        0x20006700:    6800        .h      LDR      r0,[r0,#0]
        0x20006702:    2700        .'      MOVS     r7,#0
        0x20006704:    4639        9F      MOV      r1,r7
        0x20006706:    f000fe4d    ..M.    BL       $Ven$TT$L$$osMemoryPoolAlloc ; 0x200073a4
        0x2000670a:    9003        ..      STR      r0,[sp,#0xc]
        0x2000670c:    2800        .(      CMP      r0,#0
        0x2000670e:    d025        %.      BEQ      0x2000675c ; send_msg_to_bleStackTask + 188
        0x20006710:    4919        .I      LDR      r1,[pc,#100] ; [0x20006778] = 0x2000ba60
        0x20006712:    6809        .h      LDR      r1,[r1,#0]
        0x20006714:    9104        ..      STR      r1,[sp,#0x10]
        0x20006716:    9901        ..      LDR      r1,[sp,#4]
        0x20006718:    4632        2F      MOV      r2,r6
        0x2000671a:    f7fcfdcd    ....    BL       __aeabi_memcpy ; 0x200032b8
        0x2000671e:    4e15        .N      LDR      r6,[pc,#84] ; [0x20006774] = 0x6004
        0x20006720:    1cf0        ..      ADDS     r0,r6,#3
        0x20006722:    4629        )F      MOV      r1,r5
        0x20006724:    f000fa30    ..0.    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20006728:    4815        .H      LDR      r0,[pc,#84] ; [0x20006780] = 0x20007d9c
        0x2000672a:    6800        .h      LDR      r0,[r0,#0]
        0x2000672c:    a902        ..      ADD      r1,sp,#8
        0x2000672e:    2500        .%      MOVS     r5,#0
        0x20006730:    462a        *F      MOV      r2,r5
        0x20006732:    4623        #F      MOV      r3,r4
        0x20006734:    f000fe3c    ..<.    BL       $Ven$TT$L$$osMessageQueuePut ; 0x200073b0
        0x20006738:    4247        GB      RSBS     r7,r0,#0
        0x2000673a:    4147        GA      ADCS     r7,r7,r0
        0x2000673c:    2800        .(      CMP      r0,#0
        0x2000673e:    d015        ..      BEQ      0x2000676c ; send_msg_to_bleStackTask + 204
        0x20006740:    1d32        2.      ADDS     r2,r6,#4
        0x20006742:    b281        ..      UXTH     r1,r0
        0x20006744:    4610        .F      MOV      r0,r2
        0x20006746:    f000fa1f    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x2000674a:    462f        /F      MOV      r7,r5
        0x2000674c:    e00e        ..      B        0x2000676c ; send_msg_to_bleStackTask + 204
        0x2000674e:    4809        .H      LDR      r0,[pc,#36] ; [0x20006774] = 0x6004
        0x20006750:    1c80        ..      ADDS     r0,r0,#2
        0x20006752:    4631        1F      MOV      r1,r6
        0x20006754:    f000fa18    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b88
        0x20006758:    2700        .'      MOVS     r7,#0
        0x2000675a:    e007        ..      B        0x2000676c ; send_msg_to_bleStackTask + 204
        0x2000675c:    4805        .H      LDR      r0,[pc,#20] ; [0x20006774] = 0x6004
        0x2000675e:    1c40        @.      ADDS     r0,r0,#1
        0x20006760:    f000fa0c    ....    BL       $Ven$TT$L$$mlog_0 ; 0x20006b7c
        0x20006764:    e002        ..      B        0x2000676c ; send_msg_to_bleStackTask + 204
        0x20006766:    4803        .H      LDR      r0,[pc,#12] ; [0x20006774] = 0x6004
        0x20006768:    f000fa08    ....    BL       $Ven$TT$L$$mlog_0 ; 0x20006b7c
        0x2000676c:    4638        8F      MOV      r0,r7
        0x2000676e:    b005        ..      ADD      sp,sp,#0x14
        0x20006770:    bdf0        ..      POP      {r4-r7,pc}
        0x20006772:    46c0        .F      MOV      r8,r8
    $d.13
    __arm_cp.8_0
        0x20006774:    00006004    .`..    DCD    24580
    __arm_cp.8_1
        0x20006778:    2000ba60    `..     DCD    536918624
    __arm_cp.8_2
        0x2000677c:    2000ba64    d..     DCD    536918628
    __arm_cp.8_3
        0x20006780:    20007d9c    .}.     DCD    536903068
    $t.4
    send_msg_to_llc_task
        0x20006784:    b510        ..      PUSH     {r4,lr}
        0x20006786:    b082        ..      SUB      sp,sp,#8
        0x20006788:    9101        ..      STR      r1,[sp,#4]
        0x2000678a:    9000        ..      STR      r0,[sp,#0]
        0x2000678c:    2200        ."      MOVS     r2,#0
        0x2000678e:    f3ef8005    ....    MRS      r0,IPSR
        0x20006792:    2800        .(      CMP      r0,#0
        0x20006794:    d001        ..      BEQ      0x2000679a ; send_msg_to_llc_task + 22
        0x20006796:    4613        .F      MOV      r3,r2
        0x20006798:    e000        ..      B        0x2000679c ; send_msg_to_llc_task + 24
        0x2000679a:    43d3        .C      MVNS     r3,r2
        0x2000679c:    4807        .H      LDR      r0,[pc,#28] ; [0x200067bc] = 0x2000a6f4
        0x2000679e:    6800        .h      LDR      r0,[r0,#0]
        0x200067a0:    4669        iF      MOV      r1,sp
        0x200067a2:    f000fe05    ....    BL       $Ven$TT$L$$osMessageQueuePut ; 0x200073b0
        0x200067a6:    4604        .F      MOV      r4,r0
        0x200067a8:    2800        .(      CMP      r0,#0
        0x200067aa:    d003        ..      BEQ      0x200067b4 ; send_msg_to_llc_task + 48
        0x200067ac:    a004        ..      ADR      r0,{pc}+0x14 ; 0x200067c0
        0x200067ae:    4621        !F      MOV      r1,r4
        0x200067b0:    f000fe10    ....    BL       __0printf$8 ; 0x200073d4
        0x200067b4:    4260        `B      RSBS     r0,r4,#0
        0x200067b6:    4160        `A      ADCS     r0,r0,r4
        0x200067b8:    b002        ..      ADD      sp,sp,#8
        0x200067ba:    bd10        ..      POP      {r4,pc}
    $d.5
    __arm_cp.2_0
        0x200067bc:    2000a6f4    ...     DCD    536913652
        0x200067c0:    5f656c62    ble_    DCD    1600482402
        0x200067c4:    6b736174    task    DCD    1802723700
        0x200067c8:    6e65735f    _sen    DCD    1852142431
        0x200067cc:    736d5f64    d_ms    DCD    1936547684
        0x200067d0:    6f745f67    g_to    DCD    1869897575
        0x200067d4:    636c6c5f    _llc    DCD    1668050015
        0x200067d8:    7361745f    _tas    DCD    1935766623
        0x200067dc:    6166206b    k fa    DCD    1634082923
        0x200067e0:    64656c69    iled    DCD    1684368489
        0x200067e4:    0a75253a    :%u.    DCD    175449402
        0x200067e8:    00000000    ....    DCD    0
    $t.2
    system_clock_init
        0x200067ec:    b580        ..      PUSH     {r7,lr}
        0x200067ee:    2028        (       MOVS     r0,#0x28
        0x200067f0:    f000f96a    ..j.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x20006ac8
        0x200067f4:    200a        .       MOVS     r0,#0xa
        0x200067f6:    f000f967    ..g.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x20006ac8
        0x200067fa:    200b        .       MOVS     r0,#0xb
        0x200067fc:    f000f964    ..d.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x20006ac8
        0x20006800:    200c        .       MOVS     r0,#0xc
        0x20006802:    f000f961    ..a.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x20006ac8
        0x20006806:    200d        .       MOVS     r0,#0xd
        0x20006808:    f000f95e    ..^.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x20006ac8
        0x2000680c:    200e        .       MOVS     r0,#0xe
        0x2000680e:    f000f95b    ..[.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x20006ac8
        0x20006812:    200f        .       MOVS     r0,#0xf
        0x20006814:    f000f958    ..X.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x20006ac8
        0x20006818:    2010        .       MOVS     r0,#0x10
        0x2000681a:    f000f955    ..U.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x20006ac8
        0x2000681e:    2035        5       MOVS     r0,#0x35
        0x20006820:    f000f952    ..R.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x20006ac8
        0x20006824:    2011        .       MOVS     r0,#0x11
        0x20006826:    f000f94f    ..O.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x20006ac8
        0x2000682a:    2012        .       MOVS     r0,#0x12
        0x2000682c:    f000f94c    ..L.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x20006ac8
        0x20006830:    bd80        ..      POP      {r7,pc}
        0x20006832:    0000        ..      MOVS     r0,r0
    system_error_handler
        0x20006834:    461c        .F      MOV      r4,r3
        0x20006836:    4615        .F      MOV      r5,r2
        0x20006838:    460e        .F      MOV      r6,r1
        0x2000683a:    4607        .F      MOV      r7,r0
        0x2000683c:    f7fcffa4    ....    BL       app_debug_reinit ; 0x20003788
        0x20006840:    a007        ..      ADR      r0,{pc}+0x20 ; 0x20006860
        0x20006842:    f001f811    ....    BL       puts ; 0x20007868
        0x20006846:    a00b        ..      ADR      r0,{pc}+0x2e ; 0x20006874
        0x20006848:    4639        9F      MOV      r1,r7
        0x2000684a:    4632        2F      MOV      r2,r6
        0x2000684c:    f000fdc2    ....    BL       __0printf$8 ; 0x200073d4
        0x20006850:    a010        ..      ADR      r0,{pc}+0x44 ; 0x20006894
        0x20006852:    4629        )F      MOV      r1,r5
        0x20006854:    4622        "F      MOV      r2,r4
        0x20006856:    f000fdbd    ....    BL       __0printf$8 ; 0x200073d4
        0x2000685a:    f7fcff69    ..i.    BL       app_debug_printf ; 0x20003730
        0x2000685e:    e7fe        ..      B        0x2000685e ; system_error_handler + 42
    $d.9
        0x20006860:    74737973    syst    DCD    1953724787
        0x20006864:    65206d65    em e    DCD    1696623973
        0x20006868:    726f7272    rror    DCD    1919906418
        0x2000686c:    63636f20     occ    DCD    1667460896
        0x20006870:    00737275    urs.    DCD    7565941
        0x20006874:    45363175    u16E    DCD    1161179509
        0x20006878:    6f4d7272    rrMo    DCD    1867346546
        0x2000687c:    656c7564    dule    DCD    1701606756
        0x20006880:    2075253a    :%u     DCD    544548154
        0x20006884:    45363175    u16E    DCD    1161179509
        0x20006888:    694c7272    rrLi    DCD    1766617714
        0x2000688c:    253a656e    ne:%    DCD    624584046
        0x20006890:    00000a75    u...    DCD    2677
        0x20006894:    45323375    u32E    DCD    1160917877
        0x20006898:    6e497272    rrIn    DCD    1850307186
        0x2000689c:    3a316f66    fo1:    DCD    976318310
        0x200068a0:    75207525    %u u    DCD    1965061413
        0x200068a4:    72453233    32Er    DCD    1917137459
        0x200068a8:    666e4972    rInf    DCD    1718503794
        0x200068ac:    253a326f    o2:%    DCD    624570991
        0x200068b0:    00000a75    u...    DCD    2677
    $t.7
    system_lpwr_init
        0x200068b4:    b580        ..      PUSH     {r7,lr}
        0x200068b6:    2000        .       MOVS     r0,#0
        0x200068b8:    2117        .!      MOVS     r1,#0x17
        0x200068ba:    f000f929    ..).    BL       $Ven$TT$L$$rom_hw_sys_ctrl_enable_peri_int ; 0x20006b10
        0x200068be:    f7fcfe9d    ....    BL       __NVIC_ClearPendingIRQ ; 0x200035fc
        0x200068c2:    f7fcfed3    ....    BL       __NVIC_SetPriority ; 0x2000366c
        0x200068c6:    f7fcfeab    ....    BL       __NVIC_EnableIRQ ; 0x20003620
        0x200068ca:    2002        .       MOVS     r0,#2
        0x200068cc:    4902        .I      LDR      r1,[pc,#8] ; [0x200068d8] = 0x200048dd
        0x200068ce:    4a03        .J      LDR      r2,[pc,#12] ; [0x200068dc] = 0x200048d1
        0x200068d0:    f7fef816    ....    BL       lpwr_ctrl_init ; 0x20004900
        0x200068d4:    bd80        ..      POP      {r7,pc}
        0x200068d6:    46c0        .F      MOV      r8,r8
    $d.8
    __arm_cp.5_0
        0x200068d8:    200048dd    .H.     DCD    536889565
    __arm_cp.5_1
        0x200068dc:    200048d1    .H.     DCD    536889553
    $t.21
    timer_compare
        0x200068e0:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x200068e2:    b082        ..      SUB      sp,sp,#8
        0x200068e4:    460c        .F      MOV      r4,r1
        0x200068e6:    4605        .F      MOV      r5,r0
        0x200068e8:    a901        ..      ADD      r1,sp,#4
        0x200068ea:    4610        .F      MOV      r0,r2
        0x200068ec:    f000f86a    ..j.    BL       timer_get_ms_counter_dcxo ; 0x200069c4
        0x200068f0:    9801        ..      LDR      r0,[sp,#4]
        0x200068f2:    1900        ..      ADDS     r0,r0,r4
        0x200068f4:    60a8        .`      STR      r0,[r5,#8]
        0x200068f6:    60ec        .`      STR      r4,[r5,#0xc]
        0x200068f8:    b002        ..      ADD      sp,sp,#8
        0x200068fa:    bdb0        ..      POP      {r4,r5,r7,pc}
    timer_config
        0x200068fc:    b510        ..      PUSH     {r4,lr}
        0x200068fe:    b082        ..      SUB      sp,sp,#8
        0x20006900:    4604        .F      MOV      r4,r0
        0x20006902:    7d40        @}      LDRB     r0,[r0,#0x15]
        0x20006904:    7d21        !}      LDRB     r1,[r4,#0x14]
        0x20006906:    2900        .)      CMP      r1,#0
        0x20006908:    d00c        ..      BEQ      0x20006924 ; timer_config + 40
        0x2000690a:    f3ef8110    ....    MRS      r1,PRIMASK
        0x2000690e:    f3ef8210    ....    MRS      r2,PRIMASK
        0x20006912:    b672        r.      CPSID    i
        0x20006914:    2200        ."      MOVS     r2,#0
        0x20006916:    7522        "u      STRB     r2,[r4,#0x14]
        0x20006918:    6862        bh      LDR      r2,[r4,#4]
        0x2000691a:    6022        "`      STR      r2,[r4,#0]
        0x2000691c:    6a62        bj      LDR      r2,[r4,#0x24]
        0x2000691e:    6222        "b      STR      r2,[r4,#0x20]
        0x20006920:    f3818810    ....    MSR      PRIMASK,r1
        0x20006924:    2800        .(      CMP      r0,#0
        0x20006926:    d00a        ..      BEQ      0x2000693e ; timer_config + 66
        0x20006928:    f3ef8110    ....    MRS      r1,PRIMASK
        0x2000692c:    f3ef8210    ....    MRS      r2,PRIMASK
        0x20006930:    b672        r.      CPSID    i
        0x20006932:    2200        ."      MOVS     r2,#0
        0x20006934:    7562        bu      STRB     r2,[r4,#0x15]
        0x20006936:    7de2        .}      LDRB     r2,[r4,#0x17]
        0x20006938:    75a2        .u      STRB     r2,[r4,#0x16]
        0x2000693a:    f3818810    ....    MSR      PRIMASK,r1
        0x2000693e:    7da1        .}      LDRB     r1,[r4,#0x16]
        0x20006940:    2902        .)      CMP      r1,#2
        0x20006942:    d01e        ..      BEQ      0x20006982 ; timer_config + 134
        0x20006944:    2900        .)      CMP      r1,#0
        0x20006946:    d134        4.      BNE      0x200069b2 ; timer_config + 182
        0x20006948:    f3ef8010    ....    MRS      r0,PRIMASK
        0x2000694c:    f3ef8110    ....    MRS      r1,PRIMASK
        0x20006950:    b672        r.      CPSID    i
        0x20006952:    6ae1        .j      LDR      r1,[r4,#0x2c]
        0x20006954:    2900        .)      CMP      r1,#0
        0x20006956:    d001        ..      BEQ      0x2000695c ; timer_config + 96
        0x20006958:    6aa2        .j      LDR      r2,[r4,#0x28]
        0x2000695a:    628a        .b      STR      r2,[r1,#0x28]
        0x2000695c:    4917        .I      LDR      r1,[pc,#92] ; [0x200069bc] = 0x2000bafc
        0x2000695e:    680a        .h      LDR      r2,[r1,#0]
        0x20006960:    42a2        .B      CMP      r2,r4
        0x20006962:    d101        ..      BNE      0x20006968 ; timer_config + 108
        0x20006964:    6aa2        .j      LDR      r2,[r4,#0x28]
        0x20006966:    600a        .`      STR      r2,[r1,#0]
        0x20006968:    4915        .I      LDR      r1,[pc,#84] ; [0x200069c0] = 0x2000bb00
        0x2000696a:    680a        .h      LDR      r2,[r1,#0]
        0x2000696c:    42a2        .B      CMP      r2,r4
        0x2000696e:    d101        ..      BNE      0x20006974 ; timer_config + 120
        0x20006970:    6ae2        .j      LDR      r2,[r4,#0x2c]
        0x20006972:    600a        .`      STR      r2,[r1,#0]
        0x20006974:    f3808810    ....    MSR      PRIMASK,r0
        0x20006978:    2000        .       MOVS     r0,#0
        0x2000697a:    62a0        .b      STR      r0,[r4,#0x28]
        0x2000697c:    62e0        .b      STR      r0,[r4,#0x2c]
        0x2000697e:    b002        ..      ADD      sp,sp,#8
        0x20006980:    bd10        ..      POP      {r4,pc}
        0x20006982:    2800        .(      CMP      r0,#0
        0x20006984:    d003        ..      BEQ      0x2000698e ; timer_config + 146
        0x20006986:    6921        !i      LDR      r1,[r4,#0x10]
        0x20006988:    9101        ..      STR      r1,[sp,#4]
        0x2000698a:    6822        "h      LDR      r2,[r4,#0]
        0x2000698c:    e00a        ..      B        0x200069a4 ; timer_config + 168
        0x2000698e:    7e20         ~      LDRB     r0,[r4,#0x18]
        0x20006990:    2801        .(      CMP      r0,#1
        0x20006992:    d10c        ..      BNE      0x200069ae ; timer_config + 178
        0x20006994:    2000        .       MOVS     r0,#0
        0x20006996:    9001        ..      STR      r0,[sp,#4]
        0x20006998:    4807        .H      LDR      r0,[pc,#28] ; [0x200069b8] = 0x60053000
        0x2000699a:    a901        ..      ADD      r1,sp,#4
        0x2000699c:    f000f870    ..p.    BL       $Ven$TT$L$$rom_hw_stim_get_count ; 0x20006a80
        0x200069a0:    6822        "h      LDR      r2,[r4,#0]
        0x200069a2:    9901        ..      LDR      r1,[sp,#4]
        0x200069a4:    4620         F      MOV      r0,r4
        0x200069a6:    f7ffff9b    ....    BL       timer_compare ; 0x200068e0
        0x200069aa:    b002        ..      ADD      sp,sp,#8
        0x200069ac:    bd10        ..      POP      {r4,pc}
        0x200069ae:    2001        .       MOVS     r0,#1
        0x200069b0:    75a0        .u      STRB     r0,[r4,#0x16]
        0x200069b2:    b002        ..      ADD      sp,sp,#8
        0x200069b4:    bd10        ..      POP      {r4,pc}
        0x200069b6:    46c0        .F      MOV      r8,r8
    $d.4
    __arm_cp.2_0
        0x200069b8:    60053000    .0.`    DCD    1610952704
    __arm_cp.2_1
        0x200069bc:    2000bafc    ...     DCD    536918780
    __arm_cp.2_2
        0x200069c0:    2000bb00    ...     DCD    536918784
    $t.22
    timer_get_ms_counter_dcxo
        0x200069c4:    b5f0        ..      PUSH     {r4-r7,lr}
        0x200069c6:    b083        ..      SUB      sp,sp,#0xc
        0x200069c8:    9101        ..      STR      r1,[sp,#4]
        0x200069ca:    4606        .F      MOV      r6,r0
        0x200069cc:    a802        ..      ADD      r0,sp,#8
        0x200069ce:    f000fcf5    ....    BL       $Ven$TT$L$$rom_hw_crg_get_lpwr_clk_src ; 0x200073bc
        0x200069d2:    9802        ..      LDR      r0,[sp,#8]
        0x200069d4:    2801        .(      CMP      r0,#1
        0x200069d6:    d101        ..      BNE      0x200069dc ; timer_get_ms_counter_dcxo + 24
        0x200069d8:    4d0d        .M      LDR      r5,[pc,#52] ; [0x20006a10] = 0x7a12
        0x200069da:    e002        ..      B        0x200069e2 ; timer_get_ms_counter_dcxo + 30
        0x200069dc:    f000fcf4    ....    BL       $Ven$TT$L$$rom_hw_crg_get_32k_cycles_of_dcxo_hclk ; 0x200073c8
        0x200069e0:    4605        .F      MOV      r5,r0
        0x200069e2:    480c        .H      LDR      r0,[pc,#48] ; [0x20006a14] = 0x2000bb0c
        0x200069e4:    8804        ..      LDRH     r4,[r0,#0]
        0x200069e6:    8005        ..      STRH     r5,[r0,#0]
        0x200069e8:    207d        }       MOVS     r0,#0x7d
        0x200069ea:    0342        B.      LSLS     r2,r0,#13
        0x200069ec:    2700        .'      MOVS     r7,#0
        0x200069ee:    4630        0F      MOV      r0,r6
        0x200069f0:    4639        9F      MOV      r1,r7
        0x200069f2:    463b        ;F      MOV      r3,r7
        0x200069f4:    f7fcfc48    ..H.    BL       __aeabi_lmul ; 0x20003288
        0x200069f8:    2c00        .,      CMP      r4,#0
        0x200069fa:    d001        ..      BEQ      0x20006a00 ; timer_get_ms_counter_dcxo + 60
        0x200069fc:    1962        b.      ADDS     r2,r4,r5
        0x200069fe:    0855        U.      LSRS     r5,r2,#1
        0x20006a00:    462a        *F      MOV      r2,r5
        0x20006a02:    463b        ;F      MOV      r3,r7
        0x20006a04:    f7fcfc10    ....    BL       __aeabi_uldivmod ; 0x20003228
        0x20006a08:    9901        ..      LDR      r1,[sp,#4]
        0x20006a0a:    6008        .`      STR      r0,[r1,#0]
        0x20006a0c:    b003        ..      ADD      sp,sp,#0xc
        0x20006a0e:    bdf0        ..      POP      {r4-r7,pc}
    $d.23
    __arm_cp.13_0
        0x20006a10:    00007a12    .z..    DCD    31250
    __arm_cp.13_1
        0x20006a14:    2000bb0c    ...     DCD    536918796
    $t.2
    timer_trig_schedule
        0x20006a18:    b580        ..      PUSH     {r7,lr}
        0x20006a1a:    f7fcfe09    ....    BL       __NVIC_SetPendingIRQ ; 0x20003630
        0x20006a1e:    bd80        ..      POP      {r7,pc}
    $t
    $Ven$TT$L$$rom_hw_sys_ctrl_write_com_reg
        0x20006a20:    b403        ..      PUSH     {r0,r1}
        0x20006a22:    4801        .H      LDR      r0,[pc,#4] ; [0x20006a28] = 0x1c439
        0x20006a24:    9001        ..      STR      r0,[sp,#4]
        0x20006a26:    bd01        ..      POP      {r0,pc}
    $d
        0x20006a28:    0001c439    9...    DCD    115769
    $t
    $Ven$TT$L$$rom_llp_hw_int_irq_handler
        0x20006a2c:    b403        ..      PUSH     {r0,r1}
        0x20006a2e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006a34] = 0x20e61
        0x20006a30:    9001        ..      STR      r0,[sp,#4]
        0x20006a32:    bd01        ..      POP      {r0,pc}
    $d
        0x20006a34:    00020e61    a...    DCD    134753
    $t
    $Ven$TT$L$$rom_hw_pmu_get_interrupt_flag
        0x20006a38:    b403        ..      PUSH     {r0,r1}
        0x20006a3a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006a40] = 0x1a345
        0x20006a3c:    9001        ..      STR      r0,[sp,#4]
        0x20006a3e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006a40:    0001a345    E...    DCD    107333
    $t
    $Ven$TT$L$$rom_hw_pmu_clear_interrupt_flag
        0x20006a44:    b403        ..      PUSH     {r0,r1}
        0x20006a46:    4801        .H      LDR      r0,[pc,#4] ; [0x20006a4c] = 0x1a0ad
        0x20006a48:    9001        ..      STR      r0,[sp,#4]
        0x20006a4a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006a4c:    0001a0ad    ....    DCD    106669
    $t
    $Ven$TT$L$$rom_hw_stim_get_interrupt_flag
        0x20006a50:    b403        ..      PUSH     {r0,r1}
        0x20006a52:    4801        .H      LDR      r0,[pc,#4] ; [0x20006a58] = 0x1bf65
        0x20006a54:    9001        ..      STR      r0,[sp,#4]
        0x20006a56:    bd01        ..      POP      {r0,pc}
    $d
        0x20006a58:    0001bf65    e...    DCD    114533
    $t
    $Ven$TT$L$$rom_hw_stim_clear_interrupt_flag
        0x20006a5c:    b403        ..      PUSH     {r0,r1}
        0x20006a5e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006a64] = 0x1bdbd
        0x20006a60:    9001        ..      STR      r0,[sp,#4]
        0x20006a62:    bd01        ..      POP      {r0,pc}
    $d
        0x20006a64:    0001bdbd    ....    DCD    114109
    $t
    $Ven$TT$L$$rom_delay_us
        0x20006a68:    b403        ..      PUSH     {r0,r1}
        0x20006a6a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006a70] = 0x2f851
        0x20006a6c:    9001        ..      STR      r0,[sp,#4]
        0x20006a6e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006a70:    0002f851    Q...    DCD    194641
    $t
    $Ven$TT$L$$rom_hw_stim_get_compare
        0x20006a74:    b403        ..      PUSH     {r0,r1}
        0x20006a76:    4801        .H      LDR      r0,[pc,#4] ; [0x20006a7c] = 0x1bf1d
        0x20006a78:    9001        ..      STR      r0,[sp,#4]
        0x20006a7a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006a7c:    0001bf1d    ....    DCD    114461
    $t
    $Ven$TT$L$$rom_hw_stim_get_count
        0x20006a80:    b403        ..      PUSH     {r0,r1}
        0x20006a82:    4801        .H      LDR      r0,[pc,#4] ; [0x20006a88] = 0x1bf45
        0x20006a84:    9001        ..      STR      r0,[sp,#4]
        0x20006a86:    bd01        ..      POP      {r0,pc}
    $d
        0x20006a88:    0001bf45    E...    DCD    114501
    $t
    $Ven$TT$L$$rom_hw_stim_set_compare
        0x20006a8c:    b403        ..      PUSH     {r0,r1}
        0x20006a8e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006a94] = 0x1bfcd
        0x20006a90:    9001        ..      STR      r0,[sp,#4]
        0x20006a92:    bd01        ..      POP      {r0,pc}
    $d
        0x20006a94:    0001bfcd    ....    DCD    114637
    $t
    $Ven$TT$L$$rom_hw_gpio_set_pin_input_output
        0x20006a98:    b403        ..      PUSH     {r0,r1}
        0x20006a9a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006aa0] = 0x18d69
        0x20006a9c:    9001        ..      STR      r0,[sp,#4]
        0x20006a9e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006aa0:    00018d69    i...    DCD    101737
    $t
    $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode
        0x20006aa4:    b403        ..      PUSH     {r0,r1}
        0x20006aa6:    4801        .H      LDR      r0,[pc,#4] ; [0x20006aac] = 0x18f05
        0x20006aa8:    9001        ..      STR      r0,[sp,#4]
        0x20006aaa:    bd01        ..      POP      {r0,pc}
    $d
        0x20006aac:    00018f05    ....    DCD    102149
    $t
    $Ven$TT$L$$rom_hw_crg_disable_clk_gate
        0x20006ab0:    b403        ..      PUSH     {r0,r1}
        0x20006ab2:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ab8] = 0x171e9
        0x20006ab4:    9001        ..      STR      r0,[sp,#4]
        0x20006ab6:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ab8:    000171e9    .q..    DCD    94697
    $t
    $Ven$TT$L$$rom_hw_uart_send_byte
        0x20006abc:    b403        ..      PUSH     {r0,r1}
        0x20006abe:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ac4] = 0x1dc79
        0x20006ac0:    9001        ..      STR      r0,[sp,#4]
        0x20006ac2:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ac4:    0001dc79    y...    DCD    121977
    $t
    $Ven$TT$L$$rom_hw_crg_enable_clk_gate
        0x20006ac8:    b403        ..      PUSH     {r0,r1}
        0x20006aca:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ad0] = 0x17255
        0x20006acc:    9001        ..      STR      r0,[sp,#4]
        0x20006ace:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ad0:    00017255    Ur..    DCD    94805
    $t
    $Ven$TT$L$$rom_hw_gpio_set_pin_pid
        0x20006ad4:    b403        ..      PUSH     {r0,r1}
        0x20006ad6:    4801        .H      LDR      r0,[pc,#4] ; [0x20006adc] = 0x18e85
        0x20006ad8:    9001        ..      STR      r0,[sp,#4]
        0x20006ada:    bd01        ..      POP      {r0,pc}
    $d
        0x20006adc:    00018e85    ....    DCD    102021
    $t
    $Ven$TT$L$$rom_hw_uart_init
        0x20006ae0:    b403        ..      PUSH     {r0,r1}
        0x20006ae2:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ae8] = 0x1db89
        0x20006ae4:    9001        ..      STR      r0,[sp,#4]
        0x20006ae6:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ae8:    0001db89    ....    DCD    121737
    $t
    $Ven$TT$L$$osThreadGetId
        0x20006aec:    b403        ..      PUSH     {r0,r1}
        0x20006aee:    4801        .H      LDR      r0,[pc,#4] ; [0x20006af4] = 0x12209
        0x20006af0:    9001        ..      STR      r0,[sp,#4]
        0x20006af2:    bd01        ..      POP      {r0,pc}
    $d
        0x20006af4:    00012209    ."..    DCD    74249
    $t
    $Ven$TT$L$$osThreadTerminate
        0x20006af8:    b403        ..      PUSH     {r0,r1}
        0x20006afa:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b00] = 0x123d1
        0x20006afc:    9001        ..      STR      r0,[sp,#4]
        0x20006afe:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b00:    000123d1    .#..    DCD    74705
    $t
    $Ven$TT$L$$rom_hw_stim_set_prescale
        0x20006b04:    b403        ..      PUSH     {r0,r1}
        0x20006b06:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b0c] = 0x1c079
        0x20006b08:    9001        ..      STR      r0,[sp,#4]
        0x20006b0a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b0c:    0001c079    y...    DCD    114809
    $t
    $Ven$TT$L$$rom_hw_sys_ctrl_enable_peri_int
        0x20006b10:    b403        ..      PUSH     {r0,r1}
        0x20006b12:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b18] = 0x1c289
        0x20006b14:    9001        ..      STR      r0,[sp,#4]
        0x20006b16:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b18:    0001c289    ....    DCD    115337
    $t
    $Ven$TT$L$$rom_hw_stim_enable_wakeup
        0x20006b1c:    b403        ..      PUSH     {r0,r1}
        0x20006b1e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b24] = 0x1bebd
        0x20006b20:    9001        ..      STR      r0,[sp,#4]
        0x20006b22:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b24:    0001bebd    ....    DCD    114365
    $t
    $Ven$TT$L$$rom_hw_stim_enable_interrupt
        0x20006b28:    b403        ..      PUSH     {r0,r1}
        0x20006b2a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b30] = 0x1be81
        0x20006b2c:    9001        ..      STR      r0,[sp,#4]
        0x20006b2e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b30:    0001be81    ....    DCD    114305
    $t
    $Ven$TT$L$$rom_hw_stim_disable_tick_overflow_interrupt
        0x20006b34:    b403        ..      PUSH     {r0,r1}
        0x20006b36:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b3c] = 0x1bdf9
        0x20006b38:    9001        ..      STR      r0,[sp,#4]
        0x20006b3a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b3c:    0001bdf9    ....    DCD    114169
    $t
    $Ven$TT$L$$rom_hw_stim_start
        0x20006b40:    b403        ..      PUSH     {r0,r1}
        0x20006b42:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b48] = 0x1c0d9
        0x20006b44:    9001        ..      STR      r0,[sp,#4]
        0x20006b46:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b48:    0001c0d9    ....    DCD    114905
    $t
    $Ven$TT$L$$osMessageQueueNew
        0x20006b4c:    b403        ..      PUSH     {r0,r1}
        0x20006b4e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b54] = 0x11401
        0x20006b50:    9001        ..      STR      r0,[sp,#4]
        0x20006b52:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b54:    00011401    ....    DCD    70657
    $t
    $Ven$TT$L$$osThreadNew
        0x20006b58:    b403        ..      PUSH     {r0,r1}
        0x20006b5a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b60] = 0x1231d
        0x20006b5c:    9001        ..      STR      r0,[sp,#4]
        0x20006b5e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b60:    0001231d    .#..    DCD    74525
    $t
    $Ven$TT$L$$rom_host_interface_set_hci_event_parameter_max_length
        0x20006b64:    b403        ..      PUSH     {r0,r1}
        0x20006b66:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b6c] = 0x3ec51
        0x20006b68:    9001        ..      STR      r0,[sp,#4]
        0x20006b6a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b6c:    0003ec51    Q...    DCD    257105
    $t
    $Ven$TT$L$$ble_callback_set_send_msg_to_stack_task_callback
        0x20006b70:    b403        ..      PUSH     {r0,r1}
        0x20006b72:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b78] = 0x305e1
        0x20006b74:    9001        ..      STR      r0,[sp,#4]
        0x20006b76:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b78:    000305e1    ....    DCD    198113
    $t
    $Ven$TT$L$$mlog_0
        0x20006b7c:    b403        ..      PUSH     {r0,r1}
        0x20006b7e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b84] = 0x2f6e9
        0x20006b80:    9001        ..      STR      r0,[sp,#4]
        0x20006b82:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b84:    0002f6e9    ....    DCD    194281
    $t
    $Ven$TT$L$$mlog_16
        0x20006b88:    b403        ..      PUSH     {r0,r1}
        0x20006b8a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b90] = 0x2f6fd
        0x20006b8c:    9001        ..      STR      r0,[sp,#4]
        0x20006b8e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b90:    0002f6fd    ....    DCD    194301
    $t
    $Ven$TT$L$$osMessageQueueGet
        0x20006b94:    b403        ..      PUSH     {r0,r1}
        0x20006b96:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b9c] = 0x112f9
        0x20006b98:    9001        ..      STR      r0,[sp,#4]
        0x20006b9a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b9c:    000112f9    ....    DCD    70393
    $t
    $Ven$TT$L$$rom_st_ctrl_task_handler
        0x20006ba0:    b403        ..      PUSH     {r0,r1}
        0x20006ba2:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ba8] = 0x3a0b9
        0x20006ba4:    9001        ..      STR      r0,[sp,#4]
        0x20006ba6:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ba8:    0003a0b9    ....    DCD    237753
    $t
    $Ven$TT$L$$osMemoryPoolFree
        0x20006bac:    b403        ..      PUSH     {r0,r1}
        0x20006bae:    4801        .H      LDR      r0,[pc,#4] ; [0x20006bb4] = 0x111a5
        0x20006bb0:    9001        ..      STR      r0,[sp,#4]
        0x20006bb2:    bd01        ..      POP      {r0,pc}
    $d
        0x20006bb4:    000111a5    ....    DCD    70053
    $t
    $Ven$TT$L$$osMemoryPoolNew
        0x20006bb8:    b403        ..      PUSH     {r0,r1}
        0x20006bba:    4801        .H      LDR      r0,[pc,#4] ; [0x20006bc0] = 0x1129d
        0x20006bbc:    9001        ..      STR      r0,[sp,#4]
        0x20006bbe:    bd01        ..      POP      {r0,pc}
    $d
        0x20006bc0:    0001129d    ....    DCD    70301
    $t
    $Ven$TT$L$$rom_llp_init
        0x20006bc4:    b403        ..      PUSH     {r0,r1}
        0x20006bc6:    4801        .H      LDR      r0,[pc,#4] ; [0x20006bcc] = 0x21861
        0x20006bc8:    9001        ..      STR      r0,[sp,#4]
        0x20006bca:    bd01        ..      POP      {r0,pc}
    $d
        0x20006bcc:    00021861    a...    DCD    137313
    $t
    $Ven$TT$L$$rom_llp_set_clock_accuracy_ppm
        0x20006bd0:    b403        ..      PUSH     {r0,r1}
        0x20006bd2:    4801        .H      LDR      r0,[pc,#4] ; [0x20006bd8] = 0x2202d
        0x20006bd4:    9001        ..      STR      r0,[sp,#4]
        0x20006bd6:    bd01        ..      POP      {r0,pc}
    $d
        0x20006bd8:    0002202d    - ..    DCD    139309
    $t
    $Ven$TT$L$$rom_llp_sleep_set_time
        0x20006bdc:    b403        ..      PUSH     {r0,r1}
        0x20006bde:    4801        .H      LDR      r0,[pc,#4] ; [0x20006be4] = 0x223fd
        0x20006be0:    9001        ..      STR      r0,[sp,#4]
        0x20006be2:    bd01        ..      POP      {r0,pc}
    $d
        0x20006be4:    000223fd    .#..    DCD    140285
    $t
    $Ven$TT$L$$rom_llc_init
        0x20006be8:    b403        ..      PUSH     {r0,r1}
        0x20006bea:    4801        .H      LDR      r0,[pc,#4] ; [0x20006bf0] = 0x28269
        0x20006bec:    9001        ..      STR      r0,[sp,#4]
        0x20006bee:    bd01        ..      POP      {r0,pc}
    $d
        0x20006bf0:    00028269    i...    DCD    164457
    $t
    $Ven$TT$L$$rom_gatts_api_get_last_attribute_handle
        0x20006bf4:    b403        ..      PUSH     {r0,r1}
        0x20006bf6:    4801        .H      LDR      r0,[pc,#4] ; [0x20006bfc] = 0x33cb1
        0x20006bf8:    9001        ..      STR      r0,[sp,#4]
        0x20006bfa:    bd01        ..      POP      {r0,pc}
    $d
        0x20006bfc:    00033cb1    .<..    DCD    212145
    $t
    $Ven$TT$L$$mlog_88
        0x20006c00:    b403        ..      PUSH     {r0,r1}
        0x20006c02:    4801        .H      LDR      r0,[pc,#4] ; [0x20006c08] = 0x2f7c5
        0x20006c04:    9001        ..      STR      r0,[sp,#4]
        0x20006c06:    bd01        ..      POP      {r0,pc}
    $d
        0x20006c08:    0002f7c5    ....    DCD    194501
    $t
    $Ven$TT$L$$rom_gap_api_set_advertising_enable
        0x20006c0c:    b403        ..      PUSH     {r0,r1}
        0x20006c0e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006c14] = 0x323c9
        0x20006c10:    9001        ..      STR      r0,[sp,#4]
        0x20006c12:    bd01        ..      POP      {r0,pc}
    $d
        0x20006c14:    000323c9    .#..    DCD    205769
    $t
    $Ven$TT$L$$mlog_1688
        0x20006c18:    b403        ..      PUSH     {r0,r1}
        0x20006c1a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006c20] = 0x2f739
        0x20006c1c:    9001        ..      STR      r0,[sp,#4]
        0x20006c1e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006c20:    0002f739    9...    DCD    194361
    $t
    $Ven$TT$L$$mlog_x
        0x20006c24:    b403        ..      PUSH     {r0,r1}
        0x20006c26:    4801        .H      LDR      r0,[pc,#4] ; [0x20006c2c] = 0x2f7d9
        0x20006c28:    9001        ..      STR      r0,[sp,#4]
        0x20006c2a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006c2c:    0002f7d9    ....    DCD    194521
    $t
    $Ven$TT$L$$mlog_161616
        0x20006c30:    b403        ..      PUSH     {r0,r1}
        0x20006c32:    4801        .H      LDR      r0,[pc,#4] ; [0x20006c38] = 0x2f725
        0x20006c34:    9001        ..      STR      r0,[sp,#4]
        0x20006c36:    bd01        ..      POP      {r0,pc}
    $d
        0x20006c38:    0002f725    %...    DCD    194341
    $t
    $Ven$TT$L$$mlog_1616
        0x20006c3c:    b403        ..      PUSH     {r0,r1}
        0x20006c3e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006c44] = 0x2f711
        0x20006c40:    9001        ..      STR      r0,[sp,#4]
        0x20006c42:    bd01        ..      POP      {r0,pc}
    $d
        0x20006c44:    0002f711    ....    DCD    194321
    $t
    $Ven$TT$L$$rom_little_endian_read_32
        0x20006c48:    b403        ..      PUSH     {r0,r1}
        0x20006c4a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006c50] = 0x2f903
        0x20006c4c:    9001        ..      STR      r0,[sp,#4]
        0x20006c4e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006c50:    0002f903    ....    DCD    194819
    $t
    $Ven$TT$L$$mlog_3216
        0x20006c54:    b403        ..      PUSH     {r0,r1}
        0x20006c56:    4801        .H      LDR      r0,[pc,#4] ; [0x20006c5c] = 0x2f761
        0x20006c58:    9001        ..      STR      r0,[sp,#4]
        0x20006c5a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006c5c:    0002f761    a...    DCD    194401
    $t
    $Ven$TT$L$$ble_callback_set_host_stack_send_event_callback
        0x20006c60:    b403        ..      PUSH     {r0,r1}
        0x20006c62:    4801        .H      LDR      r0,[pc,#4] ; [0x20006c68] = 0x305d5
        0x20006c64:    9001        ..      STR      r0,[sp,#4]
        0x20006c66:    bd01        ..      POP      {r0,pc}
    $d
        0x20006c68:    000305d5    ....    DCD    198101
    $t
    $Ven$TT$L$$rom_ble_host_stack_mem_init
        0x20006c6c:    b403        ..      PUSH     {r0,r1}
        0x20006c6e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006c74] = 0x3186d
        0x20006c70:    9001        ..      STR      r0,[sp,#4]
        0x20006c72:    bd01        ..      POP      {r0,pc}
    $d
        0x20006c74:    0003186d    m...    DCD    202861
    $t
    $Ven$TT$L$$rom_host_stack_mem_ctrl_init
        0x20006c78:    b403        ..      PUSH     {r0,r1}
        0x20006c7a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006c80] = 0x35ab9
        0x20006c7c:    9001        ..      STR      r0,[sp,#4]
        0x20006c7e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006c80:    00035ab9    .Z..    DCD    219833
    $t
    $Ven$TT$L$$rom_host_stack_mem_acl_data_mem_init
        0x20006c84:    b403        ..      PUSH     {r0,r1}
        0x20006c86:    4801        .H      LDR      r0,[pc,#4] ; [0x20006c8c] = 0x359dd
        0x20006c88:    9001        ..      STR      r0,[sp,#4]
        0x20006c8a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006c8c:    000359dd    .Y..    DCD    219613
    $t
    $Ven$TT$L$$rom_ble_host_stack_timer_init
        0x20006c90:    b403        ..      PUSH     {r0,r1}
        0x20006c92:    4801        .H      LDR      r0,[pc,#4] ; [0x20006c98] = 0x31885
        0x20006c94:    9001        ..      STR      r0,[sp,#4]
        0x20006c96:    bd01        ..      POP      {r0,pc}
    $d
        0x20006c98:    00031885    ....    DCD    202885
    $t
    $Ven$TT$L$$rom_gap_api_sm_init
        0x20006c9c:    b403        ..      PUSH     {r0,r1}
        0x20006c9e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ca4] = 0x328af
        0x20006ca0:    9001        ..      STR      r0,[sp,#4]
        0x20006ca2:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ca4:    000328af    .(..    DCD    207023
    $t
    $Ven$TT$L$$ble_callback_set_timer_create_callback
        0x20006ca8:    b403        ..      PUSH     {r0,r1}
        0x20006caa:    4801        .H      LDR      r0,[pc,#4] ; [0x20006cb0] = 0x305fd
        0x20006cac:    9001        ..      STR      r0,[sp,#4]
        0x20006cae:    bd01        ..      POP      {r0,pc}
    $d
        0x20006cb0:    000305fd    ....    DCD    198141
    $t
    $Ven$TT$L$$ble_callback_set_timer_start_callback
        0x20006cb4:    b403        ..      PUSH     {r0,r1}
        0x20006cb6:    4801        .H      LDR      r0,[pc,#4] ; [0x20006cbc] = 0x30605
        0x20006cb8:    9001        ..      STR      r0,[sp,#4]
        0x20006cba:    bd01        ..      POP      {r0,pc}
    $d
        0x20006cbc:    00030605    ....    DCD    198149
    $t
    $Ven$TT$L$$ble_callback_set_send_timer_stop_callback
        0x20006cc0:    b403        ..      PUSH     {r0,r1}
        0x20006cc2:    4801        .H      LDR      r0,[pc,#4] ; [0x20006cc8] = 0x305f5
        0x20006cc4:    9001        ..      STR      r0,[sp,#4]
        0x20006cc6:    bd01        ..      POP      {r0,pc}
    $d
        0x20006cc8:    000305f5    ....    DCD    198133
    $t
    $Ven$TT$L$$ble_callback_set_send_timer_delete_callback
        0x20006ccc:    b403        ..      PUSH     {r0,r1}
        0x20006cce:    4801        .H      LDR      r0,[pc,#4] ; [0x20006cd4] = 0x305ed
        0x20006cd0:    9001        ..      STR      r0,[sp,#4]
        0x20006cd2:    bd01        ..      POP      {r0,pc}
    $d
        0x20006cd4:    000305ed    ....    DCD    198125
    $t
    $Ven$TT$L$$rom_hw_pmu_set_wakeup_source
        0x20006cd8:    b403        ..      PUSH     {r0,r1}
        0x20006cda:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ce0] = 0x1a689
        0x20006cdc:    9001        ..      STR      r0,[sp,#4]
        0x20006cde:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ce0:    0001a689    ....    DCD    108169
    $t
    $Ven$TT$L$$rom_llp_is_system_sleep_allowed
        0x20006ce4:    b403        ..      PUSH     {r0,r1}
        0x20006ce6:    4801        .H      LDR      r0,[pc,#4] ; [0x20006cec] = 0x21af1
        0x20006ce8:    9001        ..      STR      r0,[sp,#4]
        0x20006cea:    bd01        ..      POP      {r0,pc}
    $d
        0x20006cec:    00021af1    ....    DCD    137969
    $t
    $Ven$TT$L$$rom_llp_sleep_on_system_wakeup_by_llc
        0x20006cf0:    b403        ..      PUSH     {r0,r1}
        0x20006cf2:    4801        .H      LDR      r0,[pc,#4] ; [0x20006cf8] = 0x22379
        0x20006cf4:    9001        ..      STR      r0,[sp,#4]
        0x20006cf6:    bd01        ..      POP      {r0,pc}
    $d
        0x20006cf8:    00022379    y#..    DCD    140153
    $t
    $Ven$TT$L$$rom_llp_set_schedule_report_callback
        0x20006cfc:    b403        ..      PUSH     {r0,r1}
        0x20006cfe:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d04] = 0x22075
        0x20006d00:    9001        ..      STR      r0,[sp,#4]
        0x20006d02:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d04:    00022075    u ..    DCD    139381
    $t
    $Ven$TT$L$$rom_llp_set_fragment_start_report_callback
        0x20006d08:    b403        ..      PUSH     {r0,r1}
        0x20006d0a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d10] = 0x22039
        0x20006d0c:    9001        ..      STR      r0,[sp,#4]
        0x20006d0e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d10:    00022039    9 ..    DCD    139321
    $t
    $Ven$TT$L$$rom_llp_set_fragment_stop_report_callback
        0x20006d14:    b403        ..      PUSH     {r0,r1}
        0x20006d16:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d1c] = 0x22045
        0x20006d18:    9001        ..      STR      r0,[sp,#4]
        0x20006d1a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d1c:    00022045    E ..    DCD    139333
    $t
    $Ven$TT$L$$rom_llp_set_tx_end_report_callback
        0x20006d20:    b403        ..      PUSH     {r0,r1}
        0x20006d22:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d28] = 0x22081
        0x20006d24:    9001        ..      STR      r0,[sp,#4]
        0x20006d26:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d28:    00022081    . ..    DCD    139393
    $t
    $Ven$TT$L$$rom_llp_set_rx_end_report_callback
        0x20006d2c:    b403        ..      PUSH     {r0,r1}
        0x20006d2e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d34] = 0x22069
        0x20006d30:    9001        ..      STR      r0,[sp,#4]
        0x20006d32:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d34:    00022069    i ..    DCD    139369
    $t
    $Ven$TT$L$$rom_llp_set_rf_rx_calib_callback
        0x20006d38:    b403        ..      PUSH     {r0,r1}
        0x20006d3a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d40] = 0x22051
        0x20006d3c:    9001        ..      STR      r0,[sp,#4]
        0x20006d3e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d40:    00022051    Q ..    DCD    139345
    $t
    $Ven$TT$L$$rom_llp_set_rf_tx_calib_callback
        0x20006d44:    b403        ..      PUSH     {r0,r1}
        0x20006d46:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d4c] = 0x2205d
        0x20006d48:    9001        ..      STR      r0,[sp,#4]
        0x20006d4a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d4c:    0002205d    ] ..    DCD    139357
    $t
    $Ven$TT$L$$rom_llc_set_trig_schedule_report_callback
        0x20006d50:    b403        ..      PUSH     {r0,r1}
        0x20006d52:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d58] = 0x2e031
        0x20006d54:    9001        ..      STR      r0,[sp,#4]
        0x20006d56:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d58:    0002e031    1...    DCD    188465
    $t
    $Ven$TT$L$$rom_llc_set_timer_enable_callback
        0x20006d5c:    b403        ..      PUSH     {r0,r1}
        0x20006d5e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d64] = 0x2e019
        0x20006d60:    9001        ..      STR      r0,[sp,#4]
        0x20006d62:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d64:    0002e019    ....    DCD    188441
    $t
    $Ven$TT$L$$rom_llc_set_timer_get_count_callback
        0x20006d68:    b403        ..      PUSH     {r0,r1}
        0x20006d6a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d70] = 0x2e025
        0x20006d6c:    9001        ..      STR      r0,[sp,#4]
        0x20006d6e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d70:    0002e025    %...    DCD    188453
    $t
    $Ven$TT$L$$rom_llc_set_llp_clock_accuracy_callback
        0x20006d74:    b403        ..      PUSH     {r0,r1}
        0x20006d76:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d7c] = 0x2dfb9
        0x20006d78:    9001        ..      STR      r0,[sp,#4]
        0x20006d7a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d7c:    0002dfb9    ....    DCD    188345
    $t
    $Ven$TT$L$$rom_llc_set_start_adv_fragment_callback
        0x20006d80:    b403        ..      PUSH     {r0,r1}
        0x20006d82:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d88] = 0x2dfd1
        0x20006d84:    9001        ..      STR      r0,[sp,#4]
        0x20006d86:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d88:    0002dfd1    ....    DCD    188369
    $t
    $Ven$TT$L$$rom_llc_set_start_scan_fragment_callback
        0x20006d8c:    b403        ..      PUSH     {r0,r1}
        0x20006d8e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d94] = 0x2dff5
        0x20006d90:    9001        ..      STR      r0,[sp,#4]
        0x20006d92:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d94:    0002dff5    ....    DCD    188405
    $t
    $Ven$TT$L$$rom_llc_set_start_init_fragment_callback
        0x20006d98:    b403        ..      PUSH     {r0,r1}
        0x20006d9a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006da0] = 0x2dfdd
        0x20006d9c:    9001        ..      STR      r0,[sp,#4]
        0x20006d9e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006da0:    0002dfdd    ....    DCD    188381
    $t
    $Ven$TT$L$$rom_llc_set_start_slave_fragment_callback
        0x20006da4:    b403        ..      PUSH     {r0,r1}
        0x20006da6:    4801        .H      LDR      r0,[pc,#4] ; [0x20006dac] = 0x2e001
        0x20006da8:    9001        ..      STR      r0,[sp,#4]
        0x20006daa:    bd01        ..      POP      {r0,pc}
    $d
        0x20006dac:    0002e001    ....    DCD    188417
    $t
    $Ven$TT$L$$rom_llc_set_start_master_fragment_callback
        0x20006db0:    b403        ..      PUSH     {r0,r1}
        0x20006db2:    4801        .H      LDR      r0,[pc,#4] ; [0x20006db8] = 0x2dfe9
        0x20006db4:    9001        ..      STR      r0,[sp,#4]
        0x20006db6:    bd01        ..      POP      {r0,pc}
    $d
        0x20006db8:    0002dfe9    ....    DCD    188393
    $t
    $Ven$TT$L$$rom_llc_set_stop_fragment_callback
        0x20006dbc:    b403        ..      PUSH     {r0,r1}
        0x20006dbe:    4801        .H      LDR      r0,[pc,#4] ; [0x20006dc4] = 0x2e00d
        0x20006dc0:    9001        ..      STR      r0,[sp,#4]
        0x20006dc2:    bd01        ..      POP      {r0,pc}
    $d
        0x20006dc4:    0002e00d    ....    DCD    188429
    $t
    $Ven$TT$L$$rom_llc_set_update_tx_pdu_callback
        0x20006dc8:    b403        ..      PUSH     {r0,r1}
        0x20006dca:    4801        .H      LDR      r0,[pc,#4] ; [0x20006dd0] = 0x2e049
        0x20006dcc:    9001        ..      STR      r0,[sp,#4]
        0x20006dce:    bd01        ..      POP      {r0,pc}
    $d
        0x20006dd0:    0002e049    I...    DCD    188489
    $t
    $Ven$TT$L$$rom_llc_set_update_rx_pdu_callback
        0x20006dd4:    b403        ..      PUSH     {r0,r1}
        0x20006dd6:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ddc] = 0x2e03d
        0x20006dd8:    9001        ..      STR      r0,[sp,#4]
        0x20006dda:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ddc:    0002e03d    =...    DCD    188477
    $t
    $Ven$TT$L$$rom_llc_set_get_rssi_callback
        0x20006de0:    b403        ..      PUSH     {r0,r1}
        0x20006de2:    4801        .H      LDR      r0,[pc,#4] ; [0x20006de8] = 0x2dfad
        0x20006de4:    9001        ..      STR      r0,[sp,#4]
        0x20006de6:    bd01        ..      POP      {r0,pc}
    $d
        0x20006de8:    0002dfad    ....    DCD    188333
    $t
    $Ven$TT$L$$rom_hci_set_get_event_paramter_max_length_callback
        0x20006dec:    b403        ..      PUSH     {r0,r1}
        0x20006dee:    4801        .H      LDR      r0,[pc,#4] ; [0x20006df4] = 0x3e95d
        0x20006df0:    9001        ..      STR      r0,[sp,#4]
        0x20006df2:    bd01        ..      POP      {r0,pc}
    $d
        0x20006df4:    0003e95d    ]...    DCD    256349
    $t
    $Ven$TT$L$$rom_hci_set_host_send_command_packet_callback
        0x20006df8:    b403        ..      PUSH     {r0,r1}
        0x20006dfa:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e00] = 0x3e975
        0x20006dfc:    9001        ..      STR      r0,[sp,#4]
        0x20006dfe:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e00:    0003e975    u...    DCD    256373
    $t
    $Ven$TT$L$$rom_hci_set_host_send_acl_data_callback
        0x20006e04:    b403        ..      PUSH     {r0,r1}
        0x20006e06:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e0c] = 0x3e969
        0x20006e08:    9001        ..      STR      r0,[sp,#4]
        0x20006e0a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e0c:    0003e969    i...    DCD    256361
    $t
    $Ven$TT$L$$rom_hci_set_controller_report_event_callback
        0x20006e10:    b403        ..      PUSH     {r0,r1}
        0x20006e12:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e18] = 0x3e951
        0x20006e14:    9001        ..      STR      r0,[sp,#4]
        0x20006e16:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e18:    0003e951    Q...    DCD    256337
    $t
    $Ven$TT$L$$rom_hci_set_controller_report_acl_data_callback
        0x20006e1c:    b403        ..      PUSH     {r0,r1}
        0x20006e1e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e24] = 0x3e945
        0x20006e20:    9001        ..      STR      r0,[sp,#4]
        0x20006e22:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e24:    0003e945    E...    DCD    256325
    $t
    $Ven$TT$L$$rom_controller_event_mask_set_event_mask
        0x20006e28:    b403        ..      PUSH     {r0,r1}
        0x20006e2a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e30] = 0x3e249
        0x20006e2c:    9001        ..      STR      r0,[sp,#4]
        0x20006e2e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e30:    0003e249    I...    DCD    254537
    $t
    $Ven$TT$L$$rom_controller_event_mask_set_le_event_mask
        0x20006e34:    b403        ..      PUSH     {r0,r1}
        0x20006e36:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e3c] = 0x3e255
        0x20006e38:    9001        ..      STR      r0,[sp,#4]
        0x20006e3a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e3c:    0003e255    U...    DCD    254549
    $t
    $Ven$TT$L$$rom_hal_rf_tx_power_set
        0x20006e40:    b403        ..      PUSH     {r0,r1}
        0x20006e42:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e48] = 0x15905
        0x20006e44:    9001        ..      STR      r0,[sp,#4]
        0x20006e46:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e48:    00015905    .Y..    DCD    88325
    $t
    $Ven$TT$L$$rom_gap_api_set_public_device_address
        0x20006e4c:    b403        ..      PUSH     {r0,r1}
        0x20006e4e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e54] = 0x32779
        0x20006e50:    9001        ..      STR      r0,[sp,#4]
        0x20006e52:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e54:    00032779    y'..    DCD    206713
    $t
    $Ven$TT$L$$rom_gap_api_set_advertising_parameters
        0x20006e58:    b403        ..      PUSH     {r0,r1}
        0x20006e5a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e60] = 0x323e5
        0x20006e5c:    9001        ..      STR      r0,[sp,#4]
        0x20006e5e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e60:    000323e5    .#..    DCD    205797
    $t
    $Ven$TT$L$$rom_gap_api_set_advertising_data
        0x20006e64:    b403        ..      PUSH     {r0,r1}
        0x20006e66:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e6c] = 0x3238d
        0x20006e68:    9001        ..      STR      r0,[sp,#4]
        0x20006e6a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e6c:    0003238d    .#..    DCD    205709
    $t
    $Ven$TT$L$$rom_gap_api_set_scan_response_data
        0x20006e70:    b403        ..      PUSH     {r0,r1}
        0x20006e72:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e78] = 0x3285d
        0x20006e74:    9001        ..      STR      r0,[sp,#4]
        0x20006e76:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e78:    0003285d    ](..    DCD    206941
    $t
    $Ven$TT$L$$rom_gap_api_sm_bond_info_save_by_app_config_only_for_legacy_pair
        0x20006e7c:    b403        ..      PUSH     {r0,r1}
        0x20006e7e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e84] = 0x3289f
        0x20006e80:    9001        ..      STR      r0,[sp,#4]
        0x20006e82:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e84:    0003289f    .(..    DCD    207007
    $t
    $Ven$TT$L$$rom_gap_api_update_pair_para
        0x20006e88:    b403        ..      PUSH     {r0,r1}
        0x20006e8a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e90] = 0x328eb
        0x20006e8c:    9001        ..      STR      r0,[sp,#4]
        0x20006e8e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e90:    000328eb    .(..    DCD    207083
    $t
    $Ven$TT$L$$rom_hw_efuse_read_bytes
        0x20006e94:    b403        ..      PUSH     {r0,r1}
        0x20006e96:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e9c] = 0x17ef5
        0x20006e98:    9001        ..      STR      r0,[sp,#4]
        0x20006e9a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e9c:    00017ef5    .~..    DCD    98037
    $t
    $Ven$TT$L$$rom_llc_legacy_adv_mem_init
        0x20006ea0:    b403        ..      PUSH     {r0,r1}
        0x20006ea2:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ea8] = 0x29435
        0x20006ea4:    9001        ..      STR      r0,[sp,#4]
        0x20006ea6:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ea8:    00029435    5...    DCD    169013
    $t
    $Ven$TT$L$$rom_llc_legacy_scan_mem_init
        0x20006eac:    b403        ..      PUSH     {r0,r1}
        0x20006eae:    4801        .H      LDR      r0,[pc,#4] ; [0x20006eb4] = 0x2aa25
        0x20006eb0:    9001        ..      STR      r0,[sp,#4]
        0x20006eb2:    bd01        ..      POP      {r0,pc}
    $d
        0x20006eb4:    0002aa25    %...    DCD    174629
    $t
    $Ven$TT$L$$rom_llc_legacy_initiator_mem_init
        0x20006eb8:    b403        ..      PUSH     {r0,r1}
        0x20006eba:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ec0] = 0x2a049
        0x20006ebc:    9001        ..      STR      r0,[sp,#4]
        0x20006ebe:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ec0:    0002a049    I...    DCD    172105
    $t
    $Ven$TT$L$$rom_llc_connection_role_mem_init
        0x20006ec4:    b403        ..      PUSH     {r0,r1}
        0x20006ec6:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ecc] = 0x239cd
        0x20006ec8:    9001        ..      STR      r0,[sp,#4]
        0x20006eca:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ecc:    000239cd    .9..    DCD    145869
    $t
    $Ven$TT$L$$rom_llc_scheduler_mem_init
        0x20006ed0:    b403        ..      PUSH     {r0,r1}
        0x20006ed2:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ed8] = 0x2dc7d
        0x20006ed4:    9001        ..      STR      r0,[sp,#4]
        0x20006ed6:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ed8:    0002dc7d    }...    DCD    187517
    $t
    $Ven$TT$L$$rom_llc_white_list_init
        0x20006edc:    b403        ..      PUSH     {r0,r1}
        0x20006ede:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ee4] = 0x2f411
        0x20006ee0:    9001        ..      STR      r0,[sp,#4]
        0x20006ee2:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ee4:    0002f411    ....    DCD    193553
    $t
    $Ven$TT$L$$rom_llc_privacy_init
        0x20006ee8:    b403        ..      PUSH     {r0,r1}
        0x20006eea:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ef0] = 0x2d015
        0x20006eec:    9001        ..      STR      r0,[sp,#4]
        0x20006eee:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ef0:    0002d015    ....    DCD    184341
    $t
    $Ven$TT$L$$rom_llc_adv_channel_pdu_mem_init
        0x20006ef4:    b403        ..      PUSH     {r0,r1}
        0x20006ef6:    4801        .H      LDR      r0,[pc,#4] ; [0x20006efc] = 0x22c19
        0x20006ef8:    9001        ..      STR      r0,[sp,#4]
        0x20006efa:    bd01        ..      POP      {r0,pc}
    $d
        0x20006efc:    00022c19    .,..    DCD    142361
    $t
    $Ven$TT$L$$rom_llc_data_channel_pdu_mem_init
        0x20006f00:    b403        ..      PUSH     {r0,r1}
        0x20006f02:    4801        .H      LDR      r0,[pc,#4] ; [0x20006f08] = 0x25919
        0x20006f04:    9001        ..      STR      r0,[sp,#4]
        0x20006f06:    bd01        ..      POP      {r0,pc}
    $d
        0x20006f08:    00025919    .Y..    DCD    153881
    $t
    $Ven$TT$L$$rom_llc_acl_data_mem_init
        0x20006f0c:    b403        ..      PUSH     {r0,r1}
        0x20006f0e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006f14] = 0x22951
        0x20006f10:    9001        ..      STR      r0,[sp,#4]
        0x20006f12:    bd01        ..      POP      {r0,pc}
    $d
        0x20006f14:    00022951    Q)..    DCD    141649
    $t
    $Ven$TT$L$$rom_llc_hci_command_mem_init
        0x20006f18:    b403        ..      PUSH     {r0,r1}
        0x20006f1a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006f20] = 0x28229
        0x20006f1c:    9001        ..      STR      r0,[sp,#4]
        0x20006f1e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006f20:    00028229    )...    DCD    164393
    $t
    $Ven$TT$L$$rom_llc_set_send_msg_to_llc_task_callback
        0x20006f24:    b403        ..      PUSH     {r0,r1}
        0x20006f26:    4801        .H      LDR      r0,[pc,#4] ; [0x20006f2c] = 0x2dfc5
        0x20006f28:    9001        ..      STR      r0,[sp,#4]
        0x20006f2a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006f2c:    0002dfc5    ....    DCD    188357
    $t
    $Ven$TT$L$$rom_hw_uart_transmit
        0x20006f30:    b403        ..      PUSH     {r0,r1}
        0x20006f32:    4801        .H      LDR      r0,[pc,#4] ; [0x20006f38] = 0x1de7d
        0x20006f34:    9001        ..      STR      r0,[sp,#4]
        0x20006f36:    bd01        ..      POP      {r0,pc}
    $d
        0x20006f38:    0001de7d    }...    DCD    122493
    $t
    $Ven$TT$L$$rom_llc_on_llc_task_received_msg
        0x20006f3c:    b403        ..      PUSH     {r0,r1}
        0x20006f3e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006f44] = 0x2bca5
        0x20006f40:    9001        ..      STR      r0,[sp,#4]
        0x20006f42:    bd01        ..      POP      {r0,pc}
    $d
        0x20006f44:    0002bca5    ....    DCD    179365
    $t
    $Ven$TT$L$$OS_Tick_Enable
        0x20006f48:    b403        ..      PUSH     {r0,r1}
        0x20006f4a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006f50] = 0x1087d
        0x20006f4c:    9001        ..      STR      r0,[sp,#4]
        0x20006f4e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006f50:    0001087d    }...    DCD    67709
    $t
    $Ven$TT$L$$OS_Tick_Disable
        0x20006f54:    b403        ..      PUSH     {r0,r1}
        0x20006f56:    4801        .H      LDR      r0,[pc,#4] ; [0x20006f5c] = 0x10861
        0x20006f58:    9001        ..      STR      r0,[sp,#4]
        0x20006f5a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006f5c:    00010861    a...    DCD    67681
    $t
    $Ven$TT$L$$osKernelInitialize
        0x20006f60:    b403        ..      PUSH     {r0,r1}
        0x20006f62:    4801        .H      LDR      r0,[pc,#4] ; [0x20006f68] = 0x1104d
        0x20006f64:    9001        ..      STR      r0,[sp,#4]
        0x20006f66:    bd01        ..      POP      {r0,pc}
    $d
        0x20006f68:    0001104d    M...    DCD    69709
    $t
    $Ven$TT$L$$osKernelStart
        0x20006f6c:    b403        ..      PUSH     {r0,r1}
        0x20006f6e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006f74] = 0x110e1
        0x20006f70:    9001        ..      STR      r0,[sp,#4]
        0x20006f72:    bd01        ..      POP      {r0,pc}
    $d
        0x20006f74:    000110e1    ....    DCD    69857
    $t
    $Ven$TT$L$$rom_host_connection_for_handle
        0x20006f78:    b403        ..      PUSH     {r0,r1}
        0x20006f7a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006f80] = 0x352d9
        0x20006f7c:    9001        ..      STR      r0,[sp,#4]
        0x20006f7e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006f80:    000352d9    .R..    DCD    217817
    $t
    $Ven$TT$L$$rom_gatt_client_handle_error_response
        0x20006f84:    b403        ..      PUSH     {r0,r1}
        0x20006f86:    4801        .H      LDR      r0,[pc,#4] ; [0x20006f8c] = 0x33039
        0x20006f88:    9001        ..      STR      r0,[sp,#4]
        0x20006f8a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006f8c:    00033039    90..    DCD    208953
    $t
    $Ven$TT$L$$rom_handle_exchange_mtu_request
        0x20006f90:    b403        ..      PUSH     {r0,r1}
        0x20006f92:    4801        .H      LDR      r0,[pc,#4] ; [0x20006f98] = 0x34429
        0x20006f94:    9001        ..      STR      r0,[sp,#4]
        0x20006f96:    bd01        ..      POP      {r0,pc}
    $d
        0x20006f98:    00034429    )D..    DCD    214057
    $t
    $Ven$TT$L$$ble_callback_send_event
        0x20006f9c:    b403        ..      PUSH     {r0,r1}
        0x20006f9e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006fa4] = 0x305b1
        0x20006fa0:    9001        ..      STR      r0,[sp,#4]
        0x20006fa2:    bd01        ..      POP      {r0,pc}
    $d
        0x20006fa4:    000305b1    ....    DCD    198065
    $t
    $Ven$TT$L$$rom_stack_utility_little_endian_read_16
        0x20006fa8:    b403        ..      PUSH     {r0,r1}
        0x20006faa:    4801        .H      LDR      r0,[pc,#4] ; [0x20006fb0] = 0x3a799
        0x20006fac:    9001        ..      STR      r0,[sp,#4]
        0x20006fae:    bd01        ..      POP      {r0,pc}
    $d
        0x20006fb0:    0003a799    ....    DCD    239513
    $t
    $Ven$TT$L$$rom_gatt_client_handle_exchange_mtu_response
        0x20006fb4:    b403        ..      PUSH     {r0,r1}
        0x20006fb6:    4801        .H      LDR      r0,[pc,#4] ; [0x20006fbc] = 0x330a5
        0x20006fb8:    9001        ..      STR      r0,[sp,#4]
        0x20006fba:    bd01        ..      POP      {r0,pc}
    $d
        0x20006fbc:    000330a5    .0..    DCD    209061
    $t
    $Ven$TT$L$$rom_handle_find_information_request
        0x20006fc0:    b403        ..      PUSH     {r0,r1}
        0x20006fc2:    4801        .H      LDR      r0,[pc,#4] ; [0x20006fc8] = 0x34649
        0x20006fc4:    9001        ..      STR      r0,[sp,#4]
        0x20006fc6:    bd01        ..      POP      {r0,pc}
    $d
        0x20006fc8:    00034649    IF..    DCD    214601
    $t
    $Ven$TT$L$$rom_gatt_client_handle_find_information_reply
        0x20006fcc:    b403        ..      PUSH     {r0,r1}
        0x20006fce:    4801        .H      LDR      r0,[pc,#4] ; [0x20006fd4] = 0x33189
        0x20006fd0:    9001        ..      STR      r0,[sp,#4]
        0x20006fd2:    bd01        ..      POP      {r0,pc}
    $d
        0x20006fd4:    00033189    .1..    DCD    209289
    $t
    $Ven$TT$L$$rom_handle_find_by_type_value_request
        0x20006fd8:    b403        ..      PUSH     {r0,r1}
        0x20006fda:    4801        .H      LDR      r0,[pc,#4] ; [0x20006fe0] = 0x344ed
        0x20006fdc:    9001        ..      STR      r0,[sp,#4]
        0x20006fde:    bd01        ..      POP      {r0,pc}
    $d
        0x20006fe0:    000344ed    .D..    DCD    214253
    $t
    $Ven$TT$L$$rom_gatt_client_handle_find_by_type_value_response
        0x20006fe4:    b403        ..      PUSH     {r0,r1}
        0x20006fe6:    4801        .H      LDR      r0,[pc,#4] ; [0x20006fec] = 0x33109
        0x20006fe8:    9001        ..      STR      r0,[sp,#4]
        0x20006fea:    bd01        ..      POP      {r0,pc}
    $d
        0x20006fec:    00033109    .1..    DCD    209161
    $t
    $Ven$TT$L$$rom_gatt_client_handle_read_by_type_response
        0x20006ff0:    b403        ..      PUSH     {r0,r1}
        0x20006ff2:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ff8] = 0x332e1
        0x20006ff4:    9001        ..      STR      r0,[sp,#4]
        0x20006ff6:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ff8:    000332e1    .2..    DCD    209633
    $t
    $Ven$TT$L$$rom_gatt_client_handle_read_response
        0x20006ffc:    b403        ..      PUSH     {r0,r1}
        0x20006ffe:    4801        .H      LDR      r0,[pc,#4] ; [0x20007004] = 0x334a9
        0x20007000:    9001        ..      STR      r0,[sp,#4]
        0x20007002:    bd01        ..      POP      {r0,pc}
    $d
        0x20007004:    000334a9    .4..    DCD    210089
    $t
    $Ven$TT$L$$rom_gatt_client_handle_read_blob_response
        0x20007008:    b403        ..      PUSH     {r0,r1}
        0x2000700a:    4801        .H      LDR      r0,[pc,#4] ; [0x20007010] = 0x33235
        0x2000700c:    9001        ..      STR      r0,[sp,#4]
        0x2000700e:    bd01        ..      POP      {r0,pc}
    $d
        0x20007010:    00033235    52..    DCD    209461
    $t
    $Ven$TT$L$$rom_handle_rfu_request_opcode
        0x20007014:    b403        ..      PUSH     {r0,r1}
        0x20007016:    4801        .H      LDR      r0,[pc,#4] ; [0x2000701c] = 0x34e81
        0x20007018:    9001        ..      STR      r0,[sp,#4]
        0x2000701a:    bd01        ..      POP      {r0,pc}
    $d
        0x2000701c:    00034e81    .N..    DCD    216705
    $t
    $Ven$TT$L$$rom_handle_read_by_group_type_request
        0x20007020:    b403        ..      PUSH     {r0,r1}
        0x20007022:    4801        .H      LDR      r0,[pc,#4] ; [0x20007028] = 0x34935
        0x20007024:    9001        ..      STR      r0,[sp,#4]
        0x20007026:    bd01        ..      POP      {r0,pc}
    $d
        0x20007028:    00034935    5I..    DCD    215349
    $t
    $Ven$TT$L$$rom_gatt_client_handle_read_by_group_type_response
        0x2000702c:    b403        ..      PUSH     {r0,r1}
        0x2000702e:    4801        .H      LDR      r0,[pc,#4] ; [0x20007034] = 0x33269
        0x20007030:    9001        ..      STR      r0,[sp,#4]
        0x20007032:    bd01        ..      POP      {r0,pc}
    $d
        0x20007034:    00033269    i2..    DCD    209513
    $t
    $Ven$TT$L$$rom_gatt_client_handle_write_response
        0x20007038:    b403        ..      PUSH     {r0,r1}
        0x2000703a:    4801        .H      LDR      r0,[pc,#4] ; [0x20007040] = 0x335b1
        0x2000703c:    9001        ..      STR      r0,[sp,#4]
        0x2000703e:    bd01        ..      POP      {r0,pc}
    $d
        0x20007040:    000335b1    .5..    DCD    210353
    $t
    $Ven$TT$L$$rom_gatt_client_handle_prepare_write_response
        0x20007044:    b403        ..      PUSH     {r0,r1}
        0x20007046:    4801        .H      LDR      r0,[pc,#4] ; [0x2000704c] = 0x331c3
        0x20007048:    9001        ..      STR      r0,[sp,#4]
        0x2000704a:    bd01        ..      POP      {r0,pc}
    $d
        0x2000704c:    000331c3    .1..    DCD    209347
    $t
    $Ven$TT$L$$rom_gatt_client_handle_execute_write_response
        0x20007050:    b403        ..      PUSH     {r0,r1}
        0x20007052:    4801        .H      LDR      r0,[pc,#4] ; [0x20007058] = 0x330dd
        0x20007054:    9001        ..      STR      r0,[sp,#4]
        0x20007056:    bd01        ..      POP      {r0,pc}
    $d
        0x20007058:    000330dd    .0..    DCD    209117
    $t
    $Ven$TT$L$$rom_gatt_client_handle_value_notification
        0x2000705c:    b403        ..      PUSH     {r0,r1}
        0x2000705e:    4801        .H      LDR      r0,[pc,#4] ; [0x20007064] = 0x3358d
        0x20007060:    9001        ..      STR      r0,[sp,#4]
        0x20007062:    bd01        ..      POP      {r0,pc}
    $d
        0x20007064:    0003358d    .5..    DCD    210317
    $t
    $Ven$TT$L$$rom_gatt_client_handle_value_indication
        0x20007068:    b403        ..      PUSH     {r0,r1}
        0x2000706a:    4801        .H      LDR      r0,[pc,#4] ; [0x20007070] = 0x33559
        0x2000706c:    9001        ..      STR      r0,[sp,#4]
        0x2000706e:    bd01        ..      POP      {r0,pc}
    $d
        0x20007070:    00033559    Y5..    DCD    210265
    $t
    $Ven$TT$L$$rom_gatt_client_run
        0x20007074:    b403        ..      PUSH     {r0,r1}
        0x20007076:    4801        .H      LDR      r0,[pc,#4] ; [0x2000707c] = 0x33609
        0x20007078:    9001        ..      STR      r0,[sp,#4]
        0x2000707a:    bd01        ..      POP      {r0,pc}
    $d
        0x2000707c:    00033609    .6..    DCD    210441
    $t
    $Ven$TT$L$$rom_att_db_util_add_characteristic_uuid128
        0x20007080:    b403        ..      PUSH     {r0,r1}
        0x20007082:    4801        .H      LDR      r0,[pc,#4] ; [0x20007088] = 0x30bf5
        0x20007084:    9001        ..      STR      r0,[sp,#4]
        0x20007086:    bd01        ..      POP      {r0,pc}
    $d
        0x20007088:    00030bf5    ....    DCD    199669
    $t
    $Ven$TT$L$$rom_att_db_util_add_characteristic_uuid16
        0x2000708c:    b403        ..      PUSH     {r0,r1}
        0x2000708e:    4801        .H      LDR      r0,[pc,#4] ; [0x20007094] = 0x30c41
        0x20007090:    9001        ..      STR      r0,[sp,#4]
        0x20007092:    bd01        ..      POP      {r0,pc}
    $d
        0x20007094:    00030c41    A...    DCD    199745
    $t
    $Ven$TT$L$$rom_att_db_util_get_last_handle
        0x20007098:    b403        ..      PUSH     {r0,r1}
        0x2000709a:    4801        .H      LDR      r0,[pc,#4] ; [0x200070a0] = 0x30ce1
        0x2000709c:    9001        ..      STR      r0,[sp,#4]
        0x2000709e:    bd01        ..      POP      {r0,pc}
    $d
        0x200070a0:    00030ce1    ....    DCD    199905
    $t
    $Ven$TT$L$$rom_att_db_util_get_size
        0x200070a4:    b403        ..      PUSH     {r0,r1}
        0x200070a6:    4801        .H      LDR      r0,[pc,#4] ; [0x200070ac] = 0x30cf1
        0x200070a8:    9001        ..      STR      r0,[sp,#4]
        0x200070aa:    bd01        ..      POP      {r0,pc}
    $d
        0x200070ac:    00030cf1    ....    DCD    199921
    $t
    $Ven$TT$L$$rom_att_db_util_add_service_uuid128
        0x200070b0:    b403        ..      PUSH     {r0,r1}
        0x200070b2:    4801        .H      LDR      r0,[pc,#4] ; [0x200070b8] = 0x30c91
        0x200070b4:    9001        ..      STR      r0,[sp,#4]
        0x200070b6:    bd01        ..      POP      {r0,pc}
    $d
        0x200070b8:    00030c91    ....    DCD    199825
    $t
    $Ven$TT$L$$rom_att_db_util_add_service_uuid16
        0x200070bc:    b403        ..      PUSH     {r0,r1}
        0x200070be:    4801        .H      LDR      r0,[pc,#4] ; [0x200070c4] = 0x30ca3
        0x200070c0:    9001        ..      STR      r0,[sp,#4]
        0x200070c2:    bd01        ..      POP      {r0,pc}
    $d
        0x200070c4:    00030ca3    ....    DCD    199843
    $t
    $Ven$TT$L$$rom_att_db_util_init
        0x200070c8:    b403        ..      PUSH     {r0,r1}
        0x200070ca:    4801        .H      LDR      r0,[pc,#4] ; [0x200070d0] = 0x30d11
        0x200070cc:    9001        ..      STR      r0,[sp,#4]
        0x200070ce:    bd01        ..      POP      {r0,pc}
    $d
        0x200070d0:    00030d11    ....    DCD    199953
    $t
    $Ven$TT$L$$rom_l2cap_get_avail_data_buffer
        0x200070d4:    b403        ..      PUSH     {r0,r1}
        0x200070d6:    4801        .H      LDR      r0,[pc,#4] ; [0x200070dc] = 0x35dc1
        0x200070d8:    9001        ..      STR      r0,[sp,#4]
        0x200070da:    bd01        ..      POP      {r0,pc}
    $d
        0x200070dc:    00035dc1    .]..    DCD    220609
    $t
    $Ven$TT$L$$rom_setup_error
        0x200070e0:    b403        ..      PUSH     {r0,r1}
        0x200070e2:    4801        .H      LDR      r0,[pc,#4] ; [0x200070e8] = 0x36631
        0x200070e4:    9001        ..      STR      r0,[sp,#4]
        0x200070e6:    bd01        ..      POP      {r0,pc}
    $d
        0x200070e8:    00036631    1f..    DCD    222769
    $t
    $Ven$TT$L$$rom_att_tx_buffer_commit
        0x200070ec:    b403        ..      PUSH     {r0,r1}
        0x200070ee:    4801        .H      LDR      r0,[pc,#4] ; [0x200070f4] = 0x316ed
        0x200070f0:    9001        ..      STR      r0,[sp,#4]
        0x200070f2:    bd01        ..      POP      {r0,pc}
    $d
        0x200070f4:    000316ed    ....    DCD    202477
    $t
    $Ven$TT$L$$rom_att_find_handle
        0x200070f8:    b403        ..      PUSH     {r0,r1}
        0x200070fa:    4801        .H      LDR      r0,[pc,#4] ; [0x20007100] = 0x30f19
        0x200070fc:    9001        ..      STR      r0,[sp,#4]
        0x200070fe:    bd01        ..      POP      {r0,pc}
    $d
        0x20007100:    00030f19    ....    DCD    200473
    $t
    $Ven$TT$L$$rom_setup_error_write_not_permitted
        0x20007104:    b403        ..      PUSH     {r0,r1}
        0x20007106:    4801        .H      LDR      r0,[pc,#4] ; [0x2000710c] = 0x36687
        0x20007108:    9001        ..      STR      r0,[sp,#4]
        0x2000710a:    bd01        ..      POP      {r0,pc}
    $d
        0x2000710c:    00036687    .f..    DCD    222855
    $t
    $Ven$TT$L$$rom_setup_error_invalid_handle
        0x20007110:    b403        ..      PUSH     {r0,r1}
        0x20007112:    4801        .H      LDR      r0,[pc,#4] ; [0x20007118] = 0x36657
        0x20007114:    9001        ..      STR      r0,[sp,#4]
        0x20007116:    bd01        ..      POP      {r0,pc}
    $d
        0x20007118:    00036657    Wf..    DCD    222807
    $t
    $Ven$TT$L$$rom_att_validate_security
        0x2000711c:    b403        ..      PUSH     {r0,r1}
        0x2000711e:    4801        .H      LDR      r0,[pc,#4] ; [0x20007124] = 0x3174d
        0x20007120:    9001        ..      STR      r0,[sp,#4]
        0x20007122:    bd01        ..      POP      {r0,pc}
    $d
        0x20007124:    0003174d    M...    DCD    202573
    $t
    $Ven$TT$L$$rom_setup_error_read_not_permitted
        0x20007128:    b403        ..      PUSH     {r0,r1}
        0x2000712a:    4801        .H      LDR      r0,[pc,#4] ; [0x20007130] = 0x3667b
        0x2000712c:    9001        ..      STR      r0,[sp,#4]
        0x2000712e:    bd01        ..      POP      {r0,pc}
    $d
        0x20007130:    0003667b    {f..    DCD    222843
    $t
    $Ven$TT$L$$rom_setup_error_invalid_offset
        0x20007134:    b403        ..      PUSH     {r0,r1}
        0x20007136:    4801        .H      LDR      r0,[pc,#4] ; [0x2000713c] = 0x36663
        0x20007138:    9001        ..      STR      r0,[sp,#4]
        0x2000713a:    bd01        ..      POP      {r0,pc}
    $d
        0x2000713c:    00036663    cf..    DCD    222819
    $t
    $Ven$TT$L$$rom_att_iterator_init
        0x20007140:    b403        ..      PUSH     {r0,r1}
        0x20007142:    4801        .H      LDR      r0,[pc,#4] ; [0x20007148] = 0x3101d
        0x20007144:    9001        ..      STR      r0,[sp,#4]
        0x20007146:    bd01        ..      POP      {r0,pc}
    $d
        0x20007148:    0003101d    ....    DCD    200733
    $t
    $Ven$TT$L$$rom_att_iterator_has_next
        0x2000714c:    b403        ..      PUSH     {r0,r1}
        0x2000714e:    4801        .H      LDR      r0,[pc,#4] ; [0x20007154] = 0x31015
        0x20007150:    9001        ..      STR      r0,[sp,#4]
        0x20007152:    bd01        ..      POP      {r0,pc}
    $d
        0x20007154:    00031015    ....    DCD    200725
    $t
    $Ven$TT$L$$rom_att_iterator_fetch_next
        0x20007158:    b403        ..      PUSH     {r0,r1}
        0x2000715a:    4801        .H      LDR      r0,[pc,#4] ; [0x20007160] = 0x30faf
        0x2000715c:    9001        ..      STR      r0,[sp,#4]
        0x2000715e:    bd01        ..      POP      {r0,pc}
    $d
        0x20007160:    00030faf    ....    DCD    200623
    $t
    $Ven$TT$L$$rom_att_iterator_match_uuid
        0x20007164:    b403        ..      PUSH     {r0,r1}
        0x20007166:    4801        .H      LDR      r0,[pc,#4] ; [0x2000716c] = 0x31029
        0x20007168:    9001        ..      STR      r0,[sp,#4]
        0x2000716a:    bd01        ..      POP      {r0,pc}
    $d
        0x2000716c:    00031029    )...    DCD    200745
    $t
    $Ven$TT$L$$rom_stack_utility_little_endian_store_16
        0x20007170:    b403        ..      PUSH     {r0,r1}
        0x20007172:    4801        .H      LDR      r0,[pc,#4] ; [0x20007178] = 0x3a7d1
        0x20007174:    9001        ..      STR      r0,[sp,#4]
        0x20007176:    bd01        ..      POP      {r0,pc}
    $d
        0x20007178:    0003a7d1    ....    DCD    239569
    $t
    $Ven$TT$L$$rom_setup_error_atribute_not_found
        0x2000717c:    b403        ..      PUSH     {r0,r1}
        0x2000717e:    4801        .H      LDR      r0,[pc,#4] ; [0x20007184] = 0x3664b
        0x20007180:    9001        ..      STR      r0,[sp,#4]
        0x20007182:    bd01        ..      POP      {r0,pc}
    $d
        0x20007184:    0003664b    Kf..    DCD    222795
    $t
    $Ven$TT$L$$rom_setup_error_invalid_value_length
        0x20007188:    b403        ..      PUSH     {r0,r1}
        0x2000718a:    4801        .H      LDR      r0,[pc,#4] ; [0x20007190] = 0x3666f
        0x2000718c:    9001        ..      STR      r0,[sp,#4]
        0x2000718e:    bd01        ..      POP      {r0,pc}
    $d
        0x20007190:    0003666f    of..    DCD    222831
    $t
    $Ven$TT$L$$rom_llc_tool_read_little_endian_uint64
        0x20007194:    b403        ..      PUSH     {r0,r1}
        0x20007196:    4801        .H      LDR      r0,[pc,#4] ; [0x2000719c] = 0x2ef57
        0x20007198:    9001        ..      STR      r0,[sp,#4]
        0x2000719a:    bd01        ..      POP      {r0,pc}
    $d
        0x2000719c:    0002ef57    W...    DCD    192343
    $t
    $Ven$TT$L$$rom_controller_event_HCI_LE_Read_Remote_Features_Complete
        0x200071a0:    b403        ..      PUSH     {r0,r1}
        0x200071a2:    4801        .H      LDR      r0,[pc,#4] ; [0x200071a8] = 0x3e0dd
        0x200071a4:    9001        ..      STR      r0,[sp,#4]
        0x200071a6:    bd01        ..      POP      {r0,pc}
    $d
        0x200071a8:    0003e0dd    ....    DCD    254173
    $t
    $Ven$TT$L$$rom_llc_feature_exchange_procedure_alloc_rsp_pdu
        0x200071ac:    b403        ..      PUSH     {r0,r1}
        0x200071ae:    4801        .H      LDR      r0,[pc,#4] ; [0x200071b4] = 0x27afd
        0x200071b0:    9001        ..      STR      r0,[sp,#4]
        0x200071b2:    bd01        ..      POP      {r0,pc}
    $d
        0x200071b4:    00027afd    .z..    DCD    162557
    $t
    $Ven$TT$L$$rom_llc_ctrl_procedure_send_ctrl_pdu
        0x200071b8:    b403        ..      PUSH     {r0,r1}
        0x200071ba:    4801        .H      LDR      r0,[pc,#4] ; [0x200071c0] = 0x252cd
        0x200071bc:    9001        ..      STR      r0,[sp,#4]
        0x200071be:    bd01        ..      POP      {r0,pc}
    $d
        0x200071c0:    000252cd    .R..    DCD    152269
    $t
    $Ven$TT$L$$rom_llc_ctrl_procedure_rsp_unknown
        0x200071c4:    b403        ..      PUSH     {r0,r1}
        0x200071c6:    4801        .H      LDR      r0,[pc,#4] ; [0x200071cc] = 0x25205
        0x200071c8:    9001        ..      STR      r0,[sp,#4]
        0x200071ca:    bd01        ..      POP      {r0,pc}
    $d
        0x200071cc:    00025205    .R..    DCD    152069
    $t
    $Ven$TT$L$$mlog_32
        0x200071d0:    b403        ..      PUSH     {r0,r1}
        0x200071d2:    4801        .H      LDR      r0,[pc,#4] ; [0x200071d8] = 0x2f74d
        0x200071d4:    9001        ..      STR      r0,[sp,#4]
        0x200071d6:    bd01        ..      POP      {r0,pc}
    $d
        0x200071d8:    0002f74d    M...    DCD    194381
    $t
    $Ven$TT$L$$system_error
        0x200071dc:    b403        ..      PUSH     {r0,r1}
        0x200071de:    4801        .H      LDR      r0,[pc,#4] ; [0x200071e4] = 0x14269
        0x200071e0:    9001        ..      STR      r0,[sp,#4]
        0x200071e2:    bd01        ..      POP      {r0,pc}
    $d
        0x200071e4:    00014269    iB..    DCD    82537
    $t
    $Ven$TT$L$$rom_llc_timer_get_count
        0x200071e8:    b403        ..      PUSH     {r0,r1}
        0x200071ea:    4801        .H      LDR      r0,[pc,#4] ; [0x200071f0] = 0x2ee31
        0x200071ec:    9001        ..      STR      r0,[sp,#4]
        0x200071ee:    bd01        ..      POP      {r0,pc}
    $d
        0x200071f0:    0002ee31    1...    DCD    192049
    $t
    $Ven$TT$L$$rom_llp_hw_set_work_time_us
        0x200071f4:    b403        ..      PUSH     {r0,r1}
        0x200071f6:    4801        .H      LDR      r0,[pc,#4] ; [0x200071fc] = 0x217a1
        0x200071f8:    9001        ..      STR      r0,[sp,#4]
        0x200071fa:    bd01        ..      POP      {r0,pc}
    $d
        0x200071fc:    000217a1    ....    DCD    137121
    $t
    $Ven$TT$L$$rom_llp_hw_set_ifs
        0x20007200:    b403        ..      PUSH     {r0,r1}
        0x20007202:    4801        .H      LDR      r0,[pc,#4] ; [0x20007208] = 0x210dd
        0x20007204:    9001        ..      STR      r0,[sp,#4]
        0x20007206:    bd01        ..      POP      {r0,pc}
    $d
        0x20007208:    000210dd    ....    DCD    135389
    $t
    $Ven$TT$L$$rom_llp_hw_set_trx_param
        0x2000720c:    b403        ..      PUSH     {r0,r1}
        0x2000720e:    4801        .H      LDR      r0,[pc,#4] ; [0x20007214] = 0x215f1
        0x20007210:    9001        ..      STR      r0,[sp,#4]
        0x20007212:    bd01        ..      POP      {r0,pc}
    $d
        0x20007214:    000215f1    ....    DCD    136689
    $t
    $Ven$TT$L$$rom_llp_hw_set_tx_pdu
        0x20007218:    b403        ..      PUSH     {r0,r1}
        0x2000721a:    4801        .H      LDR      r0,[pc,#4] ; [0x20007220] = 0x21749
        0x2000721c:    9001        ..      STR      r0,[sp,#4]
        0x2000721e:    bd01        ..      POP      {r0,pc}
    $d
        0x20007220:    00021749    I...    DCD    137033
    $t
    $Ven$TT$L$$rom_llp_hw_set_rx_pdu
        0x20007224:    b403        ..      PUSH     {r0,r1}
        0x20007226:    4801        .H      LDR      r0,[pc,#4] ; [0x2000722c] = 0x21349
        0x20007228:    9001        ..      STR      r0,[sp,#4]
        0x2000722a:    bd01        ..      POP      {r0,pc}
    $d
        0x2000722c:    00021349    I...    DCD    136009
    $t
    $Ven$TT$L$$rom_llp_hw_set_trt_mode_start_time
        0x20007230:    b403        ..      PUSH     {r0,r1}
        0x20007232:    4801        .H      LDR      r0,[pc,#4] ; [0x20007238] = 0x21571
        0x20007234:    9001        ..      STR      r0,[sp,#4]
        0x20007236:    bd01        ..      POP      {r0,pc}
    $d
        0x20007238:    00021571    q...    DCD    136561
    $t
    $Ven$TT$L$$rom_llp_hw_set_adv_mode
        0x2000723c:    b403        ..      PUSH     {r0,r1}
        0x2000723e:    4801        .H      LDR      r0,[pc,#4] ; [0x20007244] = 0x20f9d
        0x20007240:    9001        ..      STR      r0,[sp,#4]
        0x20007242:    bd01        ..      POP      {r0,pc}
    $d
        0x20007244:    00020f9d    ....    DCD    135069
    $t
    $Ven$TT$L$$rom_llp_is_idle
        0x20007248:    b403        ..      PUSH     {r0,r1}
        0x2000724a:    4801        .H      LDR      r0,[pc,#4] ; [0x20007250] = 0x21ae1
        0x2000724c:    9001        ..      STR      r0,[sp,#4]
        0x2000724e:    bd01        ..      POP      {r0,pc}
    $d
        0x20007250:    00021ae1    ....    DCD    137953
    $t
    $Ven$TT$L$$rom_llp_hw_sleep_cycles_of_low_clk
        0x20007254:    b403        ..      PUSH     {r0,r1}
        0x20007256:    4801        .H      LDR      r0,[pc,#4] ; [0x2000725c] = 0x2181d
        0x20007258:    9001        ..      STR      r0,[sp,#4]
        0x2000725a:    bd01        ..      POP      {r0,pc}
    $d
        0x2000725c:    0002181d    ....    DCD    137245
    $t
    $Ven$TT$L$$rom_llp_hw_wakeup
        0x20007260:    b403        ..      PUSH     {r0,r1}
        0x20007262:    4801        .H      LDR      r0,[pc,#4] ; [0x20007268] = 0x2184d
        0x20007264:    9001        ..      STR      r0,[sp,#4]
        0x20007266:    bd01        ..      POP      {r0,pc}
    $d
        0x20007268:    0002184d    M...    DCD    137293
    $t
    $Ven$TT$L$$rom_llp_hw_set_rtr_mode_start_time
        0x2000726c:    b403        ..      PUSH     {r0,r1}
        0x2000726e:    4801        .H      LDR      r0,[pc,#4] ; [0x20007274] = 0x21291
        0x20007270:    9001        ..      STR      r0,[sp,#4]
        0x20007272:    bd01        ..      POP      {r0,pc}
    $d
        0x20007274:    00021291    ....    DCD    135825
    $t
    $Ven$TT$L$$rom_llp_hw_set_init_mode
        0x20007278:    b403        ..      PUSH     {r0,r1}
        0x2000727a:    4801        .H      LDR      r0,[pc,#4] ; [0x20007280] = 0x211f1
        0x2000727c:    9001        ..      STR      r0,[sp,#4]
        0x2000727e:    bd01        ..      POP      {r0,pc}
    $d
        0x20007280:    000211f1    ....    DCD    135665
    $t
    $Ven$TT$L$$rom_llp_hw_set_master_mode
        0x20007284:    b403        ..      PUSH     {r0,r1}
        0x20007286:    4801        .H      LDR      r0,[pc,#4] ; [0x2000728c] = 0x21235
        0x20007288:    9001        ..      STR      r0,[sp,#4]
        0x2000728a:    bd01        ..      POP      {r0,pc}
    $d
        0x2000728c:    00021235    5...    DCD    135733
    $t
    $Ven$TT$L$$rom_llp_hw_set_scan_mode
        0x20007290:    b403        ..      PUSH     {r0,r1}
        0x20007292:    4801        .H      LDR      r0,[pc,#4] ; [0x20007298] = 0x213d5
        0x20007294:    9001        ..      STR      r0,[sp,#4]
        0x20007296:    bd01        ..      POP      {r0,pc}
    $d
        0x20007298:    000213d5    ....    DCD    136149
    $t
    $Ven$TT$L$$rom_llp_hw_set_slave_rx_window
        0x2000729c:    b403        ..      PUSH     {r0,r1}
        0x2000729e:    4801        .H      LDR      r0,[pc,#4] ; [0x200072a4] = 0x21461
        0x200072a0:    9001        ..      STR      r0,[sp,#4]
        0x200072a2:    bd01        ..      POP      {r0,pc}
    $d
        0x200072a4:    00021461    a...    DCD    136289
    $t
    $Ven$TT$L$$rom_llp_hw_set_slave_mode
        0x200072a8:    b403        ..      PUSH     {r0,r1}
        0x200072aa:    4801        .H      LDR      r0,[pc,#4] ; [0x200072b0] = 0x21415
        0x200072ac:    9001        ..      STR      r0,[sp,#4]
        0x200072ae:    bd01        ..      POP      {r0,pc}
    $d
        0x200072b0:    00021415    ....    DCD    136213
    $t
    $Ven$TT$L$$rom_llp_sleep_wakeup
        0x200072b4:    b403        ..      PUSH     {r0,r1}
        0x200072b6:    4801        .H      LDR      r0,[pc,#4] ; [0x200072bc] = 0x22411
        0x200072b8:    9001        ..      STR      r0,[sp,#4]
        0x200072ba:    bd01        ..      POP      {r0,pc}
    $d
        0x200072bc:    00022411    .$..    DCD    140305
    $t
    $Ven$TT$L$$rom_llp_sleep_on_fragment_config_succeed
        0x200072c0:    b403        ..      PUSH     {r0,r1}
        0x200072c2:    4801        .H      LDR      r0,[pc,#4] ; [0x200072c8] = 0x222e9
        0x200072c4:    9001        ..      STR      r0,[sp,#4]
        0x200072c6:    bd01        ..      POP      {r0,pc}
    $d
        0x200072c8:    000222e9    ."..    DCD    140009
    $t
    $Ven$TT$L$$rom_llp_scan_init_start_time_adjust
        0x200072cc:    b403        ..      PUSH     {r0,r1}
        0x200072ce:    4801        .H      LDR      r0,[pc,#4] ; [0x200072d4] = 0x21e3d
        0x200072d0:    9001        ..      STR      r0,[sp,#4]
        0x200072d2:    bd01        ..      POP      {r0,pc}
    $d
        0x200072d4:    00021e3d    =...    DCD    138813
    $t
    $Ven$TT$L$$rom_llp_scan_init_work_time_adjust
        0x200072d8:    b403        ..      PUSH     {r0,r1}
        0x200072da:    4801        .H      LDR      r0,[pc,#4] ; [0x200072e0] = 0x21e75
        0x200072dc:    9001        ..      STR      r0,[sp,#4]
        0x200072de:    bd01        ..      POP      {r0,pc}
    $d
        0x200072e0:    00021e75    u...    DCD    138869
    $t
    $Ven$TT$L$$rom_llp_scan_init_mode_rx_en_time_adjust
        0x200072e4:    b403        ..      PUSH     {r0,r1}
        0x200072e6:    4801        .H      LDR      r0,[pc,#4] ; [0x200072ec] = 0x21dc9
        0x200072e8:    9001        ..      STR      r0,[sp,#4]
        0x200072ea:    bd01        ..      POP      {r0,pc}
    $d
        0x200072ec:    00021dc9    ....    DCD    138697
    $t
    $Ven$TT$L$$rom_llc_encryption_procedure_peer_initiated_init
        0x200072f0:    b403        ..      PUSH     {r0,r1}
        0x200072f2:    4801        .H      LDR      r0,[pc,#4] ; [0x200072f8] = 0x27821
        0x200072f4:    9001        ..      STR      r0,[sp,#4]
        0x200072f6:    bd01        ..      POP      {r0,pc}
    $d
        0x200072f8:    00027821    !x..    DCD    161825
    $t
    $Ven$TT$L$$rom_llc_connection_update_procedure_peer_initiated_init
        0x200072fc:    b403        ..      PUSH     {r0,r1}
        0x200072fe:    4801        .H      LDR      r0,[pc,#4] ; [0x20007304] = 0x24385
        0x20007300:    9001        ..      STR      r0,[sp,#4]
        0x20007302:    bd01        ..      POP      {r0,pc}
    $d
        0x20007304:    00024385    .C..    DCD    148357
    $t
    $Ven$TT$L$$rom_llc_channel_map_update_procedure_peer_initiated_init
        0x20007308:    b403        ..      PUSH     {r0,r1}
        0x2000730a:    4801        .H      LDR      r0,[pc,#4] ; [0x20007310] = 0x22db1
        0x2000730c:    9001        ..      STR      r0,[sp,#4]
        0x2000730e:    bd01        ..      POP      {r0,pc}
    $d
        0x20007310:    00022db1    .-..    DCD    142769
    $t
    $Ven$TT$L$$rom_llc_version_exchange_procedure_peer_initiated_init
        0x20007314:    b403        ..      PUSH     {r0,r1}
        0x20007316:    4801        .H      LDR      r0,[pc,#4] ; [0x2000731c] = 0x2f111
        0x20007318:    9001        ..      STR      r0,[sp,#4]
        0x2000731a:    bd01        ..      POP      {r0,pc}
    $d
        0x2000731c:    0002f111    ....    DCD    192785
    $t
    $Ven$TT$L$$rom_llc_data_length_update_procedure_peer_initiated_init
        0x20007320:    b403        ..      PUSH     {r0,r1}
        0x20007322:    4801        .H      LDR      r0,[pc,#4] ; [0x20007328] = 0x261c9
        0x20007324:    9001        ..      STR      r0,[sp,#4]
        0x20007326:    bd01        ..      POP      {r0,pc}
    $d
        0x20007328:    000261c9    .a..    DCD    156105
    $t
    $Ven$TT$L$$rom_llc_phy_update_procedure_peer_initiated_init
        0x2000732c:    b403        ..      PUSH     {r0,r1}
        0x2000732e:    4801        .H      LDR      r0,[pc,#4] ; [0x20007334] = 0x2c0e9
        0x20007330:    9001        ..      STR      r0,[sp,#4]
        0x20007332:    bd01        ..      POP      {r0,pc}
    $d
        0x20007334:    0002c0e9    ....    DCD    180457
    $t
    $Ven$TT$L$$rom_hw_sys_ctrl_peri_int_ctrl
        0x20007338:    b403        ..      PUSH     {r0,r1}
        0x2000733a:    4801        .H      LDR      r0,[pc,#4] ; [0x20007340] = 0x1c3ad
        0x2000733c:    9001        ..      STR      r0,[sp,#4]
        0x2000733e:    bd01        ..      POP      {r0,pc}
    $d
        0x20007340:    0001c3ad    ....    DCD    115629
    $t
    $Ven$TT$L$$rom_hw_trng_gen_32bit
        0x20007344:    b403        ..      PUSH     {r0,r1}
        0x20007346:    4801        .H      LDR      r0,[pc,#4] ; [0x2000734c] = 0x1d743
        0x20007348:    9001        ..      STR      r0,[sp,#4]
        0x2000734a:    bd01        ..      POP      {r0,pc}
    $d
        0x2000734c:    0001d743    C...    DCD    120643
    $t
    $Ven$TT$L$$rom_rand_init
        0x20007350:    b403        ..      PUSH     {r0,r1}
        0x20007352:    4801        .H      LDR      r0,[pc,#4] ; [0x20007358] = 0x2f941
        0x20007354:    9001        ..      STR      r0,[sp,#4]
        0x20007356:    bd01        ..      POP      {r0,pc}
    $d
        0x20007358:    0002f941    A...    DCD    194881
    $t
    $Ven$TT$L$$rom_hal_rf_cali_init
        0x2000735c:    b403        ..      PUSH     {r0,r1}
        0x2000735e:    4801        .H      LDR      r0,[pc,#4] ; [0x20007364] = 0x1525d
        0x20007360:    9001        ..      STR      r0,[sp,#4]
        0x20007362:    bd01        ..      POP      {r0,pc}
    $d
        0x20007364:    0001525d    ]R..    DCD    86621
    $t
    $Ven$TT$L$$rom_hal_rf_tx_cali
        0x20007368:    b403        ..      PUSH     {r0,r1}
        0x2000736a:    4801        .H      LDR      r0,[pc,#4] ; [0x20007370] = 0x1585d
        0x2000736c:    9001        ..      STR      r0,[sp,#4]
        0x2000736e:    bd01        ..      POP      {r0,pc}
    $d
        0x20007370:    0001585d    ]X..    DCD    88157
    $t
    $Ven$TT$L$$rom_hal_rf_rx_cali
        0x20007374:    b403        ..      PUSH     {r0,r1}
        0x20007376:    4801        .H      LDR      r0,[pc,#4] ; [0x2000737c] = 0x153d9
        0x20007378:    9001        ..      STR      r0,[sp,#4]
        0x2000737a:    bd01        ..      POP      {r0,pc}
    $d
        0x2000737c:    000153d9    .S..    DCD    87001
    $t
    $Ven$TT$L$$rom_hal_rf_rx_dc_cal_sweep
        0x20007380:    b403        ..      PUSH     {r0,r1}
        0x20007382:    4801        .H      LDR      r0,[pc,#4] ; [0x20007388] = 0x155e9
        0x20007384:    9001        ..      STR      r0,[sp,#4]
        0x20007386:    bd01        ..      POP      {r0,pc}
    $d
        0x20007388:    000155e9    .U..    DCD    87529
    $t
    $Ven$TT$L$$rom_hal_rf_tx_power_table_init
        0x2000738c:    b403        ..      PUSH     {r0,r1}
        0x2000738e:    4801        .H      LDR      r0,[pc,#4] ; [0x20007394] = 0x15a19
        0x20007390:    9001        ..      STR      r0,[sp,#4]
        0x20007392:    bd01        ..      POP      {r0,pc}
    $d
        0x20007394:    00015a19    .Z..    DCD    88601
    $t
    $Ven$TT$L$$rom_hw_rf_tx_pa_h2_config
        0x20007398:    b403        ..      PUSH     {r0,r1}
        0x2000739a:    4801        .H      LDR      r0,[pc,#4] ; [0x200073a0] = 0x1b291
        0x2000739c:    9001        ..      STR      r0,[sp,#4]
        0x2000739e:    bd01        ..      POP      {r0,pc}
    $d
        0x200073a0:    0001b291    ....    DCD    111249
    $t
    $Ven$TT$L$$osMemoryPoolAlloc
        0x200073a4:    b403        ..      PUSH     {r0,r1}
        0x200073a6:    4801        .H      LDR      r0,[pc,#4] ; [0x200073ac] = 0x1114d
        0x200073a8:    9001        ..      STR      r0,[sp,#4]
        0x200073aa:    bd01        ..      POP      {r0,pc}
    $d
        0x200073ac:    0001114d    M...    DCD    69965
    $t
    $Ven$TT$L$$osMessageQueuePut
        0x200073b0:    b403        ..      PUSH     {r0,r1}
        0x200073b2:    4801        .H      LDR      r0,[pc,#4] ; [0x200073b8] = 0x11435
        0x200073b4:    9001        ..      STR      r0,[sp,#4]
        0x200073b6:    bd01        ..      POP      {r0,pc}
    $d
        0x200073b8:    00011435    5...    DCD    70709
    $t
    $Ven$TT$L$$rom_hw_crg_get_lpwr_clk_src
        0x200073bc:    b403        ..      PUSH     {r0,r1}
        0x200073be:    4801        .H      LDR      r0,[pc,#4] ; [0x200073c4] = 0x172ed
        0x200073c0:    9001        ..      STR      r0,[sp,#4]
        0x200073c2:    bd01        ..      POP      {r0,pc}
    $d
        0x200073c4:    000172ed    .r..    DCD    94957
    $t
    $Ven$TT$L$$rom_hw_crg_get_32k_cycles_of_dcxo_hclk
        0x200073c8:    b403        ..      PUSH     {r0,r1}
        0x200073ca:    4801        .H      LDR      r0,[pc,#4] ; [0x200073d0] = 0x172bd
        0x200073cc:    9001        ..      STR      r0,[sp,#4]
        0x200073ce:    bd01        ..      POP      {r0,pc}
    $d
        0x200073d0:    000172bd    .r..    DCD    94909
    $t
    i.__0printf$8
    __0printf$8
    __1printf$8
    __2printf
        0x200073d4:    b40f        ..      PUSH     {r0-r3}
        0x200073d6:    b510        ..      PUSH     {r4,lr}
        0x200073d8:    a903        ..      ADD      r1,sp,#0xc
        0x200073da:    4b04        .K      LDR      r3,[pc,#16] ; [0x200073ec] = 0x20004819
        0x200073dc:    4a04        .J      LDR      r2,[pc,#16] ; [0x200073f0] = 0x20007d10
        0x200073de:    9802        ..      LDR      r0,[sp,#8]
        0x200073e0:    f000f808    ....    BL       _printf_core ; 0x200073f4
        0x200073e4:    bc10        ..      POP      {r4}
        0x200073e6:    bc08        ..      POP      {r3}
        0x200073e8:    b004        ..      ADD      sp,sp,#0x10
        0x200073ea:    4718        .G      BX       r3
    $d
        0x200073ec:    20004819    .H.     DCD    536889369
        0x200073f0:    20007d10    .}.     DCD    536902928
    $t
    i._printf_core
    _printf_core
        0x200073f4:    b5ff        ..      PUSH     {r0-r7,lr}
        0x200073f6:    b091        ..      SUB      sp,sp,#0x44
        0x200073f8:    460f        .F      MOV      r7,r1
        0x200073fa:    4605        .F      MOV      r5,r0
        0x200073fc:    2600        .&      MOVS     r6,#0
        0x200073fe:    e006        ..      B        0x2000740e ; _printf_core + 26
        0x20007400:    2825        %(      CMP      r0,#0x25
        0x20007402:    d00a        ..      BEQ      0x2000741a ; _printf_core + 38
        0x20007404:    9a14        ..      LDR      r2,[sp,#0x50]
        0x20007406:    9913        ..      LDR      r1,[sp,#0x4c]
        0x20007408:    4790        .G      BLX      r2
        0x2000740a:    1c6d        m.      ADDS     r5,r5,#1
        0x2000740c:    1c76        v.      ADDS     r6,r6,#1
        0x2000740e:    7828        (x      LDRB     r0,[r5,#0]
        0x20007410:    2800        .(      CMP      r0,#0
        0x20007412:    d1f5        ..      BNE      0x20007400 ; _printf_core + 12
        0x20007414:    4630        0F      MOV      r0,r6
        0x20007416:    b015        ..      ADD      sp,sp,#0x54
        0x20007418:    bdf0        ..      POP      {r4-r7,pc}
        0x2000741a:    2400        .$      MOVS     r4,#0
        0x2000741c:    9400        ..      STR      r4,[sp,#0]
        0x2000741e:    2101        .!      MOVS     r1,#1
        0x20007420:    4af3        .J      LDR      r2,[pc,#972] ; [0x200077f0] = 0x12809
        0x20007422:    9402        ..      STR      r4,[sp,#8]
        0x20007424:    e000        ..      B        0x20007428 ; _printf_core + 52
        0x20007426:    4304        .C      ORRS     r4,r4,r0
        0x20007428:    1c6d        m.      ADDS     r5,r5,#1
        0x2000742a:    782b        +x      LDRB     r3,[r5,#0]
        0x2000742c:    4608        .F      MOV      r0,r1
        0x2000742e:    3b20         ;      SUBS     r3,r3,#0x20
        0x20007430:    4098        .@      LSLS     r0,r0,r3
        0x20007432:    4210        .B      TST      r0,r2
        0x20007434:    d1f7        ..      BNE      0x20007426 ; _printf_core + 50
        0x20007436:    7828        (x      LDRB     r0,[r5,#0]
        0x20007438:    282a        *(      CMP      r0,#0x2a
        0x2000743a:    d00e        ..      BEQ      0x2000745a ; _printf_core + 102
        0x2000743c:    2102        .!      MOVS     r1,#2
        0x2000743e:    7828        (x      LDRB     r0,[r5,#0]
        0x20007440:    4602        .F      MOV      r2,r0
        0x20007442:    3a30        0:      SUBS     r2,r2,#0x30
        0x20007444:    2a09        .*      CMP      r2,#9
        0x20007446:    d815        ..      BHI      0x20007474 ; _printf_core + 128
        0x20007448:    9a00        ..      LDR      r2,[sp,#0]
        0x2000744a:    230a        .#      MOVS     r3,#0xa
        0x2000744c:    435a        ZC      MULS     r2,r3,r2
        0x2000744e:    3a30        0:      SUBS     r2,r2,#0x30
        0x20007450:    1880        ..      ADDS     r0,r0,r2
        0x20007452:    430c        .C      ORRS     r4,r4,r1
        0x20007454:    1c6d        m.      ADDS     r5,r5,#1
        0x20007456:    9000        ..      STR      r0,[sp,#0]
        0x20007458:    e7f1        ..      B        0x2000743e ; _printf_core + 74
        0x2000745a:    cf01        ..      LDM      r7!,{r0}
        0x2000745c:    9000        ..      STR      r0,[sp,#0]
        0x2000745e:    2800        .(      CMP      r0,#0
        0x20007460:    da05        ..      BGE      0x2000746e ; _printf_core + 122
        0x20007462:    2001        .       MOVS     r0,#1
        0x20007464:    0340        @.      LSLS     r0,r0,#13
        0x20007466:    4304        .C      ORRS     r4,r4,r0
        0x20007468:    9800        ..      LDR      r0,[sp,#0]
        0x2000746a:    4240        @B      RSBS     r0,r0,#0
        0x2000746c:    9000        ..      STR      r0,[sp,#0]
        0x2000746e:    2002        .       MOVS     r0,#2
        0x20007470:    4304        .C      ORRS     r4,r4,r0
        0x20007472:    1c6d        m.      ADDS     r5,r5,#1
        0x20007474:    7828        (x      LDRB     r0,[r5,#0]
        0x20007476:    282e        .(      CMP      r0,#0x2e
        0x20007478:    d115        ..      BNE      0x200074a6 ; _printf_core + 178
        0x2000747a:    2004        .       MOVS     r0,#4
        0x2000747c:    4304        .C      ORRS     r4,r4,r0
        0x2000747e:    7868        hx      LDRB     r0,[r5,#1]
        0x20007480:    1c6d        m.      ADDS     r5,r5,#1
        0x20007482:    282a        *(      CMP      r0,#0x2a
        0x20007484:    d10a        ..      BNE      0x2000749c ; _printf_core + 168
        0x20007486:    cf01        ..      LDM      r7!,{r0}
        0x20007488:    1c6d        m.      ADDS     r5,r5,#1
        0x2000748a:    9002        ..      STR      r0,[sp,#8]
        0x2000748c:    e00b        ..      B        0x200074a6 ; _printf_core + 178
        0x2000748e:    9902        ..      LDR      r1,[sp,#8]
        0x20007490:    220a        ."      MOVS     r2,#0xa
        0x20007492:    4351        QC      MULS     r1,r2,r1
        0x20007494:    3930        09      SUBS     r1,r1,#0x30
        0x20007496:    1840        @.      ADDS     r0,r0,r1
        0x20007498:    1c6d        m.      ADDS     r5,r5,#1
        0x2000749a:    9002        ..      STR      r0,[sp,#8]
        0x2000749c:    7828        (x      LDRB     r0,[r5,#0]
        0x2000749e:    4601        .F      MOV      r1,r0
        0x200074a0:    3930        09      SUBS     r1,r1,#0x30
        0x200074a2:    2909        .)      CMP      r1,#9
        0x200074a4:    d9f3        ..      BLS      0x2000748e ; _printf_core + 154
        0x200074a6:    7828        (x      LDRB     r0,[r5,#0]
        0x200074a8:    286c        l(      CMP      r0,#0x6c
        0x200074aa:    d010        ..      BEQ      0x200074ce ; _printf_core + 218
        0x200074ac:    dc06        ..      BGT      0x200074bc ; _printf_core + 200
        0x200074ae:    284c        L(      CMP      r0,#0x4c
        0x200074b0:    d01a        ..      BEQ      0x200074e8 ; _printf_core + 244
        0x200074b2:    2868        h(      CMP      r0,#0x68
        0x200074b4:    d00e        ..      BEQ      0x200074d4 ; _printf_core + 224
        0x200074b6:    286a        j(      CMP      r0,#0x6a
        0x200074b8:    d117        ..      BNE      0x200074ea ; _printf_core + 246
        0x200074ba:    e004        ..      B        0x200074c6 ; _printf_core + 210
        0x200074bc:    2874        t(      CMP      r0,#0x74
        0x200074be:    d013        ..      BEQ      0x200074e8 ; _printf_core + 244
        0x200074c0:    287a        z(      CMP      r0,#0x7a
        0x200074c2:    d112        ..      BNE      0x200074ea ; _printf_core + 246
        0x200074c4:    e010        ..      B        0x200074e8 ; _printf_core + 244
        0x200074c6:    2001        .       MOVS     r0,#1
        0x200074c8:    0540        @.      LSLS     r0,r0,#21
        0x200074ca:    4304        .C      ORRS     r4,r4,r0
        0x200074cc:    e00c        ..      B        0x200074e8 ; _printf_core + 244
        0x200074ce:    2101        .!      MOVS     r1,#1
        0x200074d0:    0509        ..      LSLS     r1,r1,#20
        0x200074d2:    e001        ..      B        0x200074d8 ; _printf_core + 228
        0x200074d4:    2103        .!      MOVS     r1,#3
        0x200074d6:    0509        ..      LSLS     r1,r1,#20
        0x200074d8:    430c        .C      ORRS     r4,r4,r1
        0x200074da:    7869        ix      LDRB     r1,[r5,#1]
        0x200074dc:    4281        .B      CMP      r1,r0
        0x200074de:    d103        ..      BNE      0x200074e8 ; _printf_core + 244
        0x200074e0:    2001        .       MOVS     r0,#1
        0x200074e2:    0500        ..      LSLS     r0,r0,#20
        0x200074e4:    1824        $.      ADDS     r4,r4,r0
        0x200074e6:    1c6d        m.      ADDS     r5,r5,#1
        0x200074e8:    1c6d        m.      ADDS     r5,r5,#1
        0x200074ea:    7828        (x      LDRB     r0,[r5,#0]
        0x200074ec:    9003        ..      STR      r0,[sp,#0xc]
        0x200074ee:    286e        n(      CMP      r0,#0x6e
        0x200074f0:    d01e        ..      BEQ      0x20007530 ; _printf_core + 316
        0x200074f2:    dc0c        ..      BGT      0x2000750e ; _printf_core + 282
        0x200074f4:    2863        c(      CMP      r0,#0x63
        0x200074f6:    d031        1.      BEQ      0x2000755c ; _printf_core + 360
        0x200074f8:    dc04        ..      BGT      0x20007504 ; _printf_core + 272
        0x200074fa:    2800        .(      CMP      r0,#0
        0x200074fc:    d08a        ..      BEQ      0x20007414 ; _printf_core + 32
        0x200074fe:    2858        X(      CMP      r0,#0x58
        0x20007500:    d111        ..      BNE      0x20007526 ; _printf_core + 306
        0x20007502:    e0b2        ..      B        0x2000766a ; _printf_core + 630
        0x20007504:    2864        d(      CMP      r0,#0x64
        0x20007506:    d07b        {.      BEQ      0x20007600 ; _printf_core + 524
        0x20007508:    2869        i(      CMP      r0,#0x69
        0x2000750a:    d10c        ..      BNE      0x20007526 ; _printf_core + 306
        0x2000750c:    e078        x.      B        0x20007600 ; _printf_core + 524
        0x2000750e:    2873        s(      CMP      r0,#0x73
        0x20007510:    d02d        -.      BEQ      0x2000756e ; _printf_core + 378
        0x20007512:    dc04        ..      BGT      0x2000751e ; _printf_core + 298
        0x20007514:    286f        o(      CMP      r0,#0x6f
        0x20007516:    d070        p.      BEQ      0x200075fa ; _printf_core + 518
        0x20007518:    2870        p(      CMP      r0,#0x70
        0x2000751a:    d104        ..      BNE      0x20007526 ; _printf_core + 306
        0x2000751c:    e0a7        ..      B        0x2000766e ; _printf_core + 634
        0x2000751e:    2875        u(      CMP      r0,#0x75
        0x20007520:    d06c        l.      BEQ      0x200075fc ; _printf_core + 520
        0x20007522:    2878        x(      CMP      r0,#0x78
        0x20007524:    d06b        k.      BEQ      0x200075fe ; _printf_core + 522
        0x20007526:    9a14        ..      LDR      r2,[sp,#0x50]
        0x20007528:    9913        ..      LDR      r1,[sp,#0x4c]
        0x2000752a:    4790        .G      BLX      r2
        0x2000752c:    1c76        v.      ADDS     r6,r6,#1
        0x2000752e:    e062        b.      B        0x200075f6 ; _printf_core + 514
        0x20007530:    0260        `.      LSLS     r0,r4,#9
        0x20007532:    0f40        @.      LSRS     r0,r0,#29
        0x20007534:    2802        .(      CMP      r0,#2
        0x20007536:    d007        ..      BEQ      0x20007548 ; _printf_core + 340
        0x20007538:    2803        .(      CMP      r0,#3
        0x2000753a:    d00a        ..      BEQ      0x20007552 ; _printf_core + 350
        0x2000753c:    2804        .(      CMP      r0,#4
        0x2000753e:    6838        8h      LDR      r0,[r7,#0]
        0x20007540:    d00a        ..      BEQ      0x20007558 ; _printf_core + 356
        0x20007542:    6006        .`      STR      r6,[r0,#0]
        0x20007544:    1d3f        ?.      ADDS     r7,r7,#4
        0x20007546:    e056        V.      B        0x200075f6 ; _printf_core + 514
        0x20007548:    6838        8h      LDR      r0,[r7,#0]
        0x2000754a:    17f1        ..      ASRS     r1,r6,#31
        0x2000754c:    6006        .`      STR      r6,[r0,#0]
        0x2000754e:    6041        A`      STR      r1,[r0,#4]
        0x20007550:    e7f8        ..      B        0x20007544 ; _printf_core + 336
        0x20007552:    6838        8h      LDR      r0,[r7,#0]
        0x20007554:    8006        ..      STRH     r6,[r0,#0]
        0x20007556:    e7f5        ..      B        0x20007544 ; _printf_core + 336
        0x20007558:    7006        .p      STRB     r6,[r0,#0]
        0x2000755a:    e7f3        ..      B        0x20007544 ; _printf_core + 336
        0x2000755c:    7838        8x      LDRB     r0,[r7,#0]
        0x2000755e:    4669        iF      MOV      r1,sp
        0x20007560:    7408        .t      STRB     r0,[r1,#0x10]
        0x20007562:    2000        .       MOVS     r0,#0
        0x20007564:    7448        Ht      STRB     r0,[r1,#0x11]
        0x20007566:    a804        ..      ADD      r0,sp,#0x10
        0x20007568:    9003        ..      STR      r0,[sp,#0xc]
        0x2000756a:    2001        .       MOVS     r0,#1
        0x2000756c:    e003        ..      B        0x20007576 ; _printf_core + 386
        0x2000756e:    6838        8h      LDR      r0,[r7,#0]
        0x20007570:    9003        ..      STR      r0,[sp,#0xc]
        0x20007572:    2000        .       MOVS     r0,#0
        0x20007574:    43c0        .C      MVNS     r0,r0
        0x20007576:    1d3f        ?.      ADDS     r7,r7,#4
        0x20007578:    0761        a.      LSLS     r1,r4,#29
        0x2000757a:    d50f        ..      BPL      0x2000759c ; _printf_core + 424
        0x2000757c:    2100        .!      MOVS     r1,#0
        0x2000757e:    e001        ..      B        0x20007584 ; _printf_core + 400
        0x20007580:    9901        ..      LDR      r1,[sp,#4]
        0x20007582:    1c49        I.      ADDS     r1,r1,#1
        0x20007584:    9a02        ..      LDR      r2,[sp,#8]
        0x20007586:    9101        ..      STR      r1,[sp,#4]
        0x20007588:    4291        .B      CMP      r1,r2
        0x2000758a:    da13        ..      BGE      0x200075b4 ; _printf_core + 448
        0x2000758c:    4281        .B      CMP      r1,r0
        0x2000758e:    dbf7        ..      BLT      0x20007580 ; _printf_core + 396
        0x20007590:    9a01        ..      LDR      r2,[sp,#4]
        0x20007592:    9903        ..      LDR      r1,[sp,#0xc]
        0x20007594:    5c89        .\      LDRB     r1,[r1,r2]
        0x20007596:    2900        .)      CMP      r1,#0
        0x20007598:    d1f2        ..      BNE      0x20007580 ; _printf_core + 396
        0x2000759a:    e00b        ..      B        0x200075b4 ; _printf_core + 448
        0x2000759c:    2100        .!      MOVS     r1,#0
        0x2000759e:    e001        ..      B        0x200075a4 ; _printf_core + 432
        0x200075a0:    9901        ..      LDR      r1,[sp,#4]
        0x200075a2:    1c49        I.      ADDS     r1,r1,#1
        0x200075a4:    9101        ..      STR      r1,[sp,#4]
        0x200075a6:    4281        .B      CMP      r1,r0
        0x200075a8:    dbfa        ..      BLT      0x200075a0 ; _printf_core + 428
        0x200075aa:    9a01        ..      LDR      r2,[sp,#4]
        0x200075ac:    9903        ..      LDR      r1,[sp,#0xc]
        0x200075ae:    5c89        .\      LDRB     r1,[r1,r2]
        0x200075b0:    2900        .)      CMP      r1,#0
        0x200075b2:    d1f5        ..      BNE      0x200075a0 ; _printf_core + 428
        0x200075b4:    9901        ..      LDR      r1,[sp,#4]
        0x200075b6:    9800        ..      LDR      r0,[sp,#0]
        0x200075b8:    9a13        ..      LDR      r2,[sp,#0x4c]
        0x200075ba:    1a40        @.      SUBS     r0,r0,r1
        0x200075bc:    9000        ..      STR      r0,[sp,#0]
        0x200075be:    4621        !F      MOV      r1,r4
        0x200075c0:    9b14        ..      LDR      r3,[sp,#0x50]
        0x200075c2:    f000f93b    ..;.    BL       _printf_pre_padding ; 0x2000783c
        0x200075c6:    9901        ..      LDR      r1,[sp,#4]
        0x200075c8:    1980        ..      ADDS     r0,r0,r6
        0x200075ca:    1846        F.      ADDS     r6,r0,r1
        0x200075cc:    e007        ..      B        0x200075de ; _printf_core + 490
        0x200075ce:    9803        ..      LDR      r0,[sp,#0xc]
        0x200075d0:    9903        ..      LDR      r1,[sp,#0xc]
        0x200075d2:    7800        .x      LDRB     r0,[r0,#0]
        0x200075d4:    1c49        I.      ADDS     r1,r1,#1
        0x200075d6:    9103        ..      STR      r1,[sp,#0xc]
        0x200075d8:    9a14        ..      LDR      r2,[sp,#0x50]
        0x200075da:    9913        ..      LDR      r1,[sp,#0x4c]
        0x200075dc:    4790        .G      BLX      r2
        0x200075de:    9801        ..      LDR      r0,[sp,#4]
        0x200075e0:    1e40        @.      SUBS     r0,r0,#1
        0x200075e2:    9001        ..      STR      r0,[sp,#4]
        0x200075e4:    1c40        @.      ADDS     r0,r0,#1
        0x200075e6:    d1f2        ..      BNE      0x200075ce ; _printf_core + 474
        0x200075e8:    4621        !F      MOV      r1,r4
        0x200075ea:    9b14        ..      LDR      r3,[sp,#0x50]
        0x200075ec:    9a13        ..      LDR      r2,[sp,#0x4c]
        0x200075ee:    9800        ..      LDR      r0,[sp,#0]
        0x200075f0:    f000f914    ....    BL       _printf_post_padding ; 0x2000781c
        0x200075f4:    1986        ..      ADDS     r6,r0,r6
        0x200075f6:    1c6d        m.      ADDS     r5,r5,#1
        0x200075f8:    e709        ..      B        0x2000740e ; _printf_core + 26
        0x200075fa:    e041        A.      B        0x20007680 ; _printf_core + 652
        0x200075fc:    e033        3.      B        0x20007666 ; _printf_core + 626
        0x200075fe:    e034        4.      B        0x2000766a ; _printf_core + 630
        0x20007600:    200a        .       MOVS     r0,#0xa
        0x20007602:    2100        .!      MOVS     r1,#0
        0x20007604:    9004        ..      STR      r0,[sp,#0x10]
        0x20007606:    9105        ..      STR      r1,[sp,#0x14]
        0x20007608:    0260        `.      LSLS     r0,r4,#9
        0x2000760a:    0f41        A.      LSRS     r1,r0,#29
        0x2000760c:    2902        .)      CMP      r1,#2
        0x2000760e:    d005        ..      BEQ      0x2000761c ; _printf_core + 552
        0x20007610:    cf01        ..      LDM      r7!,{r0}
        0x20007612:    17c2        ..      ASRS     r2,r0,#31
        0x20007614:    4694        .F      MOV      r12,r2
        0x20007616:    2903        .)      CMP      r1,#3
        0x20007618:    d005        ..      BEQ      0x20007626 ; _printf_core + 562
        0x2000761a:    e007        ..      B        0x2000762c ; _printf_core + 568
        0x2000761c:    1dff        ..      ADDS     r7,r7,#7
        0x2000761e:    08ff        ..      LSRS     r7,r7,#3
        0x20007620:    00ff        ..      LSLS     r7,r7,#3
        0x20007622:    cf03        ..      LDM      r7!,{r0,r1}
        0x20007624:    e006        ..      B        0x20007634 ; _printf_core + 576
        0x20007626:    b200        ..      SXTH     r0,r0
        0x20007628:    17c2        ..      ASRS     r2,r0,#31
        0x2000762a:    4694        .F      MOV      r12,r2
        0x2000762c:    2904        .)      CMP      r1,#4
        0x2000762e:    d102        ..      BNE      0x20007636 ; _printf_core + 578
        0x20007630:    b240        @.      SXTB     r0,r0
        0x20007632:    17c1        ..      ASRS     r1,r0,#31
        0x20007634:    468c        .F      MOV      r12,r1
        0x20007636:    2200        ."      MOVS     r2,#0
        0x20007638:    4661        aF      MOV      r1,r12
        0x2000763a:    4594        .E      CMP      r12,r2
        0x2000763c:    da06        ..      BGE      0x2000764c ; _printf_core + 600
        0x2000763e:    460a        .F      MOV      r2,r1
        0x20007640:    2100        .!      MOVS     r1,#0
        0x20007642:    4240        @B      RSBS     r0,r0,#0
        0x20007644:    4191        .A      SBCS     r1,r1,r2
        0x20007646:    468c        .F      MOV      r12,r1
        0x20007648:    212d        -!      MOVS     r1,#0x2d
        0x2000764a:    e002        ..      B        0x20007652 ; _printf_core + 606
        0x2000764c:    0521        !.      LSLS     r1,r4,#20
        0x2000764e:    d504        ..      BPL      0x2000765a ; _printf_core + 614
        0x20007650:    212b        +!      MOVS     r1,#0x2b
        0x20007652:    466a        jF      MOV      r2,sp
        0x20007654:    7611        .v      STRB     r1,[r2,#0x18]
        0x20007656:    2101        .!      MOVS     r1,#1
        0x20007658:    e003        ..      B        0x20007662 ; _printf_core + 622
        0x2000765a:    07e1        ..      LSLS     r1,r4,#31
        0x2000765c:    d001        ..      BEQ      0x20007662 ; _printf_core + 622
        0x2000765e:    2120         !      MOVS     r1,#0x20
        0x20007660:    e7f7        ..      B        0x20007652 ; _printf_core + 606
        0x20007662:    9101        ..      STR      r1,[sp,#4]
        0x20007664:    e054        T.      B        0x20007710 ; _printf_core + 796
        0x20007666:    200a        .       MOVS     r0,#0xa
        0x20007668:    e00b        ..      B        0x20007682 ; _printf_core + 654
        0x2000766a:    2010        .       MOVS     r0,#0x10
        0x2000766c:    e009        ..      B        0x20007682 ; _printf_core + 654
        0x2000766e:    2010        .       MOVS     r0,#0x10
        0x20007670:    9004        ..      STR      r0,[sp,#0x10]
        0x20007672:    2100        .!      MOVS     r1,#0
        0x20007674:    2004        .       MOVS     r0,#4
        0x20007676:    4304        .C      ORRS     r4,r4,r0
        0x20007678:    2008        .       MOVS     r0,#8
        0x2000767a:    9105        ..      STR      r1,[sp,#0x14]
        0x2000767c:    9002        ..      STR      r0,[sp,#8]
        0x2000767e:    e003        ..      B        0x20007688 ; _printf_core + 660
        0x20007680:    2008        .       MOVS     r0,#8
        0x20007682:    2100        .!      MOVS     r1,#0
        0x20007684:    9105        ..      STR      r1,[sp,#0x14]
        0x20007686:    9004        ..      STR      r0,[sp,#0x10]
        0x20007688:    0260        `.      LSLS     r0,r4,#9
        0x2000768a:    0f41        A.      LSRS     r1,r0,#29
        0x2000768c:    2902        .)      CMP      r1,#2
        0x2000768e:    d005        ..      BEQ      0x2000769c ; _printf_core + 680
        0x20007690:    cf01        ..      LDM      r7!,{r0}
        0x20007692:    2200        ."      MOVS     r2,#0
        0x20007694:    4694        .F      MOV      r12,r2
        0x20007696:    2903        .)      CMP      r1,#3
        0x20007698:    d006        ..      BEQ      0x200076a8 ; _printf_core + 692
        0x2000769a:    e006        ..      B        0x200076aa ; _printf_core + 694
        0x2000769c:    1dff        ..      ADDS     r7,r7,#7
        0x2000769e:    08ff        ..      LSRS     r7,r7,#3
        0x200076a0:    00ff        ..      LSLS     r7,r7,#3
        0x200076a2:    cf03        ..      LDM      r7!,{r0,r1}
        0x200076a4:    468c        .F      MOV      r12,r1
        0x200076a6:    e003        ..      B        0x200076b0 ; _printf_core + 700
        0x200076a8:    b280        ..      UXTH     r0,r0
        0x200076aa:    2904        .)      CMP      r1,#4
        0x200076ac:    d100        ..      BNE      0x200076b0 ; _printf_core + 700
        0x200076ae:    b2c0        ..      UXTB     r0,r0
        0x200076b0:    2100        .!      MOVS     r1,#0
        0x200076b2:    9101        ..      STR      r1,[sp,#4]
        0x200076b4:    0721        !.      LSLS     r1,r4,#28
        0x200076b6:    d52b        +.      BPL      0x20007710 ; _printf_core + 796
        0x200076b8:    9903        ..      LDR      r1,[sp,#0xc]
        0x200076ba:    2970        p)      CMP      r1,#0x70
        0x200076bc:    d006        ..      BEQ      0x200076cc ; _printf_core + 728
        0x200076be:    9a04        ..      LDR      r2,[sp,#0x10]
        0x200076c0:    2110        .!      MOVS     r1,#0x10
        0x200076c2:    9b05        ..      LDR      r3,[sp,#0x14]
        0x200076c4:    404a        J@      EORS     r2,r2,r1
        0x200076c6:    431a        .C      ORRS     r2,r2,r3
        0x200076c8:    d005        ..      BEQ      0x200076d6 ; _printf_core + 738
        0x200076ca:    e00e        ..      B        0x200076ea ; _printf_core + 758
        0x200076cc:    2140        @!      MOVS     r1,#0x40
        0x200076ce:    466a        jF      MOV      r2,sp
        0x200076d0:    7611        .v      STRB     r1,[r2,#0x18]
        0x200076d2:    2101        .!      MOVS     r1,#1
        0x200076d4:    e008        ..      B        0x200076e8 ; _printf_core + 756
        0x200076d6:    4661        aF      MOV      r1,r12
        0x200076d8:    4301        .C      ORRS     r1,r1,r0
        0x200076da:    d006        ..      BEQ      0x200076ea ; _printf_core + 758
        0x200076dc:    2130        0!      MOVS     r1,#0x30
        0x200076de:    466a        jF      MOV      r2,sp
        0x200076e0:    7611        .v      STRB     r1,[r2,#0x18]
        0x200076e2:    9903        ..      LDR      r1,[sp,#0xc]
        0x200076e4:    7651        Qv      STRB     r1,[r2,#0x19]
        0x200076e6:    2102        .!      MOVS     r1,#2
        0x200076e8:    9101        ..      STR      r1,[sp,#4]
        0x200076ea:    9a04        ..      LDR      r2,[sp,#0x10]
        0x200076ec:    2108        .!      MOVS     r1,#8
        0x200076ee:    9b05        ..      LDR      r3,[sp,#0x14]
        0x200076f0:    404a        J@      EORS     r2,r2,r1
        0x200076f2:    431a        .C      ORRS     r2,r2,r3
        0x200076f4:    d10c        ..      BNE      0x20007710 ; _printf_core + 796
        0x200076f6:    4661        aF      MOV      r1,r12
        0x200076f8:    4301        .C      ORRS     r1,r1,r0
        0x200076fa:    d101        ..      BNE      0x20007700 ; _printf_core + 780
        0x200076fc:    0761        a.      LSLS     r1,r4,#29
        0x200076fe:    d507        ..      BPL      0x20007710 ; _printf_core + 796
        0x20007700:    2130        0!      MOVS     r1,#0x30
        0x20007702:    466a        jF      MOV      r2,sp
        0x20007704:    7611        .v      STRB     r1,[r2,#0x18]
        0x20007706:    2101        .!      MOVS     r1,#1
        0x20007708:    9101        ..      STR      r1,[sp,#4]
        0x2000770a:    9902        ..      LDR      r1,[sp,#8]
        0x2000770c:    1e49        I.      SUBS     r1,r1,#1
        0x2000770e:    9102        ..      STR      r1,[sp,#8]
        0x20007710:    9903        ..      LDR      r1,[sp,#0xc]
        0x20007712:    2958        X)      CMP      r1,#0x58
        0x20007714:    d004        ..      BEQ      0x20007720 ; _printf_core + 812
        0x20007716:    a137        7.      ADR      r1,{pc}+0xde ; 0x200077f4
        0x20007718:    9103        ..      STR      r1,[sp,#0xc]
        0x2000771a:    a90f        ..      ADD      r1,sp,#0x3c
        0x2000771c:    910f        ..      STR      r1,[sp,#0x3c]
        0x2000771e:    e00d        ..      B        0x2000773c ; _printf_core + 840
        0x20007720:    a139        9.      ADR      r1,{pc}+0xe8 ; 0x20007808
        0x20007722:    e7f9        ..      B        0x20007718 ; _printf_core + 804
        0x20007724:    4661        aF      MOV      r1,r12
        0x20007726:    9b05        ..      LDR      r3,[sp,#0x14]
        0x20007728:    9a04        ..      LDR      r2,[sp,#0x10]
        0x2000772a:    f7fbfd7d    ..}.    BL       __aeabi_uldivmod ; 0x20003228
        0x2000772e:    9b03        ..      LDR      r3,[sp,#0xc]
        0x20007730:    468c        .F      MOV      r12,r1
        0x20007732:    5c9b        .\      LDRB     r3,[r3,r2]
        0x20007734:    9a0f        ..      LDR      r2,[sp,#0x3c]
        0x20007736:    1e52        R.      SUBS     r2,r2,#1
        0x20007738:    920f        ..      STR      r2,[sp,#0x3c]
        0x2000773a:    7013        .p      STRB     r3,[r2,#0]
        0x2000773c:    4661        aF      MOV      r1,r12
        0x2000773e:    4301        .C      ORRS     r1,r1,r0
        0x20007740:    d1f0        ..      BNE      0x20007724 ; _printf_core + 816
        0x20007742:    980f        ..      LDR      r0,[sp,#0x3c]
        0x20007744:    a907        ..      ADD      r1,sp,#0x1c
        0x20007746:    1a08        ..      SUBS     r0,r1,r0
        0x20007748:    3020         0      ADDS     r0,r0,#0x20
        0x2000774a:    9003        ..      STR      r0,[sp,#0xc]
        0x2000774c:    0760        `.      LSLS     r0,r4,#29
        0x2000774e:    d504        ..      BPL      0x2000775a ; _printf_core + 870
        0x20007750:    2001        .       MOVS     r0,#1
        0x20007752:    0400        ..      LSLS     r0,r0,#16
        0x20007754:    4384        .C      BICS     r4,r4,r0
        0x20007756:    9802        ..      LDR      r0,[sp,#8]
        0x20007758:    e001        ..      B        0x2000775e ; _printf_core + 874
        0x2000775a:    2001        .       MOVS     r0,#1
        0x2000775c:    9002        ..      STR      r0,[sp,#8]
        0x2000775e:    9903        ..      LDR      r1,[sp,#0xc]
        0x20007760:    4288        .B      CMP      r0,r1
        0x20007762:    dd01        ..      BLE      0x20007768 ; _printf_core + 884
        0x20007764:    1a40        @.      SUBS     r0,r0,r1
        0x20007766:    e000        ..      B        0x2000776a ; _printf_core + 886
        0x20007768:    2000        .       MOVS     r0,#0
        0x2000776a:    1841        A.      ADDS     r1,r0,r1
        0x2000776c:    9002        ..      STR      r0,[sp,#8]
        0x2000776e:    9801        ..      LDR      r0,[sp,#4]
        0x20007770:    1809        ..      ADDS     r1,r1,r0
        0x20007772:    9800        ..      LDR      r0,[sp,#0]
        0x20007774:    1a40        @.      SUBS     r0,r0,r1
        0x20007776:    9000        ..      STR      r0,[sp,#0]
        0x20007778:    03e0        ..      LSLS     r0,r4,#15
        0x2000777a:    d406        ..      BMI      0x2000778a ; _printf_core + 918
        0x2000777c:    4621        !F      MOV      r1,r4
        0x2000777e:    9b14        ..      LDR      r3,[sp,#0x50]
        0x20007780:    9a13        ..      LDR      r2,[sp,#0x4c]
        0x20007782:    9800        ..      LDR      r0,[sp,#0]
        0x20007784:    f000f85a    ..Z.    BL       _printf_pre_padding ; 0x2000783c
        0x20007788:    1986        ..      ADDS     r6,r0,r6
        0x2000778a:    2000        .       MOVS     r0,#0
        0x2000778c:    9004        ..      STR      r0,[sp,#0x10]
        0x2000778e:    e008        ..      B        0x200077a2 ; _printf_core + 942
        0x20007790:    a906        ..      ADD      r1,sp,#0x18
        0x20007792:    5c08        .\      LDRB     r0,[r1,r0]
        0x20007794:    9a14        ..      LDR      r2,[sp,#0x50]
        0x20007796:    9913        ..      LDR      r1,[sp,#0x4c]
        0x20007798:    4790        .G      BLX      r2
        0x2000779a:    9804        ..      LDR      r0,[sp,#0x10]
        0x2000779c:    1c40        @.      ADDS     r0,r0,#1
        0x2000779e:    1c76        v.      ADDS     r6,r6,#1
        0x200077a0:    9004        ..      STR      r0,[sp,#0x10]
        0x200077a2:    9901        ..      LDR      r1,[sp,#4]
        0x200077a4:    4288        .B      CMP      r0,r1
        0x200077a6:    dbf3        ..      BLT      0x20007790 ; _printf_core + 924
        0x200077a8:    03e0        ..      LSLS     r0,r4,#15
        0x200077aa:    d50c        ..      BPL      0x200077c6 ; _printf_core + 978
        0x200077ac:    4621        !F      MOV      r1,r4
        0x200077ae:    9b14        ..      LDR      r3,[sp,#0x50]
        0x200077b0:    9a13        ..      LDR      r2,[sp,#0x4c]
        0x200077b2:    9800        ..      LDR      r0,[sp,#0]
        0x200077b4:    f000f842    ..B.    BL       _printf_pre_padding ; 0x2000783c
        0x200077b8:    1986        ..      ADDS     r6,r0,r6
        0x200077ba:    e004        ..      B        0x200077c6 ; _printf_core + 978
        0x200077bc:    9a14        ..      LDR      r2,[sp,#0x50]
        0x200077be:    2030        0       MOVS     r0,#0x30
        0x200077c0:    9913        ..      LDR      r1,[sp,#0x4c]
        0x200077c2:    4790        .G      BLX      r2
        0x200077c4:    1c76        v.      ADDS     r6,r6,#1
        0x200077c6:    9902        ..      LDR      r1,[sp,#8]
        0x200077c8:    1e48        H.      SUBS     r0,r1,#1
        0x200077ca:    9002        ..      STR      r0,[sp,#8]
        0x200077cc:    2900        .)      CMP      r1,#0
        0x200077ce:    dcf5        ..      BGT      0x200077bc ; _printf_core + 968
        0x200077d0:    e008        ..      B        0x200077e4 ; _printf_core + 1008
        0x200077d2:    980f        ..      LDR      r0,[sp,#0x3c]
        0x200077d4:    990f        ..      LDR      r1,[sp,#0x3c]
        0x200077d6:    7800        .x      LDRB     r0,[r0,#0]
        0x200077d8:    1c49        I.      ADDS     r1,r1,#1
        0x200077da:    910f        ..      STR      r1,[sp,#0x3c]
        0x200077dc:    9a14        ..      LDR      r2,[sp,#0x50]
        0x200077de:    9913        ..      LDR      r1,[sp,#0x4c]
        0x200077e0:    4790        .G      BLX      r2
        0x200077e2:    1c76        v.      ADDS     r6,r6,#1
        0x200077e4:    9903        ..      LDR      r1,[sp,#0xc]
        0x200077e6:    1e48        H.      SUBS     r0,r1,#1
        0x200077e8:    9003        ..      STR      r0,[sp,#0xc]
        0x200077ea:    2900        .)      CMP      r1,#0
        0x200077ec:    dcf1        ..      BGT      0x200077d2 ; _printf_core + 990
        0x200077ee:    e6fb        ..      B        0x200075e8 ; _printf_core + 500
    $d
        0x200077f0:    00012809    .(..    DCD    75785
        0x200077f4:    33323130    0123    DCD    858927408
        0x200077f8:    37363534    4567    DCD    926299444
        0x200077fc:    62613938    89ab    DCD    1650538808
        0x20007800:    66656463    cdef    DCD    1717920867
        0x20007804:    00000000    ....    DCD    0
        0x20007808:    33323130    0123    DCD    858927408
        0x2000780c:    37363534    4567    DCD    926299444
        0x20007810:    42413938    89AB    DCD    1111570744
        0x20007814:    46454443    CDEF    DCD    1178944579
        0x20007818:    00000000    ....    DCD    0
    $t
    i._printf_post_padding
    _printf_post_padding
        0x2000781c:    b5f8        ..      PUSH     {r3-r7,lr}
        0x2000781e:    4604        .F      MOV      r4,r0
        0x20007820:    2500        .%      MOVS     r5,#0
        0x20007822:    461e        .F      MOV      r6,r3
        0x20007824:    4617        .F      MOV      r7,r2
        0x20007826:    0488        ..      LSLS     r0,r1,#18
        0x20007828:    d404        ..      BMI      0x20007834 ; _printf_post_padding + 24
        0x2000782a:    e005        ..      B        0x20007838 ; _printf_post_padding + 28
        0x2000782c:    4639        9F      MOV      r1,r7
        0x2000782e:    2020                MOVS     r0,#0x20
        0x20007830:    47b0        .G      BLX      r6
        0x20007832:    1c6d        m.      ADDS     r5,r5,#1
        0x20007834:    1e64        d.      SUBS     r4,r4,#1
        0x20007836:    d5f9        ..      BPL      0x2000782c ; _printf_post_padding + 16
        0x20007838:    4628        (F      MOV      r0,r5
        0x2000783a:    bdf8        ..      POP      {r3-r7,pc}
    i._printf_pre_padding
    _printf_pre_padding
        0x2000783c:    b5ff        ..      PUSH     {r0-r7,lr}
        0x2000783e:    4604        .F      MOV      r4,r0
        0x20007840:    2500        .%      MOVS     r5,#0
        0x20007842:    b081        ..      SUB      sp,sp,#4
        0x20007844:    461e        .F      MOV      r6,r3
        0x20007846:    03c8        ..      LSLS     r0,r1,#15
        0x20007848:    d501        ..      BPL      0x2000784e ; _printf_pre_padding + 18
        0x2000784a:    2730        0'      MOVS     r7,#0x30
        0x2000784c:    e000        ..      B        0x20007850 ; _printf_pre_padding + 20
        0x2000784e:    2720         '      MOVS     r7,#0x20
        0x20007850:    0488        ..      LSLS     r0,r1,#18
        0x20007852:    d504        ..      BPL      0x2000785e ; _printf_pre_padding + 34
        0x20007854:    e005        ..      B        0x20007862 ; _printf_pre_padding + 38
        0x20007856:    4638        8F      MOV      r0,r7
        0x20007858:    9903        ..      LDR      r1,[sp,#0xc]
        0x2000785a:    47b0        .G      BLX      r6
        0x2000785c:    1c6d        m.      ADDS     r5,r5,#1
        0x2000785e:    1e64        d.      SUBS     r4,r4,#1
        0x20007860:    d5f9        ..      BPL      0x20007856 ; _printf_pre_padding + 26
        0x20007862:    4628        (F      MOV      r0,r5
        0x20007864:    b005        ..      ADD      sp,sp,#0x14
        0x20007866:    bdf0        ..      POP      {r4-r7,pc}
    i.puts
    puts
        0x20007868:    b510        ..      PUSH     {r4,lr}
        0x2000786a:    4604        .F      MOV      r4,r0
        0x2000786c:    e001        ..      B        0x20007872 ; puts + 10
        0x2000786e:    f7fcffd3    ....    BL       fputc ; 0x20004818
        0x20007872:    7820         x      LDRB     r0,[r4,#0]
        0x20007874:    1c64        d.      ADDS     r4,r4,#1
        0x20007876:    4903        .I      LDR      r1,[pc,#12] ; [0x20007884] = 0x20007d10
        0x20007878:    2800        .(      CMP      r0,#0
        0x2000787a:    d1f8        ..      BNE      0x2000786e ; puts + 6
        0x2000787c:    200a        .       MOVS     r0,#0xa
        0x2000787e:    f7fcffcb    ....    BL       fputc ; 0x20004818
        0x20007882:    bd10        ..      POP      {r4,pc}
    $d
        0x20007884:    20007d10    .}.     DCD    536902928
    $d.realdata
        0x20007888:    20007aab    .z.     DCD    536902315
        0x2000788c:    00000000    ....    DCD    0
        0x20007890:    20007d68    h}.     DCD    536903016
        0x20007894:    00000034    4...    DCD    52
        0x20007898:    20007da0    .}.     DCD    536903072
        0x2000789c:    00000600    ....    DCD    1536
        0x200078a0:    20007ad8    .z.     DCD    536902360
        0x200078a4:    00000001    ....    DCD    1
        0x200078a8:    20007d20     }.     DCD    536902944
        0x200078ac:    00000044    D...    DCD    68
        0x200078b0:    200083a0    ...     DCD    536904608
        0x200078b4:    00000800    ....    DCD    2048
        0x200078b8:    00000020     ...    DCD    32
        0x200078bc:    00000000    ....    DCD    0
        0x200078c0:    00000000    ....    DCD    0
        0x200078c4:    20007abe    .z.     DCD    536902334
        0x200078c8:    00000000    ....    DCD    0
        0x200078cc:    2000e16c    l..     DCD    536928620
        0x200078d0:    00000024    $...    DCD    36
        0x200078d4:    2000b3f8    ...     DCD    536916984
        0x200078d8:    00000400    ....    DCD    1024
        0x200078dc:    20007ae5    .z.     DCD    536902373
        0x200078e0:    00000000    ....    DCD    0
        0x200078e4:    2000e148    H..     DCD    536928584
        0x200078e8:    00000024    $...    DCD    36
        0x200078ec:    2000b7f8    ...     DCD    536918008
        0x200078f0:    00000240    @...    DCD    576
        0x200078f4:    00a000a0    ....    DCD    10485920
        0x200078f8:    00000200    ....    DCD    512
        0x200078fc:    00000000    ....    DCD    0
        0x20007900:    55000700    ...U    DCD    1426065152
        0x20007904:    03034d40    @M..    DCD    50548032
        0x20007908:    000000ba    ....    DCD    186
        0x2000790c:    20009488    ...     DCD    536908936
        0x20007910:    00040100    ....    DCD    262400
        0x20007914:    20009638    8..     DCD    536909368
        0x20007918:    00040028    (...    DCD    262184
        0x2000791c:    20009558    X..     DCD    536909144
        0x20007920:    00020100    ....    DCD    131328
        0x20007924:    20009768    h..     DCD    536909672
        0x20007928:    00040028    (...    DCD    262184
        0x2000792c:    200094f8    ...     DCD    536909048
        0x20007930:    00020100    ....    DCD    131328
        0x20007934:    200096a8    ...     DCD    536909480
        0x20007938:    00040028    (...    DCD    262184
        0x2000793c:    20007aa2    .z.     DCD    536902306
        0x20007940:    00000001    ....    DCD    1
        0x20007944:    2000a678    x..     DCD    536913528
        0x20007948:    00000044    D...    DCD    68
        0x2000794c:    2000abf8    ...     DCD    536914936
        0x20007950:    00000800    ....    DCD    2048
        0x20007954:    00000020     ...    DCD    32
        0x20007958:    00000000    ....    DCD    0
        0x2000795c:    00000000    ....    DCD    0
        0x20007960:    20007a8f    .z.     DCD    536902287
        0x20007964:    00000000    ....    DCD    0
        0x20007968:    2000a6c0    ...     DCD    536913600
        0x2000796c:    00000034    4...    DCD    52
        0x20007970:    2000a6f8    ...     DCD    536913656
        0x20007974:    00000500    ....    DCD    1280
        0x20007978:    20007cea    .|.     DCD    536902890
        0x2000797c:    00000001    ....    DCD    1
        0x20007980:    2000e190    ...     DCD    536928656
        0x20007984:    00000044    D...    DCD    68
        0x20007988:    2000bb18    ...     DCD    536918808
        0x2000798c:    00000400    ....    DCD    1024
        0x20007990:    00000018    ....    DCD    24
        0x20007994:    00000000    ....    DCD    0
        0x20007998:    00000000    ....    DCD    0
    devInfoServiceCBs
        0x2000799c:    20003b05    .;.     DCD    536886021
        0x200079a0:    20003c79    y<.     DCD    536886393
        0x200079a4:    00000000    ....    DCD    0
    m_stGattCBs
        0x200079a8:    20004149    IA.     DCD    536887625
        0x200079ac:    20004155    UA.     DCD    536887637
        0x200079b0:    2000420d    .B.     DCD    536887821
    m_u811073Cert
        0x200079b4:    786500fe    ..ex    DCD    2019885310
        0x200079b8:    69726570    peri    DCD    1769104752
        0x200079bc:    746e656d    ment    DCD    1953391981
        0x200079c0:    00006c61    al..    DCD    27745
    m_u8FirmwareRev
        0x200079c4:    6d726946    Firm    DCD    1836214598
        0x200079c8:    65726177    ware    DCD    1701994871
        0x200079cc:    76655220     Rev    DCD    1986351648
        0x200079d0:    6f697369    isio    DCD    1869181801
        0x200079d4:    0000006e    n...    DCD    110
    m_u8HardwareRev
        0x200079d8:    64726148    Hard    DCD    1685217608
        0x200079dc:    65726177    ware    DCD    1701994871
        0x200079e0:    76655220     Rev    DCD    1986351648
        0x200079e4:    6f697369    isio    DCD    1869181801
        0x200079e8:    0000006e    n...    DCD    110
    m_u8MfrName
        0x200079ec:    756e614d    Manu    DCD    1970168141
        0x200079f0:    74636166    fact    DCD    1952670054
        0x200079f4:    72657275    urer    DCD    1919251061
        0x200079f8:    6d614e20     Nam    DCD    1835093536
        0x200079fc:    00000065    e...    DCD    101
    m_u8ModelNumber
        0x20007a00:    65646f4d    Mode    DCD    1701080909
        0x20007a04:    754e206c    l Nu    DCD    1968054380
        0x20007a08:    7265626d    mber    DCD    1919246957
        0x20007a0c:    00000000    ....    DCD    0
    m_u8SerialNumber
        0x20007a10:    69726553    Seri    DCD    1769104723
        0x20007a14:    4e206c61    al N    DCD    1310747745
        0x20007a18:    65626d75    umbe    DCD    1700949365
        0x20007a1c:    00000072    r...    DCD    114
    m_u8SoftwareRev
        0x20007a20:    74666f53    Soft    DCD    1952870227
        0x20007a24:    65726177    ware    DCD    1701994871
        0x20007a28:    76655220     Rev    DCD    1986351648
        0x20007a2c:    6f697369    isio    DCD    1869181801
        0x20007a30:    006e        n.      DCW    110
    .L.str.1
        0x20007a32:    485b        [H      DCW    18523
        0x20007a34:    46647261    ardF    DCD    1180988001
        0x20007a38:    746c7561    ault    DCD    1953264993
        0x20007a3c:    6e61485f    _Han    DCD    1851869279
        0x20007a40:    72656c64    dler    DCD    1919249508
        0x20007a44:    7275435d    ]Cur    DCD    1920287581
        0x20007a48:    746e6572    rent    DCD    1953391986
        0x20007a4c:    70736d20     msp    DCD    1886612768
        0x20007a50:    7830203a    : 0x    DCD    2016419898
        0x20007a54:    58383025    %08X    DCD    1480077349
        0x20007a58:    000a        ..      DCW    10
    .Lstr.26
        0x20007a5a:    634f        Oc      DCW    25423
        0x20007a5c:    65727563    cure    DCD    1701999971
        0x20007a60:    6e692064    d in    DCD    1852383332
        0x20007a64:    73617420     tas    DCD    1935766560
        0x20007a68:    2e6b        k.      DCW    11883
        0x20007a6a:    00          .       DCB    0
    .Lstr.23
        0x20007a6b:    55          U       DCB    85
        0x20007a6c:    676e6973    sing    DCD    1735289203
        0x20007a70:    32337520     u32    DCD    842233120
        0x20007a74:    2e70734d    Msp.    DCD    779121485
        0x20007a78:    00          .       DCB    0
    .Lstr
        0x20007a79:    4f6363      Occ     DCB    79,99,99
        0x20007a7c:    64657275    ured    DCD    1684370037
        0x20007a80:    206e6920     in     DCD    544106784
        0x20007a84:    65746e69    inte    DCD    1702129257
        0x20007a88:    70757272    rrup    DCD    1886745202
        0x20007a8c:    2e74        t.      DCW    11892
        0x20007a8e:    00          .       DCB    0
    .L.str
        0x20007a8f:    6c          l       DCB    108
        0x20007a90:    745f636c    lc_t    DCD    1952408428
        0x20007a94:    5f6b7361    ask_    DCD    1600877409
        0x20007a98:    5f67736d    msg_    DCD    1600615277
        0x20007a9c:    75657571    queu    DCD    1969583473
        0x20007aa0:    0065        e.      DCW    101
    .L.str.2
        0x20007aa2:    6c6c        ll      DCW    27756
        0x20007aa4:    61745f63    c_ta    DCD    1635016547
        0x20007aa8:    6b73        sk      DCW    27507
        0x20007aaa:    00          .       DCB    0
    .L.str
        0x20007aab:    62          b       DCB    98
        0x20007aac:    7453656c    leSt    DCD    1951622508
        0x20007ab0:    5f6b6361    ack_    DCD    1600873313
        0x20007ab4:    5f67736d    msg_    DCD    1600615277
        0x20007ab8:    75657571    queu    DCD    1969583473
        0x20007abc:    0065        e.      DCW    101
    .L.str.3
        0x20007abe:    6c62        bl      DCW    27746
        0x20007ac0:    61745365    eSta    DCD    1635013477
        0x20007ac4:    61546b63    ckTa    DCD    1632922467
        0x20007ac8:    4d5f6b73    sk_M    DCD    1298099059
        0x20007acc:    6f506d65    emPo    DCD    1867541861
        0x20007ad0:    6c5f6c6f    ol_l    DCD    1818193007
        0x20007ad4:    00676e6f    ong.    DCD    6778479
    .L.str.1
        0x20007ad8:    53656c62    bleS    DCD    1399155810
        0x20007adc:    6b636174    tack    DCD    1801675124
        0x20007ae0:    6b736154    Task    DCD    1802723668
        0x20007ae4:    00          .       DCB    0
    .L.str.2
        0x20007ae5:    626c65      ble     DCB    98,108,101
        0x20007ae8:    63617453    Stac    DCD    1667331155
        0x20007aec:    7361546b    kTas    DCD    1935758443
        0x20007af0:    654d5f6b    k_Me    DCD    1699569515
        0x20007af4:    6f6f506d    mPoo    DCD    1869566061
        0x20007af8:    68735f6c    l_sh    DCD    1752391532
        0x20007afc:    0074726f    ort.    DCD    7631471
    .L.str.7
        0x20007b00:    47534d5b    [MSG    DCD    1196641627
        0x20007b04:    454c425f    _BLE    DCD    1162625631
        0x20007b08:    5948505f    _PHY    DCD    1497911391
        0x20007b0c:    4450555f    _UPD    DCD    1146115423
        0x20007b10:    5f455441    ATE_    DCD    1598379073
        0x20007b14:    504d4f43    COMP    DCD    1347243843
        0x20007b18:    4554454c    LETE    DCD    1163150668
        0x20007b1c:    444e495f    _IND    DCD    1145981279
        0x20007b20:    6148205d    ] Ha    DCD    1632116829
        0x20007b24:    656c646e    ndle    DCD    1701602414
        0x20007b28:    30203d20     = 0    DCD    807419168
        0x20007b2c:    2c582578    x%X,    DCD    743974264
        0x20007b30:    5f585420     TX_    DCD    1599624224
        0x20007b34:    20594850    PHY     DCD    542722128
        0x20007b38:    7830203d    = 0x    DCD    2016419901
        0x20007b3c:    202c5825    %X,     DCD    539777061
        0x20007b40:    505f5852    RX_P    DCD    1348425810
        0x20007b44:    3d205948    HY =    DCD    1025530184
        0x20007b48:    25783020     0x%    DCD    628633632
        0x20007b4c:    0a58        X.      DCW    2648
        0x20007b4e:    00          .       DCB    0
    .L.str.2
        0x20007b4f:    5b          [       DCB    91
        0x20007b50:    5f47534d    MSG_    DCD    1598509901
        0x20007b54:    5f454c42    BLE_    DCD    1598377026
        0x20007b58:    52434e45    ENCR    DCD    1380142661
        0x20007b5c:    45545059    YPTE    DCD    1163153497
        0x20007b60:    48435f44    D_CH    DCD    1212374852
        0x20007b64:    45474e41    ANGE    DCD    1162300993
        0x20007b68:    4e495f44    D_IN    DCD    1313431364
        0x20007b6c:    48205d44    D] H    DCD    1210080580
        0x20007b70:    6c646e61    andl    DCD    1818521185
        0x20007b74:    203d2065    e =     DCD    540876901
        0x20007b78:    58257830    0x%X    DCD    1478850608
        0x20007b7c:    6e45202c    , En    DCD    1850023980
        0x20007b80:    70797263    cryp    DCD    1887007331
        0x20007b84:    6e6f6974    tion    DCD    1852795252
        0x20007b88:    616e455f    _Ena    DCD    1634616671
        0x20007b8c:    64656c62    bled    DCD    1684368482
        0x20007b90:    30203d20     = 0    DCD    807419168
        0x20007b94:    0a582578    x%X.    DCD    173548920
        0x20007b98:    00          .       DCB    0
    .L.str.3
        0x20007b99:    5b4d53      [MS     DCB    91,77,83
        0x20007b9c:    4c425f47    G_BL    DCD    1279418183
        0x20007ba0:    4e455f45    E_EN    DCD    1313169221
        0x20007ba4:    50595243    CRYP    DCD    1348031043
        0x20007ba8:    5f444554    TED_    DCD    1598309716
        0x20007bac:    52464552    REFR    DCD    1380336978
        0x20007bb0:    5f485345    ESH_    DCD    1598575429
        0x20007bb4:    5d444e49    IND]    DCD    1564757577
        0x20007bb8:    6e614820     Han    DCD    1851869216
        0x20007bbc:    20656c64    dle     DCD    543517796
        0x20007bc0:    7830203d    = 0x    DCD    2016419901
        0x20007bc4:    000a5825    %X..    DCD    677925
    .L.str.4
        0x20007bc8:    47534d5b    [MSG    DCD    1196641627
        0x20007bcc:    454c425f    _BLE    DCD    1162625631
        0x20007bd0:    5f4c4c5f    _LL_    DCD    1598835807
        0x20007bd4:    53524556    VERS    DCD    1397900630
        0x20007bd8:    5f4e4f49    ION_    DCD    1598967625
        0x20007bdc:    5d444e49    IND]    DCD    1564757577
        0x20007be0:    6e614d20     Man    DCD    1851870496
        0x20007be4:    63616675    ufac    DCD    1667327605
        0x20007be8:    65727574    ture    DCD    1701999988
        0x20007bec:    614e5f72    r_Na    DCD    1632526194
        0x20007bf0:    3d20656d    me =    DCD    1025533293
        0x20007bf4:    25783020     0x%    DCD    628633632
        0x20007bf8:    48202c58    X, H    DCD    1210068056
        0x20007bfc:    6c646e61    andl    DCD    1818521185
        0x20007c00:    203d2065    e =     DCD    540876901
        0x20007c04:    58257830    0x%X    DCD    1478850608
        0x20007c08:    6556202c    , Ve    DCD    1700143148
        0x20007c0c:    6f697372    rsio    DCD    1869181810
        0x20007c10:    203d206e    n =     DCD    540876910
        0x20007c14:    58257830    0x%X    DCD    1478850608
        0x20007c18:    000a        ..      DCW    10
    .L.str.1
        0x20007c1a:    4d5b        [M      DCW    19803
        0x20007c1c:    425f4753    SG_B    DCD    1113540435
        0x20007c20:    445f454c    LE_D    DCD    1147094348
        0x20007c24:    4f435349    ISCO    DCD    1329812297
        0x20007c28:    43454e4e    NNEC    DCD    1128615502
        0x20007c2c:    5f444554    TED_    DCD    1598309716
        0x20007c30:    5d444e49    IND]    DCD    1564757577
        0x20007c34:    6e614820     Han    DCD    1851869216
        0x20007c38:    20656c64    dle     DCD    543517796
        0x20007c3c:    7830203d    = 0x    DCD    2016419901
        0x20007c40:    202c5825    %X,     DCD    539777061
        0x20007c44:    73616572    reas    DCD    1935762802
        0x20007c48:    3d206e6f    on =    DCD    1025535599
        0x20007c4c:    25783020     0x%    DCD    628633632
        0x20007c50:    0a58        X.      DCW    2648
        0x20007c52:    00          .       DCB    0
    .L.str.6
        0x20007c53:    5b          [       DCB    91
        0x20007c54:    5f47534d    MSG_    DCD    1598509901
        0x20007c58:    5f454c42    BLE_    DCD    1598377026
        0x20007c5c:    4e4e4f43    CONN    DCD    1313754947
        0x20007c60:    49544345    ECTI    DCD    1230259013
        0x20007c64:    555f4e4f    ON_U    DCD    1432309327
        0x20007c68:    54414450    PDAT    DCD    1413563472
        0x20007c6c:    4f435f45    E_CO    DCD    1329815365
        0x20007c70:    454c504d    MPLE    DCD    1162629197
        0x20007c74:    495f4554    TE_I    DCD    1230980436
        0x20007c78:    205d444e    ND]     DCD    542983246
        0x20007c7c:    6e6e6f43    Conn    DCD    1852731203
        0x20007c80:    746e495f    _Int    DCD    1953384799
        0x20007c84:    61767265    erva    DCD    1635152485
        0x20007c88:    203d206c    l =     DCD    540876908
        0x20007c8c:    58257830    0x%X    DCD    1478850608
        0x20007c90:    6f43202c    , Co    DCD    1866670124
        0x20007c94:    4c5f6e6e    nn_L    DCD    1281322606
        0x20007c98:    6e657461    aten    DCD    1852142689
        0x20007c9c:    3d207963    cy =    DCD    1025538403
        0x20007ca0:    25783020     0x%    DCD    628633632
        0x20007ca4:    53202c58    X, S    DCD    1394617432
        0x20007ca8:    72657075    uper    DCD    1919250549
        0x20007cac:    69736976    visi    DCD    1769171318
        0x20007cb0:    545f6e6f    on_T    DCD    1415540335
        0x20007cb4:    6f656d69    imeo    DCD    1868918121
        0x20007cb8:    203d2075    u =     DCD    540876917
        0x20007cbc:    58257830    0x%X    DCD    1478850608
        0x20007cc0:    000a        ..      DCW    10
    .L.str
        0x20007cc2:    4d5b        [M      DCW    19803
        0x20007cc4:    425f4753    SG_B    DCD    1113540435
        0x20007cc8:    435f454c    LE_C    DCD    1130317132
        0x20007ccc:    454e4e4f    ONNE    DCD    1162759759
        0x20007cd0:    44455443    CTED    DCD    1145394243
        0x20007cd4:    444e495f    _IND    DCD    1145981279
        0x20007cd8:    6e61485d    ]Han    DCD    1851869277
        0x20007cdc:    20656c64    dle     DCD    543517796
        0x20007ce0:    7830203d    = 0x    DCD    2016419901
        0x20007ce4:    58343025    %04X    DCD    1479815205
        0x20007ce8:    000a        ..      DCW    10
    .L.str
        0x20007cea:    7061        ap      DCW    28769
        0x20007cec:    616d5f70    p_ma    DCD    1634557808
        0x20007cf0:    00006e69    in..    DCD    28265
    .L.str
        0x20007cf4:    32335448    HT32    DCD    842224712
        0x20007cf8:    35373646    F675    DCD    892810822
        0x20007cfc:    425f3578    x5_B    DCD    1113535864
        0x20007d00:    505f454c    LE_P    DCD    1348420940
        0x20007d04:    50495245    ERIP    DCD    1346982469
        0x20007d08:    41524548    HERA    DCD    1095910728
        0x20007d0c:    0000004c    L...    DCD    76

** Section #3 'CP_RAM_DATA' (SHT_PROGBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 16 bytes (alignment 8)
    Address: 0x20007d10


** Section #4 'CP_RAM_DATA' (SHT_NOBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 25788 bytes (alignment 8)
    Address: 0x20007d20


** Section #5 'CP_STACK_HEAP' (SHT_NOBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 4096 bytes (alignment 8)
    Address: 0x20016000


** Section #6 '.debug_abbrev' (SHT_PROGBITS)
    Size   : 12435 bytes


** Section #7 '.debug_frame' (SHT_PROGBITS)
    Size   : 6788 bytes


** Section #8 '.debug_info' (SHT_PROGBITS)
    Size   : 88936 bytes


** Section #9 '.debug_line' (SHT_PROGBITS)
    Size   : 40750 bytes


** Section #10 '.debug_loc' (SHT_PROGBITS)
    Size   : 31665 bytes


** Section #11 '.debug_str' (SHT_PROGBITS)
    Size   : 170650 bytes


** Section #12 '.debug_ranges' (SHT_PROGBITS)
    Size   : 2760 bytes


** Section #13 '.symtab' (SHT_SYMTAB)
    Size   : 65104 bytes (alignment 4)
    String table #14 '.strtab'
    Last local symbol no. 1177


** Section #14 '.strtab' (SHT_STRTAB)
    Size   : 97804 bytes


** Section #15 '.note' (SHT_NOTE)
    Size   : 36 bytes (alignment 4)


** Section #16 '.comment' (SHT_PROGBITS)
    Size   : 2524 bytes


** Section #17 '.shstrtab' (SHT_STRTAB)
    Size   : 184 bytes


