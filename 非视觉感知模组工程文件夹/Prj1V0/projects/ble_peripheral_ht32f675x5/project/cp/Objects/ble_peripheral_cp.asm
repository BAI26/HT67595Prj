
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

    Image Entry point: 0x200031bd
    Flags: EF_ARM_HASENTRY + EF_ARM_ABI_FLOAT_SOFT (0x05000202)

    ARM ELF revision: 5 (ABI version 2)

    Conforms to Soft float procedure-call standard

    Built with
    Component: Arm Compiler for Embedded 6.24 Tool: armasm [5f371400]
    Component: Arm Compiler for Embedded 6.24 Tool: armlink [5f371500]

    Header size: 52 bytes (0x34)
    Program header entry size: 32 bytes (0x20)
    Section header entry size: 40 bytes (0x28)

    Program header entries: 1
    Section header entries: 18

    Program header offset: 543928 (0x00084cb8)
    Section header offset: 543960 (0x00084cd8)

    Section header string table index: 17

========================================================================

** Program header #0 (PT_LOAD) [PF_X + PF_W + PF_R + PF_ARM_ENTRY]
    Size : 49356 bytes (19472 bytes in file)
    Virtual address: 0x20003000 (Alignment 8)


========================================================================

** Section #1 'CP_APP_CODE' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 308 bytes (alignment 4)
    Address: 0x20003000

    $d.realdata
    RESET
    __Vectors
        0x20003000:    20017000    .p.     DCD    536965120
        0x20003004:    200031bd    .1.     DCD    536883645
        0x20003008:    200031c5    .1.     DCD    536883653
        0x2000300c:    200031d5    .1.     DCD    536883669
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
        0x20003040:    200031e5    .1.     DCD    536883685
        0x20003044:    200031e7    .1.     DCD    536883687
        0x20003048:    2000349d    .4.     DCD    536884381
        0x2000304c:    200031eb    .1.     DCD    536883691
        0x20003050:    200031ed    .1.     DCD    536883693
        0x20003054:    200031ef    .1.     DCD    536883695
        0x20003058:    200031f1    .1.     DCD    536883697
        0x2000305c:    200031f3    .1.     DCD    536883699
        0x20003060:    200031f5    .1.     DCD    536883701
        0x20003064:    200031f7    .1.     DCD    536883703
        0x20003068:    200031f9    .1.     DCD    536883705
        0x2000306c:    200031fb    .1.     DCD    536883707
        0x20003070:    200031fd    .1.     DCD    536883709
        0x20003074:    200031ff    .1.     DCD    536883711
        0x20003078:    20003201    .2.     DCD    536883713
        0x2000307c:    20003203    .2.     DCD    536883715
        0x20003080:    20003205    .2.     DCD    536883717
        0x20003084:    20003207    .2.     DCD    536883719
        0x20003088:    20003209    .2.     DCD    536883721
        0x2000308c:    2000320b    .2.     DCD    536883723
        0x20003090:    2000320d    .2.     DCD    536883725
        0x20003094:    2000320f    .2.     DCD    536883727
        0x20003098:    20003211    .2.     DCD    536883729
        0x2000309c:    200034e1    .4.     DCD    536884449
        0x200030a0:    20003215    .2.     DCD    536883733
        0x200030a4:    20003217    .2.     DCD    536883735
        0x200030a8:    20003219    .2.     DCD    536883737
        0x200030ac:    2000321b    .2.     DCD    536883739
        0x200030b0:    2000321d    .2.     DCD    536883741
        0x200030b4:    2000321f    .2.     DCD    536883743
        0x200030b8:    20003221    !2.     DCD    536883745
        0x200030bc:    20003501    .5.     DCD    536884481
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
        0x200030c8:    4800        .H      LDR      r0,[pc,#0] ; [0x200030cc] = 0x200049ed
        0x200030ca:    4700        .G      BX       r0
    $d
        0x200030cc:    200049ed    .I.     DCD    536889837
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
        0x200030d4:    b51c        ..      PUSH     {r2-r4,lr}
        0x200030d6:    4809        .H      LDR      r0,[pc,#36] ; [0x200030fc] = 0x20003124
        0x200030d8:    9000        ..      STR      r0,[sp,#0]
        0x200030da:    4809        .H      LDR      r0,[pc,#36] ; [0x20003100] = 0x20003134
        0x200030dc:    9001        ..      STR      r0,[sp,#4]
        0x200030de:    4605        .F      MOV      r5,r0
        0x200030e0:    2601        .&      MOVS     r6,#1
        0x200030e2:    9c00        ..      LDR      r4,[sp,#0]
        0x200030e4:    e005        ..      B        0x200030f2 ; __scatterload + 30
        0x200030e6:    68e3        .h      LDR      r3,[r4,#0xc]
        0x200030e8:    cc07        ..      LDM      r4!,{r0-r2}
        0x200030ea:    4333        3C      ORRS     r3,r3,r6
        0x200030ec:    3c0c        .<      SUBS     r4,r4,#0xc
        0x200030ee:    4798        .G      BLX      r3
        0x200030f0:    3410        .4      ADDS     r4,r4,#0x10
        0x200030f2:    42ac        .B      CMP      r4,r5
        0x200030f4:    d3f7        ..      BCC      0x200030e6 ; __scatterload + 18
        0x200030f6:    f7ffffe7    ....    BL       __main_after_scatterload ; 0x200030c8
    $d
        0x200030fa:    0000        ..      DCW    0
        0x200030fc:    20003124    $1.     DCD    536883492
        0x20003100:    20003134    41.     DCD    536883508
    $t
    i.__scatterload_copy
    __scatterload_copy
        0x20003104:    e002        ..      B        0x2000310c ; __scatterload_copy + 8
        0x20003106:    c808        ..      LDM      r0!,{r3}
        0x20003108:    1f12        ..      SUBS     r2,r2,#4
        0x2000310a:    c108        ..      STM      r1!,{r3}
        0x2000310c:    2a00        .*      CMP      r2,#0
        0x2000310e:    d1fa        ..      BNE      0x20003106 ; __scatterload_copy + 2
        0x20003110:    4770        pG      BX       lr
    i.__scatterload_null
    __scatterload_null
        0x20003112:    4770        pG      BX       lr
    i.__scatterload_zeroinit
    __scatterload_zeroinit
        0x20003114:    2000        .       MOVS     r0,#0
        0x20003116:    e001        ..      B        0x2000311c ; __scatterload_zeroinit + 8
        0x20003118:    c101        ..      STM      r1!,{r0}
        0x2000311a:    1f12        ..      SUBS     r2,r2,#4
        0x2000311c:    2a00        .*      CMP      r2,#0
        0x2000311e:    d1fb        ..      BNE      0x20003118 ; __scatterload_zeroinit + 4
        0x20003120:    4770        pG      BX       lr
        0x20003122:    0000        ..      MOVS     r0,r0
    $d.realdata
    Region$$Table$$Base
        0x20003124:    20007c10    .|.     DCD    536902672
        0x20003128:    20007c10    .|.     DCD    536902672
        0x2000312c:    000064bc    .d..    DCD    25788
        0x20003130:    20003114    .1.     DCD    536883476
    Region$$Table$$Limit

** Section #2 'ER_CP_APP_CODE' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 19148 bytes (alignment 4)
    Address: 0x20003134

    $t
    lpwr_ctrl_goto_sleep
        0x20003134:    b570        p.      PUSH     {r4-r6,lr}
        0x20003136:    4e1d        .N      LDR      r6,[pc,#116] ; [0x200031ac] = 0x2000b94c
        0x20003138:    7830        0x      LDRB     r0,[r6,#0]
        0x2000313a:    2800        .(      CMP      r0,#0
        0x2000313c:    d034        4.      BEQ      0x200031a8 ; lpwr_ctrl_goto_sleep + 116
        0x2000313e:    f3ef8510    ....    MRS      r5,PRIMASK
        0x20003142:    f3ef8010    ....    MRS      r0,PRIMASK
        0x20003146:    b672        r.      CPSID    i
        0x20003148:    4819        .H      LDR      r0,[pc,#100] ; [0x200031b0] = 0x2000e0c8
        0x2000314a:    6800        .h      LDR      r0,[r0,#0]
        0x2000314c:    2800        .(      CMP      r0,#0
        0x2000314e:    d002        ..      BEQ      0x20003156 ; lpwr_ctrl_goto_sleep + 34
        0x20003150:    4780        .G      BLX      r0
        0x20003152:    2800        .(      CMP      r0,#0
        0x20003154:    d013        ..      BEQ      0x2000317e ; lpwr_ctrl_goto_sleep + 74
        0x20003156:    7830        0x      LDRB     r0,[r6,#0]
        0x20003158:    1e81        ..      SUBS     r1,r0,#2
        0x2000315a:    2903        .)      CMP      r1,#3
        0x2000315c:    d212        ..      BCS      0x20003184 ; lpwr_ctrl_goto_sleep + 80
        0x2000315e:    2401        .$      MOVS     r4,#1
        0x20003160:    4620         F      MOV      r0,r4
        0x20003162:    4621        !F      MOV      r1,r4
        0x20003164:    f003fc24    ..$.    BL       $Ven$TT$L$$rom_hw_sys_ctrl_write_com_reg ; 0x200069b0
        0x20003168:    4812        .H      LDR      r0,[pc,#72] ; [0x200031b4] = 0xe000ed10
        0x2000316a:    6801        .h      LDR      r1,[r0,#0]
        0x2000316c:    2204        ."      MOVS     r2,#4
        0x2000316e:    430a        .C      ORRS     r2,r2,r1
        0x20003170:    6002        .`      STR      r2,[r0,#0]
        0x20003172:    bf30        0.      WFI      
        0x20003174:    2100        .!      MOVS     r1,#0
        0x20003176:    4620         F      MOV      r0,r4
        0x20003178:    f003fc1a    ....    BL       $Ven$TT$L$$rom_hw_sys_ctrl_write_com_reg ; 0x200069b0
        0x2000317c:    e00a        ..      B        0x20003194 ; lpwr_ctrl_goto_sleep + 96
        0x2000317e:    f3858810    ....    MSR      PRIMASK,r5
        0x20003182:    bd70        p.      POP      {r4-r6,pc}
        0x20003184:    2801        .(      CMP      r0,#1
        0x20003186:    d105        ..      BNE      0x20003194 ; lpwr_ctrl_goto_sleep + 96
        0x20003188:    480a        .H      LDR      r0,[pc,#40] ; [0x200031b4] = 0xe000ed10
        0x2000318a:    6801        .h      LDR      r1,[r0,#0]
        0x2000318c:    2204        ."      MOVS     r2,#4
        0x2000318e:    4391        .C      BICS     r1,r1,r2
        0x20003190:    6001        .`      STR      r1,[r0,#0]
        0x20003192:    bf30        0.      WFI      
        0x20003194:    4808        .H      LDR      r0,[pc,#32] ; [0x200031b8] = 0x2000e0c4
        0x20003196:    6800        .h      LDR      r0,[r0,#0]
        0x20003198:    2800        .(      CMP      r0,#0
        0x2000319a:    d003        ..      BEQ      0x200031a4 ; lpwr_ctrl_goto_sleep + 112
        0x2000319c:    7831        1x      LDRB     r1,[r6,#0]
        0x2000319e:    2902        .)      CMP      r1,#2
        0x200031a0:    d100        ..      BNE      0x200031a4 ; lpwr_ctrl_goto_sleep + 112
        0x200031a2:    4780        .G      BLX      r0
        0x200031a4:    f3858810    ....    MSR      PRIMASK,r5
        0x200031a8:    bd70        p.      POP      {r4-r6,pc}
        0x200031aa:    46c0        .F      MOV      r8,r8
    $d
    __arm_cp.3_0
        0x200031ac:    2000b94c    L..     DCD    536918348
    __arm_cp.3_1
        0x200031b0:    2000e0c8    ...     DCD    536928456
    __arm_cp.3_2
        0x200031b4:    e000ed10    ....    DCD    3758157072
    __arm_cp.3_3
        0x200031b8:    2000e0c4    ...     DCD    536928452
    $t
    .text
    Reset_Handler
        0x200031bc:    4819        .H      LDR      r0,[pc,#100] ; [0x20003224] = 0x20003605
        0x200031be:    4780        .G      BLX      r0
        0x200031c0:    4819        .H      LDR      r0,[pc,#100] ; [0x20003228] = 0x200030c1
        0x200031c2:    4700        .G      BX       r0
    NMI_Handler
        0x200031c4:    4670        pF      MOV      r0,lr
        0x200031c6:    f3ef8108    ....    MRS      r1,MSP
        0x200031ca:    f3ef8209    ....    MRS      r2,PSP
        0x200031ce:    4b17        .K      LDR      r3,[pc,#92] ; [0x2000322c] = 0x200034a5
        0x200031d0:    4798        .G      BLX      r3
        0x200031d2:    e7fe        ..      B        0x200031d2 ; NMI_Handler + 14
    HardFault_Handler
        0x200031d4:    4670        pF      MOV      r0,lr
        0x200031d6:    f3ef8108    ....    MRS      r1,MSP
        0x200031da:    f3ef8209    ....    MRS      r2,PSP
        0x200031de:    4b14        .K      LDR      r3,[pc,#80] ; [0x20003230] = 0x20003369
        0x200031e0:    4798        .G      BLX      r3
        0x200031e2:    e7fe        ..      B        0x200031e2 ; HardFault_Handler + 14
    RTC_CH3_IRQ_Handler
        0x200031e4:    e7fe        ..      B        RTC_CH3_IRQ_Handler ; 0x200031e4
    GPADC1_IRQ_Handler
        0x200031e6:    e7fe        ..      B        GPADC1_IRQ_Handler ; 0x200031e6
        0x200031e8:    e7fe        ..      B        0x200031e8 ; GPADC1_IRQ_Handler + 2
    I2S_IRQ_Handler
        0x200031ea:    e7fe        ..      B        I2S_IRQ_Handler ; 0x200031ea
    I2C2_IRQ_Handler
        0x200031ec:    e7fe        ..      B        I2C2_IRQ_Handler ; 0x200031ec
    CIC1_IRQ_Handler
        0x200031ee:    e7fe        ..      B        CIC1_IRQ_Handler ; 0x200031ee
    CRYPT_IRQ_Handler
        0x200031f0:    e7fe        ..      B        CRYPT_IRQ_Handler ; 0x200031f0
    TRNG_IRQ_Handler
        0x200031f2:    e7fe        ..      B        TRNG_IRQ_Handler ; 0x200031f2
    RF_CAL_IRQ_Handler
        0x200031f4:    e7fe        ..      B        RF_CAL_IRQ_Handler ; 0x200031f4
    UART0_IRQ_Handler
        0x200031f6:    e7fe        ..      B        UART0_IRQ_Handler ; 0x200031f6
    UART1_IRQ_Handler
        0x200031f8:    e7fe        ..      B        UART1_IRQ_Handler ; 0x200031f8
    UART2_IRQ_Handler
        0x200031fa:    e7fe        ..      B        UART2_IRQ_Handler ; 0x200031fa
    SPI0_IRQ_Handler
        0x200031fc:    e7fe        ..      B        SPI0_IRQ_Handler ; 0x200031fc
    SPI1_IRQ_Handler
        0x200031fe:    e7fe        ..      B        SPI1_IRQ_Handler ; 0x200031fe
    DMA_IRQ4_Handler
        0x20003200:    e7fe        ..      B        DMA_IRQ4_Handler ; 0x20003200
    DMA_IRQ5_Handler
        0x20003202:    e7fe        ..      B        DMA_IRQ5_Handler ; 0x20003202
    I2C3_IRQ_Handler
        0x20003204:    e7fe        ..      B        I2C3_IRQ_Handler ; 0x20003204
    DMA_IRQ6_Handler
        0x20003206:    e7fe        ..      B        DMA_IRQ6_Handler ; 0x20003206
    DMA_IRQ7_Handler
        0x20003208:    e7fe        ..      B        DMA_IRQ7_Handler ; 0x20003208
    SW_IRQ1_Handler
        0x2000320a:    e7fe        ..      B        SW_IRQ1_Handler ; 0x2000320a
    TIMER2_IRQ_Handler
        0x2000320c:    e7fe        ..      B        TIMER2_IRQ_Handler ; 0x2000320c
    STIM1_IRQ0_Handler
        0x2000320e:    e7fe        ..      B        STIM1_IRQ0_Handler ; 0x2000320e
    GPIO_IRQ2_Handler
        0x20003210:    e7fe        ..      B        GPIO_IRQ2_Handler ; 0x20003210
        0x20003212:    e7fe        ..      B        0x20003212 ; GPIO_IRQ2_Handler + 2
    STIM1_IRQ1_Handler
        0x20003214:    e7fe        ..      B        STIM1_IRQ1_Handler ; 0x20003214
    STIM1_IRQ2_Handler
        0x20003216:    e7fe        ..      B        STIM1_IRQ2_Handler ; 0x20003216
    USB_IRQ_Handler
        0x20003218:    e7fe        ..      B        USB_IRQ_Handler ; 0x20003218
    TIMER3_IRQ_Handler
        0x2000321a:    e7fe        ..      B        TIMER3_IRQ_Handler ; 0x2000321a
    SW_IRQ0_Handler
        0x2000321c:    e7fe        ..      B        SW_IRQ0_Handler ; 0x2000321c
    SW_IRQ2_Handler
        0x2000321e:    e7fe        ..      B        SW_IRQ2_Handler ; 0x2000321e
    USB_PHY_IRQ_Handler
        0x20003220:    e7fe        ..      B        USB_PHY_IRQ_Handler ; 0x20003220
        0x20003222:    e7fe        ..      B        0x20003222 ; USB_PHY_IRQ_Handler + 2
    $d
        0x20003224:    20003605    .6.     DCD    536884741
        0x20003228:    200030c1    .0.     DCD    536883393
        0x2000322c:    200034a5    .4.     DCD    536884389
        0x20003230:    20003369    i3.     DCD    536884073
    $t
    .text
    __aeabi_uldivmod
        0x20003234:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20003236:    b41f        ..      PUSH     {r0-r4}
        0x20003238:    4606        .F      MOV      r6,r0
        0x2000323a:    2000        .       MOVS     r0,#0
        0x2000323c:    b082        ..      SUB      sp,sp,#8
        0x2000323e:    4605        .F      MOV      r5,r0
        0x20003240:    2440        @$      MOVS     r4,#0x40
        0x20003242:    9101        ..      STR      r1,[sp,#4]
        0x20003244:    9000        ..      STR      r0,[sp,#0]
        0x20003246:    e01b        ..      B        0x20003280 ; __aeabi_uldivmod + 76
        0x20003248:    9901        ..      LDR      r1,[sp,#4]
        0x2000324a:    4622        "F      MOV      r2,r4
        0x2000324c:    460f        .F      MOV      r7,r1
        0x2000324e:    4630        0F      MOV      r0,r6
        0x20003250:    f000f879    ..y.    BL       __aeabi_llsr ; 0x20003346
        0x20003254:    9a04        ..      LDR      r2,[sp,#0x10]
        0x20003256:    9b05        ..      LDR      r3,[sp,#0x14]
        0x20003258:    1a80        ..      SUBS     r0,r0,r2
        0x2000325a:    4199        .A      SBCS     r1,r1,r3
        0x2000325c:    d310        ..      BCC      0x20003280 ; __aeabi_uldivmod + 76
        0x2000325e:    4610        .F      MOV      r0,r2
        0x20003260:    4619        .F      MOV      r1,r3
        0x20003262:    4622        "F      MOV      r2,r4
        0x20003264:    f000f85f    .._.    BL       __aeabi_llsl ; 0x20003326
        0x20003268:    1a36        6.      SUBS     r6,r6,r0
        0x2000326a:    418f        .A      SBCS     r7,r7,r1
        0x2000326c:    9701        ..      STR      r7,[sp,#4]
        0x2000326e:    4622        "F      MOV      r2,r4
        0x20003270:    2001        .       MOVS     r0,#1
        0x20003272:    2100        .!      MOVS     r1,#0
        0x20003274:    9f00        ..      LDR      r7,[sp,#0]
        0x20003276:    f000f856    ..V.    BL       __aeabi_llsl ; 0x20003326
        0x2000327a:    1838        8.      ADDS     r0,r7,r0
        0x2000327c:    414d        MA      ADCS     r5,r5,r1
        0x2000327e:    9000        ..      STR      r0,[sp,#0]
        0x20003280:    4620         F      MOV      r0,r4
        0x20003282:    1e64        d.      SUBS     r4,r4,#1
        0x20003284:    2800        .(      CMP      r0,#0
        0x20003286:    dcdf        ..      BGT      0x20003248 ; __aeabi_uldivmod + 20
        0x20003288:    9b01        ..      LDR      r3,[sp,#4]
        0x2000328a:    9800        ..      LDR      r0,[sp,#0]
        0x2000328c:    4629        )F      MOV      r1,r5
        0x2000328e:    4632        2F      MOV      r2,r6
        0x20003290:    b007        ..      ADD      sp,sp,#0x1c
        0x20003292:    bdf0        ..      POP      {r4-r7,pc}
    .text
    __aeabi_lmul
    _ll_mul
        0x20003294:    b530        0.      PUSH     {r4,r5,lr}
        0x20003296:    4343        CC      MULS     r3,r0,r3
        0x20003298:    4351        QC      MULS     r1,r2,r1
        0x2000329a:    185c        \.      ADDS     r4,r3,r1
        0x2000329c:    0c01        ..      LSRS     r1,r0,#16
        0x2000329e:    0c13        ..      LSRS     r3,r2,#16
        0x200032a0:    460d        .F      MOV      r5,r1
        0x200032a2:    435d        ]C      MULS     r5,r3,r5
        0x200032a4:    192c        ,.      ADDS     r4,r5,r4
        0x200032a6:    b280        ..      UXTH     r0,r0
        0x200032a8:    b292        ..      UXTH     r2,r2
        0x200032aa:    4605        .F      MOV      r5,r0
        0x200032ac:    4355        UC      MULS     r5,r2,r5
        0x200032ae:    4351        QC      MULS     r1,r2,r1
        0x200032b0:    0c0a        ..      LSRS     r2,r1,#16
        0x200032b2:    0409        ..      LSLS     r1,r1,#16
        0x200032b4:    194d        M.      ADDS     r5,r1,r5
        0x200032b6:    4162        bA      ADCS     r2,r2,r4
        0x200032b8:    4358        XC      MULS     r0,r3,r0
        0x200032ba:    0c01        ..      LSRS     r1,r0,#16
        0x200032bc:    0400        ..      LSLS     r0,r0,#16
        0x200032be:    1940        @.      ADDS     r0,r0,r5
        0x200032c0:    4151        QA      ADCS     r1,r1,r2
        0x200032c2:    bd30        0.      POP      {r4,r5,pc}
    .text
    __aeabi_memcpy
    __aeabi_memcpy4
    __aeabi_memcpy8
        0x200032c4:    4603        .F      MOV      r3,r0
        0x200032c6:    430b        .C      ORRS     r3,r3,r1
        0x200032c8:    079b        ..      LSLS     r3,r3,#30
        0x200032ca:    d003        ..      BEQ      0x200032d4 ; __aeabi_memcpy + 16
        0x200032cc:    e009        ..      B        0x200032e2 ; __aeabi_memcpy + 30
        0x200032ce:    c908        ..      LDM      r1!,{r3}
        0x200032d0:    1f12        ..      SUBS     r2,r2,#4
        0x200032d2:    c008        ..      STM      r0!,{r3}
        0x200032d4:    2a04        .*      CMP      r2,#4
        0x200032d6:    d2fa        ..      BCS      0x200032ce ; __aeabi_memcpy + 10
        0x200032d8:    e003        ..      B        0x200032e2 ; __aeabi_memcpy + 30
        0x200032da:    780b        .x      LDRB     r3,[r1,#0]
        0x200032dc:    7003        .p      STRB     r3,[r0,#0]
        0x200032de:    1c40        @.      ADDS     r0,r0,#1
        0x200032e0:    1c49        I.      ADDS     r1,r1,#1
        0x200032e2:    1e52        R.      SUBS     r2,r2,#1
        0x200032e4:    d2f9        ..      BCS      0x200032da ; __aeabi_memcpy + 22
        0x200032e6:    4770        pG      BX       lr
    .text
    __aeabi_uidiv
    __aeabi_uidivmod
        0x200032e8:    b570        p.      PUSH     {r4-r6,lr}
        0x200032ea:    4604        .F      MOV      r4,r0
        0x200032ec:    2900        .)      CMP      r1,#0
        0x200032ee:    d003        ..      BEQ      0x200032f8 ; __aeabi_uidiv + 16
        0x200032f0:    2000        .       MOVS     r0,#0
        0x200032f2:    2220         "      MOVS     r2,#0x20
        0x200032f4:    2301        .#      MOVS     r3,#1
        0x200032f6:    e010        ..      B        0x2000331a ; __aeabi_uidiv + 50
        0x200032f8:    2800        .(      CMP      r0,#0
        0x200032fa:    d001        ..      BEQ      0x20003300 ; __aeabi_uidiv + 24
        0x200032fc:    2000        .       MOVS     r0,#0
        0x200032fe:    43c0        .C      MVNS     r0,r0
        0x20003300:    46c0        .F      MOV      r8,r8
        0x20003302:    46c0        .F      MOV      r8,r8
        0x20003304:    e00d        ..      B        0x20003322 ; __aeabi_uidiv + 58
        0x20003306:    4625        %F      MOV      r5,r4
        0x20003308:    40d5        .@      LSRS     r5,r5,r2
        0x2000330a:    428d        .B      CMP      r5,r1
        0x2000330c:    d305        ..      BCC      0x2000331a ; __aeabi_uidiv + 50
        0x2000330e:    460d        .F      MOV      r5,r1
        0x20003310:    4095        .@      LSLS     r5,r5,r2
        0x20003312:    1b64        d.      SUBS     r4,r4,r5
        0x20003314:    461d        .F      MOV      r5,r3
        0x20003316:    4095        .@      LSLS     r5,r5,r2
        0x20003318:    1940        @.      ADDS     r0,r0,r5
        0x2000331a:    4615        .F      MOV      r5,r2
        0x2000331c:    1e52        R.      SUBS     r2,r2,#1
        0x2000331e:    2d00        .-      CMP      r5,#0
        0x20003320:    dcf1        ..      BGT      0x20003306 ; __aeabi_uidiv + 30
        0x20003322:    4621        !F      MOV      r1,r4
        0x20003324:    bd70        p.      POP      {r4-r6,pc}
    .text
    __aeabi_llsl
    _ll_shift_l
        0x20003326:    b510        ..      PUSH     {r4,lr}
        0x20003328:    2a20         *      CMP      r2,#0x20
        0x2000332a:    db04        ..      BLT      0x20003336 ; __aeabi_llsl + 16
        0x2000332c:    4601        .F      MOV      r1,r0
        0x2000332e:    3a20         :      SUBS     r2,r2,#0x20
        0x20003330:    4091        .@      LSLS     r1,r1,r2
        0x20003332:    2000        .       MOVS     r0,#0
        0x20003334:    bd10        ..      POP      {r4,pc}
        0x20003336:    4091        .@      LSLS     r1,r1,r2
        0x20003338:    2320         #      MOVS     r3,#0x20
        0x2000333a:    1a9c        ..      SUBS     r4,r3,r2
        0x2000333c:    4603        .F      MOV      r3,r0
        0x2000333e:    40e3        .@      LSRS     r3,r3,r4
        0x20003340:    4319        .C      ORRS     r1,r1,r3
        0x20003342:    4090        .@      LSLS     r0,r0,r2
        0x20003344:    bd10        ..      POP      {r4,pc}
    .text
    __aeabi_llsr
    _ll_ushift_r
        0x20003346:    b510        ..      PUSH     {r4,lr}
        0x20003348:    2a20         *      CMP      r2,#0x20
        0x2000334a:    db04        ..      BLT      0x20003356 ; __aeabi_llsr + 16
        0x2000334c:    4608        .F      MOV      r0,r1
        0x2000334e:    3a20         :      SUBS     r2,r2,#0x20
        0x20003350:    40d0        .@      LSRS     r0,r0,r2
        0x20003352:    2100        .!      MOVS     r1,#0
        0x20003354:    bd10        ..      POP      {r4,pc}
        0x20003356:    460b        .F      MOV      r3,r1
        0x20003358:    40d3        .@      LSRS     r3,r3,r2
        0x2000335a:    40d0        .@      LSRS     r0,r0,r2
        0x2000335c:    2420         $      MOVS     r4,#0x20
        0x2000335e:    1aa2        ..      SUBS     r2,r4,r2
        0x20003360:    4091        .@      LSLS     r1,r1,r2
        0x20003362:    4308        .C      ORRS     r0,r0,r1
        0x20003364:    4619        .F      MOV      r1,r3
        0x20003366:    bd10        ..      POP      {r4,pc}
    HardFault_Handler_Proc
        0x20003368:    4615        .F      MOV      r5,r2
        0x2000336a:    460c        .F      MOV      r4,r1
        0x2000336c:    4606        .F      MOV      r6,r0
        0x2000336e:    f000f9d5    ....    BL       app_debug_reinit ; 0x2000371c
        0x20003372:    f3ef8108    ....    MRS      r1,MSP
        0x20003376:    481d        .H      LDR      r0,[pc,#116] ; [0x200033ec] = 0x200078fa
        0x20003378:    f003fff4    ....    BL       __0printf$8 ; 0x20007364
        0x2000337c:    0730        0.      LSLS     r0,r6,#28
        0x2000337e:    d501        ..      BPL      0x20003384 ; HardFault_Handler_Proc + 28
        0x20003380:    481c        .H      LDR      r0,[pc,#112] ; [0x200033f4] = 0x20007922
        0x20003382:    e000        ..      B        0x20003386 ; HardFault_Handler_Proc + 30
        0x20003384:    481a        .H      LDR      r0,[pc,#104] ; [0x200033f0] = 0x20007941
        0x20003386:    f004fa37    ..7.    BL       puts ; 0x200077f8
        0x2000338a:    2004        .       MOVS     r0,#4
        0x2000338c:    4006        .@      ANDS     r6,r6,r0
        0x2000338e:    d001        ..      BEQ      0x20003394 ; HardFault_Handler_Proc + 44
        0x20003390:    a01a        ..      ADR      r0,{pc}+0x6c ; 0x200033fc
        0x20003392:    e000        ..      B        0x20003396 ; HardFault_Handler_Proc + 46
        0x20003394:    4818        .H      LDR      r0,[pc,#96] ; [0x200033f8] = 0x20007933
        0x20003396:    f004fa2f    ../.    BL       puts ; 0x200077f8
        0x2000339a:    a01c        ..      ADR      r0,{pc}+0x72 ; 0x2000340c
        0x2000339c:    f004fa2c    ..,.    BL       puts ; 0x200077f8
        0x200033a0:    2e00        ..      CMP      r6,#0
        0x200033a2:    d000        ..      BEQ      0x200033a6 ; HardFault_Handler_Proc + 62
        0x200033a4:    462c        ,F      MOV      r4,r5
        0x200033a6:    6821        !h      LDR      r1,[r4,#0]
        0x200033a8:    a01c        ..      ADR      r0,{pc}+0x74 ; 0x2000341c
        0x200033aa:    f003ffdb    ....    BL       __0printf$8 ; 0x20007364
        0x200033ae:    6861        ah      LDR      r1,[r4,#4]
        0x200033b0:    a01e        ..      ADR      r0,{pc}+0x7c ; 0x2000342c
        0x200033b2:    f003ffd7    ....    BL       __0printf$8 ; 0x20007364
        0x200033b6:    68a1        .h      LDR      r1,[r4,#8]
        0x200033b8:    a020         .      ADR      r0,{pc}+0x84 ; 0x2000343c
        0x200033ba:    f003ffd3    ....    BL       __0printf$8 ; 0x20007364
        0x200033be:    68e1        .h      LDR      r1,[r4,#0xc]
        0x200033c0:    a022        ".      ADR      r0,{pc}+0x8c ; 0x2000344c
        0x200033c2:    f003ffcf    ....    BL       __0printf$8 ; 0x20007364
        0x200033c6:    6921        !i      LDR      r1,[r4,#0x10]
        0x200033c8:    a024        $.      ADR      r0,{pc}+0x94 ; 0x2000345c
        0x200033ca:    f003ffcb    ....    BL       __0printf$8 ; 0x20007364
        0x200033ce:    6961        ai      LDR      r1,[r4,#0x14]
        0x200033d0:    a026        &.      ADR      r0,{pc}+0x9c ; 0x2000346c
        0x200033d2:    f003ffc7    ....    BL       __0printf$8 ; 0x20007364
        0x200033d6:    69a1        .i      LDR      r1,[r4,#0x18]
        0x200033d8:    a028        (.      ADR      r0,{pc}+0xa4 ; 0x2000347c
        0x200033da:    f003ffc3    ....    BL       __0printf$8 ; 0x20007364
        0x200033de:    69e1        .i      LDR      r1,[r4,#0x1c]
        0x200033e0:    a02a        *.      ADR      r0,{pc}+0xac ; 0x2000348c
        0x200033e2:    f003ffbf    ....    BL       __0printf$8 ; 0x20007364
        0x200033e6:    f000f96d    ..m.    BL       app_debug_printf ; 0x200036c4
        0x200033ea:    e7fe        ..      B        0x200033ea ; HardFault_Handler_Proc + 130
    $d
    __arm_cp.1_0
        0x200033ec:    200078fa    .x.     DCD    536901882
    __arm_cp.1_1
        0x200033f0:    20007941    Ay.     DCD    536901953
    __arm_cp.1_2
        0x200033f4:    20007922    "y.     DCD    536901922
    __arm_cp.1_3
        0x200033f8:    20007933    3y.     DCD    536901939
        0x200033fc:    6e697355    Usin    DCD    1852404565
        0x20003400:    33752067    g u3    DCD    863314023
        0x20003404:    70735032    2Psp    DCD    1886605362
        0x20003408:    0000002e    ....    DCD    46
        0x2000340c:    63617453    Stac    DCD    1667331155
        0x20003410:    7266206b    k fr    DCD    1919295595
        0x20003414:    3a656d61    ame:    DCD    979725665
        0x20003418:    00000000    ....    DCD    0
        0x2000341c:    20203052    R0      DCD    538980434
        0x20003420:    7830203a    : 0x    DCD    2016419898
        0x20003424:    58383025    %08X    DCD    1480077349
        0x20003428:    0000000a    ....    DCD    10
        0x2000342c:    20203152    R1      DCD    538980690
        0x20003430:    7830203a    : 0x    DCD    2016419898
        0x20003434:    58383025    %08X    DCD    1480077349
        0x20003438:    0000000a    ....    DCD    10
        0x2000343c:    20203252    R2      DCD    538980946
        0x20003440:    7830203a    : 0x    DCD    2016419898
        0x20003444:    58383025    %08X    DCD    1480077349
        0x20003448:    0000000a    ....    DCD    10
        0x2000344c:    20203352    R3      DCD    538981202
        0x20003450:    7830203a    : 0x    DCD    2016419898
        0x20003454:    58383025    %08X    DCD    1480077349
        0x20003458:    0000000a    ....    DCD    10
        0x2000345c:    20323152    R12     DCD    540160338
        0x20003460:    7830203a    : 0x    DCD    2016419898
        0x20003464:    58383025    %08X    DCD    1480077349
        0x20003468:    0000000a    ....    DCD    10
        0x2000346c:    2020524c    LR      DCD    538989132
        0x20003470:    7830203a    : 0x    DCD    2016419898
        0x20003474:    58383025    %08X    DCD    1480077349
        0x20003478:    0000000a    ....    DCD    10
        0x2000347c:    20204350    PC      DCD    538985296
        0x20003480:    7830203a    : 0x    DCD    2016419898
        0x20003484:    58383025    %08X    DCD    1480077349
        0x20003488:    0000000a    ....    DCD    10
        0x2000348c:    52535078    xPSR    DCD    1381191800
        0x20003490:    7830203a    : 0x    DCD    2016419898
        0x20003494:    58383025    %08X    DCD    1480077349
        0x20003498:    0000000a    ....    DCD    10
    $t
    LLC_IRQ_Handler
        0x2000349c:    b580        ..      PUSH     {r7,lr}
        0x2000349e:    f003fa8d    ....    BL       $Ven$TT$L$$rom_llp_hw_int_irq_handler ; 0x200069bc
        0x200034a2:    bd80        ..      POP      {r7,pc}
    NMI_Handler_Proc
        0x200034a4:    4614        .F      MOV      r4,r2
        0x200034a6:    460d        .F      MOV      r5,r1
        0x200034a8:    4606        .F      MOV      r6,r0
        0x200034aa:    f000f937    ..7.    BL       app_debug_reinit ; 0x2000371c
        0x200034ae:    a004        ..      ADR      r0,{pc}+0x12 ; 0x200034c0
        0x200034b0:    4631        1F      MOV      r1,r6
        0x200034b2:    462a        *F      MOV      r2,r5
        0x200034b4:    4623        #F      MOV      r3,r4
        0x200034b6:    f003ff55    ..U.    BL       __0printf$8 ; 0x20007364
        0x200034ba:    f000f903    ....    BL       app_debug_printf ; 0x200036c4
        0x200034be:    e7fe        ..      B        0x200034be ; NMI_Handler_Proc + 26
    $d
        0x200034c0:    5f494d4e    NMI_    DCD    1598639438
        0x200034c4:    646e6148    Hand    DCD    1684955464
        0x200034c8:    3a72656c    ler:    DCD    980575596
        0x200034cc:    38302520     %08    DCD    942679328
        0x200034d0:    25202c58    X, %    DCD    622865496
        0x200034d4:    2c583830    08X,    DCD    743979056
        0x200034d8:    38302520     %08    DCD    942679328
        0x200034dc:    00000a58    X...    DCD    2648
    $t
    PMU_IRQ_Handler
        0x200034e0:    b510        ..      PUSH     {r4,lr}
        0x200034e2:    b082        ..      SUB      sp,sp,#8
        0x200034e4:    ac01        ..      ADD      r4,sp,#4
        0x200034e6:    4620         F      MOV      r0,r4
        0x200034e8:    f003fa6e    ..n.    BL       $Ven$TT$L$$rom_hw_pmu_get_interrupt_flag ; 0x200069c8
        0x200034ec:    9801        ..      LDR      r0,[sp,#4]
        0x200034ee:    f003fa71    ..q.    BL       $Ven$TT$L$$rom_hw_pmu_clear_interrupt_flag ; 0x200069d4
        0x200034f2:    7860        `x      LDRB     r0,[r4,#1]
        0x200034f4:    0600        ..      LSLS     r0,r0,#24
        0x200034f6:    d501        ..      BPL      0x200034fc ; PMU_IRQ_Handler + 28
        0x200034f8:    f001f8d4    ....    BL       ble_init_on_system_wakeup_by_llc ; 0x200046a4
        0x200034fc:    b002        ..      ADD      sp,sp,#8
        0x200034fe:    bd10        ..      POP      {r4,pc}
    STIM1_IRQ3_Handler
        0x20003500:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20003502:    b085        ..      SUB      sp,sp,#0x14
        0x20003504:    2500        .%      MOVS     r5,#0
        0x20003506:    9503        ..      STR      r5,[sp,#0xc]
        0x20003508:    4c3b        ;L      LDR      r4,[pc,#236] ; [0x200035f8] = 0x60053000
        0x2000350a:    ae04        ..      ADD      r6,sp,#0x10
        0x2000350c:    4620         F      MOV      r0,r4
        0x2000350e:    4631        1F      MOV      r1,r6
        0x20003510:    f003fa66    ..f.    BL       $Ven$TT$L$$rom_hw_stim_get_interrupt_flag ; 0x200069e0
        0x20003514:    8830        0.      LDRH     r0,[r6,#0]
        0x20003516:    2108        .!      MOVS     r1,#8
        0x20003518:    4001        .@      ANDS     r1,r1,r0
        0x2000351a:    2001        .       MOVS     r0,#1
        0x2000351c:    9001        ..      STR      r0,[sp,#4]
        0x2000351e:    07c6        ..      LSLS     r6,r0,#31
        0x20003520:    2900        .)      CMP      r1,#0
        0x20003522:    d007        ..      BEQ      0x20003534 ; STIM1_IRQ3_Handler + 52
        0x20003524:    4620         F      MOV      r0,r4
        0x20003526:    f003fa61    ..a.    BL       $Ven$TT$L$$rom_hw_stim_clear_interrupt_flag ; 0x200069ec
        0x2000352a:    2064        d       MOVS     r0,#0x64
        0x2000352c:    f003fa64    ..d.    BL       $Ven$TT$L$$rom_delay_us ; 0x200069f8
        0x20003530:    4832        2H      LDR      r0,[pc,#200] ; [0x200035fc] = 0xe000e200
        0x20003532:    6006        .`      STR      r6,[r0,#0]
        0x20003534:    2103        .!      MOVS     r1,#3
        0x20003536:    aa03        ..      ADD      r2,sp,#0xc
        0x20003538:    4620         F      MOV      r0,r4
        0x2000353a:    f003fa63    ..c.    BL       $Ven$TT$L$$rom_hw_stim_get_compare ; 0x20006a04
        0x2000353e:    4830        0H      LDR      r0,[pc,#192] ; [0x20003600] = 0x2000b9ec
        0x20003540:    6804        .h      LDR      r4,[r0,#0]
        0x20003542:    e003        ..      B        0x2000354c ; STIM1_IRQ3_Handler + 76
        0x20003544:    f003f9a6    ....    BL       timer_config ; 0x20006894
        0x20003548:    482c        ,H      LDR      r0,[pc,#176] ; [0x200035fc] = 0xe000e200
        0x2000354a:    6006        .`      STR      r6,[r0,#0]
        0x2000354c:    2c00        .,      CMP      r4,#0
        0x2000354e:    d025        %.      BEQ      0x2000359c ; STIM1_IRQ3_Handler + 156
        0x20003550:    4620         F      MOV      r0,r4
        0x20003552:    6aa4        .j      LDR      r4,[r4,#0x28]
        0x20003554:    7d01        .}      LDRB     r1,[r0,#0x14]
        0x20003556:    2900        .)      CMP      r1,#0
        0x20003558:    d1f4        ..      BNE      0x20003544 ; STIM1_IRQ3_Handler + 68
        0x2000355a:    7d41        A}      LDRB     r1,[r0,#0x15]
        0x2000355c:    2901        .)      CMP      r1,#1
        0x2000355e:    d0f1        ..      BEQ      0x20003544 ; STIM1_IRQ3_Handler + 68
        0x20003560:    7d81        .}      LDRB     r1,[r0,#0x16]
        0x20003562:    2902        .)      CMP      r1,#2
        0x20003564:    d1f2        ..      BNE      0x2000354c ; STIM1_IRQ3_Handler + 76
        0x20003566:    a902        ..      ADD      r1,sp,#8
        0x20003568:    4607        .F      MOV      r7,r0
        0x2000356a:    4823        #H      LDR      r0,[pc,#140] ; [0x200035f8] = 0x60053000
        0x2000356c:    f003fa50    ..P.    BL       $Ven$TT$L$$rom_hw_stim_get_count ; 0x20006a10
        0x20003570:    4638        8F      MOV      r0,r7
        0x20003572:    68ba        .h      LDR      r2,[r7,#8]
        0x20003574:    68fb        .h      LDR      r3,[r7,#0xc]
        0x20003576:    9902        ..      LDR      r1,[sp,#8]
        0x20003578:    429a        .B      CMP      r2,r3
        0x2000357a:    d204        ..      BCS      0x20003586 ; STIM1_IRQ3_Handler + 134
        0x2000357c:    4291        .B      CMP      r1,r2
        0x2000357e:    d3e5        ..      BCC      0x2000354c ; STIM1_IRQ3_Handler + 76
        0x20003580:    4299        .B      CMP      r1,r3
        0x20003582:    d304        ..      BCC      0x2000358e ; STIM1_IRQ3_Handler + 142
        0x20003584:    e7e2        ..      B        0x2000354c ; STIM1_IRQ3_Handler + 76
        0x20003586:    4299        .B      CMP      r1,r3
        0x20003588:    d301        ..      BCC      0x2000358e ; STIM1_IRQ3_Handler + 142
        0x2000358a:    4291        .B      CMP      r1,r2
        0x2000358c:    d3de        ..      BCC      0x2000354c ; STIM1_IRQ3_Handler + 76
        0x2000358e:    69c1        .i      LDR      r1,[r0,#0x1c]
        0x20003590:    2900        .)      CMP      r1,#0
        0x20003592:    d0d7        ..      BEQ      0x20003544 ; STIM1_IRQ3_Handler + 68
        0x20003594:    6a00        .j      LDR      r0,[r0,#0x20]
        0x20003596:    4788        .G      BLX      r1
        0x20003598:    4638        8F      MOV      r0,r7
        0x2000359a:    e7d3        ..      B        0x20003544 ; STIM1_IRQ3_Handler + 68
        0x2000359c:    9600        ..      STR      r6,[sp,#0]
        0x2000359e:    48e9        .H      LDR      r0,[pc,#932] ; [0x20003944] = 0x2000b9ec
        0x200035a0:    6806        .h      LDR      r6,[r0,#0]
        0x200035a2:    2e00        ..      CMP      r6,#0
        0x200035a4:    d018        ..      BEQ      0x200035d8 ; STIM1_IRQ3_Handler + 216
        0x200035a6:    2100        .!      MOVS     r1,#0
        0x200035a8:    9a02        ..      LDR      r2,[sp,#8]
        0x200035aa:    460d        .F      MOV      r5,r1
        0x200035ac:    4812        .H      LDR      r0,[pc,#72] ; [0x200035f8] = 0x60053000
        0x200035ae:    e004        ..      B        0x200035ba ; STIM1_IRQ3_Handler + 186
        0x200035b0:    461d        .F      MOV      r5,r3
        0x200035b2:    4811        .H      LDR      r0,[pc,#68] ; [0x200035f8] = 0x60053000
        0x200035b4:    6ab6        .j      LDR      r6,[r6,#0x28]
        0x200035b6:    2e00        ..      CMP      r6,#0
        0x200035b8:    d010        ..      BEQ      0x200035dc ; STIM1_IRQ3_Handler + 220
        0x200035ba:    7db3        .}      LDRB     r3,[r6,#0x16]
        0x200035bc:    2b02        .+      CMP      r3,#2
        0x200035be:    d1f9        ..      BNE      0x200035b4 ; STIM1_IRQ3_Handler + 180
        0x200035c0:    68b3        .h      LDR      r3,[r6,#8]
        0x200035c2:    07cc        ..      LSLS     r4,r1,#31
        0x200035c4:    d005        ..      BEQ      0x200035d2 ; STIM1_IRQ3_Handler + 210
        0x200035c6:    1aac        ..      SUBS     r4,r5,r2
        0x200035c8:    1a9f        ..      SUBS     r7,r3,r2
        0x200035ca:    42a7        .B      CMP      r7,r4
        0x200035cc:    d3f0        ..      BCC      0x200035b0 ; STIM1_IRQ3_Handler + 176
        0x200035ce:    462b        +F      MOV      r3,r5
        0x200035d0:    e7ee        ..      B        0x200035b0 ; STIM1_IRQ3_Handler + 176
        0x200035d2:    461d        .F      MOV      r5,r3
        0x200035d4:    9901        ..      LDR      r1,[sp,#4]
        0x200035d6:    e7ed        ..      B        0x200035b4 ; STIM1_IRQ3_Handler + 180
        0x200035d8:    4629        )F      MOV      r1,r5
        0x200035da:    4807        .H      LDR      r0,[pc,#28] ; [0x200035f8] = 0x60053000
        0x200035dc:    07c9        ..      LSLS     r1,r1,#31
        0x200035de:    d009        ..      BEQ      0x200035f4 ; STIM1_IRQ3_Handler + 244
        0x200035e0:    9903        ..      LDR      r1,[sp,#0xc]
        0x200035e2:    428d        .B      CMP      r5,r1
        0x200035e4:    d006        ..      BEQ      0x200035f4 ; STIM1_IRQ3_Handler + 244
        0x200035e6:    2103        .!      MOVS     r1,#3
        0x200035e8:    462a        *F      MOV      r2,r5
        0x200035ea:    f003fa17    ....    BL       $Ven$TT$L$$rom_hw_stim_set_compare ; 0x20006a1c
        0x200035ee:    9800        ..      LDR      r0,[sp,#0]
        0x200035f0:    49dd        .I      LDR      r1,[pc,#884] ; [0x20003968] = 0xe000e200
        0x200035f2:    6008        .`      STR      r0,[r1,#0]
        0x200035f4:    b005        ..      ADD      sp,sp,#0x14
        0x200035f6:    bdf0        ..      POP      {r4-r7,pc}
    $d
    __arm_cp.0_0
        0x200035f8:    60053000    .0.`    DCD    1610952704
    __arm_cp.0_1
        0x200035fc:    e000e200    ....    DCD    3758154240
    __arm_cp.0_2
        0x20003600:    2000b9ec    ...     DCD    536918508
    $t
    SystemInit
        0x20003604:    4801        .H      LDR      r0,[pc,#4] ; [0x2000360c] = 0xe000ed08
        0x20003606:    4902        .I      LDR      r1,[pc,#8] ; [0x20003610] = 0x20003000
        0x20003608:    6001        .`      STR      r1,[r0,#0]
        0x2000360a:    4770        pG      BX       lr
    $d
    __arm_cp.0_0
        0x2000360c:    e000ed08    ....    DCD    3758157064
    __arm_cp.0_1
        0x20003610:    20003000    .0.     DCD    536883200
    $t
    app_debug_deinit
        0x20003614:    b570        p.      PUSH     {r4-r6,lr}
        0x20003616:    4d5c        \M      LDR      r5,[pc,#368] ; [0x20003788] = 0x2000ba00
        0x20003618:    6829        )h      LDR      r1,[r5,#0]
        0x2000361a:    4e5a        ZN      LDR      r6,[pc,#360] ; [0x20003784] = 0x2000b95c
        0x2000361c:    6830        0h      LDR      r0,[r6,#0]
        0x2000361e:    2400        .$      MOVS     r4,#0
        0x20003620:    4622        "F      MOV      r2,r4
        0x20003622:    f003fa01    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_input_output ; 0x20006a28
        0x20003626:    6830        0h      LDR      r0,[r6,#0]
        0x20003628:    6829        )h      LDR      r1,[r5,#0]
        0x2000362a:    4622        "F      MOV      r2,r4
        0x2000362c:    f003fa02    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x20006a34
        0x20003630:    4853        SH      LDR      r0,[pc,#332] ; [0x20003780] = 0x2000b960
        0x20003632:    6801        .h      LDR      r1,[r0,#0]
        0x20003634:    4890        .H      LDR      r0,[pc,#576] ; [0x20003878] = 0x60000400
        0x20003636:    4281        .B      CMP      r1,r0
        0x20003638:    d001        ..      BEQ      0x2000363e ; app_debug_deinit + 42
        0x2000363a:    202d        -       MOVS     r0,#0x2d
        0x2000363c:    e000        ..      B        0x20003640 ; app_debug_deinit + 44
        0x2000363e:    202c        ,       MOVS     r0,#0x2c
        0x20003640:    2203        ."      MOVS     r2,#3
        0x20003642:    0752        R.      LSLS     r2,r2,#29
        0x20003644:    4291        .B      CMP      r1,r2
        0x20003646:    d100        ..      BNE      0x2000364a ; app_debug_deinit + 54
        0x20003648:    202b        +       MOVS     r0,#0x2b
        0x2000364a:    f003f9f9    ....    BL       $Ven$TT$L$$rom_hw_crg_disable_clk_gate ; 0x20006a40
        0x2000364e:    bd70        p.      POP      {r4-r6,pc}
    app_debug_init
        0x20003650:    b570        p.      PUSH     {r4-r6,lr}
        0x20003652:    2403        .$      MOVS     r4,#3
        0x20003654:    0765        e.      LSLS     r5,r4,#29
        0x20003656:    2410        .$      MOVS     r4,#0x10
        0x20003658:    42aa        .B      CMP      r2,r5
        0x2000365a:    d005        ..      BEQ      0x20003668 ; app_debug_init + 24
        0x2000365c:    4d10        .M      LDR      r5,[pc,#64] ; [0x200036a0] = 0x60000800
        0x2000365e:    42aa        .B      CMP      r2,r5
        0x20003660:    d002        ..      BEQ      0x20003668 ; app_debug_init + 24
        0x20003662:    4d85        .M      LDR      r5,[pc,#532] ; [0x20003878] = 0x60000400
        0x20003664:    42aa        .B      CMP      r2,r5
        0x20003666:    d119        ..      BNE      0x2000369c ; app_debug_init + 76
        0x20003668:    2580        .%      MOVS     r5,#0x80
        0x2000366a:    4305        .C      ORRS     r5,r5,r0
        0x2000366c:    4e81        .N      LDR      r6,[pc,#516] ; [0x20003874] = 0x6004b080
        0x2000366e:    42b5        .B      CMP      r5,r6
        0x20003670:    d114        ..      BNE      0x2000369c ; app_debug_init + 76
        0x20003672:    9c04        ..      LDR      r4,[sp,#0x10]
        0x20003674:    4d26        &M      LDR      r5,[pc,#152] ; [0x20003710] = 0x2000b958
        0x20003676:    602c        ,`      STR      r4,[r5,#0]
        0x20003678:    2c00        .,      CMP      r4,#0
        0x2000367a:    d004        ..      BEQ      0x20003686 ; app_debug_init + 54
        0x2000367c:    4c26        &L      LDR      r4,[pc,#152] ; [0x20003718] = 0x2000b9f8
        0x2000367e:    2500        .%      MOVS     r5,#0
        0x20003680:    8025        %.      STRH     r5,[r4,#0]
        0x20003682:    4c24        $L      LDR      r4,[pc,#144] ; [0x20003714] = 0x2000b9fa
        0x20003684:    8025        %.      STRH     r5,[r4,#0]
        0x20003686:    4c3f        ?L      LDR      r4,[pc,#252] ; [0x20003784] = 0x2000b95c
        0x20003688:    6020         `      STR      r0,[r4,#0]
        0x2000368a:    483d        =H      LDR      r0,[pc,#244] ; [0x20003780] = 0x2000b960
        0x2000368c:    6002        .`      STR      r2,[r0,#0]
        0x2000368e:    483e        >H      LDR      r0,[pc,#248] ; [0x20003788] = 0x2000ba00
        0x20003690:    6001        .`      STR      r1,[r0,#0]
        0x20003692:    483f        ?H      LDR      r0,[pc,#252] ; [0x20003790] = 0x2000ba04
        0x20003694:    6003        .`      STR      r3,[r0,#0]
        0x20003696:    f000f841    ..A.    BL       app_debug_reinit ; 0x2000371c
        0x2000369a:    4604        .F      MOV      r4,r0
        0x2000369c:    4620         F      MOV      r0,r4
        0x2000369e:    bd70        p.      POP      {r4-r6,pc}
    $d
    __arm_cp.0_0
        0x200036a0:    60000800    ...`    DCD    1610614784
    $t
    app_debug_print_complete
        0x200036a4:    481c        .H      LDR      r0,[pc,#112] ; [0x20003718] = 0x2000b9f8
        0x200036a6:    8800        ..      LDRH     r0,[r0,#0]
        0x200036a8:    b280        ..      UXTH     r0,r0
        0x200036aa:    491a        .I      LDR      r1,[pc,#104] ; [0x20003714] = 0x2000b9fa
        0x200036ac:    8809        ..      LDRH     r1,[r1,#0]
        0x200036ae:    b289        ..      UXTH     r1,r1
        0x200036b0:    1a08        ..      SUBS     r0,r1,r0
        0x200036b2:    4241        AB      RSBS     r1,r0,#0
        0x200036b4:    4141        AA      ADCS     r1,r1,r0
        0x200036b6:    4816        .H      LDR      r0,[pc,#88] ; [0x20003710] = 0x2000b958
        0x200036b8:    6802        .h      LDR      r2,[r0,#0]
        0x200036ba:    4250        PB      RSBS     r0,r2,#0
        0x200036bc:    4150        PA      ADCS     r0,r0,r2
        0x200036be:    4308        .C      ORRS     r0,r0,r1
        0x200036c0:    4770        pG      BX       lr
        0x200036c2:    46c0        .F      MOV      r8,r8
    app_debug_printf
        0x200036c4:    b5f0        ..      PUSH     {r4-r7,lr}
        0x200036c6:    b081        ..      SUB      sp,sp,#4
        0x200036c8:    4c11        .L      LDR      r4,[pc,#68] ; [0x20003710] = 0x2000b958
        0x200036ca:    6820         h      LDR      r0,[r4,#0]
        0x200036cc:    2800        .(      CMP      r0,#0
        0x200036ce:    d005        ..      BEQ      0x200036dc ; app_debug_printf + 24
        0x200036d0:    4d10        .M      LDR      r5,[pc,#64] ; [0x20003714] = 0x2000b9fa
        0x200036d2:    8828        (.      LDRH     r0,[r5,#0]
        0x200036d4:    4e10        .N      LDR      r6,[pc,#64] ; [0x20003718] = 0x2000b9f8
        0x200036d6:    8831        1.      LDRH     r1,[r6,#0]
        0x200036d8:    4288        .B      CMP      r0,r1
        0x200036da:    d101        ..      BNE      0x200036e0 ; app_debug_printf + 28
        0x200036dc:    b001        ..      ADD      sp,sp,#4
        0x200036de:    bdf0        ..      POP      {r4-r7,pc}
        0x200036e0:    4f27        'O      LDR      r7,[pc,#156] ; [0x20003780] = 0x2000b960
        0x200036e2:    e004        ..      B        0x200036ee ; app_debug_printf + 42
        0x200036e4:    8028        (.      STRH     r0,[r5,#0]
        0x200036e6:    b281        ..      UXTH     r1,r0
        0x200036e8:    8832        2.      LDRH     r2,[r6,#0]
        0x200036ea:    4291        .B      CMP      r1,r2
        0x200036ec:    d0f6        ..      BEQ      0x200036dc ; app_debug_printf + 24
        0x200036ee:    b280        ..      UXTH     r0,r0
        0x200036f0:    6821        !h      LDR      r1,[r4,#0]
        0x200036f2:    6809        .h      LDR      r1,[r1,#0]
        0x200036f4:    5c09        .\      LDRB     r1,[r1,r0]
        0x200036f6:    6838        8h      LDR      r0,[r7,#0]
        0x200036f8:    f003f9a8    ....    BL       $Ven$TT$L$$rom_hw_uart_send_byte ; 0x20006a4c
        0x200036fc:    6820         h      LDR      r0,[r4,#0]
        0x200036fe:    8881        ..      LDRH     r1,[r0,#4]
        0x20003700:    8828        (.      LDRH     r0,[r5,#0]
        0x20003702:    1c40        @.      ADDS     r0,r0,#1
        0x20003704:    b282        ..      UXTH     r2,r0
        0x20003706:    428a        .B      CMP      r2,r1
        0x20003708:    d3ec        ..      BCC      0x200036e4 ; app_debug_printf + 32
        0x2000370a:    2000        .       MOVS     r0,#0
        0x2000370c:    e7ea        ..      B        0x200036e4 ; app_debug_printf + 32
        0x2000370e:    46c0        .F      MOV      r8,r8
    $d
    __arm_cp.4_0
        0x20003710:    2000b958    X..     DCD    536918360
    __arm_cp.4_1
        0x20003714:    2000b9fa    ...     DCD    536918522
    __arm_cp.4_2
        0x20003718:    2000b9f8    ...     DCD    536918520
    $t
    app_debug_reinit
        0x2000371c:    b5f0        ..      PUSH     {r4-r7,lr}
        0x2000371e:    b083        ..      SUB      sp,sp,#0xc
        0x20003720:    4d17        .M      LDR      r5,[pc,#92] ; [0x20003780] = 0x2000b960
        0x20003722:    6828        (h      LDR      r0,[r5,#0]
        0x20003724:    2103        .!      MOVS     r1,#3
        0x20003726:    0749        I.      LSLS     r1,r1,#29
        0x20003728:    4288        .B      CMP      r0,r1
        0x2000372a:    d005        ..      BEQ      0x20003738 ; app_debug_reinit + 28
        0x2000372c:    4952        RI      LDR      r1,[pc,#328] ; [0x20003878] = 0x60000400
        0x2000372e:    4288        .B      CMP      r0,r1
        0x20003730:    d105        ..      BNE      0x2000373e ; app_debug_reinit + 34
        0x20003732:    2408        .$      MOVS     r4,#8
        0x20003734:    202c        ,       MOVS     r0,#0x2c
        0x20003736:    e004        ..      B        0x20003742 ; app_debug_reinit + 38
        0x20003738:    2404        .$      MOVS     r4,#4
        0x2000373a:    202b        +       MOVS     r0,#0x2b
        0x2000373c:    e001        ..      B        0x20003742 ; app_debug_reinit + 38
        0x2000373e:    240c        .$      MOVS     r4,#0xc
        0x20003740:    202d        -       MOVS     r0,#0x2d
        0x20003742:    f003f989    ....    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x20006a58
        0x20003746:    4e0f        .N      LDR      r6,[pc,#60] ; [0x20003784] = 0x2000b95c
        0x20003748:    6830        0h      LDR      r0,[r6,#0]
        0x2000374a:    4f0f        .O      LDR      r7,[pc,#60] ; [0x20003788] = 0x2000ba00
        0x2000374c:    6839        9h      LDR      r1,[r7,#0]
        0x2000374e:    4622        "F      MOV      r2,r4
        0x20003750:    f003f988    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pid ; 0x20006a64
        0x20003754:    2800        .(      CMP      r0,#0
        0x20003756:    d001        ..      BEQ      0x2000375c ; app_debug_reinit + 64
        0x20003758:    b003        ..      ADD      sp,sp,#0xc
        0x2000375a:    bdf0        ..      POP      {r4-r7,pc}
        0x2000375c:    6839        9h      LDR      r1,[r7,#0]
        0x2000375e:    6830        0h      LDR      r0,[r6,#0]
        0x20003760:    2202        ."      MOVS     r2,#2
        0x20003762:    f003f967    ..g.    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x20006a34
        0x20003766:    2800        .(      CMP      r0,#0
        0x20003768:    d1f6        ..      BNE      0x20003758 ; app_debug_reinit + 60
        0x2000376a:    4808        .H      LDR      r0,[pc,#32] ; [0x2000378c] = 0x1013021
        0x2000376c:    9002        ..      STR      r0,[sp,#8]
        0x2000376e:    4808        .H      LDR      r0,[pc,#32] ; [0x20003790] = 0x2000ba04
        0x20003770:    6800        .h      LDR      r0,[r0,#0]
        0x20003772:    9001        ..      STR      r0,[sp,#4]
        0x20003774:    6828        (h      LDR      r0,[r5,#0]
        0x20003776:    a901        ..      ADD      r1,sp,#4
        0x20003778:    f003f97a    ..z.    BL       $Ven$TT$L$$rom_hw_uart_init ; 0x20006a70
        0x2000377c:    b003        ..      ADD      sp,sp,#0xc
        0x2000377e:    bdf0        ..      POP      {r4-r7,pc}
    $d
    __arm_cp.1_0
        0x20003780:    2000b960    `..     DCD    536918368
    __arm_cp.1_2
        0x20003784:    2000b95c    \..     DCD    536918364
    __arm_cp.1_3
        0x20003788:    2000ba00    ...     DCD    536918528
    __arm_cp.1_4
        0x2000378c:    01013021    !0..    DCD    16855073
    __arm_cp.1_5
        0x20003790:    2000ba04    ...     DCD    536918532
    $t
    app_main
        0x20003794:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20003796:    b082        ..      SUB      sp,sp,#8
        0x20003798:    2028        (       MOVS     r0,#0x28
        0x2000379a:    f003f95d    ..].    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x20006a58
        0x2000379e:    200a        .       MOVS     r0,#0xa
        0x200037a0:    f003f95a    ..Z.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x20006a58
        0x200037a4:    200b        .       MOVS     r0,#0xb
        0x200037a6:    f003f957    ..W.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x20006a58
        0x200037aa:    200c        .       MOVS     r0,#0xc
        0x200037ac:    f003f954    ..T.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x20006a58
        0x200037b0:    200d        .       MOVS     r0,#0xd
        0x200037b2:    f003f951    ..Q.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x20006a58
        0x200037b6:    200e        .       MOVS     r0,#0xe
        0x200037b8:    f003f94e    ..N.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x20006a58
        0x200037bc:    200f        .       MOVS     r0,#0xf
        0x200037be:    f003f94b    ..K.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x20006a58
        0x200037c2:    2010        .       MOVS     r0,#0x10
        0x200037c4:    f003f948    ..H.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x20006a58
        0x200037c8:    2035        5       MOVS     r0,#0x35
        0x200037ca:    f003f945    ..E.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x20006a58
        0x200037ce:    2011        .       MOVS     r0,#0x11
        0x200037d0:    f003f942    ..B.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x20006a58
        0x200037d4:    2012        .       MOVS     r0,#0x12
        0x200037d6:    f003f93f    ..?.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x20006a58
        0x200037da:    2400        .$      MOVS     r4,#0
        0x200037dc:    4620         F      MOV      r0,r4
        0x200037de:    4621        !F      MOV      r1,r4
        0x200037e0:    4622        "F      MOV      r2,r4
        0x200037e2:    f003f94b    ..K.    BL       $Ven$TT$L$$rom_hw_sys_ctrl_peri_int_ctrl ; 0x20006a7c
        0x200037e6:    f003f94f    ..O.    BL       $Ven$TT$L$$rom_hw_trng_gen_32bit ; 0x20006a88
        0x200037ea:    f003f953    ..S.    BL       $Ven$TT$L$$rom_rand_init ; 0x20006a94
        0x200037ee:    f000f8bd    ....    BL       app_timer_init ; 0x2000396c
        0x200037f2:    2501        .%      MOVS     r5,#1
        0x200037f4:    0329        ).      LSLS     r1,r5,#12
        0x200037f6:    481d        .H      LDR      r0,[pc,#116] ; [0x2000386c] = 0x2000b964
        0x200037f8:    8081        ..      STRH     r1,[r0,#4]
        0x200037fa:    4a1d        .J      LDR      r2,[pc,#116] ; [0x20003870] = 0x2000bf70
        0x200037fc:    6002        .`      STR      r2,[r0,#0]
        0x200037fe:    9000        ..      STR      r0,[sp,#0]
        0x20003800:    20e1        .       MOVS     r0,#0xe1
        0x20003802:    02c3        ..      LSLS     r3,r0,#11
        0x20003804:    481b        .H      LDR      r0,[pc,#108] ; [0x20003874] = 0x6004b080
        0x20003806:    4a1c        .J      LDR      r2,[pc,#112] ; [0x20003878] = 0x60000400
        0x20003808:    f7ffff22    ..".    BL       app_debug_init ; 0x20003650
        0x2000380c:    a01b        ..      ADR      r0,{pc}+0x70 ; 0x2000387c
        0x2000380e:    a128        (.      ADR      r1,{pc}+0xa2 ; 0x200038b0
        0x20003810:    a22a        *.      ADR      r2,{pc}+0xac ; 0x200038bc
        0x20003812:    f003fda7    ....    BL       __0printf$8 ; 0x20007364
        0x20003816:    f001f849    ..I.    BL       err_debug_init ; 0x200048ac
        0x2000381a:    f000fef1    ....    BL       ble_init ; 0x20004600
        0x2000381e:    f000fd9f    ....    BL       ble_event_init ; 0x20004360
        0x20003822:    f000ffcd    ....    BL       ble_peripheral_init ; 0x200047c0
        0x20003826:    a028        (.      ADR      r0,{pc}+0xa2 ; 0x200038c8
        0x20003828:    2119        .!      MOVS     r1,#0x19
        0x2000382a:    4622        "F      MOV      r2,r4
        0x2000382c:    f000fdb2    ....    BL       ble_gap_service_init ; 0x20004394
        0x20003830:    f000faac    ....    BL       ble_dis_init ; 0x20003d8c
        0x20003834:    f001f870    ..p.    BL       idle_task_init ; 0x20004918
        0x20003838:    2117        .!      MOVS     r1,#0x17
        0x2000383a:    4620         F      MOV      r0,r4
        0x2000383c:    f003f930    ..0.    BL       $Ven$TT$L$$rom_hw_sys_ctrl_enable_peri_int ; 0x20006aa0
        0x20003840:    05e8        ..      LSLS     r0,r5,#23
        0x20003842:    4964        dI      LDR      r1,[pc,#400] ; [0x200039d4] = 0xe000e280
        0x20003844:    6008        .`      STR      r0,[r1,#0]
        0x20003846:    21ff        .!      MOVS     r1,#0xff
        0x20003848:    0609        ..      LSLS     r1,r1,#24
        0x2000384a:    4a26        &J      LDR      r2,[pc,#152] ; [0x200038e4] = 0xe000e414
        0x2000384c:    6813        .h      LDR      r3,[r2,#0]
        0x2000384e:    438b        .C      BICS     r3,r3,r1
        0x20003850:    6013        .`      STR      r3,[r2,#0]
        0x20003852:    4962        bI      LDR      r1,[pc,#392] ; [0x200039dc] = 0xe000e100
        0x20003854:    6008        .`      STR      r0,[r1,#0]
        0x20003856:    2002        .       MOVS     r0,#2
        0x20003858:    4923        #I      LDR      r1,[pc,#140] ; [0x200038e8] = 0x20004995
        0x2000385a:    4a24        $J      LDR      r2,[pc,#144] ; [0x200038ec] = 0x20004989
        0x2000385c:    f001f8ac    ....    BL       lpwr_ctrl_init ; 0x200049b8
        0x20003860:    f003f924    ..$.    BL       $Ven$TT$L$$osThreadGetId ; 0x20006aac
        0x20003864:    f003f928    ..(.    BL       $Ven$TT$L$$osThreadTerminate ; 0x20006ab8
        0x20003868:    b002        ..      ADD      sp,sp,#8
        0x2000386a:    bdb0        ..      POP      {r4,r5,r7,pc}
    $d
    __arm_cp.1_0
        0x2000386c:    2000b964    d..     DCD    536918372
    __arm_cp.1_1
        0x20003870:    2000bf70    p..     DCD    536919920
    __arm_cp.1_2
        0x20003874:    6004b080    ...`    DCD    1610920064
    __arm_cp.1_3
        0x20003878:    60000400    ...`    DCD    1610613760
        0x2000387c:    2073255b    [%s     DCD    544417115
        0x20003880:    73252054    T %s    DCD    1931812948
        0x20003884:    656c625d    ]ble    DCD    1701601885
        0x20003888:    72657020     per    DCD    1919250464
        0x2000388c:    65687069    iphe    DCD    1701343337
        0x20003890:    206c6172    ral     DCD    543973746
        0x20003894:    6a6f7270    proj    DCD    1785688688
        0x20003898:    28746365    ect(    DCD    678716261
        0x2000389c:    20297063    cp)     DCD    539586659
        0x200038a0:    72617473    star    DCD    1918989427
        0x200038a4:    6f742074    t to    DCD    1869881460
        0x200038a8:    726f7720     wor    DCD    1919907616
        0x200038ac:    000a2e6b    k...    DCD    667243
        0x200038b0:    20706553    Sep     DCD    544236883
        0x200038b4:    32203431    14 2    DCD    840971313
        0x200038b8:    00363230    026.    DCD    3551792
        0x200038bc:    343a3431    14:4    DCD    876229681
        0x200038c0:    32323a39    9:22    DCD    842152505
        0x200038c4:    00000000    ....    DCD    0
        0x200038c8:    32335448    HT32    DCD    842224712
        0x200038cc:    35373646    F675    DCD    892810822
        0x200038d0:    425f3578    x5_B    DCD    1113535864
        0x200038d4:    505f454c    LE_P    DCD    1348420940
        0x200038d8:    50495245    ERIP    DCD    1346982469
        0x200038dc:    41524548    HERA    DCD    1095910728
        0x200038e0:    0000004c    L...    DCD    76
    __arm_cp.1_9
        0x200038e4:    e000e414    ....    DCD    3758154772
    __arm_cp.1_11
        0x200038e8:    20004995    .I.     DCD    536889749
    __arm_cp.1_12
        0x200038ec:    20004989    .I.     DCD    536889737
    $t
    app_timer_create
        0x200038f0:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x200038f2:    4603        .F      MOV      r3,r0
        0x200038f4:    2010        .       MOVS     r0,#0x10
        0x200038f6:    2b00        .+      CMP      r3,#0
        0x200038f8:    d022        ".      BEQ      0x20003940 ; app_timer_create + 80
        0x200038fa:    2901        .)      CMP      r1,#1
        0x200038fc:    d820         .      BHI      0x20003940 ; app_timer_create + 80
        0x200038fe:    f3ef8410    ....    MRS      r4,PRIMASK
        0x20003902:    f3ef8510    ....    MRS      r5,PRIMASK
        0x20003906:    b672        r.      CPSID    i
        0x20003908:    7d9d        .}      LDRB     r5,[r3,#0x16]
        0x2000390a:    2d00        .-      CMP      r5,#0
        0x2000390c:    d002        ..      BEQ      0x20003914 ; app_timer_create + 36
        0x2000390e:    f3848810    ....    MSR      PRIMASK,r4
        0x20003912:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003914:    2000        .       MOVS     r0,#0
        0x20003916:    6298        .b      STR      r0,[r3,#0x28]
        0x20003918:    61da        .a      STR      r2,[r3,#0x1c]
        0x2000391a:    7619        .v      STRB     r1,[r3,#0x18]
        0x2000391c:    2101        .!      MOVS     r1,#1
        0x2000391e:    7599        .u      STRB     r1,[r3,#0x16]
        0x20003920:    492f        /I      LDR      r1,[pc,#188] ; [0x200039e0] = 0x2000b9ec
        0x20003922:    680a        .h      LDR      r2,[r1,#0]
        0x20003924:    2a00        .*      CMP      r2,#0
        0x20003926:    d102        ..      BNE      0x2000392e ; app_timer_create + 62
        0x20003928:    600b        .`      STR      r3,[r1,#0]
        0x2000392a:    2100        .!      MOVS     r1,#0
        0x2000392c:    62d9        .b      STR      r1,[r3,#0x2c]
        0x2000392e:    492d        -I      LDR      r1,[pc,#180] ; [0x200039e4] = 0x2000b9f0
        0x20003930:    680a        .h      LDR      r2,[r1,#0]
        0x20003932:    2a00        .*      CMP      r2,#0
        0x20003934:    d001        ..      BEQ      0x2000393a ; app_timer_create + 74
        0x20003936:    6293        .b      STR      r3,[r2,#0x28]
        0x20003938:    62da        .b      STR      r2,[r3,#0x2c]
        0x2000393a:    600b        .`      STR      r3,[r1,#0]
        0x2000393c:    f3848810    ....    MSR      PRIMASK,r4
        0x20003940:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20003942:    46c0        .F      MOV      r8,r8
    $d
    __arm_cp.3_0
        0x20003944:    2000b9ec    ...     DCD    536918508
    $t
    app_timer_delete
        0x20003948:    4601        .F      MOV      r1,r0
        0x2000394a:    2010        .       MOVS     r0,#0x10
        0x2000394c:    2900        .)      CMP      r1,#0
        0x2000394e:    d009        ..      BEQ      0x20003964 ; app_timer_delete + 28
        0x20003950:    7d8a        .}      LDRB     r2,[r1,#0x16]
        0x20003952:    2a00        .*      CMP      r2,#0
        0x20003954:    d006        ..      BEQ      0x20003964 ; app_timer_delete + 28
        0x20003956:    2201        ."      MOVS     r2,#1
        0x20003958:    754a        Ju      STRB     r2,[r1,#0x15]
        0x2000395a:    2000        .       MOVS     r0,#0
        0x2000395c:    75c8        .u      STRB     r0,[r1,#0x17]
        0x2000395e:    07d1        ..      LSLS     r1,r2,#31
        0x20003960:    4a38        8J      LDR      r2,[pc,#224] ; [0x20003a44] = 0xe000e200
        0x20003962:    6011        .`      STR      r1,[r2,#0]
        0x20003964:    4770        pG      BX       lr
        0x20003966:    46c0        .F      MOV      r8,r8
    $d
    __arm_cp.6_0
        0x20003968:    e000e200    ....    DCD    3758154240
    $t
    app_timer_init
        0x2000396c:    b5f0        ..      PUSH     {r4-r7,lr}
        0x2000396e:    b081        ..      SUB      sp,sp,#4
        0x20003970:    2005        .       MOVS     r0,#5
        0x20003972:    f003f871    ..q.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x20006a58
        0x20003976:    4d2a        *M      LDR      r5,[pc,#168] ; [0x20003a20] = 0x60053000
        0x20003978:    2400        .$      MOVS     r4,#0
        0x2000397a:    4628        (F      MOV      r0,r5
        0x2000397c:    4621        !F      MOV      r1,r4
        0x2000397e:    f003f8a1    ....    BL       $Ven$TT$L$$rom_hw_stim_set_prescale ; 0x20006ac4
        0x20003982:    2701        .'      MOVS     r7,#1
        0x20003984:    07f8        ..      LSLS     r0,r7,#31
        0x20003986:    4913        .I      LDR      r1,[pc,#76] ; [0x200039d4] = 0xe000e280
        0x20003988:    6008        .`      STR      r0,[r1,#0]
        0x2000398a:    26ff        .&      MOVS     r6,#0xff
        0x2000398c:    0631        1.      LSLS     r1,r6,#24
        0x2000398e:    4a12        .J      LDR      r2,[pc,#72] ; [0x200039d8] = 0xe000e41c
        0x20003990:    6813        .h      LDR      r3,[r2,#0]
        0x20003992:    438b        .C      BICS     r3,r3,r1
        0x20003994:    2103        .!      MOVS     r1,#3
        0x20003996:    0789        ..      LSLS     r1,r1,#30
        0x20003998:    1859        Y.      ADDS     r1,r3,r1
        0x2000399a:    6011        .`      STR      r1,[r2,#0]
        0x2000399c:    490f        .I      LDR      r1,[pc,#60] ; [0x200039dc] = 0xe000e100
        0x2000399e:    6008        .`      STR      r0,[r1,#0]
        0x200039a0:    211f        .!      MOVS     r1,#0x1f
        0x200039a2:    4620         F      MOV      r0,r4
        0x200039a4:    f003f87c    ..|.    BL       $Ven$TT$L$$rom_hw_sys_ctrl_enable_peri_int ; 0x20006aa0
        0x200039a8:    0279        y.      LSLS     r1,r7,#9
        0x200039aa:    4628        (F      MOV      r0,r5
        0x200039ac:    f003f890    ....    BL       $Ven$TT$L$$rom_hw_stim_enable_wakeup ; 0x20006ad0
        0x200039b0:    2108        .!      MOVS     r1,#8
        0x200039b2:    4628        (F      MOV      r0,r5
        0x200039b4:    f003f892    ....    BL       $Ven$TT$L$$rom_hw_stim_enable_interrupt ; 0x20006adc
        0x200039b8:    4628        (F      MOV      r0,r5
        0x200039ba:    4631        1F      MOV      r1,r6
        0x200039bc:    f003f894    ....    BL       $Ven$TT$L$$rom_hw_stim_disable_tick_overflow_interrupt ; 0x20006ae8
        0x200039c0:    4628        (F      MOV      r0,r5
        0x200039c2:    f003f897    ....    BL       $Ven$TT$L$$rom_hw_stim_start ; 0x20006af4
        0x200039c6:    4806        .H      LDR      r0,[pc,#24] ; [0x200039e0] = 0x2000b9ec
        0x200039c8:    6004        .`      STR      r4,[r0,#0]
        0x200039ca:    4806        .H      LDR      r0,[pc,#24] ; [0x200039e4] = 0x2000b9f0
        0x200039cc:    6004        .`      STR      r4,[r0,#0]
        0x200039ce:    4620         F      MOV      r0,r4
        0x200039d0:    b001        ..      ADD      sp,sp,#4
        0x200039d2:    bdf0        ..      POP      {r4-r7,pc}
    $d
    __arm_cp.2_1
        0x200039d4:    e000e280    ....    DCD    3758154368
    __arm_cp.2_2
        0x200039d8:    e000e41c    ....    DCD    3758154780
    __arm_cp.2_3
        0x200039dc:    e000e100    ....    DCD    3758153984
    __arm_cp.2_4
        0x200039e0:    2000b9ec    ...     DCD    536918508
    __arm_cp.2_5
        0x200039e4:    2000b9f0    ...     DCD    536918512
    $t
    app_timer_start
        0x200039e8:    b510        ..      PUSH     {r4,lr}
        0x200039ea:    2310        .#      MOVS     r3,#0x10
        0x200039ec:    2800        .(      CMP      r0,#0
        0x200039ee:    d015        ..      BEQ      0x20003a1c ; app_timer_start + 52
        0x200039f0:    7d84        .}      LDRB     r4,[r0,#0x16]
        0x200039f2:    2c00        .,      CMP      r4,#0
        0x200039f4:    d012        ..      BEQ      0x20003a1c ; app_timer_start + 52
        0x200039f6:    6242        Bb      STR      r2,[r0,#0x24]
        0x200039f8:    6041        A`      STR      r1,[r0,#4]
        0x200039fa:    4601        .F      MOV      r1,r0
        0x200039fc:    3110        .1      ADDS     r1,r1,#0x10
        0x200039fe:    4a08        .J      LDR      r2,[pc,#32] ; [0x20003a20] = 0x60053000
        0x20003a00:    4604        .F      MOV      r4,r0
        0x20003a02:    4610        .F      MOV      r0,r2
        0x20003a04:    f003f804    ....    BL       $Ven$TT$L$$rom_hw_stim_get_count ; 0x20006a10
        0x20003a08:    2002        .       MOVS     r0,#2
        0x20003a0a:    75e0        .u      STRB     r0,[r4,#0x17]
        0x20003a0c:    20ff        .       MOVS     r0,#0xff
        0x20003a0e:    3002        .0      ADDS     r0,#2
        0x20003a10:    82a0        ..      STRH     r0,[r4,#0x14]
        0x20003a12:    2001        .       MOVS     r0,#1
        0x20003a14:    07c0        ..      LSLS     r0,r0,#31
        0x20003a16:    490b        .I      LDR      r1,[pc,#44] ; [0x20003a44] = 0xe000e200
        0x20003a18:    6008        .`      STR      r0,[r1,#0]
        0x20003a1a:    2300        .#      MOVS     r3,#0
        0x20003a1c:    4618        .F      MOV      r0,r3
        0x20003a1e:    bd10        ..      POP      {r4,pc}
    $d
    __arm_cp.4_0
        0x20003a20:    60053000    .0.`    DCD    1610952704
    $t
    app_timer_stop
        0x20003a24:    4601        .F      MOV      r1,r0
        0x20003a26:    2010        .       MOVS     r0,#0x10
        0x20003a28:    2900        .)      CMP      r1,#0
        0x20003a2a:    d009        ..      BEQ      0x20003a40 ; app_timer_stop + 28
        0x20003a2c:    7d8a        .}      LDRB     r2,[r1,#0x16]
        0x20003a2e:    2a00        .*      CMP      r2,#0
        0x20003a30:    d006        ..      BEQ      0x20003a40 ; app_timer_stop + 28
        0x20003a32:    2001        .       MOVS     r0,#1
        0x20003a34:    7548        Hu      STRB     r0,[r1,#0x15]
        0x20003a36:    75c8        .u      STRB     r0,[r1,#0x17]
        0x20003a38:    07c0        ..      LSLS     r0,r0,#31
        0x20003a3a:    4902        .I      LDR      r1,[pc,#8] ; [0x20003a44] = 0xe000e200
        0x20003a3c:    6008        .`      STR      r0,[r1,#0]
        0x20003a3e:    2000        .       MOVS     r0,#0
        0x20003a40:    4770        pG      BX       lr
        0x20003a42:    46c0        .F      MOV      r8,r8
    $d
    __arm_cp.5_0
        0x20003a44:    e000e200    ....    DCD    3758154240
    $t
    bleStack_task
        0x20003a48:    b084        ..      SUB      sp,sp,#0x10
        0x20003a4a:    4c10        .L      LDR      r4,[pc,#64] ; [0x20003a8c] = 0x6002
        0x20003a4c:    4d10        .M      LDR      r5,[pc,#64] ; [0x20003a90] = 0x20007c8c
        0x20003a4e:    e004        ..      B        0x20003a5a ; bleStack_task + 18
        0x20003a50:    1c62        b.      ADDS     r2,r4,#1
        0x20003a52:    b281        ..      UXTH     r1,r0
        0x20003a54:    4610        .F      MOV      r0,r2
        0x20003a56:    f003f853    ..S.    BL       $Ven$TT$L$$mlog_16 ; 0x20006b00
        0x20003a5a:    6828        (h      LDR      r0,[r5,#0]
        0x20003a5c:    2200        ."      MOVS     r2,#0
        0x20003a5e:    43d3        .C      MVNS     r3,r2
        0x20003a60:    a901        ..      ADD      r1,sp,#4
        0x20003a62:    f003f853    ..S.    BL       $Ven$TT$L$$osMessageQueueGet ; 0x20006b0c
        0x20003a66:    2800        .(      CMP      r0,#0
        0x20003a68:    d1f2        ..      BNE      0x20003a50 ; bleStack_task + 8
        0x20003a6a:    a801        ..      ADD      r0,sp,#4
        0x20003a6c:    f003f854    ..T.    BL       $Ven$TT$L$$rom_st_ctrl_task_handler ; 0x20006b18
        0x20003a70:    9902        ..      LDR      r1,[sp,#8]
        0x20003a72:    2900        .)      CMP      r1,#0
        0x20003a74:    d0f1        ..      BEQ      0x20003a5a ; bleStack_task + 18
        0x20003a76:    9803        ..      LDR      r0,[sp,#0xc]
        0x20003a78:    2800        .(      CMP      r0,#0
        0x20003a7a:    d002        ..      BEQ      0x20003a82 ; bleStack_task + 58
        0x20003a7c:    f003f852    ..R.    BL       $Ven$TT$L$$osMemoryPoolFree ; 0x20006b24
        0x20003a80:    e7eb        ..      B        0x20003a5a ; bleStack_task + 18
        0x20003a82:    4620         F      MOV      r0,r4
        0x20003a84:    f003f854    ..T.    BL       $Ven$TT$L$$mlog_0 ; 0x20006b30
        0x20003a88:    e7e7        ..      B        0x20003a5a ; bleStack_task + 18
        0x20003a8a:    46c0        .F      MOV      r8,r8
    $d
    __arm_cp.5_0
        0x20003a8c:    00006002    .`..    DCD    24578
    __arm_cp.5_1
        0x20003a90:    20007c8c    .|.     DCD    536902796
    $t
    ble_app_timer_create
        0x20003a94:    b580        ..      PUSH     {r7,lr}
        0x20003a96:    460a        .F      MOV      r2,r1
        0x20003a98:    2100        .!      MOVS     r1,#0
        0x20003a9a:    f7ffff29    ..).    BL       app_timer_create ; 0x200038f0
        0x20003a9e:    4241        AB      RSBS     r1,r0,#0
        0x20003aa0:    4148        HA      ADCS     r0,r0,r1
        0x20003aa2:    bd80        ..      POP      {r7,pc}
    ble_app_timer_delete
        0x20003aa4:    b580        ..      PUSH     {r7,lr}
        0x20003aa6:    f7ffff4f    ..O.    BL       app_timer_delete ; 0x20003948
        0x20003aaa:    4241        AB      RSBS     r1,r0,#0
        0x20003aac:    4148        HA      ADCS     r0,r0,r1
        0x20003aae:    bd80        ..      POP      {r7,pc}
    ble_app_timer_start
        0x20003ab0:    b580        ..      PUSH     {r7,lr}
        0x20003ab2:    f7ffff99    ....    BL       app_timer_start ; 0x200039e8
        0x20003ab6:    4241        AB      RSBS     r1,r0,#0
        0x20003ab8:    4148        HA      ADCS     r0,r0,r1
        0x20003aba:    bd80        ..      POP      {r7,pc}
    ble_app_timer_stop
        0x20003abc:    b580        ..      PUSH     {r7,lr}
        0x20003abe:    f7ffffb1    ....    BL       app_timer_stop ; 0x20003a24
        0x20003ac2:    4241        AB      RSBS     r1,r0,#0
        0x20003ac4:    4148        HA      ADCS     r0,r0,r1
        0x20003ac6:    bd80        ..      POP      {r7,pc}
    ble_controller_init
        0x20003ac8:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20003aca:    b093        ..      SUB      sp,sp,#0x4c
        0x20003acc:    487e        ~H      LDR      r0,[pc,#504] ; [0x20003cc8] = 0x20008fc0
        0x20003ace:    2101        .!      MOVS     r1,#1
        0x20003ad0:    f003f834    ..4.    BL       $Ven$TT$L$$rom_llc_legacy_adv_mem_init ; 0x20006b3c
        0x20003ad4:    2600        .&      MOVS     r6,#0
        0x20003ad6:    2800        .(      CMP      r0,#0
        0x20003ad8:    d100        ..      BNE      0x20003adc ; ble_controller_init + 20
        0x20003ada:    e0d9        ..      B        0x20003c90 ; ble_controller_init + 456
        0x20003adc:    487b        {H      LDR      r0,[pc,#492] ; [0x20003ccc] = 0x20009290
        0x20003ade:    f003f833    ..3.    BL       $Ven$TT$L$$rom_llc_legacy_scan_mem_init ; 0x20006b48
        0x20003ae2:    2800        .(      CMP      r0,#0
        0x20003ae4:    d100        ..      BNE      0x20003ae8 ; ble_controller_init + 32
        0x20003ae6:    e0d3        ..      B        0x20003c90 ; ble_controller_init + 456
        0x20003ae8:    4879        yH      LDR      r0,[pc,#484] ; [0x20003cd0] = 0x20009158
        0x20003aea:    f003f833    ..3.    BL       $Ven$TT$L$$rom_llc_legacy_initiator_mem_init ; 0x20006b54
        0x20003aee:    2800        .(      CMP      r0,#0
        0x20003af0:    d100        ..      BNE      0x20003af4 ; ble_controller_init + 44
        0x20003af2:    e0cd        ..      B        0x20003c90 ; ble_controller_init + 456
        0x20003af4:    4877        wH      LDR      r0,[pc,#476] ; [0x20003cd4] = 0x20008b30
        0x20003af6:    2401        .$      MOVS     r4,#1
        0x20003af8:    4621        !F      MOV      r1,r4
        0x20003afa:    f003f831    ..1.    BL       $Ven$TT$L$$rom_llc_connection_role_mem_init ; 0x20006b60
        0x20003afe:    2800        .(      CMP      r0,#0
        0x20003b00:    d100        ..      BNE      0x20003b04 ; ble_controller_init + 60
        0x20003b02:    e0c5        ..      B        0x20003c90 ; ble_controller_init + 456
        0x20003b04:    2004        .       MOVS     r0,#4
        0x20003b06:    9000        ..      STR      r0,[sp,#0]
        0x20003b08:    4873        sH      LDR      r0,[pc,#460] ; [0x20003cd8] = 0x20009508
        0x20003b0a:    4a74        tJ      LDR      r2,[pc,#464] ; [0x20003cdc] = 0x20009518
        0x20003b0c:    2110        .!      MOVS     r1,#0x10
        0x20003b0e:    460b        .F      MOV      r3,r1
        0x20003b10:    f003f82c    ..,.    BL       $Ven$TT$L$$rom_llc_scheduler_mem_init ; 0x20006b6c
        0x20003b14:    2800        .(      CMP      r0,#0
        0x20003b16:    d100        ..      BNE      0x20003b1a ; ble_controller_init + 82
        0x20003b18:    e0ba        ..      B        0x20003c90 ; ble_controller_init + 456
        0x20003b1a:    4871        qH      LDR      r0,[pc,#452] ; [0x20003ce0] = 0x20009718
        0x20003b1c:    2106        .!      MOVS     r1,#6
        0x20003b1e:    f003f82b    ..+.    BL       $Ven$TT$L$$rom_llc_white_list_init ; 0x20006b78
        0x20003b22:    2800        .(      CMP      r0,#0
        0x20003b24:    d100        ..      BNE      0x20003b28 ; ble_controller_init + 96
        0x20003b26:    e0b3        ..      B        0x20003c90 ; ble_controller_init + 456
        0x20003b28:    486e        nH      LDR      r0,[pc,#440] ; [0x20003ce4] = 0x200094a8
        0x20003b2a:    2102        .!      MOVS     r1,#2
        0x20003b2c:    f003f82a    ..*.    BL       $Ven$TT$L$$rom_llc_privacy_init ; 0x20006b84
        0x20003b30:    2800        .(      CMP      r0,#0
        0x20003b32:    d100        ..      BNE      0x20003b36 ; ble_controller_init + 110
        0x20003b34:    e0ac        ..      B        0x20003c90 ; ble_controller_init + 456
        0x20003b36:    0225        %.      LSLS     r5,r4,#8
        0x20003b38:    2000        .       MOVS     r0,#0
        0x20003b3a:    496b        kI      LDR      r1,[pc,#428] ; [0x20003ce8] = 0x20009b48
        0x20003b3c:    4a6b        kJ      LDR      r2,[pc,#428] ; [0x20003cec] = 0x20009378
        0x20003b3e:    1813        ..      ADDS     r3,r2,r0
        0x20003b40:    6059        Y`      STR      r1,[r3,#4]
        0x20003b42:    811d        ..      STRH     r5,[r3,#8]
        0x20003b44:    1949        I.      ADDS     r1,r1,r5
        0x20003b46:    301c        .0      ADDS     r0,r0,#0x1c
        0x20003b48:    2870        p(      CMP      r0,#0x70
        0x20003b4a:    d1f8        ..      BNE      0x20003b3e ; ble_controller_init + 118
        0x20003b4c:    2000        .       MOVS     r0,#0
        0x20003b4e:    4968        hI      LDR      r1,[pc,#416] ; [0x20003cf0] = 0x2000a358
        0x20003b50:    4a68        hJ      LDR      r2,[pc,#416] ; [0x20003cf4] = 0x20009528
        0x20003b52:    1813        ..      ADDS     r3,r2,r0
        0x20003b54:    6059        Y`      STR      r1,[r3,#4]
        0x20003b56:    2628        (&      MOVS     r6,#0x28
        0x20003b58:    811e        ..      STRH     r6,[r3,#8]
        0x20003b5a:    3128        (1      ADDS     r1,r1,#0x28
        0x20003b5c:    301c        .0      ADDS     r0,r0,#0x1c
        0x20003b5e:    2870        p(      CMP      r0,#0x70
        0x20003b60:    d1f7        ..      BNE      0x20003b52 ; ble_controller_init + 138
        0x20003b62:    4865        eH      LDR      r0,[pc,#404] ; [0x20003cf8] = 0x20009378
        0x20003b64:    900d        ..      STR      r0,[sp,#0x34]
        0x20003b66:    a064        d.      ADR      r0,{pc}+0x192 ; 0x20003cf8
        0x20003b68:    6841        Ah      LDR      r1,[r0,#4]
        0x20003b6a:    6882        .h      LDR      r2,[r0,#8]
        0x20003b6c:    68c0        .h      LDR      r0,[r0,#0xc]
        0x20003b6e:    9010        ..      STR      r0,[sp,#0x40]
        0x20003b70:    920f        ..      STR      r2,[sp,#0x3c]
        0x20003b72:    910e        ..      STR      r1,[sp,#0x38]
        0x20003b74:    a80d        ..      ADD      r0,sp,#0x34
        0x20003b76:    f003f80b    ....    BL       $Ven$TT$L$$rom_llc_adv_channel_pdu_mem_init ; 0x20006b90
        0x20003b7a:    2800        .(      CMP      r0,#0
        0x20003b7c:    d100        ..      BNE      0x20003b80 ; ble_controller_init + 184
        0x20003b7e:    e086        ..      B        0x20003c8e ; ble_controller_init + 454
        0x20003b80:    9401        ..      STR      r4,[sp,#4]
        0x20003b82:    2000        .       MOVS     r0,#0
        0x20003b84:    4a60        `J      LDR      r2,[pc,#384] ; [0x20003d08] = 0x2000a150
        0x20003b86:    4b61        aK      LDR      r3,[pc,#388] ; [0x20003d0c] = 0x20009448
        0x20003b88:    1819        ..      ADDS     r1,r3,r0
        0x20003b8a:    60ca        .`      STR      r2,[r1,#0xc]
        0x20003b8c:    820d        ..      STRH     r5,[r1,#0x10]
        0x20003b8e:    2141        A!      MOVS     r1,#0x41
        0x20003b90:    0089        ..      LSLS     r1,r1,#2
        0x20003b92:    1852        R.      ADDS     r2,r2,r1
        0x20003b94:    3030        00      ADDS     r0,r0,#0x30
        0x20003b96:    2830        0(      CMP      r0,#0x30
        0x20003b98:    d0f6        ..      BEQ      0x20003b88 ; ble_controller_init + 192
        0x20003b9a:    9503        ..      STR      r5,[sp,#0xc]
        0x20003b9c:    20bf        .       MOVS     r0,#0xbf
        0x20003b9e:    43c5        .C      MVNS     r5,r0
        0x20003ba0:    4f5b        [O      LDR      r7,[pc,#364] ; [0x20003d10] = 0x2000a4a8
        0x20003ba2:    4628        (F      MOV      r0,r5
        0x20003ba4:    4a5b        [J      LDR      r2,[pc,#364] ; [0x20003d14] = 0x20009658
        0x20003ba6:    1814        ..      ADDS     r4,r2,r0
        0x20003ba8:    22cc        ."      MOVS     r2,#0xcc
        0x20003baa:    50a7        .P      STR      r7,[r4,r2]
        0x20003bac:    23d0        .#      MOVS     r3,#0xd0
        0x20003bae:    52e6        .R      STRH     r6,[r4,r3]
        0x20003bb0:    372c        ,7      ADDS     r7,r7,#0x2c
        0x20003bb2:    3030        00      ADDS     r0,r0,#0x30
        0x20003bb4:    d1f6        ..      BNE      0x20003ba4 ; ble_controller_init + 220
        0x20003bb6:    9202        ..      STR      r2,[sp,#8]
        0x20003bb8:    2400        .$      MOVS     r4,#0
        0x20003bba:    4f57        WO      LDR      r7,[pc,#348] ; [0x20003d18] = 0x20009f48
        0x20003bbc:    4857        WH      LDR      r0,[pc,#348] ; [0x20003d1c] = 0x200093e8
        0x20003bbe:    1900        ..      ADDS     r0,r0,r4
        0x20003bc0:    60c7        .`      STR      r7,[r0,#0xc]
        0x20003bc2:    460a        .F      MOV      r2,r1
        0x20003bc4:    9903        ..      LDR      r1,[sp,#0xc]
        0x20003bc6:    8201        ..      STRH     r1,[r0,#0x10]
        0x20003bc8:    4611        .F      MOV      r1,r2
        0x20003bca:    18bf        ..      ADDS     r7,r7,r2
        0x20003bcc:    3430        04      ADDS     r4,r4,#0x30
        0x20003bce:    2c30        0,      CMP      r4,#0x30
        0x20003bd0:    d0f4        ..      BEQ      0x20003bbc ; ble_controller_init + 244
        0x20003bd2:    4953        SI      LDR      r1,[pc,#332] ; [0x20003d20] = 0x2000a3f8
        0x20003bd4:    4c53        SL      LDR      r4,[pc,#332] ; [0x20003d24] = 0x20009598
        0x20003bd6:    9a02        ..      LDR      r2,[sp,#8]
        0x20003bd8:    1960        `.      ADDS     r0,r4,r5
        0x20003bda:    5081        .P      STR      r1,[r0,r2]
        0x20003bdc:    52c6        .R      STRH     r6,[r0,r3]
        0x20003bde:    312c        ,1      ADDS     r1,r1,#0x2c
        0x20003be0:    3530        05      ADDS     r5,r5,#0x30
        0x20003be2:    d1f9        ..      BNE      0x20003bd8 ; ble_controller_init + 272
        0x20003be4:    a150        P.      ADR      r1,{pc}+0x144 ; 0x20003d28
        0x20003be6:    a804        ..      ADD      r0,sp,#0x10
        0x20003be8:    4602        .F      MOV      r2,r0
        0x20003bea:    c978        x.      LDM      r1!,{r3-r6}
        0x20003bec:    c278        x.      STM      r2!,{r3-r6}
        0x20003bee:    c978        x.      LDM      r1!,{r3-r6}
        0x20003bf0:    c278        x.      STM      r2!,{r3-r6}
        0x20003bf2:    f002ffd3    ....    BL       $Ven$TT$L$$rom_llc_data_channel_pdu_mem_init ; 0x20006b9c
        0x20003bf6:    2800        .(      CMP      r0,#0
        0x20003bf8:    9c03        ..      LDR      r4,[sp,#0xc]
        0x20003bfa:    d048        H.      BEQ      0x20003c8e ; ble_controller_init + 454
        0x20003bfc:    2000        .       MOVS     r0,#0
        0x20003bfe:    4952        RI      LDR      r1,[pc,#328] ; [0x20003d48] = 0x20009748
        0x20003c00:    4a52        RJ      LDR      r2,[pc,#328] ; [0x20003d4c] = 0x20008af0
        0x20003c02:    1813        ..      ADDS     r3,r2,r0
        0x20003c04:    819c        ..      STRH     r4,[r3,#0xc]
        0x20003c06:    6099        .`      STR      r1,[r3,#8]
        0x20003c08:    1909        ..      ADDS     r1,r1,r4
        0x20003c0a:    3020         0      ADDS     r0,r0,#0x20
        0x20003c0c:    2820         (      CMP      r0,#0x20
        0x20003c0e:    d0f8        ..      BEQ      0x20003c02 ; ble_controller_init + 314
        0x20003c10:    484e        NH      LDR      r0,[pc,#312] ; [0x20003d4c] = 0x20008af0
        0x20003c12:    2202        ."      MOVS     r2,#2
        0x20003c14:    4621        !F      MOV      r1,r4
        0x20003c16:    f002ffc7    ....    BL       $Ven$TT$L$$rom_llc_acl_data_mem_init ; 0x20006ba8
        0x20003c1a:    2800        .(      CMP      r0,#0
        0x20003c1c:    d037        7.      BEQ      0x20003c8e ; ble_controller_init + 454
        0x20003c1e:    2000        .       MOVS     r0,#0
        0x20003c20:    494b        KI      LDR      r1,[pc,#300] ; [0x20003d50] = 0x20009948
        0x20003c22:    4a4c        LJ      LDR      r2,[pc,#304] ; [0x20003d54] = 0x20008fa0
        0x20003c24:    5011        .P      STR      r1,[r2,r0]
        0x20003c26:    1813        ..      ADDS     r3,r2,r0
        0x20003c28:    809c        ..      STRH     r4,[r3,#4]
        0x20003c2a:    1909        ..      ADDS     r1,r1,r4
        0x20003c2c:    3010        .0      ADDS     r0,r0,#0x10
        0x20003c2e:    2810        .(      CMP      r0,#0x10
        0x20003c30:    d0f8        ..      BEQ      0x20003c24 ; ble_controller_init + 348
        0x20003c32:    4848        HH      LDR      r0,[pc,#288] ; [0x20003d54] = 0x20008fa0
        0x20003c34:    2202        ."      MOVS     r2,#2
        0x20003c36:    4621        !F      MOV      r1,r4
        0x20003c38:    f002ffbc    ....    BL       $Ven$TT$L$$rom_llc_hci_command_mem_init ; 0x20006bb4
        0x20003c3c:    2600        .&      MOVS     r6,#0
        0x20003c3e:    2800        .(      CMP      r0,#0
        0x20003c40:    d026        &.      BEQ      0x20003c90 ; ble_controller_init + 456
        0x20003c42:    4845        EH      LDR      r0,[pc,#276] ; [0x20003d58] = 0x2000784c
        0x20003c44:    aa0d        ..      ADD      r2,sp,#0x34
        0x20003c46:    4611        .F      MOV      r1,r2
        0x20003c48:    c838        8.      LDM      r0!,{r3-r5}
        0x20003c4a:    c138        8.      STM      r1!,{r3-r5}
        0x20003c4c:    c838        8.      LDM      r0!,{r3-r5}
        0x20003c4e:    c138        8.      STM      r1!,{r3-r5}
        0x20003c50:    2040        @       MOVS     r0,#0x40
        0x20003c52:    2108        .!      MOVS     r1,#8
        0x20003c54:    f002ffb4    ....    BL       $Ven$TT$L$$osMessageQueueNew ; 0x20006bc0
        0x20003c58:    4940        @I      LDR      r1,[pc,#256] ; [0x20003d5c] = 0x2000a5e4
        0x20003c5a:    6008        .`      STR      r0,[r1,#0]
        0x20003c5c:    2800        .(      CMP      r0,#0
        0x20003c5e:    d01a        ..      BEQ      0x20003c96 ; ble_controller_init + 462
        0x20003c60:    483f        ?H      LDR      r0,[pc,#252] ; [0x20003d60] = 0x20007828
        0x20003c62:    aa04        ..      ADD      r2,sp,#0x10
        0x20003c64:    4611        .F      MOV      r1,r2
        0x20003c66:    c838        8.      LDM      r0!,{r3-r5}
        0x20003c68:    c138        8.      STM      r1!,{r3-r5}
        0x20003c6a:    c838        8.      LDM      r0!,{r3-r5}
        0x20003c6c:    c138        8.      STM      r1!,{r3-r5}
        0x20003c6e:    c838        8.      LDM      r0!,{r3-r5}
        0x20003c70:    c138        8.      STM      r1!,{r3-r5}
        0x20003c72:    483c        <H      LDR      r0,[pc,#240] ; [0x20003d64] = 0x2000493d
        0x20003c74:    2600        .&      MOVS     r6,#0
        0x20003c76:    4631        1F      MOV      r1,r6
        0x20003c78:    f002ffa8    ....    BL       $Ven$TT$L$$osThreadNew ; 0x20006bcc
        0x20003c7c:    4607        .F      MOV      r7,r0
        0x20003c7e:    483a        :H      LDR      r0,[pc,#232] ; [0x20003d68] = 0x2000a5ac
        0x20003c80:    6007        .`      STR      r7,[r0,#0]
        0x20003c82:    2f00        ./      CMP      r7,#0
        0x20003c84:    d00b        ..      BEQ      0x20003c9e ; ble_controller_init + 470
        0x20003c86:    4839        9H      LDR      r0,[pc,#228] ; [0x20003d6c] = 0x200067ad
        0x20003c88:    f002ffa6    ....    BL       $Ven$TT$L$$rom_llc_set_send_msg_to_llc_task_callback ; 0x20006bd8
        0x20003c8c:    e00a        ..      B        0x20003ca4 ; ble_controller_init + 476
        0x20003c8e:    2600        .&      MOVS     r6,#0
        0x20003c90:    4630        0F      MOV      r0,r6
        0x20003c92:    b013        ..      ADD      sp,sp,#0x4c
        0x20003c94:    bdf0        ..      POP      {r4-r7,pc}
        0x20003c96:    4838        8H      LDR      r0,[pc,#224] ; [0x20003d78] = 0x20007976
        0x20003c98:    f003fdae    ....    BL       puts ; 0x200077f8
        0x20003c9c:    e7f8        ..      B        0x20003c90 ; ble_controller_init + 456
        0x20003c9e:    4834        4H      LDR      r0,[pc,#208] ; [0x20003d70] = 0x2000798d
        0x20003ca0:    f003fdaa    ....    BL       puts ; 0x200077f8
        0x20003ca4:    9c01        ..      LDR      r4,[sp,#4]
        0x20003ca6:    2f00        ./      CMP      r7,#0
        0x20003ca8:    d0f2        ..      BEQ      0x20003c90 ; ble_controller_init + 456
        0x20003caa:    f002ff9b    ....    BL       $Ven$TT$L$$rom_llp_init ; 0x20006be4
        0x20003cae:    9803        ..      LDR      r0,[sp,#0xc]
        0x20003cb0:    30f4        .0      ADDS     r0,r0,#0xf4
        0x20003cb2:    f002ff9d    ....    BL       $Ven$TT$L$$rom_llp_set_clock_accuracy_ppm ; 0x20006bf0
        0x20003cb6:    207d        }       MOVS     r0,#0x7d
        0x20003cb8:    0140        @.      LSLS     r0,r0,#5
        0x20003cba:    492e        .I      LDR      r1,[pc,#184] ; [0x20003d74] = 0xdac
        0x20003cbc:    f002ff9e    ....    BL       $Ven$TT$L$$rom_llp_sleep_set_time ; 0x20006bfc
        0x20003cc0:    f002ffa2    ....    BL       $Ven$TT$L$$rom_llc_init ; 0x20006c08
        0x20003cc4:    4626        &F      MOV      r6,r4
        0x20003cc6:    e7e3        ..      B        0x20003c90 ; ble_controller_init + 456
    $d
    __arm_cp.3_0
        0x20003cc8:    20008fc0    ...     DCD    536907712
    __arm_cp.3_1
        0x20003ccc:    20009290    ...     DCD    536908432
    __arm_cp.3_2
        0x20003cd0:    20009158    X..     DCD    536908120
    __arm_cp.3_3
        0x20003cd4:    20008b30    0..     DCD    536906544
    __arm_cp.3_4
        0x20003cd8:    20009508    ...     DCD    536909064
    __arm_cp.3_5
        0x20003cdc:    20009518    ...     DCD    536909080
    __arm_cp.3_6
        0x20003ce0:    20009718    ...     DCD    536909592
    __arm_cp.3_7
        0x20003ce4:    200094a8    ...     DCD    536908968
    __arm_cp.3_8
        0x20003ce8:    20009b48    H..     DCD    536910664
    __arm_cp.3_9
        0x20003cec:    20009378    x..     DCD    536908664
    __arm_cp.3_10
        0x20003cf0:    2000a358    X..     DCD    536912728
    __arm_cp.3_11
        0x20003cf4:    20009528    (..     DCD    536909096
        0x20003cf8:    20009378    x..     DCD    536908664
        0x20003cfc:    00040100    ....    DCD    262400
        0x20003d00:    20009528    (..     DCD    536909096
        0x20003d04:    00040028    (...    DCD    262184
    __arm_cp.3_13
        0x20003d08:    2000a150    P..     DCD    536912208
    __arm_cp.3_14
        0x20003d0c:    20009448    H..     DCD    536908872
    __arm_cp.3_15
        0x20003d10:    2000a4a8    ...     DCD    536913064
    __arm_cp.3_16
        0x20003d14:    20009658    X..     DCD    536909400
    __arm_cp.3_17
        0x20003d18:    20009f48    H..     DCD    536911688
    __arm_cp.3_18
        0x20003d1c:    200093e8    ...     DCD    536908776
    __arm_cp.3_19
        0x20003d20:    2000a3f8    ...     DCD    536912888
    __arm_cp.3_20
        0x20003d24:    20009598    ...     DCD    536909208
        0x20003d28:    20009448    H..     DCD    536908872
        0x20003d2c:    00020100    ....    DCD    131328
        0x20003d30:    20009658    X..     DCD    536909400
        0x20003d34:    00040028    (...    DCD    262184
        0x20003d38:    200093e8    ...     DCD    536908776
        0x20003d3c:    00020100    ....    DCD    131328
        0x20003d40:    20009598    ...     DCD    536909208
        0x20003d44:    00040028    (...    DCD    262184
    __arm_cp.3_22
        0x20003d48:    20009748    H..     DCD    536909640
    __arm_cp.3_23
        0x20003d4c:    20008af0    ...     DCD    536906480
    __arm_cp.3_24
        0x20003d50:    20009948    H..     DCD    536910152
    __arm_cp.3_25
        0x20003d54:    20008fa0    ...     DCD    536907680
    __arm_cp.3_26
        0x20003d58:    2000784c    Lx.     DCD    536901708
    __arm_cp.3_27
        0x20003d5c:    2000a5e4    ...     DCD    536913380
    __arm_cp.3_28
        0x20003d60:    20007828    (x.     DCD    536901672
    __arm_cp.3_29
        0x20003d64:    2000493d    =I.     DCD    536889661
    __arm_cp.3_30
        0x20003d68:    2000a5ac    ...     DCD    536913324
    __arm_cp.3_31
        0x20003d6c:    200067ad    .g.     DCD    536897453
    __arm_cp.3_32
        0x20003d70:    2000798d    .y.     DCD    536902029
    __arm_cp.3_33
        0x20003d74:    00000dac    ....    DCD    3500
    __arm_cp.3_34
        0x20003d78:    20007976    vy.     DCD    536902006
    $t
    ble_dis_get_attr_len_cb
        0x20003d7c:    485a        ZH      LDR      r0,[pc,#360] ; [0x20003ee8] = 0x2000b9fe
        0x20003d7e:    8800        ..      LDRH     r0,[r0,#0]
        0x20003d80:    1a08        ..      SUBS     r0,r1,r0
        0x20003d82:    4241        AB      RSBS     r1,r0,#0
        0x20003d84:    4141        AA      ADCS     r1,r1,r0
        0x20003d86:    00c8        ..      LSLS     r0,r1,#3
        0x20003d88:    4770        pG      BX       lr
        0x20003d8a:    46c0        .F      MOV      r8,r8
    ble_dis_init
        0x20003d8c:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20003d8e:    b083        ..      SUB      sp,sp,#0xc
        0x20003d90:    493b        ;I      LDR      r1,[pc,#236] ; [0x20003e80] = 0x180a
        0x20003d92:    2500        .%      MOVS     r5,#0
        0x20003d94:    4b3b        ;K      LDR      r3,[pc,#236] ; [0x20003e84] = 0x20007864
        0x20003d96:    4628        (F      MOV      r0,r5
        0x20003d98:    462a        *F      MOV      r2,r5
        0x20003d9a:    f001f8db    ....    BL       patch_gatts_api_add_service_start ; 0x20004f54
        0x20003d9e:    2800        .(      CMP      r0,#0
        0x20003da0:    d067        g.      BEQ      0x20003e72 ; ble_dis_init + 230
        0x20003da2:    9500        ..      STR      r5,[sp,#0]
        0x20003da4:    9501        ..      STR      r5,[sp,#4]
        0x20003da6:    2081        .       MOVS     r0,#0x81
        0x20003da8:    0043        C.      LSLS     r3,r0,#1
        0x20003daa:    4c37        7L      LDR      r4,[pc,#220] ; [0x20003e88] = 0x2a23
        0x20003dac:    4628        (F      MOV      r0,r5
        0x20003dae:    4621        !F      MOV      r1,r4
        0x20003db0:    462a        *F      MOV      r2,r5
        0x20003db2:    f001f863    ..c.    BL       patch_gatts_api_add_char ; 0x20004e7c
        0x20003db6:    2800        .(      CMP      r0,#0
        0x20003db8:    d05b        [.      BEQ      0x20003e72 ; ble_dis_init + 230
        0x20003dba:    494b        KI      LDR      r1,[pc,#300] ; [0x20003ee8] = 0x2000b9fe
        0x20003dbc:    8008        ..      STRH     r0,[r1,#0]
        0x20003dbe:    200d        .       MOVS     r0,#0xd
        0x20003dc0:    9001        ..      STR      r0,[sp,#4]
        0x20003dc2:    4832        2H      LDR      r0,[pc,#200] ; [0x20003e8c] = 0x200078c8
        0x20003dc4:    9000        ..      STR      r0,[sp,#0]
        0x20003dc6:    1c61        a.      ADDS     r1,r4,#1
        0x20003dc8:    2000        .       MOVS     r0,#0
        0x20003dca:    2302        .#      MOVS     r3,#2
        0x20003dcc:    4602        .F      MOV      r2,r0
        0x20003dce:    f001f855    ..U.    BL       patch_gatts_api_add_char ; 0x20004e7c
        0x20003dd2:    2800        .(      CMP      r0,#0
        0x20003dd4:    d04d        M.      BEQ      0x20003e72 ; ble_dis_init + 230
        0x20003dd6:    260e        .&      MOVS     r6,#0xe
        0x20003dd8:    9601        ..      STR      r6,[sp,#4]
        0x20003dda:    482d        -H      LDR      r0,[pc,#180] ; [0x20003e90] = 0x200078d8
        0x20003ddc:    9000        ..      STR      r0,[sp,#0]
        0x20003dde:    1ca1        ..      ADDS     r1,r4,#2
        0x20003de0:    2500        .%      MOVS     r5,#0
        0x20003de2:    2302        .#      MOVS     r3,#2
        0x20003de4:    4628        (F      MOV      r0,r5
        0x20003de6:    462a        *F      MOV      r2,r5
        0x20003de8:    f001f848    ..H.    BL       patch_gatts_api_add_char ; 0x20004e7c
        0x20003dec:    2800        .(      CMP      r0,#0
        0x20003dee:    d040        @.      BEQ      0x20003e72 ; ble_dis_init + 230
        0x20003df0:    2712        .'      MOVS     r7,#0x12
        0x20003df2:    9701        ..      STR      r7,[sp,#4]
        0x20003df4:    4827        'H      LDR      r0,[pc,#156] ; [0x20003e94] = 0x2000788c
        0x20003df6:    9000        ..      STR      r0,[sp,#0]
        0x20003df8:    1ce1        ..      ADDS     r1,r4,#3
        0x20003dfa:    9602        ..      STR      r6,[sp,#8]
        0x20003dfc:    2602        .&      MOVS     r6,#2
        0x20003dfe:    4628        (F      MOV      r0,r5
        0x20003e00:    462a        *F      MOV      r2,r5
        0x20003e02:    4633        3F      MOV      r3,r6
        0x20003e04:    f001f83a    ..:.    BL       patch_gatts_api_add_char ; 0x20004e7c
        0x20003e08:    9701        ..      STR      r7,[sp,#4]
        0x20003e0a:    4823        #H      LDR      r0,[pc,#140] ; [0x20003e98] = 0x200078a0
        0x20003e0c:    9000        ..      STR      r0,[sp,#0]
        0x20003e0e:    1d21        !.      ADDS     r1,r4,#4
        0x20003e10:    4628        (F      MOV      r0,r5
        0x20003e12:    462a        *F      MOV      r2,r5
        0x20003e14:    4633        3F      MOV      r3,r6
        0x20003e16:    f001f831    ..1.    BL       patch_gatts_api_add_char ; 0x20004e7c
        0x20003e1a:    9701        ..      STR      r7,[sp,#4]
        0x20003e1c:    481f        .H      LDR      r0,[pc,#124] ; [0x20003e9c] = 0x200078e8
        0x20003e1e:    9000        ..      STR      r0,[sp,#0]
        0x20003e20:    1d61        a.      ADDS     r1,r4,#5
        0x20003e22:    4628        (F      MOV      r0,r5
        0x20003e24:    462a        *F      MOV      r2,r5
        0x20003e26:    4633        3F      MOV      r3,r6
        0x20003e28:    f001f828    ..(.    BL       patch_gatts_api_add_char ; 0x20004e7c
        0x20003e2c:    9701        ..      STR      r7,[sp,#4]
        0x20003e2e:    481c        .H      LDR      r0,[pc,#112] ; [0x20003ea0] = 0x200078b4
        0x20003e30:    9000        ..      STR      r0,[sp,#0]
        0x20003e32:    1da1        ..      ADDS     r1,r4,#6
        0x20003e34:    4628        (F      MOV      r0,r5
        0x20003e36:    462a        *F      MOV      r2,r5
        0x20003e38:    4633        3F      MOV      r3,r6
        0x20003e3a:    f001f81f    ....    BL       patch_gatts_api_add_char ; 0x20004e7c
        0x20003e3e:    9802        ..      LDR      r0,[sp,#8]
        0x20003e40:    9001        ..      STR      r0,[sp,#4]
        0x20003e42:    4818        .H      LDR      r0,[pc,#96] ; [0x20003ea4] = 0x2000787c
        0x20003e44:    9000        ..      STR      r0,[sp,#0]
        0x20003e46:    1de1        ..      ADDS     r1,r4,#7
        0x20003e48:    4628        (F      MOV      r0,r5
        0x20003e4a:    462a        *F      MOV      r2,r5
        0x20003e4c:    4633        3F      MOV      r3,r6
        0x20003e4e:    f001f815    ....    BL       patch_gatts_api_add_char ; 0x20004e7c
        0x20003e52:    2007        .       MOVS     r0,#7
        0x20003e54:    9001        ..      STR      r0,[sp,#4]
        0x20003e56:    4814        .H      LDR      r0,[pc,#80] ; [0x20003ea8] = 0x20007c04
        0x20003e58:    9000        ..      STR      r0,[sp,#0]
        0x20003e5a:    342d        -4      ADDS     r4,r4,#0x2d
        0x20003e5c:    4628        (F      MOV      r0,r5
        0x20003e5e:    4621        !F      MOV      r1,r4
        0x20003e60:    462a        *F      MOV      r2,r5
        0x20003e62:    4633        3F      MOV      r3,r6
        0x20003e64:    f001f80a    ....    BL       patch_gatts_api_add_char ; 0x20004e7c
        0x20003e68:    f001f83a    ..:.    BL       patch_gatts_api_add_service_end ; 0x20004ee0
        0x20003e6c:    f002fed2    ....    BL       $Ven$TT$L$$rom_gatts_api_get_last_attribute_handle ; 0x20006c14
        0x20003e70:    e003        ..      B        0x20003e7a ; ble_dis_init + 238
        0x20003e72:    480e        .H      LDR      r0,[pc,#56] ; [0x20003eac] = 0x20007957
        0x20003e74:    f003fcc0    ....    BL       puts ; 0x200077f8
        0x20003e78:    2501        .%      MOVS     r5,#1
        0x20003e7a:    4628        (F      MOV      r0,r5
        0x20003e7c:    b003        ..      ADD      sp,sp,#0xc
        0x20003e7e:    bdf0        ..      POP      {r4-r7,pc}
    $d
    __arm_cp.0_0
        0x20003e80:    0000180a    ....    DCD    6154
    __arm_cp.0_1
        0x20003e84:    20007864    dx.     DCD    536901732
    __arm_cp.0_2
        0x20003e88:    00002a23    #*..    DCD    10787
    __arm_cp.0_4
        0x20003e8c:    200078c8    .x.     DCD    536901832
    __arm_cp.0_5
        0x20003e90:    200078d8    .x.     DCD    536901848
    __arm_cp.0_6
        0x20003e94:    2000788c    .x.     DCD    536901772
    __arm_cp.0_7
        0x20003e98:    200078a0    .x.     DCD    536901792
    __arm_cp.0_8
        0x20003e9c:    200078e8    .x.     DCD    536901864
    __arm_cp.0_9
        0x20003ea0:    200078b4    .x.     DCD    536901812
    __arm_cp.0_10
        0x20003ea4:    2000787c    |x.     DCD    536901756
    __arm_cp.0_11
        0x20003ea8:    20007c04    .|.     DCD    536902660
    __arm_cp.0_12
        0x20003eac:    20007957    Wy.     DCD    536901975
    $t
    ble_dis_read_attr_cb
        0x20003eb0:    b510        ..      PUSH     {r4,lr}
        0x20003eb2:    480d        .H      LDR      r0,[pc,#52] ; [0x20003ee8] = 0x2000b9fe
        0x20003eb4:    8800        ..      LDRH     r0,[r0,#0]
        0x20003eb6:    4281        .B      CMP      r1,r0
        0x20003eb8:    d114        ..      BNE      0x20003ee4 ; ble_dis_read_attr_cb + 52
        0x20003eba:    2008        .       MOVS     r0,#8
        0x20003ebc:    2b00        .+      CMP      r3,#0
        0x20003ebe:    d010        ..      BEQ      0x20003ee2 ; ble_dis_read_attr_cb + 50
        0x20003ec0:    490a        .I      LDR      r1,[pc,#40] ; [0x20003eec] = 0x2000e030
        0x20003ec2:    680a        .h      LDR      r2,[r1,#0]
        0x20003ec4:    6849        Ih      LDR      r1,[r1,#4]
        0x20003ec6:    7119        .q      STRB     r1,[r3,#4]
        0x20003ec8:    701a        .p      STRB     r2,[r3,#0]
        0x20003eca:    0e0c        ..      LSRS     r4,r1,#24
        0x20003ecc:    71dc        .q      STRB     r4,[r3,#7]
        0x20003ece:    0c0c        ..      LSRS     r4,r1,#16
        0x20003ed0:    719c        .q      STRB     r4,[r3,#6]
        0x20003ed2:    0a09        ..      LSRS     r1,r1,#8
        0x20003ed4:    7159        Yq      STRB     r1,[r3,#5]
        0x20003ed6:    0e11        ..      LSRS     r1,r2,#24
        0x20003ed8:    70d9        .p      STRB     r1,[r3,#3]
        0x20003eda:    0c11        ..      LSRS     r1,r2,#16
        0x20003edc:    7099        .p      STRB     r1,[r3,#2]
        0x20003ede:    0a11        ..      LSRS     r1,r2,#8
        0x20003ee0:    7059        Yp      STRB     r1,[r3,#1]
        0x20003ee2:    bd10        ..      POP      {r4,pc}
        0x20003ee4:    2000        .       MOVS     r0,#0
        0x20003ee6:    bd10        ..      POP      {r4,pc}
    $d
    __arm_cp.4_0
        0x20003ee8:    2000b9fe    ...     DCD    536918526
    __arm_cp.4_1
        0x20003eec:    2000e030    0..     DCD    536928304
    $t
    ble_event_handler
        0x20003ef0:    b570        p.      PUSH     {r4-r6,lr}
        0x20003ef2:    1e40        @.      SUBS     r0,r0,#1
        0x20003ef4:    2862        b(      CMP      r0,#0x62
        0x20003ef6:    d900        ..      BLS      0x20003efa ; ble_event_handler + 10
        0x20003ef8:    e1ae        ..      B        0x20004258 ; ble_event_handler + 872
        0x20003efa:    1c4d        M.      ADDS     r5,r1,#1
        0x20003efc:    0040        @.      LSLS     r0,r0,#1
        0x20003efe:    46c0        .F      MOV      r8,r8
        0x20003f00:    4478        xD      ADD      r0,r0,pc
        0x20003f02:    8880        ..      LDRH     r0,[r0,#4]
        0x20003f04:    0040        @.      LSLS     r0,r0,#1
        0x20003f06:    4487        .D      ADD      pc,pc,r0
    $d
        0x20003f08:    00e00062    b...    DCD    14680162
        0x20003f0c:    012a00a3    ..*.    DCD    19529891
        0x20003f10:    00be0150    P...    DCD    12452176
        0x20003f14:    010b00f6    ....    DCD    17498358
        0x20003f18:    015f0178    x._.    DCD    23003512
        0x20003f1c:    01a701a7    ....    DCD    27722151
        0x20003f20:    01a701a7    ....    DCD    27722151
        0x20003f24:    01a701a7    ....    DCD    27722151
        0x20003f28:    01a701a7    ....    DCD    27722151
        0x20003f2c:    01a701a7    ....    DCD    27722151
        0x20003f30:    01a701a7    ....    DCD    27722151
        0x20003f34:    01a701a7    ....    DCD    27722151
        0x20003f38:    01a701a7    ....    DCD    27722151
        0x20003f3c:    01a701a7    ....    DCD    27722151
        0x20003f40:    01a701a7    ....    DCD    27722151
        0x20003f44:    008801a7    ....    DCD    8913319
        0x20003f48:    009100ce    ....    DCD    9502926
        0x20003f4c:    01a7007f    ....    DCD    27721855
        0x20003f50:    0121011b    ..!.    DCD    18940187
        0x20003f54:    01a70190    ....    DCD    27722128
        0x20003f58:    01a701a7    ....    DCD    27722151
        0x20003f5c:    01a701a7    ....    DCD    27722151
        0x20003f60:    01a701a7    ....    DCD    27722151
        0x20003f64:    01a701a7    ....    DCD    27722151
        0x20003f68:    01a701a7    ....    DCD    27722151
        0x20003f6c:    01a701a7    ....    DCD    27722151
        0x20003f70:    01a701a7    ....    DCD    27722151
        0x20003f74:    01a701a7    ....    DCD    27722151
        0x20003f78:    01a701a7    ....    DCD    27722151
        0x20003f7c:    01a701a7    ....    DCD    27722151
        0x20003f80:    01a701a7    ....    DCD    27722151
        0x20003f84:    018701a7    ....    DCD    25624999
        0x20003f88:    01a701a7    ....    DCD    27722151
        0x20003f8c:    00a00079    y...    DCD    10485881
        0x20003f90:    007c019d    ..|.    DCD    8126877
        0x20003f94:    0085008e    ....    DCD    8716430
        0x20003f98:    008200dd    ....    DCD    8519901
        0x20003f9c:    01a701a3    ....    DCD    27722147
        0x20003fa0:    01a701a0    ....    DCD    27722144
        0x20003fa4:    01a701a7    ....    DCD    27722151
        0x20003fa8:    01a701a7    ....    DCD    27722151
        0x20003fac:    01a701a7    ....    DCD    27722151
        0x20003fb0:    01a701a7    ....    DCD    27722151
        0x20003fb4:    01a701a7    ....    DCD    27722151
        0x20003fb8:    01a7008b    ....    DCD    27721867
        0x20003fbc:    01a701a7    ....    DCD    27722151
        0x20003fc0:    01a701a7    ....    DCD    27722151
        0x20003fc4:    01a701a7    ....    DCD    27722151
        0x20003fc8:    00bb01a7    ....    DCD    12255655
        0x20003fcc:    0127        '.      DCW    295
    $t
        0x20003fce:    7888        .x      LDRB     r0,[r1,#2]
        0x20003fd0:    78ca        .x      LDRB     r2,[r1,#3]
        0x20003fd2:    0212        ..      LSLS     r2,r2,#8
        0x20003fd4:    1812        ..      ADDS     r2,r2,r0
        0x20003fd6:    48e0        .H      LDR      r0,[pc,#896] ; [0x20004358] = 0xa003
        0x20003fd8:    460c        .F      MOV      r4,r1
        0x20003fda:    4611        .F      MOV      r1,r2
        0x20003fdc:    f002fd90    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b00
        0x20003fe0:    78a0        .x      LDRB     r0,[r4,#2]
        0x20003fe2:    78e1        .x      LDRB     r1,[r4,#3]
        0x20003fe4:    0209        ..      LSLS     r1,r1,#8
        0x20003fe6:    1809        ..      ADDS     r1,r1,r0
        0x20003fe8:    48dc        .H      LDR      r0,[pc,#880] ; [0x2000435c] = 0x20007bcf
        0x20003fea:    f003f9bb    ....    BL       __0printf$8 ; 0x20007364
        0x20003fee:    78a0        .x      LDRB     r0,[r4,#2]
        0x20003ff0:    78e1        .x      LDRB     r1,[r4,#3]
        0x20003ff2:    0209        ..      LSLS     r1,r1,#8
        0x20003ff4:    1808        ..      ADDS     r0,r1,r0
        0x20003ff6:    49d7        .I      LDR      r1,[pc,#860] ; [0x20004354] = 0x2000b9f6
        0x20003ff8:    8008        ..      STRH     r0,[r1,#0]
        0x20003ffa:    bd70        p.      POP      {r4-r6,pc}
        0x20003ffc:    7809        .x      LDRB     r1,[r1,#0]
        0x20003ffe:    48a0        .H      LDR      r0,[pc,#640] ; [0x20004280] = 0xa022
        0x20004000:    e128        (.      B        0x20004254 ; ble_event_handler + 868
        0x20004002:    7809        .x      LDRB     r1,[r1,#0]
        0x20004004:    489b        .H      LDR      r0,[pc,#620] ; [0x20004274] = 0xa025
        0x20004006:    e125        %.      B        0x20004254 ; ble_event_handler + 868
        0x20004008:    8809        ..      LDRH     r1,[r1,#0]
        0x2000400a:    48a4        .H      LDR      r0,[pc,#656] ; [0x2000429c] = 0xa013
        0x2000400c:    e122        ".      B        0x20004254 ; ble_event_handler + 868
        0x2000400e:    7809        .x      LDRB     r1,[r1,#0]
        0x20004010:    4894        .H      LDR      r0,[pc,#592] ; [0x20004264] = 0xa029
        0x20004012:    e11f        ..      B        0x20004254 ; ble_event_handler + 868
        0x20004014:    7809        .x      LDRB     r1,[r1,#0]
        0x20004016:    4895        .H      LDR      r0,[pc,#596] ; [0x2000426c] = 0xa027
        0x20004018:    e11c        ..      B        0x20004254 ; ble_event_handler + 868
        0x2000401a:    8809        ..      LDRH     r1,[r1,#0]
        0x2000401c:    48a2        .H      LDR      r0,[pc,#648] ; [0x200042a8] = 0xa010
        0x2000401e:    e119        ..      B        0x20004254 ; ble_event_handler + 868
        0x20004020:    7809        .x      LDRB     r1,[r1,#0]
        0x20004022:    4898        .H      LDR      r0,[pc,#608] ; [0x20004284] = 0xa02c
        0x20004024:    e116        ..      B        0x20004254 ; ble_event_handler + 868
        0x20004026:    7809        .x      LDRB     r1,[r1,#0]
        0x20004028:    4891        .H      LDR      r0,[pc,#580] ; [0x20004270] = 0xa026
        0x2000402a:    e113        ..      B        0x20004254 ; ble_event_handler + 868
        0x2000402c:    1c88        ..      ADDS     r0,r1,#2
        0x2000402e:    2200        ."      MOVS     r2,#0
        0x20004030:    460c        .F      MOV      r4,r1
        0x20004032:    4611        .F      MOV      r1,r2
        0x20004034:    f002fdf4    ....    BL       $Ven$TT$L$$rom_little_endian_read_32 ; 0x20006c20
        0x20004038:    4601        .F      MOV      r1,r0
        0x2000403a:    7820         x      LDRB     r0,[r4,#0]
        0x2000403c:    7862        bx      LDRB     r2,[r4,#1]
        0x2000403e:    0212        ..      LSLS     r2,r2,#8
        0x20004040:    1812        ..      ADDS     r2,r2,r0
        0x20004042:    4897        .H      LDR      r0,[pc,#604] ; [0x200042a0] = 0xa012
        0x20004044:    f002fdf2    ....    BL       $Ven$TT$L$$mlog_3216 ; 0x20006c2c
        0x20004048:    bd70        p.      POP      {r4-r6,pc}
        0x2000404a:    7809        .x      LDRB     r1,[r1,#0]
        0x2000404c:    488b        .H      LDR      r0,[pc,#556] ; [0x2000427c] = 0xa023
        0x2000404e:    e101        ..      B        0x20004254 ; ble_event_handler + 868
        0x20004050:    7908        .y      LDRB     r0,[r1,#4]
        0x20004052:    794a        Jy      LDRB     r2,[r1,#5]
        0x20004054:    0212        ..      LSLS     r2,r2,#8
        0x20004056:    1814        ..      ADDS     r4,r2,r0
        0x20004058:    78cb        .x      LDRB     r3,[r1,#3]
        0x2000405a:    782a        *x      LDRB     r2,[r5,#0]
        0x2000405c:    48b5        .H      LDR      r0,[pc,#724] ; [0x20004334] = 0xa009
        0x2000405e:    460e        .F      MOV      r6,r1
        0x20004060:    4621        !F      MOV      r1,r4
        0x20004062:    f002fde9    ....    BL       $Ven$TT$L$$mlog_1688 ; 0x20006c38
        0x20004066:    7930        0y      LDRB     r0,[r6,#4]
        0x20004068:    7971        qy      LDRB     r1,[r6,#5]
        0x2000406a:    0209        ..      LSLS     r1,r1,#8
        0x2000406c:    1809        ..      ADDS     r1,r1,r0
        0x2000406e:    7828        (x      LDRB     r0,[r5,#0]
        0x20004070:    786a        jx      LDRB     r2,[r5,#1]
        0x20004072:    0212        ..      LSLS     r2,r2,#8
        0x20004074:    1812        ..      ADDS     r2,r2,r0
        0x20004076:    78f3        .x      LDRB     r3,[r6,#3]
        0x20004078:    48af        .H      LDR      r0,[pc,#700] ; [0x20004338] = 0x20007ad5
        0x2000407a:    f003f973    ..s.    BL       __0printf$8 ; 0x20007364
        0x2000407e:    bd70        p.      POP      {r4-r6,pc}
        0x20004080:    7809        .x      LDRB     r1,[r1,#0]
        0x20004082:    4881        .H      LDR      r0,[pc,#516] ; [0x20004288] = 0xa033
        0x20004084:    e0e6        ..      B        0x20004254 ; ble_event_handler + 868
        0x20004086:    7828        (x      LDRB     r0,[r5,#0]
        0x20004088:    7869        ix      LDRB     r1,[r5,#1]
        0x2000408a:    0209        ..      LSLS     r1,r1,#8
        0x2000408c:    1809        ..      ADDS     r1,r1,r0
        0x2000408e:    78a8        .x      LDRB     r0,[r5,#2]
        0x20004090:    78ea        .x      LDRB     r2,[r5,#3]
        0x20004092:    0212        ..      LSLS     r2,r2,#8
        0x20004094:    1812        ..      ADDS     r2,r2,r0
        0x20004096:    79a8        .y      LDRB     r0,[r5,#6]
        0x20004098:    79eb        .y      LDRB     r3,[r5,#7]
        0x2000409a:    021b        ..      LSLS     r3,r3,#8
        0x2000409c:    181b        ..      ADDS     r3,r3,r0
        0x2000409e:    4895        .H      LDR      r0,[pc,#596] ; [0x200042f4] = 0xa00d
        0x200040a0:    f002fdd0    ....    BL       $Ven$TT$L$$mlog_161616 ; 0x20006c44
        0x200040a4:    bd70        p.      POP      {r4-r6,pc}
        0x200040a6:    1c88        ..      ADDS     r0,r1,#2
        0x200040a8:    2200        ."      MOVS     r2,#0
        0x200040aa:    460c        .F      MOV      r4,r1
        0x200040ac:    4611        .F      MOV      r1,r2
        0x200040ae:    f002fdb7    ....    BL       $Ven$TT$L$$rom_little_endian_read_32 ; 0x20006c20
        0x200040b2:    4601        .F      MOV      r1,r0
        0x200040b4:    7820         x      LDRB     r0,[r4,#0]
        0x200040b6:    7862        bx      LDRB     r2,[r4,#1]
        0x200040b8:    0212        ..      LSLS     r2,r2,#8
        0x200040ba:    1812        ..      ADDS     r2,r2,r0
        0x200040bc:    4879        yH      LDR      r0,[pc,#484] ; [0x200042a4] = 0xa011
        0x200040be:    f002fdb5    ....    BL       $Ven$TT$L$$mlog_3216 ; 0x20006c2c
        0x200040c2:    bd70        p.      POP      {r4-r6,pc}
        0x200040c4:    7809        .x      LDRB     r1,[r1,#0]
        0x200040c6:    4868        hH      LDR      r0,[pc,#416] ; [0x20004268] = 0xa028
        0x200040c8:    e0c4        ..      B        0x20004254 ; ble_event_handler + 868
        0x200040ca:    78ca        .x      LDRB     r2,[r1,#3]
        0x200040cc:    782b        +x      LDRB     r3,[r5,#0]
        0x200040ce:    489f        .H      LDR      r0,[pc,#636] ; [0x2000434c] = 0xa005
        0x200040d0:    460c        .F      MOV      r4,r1
        0x200040d2:    4619        .F      MOV      r1,r3
        0x200040d4:    f002fdbc    ....    BL       $Ven$TT$L$$mlog_88 ; 0x20006c50
        0x200040d8:    7828        (x      LDRB     r0,[r5,#0]
        0x200040da:    7869        ix      LDRB     r1,[r5,#1]
        0x200040dc:    0209        ..      LSLS     r1,r1,#8
        0x200040de:    1809        ..      ADDS     r1,r1,r0
        0x200040e0:    78e2        .x      LDRB     r2,[r4,#3]
        0x200040e2:    489b        .H      LDR      r0,[pc,#620] ; [0x20004350] = 0x20007b27
        0x200040e4:    f003f93e    ..>.    BL       __0printf$8 ; 0x20007364
        0x200040e8:    499a        .I      LDR      r1,[pc,#616] ; [0x20004354] = 0x2000b9f6
        0x200040ea:    2000        .       MOVS     r0,#0
        0x200040ec:    8008        ..      STRH     r0,[r1,#0]
        0x200040ee:    2101        .!      MOVS     r1,#1
        0x200040f0:    f002fdb4    ....    BL       $Ven$TT$L$$rom_gap_api_set_advertising_enable ; 0x20006c5c
        0x200040f4:    bd70        p.      POP      {r4-r6,pc}
        0x200040f6:    7888        .x      LDRB     r0,[r1,#2]
        0x200040f8:    78ca        .x      LDRB     r2,[r1,#3]
        0x200040fa:    0212        ..      LSLS     r2,r2,#8
        0x200040fc:    1814        ..      ADDS     r4,r2,r0
        0x200040fe:    794b        Ky      LDRB     r3,[r1,#5]
        0x20004100:    790a        .y      LDRB     r2,[r1,#4]
        0x20004102:    487a        zH      LDR      r0,[pc,#488] ; [0x200042ec] = 0xa00e
        0x20004104:    460d        .F      MOV      r5,r1
        0x20004106:    4621        !F      MOV      r1,r4
        0x20004108:    f002fd96    ....    BL       $Ven$TT$L$$mlog_1688 ; 0x20006c38
        0x2000410c:    78a8        .x      LDRB     r0,[r5,#2]
        0x2000410e:    78e9        .x      LDRB     r1,[r5,#3]
        0x20004110:    0209        ..      LSLS     r1,r1,#8
        0x20004112:    1809        ..      ADDS     r1,r1,r0
        0x20004114:    796b        ky      LDRB     r3,[r5,#5]
        0x20004116:    792a        *y      LDRB     r2,[r5,#4]
        0x20004118:    4875        uH      LDR      r0,[pc,#468] ; [0x200042f0] = 0x20007a0d
        0x2000411a:    f003f923    ..#.    BL       __0printf$8 ; 0x20007364
        0x2000411e:    bd70        p.      POP      {r4-r6,pc}
        0x20004120:    78ca        .x      LDRB     r2,[r1,#3]
        0x20004122:    782b        +x      LDRB     r3,[r5,#0]
        0x20004124:    4887        .H      LDR      r0,[pc,#540] ; [0x20004344] = 0xa007
        0x20004126:    460c        .F      MOV      r4,r1
        0x20004128:    4619        .F      MOV      r1,r3
        0x2000412a:    f002fd91    ....    BL       $Ven$TT$L$$mlog_88 ; 0x20006c50
        0x2000412e:    7828        (x      LDRB     r0,[r5,#0]
        0x20004130:    7869        ix      LDRB     r1,[r5,#1]
        0x20004132:    0209        ..      LSLS     r1,r1,#8
        0x20004134:    1809        ..      ADDS     r1,r1,r0
        0x20004136:    78e2        .x      LDRB     r2,[r4,#3]
        0x20004138:    4883        .H      LDR      r0,[pc,#524] ; [0x20004348] = 0x20007a5c
        0x2000413a:    f003f913    ....    BL       __0printf$8 ; 0x20007364
        0x2000413e:    bd70        p.      POP      {r4-r6,pc}
        0x20004140:    7808        .x      LDRB     r0,[r1,#0]
        0x20004142:    7849        Ix      LDRB     r1,[r1,#1]
        0x20004144:    0209        ..      LSLS     r1,r1,#8
        0x20004146:    1809        ..      ADDS     r1,r1,r0
        0x20004148:    4853        SH      LDR      r0,[pc,#332] ; [0x20004298] = 0xa014
        0x2000414a:    e083        ..      B        0x20004254 ; ble_event_handler + 868
        0x2000414c:    788a        .x      LDRB     r2,[r1,#2]
        0x2000414e:    7809        .x      LDRB     r1,[r1,#0]
        0x20004150:    4850        PH      LDR      r0,[pc,#320] ; [0x20004294] = 0xa015
        0x20004152:    f002fd7d    ..}.    BL       $Ven$TT$L$$mlog_88 ; 0x20006c50
        0x20004156:    bd70        p.      POP      {r4-r6,pc}
        0x20004158:    7809        .x      LDRB     r1,[r1,#0]
        0x2000415a:    4854        TH      LDR      r0,[pc,#336] ; [0x200042ac] = 0xa034
        0x2000415c:    e07a        z.      B        0x20004254 ; ble_event_handler + 868
        0x2000415e:    7908        .y      LDRB     r0,[r1,#4]
        0x20004160:    794a        Jy      LDRB     r2,[r1,#5]
        0x20004162:    0212        ..      LSLS     r2,r2,#8
        0x20004164:    1812        ..      ADDS     r2,r2,r0
        0x20004166:    4866        fH      LDR      r0,[pc,#408] ; [0x20004300] = 0xa00a
        0x20004168:    460c        .F      MOV      r4,r1
        0x2000416a:    4611        .F      MOV      r1,r2
        0x2000416c:    f002fcc8    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b00
        0x20004170:    1d21        !.      ADDS     r1,r4,#4
        0x20004172:    4864        dH      LDR      r0,[pc,#400] ; [0x20004304] = 0xa00b
        0x20004174:    2208        ."      MOVS     r2,#8
        0x20004176:    f002fd77    ..w.    BL       $Ven$TT$L$$mlog_x ; 0x20006c68
        0x2000417a:    7920         y      LDRB     r0,[r4,#4]
        0x2000417c:    7961        ay      LDRB     r1,[r4,#5]
        0x2000417e:    0209        ..      LSLS     r1,r1,#8
        0x20004180:    1808        ..      ADDS     r0,r1,r0
        0x20004182:    79a1        .y      LDRB     r1,[r4,#6]
        0x20004184:    0409        ..      LSLS     r1,r1,#16
        0x20004186:    79e2        .y      LDRB     r2,[r4,#7]
        0x20004188:    0612        ..      LSLS     r2,r2,#24
        0x2000418a:    1851        Q.      ADDS     r1,r2,r1
        0x2000418c:    180a        ..      ADDS     r2,r1,r0
        0x2000418e:    7a20         z      LDRB     r0,[r4,#8]
        0x20004190:    7a61        az      LDRB     r1,[r4,#9]
        0x20004192:    0209        ..      LSLS     r1,r1,#8
        0x20004194:    1808        ..      ADDS     r0,r1,r0
        0x20004196:    7aa1        .z      LDRB     r1,[r4,#0xa]
        0x20004198:    0409        ..      LSLS     r1,r1,#16
        0x2000419a:    7ae3        .z      LDRB     r3,[r4,#0xb]
        0x2000419c:    061b        ..      LSLS     r3,r3,#24
        0x2000419e:    1859        Y.      ADDS     r1,r3,r1
        0x200041a0:    180b        ..      ADDS     r3,r1,r0
        0x200041a2:    a059        Y.      ADR      r0,{pc}+0x166 ; 0x20004308
        0x200041a4:    f003f8de    ....    BL       __0printf$8 ; 0x20007364
        0x200041a8:    bd70        p.      POP      {r4-r6,pc}
        0x200041aa:    890b        ..      LDRH     r3,[r1,#8]
        0x200041ac:    88ca        ..      LDRH     r2,[r1,#6]
        0x200041ae:    888c        ..      LDRH     r4,[r1,#4]
        0x200041b0:    4851        QH      LDR      r0,[pc,#324] ; [0x200042f8] = 0xa00c
        0x200041b2:    460d        .F      MOV      r5,r1
        0x200041b4:    4621        !F      MOV      r1,r4
        0x200041b6:    f002fd45    ..E.    BL       $Ven$TT$L$$mlog_161616 ; 0x20006c44
        0x200041ba:    892b        +.      LDRH     r3,[r5,#8]
        0x200041bc:    88ea        ..      LDRH     r2,[r5,#6]
        0x200041be:    88a9        ..      LDRH     r1,[r5,#4]
        0x200041c0:    484e        NH      LDR      r0,[pc,#312] ; [0x200042fc] = 0x20007b60
        0x200041c2:    f003f8cf    ....    BL       __0printf$8 ; 0x20007364
        0x200041c6:    bd70        p.      POP      {r4-r6,pc}
        0x200041c8:    7808        .x      LDRB     r0,[r1,#0]
        0x200041ca:    784a        Jx      LDRB     r2,[r1,#1]
        0x200041cc:    0212        ..      LSLS     r2,r2,#8
        0x200041ce:    1813        ..      ADDS     r3,r2,r0
        0x200041d0:    7888        .x      LDRB     r0,[r1,#2]
        0x200041d2:    78ca        .x      LDRB     r2,[r1,#3]
        0x200041d4:    0212        ..      LSLS     r2,r2,#8
        0x200041d6:    1812        ..      ADDS     r2,r2,r0
        0x200041d8:    4835        5H      LDR      r0,[pc,#212] ; [0x200042b0] = 0xa00f
        0x200041da:    460c        .F      MOV      r4,r1
        0x200041dc:    4619        .F      MOV      r1,r3
        0x200041de:    f002fd49    ..I.    BL       $Ven$TT$L$$mlog_1616 ; 0x20006c74
        0x200041e2:    7820         x      LDRB     r0,[r4,#0]
        0x200041e4:    7861        ax      LDRB     r1,[r4,#1]
        0x200041e6:    0209        ..      LSLS     r1,r1,#8
        0x200041e8:    1809        ..      ADDS     r1,r1,r0
        0x200041ea:    78a0        .x      LDRB     r0,[r4,#2]
        0x200041ec:    78e2        .x      LDRB     r2,[r4,#3]
        0x200041ee:    0212        ..      LSLS     r2,r2,#8
        0x200041f0:    1812        ..      ADDS     r2,r2,r0
        0x200041f2:    a030        0.      ADR      r0,{pc}+0xc2 ; 0x200042b4
        0x200041f4:    f003f8b6    ....    BL       __0printf$8 ; 0x20007364
        0x200041f8:    bd70        p.      POP      {r4-r6,pc}
        0x200041fa:    7828        (x      LDRB     r0,[r5,#0]
        0x200041fc:    7869        ix      LDRB     r1,[r5,#1]
        0x200041fe:    0209        ..      LSLS     r1,r1,#8
        0x20004200:    1809        ..      ADDS     r1,r1,r0
        0x20004202:    484e        NH      LDR      r0,[pc,#312] ; [0x2000433c] = 0xa008
        0x20004204:    f002fc7c    ..|.    BL       $Ven$TT$L$$mlog_16 ; 0x20006b00
        0x20004208:    7828        (x      LDRB     r0,[r5,#0]
        0x2000420a:    7869        ix      LDRB     r1,[r5,#1]
        0x2000420c:    0209        ..      LSLS     r1,r1,#8
        0x2000420e:    1809        ..      ADDS     r1,r1,r0
        0x20004210:    484b        KH      LDR      r0,[pc,#300] ; [0x20004340] = 0x20007aa6
        0x20004212:    f003f8a7    ....    BL       __0printf$8 ; 0x20007364
        0x20004216:    bd70        p.      POP      {r4-r6,pc}
        0x20004218:    780b        .x      LDRB     r3,[r1,#0]
        0x2000421a:    78c8        .x      LDRB     r0,[r1,#3]
        0x2000421c:    4240        @B      RSBS     r0,r0,#0
        0x2000421e:    b2c2        ..      UXTB     r2,r0
        0x20004220:    481a        .H      LDR      r0,[pc,#104] ; [0x2000428c] = 0xa021
        0x20004222:    4619        .F      MOV      r1,r3
        0x20004224:    f002fd14    ....    BL       $Ven$TT$L$$mlog_88 ; 0x20006c50
        0x20004228:    bd70        p.      POP      {r4-r6,pc}
        0x2000422a:    7808        .x      LDRB     r0,[r1,#0]
        0x2000422c:    784a        Jx      LDRB     r2,[r1,#1]
        0x2000422e:    0212        ..      LSLS     r2,r2,#8
        0x20004230:    1813        ..      ADDS     r3,r2,r0
        0x20004232:    7a88        .z      LDRB     r0,[r1,#0xa]
        0x20004234:    7ac9        .z      LDRB     r1,[r1,#0xb]
        0x20004236:    0209        ..      LSLS     r1,r1,#8
        0x20004238:    180a        ..      ADDS     r2,r1,r0
        0x2000423a:    4815        .H      LDR      r0,[pc,#84] ; [0x20004290] = 0xa016
        0x2000423c:    4619        .F      MOV      r1,r3
        0x2000423e:    f002fd19    ....    BL       $Ven$TT$L$$mlog_1616 ; 0x20006c74
        0x20004242:    bd70        p.      POP      {r4-r6,pc}
        0x20004244:    7809        .x      LDRB     r1,[r1,#0]
        0x20004246:    480c        .H      LDR      r0,[pc,#48] ; [0x20004278] = 0xa024
        0x20004248:    e004        ..      B        0x20004254 ; ble_event_handler + 868
        0x2000424a:    7809        .x      LDRB     r1,[r1,#0]
        0x2000424c:    4803        .H      LDR      r0,[pc,#12] ; [0x2000425c] = 0xa02b
        0x2000424e:    e001        ..      B        0x20004254 ; ble_event_handler + 868
        0x20004250:    7809        .x      LDRB     r1,[r1,#0]
        0x20004252:    4803        .H      LDR      r0,[pc,#12] ; [0x20004260] = 0xa02a
        0x20004254:    f002fc54    ..T.    BL       $Ven$TT$L$$mlog_16 ; 0x20006b00
        0x20004258:    bd70        p.      POP      {r4-r6,pc}
        0x2000425a:    46c0        .F      MOV      r8,r8
    $d
    __arm_cp.1_0
        0x2000425c:    0000a02b    +...    DCD    41003
    __arm_cp.1_1
        0x20004260:    0000a02a    *...    DCD    41002
    __arm_cp.1_2
        0x20004264:    0000a029    )...    DCD    41001
    __arm_cp.1_3
        0x20004268:    0000a028    (...    DCD    41000
    __arm_cp.1_4
        0x2000426c:    0000a027    '...    DCD    40999
    __arm_cp.1_5
        0x20004270:    0000a026    &...    DCD    40998
    __arm_cp.1_6
        0x20004274:    0000a025    %...    DCD    40997
    __arm_cp.1_7
        0x20004278:    0000a024    $...    DCD    40996
    __arm_cp.1_8
        0x2000427c:    0000a023    #...    DCD    40995
    __arm_cp.1_9
        0x20004280:    0000a022    "...    DCD    40994
    __arm_cp.1_10
        0x20004284:    0000a02c    ,...    DCD    41004
    __arm_cp.1_11
        0x20004288:    0000a033    3...    DCD    41011
    __arm_cp.1_12
        0x2000428c:    0000a021    !...    DCD    40993
    __arm_cp.1_13
        0x20004290:    0000a016    ....    DCD    40982
    __arm_cp.1_14
        0x20004294:    0000a015    ....    DCD    40981
    __arm_cp.1_15
        0x20004298:    0000a014    ....    DCD    40980
    __arm_cp.1_16
        0x2000429c:    0000a013    ....    DCD    40979
    __arm_cp.1_17
        0x200042a0:    0000a012    ....    DCD    40978
    __arm_cp.1_18
        0x200042a4:    0000a011    ....    DCD    40977
    __arm_cp.1_19
        0x200042a8:    0000a010    ....    DCD    40976
    __arm_cp.1_20
        0x200042ac:    0000a034    4...    DCD    41012
    __arm_cp.1_21
        0x200042b0:    0000a00f    ....    DCD    40975
        0x200042b4:    47534d5b    [MSG    DCD    1196641627
        0x200042b8:    454c425f    _BLE    DCD    1162625631
        0x200042bc:    55544d5f    _MTU    DCD    1431588191
        0x200042c0:    4358455f    _EXC    DCD    1129858399
        0x200042c4:    474e4148    HANG    DCD    1196310856
        0x200042c8:    495f4445    ED_I    DCD    1230980165
        0x200042cc:    205d444e    ND]     DCD    542983246
        0x200042d0:    646e6148    Hand    DCD    1684955464
        0x200042d4:    3d20656c    le =    DCD    1025533292
        0x200042d8:    25783020     0x%    DCD    628633632
        0x200042dc:    6d202c58    X, m    DCD    1830825048
        0x200042e0:    3d207574    tu =    DCD    1025537396
        0x200042e4:    0a642520     %d.    DCD    174335264
        0x200042e8:    00000000    ....    DCD    0
    __arm_cp.1_23
        0x200042ec:    0000a00e    ....    DCD    40974
    __arm_cp.1_24
        0x200042f0:    20007a0d    .z.     DCD    536902157
    __arm_cp.1_25
        0x200042f4:    0000a00d    ....    DCD    40973
    __arm_cp.1_26
        0x200042f8:    0000a00c    ....    DCD    40972
    __arm_cp.1_27
        0x200042fc:    20007b60    `{.     DCD    536902496
    __arm_cp.1_28
        0x20004300:    0000a00a    ....    DCD    40970
    __arm_cp.1_29
        0x20004304:    0000a00b    ....    DCD    40971
        0x20004308:    47534d5b    [MSG    DCD    1196641627
        0x2000430c:    454c425f    _BLE    DCD    1162625631
        0x20004310:    5f4c4c5f    _LL_    DCD    1598835807
        0x20004314:    54414546    FEAT    DCD    1413563718
        0x20004318:    5f455552    RUE_    DCD    1598379346
        0x2000431c:    5d444e49    IND]    DCD    1564757577
        0x20004320:    6e614820     Han    DCD    1851869216
        0x20004324:    20656c64    dle     DCD    543517796
        0x20004328:    7830203d    = 0x    DCD    2016419901
        0x2000432c:    0a584c25    %LX.    DCD    173558821
        0x20004330:    00000000    ....    DCD    0
    __arm_cp.1_31
        0x20004334:    0000a009    ....    DCD    40969
    __arm_cp.1_32
        0x20004338:    20007ad5    .z.     DCD    536902357
    __arm_cp.1_33
        0x2000433c:    0000a008    ....    DCD    40968
    __arm_cp.1_34
        0x20004340:    20007aa6    .z.     DCD    536902310
    __arm_cp.1_35
        0x20004344:    0000a007    ....    DCD    40967
    __arm_cp.1_36
        0x20004348:    20007a5c    \z.     DCD    536902236
    __arm_cp.1_37
        0x2000434c:    0000a005    ....    DCD    40965
    __arm_cp.1_38
        0x20004350:    20007b27    '{.     DCD    536902439
    __arm_cp.1_39
        0x20004354:    2000b9f6    ...     DCD    536918518
    __arm_cp.1_40
        0x20004358:    0000a003    ....    DCD    40963
    __arm_cp.1_41
        0x2000435c:    20007bcf    .{.     DCD    536902607
    $t
    ble_event_init
        0x20004360:    b580        ..      PUSH     {r7,lr}
        0x20004362:    4802        .H      LDR      r0,[pc,#8] ; [0x2000436c] = 0x20003ef1
        0x20004364:    f002fc8c    ....    BL       $Ven$TT$L$$ble_callback_set_host_stack_send_event_callback ; 0x20006c80
        0x20004368:    bd80        ..      POP      {r7,pc}
        0x2000436a:    46c0        .F      MOV      r8,r8
    $d
    __arm_cp.0_0
        0x2000436c:    20003ef1    .>.     DCD    536887025
    $t
    ble_gap_get_attr_len_cb
        0x20004370:    482f        /H      LDR      r0,[pc,#188] ; [0x20004430] = 0x2000b9f4
        0x20004372:    8800        ..      LDRH     r0,[r0,#0]
        0x20004374:    1a41        A.      SUBS     r1,r0,r1
        0x20004376:    4248        HB      RSBS     r0,r1,#0
        0x20004378:    4148        HA      ADCS     r0,r0,r1
        0x2000437a:    4770        pG      BX       lr
    ble_gap_read_attr_cb
        0x2000437c:    482c        ,H      LDR      r0,[pc,#176] ; [0x20004430] = 0x2000b9f4
        0x2000437e:    8800        ..      LDRH     r0,[r0,#0]
        0x20004380:    4288        .B      CMP      r0,r1
        0x20004382:    d105        ..      BNE      0x20004390 ; ble_gap_read_attr_cb + 20
        0x20004384:    2001        .       MOVS     r0,#1
        0x20004386:    2b00        .+      CMP      r3,#0
        0x20004388:    d001        ..      BEQ      0x2000438e ; ble_gap_read_attr_cb + 18
        0x2000438a:    2100        .!      MOVS     r1,#0
        0x2000438c:    7019        .p      STRB     r1,[r3,#0]
        0x2000438e:    4770        pG      BX       lr
        0x20004390:    2000        .       MOVS     r0,#0
        0x20004392:    4770        pG      BX       lr
    ble_gap_service_init
        0x20004394:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20004396:    b083        ..      SUB      sp,sp,#0xc
        0x20004398:    4614        .F      MOV      r4,r2
        0x2000439a:    460d        .F      MOV      r5,r1
        0x2000439c:    4601        .F      MOV      r1,r0
        0x2000439e:    2d20         -      CMP      r5,#0x20
        0x200043a0:    d300        ..      BCC      0x200043a4 ; ble_gap_service_init + 16
        0x200043a2:    2520         %      MOVS     r5,#0x20
        0x200043a4:    4f1f        .O      LDR      r7,[pc,#124] ; [0x20004424] = 0x2000b92c
        0x200043a6:    4638        8F      MOV      r0,r7
        0x200043a8:    462a        *F      MOV      r2,r5
        0x200043aa:    f7feff8b    ....    BL       __aeabi_memcpy ; 0x200032c4
        0x200043ae:    0a20         .      LSRS     r0,r4,#8
        0x200043b0:    4e1d        .N      LDR      r6,[pc,#116] ; [0x20004428] = 0x2000b928
        0x200043b2:    7070        pp      STRB     r0,[r6,#1]
        0x200043b4:    7034        4p      STRB     r4,[r6,#0]
        0x200043b6:    2003        .       MOVS     r0,#3
        0x200043b8:    02c1        ..      LSLS     r1,r0,#11
        0x200043ba:    2000        .       MOVS     r0,#0
        0x200043bc:    4b1b        .K      LDR      r3,[pc,#108] ; [0x2000442c] = 0x20007870
        0x200043be:    4602        .F      MOV      r2,r0
        0x200043c0:    f000fdc8    ....    BL       patch_gatts_api_add_service_start ; 0x20004f54
        0x200043c4:    2401        .$      MOVS     r4,#1
        0x200043c6:    2800        .(      CMP      r0,#0
        0x200043c8:    d028        (.      BEQ      0x2000441c ; ble_gap_service_init + 136
        0x200043ca:    9700        ..      STR      r7,[sp,#0]
        0x200043cc:    9501        ..      STR      r5,[sp,#4]
        0x200043ce:    2015        .       MOVS     r0,#0x15
        0x200043d0:    0245        E.      LSLS     r5,r0,#9
        0x200043d2:    2000        .       MOVS     r0,#0
        0x200043d4:    2702        .'      MOVS     r7,#2
        0x200043d6:    4629        )F      MOV      r1,r5
        0x200043d8:    4602        .F      MOV      r2,r0
        0x200043da:    463b        ;F      MOV      r3,r7
        0x200043dc:    f000fd4e    ..N.    BL       patch_gatts_api_add_char ; 0x20004e7c
        0x200043e0:    2800        .(      CMP      r0,#0
        0x200043e2:    d01b        ..      BEQ      0x2000441c ; ble_gap_service_init + 136
        0x200043e4:    9600        ..      STR      r6,[sp,#0]
        0x200043e6:    9701        ..      STR      r7,[sp,#4]
        0x200043e8:    1c69        i.      ADDS     r1,r5,#1
        0x200043ea:    2600        .&      MOVS     r6,#0
        0x200043ec:    4630        0F      MOV      r0,r6
        0x200043ee:    4632        2F      MOV      r2,r6
        0x200043f0:    463b        ;F      MOV      r3,r7
        0x200043f2:    f000fd43    ..C.    BL       patch_gatts_api_add_char ; 0x20004e7c
        0x200043f6:    2800        .(      CMP      r0,#0
        0x200043f8:    d010        ..      BEQ      0x2000441c ; ble_gap_service_init + 136
        0x200043fa:    9600        ..      STR      r6,[sp,#0]
        0x200043fc:    9601        ..      STR      r6,[sp,#4]
        0x200043fe:    35a6        .5      ADDS     r5,r5,#0xa6
        0x20004400:    2081        .       MOVS     r0,#0x81
        0x20004402:    0043        C.      LSLS     r3,r0,#1
        0x20004404:    4630        0F      MOV      r0,r6
        0x20004406:    4629        )F      MOV      r1,r5
        0x20004408:    4632        2F      MOV      r2,r6
        0x2000440a:    f000fd37    ..7.    BL       patch_gatts_api_add_char ; 0x20004e7c
        0x2000440e:    2800        .(      CMP      r0,#0
        0x20004410:    d004        ..      BEQ      0x2000441c ; ble_gap_service_init + 136
        0x20004412:    4907        .I      LDR      r1,[pc,#28] ; [0x20004430] = 0x2000b9f4
        0x20004414:    8008        ..      STRH     r0,[r1,#0]
        0x20004416:    f000fd63    ..c.    BL       patch_gatts_api_add_service_end ; 0x20004ee0
        0x2000441a:    4634        4F      MOV      r4,r6
        0x2000441c:    4620         F      MOV      r0,r4
        0x2000441e:    b003        ..      ADD      sp,sp,#0xc
        0x20004420:    bdf0        ..      POP      {r4-r7,pc}
        0x20004422:    46c0        .F      MOV      r8,r8
    $d
    __arm_cp.0_0
        0x20004424:    2000b92c    ,..     DCD    536918316
    __arm_cp.0_1
        0x20004428:    2000b928    (..     DCD    536918312
    __arm_cp.0_2
        0x2000442c:    20007870    px.     DCD    536901744
    __arm_cp.0_3
        0x20004430:    2000b9f4    ...     DCD    536918516
    $t
    ble_gap_write_attr_cb
        0x20004434:    2000        .       MOVS     r0,#0
        0x20004436:    4770        pG      BX       lr
    ble_host_init
        0x20004438:    b5f0        ..      PUSH     {r4-r7,lr}
        0x2000443a:    b097        ..      SUB      sp,sp,#0x5c
        0x2000443c:    2401        .$      MOVS     r4,#1
        0x2000443e:    02a1        ..      LSLS     r1,r4,#10
        0x20004440:    4845        EH      LDR      r0,[pc,#276] ; [0x20004558] = 0x2000cf70
        0x20004442:    4a46        FJ      LDR      r2,[pc,#280] ; [0x2000455c] = 0x2000b96c
        0x20004444:    2510        .%      MOVS     r5,#0x10
        0x20004446:    462b        +F      MOV      r3,r5
        0x20004448:    f000fde2    ....    BL       patch_gatts_api_init ; 0x20005010
        0x2000444c:    a044        D.      ADR      r0,{pc}+0x114 ; 0x20004560
        0x2000444e:    a90b        ..      ADD      r1,sp,#0x2c
        0x20004450:    c84c        L.      LDM      r0!,{r2,r3,r6}
        0x20004452:    c14c        L.      STM      r1!,{r2,r3,r6}
        0x20004454:    c84c        L.      LDM      r0!,{r2,r3,r6}
        0x20004456:    c14c        L.      STM      r1!,{r2,r3,r6}
        0x20004458:    a047        G.      ADR      r0,{pc}+0x120 ; 0x20004578
        0x2000445a:    aa02        ..      ADD      r2,sp,#8
        0x2000445c:    4611        .F      MOV      r1,r2
        0x2000445e:    c8c8        ..      LDM      r0!,{r3,r6,r7}
        0x20004460:    c1c8        ..      STM      r1!,{r3,r6,r7}
        0x20004462:    c8c8        ..      LDM      r0!,{r3,r6,r7}
        0x20004464:    c1c8        ..      STM      r1!,{r3,r6,r7}
        0x20004466:    2124        $!      MOVS     r1,#0x24
        0x20004468:    4628        (F      MOV      r0,r5
        0x2000446a:    f002fc0f    ....    BL       $Ven$TT$L$$osMemoryPoolNew ; 0x20006c8c
        0x2000446e:    4948        HI      LDR      r1,[pc,#288] ; [0x20004590] = 0x2000b954
        0x20004470:    6008        .`      STR      r0,[r1,#0]
        0x20004472:    2800        .(      CMP      r0,#0
        0x20004474:    d012        ..      BEQ      0x2000449c ; ble_host_init + 100
        0x20004476:    a047        G.      ADR      r0,{pc}+0x11e ; 0x20004594
        0x20004478:    aa11        ..      ADD      r2,sp,#0x44
        0x2000447a:    4611        .F      MOV      r1,r2
        0x2000447c:    c868        h.      LDM      r0!,{r3,r5,r6}
        0x2000447e:    c168        h.      STM      r1!,{r3,r5,r6}
        0x20004480:    c868        h.      LDM      r0!,{r3,r5,r6}
        0x20004482:    c168        h.      STM      r1!,{r3,r5,r6}
        0x20004484:    2008        .       MOVS     r0,#8
        0x20004486:    2180        .!      MOVS     r1,#0x80
        0x20004488:    f002fc00    ....    BL       $Ven$TT$L$$osMemoryPoolNew ; 0x20006c8c
        0x2000448c:    4947        GI      LDR      r1,[pc,#284] ; [0x200045ac] = 0x2000b950
        0x2000448e:    6008        .`      STR      r0,[r1,#0]
        0x20004490:    2800        .(      CMP      r0,#0
        0x20004492:    d107        ..      BNE      0x200044a4 ; ble_host_init + 108
        0x20004494:    2003        .       MOVS     r0,#3
        0x20004496:    0340        @.      LSLS     r0,r0,#13
        0x20004498:    1c40        @.      ADDS     r0,r0,#1
        0x2000449a:    e001        ..      B        0x200044a0 ; ble_host_init + 104
        0x2000449c:    2003        .       MOVS     r0,#3
        0x2000449e:    0340        @.      LSLS     r0,r0,#13
        0x200044a0:    f002fb46    ..F.    BL       $Ven$TT$L$$mlog_0 ; 0x20006b30
        0x200044a4:    2040        @       MOVS     r0,#0x40
        0x200044a6:    210c        .!      MOVS     r1,#0xc
        0x200044a8:    aa0b        ..      ADD      r2,sp,#0x2c
        0x200044aa:    f002fb89    ....    BL       $Ven$TT$L$$osMessageQueueNew ; 0x20006bc0
        0x200044ae:    4940        @I      LDR      r1,[pc,#256] ; [0x200045b0] = 0x20007c8c
        0x200044b0:    6008        .`      STR      r0,[r1,#0]
        0x200044b2:    2800        .(      CMP      r0,#0
        0x200044b4:    d01c        ..      BEQ      0x200044f0 ; ble_host_init + 184
        0x200044b6:    a03f        ?.      ADR      r0,{pc}+0xfe ; 0x200045b4
        0x200044b8:    aa02        ..      ADD      r2,sp,#8
        0x200044ba:    4611        .F      MOV      r1,r2
        0x200044bc:    c868        h.      LDM      r0!,{r3,r5,r6}
        0x200044be:    c168        h.      STM      r1!,{r3,r5,r6}
        0x200044c0:    c868        h.      LDM      r0!,{r3,r5,r6}
        0x200044c2:    c168        h.      STM      r1!,{r3,r5,r6}
        0x200044c4:    c868        h.      LDM      r0!,{r3,r5,r6}
        0x200044c6:    c168        h.      STM      r1!,{r3,r5,r6}
        0x200044c8:    4843        CH      LDR      r0,[pc,#268] ; [0x200045d8] = 0x20003a49
        0x200044ca:    2100        .!      MOVS     r1,#0
        0x200044cc:    f002fb7e    ..~.    BL       $Ven$TT$L$$osThreadNew ; 0x20006bcc
        0x200044d0:    4942        BI      LDR      r1,[pc,#264] ; [0x200045dc] = 0x20007c54
        0x200044d2:    6008        .`      STR      r0,[r1,#0]
        0x200044d4:    1e41        A.      SUBS     r1,r0,#1
        0x200044d6:    4605        .F      MOV      r5,r0
        0x200044d8:    418d        .A      SBCS     r5,r5,r1
        0x200044da:    2800        .(      CMP      r0,#0
        0x200044dc:    d033        3.      BEQ      0x20004546 ; ble_host_init + 270
        0x200044de:    2080        .       MOVS     r0,#0x80
        0x200044e0:    f002fbda    ....    BL       $Ven$TT$L$$rom_host_interface_set_hci_event_parameter_max_length ; 0x20006c98
        0x200044e4:    483e        >H      LDR      r0,[pc,#248] ; [0x200045e0] = 0x200066d5
        0x200044e6:    f002fbdd    ....    BL       $Ven$TT$L$$ble_callback_set_send_msg_to_stack_task_callback ; 0x20006ca4
        0x200044ea:    2d00        .-      CMP      r5,#0
        0x200044ec:    d103        ..      BNE      0x200044f6 ; ble_host_init + 190
        0x200044ee:    e027        '.      B        0x20004540 ; ble_host_init + 264
        0x200044f0:    2500        .%      MOVS     r5,#0
        0x200044f2:    2d00        .-      CMP      r5,#0
        0x200044f4:    d024        $.      BEQ      0x20004540 ; ble_host_init + 264
        0x200044f6:    0226        &.      LSLS     r6,r4,#8
        0x200044f8:    9600        ..      STR      r6,[sp,#0]
        0x200044fa:    2110        .!      MOVS     r1,#0x10
        0x200044fc:    2228        ("      MOVS     r2,#0x28
        0x200044fe:    2308        .#      MOVS     r3,#8
        0x20004500:    4620         F      MOV      r0,r4
        0x20004502:    f002fbd5    ....    BL       $Ven$TT$L$$rom_ble_host_stack_mem_init ; 0x20006cb0
        0x20004506:    3668        h6      ADDS     r6,r6,#0x68
        0x20004508:    4836        6H      LDR      r0,[pc,#216] ; [0x200045e4] = 0x2000be08
        0x2000450a:    4631        1F      MOV      r1,r6
        0x2000450c:    f002fbd6    ....    BL       $Ven$TT$L$$rom_host_stack_mem_ctrl_init ; 0x20006cbc
        0x20004510:    2033        3       MOVS     r0,#0x33
        0x20004512:    0181        ..      LSLS     r1,r0,#6
        0x20004514:    4834        4H      LDR      r0,[pc,#208] ; [0x200045e8] = 0x2000d370
        0x20004516:    f002fbd7    ....    BL       $Ven$TT$L$$rom_host_stack_mem_acl_data_mem_init ; 0x20006cc8
        0x2000451a:    4834        4H      LDR      r0,[pc,#208] ; [0x200045ec] = 0x20008a90
        0x2000451c:    2102        .!      MOVS     r1,#2
        0x2000451e:    2230        0"      MOVS     r2,#0x30
        0x20004520:    f002fbd8    ....    BL       $Ven$TT$L$$rom_ble_host_stack_timer_init ; 0x20006cd4
        0x20004524:    f002fbdc    ....    BL       $Ven$TT$L$$rom_gap_api_sm_init ; 0x20006ce0
        0x20004528:    4831        1H      LDR      r0,[pc,#196] ; [0x200045f0] = 0x20003a95
        0x2000452a:    f002fbdf    ....    BL       $Ven$TT$L$$ble_callback_set_timer_create_callback ; 0x20006cec
        0x2000452e:    4831        1H      LDR      r0,[pc,#196] ; [0x200045f4] = 0x20003ab1
        0x20004530:    f002fbe2    ....    BL       $Ven$TT$L$$ble_callback_set_timer_start_callback ; 0x20006cf8
        0x20004534:    4830        0H      LDR      r0,[pc,#192] ; [0x200045f8] = 0x20003abd
        0x20004536:    f002fbe5    ....    BL       $Ven$TT$L$$ble_callback_set_send_timer_stop_callback ; 0x20006d04
        0x2000453a:    4830        0H      LDR      r0,[pc,#192] ; [0x200045fc] = 0x20003aa5
        0x2000453c:    f002fbe8    ....    BL       $Ven$TT$L$$ble_callback_set_send_timer_delete_callback ; 0x20006d10
        0x20004540:    4628        (F      MOV      r0,r5
        0x20004542:    b017        ..      ADD      sp,sp,#0x5c
        0x20004544:    bdf0        ..      POP      {r4-r7,pc}
        0x20004546:    2003        .       MOVS     r0,#3
        0x20004548:    0340        @.      LSLS     r0,r0,#13
        0x2000454a:    3009        .0      ADDS     r0,r0,#9
        0x2000454c:    f002faf0    ....    BL       $Ven$TT$L$$mlog_0 ; 0x20006b30
        0x20004550:    2d00        .-      CMP      r5,#0
        0x20004552:    d1d0        ..      BNE      0x200044f6 ; ble_host_init + 190
        0x20004554:    e7f4        ..      B        0x20004540 ; ble_host_init + 264
        0x20004556:    46c0        .F      MOV      r8,r8
    $d
    __arm_cp.0_0
        0x20004558:    2000cf70    p..     DCD    536924016
    __arm_cp.0_1
        0x2000455c:    2000b96c    l..     DCD    536918380
        0x20004560:    200079b8    .y.     DCD    536902072
        0x20004564:    00000000    ....    DCD    0
        0x20004568:    20007c58    X|.     DCD    536902744
        0x2000456c:    00000034    4...    DCD    52
        0x20004570:    20007c90    .|.     DCD    536902800
        0x20004574:    00000600    ....    DCD    1536
        0x20004578:    200079f2    .y.     DCD    536902130
        0x2000457c:    00000000    ....    DCD    0
        0x20004580:    2000e038    8..     DCD    536928312
        0x20004584:    00000024    $...    DCD    36
        0x20004588:    2000b6e8    ...     DCD    536917736
        0x2000458c:    00000240    @...    DCD    576
    __arm_cp.0_4
        0x20004590:    2000b954    T..     DCD    536918356
        0x20004594:    200079cb    .y.     DCD    536902091
        0x20004598:    00000000    ....    DCD    0
        0x2000459c:    2000e05c    \..     DCD    536928348
        0x200045a0:    00000024    $...    DCD    36
        0x200045a4:    2000b2e8    ...     DCD    536916712
        0x200045a8:    00000400    ....    DCD    1024
    __arm_cp.0_6
        0x200045ac:    2000b950    P..     DCD    536918352
    __arm_cp.0_7
        0x200045b0:    20007c8c    .|.     DCD    536902796
        0x200045b4:    200079e5    .y.     DCD    536902117
        0x200045b8:    00000001    ....    DCD    1
        0x200045bc:    20007c10    .|.     DCD    536902672
        0x200045c0:    00000044    D...    DCD    68
        0x200045c4:    20008290    ...     DCD    536904336
        0x200045c8:    00000800    ....    DCD    2048
        0x200045cc:    00000020     ...    DCD    32
        0x200045d0:    00000000    ....    DCD    0
        0x200045d4:    00000000    ....    DCD    0
    __arm_cp.0_9
        0x200045d8:    20003a49    I:.     DCD    536885833
    __arm_cp.0_10
        0x200045dc:    20007c54    T|.     DCD    536902740
    __arm_cp.0_11
        0x200045e0:    200066d5    .f.     DCD    536897237
    __arm_cp.0_12
        0x200045e4:    2000be08    ...     DCD    536919560
    __arm_cp.0_13
        0x200045e8:    2000d370    p..     DCD    536925040
    __arm_cp.0_14
        0x200045ec:    20008a90    ...     DCD    536906384
    __arm_cp.0_15
        0x200045f0:    20003a95    .:.     DCD    536885909
    __arm_cp.0_16
        0x200045f4:    20003ab1    .:.     DCD    536885937
    __arm_cp.0_17
        0x200045f8:    20003abd    .:.     DCD    536885949
    __arm_cp.0_18
        0x200045fc:    20003aa5    .:.     DCD    536885925
    $t
    ble_init
        0x20004600:    b510        ..      PUSH     {r4,lr}
        0x20004602:    f001ff13    ....    BL       rf_init ; 0x2000642c
        0x20004606:    2400        .$      MOVS     r4,#0
        0x20004608:    2102        .!      MOVS     r1,#2
        0x2000460a:    4620         F      MOV      r0,r4
        0x2000460c:    f002fa48    ..H.    BL       $Ven$TT$L$$rom_hw_sys_ctrl_enable_peri_int ; 0x20006aa0
        0x20004610:    4812        .H      LDR      r0,[pc,#72] ; [0x2000465c] = 0xe000e280
        0x20004612:    2204        ."      MOVS     r2,#4
        0x20004614:    6002        .`      STR      r2,[r0,#0]
        0x20004616:    20ff        .       MOVS     r0,#0xff
        0x20004618:    0400        ..      LSLS     r0,r0,#16
        0x2000461a:    4911        .I      LDR      r1,[pc,#68] ; [0x20004660] = 0xe000e400
        0x2000461c:    680b        .h      LDR      r3,[r1,#0]
        0x2000461e:    4383        .C      BICS     r3,r3,r0
        0x20004620:    600b        .`      STR      r3,[r1,#0]
        0x20004622:    4810        .H      LDR      r0,[pc,#64] ; [0x20004664] = 0xe000e100
        0x20004624:    6002        .`      STR      r2,[r0,#0]
        0x20004626:    200f        .       MOVS     r0,#0xf
        0x20004628:    2103        .!      MOVS     r1,#3
        0x2000462a:    2307        .#      MOVS     r3,#7
        0x2000462c:    f002fb76    ..v.    BL       $Ven$TT$L$$rom_hw_pmu_set_wakeup_source ; 0x20006d1c
        0x20004630:    f000f83c    ..<.    BL       ble_interface_init ; 0x200046ac
        0x20004634:    f7fffa48    ..H.    BL       ble_controller_init ; 0x20003ac8
        0x20004638:    2800        .(      CMP      r0,#0
        0x2000463a:    d007        ..      BEQ      0x2000464c ; ble_init + 76
        0x2000463c:    f7fffefc    ....    BL       ble_host_init ; 0x20004438
        0x20004640:    2800        .(      CMP      r0,#0
        0x20004642:    d005        ..      BEQ      0x20004650 ; ble_init + 80
        0x20004644:    f000fbc8    ....    BL       patch_ble_init ; 0x20004dd8
        0x20004648:    4620         F      MOV      r0,r4
        0x2000464a:    bd10        ..      POP      {r4,pc}
        0x2000464c:    a006        ..      ADR      r0,{pc}+0x1c ; 0x20004668
        0x2000464e:    e000        ..      B        0x20004652 ; ble_init + 82
        0x20004650:    a00c        ..      ADR      r0,{pc}+0x34 ; 0x20004684
        0x20004652:    f003f8d1    ....    BL       puts ; 0x200077f8
        0x20004656:    2001        .       MOVS     r0,#1
        0x20004658:    bd10        ..      POP      {r4,pc}
        0x2000465a:    46c0        .F      MOV      r8,r8
    $d
    __arm_cp.1_0
        0x2000465c:    e000e280    ....    DCD    3758154368
    __arm_cp.1_1
        0x20004660:    e000e400    ....    DCD    3758154752
    __arm_cp.1_2
        0x20004664:    e000e100    ....    DCD    3758153984
        0x20004668:    5f656c62    ble_    DCD    1600482402
        0x2000466c:    746e6f63    cont    DCD    1953394531
        0x20004670:    6c6c6f72    roll    DCD    1819045746
        0x20004674:    695f7265    er_i    DCD    1767862885
        0x20004678:    2074696e    nit     DCD    544500078
        0x2000467c:    6f727265    erro    DCD    1869771365
        0x20004680:    00002e72    r...    DCD    11890
        0x20004684:    5f656c62    ble_    DCD    1600482402
        0x20004688:    74736f68    host    DCD    1953722216
        0x2000468c:    696e695f    _ini    DCD    1768843615
        0x20004690:    72652074    t er    DCD    1919230068
        0x20004694:    2e726f72    ror.    DCD    779251570
        0x20004698:    00000000    ....    DCD    0
    $t
    ble_init_is_system_sleep_allowed
        0x2000469c:    b580        ..      PUSH     {r7,lr}
        0x2000469e:    f002fb43    ..C.    BL       $Ven$TT$L$$rom_llp_is_system_sleep_allowed ; 0x20006d28
        0x200046a2:    bd80        ..      POP      {r7,pc}
    ble_init_on_system_wakeup_by_llc
        0x200046a4:    b580        ..      PUSH     {r7,lr}
        0x200046a6:    f002fb45    ..E.    BL       $Ven$TT$L$$rom_llp_sleep_on_system_wakeup_by_llc ; 0x20006d34
        0x200046aa:    bd80        ..      POP      {r7,pc}
    ble_interface_init
        0x200046ac:    b510        ..      PUSH     {r4,lr}
        0x200046ae:    482b        +H      LDR      r0,[pc,#172] ; [0x2000475c] = 0x2bcd3
        0x200046b0:    f002fb46    ..F.    BL       $Ven$TT$L$$rom_llp_set_schedule_report_callback ; 0x20006d40
        0x200046b4:    482a        *H      LDR      r0,[pc,#168] ; [0x20004760] = 0x2bcb3
        0x200046b6:    f002fb49    ..I.    BL       $Ven$TT$L$$rom_llp_set_fragment_start_report_callback ; 0x20006d4c
        0x200046ba:    482a        *H      LDR      r0,[pc,#168] ; [0x20004764] = 0x2bcbb
        0x200046bc:    f002fb4c    ..L.    BL       $Ven$TT$L$$rom_llp_set_fragment_stop_report_callback ; 0x20006d58
        0x200046c0:    4829        )H      LDR      r0,[pc,#164] ; [0x20004768] = 0x2bccb
        0x200046c2:    f002fb4f    ..O.    BL       $Ven$TT$L$$rom_llp_set_tx_end_report_callback ; 0x20006d64
        0x200046c6:    4829        )H      LDR      r0,[pc,#164] ; [0x2000476c] = 0x2bcc3
        0x200046c8:    f002fb52    ..R.    BL       $Ven$TT$L$$rom_llp_set_rx_end_report_callback ; 0x20006d70
        0x200046cc:    4828        (H      LDR      r0,[pc,#160] ; [0x20004770] = 0x155b9
        0x200046ce:    f002fb55    ..U.    BL       $Ven$TT$L$$rom_llp_set_rf_rx_calib_callback ; 0x20006d7c
        0x200046d2:    4828        (H      LDR      r0,[pc,#160] ; [0x20004774] = 0x15669
        0x200046d4:    f002fb58    ..X.    BL       $Ven$TT$L$$rom_llp_set_rf_tx_calib_callback ; 0x20006d88
        0x200046d8:    4827        'H      LDR      r0,[pc,#156] ; [0x20004778] = 0x22761
        0x200046da:    f002fb5b    ..[.    BL       $Ven$TT$L$$rom_llc_set_trig_schedule_report_callback ; 0x20006d94
        0x200046de:    4827        'H      LDR      r0,[pc,#156] ; [0x2000477c] = 0x22701
        0x200046e0:    f002fb5e    ..^.    BL       $Ven$TT$L$$rom_llc_set_timer_enable_callback ; 0x20006da0
        0x200046e4:    4826        &H      LDR      r0,[pc,#152] ; [0x20004780] = 0x22715
        0x200046e6:    f002fb61    ..a.    BL       $Ven$TT$L$$rom_llc_set_timer_get_count_callback ; 0x20006dac
        0x200046ea:    4826        &H      LDR      r0,[pc,#152] ; [0x20004784] = 0x20b71
        0x200046ec:    f002fb64    ..d.    BL       $Ven$TT$L$$rom_llc_set_llp_clock_accuracy_callback ; 0x20006db8
        0x200046f0:    4825        %H      LDR      r0,[pc,#148] ; [0x20004788] = 0x2245d
        0x200046f2:    f002fb67    ..g.    BL       $Ven$TT$L$$rom_llc_set_start_adv_fragment_callback ; 0x20006dc4
        0x200046f6:    4825        %H      LDR      r0,[pc,#148] ; [0x2000478c] = 0x22631
        0x200046f8:    f002fb6a    ..j.    BL       $Ven$TT$L$$rom_llc_set_start_scan_fragment_callback ; 0x20006dd0
        0x200046fc:    4824        $H      LDR      r0,[pc,#144] ; [0x20004790] = 0x2259d
        0x200046fe:    f002fb6d    ..m.    BL       $Ven$TT$L$$rom_llc_set_start_init_fragment_callback ; 0x20006ddc
        0x20004702:    4824        $H      LDR      r0,[pc,#144] ; [0x20004794] = 0x2268d
        0x20004704:    f002fb70    ..p.    BL       $Ven$TT$L$$rom_llc_set_start_slave_fragment_callback ; 0x20006de8
        0x20004708:    4823        #H      LDR      r0,[pc,#140] ; [0x20004798] = 0x225f9
        0x2000470a:    f002fb73    ..s.    BL       $Ven$TT$L$$rom_llc_set_start_master_fragment_callback ; 0x20006df4
        0x2000470e:    4823        #H      LDR      r0,[pc,#140] ; [0x2000479c] = 0x226c5
        0x20004710:    f002fb76    ..v.    BL       $Ven$TT$L$$rom_llc_set_stop_fragment_callback ; 0x20006e00
        0x20004714:    4822        "H      LDR      r0,[pc,#136] ; [0x200047a0] = 0x2277d
        0x20004716:    f002fb79    ..y.    BL       $Ven$TT$L$$rom_llc_set_update_tx_pdu_callback ; 0x20006e0c
        0x2000471a:    4822        "H      LDR      r0,[pc,#136] ; [0x200047a4] = 0x22775
        0x2000471c:    f002fb7c    ..|.    BL       $Ven$TT$L$$rom_llc_set_update_rx_pdu_callback ; 0x20006e18
        0x20004720:    4821        !H      LDR      r0,[pc,#132] ; [0x200047a8] = 0x20b7d
        0x20004722:    f002fb7f    ....    BL       $Ven$TT$L$$rom_llc_set_get_rssi_callback ; 0x20006e24
        0x20004726:    4821        !H      LDR      r0,[pc,#132] ; [0x200047ac] = 0x3e9d9
        0x20004728:    f002fb82    ....    BL       $Ven$TT$L$$rom_hci_set_get_event_paramter_max_length_callback ; 0x20006e30
        0x2000472c:    4820         H      LDR      r0,[pc,#128] ; [0x200047b0] = 0x3e801
        0x2000472e:    f002fb85    ....    BL       $Ven$TT$L$$rom_hci_set_host_send_command_packet_callback ; 0x20006e3c
        0x20004732:    4820         H      LDR      r0,[pc,#128] ; [0x200047b4] = 0x3e73d
        0x20004734:    f002fb88    ....    BL       $Ven$TT$L$$rom_hci_set_host_send_acl_data_callback ; 0x20006e48
        0x20004738:    481f        .H      LDR      r0,[pc,#124] ; [0x200047b8] = 0x3eac5
        0x2000473a:    f002fb8b    ....    BL       $Ven$TT$L$$rom_hci_set_controller_report_event_callback ; 0x20006e54
        0x2000473e:    481f        .H      LDR      r0,[pc,#124] ; [0x200047bc] = 0x3ea9d
        0x20004740:    f002fb8e    ....    BL       $Ven$TT$L$$rom_hci_set_controller_report_acl_data_callback ; 0x20006e60
        0x20004744:    2000        .       MOVS     r0,#0
        0x20004746:    43c4        .C      MVNS     r4,r0
        0x20004748:    4620         F      MOV      r0,r4
        0x2000474a:    4621        !F      MOV      r1,r4
        0x2000474c:    f002fb8e    ....    BL       $Ven$TT$L$$rom_controller_event_mask_set_event_mask ; 0x20006e6c
        0x20004750:    4620         F      MOV      r0,r4
        0x20004752:    4621        !F      MOV      r1,r4
        0x20004754:    f002fb90    ....    BL       $Ven$TT$L$$rom_controller_event_mask_set_le_event_mask ; 0x20006e78
        0x20004758:    bd10        ..      POP      {r4,pc}
        0x2000475a:    46c0        .F      MOV      r8,r8
    $d
    __arm_cp.0_0
        0x2000475c:    0002bcd3    ....    DCD    179411
    __arm_cp.0_1
        0x20004760:    0002bcb3    ....    DCD    179379
    __arm_cp.0_2
        0x20004764:    0002bcbb    ....    DCD    179387
    __arm_cp.0_3
        0x20004768:    0002bccb    ....    DCD    179403
    __arm_cp.0_4
        0x2000476c:    0002bcc3    ....    DCD    179395
    __arm_cp.0_5
        0x20004770:    000155b9    .U..    DCD    87481
    __arm_cp.0_6
        0x20004774:    00015669    iV..    DCD    87657
    __arm_cp.0_7
        0x20004778:    00022761    a'..    DCD    141153
    __arm_cp.0_8
        0x2000477c:    00022701    .'..    DCD    141057
    __arm_cp.0_9
        0x20004780:    00022715    .'..    DCD    141077
    __arm_cp.0_10
        0x20004784:    00020b71    q...    DCD    134001
    __arm_cp.0_11
        0x20004788:    0002245d    ]$..    DCD    140381
    __arm_cp.0_12
        0x2000478c:    00022631    1&..    DCD    140849
    __arm_cp.0_13
        0x20004790:    0002259d    .%..    DCD    140701
    __arm_cp.0_14
        0x20004794:    0002268d    .&..    DCD    140941
    __arm_cp.0_15
        0x20004798:    000225f9    .%..    DCD    140793
    __arm_cp.0_16
        0x2000479c:    000226c5    .&..    DCD    140997
    __arm_cp.0_17
        0x200047a0:    0002277d    }'..    DCD    141181
    __arm_cp.0_18
        0x200047a4:    00022775    u'..    DCD    141173
    __arm_cp.0_19
        0x200047a8:    00020b7d    }...    DCD    134013
    __arm_cp.0_20
        0x200047ac:    0003e9d9    ....    DCD    256473
    __arm_cp.0_21
        0x200047b0:    0003e801    ....    DCD    256001
    __arm_cp.0_22
        0x200047b4:    0003e73d    =...    DCD    255805
    __arm_cp.0_23
        0x200047b8:    0003eac5    ....    DCD    256709
    __arm_cp.0_24
        0x200047bc:    0003ea9d    ....    DCD    256669
    $t
    ble_peripheral_init
        0x200047c0:    b5f0        ..      PUSH     {r4-r7,lr}
        0x200047c2:    b08f        ..      SUB      sp,sp,#0x3c
        0x200047c4:    2002        .       MOVS     r0,#2
        0x200047c6:    f002fb5d    ..].    BL       $Ven$TT$L$$rom_hal_rf_tx_power_set ; 0x20006e84
        0x200047ca:    2409        .$      MOVS     r4,#9
        0x200047cc:    ae01        ..      ADD      r6,sp,#4
        0x200047ce:    2506        .%      MOVS     r5,#6
        0x200047d0:    4620         F      MOV      r0,r4
        0x200047d2:    4631        1F      MOV      r1,r6
        0x200047d4:    462a        *F      MOV      r2,r5
        0x200047d6:    f002fb5b    ..[.    BL       $Ven$TT$L$$rom_hw_efuse_read_bytes ; 0x20006e90
        0x200047da:    7831        1x      LDRB     r1,[r6,#0]
        0x200047dc:    7870        px      LDRB     r0,[r6,#1]
        0x200047de:    460a        .F      MOV      r2,r1
        0x200047e0:    4302        .C      ORRS     r2,r2,r0
        0x200047e2:    0612        ..      LSLS     r2,r2,#24
        0x200047e4:    d105        ..      BNE      0x200047f2 ; ble_peripheral_init + 50
        0x200047e6:    a80d        ..      ADD      r0,sp,#0x34
        0x200047e8:    4926        &I      LDR      r1,[pc,#152] ; [0x20004884] = 0xba03
        0x200047ea:    8081        ..      STRH     r1,[r0,#4]
        0x200047ec:    4826        &H      LDR      r0,[pc,#152] ; [0x20004888] = 0x34d4055
        0x200047ee:    900d        ..      STR      r0,[sp,#0x34]
        0x200047f0:    e012        ..      B        0x20004818 ; ble_peripheral_init + 88
        0x200047f2:    b2c2        ..      UXTB     r2,r0
        0x200047f4:    a80d        ..      ADD      r0,sp,#0x34
        0x200047f6:    70c2        .p      STRB     r2,[r0,#3]
        0x200047f8:    aa01        ..      ADD      r2,sp,#4
        0x200047fa:    7953        Sy      LDRB     r3,[r2,#5]
        0x200047fc:    7143        Cq      STRB     r3,[r0,#5]
        0x200047fe:    7893        .x      LDRB     r3,[r2,#2]
        0x20004800:    7083        .p      STRB     r3,[r0,#2]
        0x20004802:    090b        ..      LSRS     r3,r1,#4
        0x20004804:    0109        ..      LSLS     r1,r1,#4
        0x20004806:    18c9        ..      ADDS     r1,r1,r3
        0x20004808:    7101        .q      STRB     r1,[r0,#4]
        0x2000480a:    78d1        .x      LDRB     r1,[r2,#3]
        0x2000480c:    233f        ?#      MOVS     r3,#0x3f
        0x2000480e:    4019        .@      ANDS     r1,r1,r3
        0x20004810:    7041        Ap      STRB     r1,[r0,#1]
        0x20004812:    7911        .y      LDRB     r1,[r2,#4]
        0x20004814:    4019        .@      ANDS     r1,r1,r3
        0x20004816:    7001        .p      STRB     r1,[r0,#0]
        0x20004818:    a80d        ..      ADD      r0,sp,#0x34
        0x2000481a:    f002fb3f    ..?.    BL       $Ven$TT$L$$rom_gap_api_set_public_device_address ; 0x20006e9c
        0x2000481e:    481b        .H      LDR      r0,[pc,#108] ; [0x2000488c] = 0x20007818
        0x20004820:    a909        ..      ADD      r1,sp,#0x24
        0x20004822:    460a        .F      MOV      r2,r1
        0x20004824:    c8c8        ..      LDM      r0!,{r3,r6,r7}
        0x20004826:    c2c8        ..      STM      r2!,{r3,r6,r7}
        0x20004828:    8803        ..      LDRH     r3,[r0,#0]
        0x2000482a:    8013        ..      STRH     r3,[r2,#0]
        0x2000482c:    7880        .x      LDRB     r0,[r0,#2]
        0x2000482e:    7090        .p      STRB     r0,[r2,#2]
        0x20004830:    2600        .&      MOVS     r6,#0
        0x20004832:    4630        0F      MOV      r0,r6
        0x20004834:    f002fb38    ..8.    BL       $Ven$TT$L$$rom_gap_api_set_advertising_parameters ; 0x20006ea8
        0x20004838:    a908        ..      ADD      r1,sp,#0x20
        0x2000483a:    708d        .p      STRB     r5,[r1,#2]
        0x2000483c:    2081        .       MOVS     r0,#0x81
        0x2000483e:    0040        @.      LSLS     r0,r0,#1
        0x20004840:    8008        ..      STRH     r0,[r1,#0]
        0x20004842:    2503        .%      MOVS     r5,#3
        0x20004844:    4630        0F      MOV      r0,r6
        0x20004846:    462a        *F      MOV      r2,r5
        0x20004848:    f002fb34    ..4.    BL       $Ven$TT$L$$rom_gap_api_set_advertising_data ; 0x20006eb4
        0x2000484c:    af01        ..      ADD      r7,sp,#4
        0x2000484e:    707c        |p      STRB     r4,[r7,#1]
        0x20004850:    201a        .       MOVS     r0,#0x1a
        0x20004852:    7038        8p      STRB     r0,[r7,#0]
        0x20004854:    1cb8        ..      ADDS     r0,r7,#2
        0x20004856:    a10e        ..      ADR      r1,{pc}+0x3a ; 0x20004890
        0x20004858:    2219        ."      MOVS     r2,#0x19
        0x2000485a:    f7fefd33    ..3.    BL       __aeabi_memcpy ; 0x200032c4
        0x2000485e:    221b        ."      MOVS     r2,#0x1b
        0x20004860:    4630        0F      MOV      r0,r6
        0x20004862:    4639        9F      MOV      r1,r7
        0x20004864:    f002fb2c    ..,.    BL       $Ven$TT$L$$rom_gap_api_set_scan_response_data ; 0x20006ec0
        0x20004868:    4630        0F      MOV      r0,r6
        0x2000486a:    f002fb2f    ../.    BL       $Ven$TT$L$$rom_gap_api_sm_bond_info_save_by_app_config_only_for_legacy_pair ; 0x20006ecc
        0x2000486e:    2105        .!      MOVS     r1,#5
        0x20004870:    2210        ."      MOVS     r2,#0x10
        0x20004872:    4628        (F      MOV      r0,r5
        0x20004874:    f002fb30    ..0.    BL       $Ven$TT$L$$rom_gap_api_update_pair_para ; 0x20006ed8
        0x20004878:    2101        .!      MOVS     r1,#1
        0x2000487a:    4630        0F      MOV      r0,r6
        0x2000487c:    f002f9ee    ....    BL       $Ven$TT$L$$rom_gap_api_set_advertising_enable ; 0x20006c5c
        0x20004880:    b00f        ..      ADD      sp,sp,#0x3c
        0x20004882:    bdf0        ..      POP      {r4-r7,pc}
    $d
    __arm_cp.0_0
        0x20004884:    0000ba03    ....    DCD    47619
    __arm_cp.0_1
        0x20004888:    034d4055    U@M.    DCD    55394389
    __arm_cp.0_2
        0x2000488c:    20007818    .x.     DCD    536901656
        0x20004890:    32335448    HT32    DCD    842224712
        0x20004894:    35373646    F675    DCD    892810822
        0x20004898:    425f3578    x5_B    DCD    1113535864
        0x2000489c:    505f454c    LE_P    DCD    1348420940
        0x200048a0:    50495245    ERIP    DCD    1346982469
        0x200048a4:    41524548    HERA    DCD    1095910728
        0x200048a8:    0000004c    L...    DCD    76
    $t
    err_debug_init
        0x200048ac:    4803        .H      LDR      r0,[pc,#12] ; [0x200048bc] = 0x20000b30
        0x200048ae:    4904        .I      LDR      r1,[pc,#16] ; [0x200048c0] = 0x20006815
        0x200048b0:    6001        .`      STR      r1,[r0,#0]
        0x200048b2:    4804        .H      LDR      r0,[pc,#16] ; [0x200048c4] = 0x20000b2c
        0x200048b4:    4904        .I      LDR      r1,[pc,#16] ; [0x200048c8] = 0x20004a3d
        0x200048b6:    6001        .`      STR      r1,[r0,#0]
        0x200048b8:    4770        pG      BX       lr
        0x200048ba:    46c0        .F      MOV      r8,r8
    $d
    __arm_cp.5_0
        0x200048bc:    20000b30    0..     DCD    536873776
    __arm_cp.5_1
        0x200048c0:    20006815    .h.     DCD    536897557
    __arm_cp.5_2
        0x200048c4:    20000b2c    ,..     DCD    536873772
    __arm_cp.5_3
        0x200048c8:    20004a3d    =J.     DCD    536889917
    $t
    fputc
        0x200048cc:    b510        ..      PUSH     {r4,lr}
        0x200048ce:    b082        ..      SUB      sp,sp,#8
        0x200048d0:    490e        .I      LDR      r1,[pc,#56] ; [0x2000490c] = 0x2000b958
        0x200048d2:    680a        .h      LDR      r2,[r1,#0]
        0x200048d4:    2a00        .*      CMP      r2,#0
        0x200048d6:    d00c        ..      BEQ      0x200048f2 ; fputc + 38
        0x200048d8:    490d        .I      LDR      r1,[pc,#52] ; [0x20004910] = 0x2000b9f8
        0x200048da:    880b        ..      LDRH     r3,[r1,#0]
        0x200048dc:    6814        .h      LDR      r4,[r2,#0]
        0x200048de:    54e0        .T      STRB     r0,[r4,r3]
        0x200048e0:    8894        ..      LDRH     r4,[r2,#4]
        0x200048e2:    1c5a        Z.      ADDS     r2,r3,#1
        0x200048e4:    b293        ..      UXTH     r3,r2
        0x200048e6:    42a3        .B      CMP      r3,r4
        0x200048e8:    d300        ..      BCC      0x200048ec ; fputc + 32
        0x200048ea:    2200        ."      MOVS     r2,#0
        0x200048ec:    800a        ..      STRH     r2,[r1,#0]
        0x200048ee:    b002        ..      ADD      sp,sp,#8
        0x200048f0:    bd10        ..      POP      {r4,pc}
        0x200048f2:    a901        ..      ADD      r1,sp,#4
        0x200048f4:    7008        .p      STRB     r0,[r1,#0]
        0x200048f6:    4a07        .J      LDR      r2,[pc,#28] ; [0x20004914] = 0x2000b960
        0x200048f8:    6813        .h      LDR      r3,[r2,#0]
        0x200048fa:    2201        ."      MOVS     r2,#1
        0x200048fc:    4604        .F      MOV      r4,r0
        0x200048fe:    4618        .F      MOV      r0,r3
        0x20004900:    f002faf0    ....    BL       $Ven$TT$L$$rom_hw_uart_transmit ; 0x20006ee4
        0x20004904:    4620         F      MOV      r0,r4
        0x20004906:    b002        ..      ADD      sp,sp,#8
        0x20004908:    bd10        ..      POP      {r4,pc}
        0x2000490a:    46c0        .F      MOV      r8,r8
    $d
    __arm_cp.8_0
        0x2000490c:    2000b958    X..     DCD    536918360
    __arm_cp.8_1
        0x20004910:    2000b9f8    ...     DCD    536918520
    __arm_cp.8_2
        0x20004914:    2000b960    `..     DCD    536918368
    $t
    idle_task_init
        0x20004918:    4801        .H      LDR      r0,[pc,#4] ; [0x20004920] = 0x20000b28
        0x2000491a:    4902        .I      LDR      r1,[pc,#8] ; [0x20004924] = 0x20004929
        0x2000491c:    6001        .`      STR      r1,[r0,#0]
        0x2000491e:    4770        pG      BX       lr
    $d
    __arm_cp.0_0
        0x20004920:    20000b28    (..     DCD    536873768
    __arm_cp.0_1
        0x20004924:    20004929    )I.     DCD    536889641
    $t
    idle_task_sys_idle_process
        0x20004928:    b580        ..      PUSH     {r7,lr}
        0x2000492a:    f7fefecb    ....    BL       app_debug_printf ; 0x200036c4
        0x2000492e:    207d        }       MOVS     r0,#0x7d
        0x20004930:    0080        ..      LSLS     r0,r0,#2
        0x20004932:    f002f861    ..a.    BL       $Ven$TT$L$$rom_delay_us ; 0x200069f8
        0x20004936:    f7fefbfd    ....    BL       lpwr_ctrl_goto_sleep ; 0x20003134
        0x2000493a:    bd80        ..      POP      {r7,pc}
    llc_task
        0x2000493c:    b082        ..      SUB      sp,sp,#8
        0x2000493e:    4d0a        .M      LDR      r5,[pc,#40] ; [0x20004968] = 0x2000a5e4
        0x20004940:    a40a        ..      ADR      r4,{pc}+0x2c ; 0x2000496c
        0x20004942:    e003        ..      B        0x2000494c ; llc_task + 16
        0x20004944:    4601        .F      MOV      r1,r0
        0x20004946:    4620         F      MOV      r0,r4
        0x20004948:    f002fd0c    ....    BL       __0printf$8 ; 0x20007364
        0x2000494c:    6828        (h      LDR      r0,[r5,#0]
        0x2000494e:    2200        ."      MOVS     r2,#0
        0x20004950:    43d3        .C      MVNS     r3,r2
        0x20004952:    4669        iF      MOV      r1,sp
        0x20004954:    f002f8da    ....    BL       $Ven$TT$L$$osMessageQueueGet ; 0x20006b0c
        0x20004958:    2800        .(      CMP      r0,#0
        0x2000495a:    d1f3        ..      BNE      0x20004944 ; llc_task + 8
        0x2000495c:    9901        ..      LDR      r1,[sp,#4]
        0x2000495e:    9800        ..      LDR      r0,[sp,#0]
        0x20004960:    f002fac6    ....    BL       $Ven$TT$L$$rom_llc_on_llc_task_received_msg ; 0x20006ef0
        0x20004964:    e7f2        ..      B        0x2000494c ; llc_task + 16
        0x20004966:    46c0        .F      MOV      r8,r8
    $d
    __arm_cp.1_0
        0x20004968:    2000a5e4    ...     DCD    536913380
        0x2000496c:    5f636c6c    llc_    DCD    1600351340
        0x20004970:    6b736174    task    DCD    1802723700
        0x20004974:    74656720     get    DCD    1952802592
        0x20004978:    67736d20     msg    DCD    1735617824
        0x2000497c:    69616620     fai    DCD    1767990816
        0x20004980:    3a64656c    led:    DCD    979658092
        0x20004984:    000a7525    %u..    DCD    685349
    $t
    lpwr_after_wakeup
        0x20004988:    b580        ..      PUSH     {r7,lr}
        0x2000498a:    f7fefec7    ....    BL       app_debug_reinit ; 0x2000371c
        0x2000498e:    f002fab5    ....    BL       $Ven$TT$L$$OS_Tick_Enable ; 0x20006efc
        0x20004992:    bd80        ..      POP      {r7,pc}
    lpwr_before_sleep
        0x20004994:    b510        ..      PUSH     {r4,lr}
        0x20004996:    2400        .$      MOVS     r4,#0
        0x20004998:    f7fffe80    ....    BL       ble_init_is_system_sleep_allowed ; 0x2000469c
        0x2000499c:    2800        .(      CMP      r0,#0
        0x2000499e:    d008        ..      BEQ      0x200049b2 ; lpwr_before_sleep + 30
        0x200049a0:    f7fefe80    ....    BL       app_debug_print_complete ; 0x200036a4
        0x200049a4:    2800        .(      CMP      r0,#0
        0x200049a6:    d004        ..      BEQ      0x200049b2 ; lpwr_before_sleep + 30
        0x200049a8:    f7fefe34    ..4.    BL       app_debug_deinit ; 0x20003614
        0x200049ac:    f002faac    ....    BL       $Ven$TT$L$$OS_Tick_Disable ; 0x20006f08
        0x200049b0:    2401        .$      MOVS     r4,#1
        0x200049b2:    4620         F      MOV      r0,r4
        0x200049b4:    bd10        ..      POP      {r4,pc}
        0x200049b6:    0000        ..      MOVS     r0,r0
    lpwr_ctrl_init
        0x200049b8:    b510        ..      PUSH     {r4,lr}
        0x200049ba:    4b09        .K      LDR      r3,[pc,#36] ; [0x200049e0] = 0x2000e0c8
        0x200049bc:    6019        .`      STR      r1,[r3,#0]
        0x200049be:    4909        .I      LDR      r1,[pc,#36] ; [0x200049e4] = 0x2000b94c
        0x200049c0:    7008        .p      STRB     r0,[r1,#0]
        0x200049c2:    4809        .H      LDR      r0,[pc,#36] ; [0x200049e8] = 0x2000e0c4
        0x200049c4:    6002        .`      STR      r2,[r0,#0]
        0x200049c6:    2001        .       MOVS     r0,#1
        0x200049c8:    2400        .$      MOVS     r4,#0
        0x200049ca:    4621        !F      MOV      r1,r4
        0x200049cc:    f001fff0    ....    BL       $Ven$TT$L$$rom_hw_sys_ctrl_write_com_reg ; 0x200069b0
        0x200049d0:    2103        .!      MOVS     r1,#3
        0x200049d2:    220a        ."      MOVS     r2,#0xa
        0x200049d4:    2305        .#      MOVS     r3,#5
        0x200049d6:    4620         F      MOV      r0,r4
        0x200049d8:    f002f9a0    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_wakeup_source ; 0x20006d1c
        0x200049dc:    bd10        ..      POP      {r4,pc}
        0x200049de:    46c0        .F      MOV      r8,r8
    $d
    __arm_cp.2_0
        0x200049e0:    2000e0c8    ...     DCD    536928456
    __arm_cp.2_1
        0x200049e4:    2000b94c    L..     DCD    536918348
    __arm_cp.2_2
        0x200049e8:    2000e0c4    ...     DCD    536928452
    $t
    main
        0x200049ec:    b08a        ..      SUB      sp,sp,#0x28
        0x200049ee:    a009        ..      ADR      r0,{pc}+0x26 ; 0x20004a14
        0x200049f0:    ac01        ..      ADD      r4,sp,#4
        0x200049f2:    4621        !F      MOV      r1,r4
        0x200049f4:    c82c        ,.      LDM      r0!,{r2,r3,r5}
        0x200049f6:    c12c        ,.      STM      r1!,{r2,r3,r5}
        0x200049f8:    c82c        ,.      LDM      r0!,{r2,r3,r5}
        0x200049fa:    c12c        ,.      STM      r1!,{r2,r3,r5}
        0x200049fc:    c82c        ,.      LDM      r0!,{r2,r3,r5}
        0x200049fe:    c12c        ,.      STM      r1!,{r2,r3,r5}
        0x20004a00:    f002fa88    ....    BL       $Ven$TT$L$$osKernelInitialize ; 0x20006f14
        0x20004a04:    480c        .H      LDR      r0,[pc,#48] ; [0x20004a38] = 0x20003795
        0x20004a06:    2100        .!      MOVS     r1,#0
        0x20004a08:    4622        "F      MOV      r2,r4
        0x20004a0a:    f002f8df    ....    BL       $Ven$TT$L$$osThreadNew ; 0x20006bcc
        0x20004a0e:    f002fa87    ....    BL       $Ven$TT$L$$osKernelStart ; 0x20006f20
        0x20004a12:    e7fe        ..      B        0x20004a12 ; main + 38
    $d
        0x20004a14:    20007bf7    .{.     DCD    536902647
        0x20004a18:    00000001    ....    DCD    1
        0x20004a1c:    2000e080    ...     DCD    536928384
        0x20004a20:    00000044    D...    DCD    68
        0x20004a24:    2000ba08    ...     DCD    536918536
        0x20004a28:    00000400    ....    DCD    1024
        0x20004a2c:    00000018    ....    DCD    24
        0x20004a30:    00000000    ....    DCD    0
        0x20004a34:    00000000    ....    DCD    0
    __arm_cp.0_1
        0x20004a38:    20003795    .7.     DCD    536885141
    $t
    os_error_handler
        0x20004a3c:    460c        .F      MOV      r4,r1
        0x20004a3e:    4605        .F      MOV      r5,r0
        0x20004a40:    f7fefe6c    ..l.    BL       app_debug_reinit ; 0x2000371c
        0x20004a44:    a006        ..      ADR      r0,{pc}+0x1c ; 0x20004a60
        0x20004a46:    f002fed7    ....    BL       puts ; 0x200077f8
        0x20004a4a:    a009        ..      ADR      r0,{pc}+0x26 ; 0x20004a70
        0x20004a4c:    4629        )F      MOV      r1,r5
        0x20004a4e:    f002fc89    ....    BL       __0printf$8 ; 0x20007364
        0x20004a52:    a00c        ..      ADR      r0,{pc}+0x32 ; 0x20004a84
        0x20004a54:    4621        !F      MOV      r1,r4
        0x20004a56:    f002fc85    ....    BL       __0printf$8 ; 0x20007364
        0x20004a5a:    f7fefe33    ..3.    BL       app_debug_printf ; 0x200036c4
        0x20004a5e:    e7fe        ..      B        0x20004a5e ; os_error_handler + 34
    $d
        0x20004a60:    6520736f    os e    DCD    1696625519
        0x20004a64:    6f207272    rr o    DCD    1864397426
        0x20004a68:    72756363    ccur    DCD    1920295779
        0x20004a6c:    00000073    s...    DCD    115
        0x20004a70:    65646f63    code    DCD    1701080931
        0x20004a74:    20202020            DCD    538976288
        0x20004a78:    30203a20     : 0    DCD    807418400
        0x20004a7c:    38302578    x%08    DCD    942679416
        0x20004a80:    00000a58    X...    DCD    2648
        0x20004a84:    656a626f    obje    DCD    1701470831
        0x20004a88:    695f7463    ct_i    DCD    1767863395
        0x20004a8c:    30203a64    d: 0    DCD    807418468
        0x20004a90:    38302578    x%08    DCD    942679416
        0x20004a94:    00000a58    X...    DCD    2648
    $t.1
    patch_att_copy_value
        0x20004a98:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20004a9a:    b083        ..      SUB      sp,sp,#0xc
        0x20004a9c:    461c        .F      MOV      r4,r3
        0x20004a9e:    4616        .F      MOV      r6,r2
        0x20004aa0:    460f        .F      MOV      r7,r1
        0x20004aa2:    9002        ..      STR      r0,[sp,#8]
        0x20004aa4:    8909        ..      LDRH     r1,[r1,#8]
        0x20004aa6:    4813        .H      LDR      r0,[pc,#76] ; [0x20004af4] = 0x5115
        0x20004aa8:    9d08        ..      LDR      r5,[sp,#0x20]
        0x20004aaa:    462a        *F      MOV      r2,r5
        0x20004aac:    f002f8e2    ....    BL       $Ven$TT$L$$mlog_1616 ; 0x20006c74
        0x20004ab0:    88f8        ..      LDRH     r0,[r7,#6]
        0x20004ab2:    05c0        ..      LSLS     r0,r0,#23
        0x20004ab4:    d413        ..      BMI      0x20004ade ; patch_att_copy_value + 70
        0x20004ab6:    9402        ..      STR      r4,[sp,#8]
        0x20004ab8:    8a3c        <.      LDRH     r4,[r7,#0x10]
        0x20004aba:    480e        .H      LDR      r0,[pc,#56] ; [0x20004af4] = 0x5115
        0x20004abc:    1c40        @.      ADDS     r0,r0,#1
        0x20004abe:    4621        !F      MOV      r1,r4
        0x20004ac0:    4632        2F      MOV      r2,r6
        0x20004ac2:    f002f8d7    ....    BL       $Ven$TT$L$$mlog_1616 ; 0x20006c74
        0x20004ac6:    1ba0        ..      SUBS     r0,r4,r6
        0x20004ac8:    b281        ..      UXTH     r1,r0
        0x20004aca:    42a9        .B      CMP      r1,r5
        0x20004acc:    d800        ..      BHI      0x20004ad0 ; patch_att_copy_value + 56
        0x20004ace:    4605        .F      MOV      r5,r0
        0x20004ad0:    b2aa        ..      UXTH     r2,r5
        0x20004ad2:    6978        xi      LDR      r0,[r7,#0x14]
        0x20004ad4:    1981        ..      ADDS     r1,r0,r6
        0x20004ad6:    9802        ..      LDR      r0,[sp,#8]
        0x20004ad8:    f7fefbf4    ....    BL       __aeabi_memcpy ; 0x200032c4
        0x20004adc:    e007        ..      B        0x20004aee ; patch_att_copy_value + 86
        0x20004ade:    8939        9.      LDRH     r1,[r7,#8]
        0x20004ae0:    9500        ..      STR      r5,[sp,#0]
        0x20004ae2:    9802        ..      LDR      r0,[sp,#8]
        0x20004ae4:    4632        2F      MOV      r2,r6
        0x20004ae6:    4623        #F      MOV      r3,r4
        0x20004ae8:    f000fde4    ....    BL       patch_ht32_att_read_callback ; 0x200056b4
        0x20004aec:    4605        .F      MOV      r5,r0
        0x20004aee:    b2a8        ..      UXTH     r0,r5
        0x20004af0:    b003        ..      ADD      sp,sp,#0xc
        0x20004af2:    bdf0        ..      POP      {r4-r7,pc}
    $d.2
    __arm_cp.1_0
        0x20004af4:    00005115    .Q..    DCD    20757
    $t.0
    patch_att_packet_handler
        0x20004af8:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20004afa:    b085        ..      SUB      sp,sp,#0x14
        0x20004afc:    461d        .F      MOV      r5,r3
        0x20004afe:    4616        .F      MOV      r6,r2
        0x20004b00:    460f        .F      MOV      r7,r1
        0x20004b02:    2101        .!      MOVS     r1,#1
        0x20004b04:    7001        .p      STRB     r1,[r0,#0]
        0x20004b06:    7814        .x      LDRB     r4,[r2,#0]
        0x20004b08:    4638        8F      MOV      r0,r7
        0x20004b0a:    f002fa0f    ....    BL       $Ven$TT$L$$rom_host_connection_for_handle ; 0x20006f2c
        0x20004b0e:    2800        .(      CMP      r0,#0
        0x20004b10:    d100        ..      BNE      0x20004b14 ; patch_att_packet_handler + 28
        0x20004b12:    e06e        n.      B        0x20004bf2 ; patch_att_packet_handler + 250
        0x20004b14:    9700        ..      STR      r7,[sp,#0]
        0x20004b16:    9501        ..      STR      r5,[sp,#4]
        0x20004b18:    4607        .F      MOV      r7,r0
        0x20004b1a:    37c8        .7      ADDS     r7,r7,#0xc8
        0x20004b1c:    499d        .I      LDR      r1,[pc,#628] ; [0x20004d94] = 0x5214
        0x20004b1e:    4605        .F      MOV      r5,r0
        0x20004b20:    1c48        H.      ADDS     r0,r1,#1
        0x20004b22:    4621        !F      MOV      r1,r4
        0x20004b24:    f001ffec    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b00
        0x20004b28:    35d8        .5      ADDS     r5,r5,#0xd8
        0x20004b2a:    9502        ..      STR      r5,[sp,#8]
        0x20004b2c:    1e60        `.      SUBS     r0,r4,#1
        0x20004b2e:    2851        Q(      CMP      r0,#0x51
        0x20004b30:    d900        ..      BLS      0x20004b34 ; patch_att_packet_handler + 60
        0x20004b32:    e0d9        ..      B        0x20004ce8 ; patch_att_packet_handler + 496
        0x20004b34:    0040        @.      LSLS     r0,r0,#1
        0x20004b36:    46c0        .F      MOV      r8,r8
        0x20004b38:    4478        xD      ADD      r0,r0,pc
        0x20004b3a:    8880        ..      LDRH     r0,[r0,#4]
        0x20004b3c:    0040        @.      LSLS     r0,r0,#1
        0x20004b3e:    4487        .D      ADD      pc,pc,r0
    $d.1
        0x20004b40:    005d0051    Q.].    DCD    6094929
        0x20004b44:    0095006f    o...    DCD    9764975
        0x20004b48:    00a1009a    ....    DCD    10551450
        0x20004b4c:    00ae00a7    ....    DCD    11403431
        0x20004b50:    00bb00b4    ....    DCD    12255412
        0x20004b54:    00c700c0    ....    DCD    13041856
        0x20004b58:    00d300cc    ....    DCD    13828300
        0x20004b5c:    00d900d3    ....    DCD    14221523
        0x20004b60:    00e600df    ....    DCD    15073503
        0x20004b64:    00d300ec    ....    DCD    13828332
        0x20004b68:    00f300d3    ....    DCD    15925459
        0x20004b6c:    010000f9    ....    DCD    16777465
        0x20004b70:    00d30105    ....    DCD    13828357
        0x20004b74:    00d3010c    ....    DCD    13828364
        0x20004b78:    011a0113    ....    DCD    18481427
        0x20004b7c:    00d300d3    ....    DCD    13828307
        0x20004b80:    00d300d3    ....    DCD    13828307
        0x20004b84:    00d300d3    ....    DCD    13828307
        0x20004b88:    00d300d3    ....    DCD    13828307
        0x20004b8c:    00d300d3    ....    DCD    13828307
        0x20004b90:    00d300d3    ....    DCD    13828307
        0x20004b94:    00d300d3    ....    DCD    13828307
        0x20004b98:    00d300d3    ....    DCD    13828307
        0x20004b9c:    00d300d3    ....    DCD    13828307
        0x20004ba0:    00d300d3    ....    DCD    13828307
        0x20004ba4:    00d300d3    ....    DCD    13828307
        0x20004ba8:    00d300d3    ....    DCD    13828307
        0x20004bac:    00d300d3    ....    DCD    13828307
        0x20004bb0:    00d300d3    ....    DCD    13828307
        0x20004bb4:    00d300d3    ....    DCD    13828307
        0x20004bb8:    00d300d3    ....    DCD    13828307
        0x20004bbc:    00d300d3    ....    DCD    13828307
        0x20004bc0:    00d300d3    ....    DCD    13828307
        0x20004bc4:    00d300d3    ....    DCD    13828307
        0x20004bc8:    00d300d3    ....    DCD    13828307
        0x20004bcc:    00d300d3    ....    DCD    13828307
        0x20004bd0:    00d300d3    ....    DCD    13828307
        0x20004bd4:    00d300d3    ....    DCD    13828307
        0x20004bd8:    00d300d3    ....    DCD    13828307
        0x20004bdc:    00d300d3    ....    DCD    13828307
        0x20004be0:    011e00d3    ....    DCD    18743507
    $t.2
        0x20004be4:    9c02        ..      LDR      r4,[sp,#8]
        0x20004be6:    4620         F      MOV      r0,r4
        0x20004be8:    4631        1F      MOV      r1,r6
        0x20004bea:    9a01        ..      LDR      r2,[sp,#4]
        0x20004bec:    f002f9a4    ....    BL       $Ven$TT$L$$rom_gatt_client_handle_error_response ; 0x20006f38
        0x20004bf0:    e0cb        ..      B        0x20004d8a ; patch_att_packet_handler + 658
        0x20004bf2:    4868        hH      LDR      r0,[pc,#416] ; [0x20004d94] = 0x5214
        0x20004bf4:    f001ff9c    ....    BL       $Ven$TT$L$$mlog_0 ; 0x20006b30
        0x20004bf8:    b005        ..      ADD      sp,sp,#0x14
        0x20004bfa:    bdf0        ..      POP      {r4-r7,pc}
        0x20004bfc:    4638        8F      MOV      r0,r7
        0x20004bfe:    4631        1F      MOV      r1,r6
        0x20004c00:    f002f9a0    ....    BL       $Ven$TT$L$$rom_handle_exchange_mtu_request ; 0x20006f44
        0x20004c04:    2800        .(      CMP      r0,#0
        0x20004c06:    9c02        ..      LDR      r4,[sp,#8]
        0x20004c08:    d000        ..      BEQ      0x20004c0c ; patch_att_packet_handler + 276
        0x20004c0a:    e0be        ..      B        0x20004d8a ; patch_att_packet_handler + 658
        0x20004c0c:    a904        ..      ADD      r1,sp,#0x10
        0x20004c0e:    9800        ..      LDR      r0,[sp,#0]
        0x20004c10:    8008        ..      STRH     r0,[r1,#0]
        0x20004c12:    8838        8.      LDRH     r0,[r7,#0]
        0x20004c14:    8048        H.      STRH     r0,[r1,#2]
        0x20004c16:    200a        .       MOVS     r0,#0xa
        0x20004c18:    2204        ."      MOVS     r2,#4
        0x20004c1a:    f002f999    ....    BL       $Ven$TT$L$$ble_callback_send_event ; 0x20006f50
        0x20004c1e:    e0b4        ..      B        0x20004d8a ; patch_att_packet_handler + 658
        0x20004c20:    2101        .!      MOVS     r1,#1
        0x20004c22:    4630        0F      MOV      r0,r6
        0x20004c24:    f002f99a    ....    BL       $Ven$TT$L$$rom_stack_utility_little_endian_read_16 ; 0x20006f5c
        0x20004c28:    887a        z.      LDRH     r2,[r7,#2]
        0x20004c2a:    4290        .B      CMP      r0,r2
        0x20004c2c:    4601        .F      MOV      r1,r0
        0x20004c2e:    d300        ..      BCC      0x20004c32 ; patch_att_packet_handler + 314
        0x20004c30:    4611        .F      MOV      r1,r2
        0x20004c32:    883a        :.      LDRH     r2,[r7,#0]
        0x20004c34:    4291        .B      CMP      r1,r2
        0x20004c36:    d202        ..      BCS      0x20004c3e ; patch_att_packet_handler + 326
        0x20004c38:    2917        .)      CMP      r1,#0x17
        0x20004c3a:    d300        ..      BCC      0x20004c3e ; patch_att_packet_handler + 326
        0x20004c3c:    8039        9.      STRH     r1,[r7,#0]
        0x20004c3e:    783a        :x      LDRB     r2,[r7,#0]
        0x20004c40:    4954        TI      LDR      r1,[pc,#336] ; [0x20004d94] = 0x5214
        0x20004c42:    1c8b        ..      ADDS     r3,r1,#2
        0x20004c44:    b2c1        ..      UXTB     r1,r0
        0x20004c46:    4618        .F      MOV      r0,r3
        0x20004c48:    f002f802    ....    BL       $Ven$TT$L$$mlog_88 ; 0x20006c50
        0x20004c4c:    2002        .       MOVS     r0,#2
        0x20004c4e:    71b8        .q      STRB     r0,[r7,#6]
        0x20004c50:    8839        9.      LDRH     r1,[r7,#0]
        0x20004c52:    9c00        ..      LDR      r4,[sp,#0]
        0x20004c54:    4620         F      MOV      r0,r4
        0x20004c56:    f002f987    ....    BL       $Ven$TT$L$$rom_gatt_client_handle_exchange_mtu_response ; 0x20006f68
        0x20004c5a:    a903        ..      ADD      r1,sp,#0xc
        0x20004c5c:    800c        ..      STRH     r4,[r1,#0]
        0x20004c5e:    8838        8.      LDRH     r0,[r7,#0]
        0x20004c60:    8048        H.      STRH     r0,[r1,#2]
        0x20004c62:    200a        .       MOVS     r0,#0xa
        0x20004c64:    2204        ."      MOVS     r2,#4
        0x20004c66:    f002f973    ..s.    BL       $Ven$TT$L$$ble_callback_send_event ; 0x20006f50
        0x20004c6a:    e08d        ..      B        0x20004d88 ; patch_att_packet_handler + 656
        0x20004c6c:    4638        8F      MOV      r0,r7
        0x20004c6e:    4631        1F      MOV      r1,r6
        0x20004c70:    f002f980    ....    BL       $Ven$TT$L$$rom_handle_find_information_request ; 0x20006f74
        0x20004c74:    e088        ..      B        0x20004d88 ; patch_att_packet_handler + 656
        0x20004c76:    9c02        ..      LDR      r4,[sp,#8]
        0x20004c78:    4620         F      MOV      r0,r4
        0x20004c7a:    4631        1F      MOV      r1,r6
        0x20004c7c:    9a01        ..      LDR      r2,[sp,#4]
        0x20004c7e:    f002f97f    ....    BL       $Ven$TT$L$$rom_gatt_client_handle_find_information_reply ; 0x20006f80
        0x20004c82:    e082        ..      B        0x20004d8a ; patch_att_packet_handler + 658
        0x20004c84:    4638        8F      MOV      r0,r7
        0x20004c86:    4631        1F      MOV      r1,r6
        0x20004c88:    9a01        ..      LDR      r2,[sp,#4]
        0x20004c8a:    f002f97f    ....    BL       $Ven$TT$L$$rom_handle_find_by_type_value_request ; 0x20006f8c
        0x20004c8e:    e07b        {.      B        0x20004d88 ; patch_att_packet_handler + 656
        0x20004c90:    9c02        ..      LDR      r4,[sp,#8]
        0x20004c92:    4620         F      MOV      r0,r4
        0x20004c94:    4631        1F      MOV      r1,r6
        0x20004c96:    9a01        ..      LDR      r2,[sp,#4]
        0x20004c98:    f002f97e    ..~.    BL       $Ven$TT$L$$rom_gatt_client_handle_find_by_type_value_response ; 0x20006f98
        0x20004c9c:    e075        u.      B        0x20004d8a ; patch_att_packet_handler + 658
        0x20004c9e:    4638        8F      MOV      r0,r7
        0x20004ca0:    4631        1F      MOV      r1,r6
        0x20004ca2:    9a01        ..      LDR      r2,[sp,#4]
        0x20004ca4:    f000faec    ....    BL       patch_handle_read_by_type_request ; 0x20005280
        0x20004ca8:    e06e        n.      B        0x20004d88 ; patch_att_packet_handler + 656
        0x20004caa:    9c02        ..      LDR      r4,[sp,#8]
        0x20004cac:    4620         F      MOV      r0,r4
        0x20004cae:    4631        1F      MOV      r1,r6
        0x20004cb0:    9a01        ..      LDR      r2,[sp,#4]
        0x20004cb2:    f002f977    ..w.    BL       $Ven$TT$L$$rom_gatt_client_handle_read_by_type_response ; 0x20006fa4
        0x20004cb6:    e068        h.      B        0x20004d8a ; patch_att_packet_handler + 658
        0x20004cb8:    4638        8F      MOV      r0,r7
        0x20004cba:    4631        1F      MOV      r1,r6
        0x20004cbc:    f000fbd6    ....    BL       patch_handle_read_request ; 0x2000546c
        0x20004cc0:    e062        b.      B        0x20004d88 ; patch_att_packet_handler + 656
        0x20004cc2:    9c02        ..      LDR      r4,[sp,#8]
        0x20004cc4:    4620         F      MOV      r0,r4
        0x20004cc6:    4631        1F      MOV      r1,r6
        0x20004cc8:    9a01        ..      LDR      r2,[sp,#4]
        0x20004cca:    f002f971    ..q.    BL       $Ven$TT$L$$rom_gatt_client_handle_read_response ; 0x20006fb0
        0x20004cce:    e05c        \.      B        0x20004d8a ; patch_att_packet_handler + 658
        0x20004cd0:    4638        8F      MOV      r0,r7
        0x20004cd2:    4631        1F      MOV      r1,r6
        0x20004cd4:    f000fa66    ..f.    BL       patch_handle_read_blob_request ; 0x200051a4
        0x20004cd8:    e056        V.      B        0x20004d88 ; patch_att_packet_handler + 656
        0x20004cda:    9c02        ..      LDR      r4,[sp,#8]
        0x20004cdc:    4620         F      MOV      r0,r4
        0x20004cde:    4631        1F      MOV      r1,r6
        0x20004ce0:    9a01        ..      LDR      r2,[sp,#4]
        0x20004ce2:    f002f96b    ..k.    BL       $Ven$TT$L$$rom_gatt_client_handle_read_blob_response ; 0x20006fbc
        0x20004ce6:    e050        P.      B        0x20004d8a ; patch_att_packet_handler + 658
        0x20004ce8:    2206        ."      MOVS     r2,#6
        0x20004cea:    4638        8F      MOV      r0,r7
        0x20004cec:    4621        !F      MOV      r1,r4
        0x20004cee:    f002f96b    ..k.    BL       $Ven$TT$L$$rom_handle_rfu_request_opcode ; 0x20006fc8
        0x20004cf2:    e049        I.      B        0x20004d88 ; patch_att_packet_handler + 656
        0x20004cf4:    4638        8F      MOV      r0,r7
        0x20004cf6:    4631        1F      MOV      r1,r6
        0x20004cf8:    9a01        ..      LDR      r2,[sp,#4]
        0x20004cfa:    f002f96b    ..k.    BL       $Ven$TT$L$$rom_handle_read_by_group_type_request ; 0x20006fd4
        0x20004cfe:    e043        C.      B        0x20004d88 ; patch_att_packet_handler + 656
        0x20004d00:    9c02        ..      LDR      r4,[sp,#8]
        0x20004d02:    4620         F      MOV      r0,r4
        0x20004d04:    4631        1F      MOV      r1,r6
        0x20004d06:    9a01        ..      LDR      r2,[sp,#4]
        0x20004d08:    f002f96a    ..j.    BL       $Ven$TT$L$$rom_gatt_client_handle_read_by_group_type_response ; 0x20006fe0
        0x20004d0c:    e03d        =.      B        0x20004d8a ; patch_att_packet_handler + 658
        0x20004d0e:    4638        8F      MOV      r0,r7
        0x20004d10:    4631        1F      MOV      r1,r6
        0x20004d12:    9a01        ..      LDR      r2,[sp,#4]
        0x20004d14:    f000fc42    ..B.    BL       patch_handle_write_request ; 0x2000559c
        0x20004d18:    e036        6.      B        0x20004d88 ; patch_att_packet_handler + 656
        0x20004d1a:    9c02        ..      LDR      r4,[sp,#8]
        0x20004d1c:    4620         F      MOV      r0,r4
        0x20004d1e:    4631        1F      MOV      r1,r6
        0x20004d20:    9a01        ..      LDR      r2,[sp,#4]
        0x20004d22:    f002f963    ..c.    BL       $Ven$TT$L$$rom_gatt_client_handle_write_response ; 0x20006fec
        0x20004d26:    e030        0.      B        0x20004d8a ; patch_att_packet_handler + 658
        0x20004d28:    4638        8F      MOV      r0,r7
        0x20004d2a:    4631        1F      MOV      r1,r6
        0x20004d2c:    9a01        ..      LDR      r2,[sp,#4]
        0x20004d2e:    f000f9d1    ....    BL       patch_handle_prepare_write_request ; 0x200050d4
        0x20004d32:    e029        ).      B        0x20004d88 ; patch_att_packet_handler + 656
        0x20004d34:    9c02        ..      LDR      r4,[sp,#8]
        0x20004d36:    4620         F      MOV      r0,r4
        0x20004d38:    4631        1F      MOV      r1,r6
        0x20004d3a:    9a01        ..      LDR      r2,[sp,#4]
        0x20004d3c:    f002f95c    ..\.    BL       $Ven$TT$L$$rom_gatt_client_handle_prepare_write_response ; 0x20006ff8
        0x20004d40:    e023        #.      B        0x20004d8a ; patch_att_packet_handler + 658
        0x20004d42:    4638        8F      MOV      r0,r7
        0x20004d44:    4631        1F      MOV      r1,r6
        0x20004d46:    f000f993    ....    BL       patch_handle_execute_write_request ; 0x20005070
        0x20004d4a:    e01d        ..      B        0x20004d88 ; patch_att_packet_handler + 656
        0x20004d4c:    9c02        ..      LDR      r4,[sp,#8]
        0x20004d4e:    4620         F      MOV      r0,r4
        0x20004d50:    4631        1F      MOV      r1,r6
        0x20004d52:    9a01        ..      LDR      r2,[sp,#4]
        0x20004d54:    f002f956    ..V.    BL       $Ven$TT$L$$rom_gatt_client_handle_execute_write_response ; 0x20007004
        0x20004d58:    e017        ..      B        0x20004d8a ; patch_att_packet_handler + 658
        0x20004d5a:    9c02        ..      LDR      r4,[sp,#8]
        0x20004d5c:    4620         F      MOV      r0,r4
        0x20004d5e:    4631        1F      MOV      r1,r6
        0x20004d60:    9a01        ..      LDR      r2,[sp,#4]
        0x20004d62:    f002f955    ..U.    BL       $Ven$TT$L$$rom_gatt_client_handle_value_notification ; 0x20007010
        0x20004d66:    e010        ..      B        0x20004d8a ; patch_att_packet_handler + 658
        0x20004d68:    9c02        ..      LDR      r4,[sp,#8]
        0x20004d6a:    4620         F      MOV      r0,r4
        0x20004d6c:    4631        1F      MOV      r1,r6
        0x20004d6e:    9a01        ..      LDR      r2,[sp,#4]
        0x20004d70:    f002f954    ..T.    BL       $Ven$TT$L$$rom_gatt_client_handle_value_indication ; 0x2000701c
        0x20004d74:    e009        ..      B        0x20004d8a ; patch_att_packet_handler + 658
        0x20004d76:    4638        8F      MOV      r0,r7
        0x20004d78:    f000fbd4    ....    BL       patch_handle_value_indication ; 0x20005524
        0x20004d7c:    e004        ..      B        0x20004d88 ; patch_att_packet_handler + 656
        0x20004d7e:    4638        8F      MOV      r0,r7
        0x20004d80:    4631        1F      MOV      r1,r6
        0x20004d82:    9a01        ..      LDR      r2,[sp,#4]
        0x20004d84:    f000fbdd    ....    BL       patch_handle_write_command ; 0x20005542
        0x20004d88:    9c02        ..      LDR      r4,[sp,#8]
        0x20004d8a:    4620         F      MOV      r0,r4
        0x20004d8c:    f002f94c    ..L.    BL       $Ven$TT$L$$rom_gatt_client_run ; 0x20007028
        0x20004d90:    b005        ..      ADD      sp,sp,#0x14
        0x20004d92:    bdf0        ..      POP      {r4-r7,pc}
    $d.3
    __arm_cp.0_0
        0x20004d94:    00005214    .R..    DCD    21012
    $t.4
    patch_att_packet_handler_init
        0x20004d98:    4801        .H      LDR      r0,[pc,#4] ; [0x20004da0] = 0x20000abc
        0x20004d9a:    4902        .I      LDR      r1,[pc,#8] ; [0x20004da4] = 0x20004af9
        0x20004d9c:    6041        A`      STR      r1,[r0,#4]
        0x20004d9e:    4770        pG      BX       lr
    $d.5
    __arm_cp.1_0
        0x20004da0:    20000abc    ...     DCD    536873660
    __arm_cp.1_1
        0x20004da4:    20004af9    .J.     DCD    536890105
    $t.0
    patch_att_update_value_len
        0x20004da8:    b510        ..      PUSH     {r4,lr}
        0x20004daa:    460c        .F      MOV      r4,r1
        0x20004dac:    88c9        ..      LDRH     r1,[r1,#6]
        0x20004dae:    05c9        ..      LSLS     r1,r1,#23
        0x20004db0:    d503        ..      BPL      0x20004dba ; patch_att_update_value_len + 18
        0x20004db2:    8921        !.      LDRH     r1,[r4,#8]
        0x20004db4:    f000fc66    ..f.    BL       patch_ht32_att_get_attribute_length_callback ; 0x20005684
        0x20004db8:    8220         .      STRH     r0,[r4,#0x10]
        0x20004dba:    bd10        ..      POP      {r4,pc}
    patch_ble_impl
        0x20004dbc:    4801        .H      LDR      r0,[pc,#4] ; [0x20004dc4] = 0x20000964
        0x20004dbe:    4902        .I      LDR      r1,[pc,#8] ; [0x20004dc8] = 0x20004dcd
        0x20004dc0:    6101        .a      STR      r1,[r0,#0x10]
        0x20004dc2:    4770        pG      BX       lr
    $d.1
    __arm_cp.0_0
        0x20004dc4:    20000964    d..     DCD    536873316
    __arm_cp.0_1
        0x20004dc8:    20004dcd    .M.     DCD    536890829
    $t.2
    patch_ble_impl_get_comp_id
        0x20004dcc:    2101        .!      MOVS     r1,#1
        0x20004dce:    7001        .p      STRB     r1,[r0,#0]
        0x20004dd0:    4800        .H      LDR      r0,[pc,#0] ; [0x20004dd4] = 0xffff
        0x20004dd2:    4770        pG      BX       lr
    $d.3
    __arm_cp.1_0
        0x20004dd4:    0000ffff    ....    DCD    65535
    $t.0
    patch_ble_init
        0x20004dd8:    b580        ..      PUSH     {r7,lr}
        0x20004dda:    4811        .H      LDR      r0,[pc,#68] ; [0x20004e20] = 0x20006249
        0x20004ddc:    f001fff2    ....    BL       $Ven$TT$L$$rom_llc_set_start_adv_fragment_callback ; 0x20006dc4
        0x20004de0:    4810        .H      LDR      r0,[pc,#64] ; [0x20004e24] = 0x20006315
        0x20004de2:    f001fff5    ....    BL       $Ven$TT$L$$rom_llc_set_start_scan_fragment_callback ; 0x20006dd0
        0x20004de6:    4810        .H      LDR      r0,[pc,#64] ; [0x20004e28] = 0x20006281
        0x20004de8:    f001fff8    ....    BL       $Ven$TT$L$$rom_llc_set_start_init_fragment_callback ; 0x20006ddc
        0x20004dec:    480f        .H      LDR      r0,[pc,#60] ; [0x20004e2c] = 0x20006371
        0x20004dee:    f001fffb    ....    BL       $Ven$TT$L$$rom_llc_set_start_slave_fragment_callback ; 0x20006de8
        0x20004df2:    480f        .H      LDR      r0,[pc,#60] ; [0x20004e30] = 0x200062dd
        0x20004df4:    f001fffe    ....    BL       $Ven$TT$L$$rom_llc_set_start_master_fragment_callback ; 0x20006df4
        0x20004df8:    f001fa1a    ....    BL       patch_llp_sleep ; 0x20006230
        0x20004dfc:    f001f84a    ..J.    BL       patch_llp ; 0x20005e94
        0x20004e00:    f001f832    ..2.    BL       patch_llc_privacy ; 0x20005e68
        0x20004e04:    f000fc9c    ....    BL       patch_llc_address ; 0x20005740
        0x20004e08:    f001f834    ..4.    BL       patch_llc_white_list ; 0x20005e74
        0x20004e0c:    f001f812    ....    BL       patch_llc_priority ; 0x20005e34
        0x20004e10:    f000fc9c    ....    BL       patch_llc_ctrl_procedure ; 0x2000574c
        0x20004e14:    f7ffffd2    ....    BL       patch_ble_impl ; 0x20004dbc
        0x20004e18:    f7ffffbe    ....    BL       patch_att_packet_handler_init ; 0x20004d98
        0x20004e1c:    bd80        ..      POP      {r7,pc}
        0x20004e1e:    46c0        .F      MOV      r8,r8
    $d.1
    __arm_cp.0_0
        0x20004e20:    20006249    Ib.     DCD    536896073
    __arm_cp.0_1
        0x20004e24:    20006315    .c.     DCD    536896277
    __arm_cp.0_2
        0x20004e28:    20006281    .b.     DCD    536896129
    __arm_cp.0_3
        0x20004e2c:    20006371    qc.     DCD    536896369
    __arm_cp.0_4
        0x20004e30:    200062dd    .b.     DCD    536896221
    $t.0
    patch_gatt_find_server
        0x20004e34:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20004e36:    4601        .F      MOV      r1,r0
        0x20004e38:    4a8b        .J      LDR      r2,[pc,#556] ; [0x20005068] = 0x2000a558
        0x20004e3a:    8810        ..      LDRH     r0,[r2,#0]
        0x20004e3c:    2800        .(      CMP      r0,#0
        0x20004e3e:    d010        ..      BEQ      0x20004e62 ; patch_gatt_find_server + 46
        0x20004e40:    8813        ..      LDRH     r3,[r2,#0]
        0x20004e42:    4a8a        .J      LDR      r2,[pc,#552] ; [0x2000506c] = 0x2000a55c
        0x20004e44:    6814        .h      LDR      r4,[r2,#0]
        0x20004e46:    2200        ."      MOVS     r2,#0
        0x20004e48:    e004        ..      B        0x20004e54 ; patch_gatt_find_server + 32
        0x20004e4a:    3408        .4      ADDS     r4,r4,#8
        0x20004e4c:    1c52        R.      ADDS     r2,r2,#1
        0x20004e4e:    429a        .B      CMP      r2,r3
        0x20004e50:    4618        .F      MOV      r0,r3
        0x20004e52:    d208        ..      BCS      0x20004e66 ; patch_gatt_find_server + 50
        0x20004e54:    8825        %.      LDRH     r5,[r4,#0]
        0x20004e56:    428d        .B      CMP      r5,r1
        0x20004e58:    d8f7        ..      BHI      0x20004e4a ; patch_gatt_find_server + 22
        0x20004e5a:    8865        e.      LDRH     r5,[r4,#2]
        0x20004e5c:    428d        .B      CMP      r5,r1
        0x20004e5e:    d3f4        ..      BCC      0x20004e4a ; patch_gatt_find_server + 22
        0x20004e60:    e002        ..      B        0x20004e68 ; patch_gatt_find_server + 52
        0x20004e62:    2200        ."      MOVS     r2,#0
        0x20004e64:    e000        ..      B        0x20004e68 ; patch_gatt_find_server + 52
        0x20004e66:    4618        .F      MOV      r0,r3
        0x20004e68:    00d1        ..      LSLS     r1,r2,#3
        0x20004e6a:    4b80        .K      LDR      r3,[pc,#512] ; [0x2000506c] = 0x2000a55c
        0x20004e6c:    681b        .h      LDR      r3,[r3,#0]
        0x20004e6e:    1859        Y.      ADDS     r1,r3,r1
        0x20004e70:    6849        Ih      LDR      r1,[r1,#4]
        0x20004e72:    2900        .)      CMP      r1,#0
        0x20004e74:    d000        ..      BEQ      0x20004e78 ; patch_gatt_find_server + 68
        0x20004e76:    4610        .F      MOV      r0,r2
        0x20004e78:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20004e7a:    46c0        .F      MOV      r8,r8
    patch_gatts_api_add_char
        0x20004e7c:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20004e7e:    b081        ..      SUB      sp,sp,#4
        0x20004e80:    461c        .F      MOV      r4,r3
        0x20004e82:    4617        .F      MOV      r7,r2
        0x20004e84:    460d        .F      MOV      r5,r1
        0x20004e86:    4915        .I      LDR      r1,[pc,#84] ; [0x20004edc] = 0x52a5
        0x20004e88:    9b07        ..      LDR      r3,[sp,#0x1c]
        0x20004e8a:    9a06        ..      LDR      r2,[sp,#0x18]
        0x20004e8c:    2800        .(      CMP      r0,#0
        0x20004e8e:    d00d        ..      BEQ      0x20004eac ; patch_gatts_api_add_char + 48
        0x20004e90:    460d        .F      MOV      r5,r1
        0x20004e92:    2f00        ./      CMP      r7,#0
        0x20004e94:    d01b        ..      BEQ      0x20004ece ; patch_gatts_api_add_char + 82
        0x20004e96:    4638        8F      MOV      r0,r7
        0x20004e98:    4621        !F      MOV      r1,r4
        0x20004e9a:    f002f8cb    ....    BL       $Ven$TT$L$$rom_att_db_util_add_characteristic_uuid128 ; 0x20007034
        0x20004e9e:    4606        .F      MOV      r6,r0
        0x20004ea0:    1c68        h.      ADDS     r0,r5,#1
        0x20004ea2:    2210        ."      MOVS     r2,#0x10
        0x20004ea4:    4639        9F      MOV      r1,r7
        0x20004ea6:    f001fedf    ....    BL       $Ven$TT$L$$mlog_x ; 0x20006c68
        0x20004eaa:    e00a        ..      B        0x20004ec2 ; patch_gatts_api_add_char + 70
        0x20004eac:    4628        (F      MOV      r0,r5
        0x20004eae:    460f        .F      MOV      r7,r1
        0x20004eb0:    4621        !F      MOV      r1,r4
        0x20004eb2:    f002f8c5    ....    BL       $Ven$TT$L$$rom_att_db_util_add_characteristic_uuid16 ; 0x20007040
        0x20004eb6:    4606        .F      MOV      r6,r0
        0x20004eb8:    1cb8        ..      ADDS     r0,r7,#2
        0x20004eba:    4629        )F      MOV      r1,r5
        0x20004ebc:    f001fe20    .. .    BL       $Ven$TT$L$$mlog_16 ; 0x20006b00
        0x20004ec0:    463d        =F      MOV      r5,r7
        0x20004ec2:    1ce8        ..      ADDS     r0,r5,#3
        0x20004ec4:    4631        1F      MOV      r1,r6
        0x20004ec6:    4622        "F      MOV      r2,r4
        0x20004ec8:    f001fed4    ....    BL       $Ven$TT$L$$mlog_1616 ; 0x20006c74
        0x20004ecc:    e003        ..      B        0x20004ed6 ; patch_gatts_api_add_char + 90
        0x20004ece:    4628        (F      MOV      r0,r5
        0x20004ed0:    f001fe2e    ....    BL       $Ven$TT$L$$mlog_0 ; 0x20006b30
        0x20004ed4:    2600        .&      MOVS     r6,#0
        0x20004ed6:    4630        0F      MOV      r0,r6
        0x20004ed8:    b001        ..      ADD      sp,sp,#4
        0x20004eda:    bdf0        ..      POP      {r4-r7,pc}
    $d.17
    __arm_cp.8_0
        0x20004edc:    000052a5    .R..    DCD    21157
    $t.14
    patch_gatts_api_add_service_end
        0x20004ee0:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20004ee2:    b081        ..      SUB      sp,sp,#4
        0x20004ee4:    4860        `H      LDR      r0,[pc,#384] ; [0x20005068] = 0x2000a558
        0x20004ee6:    8801        ..      LDRH     r1,[r0,#0]
        0x20004ee8:    2900        .)      CMP      r1,#0
        0x20004eea:    d012        ..      BEQ      0x20004f12 ; patch_gatts_api_add_service_end + 50
        0x20004eec:    8802        ..      LDRH     r2,[r0,#0]
        0x20004eee:    485f        _H      LDR      r0,[pc,#380] ; [0x2000506c] = 0x2000a55c
        0x20004ef0:    6803        .h      LDR      r3,[r0,#0]
        0x20004ef2:    2000        .       MOVS     r0,#0
        0x20004ef4:    e004        ..      B        0x20004f00 ; patch_gatts_api_add_service_end + 32
        0x20004ef6:    3308        .3      ADDS     r3,r3,#8
        0x20004ef8:    1c40        @.      ADDS     r0,r0,#1
        0x20004efa:    4290        .B      CMP      r0,r2
        0x20004efc:    4611        .F      MOV      r1,r2
        0x20004efe:    d206        ..      BCS      0x20004f0e ; patch_gatts_api_add_service_end + 46
        0x20004f00:    885c        \.      LDRH     r4,[r3,#2]
        0x20004f02:    2c00        .,      CMP      r4,#0
        0x20004f04:    d1f7        ..      BNE      0x20004ef6 ; patch_gatts_api_add_service_end + 22
        0x20004f06:    881c        ..      LDRH     r4,[r3,#0]
        0x20004f08:    2c00        .,      CMP      r4,#0
        0x20004f0a:    d0f4        ..      BEQ      0x20004ef6 ; patch_gatts_api_add_service_end + 22
        0x20004f0c:    e002        ..      B        0x20004f14 ; patch_gatts_api_add_service_end + 52
        0x20004f0e:    4611        .F      MOV      r1,r2
        0x20004f10:    e000        ..      B        0x20004f14 ; patch_gatts_api_add_service_end + 52
        0x20004f12:    2000        .       MOVS     r0,#0
        0x20004f14:    4c0e        .L      LDR      r4,[pc,#56] ; [0x20004f50] = 0x52a3
        0x20004f16:    4288        .B      CMP      r0,r1
        0x20004f18:    d106        ..      BNE      0x20004f28 ; patch_gatts_api_add_service_end + 72
        0x20004f1a:    b281        ..      UXTH     r1,r0
        0x20004f1c:    4620         F      MOV      r0,r4
        0x20004f1e:    f001fdef    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b00
        0x20004f22:    2000        .       MOVS     r0,#0
        0x20004f24:    b001        ..      ADD      sp,sp,#4
        0x20004f26:    bdf0        ..      POP      {r4-r7,pc}
        0x20004f28:    00c6        ..      LSLS     r6,r0,#3
        0x20004f2a:    f002f88f    ....    BL       $Ven$TT$L$$rom_att_db_util_get_last_handle ; 0x2000704c
        0x20004f2e:    4605        .F      MOV      r5,r0
        0x20004f30:    4f4e        NO      LDR      r7,[pc,#312] ; [0x2000506c] = 0x2000a55c
        0x20004f32:    6838        8h      LDR      r0,[r7,#0]
        0x20004f34:    1980        ..      ADDS     r0,r0,r6
        0x20004f36:    8045        E.      STRH     r5,[r0,#2]
        0x20004f38:    f002f88e    ....    BL       $Ven$TT$L$$rom_att_db_util_get_size ; 0x20007058
        0x20004f3c:    4602        .F      MOV      r2,r0
        0x20004f3e:    1c60        `.      ADDS     r0,r4,#1
        0x20004f40:    4629        )F      MOV      r1,r5
        0x20004f42:    f001fe97    ....    BL       $Ven$TT$L$$mlog_1616 ; 0x20006c74
        0x20004f46:    6838        8h      LDR      r0,[r7,#0]
        0x20004f48:    1980        ..      ADDS     r0,r0,r6
        0x20004f4a:    8840        @.      LDRH     r0,[r0,#2]
        0x20004f4c:    b001        ..      ADD      sp,sp,#4
        0x20004f4e:    bdf0        ..      POP      {r4-r7,pc}
    $d.15
    __arm_cp.7_2
        0x20004f50:    000052a3    .R..    DCD    21155
    $t.10
    patch_gatts_api_add_service_start
        0x20004f54:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20004f56:    b083        ..      SUB      sp,sp,#0xc
        0x20004f58:    9201        ..      STR      r2,[sp,#4]
        0x20004f5a:    460e        .F      MOV      r6,r1
        0x20004f5c:    4d42        BM      LDR      r5,[pc,#264] ; [0x20005068] = 0x2000a558
        0x20004f5e:    8829        ).      LDRH     r1,[r5,#0]
        0x20004f60:    2400        .$      MOVS     r4,#0
        0x20004f62:    2900        .)      CMP      r1,#0
        0x20004f64:    9302        ..      STR      r3,[sp,#8]
        0x20004f66:    d00f        ..      BEQ      0x20004f88 ; patch_gatts_api_add_service_start + 52
        0x20004f68:    4a40        @J      LDR      r2,[pc,#256] ; [0x2000506c] = 0x2000a55c
        0x20004f6a:    6812        .h      LDR      r2,[r2,#0]
        0x20004f6c:    8817        ..      LDRH     r7,[r2,#0]
        0x20004f6e:    2f00        ./      CMP      r7,#0
        0x20004f70:    d00a        ..      BEQ      0x20004f88 ; patch_gatts_api_add_service_start + 52
        0x20004f72:    8829        ).      LDRH     r1,[r5,#0]
        0x20004f74:    3208        .2      ADDS     r2,r2,#8
        0x20004f76:    2301        .#      MOVS     r3,#1
        0x20004f78:    461c        .F      MOV      r4,r3
        0x20004f7a:    428b        .B      CMP      r3,r1
        0x20004f7c:    d204        ..      BCS      0x20004f88 ; patch_gatts_api_add_service_start + 52
        0x20004f7e:    1c63        c.      ADDS     r3,r4,#1
        0x20004f80:    8817        ..      LDRH     r7,[r2,#0]
        0x20004f82:    3208        .2      ADDS     r2,r2,#8
        0x20004f84:    2f00        ./      CMP      r7,#0
        0x20004f86:    d1f7        ..      BNE      0x20004f78 ; patch_gatts_api_add_service_start + 36
        0x20004f88:    428c        .B      CMP      r4,r1
        0x20004f8a:    d105        ..      BNE      0x20004f98 ; patch_gatts_api_add_service_start + 68
        0x20004f8c:    b2a1        ..      UXTH     r1,r4
        0x20004f8e:    481f        .H      LDR      r0,[pc,#124] ; [0x2000500c] = 0x5299
        0x20004f90:    f001fdb6    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b00
        0x20004f94:    2700        .'      MOVS     r7,#0
        0x20004f96:    e035        5.      B        0x20005004 ; patch_gatts_api_add_service_start + 176
        0x20004f98:    4d1c        .M      LDR      r5,[pc,#112] ; [0x2000500c] = 0x5299
        0x20004f9a:    2800        .(      CMP      r0,#0
        0x20004f9c:    d013        ..      BEQ      0x20004fc6 ; patch_gatts_api_add_service_start + 114
        0x20004f9e:    462e        .F      MOV      r6,r5
        0x20004fa0:    9d01        ..      LDR      r5,[sp,#4]
        0x20004fa2:    2d00        .-      CMP      r5,#0
        0x20004fa4:    d02a        *.      BEQ      0x20004ffc ; patch_gatts_api_add_service_start + 168
        0x20004fa6:    2005        .       MOVS     r0,#5
        0x20004fa8:    02c1        ..      LSLS     r1,r0,#11
        0x20004faa:    4628        (F      MOV      r0,r5
        0x20004fac:    f002f85a    ..Z.    BL       $Ven$TT$L$$rom_att_db_util_add_service_uuid128 ; 0x20007064
        0x20004fb0:    4607        .F      MOV      r7,r0
        0x20004fb2:    1cb0        ..      ADDS     r0,r6,#2
        0x20004fb4:    2210        ."      MOVS     r2,#0x10
        0x20004fb6:    4629        )F      MOV      r1,r5
        0x20004fb8:    4635        5F      MOV      r5,r6
        0x20004fba:    f001fe55    ..U.    BL       $Ven$TT$L$$mlog_x ; 0x20006c68
        0x20004fbe:    2f00        ./      CMP      r7,#0
        0x20004fc0:    d10d        ..      BNE      0x20004fde ; patch_gatts_api_add_service_start + 138
        0x20004fc2:    2700        .'      MOVS     r7,#0
        0x20004fc4:    e01e        ..      B        0x20005004 ; patch_gatts_api_add_service_start + 176
        0x20004fc6:    2005        .       MOVS     r0,#5
        0x20004fc8:    02c1        ..      LSLS     r1,r0,#11
        0x20004fca:    4630        0F      MOV      r0,r6
        0x20004fcc:    f002f850    ..P.    BL       $Ven$TT$L$$rom_att_db_util_add_service_uuid16 ; 0x20007070
        0x20004fd0:    4607        .F      MOV      r7,r0
        0x20004fd2:    1ce8        ..      ADDS     r0,r5,#3
        0x20004fd4:    4631        1F      MOV      r1,r6
        0x20004fd6:    f001fd93    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b00
        0x20004fda:    2f00        ./      CMP      r7,#0
        0x20004fdc:    d0f1        ..      BEQ      0x20004fc2 ; patch_gatts_api_add_service_start + 110
        0x20004fde:    00e0        ..      LSLS     r0,r4,#3
        0x20004fe0:    4922        "I      LDR      r1,[pc,#136] ; [0x2000506c] = 0x2000a55c
        0x20004fe2:    6809        .h      LDR      r1,[r1,#0]
        0x20004fe4:    520f        .R      STRH     r7,[r1,r0]
        0x20004fe6:    1808        ..      ADDS     r0,r1,r0
        0x20004fe8:    9902        ..      LDR      r1,[sp,#8]
        0x20004fea:    6041        A`      STR      r1,[r0,#4]
        0x20004fec:    2100        .!      MOVS     r1,#0
        0x20004fee:    8041        A.      STRH     r1,[r0,#2]
        0x20004ff0:    1d28        (.      ADDS     r0,r5,#4
        0x20004ff2:    b2a2        ..      UXTH     r2,r4
        0x20004ff4:    4639        9F      MOV      r1,r7
        0x20004ff6:    f001fe3d    ..=.    BL       $Ven$TT$L$$mlog_1616 ; 0x20006c74
        0x20004ffa:    e003        ..      B        0x20005004 ; patch_gatts_api_add_service_start + 176
        0x20004ffc:    1c70        p.      ADDS     r0,r6,#1
        0x20004ffe:    f001fd97    ....    BL       $Ven$TT$L$$mlog_0 ; 0x20006b30
        0x20005002:    2700        .'      MOVS     r7,#0
        0x20005004:    4638        8F      MOV      r0,r7
        0x20005006:    b003        ..      ADD      sp,sp,#0xc
        0x20005008:    bdf0        ..      POP      {r4-r7,pc}
        0x2000500a:    46c0        .F      MOV      r8,r8
    $d.11
    __arm_cp.5_2
        0x2000500c:    00005299    .R..    DCD    21145
    $t.8
    patch_gatts_api_init
        0x20005010:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20005012:    b081        ..      SUB      sp,sp,#4
        0x20005014:    4d13        .M      LDR      r5,[pc,#76] ; [0x20005064] = 0x5297
        0x20005016:    2800        .(      CMP      r0,#0
        0x20005018:    d01f        ..      BEQ      0x2000505a ; patch_gatts_api_init + 74
        0x2000501a:    2a00        .*      CMP      r2,#0
        0x2000501c:    d01d        ..      BEQ      0x2000505a ; patch_gatts_api_init + 74
        0x2000501e:    460c        .F      MOV      r4,r1
        0x20005020:    2900        .)      CMP      r1,#0
        0x20005022:    d01a        ..      BEQ      0x2000505a ; patch_gatts_api_init + 74
        0x20005024:    2b00        .+      CMP      r3,#0
        0x20005026:    d018        ..      BEQ      0x2000505a ; patch_gatts_api_init + 74
        0x20005028:    490f        .I      LDR      r1,[pc,#60] ; [0x20005068] = 0x2000a558
        0x2000502a:    800b        ..      STRH     r3,[r1,#0]
        0x2000502c:    490f        .I      LDR      r1,[pc,#60] ; [0x2000506c] = 0x2000a55c
        0x2000502e:    600a        .`      STR      r2,[r1,#0]
        0x20005030:    2100        .!      MOVS     r1,#0
        0x20005032:    460f        .F      MOV      r7,r1
        0x20005034:    460e        .F      MOV      r6,r1
        0x20005036:    00ff        ..      LSLS     r7,r7,#3
        0x20005038:    51d1        .Q      STR      r1,[r2,r7]
        0x2000503a:    1c76        v.      ADDS     r6,r6,#1
        0x2000503c:    b2f7        ..      UXTB     r7,r6
        0x2000503e:    429f        .B      CMP      r7,r3
        0x20005040:    d3f9        ..      BCC      0x20005036 ; patch_gatts_api_init + 38
        0x20005042:    2200        ."      MOVS     r2,#0
        0x20005044:    9200        ..      STR      r2,[sp,#0]
        0x20005046:    4621        !F      MOV      r1,r4
        0x20005048:    4613        .F      MOV      r3,r2
        0x2000504a:    f002f817    ....    BL       $Ven$TT$L$$rom_att_db_util_init ; 0x2000707c
        0x2000504e:    1c68        h.      ADDS     r0,r5,#1
        0x20005050:    4621        !F      MOV      r1,r4
        0x20005052:    f001fd55    ..U.    BL       $Ven$TT$L$$mlog_16 ; 0x20006b00
        0x20005056:    b001        ..      ADD      sp,sp,#4
        0x20005058:    bdf0        ..      POP      {r4-r7,pc}
        0x2000505a:    4628        (F      MOV      r0,r5
        0x2000505c:    f001fd68    ..h.    BL       $Ven$TT$L$$mlog_0 ; 0x20006b30
        0x20005060:    b001        ..      ADD      sp,sp,#4
        0x20005062:    bdf0        ..      POP      {r4-r7,pc}
    $d.9
    __arm_cp.4_0
        0x20005064:    00005297    .R..    DCD    21143
    __arm_cp.4_1
        0x20005068:    2000a558    X..     DCD    536913240
    __arm_cp.4_2
        0x2000506c:    2000a55c    \..     DCD    536913244
    $t.16
    patch_handle_execute_write_request
        0x20005070:    b570        p.      PUSH     {r4-r6,lr}
        0x20005072:    b082        ..      SUB      sp,sp,#8
        0x20005074:    460e        .F      MOV      r6,r1
        0x20005076:    4604        .F      MOV      r4,r0
        0x20005078:    2010        .       MOVS     r0,#0x10
        0x2000507a:    f002f805    ....    BL       $Ven$TT$L$$rom_l2cap_get_avail_data_buffer ; 0x20007088
        0x2000507e:    2800        .(      CMP      r0,#0
        0x20005080:    d00a        ..      BEQ      0x20005098 ; patch_handle_execute_write_request + 40
        0x20005082:    4605        .F      MOV      r5,r0
        0x20005084:    8961        a.      LDRH     r1,[r4,#0xa]
        0x20005086:    88a0        ..      LDRH     r0,[r4,#4]
        0x20005088:    7872        rx      LDRB     r2,[r6,#1]
        0x2000508a:    2300        .#      MOVS     r3,#0
        0x2000508c:    9300        ..      STR      r3,[sp,#0]
        0x2000508e:    9301        ..      STR      r3,[sp,#4]
        0x20005090:    2a01        .*      CMP      r2,#1
        0x20005092:    d006        ..      BEQ      0x200050a2 ; patch_handle_execute_write_request + 50
        0x20005094:    2203        ."      MOVS     r2,#3
        0x20005096:    e005        ..      B        0x200050a4 ; patch_handle_execute_write_request + 52
        0x20005098:    480d        .H      LDR      r0,[pc,#52] ; [0x200050d0] = 0x5123
        0x2000509a:    f001fd49    ..I.    BL       $Ven$TT$L$$mlog_0 ; 0x20006b30
        0x2000509e:    b002        ..      ADD      sp,sp,#8
        0x200050a0:    bd70        p.      POP      {r4-r6,pc}
        0x200050a2:    2202        ."      MOVS     r2,#2
        0x200050a4:    f000fb26    ..&.    BL       patch_ht32_att_write_callback ; 0x200056f4
        0x200050a8:    0601        ..      LSLS     r1,r0,#24
        0x200050aa:    d007        ..      BEQ      0x200050bc ; patch_handle_execute_write_request + 76
        0x200050ac:    b2c3        ..      UXTB     r3,r0
        0x200050ae:    2118        .!      MOVS     r1,#0x18
        0x200050b0:    2200        ."      MOVS     r2,#0
        0x200050b2:    4628        (F      MOV      r0,r5
        0x200050b4:    f001ffee    ....    BL       $Ven$TT$L$$rom_setup_error ; 0x20007094
        0x200050b8:    4602        .F      MOV      r2,r0
        0x200050ba:    e002        ..      B        0x200050c2 ; patch_handle_execute_write_request + 82
        0x200050bc:    2019        .       MOVS     r0,#0x19
        0x200050be:    7028        (p      STRB     r0,[r5,#0]
        0x200050c0:    2201        ."      MOVS     r2,#1
        0x200050c2:    88a0        ..      LDRH     r0,[r4,#4]
        0x200050c4:    4629        )F      MOV      r1,r5
        0x200050c6:    f001ffeb    ....    BL       $Ven$TT$L$$rom_att_tx_buffer_commit ; 0x200070a0
        0x200050ca:    b002        ..      ADD      sp,sp,#8
        0x200050cc:    bd70        p.      POP      {r4-r6,pc}
        0x200050ce:    46c0        .F      MOV      r8,r8
    $d.17
    __arm_cp.9_0
        0x200050d0:    00005123    #Q..    DCD    20771
    $t.13
    patch_handle_prepare_write_request
        0x200050d4:    b5f0        ..      PUSH     {r4-r7,lr}
        0x200050d6:    b08b        ..      SUB      sp,sp,#0x2c
        0x200050d8:    9204        ..      STR      r2,[sp,#0x10]
        0x200050da:    460c        .F      MOV      r4,r1
        0x200050dc:    4605        .F      MOV      r5,r0
        0x200050de:    2101        .!      MOVS     r1,#1
        0x200050e0:    4620         F      MOV      r0,r4
        0x200050e2:    f001ff3b    ..;.    BL       $Ven$TT$L$$rom_stack_utility_little_endian_read_16 ; 0x20006f5c
        0x200050e6:    4607        .F      MOV      r7,r0
        0x200050e8:    2103        .!      MOVS     r1,#3
        0x200050ea:    4620         F      MOV      r0,r4
        0x200050ec:    f001ff36    ..6.    BL       $Ven$TT$L$$rom_stack_utility_little_endian_read_16 ; 0x20006f5c
        0x200050f0:    9003        ..      STR      r0,[sp,#0xc]
        0x200050f2:    462e        .F      MOV      r6,r5
        0x200050f4:    8828        (.      LDRH     r0,[r5,#0]
        0x200050f6:    1d00        ..      ADDS     r0,r0,#4
        0x200050f8:    b280        ..      UXTH     r0,r0
        0x200050fa:    f001ffc5    ....    BL       $Ven$TT$L$$rom_l2cap_get_avail_data_buffer ; 0x20007088
        0x200050fe:    2800        .(      CMP      r0,#0
        0x20005100:    d013        ..      BEQ      0x2000512a ; patch_handle_prepare_write_request + 86
        0x20005102:    4605        .F      MOV      r5,r0
        0x20005104:    a805        ..      ADD      r0,sp,#0x14
        0x20005106:    4639        9F      MOV      r1,r7
        0x20005108:    f001ffd0    ....    BL       $Ven$TT$L$$rom_att_find_handle ; 0x200070ac
        0x2000510c:    2800        .(      CMP      r0,#0
        0x2000510e:    d011        ..      BEQ      0x20005134 ; patch_handle_prepare_write_request + 96
        0x20005110:    a805        ..      ADD      r0,sp,#0x14
        0x20005112:    88c0        ..      LDRH     r0,[r0,#6]
        0x20005114:    0701        ..      LSLS     r1,r0,#28
        0x20005116:    d501        ..      BPL      0x2000511c ; patch_handle_prepare_write_request + 72
        0x20005118:    05c0        ..      LSLS     r0,r0,#23
        0x2000511a:    d412        ..      BMI      0x20005142 ; patch_handle_prepare_write_request + 110
        0x2000511c:    2116        .!      MOVS     r1,#0x16
        0x2000511e:    4628        (F      MOV      r0,r5
        0x20005120:    463a        :F      MOV      r2,r7
        0x20005122:    f001ffc9    ....    BL       $Ven$TT$L$$rom_setup_error_write_not_permitted ; 0x200070b8
        0x20005126:    4602        .F      MOV      r2,r0
        0x20005128:    e028        (.      B        0x2000517c ; patch_handle_prepare_write_request + 168
        0x2000512a:    481d        .H      LDR      r0,[pc,#116] ; [0x200051a0] = 0x5122
        0x2000512c:    f001fd00    ....    BL       $Ven$TT$L$$mlog_0 ; 0x20006b30
        0x20005130:    b00b        ..      ADD      sp,sp,#0x2c
        0x20005132:    bdf0        ..      POP      {r4-r7,pc}
        0x20005134:    2116        .!      MOVS     r1,#0x16
        0x20005136:    4628        (F      MOV      r0,r5
        0x20005138:    463a        :F      MOV      r2,r7
        0x2000513a:    f001ffc3    ....    BL       $Ven$TT$L$$rom_setup_error_invalid_handle ; 0x200070c4
        0x2000513e:    4602        .F      MOV      r2,r0
        0x20005140:    e01c        ..      B        0x2000517c ; patch_handle_prepare_write_request + 168
        0x20005142:    a905        ..      ADD      r1,sp,#0x14
        0x20005144:    4630        0F      MOV      r0,r6
        0x20005146:    f001ffc3    ....    BL       $Ven$TT$L$$rom_att_validate_security ; 0x200070d0
        0x2000514a:    2800        .(      CMP      r0,#0
        0x2000514c:    d001        ..      BEQ      0x20005152 ; patch_handle_prepare_write_request + 126
        0x2000514e:    4603        .F      MOV      r3,r0
        0x20005150:    e00e        ..      B        0x20005170 ; patch_handle_prepare_write_request + 156
        0x20005152:    88b0        ..      LDRH     r0,[r6,#4]
        0x20005154:    9904        ..      LDR      r1,[sp,#0x10]
        0x20005156:    1f49        I.      SUBS     r1,r1,#5
        0x20005158:    b289        ..      UXTH     r1,r1
        0x2000515a:    1d62        b.      ADDS     r2,r4,#5
        0x2000515c:    9200        ..      STR      r2,[sp,#0]
        0x2000515e:    9101        ..      STR      r1,[sp,#4]
        0x20005160:    2201        ."      MOVS     r2,#1
        0x20005162:    4639        9F      MOV      r1,r7
        0x20005164:    9b03        ..      LDR      r3,[sp,#0xc]
        0x20005166:    f000fac5    ....    BL       patch_ht32_att_write_callback ; 0x200056f4
        0x2000516a:    0601        ..      LSLS     r1,r0,#24
        0x2000516c:    d00c        ..      BEQ      0x20005188 ; patch_handle_prepare_write_request + 180
        0x2000516e:    b2c3        ..      UXTB     r3,r0
        0x20005170:    2116        .!      MOVS     r1,#0x16
        0x20005172:    4628        (F      MOV      r0,r5
        0x20005174:    463a        :F      MOV      r2,r7
        0x20005176:    f001ff8d    ....    BL       $Ven$TT$L$$rom_setup_error ; 0x20007094
        0x2000517a:    4602        .F      MOV      r2,r0
        0x2000517c:    88b0        ..      LDRH     r0,[r6,#4]
        0x2000517e:    4629        )F      MOV      r1,r5
        0x20005180:    f001ff8e    ....    BL       $Ven$TT$L$$rom_att_tx_buffer_commit ; 0x200070a0
        0x20005184:    b00b        ..      ADD      sp,sp,#0x2c
        0x20005186:    bdf0        ..      POP      {r4-r7,pc}
        0x20005188:    4628        (F      MOV      r0,r5
        0x2000518a:    4621        !F      MOV      r1,r4
        0x2000518c:    9c04        ..      LDR      r4,[sp,#0x10]
        0x2000518e:    4622        "F      MOV      r2,r4
        0x20005190:    f7fef898    ....    BL       __aeabi_memcpy ; 0x200032c4
        0x20005194:    2017        .       MOVS     r0,#0x17
        0x20005196:    7028        (p      STRB     r0,[r5,#0]
        0x20005198:    8177        w.      STRH     r7,[r6,#0xa]
        0x2000519a:    4622        "F      MOV      r2,r4
        0x2000519c:    e7ee        ..      B        0x2000517c ; patch_handle_prepare_write_request + 168
        0x2000519e:    46c0        .F      MOV      r8,r8
    $d.14
    __arm_cp.7_0
        0x200051a0:    00005122    "Q..    DCD    20770
    $t.7
    patch_handle_read_blob_request
        0x200051a4:    b5f0        ..      PUSH     {r4-r7,lr}
        0x200051a6:    b089        ..      SUB      sp,sp,#0x24
        0x200051a8:    460d        .F      MOV      r5,r1
        0x200051aa:    4604        .F      MOV      r4,r0
        0x200051ac:    2101        .!      MOVS     r1,#1
        0x200051ae:    4628        (F      MOV      r0,r5
        0x200051b0:    f001fed4    ....    BL       $Ven$TT$L$$rom_stack_utility_little_endian_read_16 ; 0x20006f5c
        0x200051b4:    4606        .F      MOV      r6,r0
        0x200051b6:    2103        .!      MOVS     r1,#3
        0x200051b8:    4628        (F      MOV      r0,r5
        0x200051ba:    f001fecf    ....    BL       $Ven$TT$L$$rom_stack_utility_little_endian_read_16 ; 0x20006f5c
        0x200051be:    9002        ..      STR      r0,[sp,#8]
        0x200051c0:    a803        ..      ADD      r0,sp,#0xc
        0x200051c2:    4631        1F      MOV      r1,r6
        0x200051c4:    f001ff72    ..r.    BL       $Ven$TT$L$$rom_att_find_handle ; 0x200070ac
        0x200051c8:    4607        .F      MOV      r7,r0
        0x200051ca:    8820         .      LDRH     r0,[r4,#0]
        0x200051cc:    1d00        ..      ADDS     r0,r0,#4
        0x200051ce:    b280        ..      UXTH     r0,r0
        0x200051d0:    f001ff5a    ..Z.    BL       $Ven$TT$L$$rom_l2cap_get_avail_data_buffer ; 0x20007088
        0x200051d4:    2800        .(      CMP      r0,#0
        0x200051d6:    d00c        ..      BEQ      0x200051f2 ; patch_handle_read_blob_request + 78
        0x200051d8:    4605        .F      MOV      r5,r0
        0x200051da:    2f00        ./      CMP      r7,#0
        0x200051dc:    d00e        ..      BEQ      0x200051fc ; patch_handle_read_blob_request + 88
        0x200051de:    a803        ..      ADD      r0,sp,#0xc
        0x200051e0:    88c0        ..      LDRH     r0,[r0,#6]
        0x200051e2:    0780        ..      LSLS     r0,r0,#30
        0x200051e4:    d410        ..      BMI      0x20005208 ; patch_handle_read_blob_request + 100
        0x200051e6:    210c        .!      MOVS     r1,#0xc
        0x200051e8:    4628        (F      MOV      r0,r5
        0x200051ea:    4632        2F      MOV      r2,r6
        0x200051ec:    f001ff76    ..v.    BL       $Ven$TT$L$$rom_setup_error_read_not_permitted ; 0x200070dc
        0x200051f0:    e03b        ;.      B        0x2000526a ; patch_handle_read_blob_request + 198
        0x200051f2:    4822        "H      LDR      r0,[pc,#136] ; [0x2000527c] = 0x511f
        0x200051f4:    f001fc9c    ....    BL       $Ven$TT$L$$mlog_0 ; 0x20006b30
        0x200051f8:    b009        ..      ADD      sp,sp,#0x24
        0x200051fa:    bdf0        ..      POP      {r4-r7,pc}
        0x200051fc:    210c        .!      MOVS     r1,#0xc
        0x200051fe:    4628        (F      MOV      r0,r5
        0x20005200:    4632        2F      MOV      r2,r6
        0x20005202:    f001ff5f    .._.    BL       $Ven$TT$L$$rom_setup_error_invalid_handle ; 0x200070c4
        0x20005206:    e030        0.      B        0x2000526a ; patch_handle_read_blob_request + 198
        0x20005208:    a903        ..      ADD      r1,sp,#0xc
        0x2000520a:    4620         F      MOV      r0,r4
        0x2000520c:    f001ff60    ..`.    BL       $Ven$TT$L$$rom_att_validate_security ; 0x200070d0
        0x20005210:    2800        .(      CMP      r0,#0
        0x20005212:    d006        ..      BEQ      0x20005222 ; patch_handle_read_blob_request + 126
        0x20005214:    4603        .F      MOV      r3,r0
        0x20005216:    210c        .!      MOVS     r1,#0xc
        0x20005218:    4628        (F      MOV      r0,r5
        0x2000521a:    4632        2F      MOV      r2,r6
        0x2000521c:    f001ff3a    ..:.    BL       $Ven$TT$L$$rom_setup_error ; 0x20007094
        0x20005220:    e023        #.      B        0x2000526a ; patch_handle_read_blob_request + 198
        0x20005222:    88a0        ..      LDRH     r0,[r4,#4]
        0x20005224:    af03        ..      ADD      r7,sp,#0xc
        0x20005226:    4639        9F      MOV      r1,r7
        0x20005228:    f7fffdbe    ....    BL       patch_att_update_value_len ; 0x20004da8
        0x2000522c:    8a38        8.      LDRH     r0,[r7,#0x10]
        0x2000522e:    9a02        ..      LDR      r2,[sp,#8]
        0x20005230:    4282        .B      CMP      r2,r0
        0x20005232:    d905        ..      BLS      0x20005240 ; patch_handle_read_blob_request + 156
        0x20005234:    210c        .!      MOVS     r1,#0xc
        0x20005236:    4628        (F      MOV      r0,r5
        0x20005238:    4632        2F      MOV      r2,r6
        0x2000523a:    f001ff55    ..U.    BL       $Ven$TT$L$$rom_setup_error_invalid_offset ; 0x200070e8
        0x2000523e:    e014        ..      B        0x2000526a ; patch_handle_read_blob_request + 198
        0x20005240:    1a80        ..      SUBS     r0,r0,r2
        0x20005242:    1c41        A.      ADDS     r1,r0,#1
        0x20005244:    8820         .      LDRH     r0,[r4,#0]
        0x20005246:    4281        .B      CMP      r1,r0
        0x20005248:    dd03        ..      BLE      0x20005252 ; patch_handle_read_blob_request + 174
        0x2000524a:    1810        ..      ADDS     r0,r2,r0
        0x2000524c:    1e40        @.      SUBS     r0,r0,#1
        0x2000524e:    a903        ..      ADD      r1,sp,#0xc
        0x20005250:    8208        ..      STRH     r0,[r1,#0x10]
        0x20005252:    9807        ..      LDR      r0,[sp,#0x1c]
        0x20005254:    1a80        ..      SUBS     r0,r0,r2
        0x20005256:    b281        ..      UXTH     r1,r0
        0x20005258:    88a0        ..      LDRH     r0,[r4,#4]
        0x2000525a:    9100        ..      STR      r1,[sp,#0]
        0x2000525c:    1c6b        k.      ADDS     r3,r5,#1
        0x2000525e:    a903        ..      ADD      r1,sp,#0xc
        0x20005260:    f7fffc1a    ....    BL       patch_att_copy_value ; 0x20004a98
        0x20005264:    210d        .!      MOVS     r1,#0xd
        0x20005266:    7029        )p      STRB     r1,[r5,#0]
        0x20005268:    1c40        @.      ADDS     r0,r0,#1
        0x2000526a:    88a1        ..      LDRH     r1,[r4,#4]
        0x2000526c:    b282        ..      UXTH     r2,r0
        0x2000526e:    4608        .F      MOV      r0,r1
        0x20005270:    4629        )F      MOV      r1,r5
        0x20005272:    f001ff15    ....    BL       $Ven$TT$L$$rom_att_tx_buffer_commit ; 0x200070a0
        0x20005276:    b009        ..      ADD      sp,sp,#0x24
        0x20005278:    bdf0        ..      POP      {r4-r7,pc}
        0x2000527a:    46c0        .F      MOV      r8,r8
    $d.8
    __arm_cp.4_0
        0x2000527c:    0000511f    .Q..    DCD    20767
    $t.3
    patch_handle_read_by_type_request
        0x20005280:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20005282:    b091        ..      SUB      sp,sp,#0x44
        0x20005284:    4614        .F      MOV      r4,r2
        0x20005286:    460e        .F      MOV      r6,r1
        0x20005288:    4607        .F      MOV      r7,r0
        0x2000528a:    2101        .!      MOVS     r1,#1
        0x2000528c:    4630        0F      MOV      r0,r6
        0x2000528e:    9109        ..      STR      r1,[sp,#0x24]
        0x20005290:    f001fe64    ..d.    BL       $Ven$TT$L$$rom_stack_utility_little_endian_read_16 ; 0x20006f5c
        0x20005294:    4605        .F      MOV      r5,r0
        0x20005296:    2103        .!      MOVS     r1,#3
        0x20005298:    4630        0F      MOV      r0,r6
        0x2000529a:    f001fe5f    .._.    BL       $Ven$TT$L$$rom_stack_utility_little_endian_read_16 ; 0x20006f5c
        0x2000529e:    4602        .F      MOV      r2,r0
        0x200052a0:    4871        qH      LDR      r0,[pc,#452] ; [0x20005468] = 0x5117
        0x200052a2:    950a        ..      STR      r5,[sp,#0x28]
        0x200052a4:    4629        )F      MOV      r1,r5
        0x200052a6:    4605        .F      MOV      r5,r0
        0x200052a8:    9208        ..      STR      r2,[sp,#0x20]
        0x200052aa:    f001fce3    ....    BL       $Ven$TT$L$$mlog_1616 ; 0x20006c74
        0x200052ae:    7972        ry      LDRB     r2,[r6,#5]
        0x200052b0:    1c68        h.      ADDS     r0,r5,#1
        0x200052b2:    4621        !F      MOV      r1,r4
        0x200052b4:    f001fcde    ....    BL       $Ven$TT$L$$mlog_1616 ; 0x20006c74
        0x200052b8:    9707        ..      STR      r7,[sp,#0x1c]
        0x200052ba:    8838        8.      LDRH     r0,[r7,#0]
        0x200052bc:    1d00        ..      ADDS     r0,r0,#4
        0x200052be:    b280        ..      UXTH     r0,r0
        0x200052c0:    f001fee2    ....    BL       $Ven$TT$L$$rom_l2cap_get_avail_data_buffer ; 0x20007088
        0x200052c4:    2800        .(      CMP      r0,#0
        0x200052c6:    d004        ..      BEQ      0x200052d2 ; patch_handle_read_by_type_request + 82
        0x200052c8:    4607        .F      MOV      r7,r0
        0x200052ca:    2c08        .,      CMP      r4,#8
        0x200052cc:    d306        ..      BCC      0x200052dc ; patch_handle_read_by_type_request + 92
        0x200052ce:    2010        .       MOVS     r0,#0x10
        0x200052d0:    e005        ..      B        0x200052de ; patch_handle_read_by_type_request + 94
        0x200052d2:    1ca8        ..      ADDS     r0,r5,#2
        0x200052d4:    f001fc2c    ..,.    BL       $Ven$TT$L$$mlog_0 ; 0x20006b30
        0x200052d8:    b011        ..      ADD      sp,sp,#0x44
        0x200052da:    bdf0        ..      POP      {r4-r7,pc}
        0x200052dc:    2002        .       MOVS     r0,#2
        0x200052de:    9006        ..      STR      r0,[sp,#0x18]
        0x200052e0:    9a0a        ..      LDR      r2,[sp,#0x28]
        0x200052e2:    9908        ..      LDR      r1,[sp,#0x20]
        0x200052e4:    1e50        P.      SUBS     r0,r2,#1
        0x200052e6:    b280        ..      UXTH     r0,r0
        0x200052e8:    4288        .B      CMP      r0,r1
        0x200052ea:    d20a        ..      BCS      0x20005302 ; patch_handle_read_by_type_request + 130
        0x200052ec:    1d70        p.      ADDS     r0,r6,#5
        0x200052ee:    9005        ..      STR      r0,[sp,#0x14]
        0x200052f0:    a80b        ..      ADD      r0,sp,#0x2c
        0x200052f2:    f001feff    ....    BL       $Ven$TT$L$$rom_att_iterator_init ; 0x200070f4
        0x200052f6:    2600        .&      MOVS     r6,#0
        0x200052f8:    9603        ..      STR      r6,[sp,#0xc]
        0x200052fa:    9602        ..      STR      r6,[sp,#8]
        0x200052fc:    9809        ..      LDR      r0,[sp,#0x24]
        0x200052fe:    9004        ..      STR      r0,[sp,#0x10]
        0x20005300:    e00f        ..      B        0x20005322 ; patch_handle_read_by_type_request + 162
        0x20005302:    2108        .!      MOVS     r1,#8
        0x20005304:    4638        8F      MOV      r0,r7
        0x20005306:    f001fedd    ....    BL       $Ven$TT$L$$rom_setup_error_invalid_handle ; 0x200070c4
        0x2000530a:    e09e        ..      B        0x2000544a ; patch_handle_read_by_type_request + 458
        0x2000530c:    a90b        ..      ADD      r1,sp,#0x2c
        0x2000530e:    9c07        ..      LDR      r4,[sp,#0x1c]
        0x20005310:    4620         F      MOV      r0,r4
        0x20005312:    f001fedd    ....    BL       $Ven$TT$L$$rom_att_validate_security ; 0x200070d0
        0x20005316:    2800        .(      CMP      r0,#0
        0x20005318:    d034        4.      BEQ      0x20005384 ; patch_handle_read_by_type_request + 260
        0x2000531a:    9003        ..      STR      r0,[sp,#0xc]
        0x2000531c:    9c09        ..      LDR      r4,[sp,#0x24]
        0x2000531e:    2c00        .,      CMP      r4,#0
        0x20005320:    d175        u.      BNE      0x2000540e ; patch_handle_read_by_type_request + 398
        0x20005322:    a80b        ..      ADD      r0,sp,#0x2c
        0x20005324:    f001feec    ....    BL       $Ven$TT$L$$rom_att_iterator_has_next ; 0x20007100
        0x20005328:    2800        .(      CMP      r0,#0
        0x2000532a:    d070        p.      BEQ      0x2000540e ; patch_handle_read_by_type_request + 398
        0x2000532c:    ac0b        ..      ADD      r4,sp,#0x2c
        0x2000532e:    4620         F      MOV      r0,r4
        0x20005330:    f001feec    ....    BL       $Ven$TT$L$$rom_att_iterator_fetch_next ; 0x2000710c
        0x20005334:    8922        ".      LDRH     r2,[r4,#8]
        0x20005336:    88a1        ..      LDRH     r1,[r4,#4]
        0x20005338:    1ce8        ..      ADDS     r0,r5,#3
        0x2000533a:    f001fc9b    ....    BL       $Ven$TT$L$$mlog_1616 ; 0x20006c74
        0x2000533e:    980e        ..      LDR      r0,[sp,#0x38]
        0x20005340:    7801        .x      LDRB     r1,[r0,#0]
        0x20005342:    7840        @x      LDRB     r0,[r0,#1]
        0x20005344:    0200        ..      LSLS     r0,r0,#8
        0x20005346:    1840        @.      ADDS     r0,r0,r1
        0x20005348:    b282        ..      UXTH     r2,r0
        0x2000534a:    88e1        ..      LDRH     r1,[r4,#6]
        0x2000534c:    1d28        (.      ADDS     r0,r5,#4
        0x2000534e:    f001fc91    ....    BL       $Ven$TT$L$$mlog_1616 ; 0x20006c74
        0x20005352:    8920         .      LDRH     r0,[r4,#8]
        0x20005354:    2800        .(      CMP      r0,#0
        0x20005356:    d0e1        ..      BEQ      0x2000531c ; patch_handle_read_by_type_request + 156
        0x20005358:    2400        .$      MOVS     r4,#0
        0x2000535a:    990a        ..      LDR      r1,[sp,#0x28]
        0x2000535c:    4288        .B      CMP      r0,r1
        0x2000535e:    d3de        ..      BCC      0x2000531e ; patch_handle_read_by_type_request + 158
        0x20005360:    9908        ..      LDR      r1,[sp,#0x20]
        0x20005362:    4288        .B      CMP      r0,r1
        0x20005364:    d8da        ..      BHI      0x2000531c ; patch_handle_read_by_type_request + 156
        0x20005366:    a80b        ..      ADD      r0,sp,#0x2c
        0x20005368:    9905        ..      LDR      r1,[sp,#0x14]
        0x2000536a:    9a06        ..      LDR      r2,[sp,#0x18]
        0x2000536c:    f001fed4    ....    BL       $Ven$TT$L$$rom_att_iterator_match_uuid ; 0x20007118
        0x20005370:    2800        .(      CMP      r0,#0
        0x20005372:    d0d4        ..      BEQ      0x2000531e ; patch_handle_read_by_type_request + 158
        0x20005374:    a80b        ..      ADD      r0,sp,#0x2c
        0x20005376:    88c0        ..      LDRH     r0,[r0,#6]
        0x20005378:    0780        ..      LSLS     r0,r0,#30
        0x2000537a:    d4c7        ..      BMI      0x2000530c ; patch_handle_read_by_type_request + 140
        0x2000537c:    0430        0.      LSLS     r0,r6,#16
        0x2000537e:    d1ce        ..      BNE      0x2000531e ; patch_handle_read_by_type_request + 158
        0x20005380:    9e0d        ..      LDR      r6,[sp,#0x34]
        0x20005382:    e7cc        ..      B        0x2000531e ; patch_handle_read_by_type_request + 158
        0x20005384:    88a0        ..      LDRH     r0,[r4,#4]
        0x20005386:    a90b        ..      ADD      r1,sp,#0x2c
        0x20005388:    f7fffd0e    ....    BL       patch_att_update_value_len ; 0x20004da8
        0x2000538c:    980f        ..      LDR      r0,[sp,#0x3c]
        0x2000538e:    1c80        ..      ADDS     r0,r0,#2
        0x20005390:    9904        ..      LDR      r1,[sp,#0x10]
        0x20005392:    b289        ..      UXTH     r1,r1
        0x20005394:    2200        ."      MOVS     r2,#0
        0x20005396:    9203        ..      STR      r2,[sp,#0xc]
        0x20005398:    2902        .)      CMP      r1,#2
        0x2000539a:    d304        ..      BCC      0x200053a6 ; patch_handle_read_by_type_request + 294
        0x2000539c:    b282        ..      UXTH     r2,r0
        0x2000539e:    9b02        ..      LDR      r3,[sp,#8]
        0x200053a0:    b29b        ..      UXTH     r3,r3
        0x200053a2:    4293        .B      CMP      r3,r2
        0x200053a4:    d1ba        ..      BNE      0x2000531c ; patch_handle_read_by_type_request + 156
        0x200053a6:    2901        .)      CMP      r1,#1
        0x200053a8:    d103        ..      BNE      0x200053b2 ; patch_handle_read_by_type_request + 306
        0x200053aa:    7078        xp      STRB     r0,[r7,#1]
        0x200053ac:    9b04        ..      LDR      r3,[sp,#0x10]
        0x200053ae:    1c5b        [.      ADDS     r3,r3,#1
        0x200053b0:    e001        ..      B        0x200053b6 ; patch_handle_read_by_type_request + 310
        0x200053b2:    9b04        ..      LDR      r3,[sp,#0x10]
        0x200053b4:    9802        ..      LDR      r0,[sp,#8]
        0x200053b6:    9002        ..      STR      r0,[sp,#8]
        0x200053b8:    b280        ..      UXTH     r0,r0
        0x200053ba:    b299        ..      UXTH     r1,r3
        0x200053bc:    180a        ..      ADDS     r2,r1,r0
        0x200053be:    8820         .      LDRH     r0,[r4,#0]
        0x200053c0:    4282        .B      CMP      r2,r0
        0x200053c2:    9304        ..      STR      r3,[sp,#0x10]
        0x200053c4:    d906        ..      BLS      0x200053d4 ; patch_handle_read_by_type_request + 340
        0x200053c6:    2902        .)      CMP      r1,#2
        0x200053c8:    d8a8        ..      BHI      0x2000531c ; patch_handle_read_by_type_request + 156
        0x200053ca:    1f00        ..      SUBS     r0,r0,#4
        0x200053cc:    aa0b        ..      ADD      r2,sp,#0x2c
        0x200053ce:    8210        ..      STRH     r0,[r2,#0x10]
        0x200053d0:    1c80        ..      ADDS     r0,r0,#2
        0x200053d2:    7078        xp      STRB     r0,[r7,#1]
        0x200053d4:    ac0b        ..      ADD      r4,sp,#0x2c
        0x200053d6:    8922        ".      LDRH     r2,[r4,#8]
        0x200053d8:    4638        8F      MOV      r0,r7
        0x200053da:    f001fea3    ....    BL       $Ven$TT$L$$rom_stack_utility_little_endian_store_16 ; 0x20007124
        0x200053de:    9807        ..      LDR      r0,[sp,#0x1c]
        0x200053e0:    8880        ..      LDRH     r0,[r0,#4]
        0x200053e2:    8a21        !.      LDRH     r1,[r4,#0x10]
        0x200053e4:    9100        ..      STR      r1,[sp,#0]
        0x200053e6:    9904        ..      LDR      r1,[sp,#0x10]
        0x200053e8:    1c89        ..      ADDS     r1,r1,#2
        0x200053ea:    9104        ..      STR      r1,[sp,#0x10]
        0x200053ec:    b289        ..      UXTH     r1,r1
        0x200053ee:    187b        {.      ADDS     r3,r7,r1
        0x200053f0:    2200        ."      MOVS     r2,#0
        0x200053f2:    9203        ..      STR      r2,[sp,#0xc]
        0x200053f4:    4621        !F      MOV      r1,r4
        0x200053f6:    f7fffb4f    ..O.    BL       patch_att_copy_value ; 0x20004a98
        0x200053fa:    4604        .F      MOV      r4,r0
        0x200053fc:    1d68        h.      ADDS     r0,r5,#5
        0x200053fe:    4621        !F      MOV      r1,r4
        0x20005400:    f001fb7e    ..~.    BL       $Ven$TT$L$$mlog_16 ; 0x20006b00
        0x20005404:    9804        ..      LDR      r0,[sp,#0x10]
        0x20005406:    1820         .      ADDS     r0,r4,r0
        0x20005408:    9004        ..      STR      r0,[sp,#0x10]
        0x2000540a:    9c03        ..      LDR      r4,[sp,#0xc]
        0x2000540c:    e787        ..      B        0x2000531e ; patch_handle_read_by_type_request + 158
        0x2000540e:    9904        ..      LDR      r1,[sp,#0x10]
        0x20005410:    b288        ..      UXTH     r0,r1
        0x20005412:    2802        .(      CMP      r0,#2
        0x20005414:    d302        ..      BCC      0x2000541c ; patch_handle_read_by_type_request + 412
        0x20005416:    2009        .       MOVS     r0,#9
        0x20005418:    7038        8p      STRB     r0,[r7,#0]
        0x2000541a:    e017        ..      B        0x2000544c ; patch_handle_read_by_type_request + 460
        0x2000541c:    9903        ..      LDR      r1,[sp,#0xc]
        0x2000541e:    0608        ..      LSLS     r0,r1,#24
        0x20005420:    d006        ..      BEQ      0x20005430 ; patch_handle_read_by_type_request + 432
        0x20005422:    b2cb        ..      UXTB     r3,r1
        0x20005424:    2108        .!      MOVS     r1,#8
        0x20005426:    4638        8F      MOV      r0,r7
        0x20005428:    9a0a        ..      LDR      r2,[sp,#0x28]
        0x2000542a:    f001fe33    ..3.    BL       $Ven$TT$L$$rom_setup_error ; 0x20007094
        0x2000542e:    e00c        ..      B        0x2000544a ; patch_handle_read_by_type_request + 458
        0x20005430:    0430        0.      LSLS     r0,r6,#16
        0x20005432:    d005        ..      BEQ      0x20005440 ; patch_handle_read_by_type_request + 448
        0x20005434:    b2b2        ..      UXTH     r2,r6
        0x20005436:    2108        .!      MOVS     r1,#8
        0x20005438:    4638        8F      MOV      r0,r7
        0x2000543a:    f001fe4f    ..O.    BL       $Ven$TT$L$$rom_setup_error_read_not_permitted ; 0x200070dc
        0x2000543e:    e004        ..      B        0x2000544a ; patch_handle_read_by_type_request + 458
        0x20005440:    2108        .!      MOVS     r1,#8
        0x20005442:    4638        8F      MOV      r0,r7
        0x20005444:    9a0a        ..      LDR      r2,[sp,#0x28]
        0x20005446:    f001fe73    ..s.    BL       $Ven$TT$L$$rom_setup_error_atribute_not_found ; 0x20007130
        0x2000544a:    4601        .F      MOV      r1,r0
        0x2000544c:    1da8        ..      ADDS     r0,r5,#6
        0x2000544e:    b28c        ..      UXTH     r4,r1
        0x20005450:    4621        !F      MOV      r1,r4
        0x20005452:    f001fb55    ..U.    BL       $Ven$TT$L$$mlog_16 ; 0x20006b00
        0x20005456:    9807        ..      LDR      r0,[sp,#0x1c]
        0x20005458:    8880        ..      LDRH     r0,[r0,#4]
        0x2000545a:    4639        9F      MOV      r1,r7
        0x2000545c:    4622        "F      MOV      r2,r4
        0x2000545e:    f001fe1f    ....    BL       $Ven$TT$L$$rom_att_tx_buffer_commit ; 0x200070a0
        0x20005462:    b011        ..      ADD      sp,sp,#0x44
        0x20005464:    bdf0        ..      POP      {r4-r7,pc}
        0x20005466:    46c0        .F      MOV      r8,r8
    $d.4
    __arm_cp.2_0
        0x20005468:    00005117    .Q..    DCD    20759
    $t.5
    patch_handle_read_request
        0x2000546c:    b5f0        ..      PUSH     {r4-r7,lr}
        0x2000546e:    b087        ..      SUB      sp,sp,#0x1c
        0x20005470:    460a        .F      MOV      r2,r1
        0x20005472:    4604        .F      MOV      r4,r0
        0x20005474:    2101        .!      MOVS     r1,#1
        0x20005476:    4610        .F      MOV      r0,r2
        0x20005478:    f001fd70    ..p.    BL       $Ven$TT$L$$rom_stack_utility_little_endian_read_16 ; 0x20006f5c
        0x2000547c:    4606        .F      MOV      r6,r0
        0x2000547e:    a801        ..      ADD      r0,sp,#4
        0x20005480:    4631        1F      MOV      r1,r6
        0x20005482:    f001fe13    ....    BL       $Ven$TT$L$$rom_att_find_handle ; 0x200070ac
        0x20005486:    4607        .F      MOV      r7,r0
        0x20005488:    8820         .      LDRH     r0,[r4,#0]
        0x2000548a:    1d00        ..      ADDS     r0,r0,#4
        0x2000548c:    b280        ..      UXTH     r0,r0
        0x2000548e:    f001fdfb    ....    BL       $Ven$TT$L$$rom_l2cap_get_avail_data_buffer ; 0x20007088
        0x20005492:    2800        .(      CMP      r0,#0
        0x20005494:    d00c        ..      BEQ      0x200054b0 ; patch_handle_read_request + 68
        0x20005496:    4605        .F      MOV      r5,r0
        0x20005498:    2f00        ./      CMP      r7,#0
        0x2000549a:    d00e        ..      BEQ      0x200054ba ; patch_handle_read_request + 78
        0x2000549c:    a801        ..      ADD      r0,sp,#4
        0x2000549e:    88c0        ..      LDRH     r0,[r0,#6]
        0x200054a0:    0780        ..      LSLS     r0,r0,#30
        0x200054a2:    d410        ..      BMI      0x200054c6 ; patch_handle_read_request + 90
        0x200054a4:    210a        .!      MOVS     r1,#0xa
        0x200054a6:    4628        (F      MOV      r0,r5
        0x200054a8:    4632        2F      MOV      r2,r6
        0x200054aa:    f001fe17    ....    BL       $Ven$TT$L$$rom_setup_error_read_not_permitted ; 0x200070dc
        0x200054ae:    e02e        ..      B        0x2000550e ; patch_handle_read_request + 162
        0x200054b0:    481b        .H      LDR      r0,[pc,#108] ; [0x20005520] = 0x511e
        0x200054b2:    f001fb3d    ..=.    BL       $Ven$TT$L$$mlog_0 ; 0x20006b30
        0x200054b6:    b007        ..      ADD      sp,sp,#0x1c
        0x200054b8:    bdf0        ..      POP      {r4-r7,pc}
        0x200054ba:    210a        .!      MOVS     r1,#0xa
        0x200054bc:    4628        (F      MOV      r0,r5
        0x200054be:    4632        2F      MOV      r2,r6
        0x200054c0:    f001fe00    ....    BL       $Ven$TT$L$$rom_setup_error_invalid_handle ; 0x200070c4
        0x200054c4:    e023        #.      B        0x2000550e ; patch_handle_read_request + 162
        0x200054c6:    a901        ..      ADD      r1,sp,#4
        0x200054c8:    4620         F      MOV      r0,r4
        0x200054ca:    f001fe01    ....    BL       $Ven$TT$L$$rom_att_validate_security ; 0x200070d0
        0x200054ce:    2800        .(      CMP      r0,#0
        0x200054d0:    d006        ..      BEQ      0x200054e0 ; patch_handle_read_request + 116
        0x200054d2:    4603        .F      MOV      r3,r0
        0x200054d4:    210a        .!      MOVS     r1,#0xa
        0x200054d6:    4628        (F      MOV      r0,r5
        0x200054d8:    4632        2F      MOV      r2,r6
        0x200054da:    f001fddb    ....    BL       $Ven$TT$L$$rom_setup_error ; 0x20007094
        0x200054de:    e016        ..      B        0x2000550e ; patch_handle_read_request + 162
        0x200054e0:    88a0        ..      LDRH     r0,[r4,#4]
        0x200054e2:    ae01        ..      ADD      r6,sp,#4
        0x200054e4:    4631        1F      MOV      r1,r6
        0x200054e6:    f7fffc5f    .._.    BL       patch_att_update_value_len ; 0x20004da8
        0x200054ea:    8820         .      LDRH     r0,[r4,#0]
        0x200054ec:    8a31        1.      LDRH     r1,[r6,#0x10]
        0x200054ee:    4281        .B      CMP      r1,r0
        0x200054f0:    d302        ..      BCC      0x200054f8 ; patch_handle_read_request + 140
        0x200054f2:    1e40        @.      SUBS     r0,r0,#1
        0x200054f4:    a901        ..      ADD      r1,sp,#4
        0x200054f6:    8208        ..      STRH     r0,[r1,#0x10]
        0x200054f8:    88a0        ..      LDRH     r0,[r4,#4]
        0x200054fa:    a901        ..      ADD      r1,sp,#4
        0x200054fc:    8a0a        ..      LDRH     r2,[r1,#0x10]
        0x200054fe:    9200        ..      STR      r2,[sp,#0]
        0x20005500:    1c6b        k.      ADDS     r3,r5,#1
        0x20005502:    2200        ."      MOVS     r2,#0
        0x20005504:    f7fffac8    ....    BL       patch_att_copy_value ; 0x20004a98
        0x20005508:    210b        .!      MOVS     r1,#0xb
        0x2000550a:    7029        )p      STRB     r1,[r5,#0]
        0x2000550c:    1c40        @.      ADDS     r0,r0,#1
        0x2000550e:    88a1        ..      LDRH     r1,[r4,#4]
        0x20005510:    b282        ..      UXTH     r2,r0
        0x20005512:    4608        .F      MOV      r0,r1
        0x20005514:    4629        )F      MOV      r1,r5
        0x20005516:    f001fdc3    ....    BL       $Ven$TT$L$$rom_att_tx_buffer_commit ; 0x200070a0
        0x2000551a:    b007        ..      ADD      sp,sp,#0x1c
        0x2000551c:    bdf0        ..      POP      {r4-r7,pc}
        0x2000551e:    46c0        .F      MOV      r8,r8
    $d.6
    __arm_cp.3_0
        0x20005520:    0000511e    .Q..    DCD    20766
    $t.15
    patch_handle_value_indication
        0x20005524:    b580        ..      PUSH     {r7,lr}
        0x20005526:    b082        ..      SUB      sp,sp,#8
        0x20005528:    8901        ..      LDRH     r1,[r0,#8]
        0x2000552a:    2900        .)      CMP      r1,#0
        0x2000552c:    d007        ..      BEQ      0x2000553e ; patch_handle_value_indication + 26
        0x2000552e:    2300        .#      MOVS     r3,#0
        0x20005530:    8103        ..      STRH     r3,[r0,#8]
        0x20005532:    8880        ..      LDRH     r0,[r0,#4]
        0x20005534:    9300        ..      STR      r3,[sp,#0]
        0x20005536:    9301        ..      STR      r3,[sp,#4]
        0x20005538:    2204        ."      MOVS     r2,#4
        0x2000553a:    f000f8db    ....    BL       patch_ht32_att_write_callback ; 0x200056f4
        0x2000553e:    b002        ..      ADD      sp,sp,#8
        0x20005540:    bd80        ..      POP      {r7,pc}
    patch_handle_write_command
        0x20005542:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20005544:    b089        ..      SUB      sp,sp,#0x24
        0x20005546:    4615        .F      MOV      r5,r2
        0x20005548:    460c        .F      MOV      r4,r1
        0x2000554a:    4607        .F      MOV      r7,r0
        0x2000554c:    2101        .!      MOVS     r1,#1
        0x2000554e:    4620         F      MOV      r0,r4
        0x20005550:    f001fd04    ....    BL       $Ven$TT$L$$rom_stack_utility_little_endian_read_16 ; 0x20006f5c
        0x20005554:    4606        .F      MOV      r6,r0
        0x20005556:    a803        ..      ADD      r0,sp,#0xc
        0x20005558:    4631        1F      MOV      r1,r6
        0x2000555a:    f001fda7    ....    BL       $Ven$TT$L$$rom_att_find_handle ; 0x200070ac
        0x2000555e:    2800        .(      CMP      r0,#0
        0x20005560:    d00c        ..      BEQ      0x2000557c ; patch_handle_write_command + 58
        0x20005562:    2041        A       MOVS     r0,#0x41
        0x20005564:    0080        ..      LSLS     r0,r0,#2
        0x20005566:    a903        ..      ADD      r1,sp,#0xc
        0x20005568:    88c9        ..      LDRH     r1,[r1,#6]
        0x2000556a:    4001        .@      ANDS     r1,r1,r0
        0x2000556c:    4281        .B      CMP      r1,r0
        0x2000556e:    d105        ..      BNE      0x2000557c ; patch_handle_write_command + 58
        0x20005570:    a903        ..      ADD      r1,sp,#0xc
        0x20005572:    4638        8F      MOV      r0,r7
        0x20005574:    f001fdac    ....    BL       $Ven$TT$L$$rom_att_validate_security ; 0x200070d0
        0x20005578:    2800        .(      CMP      r0,#0
        0x2000557a:    d001        ..      BEQ      0x20005580 ; patch_handle_write_command + 62
        0x2000557c:    b009        ..      ADD      sp,sp,#0x24
        0x2000557e:    bdf0        ..      POP      {r4-r7,pc}
        0x20005580:    88b8        ..      LDRH     r0,[r7,#4]
        0x20005582:    1ee9        ..      SUBS     r1,r5,#3
        0x20005584:    b289        ..      UXTH     r1,r1
        0x20005586:    1ce2        ..      ADDS     r2,r4,#3
        0x20005588:    9200        ..      STR      r2,[sp,#0]
        0x2000558a:    9101        ..      STR      r1,[sp,#4]
        0x2000558c:    2200        ."      MOVS     r2,#0
        0x2000558e:    4631        1F      MOV      r1,r6
        0x20005590:    4613        .F      MOV      r3,r2
        0x20005592:    f000f8af    ....    BL       patch_ht32_att_write_callback ; 0x200056f4
        0x20005596:    b009        ..      ADD      sp,sp,#0x24
        0x20005598:    bdf0        ..      POP      {r4-r7,pc}
        0x2000559a:    0000        ..      MOVS     r0,r0
    patch_handle_write_request
        0x2000559c:    b5f0        ..      PUSH     {r4-r7,lr}
        0x2000559e:    b08b        ..      SUB      sp,sp,#0x2c
        0x200055a0:    9203        ..      STR      r2,[sp,#0xc]
        0x200055a2:    460c        .F      MOV      r4,r1
        0x200055a4:    4607        .F      MOV      r7,r0
        0x200055a6:    2601        .&      MOVS     r6,#1
        0x200055a8:    4608        .F      MOV      r0,r1
        0x200055aa:    4631        1F      MOV      r1,r6
        0x200055ac:    f001fcd6    ....    BL       $Ven$TT$L$$rom_stack_utility_little_endian_read_16 ; 0x20006f5c
        0x200055b0:    4601        .F      MOV      r1,r0
        0x200055b2:    a805        ..      ADD      r0,sp,#0x14
        0x200055b4:    9104        ..      STR      r1,[sp,#0x10]
        0x200055b6:    f001fd79    ..y.    BL       $Ven$TT$L$$rom_att_find_handle ; 0x200070ac
        0x200055ba:    4605        .F      MOV      r5,r0
        0x200055bc:    2010        .       MOVS     r0,#0x10
        0x200055be:    f001fd63    ..c.    BL       $Ven$TT$L$$rom_l2cap_get_avail_data_buffer ; 0x20007088
        0x200055c2:    2800        .(      CMP      r0,#0
        0x200055c4:    d00c        ..      BEQ      0x200055e0 ; patch_handle_write_request + 68
        0x200055c6:    2d00        .-      CMP      r5,#0
        0x200055c8:    d00f        ..      BEQ      0x200055ea ; patch_handle_write_request + 78
        0x200055ca:    a905        ..      ADD      r1,sp,#0x14
        0x200055cc:    88ca        ..      LDRH     r2,[r1,#6]
        0x200055ce:    0711        ..      LSLS     r1,r2,#28
        0x200055d0:    463d        =F      MOV      r5,r7
        0x200055d2:    d413        ..      BMI      0x200055fc ; patch_handle_write_request + 96
        0x200055d4:    2112        .!      MOVS     r1,#0x12
        0x200055d6:    4604        .F      MOV      r4,r0
        0x200055d8:    9a04        ..      LDR      r2,[sp,#0x10]
        0x200055da:    f001fd6d    ..m.    BL       $Ven$TT$L$$rom_setup_error_write_not_permitted ; 0x200070b8
        0x200055de:    e01a        ..      B        0x20005616 ; patch_handle_write_request + 122
        0x200055e0:    4827        'H      LDR      r0,[pc,#156] ; [0x20005680] = 0x5121
        0x200055e2:    f001faa5    ....    BL       $Ven$TT$L$$mlog_0 ; 0x20006b30
        0x200055e6:    b00b        ..      ADD      sp,sp,#0x2c
        0x200055e8:    bdf0        ..      POP      {r4-r7,pc}
        0x200055ea:    2112        .!      MOVS     r1,#0x12
        0x200055ec:    4604        .F      MOV      r4,r0
        0x200055ee:    9a04        ..      LDR      r2,[sp,#0x10]
        0x200055f0:    f001fd68    ..h.    BL       $Ven$TT$L$$rom_setup_error_invalid_handle ; 0x200070c4
        0x200055f4:    4621        !F      MOV      r1,r4
        0x200055f6:    4606        .F      MOV      r6,r0
        0x200055f8:    463d        =F      MOV      r5,r7
        0x200055fa:    e00e        ..      B        0x2000561a ; patch_handle_write_request + 126
        0x200055fc:    a905        ..      ADD      r1,sp,#0x14
        0x200055fe:    05d2        ..      LSLS     r2,r2,#23
        0x20005600:    d411        ..      BMI      0x20005626 ; patch_handle_write_request + 138
        0x20005602:    8a09        ..      LDRH     r1,[r1,#0x10]
        0x20005604:    1cc9        ..      ADDS     r1,r1,#3
        0x20005606:    9b03        ..      LDR      r3,[sp,#0xc]
        0x20005608:    4299        .B      CMP      r1,r3
        0x2000560a:    d20c        ..      BCS      0x20005626 ; patch_handle_write_request + 138
        0x2000560c:    2112        .!      MOVS     r1,#0x12
        0x2000560e:    4604        .F      MOV      r4,r0
        0x20005610:    9a04        ..      LDR      r2,[sp,#0x10]
        0x20005612:    f001fd93    ....    BL       $Ven$TT$L$$rom_setup_error_invalid_value_length ; 0x2000713c
        0x20005616:    4621        !F      MOV      r1,r4
        0x20005618:    4606        .F      MOV      r6,r0
        0x2000561a:    88a8        ..      LDRH     r0,[r5,#4]
        0x2000561c:    4632        2F      MOV      r2,r6
        0x2000561e:    f001fd3f    ..?.    BL       $Ven$TT$L$$rom_att_tx_buffer_commit ; 0x200070a0
        0x20005622:    b00b        ..      ADD      sp,sp,#0x2c
        0x20005624:    bdf0        ..      POP      {r4-r7,pc}
        0x20005626:    2a00        .*      CMP      r2,#0
        0x20005628:    d5d4        ..      BPL      0x200055d4 ; patch_handle_write_request + 56
        0x2000562a:    4607        .F      MOV      r7,r0
        0x2000562c:    a905        ..      ADD      r1,sp,#0x14
        0x2000562e:    4628        (F      MOV      r0,r5
        0x20005630:    f001fd4e    ..N.    BL       $Ven$TT$L$$rom_att_validate_security ; 0x200070d0
        0x20005634:    2800        .(      CMP      r0,#0
        0x20005636:    d005        ..      BEQ      0x20005644 ; patch_handle_write_request + 168
        0x20005638:    4603        .F      MOV      r3,r0
        0x2000563a:    2112        .!      MOVS     r1,#0x12
        0x2000563c:    463c        <F      MOV      r4,r7
        0x2000563e:    4638        8F      MOV      r0,r7
        0x20005640:    9a04        ..      LDR      r2,[sp,#0x10]
        0x20005642:    e013        ..      B        0x2000566c ; patch_handle_write_request + 208
        0x20005644:    88a8        ..      LDRH     r0,[r5,#4]
        0x20005646:    9903        ..      LDR      r1,[sp,#0xc]
        0x20005648:    1ec9        ..      SUBS     r1,r1,#3
        0x2000564a:    b289        ..      UXTH     r1,r1
        0x2000564c:    1ce2        ..      ADDS     r2,r4,#3
        0x2000564e:    9200        ..      STR      r2,[sp,#0]
        0x20005650:    9101        ..      STR      r1,[sp,#4]
        0x20005652:    2200        ."      MOVS     r2,#0
        0x20005654:    9c04        ..      LDR      r4,[sp,#0x10]
        0x20005656:    4621        !F      MOV      r1,r4
        0x20005658:    4613        .F      MOV      r3,r2
        0x2000565a:    f000f84b    ..K.    BL       patch_ht32_att_write_callback ; 0x200056f4
        0x2000565e:    0601        ..      LSLS     r1,r0,#24
        0x20005660:    d009        ..      BEQ      0x20005676 ; patch_handle_write_request + 218
        0x20005662:    b2c3        ..      UXTB     r3,r0
        0x20005664:    2112        .!      MOVS     r1,#0x12
        0x20005666:    4622        "F      MOV      r2,r4
        0x20005668:    463c        <F      MOV      r4,r7
        0x2000566a:    4638        8F      MOV      r0,r7
        0x2000566c:    f001fd12    ....    BL       $Ven$TT$L$$rom_setup_error ; 0x20007094
        0x20005670:    4639        9F      MOV      r1,r7
        0x20005672:    4606        .F      MOV      r6,r0
        0x20005674:    e7d1        ..      B        0x2000561a ; patch_handle_write_request + 126
        0x20005676:    2013        .       MOVS     r0,#0x13
        0x20005678:    4639        9F      MOV      r1,r7
        0x2000567a:    7038        8p      STRB     r0,[r7,#0]
        0x2000567c:    e7cd        ..      B        0x2000561a ; patch_handle_write_request + 126
        0x2000567e:    46c0        .F      MOV      r8,r8
    $d.12
    __arm_cp.6_0
        0x20005680:    00005121    !Q..    DCD    20769
    $t.2
    patch_ht32_att_get_attribute_length_callback
        0x20005684:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20005686:    460c        .F      MOV      r4,r1
        0x20005688:    4605        .F      MOV      r5,r0
        0x2000568a:    4608        .F      MOV      r0,r1
        0x2000568c:    f7fffbd2    ....    BL       patch_gatt_find_server ; 0x20004e34
        0x20005690:    4601        .F      MOV      r1,r0
        0x20005692:    4829        )H      LDR      r0,[pc,#164] ; [0x20005738] = 0x2000a558
        0x20005694:    8802        ..      LDRH     r2,[r0,#0]
        0x20005696:    2000        .       MOVS     r0,#0
        0x20005698:    4291        .B      CMP      r1,r2
        0x2000569a:    d00a        ..      BEQ      0x200056b2 ; patch_ht32_att_get_attribute_length_callback + 46
        0x2000569c:    00c9        ..      LSLS     r1,r1,#3
        0x2000569e:    4a27        'J      LDR      r2,[pc,#156] ; [0x2000573c] = 0x2000a55c
        0x200056a0:    6812        .h      LDR      r2,[r2,#0]
        0x200056a2:    1851        Q.      ADDS     r1,r2,r1
        0x200056a4:    6849        Ih      LDR      r1,[r1,#4]
        0x200056a6:    680a        .h      LDR      r2,[r1,#0]
        0x200056a8:    2a00        .*      CMP      r2,#0
        0x200056aa:    d002        ..      BEQ      0x200056b2 ; patch_ht32_att_get_attribute_length_callback + 46
        0x200056ac:    4628        (F      MOV      r0,r5
        0x200056ae:    4621        !F      MOV      r1,r4
        0x200056b0:    4790        .G      BLX      r2
        0x200056b2:    bdb0        ..      POP      {r4,r5,r7,pc}
    patch_ht32_att_read_callback
        0x200056b4:    b5f0        ..      PUSH     {r4-r7,lr}
        0x200056b6:    b081        ..      SUB      sp,sp,#4
        0x200056b8:    461c        .F      MOV      r4,r3
        0x200056ba:    4615        .F      MOV      r5,r2
        0x200056bc:    460e        .F      MOV      r6,r1
        0x200056be:    4607        .F      MOV      r7,r0
        0x200056c0:    4608        .F      MOV      r0,r1
        0x200056c2:    f7fffbb7    ....    BL       patch_gatt_find_server ; 0x20004e34
        0x200056c6:    4601        .F      MOV      r1,r0
        0x200056c8:    481b        .H      LDR      r0,[pc,#108] ; [0x20005738] = 0x2000a558
        0x200056ca:    8802        ..      LDRH     r2,[r0,#0]
        0x200056cc:    2000        .       MOVS     r0,#0
        0x200056ce:    4291        .B      CMP      r1,r2
        0x200056d0:    d00e        ..      BEQ      0x200056f0 ; patch_ht32_att_read_callback + 60
        0x200056d2:    4623        #F      MOV      r3,r4
        0x200056d4:    00c9        ..      LSLS     r1,r1,#3
        0x200056d6:    4a19        .J      LDR      r2,[pc,#100] ; [0x2000573c] = 0x2000a55c
        0x200056d8:    6812        .h      LDR      r2,[r2,#0]
        0x200056da:    1851        Q.      ADDS     r1,r2,r1
        0x200056dc:    6849        Ih      LDR      r1,[r1,#4]
        0x200056de:    684c        Lh      LDR      r4,[r1,#4]
        0x200056e0:    2c00        .,      CMP      r4,#0
        0x200056e2:    d005        ..      BEQ      0x200056f0 ; patch_ht32_att_read_callback + 60
        0x200056e4:    9806        ..      LDR      r0,[sp,#0x18]
        0x200056e6:    9000        ..      STR      r0,[sp,#0]
        0x200056e8:    4638        8F      MOV      r0,r7
        0x200056ea:    4631        1F      MOV      r1,r6
        0x200056ec:    462a        *F      MOV      r2,r5
        0x200056ee:    47a0        .G      BLX      r4
        0x200056f0:    b001        ..      ADD      sp,sp,#4
        0x200056f2:    bdf0        ..      POP      {r4-r7,pc}
    patch_ht32_att_write_callback
        0x200056f4:    b5f0        ..      PUSH     {r4-r7,lr}
        0x200056f6:    b083        ..      SUB      sp,sp,#0xc
        0x200056f8:    461c        .F      MOV      r4,r3
        0x200056fa:    4615        .F      MOV      r5,r2
        0x200056fc:    460e        .F      MOV      r6,r1
        0x200056fe:    4607        .F      MOV      r7,r0
        0x20005700:    4608        .F      MOV      r0,r1
        0x20005702:    f7fffb97    ....    BL       patch_gatt_find_server ; 0x20004e34
        0x20005706:    4601        .F      MOV      r1,r0
        0x20005708:    480b        .H      LDR      r0,[pc,#44] ; [0x20005738] = 0x2000a558
        0x2000570a:    8802        ..      LDRH     r2,[r0,#0]
        0x2000570c:    2000        .       MOVS     r0,#0
        0x2000570e:    4291        .B      CMP      r1,r2
        0x20005710:    d010        ..      BEQ      0x20005734 ; patch_ht32_att_write_callback + 64
        0x20005712:    4623        #F      MOV      r3,r4
        0x20005714:    00c9        ..      LSLS     r1,r1,#3
        0x20005716:    4a09        .J      LDR      r2,[pc,#36] ; [0x2000573c] = 0x2000a55c
        0x20005718:    6812        .h      LDR      r2,[r2,#0]
        0x2000571a:    1851        Q.      ADDS     r1,r2,r1
        0x2000571c:    6849        Ih      LDR      r1,[r1,#4]
        0x2000571e:    688c        .h      LDR      r4,[r1,#8]
        0x20005720:    2c00        .,      CMP      r4,#0
        0x20005722:    d007        ..      BEQ      0x20005734 ; patch_ht32_att_write_callback + 64
        0x20005724:    9809        ..      LDR      r0,[sp,#0x24]
        0x20005726:    9908        ..      LDR      r1,[sp,#0x20]
        0x20005728:    9100        ..      STR      r1,[sp,#0]
        0x2000572a:    9001        ..      STR      r0,[sp,#4]
        0x2000572c:    4638        8F      MOV      r0,r7
        0x2000572e:    4631        1F      MOV      r1,r6
        0x20005730:    462a        *F      MOV      r2,r5
        0x20005732:    47a0        .G      BLX      r4
        0x20005734:    b003        ..      ADD      sp,sp,#0xc
        0x20005736:    bdf0        ..      POP      {r4-r7,pc}
    $d.7
    __arm_cp.3_0
        0x20005738:    2000a558    X..     DCD    536913240
    __arm_cp.3_1
        0x2000573c:    2000a55c    \..     DCD    536913244
    $t.1
    patch_llc_address
        0x20005740:    4808        .H      LDR      r0,[pc,#32] ; [0x20005764] = 0x20000b50
        0x20005742:    4901        .I      LDR      r1,[pc,#4] ; [0x20005748] = 0x20005b71
        0x20005744:    64c1        .d      STR      r1,[r0,#0x4c]
        0x20005746:    4770        pG      BX       lr
    $d.2
    __arm_cp.1_1
        0x20005748:    20005b71    q[.     DCD    536894321
    $t.3
    patch_llc_ctrl_procedure
        0x2000574c:    2009        .       MOVS     r0,#9
        0x2000574e:    0140        @.      LSLS     r0,r0,#5
        0x20005750:    4904        .I      LDR      r1,[pc,#16] ; [0x20005764] = 0x20000b50
        0x20005752:    4a05        .J      LDR      r2,[pc,#20] ; [0x20005768] = 0x200063ad
        0x20005754:    500a        .P      STR      r2,[r1,r0]
        0x20005756:    48e2        .H      LDR      r0,[pc,#904] ; [0x20005ae0] = 0x2000a560
        0x20005758:    2100        .!      MOVS     r1,#0
        0x2000575a:    4a04        .J      LDR      r2,[pc,#16] ; [0x2000576c] = 0x49ed
        0x2000575c:    6002        .`      STR      r2,[r0,#0]
        0x2000575e:    6041        A`      STR      r1,[r0,#4]
        0x20005760:    4770        pG      BX       lr
        0x20005762:    46c0        .F      MOV      r8,r8
    $d.4
    __arm_cp.1_0
        0x20005764:    20000b50    P..     DCD    536873808
    __arm_cp.1_1
        0x20005768:    200063ad    .c.     DCD    536896429
    __arm_cp.1_3
        0x2000576c:    000049ed    .I..    DCD    18925
    $t.2
    patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu
        0x20005770:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20005772:    b087        ..      SUB      sp,sp,#0x1c
        0x20005774:    4605        .F      MOV      r5,r0
        0x20005776:    48d8        .H      LDR      r0,[pc,#864] ; [0x20005ad8] = 0x449
        0x20005778:    182e        ..      ADDS     r6,r5,r0
        0x2000577a:    2045        E       MOVS     r0,#0x45
        0x2000577c:    0100        ..      LSLS     r0,r0,#4
        0x2000577e:    1828        (.      ADDS     r0,r5,r0
        0x20005780:    9002        ..      STR      r0,[sp,#8]
        0x20005782:    48f8        .H      LDR      r0,[pc,#992] ; [0x20005b64] = 0x351
        0x20005784:    5c2b        +\      LDRB     r3,[r5,r0]
        0x20005786:    9103        ..      STR      r1,[sp,#0xc]
        0x20005788:    7b49        I{      LDRB     r1,[r1,#0xd]
        0x2000578a:    6897        .h      LDR      r7,[r2,#8]
        0x2000578c:    68d0        .h      LDR      r0,[r2,#0xc]
        0x2000578e:    462c        ,F      MOV      r4,r5
        0x20005790:    3450        P4      ADDS     r4,r4,#0x50
        0x20005792:    7802        .x      LDRB     r2,[r0,#0]
        0x20005794:    2b00        .+      CMP      r3,#0
        0x20005796:    d045        E.      BEQ      0x20005824 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 180
        0x20005798:    2900        .)      CMP      r1,#0
        0x2000579a:    d065        e.      BEQ      0x20005868 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 248
        0x2000579c:    2a09        .*      CMP      r2,#9
        0x2000579e:    d000        ..      BEQ      0x200057a2 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 50
        0x200057a0:    e0b1        ..      B        0x20005906 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 406
        0x200057a2:    21ff        .!      MOVS     r1,#0xff
        0x200057a4:    0209        ..      LSLS     r1,r1,#8
        0x200057a6:    400f        .@      ANDS     r7,r7,r1
        0x200057a8:    2109        .!      MOVS     r1,#9
        0x200057aa:    0209        ..      LSLS     r1,r1,#8
        0x200057ac:    428f        .B      CMP      r7,r1
        0x200057ae:    d000        ..      BEQ      0x200057b2 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 66
        0x200057b0:    e0fc        ..      B        0x200059ac ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 572
        0x200057b2:    7a02        .z      LDRB     r2,[r0,#8]
        0x200057b4:    a904        ..      ADD      r1,sp,#0x10
        0x200057b6:    720a        .r      STRB     r2,[r1,#8]
        0x200057b8:    7902        .y      LDRB     r2,[r0,#4]
        0x200057ba:    7943        Cy      LDRB     r3,[r0,#5]
        0x200057bc:    021b        ..      LSLS     r3,r3,#8
        0x200057be:    189a        ..      ADDS     r2,r3,r2
        0x200057c0:    7983        .y      LDRB     r3,[r0,#6]
        0x200057c2:    79c5        .y      LDRB     r5,[r0,#7]
        0x200057c4:    022d        -.      LSLS     r5,r5,#8
        0x200057c6:    18eb        ..      ADDS     r3,r5,r3
        0x200057c8:    041b        ..      LSLS     r3,r3,#16
        0x200057ca:    189a        ..      ADDS     r2,r3,r2
        0x200057cc:    9205        ..      STR      r2,[sp,#0x14]
        0x200057ce:    7802        .x      LDRB     r2,[r0,#0]
        0x200057d0:    7843        Cx      LDRB     r3,[r0,#1]
        0x200057d2:    021b        ..      LSLS     r3,r3,#8
        0x200057d4:    189a        ..      ADDS     r2,r3,r2
        0x200057d6:    7883        .x      LDRB     r3,[r0,#2]
        0x200057d8:    78c0        .x      LDRB     r0,[r0,#3]
        0x200057da:    0200        ..      LSLS     r0,r0,#8
        0x200057dc:    18c0        ..      ADDS     r0,r0,r3
        0x200057de:    0400        ..      LSLS     r0,r0,#16
        0x200057e0:    1880        ..      ADDS     r0,r0,r2
        0x200057e2:    9004        ..      STR      r0,[sp,#0x10]
        0x200057e4:    1c48        H.      ADDS     r0,r1,#1
        0x200057e6:    f001fcaf    ....    BL       $Ven$TT$L$$rom_llc_tool_read_little_endian_uint64 ; 0x20007148
        0x200057ea:    4607        .F      MOV      r7,r0
        0x200057ec:    460d        .F      MOV      r5,r1
        0x200057ee:    2001        .       MOVS     r0,#1
        0x200057f0:    7030        0p      STRB     r0,[r6,#0]
        0x200057f2:    2600        .&      MOVS     r6,#0
        0x200057f4:    9a03        ..      LDR      r2,[sp,#0xc]
        0x200057f6:    7296        .r      STRB     r6,[r2,#0xa]
        0x200057f8:    2010        .       MOVS     r0,#0x10
        0x200057fa:    4381        .C      BICS     r1,r1,r0
        0x200057fc:    48b9        .H      LDR      r0,[pc,#740] ; [0x20005ae4] = 0xf787cf00
        0x200057fe:    302f        /0      ADDS     r0,r0,#0x2f
        0x20005800:    4038        8@      ANDS     r0,r0,r7
        0x20005802:    9b02        ..      LDR      r3,[sp,#8]
        0x20005804:    c303        ..      STM      r3!,{r0,r1}
        0x20005806:    7b51        Q{      LDRB     r1,[r2,#0xd]
        0x20005808:    48b4        .H      LDR      r0,[pc,#720] ; [0x20005adc] = 0x36ce
        0x2000580a:    1c40        @.      ADDS     r0,r0,#1
        0x2000580c:    f001f978    ..x.    BL       $Ven$TT$L$$mlog_16 ; 0x20006b00
        0x20005810:    4ab6        .J      LDR      r2,[pc,#728] ; [0x20005aec] = 0xf787cf2f
        0x20005812:    403a        :@      ANDS     r2,r2,r7
        0x20005814:    2051        Q       MOVS     r0,#0x51
        0x20005816:    4385        .C      BICS     r5,r5,r0
        0x20005818:    8821        !.      LDRH     r1,[r4,#0]
        0x2000581a:    4630        0F      MOV      r0,r6
        0x2000581c:    462b        +F      MOV      r3,r5
        0x2000581e:    f001fc99    ....    BL       $Ven$TT$L$$rom_controller_event_HCI_LE_Read_Remote_Features_Complete ; 0x20007154
        0x20005822:    e155        U.      B        0x20005ad0 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x20005824:    2900        .)      CMP      r1,#0
        0x20005826:    d070        p.      BEQ      0x2000590a ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 410
        0x20005828:    2a09        .*      CMP      r2,#9
        0x2000582a:    d100        ..      BNE      0x2000582e ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 190
        0x2000582c:    e0ca        ..      B        0x200059c4 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 596
        0x2000582e:    2a07        .*      CMP      r2,#7
        0x20005830:    d000        ..      BEQ      0x20005834 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 196
        0x20005832:    e108        ..      B        0x20005a46 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 726
        0x20005834:    23ff        .#      MOVS     r3,#0xff
        0x20005836:    021b        ..      LSLS     r3,r3,#8
        0x20005838:    401f        .@      ANDS     r7,r7,r3
        0x2000583a:    2601        .&      MOVS     r6,#1
        0x2000583c:    0273        s.      LSLS     r3,r6,#9
        0x2000583e:    429f        .B      CMP      r7,r3
        0x20005840:    d000        ..      BEQ      0x20005844 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 212
        0x20005842:    e115        ..      B        0x20005a70 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 768
        0x20005844:    7840        @x      LDRB     r0,[r0,#1]
        0x20005846:    280e        .(      CMP      r0,#0xe
        0x20005848:    d000        ..      BEQ      0x2000584c ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 220
        0x2000584a:    e141        A.      B        0x20005ad0 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x2000584c:    2600        .&      MOVS     r6,#0
        0x2000584e:    9803        ..      LDR      r0,[sp,#0xc]
        0x20005850:    7286        .r      STRB     r6,[r0,#0xa]
        0x20005852:    48a2        .H      LDR      r0,[pc,#648] ; [0x20005adc] = 0x36ce
        0x20005854:    1d40        @.      ADDS     r0,r0,#5
        0x20005856:    f001f953    ..S.    BL       $Ven$TT$L$$mlog_16 ; 0x20006b00
        0x2000585a:    8821        !.      LDRH     r1,[r4,#0]
        0x2000585c:    201a        .       MOVS     r0,#0x1a
        0x2000585e:    4632        2F      MOV      r2,r6
        0x20005860:    4633        3F      MOV      r3,r6
        0x20005862:    f001fc77    ..w.    BL       $Ven$TT$L$$rom_controller_event_HCI_LE_Read_Remote_Features_Complete ; 0x20007154
        0x20005866:    e133        3.      B        0x20005ad0 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x20005868:    2a0e        .*      CMP      r2,#0xe
        0x2000586a:    d000        ..      BEQ      0x2000586e ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 254
        0x2000586c:    e09c        ..      B        0x200059a8 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 568
        0x2000586e:    21ff        .!      MOVS     r1,#0xff
        0x20005870:    0209        ..      LSLS     r1,r1,#8
        0x20005872:    4039        9@      ANDS     r1,r1,r7
        0x20005874:    2309        .#      MOVS     r3,#9
        0x20005876:    021b        ..      LSLS     r3,r3,#8
        0x20005878:    4299        .B      CMP      r1,r3
        0x2000587a:    d000        ..      BEQ      0x2000587e ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 270
        0x2000587c:    e0e7        ..      B        0x20005a4e ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 734
        0x2000587e:    7a02        .z      LDRB     r2,[r0,#8]
        0x20005880:    a904        ..      ADD      r1,sp,#0x10
        0x20005882:    720a        .r      STRB     r2,[r1,#8]
        0x20005884:    7902        .y      LDRB     r2,[r0,#4]
        0x20005886:    7943        Cy      LDRB     r3,[r0,#5]
        0x20005888:    021b        ..      LSLS     r3,r3,#8
        0x2000588a:    189a        ..      ADDS     r2,r3,r2
        0x2000588c:    7983        .y      LDRB     r3,[r0,#6]
        0x2000588e:    79c4        .y      LDRB     r4,[r0,#7]
        0x20005890:    0224        $.      LSLS     r4,r4,#8
        0x20005892:    18e3        ..      ADDS     r3,r4,r3
        0x20005894:    041b        ..      LSLS     r3,r3,#16
        0x20005896:    189a        ..      ADDS     r2,r3,r2
        0x20005898:    9205        ..      STR      r2,[sp,#0x14]
        0x2000589a:    7802        .x      LDRB     r2,[r0,#0]
        0x2000589c:    7843        Cx      LDRB     r3,[r0,#1]
        0x2000589e:    021b        ..      LSLS     r3,r3,#8
        0x200058a0:    189a        ..      ADDS     r2,r3,r2
        0x200058a2:    7883        .x      LDRB     r3,[r0,#2]
        0x200058a4:    78c0        .x      LDRB     r0,[r0,#3]
        0x200058a6:    0200        ..      LSLS     r0,r0,#8
        0x200058a8:    18c0        ..      ADDS     r0,r0,r3
        0x200058aa:    0400        ..      LSLS     r0,r0,#16
        0x200058ac:    1880        ..      ADDS     r0,r0,r2
        0x200058ae:    9004        ..      STR      r0,[sp,#0x10]
        0x200058b0:    1c48        H.      ADDS     r0,r1,#1
        0x200058b2:    f001fc49    ..I.    BL       $Ven$TT$L$$rom_llc_tool_read_little_endian_uint64 ; 0x20007148
        0x200058b6:    9101        ..      STR      r1,[sp,#4]
        0x200058b8:    4a89        .J      LDR      r2,[pc,#548] ; [0x20005ae0] = 0x2000a560
        0x200058ba:    ca0a        ..      LDM      r2!,{r1,r3}
        0x200058bc:    4a89        .J      LDR      r2,[pc,#548] ; [0x20005ae4] = 0xf787cf00
        0x200058be:    9000        ..      STR      r0,[sp,#0]
        0x200058c0:    4008        .@      ANDS     r0,r0,r1
        0x200058c2:    4011        .@      ANDS     r1,r1,r2
        0x200058c4:    242f        /$      MOVS     r4,#0x2f
        0x200058c6:    4004        .@      ANDS     r4,r4,r0
        0x200058c8:    190a        ..      ADDS     r2,r1,r4
        0x200058ca:    2710        .'      MOVS     r7,#0x10
        0x200058cc:    43bb        .C      BICS     r3,r3,r7
        0x200058ce:    4628        (F      MOV      r0,r5
        0x200058d0:    f001fc46    ..F.    BL       $Ven$TT$L$$rom_llc_feature_exchange_procedure_alloc_rsp_pdu ; 0x20007160
        0x200058d4:    2800        .(      CMP      r0,#0
        0x200058d6:    d100        ..      BNE      0x200058da ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 362
        0x200058d8:    e0f7        ..      B        0x20005aca ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 858
        0x200058da:    4602        .F      MOV      r2,r0
        0x200058dc:    43f8        .C      MVNS     r0,r7
        0x200058de:    2101        .!      MOVS     r1,#1
        0x200058e0:    7031        1p      STRB     r1,[r6,#0]
        0x200058e2:    4981        .I      LDR      r1,[pc,#516] ; [0x20005ae8] = 0x280a9
        0x200058e4:    6191        .a      STR      r1,[r2,#0x18]
        0x200058e6:    9903        ..      LDR      r1,[sp,#0xc]
        0x200058e8:    61d1        .a      STR      r1,[r2,#0x1c]
        0x200058ea:    9b01        ..      LDR      r3,[sp,#4]
        0x200058ec:    4003        .@      ANDS     r3,r3,r0
        0x200058ee:    9800        ..      LDR      r0,[sp,#0]
        0x200058f0:    4e7c        |N      LDR      r6,[pc,#496] ; [0x20005ae4] = 0xf787cf00
        0x200058f2:    4030        0@      ANDS     r0,r0,r6
        0x200058f4:    4304        .C      ORRS     r4,r4,r0
        0x200058f6:    9802        ..      LDR      r0,[sp,#8]
        0x200058f8:    6004        .`      STR      r4,[r0,#0]
        0x200058fa:    6043        C`      STR      r3,[r0,#4]
        0x200058fc:    4628        (F      MOV      r0,r5
        0x200058fe:    f001fc35    ..5.    BL       $Ven$TT$L$$rom_llc_ctrl_procedure_send_ctrl_pdu ; 0x2000716c
        0x20005902:    2600        .&      MOVS     r6,#0
        0x20005904:    e0e4        ..      B        0x20005ad0 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x20005906:    2601        .&      MOVS     r6,#1
        0x20005908:    e0e2        ..      B        0x20005ad0 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x2000590a:    2a08        .*      CMP      r2,#8
        0x2000590c:    d000        ..      BEQ      0x20005910 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 416
        0x2000590e:    e09c        ..      B        0x20005a4a ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 730
        0x20005910:    21ff        .!      MOVS     r1,#0xff
        0x20005912:    0209        ..      LSLS     r1,r1,#8
        0x20005914:    4039        9@      ANDS     r1,r1,r7
        0x20005916:    2309        .#      MOVS     r3,#9
        0x20005918:    021b        ..      LSLS     r3,r3,#8
        0x2000591a:    4299        .B      CMP      r1,r3
        0x2000591c:    d000        ..      BEQ      0x20005920 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 432
        0x2000591e:    e0c1        ..      B        0x20005aa4 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 820
        0x20005920:    7a02        .z      LDRB     r2,[r0,#8]
        0x20005922:    a904        ..      ADD      r1,sp,#0x10
        0x20005924:    720a        .r      STRB     r2,[r1,#8]
        0x20005926:    7902        .y      LDRB     r2,[r0,#4]
        0x20005928:    7943        Cy      LDRB     r3,[r0,#5]
        0x2000592a:    021b        ..      LSLS     r3,r3,#8
        0x2000592c:    189a        ..      ADDS     r2,r3,r2
        0x2000592e:    7983        .y      LDRB     r3,[r0,#6]
        0x20005930:    79c4        .y      LDRB     r4,[r0,#7]
        0x20005932:    0224        $.      LSLS     r4,r4,#8
        0x20005934:    18e3        ..      ADDS     r3,r4,r3
        0x20005936:    041b        ..      LSLS     r3,r3,#16
        0x20005938:    189a        ..      ADDS     r2,r3,r2
        0x2000593a:    9205        ..      STR      r2,[sp,#0x14]
        0x2000593c:    7802        .x      LDRB     r2,[r0,#0]
        0x2000593e:    7843        Cx      LDRB     r3,[r0,#1]
        0x20005940:    021b        ..      LSLS     r3,r3,#8
        0x20005942:    189a        ..      ADDS     r2,r3,r2
        0x20005944:    7883        .x      LDRB     r3,[r0,#2]
        0x20005946:    78c0        .x      LDRB     r0,[r0,#3]
        0x20005948:    0200        ..      LSLS     r0,r0,#8
        0x2000594a:    18c0        ..      ADDS     r0,r0,r3
        0x2000594c:    0400        ..      LSLS     r0,r0,#16
        0x2000594e:    1880        ..      ADDS     r0,r0,r2
        0x20005950:    9004        ..      STR      r0,[sp,#0x10]
        0x20005952:    1c48        H.      ADDS     r0,r1,#1
        0x20005954:    f001fbf8    ....    BL       $Ven$TT$L$$rom_llc_tool_read_little_endian_uint64 ; 0x20007148
        0x20005958:    9101        ..      STR      r1,[sp,#4]
        0x2000595a:    4a61        aJ      LDR      r2,[pc,#388] ; [0x20005ae0] = 0x2000a560
        0x2000595c:    ca0a        ..      LDM      r2!,{r1,r3}
        0x2000595e:    4a61        aJ      LDR      r2,[pc,#388] ; [0x20005ae4] = 0xf787cf00
        0x20005960:    9000        ..      STR      r0,[sp,#0]
        0x20005962:    4008        .@      ANDS     r0,r0,r1
        0x20005964:    4011        .@      ANDS     r1,r1,r2
        0x20005966:    242f        /$      MOVS     r4,#0x2f
        0x20005968:    4004        .@      ANDS     r4,r4,r0
        0x2000596a:    190a        ..      ADDS     r2,r1,r4
        0x2000596c:    2710        .'      MOVS     r7,#0x10
        0x2000596e:    43bb        .C      BICS     r3,r3,r7
        0x20005970:    4628        (F      MOV      r0,r5
        0x20005972:    f001fbf5    ....    BL       $Ven$TT$L$$rom_llc_feature_exchange_procedure_alloc_rsp_pdu ; 0x20007160
        0x20005976:    2800        .(      CMP      r0,#0
        0x20005978:    d100        ..      BNE      0x2000597c ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 524
        0x2000597a:    e0a8        ..      B        0x20005ace ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 862
        0x2000597c:    4602        .F      MOV      r2,r0
        0x2000597e:    43f8        .C      MVNS     r0,r7
        0x20005980:    2101        .!      MOVS     r1,#1
        0x20005982:    7031        1p      STRB     r1,[r6,#0]
        0x20005984:    4958        XI      LDR      r1,[pc,#352] ; [0x20005ae8] = 0x280a9
        0x20005986:    6191        .a      STR      r1,[r2,#0x18]
        0x20005988:    9903        ..      LDR      r1,[sp,#0xc]
        0x2000598a:    61d1        .a      STR      r1,[r2,#0x1c]
        0x2000598c:    9b01        ..      LDR      r3,[sp,#4]
        0x2000598e:    4003        .@      ANDS     r3,r3,r0
        0x20005990:    9800        ..      LDR      r0,[sp,#0]
        0x20005992:    4e54        TN      LDR      r6,[pc,#336] ; [0x20005ae4] = 0xf787cf00
        0x20005994:    4030        0@      ANDS     r0,r0,r6
        0x20005996:    4304        .C      ORRS     r4,r4,r0
        0x20005998:    9802        ..      LDR      r0,[sp,#8]
        0x2000599a:    6004        .`      STR      r4,[r0,#0]
        0x2000599c:    6043        C`      STR      r3,[r0,#4]
        0x2000599e:    4628        (F      MOV      r0,r5
        0x200059a0:    f001fbe4    ....    BL       $Ven$TT$L$$rom_llc_ctrl_procedure_send_ctrl_pdu ; 0x2000716c
        0x200059a4:    2600        .&      MOVS     r6,#0
        0x200059a6:    e093        ..      B        0x20005ad0 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x200059a8:    2601        .&      MOVS     r6,#1
        0x200059aa:    e091        ..      B        0x20005ad0 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x200059ac:    4628        (F      MOV      r0,r5
        0x200059ae:    9c03        ..      LDR      r4,[sp,#0xc]
        0x200059b0:    4621        !F      MOV      r1,r4
        0x200059b2:    f001fbe1    ....    BL       $Ven$TT$L$$rom_llc_ctrl_procedure_rsp_unknown ; 0x20007178
        0x200059b6:    2600        .&      MOVS     r6,#0
        0x200059b8:    72a6        .r      STRB     r6,[r4,#0xa]
        0x200059ba:    7b61        a{      LDRB     r1,[r4,#0xd]
        0x200059bc:    4847        GH      LDR      r0,[pc,#284] ; [0x20005adc] = 0x36ce
        0x200059be:    f001f89f    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b00
        0x200059c2:    e085        ..      B        0x20005ad0 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x200059c4:    21ff        .!      MOVS     r1,#0xff
        0x200059c6:    0209        ..      LSLS     r1,r1,#8
        0x200059c8:    400f        .@      ANDS     r7,r7,r1
        0x200059ca:    2109        .!      MOVS     r1,#9
        0x200059cc:    0209        ..      LSLS     r1,r1,#8
        0x200059ce:    4b43        CK      LDR      r3,[pc,#268] ; [0x20005adc] = 0x36ce
        0x200059d0:    428f        .B      CMP      r7,r1
        0x200059d2:    d15a        Z.      BNE      0x20005a8a ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 794
        0x200059d4:    7a02        .z      LDRB     r2,[r0,#8]
        0x200059d6:    a904        ..      ADD      r1,sp,#0x10
        0x200059d8:    720a        .r      STRB     r2,[r1,#8]
        0x200059da:    7902        .y      LDRB     r2,[r0,#4]
        0x200059dc:    7943        Cy      LDRB     r3,[r0,#5]
        0x200059de:    021b        ..      LSLS     r3,r3,#8
        0x200059e0:    189a        ..      ADDS     r2,r3,r2
        0x200059e2:    7983        .y      LDRB     r3,[r0,#6]
        0x200059e4:    79c5        .y      LDRB     r5,[r0,#7]
        0x200059e6:    022d        -.      LSLS     r5,r5,#8
        0x200059e8:    18eb        ..      ADDS     r3,r5,r3
        0x200059ea:    041b        ..      LSLS     r3,r3,#16
        0x200059ec:    189a        ..      ADDS     r2,r3,r2
        0x200059ee:    9205        ..      STR      r2,[sp,#0x14]
        0x200059f0:    7802        .x      LDRB     r2,[r0,#0]
        0x200059f2:    7843        Cx      LDRB     r3,[r0,#1]
        0x200059f4:    021b        ..      LSLS     r3,r3,#8
        0x200059f6:    189a        ..      ADDS     r2,r3,r2
        0x200059f8:    7883        .x      LDRB     r3,[r0,#2]
        0x200059fa:    78c0        .x      LDRB     r0,[r0,#3]
        0x200059fc:    0200        ..      LSLS     r0,r0,#8
        0x200059fe:    18c0        ..      ADDS     r0,r0,r3
        0x20005a00:    0400        ..      LSLS     r0,r0,#16
        0x20005a02:    1880        ..      ADDS     r0,r0,r2
        0x20005a04:    9004        ..      STR      r0,[sp,#0x10]
        0x20005a06:    1c48        H.      ADDS     r0,r1,#1
        0x20005a08:    f001fb9e    ....    BL       $Ven$TT$L$$rom_llc_tool_read_little_endian_uint64 ; 0x20007148
        0x20005a0c:    4607        .F      MOV      r7,r0
        0x20005a0e:    460d        .F      MOV      r5,r1
        0x20005a10:    2001        .       MOVS     r0,#1
        0x20005a12:    7030        0p      STRB     r0,[r6,#0]
        0x20005a14:    2600        .&      MOVS     r6,#0
        0x20005a16:    9a03        ..      LDR      r2,[sp,#0xc]
        0x20005a18:    7296        .r      STRB     r6,[r2,#0xa]
        0x20005a1a:    2010        .       MOVS     r0,#0x10
        0x20005a1c:    4381        .C      BICS     r1,r1,r0
        0x20005a1e:    4831        1H      LDR      r0,[pc,#196] ; [0x20005ae4] = 0xf787cf00
        0x20005a20:    302f        /0      ADDS     r0,r0,#0x2f
        0x20005a22:    4038        8@      ANDS     r0,r0,r7
        0x20005a24:    9b02        ..      LDR      r3,[sp,#8]
        0x20005a26:    c303        ..      STM      r3!,{r0,r1}
        0x20005a28:    7b51        Q{      LDRB     r1,[r2,#0xd]
        0x20005a2a:    482c        ,H      LDR      r0,[pc,#176] ; [0x20005adc] = 0x36ce
        0x20005a2c:    1dc0        ..      ADDS     r0,r0,#7
        0x20005a2e:    f001f867    ..g.    BL       $Ven$TT$L$$mlog_16 ; 0x20006b00
        0x20005a32:    4a2e        .J      LDR      r2,[pc,#184] ; [0x20005aec] = 0xf787cf2f
        0x20005a34:    403a        :@      ANDS     r2,r2,r7
        0x20005a36:    2051        Q       MOVS     r0,#0x51
        0x20005a38:    4385        .C      BICS     r5,r5,r0
        0x20005a3a:    8821        !.      LDRH     r1,[r4,#0]
        0x20005a3c:    4630        0F      MOV      r0,r6
        0x20005a3e:    462b        +F      MOV      r3,r5
        0x20005a40:    f001fb88    ....    BL       $Ven$TT$L$$rom_controller_event_HCI_LE_Read_Remote_Features_Complete ; 0x20007154
        0x20005a44:    e044        D.      B        0x20005ad0 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x20005a46:    2601        .&      MOVS     r6,#1
        0x20005a48:    e042        B.      B        0x20005ad0 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x20005a4a:    2601        .&      MOVS     r6,#1
        0x20005a4c:    e040        @.      B        0x20005ad0 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x20005a4e:    4628        (F      MOV      r0,r5
        0x20005a50:    9d03        ..      LDR      r5,[sp,#0xc]
        0x20005a52:    4629        )F      MOV      r1,r5
        0x20005a54:    f001fb90    ....    BL       $Ven$TT$L$$rom_llc_ctrl_procedure_rsp_unknown ; 0x20007178
        0x20005a58:    4c20         L      LDR      r4,[pc,#128] ; [0x20005adc] = 0x36ce
        0x20005a5a:    1ca0        ..      ADDS     r0,r4,#2
        0x20005a5c:    4639        9F      MOV      r1,r7
        0x20005a5e:    f001fb91    ....    BL       $Ven$TT$L$$mlog_32 ; 0x20007184
        0x20005a62:    2600        .&      MOVS     r6,#0
        0x20005a64:    72ae        .r      STRB     r6,[r5,#0xa]
        0x20005a66:    7b69        i{      LDRB     r1,[r5,#0xd]
        0x20005a68:    1ce0        ..      ADDS     r0,r4,#3
        0x20005a6a:    f001f849    ..I.    BL       $Ven$TT$L$$mlog_16 ; 0x20006b00
        0x20005a6e:    e02f        /.      B        0x20005ad0 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x20005a70:    4628        (F      MOV      r0,r5
        0x20005a72:    9c03        ..      LDR      r4,[sp,#0xc]
        0x20005a74:    4621        !F      MOV      r1,r4
        0x20005a76:    f001fb7f    ....    BL       $Ven$TT$L$$rom_llc_ctrl_procedure_rsp_unknown ; 0x20007178
        0x20005a7a:    2600        .&      MOVS     r6,#0
        0x20005a7c:    72a6        .r      STRB     r6,[r4,#0xa]
        0x20005a7e:    7b61        a{      LDRB     r1,[r4,#0xd]
        0x20005a80:    4816        .H      LDR      r0,[pc,#88] ; [0x20005adc] = 0x36ce
        0x20005a82:    1d00        ..      ADDS     r0,r0,#4
        0x20005a84:    f001f83c    ..<.    BL       $Ven$TT$L$$mlog_16 ; 0x20006b00
        0x20005a88:    e022        ".      B        0x20005ad0 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x20005a8a:    4628        (F      MOV      r0,r5
        0x20005a8c:    9c03        ..      LDR      r4,[sp,#0xc]
        0x20005a8e:    4621        !F      MOV      r1,r4
        0x20005a90:    461d        .F      MOV      r5,r3
        0x20005a92:    f001fb71    ..q.    BL       $Ven$TT$L$$rom_llc_ctrl_procedure_rsp_unknown ; 0x20007178
        0x20005a96:    2600        .&      MOVS     r6,#0
        0x20005a98:    72a6        .r      STRB     r6,[r4,#0xa]
        0x20005a9a:    7b61        a{      LDRB     r1,[r4,#0xd]
        0x20005a9c:    1da8        ..      ADDS     r0,r5,#6
        0x20005a9e:    f001f82f    ../.    BL       $Ven$TT$L$$mlog_16 ; 0x20006b00
        0x20005aa2:    e015        ..      B        0x20005ad0 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x20005aa4:    4628        (F      MOV      r0,r5
        0x20005aa6:    9c03        ..      LDR      r4,[sp,#0xc]
        0x20005aa8:    4621        !F      MOV      r1,r4
        0x20005aaa:    f001fb65    ..e.    BL       $Ven$TT$L$$rom_llc_ctrl_procedure_rsp_unknown ; 0x20007178
        0x20005aae:    4d0b        .M      LDR      r5,[pc,#44] ; [0x20005adc] = 0x36ce
        0x20005ab0:    4628        (F      MOV      r0,r5
        0x20005ab2:    3008        .0      ADDS     r0,r0,#8
        0x20005ab4:    4639        9F      MOV      r1,r7
        0x20005ab6:    f001fb65    ..e.    BL       $Ven$TT$L$$mlog_32 ; 0x20007184
        0x20005aba:    2600        .&      MOVS     r6,#0
        0x20005abc:    72a6        .r      STRB     r6,[r4,#0xa]
        0x20005abe:    7b61        a{      LDRB     r1,[r4,#0xd]
        0x20005ac0:    3509        .5      ADDS     r5,r5,#9
        0x20005ac2:    4628        (F      MOV      r0,r5
        0x20005ac4:    f001f81c    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b00
        0x20005ac8:    e002        ..      B        0x20005ad0 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x20005aca:    2602        .&      MOVS     r6,#2
        0x20005acc:    e000        ..      B        0x20005ad0 ; patch_llc_feature_exchange_procedure_on_recv_ctrl_pdu + 864
        0x20005ace:    2602        .&      MOVS     r6,#2
        0x20005ad0:    4630        0F      MOV      r0,r6
        0x20005ad2:    b007        ..      ADD      sp,sp,#0x1c
        0x20005ad4:    bdf0        ..      POP      {r4-r7,pc}
        0x20005ad6:    46c0        .F      MOV      r8,r8
    $d.3
    __arm_cp.1_0
        0x20005ad8:    00000449    I...    DCD    1097
    __arm_cp.1_2
        0x20005adc:    000036ce    .6..    DCD    14030
    __arm_cp.1_3
        0x20005ae0:    2000a560    `..     DCD    536913248
    __arm_cp.1_4
        0x20005ae4:    f787cf00    ....    DCD    4152872704
    __arm_cp.1_5
        0x20005ae8:    000280a9    ....    DCD    164009
    __arm_cp.1_6
        0x20005aec:    f787cf2f    /...    DCD    4152872751
    $t.0
    patch_llc_feature_exchange_procedure_peer_initiated_init
        0x20005af0:    b570        p.      PUSH     {r4-r6,lr}
        0x20005af2:    2800        .(      CMP      r0,#0
        0x20005af4:    d010        ..      BEQ      0x20005b18 ; patch_llc_feature_exchange_procedure_peer_initiated_init + 40
        0x20005af6:    460d        .F      MOV      r5,r1
        0x20005af8:    2900        .)      CMP      r1,#0
        0x20005afa:    d00d        ..      BEQ      0x20005b18 ; patch_llc_feature_exchange_procedure_peer_initiated_init + 40
        0x20005afc:    2a00        .*      CMP      r2,#0
        0x20005afe:    d00b        ..      BEQ      0x20005b18 ; patch_llc_feature_exchange_procedure_peer_initiated_init + 40
        0x20005b00:    68d1        .h      LDR      r1,[r2,#0xc]
        0x20005b02:    7809        .x      LDRB     r1,[r1,#0]
        0x20005b04:    2400        .$      MOVS     r4,#0
        0x20005b06:    290e        .)      CMP      r1,#0xe
        0x20005b08:    d00f        ..      BEQ      0x20005b2a ; patch_llc_feature_exchange_procedure_peer_initiated_init + 58
        0x20005b0a:    2908        .)      CMP      r1,#8
        0x20005b0c:    d127        '.      BNE      0x20005b5e ; patch_llc_feature_exchange_procedure_peer_initiated_init + 110
        0x20005b0e:    4915        .I      LDR      r1,[pc,#84] ; [0x20005b64] = 0x351
        0x20005b10:    5c40        @\      LDRB     r0,[r0,r1]
        0x20005b12:    2800        .(      CMP      r0,#0
        0x20005b14:    d123        #.      BNE      0x20005b5e ; patch_llc_feature_exchange_procedure_peer_initiated_init + 110
        0x20005b16:    e00c        ..      B        0x20005b32 ; patch_llc_feature_exchange_procedure_peer_initiated_init + 66
        0x20005b18:    2016        .       MOVS     r0,#0x16
        0x20005b1a:    2149        I!      MOVS     r1,#0x49
        0x20005b1c:    2400        .$      MOVS     r4,#0
        0x20005b1e:    4622        "F      MOV      r2,r4
        0x20005b20:    4623        #F      MOV      r3,r4
        0x20005b22:    f001fb35    ..5.    BL       $Ven$TT$L$$system_error ; 0x20007190
        0x20005b26:    4620         F      MOV      r0,r4
        0x20005b28:    bd70        p.      POP      {r4-r6,pc}
        0x20005b2a:    490e        .I      LDR      r1,[pc,#56] ; [0x20005b64] = 0x351
        0x20005b2c:    5c40        @\      LDRB     r0,[r0,r1]
        0x20005b2e:    2800        .(      CMP      r0,#0
        0x20005b30:    d015        ..      BEQ      0x20005b5e ; patch_llc_feature_exchange_procedure_peer_initiated_init + 110
        0x20005b32:    2401        .$      MOVS     r4,#1
        0x20005b34:    732c        ,s      STRB     r4,[r5,#0xc]
        0x20005b36:    2600        .&      MOVS     r6,#0
        0x20005b38:    72ee        .r      STRB     r6,[r5,#0xb]
        0x20005b3a:    20ff        .       MOVS     r0,#0xff
        0x20005b3c:    3004        .0      ADDS     r0,#4
        0x20005b3e:    8128        (.      STRH     r0,[r5,#8]
        0x20005b40:    4630        0F      MOV      r0,r6
        0x20005b42:    f001fb2b    ..+.    BL       $Ven$TT$L$$rom_llc_timer_get_count ; 0x2000719c
        0x20005b46:    c503        ..      STM      r5!,{r0,r1}
        0x20005b48:    4807        .H      LDR      r0,[pc,#28] ; [0x20005b68] = 0x20005771
        0x20005b4a:    80ee        ..      STRH     r6,[r5,#6]
        0x20005b4c:    716e        nq      STRB     r6,[r5,#5]
        0x20005b4e:    616e        na      STR      r6,[r5,#0x14]
        0x20005b50:    61ae        .a      STR      r6,[r5,#0x18]
        0x20005b52:    61e8        .a      STR      r0,[r5,#0x1c]
        0x20005b54:    70ac        .p      STRB     r4,[r5,#2]
        0x20005b56:    4805        .H      LDR      r0,[pc,#20] ; [0x20005b6c] = 0x36cd
        0x20005b58:    4631        1F      MOV      r1,r6
        0x20005b5a:    f000ffd1    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b00
        0x20005b5e:    4620         F      MOV      r0,r4
        0x20005b60:    bd70        p.      POP      {r4-r6,pc}
        0x20005b62:    46c0        .F      MOV      r8,r8
    $d.1
    __arm_cp.0_0
        0x20005b64:    00000351    Q...    DCD    849
    __arm_cp.0_1
        0x20005b68:    20005771    qW.     DCD    536893297
    __arm_cp.0_2
        0x20005b6c:    000036cd    .6..    DCD    14029
    $t.0
    patch_llc_hook_prefix_address_set_random_address
        0x20005b70:    b510        ..      PUSH     {r4,lr}
        0x20005b72:    4604        .F      MOV      r4,r0
        0x20005b74:    f000fd26    ..&.    BL       rom_llc_ext_scan_is_enabled ; 0x200065c4
        0x20005b78:    2800        .(      CMP      r0,#0
        0x20005b7a:    d002        ..      BEQ      0x20005b82 ; patch_llc_hook_prefix_address_set_random_address + 18
        0x20005b7c:    210c        .!      MOVS     r1,#0xc
        0x20005b7e:    2001        .       MOVS     r0,#1
        0x20005b80:    e006        ..      B        0x20005b90 ; patch_llc_hook_prefix_address_set_random_address + 32
        0x20005b82:    f000fcf9    ....    BL       rom_llc_ext_initiator_is_enabled ; 0x20006578
        0x20005b86:    2800        .(      CMP      r0,#0
        0x20005b88:    d101        ..      BNE      0x20005b8e ; patch_llc_hook_prefix_address_set_random_address + 30
        0x20005b8a:    4601        .F      MOV      r1,r0
        0x20005b8c:    e000        ..      B        0x20005b90 ; patch_llc_hook_prefix_address_set_random_address + 32
        0x20005b8e:    210c        .!      MOVS     r1,#0xc
        0x20005b90:    7020         p      STRB     r0,[r4,#0]
        0x20005b92:    4608        .F      MOV      r0,r1
        0x20005b94:    bd10        ..      POP      {r4,pc}
        0x20005b96:    0000        ..      MOVS     r0,r0
    patch_llc_hook_prefix_priority_on_event_added
        0x20005b98:    b510        ..      PUSH     {r4,lr}
        0x20005b9a:    460a        .F      MOV      r2,r1
        0x20005b9c:    2900        .)      CMP      r1,#0
        0x20005b9e:    d011        ..      BEQ      0x20005bc4 ; patch_llc_hook_prefix_priority_on_event_added + 44
        0x20005ba0:    4604        .F      MOV      r4,r0
        0x20005ba2:    6b90        .k      LDR      r0,[r2,#0x38]
        0x20005ba4:    2800        .(      CMP      r0,#0
        0x20005ba6:    d00d        ..      BEQ      0x20005bc4 ; patch_llc_hook_prefix_priority_on_event_added + 44
        0x20005ba8:    7c10        .|      LDRB     r0,[r2,#0x10]
        0x20005baa:    2807        .(      CMP      r0,#7
        0x20005bac:    d011        ..      BEQ      0x20005bd2 ; patch_llc_hook_prefix_priority_on_event_added + 58
        0x20005bae:    2806        .(      CMP      r0,#6
        0x20005bb0:    d016        ..      BEQ      0x20005be0 ; patch_llc_hook_prefix_priority_on_event_added + 72
        0x20005bb2:    2805        .(      CMP      r0,#5
        0x20005bb4:    d11d        ..      BNE      0x20005bf2 ; patch_llc_hook_prefix_priority_on_event_added + 90
        0x20005bb6:    4810        .H      LDR      r0,[pc,#64] ; [0x20005bf8] = 0x20000850
        0x20005bb8:    6800        .h      LDR      r0,[r0,#0]
        0x20005bba:    60d0        .`      STR      r0,[r2,#0xc]
        0x20005bbc:    4610        .F      MOV      r0,r2
        0x20005bbe:    f000fd23    ..#.    BL       rom_llc_priority_ext_adv_on_event_added ; 0x20006608
        0x20005bc2:    e013        ..      B        0x20005bec ; patch_llc_hook_prefix_priority_on_event_added + 84
        0x20005bc4:    2085        .       MOVS     r0,#0x85
        0x20005bc6:    00c1        ..      LSLS     r1,r0,#3
        0x20005bc8:    201c        .       MOVS     r0,#0x1c
        0x20005bca:    2300        .#      MOVS     r3,#0
        0x20005bcc:    f001fae0    ....    BL       $Ven$TT$L$$system_error ; 0x20007190
        0x20005bd0:    bd10        ..      POP      {r4,pc}
        0x20005bd2:    4809        .H      LDR      r0,[pc,#36] ; [0x20005bf8] = 0x20000850
        0x20005bd4:    6800        .h      LDR      r0,[r0,#0]
        0x20005bd6:    60d0        .`      STR      r0,[r2,#0xc]
        0x20005bd8:    4610        .F      MOV      r0,r2
        0x20005bda:    f000fd19    ....    BL       rom_llc_priority_ext_initiator_on_event_added ; 0x20006610
        0x20005bde:    e005        ..      B        0x20005bec ; patch_llc_hook_prefix_priority_on_event_added + 84
        0x20005be0:    4805        .H      LDR      r0,[pc,#20] ; [0x20005bf8] = 0x20000850
        0x20005be2:    6800        .h      LDR      r0,[r0,#0]
        0x20005be4:    60d0        .`      STR      r0,[r2,#0xc]
        0x20005be6:    4610        .F      MOV      r0,r2
        0x20005be8:    f000fd18    ....    BL       rom_llc_priority_ext_scan_on_event_added ; 0x2000661c
        0x20005bec:    2001        .       MOVS     r0,#1
        0x20005bee:    7020         p      STRB     r0,[r4,#0]
        0x20005bf0:    bd10        ..      POP      {r4,pc}
        0x20005bf2:    2000        .       MOVS     r0,#0
        0x20005bf4:    7020         p      STRB     r0,[r4,#0]
        0x20005bf6:    bd10        ..      POP      {r4,pc}
    $d.1
    __arm_cp.0_0
        0x20005bf8:    20000850    P..     DCD    536873040
    $t.4
    patch_llc_hook_prefix_priority_on_event_blocked
        0x20005bfc:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20005bfe:    460d        .F      MOV      r5,r1
        0x20005c00:    2900        .)      CMP      r1,#0
        0x20005c02:    d00f        ..      BEQ      0x20005c24 ; patch_llc_hook_prefix_priority_on_event_blocked + 40
        0x20005c04:    4604        .F      MOV      r4,r0
        0x20005c06:    6ba8        .k      LDR      r0,[r5,#0x38]
        0x20005c08:    2800        .(      CMP      r0,#0
        0x20005c0a:    d00b        ..      BEQ      0x20005c24 ; patch_llc_hook_prefix_priority_on_event_blocked + 40
        0x20005c0c:    7c28        (|      LDRB     r0,[r5,#0x10]
        0x20005c0e:    2807        .(      CMP      r0,#7
        0x20005c10:    d00f        ..      BEQ      0x20005c32 ; patch_llc_hook_prefix_priority_on_event_blocked + 54
        0x20005c12:    2806        .(      CMP      r0,#6
        0x20005c14:    d012        ..      BEQ      0x20005c3c ; patch_llc_hook_prefix_priority_on_event_blocked + 64
        0x20005c16:    2805        .(      CMP      r0,#5
        0x20005c18:    d117        ..      BNE      0x20005c4a ; patch_llc_hook_prefix_priority_on_event_blocked + 78
        0x20005c1a:    4628        (F      MOV      r0,r5
        0x20005c1c:    4611        .F      MOV      r1,r2
        0x20005c1e:    f000fcf4    ....    BL       rom_llc_priority_ext_adv_on_event_blocked ; 0x2000660a
        0x20005c22:    e00f        ..      B        0x20005c44 ; patch_llc_hook_prefix_priority_on_event_blocked + 72
        0x20005c24:    201c        .       MOVS     r0,#0x1c
        0x20005c26:    490a        .I      LDR      r1,[pc,#40] ; [0x20005c50] = 0x48d
        0x20005c28:    2300        .#      MOVS     r3,#0
        0x20005c2a:    462a        *F      MOV      r2,r5
        0x20005c2c:    f001fab0    ....    BL       $Ven$TT$L$$system_error ; 0x20007190
        0x20005c30:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20005c32:    4628        (F      MOV      r0,r5
        0x20005c34:    4611        .F      MOV      r1,r2
        0x20005c36:    f000fcee    ....    BL       rom_llc_priority_ext_initiator_on_event_blocked ; 0x20006616
        0x20005c3a:    e003        ..      B        0x20005c44 ; patch_llc_hook_prefix_priority_on_event_blocked + 72
        0x20005c3c:    4628        (F      MOV      r0,r5
        0x20005c3e:    4611        .F      MOV      r1,r2
        0x20005c40:    f000fcf6    ....    BL       rom_llc_priority_ext_scan_on_event_blocked ; 0x20006630
        0x20005c44:    2001        .       MOVS     r0,#1
        0x20005c46:    7020         p      STRB     r0,[r4,#0]
        0x20005c48:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20005c4a:    2000        .       MOVS     r0,#0
        0x20005c4c:    7020         p      STRB     r0,[r4,#0]
        0x20005c4e:    bdb0        ..      POP      {r4,r5,r7,pc}
    $d.5
    __arm_cp.2_0
        0x20005c50:    0000048d    ....    DCD    1165
    $t.2
    patch_llc_hook_prefix_priority_on_event_config_failed
        0x20005c54:    b510        ..      PUSH     {r4,lr}
        0x20005c56:    460a        .F      MOV      r2,r1
        0x20005c58:    2900        .)      CMP      r1,#0
        0x20005c5a:    d018        ..      BEQ      0x20005c8e ; patch_llc_hook_prefix_priority_on_event_config_failed + 58
        0x20005c5c:    4604        .F      MOV      r4,r0
        0x20005c5e:    6b90        .k      LDR      r0,[r2,#0x38]
        0x20005c60:    2800        .(      CMP      r0,#0
        0x20005c62:    d014        ..      BEQ      0x20005c8e ; patch_llc_hook_prefix_priority_on_event_config_failed + 58
        0x20005c64:    7c10        .|      LDRB     r0,[r2,#0x10]
        0x20005c66:    2807        .(      CMP      r0,#7
        0x20005c68:    d017        ..      BEQ      0x20005c9a ; patch_llc_hook_prefix_priority_on_event_config_failed + 70
        0x20005c6a:    2806        .(      CMP      r0,#6
        0x20005c6c:    d023        #.      BEQ      0x20005cb6 ; patch_llc_hook_prefix_priority_on_event_config_failed + 98
        0x20005c6e:    2805        .(      CMP      r0,#5
        0x20005c70:    d131        1.      BNE      0x20005cd6 ; patch_llc_hook_prefix_priority_on_event_config_failed + 130
        0x20005c72:    4840        @H      LDR      r0,[pc,#256] ; [0x20005d74] = 0x2000085c
        0x20005c74:    7801        .x      LDRB     r1,[r0,#0]
        0x20005c76:    68d0        .h      LDR      r0,[r2,#0xc]
        0x20005c78:    4348        HC      MULS     r0,r1,r0
        0x20005c7a:    4918        .I      LDR      r1,[pc,#96] ; [0x20005cdc] = 0x20000854
        0x20005c7c:    6809        .h      LDR      r1,[r1,#0]
        0x20005c7e:    4288        .B      CMP      r0,r1
        0x20005c80:    d800        ..      BHI      0x20005c84 ; patch_llc_hook_prefix_priority_on_event_config_failed + 48
        0x20005c82:    4601        .F      MOV      r1,r0
        0x20005c84:    60d1        .`      STR      r1,[r2,#0xc]
        0x20005c86:    4610        .F      MOV      r0,r2
        0x20005c88:    f000fcc0    ....    BL       rom_llc_priority_ext_adv_on_event_config_failed ; 0x2000660c
        0x20005c8c:    e020         .      B        0x20005cd0 ; patch_llc_hook_prefix_priority_on_event_config_failed + 124
        0x20005c8e:    201c        .       MOVS     r0,#0x1c
        0x20005c90:    4913        .I      LDR      r1,[pc,#76] ; [0x20005ce0] = 0x453
        0x20005c92:    2300        .#      MOVS     r3,#0
        0x20005c94:    f001fa7c    ..|.    BL       $Ven$TT$L$$system_error ; 0x20007190
        0x20005c98:    bd10        ..      POP      {r4,pc}
        0x20005c9a:    4836        6H      LDR      r0,[pc,#216] ; [0x20005d74] = 0x2000085c
        0x20005c9c:    7801        .x      LDRB     r1,[r0,#0]
        0x20005c9e:    68d0        .h      LDR      r0,[r2,#0xc]
        0x20005ca0:    4348        HC      MULS     r0,r1,r0
        0x20005ca2:    490e        .I      LDR      r1,[pc,#56] ; [0x20005cdc] = 0x20000854
        0x20005ca4:    6809        .h      LDR      r1,[r1,#0]
        0x20005ca6:    4288        .B      CMP      r0,r1
        0x20005ca8:    d800        ..      BHI      0x20005cac ; patch_llc_hook_prefix_priority_on_event_config_failed + 88
        0x20005caa:    4601        .F      MOV      r1,r0
        0x20005cac:    60d1        .`      STR      r1,[r2,#0xc]
        0x20005cae:    4610        .F      MOV      r0,r2
        0x20005cb0:    f000fcb2    ....    BL       rom_llc_priority_ext_initiator_on_event_config_failed ; 0x20006618
        0x20005cb4:    e00c        ..      B        0x20005cd0 ; patch_llc_hook_prefix_priority_on_event_config_failed + 124
        0x20005cb6:    482f        /H      LDR      r0,[pc,#188] ; [0x20005d74] = 0x2000085c
        0x20005cb8:    7801        .x      LDRB     r1,[r0,#0]
        0x20005cba:    68d0        .h      LDR      r0,[r2,#0xc]
        0x20005cbc:    4348        HC      MULS     r0,r1,r0
        0x20005cbe:    4907        .I      LDR      r1,[pc,#28] ; [0x20005cdc] = 0x20000854
        0x20005cc0:    6809        .h      LDR      r1,[r1,#0]
        0x20005cc2:    4288        .B      CMP      r0,r1
        0x20005cc4:    d800        ..      BHI      0x20005cc8 ; patch_llc_hook_prefix_priority_on_event_config_failed + 116
        0x20005cc6:    4601        .F      MOV      r1,r0
        0x20005cc8:    60d1        .`      STR      r1,[r2,#0xc]
        0x20005cca:    4610        .F      MOV      r0,r2
        0x20005ccc:    f000fccf    ....    BL       rom_llc_priority_ext_scan_on_event_config_failed ; 0x2000666e
        0x20005cd0:    2001        .       MOVS     r0,#1
        0x20005cd2:    7020         p      STRB     r0,[r4,#0]
        0x20005cd4:    bd10        ..      POP      {r4,pc}
        0x20005cd6:    2000        .       MOVS     r0,#0
        0x20005cd8:    7020         p      STRB     r0,[r4,#0]
        0x20005cda:    bd10        ..      POP      {r4,pc}
    $d.3
    __arm_cp.1_1
        0x20005cdc:    20000854    T..     DCD    536873044
    __arm_cp.1_2
        0x20005ce0:    00000453    S...    DCD    1107
    $t.6
    patch_llc_hook_prefix_priority_on_event_stopped
        0x20005ce4:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20005ce6:    460d        .F      MOV      r5,r1
        0x20005ce8:    2900        .)      CMP      r1,#0
        0x20005cea:    d019        ..      BEQ      0x20005d20 ; patch_llc_hook_prefix_priority_on_event_stopped + 60
        0x20005cec:    4604        .F      MOV      r4,r0
        0x20005cee:    6ba8        .k      LDR      r0,[r5,#0x38]
        0x20005cf0:    2800        .(      CMP      r0,#0
        0x20005cf2:    d015        ..      BEQ      0x20005d20 ; patch_llc_hook_prefix_priority_on_event_stopped + 60
        0x20005cf4:    7c28        (|      LDRB     r0,[r5,#0x10]
        0x20005cf6:    2807        .(      CMP      r0,#7
        0x20005cf8:    d019        ..      BEQ      0x20005d2e ; patch_llc_hook_prefix_priority_on_event_stopped + 74
        0x20005cfa:    2806        .(      CMP      r0,#6
        0x20005cfc:    d026        &.      BEQ      0x20005d4c ; patch_llc_hook_prefix_priority_on_event_stopped + 104
        0x20005cfe:    2805        .(      CMP      r0,#5
        0x20005d00:    d135        5.      BNE      0x20005d6e ; patch_llc_hook_prefix_priority_on_event_stopped + 138
        0x20005d02:    68e8        .h      LDR      r0,[r5,#0xc]
        0x20005d04:    491b        .I      LDR      r1,[pc,#108] ; [0x20005d74] = 0x2000085c
        0x20005d06:    7809        .x      LDRB     r1,[r1,#0]
        0x20005d08:    f7fdfaee    ....    BL       __aeabi_uidiv ; 0x200032e8
        0x20005d0c:    491a        .I      LDR      r1,[pc,#104] ; [0x20005d78] = 0x20000858
        0x20005d0e:    6809        .h      LDR      r1,[r1,#0]
        0x20005d10:    4288        .B      CMP      r0,r1
        0x20005d12:    d300        ..      BCC      0x20005d16 ; patch_llc_hook_prefix_priority_on_event_stopped + 50
        0x20005d14:    4601        .F      MOV      r1,r0
        0x20005d16:    60e9        .`      STR      r1,[r5,#0xc]
        0x20005d18:    4628        (F      MOV      r0,r5
        0x20005d1a:    f000fc78    ..x.    BL       rom_llc_priority_ext_adv_on_event_stopped ; 0x2000660e
        0x20005d1e:    e023        #.      B        0x20005d68 ; patch_llc_hook_prefix_priority_on_event_stopped + 132
        0x20005d20:    201c        .       MOVS     r0,#0x1c
        0x20005d22:    4916        .I      LDR      r1,[pc,#88] ; [0x20005d7c] = 0x4b5
        0x20005d24:    2300        .#      MOVS     r3,#0
        0x20005d26:    462a        *F      MOV      r2,r5
        0x20005d28:    f001fa32    ..2.    BL       $Ven$TT$L$$system_error ; 0x20007190
        0x20005d2c:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20005d2e:    68e8        .h      LDR      r0,[r5,#0xc]
        0x20005d30:    4910        .I      LDR      r1,[pc,#64] ; [0x20005d74] = 0x2000085c
        0x20005d32:    7809        .x      LDRB     r1,[r1,#0]
        0x20005d34:    f7fdfad8    ....    BL       __aeabi_uidiv ; 0x200032e8
        0x20005d38:    490f        .I      LDR      r1,[pc,#60] ; [0x20005d78] = 0x20000858
        0x20005d3a:    6809        .h      LDR      r1,[r1,#0]
        0x20005d3c:    4288        .B      CMP      r0,r1
        0x20005d3e:    d300        ..      BCC      0x20005d42 ; patch_llc_hook_prefix_priority_on_event_stopped + 94
        0x20005d40:    4601        .F      MOV      r1,r0
        0x20005d42:    60e9        .`      STR      r1,[r5,#0xc]
        0x20005d44:    4628        (F      MOV      r0,r5
        0x20005d46:    f000fc68    ..h.    BL       rom_llc_priority_ext_initiator_on_event_stopped ; 0x2000661a
        0x20005d4a:    e00d        ..      B        0x20005d68 ; patch_llc_hook_prefix_priority_on_event_stopped + 132
        0x20005d4c:    68e8        .h      LDR      r0,[r5,#0xc]
        0x20005d4e:    4909        .I      LDR      r1,[pc,#36] ; [0x20005d74] = 0x2000085c
        0x20005d50:    7809        .x      LDRB     r1,[r1,#0]
        0x20005d52:    f7fdfac9    ....    BL       __aeabi_uidiv ; 0x200032e8
        0x20005d56:    4908        .I      LDR      r1,[pc,#32] ; [0x20005d78] = 0x20000858
        0x20005d58:    6809        .h      LDR      r1,[r1,#0]
        0x20005d5a:    4288        .B      CMP      r0,r1
        0x20005d5c:    d300        ..      BCC      0x20005d60 ; patch_llc_hook_prefix_priority_on_event_stopped + 124
        0x20005d5e:    4601        .F      MOV      r1,r0
        0x20005d60:    60e9        .`      STR      r1,[r5,#0xc]
        0x20005d62:    4628        (F      MOV      r0,r5
        0x20005d64:    f000fc96    ....    BL       rom_llc_priority_ext_scan_on_event_stopped ; 0x20006694
        0x20005d68:    2001        .       MOVS     r0,#1
        0x20005d6a:    7020         p      STRB     r0,[r4,#0]
        0x20005d6c:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20005d6e:    2000        .       MOVS     r0,#0
        0x20005d70:    7020         p      STRB     r0,[r4,#0]
        0x20005d72:    bdb0        ..      POP      {r4,r5,r7,pc}
    $d.7
    __arm_cp.3_0
        0x20005d74:    2000085c    \..     DCD    536873052
    __arm_cp.3_1
        0x20005d78:    20000858    X..     DCD    536873048
    __arm_cp.3_2
        0x20005d7c:    000004b5    ....    DCD    1205
    $t.0
    patch_llc_hook_prefix_privacy_is_adv_scan_init_active
        0x20005d80:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20005d82:    4604        .F      MOV      r4,r0
        0x20005d84:    2501        .%      MOVS     r5,#1
        0x20005d86:    f000fb85    ....    BL       rom_llc_ext_adv_is_any_advertising_set_enabled ; 0x20006494
        0x20005d8a:    2800        .(      CMP      r0,#0
        0x20005d8c:    d001        ..      BEQ      0x20005d92 ; patch_llc_hook_prefix_privacy_is_adv_scan_init_active + 18
        0x20005d8e:    4628        (F      MOV      r0,r5
        0x20005d90:    e008        ..      B        0x20005da4 ; patch_llc_hook_prefix_privacy_is_adv_scan_init_active + 36
        0x20005d92:    f000fc17    ....    BL       rom_llc_ext_scan_is_enabled ; 0x200065c4
        0x20005d96:    2800        .(      CMP      r0,#0
        0x20005d98:    d001        ..      BEQ      0x20005d9e ; patch_llc_hook_prefix_privacy_is_adv_scan_init_active + 30
        0x20005d9a:    2001        .       MOVS     r0,#1
        0x20005d9c:    e002        ..      B        0x20005da4 ; patch_llc_hook_prefix_privacy_is_adv_scan_init_active + 36
        0x20005d9e:    f000fbeb    ....    BL       rom_llc_ext_initiator_is_enabled ; 0x20006578
        0x20005da2:    4605        .F      MOV      r5,r0
        0x20005da4:    7020         p      STRB     r0,[r4,#0]
        0x20005da6:    4628        (F      MOV      r0,r5
        0x20005da8:    bdb0        ..      POP      {r4,r5,r7,pc}
    patch_llc_hook_prefix_white_list_add_device
        0x20005daa:    b570        p.      PUSH     {r4-r6,lr}
        0x20005dac:    4604        .F      MOV      r4,r0
        0x20005dae:    260c        .&      MOVS     r6,#0xc
        0x20005db0:    2501        .%      MOVS     r5,#1
        0x20005db2:    f000fba3    ....    BL       rom_llc_ext_adv_is_white_list_in_use ; 0x200064fc
        0x20005db6:    2800        .(      CMP      r0,#0
        0x20005db8:    d10b        ..      BNE      0x20005dd2 ; patch_llc_hook_prefix_white_list_add_device + 40
        0x20005dba:    f000fc10    ....    BL       rom_llc_ext_scan_is_white_list_in_use ; 0x200065de
        0x20005dbe:    2800        .(      CMP      r0,#0
        0x20005dc0:    d107        ..      BNE      0x20005dd2 ; patch_llc_hook_prefix_white_list_add_device + 40
        0x20005dc2:    f000fbe6    ....    BL       rom_llc_ext_initiator_is_white_list_in_use ; 0x20006592
        0x20005dc6:    4605        .F      MOV      r5,r0
        0x20005dc8:    2800        .(      CMP      r0,#0
        0x20005dca:    d101        ..      BNE      0x20005dd0 ; patch_llc_hook_prefix_white_list_add_device + 38
        0x20005dcc:    462e        .F      MOV      r6,r5
        0x20005dce:    e000        ..      B        0x20005dd2 ; patch_llc_hook_prefix_white_list_add_device + 40
        0x20005dd0:    260c        .&      MOVS     r6,#0xc
        0x20005dd2:    7025        %p      STRB     r5,[r4,#0]
        0x20005dd4:    4630        0F      MOV      r0,r6
        0x20005dd6:    bd70        p.      POP      {r4-r6,pc}
    patch_llc_hook_prefix_white_list_clear
        0x20005dd8:    b570        p.      PUSH     {r4-r6,lr}
        0x20005dda:    4604        .F      MOV      r4,r0
        0x20005ddc:    260c        .&      MOVS     r6,#0xc
        0x20005dde:    2501        .%      MOVS     r5,#1
        0x20005de0:    f000fb8c    ....    BL       rom_llc_ext_adv_is_white_list_in_use ; 0x200064fc
        0x20005de4:    2800        .(      CMP      r0,#0
        0x20005de6:    d10b        ..      BNE      0x20005e00 ; patch_llc_hook_prefix_white_list_clear + 40
        0x20005de8:    f000fbf9    ....    BL       rom_llc_ext_scan_is_white_list_in_use ; 0x200065de
        0x20005dec:    2800        .(      CMP      r0,#0
        0x20005dee:    d107        ..      BNE      0x20005e00 ; patch_llc_hook_prefix_white_list_clear + 40
        0x20005df0:    f000fbcf    ....    BL       rom_llc_ext_initiator_is_white_list_in_use ; 0x20006592
        0x20005df4:    4605        .F      MOV      r5,r0
        0x20005df6:    2800        .(      CMP      r0,#0
        0x20005df8:    d101        ..      BNE      0x20005dfe ; patch_llc_hook_prefix_white_list_clear + 38
        0x20005dfa:    462e        .F      MOV      r6,r5
        0x20005dfc:    e000        ..      B        0x20005e00 ; patch_llc_hook_prefix_white_list_clear + 40
        0x20005dfe:    260c        .&      MOVS     r6,#0xc
        0x20005e00:    7025        %p      STRB     r5,[r4,#0]
        0x20005e02:    4630        0F      MOV      r0,r6
        0x20005e04:    bd70        p.      POP      {r4-r6,pc}
    patch_llc_hook_prefix_white_list_remove_device
        0x20005e06:    b510        ..      PUSH     {r4,lr}
        0x20005e08:    4604        .F      MOV      r4,r0
        0x20005e0a:    f000fb77    ..w.    BL       rom_llc_ext_adv_is_white_list_in_use ; 0x200064fc
        0x20005e0e:    2800        .(      CMP      r0,#0
        0x20005e10:    d103        ..      BNE      0x20005e1a ; patch_llc_hook_prefix_white_list_remove_device + 20
        0x20005e12:    f000fbe4    ....    BL       rom_llc_ext_scan_is_white_list_in_use ; 0x200065de
        0x20005e16:    2800        .(      CMP      r0,#0
        0x20005e18:    d003        ..      BEQ      0x20005e22 ; patch_llc_hook_prefix_white_list_remove_device + 28
        0x20005e1a:    2000        .       MOVS     r0,#0
        0x20005e1c:    7020         p      STRB     r0,[r4,#0]
        0x20005e1e:    200c        .       MOVS     r0,#0xc
        0x20005e20:    bd10        ..      POP      {r4,pc}
        0x20005e22:    f000fbb6    ....    BL       rom_llc_ext_initiator_is_white_list_in_use ; 0x20006592
        0x20005e26:    2100        .!      MOVS     r1,#0
        0x20005e28:    7021        !p      STRB     r1,[r4,#0]
        0x20005e2a:    2800        .(      CMP      r0,#0
        0x20005e2c:    d000        ..      BEQ      0x20005e30 ; patch_llc_hook_prefix_white_list_remove_device + 42
        0x20005e2e:    200c        .       MOVS     r0,#0xc
        0x20005e30:    bd10        ..      POP      {r4,pc}
        0x20005e32:    0000        ..      MOVS     r0,r0
    patch_llc_priority
        0x20005e34:    2015        .       MOVS     r0,#0x15
        0x20005e36:    0100        ..      LSLS     r0,r0,#4
        0x20005e38:    4912        .I      LDR      r1,[pc,#72] ; [0x20005e84] = 0x20000b50
        0x20005e3a:    4a07        .J      LDR      r2,[pc,#28] ; [0x20005e58] = 0x20005ce5
        0x20005e3c:    500a        .P      STR      r2,[r1,r0]
        0x20005e3e:    2053        S       MOVS     r0,#0x53
        0x20005e40:    0080        ..      LSLS     r0,r0,#2
        0x20005e42:    4a06        .J      LDR      r2,[pc,#24] ; [0x20005e5c] = 0x20005bfd
        0x20005e44:    500a        .P      STR      r2,[r1,r0]
        0x20005e46:    2029        )       MOVS     r0,#0x29
        0x20005e48:    00c0        ..      LSLS     r0,r0,#3
        0x20005e4a:    4a05        .J      LDR      r2,[pc,#20] ; [0x20005e60] = 0x20005c55
        0x20005e4c:    500a        .P      STR      r2,[r1,r0]
        0x20005e4e:    2051        Q       MOVS     r0,#0x51
        0x20005e50:    0080        ..      LSLS     r0,r0,#2
        0x20005e52:    4a04        .J      LDR      r2,[pc,#16] ; [0x20005e64] = 0x20005b99
        0x20005e54:    500a        .P      STR      r2,[r1,r0]
        0x20005e56:    4770        pG      BX       lr
    $d.11
    __arm_cp.6_1
        0x20005e58:    20005ce5    .\.     DCD    536894693
    __arm_cp.6_2
        0x20005e5c:    20005bfd    .[.     DCD    536894461
    __arm_cp.6_3
        0x20005e60:    20005c55    U\.     DCD    536894549
    __arm_cp.6_4
        0x20005e64:    20005b99    .[.     DCD    536894361
    $t.1
    patch_llc_privacy
        0x20005e68:    4806        .H      LDR      r0,[pc,#24] ; [0x20005e84] = 0x20000b50
        0x20005e6a:    4901        .I      LDR      r1,[pc,#4] ; [0x20005e70] = 0x20005d81
        0x20005e6c:    6601        .f      STR      r1,[r0,#0x60]
        0x20005e6e:    4770        pG      BX       lr
    $d.2
    __arm_cp.1_1
        0x20005e70:    20005d81    .].     DCD    536894849
    $t.3
    patch_llc_white_list
        0x20005e74:    4803        .H      LDR      r0,[pc,#12] ; [0x20005e84] = 0x20000b50
        0x20005e76:    4904        .I      LDR      r1,[pc,#16] ; [0x20005e88] = 0x20005e07
        0x20005e78:    4a04        .J      LDR      r2,[pc,#16] ; [0x20005e8c] = 0x20005dab
        0x20005e7a:    4b05        .K      LDR      r3,[pc,#20] ; [0x20005e90] = 0x20005dd9
        0x20005e7c:    6383        .c      STR      r3,[r0,#0x38]
        0x20005e7e:    63c2        .c      STR      r2,[r0,#0x3c]
        0x20005e80:    6401        .d      STR      r1,[r0,#0x40]
        0x20005e82:    4770        pG      BX       lr
    $d.4
    __arm_cp.3_0
        0x20005e84:    20000b50    P..     DCD    536873808
    __arm_cp.3_1
        0x20005e88:    20005e07    .^.     DCD    536894983
    __arm_cp.3_2
        0x20005e8c:    20005dab    .].     DCD    536894891
    __arm_cp.3_3
        0x20005e90:    20005dd9    .].     DCD    536894937
    $t.16
    patch_llp
        0x20005e94:    4770        pG      BX       lr
        0x20005e96:    0000        ..      MOVS     r0,r0
    patch_llp_adv_fragment_start
        0x20005e98:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20005e9a:    b084        ..      SUB      sp,sp,#0x10
        0x20005e9c:    2800        .(      CMP      r0,#0
        0x20005e9e:    d008        ..      BEQ      0x20005eb2 ; patch_llp_adv_fragment_start + 26
        0x20005ea0:    4604        .F      MOV      r4,r0
        0x20005ea2:    6881        .h      LDR      r1,[r0,#8]
        0x20005ea4:    2002        .       MOVS     r0,#2
        0x20005ea6:    f001f97f    ....    BL       $Ven$TT$L$$rom_llp_hw_set_work_time_us ; 0x200071a8
        0x20005eaa:    2800        .(      CMP      r0,#0
        0x20005eac:    d004        ..      BEQ      0x20005eb8 ; patch_llp_adv_fragment_start + 32
        0x20005eae:    b004        ..      ADD      sp,sp,#0x10
        0x20005eb0:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20005eb2:    2004        .       MOVS     r0,#4
        0x20005eb4:    b004        ..      ADD      sp,sp,#0x10
        0x20005eb6:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20005eb8:    89e3        ..      LDRH     r3,[r4,#0xe]
        0x20005eba:    89a2        ..      LDRH     r2,[r4,#0xc]
        0x20005ebc:    7c60        `|      LDRB     r0,[r4,#0x11]
        0x20005ebe:    4601        .F      MOV      r1,r0
        0x20005ec0:    f001f978    ..x.    BL       $Ven$TT$L$$rom_llp_hw_set_ifs ; 0x200071b4
        0x20005ec4:    2800        .(      CMP      r0,#0
        0x20005ec6:    d1f2        ..      BNE      0x20005eae ; patch_llp_adv_fragment_start + 22
        0x20005ec8:    6962        bi      LDR      r2,[r4,#0x14]
        0x20005eca:    69a3        .i      LDR      r3,[r4,#0x18]
        0x20005ecc:    7c21        !|      LDRB     r1,[r4,#0x10]
        0x20005ece:    7c60        `|      LDRB     r0,[r4,#0x11]
        0x20005ed0:    2501        .%      MOVS     r5,#1
        0x20005ed2:    9500        ..      STR      r5,[sp,#0]
        0x20005ed4:    9001        ..      STR      r0,[sp,#4]
        0x20005ed6:    9002        ..      STR      r0,[sp,#8]
        0x20005ed8:    2500        .%      MOVS     r5,#0
        0x20005eda:    4628        (F      MOV      r0,r5
        0x20005edc:    f001f970    ..p.    BL       $Ven$TT$L$$rom_llp_hw_set_trx_param ; 0x200071c0
        0x20005ee0:    2800        .(      CMP      r0,#0
        0x20005ee2:    d1e4        ..      BNE      0x20005eae ; patch_llp_adv_fragment_start + 22
        0x20005ee4:    6a20         j      LDR      r0,[r4,#0x20]
        0x20005ee6:    f001f971    ..q.    BL       $Ven$TT$L$$rom_llp_hw_set_tx_pdu ; 0x200071cc
        0x20005eea:    2800        .(      CMP      r0,#0
        0x20005eec:    d1df        ..      BNE      0x20005eae ; patch_llp_adv_fragment_start + 22
        0x20005eee:    8ba1        ..      LDRH     r1,[r4,#0x1c]
        0x20005ef0:    6a60        `j      LDR      r0,[r4,#0x24]
        0x20005ef2:    f001f971    ..q.    BL       $Ven$TT$L$$rom_llp_hw_set_rx_pdu ; 0x200071d8
        0x20005ef6:    2800        .(      CMP      r0,#0
        0x20005ef8:    d1d9        ..      BNE      0x20005eae ; patch_llp_adv_fragment_start + 22
        0x20005efa:    4806        .H      LDR      r0,[pc,#24] ; [0x20005f14] = 0x20000d0c
        0x20005efc:    7005        .p      STRB     r5,[r0,#0]
        0x20005efe:    7c62        b|      LDRB     r2,[r4,#0x11]
        0x20005f00:    cc03        ..      LDM      r4!,{r0,r1}
        0x20005f02:    f001f96f    ..o.    BL       $Ven$TT$L$$rom_llp_hw_set_trt_mode_start_time ; 0x200071e4
        0x20005f06:    2800        .(      CMP      r0,#0
        0x20005f08:    d1d1        ..      BNE      0x20005eae ; patch_llp_adv_fragment_start + 22
        0x20005f0a:    f001f971    ..q.    BL       $Ven$TT$L$$rom_llp_hw_set_adv_mode ; 0x200071f0
        0x20005f0e:    4628        (F      MOV      r0,r5
        0x20005f10:    b004        ..      ADD      sp,sp,#0x10
        0x20005f12:    bdb0        ..      POP      {r4,r5,r7,pc}
    $d.1
    __arm_cp.0_0
        0x20005f14:    20000d0c    ...     DCD    536874252
    $t.2
    patch_llp_hook_prefix_sleep_is_system_sleep_allowed
        0x20005f18:    b570        p.      PUSH     {r4-r6,lr}
        0x20005f1a:    2601        .&      MOVS     r6,#1
        0x20005f1c:    7006        .p      STRB     r6,[r0,#0]
        0x20005f1e:    4827        'H      LDR      r0,[pc,#156] ; [0x20005fbc] = 0x2000095f
        0x20005f20:    7800        .x      LDRB     r0,[r0,#0]
        0x20005f22:    2400        .$      MOVS     r4,#0
        0x20005f24:    2800        .(      CMP      r0,#0
        0x20005f26:    d001        ..      BEQ      0x20005f2c ; patch_llp_hook_prefix_sleep_is_system_sleep_allowed + 20
        0x20005f28:    4620         F      MOV      r0,r4
        0x20005f2a:    bd70        p.      POP      {r4-r6,pc}
        0x20005f2c:    f3ef8510    ....    MRS      r5,PRIMASK
        0x20005f30:    f3ef8010    ....    MRS      r0,PRIMASK
        0x20005f34:    b672        r.      CPSID    i
        0x20005f36:    f001f961    ..a.    BL       $Ven$TT$L$$rom_llp_is_idle ; 0x200071fc
        0x20005f3a:    2800        .(      CMP      r0,#0
        0x20005f3c:    d00c        ..      BEQ      0x20005f58 ; patch_llp_hook_prefix_sleep_is_system_sleep_allowed + 64
        0x20005f3e:    4c34        4L      LDR      r4,[pc,#208] ; [0x20006010] = 0x2000095b
        0x20005f40:    7820         x      LDRB     r0,[r4,#0]
        0x20005f42:    2800        .(      CMP      r0,#0
        0x20005f44:    d104        ..      BNE      0x20005f50 ; patch_llp_hook_prefix_sleep_is_system_sleep_allowed + 56
        0x20005f46:    481f        .H      LDR      r0,[pc,#124] ; [0x20005fc4] = 0x1fffffff
        0x20005f48:    f001f95e    ..^.    BL       $Ven$TT$L$$rom_llp_hw_sleep_cycles_of_low_clk ; 0x20007208
        0x20005f4c:    2001        .       MOVS     r0,#1
        0x20005f4e:    7020         p      STRB     r0,[r4,#0]
        0x20005f50:    f3858810    ....    MSR      PRIMASK,r5
        0x20005f54:    2001        .       MOVS     r0,#1
        0x20005f56:    bd70        p.      POP      {r4-r6,pc}
        0x20005f58:    492f        /I      LDR      r1,[pc,#188] ; [0x20006018] = 0x400001e8
        0x20005f5a:    4608        .F      MOV      r0,r1
        0x20005f5c:    3868        h8      SUBS     r0,r0,#0x68
        0x20005f5e:    6800        .h      LDR      r0,[r0,#0]
        0x20005f60:    4a2b        +J      LDR      r2,[pc,#172] ; [0x20006010] = 0x2000095b
        0x20005f62:    7812        .x      LDRB     r2,[r2,#0]
        0x20005f64:    2a00        .*      CMP      r2,#0
        0x20005f66:    d01d        ..      BEQ      0x20005fa4 ; patch_llp_hook_prefix_sleep_is_system_sleep_allowed + 140
        0x20005f68:    4030        0@      ANDS     r0,r0,r6
        0x20005f6a:    d01b        ..      BEQ      0x20005fa4 ; patch_llp_hook_prefix_sleep_is_system_sleep_allowed + 140
        0x20005f6c:    2205        ."      MOVS     r2,#5
        0x20005f6e:    6808        .h      LDR      r0,[r1,#0]
        0x20005f70:    680b        .h      LDR      r3,[r1,#0]
        0x20005f72:    4298        .B      CMP      r0,r3
        0x20005f74:    d004        ..      BEQ      0x20005f80 ; patch_llp_hook_prefix_sleep_is_system_sleep_allowed + 104
        0x20005f76:    1e53        S.      SUBS     r3,r2,#1
        0x20005f78:    0612        ..      LSLS     r2,r2,#24
        0x20005f7a:    461a        .F      MOV      r2,r3
        0x20005f7c:    d1f7        ..      BNE      0x20005f6e ; patch_llp_hook_prefix_sleep_is_system_sleep_allowed + 86
        0x20005f7e:    22ff        ."      MOVS     r2,#0xff
        0x20005f80:    0611        ..      LSLS     r1,r2,#24
        0x20005f82:    d013        ..      BEQ      0x20005fac ; patch_llp_hook_prefix_sleep_is_system_sleep_allowed + 148
        0x20005f84:    4923        #I      LDR      r1,[pc,#140] ; [0x20006014] = 0x40000080
        0x20005f86:    6809        .h      LDR      r1,[r1,#0]
        0x20005f88:    4281        .B      CMP      r1,r0
        0x20005f8a:    d913        ..      BLS      0x20005fb4 ; patch_llp_hook_prefix_sleep_is_system_sleep_allowed + 156
        0x20005f8c:    4a0c        .J      LDR      r2,[pc,#48] ; [0x20005fc0] = 0x20000822
        0x20005f8e:    8812        ..      LDRH     r2,[r2,#0]
        0x20005f90:    f3858810    ....    MSR      PRIMASK,r5
        0x20005f94:    1a08        ..      SUBS     r0,r1,r0
        0x20005f96:    0951        Q.      LSRS     r1,r2,#5
        0x20005f98:    4288        .B      CMP      r0,r1
        0x20005f9a:    d800        ..      BHI      0x20005f9e ; patch_llp_hook_prefix_sleep_is_system_sleep_allowed + 134
        0x20005f9c:    2600        .&      MOVS     r6,#0
        0x20005f9e:    4634        4F      MOV      r4,r6
        0x20005fa0:    4620         F      MOV      r0,r4
        0x20005fa2:    bd70        p.      POP      {r4-r6,pc}
        0x20005fa4:    f3858810    ....    MSR      PRIMASK,r5
        0x20005fa8:    4620         F      MOV      r0,r4
        0x20005faa:    bd70        p.      POP      {r4-r6,pc}
        0x20005fac:    f3858810    ....    MSR      PRIMASK,r5
        0x20005fb0:    4620         F      MOV      r0,r4
        0x20005fb2:    bd70        p.      POP      {r4-r6,pc}
        0x20005fb4:    f3858810    ....    MSR      PRIMASK,r5
        0x20005fb8:    4620         F      MOV      r0,r4
        0x20005fba:    bd70        p.      POP      {r4-r6,pc}
    $d.3
    __arm_cp.1_0
        0x20005fbc:    2000095f    _..     DCD    536873311
    __arm_cp.1_4
        0x20005fc0:    20000822    "..     DCD    536872994
    __arm_cp.1_5
        0x20005fc4:    1fffffff    ....    DCD    536870911
    $t.0
    patch_llp_hook_prefix_sleep_wakeup
        0x20005fc8:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20005fca:    2101        .!      MOVS     r1,#1
        0x20005fcc:    7001        .p      STRB     r1,[r0,#0]
        0x20005fce:    f3ef8410    ....    MRS      r4,PRIMASK
        0x20005fd2:    f3ef8010    ....    MRS      r0,PRIMASK
        0x20005fd6:    b672        r.      CPSID    i
        0x20005fd8:    4d0d        .M      LDR      r5,[pc,#52] ; [0x20006010] = 0x2000095b
        0x20005fda:    7828        (x      LDRB     r0,[r5,#0]
        0x20005fdc:    2800        .(      CMP      r0,#0
        0x20005fde:    d013        ..      BEQ      0x20006008 ; patch_llp_hook_prefix_sleep_wakeup + 64
        0x20005fe0:    480c        .H      LDR      r0,[pc,#48] ; [0x20006014] = 0x40000080
        0x20005fe2:    6800        .h      LDR      r0,[r0,#0]
        0x20005fe4:    490c        .I      LDR      r1,[pc,#48] ; [0x20006018] = 0x400001e8
        0x20005fe6:    6809        .h      LDR      r1,[r1,#0]
        0x20005fe8:    4281        .B      CMP      r1,r0
        0x20005fea:    d205        ..      BCS      0x20005ff8 ; patch_llp_hook_prefix_sleep_wakeup + 48
        0x20005fec:    1d49        I.      ADDS     r1,r1,#5
        0x20005fee:    4281        .B      CMP      r1,r0
        0x20005ff0:    d204        ..      BCS      0x20005ffc ; patch_llp_hook_prefix_sleep_wakeup + 52
        0x20005ff2:    f001f90f    ....    BL       $Ven$TT$L$$rom_llp_hw_wakeup ; 0x20007214
        0x20005ff6:    e005        ..      B        0x20006004 ; patch_llp_hook_prefix_sleep_wakeup + 60
        0x20005ff8:    2064        d       MOVS     r0,#0x64
        0x20005ffa:    e001        ..      B        0x20006000 ; patch_llp_hook_prefix_sleep_wakeup + 56
        0x20005ffc:    204b        K       MOVS     r0,#0x4b
        0x20005ffe:    0080        ..      LSLS     r0,r0,#2
        0x20006000:    f000fcfa    ....    BL       $Ven$TT$L$$rom_delay_us ; 0x200069f8
        0x20006004:    2000        .       MOVS     r0,#0
        0x20006006:    7028        (p      STRB     r0,[r5,#0]
        0x20006008:    f3848810    ....    MSR      PRIMASK,r4
        0x2000600c:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x2000600e:    46c0        .F      MOV      r8,r8
    $d.1
    __arm_cp.0_0
        0x20006010:    2000095b    [..     DCD    536873307
    __arm_cp.0_1
        0x20006014:    40000080    ...@    DCD    1073741952
    __arm_cp.0_2
        0x20006018:    400001e8    ...@    DCD    1073742312
    $t.0
    patch_llp_initiator_fragment_start
        0x2000601c:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x2000601e:    b084        ..      SUB      sp,sp,#0x10
        0x20006020:    2800        .(      CMP      r0,#0
        0x20006022:    d008        ..      BEQ      0x20006036 ; patch_llp_initiator_fragment_start + 26
        0x20006024:    4604        .F      MOV      r4,r0
        0x20006026:    6881        .h      LDR      r1,[r0,#8]
        0x20006028:    2004        .       MOVS     r0,#4
        0x2000602a:    f001f8bd    ....    BL       $Ven$TT$L$$rom_llp_hw_set_work_time_us ; 0x200071a8
        0x2000602e:    2800        .(      CMP      r0,#0
        0x20006030:    d004        ..      BEQ      0x2000603c ; patch_llp_initiator_fragment_start + 32
        0x20006032:    b004        ..      ADD      sp,sp,#0x10
        0x20006034:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20006036:    2004        .       MOVS     r0,#4
        0x20006038:    b004        ..      ADD      sp,sp,#0x10
        0x2000603a:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x2000603c:    89e3        ..      LDRH     r3,[r4,#0xe]
        0x2000603e:    89a2        ..      LDRH     r2,[r4,#0xc]
        0x20006040:    7c60        `|      LDRB     r0,[r4,#0x11]
        0x20006042:    4601        .F      MOV      r1,r0
        0x20006044:    f001f8b6    ....    BL       $Ven$TT$L$$rom_llp_hw_set_ifs ; 0x200071b4
        0x20006048:    2800        .(      CMP      r0,#0
        0x2000604a:    d1f2        ..      BNE      0x20006032 ; patch_llp_initiator_fragment_start + 22
        0x2000604c:    6962        bi      LDR      r2,[r4,#0x14]
        0x2000604e:    69a3        .i      LDR      r3,[r4,#0x18]
        0x20006050:    7c21        !|      LDRB     r1,[r4,#0x10]
        0x20006052:    7c60        `|      LDRB     r0,[r4,#0x11]
        0x20006054:    2501        .%      MOVS     r5,#1
        0x20006056:    9500        ..      STR      r5,[sp,#0]
        0x20006058:    9001        ..      STR      r0,[sp,#4]
        0x2000605a:    9002        ..      STR      r0,[sp,#8]
        0x2000605c:    2500        .%      MOVS     r5,#0
        0x2000605e:    4628        (F      MOV      r0,r5
        0x20006060:    f001f8ae    ....    BL       $Ven$TT$L$$rom_llp_hw_set_trx_param ; 0x200071c0
        0x20006064:    2800        .(      CMP      r0,#0
        0x20006066:    d1e4        ..      BNE      0x20006032 ; patch_llp_initiator_fragment_start + 22
        0x20006068:    6a20         j      LDR      r0,[r4,#0x20]
        0x2000606a:    f001f8af    ....    BL       $Ven$TT$L$$rom_llp_hw_set_tx_pdu ; 0x200071cc
        0x2000606e:    2800        .(      CMP      r0,#0
        0x20006070:    d1df        ..      BNE      0x20006032 ; patch_llp_initiator_fragment_start + 22
        0x20006072:    8ba1        ..      LDRH     r1,[r4,#0x1c]
        0x20006074:    6a60        `j      LDR      r0,[r4,#0x24]
        0x20006076:    f001f8af    ....    BL       $Ven$TT$L$$rom_llp_hw_set_rx_pdu ; 0x200071d8
        0x2000607a:    2800        .(      CMP      r0,#0
        0x2000607c:    d1d9        ..      BNE      0x20006032 ; patch_llp_initiator_fragment_start + 22
        0x2000607e:    cc03        ..      LDM      r4!,{r0,r1}
        0x20006080:    7a62        bz      LDRB     r2,[r4,#9]
        0x20006082:    f001f8cd    ....    BL       $Ven$TT$L$$rom_llp_hw_set_rtr_mode_start_time ; 0x20007220
        0x20006086:    2800        .(      CMP      r0,#0
        0x20006088:    d1d3        ..      BNE      0x20006032 ; patch_llp_initiator_fragment_start + 22
        0x2000608a:    4803        .H      LDR      r0,[pc,#12] ; [0x20006098] = 0x20000d9c
        0x2000608c:    7005        .p      STRB     r5,[r0,#0]
        0x2000608e:    f001f8cd    ....    BL       $Ven$TT$L$$rom_llp_hw_set_init_mode ; 0x2000722c
        0x20006092:    4628        (F      MOV      r0,r5
        0x20006094:    b004        ..      ADD      sp,sp,#0x10
        0x20006096:    bdb0        ..      POP      {r4,r5,r7,pc}
    $d.1
    __arm_cp.0_0
        0x20006098:    20000d9c    ...     DCD    536874396
    $t.0
    patch_llp_master_fragment_start
        0x2000609c:    b570        p.      PUSH     {r4-r6,lr}
        0x2000609e:    b084        ..      SUB      sp,sp,#0x10
        0x200060a0:    2800        .(      CMP      r0,#0
        0x200060a2:    d008        ..      BEQ      0x200060b6 ; patch_llp_master_fragment_start + 26
        0x200060a4:    4604        .F      MOV      r4,r0
        0x200060a6:    6881        .h      LDR      r1,[r0,#8]
        0x200060a8:    2006        .       MOVS     r0,#6
        0x200060aa:    f001f87d    ..}.    BL       $Ven$TT$L$$rom_llp_hw_set_work_time_us ; 0x200071a8
        0x200060ae:    2800        .(      CMP      r0,#0
        0x200060b0:    d004        ..      BEQ      0x200060bc ; patch_llp_master_fragment_start + 32
        0x200060b2:    b004        ..      ADD      sp,sp,#0x10
        0x200060b4:    bd70        p.      POP      {r4-r6,pc}
        0x200060b6:    2004        .       MOVS     r0,#4
        0x200060b8:    b004        ..      ADD      sp,sp,#0x10
        0x200060ba:    bd70        p.      POP      {r4-r6,pc}
        0x200060bc:    89e3        ..      LDRH     r3,[r4,#0xe]
        0x200060be:    89a2        ..      LDRH     r2,[r4,#0xc]
        0x200060c0:    7ca1        .|      LDRB     r1,[r4,#0x12]
        0x200060c2:    7c60        `|      LDRB     r0,[r4,#0x11]
        0x200060c4:    f001f876    ..v.    BL       $Ven$TT$L$$rom_llp_hw_set_ifs ; 0x200071b4
        0x200060c8:    2800        .(      CMP      r0,#0
        0x200060ca:    d1f2        ..      BNE      0x200060b2 ; patch_llp_master_fragment_start + 22
        0x200060cc:    6962        bi      LDR      r2,[r4,#0x14]
        0x200060ce:    69a3        .i      LDR      r3,[r4,#0x18]
        0x200060d0:    7c21        !|      LDRB     r1,[r4,#0x10]
        0x200060d2:    7c60        `|      LDRB     r0,[r4,#0x11]
        0x200060d4:    7ca5        .|      LDRB     r5,[r4,#0x12]
        0x200060d6:    2601        .&      MOVS     r6,#1
        0x200060d8:    9600        ..      STR      r6,[sp,#0]
        0x200060da:    9001        ..      STR      r0,[sp,#4]
        0x200060dc:    9502        ..      STR      r5,[sp,#8]
        0x200060de:    2500        .%      MOVS     r5,#0
        0x200060e0:    4628        (F      MOV      r0,r5
        0x200060e2:    f001f86d    ..m.    BL       $Ven$TT$L$$rom_llp_hw_set_trx_param ; 0x200071c0
        0x200060e6:    2800        .(      CMP      r0,#0
        0x200060e8:    d1e3        ..      BNE      0x200060b2 ; patch_llp_master_fragment_start + 22
        0x200060ea:    6a20         j      LDR      r0,[r4,#0x20]
        0x200060ec:    f001f86e    ..n.    BL       $Ven$TT$L$$rom_llp_hw_set_tx_pdu ; 0x200071cc
        0x200060f0:    2800        .(      CMP      r0,#0
        0x200060f2:    d1de        ..      BNE      0x200060b2 ; patch_llp_master_fragment_start + 22
        0x200060f4:    8ba1        ..      LDRH     r1,[r4,#0x1c]
        0x200060f6:    6a60        `j      LDR      r0,[r4,#0x24]
        0x200060f8:    f001f86e    ..n.    BL       $Ven$TT$L$$rom_llp_hw_set_rx_pdu ; 0x200071d8
        0x200060fc:    2800        .(      CMP      r0,#0
        0x200060fe:    d1d8        ..      BNE      0x200060b2 ; patch_llp_master_fragment_start + 22
        0x20006100:    cc03        ..      LDM      r4!,{r0,r1}
        0x20006102:    7a62        bz      LDRB     r2,[r4,#9]
        0x20006104:    f001f86e    ..n.    BL       $Ven$TT$L$$rom_llp_hw_set_trt_mode_start_time ; 0x200071e4
        0x20006108:    2800        .(      CMP      r0,#0
        0x2000610a:    d1d2        ..      BNE      0x200060b2 ; patch_llp_master_fragment_start + 22
        0x2000610c:    4803        .H      LDR      r0,[pc,#12] ; [0x2000611c] = 0x20000d9d
        0x2000610e:    7005        .p      STRB     r5,[r0,#0]
        0x20006110:    f001f892    ....    BL       $Ven$TT$L$$rom_llp_hw_set_master_mode ; 0x20007238
        0x20006114:    4628        (F      MOV      r0,r5
        0x20006116:    b004        ..      ADD      sp,sp,#0x10
        0x20006118:    bd70        p.      POP      {r4-r6,pc}
        0x2000611a:    46c0        .F      MOV      r8,r8
    $d.1
    __arm_cp.0_0
        0x2000611c:    20000d9d    ...     DCD    536874397
    $t.0
    patch_llp_scan_fragment_start
        0x20006120:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20006122:    b084        ..      SUB      sp,sp,#0x10
        0x20006124:    2800        .(      CMP      r0,#0
        0x20006126:    d008        ..      BEQ      0x2000613a ; patch_llp_scan_fragment_start + 26
        0x20006128:    4604        .F      MOV      r4,r0
        0x2000612a:    6881        .h      LDR      r1,[r0,#8]
        0x2000612c:    2003        .       MOVS     r0,#3
        0x2000612e:    f001f83b    ..;.    BL       $Ven$TT$L$$rom_llp_hw_set_work_time_us ; 0x200071a8
        0x20006132:    2800        .(      CMP      r0,#0
        0x20006134:    d004        ..      BEQ      0x20006140 ; patch_llp_scan_fragment_start + 32
        0x20006136:    b004        ..      ADD      sp,sp,#0x10
        0x20006138:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x2000613a:    2004        .       MOVS     r0,#4
        0x2000613c:    b004        ..      ADD      sp,sp,#0x10
        0x2000613e:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20006140:    89e3        ..      LDRH     r3,[r4,#0xe]
        0x20006142:    89a2        ..      LDRH     r2,[r4,#0xc]
        0x20006144:    7c60        `|      LDRB     r0,[r4,#0x11]
        0x20006146:    4601        .F      MOV      r1,r0
        0x20006148:    f001f834    ..4.    BL       $Ven$TT$L$$rom_llp_hw_set_ifs ; 0x200071b4
        0x2000614c:    2800        .(      CMP      r0,#0
        0x2000614e:    d1f2        ..      BNE      0x20006136 ; patch_llp_scan_fragment_start + 22
        0x20006150:    6962        bi      LDR      r2,[r4,#0x14]
        0x20006152:    69a3        .i      LDR      r3,[r4,#0x18]
        0x20006154:    7c21        !|      LDRB     r1,[r4,#0x10]
        0x20006156:    7c60        `|      LDRB     r0,[r4,#0x11]
        0x20006158:    2501        .%      MOVS     r5,#1
        0x2000615a:    9500        ..      STR      r5,[sp,#0]
        0x2000615c:    9001        ..      STR      r0,[sp,#4]
        0x2000615e:    9002        ..      STR      r0,[sp,#8]
        0x20006160:    2500        .%      MOVS     r5,#0
        0x20006162:    4628        (F      MOV      r0,r5
        0x20006164:    f001f82c    ..,.    BL       $Ven$TT$L$$rom_llp_hw_set_trx_param ; 0x200071c0
        0x20006168:    2800        .(      CMP      r0,#0
        0x2000616a:    d1e4        ..      BNE      0x20006136 ; patch_llp_scan_fragment_start + 22
        0x2000616c:    6a20         j      LDR      r0,[r4,#0x20]
        0x2000616e:    f001f82d    ..-.    BL       $Ven$TT$L$$rom_llp_hw_set_tx_pdu ; 0x200071cc
        0x20006172:    2800        .(      CMP      r0,#0
        0x20006174:    d1df        ..      BNE      0x20006136 ; patch_llp_scan_fragment_start + 22
        0x20006176:    8ba1        ..      LDRH     r1,[r4,#0x1c]
        0x20006178:    6a60        `j      LDR      r0,[r4,#0x24]
        0x2000617a:    f001f82d    ..-.    BL       $Ven$TT$L$$rom_llp_hw_set_rx_pdu ; 0x200071d8
        0x2000617e:    2800        .(      CMP      r0,#0
        0x20006180:    d1d9        ..      BNE      0x20006136 ; patch_llp_scan_fragment_start + 22
        0x20006182:    cc03        ..      LDM      r4!,{r0,r1}
        0x20006184:    7a62        bz      LDRB     r2,[r4,#9]
        0x20006186:    f001f84b    ..K.    BL       $Ven$TT$L$$rom_llp_hw_set_rtr_mode_start_time ; 0x20007220
        0x2000618a:    2800        .(      CMP      r0,#0
        0x2000618c:    d1d3        ..      BNE      0x20006136 ; patch_llp_scan_fragment_start + 22
        0x2000618e:    4803        .H      LDR      r0,[pc,#12] ; [0x2000619c] = 0x20000dbc
        0x20006190:    7005        .p      STRB     r5,[r0,#0]
        0x20006192:    f001f857    ..W.    BL       $Ven$TT$L$$rom_llp_hw_set_scan_mode ; 0x20007244
        0x20006196:    4628        (F      MOV      r0,r5
        0x20006198:    b004        ..      ADD      sp,sp,#0x10
        0x2000619a:    bdb0        ..      POP      {r4,r5,r7,pc}
    $d.1
    __arm_cp.0_0
        0x2000619c:    20000dbc    ...     DCD    536874428
    $t.0
    patch_llp_slave_fragment_start
        0x200061a0:    b570        p.      PUSH     {r4-r6,lr}
        0x200061a2:    b084        ..      SUB      sp,sp,#0x10
        0x200061a4:    2800        .(      CMP      r0,#0
        0x200061a6:    d008        ..      BEQ      0x200061ba ; patch_llp_slave_fragment_start + 26
        0x200061a8:    4604        .F      MOV      r4,r0
        0x200061aa:    6881        .h      LDR      r1,[r0,#8]
        0x200061ac:    2005        .       MOVS     r0,#5
        0x200061ae:    f000fffb    ....    BL       $Ven$TT$L$$rom_llp_hw_set_work_time_us ; 0x200071a8
        0x200061b2:    2800        .(      CMP      r0,#0
        0x200061b4:    d004        ..      BEQ      0x200061c0 ; patch_llp_slave_fragment_start + 32
        0x200061b6:    b004        ..      ADD      sp,sp,#0x10
        0x200061b8:    bd70        p.      POP      {r4-r6,pc}
        0x200061ba:    2004        .       MOVS     r0,#4
        0x200061bc:    b004        ..      ADD      sp,sp,#0x10
        0x200061be:    bd70        p.      POP      {r4-r6,pc}
        0x200061c0:    8a63        c.      LDRH     r3,[r4,#0x12]
        0x200061c2:    8a22        ".      LDRH     r2,[r4,#0x10]
        0x200061c4:    7da1        .}      LDRB     r1,[r4,#0x16]
        0x200061c6:    7d60        `}      LDRB     r0,[r4,#0x15]
        0x200061c8:    f000fff4    ....    BL       $Ven$TT$L$$rom_llp_hw_set_ifs ; 0x200071b4
        0x200061cc:    2800        .(      CMP      r0,#0
        0x200061ce:    d1f2        ..      BNE      0x200061b6 ; patch_llp_slave_fragment_start + 22
        0x200061d0:    7da1        .}      LDRB     r1,[r4,#0x16]
        0x200061d2:    68e0        .h      LDR      r0,[r4,#0xc]
        0x200061d4:    f001f83c    ..<.    BL       $Ven$TT$L$$rom_llp_hw_set_slave_rx_window ; 0x20007250
        0x200061d8:    2800        .(      CMP      r0,#0
        0x200061da:    d1ec        ..      BNE      0x200061b6 ; patch_llp_slave_fragment_start + 22
        0x200061dc:    69a2        .i      LDR      r2,[r4,#0x18]
        0x200061de:    69e3        .i      LDR      r3,[r4,#0x1c]
        0x200061e0:    7d21        !}      LDRB     r1,[r4,#0x14]
        0x200061e2:    7d60        `}      LDRB     r0,[r4,#0x15]
        0x200061e4:    7da5        .}      LDRB     r5,[r4,#0x16]
        0x200061e6:    2601        .&      MOVS     r6,#1
        0x200061e8:    9600        ..      STR      r6,[sp,#0]
        0x200061ea:    9001        ..      STR      r0,[sp,#4]
        0x200061ec:    9502        ..      STR      r5,[sp,#8]
        0x200061ee:    2500        .%      MOVS     r5,#0
        0x200061f0:    4628        (F      MOV      r0,r5
        0x200061f2:    f000ffe5    ....    BL       $Ven$TT$L$$rom_llp_hw_set_trx_param ; 0x200071c0
        0x200061f6:    2800        .(      CMP      r0,#0
        0x200061f8:    d1dd        ..      BNE      0x200061b6 ; patch_llp_slave_fragment_start + 22
        0x200061fa:    6a60        `j      LDR      r0,[r4,#0x24]
        0x200061fc:    f000ffe6    ....    BL       $Ven$TT$L$$rom_llp_hw_set_tx_pdu ; 0x200071cc
        0x20006200:    2800        .(      CMP      r0,#0
        0x20006202:    d1d8        ..      BNE      0x200061b6 ; patch_llp_slave_fragment_start + 22
        0x20006204:    8c21        !.      LDRH     r1,[r4,#0x20]
        0x20006206:    6aa0        .j      LDR      r0,[r4,#0x28]
        0x20006208:    f000ffe6    ....    BL       $Ven$TT$L$$rom_llp_hw_set_rx_pdu ; 0x200071d8
        0x2000620c:    2800        .(      CMP      r0,#0
        0x2000620e:    d1d2        ..      BNE      0x200061b6 ; patch_llp_slave_fragment_start + 22
        0x20006210:    cc03        ..      LDM      r4!,{r0,r1}
        0x20006212:    7ba2        .{      LDRB     r2,[r4,#0xe]
        0x20006214:    f001f804    ....    BL       $Ven$TT$L$$rom_llp_hw_set_rtr_mode_start_time ; 0x20007220
        0x20006218:    2800        .(      CMP      r0,#0
        0x2000621a:    d1cc        ..      BNE      0x200061b6 ; patch_llp_slave_fragment_start + 22
        0x2000621c:    4803        .H      LDR      r0,[pc,#12] ; [0x2000622c] = 0x20000dbd
        0x2000621e:    7005        .p      STRB     r5,[r0,#0]
        0x20006220:    f001f81c    ....    BL       $Ven$TT$L$$rom_llp_hw_set_slave_mode ; 0x2000725c
        0x20006224:    4628        (F      MOV      r0,r5
        0x20006226:    b004        ..      ADD      sp,sp,#0x10
        0x20006228:    bd70        p.      POP      {r4-r6,pc}
        0x2000622a:    46c0        .F      MOV      r8,r8
    $d.1
    __arm_cp.0_0
        0x2000622c:    20000dbd    ...     DCD    536874429
    $t.4
    patch_llp_sleep
        0x20006230:    4802        .H      LDR      r0,[pc,#8] ; [0x2000623c] = 0x20000d20
        0x20006232:    4903        .I      LDR      r1,[pc,#12] ; [0x20006240] = 0x20005fc9
        0x20006234:    6481        .d      STR      r1,[r0,#0x48]
        0x20006236:    4903        .I      LDR      r1,[pc,#12] ; [0x20006244] = 0x20005f19
        0x20006238:    6541        Ae      STR      r1,[r0,#0x54]
        0x2000623a:    4770        pG      BX       lr
    $d.5
    __arm_cp.2_0
        0x2000623c:    20000d20     ..     DCD    536874272
    __arm_cp.2_1
        0x20006240:    20005fc9    ._.     DCD    536895433
    __arm_cp.2_2
        0x20006244:    20005f19    ._.     DCD    536895257
    $t.0
    patch_llp_start_adv_fragment
        0x20006248:    b570        p.      PUSH     {r4-r6,lr}
        0x2000624a:    4605        .F      MOV      r5,r0
        0x2000624c:    4e55        UN      LDR      r6,[pc,#340] ; [0x200063a4] = 0x20000dc0
        0x2000624e:    6830        0h      LDR      r0,[r6,#0]
        0x20006250:    2800        .(      CMP      r0,#0
        0x20006252:    d001        ..      BEQ      0x20006258 ; patch_llp_start_adv_fragment + 16
        0x20006254:    2001        .       MOVS     r0,#1
        0x20006256:    bd70        p.      POP      {r4-r6,pc}
        0x20006258:    f001f806    ....    BL       $Ven$TT$L$$rom_llp_sleep_wakeup ; 0x20007268
        0x2000625c:    4628        (F      MOV      r0,r5
        0x2000625e:    f7fffe1b    ....    BL       patch_llp_adv_fragment_start ; 0x20005e98
        0x20006262:    4604        .F      MOV      r4,r0
        0x20006264:    2800        .(      CMP      r0,#0
        0x20006266:    d001        ..      BEQ      0x2000626c ; patch_llp_start_adv_fragment + 36
        0x20006268:    4620         F      MOV      r0,r4
        0x2000626a:    bd70        p.      POP      {r4-r6,pc}
        0x2000626c:    4803        .H      LDR      r0,[pc,#12] ; [0x2000627c] = 0x22784
        0x2000626e:    6030        0`      STR      r0,[r6,#0]
        0x20006270:    cd03        ..      LDM      r5!,{r0,r1}
        0x20006272:    f000ffff    ....    BL       $Ven$TT$L$$rom_llp_sleep_on_fragment_config_succeed ; 0x20007274
        0x20006276:    4620         F      MOV      r0,r4
        0x20006278:    bd70        p.      POP      {r4-r6,pc}
        0x2000627a:    46c0        .F      MOV      r8,r8
    $d.1
    __arm_cp.0_1
        0x2000627c:    00022784    .'..    DCD    141188
    $t.4
    patch_llp_start_init_fragment
        0x20006280:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20006282:    b081        ..      SUB      sp,sp,#4
        0x20006284:    4604        .F      MOV      r4,r0
        0x20006286:    4f47        GO      LDR      r7,[pc,#284] ; [0x200063a4] = 0x20000dc0
        0x20006288:    6838        8h      LDR      r0,[r7,#0]
        0x2000628a:    2800        .(      CMP      r0,#0
        0x2000628c:    d001        ..      BEQ      0x20006292 ; patch_llp_start_init_fragment + 18
        0x2000628e:    2601        .&      MOVS     r6,#1
        0x20006290:    e01e        ..      B        0x200062d0 ; patch_llp_start_init_fragment + 80
        0x20006292:    f000ffe9    ....    BL       $Ven$TT$L$$rom_llp_sleep_wakeup ; 0x20007268
        0x20006296:    cc03        ..      LDM      r4!,{r0,r1}
        0x20006298:    7a63        cz      LDRB     r3,[r4,#9]
        0x2000629a:    2500        .%      MOVS     r5,#0
        0x2000629c:    462a        *F      MOV      r2,r5
        0x2000629e:    3c08        .<      SUBS     r4,r4,#8
        0x200062a0:    f000ffee    ....    BL       $Ven$TT$L$$rom_llp_scan_init_start_time_adjust ; 0x20007280
        0x200062a4:    c403        ..      STM      r4!,{r0,r1}
        0x200062a6:    6820         h      LDR      r0,[r4,#0]
        0x200062a8:    7a62        bz      LDRB     r2,[r4,#9]
        0x200062aa:    4629        )F      MOV      r1,r5
        0x200062ac:    3c08        .<      SUBS     r4,r4,#8
        0x200062ae:    f000ffed    ....    BL       $Ven$TT$L$$rom_llp_scan_init_work_time_adjust ; 0x2000728c
        0x200062b2:    60a0        .`      STR      r0,[r4,#8]
        0x200062b4:    4620         F      MOV      r0,r4
        0x200062b6:    f7fffeb1    ....    BL       patch_llp_initiator_fragment_start ; 0x2000601c
        0x200062ba:    4606        .F      MOV      r6,r0
        0x200062bc:    4628        (F      MOV      r0,r5
        0x200062be:    f000ffeb    ....    BL       $Ven$TT$L$$rom_llp_scan_init_mode_rx_en_time_adjust ; 0x20007298
        0x200062c2:    2e00        ..      CMP      r6,#0
        0x200062c4:    d104        ..      BNE      0x200062d0 ; patch_llp_start_init_fragment + 80
        0x200062c6:    4804        .H      LDR      r0,[pc,#16] ; [0x200062d8] = 0x227d4
        0x200062c8:    6038        8`      STR      r0,[r7,#0]
        0x200062ca:    cc03        ..      LDM      r4!,{r0,r1}
        0x200062cc:    f000ffd2    ....    BL       $Ven$TT$L$$rom_llp_sleep_on_fragment_config_succeed ; 0x20007274
        0x200062d0:    4630        0F      MOV      r0,r6
        0x200062d2:    b001        ..      ADD      sp,sp,#4
        0x200062d4:    bdf0        ..      POP      {r4-r7,pc}
        0x200062d6:    46c0        .F      MOV      r8,r8
    $d.5
    __arm_cp.2_1
        0x200062d8:    000227d4    .'..    DCD    141268
    $t.8
    patch_llp_start_master_fragment
        0x200062dc:    b570        p.      PUSH     {r4-r6,lr}
        0x200062de:    4605        .F      MOV      r5,r0
        0x200062e0:    4e30        0N      LDR      r6,[pc,#192] ; [0x200063a4] = 0x20000dc0
        0x200062e2:    6830        0h      LDR      r0,[r6,#0]
        0x200062e4:    2800        .(      CMP      r0,#0
        0x200062e6:    d001        ..      BEQ      0x200062ec ; patch_llp_start_master_fragment + 16
        0x200062e8:    2001        .       MOVS     r0,#1
        0x200062ea:    bd70        p.      POP      {r4-r6,pc}
        0x200062ec:    f000ffbc    ....    BL       $Ven$TT$L$$rom_llp_sleep_wakeup ; 0x20007268
        0x200062f0:    4628        (F      MOV      r0,r5
        0x200062f2:    f7fffed3    ....    BL       patch_llp_master_fragment_start ; 0x2000609c
        0x200062f6:    4604        .F      MOV      r4,r0
        0x200062f8:    2800        .(      CMP      r0,#0
        0x200062fa:    d001        ..      BEQ      0x20006300 ; patch_llp_start_master_fragment + 36
        0x200062fc:    4620         F      MOV      r0,r4
        0x200062fe:    bd70        p.      POP      {r4-r6,pc}
        0x20006300:    4803        .H      LDR      r0,[pc,#12] ; [0x20006310] = 0x227e4
        0x20006302:    6030        0`      STR      r0,[r6,#0]
        0x20006304:    cd03        ..      LDM      r5!,{r0,r1}
        0x20006306:    f000ffb5    ....    BL       $Ven$TT$L$$rom_llp_sleep_on_fragment_config_succeed ; 0x20007274
        0x2000630a:    4620         F      MOV      r0,r4
        0x2000630c:    bd70        p.      POP      {r4-r6,pc}
        0x2000630e:    46c0        .F      MOV      r8,r8
    $d.9
    __arm_cp.4_1
        0x20006310:    000227e4    .'..    DCD    141284
    $t.2
    patch_llp_start_scan_fragment
        0x20006314:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20006316:    b081        ..      SUB      sp,sp,#4
        0x20006318:    4604        .F      MOV      r4,r0
        0x2000631a:    4f22        "O      LDR      r7,[pc,#136] ; [0x200063a4] = 0x20000dc0
        0x2000631c:    6838        8h      LDR      r0,[r7,#0]
        0x2000631e:    2800        .(      CMP      r0,#0
        0x20006320:    d001        ..      BEQ      0x20006326 ; patch_llp_start_scan_fragment + 18
        0x20006322:    2601        .&      MOVS     r6,#1
        0x20006324:    e01e        ..      B        0x20006364 ; patch_llp_start_scan_fragment + 80
        0x20006326:    f000ff9f    ....    BL       $Ven$TT$L$$rom_llp_sleep_wakeup ; 0x20007268
        0x2000632a:    cc03        ..      LDM      r4!,{r0,r1}
        0x2000632c:    7a63        cz      LDRB     r3,[r4,#9]
        0x2000632e:    2500        .%      MOVS     r5,#0
        0x20006330:    462a        *F      MOV      r2,r5
        0x20006332:    3c08        .<      SUBS     r4,r4,#8
        0x20006334:    f000ffa4    ....    BL       $Ven$TT$L$$rom_llp_scan_init_start_time_adjust ; 0x20007280
        0x20006338:    c403        ..      STM      r4!,{r0,r1}
        0x2000633a:    6820         h      LDR      r0,[r4,#0]
        0x2000633c:    7a62        bz      LDRB     r2,[r4,#9]
        0x2000633e:    4629        )F      MOV      r1,r5
        0x20006340:    3c08        .<      SUBS     r4,r4,#8
        0x20006342:    f000ffa3    ....    BL       $Ven$TT$L$$rom_llp_scan_init_work_time_adjust ; 0x2000728c
        0x20006346:    60a0        .`      STR      r0,[r4,#8]
        0x20006348:    4620         F      MOV      r0,r4
        0x2000634a:    f7fffee9    ....    BL       patch_llp_scan_fragment_start ; 0x20006120
        0x2000634e:    4606        .F      MOV      r6,r0
        0x20006350:    4628        (F      MOV      r0,r5
        0x20006352:    f000ffa1    ....    BL       $Ven$TT$L$$rom_llp_scan_init_mode_rx_en_time_adjust ; 0x20007298
        0x20006356:    2e00        ..      CMP      r6,#0
        0x20006358:    d104        ..      BNE      0x20006364 ; patch_llp_start_scan_fragment + 80
        0x2000635a:    4804        .H      LDR      r0,[pc,#16] ; [0x2000636c] = 0x227f4
        0x2000635c:    6038        8`      STR      r0,[r7,#0]
        0x2000635e:    cc03        ..      LDM      r4!,{r0,r1}
        0x20006360:    f000ff88    ....    BL       $Ven$TT$L$$rom_llp_sleep_on_fragment_config_succeed ; 0x20007274
        0x20006364:    4630        0F      MOV      r0,r6
        0x20006366:    b001        ..      ADD      sp,sp,#4
        0x20006368:    bdf0        ..      POP      {r4-r7,pc}
        0x2000636a:    46c0        .F      MOV      r8,r8
    $d.3
    __arm_cp.1_1
        0x2000636c:    000227f4    .'..    DCD    141300
    $t.6
    patch_llp_start_slave_fragment
        0x20006370:    b570        p.      PUSH     {r4-r6,lr}
        0x20006372:    4605        .F      MOV      r5,r0
        0x20006374:    4e0b        .N      LDR      r6,[pc,#44] ; [0x200063a4] = 0x20000dc0
        0x20006376:    6830        0h      LDR      r0,[r6,#0]
        0x20006378:    2800        .(      CMP      r0,#0
        0x2000637a:    d001        ..      BEQ      0x20006380 ; patch_llp_start_slave_fragment + 16
        0x2000637c:    2001        .       MOVS     r0,#1
        0x2000637e:    bd70        p.      POP      {r4-r6,pc}
        0x20006380:    f000ff72    ..r.    BL       $Ven$TT$L$$rom_llp_sleep_wakeup ; 0x20007268
        0x20006384:    4628        (F      MOV      r0,r5
        0x20006386:    f7ffff0b    ....    BL       patch_llp_slave_fragment_start ; 0x200061a0
        0x2000638a:    4604        .F      MOV      r4,r0
        0x2000638c:    2800        .(      CMP      r0,#0
        0x2000638e:    d001        ..      BEQ      0x20006394 ; patch_llp_start_slave_fragment + 36
        0x20006390:    4620         F      MOV      r0,r4
        0x20006392:    bd70        p.      POP      {r4-r6,pc}
        0x20006394:    4804        .H      LDR      r0,[pc,#16] ; [0x200063a8] = 0x22804
        0x20006396:    6030        0`      STR      r0,[r6,#0]
        0x20006398:    cd03        ..      LDM      r5!,{r0,r1}
        0x2000639a:    f000ff6b    ..k.    BL       $Ven$TT$L$$rom_llp_sleep_on_fragment_config_succeed ; 0x20007274
        0x2000639e:    4620         F      MOV      r0,r4
        0x200063a0:    bd70        p.      POP      {r4-r6,pc}
        0x200063a2:    46c0        .F      MOV      r8,r8
    $d.7
    __arm_cp.3_0
        0x200063a4:    20000dc0    ...     DCD    536874432
    __arm_cp.3_1
        0x200063a8:    00022804    .(..    DCD    141316
    $t.0
    patch_on_prefix_llc_ctrl_procedure_check_and_init_peer_initiated_procedure_by_first_pdu
        0x200063ac:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x200063ae:    2301        .#      MOVS     r3,#1
        0x200063b0:    7003        .p      STRB     r3,[r0,#0]
        0x200063b2:    68d0        .h      LDR      r0,[r2,#0xc]
        0x200063b4:    7804        .x      LDRB     r4,[r0,#0]
        0x200063b6:    2000        .       MOVS     r0,#0
        0x200063b8:    2c16        .,      CMP      r4,#0x16
        0x200063ba:    d835        5.      BHI      0x20006428 ; patch_on_prefix_llc_ctrl_procedure_check_and_init_peer_initiated_procedure_by_first_pdu + 124
        0x200063bc:    2371        q#      MOVS     r3,#0x71
        0x200063be:    00db        ..      LSLS     r3,r3,#3
        0x200063c0:    18cb        ..      ADDS     r3,r1,r3
        0x200063c2:    46c0        .F      MOV      r8,r8
        0x200063c4:    447c        |D      ADD      r4,r4,pc
        0x200063c6:    7924        $y      LDRB     r4,[r4,#4]
        0x200063c8:    0064        d.      LSLS     r4,r4,#1
        0x200063ca:    44a7        .D      ADD      pc,pc,r4
    $d.1
        0x200063cc:    0b2d1a15    ..-.    DCD    187505173
        0x200063d0:    2d2d2d2d    ----    DCD    757935405
        0x200063d4:    2d0b2d10    .-.-    DCD    755707152
        0x200063d8:    2d102d1f    .-.-    DCD    756034847
        0x200063dc:    2d2d2d2d    ----    DCD    757935405
        0x200063e0:    00292d24    $-).    DCD    2698532
    $t.2
        0x200063e4:    4608        .F      MOV      r0,r1
        0x200063e6:    4619        .F      MOV      r1,r3
        0x200063e8:    f000ff5c    ..\.    BL       $Ven$TT$L$$rom_llc_encryption_procedure_peer_initiated_init ; 0x200072a4
        0x200063ec:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x200063ee:    4608        .F      MOV      r0,r1
        0x200063f0:    4619        .F      MOV      r1,r3
        0x200063f2:    f7fffb7d    ..}.    BL       patch_llc_feature_exchange_procedure_peer_initiated_init ; 0x20005af0
        0x200063f6:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x200063f8:    4608        .F      MOV      r0,r1
        0x200063fa:    4619        .F      MOV      r1,r3
        0x200063fc:    f000ff58    ..X.    BL       $Ven$TT$L$$rom_llc_connection_update_procedure_peer_initiated_init ; 0x200072b0
        0x20006400:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20006402:    4608        .F      MOV      r0,r1
        0x20006404:    4619        .F      MOV      r1,r3
        0x20006406:    f000ff59    ..Y.    BL       $Ven$TT$L$$rom_llc_channel_map_update_procedure_peer_initiated_init ; 0x200072bc
        0x2000640a:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x2000640c:    4608        .F      MOV      r0,r1
        0x2000640e:    4619        .F      MOV      r1,r3
        0x20006410:    f000ff5a    ..Z.    BL       $Ven$TT$L$$rom_llc_version_exchange_procedure_peer_initiated_init ; 0x200072c8
        0x20006414:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20006416:    4608        .F      MOV      r0,r1
        0x20006418:    4619        .F      MOV      r1,r3
        0x2000641a:    f000ff5b    ..[.    BL       $Ven$TT$L$$rom_llc_data_length_update_procedure_peer_initiated_init ; 0x200072d4
        0x2000641e:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20006420:    4608        .F      MOV      r0,r1
        0x20006422:    4619        .F      MOV      r1,r3
        0x20006424:    f000ff5c    ..\.    BL       $Ven$TT$L$$rom_llc_phy_update_procedure_peer_initiated_init ; 0x200072e0
        0x20006428:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x2000642a:    0000        ..      MOVS     r0,r0
    $t
    rf_init
        0x2000642c:    b580        ..      PUSH     {r7,lr}
        0x2000642e:    f000ff5d    ..].    BL       $Ven$TT$L$$rom_hal_rf_cali_init ; 0x200072ec
        0x20006432:    f000ff61    ..a.    BL       $Ven$TT$L$$rom_hal_rf_tx_cali ; 0x200072f8
        0x20006436:    f000ff65    ..e.    BL       $Ven$TT$L$$rom_hal_rf_rx_cali ; 0x20007304
        0x2000643a:    2800        .(      CMP      r0,#0
        0x2000643c:    d000        ..      BEQ      0x20006440 ; rf_init + 20
        0x2000643e:    bd80        ..      POP      {r7,pc}
        0x20006440:    f000ff66    ..f.    BL       $Ven$TT$L$$rom_hal_rf_rx_dc_cal_sweep ; 0x20007310
        0x20006444:    4805        .H      LDR      r0,[pc,#20] ; [0x2000645c] = 0x1f520
        0x20006446:    f000ff69    ..i.    BL       $Ven$TT$L$$rom_hal_rf_tx_power_table_init ; 0x2000731c
        0x2000644a:    2002        .       MOVS     r0,#2
        0x2000644c:    f000fd1a    ....    BL       $Ven$TT$L$$rom_hal_rf_tx_power_set ; 0x20006e84
        0x20006450:    200b        .       MOVS     r0,#0xb
        0x20006452:    f000ff69    ..i.    BL       $Ven$TT$L$$rom_hw_rf_tx_pa_h2_config ; 0x20007328
        0x20006456:    2000        .       MOVS     r0,#0
        0x20006458:    bd80        ..      POP      {r7,pc}
        0x2000645a:    46c0        .F      MOV      r8,r8
    $d
    __arm_cp.0_0
        0x2000645c:    0001f520     ...    DCD    128288
    $t.4
    rom_llc_ext_adv_get_instance_by_index
        0x20006460:    4908        .I      LDR      r1,[pc,#32] ; [0x20006484] = 0x20009280
        0x20006462:    6809        .h      LDR      r1,[r1,#0]
        0x20006464:    4a0a        .J      LDR      r2,[pc,#40] ; [0x20006490] = 0x2000a55a
        0x20006466:    7812        .x      LDRB     r2,[r2,#0]
        0x20006468:    4282        .B      CMP      r2,r0
        0x2000646a:    d803        ..      BHI      0x20006474 ; rom_llc_ext_adv_get_instance_by_index + 20
        0x2000646c:    2000        .       MOVS     r0,#0
        0x2000646e:    2900        .)      CMP      r1,#0
        0x20006470:    d107        ..      BNE      0x20006482 ; rom_llc_ext_adv_get_instance_by_index + 34
        0x20006472:    e005        ..      B        0x20006480 ; rom_llc_ext_adv_get_instance_by_index + 32
        0x20006474:    2235        5"      MOVS     r2,#0x35
        0x20006476:    00d2        ..      LSLS     r2,r2,#3
        0x20006478:    4342        BC      MULS     r2,r0,r2
        0x2000647a:    1888        ..      ADDS     r0,r1,r2
        0x2000647c:    2900        .)      CMP      r1,#0
        0x2000647e:    d100        ..      BNE      0x20006482 ; rom_llc_ext_adv_get_instance_by_index + 34
        0x20006480:    4608        .F      MOV      r0,r1
        0x20006482:    4770        pG      BX       lr
    $d.5
    __arm_cp.2_0
        0x20006484:    20009280    ...     DCD    536908416
    $t.2
    rom_llc_ext_adv_get_num
        0x20006488:    4801        .H      LDR      r0,[pc,#4] ; [0x20006490] = 0x2000a55a
        0x2000648a:    7800        .x      LDRB     r0,[r0,#0]
        0x2000648c:    4770        pG      BX       lr
        0x2000648e:    46c0        .F      MOV      r8,r8
    $d.3
    __arm_cp.1_0
        0x20006490:    2000a55a    Z..     DCD    536913242
    $t.48
    rom_llc_ext_adv_is_any_advertising_set_enabled
        0x20006494:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20006496:    b081        ..      SUB      sp,sp,#4
        0x20006498:    f7fffff6    ....    BL       rom_llc_ext_adv_get_num ; 0x20006488
        0x2000649c:    2800        .(      CMP      r0,#0
        0x2000649e:    d027        '.      BEQ      0x200064f0 ; rom_llc_ext_adv_is_any_advertising_set_enabled + 92
        0x200064a0:    4604        .F      MOV      r4,r0
        0x200064a2:    2500        .%      MOVS     r5,#0
        0x200064a4:    2601        .&      MOVS     r6,#1
        0x200064a6:    b2e8        ..      UXTB     r0,r5
        0x200064a8:    f7ffffda    ....    BL       rom_llc_ext_adv_get_instance_by_index ; 0x20006460
        0x200064ac:    2800        .(      CMP      r0,#0
        0x200064ae:    d00f        ..      BEQ      0x200064d0 ; rom_llc_ext_adv_is_any_advertising_set_enabled + 60
        0x200064b0:    3099        .0      ADDS     r0,r0,#0x99
        0x200064b2:    7801        .x      LDRB     r1,[r0,#0]
        0x200064b4:    2900        .)      CMP      r1,#0
        0x200064b6:    d007        ..      BEQ      0x200064c8 ; rom_llc_ext_adv_is_any_advertising_set_enabled + 52
        0x200064b8:    7840        @x      LDRB     r0,[r0,#1]
        0x200064ba:    2800        .(      CMP      r0,#0
        0x200064bc:    d004        ..      BEQ      0x200064c8 ; rom_llc_ext_adv_is_any_advertising_set_enabled + 52
        0x200064be:    2000        .       MOVS     r0,#0
        0x200064c0:    4637        7F      MOV      r7,r6
        0x200064c2:    2800        .(      CMP      r0,#0
        0x200064c4:    d10f        ..      BNE      0x200064e6 ; rom_llc_ext_adv_is_any_advertising_set_enabled + 82
        0x200064c6:    e014        ..      B        0x200064f2 ; rom_llc_ext_adv_is_any_advertising_set_enabled + 94
        0x200064c8:    4630        0F      MOV      r0,r6
        0x200064ca:    2800        .(      CMP      r0,#0
        0x200064cc:    d10b        ..      BNE      0x200064e6 ; rom_llc_ext_adv_is_any_advertising_set_enabled + 82
        0x200064ce:    e010        ..      B        0x200064f2 ; rom_llc_ext_adv_is_any_advertising_set_enabled + 94
        0x200064d0:    2091        .       MOVS     r0,#0x91
        0x200064d2:    0101        ..      LSLS     r1,r0,#4
        0x200064d4:    201e        .       MOVS     r0,#0x1e
        0x200064d6:    462a        *F      MOV      r2,r5
        0x200064d8:    4623        #F      MOV      r3,r4
        0x200064da:    f000fe59    ..Y.    BL       $Ven$TT$L$$system_error ; 0x20007190
        0x200064de:    2700        .'      MOVS     r7,#0
        0x200064e0:    4638        8F      MOV      r0,r7
        0x200064e2:    2800        .(      CMP      r0,#0
        0x200064e4:    d005        ..      BEQ      0x200064f2 ; rom_llc_ext_adv_is_any_advertising_set_enabled + 94
        0x200064e6:    1c6d        m.      ADDS     r5,r5,#1
        0x200064e8:    42ac        .B      CMP      r4,r5
        0x200064ea:    d1dc        ..      BNE      0x200064a6 ; rom_llc_ext_adv_is_any_advertising_set_enabled + 18
        0x200064ec:    2700        .'      MOVS     r7,#0
        0x200064ee:    e000        ..      B        0x200064f2 ; rom_llc_ext_adv_is_any_advertising_set_enabled + 94
        0x200064f0:    2700        .'      MOVS     r7,#0
        0x200064f2:    2001        .       MOVS     r0,#1
        0x200064f4:    4038        8@      ANDS     r0,r0,r7
        0x200064f6:    b001        ..      ADD      sp,sp,#4
        0x200064f8:    bdf0        ..      POP      {r4-r7,pc}
        0x200064fa:    0000        ..      MOVS     r0,r0
    rom_llc_ext_adv_is_white_list_in_use
        0x200064fc:    b5f0        ..      PUSH     {r4-r7,lr}
        0x200064fe:    b081        ..      SUB      sp,sp,#4
        0x20006500:    f7ffffc2    ....    BL       rom_llc_ext_adv_get_num ; 0x20006488
        0x20006504:    2800        .(      CMP      r0,#0
        0x20006506:    d028        (.      BEQ      0x2000655a ; rom_llc_ext_adv_is_white_list_in_use + 94
        0x20006508:    4604        .F      MOV      r4,r0
        0x2000650a:    2500        .%      MOVS     r5,#0
        0x2000650c:    2601        .&      MOVS     r6,#1
        0x2000650e:    b2e8        ..      UXTB     r0,r5
        0x20006510:    f7ffffa6    ....    BL       rom_llc_ext_adv_get_instance_by_index ; 0x20006460
        0x20006514:    2800        .(      CMP      r0,#0
        0x20006516:    d00d        ..      BEQ      0x20006534 ; rom_llc_ext_adv_is_white_list_in_use + 56
        0x20006518:    308d        .0      ADDS     r0,r0,#0x8d
        0x2000651a:    7b01        .{      LDRB     r1,[r0,#0xc]
        0x2000651c:    2900        .)      CMP      r1,#0
        0x2000651e:    d005        ..      BEQ      0x2000652c ; rom_llc_ext_adv_is_white_list_in_use + 48
        0x20006520:    7b41        A{      LDRB     r1,[r0,#0xd]
        0x20006522:    2900        .)      CMP      r1,#0
        0x20006524:    d002        ..      BEQ      0x2000652c ; rom_llc_ext_adv_is_white_list_in_use + 48
        0x20006526:    7800        .x      LDRB     r0,[r0,#0]
        0x20006528:    2800        .(      CMP      r0,#0
        0x2000652a:    d011        ..      BEQ      0x20006550 ; rom_llc_ext_adv_is_white_list_in_use + 84
        0x2000652c:    4630        0F      MOV      r0,r6
        0x2000652e:    2800        .(      CMP      r0,#0
        0x20006530:    d10a        ..      BNE      0x20006548 ; rom_llc_ext_adv_is_white_list_in_use + 76
        0x20006532:    e015        ..      B        0x20006560 ; rom_llc_ext_adv_is_white_list_in_use + 100
        0x20006534:    201e        .       MOVS     r0,#0x1e
        0x20006536:    490c        .I      LDR      r1,[pc,#48] ; [0x20006568] = 0x926
        0x20006538:    462a        *F      MOV      r2,r5
        0x2000653a:    4623        #F      MOV      r3,r4
        0x2000653c:    f000fe28    ..(.    BL       $Ven$TT$L$$system_error ; 0x20007190
        0x20006540:    2700        .'      MOVS     r7,#0
        0x20006542:    4638        8F      MOV      r0,r7
        0x20006544:    2800        .(      CMP      r0,#0
        0x20006546:    d00b        ..      BEQ      0x20006560 ; rom_llc_ext_adv_is_white_list_in_use + 100
        0x20006548:    1c6d        m.      ADDS     r5,r5,#1
        0x2000654a:    42ac        .B      CMP      r4,r5
        0x2000654c:    d1df        ..      BNE      0x2000650e ; rom_llc_ext_adv_is_white_list_in_use + 18
        0x2000654e:    e006        ..      B        0x2000655e ; rom_llc_ext_adv_is_white_list_in_use + 98
        0x20006550:    2000        .       MOVS     r0,#0
        0x20006552:    4637        7F      MOV      r7,r6
        0x20006554:    2800        .(      CMP      r0,#0
        0x20006556:    d1f7        ..      BNE      0x20006548 ; rom_llc_ext_adv_is_white_list_in_use + 76
        0x20006558:    e002        ..      B        0x20006560 ; rom_llc_ext_adv_is_white_list_in_use + 100
        0x2000655a:    2700        .'      MOVS     r7,#0
        0x2000655c:    e000        ..      B        0x20006560 ; rom_llc_ext_adv_is_white_list_in_use + 100
        0x2000655e:    2700        .'      MOVS     r7,#0
        0x20006560:    2001        .       MOVS     r0,#1
        0x20006562:    4038        8@      ANDS     r0,r0,r7
        0x20006564:    b001        ..      ADD      sp,sp,#4
        0x20006566:    bdf0        ..      POP      {r4-r7,pc}
    $d.50
    __arm_cp.27_0
        0x20006568:    00000926    &...    DCD    2342
    $t.10
    rom_llc_ext_initiator_get_instance
        0x2000656c:    4801        .H      LDR      r0,[pc,#4] ; [0x20006574] = 0x20009284
        0x2000656e:    6800        .h      LDR      r0,[r0,#0]
        0x20006570:    4770        pG      BX       lr
        0x20006572:    46c0        .F      MOV      r8,r8
    $d.11
    __arm_cp.7_0
        0x20006574:    20009284    ...     DCD    536908420
    $t.13
    rom_llc_ext_initiator_is_enabled
        0x20006578:    b580        ..      PUSH     {r7,lr}
        0x2000657a:    f7fffff7    ....    BL       rom_llc_ext_initiator_get_instance ; 0x2000656c
        0x2000657e:    2800        .(      CMP      r0,#0
        0x20006580:    d005        ..      BEQ      0x2000658e ; rom_llc_ext_initiator_is_enabled + 22
        0x20006582:    2133        3!      MOVS     r1,#0x33
        0x20006584:    00c9        ..      LSLS     r1,r1,#3
        0x20006586:    5c40        @\      LDRB     r0,[r0,r1]
        0x20006588:    1e41        A.      SUBS     r1,r0,#1
        0x2000658a:    4188        .A      SBCS     r0,r0,r1
        0x2000658c:    bd80        ..      POP      {r7,pc}
        0x2000658e:    2000        .       MOVS     r0,#0
        0x20006590:    bd80        ..      POP      {r7,pc}
    rom_llc_ext_initiator_is_white_list_in_use
        0x20006592:    b580        ..      PUSH     {r7,lr}
        0x20006594:    f7ffffea    ....    BL       rom_llc_ext_initiator_get_instance ; 0x2000656c
        0x20006598:    4601        .F      MOV      r1,r0
        0x2000659a:    2000        .       MOVS     r0,#0
        0x2000659c:    2900        .)      CMP      r1,#0
        0x2000659e:    d00a        ..      BEQ      0x200065b6 ; rom_llc_ext_initiator_is_white_list_in_use + 36
        0x200065a0:    2233        3"      MOVS     r2,#0x33
        0x200065a2:    00d2        ..      LSLS     r2,r2,#3
        0x200065a4:    188a        ..      ADDS     r2,r1,r2
        0x200065a6:    7812        .x      LDRB     r2,[r2,#0]
        0x200065a8:    2a00        .*      CMP      r2,#0
        0x200065aa:    d004        ..      BEQ      0x200065b6 ; rom_llc_ext_initiator_is_white_list_in_use + 36
        0x200065ac:    3191        .1      ADDS     r1,r1,#0x91
        0x200065ae:    7808        .x      LDRB     r0,[r1,#0]
        0x200065b0:    1e41        A.      SUBS     r1,r0,#1
        0x200065b2:    4248        HB      RSBS     r0,r1,#0
        0x200065b4:    4148        HA      ADCS     r0,r0,r1
        0x200065b6:    bd80        ..      POP      {r7,pc}
    rom_llc_ext_scan_get_instance
        0x200065b8:    4801        .H      LDR      r0,[pc,#4] ; [0x200065c0] = 0x20009288
        0x200065ba:    6800        .h      LDR      r0,[r0,#0]
        0x200065bc:    4770        pG      BX       lr
        0x200065be:    46c0        .F      MOV      r8,r8
    $d.11
    __arm_cp.7_0
        0x200065c0:    20009288    ...     DCD    536908424
    $t.13
    rom_llc_ext_scan_is_enabled
        0x200065c4:    b580        ..      PUSH     {r7,lr}
        0x200065c6:    f7fffff7    ....    BL       rom_llc_ext_scan_get_instance ; 0x200065b8
        0x200065ca:    2800        .(      CMP      r0,#0
        0x200065cc:    d005        ..      BEQ      0x200065da ; rom_llc_ext_scan_is_enabled + 22
        0x200065ce:    2147        G!      MOVS     r1,#0x47
        0x200065d0:    0089        ..      LSLS     r1,r1,#2
        0x200065d2:    5c40        @\      LDRB     r0,[r0,r1]
        0x200065d4:    1e41        A.      SUBS     r1,r0,#1
        0x200065d6:    4188        .A      SBCS     r0,r0,r1
        0x200065d8:    bd80        ..      POP      {r7,pc}
        0x200065da:    2000        .       MOVS     r0,#0
        0x200065dc:    bd80        ..      POP      {r7,pc}
    rom_llc_ext_scan_is_white_list_in_use
        0x200065de:    b580        ..      PUSH     {r7,lr}
        0x200065e0:    f7ffffea    ....    BL       rom_llc_ext_scan_get_instance ; 0x200065b8
        0x200065e4:    4601        .F      MOV      r1,r0
        0x200065e6:    2000        .       MOVS     r0,#0
        0x200065e8:    2900        .)      CMP      r1,#0
        0x200065ea:    d00c        ..      BEQ      0x20006606 ; rom_llc_ext_scan_is_white_list_in_use + 40
        0x200065ec:    2247        G"      MOVS     r2,#0x47
        0x200065ee:    0092        ..      LSLS     r2,r2,#2
        0x200065f0:    188a        ..      ADDS     r2,r1,r2
        0x200065f2:    7812        .x      LDRB     r2,[r2,#0]
        0x200065f4:    2a00        .*      CMP      r2,#0
        0x200065f6:    d006        ..      BEQ      0x20006606 ; rom_llc_ext_scan_is_white_list_in_use + 40
        0x200065f8:    31a5        .1      ADDS     r1,r1,#0xa5
        0x200065fa:    7809        .x      LDRB     r1,[r1,#0]
        0x200065fc:    2202        ."      MOVS     r2,#2
        0x200065fe:    430a        .C      ORRS     r2,r2,r1
        0x20006600:    2a03        .*      CMP      r2,#3
        0x20006602:    d100        ..      BNE      0x20006606 ; rom_llc_ext_scan_is_white_list_in_use + 40
        0x20006604:    2001        .       MOVS     r0,#1
        0x20006606:    bd80        ..      POP      {r7,pc}
    rom_llc_priority_ext_adv_on_event_added
        0x20006608:    4770        pG      BX       lr
    rom_llc_priority_ext_adv_on_event_blocked
        0x2000660a:    4770        pG      BX       lr
    rom_llc_priority_ext_adv_on_event_config_failed
        0x2000660c:    4770        pG      BX       lr
    rom_llc_priority_ext_adv_on_event_stopped
        0x2000660e:    4770        pG      BX       lr
    rom_llc_priority_ext_initiator_on_event_added
        0x20006610:    2117        .!      MOVS     r1,#0x17
        0x20006612:    7481        .t      STRB     r1,[r0,#0x12]
        0x20006614:    4770        pG      BX       lr
    rom_llc_priority_ext_initiator_on_event_blocked
        0x20006616:    4770        pG      BX       lr
    rom_llc_priority_ext_initiator_on_event_config_failed
        0x20006618:    4770        pG      BX       lr
    rom_llc_priority_ext_initiator_on_event_stopped
        0x2000661a:    4770        pG      BX       lr
    rom_llc_priority_ext_scan_on_event_added
        0x2000661c:    21ff        .!      MOVS     r1,#0xff
        0x2000661e:    3174        t1      ADDS     r1,r1,#0x74
        0x20006620:    6b82        .k      LDR      r2,[r0,#0x38]
        0x20006622:    2364        d#      MOVS     r3,#0x64
        0x20006624:    5453        ST      STRB     r3,[r2,r1]
        0x20006626:    7483        .t      STRB     r3,[r0,#0x12]
        0x20006628:    1850        P.      ADDS     r0,r2,r1
        0x2000662a:    2119        .!      MOVS     r1,#0x19
        0x2000662c:    7041        Ap      STRB     r1,[r0,#1]
        0x2000662e:    4770        pG      BX       lr
    rom_llc_priority_ext_scan_on_event_blocked
        0x20006630:    b570        p.      PUSH     {r4-r6,lr}
        0x20006632:    460a        .F      MOV      r2,r1
        0x20006634:    4604        .F      MOV      r4,r0
        0x20006636:    21ff        .!      MOVS     r1,#0xff
        0x20006638:    4608        .F      MOV      r0,r1
        0x2000663a:    3020         0      ADDS     r0,r0,#0x20
        0x2000663c:    6ba3        .k      LDR      r3,[r4,#0x38]
        0x2000663e:    181e        ..      ADDS     r6,r3,r0
        0x20006640:    20b9        .       MOVS     r0,#0xb9
        0x20006642:    0040        @.      LSLS     r0,r0,#1
        0x20006644:    181d        ..      ADDS     r5,r3,r0
        0x20006646:    5c18        .\      LDRB     r0,[r3,r0]
        0x20006648:    2800        .(      CMP      r0,#0
        0x2000664a:    d007        ..      BEQ      0x2000665c ; rom_llc_priority_ext_scan_on_event_blocked + 44
        0x2000664c:    2aff        .*      CMP      r2,#0xff
        0x2000664e:    d800        ..      BHI      0x20006652 ; rom_llc_priority_ext_scan_on_event_blocked + 34
        0x20006650:    b2d1        ..      UXTB     r1,r2
        0x20006652:    7868        hx      LDRB     r0,[r5,#1]
        0x20006654:    221a        ."      MOVS     r2,#0x1a
        0x20006656:    f000f836    ..6.    BL       rom_llc_priority_get_sub_level ; 0x200066c6
        0x2000665a:    7068        hp      STRB     r0,[r5,#1]
        0x2000665c:    7830        0x      LDRB     r0,[r6,#0]
        0x2000665e:    2800        .(      CMP      r0,#0
        0x20006660:    d001        ..      BEQ      0x20006666 ; rom_llc_priority_ext_scan_on_event_blocked + 54
        0x20006662:    2001        .       MOVS     r0,#1
        0x20006664:    e000        ..      B        0x20006668 ; rom_llc_priority_ext_scan_on_event_blocked + 56
        0x20006666:    2002        .       MOVS     r0,#2
        0x20006668:    5c28        (\      LDRB     r0,[r5,r0]
        0x2000666a:    74a0        .t      STRB     r0,[r4,#0x12]
        0x2000666c:    bd70        p.      POP      {r4-r6,pc}
    rom_llc_priority_ext_scan_on_event_config_failed
        0x2000666e:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20006670:    4604        .F      MOV      r4,r0
        0x20006672:    20ff        .       MOVS     r0,#0xff
        0x20006674:    6ba1        .k      LDR      r1,[r4,#0x38]
        0x20006676:    4602        .F      MOV      r2,r0
        0x20006678:    3220         2      ADDS     r2,r2,#0x20
        0x2000667a:    5c8a        .\      LDRB     r2,[r1,r2]
        0x2000667c:    2a00        .*      CMP      r2,#0
        0x2000667e:    d008        ..      BEQ      0x20006692 ; rom_llc_priority_ext_scan_on_event_config_failed + 36
        0x20006680:    3074        t0      ADDS     r0,r0,#0x74
        0x20006682:    180d        ..      ADDS     r5,r1,r0
        0x20006684:    7828        (x      LDRB     r0,[r5,#0]
        0x20006686:    2101        .!      MOVS     r1,#1
        0x20006688:    221a        ."      MOVS     r2,#0x1a
        0x2000668a:    f000f81c    ....    BL       rom_llc_priority_get_sub_level ; 0x200066c6
        0x2000668e:    7028        (p      STRB     r0,[r5,#0]
        0x20006690:    74a0        .t      STRB     r0,[r4,#0x12]
        0x20006692:    bdb0        ..      POP      {r4,r5,r7,pc}
    rom_llc_priority_ext_scan_on_event_stopped
        0x20006694:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20006696:    4604        .F      MOV      r4,r0
        0x20006698:    20ff        .       MOVS     r0,#0xff
        0x2000669a:    6ba1        .k      LDR      r1,[r4,#0x38]
        0x2000669c:    4602        .F      MOV      r2,r0
        0x2000669e:    3220         2      ADDS     r2,r2,#0x20
        0x200066a0:    5c8a        .\      LDRB     r2,[r1,r2]
        0x200066a2:    2a00        .*      CMP      r2,#0
        0x200066a4:    d008        ..      BEQ      0x200066b8 ; rom_llc_priority_ext_scan_on_event_stopped + 36
        0x200066a6:    3074        t0      ADDS     r0,r0,#0x74
        0x200066a8:    180d        ..      ADDS     r5,r1,r0
        0x200066aa:    7828        (x      LDRB     r0,[r5,#0]
        0x200066ac:    2132        2!      MOVS     r1,#0x32
        0x200066ae:    2264        d"      MOVS     r2,#0x64
        0x200066b0:    f000f803    ....    BL       rom_llc_priority_get_add_level ; 0x200066ba
        0x200066b4:    7028        (p      STRB     r0,[r5,#0]
        0x200066b6:    74a0        .t      STRB     r0,[r4,#0x12]
        0x200066b8:    bdb0        ..      POP      {r4,r5,r7,pc}
    rom_llc_priority_get_add_level
        0x200066ba:    1840        @.      ADDS     r0,r0,r1
        0x200066bc:    4290        .B      CMP      r0,r2
        0x200066be:    d800        ..      BHI      0x200066c2 ; rom_llc_priority_get_add_level + 8
        0x200066c0:    4602        .F      MOV      r2,r0
        0x200066c2:    b2d0        ..      UXTB     r0,r2
        0x200066c4:    4770        pG      BX       lr
    rom_llc_priority_get_sub_level
        0x200066c6:    1853        S.      ADDS     r3,r2,r1
        0x200066c8:    4283        .B      CMP      r3,r0
        0x200066ca:    d200        ..      BCS      0x200066ce ; rom_llc_priority_get_sub_level + 8
        0x200066cc:    1a42        B.      SUBS     r2,r0,r1
        0x200066ce:    b2d0        ..      UXTB     r0,r2
        0x200066d0:    4770        pG      BX       lr
        0x200066d2:    0000        ..      MOVS     r0,r0
    $t
    send_msg_to_bleStackTask
        0x200066d4:    b5f0        ..      PUSH     {r4-r7,lr}
        0x200066d6:    b085        ..      SUB      sp,sp,#0x14
        0x200066d8:    4606        .F      MOV      r6,r0
        0x200066da:    f3ef8005    ....    MRS      r0,IPSR
        0x200066de:    ac02        ..      ADD      r4,sp,#8
        0x200066e0:    70a6        .p      STRB     r6,[r4,#2]
        0x200066e2:    8021        !.      STRH     r1,[r4,#0]
        0x200066e4:    70e2        .p      STRB     r2,[r4,#3]
        0x200066e6:    2500        .%      MOVS     r5,#0
        0x200066e8:    9503        ..      STR      r5,[sp,#0xc]
        0x200066ea:    2800        .(      CMP      r0,#0
        0x200066ec:    d100        ..      BNE      0x200066f0 ; send_msg_to_bleStackTask + 28
        0x200066ee:    43ed        .C      MVNS     r5,r5
        0x200066f0:    4f2a        *O      LDR      r7,[pc,#168] ; [0x2000679c] = 0x6004
        0x200066f2:    2a00        .*      CMP      r2,#0
        0x200066f4:    d02b        +.      BEQ      0x2000674e ; send_msg_to_bleStackTask + 122
        0x200066f6:    9301        ..      STR      r3,[sp,#4]
        0x200066f8:    2a24        $*      CMP      r2,#0x24
        0x200066fa:    d815        ..      BHI      0x20006728 ; send_msg_to_bleStackTask + 84
        0x200066fc:    9200        ..      STR      r2,[sp,#0]
        0x200066fe:    4f29        )O      LDR      r7,[pc,#164] ; [0x200067a4] = 0x2000b954
        0x20006700:    6838        8h      LDR      r0,[r7,#0]
        0x20006702:    2100        .!      MOVS     r1,#0
        0x20006704:    f000fe16    ....    BL       $Ven$TT$L$$osMemoryPoolAlloc ; 0x20007334
        0x20006708:    9003        ..      STR      r0,[sp,#0xc]
        0x2000670a:    2800        .(      CMP      r0,#0
        0x2000670c:    d108        ..      BNE      0x20006720 ; send_msg_to_bleStackTask + 76
        0x2000670e:    4f24        $O      LDR      r7,[pc,#144] ; [0x200067a0] = 0x2000b950
        0x20006710:    6838        8h      LDR      r0,[r7,#0]
        0x20006712:    2400        .$      MOVS     r4,#0
        0x20006714:    4621        !F      MOV      r1,r4
        0x20006716:    f000fe0d    ....    BL       $Ven$TT$L$$osMemoryPoolAlloc ; 0x20007334
        0x2000671a:    9003        ..      STR      r0,[sp,#0xc]
        0x2000671c:    2800        .(      CMP      r0,#0
        0x2000671e:    d036        6.      BEQ      0x2000678e ; send_msg_to_bleStackTask + 186
        0x20006720:    6838        8h      LDR      r0,[r7,#0]
        0x20006722:    9004        ..      STR      r0,[sp,#0x10]
        0x20006724:    9803        ..      LDR      r0,[sp,#0xc]
        0x20006726:    e00d        ..      B        0x20006744 ; send_msg_to_bleStackTask + 112
        0x20006728:    2a80        .*      CMP      r2,#0x80
        0x2000672a:    d827        '.      BHI      0x2000677c ; send_msg_to_bleStackTask + 168
        0x2000672c:    9200        ..      STR      r2,[sp,#0]
        0x2000672e:    4f1c        .O      LDR      r7,[pc,#112] ; [0x200067a0] = 0x2000b950
        0x20006730:    6838        8h      LDR      r0,[r7,#0]
        0x20006732:    2400        .$      MOVS     r4,#0
        0x20006734:    4621        !F      MOV      r1,r4
        0x20006736:    f000fdfd    ....    BL       $Ven$TT$L$$osMemoryPoolAlloc ; 0x20007334
        0x2000673a:    9003        ..      STR      r0,[sp,#0xc]
        0x2000673c:    2800        .(      CMP      r0,#0
        0x2000673e:    d023        #.      BEQ      0x20006788 ; send_msg_to_bleStackTask + 180
        0x20006740:    6839        9h      LDR      r1,[r7,#0]
        0x20006742:    9104        ..      STR      r1,[sp,#0x10]
        0x20006744:    9901        ..      LDR      r1,[sp,#4]
        0x20006746:    9a00        ..      LDR      r2,[sp,#0]
        0x20006748:    f7fcfdbc    ....    BL       __aeabi_memcpy ; 0x200032c4
        0x2000674c:    4f13        .O      LDR      r7,[pc,#76] ; [0x2000679c] = 0x6004
        0x2000674e:    1cf8        ..      ADDS     r0,r7,#3
        0x20006750:    4631        1F      MOV      r1,r6
        0x20006752:    f000f9d5    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b00
        0x20006756:    4814        .H      LDR      r0,[pc,#80] ; [0x200067a8] = 0x20007c8c
        0x20006758:    6800        .h      LDR      r0,[r0,#0]
        0x2000675a:    a902        ..      ADD      r1,sp,#8
        0x2000675c:    2600        .&      MOVS     r6,#0
        0x2000675e:    4632        2F      MOV      r2,r6
        0x20006760:    462b        +F      MOV      r3,r5
        0x20006762:    f000fded    ....    BL       $Ven$TT$L$$osMessageQueuePut ; 0x20007340
        0x20006766:    4244        DB      RSBS     r4,r0,#0
        0x20006768:    4144        DA      ADCS     r4,r4,r0
        0x2000676a:    2800        .(      CMP      r0,#0
        0x2000676c:    d012        ..      BEQ      0x20006794 ; send_msg_to_bleStackTask + 192
        0x2000676e:    1d3a        :.      ADDS     r2,r7,#4
        0x20006770:    b281        ..      UXTH     r1,r0
        0x20006772:    4610        .F      MOV      r0,r2
        0x20006774:    f000f9c4    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b00
        0x20006778:    4634        4F      MOV      r4,r6
        0x2000677a:    e00b        ..      B        0x20006794 ; send_msg_to_bleStackTask + 192
        0x2000677c:    1cb8        ..      ADDS     r0,r7,#2
        0x2000677e:    4611        .F      MOV      r1,r2
        0x20006780:    f000f9be    ....    BL       $Ven$TT$L$$mlog_16 ; 0x20006b00
        0x20006784:    2400        .$      MOVS     r4,#0
        0x20006786:    e005        ..      B        0x20006794 ; send_msg_to_bleStackTask + 192
        0x20006788:    4804        .H      LDR      r0,[pc,#16] ; [0x2000679c] = 0x6004
        0x2000678a:    1c40        @.      ADDS     r0,r0,#1
        0x2000678c:    e000        ..      B        0x20006790 ; send_msg_to_bleStackTask + 188
        0x2000678e:    4803        .H      LDR      r0,[pc,#12] ; [0x2000679c] = 0x6004
        0x20006790:    f000f9ce    ....    BL       $Ven$TT$L$$mlog_0 ; 0x20006b30
        0x20006794:    4620         F      MOV      r0,r4
        0x20006796:    b005        ..      ADD      sp,sp,#0x14
        0x20006798:    bdf0        ..      POP      {r4-r7,pc}
        0x2000679a:    46c0        .F      MOV      r8,r8
    $d
    __arm_cp.6_0
        0x2000679c:    00006004    .`..    DCD    24580
    __arm_cp.6_1
        0x200067a0:    2000b950    P..     DCD    536918352
    __arm_cp.6_2
        0x200067a4:    2000b954    T..     DCD    536918356
    __arm_cp.6_3
        0x200067a8:    20007c8c    .|.     DCD    536902796
    $t
    send_msg_to_llc_task
        0x200067ac:    b510        ..      PUSH     {r4,lr}
        0x200067ae:    b082        ..      SUB      sp,sp,#8
        0x200067b0:    9101        ..      STR      r1,[sp,#4]
        0x200067b2:    9000        ..      STR      r0,[sp,#0]
        0x200067b4:    2200        ."      MOVS     r2,#0
        0x200067b6:    f3ef8005    ....    MRS      r0,IPSR
        0x200067ba:    2800        .(      CMP      r0,#0
        0x200067bc:    d001        ..      BEQ      0x200067c2 ; send_msg_to_llc_task + 22
        0x200067be:    4613        .F      MOV      r3,r2
        0x200067c0:    e000        ..      B        0x200067c4 ; send_msg_to_llc_task + 24
        0x200067c2:    43d3        .C      MVNS     r3,r2
        0x200067c4:    4807        .H      LDR      r0,[pc,#28] ; [0x200067e4] = 0x2000a5e4
        0x200067c6:    6800        .h      LDR      r0,[r0,#0]
        0x200067c8:    4669        iF      MOV      r1,sp
        0x200067ca:    f000fdb9    ....    BL       $Ven$TT$L$$osMessageQueuePut ; 0x20007340
        0x200067ce:    4604        .F      MOV      r4,r0
        0x200067d0:    2800        .(      CMP      r0,#0
        0x200067d2:    d003        ..      BEQ      0x200067dc ; send_msg_to_llc_task + 48
        0x200067d4:    a004        ..      ADR      r0,{pc}+0x14 ; 0x200067e8
        0x200067d6:    4621        !F      MOV      r1,r4
        0x200067d8:    f000fdc4    ....    BL       __0printf$8 ; 0x20007364
        0x200067dc:    4260        `B      RSBS     r0,r4,#0
        0x200067de:    4160        `A      ADCS     r0,r0,r4
        0x200067e0:    b002        ..      ADD      sp,sp,#8
        0x200067e2:    bd10        ..      POP      {r4,pc}
    $d
    __arm_cp.2_0
        0x200067e4:    2000a5e4    ...     DCD    536913380
        0x200067e8:    5f656c62    ble_    DCD    1600482402
        0x200067ec:    6b736174    task    DCD    1802723700
        0x200067f0:    6e65735f    _sen    DCD    1852142431
        0x200067f4:    736d5f64    d_ms    DCD    1936547684
        0x200067f8:    6f745f67    g_to    DCD    1869897575
        0x200067fc:    636c6c5f    _llc    DCD    1668050015
        0x20006800:    7361745f    _tas    DCD    1935766623
        0x20006804:    6166206b    k fa    DCD    1634082923
        0x20006808:    64656c69    iled    DCD    1684368489
        0x2000680c:    0a75253a    :%u.    DCD    175449402
        0x20006810:    00000000    ....    DCD    0
    $t
    system_error_handler
        0x20006814:    461c        .F      MOV      r4,r3
        0x20006816:    4615        .F      MOV      r5,r2
        0x20006818:    460e        .F      MOV      r6,r1
        0x2000681a:    4607        .F      MOV      r7,r0
        0x2000681c:    f7fcff7e    ..~.    BL       app_debug_reinit ; 0x2000371c
        0x20006820:    a007        ..      ADR      r0,{pc}+0x20 ; 0x20006840
        0x20006822:    f000ffe9    ....    BL       puts ; 0x200077f8
        0x20006826:    a00b        ..      ADR      r0,{pc}+0x2e ; 0x20006854
        0x20006828:    4639        9F      MOV      r1,r7
        0x2000682a:    4632        2F      MOV      r2,r6
        0x2000682c:    f000fd9a    ....    BL       __0printf$8 ; 0x20007364
        0x20006830:    a010        ..      ADR      r0,{pc}+0x44 ; 0x20006874
        0x20006832:    4629        )F      MOV      r1,r5
        0x20006834:    4622        "F      MOV      r2,r4
        0x20006836:    f000fd95    ....    BL       __0printf$8 ; 0x20007364
        0x2000683a:    f7fcff43    ..C.    BL       app_debug_printf ; 0x200036c4
        0x2000683e:    e7fe        ..      B        0x2000683e ; system_error_handler + 42
    $d
        0x20006840:    74737973    syst    DCD    1953724787
        0x20006844:    65206d65    em e    DCD    1696623973
        0x20006848:    726f7272    rror    DCD    1919906418
        0x2000684c:    63636f20     occ    DCD    1667460896
        0x20006850:    00737275    urs.    DCD    7565941
        0x20006854:    45363175    u16E    DCD    1161179509
        0x20006858:    6f4d7272    rrMo    DCD    1867346546
        0x2000685c:    656c7564    dule    DCD    1701606756
        0x20006860:    2075253a    :%u     DCD    544548154
        0x20006864:    45363175    u16E    DCD    1161179509
        0x20006868:    694c7272    rrLi    DCD    1766617714
        0x2000686c:    253a656e    ne:%    DCD    624584046
        0x20006870:    00000a75    u...    DCD    2677
        0x20006874:    45323375    u32E    DCD    1160917877
        0x20006878:    6e497272    rrIn    DCD    1850307186
        0x2000687c:    3a316f66    fo1:    DCD    976318310
        0x20006880:    75207525    %u u    DCD    1965061413
        0x20006884:    72453233    32Er    DCD    1917137459
        0x20006888:    666e4972    rInf    DCD    1718503794
        0x2000688c:    253a326f    o2:%    DCD    624570991
        0x20006890:    00000a75    u...    DCD    2677
    $t
    timer_config
        0x20006894:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20006896:    b085        ..      SUB      sp,sp,#0x14
        0x20006898:    4604        .F      MOV      r4,r0
        0x2000689a:    7d40        @}      LDRB     r0,[r0,#0x15]
        0x2000689c:    7d21        !}      LDRB     r1,[r4,#0x14]
        0x2000689e:    2901        .)      CMP      r1,#1
        0x200068a0:    d10c        ..      BNE      0x200068bc ; timer_config + 40
        0x200068a2:    f3ef8110    ....    MRS      r1,PRIMASK
        0x200068a6:    f3ef8210    ....    MRS      r2,PRIMASK
        0x200068aa:    b672        r.      CPSID    i
        0x200068ac:    2200        ."      MOVS     r2,#0
        0x200068ae:    7522        "u      STRB     r2,[r4,#0x14]
        0x200068b0:    6862        bh      LDR      r2,[r4,#4]
        0x200068b2:    6022        "`      STR      r2,[r4,#0]
        0x200068b4:    6a62        bj      LDR      r2,[r4,#0x24]
        0x200068b6:    6222        "b      STR      r2,[r4,#0x20]
        0x200068b8:    f3818810    ....    MSR      PRIMASK,r1
        0x200068bc:    2800        .(      CMP      r0,#0
        0x200068be:    d00a        ..      BEQ      0x200068d6 ; timer_config + 66
        0x200068c0:    f3ef8110    ....    MRS      r1,PRIMASK
        0x200068c4:    f3ef8210    ....    MRS      r2,PRIMASK
        0x200068c8:    b672        r.      CPSID    i
        0x200068ca:    2200        ."      MOVS     r2,#0
        0x200068cc:    7562        bu      STRB     r2,[r4,#0x15]
        0x200068ce:    7de2        .}      LDRB     r2,[r4,#0x17]
        0x200068d0:    75a2        .u      STRB     r2,[r4,#0x16]
        0x200068d2:    f3818810    ....    MSR      PRIMASK,r1
        0x200068d6:    7da1        .}      LDRB     r1,[r4,#0x16]
        0x200068d8:    2902        .)      CMP      r1,#2
        0x200068da:    d01d        ..      BEQ      0x20006918 ; timer_config + 132
        0x200068dc:    2900        .)      CMP      r1,#0
        0x200068de:    d15a        Z.      BNE      0x20006996 ; timer_config + 258
        0x200068e0:    f3ef8010    ....    MRS      r0,PRIMASK
        0x200068e4:    f3ef8110    ....    MRS      r1,PRIMASK
        0x200068e8:    b672        r.      CPSID    i
        0x200068ea:    6ae1        .j      LDR      r1,[r4,#0x2c]
        0x200068ec:    2900        .)      CMP      r1,#0
        0x200068ee:    d001        ..      BEQ      0x200068f4 ; timer_config + 96
        0x200068f0:    6aa2        .j      LDR      r2,[r4,#0x28]
        0x200068f2:    628a        .b      STR      r2,[r1,#0x28]
        0x200068f4:    4a2c        ,J      LDR      r2,[pc,#176] ; [0x200069a8] = 0x2000b9ec
        0x200068f6:    6813        .h      LDR      r3,[r2,#0]
        0x200068f8:    42a3        .B      CMP      r3,r4
        0x200068fa:    d101        ..      BNE      0x20006900 ; timer_config + 108
        0x200068fc:    6aa3        .j      LDR      r3,[r4,#0x28]
        0x200068fe:    6013        .`      STR      r3,[r2,#0]
        0x20006900:    4a2a        *J      LDR      r2,[pc,#168] ; [0x200069ac] = 0x2000b9f0
        0x20006902:    6813        .h      LDR      r3,[r2,#0]
        0x20006904:    42a3        .B      CMP      r3,r4
        0x20006906:    d100        ..      BNE      0x2000690a ; timer_config + 118
        0x20006908:    6011        .`      STR      r1,[r2,#0]
        0x2000690a:    f3808810    ....    MSR      PRIMASK,r0
        0x2000690e:    2000        .       MOVS     r0,#0
        0x20006910:    62a0        .b      STR      r0,[r4,#0x28]
        0x20006912:    62e0        .b      STR      r0,[r4,#0x2c]
        0x20006914:    b005        ..      ADD      sp,sp,#0x14
        0x20006916:    bdf0        ..      POP      {r4-r7,pc}
        0x20006918:    2800        .(      CMP      r0,#0
        0x2000691a:    d00b        ..      BEQ      0x20006934 ; timer_config + 160
        0x2000691c:    6927        'i      LDR      r7,[r4,#0x10]
        0x2000691e:    9702        ..      STR      r7,[sp,#8]
        0x20006920:    6820         h      LDR      r0,[r4,#0]
        0x20006922:    9000        ..      STR      r0,[sp,#0]
        0x20006924:    a803        ..      ADD      r0,sp,#0xc
        0x20006926:    f000fd11    ....    BL       $Ven$TT$L$$rom_hw_crg_get_lpwr_clk_src ; 0x2000734c
        0x2000692a:    9803        ..      LDR      r0,[sp,#0xc]
        0x2000692c:    2801        .(      CMP      r0,#1
        0x2000692e:    d113        ..      BNE      0x20006958 ; timer_config + 196
        0x20006930:    4d1b        .M      LDR      r5,[pc,#108] ; [0x200069a0] = 0x7a12
        0x20006932:    e014        ..      B        0x2000695e ; timer_config + 202
        0x20006934:    7e20         ~      LDRB     r0,[r4,#0x18]
        0x20006936:    2801        .(      CMP      r0,#1
        0x20006938:    d12b        +.      BNE      0x20006992 ; timer_config + 254
        0x2000693a:    2000        .       MOVS     r0,#0
        0x2000693c:    9002        ..      STR      r0,[sp,#8]
        0x2000693e:    4817        .H      LDR      r0,[pc,#92] ; [0x2000699c] = 0x60053000
        0x20006940:    a902        ..      ADD      r1,sp,#8
        0x20006942:    f000f865    ..e.    BL       $Ven$TT$L$$rom_hw_stim_get_count ; 0x20006a10
        0x20006946:    6820         h      LDR      r0,[r4,#0]
        0x20006948:    9000        ..      STR      r0,[sp,#0]
        0x2000694a:    9f02        ..      LDR      r7,[sp,#8]
        0x2000694c:    a804        ..      ADD      r0,sp,#0x10
        0x2000694e:    f000fcfd    ....    BL       $Ven$TT$L$$rom_hw_crg_get_lpwr_clk_src ; 0x2000734c
        0x20006952:    9804        ..      LDR      r0,[sp,#0x10]
        0x20006954:    2801        .(      CMP      r0,#1
        0x20006956:    d0eb        ..      BEQ      0x20006930 ; timer_config + 156
        0x20006958:    f000fcfe    ....    BL       $Ven$TT$L$$rom_hw_crg_get_32k_cycles_of_dcxo_hclk ; 0x20007358
        0x2000695c:    4605        .F      MOV      r5,r0
        0x2000695e:    4811        .H      LDR      r0,[pc,#68] ; [0x200069a4] = 0x2000b9fc
        0x20006960:    8806        ..      LDRH     r6,[r0,#0]
        0x20006962:    8005        ..      STRH     r5,[r0,#0]
        0x20006964:    9701        ..      STR      r7,[sp,#4]
        0x20006966:    60e7        .`      STR      r7,[r4,#0xc]
        0x20006968:    207d        }       MOVS     r0,#0x7d
        0x2000696a:    0342        B.      LSLS     r2,r0,#13
        0x2000696c:    2700        .'      MOVS     r7,#0
        0x2000696e:    9800        ..      LDR      r0,[sp,#0]
        0x20006970:    4639        9F      MOV      r1,r7
        0x20006972:    463b        ;F      MOV      r3,r7
        0x20006974:    f7fcfc8e    ....    BL       __aeabi_lmul ; 0x20003294
        0x20006978:    2e00        ..      CMP      r6,#0
        0x2000697a:    d001        ..      BEQ      0x20006980 ; timer_config + 236
        0x2000697c:    1972        r.      ADDS     r2,r6,r5
        0x2000697e:    0855        U.      LSRS     r5,r2,#1
        0x20006980:    462a        *F      MOV      r2,r5
        0x20006982:    463b        ;F      MOV      r3,r7
        0x20006984:    f7fcfc56    ..V.    BL       __aeabi_uldivmod ; 0x20003234
        0x20006988:    9901        ..      LDR      r1,[sp,#4]
        0x2000698a:    1808        ..      ADDS     r0,r1,r0
        0x2000698c:    60a0        .`      STR      r0,[r4,#8]
        0x2000698e:    b005        ..      ADD      sp,sp,#0x14
        0x20006990:    bdf0        ..      POP      {r4-r7,pc}
        0x20006992:    2001        .       MOVS     r0,#1
        0x20006994:    75a0        .u      STRB     r0,[r4,#0x16]
        0x20006996:    b005        ..      ADD      sp,sp,#0x14
        0x20006998:    bdf0        ..      POP      {r4-r7,pc}
        0x2000699a:    46c0        .F      MOV      r8,r8
    $d
    __arm_cp.1_0
        0x2000699c:    60053000    .0.`    DCD    1610952704
    __arm_cp.1_1
        0x200069a0:    00007a12    .z..    DCD    31250
    __arm_cp.1_2
        0x200069a4:    2000b9fc    ...     DCD    536918524
    __arm_cp.1_3
        0x200069a8:    2000b9ec    ...     DCD    536918508
    __arm_cp.1_4
        0x200069ac:    2000b9f0    ...     DCD    536918512
    $t
    $Ven$TT$L$$rom_hw_sys_ctrl_write_com_reg
        0x200069b0:    b403        ..      PUSH     {r0,r1}
        0x200069b2:    4801        .H      LDR      r0,[pc,#4] ; [0x200069b8] = 0x1c439
        0x200069b4:    9001        ..      STR      r0,[sp,#4]
        0x200069b6:    bd01        ..      POP      {r0,pc}
    $d
        0x200069b8:    0001c439    9...    DCD    115769
    $t
    $Ven$TT$L$$rom_llp_hw_int_irq_handler
        0x200069bc:    b403        ..      PUSH     {r0,r1}
        0x200069be:    4801        .H      LDR      r0,[pc,#4] ; [0x200069c4] = 0x20e61
        0x200069c0:    9001        ..      STR      r0,[sp,#4]
        0x200069c2:    bd01        ..      POP      {r0,pc}
    $d
        0x200069c4:    00020e61    a...    DCD    134753
    $t
    $Ven$TT$L$$rom_hw_pmu_get_interrupt_flag
        0x200069c8:    b403        ..      PUSH     {r0,r1}
        0x200069ca:    4801        .H      LDR      r0,[pc,#4] ; [0x200069d0] = 0x1a345
        0x200069cc:    9001        ..      STR      r0,[sp,#4]
        0x200069ce:    bd01        ..      POP      {r0,pc}
    $d
        0x200069d0:    0001a345    E...    DCD    107333
    $t
    $Ven$TT$L$$rom_hw_pmu_clear_interrupt_flag
        0x200069d4:    b403        ..      PUSH     {r0,r1}
        0x200069d6:    4801        .H      LDR      r0,[pc,#4] ; [0x200069dc] = 0x1a0ad
        0x200069d8:    9001        ..      STR      r0,[sp,#4]
        0x200069da:    bd01        ..      POP      {r0,pc}
    $d
        0x200069dc:    0001a0ad    ....    DCD    106669
    $t
    $Ven$TT$L$$rom_hw_stim_get_interrupt_flag
        0x200069e0:    b403        ..      PUSH     {r0,r1}
        0x200069e2:    4801        .H      LDR      r0,[pc,#4] ; [0x200069e8] = 0x1bf65
        0x200069e4:    9001        ..      STR      r0,[sp,#4]
        0x200069e6:    bd01        ..      POP      {r0,pc}
    $d
        0x200069e8:    0001bf65    e...    DCD    114533
    $t
    $Ven$TT$L$$rom_hw_stim_clear_interrupt_flag
        0x200069ec:    b403        ..      PUSH     {r0,r1}
        0x200069ee:    4801        .H      LDR      r0,[pc,#4] ; [0x200069f4] = 0x1bdbd
        0x200069f0:    9001        ..      STR      r0,[sp,#4]
        0x200069f2:    bd01        ..      POP      {r0,pc}
    $d
        0x200069f4:    0001bdbd    ....    DCD    114109
    $t
    $Ven$TT$L$$rom_delay_us
        0x200069f8:    b403        ..      PUSH     {r0,r1}
        0x200069fa:    4801        .H      LDR      r0,[pc,#4] ; [0x20006a00] = 0x2f851
        0x200069fc:    9001        ..      STR      r0,[sp,#4]
        0x200069fe:    bd01        ..      POP      {r0,pc}
    $d
        0x20006a00:    0002f851    Q...    DCD    194641
    $t
    $Ven$TT$L$$rom_hw_stim_get_compare
        0x20006a04:    b403        ..      PUSH     {r0,r1}
        0x20006a06:    4801        .H      LDR      r0,[pc,#4] ; [0x20006a0c] = 0x1bf1d
        0x20006a08:    9001        ..      STR      r0,[sp,#4]
        0x20006a0a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006a0c:    0001bf1d    ....    DCD    114461
    $t
    $Ven$TT$L$$rom_hw_stim_get_count
        0x20006a10:    b403        ..      PUSH     {r0,r1}
        0x20006a12:    4801        .H      LDR      r0,[pc,#4] ; [0x20006a18] = 0x1bf45
        0x20006a14:    9001        ..      STR      r0,[sp,#4]
        0x20006a16:    bd01        ..      POP      {r0,pc}
    $d
        0x20006a18:    0001bf45    E...    DCD    114501
    $t
    $Ven$TT$L$$rom_hw_stim_set_compare
        0x20006a1c:    b403        ..      PUSH     {r0,r1}
        0x20006a1e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006a24] = 0x1bfcd
        0x20006a20:    9001        ..      STR      r0,[sp,#4]
        0x20006a22:    bd01        ..      POP      {r0,pc}
    $d
        0x20006a24:    0001bfcd    ....    DCD    114637
    $t
    $Ven$TT$L$$rom_hw_gpio_set_pin_input_output
        0x20006a28:    b403        ..      PUSH     {r0,r1}
        0x20006a2a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006a30] = 0x18d69
        0x20006a2c:    9001        ..      STR      r0,[sp,#4]
        0x20006a2e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006a30:    00018d69    i...    DCD    101737
    $t
    $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode
        0x20006a34:    b403        ..      PUSH     {r0,r1}
        0x20006a36:    4801        .H      LDR      r0,[pc,#4] ; [0x20006a3c] = 0x18f05
        0x20006a38:    9001        ..      STR      r0,[sp,#4]
        0x20006a3a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006a3c:    00018f05    ....    DCD    102149
    $t
    $Ven$TT$L$$rom_hw_crg_disable_clk_gate
        0x20006a40:    b403        ..      PUSH     {r0,r1}
        0x20006a42:    4801        .H      LDR      r0,[pc,#4] ; [0x20006a48] = 0x171e9
        0x20006a44:    9001        ..      STR      r0,[sp,#4]
        0x20006a46:    bd01        ..      POP      {r0,pc}
    $d
        0x20006a48:    000171e9    .q..    DCD    94697
    $t
    $Ven$TT$L$$rom_hw_uart_send_byte
        0x20006a4c:    b403        ..      PUSH     {r0,r1}
        0x20006a4e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006a54] = 0x1dc79
        0x20006a50:    9001        ..      STR      r0,[sp,#4]
        0x20006a52:    bd01        ..      POP      {r0,pc}
    $d
        0x20006a54:    0001dc79    y...    DCD    121977
    $t
    $Ven$TT$L$$rom_hw_crg_enable_clk_gate
        0x20006a58:    b403        ..      PUSH     {r0,r1}
        0x20006a5a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006a60] = 0x17255
        0x20006a5c:    9001        ..      STR      r0,[sp,#4]
        0x20006a5e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006a60:    00017255    Ur..    DCD    94805
    $t
    $Ven$TT$L$$rom_hw_gpio_set_pin_pid
        0x20006a64:    b403        ..      PUSH     {r0,r1}
        0x20006a66:    4801        .H      LDR      r0,[pc,#4] ; [0x20006a6c] = 0x18e85
        0x20006a68:    9001        ..      STR      r0,[sp,#4]
        0x20006a6a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006a6c:    00018e85    ....    DCD    102021
    $t
    $Ven$TT$L$$rom_hw_uart_init
        0x20006a70:    b403        ..      PUSH     {r0,r1}
        0x20006a72:    4801        .H      LDR      r0,[pc,#4] ; [0x20006a78] = 0x1db89
        0x20006a74:    9001        ..      STR      r0,[sp,#4]
        0x20006a76:    bd01        ..      POP      {r0,pc}
    $d
        0x20006a78:    0001db89    ....    DCD    121737
    $t
    $Ven$TT$L$$rom_hw_sys_ctrl_peri_int_ctrl
        0x20006a7c:    b403        ..      PUSH     {r0,r1}
        0x20006a7e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006a84] = 0x1c3ad
        0x20006a80:    9001        ..      STR      r0,[sp,#4]
        0x20006a82:    bd01        ..      POP      {r0,pc}
    $d
        0x20006a84:    0001c3ad    ....    DCD    115629
    $t
    $Ven$TT$L$$rom_hw_trng_gen_32bit
        0x20006a88:    b403        ..      PUSH     {r0,r1}
        0x20006a8a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006a90] = 0x1d743
        0x20006a8c:    9001        ..      STR      r0,[sp,#4]
        0x20006a8e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006a90:    0001d743    C...    DCD    120643
    $t
    $Ven$TT$L$$rom_rand_init
        0x20006a94:    b403        ..      PUSH     {r0,r1}
        0x20006a96:    4801        .H      LDR      r0,[pc,#4] ; [0x20006a9c] = 0x2f941
        0x20006a98:    9001        ..      STR      r0,[sp,#4]
        0x20006a9a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006a9c:    0002f941    A...    DCD    194881
    $t
    $Ven$TT$L$$rom_hw_sys_ctrl_enable_peri_int
        0x20006aa0:    b403        ..      PUSH     {r0,r1}
        0x20006aa2:    4801        .H      LDR      r0,[pc,#4] ; [0x20006aa8] = 0x1c289
        0x20006aa4:    9001        ..      STR      r0,[sp,#4]
        0x20006aa6:    bd01        ..      POP      {r0,pc}
    $d
        0x20006aa8:    0001c289    ....    DCD    115337
    $t
    $Ven$TT$L$$osThreadGetId
        0x20006aac:    b403        ..      PUSH     {r0,r1}
        0x20006aae:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ab4] = 0x12209
        0x20006ab0:    9001        ..      STR      r0,[sp,#4]
        0x20006ab2:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ab4:    00012209    ."..    DCD    74249
    $t
    $Ven$TT$L$$osThreadTerminate
        0x20006ab8:    b403        ..      PUSH     {r0,r1}
        0x20006aba:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ac0] = 0x123d1
        0x20006abc:    9001        ..      STR      r0,[sp,#4]
        0x20006abe:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ac0:    000123d1    .#..    DCD    74705
    $t
    $Ven$TT$L$$rom_hw_stim_set_prescale
        0x20006ac4:    b403        ..      PUSH     {r0,r1}
        0x20006ac6:    4801        .H      LDR      r0,[pc,#4] ; [0x20006acc] = 0x1c079
        0x20006ac8:    9001        ..      STR      r0,[sp,#4]
        0x20006aca:    bd01        ..      POP      {r0,pc}
    $d
        0x20006acc:    0001c079    y...    DCD    114809
    $t
    $Ven$TT$L$$rom_hw_stim_enable_wakeup
        0x20006ad0:    b403        ..      PUSH     {r0,r1}
        0x20006ad2:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ad8] = 0x1bebd
        0x20006ad4:    9001        ..      STR      r0,[sp,#4]
        0x20006ad6:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ad8:    0001bebd    ....    DCD    114365
    $t
    $Ven$TT$L$$rom_hw_stim_enable_interrupt
        0x20006adc:    b403        ..      PUSH     {r0,r1}
        0x20006ade:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ae4] = 0x1be81
        0x20006ae0:    9001        ..      STR      r0,[sp,#4]
        0x20006ae2:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ae4:    0001be81    ....    DCD    114305
    $t
    $Ven$TT$L$$rom_hw_stim_disable_tick_overflow_interrupt
        0x20006ae8:    b403        ..      PUSH     {r0,r1}
        0x20006aea:    4801        .H      LDR      r0,[pc,#4] ; [0x20006af0] = 0x1bdf9
        0x20006aec:    9001        ..      STR      r0,[sp,#4]
        0x20006aee:    bd01        ..      POP      {r0,pc}
    $d
        0x20006af0:    0001bdf9    ....    DCD    114169
    $t
    $Ven$TT$L$$rom_hw_stim_start
        0x20006af4:    b403        ..      PUSH     {r0,r1}
        0x20006af6:    4801        .H      LDR      r0,[pc,#4] ; [0x20006afc] = 0x1c0d9
        0x20006af8:    9001        ..      STR      r0,[sp,#4]
        0x20006afa:    bd01        ..      POP      {r0,pc}
    $d
        0x20006afc:    0001c0d9    ....    DCD    114905
    $t
    $Ven$TT$L$$mlog_16
        0x20006b00:    b403        ..      PUSH     {r0,r1}
        0x20006b02:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b08] = 0x2f6fd
        0x20006b04:    9001        ..      STR      r0,[sp,#4]
        0x20006b06:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b08:    0002f6fd    ....    DCD    194301
    $t
    $Ven$TT$L$$osMessageQueueGet
        0x20006b0c:    b403        ..      PUSH     {r0,r1}
        0x20006b0e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b14] = 0x112f9
        0x20006b10:    9001        ..      STR      r0,[sp,#4]
        0x20006b12:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b14:    000112f9    ....    DCD    70393
    $t
    $Ven$TT$L$$rom_st_ctrl_task_handler
        0x20006b18:    b403        ..      PUSH     {r0,r1}
        0x20006b1a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b20] = 0x3a0b9
        0x20006b1c:    9001        ..      STR      r0,[sp,#4]
        0x20006b1e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b20:    0003a0b9    ....    DCD    237753
    $t
    $Ven$TT$L$$osMemoryPoolFree
        0x20006b24:    b403        ..      PUSH     {r0,r1}
        0x20006b26:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b2c] = 0x111a5
        0x20006b28:    9001        ..      STR      r0,[sp,#4]
        0x20006b2a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b2c:    000111a5    ....    DCD    70053
    $t
    $Ven$TT$L$$mlog_0
        0x20006b30:    b403        ..      PUSH     {r0,r1}
        0x20006b32:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b38] = 0x2f6e9
        0x20006b34:    9001        ..      STR      r0,[sp,#4]
        0x20006b36:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b38:    0002f6e9    ....    DCD    194281
    $t
    $Ven$TT$L$$rom_llc_legacy_adv_mem_init
        0x20006b3c:    b403        ..      PUSH     {r0,r1}
        0x20006b3e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b44] = 0x29435
        0x20006b40:    9001        ..      STR      r0,[sp,#4]
        0x20006b42:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b44:    00029435    5...    DCD    169013
    $t
    $Ven$TT$L$$rom_llc_legacy_scan_mem_init
        0x20006b48:    b403        ..      PUSH     {r0,r1}
        0x20006b4a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b50] = 0x2aa25
        0x20006b4c:    9001        ..      STR      r0,[sp,#4]
        0x20006b4e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b50:    0002aa25    %...    DCD    174629
    $t
    $Ven$TT$L$$rom_llc_legacy_initiator_mem_init
        0x20006b54:    b403        ..      PUSH     {r0,r1}
        0x20006b56:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b5c] = 0x2a049
        0x20006b58:    9001        ..      STR      r0,[sp,#4]
        0x20006b5a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b5c:    0002a049    I...    DCD    172105
    $t
    $Ven$TT$L$$rom_llc_connection_role_mem_init
        0x20006b60:    b403        ..      PUSH     {r0,r1}
        0x20006b62:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b68] = 0x239cd
        0x20006b64:    9001        ..      STR      r0,[sp,#4]
        0x20006b66:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b68:    000239cd    .9..    DCD    145869
    $t
    $Ven$TT$L$$rom_llc_scheduler_mem_init
        0x20006b6c:    b403        ..      PUSH     {r0,r1}
        0x20006b6e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b74] = 0x2dc7d
        0x20006b70:    9001        ..      STR      r0,[sp,#4]
        0x20006b72:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b74:    0002dc7d    }...    DCD    187517
    $t
    $Ven$TT$L$$rom_llc_white_list_init
        0x20006b78:    b403        ..      PUSH     {r0,r1}
        0x20006b7a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b80] = 0x2f411
        0x20006b7c:    9001        ..      STR      r0,[sp,#4]
        0x20006b7e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b80:    0002f411    ....    DCD    193553
    $t
    $Ven$TT$L$$rom_llc_privacy_init
        0x20006b84:    b403        ..      PUSH     {r0,r1}
        0x20006b86:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b8c] = 0x2d015
        0x20006b88:    9001        ..      STR      r0,[sp,#4]
        0x20006b8a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b8c:    0002d015    ....    DCD    184341
    $t
    $Ven$TT$L$$rom_llc_adv_channel_pdu_mem_init
        0x20006b90:    b403        ..      PUSH     {r0,r1}
        0x20006b92:    4801        .H      LDR      r0,[pc,#4] ; [0x20006b98] = 0x22c19
        0x20006b94:    9001        ..      STR      r0,[sp,#4]
        0x20006b96:    bd01        ..      POP      {r0,pc}
    $d
        0x20006b98:    00022c19    .,..    DCD    142361
    $t
    $Ven$TT$L$$rom_llc_data_channel_pdu_mem_init
        0x20006b9c:    b403        ..      PUSH     {r0,r1}
        0x20006b9e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ba4] = 0x25919
        0x20006ba0:    9001        ..      STR      r0,[sp,#4]
        0x20006ba2:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ba4:    00025919    .Y..    DCD    153881
    $t
    $Ven$TT$L$$rom_llc_acl_data_mem_init
        0x20006ba8:    b403        ..      PUSH     {r0,r1}
        0x20006baa:    4801        .H      LDR      r0,[pc,#4] ; [0x20006bb0] = 0x22951
        0x20006bac:    9001        ..      STR      r0,[sp,#4]
        0x20006bae:    bd01        ..      POP      {r0,pc}
    $d
        0x20006bb0:    00022951    Q)..    DCD    141649
    $t
    $Ven$TT$L$$rom_llc_hci_command_mem_init
        0x20006bb4:    b403        ..      PUSH     {r0,r1}
        0x20006bb6:    4801        .H      LDR      r0,[pc,#4] ; [0x20006bbc] = 0x28229
        0x20006bb8:    9001        ..      STR      r0,[sp,#4]
        0x20006bba:    bd01        ..      POP      {r0,pc}
    $d
        0x20006bbc:    00028229    )...    DCD    164393
    $t
    $Ven$TT$L$$osMessageQueueNew
        0x20006bc0:    b403        ..      PUSH     {r0,r1}
        0x20006bc2:    4801        .H      LDR      r0,[pc,#4] ; [0x20006bc8] = 0x11401
        0x20006bc4:    9001        ..      STR      r0,[sp,#4]
        0x20006bc6:    bd01        ..      POP      {r0,pc}
    $d
        0x20006bc8:    00011401    ....    DCD    70657
    $t
    $Ven$TT$L$$osThreadNew
        0x20006bcc:    b403        ..      PUSH     {r0,r1}
        0x20006bce:    4801        .H      LDR      r0,[pc,#4] ; [0x20006bd4] = 0x1231d
        0x20006bd0:    9001        ..      STR      r0,[sp,#4]
        0x20006bd2:    bd01        ..      POP      {r0,pc}
    $d
        0x20006bd4:    0001231d    .#..    DCD    74525
    $t
    $Ven$TT$L$$rom_llc_set_send_msg_to_llc_task_callback
        0x20006bd8:    b403        ..      PUSH     {r0,r1}
        0x20006bda:    4801        .H      LDR      r0,[pc,#4] ; [0x20006be0] = 0x2dfc5
        0x20006bdc:    9001        ..      STR      r0,[sp,#4]
        0x20006bde:    bd01        ..      POP      {r0,pc}
    $d
        0x20006be0:    0002dfc5    ....    DCD    188357
    $t
    $Ven$TT$L$$rom_llp_init
        0x20006be4:    b403        ..      PUSH     {r0,r1}
        0x20006be6:    4801        .H      LDR      r0,[pc,#4] ; [0x20006bec] = 0x21861
        0x20006be8:    9001        ..      STR      r0,[sp,#4]
        0x20006bea:    bd01        ..      POP      {r0,pc}
    $d
        0x20006bec:    00021861    a...    DCD    137313
    $t
    $Ven$TT$L$$rom_llp_set_clock_accuracy_ppm
        0x20006bf0:    b403        ..      PUSH     {r0,r1}
        0x20006bf2:    4801        .H      LDR      r0,[pc,#4] ; [0x20006bf8] = 0x2202d
        0x20006bf4:    9001        ..      STR      r0,[sp,#4]
        0x20006bf6:    bd01        ..      POP      {r0,pc}
    $d
        0x20006bf8:    0002202d    - ..    DCD    139309
    $t
    $Ven$TT$L$$rom_llp_sleep_set_time
        0x20006bfc:    b403        ..      PUSH     {r0,r1}
        0x20006bfe:    4801        .H      LDR      r0,[pc,#4] ; [0x20006c04] = 0x223fd
        0x20006c00:    9001        ..      STR      r0,[sp,#4]
        0x20006c02:    bd01        ..      POP      {r0,pc}
    $d
        0x20006c04:    000223fd    .#..    DCD    140285
    $t
    $Ven$TT$L$$rom_llc_init
        0x20006c08:    b403        ..      PUSH     {r0,r1}
        0x20006c0a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006c10] = 0x28269
        0x20006c0c:    9001        ..      STR      r0,[sp,#4]
        0x20006c0e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006c10:    00028269    i...    DCD    164457
    $t
    $Ven$TT$L$$rom_gatts_api_get_last_attribute_handle
        0x20006c14:    b403        ..      PUSH     {r0,r1}
        0x20006c16:    4801        .H      LDR      r0,[pc,#4] ; [0x20006c1c] = 0x33cb1
        0x20006c18:    9001        ..      STR      r0,[sp,#4]
        0x20006c1a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006c1c:    00033cb1    .<..    DCD    212145
    $t
    $Ven$TT$L$$rom_little_endian_read_32
        0x20006c20:    b403        ..      PUSH     {r0,r1}
        0x20006c22:    4801        .H      LDR      r0,[pc,#4] ; [0x20006c28] = 0x2f903
        0x20006c24:    9001        ..      STR      r0,[sp,#4]
        0x20006c26:    bd01        ..      POP      {r0,pc}
    $d
        0x20006c28:    0002f903    ....    DCD    194819
    $t
    $Ven$TT$L$$mlog_3216
        0x20006c2c:    b403        ..      PUSH     {r0,r1}
        0x20006c2e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006c34] = 0x2f761
        0x20006c30:    9001        ..      STR      r0,[sp,#4]
        0x20006c32:    bd01        ..      POP      {r0,pc}
    $d
        0x20006c34:    0002f761    a...    DCD    194401
    $t
    $Ven$TT$L$$mlog_1688
        0x20006c38:    b403        ..      PUSH     {r0,r1}
        0x20006c3a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006c40] = 0x2f739
        0x20006c3c:    9001        ..      STR      r0,[sp,#4]
        0x20006c3e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006c40:    0002f739    9...    DCD    194361
    $t
    $Ven$TT$L$$mlog_161616
        0x20006c44:    b403        ..      PUSH     {r0,r1}
        0x20006c46:    4801        .H      LDR      r0,[pc,#4] ; [0x20006c4c] = 0x2f725
        0x20006c48:    9001        ..      STR      r0,[sp,#4]
        0x20006c4a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006c4c:    0002f725    %...    DCD    194341
    $t
    $Ven$TT$L$$mlog_88
        0x20006c50:    b403        ..      PUSH     {r0,r1}
        0x20006c52:    4801        .H      LDR      r0,[pc,#4] ; [0x20006c58] = 0x2f7c5
        0x20006c54:    9001        ..      STR      r0,[sp,#4]
        0x20006c56:    bd01        ..      POP      {r0,pc}
    $d
        0x20006c58:    0002f7c5    ....    DCD    194501
    $t
    $Ven$TT$L$$rom_gap_api_set_advertising_enable
        0x20006c5c:    b403        ..      PUSH     {r0,r1}
        0x20006c5e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006c64] = 0x323c9
        0x20006c60:    9001        ..      STR      r0,[sp,#4]
        0x20006c62:    bd01        ..      POP      {r0,pc}
    $d
        0x20006c64:    000323c9    .#..    DCD    205769
    $t
    $Ven$TT$L$$mlog_x
        0x20006c68:    b403        ..      PUSH     {r0,r1}
        0x20006c6a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006c70] = 0x2f7d9
        0x20006c6c:    9001        ..      STR      r0,[sp,#4]
        0x20006c6e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006c70:    0002f7d9    ....    DCD    194521
    $t
    $Ven$TT$L$$mlog_1616
        0x20006c74:    b403        ..      PUSH     {r0,r1}
        0x20006c76:    4801        .H      LDR      r0,[pc,#4] ; [0x20006c7c] = 0x2f711
        0x20006c78:    9001        ..      STR      r0,[sp,#4]
        0x20006c7a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006c7c:    0002f711    ....    DCD    194321
    $t
    $Ven$TT$L$$ble_callback_set_host_stack_send_event_callback
        0x20006c80:    b403        ..      PUSH     {r0,r1}
        0x20006c82:    4801        .H      LDR      r0,[pc,#4] ; [0x20006c88] = 0x305d5
        0x20006c84:    9001        ..      STR      r0,[sp,#4]
        0x20006c86:    bd01        ..      POP      {r0,pc}
    $d
        0x20006c88:    000305d5    ....    DCD    198101
    $t
    $Ven$TT$L$$osMemoryPoolNew
        0x20006c8c:    b403        ..      PUSH     {r0,r1}
        0x20006c8e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006c94] = 0x1129d
        0x20006c90:    9001        ..      STR      r0,[sp,#4]
        0x20006c92:    bd01        ..      POP      {r0,pc}
    $d
        0x20006c94:    0001129d    ....    DCD    70301
    $t
    $Ven$TT$L$$rom_host_interface_set_hci_event_parameter_max_length
        0x20006c98:    b403        ..      PUSH     {r0,r1}
        0x20006c9a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ca0] = 0x3ec51
        0x20006c9c:    9001        ..      STR      r0,[sp,#4]
        0x20006c9e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ca0:    0003ec51    Q...    DCD    257105
    $t
    $Ven$TT$L$$ble_callback_set_send_msg_to_stack_task_callback
        0x20006ca4:    b403        ..      PUSH     {r0,r1}
        0x20006ca6:    4801        .H      LDR      r0,[pc,#4] ; [0x20006cac] = 0x305e1
        0x20006ca8:    9001        ..      STR      r0,[sp,#4]
        0x20006caa:    bd01        ..      POP      {r0,pc}
    $d
        0x20006cac:    000305e1    ....    DCD    198113
    $t
    $Ven$TT$L$$rom_ble_host_stack_mem_init
        0x20006cb0:    b403        ..      PUSH     {r0,r1}
        0x20006cb2:    4801        .H      LDR      r0,[pc,#4] ; [0x20006cb8] = 0x3186d
        0x20006cb4:    9001        ..      STR      r0,[sp,#4]
        0x20006cb6:    bd01        ..      POP      {r0,pc}
    $d
        0x20006cb8:    0003186d    m...    DCD    202861
    $t
    $Ven$TT$L$$rom_host_stack_mem_ctrl_init
        0x20006cbc:    b403        ..      PUSH     {r0,r1}
        0x20006cbe:    4801        .H      LDR      r0,[pc,#4] ; [0x20006cc4] = 0x35ab9
        0x20006cc0:    9001        ..      STR      r0,[sp,#4]
        0x20006cc2:    bd01        ..      POP      {r0,pc}
    $d
        0x20006cc4:    00035ab9    .Z..    DCD    219833
    $t
    $Ven$TT$L$$rom_host_stack_mem_acl_data_mem_init
        0x20006cc8:    b403        ..      PUSH     {r0,r1}
        0x20006cca:    4801        .H      LDR      r0,[pc,#4] ; [0x20006cd0] = 0x359dd
        0x20006ccc:    9001        ..      STR      r0,[sp,#4]
        0x20006cce:    bd01        ..      POP      {r0,pc}
    $d
        0x20006cd0:    000359dd    .Y..    DCD    219613
    $t
    $Ven$TT$L$$rom_ble_host_stack_timer_init
        0x20006cd4:    b403        ..      PUSH     {r0,r1}
        0x20006cd6:    4801        .H      LDR      r0,[pc,#4] ; [0x20006cdc] = 0x31885
        0x20006cd8:    9001        ..      STR      r0,[sp,#4]
        0x20006cda:    bd01        ..      POP      {r0,pc}
    $d
        0x20006cdc:    00031885    ....    DCD    202885
    $t
    $Ven$TT$L$$rom_gap_api_sm_init
        0x20006ce0:    b403        ..      PUSH     {r0,r1}
        0x20006ce2:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ce8] = 0x328af
        0x20006ce4:    9001        ..      STR      r0,[sp,#4]
        0x20006ce6:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ce8:    000328af    .(..    DCD    207023
    $t
    $Ven$TT$L$$ble_callback_set_timer_create_callback
        0x20006cec:    b403        ..      PUSH     {r0,r1}
        0x20006cee:    4801        .H      LDR      r0,[pc,#4] ; [0x20006cf4] = 0x305fd
        0x20006cf0:    9001        ..      STR      r0,[sp,#4]
        0x20006cf2:    bd01        ..      POP      {r0,pc}
    $d
        0x20006cf4:    000305fd    ....    DCD    198141
    $t
    $Ven$TT$L$$ble_callback_set_timer_start_callback
        0x20006cf8:    b403        ..      PUSH     {r0,r1}
        0x20006cfa:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d00] = 0x30605
        0x20006cfc:    9001        ..      STR      r0,[sp,#4]
        0x20006cfe:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d00:    00030605    ....    DCD    198149
    $t
    $Ven$TT$L$$ble_callback_set_send_timer_stop_callback
        0x20006d04:    b403        ..      PUSH     {r0,r1}
        0x20006d06:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d0c] = 0x305f5
        0x20006d08:    9001        ..      STR      r0,[sp,#4]
        0x20006d0a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d0c:    000305f5    ....    DCD    198133
    $t
    $Ven$TT$L$$ble_callback_set_send_timer_delete_callback
        0x20006d10:    b403        ..      PUSH     {r0,r1}
        0x20006d12:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d18] = 0x305ed
        0x20006d14:    9001        ..      STR      r0,[sp,#4]
        0x20006d16:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d18:    000305ed    ....    DCD    198125
    $t
    $Ven$TT$L$$rom_hw_pmu_set_wakeup_source
        0x20006d1c:    b403        ..      PUSH     {r0,r1}
        0x20006d1e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d24] = 0x1a689
        0x20006d20:    9001        ..      STR      r0,[sp,#4]
        0x20006d22:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d24:    0001a689    ....    DCD    108169
    $t
    $Ven$TT$L$$rom_llp_is_system_sleep_allowed
        0x20006d28:    b403        ..      PUSH     {r0,r1}
        0x20006d2a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d30] = 0x21af1
        0x20006d2c:    9001        ..      STR      r0,[sp,#4]
        0x20006d2e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d30:    00021af1    ....    DCD    137969
    $t
    $Ven$TT$L$$rom_llp_sleep_on_system_wakeup_by_llc
        0x20006d34:    b403        ..      PUSH     {r0,r1}
        0x20006d36:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d3c] = 0x22379
        0x20006d38:    9001        ..      STR      r0,[sp,#4]
        0x20006d3a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d3c:    00022379    y#..    DCD    140153
    $t
    $Ven$TT$L$$rom_llp_set_schedule_report_callback
        0x20006d40:    b403        ..      PUSH     {r0,r1}
        0x20006d42:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d48] = 0x22075
        0x20006d44:    9001        ..      STR      r0,[sp,#4]
        0x20006d46:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d48:    00022075    u ..    DCD    139381
    $t
    $Ven$TT$L$$rom_llp_set_fragment_start_report_callback
        0x20006d4c:    b403        ..      PUSH     {r0,r1}
        0x20006d4e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d54] = 0x22039
        0x20006d50:    9001        ..      STR      r0,[sp,#4]
        0x20006d52:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d54:    00022039    9 ..    DCD    139321
    $t
    $Ven$TT$L$$rom_llp_set_fragment_stop_report_callback
        0x20006d58:    b403        ..      PUSH     {r0,r1}
        0x20006d5a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d60] = 0x22045
        0x20006d5c:    9001        ..      STR      r0,[sp,#4]
        0x20006d5e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d60:    00022045    E ..    DCD    139333
    $t
    $Ven$TT$L$$rom_llp_set_tx_end_report_callback
        0x20006d64:    b403        ..      PUSH     {r0,r1}
        0x20006d66:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d6c] = 0x22081
        0x20006d68:    9001        ..      STR      r0,[sp,#4]
        0x20006d6a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d6c:    00022081    . ..    DCD    139393
    $t
    $Ven$TT$L$$rom_llp_set_rx_end_report_callback
        0x20006d70:    b403        ..      PUSH     {r0,r1}
        0x20006d72:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d78] = 0x22069
        0x20006d74:    9001        ..      STR      r0,[sp,#4]
        0x20006d76:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d78:    00022069    i ..    DCD    139369
    $t
    $Ven$TT$L$$rom_llp_set_rf_rx_calib_callback
        0x20006d7c:    b403        ..      PUSH     {r0,r1}
        0x20006d7e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d84] = 0x22051
        0x20006d80:    9001        ..      STR      r0,[sp,#4]
        0x20006d82:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d84:    00022051    Q ..    DCD    139345
    $t
    $Ven$TT$L$$rom_llp_set_rf_tx_calib_callback
        0x20006d88:    b403        ..      PUSH     {r0,r1}
        0x20006d8a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d90] = 0x2205d
        0x20006d8c:    9001        ..      STR      r0,[sp,#4]
        0x20006d8e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d90:    0002205d    ] ..    DCD    139357
    $t
    $Ven$TT$L$$rom_llc_set_trig_schedule_report_callback
        0x20006d94:    b403        ..      PUSH     {r0,r1}
        0x20006d96:    4801        .H      LDR      r0,[pc,#4] ; [0x20006d9c] = 0x2e031
        0x20006d98:    9001        ..      STR      r0,[sp,#4]
        0x20006d9a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006d9c:    0002e031    1...    DCD    188465
    $t
    $Ven$TT$L$$rom_llc_set_timer_enable_callback
        0x20006da0:    b403        ..      PUSH     {r0,r1}
        0x20006da2:    4801        .H      LDR      r0,[pc,#4] ; [0x20006da8] = 0x2e019
        0x20006da4:    9001        ..      STR      r0,[sp,#4]
        0x20006da6:    bd01        ..      POP      {r0,pc}
    $d
        0x20006da8:    0002e019    ....    DCD    188441
    $t
    $Ven$TT$L$$rom_llc_set_timer_get_count_callback
        0x20006dac:    b403        ..      PUSH     {r0,r1}
        0x20006dae:    4801        .H      LDR      r0,[pc,#4] ; [0x20006db4] = 0x2e025
        0x20006db0:    9001        ..      STR      r0,[sp,#4]
        0x20006db2:    bd01        ..      POP      {r0,pc}
    $d
        0x20006db4:    0002e025    %...    DCD    188453
    $t
    $Ven$TT$L$$rom_llc_set_llp_clock_accuracy_callback
        0x20006db8:    b403        ..      PUSH     {r0,r1}
        0x20006dba:    4801        .H      LDR      r0,[pc,#4] ; [0x20006dc0] = 0x2dfb9
        0x20006dbc:    9001        ..      STR      r0,[sp,#4]
        0x20006dbe:    bd01        ..      POP      {r0,pc}
    $d
        0x20006dc0:    0002dfb9    ....    DCD    188345
    $t
    $Ven$TT$L$$rom_llc_set_start_adv_fragment_callback
        0x20006dc4:    b403        ..      PUSH     {r0,r1}
        0x20006dc6:    4801        .H      LDR      r0,[pc,#4] ; [0x20006dcc] = 0x2dfd1
        0x20006dc8:    9001        ..      STR      r0,[sp,#4]
        0x20006dca:    bd01        ..      POP      {r0,pc}
    $d
        0x20006dcc:    0002dfd1    ....    DCD    188369
    $t
    $Ven$TT$L$$rom_llc_set_start_scan_fragment_callback
        0x20006dd0:    b403        ..      PUSH     {r0,r1}
        0x20006dd2:    4801        .H      LDR      r0,[pc,#4] ; [0x20006dd8] = 0x2dff5
        0x20006dd4:    9001        ..      STR      r0,[sp,#4]
        0x20006dd6:    bd01        ..      POP      {r0,pc}
    $d
        0x20006dd8:    0002dff5    ....    DCD    188405
    $t
    $Ven$TT$L$$rom_llc_set_start_init_fragment_callback
        0x20006ddc:    b403        ..      PUSH     {r0,r1}
        0x20006dde:    4801        .H      LDR      r0,[pc,#4] ; [0x20006de4] = 0x2dfdd
        0x20006de0:    9001        ..      STR      r0,[sp,#4]
        0x20006de2:    bd01        ..      POP      {r0,pc}
    $d
        0x20006de4:    0002dfdd    ....    DCD    188381
    $t
    $Ven$TT$L$$rom_llc_set_start_slave_fragment_callback
        0x20006de8:    b403        ..      PUSH     {r0,r1}
        0x20006dea:    4801        .H      LDR      r0,[pc,#4] ; [0x20006df0] = 0x2e001
        0x20006dec:    9001        ..      STR      r0,[sp,#4]
        0x20006dee:    bd01        ..      POP      {r0,pc}
    $d
        0x20006df0:    0002e001    ....    DCD    188417
    $t
    $Ven$TT$L$$rom_llc_set_start_master_fragment_callback
        0x20006df4:    b403        ..      PUSH     {r0,r1}
        0x20006df6:    4801        .H      LDR      r0,[pc,#4] ; [0x20006dfc] = 0x2dfe9
        0x20006df8:    9001        ..      STR      r0,[sp,#4]
        0x20006dfa:    bd01        ..      POP      {r0,pc}
    $d
        0x20006dfc:    0002dfe9    ....    DCD    188393
    $t
    $Ven$TT$L$$rom_llc_set_stop_fragment_callback
        0x20006e00:    b403        ..      PUSH     {r0,r1}
        0x20006e02:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e08] = 0x2e00d
        0x20006e04:    9001        ..      STR      r0,[sp,#4]
        0x20006e06:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e08:    0002e00d    ....    DCD    188429
    $t
    $Ven$TT$L$$rom_llc_set_update_tx_pdu_callback
        0x20006e0c:    b403        ..      PUSH     {r0,r1}
        0x20006e0e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e14] = 0x2e049
        0x20006e10:    9001        ..      STR      r0,[sp,#4]
        0x20006e12:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e14:    0002e049    I...    DCD    188489
    $t
    $Ven$TT$L$$rom_llc_set_update_rx_pdu_callback
        0x20006e18:    b403        ..      PUSH     {r0,r1}
        0x20006e1a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e20] = 0x2e03d
        0x20006e1c:    9001        ..      STR      r0,[sp,#4]
        0x20006e1e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e20:    0002e03d    =...    DCD    188477
    $t
    $Ven$TT$L$$rom_llc_set_get_rssi_callback
        0x20006e24:    b403        ..      PUSH     {r0,r1}
        0x20006e26:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e2c] = 0x2dfad
        0x20006e28:    9001        ..      STR      r0,[sp,#4]
        0x20006e2a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e2c:    0002dfad    ....    DCD    188333
    $t
    $Ven$TT$L$$rom_hci_set_get_event_paramter_max_length_callback
        0x20006e30:    b403        ..      PUSH     {r0,r1}
        0x20006e32:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e38] = 0x3e95d
        0x20006e34:    9001        ..      STR      r0,[sp,#4]
        0x20006e36:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e38:    0003e95d    ]...    DCD    256349
    $t
    $Ven$TT$L$$rom_hci_set_host_send_command_packet_callback
        0x20006e3c:    b403        ..      PUSH     {r0,r1}
        0x20006e3e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e44] = 0x3e975
        0x20006e40:    9001        ..      STR      r0,[sp,#4]
        0x20006e42:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e44:    0003e975    u...    DCD    256373
    $t
    $Ven$TT$L$$rom_hci_set_host_send_acl_data_callback
        0x20006e48:    b403        ..      PUSH     {r0,r1}
        0x20006e4a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e50] = 0x3e969
        0x20006e4c:    9001        ..      STR      r0,[sp,#4]
        0x20006e4e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e50:    0003e969    i...    DCD    256361
    $t
    $Ven$TT$L$$rom_hci_set_controller_report_event_callback
        0x20006e54:    b403        ..      PUSH     {r0,r1}
        0x20006e56:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e5c] = 0x3e951
        0x20006e58:    9001        ..      STR      r0,[sp,#4]
        0x20006e5a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e5c:    0003e951    Q...    DCD    256337
    $t
    $Ven$TT$L$$rom_hci_set_controller_report_acl_data_callback
        0x20006e60:    b403        ..      PUSH     {r0,r1}
        0x20006e62:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e68] = 0x3e945
        0x20006e64:    9001        ..      STR      r0,[sp,#4]
        0x20006e66:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e68:    0003e945    E...    DCD    256325
    $t
    $Ven$TT$L$$rom_controller_event_mask_set_event_mask
        0x20006e6c:    b403        ..      PUSH     {r0,r1}
        0x20006e6e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e74] = 0x3e249
        0x20006e70:    9001        ..      STR      r0,[sp,#4]
        0x20006e72:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e74:    0003e249    I...    DCD    254537
    $t
    $Ven$TT$L$$rom_controller_event_mask_set_le_event_mask
        0x20006e78:    b403        ..      PUSH     {r0,r1}
        0x20006e7a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e80] = 0x3e255
        0x20006e7c:    9001        ..      STR      r0,[sp,#4]
        0x20006e7e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e80:    0003e255    U...    DCD    254549
    $t
    $Ven$TT$L$$rom_hal_rf_tx_power_set
        0x20006e84:    b403        ..      PUSH     {r0,r1}
        0x20006e86:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e8c] = 0x15905
        0x20006e88:    9001        ..      STR      r0,[sp,#4]
        0x20006e8a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e8c:    00015905    .Y..    DCD    88325
    $t
    $Ven$TT$L$$rom_hw_efuse_read_bytes
        0x20006e90:    b403        ..      PUSH     {r0,r1}
        0x20006e92:    4801        .H      LDR      r0,[pc,#4] ; [0x20006e98] = 0x17ef5
        0x20006e94:    9001        ..      STR      r0,[sp,#4]
        0x20006e96:    bd01        ..      POP      {r0,pc}
    $d
        0x20006e98:    00017ef5    .~..    DCD    98037
    $t
    $Ven$TT$L$$rom_gap_api_set_public_device_address
        0x20006e9c:    b403        ..      PUSH     {r0,r1}
        0x20006e9e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ea4] = 0x32779
        0x20006ea0:    9001        ..      STR      r0,[sp,#4]
        0x20006ea2:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ea4:    00032779    y'..    DCD    206713
    $t
    $Ven$TT$L$$rom_gap_api_set_advertising_parameters
        0x20006ea8:    b403        ..      PUSH     {r0,r1}
        0x20006eaa:    4801        .H      LDR      r0,[pc,#4] ; [0x20006eb0] = 0x323e5
        0x20006eac:    9001        ..      STR      r0,[sp,#4]
        0x20006eae:    bd01        ..      POP      {r0,pc}
    $d
        0x20006eb0:    000323e5    .#..    DCD    205797
    $t
    $Ven$TT$L$$rom_gap_api_set_advertising_data
        0x20006eb4:    b403        ..      PUSH     {r0,r1}
        0x20006eb6:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ebc] = 0x3238d
        0x20006eb8:    9001        ..      STR      r0,[sp,#4]
        0x20006eba:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ebc:    0003238d    .#..    DCD    205709
    $t
    $Ven$TT$L$$rom_gap_api_set_scan_response_data
        0x20006ec0:    b403        ..      PUSH     {r0,r1}
        0x20006ec2:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ec8] = 0x3285d
        0x20006ec4:    9001        ..      STR      r0,[sp,#4]
        0x20006ec6:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ec8:    0003285d    ](..    DCD    206941
    $t
    $Ven$TT$L$$rom_gap_api_sm_bond_info_save_by_app_config_only_for_legacy_pair
        0x20006ecc:    b403        ..      PUSH     {r0,r1}
        0x20006ece:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ed4] = 0x3289f
        0x20006ed0:    9001        ..      STR      r0,[sp,#4]
        0x20006ed2:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ed4:    0003289f    .(..    DCD    207007
    $t
    $Ven$TT$L$$rom_gap_api_update_pair_para
        0x20006ed8:    b403        ..      PUSH     {r0,r1}
        0x20006eda:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ee0] = 0x328eb
        0x20006edc:    9001        ..      STR      r0,[sp,#4]
        0x20006ede:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ee0:    000328eb    .(..    DCD    207083
    $t
    $Ven$TT$L$$rom_hw_uart_transmit
        0x20006ee4:    b403        ..      PUSH     {r0,r1}
        0x20006ee6:    4801        .H      LDR      r0,[pc,#4] ; [0x20006eec] = 0x1de7d
        0x20006ee8:    9001        ..      STR      r0,[sp,#4]
        0x20006eea:    bd01        ..      POP      {r0,pc}
    $d
        0x20006eec:    0001de7d    }...    DCD    122493
    $t
    $Ven$TT$L$$rom_llc_on_llc_task_received_msg
        0x20006ef0:    b403        ..      PUSH     {r0,r1}
        0x20006ef2:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ef8] = 0x2bca5
        0x20006ef4:    9001        ..      STR      r0,[sp,#4]
        0x20006ef6:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ef8:    0002bca5    ....    DCD    179365
    $t
    $Ven$TT$L$$OS_Tick_Enable
        0x20006efc:    b403        ..      PUSH     {r0,r1}
        0x20006efe:    4801        .H      LDR      r0,[pc,#4] ; [0x20006f04] = 0x1087d
        0x20006f00:    9001        ..      STR      r0,[sp,#4]
        0x20006f02:    bd01        ..      POP      {r0,pc}
    $d
        0x20006f04:    0001087d    }...    DCD    67709
    $t
    $Ven$TT$L$$OS_Tick_Disable
        0x20006f08:    b403        ..      PUSH     {r0,r1}
        0x20006f0a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006f10] = 0x10861
        0x20006f0c:    9001        ..      STR      r0,[sp,#4]
        0x20006f0e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006f10:    00010861    a...    DCD    67681
    $t
    $Ven$TT$L$$osKernelInitialize
        0x20006f14:    b403        ..      PUSH     {r0,r1}
        0x20006f16:    4801        .H      LDR      r0,[pc,#4] ; [0x20006f1c] = 0x1104d
        0x20006f18:    9001        ..      STR      r0,[sp,#4]
        0x20006f1a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006f1c:    0001104d    M...    DCD    69709
    $t
    $Ven$TT$L$$osKernelStart
        0x20006f20:    b403        ..      PUSH     {r0,r1}
        0x20006f22:    4801        .H      LDR      r0,[pc,#4] ; [0x20006f28] = 0x110e1
        0x20006f24:    9001        ..      STR      r0,[sp,#4]
        0x20006f26:    bd01        ..      POP      {r0,pc}
    $d
        0x20006f28:    000110e1    ....    DCD    69857
    $t
    $Ven$TT$L$$rom_host_connection_for_handle
        0x20006f2c:    b403        ..      PUSH     {r0,r1}
        0x20006f2e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006f34] = 0x352d9
        0x20006f30:    9001        ..      STR      r0,[sp,#4]
        0x20006f32:    bd01        ..      POP      {r0,pc}
    $d
        0x20006f34:    000352d9    .R..    DCD    217817
    $t
    $Ven$TT$L$$rom_gatt_client_handle_error_response
        0x20006f38:    b403        ..      PUSH     {r0,r1}
        0x20006f3a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006f40] = 0x33039
        0x20006f3c:    9001        ..      STR      r0,[sp,#4]
        0x20006f3e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006f40:    00033039    90..    DCD    208953
    $t
    $Ven$TT$L$$rom_handle_exchange_mtu_request
        0x20006f44:    b403        ..      PUSH     {r0,r1}
        0x20006f46:    4801        .H      LDR      r0,[pc,#4] ; [0x20006f4c] = 0x34429
        0x20006f48:    9001        ..      STR      r0,[sp,#4]
        0x20006f4a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006f4c:    00034429    )D..    DCD    214057
    $t
    $Ven$TT$L$$ble_callback_send_event
        0x20006f50:    b403        ..      PUSH     {r0,r1}
        0x20006f52:    4801        .H      LDR      r0,[pc,#4] ; [0x20006f58] = 0x305b1
        0x20006f54:    9001        ..      STR      r0,[sp,#4]
        0x20006f56:    bd01        ..      POP      {r0,pc}
    $d
        0x20006f58:    000305b1    ....    DCD    198065
    $t
    $Ven$TT$L$$rom_stack_utility_little_endian_read_16
        0x20006f5c:    b403        ..      PUSH     {r0,r1}
        0x20006f5e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006f64] = 0x3a799
        0x20006f60:    9001        ..      STR      r0,[sp,#4]
        0x20006f62:    bd01        ..      POP      {r0,pc}
    $d
        0x20006f64:    0003a799    ....    DCD    239513
    $t
    $Ven$TT$L$$rom_gatt_client_handle_exchange_mtu_response
        0x20006f68:    b403        ..      PUSH     {r0,r1}
        0x20006f6a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006f70] = 0x330a5
        0x20006f6c:    9001        ..      STR      r0,[sp,#4]
        0x20006f6e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006f70:    000330a5    .0..    DCD    209061
    $t
    $Ven$TT$L$$rom_handle_find_information_request
        0x20006f74:    b403        ..      PUSH     {r0,r1}
        0x20006f76:    4801        .H      LDR      r0,[pc,#4] ; [0x20006f7c] = 0x34649
        0x20006f78:    9001        ..      STR      r0,[sp,#4]
        0x20006f7a:    bd01        ..      POP      {r0,pc}
    $d
        0x20006f7c:    00034649    IF..    DCD    214601
    $t
    $Ven$TT$L$$rom_gatt_client_handle_find_information_reply
        0x20006f80:    b403        ..      PUSH     {r0,r1}
        0x20006f82:    4801        .H      LDR      r0,[pc,#4] ; [0x20006f88] = 0x33189
        0x20006f84:    9001        ..      STR      r0,[sp,#4]
        0x20006f86:    bd01        ..      POP      {r0,pc}
    $d
        0x20006f88:    00033189    .1..    DCD    209289
    $t
    $Ven$TT$L$$rom_handle_find_by_type_value_request
        0x20006f8c:    b403        ..      PUSH     {r0,r1}
        0x20006f8e:    4801        .H      LDR      r0,[pc,#4] ; [0x20006f94] = 0x344ed
        0x20006f90:    9001        ..      STR      r0,[sp,#4]
        0x20006f92:    bd01        ..      POP      {r0,pc}
    $d
        0x20006f94:    000344ed    .D..    DCD    214253
    $t
    $Ven$TT$L$$rom_gatt_client_handle_find_by_type_value_response
        0x20006f98:    b403        ..      PUSH     {r0,r1}
        0x20006f9a:    4801        .H      LDR      r0,[pc,#4] ; [0x20006fa0] = 0x33109
        0x20006f9c:    9001        ..      STR      r0,[sp,#4]
        0x20006f9e:    bd01        ..      POP      {r0,pc}
    $d
        0x20006fa0:    00033109    .1..    DCD    209161
    $t
    $Ven$TT$L$$rom_gatt_client_handle_read_by_type_response
        0x20006fa4:    b403        ..      PUSH     {r0,r1}
        0x20006fa6:    4801        .H      LDR      r0,[pc,#4] ; [0x20006fac] = 0x332e1
        0x20006fa8:    9001        ..      STR      r0,[sp,#4]
        0x20006faa:    bd01        ..      POP      {r0,pc}
    $d
        0x20006fac:    000332e1    .2..    DCD    209633
    $t
    $Ven$TT$L$$rom_gatt_client_handle_read_response
        0x20006fb0:    b403        ..      PUSH     {r0,r1}
        0x20006fb2:    4801        .H      LDR      r0,[pc,#4] ; [0x20006fb8] = 0x334a9
        0x20006fb4:    9001        ..      STR      r0,[sp,#4]
        0x20006fb6:    bd01        ..      POP      {r0,pc}
    $d
        0x20006fb8:    000334a9    .4..    DCD    210089
    $t
    $Ven$TT$L$$rom_gatt_client_handle_read_blob_response
        0x20006fbc:    b403        ..      PUSH     {r0,r1}
        0x20006fbe:    4801        .H      LDR      r0,[pc,#4] ; [0x20006fc4] = 0x33235
        0x20006fc0:    9001        ..      STR      r0,[sp,#4]
        0x20006fc2:    bd01        ..      POP      {r0,pc}
    $d
        0x20006fc4:    00033235    52..    DCD    209461
    $t
    $Ven$TT$L$$rom_handle_rfu_request_opcode
        0x20006fc8:    b403        ..      PUSH     {r0,r1}
        0x20006fca:    4801        .H      LDR      r0,[pc,#4] ; [0x20006fd0] = 0x34e81
        0x20006fcc:    9001        ..      STR      r0,[sp,#4]
        0x20006fce:    bd01        ..      POP      {r0,pc}
    $d
        0x20006fd0:    00034e81    .N..    DCD    216705
    $t
    $Ven$TT$L$$rom_handle_read_by_group_type_request
        0x20006fd4:    b403        ..      PUSH     {r0,r1}
        0x20006fd6:    4801        .H      LDR      r0,[pc,#4] ; [0x20006fdc] = 0x34935
        0x20006fd8:    9001        ..      STR      r0,[sp,#4]
        0x20006fda:    bd01        ..      POP      {r0,pc}
    $d
        0x20006fdc:    00034935    5I..    DCD    215349
    $t
    $Ven$TT$L$$rom_gatt_client_handle_read_by_group_type_response
        0x20006fe0:    b403        ..      PUSH     {r0,r1}
        0x20006fe2:    4801        .H      LDR      r0,[pc,#4] ; [0x20006fe8] = 0x33269
        0x20006fe4:    9001        ..      STR      r0,[sp,#4]
        0x20006fe6:    bd01        ..      POP      {r0,pc}
    $d
        0x20006fe8:    00033269    i2..    DCD    209513
    $t
    $Ven$TT$L$$rom_gatt_client_handle_write_response
        0x20006fec:    b403        ..      PUSH     {r0,r1}
        0x20006fee:    4801        .H      LDR      r0,[pc,#4] ; [0x20006ff4] = 0x335b1
        0x20006ff0:    9001        ..      STR      r0,[sp,#4]
        0x20006ff2:    bd01        ..      POP      {r0,pc}
    $d
        0x20006ff4:    000335b1    .5..    DCD    210353
    $t
    $Ven$TT$L$$rom_gatt_client_handle_prepare_write_response
        0x20006ff8:    b403        ..      PUSH     {r0,r1}
        0x20006ffa:    4801        .H      LDR      r0,[pc,#4] ; [0x20007000] = 0x331c3
        0x20006ffc:    9001        ..      STR      r0,[sp,#4]
        0x20006ffe:    bd01        ..      POP      {r0,pc}
    $d
        0x20007000:    000331c3    .1..    DCD    209347
    $t
    $Ven$TT$L$$rom_gatt_client_handle_execute_write_response
        0x20007004:    b403        ..      PUSH     {r0,r1}
        0x20007006:    4801        .H      LDR      r0,[pc,#4] ; [0x2000700c] = 0x330dd
        0x20007008:    9001        ..      STR      r0,[sp,#4]
        0x2000700a:    bd01        ..      POP      {r0,pc}
    $d
        0x2000700c:    000330dd    .0..    DCD    209117
    $t
    $Ven$TT$L$$rom_gatt_client_handle_value_notification
        0x20007010:    b403        ..      PUSH     {r0,r1}
        0x20007012:    4801        .H      LDR      r0,[pc,#4] ; [0x20007018] = 0x3358d
        0x20007014:    9001        ..      STR      r0,[sp,#4]
        0x20007016:    bd01        ..      POP      {r0,pc}
    $d
        0x20007018:    0003358d    .5..    DCD    210317
    $t
    $Ven$TT$L$$rom_gatt_client_handle_value_indication
        0x2000701c:    b403        ..      PUSH     {r0,r1}
        0x2000701e:    4801        .H      LDR      r0,[pc,#4] ; [0x20007024] = 0x33559
        0x20007020:    9001        ..      STR      r0,[sp,#4]
        0x20007022:    bd01        ..      POP      {r0,pc}
    $d
        0x20007024:    00033559    Y5..    DCD    210265
    $t
    $Ven$TT$L$$rom_gatt_client_run
        0x20007028:    b403        ..      PUSH     {r0,r1}
        0x2000702a:    4801        .H      LDR      r0,[pc,#4] ; [0x20007030] = 0x33609
        0x2000702c:    9001        ..      STR      r0,[sp,#4]
        0x2000702e:    bd01        ..      POP      {r0,pc}
    $d
        0x20007030:    00033609    .6..    DCD    210441
    $t
    $Ven$TT$L$$rom_att_db_util_add_characteristic_uuid128
        0x20007034:    b403        ..      PUSH     {r0,r1}
        0x20007036:    4801        .H      LDR      r0,[pc,#4] ; [0x2000703c] = 0x30bf5
        0x20007038:    9001        ..      STR      r0,[sp,#4]
        0x2000703a:    bd01        ..      POP      {r0,pc}
    $d
        0x2000703c:    00030bf5    ....    DCD    199669
    $t
    $Ven$TT$L$$rom_att_db_util_add_characteristic_uuid16
        0x20007040:    b403        ..      PUSH     {r0,r1}
        0x20007042:    4801        .H      LDR      r0,[pc,#4] ; [0x20007048] = 0x30c41
        0x20007044:    9001        ..      STR      r0,[sp,#4]
        0x20007046:    bd01        ..      POP      {r0,pc}
    $d
        0x20007048:    00030c41    A...    DCD    199745
    $t
    $Ven$TT$L$$rom_att_db_util_get_last_handle
        0x2000704c:    b403        ..      PUSH     {r0,r1}
        0x2000704e:    4801        .H      LDR      r0,[pc,#4] ; [0x20007054] = 0x30ce1
        0x20007050:    9001        ..      STR      r0,[sp,#4]
        0x20007052:    bd01        ..      POP      {r0,pc}
    $d
        0x20007054:    00030ce1    ....    DCD    199905
    $t
    $Ven$TT$L$$rom_att_db_util_get_size
        0x20007058:    b403        ..      PUSH     {r0,r1}
        0x2000705a:    4801        .H      LDR      r0,[pc,#4] ; [0x20007060] = 0x30cf1
        0x2000705c:    9001        ..      STR      r0,[sp,#4]
        0x2000705e:    bd01        ..      POP      {r0,pc}
    $d
        0x20007060:    00030cf1    ....    DCD    199921
    $t
    $Ven$TT$L$$rom_att_db_util_add_service_uuid128
        0x20007064:    b403        ..      PUSH     {r0,r1}
        0x20007066:    4801        .H      LDR      r0,[pc,#4] ; [0x2000706c] = 0x30c91
        0x20007068:    9001        ..      STR      r0,[sp,#4]
        0x2000706a:    bd01        ..      POP      {r0,pc}
    $d
        0x2000706c:    00030c91    ....    DCD    199825
    $t
    $Ven$TT$L$$rom_att_db_util_add_service_uuid16
        0x20007070:    b403        ..      PUSH     {r0,r1}
        0x20007072:    4801        .H      LDR      r0,[pc,#4] ; [0x20007078] = 0x30ca3
        0x20007074:    9001        ..      STR      r0,[sp,#4]
        0x20007076:    bd01        ..      POP      {r0,pc}
    $d
        0x20007078:    00030ca3    ....    DCD    199843
    $t
    $Ven$TT$L$$rom_att_db_util_init
        0x2000707c:    b403        ..      PUSH     {r0,r1}
        0x2000707e:    4801        .H      LDR      r0,[pc,#4] ; [0x20007084] = 0x30d11
        0x20007080:    9001        ..      STR      r0,[sp,#4]
        0x20007082:    bd01        ..      POP      {r0,pc}
    $d
        0x20007084:    00030d11    ....    DCD    199953
    $t
    $Ven$TT$L$$rom_l2cap_get_avail_data_buffer
        0x20007088:    b403        ..      PUSH     {r0,r1}
        0x2000708a:    4801        .H      LDR      r0,[pc,#4] ; [0x20007090] = 0x35dc1
        0x2000708c:    9001        ..      STR      r0,[sp,#4]
        0x2000708e:    bd01        ..      POP      {r0,pc}
    $d
        0x20007090:    00035dc1    .]..    DCD    220609
    $t
    $Ven$TT$L$$rom_setup_error
        0x20007094:    b403        ..      PUSH     {r0,r1}
        0x20007096:    4801        .H      LDR      r0,[pc,#4] ; [0x2000709c] = 0x36631
        0x20007098:    9001        ..      STR      r0,[sp,#4]
        0x2000709a:    bd01        ..      POP      {r0,pc}
    $d
        0x2000709c:    00036631    1f..    DCD    222769
    $t
    $Ven$TT$L$$rom_att_tx_buffer_commit
        0x200070a0:    b403        ..      PUSH     {r0,r1}
        0x200070a2:    4801        .H      LDR      r0,[pc,#4] ; [0x200070a8] = 0x316ed
        0x200070a4:    9001        ..      STR      r0,[sp,#4]
        0x200070a6:    bd01        ..      POP      {r0,pc}
    $d
        0x200070a8:    000316ed    ....    DCD    202477
    $t
    $Ven$TT$L$$rom_att_find_handle
        0x200070ac:    b403        ..      PUSH     {r0,r1}
        0x200070ae:    4801        .H      LDR      r0,[pc,#4] ; [0x200070b4] = 0x30f19
        0x200070b0:    9001        ..      STR      r0,[sp,#4]
        0x200070b2:    bd01        ..      POP      {r0,pc}
    $d
        0x200070b4:    00030f19    ....    DCD    200473
    $t
    $Ven$TT$L$$rom_setup_error_write_not_permitted
        0x200070b8:    b403        ..      PUSH     {r0,r1}
        0x200070ba:    4801        .H      LDR      r0,[pc,#4] ; [0x200070c0] = 0x36687
        0x200070bc:    9001        ..      STR      r0,[sp,#4]
        0x200070be:    bd01        ..      POP      {r0,pc}
    $d
        0x200070c0:    00036687    .f..    DCD    222855
    $t
    $Ven$TT$L$$rom_setup_error_invalid_handle
        0x200070c4:    b403        ..      PUSH     {r0,r1}
        0x200070c6:    4801        .H      LDR      r0,[pc,#4] ; [0x200070cc] = 0x36657
        0x200070c8:    9001        ..      STR      r0,[sp,#4]
        0x200070ca:    bd01        ..      POP      {r0,pc}
    $d
        0x200070cc:    00036657    Wf..    DCD    222807
    $t
    $Ven$TT$L$$rom_att_validate_security
        0x200070d0:    b403        ..      PUSH     {r0,r1}
        0x200070d2:    4801        .H      LDR      r0,[pc,#4] ; [0x200070d8] = 0x3174d
        0x200070d4:    9001        ..      STR      r0,[sp,#4]
        0x200070d6:    bd01        ..      POP      {r0,pc}
    $d
        0x200070d8:    0003174d    M...    DCD    202573
    $t
    $Ven$TT$L$$rom_setup_error_read_not_permitted
        0x200070dc:    b403        ..      PUSH     {r0,r1}
        0x200070de:    4801        .H      LDR      r0,[pc,#4] ; [0x200070e4] = 0x3667b
        0x200070e0:    9001        ..      STR      r0,[sp,#4]
        0x200070e2:    bd01        ..      POP      {r0,pc}
    $d
        0x200070e4:    0003667b    {f..    DCD    222843
    $t
    $Ven$TT$L$$rom_setup_error_invalid_offset
        0x200070e8:    b403        ..      PUSH     {r0,r1}
        0x200070ea:    4801        .H      LDR      r0,[pc,#4] ; [0x200070f0] = 0x36663
        0x200070ec:    9001        ..      STR      r0,[sp,#4]
        0x200070ee:    bd01        ..      POP      {r0,pc}
    $d
        0x200070f0:    00036663    cf..    DCD    222819
    $t
    $Ven$TT$L$$rom_att_iterator_init
        0x200070f4:    b403        ..      PUSH     {r0,r1}
        0x200070f6:    4801        .H      LDR      r0,[pc,#4] ; [0x200070fc] = 0x3101d
        0x200070f8:    9001        ..      STR      r0,[sp,#4]
        0x200070fa:    bd01        ..      POP      {r0,pc}
    $d
        0x200070fc:    0003101d    ....    DCD    200733
    $t
    $Ven$TT$L$$rom_att_iterator_has_next
        0x20007100:    b403        ..      PUSH     {r0,r1}
        0x20007102:    4801        .H      LDR      r0,[pc,#4] ; [0x20007108] = 0x31015
        0x20007104:    9001        ..      STR      r0,[sp,#4]
        0x20007106:    bd01        ..      POP      {r0,pc}
    $d
        0x20007108:    00031015    ....    DCD    200725
    $t
    $Ven$TT$L$$rom_att_iterator_fetch_next
        0x2000710c:    b403        ..      PUSH     {r0,r1}
        0x2000710e:    4801        .H      LDR      r0,[pc,#4] ; [0x20007114] = 0x30faf
        0x20007110:    9001        ..      STR      r0,[sp,#4]
        0x20007112:    bd01        ..      POP      {r0,pc}
    $d
        0x20007114:    00030faf    ....    DCD    200623
    $t
    $Ven$TT$L$$rom_att_iterator_match_uuid
        0x20007118:    b403        ..      PUSH     {r0,r1}
        0x2000711a:    4801        .H      LDR      r0,[pc,#4] ; [0x20007120] = 0x31029
        0x2000711c:    9001        ..      STR      r0,[sp,#4]
        0x2000711e:    bd01        ..      POP      {r0,pc}
    $d
        0x20007120:    00031029    )...    DCD    200745
    $t
    $Ven$TT$L$$rom_stack_utility_little_endian_store_16
        0x20007124:    b403        ..      PUSH     {r0,r1}
        0x20007126:    4801        .H      LDR      r0,[pc,#4] ; [0x2000712c] = 0x3a7d1
        0x20007128:    9001        ..      STR      r0,[sp,#4]
        0x2000712a:    bd01        ..      POP      {r0,pc}
    $d
        0x2000712c:    0003a7d1    ....    DCD    239569
    $t
    $Ven$TT$L$$rom_setup_error_atribute_not_found
        0x20007130:    b403        ..      PUSH     {r0,r1}
        0x20007132:    4801        .H      LDR      r0,[pc,#4] ; [0x20007138] = 0x3664b
        0x20007134:    9001        ..      STR      r0,[sp,#4]
        0x20007136:    bd01        ..      POP      {r0,pc}
    $d
        0x20007138:    0003664b    Kf..    DCD    222795
    $t
    $Ven$TT$L$$rom_setup_error_invalid_value_length
        0x2000713c:    b403        ..      PUSH     {r0,r1}
        0x2000713e:    4801        .H      LDR      r0,[pc,#4] ; [0x20007144] = 0x3666f
        0x20007140:    9001        ..      STR      r0,[sp,#4]
        0x20007142:    bd01        ..      POP      {r0,pc}
    $d
        0x20007144:    0003666f    of..    DCD    222831
    $t
    $Ven$TT$L$$rom_llc_tool_read_little_endian_uint64
        0x20007148:    b403        ..      PUSH     {r0,r1}
        0x2000714a:    4801        .H      LDR      r0,[pc,#4] ; [0x20007150] = 0x2ef57
        0x2000714c:    9001        ..      STR      r0,[sp,#4]
        0x2000714e:    bd01        ..      POP      {r0,pc}
    $d
        0x20007150:    0002ef57    W...    DCD    192343
    $t
    $Ven$TT$L$$rom_controller_event_HCI_LE_Read_Remote_Features_Complete
        0x20007154:    b403        ..      PUSH     {r0,r1}
        0x20007156:    4801        .H      LDR      r0,[pc,#4] ; [0x2000715c] = 0x3e0dd
        0x20007158:    9001        ..      STR      r0,[sp,#4]
        0x2000715a:    bd01        ..      POP      {r0,pc}
    $d
        0x2000715c:    0003e0dd    ....    DCD    254173
    $t
    $Ven$TT$L$$rom_llc_feature_exchange_procedure_alloc_rsp_pdu
        0x20007160:    b403        ..      PUSH     {r0,r1}
        0x20007162:    4801        .H      LDR      r0,[pc,#4] ; [0x20007168] = 0x27afd
        0x20007164:    9001        ..      STR      r0,[sp,#4]
        0x20007166:    bd01        ..      POP      {r0,pc}
    $d
        0x20007168:    00027afd    .z..    DCD    162557
    $t
    $Ven$TT$L$$rom_llc_ctrl_procedure_send_ctrl_pdu
        0x2000716c:    b403        ..      PUSH     {r0,r1}
        0x2000716e:    4801        .H      LDR      r0,[pc,#4] ; [0x20007174] = 0x252cd
        0x20007170:    9001        ..      STR      r0,[sp,#4]
        0x20007172:    bd01        ..      POP      {r0,pc}
    $d
        0x20007174:    000252cd    .R..    DCD    152269
    $t
    $Ven$TT$L$$rom_llc_ctrl_procedure_rsp_unknown
        0x20007178:    b403        ..      PUSH     {r0,r1}
        0x2000717a:    4801        .H      LDR      r0,[pc,#4] ; [0x20007180] = 0x25205
        0x2000717c:    9001        ..      STR      r0,[sp,#4]
        0x2000717e:    bd01        ..      POP      {r0,pc}
    $d
        0x20007180:    00025205    .R..    DCD    152069
    $t
    $Ven$TT$L$$mlog_32
        0x20007184:    b403        ..      PUSH     {r0,r1}
        0x20007186:    4801        .H      LDR      r0,[pc,#4] ; [0x2000718c] = 0x2f74d
        0x20007188:    9001        ..      STR      r0,[sp,#4]
        0x2000718a:    bd01        ..      POP      {r0,pc}
    $d
        0x2000718c:    0002f74d    M...    DCD    194381
    $t
    $Ven$TT$L$$system_error
        0x20007190:    b403        ..      PUSH     {r0,r1}
        0x20007192:    4801        .H      LDR      r0,[pc,#4] ; [0x20007198] = 0x14269
        0x20007194:    9001        ..      STR      r0,[sp,#4]
        0x20007196:    bd01        ..      POP      {r0,pc}
    $d
        0x20007198:    00014269    iB..    DCD    82537
    $t
    $Ven$TT$L$$rom_llc_timer_get_count
        0x2000719c:    b403        ..      PUSH     {r0,r1}
        0x2000719e:    4801        .H      LDR      r0,[pc,#4] ; [0x200071a4] = 0x2ee31
        0x200071a0:    9001        ..      STR      r0,[sp,#4]
        0x200071a2:    bd01        ..      POP      {r0,pc}
    $d
        0x200071a4:    0002ee31    1...    DCD    192049
    $t
    $Ven$TT$L$$rom_llp_hw_set_work_time_us
        0x200071a8:    b403        ..      PUSH     {r0,r1}
        0x200071aa:    4801        .H      LDR      r0,[pc,#4] ; [0x200071b0] = 0x217a1
        0x200071ac:    9001        ..      STR      r0,[sp,#4]
        0x200071ae:    bd01        ..      POP      {r0,pc}
    $d
        0x200071b0:    000217a1    ....    DCD    137121
    $t
    $Ven$TT$L$$rom_llp_hw_set_ifs
        0x200071b4:    b403        ..      PUSH     {r0,r1}
        0x200071b6:    4801        .H      LDR      r0,[pc,#4] ; [0x200071bc] = 0x210dd
        0x200071b8:    9001        ..      STR      r0,[sp,#4]
        0x200071ba:    bd01        ..      POP      {r0,pc}
    $d
        0x200071bc:    000210dd    ....    DCD    135389
    $t
    $Ven$TT$L$$rom_llp_hw_set_trx_param
        0x200071c0:    b403        ..      PUSH     {r0,r1}
        0x200071c2:    4801        .H      LDR      r0,[pc,#4] ; [0x200071c8] = 0x215f1
        0x200071c4:    9001        ..      STR      r0,[sp,#4]
        0x200071c6:    bd01        ..      POP      {r0,pc}
    $d
        0x200071c8:    000215f1    ....    DCD    136689
    $t
    $Ven$TT$L$$rom_llp_hw_set_tx_pdu
        0x200071cc:    b403        ..      PUSH     {r0,r1}
        0x200071ce:    4801        .H      LDR      r0,[pc,#4] ; [0x200071d4] = 0x21749
        0x200071d0:    9001        ..      STR      r0,[sp,#4]
        0x200071d2:    bd01        ..      POP      {r0,pc}
    $d
        0x200071d4:    00021749    I...    DCD    137033
    $t
    $Ven$TT$L$$rom_llp_hw_set_rx_pdu
        0x200071d8:    b403        ..      PUSH     {r0,r1}
        0x200071da:    4801        .H      LDR      r0,[pc,#4] ; [0x200071e0] = 0x21349
        0x200071dc:    9001        ..      STR      r0,[sp,#4]
        0x200071de:    bd01        ..      POP      {r0,pc}
    $d
        0x200071e0:    00021349    I...    DCD    136009
    $t
    $Ven$TT$L$$rom_llp_hw_set_trt_mode_start_time
        0x200071e4:    b403        ..      PUSH     {r0,r1}
        0x200071e6:    4801        .H      LDR      r0,[pc,#4] ; [0x200071ec] = 0x21571
        0x200071e8:    9001        ..      STR      r0,[sp,#4]
        0x200071ea:    bd01        ..      POP      {r0,pc}
    $d
        0x200071ec:    00021571    q...    DCD    136561
    $t
    $Ven$TT$L$$rom_llp_hw_set_adv_mode
        0x200071f0:    b403        ..      PUSH     {r0,r1}
        0x200071f2:    4801        .H      LDR      r0,[pc,#4] ; [0x200071f8] = 0x20f9d
        0x200071f4:    9001        ..      STR      r0,[sp,#4]
        0x200071f6:    bd01        ..      POP      {r0,pc}
    $d
        0x200071f8:    00020f9d    ....    DCD    135069
    $t
    $Ven$TT$L$$rom_llp_is_idle
        0x200071fc:    b403        ..      PUSH     {r0,r1}
        0x200071fe:    4801        .H      LDR      r0,[pc,#4] ; [0x20007204] = 0x21ae1
        0x20007200:    9001        ..      STR      r0,[sp,#4]
        0x20007202:    bd01        ..      POP      {r0,pc}
    $d
        0x20007204:    00021ae1    ....    DCD    137953
    $t
    $Ven$TT$L$$rom_llp_hw_sleep_cycles_of_low_clk
        0x20007208:    b403        ..      PUSH     {r0,r1}
        0x2000720a:    4801        .H      LDR      r0,[pc,#4] ; [0x20007210] = 0x2181d
        0x2000720c:    9001        ..      STR      r0,[sp,#4]
        0x2000720e:    bd01        ..      POP      {r0,pc}
    $d
        0x20007210:    0002181d    ....    DCD    137245
    $t
    $Ven$TT$L$$rom_llp_hw_wakeup
        0x20007214:    b403        ..      PUSH     {r0,r1}
        0x20007216:    4801        .H      LDR      r0,[pc,#4] ; [0x2000721c] = 0x2184d
        0x20007218:    9001        ..      STR      r0,[sp,#4]
        0x2000721a:    bd01        ..      POP      {r0,pc}
    $d
        0x2000721c:    0002184d    M...    DCD    137293
    $t
    $Ven$TT$L$$rom_llp_hw_set_rtr_mode_start_time
        0x20007220:    b403        ..      PUSH     {r0,r1}
        0x20007222:    4801        .H      LDR      r0,[pc,#4] ; [0x20007228] = 0x21291
        0x20007224:    9001        ..      STR      r0,[sp,#4]
        0x20007226:    bd01        ..      POP      {r0,pc}
    $d
        0x20007228:    00021291    ....    DCD    135825
    $t
    $Ven$TT$L$$rom_llp_hw_set_init_mode
        0x2000722c:    b403        ..      PUSH     {r0,r1}
        0x2000722e:    4801        .H      LDR      r0,[pc,#4] ; [0x20007234] = 0x211f1
        0x20007230:    9001        ..      STR      r0,[sp,#4]
        0x20007232:    bd01        ..      POP      {r0,pc}
    $d
        0x20007234:    000211f1    ....    DCD    135665
    $t
    $Ven$TT$L$$rom_llp_hw_set_master_mode
        0x20007238:    b403        ..      PUSH     {r0,r1}
        0x2000723a:    4801        .H      LDR      r0,[pc,#4] ; [0x20007240] = 0x21235
        0x2000723c:    9001        ..      STR      r0,[sp,#4]
        0x2000723e:    bd01        ..      POP      {r0,pc}
    $d
        0x20007240:    00021235    5...    DCD    135733
    $t
    $Ven$TT$L$$rom_llp_hw_set_scan_mode
        0x20007244:    b403        ..      PUSH     {r0,r1}
        0x20007246:    4801        .H      LDR      r0,[pc,#4] ; [0x2000724c] = 0x213d5
        0x20007248:    9001        ..      STR      r0,[sp,#4]
        0x2000724a:    bd01        ..      POP      {r0,pc}
    $d
        0x2000724c:    000213d5    ....    DCD    136149
    $t
    $Ven$TT$L$$rom_llp_hw_set_slave_rx_window
        0x20007250:    b403        ..      PUSH     {r0,r1}
        0x20007252:    4801        .H      LDR      r0,[pc,#4] ; [0x20007258] = 0x21461
        0x20007254:    9001        ..      STR      r0,[sp,#4]
        0x20007256:    bd01        ..      POP      {r0,pc}
    $d
        0x20007258:    00021461    a...    DCD    136289
    $t
    $Ven$TT$L$$rom_llp_hw_set_slave_mode
        0x2000725c:    b403        ..      PUSH     {r0,r1}
        0x2000725e:    4801        .H      LDR      r0,[pc,#4] ; [0x20007264] = 0x21415
        0x20007260:    9001        ..      STR      r0,[sp,#4]
        0x20007262:    bd01        ..      POP      {r0,pc}
    $d
        0x20007264:    00021415    ....    DCD    136213
    $t
    $Ven$TT$L$$rom_llp_sleep_wakeup
        0x20007268:    b403        ..      PUSH     {r0,r1}
        0x2000726a:    4801        .H      LDR      r0,[pc,#4] ; [0x20007270] = 0x22411
        0x2000726c:    9001        ..      STR      r0,[sp,#4]
        0x2000726e:    bd01        ..      POP      {r0,pc}
    $d
        0x20007270:    00022411    .$..    DCD    140305
    $t
    $Ven$TT$L$$rom_llp_sleep_on_fragment_config_succeed
        0x20007274:    b403        ..      PUSH     {r0,r1}
        0x20007276:    4801        .H      LDR      r0,[pc,#4] ; [0x2000727c] = 0x222e9
        0x20007278:    9001        ..      STR      r0,[sp,#4]
        0x2000727a:    bd01        ..      POP      {r0,pc}
    $d
        0x2000727c:    000222e9    ."..    DCD    140009
    $t
    $Ven$TT$L$$rom_llp_scan_init_start_time_adjust
        0x20007280:    b403        ..      PUSH     {r0,r1}
        0x20007282:    4801        .H      LDR      r0,[pc,#4] ; [0x20007288] = 0x21e3d
        0x20007284:    9001        ..      STR      r0,[sp,#4]
        0x20007286:    bd01        ..      POP      {r0,pc}
    $d
        0x20007288:    00021e3d    =...    DCD    138813
    $t
    $Ven$TT$L$$rom_llp_scan_init_work_time_adjust
        0x2000728c:    b403        ..      PUSH     {r0,r1}
        0x2000728e:    4801        .H      LDR      r0,[pc,#4] ; [0x20007294] = 0x21e75
        0x20007290:    9001        ..      STR      r0,[sp,#4]
        0x20007292:    bd01        ..      POP      {r0,pc}
    $d
        0x20007294:    00021e75    u...    DCD    138869
    $t
    $Ven$TT$L$$rom_llp_scan_init_mode_rx_en_time_adjust
        0x20007298:    b403        ..      PUSH     {r0,r1}
        0x2000729a:    4801        .H      LDR      r0,[pc,#4] ; [0x200072a0] = 0x21dc9
        0x2000729c:    9001        ..      STR      r0,[sp,#4]
        0x2000729e:    bd01        ..      POP      {r0,pc}
    $d
        0x200072a0:    00021dc9    ....    DCD    138697
    $t
    $Ven$TT$L$$rom_llc_encryption_procedure_peer_initiated_init
        0x200072a4:    b403        ..      PUSH     {r0,r1}
        0x200072a6:    4801        .H      LDR      r0,[pc,#4] ; [0x200072ac] = 0x27821
        0x200072a8:    9001        ..      STR      r0,[sp,#4]
        0x200072aa:    bd01        ..      POP      {r0,pc}
    $d
        0x200072ac:    00027821    !x..    DCD    161825
    $t
    $Ven$TT$L$$rom_llc_connection_update_procedure_peer_initiated_init
        0x200072b0:    b403        ..      PUSH     {r0,r1}
        0x200072b2:    4801        .H      LDR      r0,[pc,#4] ; [0x200072b8] = 0x24385
        0x200072b4:    9001        ..      STR      r0,[sp,#4]
        0x200072b6:    bd01        ..      POP      {r0,pc}
    $d
        0x200072b8:    00024385    .C..    DCD    148357
    $t
    $Ven$TT$L$$rom_llc_channel_map_update_procedure_peer_initiated_init
        0x200072bc:    b403        ..      PUSH     {r0,r1}
        0x200072be:    4801        .H      LDR      r0,[pc,#4] ; [0x200072c4] = 0x22db1
        0x200072c0:    9001        ..      STR      r0,[sp,#4]
        0x200072c2:    bd01        ..      POP      {r0,pc}
    $d
        0x200072c4:    00022db1    .-..    DCD    142769
    $t
    $Ven$TT$L$$rom_llc_version_exchange_procedure_peer_initiated_init
        0x200072c8:    b403        ..      PUSH     {r0,r1}
        0x200072ca:    4801        .H      LDR      r0,[pc,#4] ; [0x200072d0] = 0x2f111
        0x200072cc:    9001        ..      STR      r0,[sp,#4]
        0x200072ce:    bd01        ..      POP      {r0,pc}
    $d
        0x200072d0:    0002f111    ....    DCD    192785
    $t
    $Ven$TT$L$$rom_llc_data_length_update_procedure_peer_initiated_init
        0x200072d4:    b403        ..      PUSH     {r0,r1}
        0x200072d6:    4801        .H      LDR      r0,[pc,#4] ; [0x200072dc] = 0x261c9
        0x200072d8:    9001        ..      STR      r0,[sp,#4]
        0x200072da:    bd01        ..      POP      {r0,pc}
    $d
        0x200072dc:    000261c9    .a..    DCD    156105
    $t
    $Ven$TT$L$$rom_llc_phy_update_procedure_peer_initiated_init
        0x200072e0:    b403        ..      PUSH     {r0,r1}
        0x200072e2:    4801        .H      LDR      r0,[pc,#4] ; [0x200072e8] = 0x2c0e9
        0x200072e4:    9001        ..      STR      r0,[sp,#4]
        0x200072e6:    bd01        ..      POP      {r0,pc}
    $d
        0x200072e8:    0002c0e9    ....    DCD    180457
    $t
    $Ven$TT$L$$rom_hal_rf_cali_init
        0x200072ec:    b403        ..      PUSH     {r0,r1}
        0x200072ee:    4801        .H      LDR      r0,[pc,#4] ; [0x200072f4] = 0x1525d
        0x200072f0:    9001        ..      STR      r0,[sp,#4]
        0x200072f2:    bd01        ..      POP      {r0,pc}
    $d
        0x200072f4:    0001525d    ]R..    DCD    86621
    $t
    $Ven$TT$L$$rom_hal_rf_tx_cali
        0x200072f8:    b403        ..      PUSH     {r0,r1}
        0x200072fa:    4801        .H      LDR      r0,[pc,#4] ; [0x20007300] = 0x1585d
        0x200072fc:    9001        ..      STR      r0,[sp,#4]
        0x200072fe:    bd01        ..      POP      {r0,pc}
    $d
        0x20007300:    0001585d    ]X..    DCD    88157
    $t
    $Ven$TT$L$$rom_hal_rf_rx_cali
        0x20007304:    b403        ..      PUSH     {r0,r1}
        0x20007306:    4801        .H      LDR      r0,[pc,#4] ; [0x2000730c] = 0x153d9
        0x20007308:    9001        ..      STR      r0,[sp,#4]
        0x2000730a:    bd01        ..      POP      {r0,pc}
    $d
        0x2000730c:    000153d9    .S..    DCD    87001
    $t
    $Ven$TT$L$$rom_hal_rf_rx_dc_cal_sweep
        0x20007310:    b403        ..      PUSH     {r0,r1}
        0x20007312:    4801        .H      LDR      r0,[pc,#4] ; [0x20007318] = 0x155e9
        0x20007314:    9001        ..      STR      r0,[sp,#4]
        0x20007316:    bd01        ..      POP      {r0,pc}
    $d
        0x20007318:    000155e9    .U..    DCD    87529
    $t
    $Ven$TT$L$$rom_hal_rf_tx_power_table_init
        0x2000731c:    b403        ..      PUSH     {r0,r1}
        0x2000731e:    4801        .H      LDR      r0,[pc,#4] ; [0x20007324] = 0x15a19
        0x20007320:    9001        ..      STR      r0,[sp,#4]
        0x20007322:    bd01        ..      POP      {r0,pc}
    $d
        0x20007324:    00015a19    .Z..    DCD    88601
    $t
    $Ven$TT$L$$rom_hw_rf_tx_pa_h2_config
        0x20007328:    b403        ..      PUSH     {r0,r1}
        0x2000732a:    4801        .H      LDR      r0,[pc,#4] ; [0x20007330] = 0x1b291
        0x2000732c:    9001        ..      STR      r0,[sp,#4]
        0x2000732e:    bd01        ..      POP      {r0,pc}
    $d
        0x20007330:    0001b291    ....    DCD    111249
    $t
    $Ven$TT$L$$osMemoryPoolAlloc
        0x20007334:    b403        ..      PUSH     {r0,r1}
        0x20007336:    4801        .H      LDR      r0,[pc,#4] ; [0x2000733c] = 0x1114d
        0x20007338:    9001        ..      STR      r0,[sp,#4]
        0x2000733a:    bd01        ..      POP      {r0,pc}
    $d
        0x2000733c:    0001114d    M...    DCD    69965
    $t
    $Ven$TT$L$$osMessageQueuePut
        0x20007340:    b403        ..      PUSH     {r0,r1}
        0x20007342:    4801        .H      LDR      r0,[pc,#4] ; [0x20007348] = 0x11435
        0x20007344:    9001        ..      STR      r0,[sp,#4]
        0x20007346:    bd01        ..      POP      {r0,pc}
    $d
        0x20007348:    00011435    5...    DCD    70709
    $t
    $Ven$TT$L$$rom_hw_crg_get_lpwr_clk_src
        0x2000734c:    b403        ..      PUSH     {r0,r1}
        0x2000734e:    4801        .H      LDR      r0,[pc,#4] ; [0x20007354] = 0x172ed
        0x20007350:    9001        ..      STR      r0,[sp,#4]
        0x20007352:    bd01        ..      POP      {r0,pc}
    $d
        0x20007354:    000172ed    .r..    DCD    94957
    $t
    $Ven$TT$L$$rom_hw_crg_get_32k_cycles_of_dcxo_hclk
        0x20007358:    b403        ..      PUSH     {r0,r1}
        0x2000735a:    4801        .H      LDR      r0,[pc,#4] ; [0x20007360] = 0x172bd
        0x2000735c:    9001        ..      STR      r0,[sp,#4]
        0x2000735e:    bd01        ..      POP      {r0,pc}
    $d
        0x20007360:    000172bd    .r..    DCD    94909
    $t
    i.__0printf$8
    __0printf$8
    __1printf$8
    __2printf
        0x20007364:    b40f        ..      PUSH     {r0-r3}
        0x20007366:    b510        ..      PUSH     {r4,lr}
        0x20007368:    a903        ..      ADD      r1,sp,#0xc
        0x2000736a:    4b04        .K      LDR      r3,[pc,#16] ; [0x2000737c] = 0x200048cd
        0x2000736c:    4a04        .J      LDR      r2,[pc,#16] ; [0x20007380] = 0x20007c00
        0x2000736e:    9802        ..      LDR      r0,[sp,#8]
        0x20007370:    f000f808    ....    BL       _printf_core ; 0x20007384
        0x20007374:    bc10        ..      POP      {r4}
        0x20007376:    bc08        ..      POP      {r3}
        0x20007378:    b004        ..      ADD      sp,sp,#0x10
        0x2000737a:    4718        .G      BX       r3
    $d
        0x2000737c:    200048cd    .H.     DCD    536889549
        0x20007380:    20007c00    .|.     DCD    536902656
    $t
    i._printf_core
    _printf_core
        0x20007384:    b5ff        ..      PUSH     {r0-r7,lr}
        0x20007386:    b091        ..      SUB      sp,sp,#0x44
        0x20007388:    460f        .F      MOV      r7,r1
        0x2000738a:    4605        .F      MOV      r5,r0
        0x2000738c:    2600        .&      MOVS     r6,#0
        0x2000738e:    e006        ..      B        0x2000739e ; _printf_core + 26
        0x20007390:    2825        %(      CMP      r0,#0x25
        0x20007392:    d00a        ..      BEQ      0x200073aa ; _printf_core + 38
        0x20007394:    9a14        ..      LDR      r2,[sp,#0x50]
        0x20007396:    9913        ..      LDR      r1,[sp,#0x4c]
        0x20007398:    4790        .G      BLX      r2
        0x2000739a:    1c6d        m.      ADDS     r5,r5,#1
        0x2000739c:    1c76        v.      ADDS     r6,r6,#1
        0x2000739e:    7828        (x      LDRB     r0,[r5,#0]
        0x200073a0:    2800        .(      CMP      r0,#0
        0x200073a2:    d1f5        ..      BNE      0x20007390 ; _printf_core + 12
        0x200073a4:    4630        0F      MOV      r0,r6
        0x200073a6:    b015        ..      ADD      sp,sp,#0x54
        0x200073a8:    bdf0        ..      POP      {r4-r7,pc}
        0x200073aa:    2400        .$      MOVS     r4,#0
        0x200073ac:    9400        ..      STR      r4,[sp,#0]
        0x200073ae:    2101        .!      MOVS     r1,#1
        0x200073b0:    4af3        .J      LDR      r2,[pc,#972] ; [0x20007780] = 0x12809
        0x200073b2:    9402        ..      STR      r4,[sp,#8]
        0x200073b4:    e000        ..      B        0x200073b8 ; _printf_core + 52
        0x200073b6:    4304        .C      ORRS     r4,r4,r0
        0x200073b8:    1c6d        m.      ADDS     r5,r5,#1
        0x200073ba:    782b        +x      LDRB     r3,[r5,#0]
        0x200073bc:    4608        .F      MOV      r0,r1
        0x200073be:    3b20         ;      SUBS     r3,r3,#0x20
        0x200073c0:    4098        .@      LSLS     r0,r0,r3
        0x200073c2:    4210        .B      TST      r0,r2
        0x200073c4:    d1f7        ..      BNE      0x200073b6 ; _printf_core + 50
        0x200073c6:    7828        (x      LDRB     r0,[r5,#0]
        0x200073c8:    282a        *(      CMP      r0,#0x2a
        0x200073ca:    d00e        ..      BEQ      0x200073ea ; _printf_core + 102
        0x200073cc:    2102        .!      MOVS     r1,#2
        0x200073ce:    7828        (x      LDRB     r0,[r5,#0]
        0x200073d0:    4602        .F      MOV      r2,r0
        0x200073d2:    3a30        0:      SUBS     r2,r2,#0x30
        0x200073d4:    2a09        .*      CMP      r2,#9
        0x200073d6:    d815        ..      BHI      0x20007404 ; _printf_core + 128
        0x200073d8:    9a00        ..      LDR      r2,[sp,#0]
        0x200073da:    230a        .#      MOVS     r3,#0xa
        0x200073dc:    435a        ZC      MULS     r2,r3,r2
        0x200073de:    3a30        0:      SUBS     r2,r2,#0x30
        0x200073e0:    1880        ..      ADDS     r0,r0,r2
        0x200073e2:    430c        .C      ORRS     r4,r4,r1
        0x200073e4:    1c6d        m.      ADDS     r5,r5,#1
        0x200073e6:    9000        ..      STR      r0,[sp,#0]
        0x200073e8:    e7f1        ..      B        0x200073ce ; _printf_core + 74
        0x200073ea:    cf01        ..      LDM      r7!,{r0}
        0x200073ec:    9000        ..      STR      r0,[sp,#0]
        0x200073ee:    2800        .(      CMP      r0,#0
        0x200073f0:    da05        ..      BGE      0x200073fe ; _printf_core + 122
        0x200073f2:    2001        .       MOVS     r0,#1
        0x200073f4:    0340        @.      LSLS     r0,r0,#13
        0x200073f6:    4304        .C      ORRS     r4,r4,r0
        0x200073f8:    9800        ..      LDR      r0,[sp,#0]
        0x200073fa:    4240        @B      RSBS     r0,r0,#0
        0x200073fc:    9000        ..      STR      r0,[sp,#0]
        0x200073fe:    2002        .       MOVS     r0,#2
        0x20007400:    4304        .C      ORRS     r4,r4,r0
        0x20007402:    1c6d        m.      ADDS     r5,r5,#1
        0x20007404:    7828        (x      LDRB     r0,[r5,#0]
        0x20007406:    282e        .(      CMP      r0,#0x2e
        0x20007408:    d115        ..      BNE      0x20007436 ; _printf_core + 178
        0x2000740a:    2004        .       MOVS     r0,#4
        0x2000740c:    4304        .C      ORRS     r4,r4,r0
        0x2000740e:    7868        hx      LDRB     r0,[r5,#1]
        0x20007410:    1c6d        m.      ADDS     r5,r5,#1
        0x20007412:    282a        *(      CMP      r0,#0x2a
        0x20007414:    d10a        ..      BNE      0x2000742c ; _printf_core + 168
        0x20007416:    cf01        ..      LDM      r7!,{r0}
        0x20007418:    1c6d        m.      ADDS     r5,r5,#1
        0x2000741a:    9002        ..      STR      r0,[sp,#8]
        0x2000741c:    e00b        ..      B        0x20007436 ; _printf_core + 178
        0x2000741e:    9902        ..      LDR      r1,[sp,#8]
        0x20007420:    220a        ."      MOVS     r2,#0xa
        0x20007422:    4351        QC      MULS     r1,r2,r1
        0x20007424:    3930        09      SUBS     r1,r1,#0x30
        0x20007426:    1840        @.      ADDS     r0,r0,r1
        0x20007428:    1c6d        m.      ADDS     r5,r5,#1
        0x2000742a:    9002        ..      STR      r0,[sp,#8]
        0x2000742c:    7828        (x      LDRB     r0,[r5,#0]
        0x2000742e:    4601        .F      MOV      r1,r0
        0x20007430:    3930        09      SUBS     r1,r1,#0x30
        0x20007432:    2909        .)      CMP      r1,#9
        0x20007434:    d9f3        ..      BLS      0x2000741e ; _printf_core + 154
        0x20007436:    7828        (x      LDRB     r0,[r5,#0]
        0x20007438:    286c        l(      CMP      r0,#0x6c
        0x2000743a:    d010        ..      BEQ      0x2000745e ; _printf_core + 218
        0x2000743c:    dc06        ..      BGT      0x2000744c ; _printf_core + 200
        0x2000743e:    284c        L(      CMP      r0,#0x4c
        0x20007440:    d01a        ..      BEQ      0x20007478 ; _printf_core + 244
        0x20007442:    2868        h(      CMP      r0,#0x68
        0x20007444:    d00e        ..      BEQ      0x20007464 ; _printf_core + 224
        0x20007446:    286a        j(      CMP      r0,#0x6a
        0x20007448:    d117        ..      BNE      0x2000747a ; _printf_core + 246
        0x2000744a:    e004        ..      B        0x20007456 ; _printf_core + 210
        0x2000744c:    2874        t(      CMP      r0,#0x74
        0x2000744e:    d013        ..      BEQ      0x20007478 ; _printf_core + 244
        0x20007450:    287a        z(      CMP      r0,#0x7a
        0x20007452:    d112        ..      BNE      0x2000747a ; _printf_core + 246
        0x20007454:    e010        ..      B        0x20007478 ; _printf_core + 244
        0x20007456:    2001        .       MOVS     r0,#1
        0x20007458:    0540        @.      LSLS     r0,r0,#21
        0x2000745a:    4304        .C      ORRS     r4,r4,r0
        0x2000745c:    e00c        ..      B        0x20007478 ; _printf_core + 244
        0x2000745e:    2101        .!      MOVS     r1,#1
        0x20007460:    0509        ..      LSLS     r1,r1,#20
        0x20007462:    e001        ..      B        0x20007468 ; _printf_core + 228
        0x20007464:    2103        .!      MOVS     r1,#3
        0x20007466:    0509        ..      LSLS     r1,r1,#20
        0x20007468:    430c        .C      ORRS     r4,r4,r1
        0x2000746a:    7869        ix      LDRB     r1,[r5,#1]
        0x2000746c:    4281        .B      CMP      r1,r0
        0x2000746e:    d103        ..      BNE      0x20007478 ; _printf_core + 244
        0x20007470:    2001        .       MOVS     r0,#1
        0x20007472:    0500        ..      LSLS     r0,r0,#20
        0x20007474:    1824        $.      ADDS     r4,r4,r0
        0x20007476:    1c6d        m.      ADDS     r5,r5,#1
        0x20007478:    1c6d        m.      ADDS     r5,r5,#1
        0x2000747a:    7828        (x      LDRB     r0,[r5,#0]
        0x2000747c:    9003        ..      STR      r0,[sp,#0xc]
        0x2000747e:    286e        n(      CMP      r0,#0x6e
        0x20007480:    d01e        ..      BEQ      0x200074c0 ; _printf_core + 316
        0x20007482:    dc0c        ..      BGT      0x2000749e ; _printf_core + 282
        0x20007484:    2863        c(      CMP      r0,#0x63
        0x20007486:    d031        1.      BEQ      0x200074ec ; _printf_core + 360
        0x20007488:    dc04        ..      BGT      0x20007494 ; _printf_core + 272
        0x2000748a:    2800        .(      CMP      r0,#0
        0x2000748c:    d08a        ..      BEQ      0x200073a4 ; _printf_core + 32
        0x2000748e:    2858        X(      CMP      r0,#0x58
        0x20007490:    d111        ..      BNE      0x200074b6 ; _printf_core + 306
        0x20007492:    e0b2        ..      B        0x200075fa ; _printf_core + 630
        0x20007494:    2864        d(      CMP      r0,#0x64
        0x20007496:    d07b        {.      BEQ      0x20007590 ; _printf_core + 524
        0x20007498:    2869        i(      CMP      r0,#0x69
        0x2000749a:    d10c        ..      BNE      0x200074b6 ; _printf_core + 306
        0x2000749c:    e078        x.      B        0x20007590 ; _printf_core + 524
        0x2000749e:    2873        s(      CMP      r0,#0x73
        0x200074a0:    d02d        -.      BEQ      0x200074fe ; _printf_core + 378
        0x200074a2:    dc04        ..      BGT      0x200074ae ; _printf_core + 298
        0x200074a4:    286f        o(      CMP      r0,#0x6f
        0x200074a6:    d070        p.      BEQ      0x2000758a ; _printf_core + 518
        0x200074a8:    2870        p(      CMP      r0,#0x70
        0x200074aa:    d104        ..      BNE      0x200074b6 ; _printf_core + 306
        0x200074ac:    e0a7        ..      B        0x200075fe ; _printf_core + 634
        0x200074ae:    2875        u(      CMP      r0,#0x75
        0x200074b0:    d06c        l.      BEQ      0x2000758c ; _printf_core + 520
        0x200074b2:    2878        x(      CMP      r0,#0x78
        0x200074b4:    d06b        k.      BEQ      0x2000758e ; _printf_core + 522
        0x200074b6:    9a14        ..      LDR      r2,[sp,#0x50]
        0x200074b8:    9913        ..      LDR      r1,[sp,#0x4c]
        0x200074ba:    4790        .G      BLX      r2
        0x200074bc:    1c76        v.      ADDS     r6,r6,#1
        0x200074be:    e062        b.      B        0x20007586 ; _printf_core + 514
        0x200074c0:    0260        `.      LSLS     r0,r4,#9
        0x200074c2:    0f40        @.      LSRS     r0,r0,#29
        0x200074c4:    2802        .(      CMP      r0,#2
        0x200074c6:    d007        ..      BEQ      0x200074d8 ; _printf_core + 340
        0x200074c8:    2803        .(      CMP      r0,#3
        0x200074ca:    d00a        ..      BEQ      0x200074e2 ; _printf_core + 350
        0x200074cc:    2804        .(      CMP      r0,#4
        0x200074ce:    6838        8h      LDR      r0,[r7,#0]
        0x200074d0:    d00a        ..      BEQ      0x200074e8 ; _printf_core + 356
        0x200074d2:    6006        .`      STR      r6,[r0,#0]
        0x200074d4:    1d3f        ?.      ADDS     r7,r7,#4
        0x200074d6:    e056        V.      B        0x20007586 ; _printf_core + 514
        0x200074d8:    6838        8h      LDR      r0,[r7,#0]
        0x200074da:    17f1        ..      ASRS     r1,r6,#31
        0x200074dc:    6006        .`      STR      r6,[r0,#0]
        0x200074de:    6041        A`      STR      r1,[r0,#4]
        0x200074e0:    e7f8        ..      B        0x200074d4 ; _printf_core + 336
        0x200074e2:    6838        8h      LDR      r0,[r7,#0]
        0x200074e4:    8006        ..      STRH     r6,[r0,#0]
        0x200074e6:    e7f5        ..      B        0x200074d4 ; _printf_core + 336
        0x200074e8:    7006        .p      STRB     r6,[r0,#0]
        0x200074ea:    e7f3        ..      B        0x200074d4 ; _printf_core + 336
        0x200074ec:    7838        8x      LDRB     r0,[r7,#0]
        0x200074ee:    4669        iF      MOV      r1,sp
        0x200074f0:    7408        .t      STRB     r0,[r1,#0x10]
        0x200074f2:    2000        .       MOVS     r0,#0
        0x200074f4:    7448        Ht      STRB     r0,[r1,#0x11]
        0x200074f6:    a804        ..      ADD      r0,sp,#0x10
        0x200074f8:    9003        ..      STR      r0,[sp,#0xc]
        0x200074fa:    2001        .       MOVS     r0,#1
        0x200074fc:    e003        ..      B        0x20007506 ; _printf_core + 386
        0x200074fe:    6838        8h      LDR      r0,[r7,#0]
        0x20007500:    9003        ..      STR      r0,[sp,#0xc]
        0x20007502:    2000        .       MOVS     r0,#0
        0x20007504:    43c0        .C      MVNS     r0,r0
        0x20007506:    1d3f        ?.      ADDS     r7,r7,#4
        0x20007508:    0761        a.      LSLS     r1,r4,#29
        0x2000750a:    d50f        ..      BPL      0x2000752c ; _printf_core + 424
        0x2000750c:    2100        .!      MOVS     r1,#0
        0x2000750e:    e001        ..      B        0x20007514 ; _printf_core + 400
        0x20007510:    9901        ..      LDR      r1,[sp,#4]
        0x20007512:    1c49        I.      ADDS     r1,r1,#1
        0x20007514:    9a02        ..      LDR      r2,[sp,#8]
        0x20007516:    9101        ..      STR      r1,[sp,#4]
        0x20007518:    4291        .B      CMP      r1,r2
        0x2000751a:    da13        ..      BGE      0x20007544 ; _printf_core + 448
        0x2000751c:    4281        .B      CMP      r1,r0
        0x2000751e:    dbf7        ..      BLT      0x20007510 ; _printf_core + 396
        0x20007520:    9a01        ..      LDR      r2,[sp,#4]
        0x20007522:    9903        ..      LDR      r1,[sp,#0xc]
        0x20007524:    5c89        .\      LDRB     r1,[r1,r2]
        0x20007526:    2900        .)      CMP      r1,#0
        0x20007528:    d1f2        ..      BNE      0x20007510 ; _printf_core + 396
        0x2000752a:    e00b        ..      B        0x20007544 ; _printf_core + 448
        0x2000752c:    2100        .!      MOVS     r1,#0
        0x2000752e:    e001        ..      B        0x20007534 ; _printf_core + 432
        0x20007530:    9901        ..      LDR      r1,[sp,#4]
        0x20007532:    1c49        I.      ADDS     r1,r1,#1
        0x20007534:    9101        ..      STR      r1,[sp,#4]
        0x20007536:    4281        .B      CMP      r1,r0
        0x20007538:    dbfa        ..      BLT      0x20007530 ; _printf_core + 428
        0x2000753a:    9a01        ..      LDR      r2,[sp,#4]
        0x2000753c:    9903        ..      LDR      r1,[sp,#0xc]
        0x2000753e:    5c89        .\      LDRB     r1,[r1,r2]
        0x20007540:    2900        .)      CMP      r1,#0
        0x20007542:    d1f5        ..      BNE      0x20007530 ; _printf_core + 428
        0x20007544:    9901        ..      LDR      r1,[sp,#4]
        0x20007546:    9800        ..      LDR      r0,[sp,#0]
        0x20007548:    9a13        ..      LDR      r2,[sp,#0x4c]
        0x2000754a:    1a40        @.      SUBS     r0,r0,r1
        0x2000754c:    9000        ..      STR      r0,[sp,#0]
        0x2000754e:    4621        !F      MOV      r1,r4
        0x20007550:    9b14        ..      LDR      r3,[sp,#0x50]
        0x20007552:    f000f93b    ..;.    BL       _printf_pre_padding ; 0x200077cc
        0x20007556:    9901        ..      LDR      r1,[sp,#4]
        0x20007558:    1980        ..      ADDS     r0,r0,r6
        0x2000755a:    1846        F.      ADDS     r6,r0,r1
        0x2000755c:    e007        ..      B        0x2000756e ; _printf_core + 490
        0x2000755e:    9803        ..      LDR      r0,[sp,#0xc]
        0x20007560:    9903        ..      LDR      r1,[sp,#0xc]
        0x20007562:    7800        .x      LDRB     r0,[r0,#0]
        0x20007564:    1c49        I.      ADDS     r1,r1,#1
        0x20007566:    9103        ..      STR      r1,[sp,#0xc]
        0x20007568:    9a14        ..      LDR      r2,[sp,#0x50]
        0x2000756a:    9913        ..      LDR      r1,[sp,#0x4c]
        0x2000756c:    4790        .G      BLX      r2
        0x2000756e:    9801        ..      LDR      r0,[sp,#4]
        0x20007570:    1e40        @.      SUBS     r0,r0,#1
        0x20007572:    9001        ..      STR      r0,[sp,#4]
        0x20007574:    1c40        @.      ADDS     r0,r0,#1
        0x20007576:    d1f2        ..      BNE      0x2000755e ; _printf_core + 474
        0x20007578:    4621        !F      MOV      r1,r4
        0x2000757a:    9b14        ..      LDR      r3,[sp,#0x50]
        0x2000757c:    9a13        ..      LDR      r2,[sp,#0x4c]
        0x2000757e:    9800        ..      LDR      r0,[sp,#0]
        0x20007580:    f000f914    ....    BL       _printf_post_padding ; 0x200077ac
        0x20007584:    1986        ..      ADDS     r6,r0,r6
        0x20007586:    1c6d        m.      ADDS     r5,r5,#1
        0x20007588:    e709        ..      B        0x2000739e ; _printf_core + 26
        0x2000758a:    e041        A.      B        0x20007610 ; _printf_core + 652
        0x2000758c:    e033        3.      B        0x200075f6 ; _printf_core + 626
        0x2000758e:    e034        4.      B        0x200075fa ; _printf_core + 630
        0x20007590:    200a        .       MOVS     r0,#0xa
        0x20007592:    2100        .!      MOVS     r1,#0
        0x20007594:    9004        ..      STR      r0,[sp,#0x10]
        0x20007596:    9105        ..      STR      r1,[sp,#0x14]
        0x20007598:    0260        `.      LSLS     r0,r4,#9
        0x2000759a:    0f41        A.      LSRS     r1,r0,#29
        0x2000759c:    2902        .)      CMP      r1,#2
        0x2000759e:    d005        ..      BEQ      0x200075ac ; _printf_core + 552
        0x200075a0:    cf01        ..      LDM      r7!,{r0}
        0x200075a2:    17c2        ..      ASRS     r2,r0,#31
        0x200075a4:    4694        .F      MOV      r12,r2
        0x200075a6:    2903        .)      CMP      r1,#3
        0x200075a8:    d005        ..      BEQ      0x200075b6 ; _printf_core + 562
        0x200075aa:    e007        ..      B        0x200075bc ; _printf_core + 568
        0x200075ac:    1dff        ..      ADDS     r7,r7,#7
        0x200075ae:    08ff        ..      LSRS     r7,r7,#3
        0x200075b0:    00ff        ..      LSLS     r7,r7,#3
        0x200075b2:    cf03        ..      LDM      r7!,{r0,r1}
        0x200075b4:    e006        ..      B        0x200075c4 ; _printf_core + 576
        0x200075b6:    b200        ..      SXTH     r0,r0
        0x200075b8:    17c2        ..      ASRS     r2,r0,#31
        0x200075ba:    4694        .F      MOV      r12,r2
        0x200075bc:    2904        .)      CMP      r1,#4
        0x200075be:    d102        ..      BNE      0x200075c6 ; _printf_core + 578
        0x200075c0:    b240        @.      SXTB     r0,r0
        0x200075c2:    17c1        ..      ASRS     r1,r0,#31
        0x200075c4:    468c        .F      MOV      r12,r1
        0x200075c6:    2200        ."      MOVS     r2,#0
        0x200075c8:    4661        aF      MOV      r1,r12
        0x200075ca:    4594        .E      CMP      r12,r2
        0x200075cc:    da06        ..      BGE      0x200075dc ; _printf_core + 600
        0x200075ce:    460a        .F      MOV      r2,r1
        0x200075d0:    2100        .!      MOVS     r1,#0
        0x200075d2:    4240        @B      RSBS     r0,r0,#0
        0x200075d4:    4191        .A      SBCS     r1,r1,r2
        0x200075d6:    468c        .F      MOV      r12,r1
        0x200075d8:    212d        -!      MOVS     r1,#0x2d
        0x200075da:    e002        ..      B        0x200075e2 ; _printf_core + 606
        0x200075dc:    0521        !.      LSLS     r1,r4,#20
        0x200075de:    d504        ..      BPL      0x200075ea ; _printf_core + 614
        0x200075e0:    212b        +!      MOVS     r1,#0x2b
        0x200075e2:    466a        jF      MOV      r2,sp
        0x200075e4:    7611        .v      STRB     r1,[r2,#0x18]
        0x200075e6:    2101        .!      MOVS     r1,#1
        0x200075e8:    e003        ..      B        0x200075f2 ; _printf_core + 622
        0x200075ea:    07e1        ..      LSLS     r1,r4,#31
        0x200075ec:    d001        ..      BEQ      0x200075f2 ; _printf_core + 622
        0x200075ee:    2120         !      MOVS     r1,#0x20
        0x200075f0:    e7f7        ..      B        0x200075e2 ; _printf_core + 606
        0x200075f2:    9101        ..      STR      r1,[sp,#4]
        0x200075f4:    e054        T.      B        0x200076a0 ; _printf_core + 796
        0x200075f6:    200a        .       MOVS     r0,#0xa
        0x200075f8:    e00b        ..      B        0x20007612 ; _printf_core + 654
        0x200075fa:    2010        .       MOVS     r0,#0x10
        0x200075fc:    e009        ..      B        0x20007612 ; _printf_core + 654
        0x200075fe:    2010        .       MOVS     r0,#0x10
        0x20007600:    9004        ..      STR      r0,[sp,#0x10]
        0x20007602:    2100        .!      MOVS     r1,#0
        0x20007604:    2004        .       MOVS     r0,#4
        0x20007606:    4304        .C      ORRS     r4,r4,r0
        0x20007608:    2008        .       MOVS     r0,#8
        0x2000760a:    9105        ..      STR      r1,[sp,#0x14]
        0x2000760c:    9002        ..      STR      r0,[sp,#8]
        0x2000760e:    e003        ..      B        0x20007618 ; _printf_core + 660
        0x20007610:    2008        .       MOVS     r0,#8
        0x20007612:    2100        .!      MOVS     r1,#0
        0x20007614:    9105        ..      STR      r1,[sp,#0x14]
        0x20007616:    9004        ..      STR      r0,[sp,#0x10]
        0x20007618:    0260        `.      LSLS     r0,r4,#9
        0x2000761a:    0f41        A.      LSRS     r1,r0,#29
        0x2000761c:    2902        .)      CMP      r1,#2
        0x2000761e:    d005        ..      BEQ      0x2000762c ; _printf_core + 680
        0x20007620:    cf01        ..      LDM      r7!,{r0}
        0x20007622:    2200        ."      MOVS     r2,#0
        0x20007624:    4694        .F      MOV      r12,r2
        0x20007626:    2903        .)      CMP      r1,#3
        0x20007628:    d006        ..      BEQ      0x20007638 ; _printf_core + 692
        0x2000762a:    e006        ..      B        0x2000763a ; _printf_core + 694
        0x2000762c:    1dff        ..      ADDS     r7,r7,#7
        0x2000762e:    08ff        ..      LSRS     r7,r7,#3
        0x20007630:    00ff        ..      LSLS     r7,r7,#3
        0x20007632:    cf03        ..      LDM      r7!,{r0,r1}
        0x20007634:    468c        .F      MOV      r12,r1
        0x20007636:    e003        ..      B        0x20007640 ; _printf_core + 700
        0x20007638:    b280        ..      UXTH     r0,r0
        0x2000763a:    2904        .)      CMP      r1,#4
        0x2000763c:    d100        ..      BNE      0x20007640 ; _printf_core + 700
        0x2000763e:    b2c0        ..      UXTB     r0,r0
        0x20007640:    2100        .!      MOVS     r1,#0
        0x20007642:    9101        ..      STR      r1,[sp,#4]
        0x20007644:    0721        !.      LSLS     r1,r4,#28
        0x20007646:    d52b        +.      BPL      0x200076a0 ; _printf_core + 796
        0x20007648:    9903        ..      LDR      r1,[sp,#0xc]
        0x2000764a:    2970        p)      CMP      r1,#0x70
        0x2000764c:    d006        ..      BEQ      0x2000765c ; _printf_core + 728
        0x2000764e:    9a04        ..      LDR      r2,[sp,#0x10]
        0x20007650:    2110        .!      MOVS     r1,#0x10
        0x20007652:    9b05        ..      LDR      r3,[sp,#0x14]
        0x20007654:    404a        J@      EORS     r2,r2,r1
        0x20007656:    431a        .C      ORRS     r2,r2,r3
        0x20007658:    d005        ..      BEQ      0x20007666 ; _printf_core + 738
        0x2000765a:    e00e        ..      B        0x2000767a ; _printf_core + 758
        0x2000765c:    2140        @!      MOVS     r1,#0x40
        0x2000765e:    466a        jF      MOV      r2,sp
        0x20007660:    7611        .v      STRB     r1,[r2,#0x18]
        0x20007662:    2101        .!      MOVS     r1,#1
        0x20007664:    e008        ..      B        0x20007678 ; _printf_core + 756
        0x20007666:    4661        aF      MOV      r1,r12
        0x20007668:    4301        .C      ORRS     r1,r1,r0
        0x2000766a:    d006        ..      BEQ      0x2000767a ; _printf_core + 758
        0x2000766c:    2130        0!      MOVS     r1,#0x30
        0x2000766e:    466a        jF      MOV      r2,sp
        0x20007670:    7611        .v      STRB     r1,[r2,#0x18]
        0x20007672:    9903        ..      LDR      r1,[sp,#0xc]
        0x20007674:    7651        Qv      STRB     r1,[r2,#0x19]
        0x20007676:    2102        .!      MOVS     r1,#2
        0x20007678:    9101        ..      STR      r1,[sp,#4]
        0x2000767a:    9a04        ..      LDR      r2,[sp,#0x10]
        0x2000767c:    2108        .!      MOVS     r1,#8
        0x2000767e:    9b05        ..      LDR      r3,[sp,#0x14]
        0x20007680:    404a        J@      EORS     r2,r2,r1
        0x20007682:    431a        .C      ORRS     r2,r2,r3
        0x20007684:    d10c        ..      BNE      0x200076a0 ; _printf_core + 796
        0x20007686:    4661        aF      MOV      r1,r12
        0x20007688:    4301        .C      ORRS     r1,r1,r0
        0x2000768a:    d101        ..      BNE      0x20007690 ; _printf_core + 780
        0x2000768c:    0761        a.      LSLS     r1,r4,#29
        0x2000768e:    d507        ..      BPL      0x200076a0 ; _printf_core + 796
        0x20007690:    2130        0!      MOVS     r1,#0x30
        0x20007692:    466a        jF      MOV      r2,sp
        0x20007694:    7611        .v      STRB     r1,[r2,#0x18]
        0x20007696:    2101        .!      MOVS     r1,#1
        0x20007698:    9101        ..      STR      r1,[sp,#4]
        0x2000769a:    9902        ..      LDR      r1,[sp,#8]
        0x2000769c:    1e49        I.      SUBS     r1,r1,#1
        0x2000769e:    9102        ..      STR      r1,[sp,#8]
        0x200076a0:    9903        ..      LDR      r1,[sp,#0xc]
        0x200076a2:    2958        X)      CMP      r1,#0x58
        0x200076a4:    d004        ..      BEQ      0x200076b0 ; _printf_core + 812
        0x200076a6:    a137        7.      ADR      r1,{pc}+0xde ; 0x20007784
        0x200076a8:    9103        ..      STR      r1,[sp,#0xc]
        0x200076aa:    a90f        ..      ADD      r1,sp,#0x3c
        0x200076ac:    910f        ..      STR      r1,[sp,#0x3c]
        0x200076ae:    e00d        ..      B        0x200076cc ; _printf_core + 840
        0x200076b0:    a139        9.      ADR      r1,{pc}+0xe8 ; 0x20007798
        0x200076b2:    e7f9        ..      B        0x200076a8 ; _printf_core + 804
        0x200076b4:    4661        aF      MOV      r1,r12
        0x200076b6:    9b05        ..      LDR      r3,[sp,#0x14]
        0x200076b8:    9a04        ..      LDR      r2,[sp,#0x10]
        0x200076ba:    f7fbfdbb    ....    BL       __aeabi_uldivmod ; 0x20003234
        0x200076be:    9b03        ..      LDR      r3,[sp,#0xc]
        0x200076c0:    468c        .F      MOV      r12,r1
        0x200076c2:    5c9b        .\      LDRB     r3,[r3,r2]
        0x200076c4:    9a0f        ..      LDR      r2,[sp,#0x3c]
        0x200076c6:    1e52        R.      SUBS     r2,r2,#1
        0x200076c8:    920f        ..      STR      r2,[sp,#0x3c]
        0x200076ca:    7013        .p      STRB     r3,[r2,#0]
        0x200076cc:    4661        aF      MOV      r1,r12
        0x200076ce:    4301        .C      ORRS     r1,r1,r0
        0x200076d0:    d1f0        ..      BNE      0x200076b4 ; _printf_core + 816
        0x200076d2:    980f        ..      LDR      r0,[sp,#0x3c]
        0x200076d4:    a907        ..      ADD      r1,sp,#0x1c
        0x200076d6:    1a08        ..      SUBS     r0,r1,r0
        0x200076d8:    3020         0      ADDS     r0,r0,#0x20
        0x200076da:    9003        ..      STR      r0,[sp,#0xc]
        0x200076dc:    0760        `.      LSLS     r0,r4,#29
        0x200076de:    d504        ..      BPL      0x200076ea ; _printf_core + 870
        0x200076e0:    2001        .       MOVS     r0,#1
        0x200076e2:    0400        ..      LSLS     r0,r0,#16
        0x200076e4:    4384        .C      BICS     r4,r4,r0
        0x200076e6:    9802        ..      LDR      r0,[sp,#8]
        0x200076e8:    e001        ..      B        0x200076ee ; _printf_core + 874
        0x200076ea:    2001        .       MOVS     r0,#1
        0x200076ec:    9002        ..      STR      r0,[sp,#8]
        0x200076ee:    9903        ..      LDR      r1,[sp,#0xc]
        0x200076f0:    4288        .B      CMP      r0,r1
        0x200076f2:    dd01        ..      BLE      0x200076f8 ; _printf_core + 884
        0x200076f4:    1a40        @.      SUBS     r0,r0,r1
        0x200076f6:    e000        ..      B        0x200076fa ; _printf_core + 886
        0x200076f8:    2000        .       MOVS     r0,#0
        0x200076fa:    1841        A.      ADDS     r1,r0,r1
        0x200076fc:    9002        ..      STR      r0,[sp,#8]
        0x200076fe:    9801        ..      LDR      r0,[sp,#4]
        0x20007700:    1809        ..      ADDS     r1,r1,r0
        0x20007702:    9800        ..      LDR      r0,[sp,#0]
        0x20007704:    1a40        @.      SUBS     r0,r0,r1
        0x20007706:    9000        ..      STR      r0,[sp,#0]
        0x20007708:    03e0        ..      LSLS     r0,r4,#15
        0x2000770a:    d406        ..      BMI      0x2000771a ; _printf_core + 918
        0x2000770c:    4621        !F      MOV      r1,r4
        0x2000770e:    9b14        ..      LDR      r3,[sp,#0x50]
        0x20007710:    9a13        ..      LDR      r2,[sp,#0x4c]
        0x20007712:    9800        ..      LDR      r0,[sp,#0]
        0x20007714:    f000f85a    ..Z.    BL       _printf_pre_padding ; 0x200077cc
        0x20007718:    1986        ..      ADDS     r6,r0,r6
        0x2000771a:    2000        .       MOVS     r0,#0
        0x2000771c:    9004        ..      STR      r0,[sp,#0x10]
        0x2000771e:    e008        ..      B        0x20007732 ; _printf_core + 942
        0x20007720:    a906        ..      ADD      r1,sp,#0x18
        0x20007722:    5c08        .\      LDRB     r0,[r1,r0]
        0x20007724:    9a14        ..      LDR      r2,[sp,#0x50]
        0x20007726:    9913        ..      LDR      r1,[sp,#0x4c]
        0x20007728:    4790        .G      BLX      r2
        0x2000772a:    9804        ..      LDR      r0,[sp,#0x10]
        0x2000772c:    1c40        @.      ADDS     r0,r0,#1
        0x2000772e:    1c76        v.      ADDS     r6,r6,#1
        0x20007730:    9004        ..      STR      r0,[sp,#0x10]
        0x20007732:    9901        ..      LDR      r1,[sp,#4]
        0x20007734:    4288        .B      CMP      r0,r1
        0x20007736:    dbf3        ..      BLT      0x20007720 ; _printf_core + 924
        0x20007738:    03e0        ..      LSLS     r0,r4,#15
        0x2000773a:    d50c        ..      BPL      0x20007756 ; _printf_core + 978
        0x2000773c:    4621        !F      MOV      r1,r4
        0x2000773e:    9b14        ..      LDR      r3,[sp,#0x50]
        0x20007740:    9a13        ..      LDR      r2,[sp,#0x4c]
        0x20007742:    9800        ..      LDR      r0,[sp,#0]
        0x20007744:    f000f842    ..B.    BL       _printf_pre_padding ; 0x200077cc
        0x20007748:    1986        ..      ADDS     r6,r0,r6
        0x2000774a:    e004        ..      B        0x20007756 ; _printf_core + 978
        0x2000774c:    9a14        ..      LDR      r2,[sp,#0x50]
        0x2000774e:    2030        0       MOVS     r0,#0x30
        0x20007750:    9913        ..      LDR      r1,[sp,#0x4c]
        0x20007752:    4790        .G      BLX      r2
        0x20007754:    1c76        v.      ADDS     r6,r6,#1
        0x20007756:    9902        ..      LDR      r1,[sp,#8]
        0x20007758:    1e48        H.      SUBS     r0,r1,#1
        0x2000775a:    9002        ..      STR      r0,[sp,#8]
        0x2000775c:    2900        .)      CMP      r1,#0
        0x2000775e:    dcf5        ..      BGT      0x2000774c ; _printf_core + 968
        0x20007760:    e008        ..      B        0x20007774 ; _printf_core + 1008
        0x20007762:    980f        ..      LDR      r0,[sp,#0x3c]
        0x20007764:    990f        ..      LDR      r1,[sp,#0x3c]
        0x20007766:    7800        .x      LDRB     r0,[r0,#0]
        0x20007768:    1c49        I.      ADDS     r1,r1,#1
        0x2000776a:    910f        ..      STR      r1,[sp,#0x3c]
        0x2000776c:    9a14        ..      LDR      r2,[sp,#0x50]
        0x2000776e:    9913        ..      LDR      r1,[sp,#0x4c]
        0x20007770:    4790        .G      BLX      r2
        0x20007772:    1c76        v.      ADDS     r6,r6,#1
        0x20007774:    9903        ..      LDR      r1,[sp,#0xc]
        0x20007776:    1e48        H.      SUBS     r0,r1,#1
        0x20007778:    9003        ..      STR      r0,[sp,#0xc]
        0x2000777a:    2900        .)      CMP      r1,#0
        0x2000777c:    dcf1        ..      BGT      0x20007762 ; _printf_core + 990
        0x2000777e:    e6fb        ..      B        0x20007578 ; _printf_core + 500
    $d
        0x20007780:    00012809    .(..    DCD    75785
        0x20007784:    33323130    0123    DCD    858927408
        0x20007788:    37363534    4567    DCD    926299444
        0x2000778c:    62613938    89ab    DCD    1650538808
        0x20007790:    66656463    cdef    DCD    1717920867
        0x20007794:    00000000    ....    DCD    0
        0x20007798:    33323130    0123    DCD    858927408
        0x2000779c:    37363534    4567    DCD    926299444
        0x200077a0:    42413938    89AB    DCD    1111570744
        0x200077a4:    46454443    CDEF    DCD    1178944579
        0x200077a8:    00000000    ....    DCD    0
    $t
    i._printf_post_padding
    _printf_post_padding
        0x200077ac:    b5f8        ..      PUSH     {r3-r7,lr}
        0x200077ae:    4604        .F      MOV      r4,r0
        0x200077b0:    2500        .%      MOVS     r5,#0
        0x200077b2:    461e        .F      MOV      r6,r3
        0x200077b4:    4617        .F      MOV      r7,r2
        0x200077b6:    0488        ..      LSLS     r0,r1,#18
        0x200077b8:    d404        ..      BMI      0x200077c4 ; _printf_post_padding + 24
        0x200077ba:    e005        ..      B        0x200077c8 ; _printf_post_padding + 28
        0x200077bc:    4639        9F      MOV      r1,r7
        0x200077be:    2020                MOVS     r0,#0x20
        0x200077c0:    47b0        .G      BLX      r6
        0x200077c2:    1c6d        m.      ADDS     r5,r5,#1
        0x200077c4:    1e64        d.      SUBS     r4,r4,#1
        0x200077c6:    d5f9        ..      BPL      0x200077bc ; _printf_post_padding + 16
        0x200077c8:    4628        (F      MOV      r0,r5
        0x200077ca:    bdf8        ..      POP      {r3-r7,pc}
    i._printf_pre_padding
    _printf_pre_padding
        0x200077cc:    b5ff        ..      PUSH     {r0-r7,lr}
        0x200077ce:    4604        .F      MOV      r4,r0
        0x200077d0:    2500        .%      MOVS     r5,#0
        0x200077d2:    b081        ..      SUB      sp,sp,#4
        0x200077d4:    461e        .F      MOV      r6,r3
        0x200077d6:    03c8        ..      LSLS     r0,r1,#15
        0x200077d8:    d501        ..      BPL      0x200077de ; _printf_pre_padding + 18
        0x200077da:    2730        0'      MOVS     r7,#0x30
        0x200077dc:    e000        ..      B        0x200077e0 ; _printf_pre_padding + 20
        0x200077de:    2720         '      MOVS     r7,#0x20
        0x200077e0:    0488        ..      LSLS     r0,r1,#18
        0x200077e2:    d504        ..      BPL      0x200077ee ; _printf_pre_padding + 34
        0x200077e4:    e005        ..      B        0x200077f2 ; _printf_pre_padding + 38
        0x200077e6:    4638        8F      MOV      r0,r7
        0x200077e8:    9903        ..      LDR      r1,[sp,#0xc]
        0x200077ea:    47b0        .G      BLX      r6
        0x200077ec:    1c6d        m.      ADDS     r5,r5,#1
        0x200077ee:    1e64        d.      SUBS     r4,r4,#1
        0x200077f0:    d5f9        ..      BPL      0x200077e6 ; _printf_pre_padding + 26
        0x200077f2:    4628        (F      MOV      r0,r5
        0x200077f4:    b005        ..      ADD      sp,sp,#0x14
        0x200077f6:    bdf0        ..      POP      {r4-r7,pc}
    i.puts
    puts
        0x200077f8:    b510        ..      PUSH     {r4,lr}
        0x200077fa:    4604        .F      MOV      r4,r0
        0x200077fc:    e001        ..      B        0x20007802 ; puts + 10
        0x200077fe:    f7fdf865    ..e.    BL       fputc ; 0x200048cc
        0x20007802:    7820         x      LDRB     r0,[r4,#0]
        0x20007804:    1c64        d.      ADDS     r4,r4,#1
        0x20007806:    4903        .I      LDR      r1,[pc,#12] ; [0x20007814] = 0x20007c00
        0x20007808:    2800        .(      CMP      r0,#0
        0x2000780a:    d1f8        ..      BNE      0x200077fe ; puts + 6
        0x2000780c:    200a        .       MOVS     r0,#0xa
        0x2000780e:    f7fdf85d    ..].    BL       fputc ; 0x200048cc
        0x20007812:    bd10        ..      POP      {r4,pc}
    $d
        0x20007814:    20007c00    .|.     DCD    536902656
    $d.realdata
        0x20007818:    00a000a0    ....    DCD    10485920
        0x2000781c:    00000200    ....    DCD    512
        0x20007820:    00000000    ....    DCD    0
        0x20007824:    00000700    ....    DCD    1792
        0x20007828:    200079af    .y.     DCD    536902063
        0x2000782c:    00000001    ....    DCD    1
        0x20007830:    2000a568    h..     DCD    536913256
        0x20007834:    00000044    D...    DCD    68
        0x20007838:    2000aae8    ...     DCD    536914664
        0x2000783c:    00000800    ....    DCD    2048
        0x20007840:    00000020     ...    DCD    32
        0x20007844:    00000000    ....    DCD    0
        0x20007848:    00000000    ....    DCD    0
        0x2000784c:    2000799c    .y.     DCD    536902044
        0x20007850:    00000000    ....    DCD    0
        0x20007854:    2000a5b0    ...     DCD    536913328
        0x20007858:    00000034    4...    DCD    52
        0x2000785c:    2000a5e8    ...     DCD    536913384
        0x20007860:    00000500    ....    DCD    1280
    devInfoServiceCBs
        0x20007864:    20003d7d    }=.     DCD    536886653
        0x20007868:    20003eb1    .>.     DCD    536886961
        0x2000786c:    00000000    ....    DCD    0
    m_stGattCBs
        0x20007870:    20004371    qC.     DCD    536888177
        0x20007874:    2000437d    }C.     DCD    536888189
        0x20007878:    20004435    5D.     DCD    536888373
    m_u811073Cert
        0x2000787c:    786500fe    ..ex    DCD    2019885310
        0x20007880:    69726570    peri    DCD    1769104752
        0x20007884:    746e656d    ment    DCD    1953391981
        0x20007888:    00006c61    al..    DCD    27745
    m_u8FirmwareRev
        0x2000788c:    6d726946    Firm    DCD    1836214598
        0x20007890:    65726177    ware    DCD    1701994871
        0x20007894:    76655220     Rev    DCD    1986351648
        0x20007898:    6f697369    isio    DCD    1869181801
        0x2000789c:    0000006e    n...    DCD    110
    m_u8HardwareRev
        0x200078a0:    64726148    Hard    DCD    1685217608
        0x200078a4:    65726177    ware    DCD    1701994871
        0x200078a8:    76655220     Rev    DCD    1986351648
        0x200078ac:    6f697369    isio    DCD    1869181801
        0x200078b0:    0000006e    n...    DCD    110
    m_u8MfrName
        0x200078b4:    756e614d    Manu    DCD    1970168141
        0x200078b8:    74636166    fact    DCD    1952670054
        0x200078bc:    72657275    urer    DCD    1919251061
        0x200078c0:    6d614e20     Nam    DCD    1835093536
        0x200078c4:    00000065    e...    DCD    101
    m_u8ModelNumber
        0x200078c8:    65646f4d    Mode    DCD    1701080909
        0x200078cc:    754e206c    l Nu    DCD    1968054380
        0x200078d0:    7265626d    mber    DCD    1919246957
        0x200078d4:    00000000    ....    DCD    0
    m_u8SerialNumber
        0x200078d8:    69726553    Seri    DCD    1769104723
        0x200078dc:    4e206c61    al N    DCD    1310747745
        0x200078e0:    65626d75    umbe    DCD    1700949365
        0x200078e4:    00000072    r...    DCD    114
    m_u8SoftwareRev
        0x200078e8:    74666f53    Soft    DCD    1952870227
        0x200078ec:    65726177    ware    DCD    1701994871
        0x200078f0:    76655220     Rev    DCD    1986351648
        0x200078f4:    6f697369    isio    DCD    1869181801
        0x200078f8:    485b006e    n.[H    DCD    1213923438
        0x200078fc:    46647261    ardF    DCD    1180988001
        0x20007900:    746c7561    ault    DCD    1953264993
        0x20007904:    6e61485f    _Han    DCD    1851869279
        0x20007908:    72656c64    dler    DCD    1919249508
        0x2000790c:    7275435d    ]Cur    DCD    1920287581
        0x20007910:    746e6572    rent    DCD    1953391986
        0x20007914:    70736d20     msp    DCD    1886612768
        0x20007918:    7830203a    : 0x    DCD    2016419898
        0x2000791c:    58383025    %08X    DCD    1480077349
        0x20007920:    634f000a    ..Oc    DCD    1666121738
        0x20007924:    65727563    cure    DCD    1701999971
        0x20007928:    6e692064    d in    DCD    1852383332
        0x2000792c:    73617420     tas    DCD    1935766560
        0x20007930:    55002e6b    k..U    DCD    1426075243
        0x20007934:    676e6973    sing    DCD    1735289203
        0x20007938:    32337520     u32    DCD    842233120
        0x2000793c:    2e70734d    Msp.    DCD    779121485
        0x20007940:    63634f00    .Occ    DCD    1667452672
        0x20007944:    64657275    ured    DCD    1684370037
        0x20007948:    206e6920     in     DCD    544106784
        0x2000794c:    65746e69    inte    DCD    1702129257
        0x20007950:    70757272    rrup    DCD    1886745202
        0x20007954:    44002e74    t..D    DCD    1140862580
        0x20007958:    69207665    ev i    DCD    1763735141
        0x2000795c:    206f666e    nfo     DCD    544171630
        0x20007960:    76726573    serv    DCD    1987208563
        0x20007964:    20656369    ice     DCD    543515497
        0x20007968:    74696e69    init    DCD    1953066601
        0x2000796c:    69616620     fai    DCD    1767990816
        0x20007970:    6572756c    lure    DCD    1701999980
        0x20007974:    6c6c002e    ..ll    DCD    1819017262
        0x20007978:    73615463    cTas    DCD    1935758435
        0x2000797c:    67734d6b    kMsg    DCD    1735609707
        0x20007980:    75657551    Queu    DCD    1969583441
        0x20007984:    20644965    eId     DCD    543443301
        0x20007988:    4c4c554e    NULL    DCD    1280070990
        0x2000798c:    636c6c00    .llc    DCD    1668049920
        0x20007990:    6b736154    Task    DCD    1802723668
        0x20007994:    4e206449    Id N    DCD    1310745673
        0x20007998:    004c4c55    ULL.    DCD    5000277
        0x2000799c:    5f636c6c    llc_    DCD    1600351340
        0x200079a0:    6b736174    task    DCD    1802723700
        0x200079a4:    67736d5f    _msg    DCD    1735617887
        0x200079a8:    6575715f    _que    DCD    1702195551
        0x200079ac:    6c006575    ue.l    DCD    1811965301
        0x200079b0:    745f636c    lc_t    DCD    1952408428
        0x200079b4:    006b7361    ask.    DCD    7041889
        0x200079b8:    53656c62    bleS    DCD    1399155810
        0x200079bc:    6b636174    tack    DCD    1801675124
        0x200079c0:    67736d5f    _msg    DCD    1735617887
        0x200079c4:    6575715f    _que    DCD    1702195551
        0x200079c8:    62006575    ue.b    DCD    1644193141
        0x200079cc:    7453656c    leSt    DCD    1951622508
        0x200079d0:    546b6361    ackT    DCD    1416323937
        0x200079d4:    5f6b7361    ask_    DCD    1600877409
        0x200079d8:    506d654d    MemP    DCD    1349346637
        0x200079dc:    5f6c6f6f    ool_    DCD    1600941935
        0x200079e0:    676e6f6c    long    DCD    1735290732
        0x200079e4:    656c6200    .ble    DCD    1701601792
        0x200079e8:    63617453    Stac    DCD    1667331155
        0x200079ec:    7361546b    kTas    DCD    1935758443
        0x200079f0:    6c62006b    k.bl    DCD    1818361963
        0x200079f4:    61745365    eSta    DCD    1635013477
        0x200079f8:    61546b63    ckTa    DCD    1632922467
        0x200079fc:    4d5f6b73    sk_M    DCD    1298099059
        0x20007a00:    6f506d65    emPo    DCD    1867541861
        0x20007a04:    735f6c6f    ol_s    DCD    1935633519
        0x20007a08:    74726f68    hort    DCD    1953656680
        0x20007a0c:    534d5b00    .[MS    DCD    1397578496
        0x20007a10:    4c425f47    G_BL    DCD    1279418183
        0x20007a14:    48505f45    E_PH    DCD    1213226821
        0x20007a18:    50555f59    Y_UP    DCD    1347772249
        0x20007a1c:    45544144    DATE    DCD    1163149636
        0x20007a20:    4d4f435f    _COM    DCD    1297040223
        0x20007a24:    54454c50    PLET    DCD    1413827664
        0x20007a28:    4e495f45    E_IN    DCD    1313431365
        0x20007a2c:    48205d44    D] H    DCD    1210080580
        0x20007a30:    6c646e61    andl    DCD    1818521185
        0x20007a34:    203d2065    e =     DCD    540876901
        0x20007a38:    58257830    0x%X    DCD    1478850608
        0x20007a3c:    5854202c    , TX    DCD    1481908268
        0x20007a40:    5948505f    _PHY    DCD    1497911391
        0x20007a44:    30203d20     = 0    DCD    807419168
        0x20007a48:    2c582578    x%X,    DCD    743974264
        0x20007a4c:    5f585220     RX_    DCD    1599623712
        0x20007a50:    20594850    PHY     DCD    542722128
        0x20007a54:    7830203d    = 0x    DCD    2016419901
        0x20007a58:    000a5825    %X..    DCD    677925
        0x20007a5c:    47534d5b    [MSG    DCD    1196641627
        0x20007a60:    454c425f    _BLE    DCD    1162625631
        0x20007a64:    434e455f    _ENC    DCD    1129203039
        0x20007a68:    54505952    RYPT    DCD    1414551890
        0x20007a6c:    435f4445    ED_C    DCD    1130316869
        0x20007a70:    474e4148    HANG    DCD    1196310856
        0x20007a74:    495f4445    ED_I    DCD    1230980165
        0x20007a78:    205d444e    ND]     DCD    542983246
        0x20007a7c:    646e6148    Hand    DCD    1684955464
        0x20007a80:    3d20656c    le =    DCD    1025533292
        0x20007a84:    25783020     0x%    DCD    628633632
        0x20007a88:    45202c58    X, E    DCD    1159736408
        0x20007a8c:    7972636e    ncry    DCD    2037539694
        0x20007a90:    6f697470    ptio    DCD    1869182064
        0x20007a94:    6e455f6e    n_En    DCD    1850040174
        0x20007a98:    656c6261    able    DCD    1701601889
        0x20007a9c:    203d2064    d =     DCD    540876900
        0x20007aa0:    58257830    0x%X    DCD    1478850608
        0x20007aa4:    4d5b000a    ..[M    DCD    1297809418
        0x20007aa8:    425f4753    SG_B    DCD    1113540435
        0x20007aac:    455f454c    LE_E    DCD    1163871564
        0x20007ab0:    5952434e    NCRY    DCD    1498563406
        0x20007ab4:    44455450    PTED    DCD    1145394256
        0x20007ab8:    4645525f    _REF    DCD    1178948191
        0x20007abc:    48534552    RESH    DCD    1213416786
        0x20007ac0:    444e495f    _IND    DCD    1145981279
        0x20007ac4:    6148205d    ] Ha    DCD    1632116829
        0x20007ac8:    656c646e    ndle    DCD    1701602414
        0x20007acc:    30203d20     = 0    DCD    807419168
        0x20007ad0:    0a582578    x%X.    DCD    173548920
        0x20007ad4:    534d5b00    .[MS    DCD    1397578496
        0x20007ad8:    4c425f47    G_BL    DCD    1279418183
        0x20007adc:    4c4c5f45    E_LL    DCD    1280073541
        0x20007ae0:    5245565f    _VER    DCD    1380275807
        0x20007ae4:    4e4f4953    SION    DCD    1313818963
        0x20007ae8:    444e495f    _IND    DCD    1145981279
        0x20007aec:    614d205d    ] Ma    DCD    1632444509
        0x20007af0:    6166756e    nufa    DCD    1634104686
        0x20007af4:    72757463    ctur    DCD    1920300131
        0x20007af8:    4e5f7265    er_N    DCD    1314878053
        0x20007afc:    20656d61    ame     DCD    543518049
        0x20007b00:    7830203d    = 0x    DCD    2016419901
        0x20007b04:    202c5825    %X,     DCD    539777061
        0x20007b08:    646e6148    Hand    DCD    1684955464
        0x20007b0c:    3d20656c    le =    DCD    1025533292
        0x20007b10:    25783020     0x%    DCD    628633632
        0x20007b14:    56202c58    X, V    DCD    1444949080
        0x20007b18:    69737265    ersi    DCD    1769173605
        0x20007b1c:    3d206e6f    on =    DCD    1025535599
        0x20007b20:    25783020     0x%    DCD    628633632
        0x20007b24:    5b000a58    X..[    DCD    1526729304
        0x20007b28:    5f47534d    MSG_    DCD    1598509901
        0x20007b2c:    5f454c42    BLE_    DCD    1598377026
        0x20007b30:    43534944    DISC    DCD    1129531716
        0x20007b34:    454e4e4f    ONNE    DCD    1162759759
        0x20007b38:    44455443    CTED    DCD    1145394243
        0x20007b3c:    444e495f    _IND    DCD    1145981279
        0x20007b40:    6148205d    ] Ha    DCD    1632116829
        0x20007b44:    656c646e    ndle    DCD    1701602414
        0x20007b48:    30203d20     = 0    DCD    807419168
        0x20007b4c:    2c582578    x%X,    DCD    743974264
        0x20007b50:    61657220     rea    DCD    1634038304
        0x20007b54:    206e6f73    son     DCD    544108403
        0x20007b58:    7830203d    = 0x    DCD    2016419901
        0x20007b5c:    000a5825    %X..    DCD    677925
        0x20007b60:    47534d5b    [MSG    DCD    1196641627
        0x20007b64:    454c425f    _BLE    DCD    1162625631
        0x20007b68:    4e4f435f    _CON    DCD    1313817439
        0x20007b6c:    5443454e    NECT    DCD    1413694798
        0x20007b70:    5f4e4f49    ION_    DCD    1598967625
        0x20007b74:    41445055    UPDA    DCD    1094996053
        0x20007b78:    435f4554    TE_C    DCD    1130317140
        0x20007b7c:    4c504d4f    OMPL    DCD    1280331087
        0x20007b80:    5f455445    ETE_    DCD    1598379077
        0x20007b84:    5d444e49    IND]    DCD    1564757577
        0x20007b88:    6e6f4320     Con    DCD    1852785440
        0x20007b8c:    6e495f6e    n_In    DCD    1850302318
        0x20007b90:    76726574    terv    DCD    1987208564
        0x20007b94:    3d206c61    al =    DCD    1025535073
        0x20007b98:    25783020     0x%    DCD    628633632
        0x20007b9c:    43202c58    X, C    DCD    1126181976
        0x20007ba0:    5f6e6e6f    onn_    DCD    1601072751
        0x20007ba4:    6574614c    Late    DCD    1702125900
        0x20007ba8:    2079636e    ncy     DCD    544826222
        0x20007bac:    7830203d    = 0x    DCD    2016419901
        0x20007bb0:    202c5825    %X,     DCD    539777061
        0x20007bb4:    65707553    Supe    DCD    1701868883
        0x20007bb8:    73697672    rvis    DCD    1936291442
        0x20007bbc:    5f6e6f69    ion_    DCD    1601073001
        0x20007bc0:    656d6954    Time    DCD    1701669204
        0x20007bc4:    3d20756f    ou =    DCD    1025537391
        0x20007bc8:    25783020     0x%    DCD    628633632
        0x20007bcc:    5b000a58    X..[    DCD    1526729304
        0x20007bd0:    5f47534d    MSG_    DCD    1598509901
        0x20007bd4:    5f454c42    BLE_    DCD    1598377026
        0x20007bd8:    4e4e4f43    CONN    DCD    1313754947
        0x20007bdc:    45544345    ECTE    DCD    1163150149
        0x20007be0:    4e495f44    D_IN    DCD    1313431364
        0x20007be4:    61485d44    D]Ha    DCD    1632132420
        0x20007be8:    656c646e    ndle    DCD    1701602414
        0x20007bec:    30203d20     = 0    DCD    807419168
        0x20007bf0:    34302578    x%04    DCD    875570552
        0x20007bf4:    61000a58    X..a    DCD    1627392600
        0x20007bf8:    6d5f7070    pp_m    DCD    1834971248
        0x20007bfc:    006e6961    ain.    DCD    7235937

** Section #3 'CP_RAM_DATA' (SHT_PROGBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 16 bytes (alignment 8)
    Address: 0x20007c00


** Section #4 'CP_RAM_DATA' (SHT_NOBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 25788 bytes (alignment 8)
    Address: 0x20007c10


** Section #5 'CP_STACK_HEAP' (SHT_NOBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 4096 bytes (alignment 8)
    Address: 0x20016000


** Section #6 '.debug_abbrev' (SHT_PROGBITS)
    Size   : 13192 bytes


** Section #7 '.debug_frame' (SHT_PROGBITS)
    Size   : 6340 bytes


** Section #8 '.debug_info' (SHT_PROGBITS)
    Size   : 91303 bytes


** Section #9 '.debug_line' (SHT_PROGBITS)
    Size   : 40599 bytes


** Section #10 '.debug_loc' (SHT_PROGBITS)
    Size   : 32430 bytes


** Section #11 '.debug_ranges' (SHT_PROGBITS)
    Size   : 2680 bytes


** Section #12 '.debug_str' (SHT_PROGBITS)
    Size   : 173619 bytes


** Section #13 '.symtab' (SHT_SYMTAB)
    Size   : 64016 bytes (alignment 4)
    String table #14 '.strtab'
    Last local symbol no. 1110


** Section #14 '.strtab' (SHT_STRTAB)
    Size   : 97372 bytes


** Section #15 '.note' (SHT_NOTE)
    Size   : 36 bytes (alignment 4)


** Section #16 '.comment' (SHT_PROGBITS)
    Size   : 2628 bytes


** Section #17 '.shstrtab' (SHT_STRTAB)
    Size   : 184 bytes


