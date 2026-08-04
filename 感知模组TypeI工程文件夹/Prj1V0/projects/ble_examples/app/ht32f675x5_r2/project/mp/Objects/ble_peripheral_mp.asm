
========================================================================

** ELF Header Information

    File Name: .\Objects\ble_peripheral_mp.axf

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
    Component: Arm Compiler for Embedded 6.18 Tool: armasm [5e4cbe00]
    Component: Arm Compiler for Embedded 6.18 Tool: armlink [5e4cc100]

    Header size: 52 bytes (0x34)
    Program header entry size: 32 bytes (0x20)
    Section header entry size: 40 bytes (0x28)

    Program header entries: 2
    Section header entries: 21

    Program header offset: 116504 (0x0001c718)
    Section header offset: 116568 (0x0001c758)

    Section header string table index: 20

========================================================================

** Program header #0 (PT_LOAD) [PF_R]
    Size : 4096 bytes
    Virtual address: 0x10000000 (Alignment 4)


====================================

** Program header #1 (PT_LOAD) [PF_X + PF_W + PF_R + PF_ARM_ENTRY]
    Size : 27976 bytes (23452 bytes in file)
    Virtual address: 0x10002000 (Alignment 512)


========================================================================

** Section #1 'BOOT2_CODE' (SHT_PROGBITS) [SHF_ALLOC]
    Size   : 4096 bytes
    Address: 0x10000000


** Section #2 'APP_CODE' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 740 bytes (alignment 4)
    Address: 0x10002000

    $d.realdata
    RESET
    __Vectors
        0x10002000:    20027000    .p.     DCD    537030656
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
        0x10002140:    f8dfd00c    ....    LDR      sp,__lit__00000000 ; [0x10002150] = 0x20027000
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
        0x10002150:    20027000    .p.     DCD    537030656
    $t
    .text
    $v0
    Reset_Handler
        0x10002154:    482e        .H      LDR      r0,[pc,#184] ; [0x10002210] = 0x20027000
        0x10002156:    f3808808    ....    MSR      MSP,r0
        0x1000215a:    482e        .H      LDR      r0,[pc,#184] ; [0x10002214] = 0x20026000
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
        0x10002210:    20027000    .p.     DCD    537030656
        0x10002214:    20026000    .`.     DCD    537026560
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
        0x10002250:    f2470100    G...    MOVW     r1,#0x7000
        0x10002254:    2000        .       MOVS     r0,#0
        0x10002256:    f2c10200    ....    MOVT     r2,#0x1000
        0x1000225a:    f2c20101    ....    MOVT     r1,#0x2001
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
        0x100022b4:    10002718    .'..    DCD    268445464
        0x100022b8:    20003000    .0.     DCD    536883200
        0x100022bc:    00004c78    xL..    DCD    19576
        0x100022c0:    10002294    ."..    DCD    268444308
        0x100022c4:    10007390    .s..    DCD    268465040
        0x100022c8:    20017200    .r.     DCD    536965632
        0x100022cc:    0000080c    ....    DCD    2060
        0x100022d0:    10002294    ."..    DCD    268444308
        0x100022d4:    10007b9c    .{..    DCD    268467100
        0x100022d8:    2001f000    ...     DCD    536997888
        0x100022dc:    0000000c    ....    DCD    12
        0x100022e0:    100022a4    ."..    DCD    268444324
    Region$$Table$$Limit

** Section #3 'FLASH_CACHE_CODE' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 1076 bytes (alignment 4)
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
        0x10002354:    f24251d5    B..Q    MOV      r1,#0x25d5
        0x10002358:    f2c20000    ....    MOVT     r0,#0x2000
        0x1000235c:    f2c10100    ....    MOVT     r1,#0x1000
        0x10002360:    6001        .`      STR      r1,[r0,#0]
        0x10002362:    f24000ec    @...    MOVW     r0,#0xec
        0x10002366:    f2426111    B..a    MOV      r1,#0x2611
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
        0x10002386:    f24f0000    O...    MOVW     r0,#0xf000
        0x1000238a:    f2c20001    ....    MOVT     r0,#0x2001
        0x1000238e:    7004        .p      STRB     r4,[r0,#0]
        0x10002390:    f24f0008    O...    MOV      r0,#0xf008
        0x10002394:    f2c20001    ....    MOVT     r0,#0x2001
        0x10002398:    6001        .`      STR      r1,[r0,#0]
        0x1000239a:    f24f0004    O...    MOV      r0,#0xf004
        0x1000239e:    f2c20001    ....    MOVT     r0,#0x2001
        0x100023a2:    6002        .`      STR      r2,[r0,#0]
        0x100023a4:    f10d0107    ....    ADD      r1,sp,#7
        0x100023a8:    2002        .       MOVS     r0,#2
        0x100023aa:    2201        ."      MOVS     r2,#1
        0x100023ac:    2601        .&      MOVS     r6,#1
        0x100023ae:    f000f930    ..0.    BL       $Ven$TT$L$$rom_hw_efuse_read_bytes ; 0x10002612
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
        0x100023d2:    f000f923    ..#.    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x1000261c
        0x100023d6:    4628        (F      MOV      r0,r5
        0x100023d8:    f44f3148    O.H1    MOV      r1,#0x32000
        0x100023dc:    e068        h.      B        0x100024b0 ; lpwr_ctrl_init + 304
        0x100023de:    f10d0101    ....    ADD      r1,sp,#1
        0x100023e2:    203a        :       MOVS     r0,#0x3a
        0x100023e4:    2206        ."      MOVS     r2,#6
        0x100023e6:    f000f914    ....    BL       $Ven$TT$L$$rom_hw_efuse_read_bytes ; 0x10002612
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
        0x10002412:    f000f903    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x1000261c
        0x10002416:    f89d1002    ....    LDRB     r1,[sp,#2]
        0x1000241a:    4628        (F      MOV      r0,r5
        0x1000241c:    2920         )      CMP      r1,#0x20
        0x1000241e:    bf3c        <.      ITT      CC
        0x10002420:    f24b0000    K...    MOVWCC   r0,#0xb000
        0x10002424:    f2c60004    ....    MOVTCC   r0,#0x6004
        0x10002428:    f001011f    ....    AND      r1,r1,#0x1f
        0x1000242c:    fa06f101    ....    LSL      r1,r6,r1
        0x10002430:    2202        ."      MOVS     r2,#2
        0x10002432:    f000f8f3    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x1000261c
        0x10002436:    f89d1003    ....    LDRB     r1,[sp,#3]
        0x1000243a:    4628        (F      MOV      r0,r5
        0x1000243c:    2920         )      CMP      r1,#0x20
        0x1000243e:    bf3c        <.      ITT      CC
        0x10002440:    f24b0000    K...    MOVWCC   r0,#0xb000
        0x10002444:    f2c60004    ....    MOVTCC   r0,#0x6004
        0x10002448:    f001011f    ....    AND      r1,r1,#0x1f
        0x1000244c:    fa06f101    ....    LSL      r1,r6,r1
        0x10002450:    2201        ."      MOVS     r2,#1
        0x10002452:    f000f8e3    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x1000261c
        0x10002456:    f89d1004    ....    LDRB     r1,[sp,#4]
        0x1000245a:    4628        (F      MOV      r0,r5
        0x1000245c:    2920         )      CMP      r1,#0x20
        0x1000245e:    bf3c        <.      ITT      CC
        0x10002460:    f24b0000    K...    MOVWCC   r0,#0xb000
        0x10002464:    f2c60004    ....    MOVTCC   r0,#0x6004
        0x10002468:    f001011f    ....    AND      r1,r1,#0x1f
        0x1000246c:    fa06f101    ....    LSL      r1,r6,r1
        0x10002470:    2201        ."      MOVS     r2,#1
        0x10002472:    f000f8d3    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x1000261c
        0x10002476:    f89d1005    ....    LDRB     r1,[sp,#5]
        0x1000247a:    4628        (F      MOV      r0,r5
        0x1000247c:    2920         )      CMP      r1,#0x20
        0x1000247e:    bf3c        <.      ITT      CC
        0x10002480:    f24b0000    K...    MOVWCC   r0,#0xb000
        0x10002484:    f2c60004    ....    MOVTCC   r0,#0x6004
        0x10002488:    f001011f    ....    AND      r1,r1,#0x1f
        0x1000248c:    fa06f101    ....    LSL      r1,r6,r1
        0x10002490:    2202        ."      MOVS     r2,#2
        0x10002492:    f000f8c3    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x1000261c
        0x10002496:    f89d0006    ....    LDRB     r0,[sp,#6]
        0x1000249a:    2820         (      CMP      r0,#0x20
        0x1000249c:    bf3c        <.      ITT      CC
        0x1000249e:    f24b0500    K...    MOVWCC   r5,#0xb000
        0x100024a2:    f2c60504    ....    MOVTCC   r5,#0x6004
        0x100024a6:    f000001f    ....    AND      r0,r0,#0x1f
        0x100024aa:    fa06f100    ....    LSL      r1,r6,r0
        0x100024ae:    4628        (F      MOV      r0,r5
        0x100024b0:    2202        ."      MOVS     r2,#2
        0x100024b2:    f000f8b3    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x1000261c
        0x100024b6:    2c04        .,      CMP      r4,#4
        0x100024b8:    d809        ..      BHI      0x100024ce ; lpwr_ctrl_init + 334
        0x100024ba:    1f20         .      SUBS     r0,r4,#4
        0x100024bc:    fab0f080    ....    CLZ      r0,r0
        0x100024c0:    0940        @.      LSRS     r0,r0,#5
        0x100024c2:    0040        @.      LSLS     r0,r0,#1
        0x100024c4:    2c03        .,      CMP      r4,#3
        0x100024c6:    bf08        ..      IT       EQ
        0x100024c8:    2001        .       MOVEQ    r0,#1
        0x100024ca:    f000f8ac    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_low_power_mode ; 0x10002626
        0x100024ce:    2001        .       MOVS     r0,#1
        0x100024d0:    2103        .!      MOVS     r1,#3
        0x100024d2:    220b        ."      MOVS     r2,#0xb
        0x100024d4:    2309        .#      MOVS     r3,#9
        0x100024d6:    f000f8ab    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_wakeup_source ; 0x10002630
        0x100024da:    b002        ..      ADD      sp,sp,#8
        0x100024dc:    bd70        p.      POP      {r4-r6,pc}
        0x100024de:    0000        ..      MOVS     r0,r0
    main
        0x100024e0:    b082        ..      SUB      sp,sp,#8
        0x100024e2:    f24e0000    N...    MOVW     r0,#0xe000
        0x100024e6:    f2c60004    ....    MOVT     r0,#0x6004
        0x100024ea:    f000f8a6    ....    BL       $Ven$TT$L$$rom_hw_wdt_disable ; 0x1000263a
        0x100024ee:    2064        d       MOVS     r0,#0x64
        0x100024f0:    f000f8a8    ....    BL       $Ven$TT$L$$rom_delay_ms ; 0x10002644
        0x100024f4:    2002        .       MOVS     r0,#2
        0x100024f6:    f000f8aa    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_ldo_act_voltage ; 0x1000264e
        0x100024fa:    f000f8ad    ....    BL       $Ven$TT$L$$rom_hw_pmu_dcdc_init ; 0x10002658
        0x100024fe:    2003        .       MOVS     r0,#3
        0x10002500:    f000f8af    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_dcdc_act_voltage ; 0x10002662
        0x10002504:    2000        .       MOVS     r0,#0
        0x10002506:    2400        .$      MOVS     r4,#0
        0x10002508:    f000f8b0    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_ldo_dig_voltage ; 0x1000266c
        0x1000250c:    2000        .       MOVS     r0,#0
        0x1000250e:    f000f8b2    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_ldo_ret_sleep_voltage ; 0x10002676
        0x10002512:    2000        .       MOVS     r0,#0
        0x10002514:    f000f8b4    ....    BL       $Ven$TT$L$$rom_hal_pmu_sel_power_act_out_mode ; 0x10002680
        0x10002518:    f10d0107    ....    ADD      r1,sp,#7
        0x1000251c:    200f        .       MOVS     r0,#0xf
        0x1000251e:    2201        ."      MOVS     r2,#1
        0x10002520:    f88d4007    ...@    STRB     r4,[sp,#7]
        0x10002524:    f000f875    ..u.    BL       $Ven$TT$L$$rom_hw_efuse_read_bytes ; 0x10002612
        0x10002528:    f89d0007    ....    LDRB     r0,[sp,#7]
        0x1000252c:    2800        .(      CMP      r0,#0
        0x1000252e:    bf04        ..      ITT      EQ
        0x10002530:    2056        V       MOVEQ    r0,#0x56
        0x10002532:    f000f8aa    ....    BLEQ     $Ven$TT$L$$rom_hw_pmu_set_rc_hclk_tune ; 0x1000268a
        0x10002536:    f10d0107    ....    ADD      r1,sp,#7
        0x1000253a:    2010        .       MOVS     r0,#0x10
        0x1000253c:    2201        ."      MOVS     r2,#1
        0x1000253e:    f000f868    ..h.    BL       $Ven$TT$L$$rom_hw_efuse_read_bytes ; 0x10002612
        0x10002542:    f89d0007    ....    LDRB     r0,[sp,#7]
        0x10002546:    2800        .(      CMP      r0,#0
        0x10002548:    bf08        ..      IT       EQ
        0x1000254a:    20a9        .       MOVEQ    r0,#0xa9
        0x1000254c:    f000f8a2    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_rc_lclk_tune ; 0x10002694
        0x10002550:    2000        .       MOVS     r0,#0
        0x10002552:    f000f8a4    ....    BL       $Ven$TT$L$$rom_hw_pmu_sel_dcxo_hclk_pwr ; 0x1000269e
        0x10002556:    2003        .       MOVS     r0,#3
        0x10002558:    2103        .!      MOVS     r1,#3
        0x1000255a:    2264        d"      MOVS     r2,#0x64
        0x1000255c:    f000f8a4    ....    BL       $Ven$TT$L$$rom_hal_pmu_cfg_dcxo_hclk_param ; 0x100026a8
        0x10002560:    2001        .       MOVS     r0,#1
        0x10002562:    f64011c4    @...    MOV      r1,#0x9c4
        0x10002566:    f000f8a4    ....    BL       $Ven$TT$L$$rom_hal_pmu_set_sys_clk_src ; 0x100026b2
        0x1000256a:    2001        .       MOVS     r0,#1
        0x1000256c:    2100        .!      MOVS     r1,#0
        0x1000256e:    2200        ."      MOVS     r2,#0
        0x10002570:    f000f8a4    ....    BL       $Ven$TT$L$$rom_hw_sys_ctrl_peri_int_ctrl ; 0x100026bc
        0x10002574:    f7fffeec    ....    BL       err_debug_init ; 0x10002350
        0x10002578:    209c        .       MOVS     r0,#0x9c
        0x1000257a:    f000f82d    ..-.    BL       patch_hal_pmu_set_sram_ret ; 0x100025d8
        0x1000257e:    f242317d    B.}1    MOV      r1,#0x237d
        0x10002582:    f2423279    B.y2    MOV      r2,#0x2379
        0x10002586:    f2c10100    ....    MOVT     r1,#0x1000
        0x1000258a:    2002        .       MOVS     r0,#2
        0x1000258c:    f2c10200    ....    MOVT     r2,#0x1000
        0x10002590:    f7fffef6    ....    BL       lpwr_ctrl_init ; 0x10002380
        0x10002594:    2020                MOVS     r0,#0x20
        0x10002596:    f000f896    ....    BL       $Ven$TT$L$$rom_hw_crg_keep_reset ; 0x100026c6
        0x1000259a:    f44f3080    O..0    MOV      r0,#0x10000
        0x1000259e:    f44f6180    O..a    MOV      r1,#0x400
        0x100025a2:    f000f895    ....    BL       $Ven$TT$L$$rom_hw_sys_ctrl_enable_cp_remap ; 0x100026d0
        0x100025a6:    b988        ..      CBNZ     r0,0x100025cc ; main + 236
        0x100025a8:    f2430004    C...    MOV      r0,#0x3004
        0x100025ac:    f2c20000    ....    MOVT     r0,#0x2000
        0x100025b0:    6801        .h      LDR      r1,[r0,#0]
        0x100025b2:    2000        .       MOVS     r0,#0
        0x100025b4:    f000f891    ....    BL       $Ven$TT$L$$rom_hw_sys_ctrl_write_com_reg ; 0x100026da
        0x100025b8:    2029        )       MOVS     r0,#0x29
        0x100025ba:    f000f893    ....    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x100026e4
        0x100025be:    202a        *       MOVS     r0,#0x2a
        0x100025c0:    f000f890    ....    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x100026e4
        0x100025c4:    2020                MOVS     r0,#0x20
        0x100025c6:    f000f892    ....    BL       $Ven$TT$L$$rom_hw_crg_release_reset ; 0x100026ee
        0x100025ca:    bf00        ..      NOP      
        0x100025cc:    f000f894    ....    BL       $Ven$TT$L$$lpwr_ctrl_goto_sleep ; 0x100026f8
        0x100025d0:    e7fc        ..      B        0x100025cc ; main + 236
        0x100025d2:    0000        ..      MOVS     r0,r0
    os_error_handler
        0x100025d4:    e7fe        ..      B        os_error_handler ; 0x100025d4
        0x100025d6:    0000        ..      MOVS     r0,r0
    patch_hal_pmu_set_sram_ret
        0x100025d8:    f5b07f80    ....    CMP      r0,#0x100
        0x100025dc:    bf84        ..      ITT      HI
        0x100025de:    2010        .       MOVHI    r0,#0x10
        0x100025e0:    4770        pG      BXHI     lr
        0x100025e2:    b510        ..      PUSH     {r4,lr}
        0x100025e4:    0981        ..      LSRS     r1,r0,#6
        0x100025e6:    2201        ."      MOVS     r2,#1
        0x100025e8:    0683        ..      LSLS     r3,r0,#26
        0x100025ea:    bf18        ..      IT       NE
        0x100025ec:    eb021190    ....    ADDNE    r1,r2,r0,LSR #6
        0x100025f0:    f04f30ff    O..0    MOV      r0,#0xffffffff
        0x100025f4:    4088        .@      LSLS     r0,r0,r1
        0x100025f6:    43c4        .C      MVNS     r4,r0
        0x100025f8:    f64f70ff    O..p    MOV      r0,#0xffff
        0x100025fc:    f2c0000f    ....    MOVT     r0,#0xf
        0x10002600:    f000f87f    ....    BL       $Ven$TT$L$$rom_hw_pmu_clr_sram_block_ret ; 0x10002702
        0x10002604:    4620         F      MOV      r0,r4
        0x10002606:    f000f881    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_sram_block_ret ; 0x1000270c
        0x1000260a:    2000        .       MOVS     r0,#0
        0x1000260c:    bd10        ..      POP      {r4,pc}
        0x1000260e:    0000        ..      MOVS     r0,r0
    system_error_handler
        0x10002610:    e7fe        ..      B        system_error_handler ; 0x10002610
    $t
    $Ven$TT$L$$rom_hw_efuse_read_bytes
        0x10002612:    f2487c0d    H..|    MOV      r12,#0x870d
        0x10002616:    f2c00c00    ....    MOVT     r12,#0
        0x1000261a:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode
        0x1000261c:    f6490c9d    I...    MOV      r12,#0x989d
        0x10002620:    f2c00c00    ....    MOVT     r12,#0
        0x10002624:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_low_power_mode
        0x10002626:    f64a6c25    J.%l    MOV      r12,#0xae25
        0x1000262a:    f2c00c00    ....    MOVT     r12,#0
        0x1000262e:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_wakeup_source
        0x10002630:    f64a6c8d    J..l    MOV      r12,#0xae8d
        0x10002634:    f2c00c00    ....    MOVT     r12,#0
        0x10002638:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_wdt_disable
        0x1000263a:    f64f0c31    O.1.    MOV      r12,#0xf831
        0x1000263e:    f2c00c00    ....    MOVT     r12,#0
        0x10002642:    4760        `G      BX       r12
    $Ven$TT$L$$rom_delay_ms
        0x10002644:    f2447c71    D.q|    MOV      r12,#0x4771
        0x10002648:    f2c00c00    ....    MOVT     r12,#0
        0x1000264c:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_ldo_act_voltage
        0x1000264e:    f64a5c7d    J.}\    MOV      r12,#0xad7d
        0x10002652:    f2c00c00    ....    MOVT     r12,#0
        0x10002656:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_dcdc_init
        0x10002658:    f64a0c6d    J.m.    MOV      r12,#0xa86d
        0x1000265c:    f2c00c00    ....    MOVT     r12,#0
        0x10002660:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_dcdc_act_voltage
        0x10002662:    f64a3ce9    J..<    MOV      r12,#0xabe9
        0x10002666:    f2c00c00    ....    MOVT     r12,#0
        0x1000266a:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_ldo_dig_voltage
        0x1000266c:    f64a5ca9    J..\    MOV      r12,#0xada9
        0x10002670:    f2c00c00    ....    MOVT     r12,#0
        0x10002674:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_ldo_ret_sleep_voltage
        0x10002676:    f64a5cfd    J..\    MOV      r12,#0xadfd
        0x1000267a:    f2c00c00    ....    MOVT     r12,#0
        0x1000267e:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hal_pmu_sel_power_act_out_mode
        0x10002680:    f6454c21    E.!L    MOV      r12,#0x5c21
        0x10002684:    f2c00c00    ....    MOVT     r12,#0
        0x10002688:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_rc_hclk_tune
        0x1000268a:    f64a6c59    J.Yl    MOV      r12,#0xae59
        0x1000268e:    f2c00c00    ....    MOVT     r12,#0
        0x10002692:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_rc_lclk_tune
        0x10002694:    f64a6c69    J.il    MOV      r12,#0xae69
        0x10002698:    f2c00c00    ....    MOVT     r12,#0
        0x1000269c:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_sel_dcxo_hclk_pwr
        0x1000269e:    f64a3cb1    J..<    MOV      r12,#0xabb1
        0x100026a2:    f2c00c00    ....    MOVT     r12,#0
        0x100026a6:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hal_pmu_cfg_dcxo_hclk_param
        0x100026a8:    f6451c65    E.e.    MOV      r12,#0x5965
        0x100026ac:    f2c00c00    ....    MOVT     r12,#0
        0x100026b0:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hal_pmu_set_sys_clk_src
        0x100026b2:    f6455c29    E.)\    MOV      r12,#0x5d29
        0x100026b6:    f2c00c00    ....    MOVT     r12,#0
        0x100026ba:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_sys_ctrl_peri_int_ctrl
        0x100026bc:    f24c3c11    L..<    MOV      r12,#0xc311
        0x100026c0:    f2c00c00    ....    MOVT     r12,#0
        0x100026c4:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_crg_keep_reset
        0x100026c6:    f6472c85    G..,    MOV      r12,#0x7a85
        0x100026ca:    f2c00c00    ....    MOVT     r12,#0
        0x100026ce:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_sys_ctrl_enable_cp_remap
        0x100026d0:    f24c1c79    L.y.    MOV      r12,#0xc179
        0x100026d4:    f2c00c00    ....    MOVT     r12,#0
        0x100026d8:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_sys_ctrl_write_com_reg
        0x100026da:    f24c3cb9    L..<    MOV      r12,#0xc3b9
        0x100026de:    f2c00c00    ....    MOVT     r12,#0
        0x100026e2:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_crg_enable_clk_gate
        0x100026e4:    f6471c7d    G.}.    MOV      r12,#0x797d
        0x100026e8:    f2c00c00    ....    MOVT     r12,#0
        0x100026ec:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_crg_release_reset
        0x100026ee:    f6472cd1    G..,    MOV      r12,#0x7ad1
        0x100026f2:    f2c00c00    ....    MOVT     r12,#0
        0x100026f6:    4760        `G      BX       r12
    $Ven$TT$L$$lpwr_ctrl_goto_sleep
        0x100026f8:    f2472c01    G..,    MOV      r12,#0x7201
        0x100026fc:    f2c20c01    ....    MOVT     r12,#0x2001
        0x10002700:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_clr_sram_block_ret
        0x10002702:    f64a0c51    J.Q.    MOV      r12,#0xa851
        0x10002706:    f2c00c00    ....    MOVT     r12,#0
        0x1000270a:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_sram_block_ret
        0x1000270c:    f64a6c79    J.yl    MOV      r12,#0xae79
        0x10002710:    f2c00c00    ....    MOVT     r12,#0
        0x10002714:    4760        `G      BX       r12
        0x10002716:    0000        ..      MOVS     r0,r0

** Section #4 'RAM_CP_CODE' (SHT_PROGBITS) [SHF_ALLOC]
    Size   : 19576 bytes
    Address: 0x20003000


** Section #5 'RAM_MP_VECTOR' (SHT_NOBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 300 bytes (alignment 512)
    Address: 0x20017000


** Section #6 'RAM_MP_CODE' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 2060 bytes (alignment 4)
    Address: 0x20017200

    $t.3
    lpwr_ctrl_goto_sleep
        0x20017200:    b570        p.      PUSH     {r4-r6,lr}
        0x20017202:    b084        ..      SUB      sp,sp,#0x10
        0x20017204:    f24f0500    O...    MOVW     r5,#0xf000
        0x20017208:    f2c20501    ....    MOVT     r5,#0x2001
        0x2001720c:    7829        )x      LDRB     r1,[r5,#0]
        0x2001720e:    2000        .       MOVS     r0,#0
        0x20017210:    2900        .)      CMP      r1,#0
        0x20017212:    9003        ..      STR      r0,[sp,#0xc]
        0x20017214:    9002        ..      STR      r0,[sp,#8]
        0x20017216:    f000807e    ..~.    BEQ.W    0x20017316 ; lpwr_ctrl_goto_sleep + 278
        0x2001721a:    f24f0008    O...    MOV      r0,#0xf008
        0x2001721e:    f3ef8410    ....    MRS      r4,PRIMASK
        0x20017222:    f2c20001    ....    MOVT     r0,#0x2001
        0x20017226:    f3ef8110    ....    MRS      r1,PRIMASK
        0x2001722a:    b672        r.      CPSID    i
        0x2001722c:    6800        .h      LDR      r0,[r0,#0]
        0x2001722e:    b108        ..      CBZ      r0,0x20017234 ; lpwr_ctrl_goto_sleep + 52
        0x20017230:    4780        .G      BLX      r0
        0x20017232:    b1c0        ..      CBZ      r0,0x20017266 ; lpwr_ctrl_goto_sleep + 102
        0x20017234:    7828        (x      LDRB     r0,[r5,#0]
        0x20017236:    1e81        ..      SUBS     r1,r0,#2
        0x20017238:    2903        .)      CMP      r1,#3
        0x2001723a:    d218        ..      BCS      0x2001726e ; lpwr_ctrl_goto_sleep + 110
        0x2001723c:    a803        ..      ADD      r0,sp,#0xc
        0x2001723e:    f000fb7b    ..{.    BL       $Ven$TT$L$$rom_hw_crg_get_sys_clk_src ; 0x20017938
        0x20017242:    a901        ..      ADD      r1,sp,#4
        0x20017244:    2000        .       MOVS     r0,#0
        0x20017246:    f000fb7c    ..|.    BL       $Ven$TT$L$$rom_hw_sys_ctrl_read_com_reg ; 0x20017942
        0x2001724a:    9803        ..      LDR      r0,[sp,#0xc]
        0x2001724c:    2801        .(      CMP      r0,#1
        0x2001724e:    d13a        :.      BNE      0x200172c6 ; lpwr_ctrl_goto_sleep + 198
        0x20017250:    9801        ..      LDR      r0,[sp,#4]
        0x20017252:    b398        ..      CBZ      r0,0x200172bc ; lpwr_ctrl_goto_sleep + 188
        0x20017254:    2080        .       MOVS     r0,#0x80
        0x20017256:    f2c40000    ....    MOVT     r0,#0x4000
        0x2001725a:    f8d01100    ....    LDR      r1,[r0,#0x100]
        0x2001725e:    07c9        ..      LSLS     r1,r1,#31
        0x20017260:    d111        ..      BNE      0x20017286 ; lpwr_ctrl_goto_sleep + 134
        0x20017262:    2601        .&      MOVS     r6,#1
        0x20017264:    e023        #.      B        0x200172ae ; lpwr_ctrl_goto_sleep + 174
        0x20017266:    f3848810    ....    MSR      PRIMASK,r4
        0x2001726a:    b004        ..      ADD      sp,sp,#0x10
        0x2001726c:    bd70        p.      POP      {r4-r6,pc}
        0x2001726e:    2801        .(      CMP      r0,#1
        0x20017270:    d145        E.      BNE      0x200172fe ; lpwr_ctrl_goto_sleep + 254
        0x20017272:    f64e5010    N..P    MOV      r0,#0xed10
        0x20017276:    f2ce0000    ....    MOVT     r0,#0xe000
        0x2001727a:    6801        .h      LDR      r1,[r0,#0]
        0x2001727c:    f0210104    !...    BIC      r1,r1,#4
        0x20017280:    6001        .`      STR      r1,[r0,#0]
        0x20017282:    bf30        0.      WFI      
        0x20017284:    e03b        ;.      B        0x200172fe ; lpwr_ctrl_goto_sleep + 254
        0x20017286:    f24f1204    O...    MOV      r2,#0xf104
        0x2001728a:    f2c60204    ....    MOVT     r2,#0x6004
        0x2001728e:    6801        .h      LDR      r1,[r0,#0]
        0x20017290:    f8d00168    ..h.    LDR      r0,[r0,#0x168]
        0x20017294:    6812        .h      LDR      r2,[r2,#0]
        0x20017296:    1a08        ..      SUBS     r0,r1,r0
        0x20017298:    b292        ..      UXTH     r2,r2
        0x2001729a:    f2414100    A..A    MOVW     r1,#0x1400
        0x2001729e:    fb02f000    ....    MUL      r0,r2,r0
        0x200172a2:    f2c00127    ..'.    MOVT     r1,#0x27
        0x200172a6:    2600        .&      MOVS     r6,#0
        0x200172a8:    4288        .B      CMP      r0,r1
        0x200172aa:    bf38        8.      IT       CC
        0x200172ac:    2601        .&      MOVCC    r6,#1
        0x200172ae:    a902        ..      ADD      r1,sp,#8
        0x200172b0:    2001        .       MOVS     r0,#1
        0x200172b2:    f000fb46    ..F.    BL       $Ven$TT$L$$rom_hw_sys_ctrl_read_com_reg ; 0x20017942
        0x200172b6:    bb16        ..      CBNZ     r6,0x200172fe ; lpwr_ctrl_goto_sleep + 254
        0x200172b8:    9802        ..      LDR      r0,[sp,#8]
        0x200172ba:    b300        ..      CBZ      r0,0x200172fe ; lpwr_ctrl_goto_sleep + 254
        0x200172bc:    2001        .       MOVS     r0,#1
        0x200172be:    f44f61fa    O..a    MOV      r1,#0x7d0
        0x200172c2:    f000fb43    ..C.    BL       $Ven$TT$L$$rom_hal_pmu_set_sys_clk_src ; 0x2001794c
        0x200172c6:    9801        ..      LDR      r0,[sp,#4]
        0x200172c8:    b128        (.      CBZ      r0,0x200172d6 ; lpwr_ctrl_goto_sleep + 214
        0x200172ca:    a902        ..      ADD      r1,sp,#8
        0x200172cc:    2001        .       MOVS     r0,#1
        0x200172ce:    f000fb38    ..8.    BL       $Ven$TT$L$$rom_hw_sys_ctrl_read_com_reg ; 0x20017942
        0x200172d2:    9802        ..      LDR      r0,[sp,#8]
        0x200172d4:    b198        ..      CBZ      r0,0x200172fe ; lpwr_ctrl_goto_sleep + 254
        0x200172d6:    f04f40a0    O..@    MOV      r0,#0x50000000
        0x200172da:    f000f8f1    ....    BL       patch_hw_flash_enter_deep_power_down ; 0x200174c0
        0x200172de:    f64e5010    N..P    MOV      r0,#0xed10
        0x200172e2:    f2ce0000    ....    MOVT     r0,#0xe000
        0x200172e6:    6801        .h      LDR      r1,[r0,#0]
        0x200172e8:    f0410104    A...    ORR      r1,r1,#4
        0x200172ec:    6001        .`      STR      r1,[r0,#0]
        0x200172ee:    f04f40a0    O..@    MOV      r0,#0x50000000
        0x200172f2:    bf30        0.      WFI      
        0x200172f4:    f000f8f0    ....    BL       patch_hw_flash_release_deep_power_down ; 0x200174d8
        0x200172f8:    2001        .       MOVS     r0,#1
        0x200172fa:    f000fb2c    ..,.    BL       $Ven$TT$L$$rom_hw_cache_init ; 0x20017956
        0x200172fe:    f24f0004    O...    MOV      r0,#0xf004
        0x20017302:    f2c20001    ....    MOVT     r0,#0x2001
        0x20017306:    6800        .h      LDR      r0,[r0,#0]
        0x20017308:    b118        ..      CBZ      r0,0x20017312 ; lpwr_ctrl_goto_sleep + 274
        0x2001730a:    7829        )x      LDRB     r1,[r5,#0]
        0x2001730c:    2902        .)      CMP      r1,#2
        0x2001730e:    bf08        ..      IT       EQ
        0x20017310:    4780        .G      BLXEQ    r0
        0x20017312:    f3848810    ....    MSR      PRIMASK,r4
        0x20017316:    b004        ..      ADD      sp,sp,#0x10
        0x20017318:    bd70        p.      POP      {r4-r6,pc}
        0x2001731a:    0000        ..      MOVS     r0,r0
    patch_hw_flash_release_read_enhanced
        0x2001731c:    b570        p.      PUSH     {r4-r6,lr}
        0x2001731e:    f2410100    A...    MOVW     r1,#0x1000
        0x20017322:    4604        .F      MOV      r4,r0
        0x20017324:    f4405080    @..P    ORR      r0,r0,#0x1000
        0x20017328:    f2c50100    ....    MOVT     r1,#0x5000
        0x2001732c:    4288        .B      CMP      r0,r1
        0x2001732e:    bf1c        ..      ITT      NE
        0x20017330:    2001        .       MOVNE    r0,#1
        0x20017332:    bd70        p.      POPNE    {r4-r6,pc}
        0x20017334:    f2407500    @..u    MOVW     r5,#0x700
        0x20017338:    2602        .&      MOVS     r6,#2
        0x2001733a:    f2c00501    ....    MOVT     r5,#1
        0x2001733e:    bf00        ..      NOP      
        0x20017340:    0630        0.      LSLS     r0,r6,#24
        0x20017342:    bf04        ..      ITT      EQ
        0x20017344:    2000        .       MOVEQ    r0,#0
        0x20017346:    bd70        p.      POPEQ    {r4-r6,pc}
        0x20017348:    4620         F      MOV      r0,r4
        0x2001734a:    21ff        .!      MOVS     r1,#0xff
        0x2001734c:    462a        *F      MOV      r2,r5
        0x2001734e:    3e01        .>      SUBS     r6,#1
        0x20017350:    f000fb06    ....    BL       $Ven$TT$L$$rom_hw_flash_send_command ; 0x20017960
        0x20017354:    2800        .(      CMP      r0,#0
        0x20017356:    bf18        ..      IT       NE
        0x20017358:    bd70        p.      POPNE    {r4-r6,pc}
        0x2001735a:    e7f1        ..      B        0x20017340 ; patch_hw_flash_release_read_enhanced + 36
    patch_hw_flash_read_status
        0x2001735c:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x2001735e:    460c        .F      MOV      r4,r1
        0x20017360:    4605        .F      MOV      r5,r0
        0x20017362:    f7ffffdb    ....    BL       patch_hw_flash_release_read_enhanced ; 0x2001731c
        0x20017366:    2800        .(      CMP      r0,#0
        0x20017368:    bf18        ..      IT       NE
        0x2001736a:    bdb0        ..      POPNE    {r4,r5,r7,pc}
        0x2001736c:    4628        (F      MOV      r0,r5
        0x2001736e:    4621        !F      MOV      r1,r4
        0x20017370:    f000fafb    ....    BL       $Ven$TT$L$$rom_hw_flash_read_status ; 0x2001796a
        0x20017374:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20017376:    bf00        ..      NOP      
    patch_hw_flash_write_status
        0x20017378:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x2001737a:    460c        .F      MOV      r4,r1
        0x2001737c:    4605        .F      MOV      r5,r0
        0x2001737e:    f7ffffcd    ....    BL       patch_hw_flash_release_read_enhanced ; 0x2001731c
        0x20017382:    2800        .(      CMP      r0,#0
        0x20017384:    bf18        ..      IT       NE
        0x20017386:    bdb0        ..      POPNE    {r4,r5,r7,pc}
        0x20017388:    4628        (F      MOV      r0,r5
        0x2001738a:    4621        !F      MOV      r1,r4
        0x2001738c:    f000faf2    ....    BL       $Ven$TT$L$$rom_hw_flash_write_status ; 0x20017974
        0x20017390:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20017392:    bf00        ..      NOP      
    patch_hw_flash_read_status_high
        0x20017394:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x20017396:    460c        .F      MOV      r4,r1
        0x20017398:    4605        .F      MOV      r5,r0
        0x2001739a:    f7ffffbf    ....    BL       patch_hw_flash_release_read_enhanced ; 0x2001731c
        0x2001739e:    2800        .(      CMP      r0,#0
        0x200173a0:    bf18        ..      IT       NE
        0x200173a2:    bdb0        ..      POPNE    {r4,r5,r7,pc}
        0x200173a4:    4628        (F      MOV      r0,r5
        0x200173a6:    4621        !F      MOV      r1,r4
        0x200173a8:    f000fae9    ....    BL       $Ven$TT$L$$rom_hw_flash_read_status_high ; 0x2001797e
        0x200173ac:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x200173ae:    bf00        ..      NOP      
    patch_hw_flash_read_status_low
        0x200173b0:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x200173b2:    460c        .F      MOV      r4,r1
        0x200173b4:    4605        .F      MOV      r5,r0
        0x200173b6:    f7ffffb1    ....    BL       patch_hw_flash_release_read_enhanced ; 0x2001731c
        0x200173ba:    2800        .(      CMP      r0,#0
        0x200173bc:    bf18        ..      IT       NE
        0x200173be:    bdb0        ..      POPNE    {r4,r5,r7,pc}
        0x200173c0:    4628        (F      MOV      r0,r5
        0x200173c2:    4621        !F      MOV      r1,r4
        0x200173c4:    f000fae0    ....    BL       $Ven$TT$L$$rom_hw_flash_read_status_low ; 0x20017988
        0x200173c8:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x200173ca:    bf00        ..      NOP      
    patch_hw_flash_set_quad_enable
        0x200173cc:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x200173ce:    460c        .F      MOV      r4,r1
        0x200173d0:    4605        .F      MOV      r5,r0
        0x200173d2:    f7ffffa3    ....    BL       patch_hw_flash_release_read_enhanced ; 0x2001731c
        0x200173d6:    2800        .(      CMP      r0,#0
        0x200173d8:    bf18        ..      IT       NE
        0x200173da:    bdb0        ..      POPNE    {r4,r5,r7,pc}
        0x200173dc:    4628        (F      MOV      r0,r5
        0x200173de:    4621        !F      MOV      r1,r4
        0x200173e0:    f000fad7    ....    BL       $Ven$TT$L$$rom_hw_flash_set_quad_enable ; 0x20017992
        0x200173e4:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x200173e6:    bf00        ..      NOP      
    patch_hw_flash_exit_abnormal_state
        0x200173e8:    b510        ..      PUSH     {r4,lr}
        0x200173ea:    4604        .F      MOV      r4,r0
        0x200173ec:    f7ffff96    ....    BL       patch_hw_flash_release_read_enhanced ; 0x2001731c
        0x200173f0:    2800        .(      CMP      r0,#0
        0x200173f2:    bf04        ..      ITT      EQ
        0x200173f4:    4620         F      MOVEQ    r0,r4
        0x200173f6:    f000fad1    ....    BLEQ     $Ven$TT$L$$rom_hw_flash_exit_abnormal_state ; 0x2001799c
        0x200173fa:    bd10        ..      POP      {r4,pc}
    patch_hw_flash_get_id
        0x200173fc:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x200173fe:    460c        .F      MOV      r4,r1
        0x20017400:    4605        .F      MOV      r5,r0
        0x20017402:    f7ffff8b    ....    BL       patch_hw_flash_release_read_enhanced ; 0x2001731c
        0x20017406:    2800        .(      CMP      r0,#0
        0x20017408:    bf18        ..      IT       NE
        0x2001740a:    bdb0        ..      POPNE    {r4,r5,r7,pc}
        0x2001740c:    4628        (F      MOV      r0,r5
        0x2001740e:    4621        !F      MOV      r1,r4
        0x20017410:    f000fac9    ....    BL       $Ven$TT$L$$rom_hw_flash_get_id ; 0x200179a6
        0x20017414:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20017416:    bf00        ..      NOP      
    patch_hw_flash_get_unique_id
        0x20017418:    e92d43f0    -..C    PUSH     {r4-r9,lr}
        0x2001741c:    b081        ..      SUB      sp,sp,#4
        0x2001741e:    460d        .F      MOV      r5,r1
        0x20017420:    4604        .F      MOV      r4,r0
        0x20017422:    f1004030    ..0@    ADD      r0,r0,#0xb0000000
        0x20017426:    f46f5180    o..Q    MVN      r1,#0x1000
        0x2001742a:    4208        .B      TST      r0,r1
        0x2001742c:    f04f0001    O...    MOV      r0,#1
        0x20017430:    d104        ..      BNE      0x2001743c ; patch_hw_flash_get_unique_id + 36
        0x20017432:    b11d        ..      CBZ      r5,0x2001743c ; patch_hw_flash_get_unique_id + 36
        0x20017434:    4620         F      MOV      r0,r4
        0x20017436:    f7ffff71    ..q.    BL       patch_hw_flash_release_read_enhanced ; 0x2001731c
        0x2001743a:    b110        ..      CBZ      r0,0x20017442 ; patch_hw_flash_get_unique_id + 42
        0x2001743c:    b001        ..      ADD      sp,sp,#4
        0x2001743e:    e8bd83f0    ....    POP      {r4-r9,pc}
        0x20017442:    214b        K!      MOVS     r1,#0x4b
        0x20017444:    f240721f    @..r    MOV      r2,#0x71f
        0x20017448:    f2c03180    ...1    MOVT     r1,#0x380
        0x2001744c:    4620         F      MOV      r0,r4
        0x2001744e:    f2c0020f    ....    MOVT     r2,#0xf
        0x20017452:    f000fa85    ....    BL       $Ven$TT$L$$rom_hw_flash_send_command ; 0x20017960
        0x20017456:    2800        .(      CMP      r0,#0
        0x20017458:    d1f0        ..      BNE      0x2001743c ; patch_hw_flash_get_unique_id + 36
        0x2001745a:    2700        .'      MOVS     r7,#0
        0x2001745c:    f04f0810    O...    MOV      r8,#0x10
        0x20017460:    f2413987    A..9    MOV      r9,#0x1387
        0x20017464:    2610        .&      MOVS     r6,#0x10
        0x20017466:    bf00        ..      NOP      
        0x20017468:    68a0        .h      LDR      r0,[r4,#8]
        0x2001746a:    06c0        ..      LSLS     r0,r0,#27
        0x2001746c:    d514        ..      BPL      0x20017498 ; patch_hw_flash_get_unique_id + 128
        0x2001746e:    b2b0        ..      UXTH     r0,r6
        0x20017470:    6821        !h      LDR      r1,[r4,#0]
        0x20017472:    2300        .#      MOVS     r3,#0
        0x20017474:    2200        ."      MOVS     r2,#0
        0x20017476:    2804        .(      CMP      r0,#4
        0x20017478:    bf28        (.      IT       CS
        0x2001747a:    2004        .       MOVCS    r0,#4
        0x2001747c:    00db        ..      LSLS     r3,r3,#3
        0x2001747e:    3201        .2      ADDS     r2,#1
        0x20017480:    fa21f703    !...    LSR      r7,r1,r3
        0x20017484:    b293        ..      UXTH     r3,r2
        0x20017486:    f8057b01    ...{    STRB     r7,[r5],#1
        0x2001748a:    4298        .B      CMP      r0,r3
        0x2001748c:    f1a60601    ....    SUB      r6,r6,#1
        0x20017490:    dcf4        ..      BGT      0x2001747c ; patch_hw_flash_get_unique_id + 100
        0x20017492:    2700        .'      MOVS     r7,#0
        0x20017494:    f8c48010    ....    STR      r8,[r4,#0x10]
        0x20017498:    3701        .7      ADDS     r7,#1
        0x2001749a:    454f        OE      CMP      r7,r9
        0x2001749c:    d80c        ..      BHI      0x200174b8 ; patch_hw_flash_get_unique_id + 160
        0x2001749e:    2001        .       MOVS     r0,#1
        0x200174a0:    f000fa86    ....    BL       $Ven$TT$L$$rom_delay_us ; 0x200179b0
        0x200174a4:    0430        0.      LSLS     r0,r6,#16
        0x200174a6:    d1df        ..      BNE      0x20017468 ; patch_hw_flash_get_unique_id + 80
        0x200174a8:    4620         F      MOV      r0,r4
        0x200174aa:    f2413188    A..1    MOV      r1,#0x1388
        0x200174ae:    f000fa84    ....    BL       $Ven$TT$L$$rom_hw_flash_wait_idle ; 0x200179ba
        0x200174b2:    b001        ..      ADD      sp,sp,#4
        0x200174b4:    e8bd83f0    ....    POP      {r4-r9,pc}
        0x200174b8:    2003        .       MOVS     r0,#3
        0x200174ba:    b001        ..      ADD      sp,sp,#4
        0x200174bc:    e8bd83f0    ....    POP      {r4-r9,pc}
    patch_hw_flash_enter_deep_power_down
        0x200174c0:    b510        ..      PUSH     {r4,lr}
        0x200174c2:    4604        .F      MOV      r4,r0
        0x200174c4:    f7ffff2a    ..*.    BL       patch_hw_flash_release_read_enhanced ; 0x2001731c
        0x200174c8:    2800        .(      CMP      r0,#0
        0x200174ca:    bf18        ..      IT       NE
        0x200174cc:    bd10        ..      POPNE    {r4,pc}
        0x200174ce:    4620         F      MOV      r0,r4
        0x200174d0:    2103        .!      MOVS     r1,#3
        0x200174d2:    f000fa77    ..w.    BL       $Ven$TT$L$$rom_hw_flash_enter_deep_power_down ; 0x200179c4
        0x200174d6:    bd10        ..      POP      {r4,pc}
    patch_hw_flash_release_deep_power_down
        0x200174d8:    b510        ..      PUSH     {r4,lr}
        0x200174da:    4604        .F      MOV      r4,r0
        0x200174dc:    f7ffff1e    ....    BL       patch_hw_flash_release_read_enhanced ; 0x2001731c
        0x200174e0:    2800        .(      CMP      r0,#0
        0x200174e2:    bf04        ..      ITT      EQ
        0x200174e4:    4620         F      MOVEQ    r0,r4
        0x200174e6:    f000fa72    ..r.    BLEQ     $Ven$TT$L$$rom_hw_flash_release_deep_power_down ; 0x200179ce
        0x200174ea:    bd10        ..      POP      {r4,pc}
    patch_hw_flash_set_block_protect
        0x200174ec:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x200174ee:    b082        ..      SUB      sp,sp,#8
        0x200174f0:    4604        .F      MOV      r4,r0
        0x200174f2:    f2410200    A...    MOVW     r2,#0x1000
        0x200174f6:    460d        .F      MOV      r5,r1
        0x200174f8:    f4445180    D..Q    ORR      r1,r4,#0x1000
        0x200174fc:    f2c50200    ....    MOVT     r2,#0x5000
        0x20017500:    2000        .       MOVS     r0,#0
        0x20017502:    4291        .B      CMP      r1,r2
        0x20017504:    f8ad0006    ....    STRH     r0,[sp,#6]
        0x20017508:    d107        ..      BNE      0x2001751a ; patch_hw_flash_set_block_protect + 46
        0x2001750a:    f10d0106    ....    ADD      r1,sp,#6
        0x2001750e:    4620         F      MOV      r0,r4
        0x20017510:    f7ffff24    ..$.    BL       patch_hw_flash_read_status ; 0x2001735c
        0x20017514:    b120         .      CBZ      r0,0x20017520 ; patch_hw_flash_set_block_protect + 52
        0x20017516:    b002        ..      ADD      sp,sp,#8
        0x20017518:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x2001751a:    2001        .       MOVS     r0,#1
        0x2001751c:    b002        ..      ADD      sp,sp,#8
        0x2001751e:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20017520:    f8bd0006    ....    LDRH     r0,[sp,#6]
        0x20017524:    f64b7183    K..q    MOV      r1,#0xbf83
        0x20017528:    4008        .@      ANDS     r0,r0,r1
        0x2001752a:    f005011f    ....    AND      r1,r5,#0x1f
        0x2001752e:    ea400081    @...    ORR      r0,r0,r1,LSL #2
        0x20017532:    2106        .!      MOVS     r1,#6
        0x20017534:    f8ad0006    ....    STRH     r0,[sp,#6]
        0x20017538:    4620         F      MOV      r0,r4
        0x2001753a:    f44f62e0    O..b    MOV      r2,#0x700
        0x2001753e:    f000fa0f    ....    BL       $Ven$TT$L$$rom_hw_flash_send_command ; 0x20017960
        0x20017542:    2800        .(      CMP      r0,#0
        0x20017544:    d1e7        ..      BNE      0x20017516 ; patch_hw_flash_set_block_protect + 42
        0x20017546:    f8bd0006    ....    LDRH     r0,[sp,#6]
        0x2001754a:    2101        .!      MOVS     r1,#1
        0x2001754c:    f2407200    @..r    MOVW     r2,#0x700
        0x20017550:    6060        ``      STR      r0,[r4,#4]
        0x20017552:    f2c05100    ...Q    MOVT     r1,#0x500
        0x20017556:    4620         F      MOV      r0,r4
        0x20017558:    f2c00201    ....    MOVT     r2,#1
        0x2001755c:    f000fa00    ....    BL       $Ven$TT$L$$rom_hw_flash_send_command ; 0x20017960
        0x20017560:    2800        .(      CMP      r0,#0
        0x20017562:    d1d8        ..      BNE      0x20017516 ; patch_hw_flash_set_block_protect + 42
        0x20017564:    4620         F      MOV      r0,r4
        0x20017566:    f6432198    C..!    MOV      r1,#0x3a98
        0x2001756a:    f000fa26    ..&.    BL       $Ven$TT$L$$rom_hw_flash_wait_idle ; 0x200179ba
        0x2001756e:    b002        ..      ADD      sp,sp,#8
        0x20017570:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x20017572:    bf00        ..      NOP      
    patch_hw_flash_erase
        0x20017574:    b5f0        ..      PUSH     {r4-r7,lr}
        0x20017576:    b081        ..      SUB      sp,sp,#4
        0x20017578:    461c        .F      MOV      r4,r3
        0x2001757a:    4615        .F      MOV      r5,r2
        0x2001757c:    460e        .F      MOV      r6,r1
        0x2001757e:    4607        .F      MOV      r7,r0
        0x20017580:    f7fffecc    ....    BL       patch_hw_flash_release_read_enhanced ; 0x2001731c
        0x20017584:    b108        ..      CBZ      r0,0x2001758a ; patch_hw_flash_erase + 22
        0x20017586:    b001        ..      ADD      sp,sp,#4
        0x20017588:    bdf0        ..      POP      {r4-r7,pc}
        0x2001758a:    4638        8F      MOV      r0,r7
        0x2001758c:    4631        1F      MOV      r1,r6
        0x2001758e:    462a        *F      MOV      r2,r5
        0x20017590:    4623        #F      MOV      r3,r4
        0x20017592:    f000fa21    ..!.    BL       $Ven$TT$L$$rom_hw_flash_erase ; 0x200179d8
        0x20017596:    b001        ..      ADD      sp,sp,#4
        0x20017598:    bdf0        ..      POP      {r4-r7,pc}
        0x2001759a:    bf00        ..      NOP      
    patch_hw_flash_chip_erase
        0x2001759c:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x2001759e:    460c        .F      MOV      r4,r1
        0x200175a0:    4605        .F      MOV      r5,r0
        0x200175a2:    f7fffebb    ....    BL       patch_hw_flash_release_read_enhanced ; 0x2001731c
        0x200175a6:    2800        .(      CMP      r0,#0
        0x200175a8:    bf18        ..      IT       NE
        0x200175aa:    bdb0        ..      POPNE    {r4,r5,r7,pc}
        0x200175ac:    4628        (F      MOV      r0,r5
        0x200175ae:    4621        !F      MOV      r1,r4
        0x200175b0:    f000fa17    ....    BL       $Ven$TT$L$$rom_hw_flash_chip_erase ; 0x200179e2
        0x200175b4:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x200175b6:    bf00        ..      NOP      
    patch_hw_flash_write_bytes
        0x200175b8:    b5f0        ..      PUSH     {r4-r7,lr}
        0x200175ba:    b083        ..      SUB      sp,sp,#0xc
        0x200175bc:    461c        .F      MOV      r4,r3
        0x200175be:    4615        .F      MOV      r5,r2
        0x200175c0:    460e        .F      MOV      r6,r1
        0x200175c2:    4607        .F      MOV      r7,r0
        0x200175c4:    f7fffeaa    ....    BL       patch_hw_flash_release_read_enhanced ; 0x2001731c
        0x200175c8:    b108        ..      CBZ      r0,0x200175ce ; patch_hw_flash_write_bytes + 22
        0x200175ca:    b003        ..      ADD      sp,sp,#0xc
        0x200175cc:    bdf0        ..      POP      {r4-r7,pc}
        0x200175ce:    e9dd0c08    ....    LDRD     r0,r12,[sp,#0x20]
        0x200175d2:    4631        1F      MOV      r1,r6
        0x200175d4:    9000        ..      STR      r0,[sp,#0]
        0x200175d6:    4638        8F      MOV      r0,r7
        0x200175d8:    462a        *F      MOV      r2,r5
        0x200175da:    4623        #F      MOV      r3,r4
        0x200175dc:    f8cdc004    ....    STR      r12,[sp,#4]
        0x200175e0:    f000fa04    ....    BL       $Ven$TT$L$$rom_hw_flash_write_bytes ; 0x200179ec
        0x200175e4:    b003        ..      ADD      sp,sp,#0xc
        0x200175e6:    bdf0        ..      POP      {r4-r7,pc}
    patch_hw_flash_read_bytes
        0x200175e8:    b5f0        ..      PUSH     {r4-r7,lr}
        0x200175ea:    b081        ..      SUB      sp,sp,#4
        0x200175ec:    461c        .F      MOV      r4,r3
        0x200175ee:    4615        .F      MOV      r5,r2
        0x200175f0:    460e        .F      MOV      r6,r1
        0x200175f2:    4607        .F      MOV      r7,r0
        0x200175f4:    f7fffe92    ....    BL       patch_hw_flash_release_read_enhanced ; 0x2001731c
        0x200175f8:    b108        ..      CBZ      r0,0x200175fe ; patch_hw_flash_read_bytes + 22
        0x200175fa:    b001        ..      ADD      sp,sp,#4
        0x200175fc:    bdf0        ..      POP      {r4-r7,pc}
        0x200175fe:    f8ddc018    ....    LDR      r12,[sp,#0x18]
        0x20017602:    4638        8F      MOV      r0,r7
        0x20017604:    4631        1F      MOV      r1,r6
        0x20017606:    462a        *F      MOV      r2,r5
        0x20017608:    4623        #F      MOV      r3,r4
        0x2001760a:    f8cdc000    ....    STR      r12,[sp,#0]
        0x2001760e:    f000f9f2    ....    BL       $Ven$TT$L$$rom_hw_flash_read_bytes ; 0x200179f6
        0x20017612:    b001        ..      ADD      sp,sp,#4
        0x20017614:    bdf0        ..      POP      {r4-r7,pc}
        0x20017616:    bf00        ..      NOP      
    patch_hw_flash_erase_suspendable
        0x20017618:    e92d47f0    -..G    PUSH     {r4-r10,lr}
        0x2001761c:    460c        .F      MOV      r4,r1
        0x2001761e:    f2410100    A...    MOVW     r1,#0x1000
        0x20017622:    4605        .F      MOV      r5,r0
        0x20017624:    f4405080    @..P    ORR      r0,r0,#0x1000
        0x20017628:    f2c50100    ....    MOVT     r1,#0x5000
        0x2001762c:    4288        .B      CMP      r0,r1
        0x2001762e:    f04f0601    O...    MOV      r6,#1
        0x20017632:    d13d        =.      BNE      0x200176b0 ; patch_hw_flash_erase_suspendable + 152
        0x20017634:    f3ef8a10    ....    MRS      r10,PRIMASK
        0x20017638:    f3ef8010    ....    MRS      r0,PRIMASK
        0x2001763c:    b672        r.      CPSID    i
        0x2001763e:    f64000a0    @...    MOVW     r0,#0x8a0
        0x20017642:    f6c040c8    ...@    MOVT     r0,#0xcc8
        0x20017646:    6668        hf      STR      r0,[r5,#0x64]
        0x20017648:    2020                MOVS     r0,#0x20
        0x2001764a:    f2c000c8    ....    MOVT     r0,#0xc8
        0x2001764e:    65e8        .e      STR      r0,[r5,#0x5c]
        0x20017650:    2005        .       MOVS     r0,#5
        0x20017652:    6628        (f      STR      r0,[r5,#0x60]
        0x20017654:    4628        (F      MOV      r0,r5
        0x20017656:    2103        .!      MOVS     r1,#3
        0x20017658:    4698        .F      MOV      r8,r3
        0x2001765a:    4691        .F      MOV      r9,r2
        0x2001765c:    f000f9d0    ....    BL       $Ven$TT$L$$rom_hw_flash_release_read_enhanced ; 0x20017a00
        0x20017660:    4607        .F      MOV      r7,r0
        0x20017662:    4628        (F      MOV      r0,r5
        0x20017664:    2106        .!      MOVS     r1,#6
        0x20017666:    f44f62e0    O..b    MOV      r2,#0x700
        0x2001766a:    f000f979    ..y.    BL       $Ven$TT$L$$rom_hw_flash_send_command ; 0x20017960
        0x2001766e:    6da9        .m      LDR      r1,[r5,#0x58]
        0x20017670:    2c03        .,      CMP      r4,#3
        0x20017672:    f0410101    A...    ORR      r1,r1,#1
        0x20017676:    65a9        .e      STR      r1,[r5,#0x58]
        0x20017678:    66ae        .f      STR      r6,[r5,#0x68]
        0x2001767a:    bf84        ..      ITT      HI
        0x2001767c:    2010        .       MOVHI    r0,#0x10
        0x2001767e:    e8bd87f0    ....    POPHI    {r4-r10,pc}
        0x20017682:    ea400607    @...    ORR      r6,r0,r7
        0x20017686:    b260        `.      SXTB     r0,r4
        0x20017688:    a113        ..      ADR      r1,{pc}+0x50 ; 0x200176d8
        0x2001768a:    f8512020    Q.      LDR      r2,[r1,r0,LSL #2]
        0x2001768e:    a116        ..      ADR      r1,{pc}+0x5a ; 0x200176e8
        0x20017690:    f8511020    Q. .    LDR      r1,[r1,r0,LSL #2]
        0x20017694:    fa09f002    ....    LSL      r0,r9,r2
        0x20017698:    f2407217    @..r    MOV      r2,#0x717
        0x2001769c:    64e8        .d      STR      r0,[r5,#0x4c]
        0x2001769e:    4628        (F      MOV      r0,r5
        0x200176a0:    f2c00202    ....    MOVT     r2,#2
        0x200176a4:    f000f95c    ..\.    BL       $Ven$TT$L$$rom_hw_flash_send_command ; 0x20017960
        0x200176a8:    f38a8810    ....    MSR      PRIMASK,r10
        0x200176ac:    4306        .C      ORRS     r6,r6,r0
        0x200176ae:    d003        ..      BEQ      0x200176b8 ; patch_hw_flash_erase_suspendable + 160
        0x200176b0:    4630        0F      MOV      r0,r6
        0x200176b2:    e8bd87f0    ....    POP      {r4-r10,pc}
        0x200176b6:    bf00        ..      NOP      
        0x200176b8:    6f28        (o      LDR      r0,[r5,#0x70]
        0x200176ba:    07c0        ..      LSLS     r0,r0,#31
        0x200176bc:    d1fc        ..      BNE      0x200176b8 ; patch_hw_flash_erase_suspendable + 160
        0x200176be:    6da8        .m      LDR      r0,[r5,#0x58]
        0x200176c0:    4641        AF      MOV      r1,r8
        0x200176c2:    f0200001     ...    BIC      r0,r0,#1
        0x200176c6:    65a8        .e      STR      r0,[r5,#0x58]
        0x200176c8:    4628        (F      MOV      r0,r5
        0x200176ca:    f000f976    ..v.    BL       $Ven$TT$L$$rom_hw_flash_wait_idle ; 0x200179ba
        0x200176ce:    4606        .F      MOV      r6,r0
        0x200176d0:    4630        0F      MOV      r0,r6
        0x200176d2:    e8bd87f0    ....    POP      {r4-r10,pc}
        0x200176d6:    bf00        ..      NOP      
    $d.1
        0x200176d8:    00000008    ....    DCD    8
        0x200176dc:    0000000c    ....    DCD    12
        0x200176e0:    0000000f    ....    DCD    15
        0x200176e4:    00000010    ....    DCD    16
        0x200176e8:    03000081    ....    DCD    50331777
        0x200176ec:    03000020     ...    DCD    50331680
        0x200176f0:    03000052    R...    DCD    50331730
        0x200176f4:    030000d8    ....    DCD    50331864
    $t.2
    patch_hw_flash_write_bytes_in_page_suspendable
        0x200176f8:    e92d4ff0    -..O    PUSH     {r4-r11,lr}
        0x200176fc:    b081        ..      SUB      sp,sp,#4
        0x200176fe:    4616        .F      MOV      r6,r2
        0x20017700:    f2410200    A...    MOVW     r2,#0x1000
        0x20017704:    4682        .F      MOV      r10,r0
        0x20017706:    f4405080    @..P    ORR      r0,r0,#0x1000
        0x2001770a:    f2c50200    ....    MOVT     r2,#0x5000
        0x2001770e:    4290        .B      CMP      r0,r2
        0x20017710:    d142        B.      BNE      0x20017798 ; patch_hw_flash_write_bytes_in_page_suspendable + 160
        0x20017712:    2e00        ..      CMP      r6,#0
        0x20017714:    f04f0b01    O...    MOV      r11,#1
        0x20017718:    bf1c        ..      ITT      NE
        0x2001771a:    461d        .F      MOVNE    r5,r3
        0x2001771c:    2b00        .+      CMPNE    r3,#0
        0x2001771e:    d03d        =.      BEQ      0x2001779c ; patch_hw_flash_write_bytes_in_page_suspendable + 164
        0x20017720:    fa55f081    U...    UXTAB    r0,r5,r1
        0x20017724:    4688        .F      MOV      r8,r1
        0x20017726:    f5b07f80    ....    CMP      r0,#0x100
        0x2001772a:    f04f0b01    O...    MOV      r11,#1
        0x2001772e:    d835        5.      BHI      0x2001779c ; patch_hw_flash_write_bytes_in_page_suspendable + 164
        0x20017730:    f3ef8010    ....    MRS      r0,PRIMASK
        0x20017734:    9000        ..      STR      r0,[sp,#0]
        0x20017736:    f3ef8010    ....    MRS      r0,PRIMASK
        0x2001773a:    b672        r.      CPSID    i
        0x2001773c:    9f0a        ..      LDR      r7,[sp,#0x28]
        0x2001773e:    f64000a0    @...    MOVW     r0,#0x8a0
        0x20017742:    f6c040c8    ...@    MOVT     r0,#0xcc8
        0x20017746:    f8ca0064    ..d.    STR      r0,[r10,#0x64]
        0x2001774a:    f2401040    @.@.    MOVW     r0,#0x140
        0x2001774e:    f2c000c8    ....    MOVT     r0,#0xc8
        0x20017752:    f8ca005c    ..\.    STR      r0,[r10,#0x5c]
        0x20017756:    2005        .       MOVS     r0,#5
        0x20017758:    f8ca0060    ..`.    STR      r0,[r10,#0x60]
        0x2001775c:    4650        PF      MOV      r0,r10
        0x2001775e:    2106        .!      MOVS     r1,#6
        0x20017760:    f44f62e0    O..b    MOV      r2,#0x700
        0x20017764:    f000f8fc    ....    BL       $Ven$TT$L$$rom_hw_flash_send_command ; 0x20017960
        0x20017768:    f8da1058    ..X.    LDR      r1,[r10,#0x58]
        0x2001776c:    4681        .F      MOV      r9,r0
        0x2001776e:    f0410001    A...    ORR      r0,r1,#1
        0x20017772:    2f03        ./      CMP      r7,#3
        0x20017774:    f8ca0058    ..X.    STR      r0,[r10,#0x58]
        0x20017778:    f8cab068    ..h.    STR      r11,[r10,#0x68]
        0x2001777c:    d012        ..      BEQ      0x200177a4 ; patch_hw_flash_write_bytes_in_page_suspendable + 172
        0x2001777e:    2f02        ./      CMP      r7,#2
        0x20017780:    d01a        ..      BEQ      0x200177b8 ; patch_hw_flash_write_bytes_in_page_suspendable + 192
        0x20017782:    bb1f        ..      CBNZ     r7,0x200177cc ; patch_hw_flash_write_bytes_in_page_suspendable + 212
        0x20017784:    f2407017    @..p    MOV      r0,#0x717
        0x20017788:    f6cf70ff    ...p    MOVT     r0,#0xffff
        0x2001778c:    2102        .!      MOVS     r1,#2
        0x2001778e:    eb004205    ...B    ADD      r2,r0,r5,LSL #16
        0x20017792:    f2c03140    ..@1    MOVT     r1,#0x340
        0x20017796:    e01b        ..      B        0x200177d0 ; patch_hw_flash_write_bytes_in_page_suspendable + 216
        0x20017798:    f04f0b01    O...    MOV      r11,#1
        0x2001779c:    4658        XF      MOV      r0,r11
        0x2001779e:    b001        ..      ADD      sp,sp,#4
        0x200177a0:    e8bd8ff0    ....    POP      {r4-r11,pc}
        0x200177a4:    f2407017    @..p    MOV      r0,#0x717
        0x200177a8:    f6cf70ff    ...p    MOVT     r0,#0xffff
        0x200177ac:    eb004205    ...B    ADD      r2,r0,r5,LSL #16
        0x200177b0:    2132        2!      MOVS     r1,#0x32
        0x200177b2:    f2c03143    ..C1    MOVT     r1,#0x343
        0x200177b6:    e00b        ..      B        0x200177d0 ; patch_hw_flash_write_bytes_in_page_suspendable + 216
        0x200177b8:    f2407017    @..p    MOV      r0,#0x717
        0x200177bc:    f6cf70ff    ...p    MOVT     r0,#0xffff
        0x200177c0:    21a2        .!      MOVS     r1,#0xa2
        0x200177c2:    eb004205    ...B    ADD      r2,r0,r5,LSL #16
        0x200177c6:    f2c03142    ..B1    MOVT     r1,#0x342
        0x200177ca:    e001        ..      B        0x200177d0 ; patch_hw_flash_write_bytes_in_page_suspendable + 216
        0x200177cc:    2100        .!      MOVS     r1,#0
        0x200177ce:    2200        ."      MOVS     r2,#0
        0x200177d0:    2d04        .-      CMP      r5,#4
        0x200177d2:    46ac        .F      MOV      r12,r5
        0x200177d4:    bf28        (.      IT       CS
        0x200177d6:    f04f0c04    O...    MOVCS    r12,#4
        0x200177da:    f1bc0f01    ....    CMP      r12,#1
        0x200177de:    db0f        ..      BLT      0x20017800 ; patch_hw_flash_write_bytes_in_page_suspendable + 264
        0x200177e0:    2400        .$      MOVS     r4,#0
        0x200177e2:    2000        .       MOVS     r0,#0
        0x200177e4:    2700        .'      MOVS     r7,#0
        0x200177e6:    bf00        ..      NOP      
        0x200177e8:    f8163b01    ...;    LDRB     r3,[r6],#1
        0x200177ec:    00e4        ..      LSLS     r4,r4,#3
        0x200177ee:    3701        .7      ADDS     r7,#1
        0x200177f0:    40a3        .@      LSLS     r3,r3,r4
        0x200177f2:    b2bc        ..      UXTH     r4,r7
        0x200177f4:    4318        .C      ORRS     r0,r0,r3
        0x200177f6:    45a4        .E      CMP      r12,r4
        0x200177f8:    f1a50501    ....    SUB      r5,r5,#1
        0x200177fc:    dcf4        ..      BGT      0x200177e8 ; patch_hw_flash_write_bytes_in_page_suspendable + 240
        0x200177fe:    e000        ..      B        0x20017802 ; patch_hw_flash_write_bytes_in_page_suspendable + 266
        0x20017800:    2000        .       MOVS     r0,#0
        0x20017802:    f8ca804c    ..L.    STR      r8,[r10,#0x4c]
        0x20017806:    f8ca0004    ....    STR      r0,[r10,#4]
        0x2001780a:    4650        PF      MOV      r0,r10
        0x2001780c:    f000f8a8    ....    BL       $Ven$TT$L$$rom_hw_flash_send_command ; 0x20017960
        0x20017810:    0429        ).      LSLS     r1,r5,#16
        0x20017812:    ea400b09    @...    ORR      r11,r0,r9
        0x20017816:    d02b        +.      BEQ      0x20017870 ; patch_hw_flash_write_bytes_in_page_suspendable + 376
        0x20017818:    2700        .'      MOVS     r7,#0
        0x2001781a:    f04f0802    O...    MOV      r8,#2
        0x2001781e:    f2413987    A..9    MOV      r9,#0x1387
        0x20017822:    bf00        ..      NOP      
        0x20017824:    f8ca8010    ....    STR      r8,[r10,#0x10]
        0x20017828:    f8da0008    ....    LDR      r0,[r10,#8]
        0x2001782c:    0780        ..      LSLS     r0,r0,#30
        0x2001782e:    d414        ..      BMI      0x2001785a ; patch_hw_flash_write_bytes_in_page_suspendable + 354
        0x20017830:    b2a8        ..      UXTH     r0,r5
        0x20017832:    2300        .#      MOVS     r3,#0
        0x20017834:    2100        .!      MOVS     r1,#0
        0x20017836:    2200        ."      MOVS     r2,#0
        0x20017838:    2804        .(      CMP      r0,#4
        0x2001783a:    bf28        (.      IT       CS
        0x2001783c:    2004        .       MOVCS    r0,#4
        0x2001783e:    bf00        ..      NOP      
        0x20017840:    f8164b01    ...K    LDRB     r4,[r6],#1
        0x20017844:    00db        ..      LSLS     r3,r3,#3
        0x20017846:    3201        .2      ADDS     r2,#1
        0x20017848:    409c        .@      LSLS     r4,r4,r3
        0x2001784a:    b293        ..      UXTH     r3,r2
        0x2001784c:    4321        !C      ORRS     r1,r1,r4
        0x2001784e:    4298        .B      CMP      r0,r3
        0x20017850:    f1a50501    ....    SUB      r5,r5,#1
        0x20017854:    dcf4        ..      BGT      0x20017840 ; patch_hw_flash_write_bytes_in_page_suspendable + 328
        0x20017856:    f8ca1004    ....    STR      r1,[r10,#4]
        0x2001785a:    454f        OE      CMP      r7,r9
        0x2001785c:    d006        ..      BEQ      0x2001786c ; patch_hw_flash_write_bytes_in_page_suspendable + 372
        0x2001785e:    2001        .       MOVS     r0,#1
        0x20017860:    3701        .7      ADDS     r7,#1
        0x20017862:    f000f8a5    ....    BL       $Ven$TT$L$$rom_delay_us ; 0x200179b0
        0x20017866:    0428        (.      LSLS     r0,r5,#16
        0x20017868:    d1dc        ..      BNE      0x20017824 ; patch_hw_flash_write_bytes_in_page_suspendable + 300
        0x2001786a:    e001        ..      B        0x20017870 ; patch_hw_flash_write_bytes_in_page_suspendable + 376
        0x2001786c:    f04b0b03    K...    ORR      r11,r11,#3
        0x20017870:    9800        ..      LDR      r0,[sp,#0]
        0x20017872:    f3808810    ....    MSR      PRIMASK,r0
        0x20017876:    f1bb0f00    ....    CMP      r11,#0
        0x2001787a:    d18f        ..      BNE      0x2001779c ; patch_hw_flash_write_bytes_in_page_suspendable + 164
        0x2001787c:    9d0b        ..      LDR      r5,[sp,#0x2c]
        0x2001787e:    bf00        ..      NOP      
        0x20017880:    f8da0070    ..p.    LDR      r0,[r10,#0x70]
        0x20017884:    07c0        ..      LSLS     r0,r0,#31
        0x20017886:    d1fb        ..      BNE      0x20017880 ; patch_hw_flash_write_bytes_in_page_suspendable + 392
        0x20017888:    f8da0058    ..X.    LDR      r0,[r10,#0x58]
        0x2001788c:    f0200001     ...    BIC      r0,r0,#1
        0x20017890:    f8ca0058    ..X.    STR      r0,[r10,#0x58]
        0x20017894:    f8da00a4    ....    LDR      r0,[r10,#0xa4]
        0x20017898:    07c0        ..      LSLS     r0,r0,#31
        0x2001789a:    d00a        ..      BEQ      0x200178b2 ; patch_hw_flash_write_bytes_in_page_suspendable + 442
        0x2001789c:    f2413488    A..4    MOV      r4,#0x1388
        0x200178a0:    3c01        .<      SUBS     r4,#1
        0x200178a2:    d00c        ..      BEQ      0x200178be ; patch_hw_flash_write_bytes_in_page_suspendable + 454
        0x200178a4:    2001        .       MOVS     r0,#1
        0x200178a6:    f000f883    ....    BL       $Ven$TT$L$$rom_delay_us ; 0x200179b0
        0x200178aa:    f8da00a4    ....    LDR      r0,[r10,#0xa4]
        0x200178ae:    07c0        ..      LSLS     r0,r0,#31
        0x200178b0:    d1f6        ..      BNE      0x200178a0 ; patch_hw_flash_write_bytes_in_page_suspendable + 424
        0x200178b2:    4650        PF      MOV      r0,r10
        0x200178b4:    4629        )F      MOV      r1,r5
        0x200178b6:    f000f880    ....    BL       $Ven$TT$L$$rom_hw_flash_wait_idle ; 0x200179ba
        0x200178ba:    4683        .F      MOV      r11,r0
        0x200178bc:    e76e        n.      B        0x2001779c ; patch_hw_flash_write_bytes_in_page_suspendable + 164
        0x200178be:    f04f0b03    O...    MOV      r11,#3
        0x200178c2:    e76b        k.      B        0x2001779c ; patch_hw_flash_write_bytes_in_page_suspendable + 164
    patch_hw_flash_write_bytes_suspendable
        0x200178c4:    e92d4ff0    -..O    PUSH     {r4-r11,lr}
        0x200178c8:    b083        ..      SUB      sp,sp,#0xc
        0x200178ca:    f04f0a01    O...    MOV      r10,#1
        0x200178ce:    b152        R.      CBZ      r2,0x200178e6 ; patch_hw_flash_write_bytes_suspendable + 34
        0x200178d0:    b29c        ..      UXTH     r4,r3
        0x200178d2:    b144        D.      CBZ      r4,0x200178e6 ; patch_hw_flash_write_bytes_suspendable + 34
        0x200178d4:    9d0c        ..      LDR      r5,[sp,#0x30]
        0x200178d6:    460e        .F      MOV      r6,r1
        0x200178d8:    4629        )F      MOV      r1,r5
        0x200178da:    4690        .F      MOV      r8,r2
        0x200178dc:    4607        .F      MOV      r7,r0
        0x200178de:    f000f88f    ....    BL       $Ven$TT$L$$rom_hw_flash_release_read_enhanced ; 0x20017a00
        0x200178e2:    4682        .F      MOV      r10,r0
        0x200178e4:    b118        ..      CBZ      r0,0x200178ee ; patch_hw_flash_write_bytes_suspendable + 42
        0x200178e6:    4650        PF      MOV      r0,r10
        0x200178e8:    b003        ..      ADD      sp,sp,#0xc
        0x200178ea:    e8bd8ff0    ....    POP      {r4-r11,pc}
        0x200178ee:    b304        ..      CBZ      r4,0x20017932 ; patch_hw_flash_write_bytes_suspendable + 110
        0x200178f0:    9702        ..      STR      r7,[sp,#8]
        0x200178f2:    bf00        ..      NOP      
        0x200178f4:    b2f0        ..      UXTB     r0,r6
        0x200178f6:    f5c07b80    ...{    RSB      r11,r0,#0x100
        0x200178fa:    455c        \E      CMP      r4,r11
        0x200178fc:    bf38        8.      IT       CC
        0x200178fe:    46a3        .F      MOVCC    r11,r4
        0x20017900:    fa1ff78b    ....    UXTH     r7,r11
        0x20017904:    46a9        .F      MOV      r9,r5
        0x20017906:    9500        ..      STR      r5,[sp,#0]
        0x20017908:    9802        ..      LDR      r0,[sp,#8]
        0x2001790a:    9d0d        ..      LDR      r5,[sp,#0x34]
        0x2001790c:    4631        1F      MOV      r1,r6
        0x2001790e:    4642        BF      MOV      r2,r8
        0x20017910:    463b        ;F      MOV      r3,r7
        0x20017912:    9501        ..      STR      r5,[sp,#4]
        0x20017914:    f7fffef0    ....    BL       patch_hw_flash_write_bytes_in_page_suspendable ; 0x200176f8
        0x20017918:    f1ba0f00    ....    CMP      r10,#0
        0x2001791c:    d1e3        ..      BNE      0x200178e6 ; patch_hw_flash_write_bytes_suspendable + 34
        0x2001791e:    fa16f68b    ....    UXTAH    r6,r6,r11
        0x20017922:    fa18f88b    ....    UXTAH    r8,r8,r11
        0x20017926:    1be4        ..      SUBS     r4,r4,r7
        0x20017928:    464d        MF      MOV      r5,r9
        0x2001792a:    d1e3        ..      BNE      0x200178f4 ; patch_hw_flash_write_bytes_suspendable + 48
        0x2001792c:    f04f0a00    O...    MOV      r10,#0
        0x20017930:    e7d9        ..      B        0x200178e6 ; patch_hw_flash_write_bytes_suspendable + 34
        0x20017932:    f04f0a00    O...    MOV      r10,#0
        0x20017936:    e7d6        ..      B        0x200178e6 ; patch_hw_flash_write_bytes_suspendable + 34
    $t
    $Ven$TT$L$$rom_hw_crg_get_sys_clk_src
        0x20017938:    f6472c69    G.i,    MOV      r12,#0x7a69
        0x2001793c:    f2c00c00    ....    MOVT     r12,#0
        0x20017940:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_sys_ctrl_read_com_reg
        0x20017942:    f24c3c3d    L.=<    MOV      r12,#0xc33d
        0x20017946:    f2c00c00    ....    MOVT     r12,#0
        0x2001794a:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hal_pmu_set_sys_clk_src
        0x2001794c:    f6455c29    E.)\    MOV      r12,#0x5d29
        0x20017950:    f2c00c00    ....    MOVT     r12,#0
        0x20017954:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_cache_init
        0x20017956:    f2473c1d    G..<    MOV      r12,#0x731d
        0x2001795a:    f2c00c00    ....    MOVT     r12,#0
        0x2001795e:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_send_command
        0x20017960:    f6486c45    H.El    MOV      r12,#0x8e45
        0x20017964:    f2c00c00    ....    MOVT     r12,#0
        0x20017968:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_read_status
        0x2001796a:    f6483c81    H..<    MOV      r12,#0x8b81
        0x2001796e:    f2c00c00    ....    MOVT     r12,#0
        0x20017972:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_write_status
        0x20017974:    f2492c99    I..,    MOV      r12,#0x9299
        0x20017978:    f2c00c00    ....    MOVT     r12,#0
        0x2001797c:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_read_status_high
        0x2001797e:    f6484c75    H.uL    MOV      r12,#0x8c75
        0x20017982:    f2c00c00    ....    MOVT     r12,#0
        0x20017986:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_read_status_low
        0x20017988:    f6485c0d    H..\    MOV      r12,#0x8d0d
        0x2001798c:    f2c00c00    ....    MOVT     r12,#0
        0x20017990:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_set_quad_enable
        0x20017992:    f6487cf5    H..|    MOV      r12,#0x8ff5
        0x20017996:    f2c00c00    ....    MOVT     r12,#0
        0x2001799a:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_exit_abnormal_state
        0x2001799c:    f6481c3d    H.=.    MOV      r12,#0x893d
        0x200179a0:    f2c00c00    ....    MOVT     r12,#0
        0x200179a4:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_get_id
        0x200179a6:    f6481c75    H.u.    MOV      r12,#0x8975
        0x200179aa:    f2c00c00    ....    MOVT     r12,#0
        0x200179ae:    4760        `G      BX       r12
    $Ven$TT$L$$rom_delay_us
        0x200179b0:    f2447c81    D..|    MOV      r12,#0x4781
        0x200179b4:    f2c00c00    ....    MOVT     r12,#0
        0x200179b8:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_wait_idle
        0x200179ba:    f2490c99    I...    MOV      r12,#0x9099
        0x200179be:    f2c00c00    ....    MOVT     r12,#0
        0x200179c2:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_enter_deep_power_down
        0x200179c4:    f6480c79    H.y.    MOV      r12,#0x8879
        0x200179c8:    f2c00c00    ....    MOVT     r12,#0
        0x200179cc:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_release_deep_power_down
        0x200179ce:    f6485ca5    H..\    MOV      r12,#0x8da5
        0x200179d2:    f2c00c00    ....    MOVT     r12,#0
        0x200179d6:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_erase
        0x200179d8:    f6480ca1    H...    MOV      r12,#0x88a1
        0x200179dc:    f2c00c00    ....    MOVT     r12,#0
        0x200179e0:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_chip_erase
        0x200179e2:    f6480c01    H...    MOV      r12,#0x8801
        0x200179e6:    f2c00c00    ....    MOVT     r12,#0
        0x200179ea:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_write_bytes
        0x200179ec:    f2490cd9    I...    MOV      r12,#0x90d9
        0x200179f0:    f2c00c00    ....    MOVT     r12,#0
        0x200179f4:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_read_bytes
        0x200179f6:    f6482c9d    H..,    MOV      r12,#0x8a9d
        0x200179fa:    f2c00c00    ....    MOVT     r12,#0
        0x200179fe:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_flash_release_read_enhanced
        0x20017a00:    f6485cc1    H..\    MOV      r12,#0x8dc1
        0x20017a04:    f2c00c00    ....    MOVT     r12,#0
        0x20017a08:    4760        `G      BX       r12
        0x20017a0a:    0000        ..      MOVS     r0,r0

** Section #7 'RAM_MP_DATA' (SHT_NOBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 12 bytes (alignment 4)
    Address: 0x2001f000


** Section #8 'RAM_MP_STACK_HEAP' (SHT_NOBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 4096 bytes (alignment 8)
    Address: 0x20026000


** Section #9 '.debug_abbrev' (SHT_PROGBITS)
    Size   : 2146 bytes


** Section #10 '.debug_frame' (SHT_PROGBITS)
    Size   : 2416 bytes


** Section #11 '.debug_info' (SHT_PROGBITS)
    Size   : 12668 bytes


** Section #12 '.debug_line' (SHT_PROGBITS)
    Size   : 5267 bytes


** Section #13 '.debug_loc' (SHT_PROGBITS)
    Size   : 4289 bytes


** Section #14 '.debug_str' (SHT_PROGBITS)
    Size   : 13524 bytes


** Section #15 '.debug_ranges' (SHT_PROGBITS)
    Size   : 200 bytes


** Section #16 '.symtab' (SHT_SYMTAB)
    Size   : 18512 bytes (alignment 4)
    String table #17 '.strtab'
    Last local symbol no. 123


** Section #17 '.strtab' (SHT_STRTAB)
    Size   : 27596 bytes


** Section #18 '.note' (SHT_NOTE)
    Size   : 48 bytes (alignment 4)


** Section #19 '.comment' (SHT_PROGBITS)
    Size   : 1540 bytes


** Section #20 '.shstrtab' (SHT_STRTAB)
    Size   : 236 bytes


