
========================================================================

** ELF Header Information

    File Name: .\Objects\cgm_profile_mp.axf

    Machine class: ELFCLASS32 (32-bit)
    Data encoding: ELFDATA2LSB (Little endian)
    Header version: EV_CURRENT (Current version)
    Operating System ABI: none
    ABI Version: 0
    File Type: ET_EXEC (Executable) (2)
    Machine: EM_ARM (ARM)

    Image Entry point: 0x10002155
    Flags: EF_ARM_HASENTRY (0x05000002)

    ARM ELF revision: 5 (ABI version 2)

    Conforms to Base float procedure-call standard

    Built with
    Component: Arm Compiler for Embedded 6.19 Tool: armasm [5e73cb00]
    Component: Arm Compiler for Embedded 6.19 Tool: armlink [5e73cb00]

    Header size: 52 bytes (0x34)
    Program header entry size: 32 bytes (0x20)
    Section header entry size: 40 bytes (0x28)

    Program header entries: 3
    Section header entries: 22

    Program header offset: 146216 (0x00023b28)
    Section header offset: 146312 (0x00023b88)

    Section header string table index: 21

========================================================================

** Program header #0 (PT_LOAD) [PF_R]
    Size : 4096 bytes
    Virtual address: 0x10000000 (Alignment 4)


====================================

** Program header #1 (PT_LOAD) [PF_R]
    Size : 16 bytes
    Virtual address: 0x10001000 (Alignment 4)


====================================

** Program header #2 (PT_LOAD) [PF_X + PF_W + PF_R + PF_ARM_ENTRY]
    Size : 57152 bytes (52652 bytes in file)
    Virtual address: 0x10002000 (Alignment 512)


========================================================================

** Section #1 'BOOT2_CODE' (SHT_PROGBITS) [SHF_ALLOC]
    Size   : 4096 bytes
    Address: 0x10000000


** Section #2 'FW_UPGRADE_CODE' (SHT_PROGBITS) [SHF_ALLOC]
    Size   : 16 bytes (alignment 4)
    Address: 0x10001000


** Section #3 'APP_CODE' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 740 bytes (alignment 4)
    Address: 0x10002000

    $d.realdata
    RESET
    __Vectors
        0x10002000:    20031000    ...     DCD    537071616
        0x10002004:    10002155    U!..    DCD    268443989
        0x10002008:    10002169    i!..    DCD    268444009
        0x1000200c:    1000217b    {!..    DCD    268444027
        0x10002010:    1000218d    .!..    DCD    268444045
        0x10002014:    1000218f    .!..    DCD    268444047
        0x10002018:    10002191    .!..    DCD    268444049
        0x1000201c:    00000000    ....    DCD    0
        0x10002020:    00000000    ....    DCD    0
        0x10002024:    00000000    ....    DCD    0
        0x10002028:    00000000    ....    DCD    0
        0x1000202c:    000002d1    ....    DCD    721
        0x10002030:    10002195    .!..    DCD    268444053
        0x10002034:    00000000    ....    DCD    0
        0x10002038:    00000375    u...    DCD    885
        0x1000203c:    00000381    ....    DCD    897
        0x10002040:    1000219b    .!..    DCD    268444059
        0x10002044:    1000219d    .!..    DCD    268444061
        0x10002048:    1000219f    .!..    DCD    268444063
        0x1000204c:    100021a1    .!..    DCD    268444065
        0x10002050:    100021a3    .!..    DCD    268444067
        0x10002054:    100021a5    .!..    DCD    268444069
        0x10002058:    100021a7    .!..    DCD    268444071
        0x1000205c:    100021a9    .!..    DCD    268444073
        0x10002060:    100021ab    .!..    DCD    268444075
        0x10002064:    100021ad    .!..    DCD    268444077
        0x10002068:    100021af    .!..    DCD    268444079
        0x1000206c:    100021b1    .!..    DCD    268444081
        0x10002070:    100021b3    .!..    DCD    268444083
        0x10002074:    100021b5    .!..    DCD    268444085
        0x10002078:    100021b7    .!..    DCD    268444087
        0x1000207c:    100021b9    .!..    DCD    268444089
        0x10002080:    100021bb    .!..    DCD    268444091
        0x10002084:    100021bd    .!..    DCD    268444093
        0x10002088:    100021bf    .!..    DCD    268444095
        0x1000208c:    100021c1    .!..    DCD    268444097
        0x10002090:    100021c3    .!..    DCD    268444099
        0x10002094:    100021c5    .!..    DCD    268444101
        0x10002098:    100021c7    .!..    DCD    268444103
        0x1000209c:    100021c9    .!..    DCD    268444105
        0x100020a0:    100021cb    .!..    DCD    268444107
        0x100020a4:    100021cd    .!..    DCD    268444109
        0x100020a8:    100021cf    .!..    DCD    268444111
        0x100020ac:    100021d1    .!..    DCD    268444113
        0x100020b0:    100021d3    .!..    DCD    268444115
        0x100020b4:    100021d5    .!..    DCD    268444117
        0x100020b8:    100021d7    .!..    DCD    268444119
        0x100020bc:    100021d9    .!..    DCD    268444121
        0x100020c0:    100021db    .!..    DCD    268444123
        0x100020c4:    100021dd    .!..    DCD    268444125
        0x100020c8:    100021df    .!..    DCD    268444127
        0x100020cc:    100021e1    .!..    DCD    268444129
        0x100020d0:    100021e3    .!..    DCD    268444131
        0x100020d4:    100021e5    .!..    DCD    268444133
        0x100020d8:    100021e7    .!..    DCD    268444135
        0x100020dc:    100021e9    .!..    DCD    268444137
        0x100020e0:    100021eb    .!..    DCD    268444139
        0x100020e4:    100021ed    .!..    DCD    268444141
        0x100020e8:    100021ef    .!..    DCD    268444143
        0x100020ec:    100021f1    .!..    DCD    268444145
        0x100020f0:    100021f3    .!..    DCD    268444147
        0x100020f4:    100021f5    .!..    DCD    268444149
        0x100020f8:    100021f7    .!..    DCD    268444151
        0x100020fc:    100021f9    .!..    DCD    268444153
        0x10002100:    100021fb    .!..    DCD    268444155
        0x10002104:    100021fd    .!..    DCD    268444157
        0x10002108:    100021ff    .!..    DCD    268444159
        0x1000210c:    10002201    ."..    DCD    268444161
        0x10002110:    10002203    ."..    DCD    268444163
        0x10002114:    10002205    ."..    DCD    268444165
        0x10002118:    10002207    ."..    DCD    268444167
        0x1000211c:    10002209    ."..    DCD    268444169
        0x10002120:    1000220b    ."..    DCD    268444171
        0x10002124:    1000220d    ."..    DCD    268444173
        0x10002128:    1000220f    ."..    DCD    268444175
        0x1000212c:    00000000    ....    DCD    0
        0x10002130:    00000000    ....    DCD    0
        0x10002134:    00000000    ....    DCD    0
        0x10002138:    00000000    ....    DCD    0
        0x1000213c:    00000000    ....    DCD    0
    $t
    .ARM.Collect$$$$00000000
    .ARM.Collect$$$$00000001
    __Vectors_End
    __main
    _main_stk
        0x10002140:    f8dfd00c    ....    LDR      sp,__lit__00000000 ; [0x10002150] = 0x20031000
    .ARM.Collect$$$$00000004
    _main_scatterload
        0x10002144:    f000f870    ..p.    BL       __scatterload ; 0x10002228
    .ARM.Collect$$$$00000008
    .ARM.Collect$$$$0000000A
    .ARM.Collect$$$$0000000B
    __main_after_scatterload
    _main_clock
    _main_cpp_init
    _main_init
        0x10002148:    4800        .H      LDR      r0,[pc,#0] ; [0x1000214c] = 0x100024e1
        0x1000214a:    4700        .G      BX       r0
    $d
        0x1000214c:    100024e1    .$..    DCD    268444897
    .ARM.Collect$$$$00002712
    __lit__00000000
    .ARM.Collect$$$$0000000D
    .ARM.Collect$$$$0000000F
    __rt_final_cpp
    __rt_final_exit
        0x10002150:    20031000    ...     DCD    537071616
    $t
    .text
    $v0
    Reset_Handler
        0x10002154:    482e        .H      LDR      r0,[pc,#184] ; [0x10002210] = 0x20031000
        0x10002156:    f3808808    ....    MSR      MSP,r0
        0x1000215a:    482e        .H      LDR      r0,[pc,#184] ; [0x10002214] = 0x20030000
        0x1000215c:    f380880a    ....    MSR      MSPLIM,r0
        0x10002160:    482d        -H      LDR      r0,[pc,#180] ; [0x10002218] = 0x1000224d
        0x10002162:    4780        .G      BLX      r0
        0x10002164:    482d        -H      LDR      r0,[pc,#180] ; [0x1000221c] = 0x10002141
        0x10002166:    4700        .G      BX       r0
    NMI_Handler
        0x10002168:    ea5f000e    _...    MOVS     r0,lr
        0x1000216c:    f3ef8108    ....    MRS      r1,MSP
        0x10002170:    f3ef8209    ....    MRS      r2,PSP
        0x10002174:    4b2a        *K      LDR      r3,[pc,#168] ; [0x10002220] = 0x1000234d
        0x10002176:    4798        .G      BLX      r3
        0x10002178:    e7fe        ..      B        0x10002178 ; NMI_Handler + 16
    HardFault_Handler
        0x1000217a:    ea5f000e    _...    MOVS     r0,lr
        0x1000217e:    f3ef8108    ....    MRS      r1,MSP
        0x10002182:    f3ef8209    ....    MRS      r2,PSP
        0x10002186:    4b27        'K      LDR      r3,[pc,#156] ; [0x10002224] = 0x100022e5
        0x10002188:    4798        .G      BLX      r3
        0x1000218a:    e7fe        ..      B        0x1000218a ; HardFault_Handler + 16
    MemoryManagement_Handler
        0x1000218c:    e7fe        ..      B        MemoryManagement_Handler ; 0x1000218c
    BusFault_Handler
        0x1000218e:    e7fe        ..      B        BusFault_Handler ; 0x1000218e
    UsageFault_Handler
        0x10002190:    e7fe        ..      B        UsageFault_Handler ; 0x10002190
        0x10002192:    e7fe        ..      B        0x10002192 ; UsageFault_Handler + 2
    DebugMon_Handler
        0x10002194:    e7fe        ..      B        DebugMon_Handler ; 0x10002194
        0x10002196:    e7fe        ..      B        0x10002196 ; DebugMon_Handler + 2
        0x10002198:    e7fe        ..      B        0x10002198 ; DebugMon_Handler + 4
    RTC_CH0_IRQ_Handler
        0x1000219a:    e7fe        ..      B        RTC_CH0_IRQ_Handler ; 0x1000219a
    GPADC0_IRQ_Handler
        0x1000219c:    e7fe        ..      B        GPADC0_IRQ_Handler ; 0x1000219c
    LLC_IRQ_Handler
        0x1000219e:    e7fe        ..      B        LLC_IRQ_Handler ; 0x1000219e
    I2S_IRQ_Handler
        0x100021a0:    e7fe        ..      B        I2S_IRQ_Handler ; 0x100021a0
    QDEC_IRQ_Handler
        0x100021a2:    e7fe        ..      B        QDEC_IRQ_Handler ; 0x100021a2
    AUDIO0_IRQ_Handler
        0x100021a4:    e7fe        ..      B        AUDIO0_IRQ_Handler ; 0x100021a4
    CRYPT0_IRQ_Handler
        0x100021a6:    e7fe        ..      B        CRYPT0_IRQ_Handler ; 0x100021a6
    TRNG_IRQ_Handler
        0x100021a8:    e7fe        ..      B        TRNG_IRQ_Handler ; 0x100021a8
    RF_CAL_IRQ_Handler
        0x100021aa:    e7fe        ..      B        RF_CAL_IRQ_Handler ; 0x100021aa
    UART0_IRQ_Handler
        0x100021ac:    e7fe        ..      B        UART0_IRQ_Handler ; 0x100021ac
    UART1_IRQ_Handler
        0x100021ae:    e7fe        ..      B        UART1_IRQ_Handler ; 0x100021ae
    UART2_IRQ_Handler
        0x100021b0:    e7fe        ..      B        UART2_IRQ_Handler ; 0x100021b0
    SPI0_IRQ_Handler
        0x100021b2:    e7fe        ..      B        SPI0_IRQ_Handler ; 0x100021b2
    SPI1_IRQ_Handler
        0x100021b4:    e7fe        ..      B        SPI1_IRQ_Handler ; 0x100021b4
    I2C0_IRQ_Handler
        0x100021b6:    e7fe        ..      B        I2C0_IRQ_Handler ; 0x100021b6
    I2C1_IRQ_Handler
        0x100021b8:    e7fe        ..      B        I2C1_IRQ_Handler ; 0x100021b8
    I2C2_IRQ_Handler
        0x100021ba:    e7fe        ..      B        I2C2_IRQ_Handler ; 0x100021ba
    DMA_IRQ0_Handler
        0x100021bc:    e7fe        ..      B        DMA_IRQ0_Handler ; 0x100021bc
    DMA_IRQ4_Handler
        0x100021be:    e7fe        ..      B        DMA_IRQ4_Handler ; 0x100021be
    TIMER0_IRQ_Handler
        0x100021c0:    e7fe        ..      B        TIMER0_IRQ_Handler ; 0x100021c0
    GPIO_IRQ0_Handler
        0x100021c2:    e7fe        ..      B        GPIO_IRQ0_Handler ; 0x100021c2
    GPIO_IRQ1_Handler
        0x100021c4:    e7fe        ..      B        GPIO_IRQ1_Handler ; 0x100021c4
    GPIO_IRQ2_Handler
        0x100021c6:    e7fe        ..      B        GPIO_IRQ2_Handler ; 0x100021c6
    PMU_IRQ_Handler
        0x100021c8:    e7fe        ..      B        PMU_IRQ_Handler ; 0x100021c8
    QSPI0_IRQ_Handler
        0x100021ca:    e7fe        ..      B        QSPI0_IRQ_Handler ; 0x100021ca
    QSPI1_IRQ_Handler
        0x100021cc:    e7fe        ..      B        QSPI1_IRQ_Handler ; 0x100021cc
    QSPI2_IRQ_Handler
        0x100021ce:    e7fe        ..      B        QSPI2_IRQ_Handler ; 0x100021ce
    QSPI3_IRQ_Handler
        0x100021d0:    e7fe        ..      B        QSPI3_IRQ_Handler ; 0x100021d0
    SW_IRQ0_Handler
        0x100021d2:    e7fe        ..      B        SW_IRQ0_Handler ; 0x100021d2
    SW_IRQ1_Handler
        0x100021d4:    e7fe        ..      B        SW_IRQ1_Handler ; 0x100021d4
    USB_IRQ_Handler
        0x100021d6:    e7fe        ..      B        USB_IRQ_Handler ; 0x100021d6
    RTC_CH3_IRQ_Handler
        0x100021d8:    e7fe        ..      B        RTC_CH3_IRQ_Handler ; 0x100021d8
    DMA_IRQ1_Handler
        0x100021da:    e7fe        ..      B        DMA_IRQ1_Handler ; 0x100021da
    DMA_IRQ2_Handler
        0x100021dc:    e7fe        ..      B        DMA_IRQ2_Handler ; 0x100021dc
    DMA_IRQ3_Handler
        0x100021de:    e7fe        ..      B        DMA_IRQ3_Handler ; 0x100021de
    DMA_IRQ5_Handler
        0x100021e0:    e7fe        ..      B        DMA_IRQ5_Handler ; 0x100021e0
    DMA_IRQ6_Handler
        0x100021e2:    e7fe        ..      B        DMA_IRQ6_Handler ; 0x100021e2
    DMA_IRQ7_Handler
        0x100021e4:    e7fe        ..      B        DMA_IRQ7_Handler ; 0x100021e4
    TIMER1_IRQ_Handler
        0x100021e6:    e7fe        ..      B        TIMER1_IRQ_Handler ; 0x100021e6
    TIMER2_IRQ_Handler
        0x100021e8:    e7fe        ..      B        TIMER2_IRQ_Handler ; 0x100021e8
    TIMER3_IRQ_Handler
        0x100021ea:    e7fe        ..      B        TIMER3_IRQ_Handler ; 0x100021ea
    SW_IRQ2_Handler
        0x100021ec:    e7fe        ..      B        SW_IRQ2_Handler ; 0x100021ec
    FP_IRQ_Handler
        0x100021ee:    e7fe        ..      B        FP_IRQ_Handler ; 0x100021ee
    RTC_CH1_IRQ_Handler
        0x100021f0:    e7fe        ..      B        RTC_CH1_IRQ_Handler ; 0x100021f0
    RTC_CH2_IRQ_Handler
        0x100021f2:    e7fe        ..      B        RTC_CH2_IRQ_Handler ; 0x100021f2
    AUDIO1_IRQ_Handler
        0x100021f4:    e7fe        ..      B        AUDIO1_IRQ_Handler ; 0x100021f4
    GPADC1_IRQ_Handler
        0x100021f6:    e7fe        ..      B        GPADC1_IRQ_Handler ; 0x100021f6
    I2C3_IRQ_Handler
        0x100021f8:    e7fe        ..      B        I2C3_IRQ_Handler ; 0x100021f8
    USB_PHY_IRQ_Handler
        0x100021fa:    e7fe        ..      B        USB_PHY_IRQ_Handler ; 0x100021fa
    STIM0_IRQ0_Handler
        0x100021fc:    e7fe        ..      B        STIM0_IRQ0_Handler ; 0x100021fc
    STIM0_IRQ1_Handler
        0x100021fe:    e7fe        ..      B        STIM0_IRQ1_Handler ; 0x100021fe
    STIM0_IRQ2_Handler
        0x10002200:    e7fe        ..      B        STIM0_IRQ2_Handler ; 0x10002200
    STIM0_IRQ3_Handler
        0x10002202:    e7fe        ..      B        STIM0_IRQ3_Handler ; 0x10002202
    STIM1_IRQ0_Handler
        0x10002204:    e7fe        ..      B        STIM1_IRQ0_Handler ; 0x10002204
    STIM1_IRQ1_Handler
        0x10002206:    e7fe        ..      B        STIM1_IRQ1_Handler ; 0x10002206
    STIM1_IRQ2_Handler
        0x10002208:    e7fe        ..      B        STIM1_IRQ2_Handler ; 0x10002208
    STIM1_IRQ3_Handler
        0x1000220a:    e7fe        ..      B        STIM1_IRQ3_Handler ; 0x1000220a
    WDT1_IRQ_Handler
        0x1000220c:    e7fe        ..      B        WDT1_IRQ_Handler ; 0x1000220c
    CRYPT1_IRQ_Handler
        0x1000220e:    e7fe        ..      B        CRYPT1_IRQ_Handler ; 0x1000220e
    $d
        0x10002210:    20031000    ...     DCD    537071616
        0x10002214:    20030000    ...     DCD    537067520
        0x10002218:    1000224d    M"..    DCD    268444237
        0x1000221c:    10002141    A!..    DCD    268443969
        0x10002220:    1000234d    M#..    DCD    268444493
        0x10002224:    100022e5    ."..    DCD    268444389
    $t
    .text
    __scatterload
    __scatterload_rt2
        0x10002228:    4c06        .L      LDR      r4,[pc,#24] ; [0x10002244] = 0x100022b4
        0x1000222a:    4d07        .M      LDR      r5,[pc,#28] ; [0x10002248] = 0x100022e4
        0x1000222c:    e006        ..      B        0x1000223c ; __scatterload + 20
        0x1000222e:    68e0        .h      LDR      r0,[r4,#0xc]
        0x10002230:    f0400301    @...    ORR      r3,r0,#1
        0x10002234:    e8940007    ....    LDM      r4,{r0-r2}
        0x10002238:    4798        .G      BLX      r3
        0x1000223a:    3410        .4      ADDS     r4,r4,#0x10
        0x1000223c:    42ac        .B      CMP      r4,r5
        0x1000223e:    d3f6        ..      BCC      0x1000222e ; __scatterload + 6
        0x10002240:    f7ffff82    ....    BL       __main_after_scatterload ; 0x10002148
    $d
        0x10002244:    100022b4    ."..    DCD    268444340
        0x10002248:    100022e4    ."..    DCD    268444388
    $t.0
    SystemInit
        0x1000224c:    f2420200    B...    MOVW     r2,#0x2000
        0x10002250:    f2410100    A...    MOVW     r1,#0x1000
        0x10002254:    2000        .       MOVS     r0,#0
        0x10002256:    f2c10200    ....    MOVT     r2,#0x1000
        0x1000225a:    f2c20102    ....    MOVT     r1,#0x2002
        0x1000225e:    bf00        ..      NOP      
        0x10002260:    f8523020    R. 0    LDR      r3,[r2,r0,LSL #2]
        0x10002264:    f8413020    A. 0    STR      r3,[r1,r0,LSL #2]
        0x10002268:    3001        .0      ADDS     r0,#1
        0x1000226a:    284b        K(      CMP      r0,#0x4b
        0x1000226c:    d1f8        ..      BNE      0x10002260 ; SystemInit + 20
        0x1000226e:    f64e5014    N..P    MOV      r0,#0xed14
        0x10002272:    f2ce0000    ....    MOVT     r0,#0xe000
        0x10002276:    f8401c0c    @...    STR      r1,[r0,#-0xc]
        0x1000227a:    6f41        Ao      LDR      r1,[r0,#0x74]
        0x1000227c:    f4410170    A.p.    ORR      r1,r1,#0xf00000
        0x10002280:    6741        Ag      STR      r1,[r0,#0x74]
        0x10002282:    6801        .h      LDR      r1,[r0,#0]
        0x10002284:    f0410110    A...    ORR      r1,r1,#0x10
        0x10002288:    6001        .`      STR      r1,[r0,#0]
        0x1000228a:    6801        .h      LDR      r1,[r0,#0]
        0x1000228c:    f4417180    A..q    ORR      r1,r1,#0x100
        0x10002290:    6001        .`      STR      r1,[r0,#0]
        0x10002292:    4770        pG      BX       lr
    $t
    i.__scatterload_copy
    __scatterload_copy
        0x10002294:    e002        ..      B        0x1000229c ; __scatterload_copy + 8
        0x10002296:    c808        ..      LDM      r0!,{r3}
        0x10002298:    1f12        ..      SUBS     r2,r2,#4
        0x1000229a:    c108        ..      STM      r1!,{r3}
        0x1000229c:    2a00        .*      CMP      r2,#0
        0x1000229e:    d1fa        ..      BNE      0x10002296 ; __scatterload_copy + 2
        0x100022a0:    4770        pG      BX       lr
    i.__scatterload_null
    __scatterload_null
        0x100022a2:    4770        pG      BX       lr
    i.__scatterload_zeroinit
    __scatterload_zeroinit
        0x100022a4:    2000        .       MOVS     r0,#0
        0x100022a6:    e001        ..      B        0x100022ac ; __scatterload_zeroinit + 8
        0x100022a8:    c101        ..      STM      r1!,{r0}
        0x100022aa:    1f12        ..      SUBS     r2,r2,#4
        0x100022ac:    2a00        .*      CMP      r2,#0
        0x100022ae:    d1fb        ..      BNE      0x100022a8 ; __scatterload_zeroinit + 4
        0x100022b0:    4770        pG      BX       lr
        0x100022b2:    0000        ..      MOVS     r0,r0
    $d.realdata
    Region$$Table$$Base
        0x100022b4:    10002758    X'..    DCD    268445528
        0x100022b8:    20003000    .0.     DCD    536883200
        0x100022bc:    0000be50    P...    DCD    48720
        0x100022c0:    10002294    ."..    DCD    268444308
        0x100022c4:    1000e5a8    ....    DCD    268494248
        0x100022c8:    20021200    ...     DCD    537006592
        0x100022cc:    00000804    ....    DCD    2052
        0x100022d0:    10002294    ."..    DCD    268444308
        0x100022d4:    1000edac    ....    DCD    268496300
        0x100022d8:    20029000    ...     DCD    537038848
        0x100022dc:    0000000c    ....    DCD    12
        0x100022e0:    100022a4    ."..    DCD    268444324
    Region$$Table$$Limit

** Section #4 'FLASH_CACHE_CODE' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 1140 bytes (alignment 4)
    Address: 0x100022e4

    $t.1
    HardFault_Handler_Proc
        0x100022e4:    b081        ..      SUB      sp,sp,#4
        0x100022e6:    0740        @.      LSLS     r0,r0,#29
        0x100022e8:    bf48        H.      IT       MI
        0x100022ea:    4611        .F      MOVMI    r1,r2
        0x100022ec:    6989        .i      LDR      r1,[r1,#0x18]
        0x100022ee:    f64e5028    N.(P    MOV      r0,#0xed28
        0x100022f2:    f2ce0000    ....    MOVT     r0,#0xe000
        0x100022f6:    9100        ..      STR      r1,[sp,#0]
        0x100022f8:    6841        Ah      LDR      r1,[r0,#4]
        0x100022fa:    6841        Ah      LDR      r1,[r0,#4]
        0x100022fc:    6841        Ah      LDR      r1,[r0,#4]
        0x100022fe:    0049        I.      LSLS     r1,r1,#1
        0x10002300:    d522        ".      BPL      0x10002348 ; HardFault_Handler_Proc + 100
        0x10002302:    6801        .h      LDR      r1,[r0,#0]
        0x10002304:    0609        ..      LSLS     r1,r1,#24
        0x10002306:    d007        ..      BEQ      0x10002318 ; HardFault_Handler_Proc + 52
        0x10002308:    6801        .h      LDR      r1,[r0,#0]
        0x1000230a:    6801        .h      LDR      r1,[r0,#0]
        0x1000230c:    0789        ..      LSLS     r1,r1,#30
        0x1000230e:    bf48        H.      IT       MI
        0x10002310:    6801        .h      LDRMI    r1,[r0,#0]
        0x10002312:    6801        .h      LDR      r1,[r0,#0]
        0x10002314:    6801        .h      LDR      r1,[r0,#0]
        0x10002316:    6801        .h      LDR      r1,[r0,#0]
        0x10002318:    6801        .h      LDR      r1,[r0,#0]
        0x1000231a:    f4114f7f    ...O    TST      r1,#0xff00
        0x1000231e:    d008        ..      BEQ      0x10002332 ; HardFault_Handler_Proc + 78
        0x10002320:    6801        .h      LDR      r1,[r0,#0]
        0x10002322:    6801        .h      LDR      r1,[r0,#0]
        0x10002324:    0589        ..      LSLS     r1,r1,#22
        0x10002326:    bf48        H.      IT       MI
        0x10002328:    6801        .h      LDRMI    r1,[r0,#0]
        0x1000232a:    6801        .h      LDR      r1,[r0,#0]
        0x1000232c:    6801        .h      LDR      r1,[r0,#0]
        0x1000232e:    6801        .h      LDR      r1,[r0,#0]
        0x10002330:    6801        .h      LDR      r1,[r0,#0]
        0x10002332:    6801        .h      LDR      r1,[r0,#0]
        0x10002334:    f5b13f80    ...?    CMP      r1,#0x10000
        0x10002338:    d306        ..      BCC      0x10002348 ; HardFault_Handler_Proc + 100
        0x1000233a:    6801        .h      LDR      r1,[r0,#0]
        0x1000233c:    6801        .h      LDR      r1,[r0,#0]
        0x1000233e:    6801        .h      LDR      r1,[r0,#0]
        0x10002340:    6801        .h      LDR      r1,[r0,#0]
        0x10002342:    6801        .h      LDR      r1,[r0,#0]
        0x10002344:    6801        .h      LDR      r1,[r0,#0]
        0x10002346:    6800        .h      LDR      r0,[r0,#0]
        0x10002348:    e7fe        ..      B        0x10002348 ; HardFault_Handler_Proc + 100
        0x1000234a:    0000        ..      MOVS     r0,r0
    NMI_Handler_Proc
        0x1000234c:    e7fe        ..      B        NMI_Handler_Proc ; 0x1000234c
        0x1000234e:    0000        ..      MOVS     r0,r0
    err_debug_init
        0x10002350:    f24000e8    @...    MOVW     r0,#0xe8
        0x10002354:    f24251f9    B..Q    MOV      r1,#0x25f9
        0x10002358:    f2c20000    ....    MOVT     r0,#0x2000
        0x1000235c:    f2c10100    ....    MOVT     r1,#0x1000
        0x10002360:    6001        .`      STR      r1,[r0,#0]
        0x10002362:    f24000ec    @...    MOVW     r0,#0xec
        0x10002366:    f2426135    B.5a    MOV      r1,#0x2635
        0x1000236a:    f2c20000    ....    MOVT     r0,#0x2000
        0x1000236e:    f2c10100    ....    MOVT     r1,#0x1000
        0x10002372:    6001        .`      STR      r1,[r0,#0]
        0x10002374:    4770        pG      BX       lr
        0x10002376:    0000        ..      MOVS     r0,r0
    lpwr_after_wakeup
        0x10002378:    4770        pG      BX       lr
        0x1000237a:    0000        ..      MOVS     r0,r0
    lpwr_before_sleep
        0x1000237c:    2001        .       MOVS     r0,#1
        0x1000237e:    4770        pG      BX       lr
    lpwr_ctrl_init
        0x10002380:    b570        p.      PUSH     {r4-r6,lr}
        0x10002382:    b082        ..      SUB      sp,sp,#8
        0x10002384:    4604        .F      MOV      r4,r0
        0x10002386:    f2490000    I...    MOVW     r0,#0x9000
        0x1000238a:    f2c20002    ....    MOVT     r0,#0x2002
        0x1000238e:    7004        .p      STRB     r4,[r0,#0]
        0x10002390:    f2490008    I...    MOV      r0,#0x9008
        0x10002394:    f2c20002    ....    MOVT     r0,#0x2002
        0x10002398:    6001        .`      STR      r1,[r0,#0]
        0x1000239a:    f2490004    I...    MOV      r0,#0x9004
        0x1000239e:    f2c20002    ....    MOVT     r0,#0x2002
        0x100023a2:    6002        .`      STR      r2,[r0,#0]
        0x100023a4:    f10d0107    ....    ADD      r1,sp,#7
        0x100023a8:    2002        .       MOVS     r0,#2
        0x100023aa:    2201        ."      MOVS     r2,#1
        0x100023ac:    2601        .&      MOVS     r6,#1
        0x100023ae:    f000f942    ..B.    BL       $Ven$TT$L$$rom_hw_efuse_read_bytes ; 0x10002636
        0x100023b2:    f89d0007    ....    LDRB     r0,[sp,#7]
        0x100023b6:    f3c01041    ..A.    UBFX     r0,r0,#5,#2
        0x100023ba:    2803        .(      CMP      r0,#3
        0x100023bc:    d00f        ..      BEQ      0x100023de ; lpwr_ctrl_init + 94
        0x100023be:    2802        .(      CMP      r0,#2
        0x100023c0:    d179        y.      BNE      0x100024b6 ; lpwr_ctrl_init + 310
        0x100023c2:    f24b0500    K...    MOVW     r5,#0xb000
        0x100023c6:    f2c60504    ....    MOVT     r5,#0x6004
        0x100023ca:    4628        (F      MOV      r0,r5
        0x100023cc:    f44f4150    O.PA    MOV      r1,#0xd000
        0x100023d0:    2201        ."      MOVS     r2,#1
        0x100023d2:    f000f935    ..5.    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x10002640
        0x100023d6:    4628        (F      MOV      r0,r5
        0x100023d8:    f44f3148    O.H1    MOV      r1,#0x32000
        0x100023dc:    e068        h.      B        0x100024b0 ; lpwr_ctrl_init + 304
        0x100023de:    f10d0101    ....    ADD      r1,sp,#1
        0x100023e2:    203a        :       MOVS     r0,#0x3a
        0x100023e4:    2206        ."      MOVS     r2,#6
        0x100023e6:    f000f926    ..&.    BL       $Ven$TT$L$$rom_hw_efuse_read_bytes ; 0x10002636
        0x100023ea:    f89d1001    ....    LDRB     r1,[sp,#1]
        0x100023ee:    f24b0000    K...    MOVW     r0,#0xb000
        0x100023f2:    f2c60004    ....    MOVT     r0,#0x6004
        0x100023f6:    f1000580    ....    ADD      r5,r0,#0x80
        0x100023fa:    2920         )      CMP      r1,#0x20
        0x100023fc:    f001011f    ....    AND      r1,r1,#0x1f
        0x10002400:    4628        (F      MOV      r0,r5
        0x10002402:    fa06f101    ....    LSL      r1,r6,r1
        0x10002406:    bf3c        <.      ITT      CC
        0x10002408:    f24b0000    K...    MOVWCC   r0,#0xb000
        0x1000240c:    f2c60004    ....    MOVTCC   r0,#0x6004
        0x10002410:    2201        ."      MOVS     r2,#1
        0x10002412:    f000f915    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x10002640
        0x10002416:    f89d1002    ....    LDRB     r1,[sp,#2]
        0x1000241a:    4628        (F      MOV      r0,r5
        0x1000241c:    2920         )      CMP      r1,#0x20
        0x1000241e:    bf3c        <.      ITT      CC
        0x10002420:    f24b0000    K...    MOVWCC   r0,#0xb000
        0x10002424:    f2c60004    ....    MOVTCC   r0,#0x6004
        0x10002428:    f001011f    ....    AND      r1,r1,#0x1f
        0x1000242c:    fa06f101    ....    LSL      r1,r6,r1
        0x10002430:    2202        ."      MOVS     r2,#2
        0x10002432:    f000f905    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x10002640
        0x10002436:    f89d1003    ....    LDRB     r1,[sp,#3]
        0x1000243a:    4628        (F      MOV      r0,r5
        0x1000243c:    2920         )      CMP      r1,#0x20
        0x1000243e:    bf3c        <.      ITT      CC
        0x10002440:    f24b0000    K...    MOVWCC   r0,#0xb000
        0x10002444:    f2c60004    ....    MOVTCC   r0,#0x6004
        0x10002448:    f001011f    ....    AND      r1,r1,#0x1f
        0x1000244c:    fa06f101    ....    LSL      r1,r6,r1
        0x10002450:    2201        ."      MOVS     r2,#1
        0x10002452:    f000f8f5    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x10002640
        0x10002456:    f89d1004    ....    LDRB     r1,[sp,#4]
        0x1000245a:    4628        (F      MOV      r0,r5
        0x1000245c:    2920         )      CMP      r1,#0x20
        0x1000245e:    bf3c        <.      ITT      CC
        0x10002460:    f24b0000    K...    MOVWCC   r0,#0xb000
        0x10002464:    f2c60004    ....    MOVTCC   r0,#0x6004
        0x10002468:    f001011f    ....    AND      r1,r1,#0x1f
        0x1000246c:    fa06f101    ....    LSL      r1,r6,r1
        0x10002470:    2201        ."      MOVS     r2,#1
        0x10002472:    f000f8e5    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x10002640
        0x10002476:    f89d1005    ....    LDRB     r1,[sp,#5]
        0x1000247a:    4628        (F      MOV      r0,r5
        0x1000247c:    2920         )      CMP      r1,#0x20
        0x1000247e:    bf3c        <.      ITT      CC
        0x10002480:    f24b0000    K...    MOVWCC   r0,#0xb000
        0x10002484:    f2c60004    ....    MOVTCC   r0,#0x6004
        0x10002488:    f001011f    ....    AND      r1,r1,#0x1f
        0x1000248c:    fa06f101    ....    LSL      r1,r6,r1
        0x10002490:    2202        ."      MOVS     r2,#2
        0x10002492:    f000f8d5    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x10002640
        0x10002496:    f89d0006    ....    LDRB     r0,[sp,#6]
        0x1000249a:    2820         (      CMP      r0,#0x20
        0x1000249c:    bf3c        <.      ITT      CC
        0x1000249e:    f24b0500    K...    MOVWCC   r5,#0xb000
        0x100024a2:    f2c60504    ....    MOVTCC   r5,#0x6004
        0x100024a6:    f000001f    ....    AND      r0,r0,#0x1f
        0x100024aa:    fa06f100    ....    LSL      r1,r6,r0
        0x100024ae:    4628        (F      MOV      r0,r5
        0x100024b0:    2202        ."      MOVS     r2,#2
        0x100024b2:    f000f8c5    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x10002640
        0x100024b6:    2c04        .,      CMP      r4,#4
        0x100024b8:    d809        ..      BHI      0x100024ce ; lpwr_ctrl_init + 334
        0x100024ba:    1f20         .      SUBS     r0,r4,#4
        0x100024bc:    fab0f080    ....    CLZ      r0,r0
        0x100024c0:    0940        @.      LSRS     r0,r0,#5
        0x100024c2:    0040        @.      LSLS     r0,r0,#1
        0x100024c4:    2c03        .,      CMP      r4,#3
        0x100024c6:    bf08        ..      IT       EQ
        0x100024c8:    2001        .       MOVEQ    r0,#1
        0x100024ca:    f000f8be    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_low_power_mode ; 0x1000264a
        0x100024ce:    2001        .       MOVS     r0,#1
        0x100024d0:    2103        .!      MOVS     r1,#3
        0x100024d2:    220b        ."      MOVS     r2,#0xb
        0x100024d4:    2309        .#      MOVS     r3,#9
        0x100024d6:    f000f8bd    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_wakeup_source ; 0x10002654
        0x100024da:    b002        ..      ADD      sp,sp,#8
        0x100024dc:    bd70        p.      POP      {r4-r6,pc}
        0x100024de:    0000        ..      MOVS     r0,r0
    main
        0x100024e0:    b082        ..      SUB      sp,sp,#8
        0x100024e2:    f24e0000    N...    MOVW     r0,#0xe000
        0x100024e6:    f2c60004    ....    MOVT     r0,#0x6004
        0x100024ea:    f000f8b8    ....    BL       $Ven$TT$L$$rom_hw_wdt_disable ; 0x1000265e
        0x100024ee:    2064        d       MOVS     r0,#0x64
        0x100024f0:    f000f8ba    ....    BL       $Ven$TT$L$$rom_delay_ms ; 0x10002668
        0x100024f4:    f000f8bd    ....    BL       $Ven$TT$L$$rom_hw_pmu_dcdc_init ; 0x10002672
        0x100024f8:    200f        .       MOVS     r0,#0xf
        0x100024fa:    f000f8bf    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_dcdc_act_voltage ; 0x1000267c
        0x100024fe:    2002        .       MOVS     r0,#2
        0x10002500:    f000f8c1    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_ldo_dig_voltage ; 0x10002686
        0x10002504:    2001        .       MOVS     r0,#1
        0x10002506:    f000f8c3    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_dcdc_ret_voltage ; 0x10002690
        0x1000250a:    2005        .       MOVS     r0,#5
        0x1000250c:    f000f8c5    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_dcdc_ret_clk_divisor ; 0x1000269a
        0x10002510:    f000f8c8    ....    BL       $Ven$TT$L$$rom_hw_pmu_enable_dcdc_ret_output ; 0x100026a4
        0x10002514:    2001        .       MOVS     r0,#1
        0x10002516:    f000f8ca    ....    BL       $Ven$TT$L$$rom_hal_pmu_sel_power_act_out_mode ; 0x100026ae
        0x1000251a:    2000        .       MOVS     r0,#0
        0x1000251c:    f88d0007    ....    STRB     r0,[sp,#7]
        0x10002520:    f10d0107    ....    ADD      r1,sp,#7
        0x10002524:    200f        .       MOVS     r0,#0xf
        0x10002526:    2201        ."      MOVS     r2,#1
        0x10002528:    f000f885    ....    BL       $Ven$TT$L$$rom_hw_efuse_read_bytes ; 0x10002636
        0x1000252c:    f89d0007    ....    LDRB     r0,[sp,#7]
        0x10002530:    2800        .(      CMP      r0,#0
        0x10002532:    bf04        ..      ITT      EQ
        0x10002534:    2056        V       MOVEQ    r0,#0x56
        0x10002536:    f000f8bf    ....    BLEQ     $Ven$TT$L$$rom_hw_pmu_set_rc_hclk_tune ; 0x100026b8
        0x1000253a:    f10d0107    ....    ADD      r1,sp,#7
        0x1000253e:    2010        .       MOVS     r0,#0x10
        0x10002540:    2201        ."      MOVS     r2,#1
        0x10002542:    f000f878    ..x.    BL       $Ven$TT$L$$rom_hw_efuse_read_bytes ; 0x10002636
        0x10002546:    f89d0007    ....    LDRB     r0,[sp,#7]
        0x1000254a:    2800        .(      CMP      r0,#0
        0x1000254c:    bf08        ..      IT       EQ
        0x1000254e:    20a9        .       MOVEQ    r0,#0xa9
        0x10002550:    f000f8b7    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_rc_lclk_tune ; 0x100026c2
        0x10002554:    2001        .       MOVS     r0,#1
        0x10002556:    f000f8b9    ....    BL       $Ven$TT$L$$rom_hw_pmu_sel_dcxo_hclk_pwr ; 0x100026cc
        0x1000255a:    2005        .       MOVS     r0,#5
        0x1000255c:    2103        .!      MOVS     r1,#3
        0x1000255e:    2264        d"      MOVS     r2,#0x64
        0x10002560:    f000f8b9    ....    BL       $Ven$TT$L$$rom_hal_pmu_cfg_dcxo_hclk_param ; 0x100026d6
        0x10002564:    2001        .       MOVS     r0,#1
        0x10002566:    f44f61fa    O..a    MOV      r1,#0x7d0
        0x1000256a:    f000f8b9    ....    BL       $Ven$TT$L$$rom_hal_pmu_set_sys_clk_src ; 0x100026e0
        0x1000256e:    2006        .       MOVS     r0,#6
        0x10002570:    f000f8bb    ....    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x100026ea
        0x10002574:    2007        .       MOVS     r0,#7
        0x10002576:    f000f8b8    ....    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x100026ea
        0x1000257a:    2003        .       MOVS     r0,#3
        0x1000257c:    2103        .!      MOVS     r1,#3
        0x1000257e:    2203        ."      MOVS     r2,#3
        0x10002580:    234a        J#      MOVS     r3,#0x4a
        0x10002582:    f000f8b7    ....    BL       $Ven$TT$L$$rom_hal_pmu_cfg_dcxo_lclk_param ; 0x100026f4
        0x10002586:    2001        .       MOVS     r0,#1
        0x10002588:    f44f71fa    O..q    MOV      r1,#0x1f4
        0x1000258c:    f000f8b7    ....    BL       $Ven$TT$L$$rom_hal_pmu_set_lpwr_clk_src ; 0x100026fe
        0x10002590:    2001        .       MOVS     r0,#1
        0x10002592:    2100        .!      MOVS     r1,#0
        0x10002594:    2200        ."      MOVS     r2,#0
        0x10002596:    f000f8b7    ....    BL       $Ven$TT$L$$rom_hw_sys_ctrl_peri_int_ctrl ; 0x10002708
        0x1000259a:    f7fffed9    ....    BL       err_debug_init ; 0x10002350
        0x1000259e:    20c4        .       MOVS     r0,#0xc4
        0x100025a0:    f000f82c    ..,.    BL       patch_hal_pmu_set_sram_ret ; 0x100025fc
        0x100025a4:    f242317d    B.}1    MOV      r1,#0x237d
        0x100025a8:    f2423279    B.y2    MOV      r2,#0x2379
        0x100025ac:    f2c10100    ....    MOVT     r1,#0x1000
        0x100025b0:    2002        .       MOVS     r0,#2
        0x100025b2:    f2c10200    ....    MOVT     r2,#0x1000
        0x100025b6:    f7fffee3    ....    BL       lpwr_ctrl_init ; 0x10002380
        0x100025ba:    2020                MOVS     r0,#0x20
        0x100025bc:    f000f8a9    ....    BL       $Ven$TT$L$$rom_hw_crg_keep_reset ; 0x10002712
        0x100025c0:    f44f3080    O..0    MOV      r0,#0x10000
        0x100025c4:    f44f6180    O..a    MOV      r1,#0x400
        0x100025c8:    f000f8a8    ....    BL       $Ven$TT$L$$rom_hw_sys_ctrl_enable_cp_remap ; 0x1000271c
        0x100025cc:    b980        ..      CBNZ     r0,0x100025f0 ; main + 272
        0x100025ce:    f2430004    C...    MOV      r0,#0x3004
        0x100025d2:    f2c20000    ....    MOVT     r0,#0x2000
        0x100025d6:    6801        .h      LDR      r1,[r0,#0]
        0x100025d8:    2000        .       MOVS     r0,#0
        0x100025da:    f000f8a4    ....    BL       $Ven$TT$L$$rom_hw_sys_ctrl_write_com_reg ; 0x10002726
        0x100025de:    2029        )       MOVS     r0,#0x29
        0x100025e0:    f000f883    ....    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x100026ea
        0x100025e4:    202a        *       MOVS     r0,#0x2a
        0x100025e6:    f000f880    ....    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x100026ea
        0x100025ea:    2020                MOVS     r0,#0x20
        0x100025ec:    f000f8a0    ....    BL       $Ven$TT$L$$rom_hw_crg_release_reset ; 0x10002730
        0x100025f0:    f000f8a3    ....    BL       $Ven$TT$L$$lpwr_ctrl_goto_sleep ; 0x1000273a
        0x100025f4:    e7fc        ..      B        0x100025f0 ; main + 272
        0x100025f6:    0000        ..      MOVS     r0,r0
    os_error_handler
        0x100025f8:    e7fe        ..      B        os_error_handler ; 0x100025f8
        0x100025fa:    0000        ..      MOVS     r0,r0
    patch_hal_pmu_set_sram_ret
        0x100025fc:    f5b07f80    ....    CMP      r0,#0x100
        0x10002600:    bf84        ..      ITT      HI
        0x10002602:    2010        .       MOVHI    r0,#0x10
        0x10002604:    4770        pG      BXHI     lr
        0x10002606:    b510        ..      PUSH     {r4,lr}
        0x10002608:    0981        ..      LSRS     r1,r0,#6
        0x1000260a:    2201        ."      MOVS     r2,#1
        0x1000260c:    0683        ..      LSLS     r3,r0,#26
        0x1000260e:    bf18        ..      IT       NE
        0x10002610:    eb021190    ....    ADDNE    r1,r2,r0,LSR #6
        0x10002614:    f04f30ff    O..0    MOV      r0,#0xffffffff
        0x10002618:    4088        .@      LSLS     r0,r0,r1
        0x1000261a:    43c4        .C      MVNS     r4,r0
        0x1000261c:    f64f70ff    O..p    MOV      r0,#0xffff
        0x10002620:    f2c0000f    ....    MOVT     r0,#0xf
        0x10002624:    f000f88e    ....    BL       $Ven$TT$L$$rom_hw_pmu_clr_sram_block_ret ; 0x10002744
        0x10002628:    4620         F      MOV      r0,r4
        0x1000262a:    f000f890    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_sram_block_ret ; 0x1000274e
        0x1000262e:    2000        .       MOVS     r0,#0
        0x10002630:    bd10        ..      POP      {r4,pc}
        0x10002632:    0000        ..      MOVS     r0,r0
    system_error_handler
        0x10002634:    e7fe        ..      B        system_error_handler ; 0x10002634
    $t
    $Ven$TT$L$$rom_hw_efuse_read_bytes
        0x10002636:    f2487c0d    H..|    MOV      r12,#0x870d
        0x1000263a:    f2c00c00    ....    MOVT     r12,#0
        0x1000263e:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode
        0x10002640:    f6490c9d    I...    MOV      r12,#0x989d
        0x10002644:    f2c00c00    ....    MOVT     r12,#0
        0x10002648:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_low_power_mode
        0x1000264a:    f64a6c25    J.%l    MOV      r12,#0xae25
        0x1000264e:    f2c00c00    ....    MOVT     r12,#0
        0x10002652:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_wakeup_source
        0x10002654:    f64a6c8d    J..l    MOV      r12,#0xae8d
        0x10002658:    f2c00c00    ....    MOVT     r12,#0
        0x1000265c:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_wdt_disable
        0x1000265e:    f64f0c31    O.1.    MOV      r12,#0xf831
        0x10002662:    f2c00c00    ....    MOVT     r12,#0
        0x10002666:    4760        `G      BX       r12
    $Ven$TT$L$$rom_delay_ms
        0x10002668:    f2447c71    D.q|    MOV      r12,#0x4771
        0x1000266c:    f2c00c00    ....    MOVT     r12,#0
        0x10002670:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_dcdc_init
        0x10002672:    f64a0c6d    J.m.    MOV      r12,#0xa86d
        0x10002676:    f2c00c00    ....    MOVT     r12,#0
        0x1000267a:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_dcdc_act_voltage
        0x1000267c:    f64a3ce9    J..<    MOV      r12,#0xabe9
        0x10002680:    f2c00c00    ....    MOVT     r12,#0
        0x10002684:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_ldo_dig_voltage
        0x10002686:    f64a5ca9    J..\    MOV      r12,#0xada9
        0x1000268a:    f2c00c00    ....    MOVT     r12,#0
        0x1000268e:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_dcdc_ret_voltage
        0x10002690:    f64a4c35    J.5L    MOV      r12,#0xac35
        0x10002694:    f2c00c00    ....    MOVT     r12,#0
        0x10002698:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_dcdc_ret_clk_divisor
        0x1000269a:    f64a4c19    J..L    MOV      r12,#0xac19
        0x1000269e:    f2c00c00    ....    MOVT     r12,#0
        0x100026a2:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_enable_dcdc_ret_output
        0x100026a4:    f64a2cb1    J..,    MOV      r12,#0xaab1
        0x100026a8:    f2c00c00    ....    MOVT     r12,#0
        0x100026ac:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hal_pmu_sel_power_act_out_mode
        0x100026ae:    f6454c21    E.!L    MOV      r12,#0x5c21
        0x100026b2:    f2c00c00    ....    MOVT     r12,#0
        0x100026b6:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_rc_hclk_tune
        0x100026b8:    f64a6c59    J.Yl    MOV      r12,#0xae59
        0x100026bc:    f2c00c00    ....    MOVT     r12,#0
        0x100026c0:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_rc_lclk_tune
        0x100026c2:    f64a6c69    J.il    MOV      r12,#0xae69
        0x100026c6:    f2c00c00    ....    MOVT     r12,#0
        0x100026ca:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_sel_dcxo_hclk_pwr
        0x100026cc:    f64a3cb1    J..<    MOV      r12,#0xabb1
        0x100026d0:    f2c00c00    ....    MOVT     r12,#0
        0x100026d4:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hal_pmu_cfg_dcxo_hclk_param
        0x100026d6:    f6451c65    E.e.    MOV      r12,#0x5965
        0x100026da:    f2c00c00    ....    MOVT     r12,#0
        0x100026de:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hal_pmu_set_sys_clk_src
        0x100026e0:    f6455c29    E.)\    MOV      r12,#0x5d29
        0x100026e4:    f2c00c00    ....    MOVT     r12,#0
        0x100026e8:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_crg_enable_clk_gate
        0x100026ea:    f6471c7d    G.}.    MOV      r12,#0x797d
        0x100026ee:    f2c00c00    ....    MOVT     r12,#0
        0x100026f2:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hal_pmu_cfg_dcxo_lclk_param
        0x100026f4:    f6451c95    E...    MOV      r12,#0x5995
        0x100026f8:    f2c00c00    ....    MOVT     r12,#0
        0x100026fc:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hal_pmu_set_lpwr_clk_src
        0x100026fe:    f6454c79    E.yL    MOV      r12,#0x5c79
        0x10002702:    f2c00c00    ....    MOVT     r12,#0
        0x10002706:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_sys_ctrl_peri_int_ctrl
        0x10002708:    f24c3c11    L..<    MOV      r12,#0xc311
        0x1000270c:    f2c00c00    ....    MOVT     r12,#0
        0x10002710:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_crg_keep_reset
        0x10002712:    f6472c85    G..,    MOV      r12,#0x7a85
        0x10002716:    f2c00c00    ....    MOVT     r12,#0
        0x1000271a:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_sys_ctrl_enable_cp_remap
        0x1000271c:    f24c1c79    L.y.    MOV      r12,#0xc179
        0x10002720:    f2c00c00    ....    MOVT     r12,#0
        0x10002724:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_sys_ctrl_write_com_reg
        0x10002726:    f24c3cb9    L..<    MOV      r12,#0xc3b9
        0x1000272a:    f2c00c00    ....    MOVT     r12,#0
        0x1000272e:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_crg_release_reset
        0x10002730:    f6472cd1    G..,    MOV      r12,#0x7ad1
        0x10002734:    f2c00c00    ....    MOVT     r12,#0
        0x10002738:    4760        `G      BX       r12
    $Ven$TT$L$$lpwr_ctrl_goto_sleep
        0x1000273a:    f2412c01    A..,    MOV      r12,#0x1201
        0x1000273e:    f2c20c02    ....    MOVT     r12,#0x2002
        0x10002742:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_clr_sram_block_ret
        0x10002744:    f64a0c51    J.Q.    MOV      r12,#0xa851
        0x10002748:    f2c00c00    ....    MOVT     r12,#0
        0x1000274c:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_sram_block_ret
        0x1000274e:    f64a6c79    J.yl    MOV      r12,#0xae79
        0x10002752:    f2c00c00    ....    MOVT     r12,#0
        0x10002756:    4760        `G      BX       r12

** Section #5 'RAM_CP_CODE' (SHT_PROGBITS) [SHF_ALLOC]
    Size   : 48720 bytes
    Address: 0x20003000


** Section #6 'RAM_MP_VECTOR' (SHT_NOBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 300 bytes (alignment 512)
    Address: 0x20021000


** Section #7 'RAM_MP_CODE' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 2052 bytes (alignment 4)
    Address: 0x20021200

    $t.3
    lpwr_ctrl_goto_sleep
        0x20021200:    b570        p.      PUSH     {r4-r6,lr}
        0x20021202:    b084        ..      SUB      sp,sp,#0x10
        0x20021204:    f2490500    I...    MOVW     r5,#0x9000
        0x20021208:    f2c20502    ....    MOVT     r5,#0x2002
        0x2002120c:    7829        )x      LDRB     r1,[r5,#0]
        0x2002120e:    2000        .       MOVS     r0,#0
        0x20021210:    2900        .)      CMP      r1,#0
        0x20021212:    9003        ..      STR      r0,[sp,#0xc]
        0x20021214:    9002        ..      STR      r0,[sp,#8]
        0x20021216:    f000807a    ..z.    BEQ.W    0x2002130e ; lpwr_ctrl_goto_sleep + 270
        0x2002121a:    f2490008    I...    MOV      r0,#0x9008
        0x2002121e:    f3ef8410    ....    MRS      r4,PRIMASK
        0x20021222:    f2c20002    ....    MOVT     r0,#0x2002
        0x20021226:    f3ef8110    ....    MRS      r1,PRIMASK
        0x2002122a:    b672        r.      CPSID    i
        0x2002122c:    6800        .h      LDR      r0,[r0,#0]
        0x2002122e:    b108        ..      CBZ      r0,0x20021234 ; lpwr_ctrl_goto_sleep + 52
        0x20021230:    4780        .G      BLX      r0
        0x20021232:    b1c0        ..      CBZ      r0,0x20021266 ; lpwr_ctrl_goto_sleep + 102
        0x20021234:    7828        (x      LDRB     r0,[r5,#0]
        0x20021236:    1e81        ..      SUBS     r1,r0,#2
        0x20021238:    2903        .)      CMP      r1,#3
        0x2002123a:    d218        ..      BCS      0x2002126e ; lpwr_ctrl_goto_sleep + 110
        0x2002123c:    a803        ..      ADD      r0,sp,#0xc
        0x2002123e:    f000fb77    ..w.    BL       $Ven$TT$L$$rom_hw_crg_get_sys_clk_src ; 0x20021930
        0x20021242:    a901        ..      ADD      r1,sp,#4
        0x20021244:    2000        .       MOVS     r0,#0
        0x20021246:    f000fb78    ..x.    BL       $Ven$TT$L$$rom_hw_sys_ctrl_read_com_reg ; 0x2002193a
        0x2002124a:    9803        ..      LDR      r0,[sp,#0xc]
        0x2002124c:    2801        .(      CMP      r0,#1
        0x2002124e:    d13a        :.      BNE      0x200212c6 ; lpwr_ctrl_goto_sleep + 198
        0x20021250:    9801        ..      LDR      r0,[sp,#4]
        0x20021252:    b398        ..      CBZ      r0,0x200212bc ; lpwr_ctrl_goto_sleep + 188
        0x20021254:    2080        .       MOVS     r0,#0x80
        0x20021256:    f2c40000    ....    MOVT     r0,#0x4000
        0x2002125a:    f8d01100    ....    LDR      r1,[r0,#0x100]
        0x2002125e:    07c9        ..      LSLS     r1,r1,#31
        0x20021260:    d111        ..      BNE      0x20021286 ; lpwr_ctrl_goto_sleep + 134
        0x20021262:    2601        .&      MOVS     r6,#1
        0x20021264:    e023        #.      B        0x200212ae ; lpwr_ctrl_goto_sleep + 174
        0x20021266:    f3848810    ....    MSR      PRIMASK,r4
        0x2002126a:    b004        ..      ADD      sp,sp,#0x10
        0x2002126c:    bd70        p.      POP      {r4-r6,pc}
        0x2002126e:    2801        .(      CMP      r0,#1
        0x20021270:    d141        A.      BNE      0x200212f6 ; lpwr_ctrl_goto_sleep + 246
        0x20021272:    f64e5010    N..P    MOV      r0,#0xed10
        0x20021276:    f2ce0000    ....    MOVT     r0,#0xe000
        0x2002127a:    6801        .h      LDR      r1,[r0,#0]
        0x2002127c:    f0210104    !...    BIC      r1,r1,#4
        0x20021280:    6001        .`      STR      r1,[r0,#0]
        0x20021282:    bf30        0.      WFI      
        0x20021284:    e037        7.      B        0x200212f6 ; lpwr_ctrl_goto_sleep + 246
        0x20021286:    f24f1204    O...    MOV      r2,#0xf104
        0x2002128a:    f2c60204    ....    MOVT     r2,#0x6004
        0x2002128e:    6801        .h      LDR      r1,[r0,#0]
        0x20021290:    f8d00168    ..h.    LDR      r0,[r0,#0x168]
        0x20021294:    6812        .h      LDR      r2,[r2,#0]
        0x20021296:    1a08        ..      SUBS     r0,r1,r0
        0x20021298:    b292        ..      UXTH     r2,r2
        0x2002129a:    f2444100    D..A    MOVW     r1,#0x4400
        0x2002129e:    fb02f000    ....    MUL      r0,r2,r0
        0x200212a2:    f2c0011f    ....    MOVT     r1,#0x1f
        0x200212a6:    2600        .&      MOVS     r6,#0
        0x200212a8:    4288        .B      CMP      r0,r1
        0x200212aa:    bf38        8.      IT       CC
        0x200212ac:    2601        .&      MOVCC    r6,#1
        0x200212ae:    a902        ..      ADD      r1,sp,#8
        0x200212b0:    2001        .       MOVS     r0,#1
        0x200212b2:    f000fb42    ..B.    BL       $Ven$TT$L$$rom_hw_sys_ctrl_read_com_reg ; 0x2002193a
        0x200212b6:    b9f6        ..      CBNZ     r6,0x200212f6 ; lpwr_ctrl_goto_sleep + 246
        0x200212b8:    9802        ..      LDR      r0,[sp,#8]
        0x200212ba:    b1e0        ..      CBZ      r0,0x200212f6 ; lpwr_ctrl_goto_sleep + 246
        0x200212bc:    2001        .       MOVS     r0,#1
        0x200212be:    f44f61fa    O..a    MOV      r1,#0x7d0
        0x200212c2:    f000fb3f    ..?.    BL       $Ven$TT$L$$rom_hal_pmu_set_sys_clk_src ; 0x20021944
        0x200212c6:    9801        ..      LDR      r0,[sp,#4]
        0x200212c8:    b128        (.      CBZ      r0,0x200212d6 ; lpwr_ctrl_goto_sleep + 214
        0x200212ca:    a902        ..      ADD      r1,sp,#8
        0x200212cc:    2001        .       MOVS     r0,#1
        0x200212ce:    f000fb34    ..4.    BL       $Ven$TT$L$$rom_hw_sys_ctrl_read_com_reg ; 0x2002193a
        0x200212d2:    9802        ..      LDR      r0,[sp,#8]
        0x200212d4:    b178        x.      CBZ      r0,0x200212f6 ; lpwr_ctrl_goto_sleep + 246
        0x200212d6:    f64e5010    N..P    MOV      r0,#0xed10
        0x200212da:    f2ce0000    ....    MOVT     r0,#0xe000
        0x200212de:    6801        .h      LDR      r1,[r0,#0]
        0x200212e0:    f0410104    A...    ORR      r1,r1,#4
        0x200212e4:    6001        .`      STR      r1,[r0,#0]
        0x200212e6:    f04f40a0    O..@    MOV      r0,#0x50000000
        0x200212ea:    bf30        0.      WFI      
        0x200212ec:    f000f8f0    ....    BL       patch_hw_flash_release_deep_power_down ; 0x200214d0
        0x200212f0:    2001        .       MOVS     r0,#1
        0x200212f2:    f000fb2c    ..,.    BL       $Ven$TT$L$$rom_hw_cache_init ; 0x2002194e
        0x200212f6:    f2490004    I...    MOV      r0,#0x9004
        0x200212fa:    f2c20002    ....    MOVT     r0,#0x2002
        0x200212fe:    6800        .h      LDR      r0,[r0,#0]
        0x20021300:    b118        ..      CBZ      r0,0x2002130a ; lpwr_ctrl_goto_sleep + 266
        0x20021302:    7829        )x      LDRB     r1,[r5,#0]
        0x20021304:    2902        .)      CMP      r1,#2
        0x20021306:    bf08        ..      IT       EQ
        0x20021308:    4780        .G      BLXEQ    r0
        0x2002130a:    f3848810    ....    MSR      PRIMASK,r4
        0x2002130e:    b004        ..      ADD      sp,sp,#0x10
        0x20021310:    bd70        p.      POP      {r4-r6,pc}
        0x20021312:    0000        ..      MOVS     r0,r0
    patch_hw_flash_release_read_enhanced
        0x20021314:    b570        p.      PUSH     {r4-r6,lr}
        0x20021316:    f2410100    A...    MOVW     r1,#0x1000
        0x2002131a:    4604        .F      MOV      r4,r0
        0x2002131c:    f4405080    @..P    ORR      r0,r0,#0x1000
        0x20021320:    f2c50100    ....    MOVT     r1,#0x5000
        0x20021324:    4288        .B      CMP      r0,r1
        0x20021326:    bf1c        ..      ITT      NE
        0x20021328:    2001        .       MOVNE    r0,#1
        0x2002132a:    bd70        p.      POPNE    {r4-r6,pc}
        0x2002132c:    f2407500    @..u    MOVW     r5,#0x700
        0x20021330:    2602        .&      MOVS     r6,#2
        0x20021332:    f2c00501    ....    MOVT     r5,#1
        0x20021336:    bf00        ..      NOP      
        0x20021338:    0630        0.      LSLS     r0,r6,#24
        0x2002133a:    bf04        ..      ITT      EQ
        0x2002133c:    2000        .       MOVEQ    r0,#0
        0x2002133e:    bd70        p.      POPEQ    {r4-r6,pc}
        0x20021340:    4620         F      MOV      r0,r4
        0x20021342:    21ff        .!      MOVS     r1,#0xff
        0x20021344:    462a        *F      MOV      r2,r5
        0x20021346:    3e01        .>      SUBS     r6,#1
        0x20021348:    f000fb06    ....    BL       $Ven$TT$L$$rom_hw_flash_send_command ; 0x20021958
        0x2002134c:    2800        .(      CMP      r0,#0
        0x2002134e:    bf18        ..      IT       NE
        0x20021350:    bd70        p.      POPNE    {r4-r6,pc}
        0x20021352:    e7f1        ..      B        0x20021338 ; patch_hw_flash_release_read_enhanced + 36
    patch_hw_flash_read_status
        0x20021354:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20021356:    460c        .F      MOV      r4,r1
        0x20021358:    4605        .F      MOV      r5,r0
        0x2002135a:    f7ffffdb    ....    BL       patch_hw_flash_release_read_enhanced ; 0x20021314
        0x2002135e:    2800        .(      CMP      r0,#0
        0x20021360:    bf18        ..      IT       NE
        0x20021362:    bdb0        ..      POPNE    {r4,r5,r7,pc}
        0x20021364:    4628        (F      MOV      r0,r5
        0x20021366:    4621        !F      MOV      r1,r4
        0x20021368:    f000fafb    ....    BL       $Ven$TT$L$$rom_hw_flash_read_status ; 0x20021962
        0x2002136c:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x2002136e:    bf00        ..      NOP      
    patch_hw_flash_write_status
        0x20021370:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20021372:    460c        .F      MOV      r4,r1
        0x20021374:    4605        .F      MOV      r5,r0
        0x20021376:    f7ffffcd    ....    BL       patch_hw_flash_release_read_enhanced ; 0x20021314
        0x2002137a:    2800        .(      CMP      r0,#0
        0x2002137c:    bf18        ..      IT       NE
        0x2002137e:    bdb0        ..      POPNE    {r4,r5,r7,pc}
        0x20021380:    4628        (F      MOV      r0,r5
        0x20021382:    4621        !F      MOV      r1,r4
        0x20021384:    f000faf2    ....    BL       $Ven$TT$L$$rom_hw_flash_write_status ; 0x2002196c
        0x20021388:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x2002138a:    bf00        ..      NOP      
    patch_hw_flash_read_status_high
        0x2002138c:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x2002138e:    460c        .F      MOV      r4,r1
        0x20021390:    4605        .F      MOV      r5,r0
        0x20021392:    f7ffffbf    ....    BL       patch_hw_flash_release_read_enhanced ; 0x20021314
        0x20021396:    2800        .(      CMP      r0,#0
        0x20021398:    bf18        ..      IT       NE
        0x2002139a:    bdb0        ..      POPNE    {r4,r5,r7,pc}
        0x2002139c:    4628        (F      MOV      r0,r5
        0x2002139e:    4621        !F      MOV      r1,r4
        0x200213a0:    f000fae9    ....    BL       $Ven$TT$L$$rom_hw_flash_read_status_high ; 0x20021976
        0x200213a4:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x200213a6:    bf00        ..      NOP      
    patch_hw_flash_read_status_low
        0x200213a8:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x200213aa:    460c        .F      MOV      r4,r1
        0x200213ac:    4605        .F      MOV      r5,r0
        0x200213ae:    f7ffffb1    ....    BL       patch_hw_flash_release_read_enhanced ; 0x20021314
        0x200213b2:    2800        .(      CMP      r0,#0
        0x200213b4:    bf18        ..      IT       NE
        0x200213b6:    bdb0        ..      POPNE    {r4,r5,r7,pc}
        0x200213b8:    4628        (F      MOV      r0,r5
        0x200213ba:    4621        !F      MOV      r1,r4
        0x200213bc:    f000fae0    ....    BL       $Ven$TT$L$$rom_hw_flash_read_status_low ; 0x20021980
        0x200213c0:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x200213c2:    bf00        ..      NOP      
    patch_hw_flash_set_quad_enable
        0x200213c4:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x200213c6:    460c        .F      MOV      r4,r1
        0x200213c8:    4605        .F      MOV      r5,r0
        0x200213ca:    f7ffffa3    ....    BL       patch_hw_flash_release_read_enhanced ; 0x20021314
        0x200213ce:    2800        .(      CMP      r0,#0
        0x200213d0:    bf18        ..      IT       NE
        0x200213d2:    bdb0        ..      POPNE    {r4,r5,r7,pc}
        0x200213d4:    4628        (F      MOV      r0,r5
        0x200213d6:    4621        !F      MOV      r1,r4
        0x200213d8:    f000fad7    ....    BL       $Ven$TT$L$$rom_hw_flash_set_quad_enable ; 0x2002198a
        0x200213dc:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x200213de:    bf00        ..      NOP      
    patch_hw_flash_exit_abnormal_state
        0x200213e0:    b510        ..      PUSH     {r4,lr}
        0x200213e2:    4604        .F      MOV      r4,r0
        0x200213e4:    f7ffff96    ....    BL       patch_hw_flash_release_read_enhanced ; 0x20021314
        0x200213e8:    2800        .(      CMP      r0,#0
        0x200213ea:    bf04        ..      ITT      EQ
        0x200213ec:    4620         F      MOVEQ    r0,r4
        0x200213ee:    f000fad1    ....    BLEQ     $Ven$TT$L$$rom_hw_flash_exit_abnormal_state ; 0x20021994
        0x200213f2:    bd10        ..      POP      {r4,pc}
    patch_hw_flash_get_id
        0x200213f4:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x200213f6:    460c        .F      MOV      r4,r1
        0x200213f8:    4605        .F      MOV      r5,r0
        0x200213fa:    f7ffff8b    ....    BL       patch_hw_flash_release_read_enhanced ; 0x20021314
        0x200213fe:    2800        .(      CMP      r0,#0
        0x20021400:    bf18        ..      IT       NE
        0x20021402:    bdb0        ..      POPNE    {r4,r5,r7,pc}
        0x20021404:    4628        (F      MOV      r0,r5
        0x20021406:    4621        !F      MOV      r1,r4
        0x20021408:    f000fac9    ....    BL       $Ven$TT$L$$rom_hw_flash_get_id ; 0x2002199e
        0x2002140c:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x2002140e:    bf00        ..      NOP      
    patch_hw_flash_get_unique_id
        0x20021410:    e92d43f0    -..C    PUSH     {r4-r9,lr}
        0x20021414:    b081        ..      SUB      sp,sp,#4
        0x20021416:    460d        .F      MOV      r5,r1
        0x20021418:    4604        .F      MOV      r4,r0
        0x2002141a:    f1004030    ..0@    ADD      r0,r0,#0xb0000000
        0x2002141e:    f46f5180    o..Q    MVN      r1,#0x1000
        0x20021422:    4208        .B      TST      r0,r1
        0x20021424:    f04f0001    O...    MOV      r0,#1
        0x20021428:    d104        ..      BNE      0x20021434 ; patch_hw_flash_get_unique_id + 36
        0x2002142a:    b11d        ..      CBZ      r5,0x20021434 ; patch_hw_flash_get_unique_id + 36
        0x2002142c:    4620         F      MOV      r0,r4
        0x2002142e:    f7ffff71    ..q.    BL       patch_hw_flash_release_read_enhanced ; 0x20021314
        0x20021432:    b110        ..      CBZ      r0,0x2002143a ; patch_hw_flash_get_unique_id + 42
        0x20021434:    b001        ..      ADD      sp,sp,#4
        0x20021436:    e8bd83f0    ....    POP      {r4-r9,pc}
        0x2002143a:    214b        K!      MOVS     r1,#0x4b
        0x2002143c:    f240721f    @..r    MOV      r2,#0x71f
        0x20021440:    f2c03180    ...1    MOVT     r1,#0x380
        0x20021444:    4620         F      MOV      r0,r4
        0x20021446:    f2c0020f    ....    MOVT     r2,#0xf
        0x2002144a:    f000fa85    ....    BL       $Ven$TT$L$$rom_hw_flash_send_command ; 0x20021958
        0x2002144e:    2800        .(      CMP      r0,#0
        0x20021450:    d1f0        ..      BNE      0x20021434 ; patch_hw_flash_get_unique_id + 36
        0x20021452:    2700        .'      MOVS     r7,#0
        0x20021454:    f04f0810    O...    MOV      r8,#0x10
        0x20021458:    f2413987    A..9    MOV      r9,#0x1387
        0x2002145c:    2610        .&      MOVS     r6,#0x10
        0x2002145e:    bf00        ..      NOP      
        0x20021460:    68a0        .h      LDR      r0,[r4,#8]
        0x20021462:    06c0        ..      LSLS     r0,r0,#27
        0x20021464:    d514        ..      BPL      0x20021490 ; patch_hw_flash_get_unique_id + 128
        0x20021466:    b2b0        ..      UXTH     r0,r6
        0x20021468:    6821        !h      LDR      r1,[r4,#0]
        0x2002146a:    2300        .#      MOVS     r3,#0
        0x2002146c:    2200        ."      MOVS     r2,#0
        0x2002146e:    2804        .(      CMP      r0,#4
        0x20021470:    bf28        (.      IT       CS
        0x20021472:    2004        .       MOVCS    r0,#4
        0x20021474:    00db        ..      LSLS     r3,r3,#3
        0x20021476:    3201        .2      ADDS     r2,#1
        0x20021478:    fa21f703    !...    LSR      r7,r1,r3
        0x2002147c:    b293        ..      UXTH     r3,r2
        0x2002147e:    f8057b01    ...{    STRB     r7,[r5],#1
        0x20021482:    4298        .B      CMP      r0,r3
        0x20021484:    f1a60601    ....    SUB      r6,r6,#1
        0x20021488:    dcf4        ..      BGT      0x20021474 ; patch_hw_flash_get_unique_id + 100
        0x2002148a:    2700        .'      MOVS     r7,#0
        0x2002148c:    f8c48010    ....    STR      r8,[r4,#0x10]
        0x20021490:    3701        .7      ADDS     r7,#1
        0x20021492:    454f        OE      CMP      r7,r9
        0x20021494:    d80c        ..      BHI      0x200214b0 ; patch_hw_flash_get_unique_id + 160
        0x20021496:    2001        .       MOVS     r0,#1
        0x20021498:    f000fa86    ....    BL       $Ven$TT$L$$rom_delay_us ; 0x200219a8
        0x2002149c:    0430        0.      LSLS     r0,r6,#16
        0x2002149e:    d1df        ..      BNE      0x20021460 ; patch_hw_flash_get_unique_id + 80
        0x200214a0:    4620         F      MOV      r0,r4
        0x200214a2:    f2413188    A..1    MOV      r1,#0x1388
        0x200214a6:    f000fa84    ....    BL       $Ven$TT$L$$rom_hw_flash_wait_idle ; 0x200219b2
        0x200214aa:    b001        ..      ADD      sp,sp,#4
        0x200214ac:    e8bd83f0    ....    POP      {r4-r9,pc}
        0x200214b0:    2003        .       MOVS     r0,#3
        0x200214b2:    b001        ..      ADD      sp,sp,#4
        0x200214b4:    e8bd83f0    ....    POP      {r4-r9,pc}
    patch_hw_flash_enter_deep_power_down
        0x200214b8:    b510        ..      PUSH     {r4,lr}
        0x200214ba:    4604        .F      MOV      r4,r0
        0x200214bc:    f7ffff2a    ..*.    BL       patch_hw_flash_release_read_enhanced ; 0x20021314
        0x200214c0:    2800        .(      CMP      r0,#0
        0x200214c2:    bf18        ..      IT       NE
        0x200214c4:    bd10        ..      POPNE    {r4,pc}
        0x200214c6:    4620         F      MOV      r0,r4
        0x200214c8:    2103        .!      MOVS     r1,#3
        0x200214ca:    f000fa77    ..w.    BL       $Ven$TT$L$$rom_hw_flash_enter_deep_power_down ; 0x200219bc
        0x200214ce:    bd10        ..      POP      {r4,pc}
    patch_hw_flash_release_deep_power_down
        0x200214d0:    b510        ..      PUSH     {r4,lr}
        0x200214d2:    4604        .F      MOV      r4,r0
        0x200214d4:    f7ffff1e    ....    BL       patch_hw_flash_release_read_enhanced ; 0x20021314
        0x200214d8:    2800        .(      CMP      r0,#0
        0x200214da:    bf04        ..      ITT      EQ
        0x200214dc:    4620         F      MOVEQ    r0,r4
        0x200214de:    f000fa72    ..r.    BLEQ     $Ven$TT$L$$rom_hw_flash_release_deep_power_down ; 0x200219c6
        0x200214e2:    bd10        ..      POP      {r4,pc}
    patch_hw_flash_set_block_protect
        0x200214e4:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x200214e6:    b082        ..      SUB      sp,sp,#8
        0x200214e8:    4604        .F      MOV      r4,r0
        0x200214ea:    f2410200    A...    MOVW     r2,#0x1000
        0x200214ee:    460d        .F      MOV      r5,r1
        0x200214f0:    f4445180    D..Q    ORR      r1,r4,#0x1000
        0x200214f4:    f2c50200    ....    MOVT     r2,#0x5000
        0x200214f8:    2000        .       MOVS     r0,#0
        0x200214fa:    4291        .B      CMP      r1,r2
        0x200214fc:    f8ad0006    ....    STRH     r0,[sp,#6]
        0x20021500:    d107        ..      BNE      0x20021512 ; patch_hw_flash_set_block_protect + 46
        0x20021502:    f10d0106    ....    ADD      r1,sp,#6
        0x20021506:    4620         F      MOV      r0,r4
        0x20021508:    f7ffff24    ..$.    BL       patch_hw_flash_read_status ; 0x20021354
        0x2002150c:    b120         .      CBZ      r0,0x20021518 ; patch_hw_flash_set_block_protect + 52
        0x2002150e:    b002        ..      ADD      sp,sp,#8
        0x20021510:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20021512:    2001        .       MOVS     r0,#1
        0x20021514:    b002        ..      ADD      sp,sp,#8
        0x20021516:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20021518:    f8bd0006    ....    LDRH     r0,[sp,#6]
        0x2002151c:    f64b7183    K..q    MOV      r1,#0xbf83
        0x20021520:    4008        .@      ANDS     r0,r0,r1
        0x20021522:    f005011f    ....    AND      r1,r5,#0x1f
        0x20021526:    ea400081    @...    ORR      r0,r0,r1,LSL #2
        0x2002152a:    2106        .!      MOVS     r1,#6
        0x2002152c:    f8ad0006    ....    STRH     r0,[sp,#6]
        0x20021530:    4620         F      MOV      r0,r4
        0x20021532:    f44f62e0    O..b    MOV      r2,#0x700
        0x20021536:    f000fa0f    ....    BL       $Ven$TT$L$$rom_hw_flash_send_command ; 0x20021958
        0x2002153a:    2800        .(      CMP      r0,#0
        0x2002153c:    d1e7        ..      BNE      0x2002150e ; patch_hw_flash_set_block_protect + 42
        0x2002153e:    f8bd0006    ....    LDRH     r0,[sp,#6]
        0x20021542:    2101        .!      MOVS     r1,#1
        0x20021544:    f2407200    @..r    MOVW     r2,#0x700
        0x20021548:    6060        ``      STR      r0,[r4,#4]
        0x2002154a:    f2c05100    ...Q    MOVT     r1,#0x500
        0x2002154e:    4620         F      MOV      r0,r4
        0x20021550:    f2c00201    ....    MOVT     r2,#1
        0x20021554:    f000fa00    ....    BL       $Ven$TT$L$$rom_hw_flash_send_command ; 0x20021958
        0x20021558:    2800        .(      CMP      r0,#0
        0x2002155a:    d1d8        ..      BNE      0x2002150e ; patch_hw_flash_set_block_protect + 42
        0x2002155c:    4620         F      MOV      r0,r4
        0x2002155e:    f6432198    C..!    MOV      r1,#0x3a98
        0x20021562:    f000fa26    ..&.    BL       $Ven$TT$L$$rom_hw_flash_wait_idle ; 0x200219b2
        0x20021566:    b002        ..      ADD      sp,sp,#8
        0x20021568:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x2002156a:    bf00        ..      NOP      
    patch_hw_flash_erase
        0x2002156c:    b5f0        ..      PUSH     {r4-r7,lr}
        0x2002156e:    b081        ..      SUB      sp,sp,#4
        0x20021570:    461c        .F      MOV      r4,r3
        0x20021572:    4615        .F      MOV      r5,r2
        0x20021574:    460e        .F      MOV      r6,r1
        0x20021576:    4607        .F      MOV      r7,r0
        0x20021578:    f7fffecc    ....    BL       patch_hw_flash_release_read_enhanced ; 0x20021314
        0x2002157c:    b108        ..      CBZ      r0,0x20021582 ; patch_hw_flash_erase + 22
        0x2002157e:    b001        ..      ADD      sp,sp,#4
        0x20021580:    bdf0        ..      POP      {r4-r7,pc}
        0x20021582:    4638        8F      MOV      r0,r7
        0x20021584:    4631        1F      MOV      r1,r6
        0x20021586:    462a        *F      MOV      r2,r5
        0x20021588:    4623        #F      MOV      r3,r4
        0x2002158a:    f000fa21    ..!.    BL       $Ven$TT$L$$rom_hw_flash_erase ; 0x200219d0
        0x2002158e:    b001        ..      ADD      sp,sp,#4
        0x20021590:    bdf0        ..      POP      {r4-r7,pc}
        0x20021592:    bf00        ..      NOP      
    patch_hw_flash_chip_erase
        0x20021594:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20021596:    460c        .F      MOV      r4,r1
        0x20021598:    4605        .F      MOV      r5,r0
        0x2002159a:    f7fffebb    ....    BL       patch_hw_flash_release_read_enhanced ; 0x20021314
        0x2002159e:    2800        .(      CMP      r0,#0
        0x200215a0:    bf18        ..      IT       NE
        0x200215a2:    bdb0        ..      POPNE    {r4,r5,r7,pc}
        0x200215a4:    4628        (F      MOV      r0,r5
        0x200215a6:    4621        !F      MOV      r1,r4
        0x200215a8:    f000fa17    ....    BL       $Ven$TT$L$$rom_hw_flash_chip_erase ; 0x200219da
        0x200215ac:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x200215ae:    bf00        ..      NOP      
    patch_hw_flash_write_bytes
        0x200215b0:    b5f0        ..      PUSH     {r4-r7,lr}
        0x200215b2:    b083        ..      SUB      sp,sp,#0xc
        0x200215b4:    461c        .F      MOV      r4,r3
        0x200215b6:    4615        .F      MOV      r5,r2
        0x200215b8:    460e        .F      MOV      r6,r1
        0x200215ba:    4607        .F      MOV      r7,r0
        0x200215bc:    f7fffeaa    ....    BL       patch_hw_flash_release_read_enhanced ; 0x20021314
        0x200215c0:    b108        ..      CBZ      r0,0x200215c6 ; patch_hw_flash_write_bytes + 22
        0x200215c2:    b003        ..      ADD      sp,sp,#0xc
        0x200215c4:    bdf0        ..      POP      {r4-r7,pc}
        0x200215c6:    e9dd0c08    ....    LDRD     r0,r12,[sp,#0x20]
        0x200215ca:    4631        1F      MOV      r1,r6
        0x200215cc:    9000        ..      STR      r0,[sp,#0]
        0x200215ce:    4638        8F      MOV      r0,r7
        0x200215d0:    462a        *F      MOV      r2,r5
        0x200215d2:    4623        #F      MOV      r3,r4
        0x200215d4:    f8cdc004    ....    STR      r12,[sp,#4]
        0x200215d8:    f000fa04    ....    BL       $Ven$TT$L$$rom_hw_flash_write_bytes ; 0x200219e4
        0x200215dc:    b003        ..      ADD      sp,sp,#0xc
        0x200215de:    bdf0        ..      POP      {r4-r7,pc}
    patch_hw_flash_read_bytes
        0x200215e0:    b5f0        ..      PUSH     {r4-r7,lr}
        0x200215e2:    b081        ..      SUB      sp,sp,#4
        0x200215e4:    461c        .F      MOV      r4,r3
        0x200215e6:    4615        .F      MOV      r5,r2
        0x200215e8:    460e        .F      MOV      r6,r1
        0x200215ea:    4607        .F      MOV      r7,r0
        0x200215ec:    f7fffe92    ....    BL       patch_hw_flash_release_read_enhanced ; 0x20021314
        0x200215f0:    b108        ..      CBZ      r0,0x200215f6 ; patch_hw_flash_read_bytes + 22
        0x200215f2:    b001        ..      ADD      sp,sp,#4
        0x200215f4:    bdf0        ..      POP      {r4-r7,pc}
        0x200215f6:    f8ddc018    ....    LDR      r12,[sp,#0x18]
        0x200215fa:    4638        8F      MOV      r0,r7
        0x200215fc:    4631        1F      MOV      r1,r6
        0x200215fe:    462a        *F      MOV      r2,r5
        0x20021600:    4623        #F      MOV      r3,r4
        0x20021602:    f8cdc000    ....    STR      r12,[sp,#0]
        0x20021606:    f000f9f2    ....    BL       $Ven$TT$L$$rom_hw_flash_read_bytes ; 0x200219ee
        0x2002160a:    b001        ..      ADD      sp,sp,#4
        0x2002160c:    bdf0        ..      POP      {r4-r7,pc}
        0x2002160e:    bf00        ..      NOP      
    patch_hw_flash_erase_suspendable
        0x20021610:    e92d47f0    -..G    PUSH     {r4-r10,lr}
        0x20021614:    460c        .F      MOV      r4,r1
        0x20021616:    f2410100    A...    MOVW     r1,#0x1000
        0x2002161a:    4605        .F      MOV      r5,r0
        0x2002161c:    f4405080    @..P    ORR      r0,r0,#0x1000
        0x20021620:    f2c50100    ....    MOVT     r1,#0x5000
        0x20021624:    4288        .B      CMP      r0,r1
        0x20021626:    f04f0601    O...    MOV      r6,#1
        0x2002162a:    d13d        =.      BNE      0x200216a8 ; patch_hw_flash_erase_suspendable + 152
        0x2002162c:    f3ef8a10    ....    MRS      r10,PRIMASK
        0x20021630:    f3ef8010    ....    MRS      r0,PRIMASK
        0x20021634:    b672        r.      CPSID    i
        0x20021636:    f64000a0    @...    MOVW     r0,#0x8a0
        0x2002163a:    f6c040c8    ...@    MOVT     r0,#0xcc8
        0x2002163e:    6668        hf      STR      r0,[r5,#0x64]
        0x20021640:    2020                MOVS     r0,#0x20
        0x20021642:    f2c000c8    ....    MOVT     r0,#0xc8
        0x20021646:    65e8        .e      STR      r0,[r5,#0x5c]
        0x20021648:    2005        .       MOVS     r0,#5
        0x2002164a:    6628        (f      STR      r0,[r5,#0x60]
        0x2002164c:    4628        (F      MOV      r0,r5
        0x2002164e:    2103        .!      MOVS     r1,#3
        0x20021650:    4698        .F      MOV      r8,r3
        0x20021652:    4691        .F      MOV      r9,r2
        0x20021654:    f000f9d0    ....    BL       $Ven$TT$L$$rom_hw_flash_release_read_enhanced ; 0x200219f8
        0x20021658:    4607        .F      MOV      r7,r0
        0x2002165a:    4628        (F      MOV      r0,r5
        0x2002165c:    2106        .!      MOVS     r1,#6
        0x2002165e:    f44f62e0    O..b    MOV      r2,#0x700
        0x20021662:    f000f979    ..y.    BL       $Ven$TT$L$$rom_hw_flash_send_command ; 0x20021958
        0x20021666:    6da9        .m      LDR      r1,[r5,#0x58]
        0x20021668:    2c03        .,      CMP      r4,#3
        0x2002166a:    f0410101    A...    ORR      r1,r1,#1
        0x2002166e:    65a9        .e      STR      r1,[r5,#0x58]
        0x20021670:    66ae        .f      STR      r6,[r5,#0x68]
        0x20021672:    bf84        ..      ITT      HI
        0x20021674:    2010        .       MOVHI    r0,#0x10
        0x20021676:    e8bd87f0    ....    POPHI    {r4-r10,pc}
        0x2002167a:    ea400607    @...    ORR      r6,r0,r7
        0x2002167e:    b260        `.      SXTB     r0,r4
        0x20021680:    a113        ..      ADR      r1,{pc}+0x50 ; 0x200216d0
        0x20021682:    f8512020    Q.      LDR      r2,[r1,r0,LSL #2]
        0x20021686:    a116        ..      ADR      r1,{pc}+0x5a ; 0x200216e0
        0x20021688:    f8511020    Q. .    LDR      r1,[r1,r0,LSL #2]
        0x2002168c:    fa09f002    ....    LSL      r0,r9,r2
        0x20021690:    f2407217    @..r    MOV      r2,#0x717
        0x20021694:    64e8        .d      STR      r0,[r5,#0x4c]
        0x20021696:    4628        (F      MOV      r0,r5
        0x20021698:    f2c00202    ....    MOVT     r2,#2
        0x2002169c:    f000f95c    ..\.    BL       $Ven$TT$L$$rom_hw_flash_send_command ; 0x20021958
        0x200216a0:    f38a8810    ....    MSR      PRIMASK,r10
        0x200216a4:    4306        .C      ORRS     r6,r6,r0
        0x200216a6:    d003        ..      BEQ      0x200216b0 ; patch_hw_flash_erase_suspendable + 160
        0x200216a8:    4630        0F      MOV      r0,r6
        0x200216aa:    e8bd87f0    ....    POP      {r4-r10,pc}
        0x200216ae:    bf00        ..      NOP      
        0x200216b0:    6f28        (o      LDR      r0,[r5,#0x70]
        0x200216b2:    07c0        ..      LSLS     r0,r0,#31
        0x200216b4:    d1fc        ..      BNE      0x200216b0 ; patch_hw_flash_erase_suspendable + 160
        0x200216b6:    6da8        .m      LDR      r0,[r5,#0x58]
        0x200216b8:    4641        AF      MOV      r1,r8
        0x200216ba:    f0200001     ...    BIC      r0,r0,#1
        0x200216be:    65a8        .e      STR      r0,[r5,#0x58]
        0x200216c0:    4628        (F      MOV      r0,r5
        0x200216c2:    f000f976    ..v.    BL       $Ven$TT$L$$rom_hw_flash_wait_idle ; 0x200219b2
        0x200216c6:    4606        .F      MOV      r6,r0
        0x200216c8:    4630        0F      MOV      r0,r6
        0x200216ca:    e8bd87f0    ....    POP      {r4-r10,pc}
        0x200216ce:    bf00        ..      NOP      
    $d.1
        0x200216d0:    00000008    ....    DCD    8
        0x200216d4:    0000000c    ....    DCD    12
        0x200216d8:    0000000f    ....    DCD    15
        0x200216dc:    00000010    ....    DCD    16
        0x200216e0:    03000081    ....    DCD    50331777
        0x200216e4:    03000020     ...    DCD    50331680
        0x200216e8:    03000052    R...    DCD    50331730
        0x200216ec:    030000d8    ....    DCD    50331864
    $t.2
    patch_hw_flash_write_bytes_in_page_suspendable
        0x200216f0:    e92d4ff0    -..O    PUSH     {r4-r11,lr}
        0x200216f4:    b081        ..      SUB      sp,sp,#4
        0x200216f6:    4616        .F      MOV      r6,r2
        0x200216f8:    f2410200    A...    MOVW     r2,#0x1000
        0x200216fc:    4682        .F      MOV      r10,r0
        0x200216fe:    f4405080    @..P    ORR      r0,r0,#0x1000
        0x20021702:    f2c50200    ....    MOVT     r2,#0x5000
        0x20021706:    4290        .B      CMP      r0,r2
        0x20021708:    d142        B.      BNE      0x20021790 ; patch_hw_flash_write_bytes_in_page_suspendable + 160
        0x2002170a:    2e00        ..      CMP      r6,#0
        0x2002170c:    f04f0b01    O...    MOV      r11,#1
        0x20021710:    bf1c        ..      ITT      NE
        0x20021712:    461d        .F      MOVNE    r5,r3
        0x20021714:    2b00        .+      CMPNE    r3,#0
        0x20021716:    d03d        =.      BEQ      0x20021794 ; patch_hw_flash_write_bytes_in_page_suspendable + 164
        0x20021718:    fa55f081    U...    UXTAB    r0,r5,r1
        0x2002171c:    4688        .F      MOV      r8,r1
        0x2002171e:    f5b07f80    ....    CMP      r0,#0x100
        0x20021722:    f04f0b01    O...    MOV      r11,#1
        0x20021726:    d835        5.      BHI      0x20021794 ; patch_hw_flash_write_bytes_in_page_suspendable + 164
        0x20021728:    f3ef8010    ....    MRS      r0,PRIMASK
        0x2002172c:    9000        ..      STR      r0,[sp,#0]
        0x2002172e:    f3ef8010    ....    MRS      r0,PRIMASK
        0x20021732:    b672        r.      CPSID    i
        0x20021734:    9f0a        ..      LDR      r7,[sp,#0x28]
        0x20021736:    f64000a0    @...    MOVW     r0,#0x8a0
        0x2002173a:    f6c040c8    ...@    MOVT     r0,#0xcc8
        0x2002173e:    f8ca0064    ..d.    STR      r0,[r10,#0x64]
        0x20021742:    f2401040    @.@.    MOVW     r0,#0x140
        0x20021746:    f2c000c8    ....    MOVT     r0,#0xc8
        0x2002174a:    f8ca005c    ..\.    STR      r0,[r10,#0x5c]
        0x2002174e:    2005        .       MOVS     r0,#5
        0x20021750:    f8ca0060    ..`.    STR      r0,[r10,#0x60]
        0x20021754:    4650        PF      MOV      r0,r10
        0x20021756:    2106        .!      MOVS     r1,#6
        0x20021758:    f44f62e0    O..b    MOV      r2,#0x700
        0x2002175c:    f000f8fc    ....    BL       $Ven$TT$L$$rom_hw_flash_send_command ; 0x20021958
        0x20021760:    f8da1058    ..X.    LDR      r1,[r10,#0x58]
        0x20021764:    4681        .F      MOV      r9,r0
        0x20021766:    f0410001    A...    ORR      r0,r1,#1
        0x2002176a:    2f03        ./      CMP      r7,#3
        0x2002176c:    f8ca0058    ..X.    STR      r0,[r10,#0x58]
        0x20021770:    f8cab068    ..h.    STR      r11,[r10,#0x68]
        0x20021774:    d012        ..      BEQ      0x2002179c ; patch_hw_flash_write_bytes_in_page_suspendable + 172
        0x20021776:    2f02        ./      CMP      r7,#2
        0x20021778:    d01a        ..      BEQ      0x200217b0 ; patch_hw_flash_write_bytes_in_page_suspendable + 192
        0x2002177a:    bb1f        ..      CBNZ     r7,0x200217c4 ; patch_hw_flash_write_bytes_in_page_suspendable + 212
        0x2002177c:    f2407017    @..p    MOV      r0,#0x717
        0x20021780:    f6cf70ff    ...p    MOVT     r0,#0xffff
        0x20021784:    2102        .!      MOVS     r1,#2
        0x20021786:    eb004205    ...B    ADD      r2,r0,r5,LSL #16
        0x2002178a:    f2c03140    ..@1    MOVT     r1,#0x340
        0x2002178e:    e01b        ..      B        0x200217c8 ; patch_hw_flash_write_bytes_in_page_suspendable + 216
        0x20021790:    f04f0b01    O...    MOV      r11,#1
        0x20021794:    4658        XF      MOV      r0,r11
        0x20021796:    b001        ..      ADD      sp,sp,#4
        0x20021798:    e8bd8ff0    ....    POP      {r4-r11,pc}
        0x2002179c:    f2407017    @..p    MOV      r0,#0x717
        0x200217a0:    f6cf70ff    ...p    MOVT     r0,#0xffff
        0x200217a4:    eb004205    ...B    ADD      r2,r0,r5,LSL #16
        0x200217a8:    2132        2!      MOVS     r1,#0x32
        0x200217aa:    f2c03143    ..C1    MOVT     r1,#0x343
        0x200217ae:    e00b        ..      B        0x200217c8 ; patch_hw_flash_write_bytes_in_page_suspendable + 216
        0x200217b0:    f2407017    @..p    MOV      r0,#0x717
        0x200217b4:    f6cf70ff    ...p    MOVT     r0,#0xffff
        0x200217b8:    21a2        .!      MOVS     r1,#0xa2
        0x200217ba:    eb004205    ...B    ADD      r2,r0,r5,LSL #16
        0x200217be:    f2c03142    ..B1    MOVT     r1,#0x342
        0x200217c2:    e001        ..      B        0x200217c8 ; patch_hw_flash_write_bytes_in_page_suspendable + 216
        0x200217c4:    2100        .!      MOVS     r1,#0
        0x200217c6:    2200        ."      MOVS     r2,#0
        0x200217c8:    2d04        .-      CMP      r5,#4
        0x200217ca:    46ac        .F      MOV      r12,r5
        0x200217cc:    bf28        (.      IT       CS
        0x200217ce:    f04f0c04    O...    MOVCS    r12,#4
        0x200217d2:    f1bc0f01    ....    CMP      r12,#1
        0x200217d6:    db0f        ..      BLT      0x200217f8 ; patch_hw_flash_write_bytes_in_page_suspendable + 264
        0x200217d8:    2400        .$      MOVS     r4,#0
        0x200217da:    2000        .       MOVS     r0,#0
        0x200217dc:    2700        .'      MOVS     r7,#0
        0x200217de:    bf00        ..      NOP      
        0x200217e0:    f8163b01    ...;    LDRB     r3,[r6],#1
        0x200217e4:    00e4        ..      LSLS     r4,r4,#3
        0x200217e6:    3701        .7      ADDS     r7,#1
        0x200217e8:    40a3        .@      LSLS     r3,r3,r4
        0x200217ea:    b2bc        ..      UXTH     r4,r7
        0x200217ec:    4318        .C      ORRS     r0,r0,r3
        0x200217ee:    45a4        .E      CMP      r12,r4
        0x200217f0:    f1a50501    ....    SUB      r5,r5,#1
        0x200217f4:    dcf4        ..      BGT      0x200217e0 ; patch_hw_flash_write_bytes_in_page_suspendable + 240
        0x200217f6:    e000        ..      B        0x200217fa ; patch_hw_flash_write_bytes_in_page_suspendable + 266
        0x200217f8:    2000        .       MOVS     r0,#0
        0x200217fa:    f8ca804c    ..L.    STR      r8,[r10,#0x4c]
        0x200217fe:    f8ca0004    ....    STR      r0,[r10,#4]
        0x20021802:    4650        PF      MOV      r0,r10
        0x20021804:    f000f8a8    ....    BL       $Ven$TT$L$$rom_hw_flash_send_command ; 0x20021958
        0x20021808:    0429        ).      LSLS     r1,r5,#16
        0x2002180a:    ea400b09    @...    ORR      r11,r0,r9
        0x2002180e:    d02b        +.      BEQ      0x20021868 ; patch_hw_flash_write_bytes_in_page_suspendable + 376
        0x20021810:    2700        .'      MOVS     r7,#0
        0x20021812:    f04f0802    O...    MOV      r8,#2
        0x20021816:    f2413987    A..9    MOV      r9,#0x1387
        0x2002181a:    bf00        ..      NOP      
        0x2002181c:    f8ca8010    ....    STR      r8,[r10,#0x10]
        0x20021820:    f8da0008    ....    LDR      r0,[r10,#8]
        0x20021824:    0780        ..      LSLS     r0,r0,#30
        0x20021826:    d414        ..      BMI      0x20021852 ; patch_hw_flash_write_bytes_in_page_suspendable + 354
        0x20021828:    b2a8        ..      UXTH     r0,r5
        0x2002182a:    2300        .#      MOVS     r3,#0
        0x2002182c:    2100        .!      MOVS     r1,#0
        0x2002182e:    2200        ."      MOVS     r2,#0
        0x20021830:    2804        .(      CMP      r0,#4
        0x20021832:    bf28        (.      IT       CS
        0x20021834:    2004        .       MOVCS    r0,#4
        0x20021836:    bf00        ..      NOP      
        0x20021838:    f8164b01    ...K    LDRB     r4,[r6],#1
        0x2002183c:    00db        ..      LSLS     r3,r3,#3
        0x2002183e:    3201        .2      ADDS     r2,#1
        0x20021840:    409c        .@      LSLS     r4,r4,r3
        0x20021842:    b293        ..      UXTH     r3,r2
        0x20021844:    4321        !C      ORRS     r1,r1,r4
        0x20021846:    4298        .B      CMP      r0,r3
        0x20021848:    f1a50501    ....    SUB      r5,r5,#1
        0x2002184c:    dcf4        ..      BGT      0x20021838 ; patch_hw_flash_write_bytes_in_page_suspendable + 328
        0x2002184e:    f8ca1004    ....    STR      r1,[r10,#4]
        0x20021852:    454f        OE      CMP      r7,r9
        0x20021854:    d006        ..      BEQ      0x20021864 ; patch_hw_flash_write_bytes_in_page_suspendable + 372
        0x20021856:    2001        .       MOVS     r0,#1
        0x20021858:    3701        .7      ADDS     r7,#1
        0x2002185a:    f000f8a5    ....    BL       $Ven$TT$L$$rom_delay_us ; 0x200219a8
        0x2002185e:    0428        (.      LSLS     r0,r5,#16
        0x20021860:    d1dc        ..      BNE      0x2002181c ; patch_hw_flash_write_bytes_in_page_suspendable + 300
        0x20021862:    e001        ..      B        0x20021868 ; patch_hw_flash_write_bytes_in_page_suspendable + 376
        0x20021864:    f04b0b03    K...    ORR      r11,r11,#3
        0x20021868:    9800        ..      LDR      r0,[sp,#0]
        0x2002186a:    f3808810    ....    MSR      PRIMASK,r0
        0x2002186e:    f1bb0f00    ....    CMP      r11,#0
        0x20021872:    d18f        ..      BNE      0x20021794 ; patch_hw_flash_write_bytes_in_page_suspendable + 164
        0x20021874:    9d0b        ..      LDR      r5,[sp,#0x2c]
        0x20021876:    bf00        ..      NOP      
        0x20021878:    f8da0070    ..p.    LDR      r0,[r10,#0x70]
        0x2002187c:    07c0        ..      LSLS     r0,r0,#31
        0x2002187e:    d1fb        ..      BNE      0x20021878 ; patch_hw_flash_write_bytes_in_page_suspendable + 392
        0x20021880:    f8da0058    ..X.    LDR      r0,[r10,#0x58]
        0x20021884:    f0200001     ...    BIC      r0,r0,#1
        0x20021888:    f8ca0058    ..X.    STR      r0,[r10,#0x58]
        0x2002188c:    f8da00a4    ....    LDR      r0,[r10,#0xa4]
        0x20021890:    07c0        ..      LSLS     r0,r0,#31
        0x20021892:    d00a        ..      BEQ      0x200218aa ; patch_hw_flash_write_bytes_in_page_suspendable + 442
        0x20021894:    f2413488    A..4    MOV      r4,#0x1388
        0x20021898:    3c01        .<      SUBS     r4,#1
        0x2002189a:    d00c        ..      BEQ      0x200218b6 ; patch_hw_flash_write_bytes_in_page_suspendable + 454
        0x2002189c:    2001        .       MOVS     r0,#1
        0x2002189e:    f000f883    ....    BL       $Ven$TT$L$$rom_delay_us ; 0x200219a8
        0x200218a2:    f8da00a4    ....    LDR      r0,[r10,#0xa4]
        0x200218a6:    07c0        ..      LSLS     r0,r0,#31
        0x200218a8:    d1f6        ..      BNE      0x20021898 ; patch_hw_flash_write_bytes_in_page_suspendable + 424
        0x200218aa:    4650        PF      MOV      r0,r10
        0x200218ac:    4629        )F      MOV      r1,r5
        0x200218ae:    f000f880    ....    BL       $Ven$TT$L$$rom_hw_flash_wait_idle ; 0x200219b2
        0x200218b2:    4683        .F      MOV      r11,r0
        0x200218b4:    e76e        n.      B        0x20021794 ; patch_hw_flash_write_bytes_in_page_suspendable + 164
        0x200218b6:    f04f0b03    O...    MOV      r11,#3
        0x200218ba:    e76b        k.      B        0x20021794 ; patch_hw_flash_write_bytes_in_page_suspendable + 164
    patch_hw_flash_write_bytes_suspendable
        0x200218bc:    e92d4ff0    -..O    PUSH     {r4-r11,lr}
        0x200218c0:    b083        ..      SUB      sp,sp,#0xc
        0x200218c2:    f04f0a01    O...    MOV      r10,#1
        0x200218c6:    b152        R.      CBZ      r2,0x200218de ; patch_hw_flash_write_bytes_suspendable + 34
        0x200218c8:    b29c        ..      UXTH     r4,r3
        0x200218ca:    b144        D.      CBZ      r4,0x200218de ; patch_hw_flash_write_bytes_suspendable + 34
        0x200218cc:    9d0c        ..      LDR      r5,[sp,#0x30]
        0x200218ce:    460e        .F      MOV      r6,r1
        0x200218d0:    4629        )F      MOV      r1,r5
        0x200218d2:    4690        .F      MOV      r8,r2
        0x200218d4:    4607        .F      MOV      r7,r0
        0x200218d6:    f000f88f    ....    BL       $Ven$TT$L$$rom_hw_flash_release_read_enhanced ; 0x200219f8
        0x200218da:    4682        .F      MOV      r10,r0
        0x200218dc:    b118        ..      CBZ      r0,0x200218e6 ; patch_hw_flash_write_bytes_suspendable + 42
        0x200218de:    4650        PF      MOV      r0,r10
        0x200218e0:    b003        ..      ADD      sp,sp,#0xc
        0x200218e2:    e8bd8ff0    ....    POP      {r4-r11,pc}
        0x200218e6:    b304        ..      CBZ      r4,0x2002192a ; patch_hw_flash_write_bytes_suspendable + 110
        0x200218e8:    9702        ..      STR      r7,[sp,#8]
        0x200218ea:    bf00        ..      NOP      
        0x200218ec:    b2f0        ..      UXTB     r0,r6
        0x200218ee:    f5c07b80    ...{    RSB      r11,r0,#0x100
        0x200218f2:    455c        \E      CMP      r4,r11
        0x200218f4:    bf38        8.      IT       CC
        0x200218f6:    46a3        .F      MOVCC    r11,r4
        0x200218f8:    fa1ff78b    ....    UXTH     r7,r11
        0x200218fc:    46a9        .F      MOV      r9,r5
        0x200218fe:    9500        ..      STR      r5,[sp,#0]
        0x20021900:    9802        ..      LDR      r0,[sp,#8]
        0x20021902:    9d0d        ..      LDR      r5,[sp,#0x34]
        0x20021904:    4631        1F      MOV      r1,r6
        0x20021906:    4642        BF      MOV      r2,r8
        0x20021908:    463b        ;F      MOV      r3,r7
        0x2002190a:    9501        ..      STR      r5,[sp,#4]
        0x2002190c:    f7fffef0    ....    BL       patch_hw_flash_write_bytes_in_page_suspendable ; 0x200216f0
        0x20021910:    f1ba0f00    ....    CMP      r10,#0
        0x20021914:    d1e3        ..      BNE      0x200218de ; patch_hw_flash_write_bytes_suspendable + 34
        0x20021916:    fa16f68b    ....    UXTAH    r6,r6,r11
        0x2002191a:    fa18f88b    ....    UXTAH    r8,r8,r11
        0x2002191e:    1be4        ..      SUBS     r4,r4,r7
        0x20021920:    464d        MF      MOV      r5,r9
        0x20021922:    d1e3        ..      BNE      0x200218ec ; patch_hw_flash_write_bytes_suspendable + 48
        0x20021924:    f04f0a00    O...    MOV      r10,#0
        0x20021928:    e7d9        ..      B        0x200218de ; patch_hw_flash_write_bytes_suspendable + 34
        0x2002192a:    f04f0a00    O...    MOV      r10,#0
        0x2002192e:    e7d6        ..      B        0x200218de ; patch_hw_flash_write_bytes_suspendable + 34
    $t
    $Ven$TT$L$$rom_hw_crg_get_sys_clk_src
        0x20021930:    f6472c69    G.i,    MOV      r12,#0x7a69
        0x20021934:    f2c00c00    ....    MOVT     r12,#0
        0x20021938:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_sys_ctrl_read_com_reg
        0x2002193a:    f24c3c3d    L.=<    MOV      r12,#0xc33d
        0x2002193e:    f2c00c00    ....    MOVT     r12,#0
        0x20021942:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hal_pmu_set_sys_clk_src
        0x20021944:    f6455c29    E.)\    MOV      r12,#0x5d29
        0x20021948:    f2c00c00    ....    MOVT     r12,#0
        0x2002194c:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_cache_init
        0x2002194e:    f2473c1d    G..<    MOV      r12,#0x731d
        0x20021952:    f2c00c00    ....    MOVT     r12,#0
        0x20021956:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_send_command
        0x20021958:    f6486c45    H.El    MOV      r12,#0x8e45
        0x2002195c:    f2c00c00    ....    MOVT     r12,#0
        0x20021960:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_read_status
        0x20021962:    f6483c81    H..<    MOV      r12,#0x8b81
        0x20021966:    f2c00c00    ....    MOVT     r12,#0
        0x2002196a:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_write_status
        0x2002196c:    f2492c99    I..,    MOV      r12,#0x9299
        0x20021970:    f2c00c00    ....    MOVT     r12,#0
        0x20021974:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_read_status_high
        0x20021976:    f6484c75    H.uL    MOV      r12,#0x8c75
        0x2002197a:    f2c00c00    ....    MOVT     r12,#0
        0x2002197e:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_read_status_low
        0x20021980:    f6485c0d    H..\    MOV      r12,#0x8d0d
        0x20021984:    f2c00c00    ....    MOVT     r12,#0
        0x20021988:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_set_quad_enable
        0x2002198a:    f6487cf5    H..|    MOV      r12,#0x8ff5
        0x2002198e:    f2c00c00    ....    MOVT     r12,#0
        0x20021992:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_exit_abnormal_state
        0x20021994:    f6481c3d    H.=.    MOV      r12,#0x893d
        0x20021998:    f2c00c00    ....    MOVT     r12,#0
        0x2002199c:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_get_id
        0x2002199e:    f6481c75    H.u.    MOV      r12,#0x8975
        0x200219a2:    f2c00c00    ....    MOVT     r12,#0
        0x200219a6:    4760        `G      BX       r12
    $Ven$TT$L$$rom_delay_us
        0x200219a8:    f2447c81    D..|    MOV      r12,#0x4781
        0x200219ac:    f2c00c00    ....    MOVT     r12,#0
        0x200219b0:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_wait_idle
        0x200219b2:    f2490c99    I...    MOV      r12,#0x9099
        0x200219b6:    f2c00c00    ....    MOVT     r12,#0
        0x200219ba:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_enter_deep_power_down
        0x200219bc:    f6480c79    H.y.    MOV      r12,#0x8879
        0x200219c0:    f2c00c00    ....    MOVT     r12,#0
        0x200219c4:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_release_deep_power_down
        0x200219c6:    f6485ca5    H..\    MOV      r12,#0x8da5
        0x200219ca:    f2c00c00    ....    MOVT     r12,#0
        0x200219ce:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_erase
        0x200219d0:    f6480ca1    H...    MOV      r12,#0x88a1
        0x200219d4:    f2c00c00    ....    MOVT     r12,#0
        0x200219d8:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_chip_erase
        0x200219da:    f6480c01    H...    MOV      r12,#0x8801
        0x200219de:    f2c00c00    ....    MOVT     r12,#0
        0x200219e2:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_write_bytes
        0x200219e4:    f2490cd9    I...    MOV      r12,#0x90d9
        0x200219e8:    f2c00c00    ....    MOVT     r12,#0
        0x200219ec:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_read_bytes
        0x200219ee:    f6482c9d    H..,    MOV      r12,#0x8a9d
        0x200219f2:    f2c00c00    ....    MOVT     r12,#0
        0x200219f6:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_release_read_enhanced
        0x200219f8:    f6485cc1    H..\    MOV      r12,#0x8dc1
        0x200219fc:    f2c00c00    ....    MOVT     r12,#0
        0x20021a00:    4760        `G      BX       r12
        0x20021a02:    0000        ..      MOVS     r0,r0

** Section #8 'RAM_MP_DATA' (SHT_NOBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 12 bytes (alignment 4)
    Address: 0x20029000


** Section #9 'RAM_MP_STACK_HEAP' (SHT_NOBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 4096 bytes (alignment 8)
    Address: 0x20030000


** Section #10 '.debug_abbrev' (SHT_PROGBITS)
    Size   : 2179 bytes


** Section #11 '.debug_frame' (SHT_PROGBITS)
    Size   : 2416 bytes


** Section #12 '.debug_info' (SHT_PROGBITS)
    Size   : 12963 bytes


** Section #13 '.debug_line' (SHT_PROGBITS)
    Size   : 5320 bytes


** Section #14 '.debug_loc' (SHT_PROGBITS)
    Size   : 4289 bytes


** Section #15 '.debug_ranges' (SHT_PROGBITS)
    Size   : 200 bytes


** Section #16 '.debug_str' (SHT_PROGBITS)
    Size   : 14084 bytes


** Section #17 '.symtab' (SHT_SYMTAB)
    Size   : 18176 bytes (alignment 4)
    String table #18 '.strtab'
    Last local symbol no. 98


** Section #18 '.strtab' (SHT_STRTAB)
    Size   : 27552 bytes


** Section #19 '.note' (SHT_NOTE)
    Size   : 52 bytes (alignment 4)


** Section #20 '.comment' (SHT_PROGBITS)
    Size   : 1472 bytes


** Section #21 '.shstrtab' (SHT_STRTAB)
    Size   : 252 bytes


