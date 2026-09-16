
========================================================================

** ELF Header Information

    File Name: .\Objects\gpio.axf

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
    Component: Arm Compiler for Embedded 6.24 Tool: armasm [5f371400]
    Component: Arm Compiler for Embedded 6.24 Tool: armlink [5f371500]

    Header size: 52 bytes (0x34)
    Program header entry size: 32 bytes (0x20)
    Section header entry size: 40 bytes (0x28)

    Program header entries: 2
    Section header entries: 21

    Program header offset: 84324 (0x00014964)
    Section header offset: 84388 (0x000149a4)

    Section header string table index: 20

========================================================================

** Program header #0 (PT_LOAD) [PF_R]
    Size : 4096 bytes
    Virtual address: 0x10000000 (Alignment 4)


====================================

** Program header #1 (PT_LOAD) [PF_X + PF_W + PF_R + PF_ARM_ENTRY]
    Size : 10208 bytes (5700 bytes in file)
    Virtual address: 0x10002000 (Alignment 512)


========================================================================

** Section #1 'BOOT2_CODE' (SHT_PROGBITS) [SHF_ALLOC]
    Size   : 4096 bytes
    Address: 0x10000000


** Section #2 'INIT' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 752 bytes (alignment 4)
    Address: 0x10002000

    $d.realdata
    RESET
    __Vectors
        0x10002000:    20010000    ...     DCD    536936448
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
        0x10002090:    20003201    .2.     DCD    536883713
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
        0x10002140:    f8dfd00c    ....    LDR      sp,__lit__00000000 ; [0x10002150] = 0x20010000
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
        0x10002148:    4800        .H      LDR      r0,[pc,#0] ; [0x1000214c] = 0x100028cd
        0x1000214a:    4700        .G      BX       r0
    $d
        0x1000214c:    100028cd    .(..    DCD    268445901
    .ARM.Collect$$$$00002712
    __lit__00000000
    .ARM.Collect$$$$0000000D
    .ARM.Collect$$$$0000000F
    __rt_final_cpp
    __rt_final_exit
        0x10002150:    20010000    ...     DCD    536936448
    $t
    .text
    $v0
    Reset_Handler
        0x10002154:    482e        .H      LDR      r0,[pc,#184] ; [0x10002210] = 0x20010000
        0x10002156:    f3808808    ....    MSR      MSP,r0
        0x1000215a:    482e        .H      LDR      r0,[pc,#184] ; [0x10002214] = 0x2000f000
        0x1000215c:    f380880a    ....    MSR      MSPLIM,r0
        0x10002160:    482d        -H      LDR      r0,[pc,#180] ; [0x10002218] = 0x10002259
        0x10002162:    4780        .G      BLX      r0
        0x10002164:    482d        -H      LDR      r0,[pc,#180] ; [0x1000221c] = 0x10002141
        0x10002166:    4700        .G      BX       r0
    NMI_Handler
        0x10002168:    ea5f000e    _...    MOVS     r0,lr
        0x1000216c:    f3ef8108    ....    MRS      r1,MSP
        0x10002170:    f3ef8209    ....    MRS      r2,PSP
        0x10002174:    4b2a        *K      LDR      r3,[pc,#168] ; [0x10002220] = 0x100026c1
        0x10002176:    4798        .G      BLX      r3
        0x10002178:    e7fe        ..      B        0x10002178 ; NMI_Handler + 16
    HardFault_Handler
        0x1000217a:    ea5f000e    _...    MOVS     r0,lr
        0x1000217e:    f3ef8108    ....    MRS      r1,MSP
        0x10002182:    f3ef8209    ....    MRS      r2,PSP
        0x10002186:    4b27        'K      LDR      r3,[pc,#156] ; [0x10002224] = 0x10002391
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
        0x100021c2:    e7fe        ..      B        0x100021c2 ; TIMER0_IRQ_Handler + 2
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
        0x10002210:    20010000    ...     DCD    536936448
        0x10002214:    2000f000    ...     DCD    536932352
        0x10002218:    10002259    Y"..    DCD    268444249
        0x1000221c:    10002141    A!..    DCD    268443969
        0x10002220:    100026c1    .&..    DCD    268445377
        0x10002224:    10002391    .#..    DCD    268444561
    $t
    .text
    __scatterload
    __scatterload_rt2
        0x10002228:    b51c        ..      PUSH     {r2-r4,lr}
        0x1000222a:    4809        .H      LDR      r0,[pc,#36] ; [0x10002250] = 0x100022c0
        0x1000222c:    9000        ..      STR      r0,[sp,#0]
        0x1000222e:    4809        .H      LDR      r0,[pc,#36] ; [0x10002254] = 0x100022f0
        0x10002230:    9001        ..      STR      r0,[sp,#4]
        0x10002232:    4605        .F      MOV      r5,r0
        0x10002234:    9c00        ..      LDR      r4,[sp,#0]
        0x10002236:    e006        ..      B        0x10002246 ; __scatterload + 30
        0x10002238:    68e0        .h      LDR      r0,[r4,#0xc]
        0x1000223a:    f0400301    @...    ORR      r3,r0,#1
        0x1000223e:    e8940007    ....    LDM      r4,{r0-r2}
        0x10002242:    4798        .G      BLX      r3
        0x10002244:    3410        .4      ADDS     r4,r4,#0x10
        0x10002246:    42ac        .B      CMP      r4,r5
        0x10002248:    d3f6        ..      BCC      0x10002238 ; __scatterload + 16
        0x1000224a:    f7ffff7d    ..}.    BL       __main_after_scatterload ; 0x10002148
    $d
        0x1000224e:    0000        ..      DCW    0
        0x10002250:    100022c0    ."..    DCD    268444352
        0x10002254:    100022f0    ."..    DCD    268444400
    $t
    SystemInit
        0x10002258:    f2420200    B...    MOVW     r2,#0x2000
        0x1000225c:    f2430100    C...    MOVW     r1,#0x3000
        0x10002260:    2000        .       MOVS     r0,#0
        0x10002262:    f2c10200    ....    MOVT     r2,#0x1000
        0x10002266:    f2c20100    ....    MOVT     r1,#0x2000
        0x1000226a:    bf00        ..      NOP      
        0x1000226c:    f8523020    R. 0    LDR      r3,[r2,r0,LSL #2]
        0x10002270:    f8413020    A. 0    STR      r3,[r1,r0,LSL #2]
        0x10002274:    3001        .0      ADDS     r0,#1
        0x10002276:    284b        K(      CMP      r0,#0x4b
        0x10002278:    d1f8        ..      BNE      0x1000226c ; SystemInit + 20
        0x1000227a:    f64e5014    N..P    MOV      r0,#0xed14
        0x1000227e:    f2ce0000    ....    MOVT     r0,#0xe000
        0x10002282:    f8401c0c    @...    STR      r1,[r0,#-0xc]
        0x10002286:    6f41        Ao      LDR      r1,[r0,#0x74]
        0x10002288:    f4410170    A.p.    ORR      r1,r1,#0xf00000
        0x1000228c:    6741        Ag      STR      r1,[r0,#0x74]
        0x1000228e:    6801        .h      LDR      r1,[r0,#0]
        0x10002290:    f0410110    A...    ORR      r1,r1,#0x10
        0x10002294:    6001        .`      STR      r1,[r0,#0]
        0x10002296:    6801        .h      LDR      r1,[r0,#0]
        0x10002298:    f4417180    A..q    ORR      r1,r1,#0x100
        0x1000229c:    6001        .`      STR      r1,[r0,#0]
        0x1000229e:    4770        pG      BX       lr
    i.__scatterload_copy
    __scatterload_copy
        0x100022a0:    e002        ..      B        0x100022a8 ; __scatterload_copy + 8
        0x100022a2:    c808        ..      LDM      r0!,{r3}
        0x100022a4:    1f12        ..      SUBS     r2,r2,#4
        0x100022a6:    c108        ..      STM      r1!,{r3}
        0x100022a8:    2a00        .*      CMP      r2,#0
        0x100022aa:    d1fa        ..      BNE      0x100022a2 ; __scatterload_copy + 2
        0x100022ac:    4770        pG      BX       lr
    i.__scatterload_null
    __scatterload_null
        0x100022ae:    4770        pG      BX       lr
    i.__scatterload_zeroinit
    __scatterload_zeroinit
        0x100022b0:    2000        .       MOVS     r0,#0
        0x100022b2:    e001        ..      B        0x100022b8 ; __scatterload_zeroinit + 8
        0x100022b4:    c101        ..      STM      r1!,{r0}
        0x100022b6:    1f12        ..      SUBS     r2,r2,#4
        0x100022b8:    2a00        .*      CMP      r2,#0
        0x100022ba:    d1fb        ..      BNE      0x100022b4 ; __scatterload_zeroinit + 4
        0x100022bc:    4770        pG      BX       lr
        0x100022be:    0000        ..      MOVS     r0,r0
    $d.realdata
    Region$$Table$$Base
        0x100022c0:    100035ac    .5..    DCD    268449196
        0x100022c4:    20003200    .2.     DCD    536883712
        0x100022c8:    00000094    ....    DCD    148
        0x100022cc:    100022a0    ."..    DCD    268444320
        0x100022d0:    10003640    @6..    DCD    268449344
        0x100022d4:    2000b000    ...     DCD    536915968
        0x100022d8:    00000004    ....    DCD    4
        0x100022dc:    100022a0    ."..    DCD    268444320
        0x100022e0:    10003644    D6..    DCD    268449348
        0x100022e4:    2000b004    ...     DCD    536915972
        0x100022e8:    00000018    ....    DCD    24
        0x100022ec:    100022b0    ."..    DCD    268444336
    Region$$Table$$Limit

** Section #3 'FLASH_CACHE_CODE' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 4796 bytes (alignment 4)
    Address: 0x100022f0

    $t
    .text
    __aeabi_uldivmod
        0x100022f0:    e92d5ff0    -.._    PUSH     {r4-r12,lr}
        0x100022f4:    4605        .F      MOV      r5,r0
        0x100022f6:    2000        .       MOVS     r0,#0
        0x100022f8:    4692        .F      MOV      r10,r2
        0x100022fa:    469b        .F      MOV      r11,r3
        0x100022fc:    4688        .F      MOV      r8,r1
        0x100022fe:    4606        .F      MOV      r6,r0
        0x10002300:    4681        .F      MOV      r9,r0
        0x10002302:    2440        @$      MOVS     r4,#0x40
        0x10002304:    e01b        ..      B        0x1000233e ; __aeabi_uldivmod + 78
        0x10002306:    4628        (F      MOV      r0,r5
        0x10002308:    4641        AF      MOV      r1,r8
        0x1000230a:    4647        GF      MOV      r7,r8
        0x1000230c:    4622        "F      MOV      r2,r4
        0x1000230e:    f000f82f    ../.    BL       __aeabi_llsr ; 0x10002370
        0x10002312:    4653        SF      MOV      r3,r10
        0x10002314:    465a        ZF      MOV      r2,r11
        0x10002316:    1ac0        ..      SUBS     r0,r0,r3
        0x10002318:    4191        .A      SBCS     r1,r1,r2
        0x1000231a:    d310        ..      BCC      0x1000233e ; __aeabi_uldivmod + 78
        0x1000231c:    4611        .F      MOV      r1,r2
        0x1000231e:    4618        .F      MOV      r0,r3
        0x10002320:    4622        "F      MOV      r2,r4
        0x10002322:    f000f816    ....    BL       __aeabi_llsl ; 0x10002352
        0x10002326:    1a2d        -.      SUBS     r5,r5,r0
        0x10002328:    eb670801    g...    SBC      r8,r7,r1
        0x1000232c:    464f        OF      MOV      r7,r9
        0x1000232e:    4622        "F      MOV      r2,r4
        0x10002330:    2001        .       MOVS     r0,#1
        0x10002332:    2100        .!      MOVS     r1,#0
        0x10002334:    f000f80d    ....    BL       __aeabi_llsl ; 0x10002352
        0x10002338:    eb170900    ....    ADDS     r9,r7,r0
        0x1000233c:    414e        NA      ADCS     r6,r6,r1
        0x1000233e:    1e20         .      SUBS     r0,r4,#0
        0x10002340:    f1a40401    ....    SUB      r4,r4,#1
        0x10002344:    dcdf        ..      BGT      0x10002306 ; __aeabi_uldivmod + 22
        0x10002346:    4648        HF      MOV      r0,r9
        0x10002348:    4631        1F      MOV      r1,r6
        0x1000234a:    462a        *F      MOV      r2,r5
        0x1000234c:    4643        CF      MOV      r3,r8
        0x1000234e:    e8bd9ff0    ....    POP      {r4-r12,pc}
    .text
    __aeabi_llsl
    _ll_shift_l
        0x10002352:    2a20         *      CMP      r2,#0x20
        0x10002354:    db04        ..      BLT      0x10002360 ; __aeabi_llsl + 14
        0x10002356:    3a20         :      SUBS     r2,r2,#0x20
        0x10002358:    fa00f102    ....    LSL      r1,r0,r2
        0x1000235c:    2000        .       MOVS     r0,#0
        0x1000235e:    4770        pG      BX       lr
        0x10002360:    4091        .@      LSLS     r1,r1,r2
        0x10002362:    f1c20320    .. .    RSB      r3,r2,#0x20
        0x10002366:    fa20f303     ...    LSR      r3,r0,r3
        0x1000236a:    4319        .C      ORRS     r1,r1,r3
        0x1000236c:    4090        .@      LSLS     r0,r0,r2
        0x1000236e:    4770        pG      BX       lr
    .text
    __aeabi_llsr
    _ll_ushift_r
        0x10002370:    2a20         *      CMP      r2,#0x20
        0x10002372:    db04        ..      BLT      0x1000237e ; __aeabi_llsr + 14
        0x10002374:    3a20         :      SUBS     r2,r2,#0x20
        0x10002376:    fa21f002    !...    LSR      r0,r1,r2
        0x1000237a:    2100        .!      MOVS     r1,#0
        0x1000237c:    4770        pG      BX       lr
        0x1000237e:    fa21f302    !...    LSR      r3,r1,r2
        0x10002382:    40d0        .@      LSRS     r0,r0,r2
        0x10002384:    f1c20220    .. .    RSB      r2,r2,#0x20
        0x10002388:    4091        .@      LSLS     r1,r1,r2
        0x1000238a:    4308        .C      ORRS     r0,r0,r1
        0x1000238c:    4619        .F      MOV      r1,r3
        0x1000238e:    4770        pG      BX       lr
    HardFault_Handler_Proc
        0x10002390:    b082        ..      SUB      sp,sp,#8
        0x10002392:    f64e5728    N.(W    MOV      r7,#0xed28
        0x10002396:    4615        .F      MOV      r5,r2
        0x10002398:    460c        .F      MOV      r4,r1
        0x1000239a:    4606        .F      MOV      r6,r0
        0x1000239c:    f2ce0700    ....    MOVT     r7,#0xe000
        0x100023a0:    f000fa28    ..(.    BL       app_debug_reinit ; 0x100027f4
        0x100023a4:    f2431030    C.0.    MOV      r0,#0x3130
        0x100023a8:    f3ef8108    ....    MRS      r1,MSP
        0x100023ac:    f2c10000    ....    MOVT     r0,#0x1000
        0x100023b0:    f000fbd4    ....    BL       __0printf$8 ; 0x10002b5c
        0x100023b4:    0730        0.      LSLS     r0,r6,#28
        0x100023b6:    f2435075    C.uP    MOV      r0,#0x3575
        0x100023ba:    f2435194    C..Q    MOV      r1,#0x3594
        0x100023be:    f2c10000    ....    MOVT     r0,#0x1000
        0x100023c2:    f2c10100    ....    MOVT     r1,#0x1000
        0x100023c6:    bf58        X.      IT       PL
        0x100023c8:    4608        .F      MOVPL    r0,r1
        0x100023ca:    f000fe09    ....    BL       puts ; 0x10002fe0
        0x100023ce:    f0160004    ....    ANDS     r0,r6,#4
        0x100023d2:    f2435186    C..Q    MOV      r1,#0x3586
        0x100023d6:    a092        ..      ADR      r0,{pc}+0x24a ; 0x10002620
        0x100023d8:    f2c10100    ....    MOVT     r1,#0x1000
        0x100023dc:    bf0c        ..      ITE      EQ
        0x100023de:    4608        .F      MOVEQ    r0,r1
        0x100023e0:    462c        ,F      MOVNE    r4,r5
        0x100023e2:    f000fdfd    ....    BL       puts ; 0x10002fe0
        0x100023e6:    a092        ..      ADR      r0,{pc}+0x24a ; 0x10002630
        0x100023e8:    f000fdfa    ....    BL       puts ; 0x10002fe0
        0x100023ec:    6821        !h      LDR      r1,[r4,#0]
        0x100023ee:    a094        ..      ADR      r0,{pc}+0x252 ; 0x10002640
        0x100023f0:    f000fbb4    ....    BL       __0printf$8 ; 0x10002b5c
        0x100023f4:    6861        ah      LDR      r1,[r4,#4]
        0x100023f6:    a096        ..      ADR      r0,{pc}+0x25a ; 0x10002650
        0x100023f8:    f000fbb0    ....    BL       __0printf$8 ; 0x10002b5c
        0x100023fc:    68a1        .h      LDR      r1,[r4,#8]
        0x100023fe:    a098        ..      ADR      r0,{pc}+0x262 ; 0x10002660
        0x10002400:    f000fbac    ....    BL       __0printf$8 ; 0x10002b5c
        0x10002404:    68e1        .h      LDR      r1,[r4,#0xc]
        0x10002406:    a09a        ..      ADR      r0,{pc}+0x26a ; 0x10002670
        0x10002408:    f000fba8    ....    BL       __0printf$8 ; 0x10002b5c
        0x1000240c:    6921        !i      LDR      r1,[r4,#0x10]
        0x1000240e:    a09c        ..      ADR      r0,{pc}+0x272 ; 0x10002680
        0x10002410:    f000fba4    ....    BL       __0printf$8 ; 0x10002b5c
        0x10002414:    6961        ai      LDR      r1,[r4,#0x14]
        0x10002416:    a09e        ..      ADR      r0,{pc}+0x27a ; 0x10002690
        0x10002418:    f000fba0    ....    BL       __0printf$8 ; 0x10002b5c
        0x1000241c:    69a1        .i      LDR      r1,[r4,#0x18]
        0x1000241e:    a0a0        ..      ADR      r0,{pc}+0x282 ; 0x100026a0
        0x10002420:    f000fb9c    ....    BL       __0printf$8 ; 0x10002b5c
        0x10002424:    69e1        .i      LDR      r1,[r4,#0x1c]
        0x10002426:    a0a2        ..      ADR      r0,{pc}+0x28a ; 0x100026b0
        0x10002428:    f000fb98    ....    BL       __0printf$8 ; 0x10002b5c
        0x1000242c:    69a0        .i      LDR      r0,[r4,#0x18]
        0x1000242e:    9001        ..      STR      r0,[sp,#4]
        0x10002430:    6878        xh      LDR      r0,[r7,#4]
        0x10002432:    0780        ..      LSLS     r0,r0,#30
        0x10002434:    d505        ..      BPL      0x10002442 ; HardFault_Handler_Proc + 178
        0x10002436:    f2435049    C.IP    MOV      r0,#0x3549
        0x1000243a:    f2c10000    ....    MOVT     r0,#0x1000
        0x1000243e:    f000fdcf    ....    BL       puts ; 0x10002fe0
        0x10002442:    6878        xh      LDR      r0,[r7,#4]
        0x10002444:    f1b03fff    ...?    CMP      r0,#0xffffffff
        0x10002448:    dc05        ..      BGT      0x10002456 ; HardFault_Handler_Proc + 198
        0x1000244a:    f2435062    C.bP    MOV      r0,#0x3562
        0x1000244e:    f2c10000    ....    MOVT     r0,#0x1000
        0x10002452:    f000fdc5    ....    BL       puts ; 0x10002fe0
        0x10002456:    6878        xh      LDR      r0,[r7,#4]
        0x10002458:    0040        @.      LSLS     r0,r0,#1
        0x1000245a:    f14080dc    @...    BPL.W    0x10002616 ; HardFault_Handler_Proc + 646
        0x1000245e:    f2435035    C.5P    MOV      r0,#0x3535
        0x10002462:    f2c10000    ....    MOVT     r0,#0x1000
        0x10002466:    f000fdbb    ....    BL       puts ; 0x10002fe0
        0x1000246a:    6838        8h      LDR      r0,[r7,#0]
        0x1000246c:    0600        ..      LSLS     r0,r0,#24
        0x1000246e:    d03e        >.      BEQ      0x100024ee ; HardFault_Handler_Proc + 350
        0x10002470:    f2435017    C..P    MOV      r0,#0x3517
        0x10002474:    f2c10000    ....    MOVT     r0,#0x1000
        0x10002478:    f000fdb2    ....    BL       puts ; 0x10002fe0
        0x1000247c:    6838        8h      LDR      r0,[r7,#0]
        0x1000247e:    07c0        ..      LSLS     r0,r0,#31
        0x10002480:    d006        ..      BEQ      0x10002490 ; HardFault_Handler_Proc + 256
        0x10002482:    9901        ..      LDR      r1,[sp,#4]
        0x10002484:    f24300ae    C...    MOV      r0,#0x30ae
        0x10002488:    f2c10000    ....    MOVT     r0,#0x1000
        0x1000248c:    f000fb66    ..f.    BL       __0printf$8 ; 0x10002b5c
        0x10002490:    6838        8h      LDR      r0,[r7,#0]
        0x10002492:    0780        ..      LSLS     r0,r0,#30
        0x10002494:    d510        ..      BPL      0x100024b8 ; HardFault_Handler_Proc + 296
        0x10002496:    9901        ..      LDR      r1,[sp,#4]
        0x10002498:    f243003b    C.;.    MOV      r0,#0x303b
        0x1000249c:    f2c10000    ....    MOVT     r0,#0x1000
        0x100024a0:    f000fb5c    ..\.    BL       __0printf$8 ; 0x10002b5c
        0x100024a4:    6838        8h      LDR      r0,[r7,#0]
        0x100024a6:    0600        ..      LSLS     r0,r0,#24
        0x100024a8:    d506        ..      BPL      0x100024b8 ; HardFault_Handler_Proc + 296
        0x100024aa:    68f9        .h      LDR      r1,[r7,#0xc]
        0x100024ac:    f2431023    C.#.    MOV      r0,#0x3123
        0x100024b0:    f2c10000    ....    MOVT     r0,#0x1000
        0x100024b4:    f000fb52    ..R.    BL       __0printf$8 ; 0x10002b5c
        0x100024b8:    6838        8h      LDR      r0,[r7,#0]
        0x100024ba:    0700        ..      LSLS     r0,r0,#28
        0x100024bc:    d505        ..      BPL      0x100024ca ; HardFault_Handler_Proc + 314
        0x100024be:    f24330d9    C..0    MOV      r0,#0x33d9
        0x100024c2:    f2c10000    ....    MOVT     r0,#0x1000
        0x100024c6:    f000fd8b    ....    BL       puts ; 0x10002fe0
        0x100024ca:    6838        8h      LDR      r0,[r7,#0]
        0x100024cc:    06c0        ..      LSLS     r0,r0,#27
        0x100024ce:    d505        ..      BPL      0x100024dc ; HardFault_Handler_Proc + 332
        0x100024d0:    f243402e    C..@    MOV      r0,#0x342e
        0x100024d4:    f2c10000    ....    MOVT     r0,#0x1000
        0x100024d8:    f000fd82    ....    BL       puts ; 0x10002fe0
        0x100024dc:    6838        8h      LDR      r0,[r7,#0]
        0x100024de:    0680        ..      LSLS     r0,r0,#26
        0x100024e0:    d505        ..      BPL      0x100024ee ; HardFault_Handler_Proc + 350
        0x100024e2:    f243303a    C.:0    MOV      r0,#0x333a
        0x100024e6:    f2c10000    ....    MOVT     r0,#0x1000
        0x100024ea:    f000fd79    ..y.    BL       puts ; 0x10002fe0
        0x100024ee:    6838        8h      LDR      r0,[r7,#0]
        0x100024f0:    f4104f7f    ...O    TST      r0,#0xff00
        0x100024f4:    d046        F.      BEQ      0x10002584 ; HardFault_Handler_Proc + 500
        0x100024f6:    f2435057    C.WP    MOV      r0,#0x3557
        0x100024fa:    f2c10000    ....    MOVT     r0,#0x1000
        0x100024fe:    f000fd6f    ..o.    BL       puts ; 0x10002fe0
        0x10002502:    6838        8h      LDR      r0,[r7,#0]
        0x10002504:    05c0        ..      LSLS     r0,r0,#23
        0x10002506:    d505        ..      BPL      0x10002514 ; HardFault_Handler_Proc + 388
        0x10002508:    f2432064    C.d     MOV      r0,#0x3264
        0x1000250c:    f2c10000    ....    MOVT     r0,#0x1000
        0x10002510:    f000fd66    ..f.    BL       puts ; 0x10002fe0
        0x10002514:    6838        8h      LDR      r0,[r7,#0]
        0x10002516:    0580        ..      LSLS     r0,r0,#22
        0x10002518:    d510        ..      BPL      0x1000253c ; HardFault_Handler_Proc + 428
        0x1000251a:    9901        ..      LDR      r1,[sp,#4]
        0x1000251c:    f2430004    C...    MOV      r0,#0x3004
        0x10002520:    f2c10000    ....    MOVT     r0,#0x1000
        0x10002524:    f000fb1a    ....    BL       __0printf$8 ; 0x10002b5c
        0x10002528:    6838        8h      LDR      r0,[r7,#0]
        0x1000252a:    0400        ..      LSLS     r0,r0,#16
        0x1000252c:    d506        ..      BPL      0x1000253c ; HardFault_Handler_Proc + 428
        0x1000252e:    6939        9i      LDR      r1,[r7,#0x10]
        0x10002530:    f2431023    C.#.    MOV      r0,#0x3123
        0x10002534:    f2c10000    ....    MOVT     r0,#0x1000
        0x10002538:    f000fb10    ....    BL       __0printf$8 ; 0x10002b5c
        0x1000253c:    6838        8h      LDR      r0,[r7,#0]
        0x1000253e:    0540        @.      LSLS     r0,r0,#21
        0x10002540:    d505        ..      BPL      0x1000254e ; HardFault_Handler_Proc + 446
        0x10002542:    f24310fa    C...    MOV      r0,#0x31fa
        0x10002546:    f2c10000    ....    MOVT     r0,#0x1000
        0x1000254a:    f000fd49    ..I.    BL       puts ; 0x10002fe0
        0x1000254e:    6838        8h      LDR      r0,[r7,#0]
        0x10002550:    0500        ..      LSLS     r0,r0,#20
        0x10002552:    d505        ..      BPL      0x10002560 ; HardFault_Handler_Proc + 464
        0x10002554:    f2434081    C..@    MOV      r0,#0x3481
        0x10002558:    f2c10000    ....    MOVT     r0,#0x1000
        0x1000255c:    f000fd40    ..@.    BL       puts ; 0x10002fe0
        0x10002560:    6838        8h      LDR      r0,[r7,#0]
        0x10002562:    04c0        ..      LSLS     r0,r0,#19
        0x10002564:    d505        ..      BPL      0x10002572 ; HardFault_Handler_Proc + 482
        0x10002566:    f24340cd    C..@    MOV      r0,#0x34cd
        0x1000256a:    f2c10000    ....    MOVT     r0,#0x1000
        0x1000256e:    f000fd37    ..7.    BL       puts ; 0x10002fe0
        0x10002572:    6838        8h      LDR      r0,[r7,#0]
        0x10002574:    0480        ..      LSLS     r0,r0,#18
        0x10002576:    d505        ..      BPL      0x10002584 ; HardFault_Handler_Proc + 500
        0x10002578:    f243308d    C..0    MOV      r0,#0x338d
        0x1000257c:    f2c10000    ....    MOVT     r0,#0x1000
        0x10002580:    f000fd2e    ....    BL       puts ; 0x10002fe0
        0x10002584:    6838        8h      LDR      r0,[r7,#0]
        0x10002586:    f5b03f80    ...?    CMP      r0,#0x10000
        0x1000258a:    d344        D.      BCC      0x10002616 ; HardFault_Handler_Proc + 646
        0x1000258c:    f2435028    C.(P    MOV      r0,#0x3528
        0x10002590:    f2c10000    ....    MOVT     r0,#0x1000
        0x10002594:    f000fd24    ..$.    BL       puts ; 0x10002fe0
        0x10002598:    6838        8h      LDR      r0,[r7,#0]
        0x1000259a:    03c0        ..      LSLS     r0,r0,#15
        0x1000259c:    d505        ..      BPL      0x100025aa ; HardFault_Handler_Proc + 538
        0x1000259e:    f2431086    C...    MOV      r0,#0x3186
        0x100025a2:    f2c10000    ....    MOVT     r0,#0x1000
        0x100025a6:    f000fd1b    ....    BL       puts ; 0x10002fe0
        0x100025aa:    6838        8h      LDR      r0,[r7,#0]
        0x100025ac:    0380        ..      LSLS     r0,r0,#14
        0x100025ae:    d505        ..      BPL      0x100025bc ; HardFault_Handler_Proc + 556
        0x100025b0:    f24320fd    C..     MOV      r0,#0x32fd
        0x100025b4:    f2c10000    ....    MOVT     r0,#0x1000
        0x100025b8:    f000fd12    ....    BL       puts ; 0x10002fe0
        0x100025bc:    6838        8h      LDR      r0,[r7,#0]
        0x100025be:    0340        @.      LSLS     r0,r0,#13
        0x100025c0:    d505        ..      BPL      0x100025ce ; HardFault_Handler_Proc + 574
        0x100025c2:    f2431058    C.X.    MOV      r0,#0x3158
        0x100025c6:    f2c10000    ....    MOVT     r0,#0x1000
        0x100025ca:    f000fd09    ....    BL       puts ; 0x10002fe0
        0x100025ce:    6838        8h      LDR      r0,[r7,#0]
        0x100025d0:    0300        ..      LSLS     r0,r0,#12
        0x100025d2:    d505        ..      BPL      0x100025e0 ; HardFault_Handler_Proc + 592
        0x100025d4:    f2432091    C..     MOV      r0,#0x3291
        0x100025d8:    f2c10000    ....    MOVT     r0,#0x1000
        0x100025dc:    f000fd00    ....    BL       puts ; 0x10002fe0
        0x100025e0:    6838        8h      LDR      r0,[r7,#0]
        0x100025e2:    02c0        ..      LSLS     r0,r0,#11
        0x100025e4:    d505        ..      BPL      0x100025f2 ; HardFault_Handler_Proc + 610
        0x100025e6:    f24320d1    C..     MOV      r0,#0x32d1
        0x100025ea:    f2c10000    ....    MOVT     r0,#0x1000
        0x100025ee:    f000fcf7    ....    BL       puts ; 0x10002fe0
        0x100025f2:    6838        8h      LDR      r0,[r7,#0]
        0x100025f4:    01c0        ..      LSLS     r0,r0,#7
        0x100025f6:    d505        ..      BPL      0x10002604 ; HardFault_Handler_Proc + 628
        0x100025f8:    f2432031    C.1     MOV      r0,#0x3231
        0x100025fc:    f2c10000    ....    MOVT     r0,#0x1000
        0x10002600:    f000fcee    ....    BL       puts ; 0x10002fe0
        0x10002604:    6838        8h      LDR      r0,[r7,#0]
        0x10002606:    0180        ..      LSLS     r0,r0,#6
        0x10002608:    d505        ..      BPL      0x10002616 ; HardFault_Handler_Proc + 646
        0x1000260a:    f24310bf    C...    MOV      r0,#0x31bf
        0x1000260e:    f2c10000    ....    MOVT     r0,#0x1000
        0x10002612:    f000fce5    ....    BL       puts ; 0x10002fe0
        0x10002616:    f000f8bf    ....    BL       app_debug_printf ; 0x10002798
        0x1000261a:    bf00        ..      NOP      
        0x1000261c:    e7fe        ..      B        0x1000261c ; HardFault_Handler_Proc + 652
        0x1000261e:    bf00        ..      NOP      
    $d
        0x10002620:    6e697355    Usin    DCD    1852404565
        0x10002624:    33752067    g u3    DCD    863314023
        0x10002628:    70735032    2Psp    DCD    1886605362
        0x1000262c:    0000002e    ....    DCD    46
        0x10002630:    63617453    Stac    DCD    1667331155
        0x10002634:    7266206b    k fr    DCD    1919295595
        0x10002638:    3a656d61    ame:    DCD    979725665
        0x1000263c:    00000000    ....    DCD    0
        0x10002640:    20203052    R0      DCD    538980434
        0x10002644:    7830203a    : 0x    DCD    2016419898
        0x10002648:    58383025    %08X    DCD    1480077349
        0x1000264c:    0000000a    ....    DCD    10
        0x10002650:    20203152    R1      DCD    538980690
        0x10002654:    7830203a    : 0x    DCD    2016419898
        0x10002658:    58383025    %08X    DCD    1480077349
        0x1000265c:    0000000a    ....    DCD    10
        0x10002660:    20203252    R2      DCD    538980946
        0x10002664:    7830203a    : 0x    DCD    2016419898
        0x10002668:    58383025    %08X    DCD    1480077349
        0x1000266c:    0000000a    ....    DCD    10
        0x10002670:    20203352    R3      DCD    538981202
        0x10002674:    7830203a    : 0x    DCD    2016419898
        0x10002678:    58383025    %08X    DCD    1480077349
        0x1000267c:    0000000a    ....    DCD    10
        0x10002680:    20323152    R12     DCD    540160338
        0x10002684:    7830203a    : 0x    DCD    2016419898
        0x10002688:    58383025    %08X    DCD    1480077349
        0x1000268c:    0000000a    ....    DCD    10
        0x10002690:    2020524c    LR      DCD    538989132
        0x10002694:    7830203a    : 0x    DCD    2016419898
        0x10002698:    58383025    %08X    DCD    1480077349
        0x1000269c:    0000000a    ....    DCD    10
        0x100026a0:    20204350    PC      DCD    538985296
        0x100026a4:    7830203a    : 0x    DCD    2016419898
        0x100026a8:    58383025    %08X    DCD    1480077349
        0x100026ac:    0000000a    ....    DCD    10
        0x100026b0:    52535078    xPSR    DCD    1381191800
        0x100026b4:    7830203a    : 0x    DCD    2016419898
        0x100026b8:    58383025    %08X    DCD    1480077349
        0x100026bc:    0000000a    ....    DCD    10
    $t
    NMI_Handler_Proc
        0x100026c0:    4614        .F      MOV      r4,r2
        0x100026c2:    460d        .F      MOV      r5,r1
        0x100026c4:    4606        .F      MOV      r6,r0
        0x100026c6:    f000f895    ....    BL       app_debug_reinit ; 0x100027f4
        0x100026ca:    a005        ..      ADR      r0,{pc}+0x16 ; 0x100026e0
        0x100026cc:    4631        1F      MOV      r1,r6
        0x100026ce:    462a        *F      MOV      r2,r5
        0x100026d0:    4623        #F      MOV      r3,r4
        0x100026d2:    f000fa43    ..C.    BL       __0printf$8 ; 0x10002b5c
        0x100026d6:    f000f85f    .._.    BL       app_debug_printf ; 0x10002798
        0x100026da:    bf00        ..      NOP      
        0x100026dc:    e7fe        ..      B        0x100026dc ; NMI_Handler_Proc + 28
        0x100026de:    bf00        ..      NOP      
    $d
        0x100026e0:    5f494d4e    NMI_    DCD    1598639438
        0x100026e4:    646e6148    Hand    DCD    1684955464
        0x100026e8:    3a72656c    ler:    DCD    980575596
        0x100026ec:    38302520     %08    DCD    942679328
        0x100026f0:    25202c58    X, %    DCD    622865496
        0x100026f4:    2c583830    08X,    DCD    743979056
        0x100026f8:    38302520     %08    DCD    942679328
        0x100026fc:    00000a58    X...    DCD    2648
    $t
    app_debug_init
        0x10002700:    b510        ..      PUSH     {r4,lr}
        0x10002702:    f8ddc008    ....    LDR      r12,[sp,#8]
        0x10002706:    f1b24fc0    ...O    CMP      r2,#0x60000000
        0x1000270a:    d00b        ..      BEQ      0x10002724 ; app_debug_init + 36
        0x1000270c:    f6400e00    @...    MOVW     lr,#0x800
        0x10002710:    f2c60e00    ....    MOVT     lr,#0x6000
        0x10002714:    4572        rE      CMP      r2,lr
        0x10002716:    d005        ..      BEQ      0x10002724 ; app_debug_init + 36
        0x10002718:    f2404e00    @..N    MOVW     lr,#0x400
        0x1000271c:    f2c60e00    ....    MOVT     lr,#0x6000
        0x10002720:    4572        rE      CMP      r2,lr
        0x10002722:    d136        6.      BNE      0x10002792 ; app_debug_init + 146
        0x10002724:    f24b0480    K...    MOV      r4,#0xb080
        0x10002728:    f0400e80    @...    ORR      lr,r0,#0x80
        0x1000272c:    f2c60404    ....    MOVT     r4,#0x6004
        0x10002730:    45a6        .E      CMP      lr,r4
        0x10002732:    d12e        ..      BNE      0x10002792 ; app_debug_init + 146
        0x10002734:    f24b0404    K...    MOV      r4,#0xb004
        0x10002738:    f2c20400    ....    MOVT     r4,#0x2000
        0x1000273c:    f1bc0f00    ....    CMP      r12,#0
        0x10002740:    f8c4c000    ....    STR      r12,[r4,#0]
        0x10002744:    d00d        ..      BEQ      0x10002762 ; app_debug_init + 98
        0x10002746:    f24b0c12    K...    MOV      r12,#0xb012
        0x1000274a:    f24b0410    K...    MOV      r4,#0xb010
        0x1000274e:    f2c20c00    ....    MOVT     r12,#0x2000
        0x10002752:    f04f0e00    O...    MOV      lr,#0
        0x10002756:    f2c20400    ....    MOVT     r4,#0x2000
        0x1000275a:    f8ace000    ....    STRH     lr,[r12,#0]
        0x1000275e:    f8a4e000    ....    STRH     lr,[r4,#0]
        0x10002762:    f24b040c    K...    MOV      r4,#0xb00c
        0x10002766:    f2c20400    ....    MOVT     r4,#0x2000
        0x1000276a:    6022        "`      STR      r2,[r4,#0]
        0x1000276c:    f24b0208    K...    MOV      r2,#0xb008
        0x10002770:    f2c20200    ....    MOVT     r2,#0x2000
        0x10002774:    6010        .`      STR      r0,[r2,#0]
        0x10002776:    f24b0014    K...    MOV      r0,#0xb014
        0x1000277a:    f2c20000    ....    MOVT     r0,#0x2000
        0x1000277e:    6001        .`      STR      r1,[r0,#0]
        0x10002780:    f24b0018    K...    MOV      r0,#0xb018
        0x10002784:    f2c20000    ....    MOVT     r0,#0x2000
        0x10002788:    6003        .`      STR      r3,[r0,#0]
        0x1000278a:    e8bd4010    ...@    POP      {r4,lr}
        0x1000278e:    f000b831    ..1.    B.W      app_debug_reinit ; 0x100027f4
        0x10002792:    2010        .       MOVS     r0,#0x10
        0x10002794:    bd10        ..      POP      {r4,pc}
        0x10002796:    0000        ..      MOVS     r0,r0
    app_debug_printf
        0x10002798:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1000279a:    b081        ..      SUB      sp,sp,#4
        0x1000279c:    f24b0404    K...    MOV      r4,#0xb004
        0x100027a0:    f2c20400    ....    MOVT     r4,#0x2000
        0x100027a4:    6820         h      LDR      r0,[r4,#0]
        0x100027a6:    b318        ..      CBZ      r0,0x100027f0 ; app_debug_printf + 88
        0x100027a8:    f24b0512    K...    MOV      r5,#0xb012
        0x100027ac:    f24b0610    K...    MOV      r6,#0xb010
        0x100027b0:    f2c20500    ....    MOVT     r5,#0x2000
        0x100027b4:    f2c20600    ....    MOVT     r6,#0x2000
        0x100027b8:    8828        (.      LDRH     r0,[r5,#0]
        0x100027ba:    8831        1.      LDRH     r1,[r6,#0]
        0x100027bc:    4288        .B      CMP      r0,r1
        0x100027be:    d017        ..      BEQ      0x100027f0 ; app_debug_printf + 88
        0x100027c0:    f24b070c    K...    MOV      r7,#0xb00c
        0x100027c4:    f2c20700    ....    MOVT     r7,#0x2000
        0x100027c8:    6821        !h      LDR      r1,[r4,#0]
        0x100027ca:    b282        ..      UXTH     r2,r0
        0x100027cc:    6809        .h      LDR      r1,[r1,#0]
        0x100027ce:    6838        8h      LDR      r0,[r7,#0]
        0x100027d0:    5c89        .\      LDRB     r1,[r1,r2]
        0x100027d2:    f000f94f    ..O.    BL       $Ven$TT$L$$rom_hw_uart_send_byte ; 0x10002a74
        0x100027d6:    8828        (.      LDRH     r0,[r5,#0]
        0x100027d8:    6821        !h      LDR      r1,[r4,#0]
        0x100027da:    3001        .0      ADDS     r0,#1
        0x100027dc:    b282        ..      UXTH     r2,r0
        0x100027de:    8889        ..      LDRH     r1,[r1,#4]
        0x100027e0:    428a        .B      CMP      r2,r1
        0x100027e2:    bf28        (.      IT       CS
        0x100027e4:    2000        .       MOVCS    r0,#0
        0x100027e6:    b281        ..      UXTH     r1,r0
        0x100027e8:    8832        2.      LDRH     r2,[r6,#0]
        0x100027ea:    8028        (.      STRH     r0,[r5,#0]
        0x100027ec:    4291        .B      CMP      r1,r2
        0x100027ee:    d1eb        ..      BNE      0x100027c8 ; app_debug_printf + 48
        0x100027f0:    b001        ..      ADD      sp,sp,#4
        0x100027f2:    bdf0        ..      POP      {r4-r7,pc}
    app_debug_reinit
        0x100027f4:    b5f0        ..      PUSH     {r4-r7,lr}
        0x100027f6:    b083        ..      SUB      sp,sp,#0xc
        0x100027f8:    f24b050c    K...    MOV      r5,#0xb00c
        0x100027fc:    f2c20500    ....    MOVT     r5,#0x2000
        0x10002800:    6828        (h      LDR      r0,[r5,#0]
        0x10002802:    f1b04fc0    ...O    CMP      r0,#0x60000000
        0x10002806:    d00a        ..      BEQ      0x1000281e ; app_debug_reinit + 42
        0x10002808:    f2404100    @..A    MOVW     r1,#0x400
        0x1000280c:    f2c60100    ....    MOVT     r1,#0x6000
        0x10002810:    4288        .B      CMP      r0,r1
        0x10002812:    bf19        ..      ITTEE    NE
        0x10002814:    240c        .$      MOVNE    r4,#0xc
        0x10002816:    202d        -       MOVNE    r0,#0x2d
        0x10002818:    2408        .$      MOVEQ    r4,#8
        0x1000281a:    202c        ,       MOVEQ    r0,#0x2c
        0x1000281c:    e001        ..      B        0x10002822 ; app_debug_reinit + 46
        0x1000281e:    2404        .$      MOVS     r4,#4
        0x10002820:    202b        +       MOVS     r0,#0x2b
        0x10002822:    f000f92c    ..,.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x10002a7e
        0x10002826:    f24b0608    K...    MOV      r6,#0xb008
        0x1000282a:    f24b0714    K...    MOV      r7,#0xb014
        0x1000282e:    f2c20600    ....    MOVT     r6,#0x2000
        0x10002832:    f2c20700    ....    MOVT     r7,#0x2000
        0x10002836:    6830        0h      LDR      r0,[r6,#0]
        0x10002838:    6839        9h      LDR      r1,[r7,#0]
        0x1000283a:    4622        "F      MOV      r2,r4
        0x1000283c:    f000f924    ..$.    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pid ; 0x10002a88
        0x10002840:    b108        ..      CBZ      r0,0x10002846 ; app_debug_reinit + 82
        0x10002842:    b003        ..      ADD      sp,sp,#0xc
        0x10002844:    bdf0        ..      POP      {r4-r7,pc}
        0x10002846:    6830        0h      LDR      r0,[r6,#0]
        0x10002848:    6839        9h      LDR      r1,[r7,#0]
        0x1000284a:    2202        ."      MOVS     r2,#2
        0x1000284c:    f000f921    ..!.    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x10002a92
        0x10002850:    2800        .(      CMP      r0,#0
        0x10002852:    d1f6        ..      BNE      0x10002842 ; app_debug_reinit + 78
        0x10002854:    f24b0018    K...    MOV      r0,#0xb018
        0x10002858:    f2c20000    ....    MOVT     r0,#0x2000
        0x1000285c:    6800        .h      LDR      r0,[r0,#0]
        0x1000285e:    f2430121    C.!.    MOV      r1,#0x3021
        0x10002862:    9001        ..      STR      r0,[sp,#4]
        0x10002864:    f2c01101    ....    MOVT     r1,#0x101
        0x10002868:    6828        (h      LDR      r0,[r5,#0]
        0x1000286a:    9102        ..      STR      r1,[sp,#8]
        0x1000286c:    a901        ..      ADD      r1,sp,#4
        0x1000286e:    f000f915    ....    BL       $Ven$TT$L$$rom_hw_uart_init ; 0x10002a9c
        0x10002872:    b003        ..      ADD      sp,sp,#0xc
        0x10002874:    bdf0        ..      POP      {r4-r7,pc}
        0x10002876:    0000        ..      MOVS     r0,r0
    fputc
        0x10002878:    b510        ..      PUSH     {r4,lr}
        0x1000287a:    b082        ..      SUB      sp,sp,#8
        0x1000287c:    f24b0104    K...    MOV      r1,#0xb004
        0x10002880:    f2c20100    ....    MOVT     r1,#0x2000
        0x10002884:    6809        .h      LDR      r1,[r1,#0]
        0x10002886:    b179        y.      CBZ      r1,0x100028a8 ; fputc + 48
        0x10002888:    f24b0310    K...    MOV      r3,#0xb010
        0x1000288c:    f2c20300    ....    MOVT     r3,#0x2000
        0x10002890:    680a        .h      LDR      r2,[r1,#0]
        0x10002892:    881c        ..      LDRH     r4,[r3,#0]
        0x10002894:    5510        .U      STRB     r0,[r2,r4]
        0x10002896:    1c62        b.      ADDS     r2,r4,#1
        0x10002898:    b294        ..      UXTH     r4,r2
        0x1000289a:    8889        ..      LDRH     r1,[r1,#4]
        0x1000289c:    428c        .B      CMP      r4,r1
        0x1000289e:    bf28        (.      IT       CS
        0x100028a0:    2200        ."      MOVCS    r2,#0
        0x100028a2:    801a        ..      STRH     r2,[r3,#0]
        0x100028a4:    b002        ..      ADD      sp,sp,#8
        0x100028a6:    bd10        ..      POP      {r4,pc}
        0x100028a8:    f24b010c    K...    MOV      r1,#0xb00c
        0x100028ac:    f2c20100    ....    MOVT     r1,#0x2000
        0x100028b0:    680a        .h      LDR      r2,[r1,#0]
        0x100028b2:    f88d0007    ....    STRB     r0,[sp,#7]
        0x100028b6:    f10d0107    ....    ADD      r1,sp,#7
        0x100028ba:    4604        .F      MOV      r4,r0
        0x100028bc:    4610        .F      MOV      r0,r2
        0x100028be:    2201        ."      MOVS     r2,#1
        0x100028c0:    f000f8f1    ....    BL       $Ven$TT$L$$rom_hw_uart_transmit ; 0x10002aa6
        0x100028c4:    4620         F      MOV      r0,r4
        0x100028c6:    b002        ..      ADD      sp,sp,#8
        0x100028c8:    bd10        ..      POP      {r4,pc}
        0x100028ca:    0000        ..      MOVS     r0,r0
    main
        0x100028cc:    b084        ..      SUB      sp,sp,#0x10
        0x100028ce:    f24b0480    K...    MOV      r4,#0xb080
        0x100028d2:    f2c60404    ....    MOVT     r4,#0x6004
        0x100028d6:    f504503e    ..>P    ADD      r0,r4,#0x2f80
        0x100028da:    f000f8e9    ....    BL       $Ven$TT$L$$rom_hw_wdt_disable ; 0x10002ab0
        0x100028de:    2064        d       MOVS     r0,#0x64
        0x100028e0:    f000f8eb    ....    BL       $Ven$TT$L$$rom_delay_ms ; 0x10002aba
        0x100028e4:    2002        .       MOVS     r0,#2
        0x100028e6:    f000f8ed    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_ldo_act_voltage ; 0x10002ac4
        0x100028ea:    2000        .       MOVS     r0,#0
        0x100028ec:    2500        .%      MOVS     r5,#0
        0x100028ee:    f000f8ee    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_ldo_dig_voltage ; 0x10002ace
        0x100028f2:    2000        .       MOVS     r0,#0
        0x100028f4:    f000f8f0    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_ldo_ret_sleep_voltage ; 0x10002ad8
        0x100028f8:    2000        .       MOVS     r0,#0
        0x100028fa:    f000f8f2    ....    BL       $Ven$TT$L$$rom_hal_pmu_sel_power_act_out_mode ; 0x10002ae2
        0x100028fe:    f10d010b    ....    ADD      r1,sp,#0xb
        0x10002902:    200f        .       MOVS     r0,#0xf
        0x10002904:    2201        ."      MOVS     r2,#1
        0x10002906:    f88d500b    ...P    STRB     r5,[sp,#0xb]
        0x1000290a:    f000f8ef    ....    BL       $Ven$TT$L$$rom_hw_efuse_read_bytes ; 0x10002aec
        0x1000290e:    f89d000b    ....    LDRB     r0,[sp,#0xb]
        0x10002912:    2800        .(      CMP      r0,#0
        0x10002914:    bf04        ..      ITT      EQ
        0x10002916:    2056        V       MOVEQ    r0,#0x56
        0x10002918:    f000f8ed    ....    BLEQ     $Ven$TT$L$$rom_hw_pmu_set_rc_hclk_tune ; 0x10002af6
        0x1000291c:    f10d010b    ....    ADD      r1,sp,#0xb
        0x10002920:    2010        .       MOVS     r0,#0x10
        0x10002922:    2201        ."      MOVS     r2,#1
        0x10002924:    f000f8e2    ....    BL       $Ven$TT$L$$rom_hw_efuse_read_bytes ; 0x10002aec
        0x10002928:    f89d000b    ....    LDRB     r0,[sp,#0xb]
        0x1000292c:    2800        .(      CMP      r0,#0
        0x1000292e:    bf08        ..      IT       EQ
        0x10002930:    20a9        .       MOVEQ    r0,#0xa9
        0x10002932:    f000f8e5    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_rc_lclk_tune ; 0x10002b00
        0x10002936:    2000        .       MOVS     r0,#0
        0x10002938:    f000f8e7    ....    BL       $Ven$TT$L$$rom_hw_pmu_sel_dcxo_hclk_pwr ; 0x10002b0a
        0x1000293c:    2003        .       MOVS     r0,#3
        0x1000293e:    2103        .!      MOVS     r1,#3
        0x10002940:    2264        d"      MOVS     r2,#0x64
        0x10002942:    f000f8e7    ....    BL       $Ven$TT$L$$rom_hal_pmu_cfg_dcxo_hclk_param ; 0x10002b14
        0x10002946:    2001        .       MOVS     r0,#1
        0x10002948:    f64011c4    @...    MOV      r1,#0x9c4
        0x1000294c:    f000f8e7    ....    BL       $Ven$TT$L$$rom_hal_pmu_set_sys_clk_src ; 0x10002b1e
        0x10002950:    2001        .       MOVS     r0,#1
        0x10002952:    2100        .!      MOVS     r1,#0
        0x10002954:    2200        ."      MOVS     r2,#0
        0x10002956:    f000f8e7    ....    BL       $Ven$TT$L$$rom_hw_sys_ctrl_peri_int_ctrl ; 0x10002b28
        0x1000295a:    f2404200    @..B    MOVW     r2,#0x400
        0x1000295e:    4620         F      MOV      r0,r4
        0x10002960:    f2c60200    ....    MOVT     r2,#0x6000
        0x10002964:    f44f5180    O..Q    MOV      r1,#0x1000
        0x10002968:    f44f23e1    O..#    MOV      r3,#0x70800
        0x1000296c:    9500        ..      STR      r5,[sp,#0]
        0x1000296e:    f7fffec7    ....    BL       app_debug_init ; 0x10002700
        0x10002972:    a01f        ..      ADR      r0,{pc}+0x7e ; 0x100029f0
        0x10002974:    a129        ).      ADR      r1,{pc}+0xa8 ; 0x10002a1c
        0x10002976:    a22c        ,.      ADR      r2,{pc}+0xb2 ; 0x10002a28
        0x10002978:    f000f8f0    ....    BL       __0printf$8 ; 0x10002b5c
        0x1000297c:    4620         F      MOV      r0,r4
        0x1000297e:    f44f7100    O..q    MOV      r1,#0x200
        0x10002982:    2201        ."      MOVS     r2,#1
        0x10002984:    f000f8d5    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_input_output ; 0x10002b32
        0x10002988:    4620         F      MOV      r0,r4
        0x1000298a:    f44f7100    O..q    MOV      r1,#0x200
        0x1000298e:    2200        ."      MOVS     r2,#0
        0x10002990:    f000f8d4    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_drive_strength ; 0x10002b3c
        0x10002994:    ad03        ..      ADD      r5,sp,#0xc
        0x10002996:    a627        '.      ADR      r6,{pc}+0x9e ; 0x10002a34
        0x10002998:    a72e        ..      ADR      r7,{pc}+0xbc ; 0x10002a54
        0x1000299a:    bf00        ..      NOP      
        0x1000299c:    4620         F      MOV      r0,r4
        0x1000299e:    f44f7100    O..q    MOV      r1,#0x200
        0x100029a2:    2201        ."      MOVS     r2,#1
        0x100029a4:    f000f8cf    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_output_level ; 0x10002b46
        0x100029a8:    4620         F      MOV      r0,r4
        0x100029aa:    f44f7100    O..q    MOV      r1,#0x200
        0x100029ae:    462a        *F      MOV      r2,r5
        0x100029b0:    f000f8ce    ....    BL       $Ven$TT$L$$rom_hw_gpio_get_pin_output_level ; 0x10002b50
        0x100029b4:    9903        ..      LDR      r1,[sp,#0xc]
        0x100029b6:    4630        0F      MOV      r0,r6
        0x100029b8:    f000f8d0    ....    BL       __0printf$8 ; 0x10002b5c
        0x100029bc:    f44f70fa    O..p    MOV      r0,#0x1f4
        0x100029c0:    f000f87b    ..{.    BL       $Ven$TT$L$$rom_delay_ms ; 0x10002aba
        0x100029c4:    4620         F      MOV      r0,r4
        0x100029c6:    f44f7100    O..q    MOV      r1,#0x200
        0x100029ca:    2200        ."      MOVS     r2,#0
        0x100029cc:    f000f8bb    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_output_level ; 0x10002b46
        0x100029d0:    4620         F      MOV      r0,r4
        0x100029d2:    f44f7100    O..q    MOV      r1,#0x200
        0x100029d6:    462a        *F      MOV      r2,r5
        0x100029d8:    f000f8ba    ....    BL       $Ven$TT$L$$rom_hw_gpio_get_pin_output_level ; 0x10002b50
        0x100029dc:    9903        ..      LDR      r1,[sp,#0xc]
        0x100029de:    4638        8F      MOV      r0,r7
        0x100029e0:    f000f8bc    ....    BL       __0printf$8 ; 0x10002b5c
        0x100029e4:    f44f70fa    O..p    MOV      r0,#0x1f4
        0x100029e8:    f000f867    ..g.    BL       $Ven$TT$L$$rom_delay_ms ; 0x10002aba
        0x100029ec:    e7d6        ..      B        0x1000299c ; main + 208
        0x100029ee:    bf00        ..      NOP      
    $d
        0x100029f0:    2073255b    [%s     DCD    544417115
        0x100029f4:    73252054    T %s    DCD    1931812948
        0x100029f8:    4950475d    ]GPI    DCD    1229997917
        0x100029fc:    7865204f    O ex    DCD    2019893327
        0x10002a00:    6c706d61    ampl    DCD    1819307361
        0x10002a04:    6f632065    e co    DCD    1868767333
        0x10002a08:    73206564    de s    DCD    1931502948
        0x10002a0c:    74726174    tart    DCD    1953653108
        0x10002a10:    206f7420     to     DCD    544175136
        0x10002a14:    6b726f77    work    DCD    1802661751
        0x10002a18:    00000a2e    ....    DCD    2606
        0x10002a1c:    20706553    Sep     DCD    544236883
        0x10002a20:    32203431    14 2    DCD    840971313
        0x10002a24:    00363230    026.    DCD    3551792
        0x10002a28:    353a3631    16:5    DCD    893007409
        0x10002a2c:    34313a33    3:14    DCD    875641395
        0x10002a30:    00000000    ....    DCD    0
        0x10002a34:    20293128    (1)     DCD    539570472
        0x10002a38:    4f495047    GPIO    DCD    1330204743
        0x10002a3c:    74756f20     out    DCD    1953853216
        0x10002a40:    20747570    put     DCD    544503152
        0x10002a44:    6576656c    leve    DCD    1702258028
        0x10002a48:    25203a6c    l: %    DCD    622869100
        0x10002a4c:    0a583830    08X.    DCD    173553712
        0x10002a50:    00000000    ....    DCD    0
        0x10002a54:    20293228    (2)     DCD    539570728
        0x10002a58:    4f495047    GPIO    DCD    1330204743
        0x10002a5c:    74756f20     out    DCD    1953853216
        0x10002a60:    20747570    put     DCD    544503152
        0x10002a64:    6576656c    leve    DCD    1702258028
        0x10002a68:    25203a6c    l: %    DCD    622869100
        0x10002a6c:    0a583830    08X.    DCD    173553712
        0x10002a70:    00000000    ....    DCD    0
    $t
    $Ven$TT$L$$rom_hw_uart_send_byte
        0x10002a74:    f64d7c7d    M.}|    MOV      r12,#0xdf7d
        0x10002a78:    f2c00c00    ....    MOVT     r12,#0
        0x10002a7c:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_crg_enable_clk_gate
        0x10002a7e:    f6471c7d    G.}.    MOV      r12,#0x797d
        0x10002a82:    f2c00c00    ....    MOVT     r12,#0
        0x10002a86:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_gpio_set_pin_pid
        0x10002a88:    f6490c21    I.!.    MOV      r12,#0x9821
        0x10002a8c:    f2c00c00    ....    MOVT     r12,#0
        0x10002a90:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode
        0x10002a92:    f6490c9d    I...    MOV      r12,#0x989d
        0x10002a96:    f2c00c00    ....    MOVT     r12,#0
        0x10002a9a:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_uart_init
        0x10002a9c:    f64d6c65    M.el    MOV      r12,#0xde65
        0x10002aa0:    f2c00c00    ....    MOVT     r12,#0
        0x10002aa4:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_uart_transmit
        0x10002aa6:    f24e1ccd    N...    MOV      r12,#0xe1cd
        0x10002aaa:    f2c00c00    ....    MOVT     r12,#0
        0x10002aae:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_wdt_disable
        0x10002ab0:    f64f0c31    O.1.    MOV      r12,#0xf831
        0x10002ab4:    f2c00c00    ....    MOVT     r12,#0
        0x10002ab8:    4760        `G      BX       r12
    $Ven$TT$L$$rom_delay_ms
        0x10002aba:    f2447c71    D.q|    MOV      r12,#0x4771
        0x10002abe:    f2c00c00    ....    MOVT     r12,#0
        0x10002ac2:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_ldo_act_voltage
        0x10002ac4:    f64a5c7d    J.}\    MOV      r12,#0xad7d
        0x10002ac8:    f2c00c00    ....    MOVT     r12,#0
        0x10002acc:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_ldo_dig_voltage
        0x10002ace:    f64a5ca9    J..\    MOV      r12,#0xada9
        0x10002ad2:    f2c00c00    ....    MOVT     r12,#0
        0x10002ad6:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_ldo_ret_sleep_voltage
        0x10002ad8:    f64a5cfd    J..\    MOV      r12,#0xadfd
        0x10002adc:    f2c00c00    ....    MOVT     r12,#0
        0x10002ae0:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hal_pmu_sel_power_act_out_mode
        0x10002ae2:    f6454c21    E.!L    MOV      r12,#0x5c21
        0x10002ae6:    f2c00c00    ....    MOVT     r12,#0
        0x10002aea:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_efuse_read_bytes
        0x10002aec:    f2487c0d    H..|    MOV      r12,#0x870d
        0x10002af0:    f2c00c00    ....    MOVT     r12,#0
        0x10002af4:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_rc_hclk_tune
        0x10002af6:    f64a6c59    J.Yl    MOV      r12,#0xae59
        0x10002afa:    f2c00c00    ....    MOVT     r12,#0
        0x10002afe:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_rc_lclk_tune
        0x10002b00:    f64a6c69    J.il    MOV      r12,#0xae69
        0x10002b04:    f2c00c00    ....    MOVT     r12,#0
        0x10002b08:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_sel_dcxo_hclk_pwr
        0x10002b0a:    f64a3cb1    J..<    MOV      r12,#0xabb1
        0x10002b0e:    f2c00c00    ....    MOVT     r12,#0
        0x10002b12:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hal_pmu_cfg_dcxo_hclk_param
        0x10002b14:    f6451c65    E.e.    MOV      r12,#0x5965
        0x10002b18:    f2c00c00    ....    MOVT     r12,#0
        0x10002b1c:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hal_pmu_set_sys_clk_src
        0x10002b1e:    f6455c29    E.)\    MOV      r12,#0x5d29
        0x10002b22:    f2c00c00    ....    MOVT     r12,#0
        0x10002b26:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_sys_ctrl_peri_int_ctrl
        0x10002b28:    f24c3c11    L..<    MOV      r12,#0xc311
        0x10002b2c:    f2c00c00    ....    MOVT     r12,#0
        0x10002b30:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_gpio_set_pin_input_output
        0x10002b32:    f2496cf1    I..l    MOV      r12,#0x96f1
        0x10002b36:    f2c00c00    ....    MOVT     r12,#0
        0x10002b3a:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_gpio_set_pin_drive_strength
        0x10002b3c:    f2496c71    I.ql    MOV      r12,#0x9671
        0x10002b40:    f2c00c00    ....    MOVT     r12,#0
        0x10002b44:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_gpio_set_pin_output_level
        0x10002b46:    f2497cf9    I..|    MOV      r12,#0x97f9
        0x10002b4a:    f2c00c00    ....    MOVT     r12,#0
        0x10002b4e:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_gpio_get_pin_output_level
        0x10002b50:    f2495c6d    I.m\    MOV      r12,#0x956d
        0x10002b54:    f2c00c00    ....    MOVT     r12,#0
        0x10002b58:    4760        `G      BX       r12
        0x10002b5a:    0000        ..      MOVS     r0,r0
    i.__0printf$8
    __0printf$8
    __1printf$8
    __2printf
        0x10002b5c:    b40f        ..      PUSH     {r0-r3}
        0x10002b5e:    4b05        .K      LDR      r3,[pc,#20] ; [0x10002b74] = 0x10002879
        0x10002b60:    b510        ..      PUSH     {r4,lr}
        0x10002b62:    a903        ..      ADD      r1,sp,#0xc
        0x10002b64:    4a04        .J      LDR      r2,[pc,#16] ; [0x10002b78] = 0x2000b000
        0x10002b66:    9802        ..      LDR      r0,[sp,#8]
        0x10002b68:    f000f808    ....    BL       _printf_core ; 0x10002b7c
        0x10002b6c:    bc10        ..      POP      {r4}
        0x10002b6e:    f85dfb14    ]...    LDR      pc,[sp],#0x14
    $d
        0x10002b72:    0000        ..      DCW    0
        0x10002b74:    10002879    y(..    DCD    268445817
        0x10002b78:    2000b000    ...     DCD    536915968
    $t
    i._printf_core
    _printf_core
        0x10002b7c:    e92d4fff    -..O    PUSH     {r0-r11,lr}
        0x10002b80:    b08d        ..      SUB      sp,sp,#0x34
        0x10002b82:    460f        .F      MOV      r7,r1
        0x10002b84:    4605        .F      MOV      r5,r0
        0x10002b86:    2600        .&      MOVS     r6,#0
        0x10002b88:    e006        ..      B        0x10002b98 ; _printf_core + 28
        0x10002b8a:    2825        %(      CMP      r0,#0x25
        0x10002b8c:    d00b        ..      BEQ      0x10002ba6 ; _printf_core + 42
        0x10002b8e:    e9dd120f    ....    LDRD     r1,r2,[sp,#0x3c]
        0x10002b92:    4790        .G      BLX      r2
        0x10002b94:    1c6d        m.      ADDS     r5,r5,#1
        0x10002b96:    1c76        v.      ADDS     r6,r6,#1
        0x10002b98:    7828        (x      LDRB     r0,[r5,#0]
        0x10002b9a:    2800        .(      CMP      r0,#0
        0x10002b9c:    d1f5        ..      BNE      0x10002b8a ; _printf_core + 14
        0x10002b9e:    b011        ..      ADD      sp,sp,#0x44
        0x10002ba0:    4630        0F      MOV      r0,r6
        0x10002ba2:    e8bd8ff0    ....    POP      {r4-r11,pc}
        0x10002ba6:    2400        .$      MOVS     r4,#0
        0x10002ba8:    46a2        .F      MOV      r10,r4
        0x10002baa:    46a1        .F      MOV      r9,r4
        0x10002bac:    2201        ."      MOVS     r2,#1
        0x10002bae:    49ec        .I      LDR      r1,[pc,#944] ; [0x10002f60] = 0x12809
        0x10002bb0:    e000        ..      B        0x10002bb4 ; _printf_core + 56
        0x10002bb2:    4304        .C      ORRS     r4,r4,r0
        0x10002bb4:    f8153f01    ...?    LDRB     r3,[r5,#1]!
        0x10002bb8:    3b20         ;      SUBS     r3,r3,#0x20
        0x10002bba:    fa02f003    ....    LSL      r0,r2,r3
        0x10002bbe:    4208        .B      TST      r0,r1
        0x10002bc0:    d1f7        ..      BNE      0x10002bb2 ; _printf_core + 54
        0x10002bc2:    7828        (x      LDRB     r0,[r5,#0]
        0x10002bc4:    282a        *(      CMP      r0,#0x2a
        0x10002bc6:    d010        ..      BEQ      0x10002bea ; _printf_core + 110
        0x10002bc8:    f06f022f    o./.    MVN      r2,#0x2f
        0x10002bcc:    7828        (x      LDRB     r0,[r5,#0]
        0x10002bce:    f1a00130    ..0.    SUB      r1,r0,#0x30
        0x10002bd2:    2909        .)      CMP      r1,#9
        0x10002bd4:    d814        ..      BHI      0x10002c00 ; _printf_core + 132
        0x10002bd6:    eb0a018a    ....    ADD      r1,r10,r10,LSL #2
        0x10002bda:    eb020141    ..A.    ADD      r1,r2,r1,LSL #1
        0x10002bde:    f0440402    D...    ORR      r4,r4,#2
        0x10002be2:    eb000a01    ....    ADD      r10,r0,r1
        0x10002be6:    1c6d        m.      ADDS     r5,r5,#1
        0x10002be8:    e7f0        ..      B        0x10002bcc ; _printf_core + 80
        0x10002bea:    cf01        ..      LDM      r7!,{r0}
        0x10002bec:    ea5f0a00    _...    MOVS     r10,r0
        0x10002bf0:    d503        ..      BPL      0x10002bfa ; _printf_core + 126
        0x10002bf2:    f4445400    D..T    ORR      r4,r4,#0x2000
        0x10002bf6:    f1ca0a00    ....    RSB      r10,r10,#0
        0x10002bfa:    f0440402    D...    ORR      r4,r4,#2
        0x10002bfe:    1c6d        m.      ADDS     r5,r5,#1
        0x10002c00:    7828        (x      LDRB     r0,[r5,#0]
        0x10002c02:    282e        .(      CMP      r0,#0x2e
        0x10002c04:    d117        ..      BNE      0x10002c36 ; _printf_core + 186
        0x10002c06:    f8150f01    ....    LDRB     r0,[r5,#1]!
        0x10002c0a:    f0440404    D...    ORR      r4,r4,#4
        0x10002c0e:    282a        *(      CMP      r0,#0x2a
        0x10002c10:    d00e        ..      BEQ      0x10002c30 ; _printf_core + 180
        0x10002c12:    f06f022f    o./.    MVN      r2,#0x2f
        0x10002c16:    7828        (x      LDRB     r0,[r5,#0]
        0x10002c18:    f1a00130    ..0.    SUB      r1,r0,#0x30
        0x10002c1c:    2909        .)      CMP      r1,#9
        0x10002c1e:    d80a        ..      BHI      0x10002c36 ; _printf_core + 186
        0x10002c20:    eb090189    ....    ADD      r1,r9,r9,LSL #2
        0x10002c24:    eb020141    ..A.    ADD      r1,r2,r1,LSL #1
        0x10002c28:    eb000901    ....    ADD      r9,r0,r1
        0x10002c2c:    1c6d        m.      ADDS     r5,r5,#1
        0x10002c2e:    e7f2        ..      B        0x10002c16 ; _printf_core + 154
        0x10002c30:    f8579b04    W...    LDR      r9,[r7],#4
        0x10002c34:    1c6d        m.      ADDS     r5,r5,#1
        0x10002c36:    7828        (x      LDRB     r0,[r5,#0]
        0x10002c38:    286c        l(      CMP      r0,#0x6c
        0x10002c3a:    d00f        ..      BEQ      0x10002c5c ; _printf_core + 224
        0x10002c3c:    dc06        ..      BGT      0x10002c4c ; _printf_core + 208
        0x10002c3e:    284c        L(      CMP      r0,#0x4c
        0x10002c40:    d017        ..      BEQ      0x10002c72 ; _printf_core + 246
        0x10002c42:    2868        h(      CMP      r0,#0x68
        0x10002c44:    d00d        ..      BEQ      0x10002c62 ; _printf_core + 230
        0x10002c46:    286a        j(      CMP      r0,#0x6a
        0x10002c48:    d114        ..      BNE      0x10002c74 ; _printf_core + 248
        0x10002c4a:    e004        ..      B        0x10002c56 ; _printf_core + 218
        0x10002c4c:    2874        t(      CMP      r0,#0x74
        0x10002c4e:    d010        ..      BEQ      0x10002c72 ; _printf_core + 246
        0x10002c50:    287a        z(      CMP      r0,#0x7a
        0x10002c52:    d10f        ..      BNE      0x10002c74 ; _printf_core + 248
        0x10002c54:    e00d        ..      B        0x10002c72 ; _printf_core + 246
        0x10002c56:    f4441400    D...    ORR      r4,r4,#0x200000
        0x10002c5a:    e00a        ..      B        0x10002c72 ; _printf_core + 246
        0x10002c5c:    f4441480    D...    ORR      r4,r4,#0x100000
        0x10002c60:    e001        ..      B        0x10002c66 ; _printf_core + 234
        0x10002c62:    f4441440    D.@.    ORR      r4,r4,#0x300000
        0x10002c66:    7869        ix      LDRB     r1,[r5,#1]
        0x10002c68:    4281        .B      CMP      r1,r0
        0x10002c6a:    d102        ..      BNE      0x10002c72 ; _printf_core + 246
        0x10002c6c:    f5041480    ....    ADD      r4,r4,#0x100000
        0x10002c70:    1c6d        m.      ADDS     r5,r5,#1
        0x10002c72:    1c6d        m.      ADDS     r5,r5,#1
        0x10002c74:    782a        *x      LDRB     r2,[r5,#0]
        0x10002c76:    2a6e        n*      CMP      r2,#0x6e
        0x10002c78:    d01f        ..      BEQ      0x10002cba ; _printf_core + 318
        0x10002c7a:    dc0c        ..      BGT      0x10002c96 ; _printf_core + 282
        0x10002c7c:    2a63        c*      CMP      r2,#0x63
        0x10002c7e:    d031        1.      BEQ      0x10002ce4 ; _printf_core + 360
        0x10002c80:    dc04        ..      BGT      0x10002c8c ; _printf_core + 272
        0x10002c82:    2a00        .*      CMP      r2,#0
        0x10002c84:    d08b        ..      BEQ      0x10002b9e ; _printf_core + 34
        0x10002c86:    2a58        X*      CMP      r2,#0x58
        0x10002c88:    d111        ..      BNE      0x10002cae ; _printf_core + 306
        0x10002c8a:    e0a3        ..      B        0x10002dd4 ; _printf_core + 600
        0x10002c8c:    2a64        d*      CMP      r2,#0x64
        0x10002c8e:    d068        h.      BEQ      0x10002d62 ; _printf_core + 486
        0x10002c90:    2a69        i*      CMP      r2,#0x69
        0x10002c92:    d10c        ..      BNE      0x10002cae ; _printf_core + 306
        0x10002c94:    e065        e.      B        0x10002d62 ; _printf_core + 486
        0x10002c96:    2a73        s*      CMP      r2,#0x73
        0x10002c98:    d02e        ..      BEQ      0x10002cf8 ; _printf_core + 380
        0x10002c9a:    dc04        ..      BGT      0x10002ca6 ; _printf_core + 298
        0x10002c9c:    2a6f        o*      CMP      r2,#0x6f
        0x10002c9e:    d073        s.      BEQ      0x10002d88 ; _printf_core + 524
        0x10002ca0:    2a70        p*      CMP      r2,#0x70
        0x10002ca2:    d104        ..      BNE      0x10002cae ; _printf_core + 306
        0x10002ca4:    e09b        ..      B        0x10002dde ; _printf_core + 610
        0x10002ca6:    2a75        u*      CMP      r2,#0x75
        0x10002ca8:    d06f        o.      BEQ      0x10002d8a ; _printf_core + 526
        0x10002caa:    2a78        x*      CMP      r2,#0x78
        0x10002cac:    d06e        n.      BEQ      0x10002d8c ; _printf_core + 528
        0x10002cae:    4610        .F      MOV      r0,r2
        0x10002cb0:    e9dd120f    ....    LDRD     r1,r2,[sp,#0x3c]
        0x10002cb4:    4790        .G      BLX      r2
        0x10002cb6:    1c76        v.      ADDS     r6,r6,#1
        0x10002cb8:    e150        P.      B        0x10002f5c ; _printf_core + 992
        0x10002cba:    f3c45002    ...P    UBFX     r0,r4,#20,#3
        0x10002cbe:    2802        .(      CMP      r0,#2
        0x10002cc0:    d006        ..      BEQ      0x10002cd0 ; _printf_core + 340
        0x10002cc2:    2803        .(      CMP      r0,#3
        0x10002cc4:    d009        ..      BEQ      0x10002cda ; _printf_core + 350
        0x10002cc6:    2804        .(      CMP      r0,#4
        0x10002cc8:    cf01        ..      LDM      r7!,{r0}
        0x10002cca:    d009        ..      BEQ      0x10002ce0 ; _printf_core + 356
        0x10002ccc:    6006        .`      STR      r6,[r0,#0]
        0x10002cce:    e145        E.      B        0x10002f5c ; _printf_core + 992
        0x10002cd0:    cf01        ..      LDM      r7!,{r0}
        0x10002cd2:    17f1        ..      ASRS     r1,r6,#31
        0x10002cd4:    e9c06100    ...a    STRD     r6,r1,[r0,#0]
        0x10002cd8:    e140        @.      B        0x10002f5c ; _printf_core + 992
        0x10002cda:    cf01        ..      LDM      r7!,{r0}
        0x10002cdc:    8006        ..      STRH     r6,[r0,#0]
        0x10002cde:    e13d        =.      B        0x10002f5c ; _printf_core + 992
        0x10002ce0:    7006        .p      STRB     r6,[r0,#0]
        0x10002ce2:    e13b        ;.      B        0x10002f5c ; _printf_core + 992
        0x10002ce4:    f8170b04    ....    LDRB     r0,[r7],#4
        0x10002ce8:    f88d0000    ....    STRB     r0,[sp,#0]
        0x10002cec:    2000        .       MOVS     r0,#0
        0x10002cee:    f88d0001    ....    STRB     r0,[sp,#1]
        0x10002cf2:    46eb        .F      MOV      r11,sp
        0x10002cf4:    2001        .       MOVS     r0,#1
        0x10002cf6:    e003        ..      B        0x10002d00 ; _printf_core + 388
        0x10002cf8:    f857bb04    W...    LDR      r11,[r7],#4
        0x10002cfc:    f04f30ff    O..0    MOV      r0,#0xffffffff
        0x10002d00:    0761        a.      LSLS     r1,r4,#29
        0x10002d02:    f04f0100    O...    MOV      r1,#0
        0x10002d06:    d402        ..      BMI      0x10002d0e ; _printf_core + 402
        0x10002d08:    e00d        ..      B        0x10002d26 ; _printf_core + 426
        0x10002d0a:    f1080101    ....    ADD      r1,r8,#1
        0x10002d0e:    4688        .F      MOV      r8,r1
        0x10002d10:    4549        IE      CMP      r1,r9
        0x10002d12:    da0f        ..      BGE      0x10002d34 ; _printf_core + 440
        0x10002d14:    4580        .E      CMP      r8,r0
        0x10002d16:    dbf8        ..      BLT      0x10002d0a ; _printf_core + 398
        0x10002d18:    f81b1008    ....    LDRB     r1,[r11,r8]
        0x10002d1c:    2900        .)      CMP      r1,#0
        0x10002d1e:    d1f4        ..      BNE      0x10002d0a ; _printf_core + 398
        0x10002d20:    e008        ..      B        0x10002d34 ; _printf_core + 440
        0x10002d22:    f1080101    ....    ADD      r1,r8,#1
        0x10002d26:    4688        .F      MOV      r8,r1
        0x10002d28:    4281        .B      CMP      r1,r0
        0x10002d2a:    dbfa        ..      BLT      0x10002d22 ; _printf_core + 422
        0x10002d2c:    f81b1008    ....    LDRB     r1,[r11,r8]
        0x10002d30:    2900        .)      CMP      r1,#0
        0x10002d32:    d1f6        ..      BNE      0x10002d22 ; _printf_core + 422
        0x10002d34:    e9dd230f    ...#    LDRD     r2,r3,[sp,#0x3c]
        0x10002d38:    ebaa0008    ....    SUB      r0,r10,r8
        0x10002d3c:    4681        .F      MOV      r9,r0
        0x10002d3e:    4621        !F      MOV      r1,r4
        0x10002d40:    f000f936    ..6.    BL       _printf_pre_padding ; 0x10002fb0
        0x10002d44:    4430        0D      ADD      r0,r0,r6
        0x10002d46:    eb000608    ....    ADD      r6,r0,r8
        0x10002d4a:    e004        ..      B        0x10002d56 ; _printf_core + 474
        0x10002d4c:    e9dd120f    ....    LDRD     r1,r2,[sp,#0x3c]
        0x10002d50:    f81b0b01    ....    LDRB     r0,[r11],#1
        0x10002d54:    4790        .G      BLX      r2
        0x10002d56:    f1b80801    ....    SUBS     r8,r8,#1
        0x10002d5a:    d2f7        ..      BCS      0x10002d4c ; _printf_core + 464
        0x10002d5c:    4621        !F      MOV      r1,r4
        0x10002d5e:    4648        HF      MOV      r0,r9
        0x10002d60:    e0f7        ..      B        0x10002f52 ; _printf_core + 982
        0x10002d62:    210a        .!      MOVS     r1,#0xa
        0x10002d64:    f3c45302    ...S    UBFX     r3,r4,#20,#3
        0x10002d68:    f04f0b00    O...    MOV      r11,#0
        0x10002d6c:    9108        ..      STR      r1,[sp,#0x20]
        0x10002d6e:    2b02        .+      CMP      r3,#2
        0x10002d70:    d004        ..      BEQ      0x10002d7c ; _printf_core + 512
        0x10002d72:    cf01        ..      LDM      r7!,{r0}
        0x10002d74:    17c1        ..      ASRS     r1,r0,#31
        0x10002d76:    2b03        .+      CMP      r3,#3
        0x10002d78:    d009        ..      BEQ      0x10002d8e ; _printf_core + 530
        0x10002d7a:    e00a        ..      B        0x10002d92 ; _printf_core + 534
        0x10002d7c:    1dff        ..      ADDS     r7,r7,#7
        0x10002d7e:    f0270707    '...    BIC      r7,r7,#7
        0x10002d82:    e8f70102    ....    LDRD     r0,r1,[r7],#8
        0x10002d86:    e008        ..      B        0x10002d9a ; _printf_core + 542
        0x10002d88:    e032        2.      B        0x10002df0 ; _printf_core + 628
        0x10002d8a:    e01f        ..      B        0x10002dcc ; _printf_core + 592
        0x10002d8c:    e020         .      B        0x10002dd0 ; _printf_core + 596
        0x10002d8e:    b200        ..      SXTH     r0,r0
        0x10002d90:    17c1        ..      ASRS     r1,r0,#31
        0x10002d92:    2b04        .+      CMP      r3,#4
        0x10002d94:    d101        ..      BNE      0x10002d9a ; _printf_core + 542
        0x10002d96:    b240        @.      SXTB     r0,r0
        0x10002d98:    17c1        ..      ASRS     r1,r0,#31
        0x10002d9a:    1e03        ..      SUBS     r3,r0,#0
        0x10002d9c:    f1710300    q...    SBCS     r3,r1,#0
        0x10002da0:    da07        ..      BGE      0x10002db2 ; _printf_core + 566
        0x10002da2:    f04f0c00    O...    MOV      r12,#0
        0x10002da6:    ebd0000c    ....    RSBS     r0,r0,r12
        0x10002daa:    eb6c0101    l...    SBC      r1,r12,r1
        0x10002dae:    232d        -#      MOVS     r3,#0x2d
        0x10002db0:    e002        ..      B        0x10002db8 ; _printf_core + 572
        0x10002db2:    0523        #.      LSLS     r3,r4,#20
        0x10002db4:    d504        ..      BPL      0x10002dc0 ; _printf_core + 580
        0x10002db6:    232b        +#      MOVS     r3,#0x2b
        0x10002db8:    f88d3024    ..$0    STRB     r3,[sp,#0x24]
        0x10002dbc:    2301        .#      MOVS     r3,#1
        0x10002dbe:    e003        ..      B        0x10002dc8 ; _printf_core + 588
        0x10002dc0:    07e3        ..      LSLS     r3,r4,#31
        0x10002dc2:    d001        ..      BEQ      0x10002dc8 ; _printf_core + 588
        0x10002dc4:    2320         #      MOVS     r3,#0x20
        0x10002dc6:    e7f7        ..      B        0x10002db8 ; _printf_core + 572
        0x10002dc8:    4698        .F      MOV      r8,r3
        0x10002dca:    e058        X.      B        0x10002e7e ; _printf_core + 770
        0x10002dcc:    210a        .!      MOVS     r1,#0xa
        0x10002dce:    e010        ..      B        0x10002df2 ; _printf_core + 630
        0x10002dd0:    2110        .!      MOVS     r1,#0x10
        0x10002dd2:    e00e        ..      B        0x10002df2 ; _printf_core + 630
        0x10002dd4:    2010        .       MOVS     r0,#0x10
        0x10002dd6:    f04f0b00    O...    MOV      r11,#0
        0x10002dda:    9008        ..      STR      r0,[sp,#0x20]
        0x10002ddc:    e00c        ..      B        0x10002df8 ; _printf_core + 636
        0x10002dde:    2110        .!      MOVS     r1,#0x10
        0x10002de0:    f04f0b00    O...    MOV      r11,#0
        0x10002de4:    f0440404    D...    ORR      r4,r4,#4
        0x10002de8:    f04f0908    O...    MOV      r9,#8
        0x10002dec:    9108        ..      STR      r1,[sp,#0x20]
        0x10002dee:    e003        ..      B        0x10002df8 ; _printf_core + 636
        0x10002df0:    2108        .!      MOVS     r1,#8
        0x10002df2:    f04f0b00    O...    MOV      r11,#0
        0x10002df6:    9108        ..      STR      r1,[sp,#0x20]
        0x10002df8:    f3c45302    ...S    UBFX     r3,r4,#20,#3
        0x10002dfc:    2b02        .+      CMP      r3,#2
        0x10002dfe:    d004        ..      BEQ      0x10002e0a ; _printf_core + 654
        0x10002e00:    cf01        ..      LDM      r7!,{r0}
        0x10002e02:    2100        .!      MOVS     r1,#0
        0x10002e04:    2b03        .+      CMP      r3,#3
        0x10002e06:    d006        ..      BEQ      0x10002e16 ; _printf_core + 666
        0x10002e08:    e006        ..      B        0x10002e18 ; _printf_core + 668
        0x10002e0a:    1dff        ..      ADDS     r7,r7,#7
        0x10002e0c:    f0270707    '...    BIC      r7,r7,#7
        0x10002e10:    e8f70102    ....    LDRD     r0,r1,[r7],#8
        0x10002e14:    e003        ..      B        0x10002e1e ; _printf_core + 674
        0x10002e16:    b280        ..      UXTH     r0,r0
        0x10002e18:    2b04        .+      CMP      r3,#4
        0x10002e1a:    d100        ..      BNE      0x10002e1e ; _printf_core + 674
        0x10002e1c:    b2c0        ..      UXTB     r0,r0
        0x10002e1e:    f04f0800    O...    MOV      r8,#0
        0x10002e22:    0723        #.      LSLS     r3,r4,#28
        0x10002e24:    d52b        +.      BPL      0x10002e7e ; _printf_core + 770
        0x10002e26:    2a70        p*      CMP      r2,#0x70
        0x10002e28:    d007        ..      BEQ      0x10002e3a ; _printf_core + 702
        0x10002e2a:    f8ddc020    .. .    LDR      r12,[sp,#0x20]
        0x10002e2e:    f08c0c10    ....    EOR      r12,r12,#0x10
        0x10002e32:    ea5c0c0b    \...    ORRS     r12,r12,r11
        0x10002e36:    d005        ..      BEQ      0x10002e44 ; _printf_core + 712
        0x10002e38:    e00e        ..      B        0x10002e58 ; _printf_core + 732
        0x10002e3a:    2340        @#      MOVS     r3,#0x40
        0x10002e3c:    f88d3024    ..$0    STRB     r3,[sp,#0x24]
        0x10002e40:    2301        .#      MOVS     r3,#1
        0x10002e42:    e008        ..      B        0x10002e56 ; _printf_core + 730
        0x10002e44:    ea500301    P...    ORRS     r3,r0,r1
        0x10002e48:    d006        ..      BEQ      0x10002e58 ; _printf_core + 732
        0x10002e4a:    2330        0#      MOVS     r3,#0x30
        0x10002e4c:    f88d3024    ..$0    STRB     r3,[sp,#0x24]
        0x10002e50:    f88d2025    ..%     STRB     r2,[sp,#0x25]
        0x10002e54:    2302        .#      MOVS     r3,#2
        0x10002e56:    4698        .F      MOV      r8,r3
        0x10002e58:    f8ddc020    .. .    LDR      r12,[sp,#0x20]
        0x10002e5c:    f08c0c08    ....    EOR      r12,r12,#8
        0x10002e60:    ea5c0c0b    \...    ORRS     r12,r12,r11
        0x10002e64:    d10b        ..      BNE      0x10002e7e ; _printf_core + 770
        0x10002e66:    ea500301    P...    ORRS     r3,r0,r1
        0x10002e6a:    d101        ..      BNE      0x10002e70 ; _printf_core + 756
        0x10002e6c:    0763        c.      LSLS     r3,r4,#29
        0x10002e6e:    d506        ..      BPL      0x10002e7e ; _printf_core + 770
        0x10002e70:    2330        0#      MOVS     r3,#0x30
        0x10002e72:    f88d3024    ..$0    STRB     r3,[sp,#0x24]
        0x10002e76:    f04f0801    O...    MOV      r8,#1
        0x10002e7a:    f1a90901    ....    SUB      r9,r9,#1
        0x10002e7e:    2a58        X*      CMP      r2,#0x58
        0x10002e80:    d004        ..      BEQ      0x10002e8c ; _printf_core + 784
        0x10002e82:    a238        8.      ADR      r2,{pc}+0xe2 ; 0x10002f64
        0x10002e84:    920b        ..      STR      r2,[sp,#0x2c]
        0x10002e86:    aa08        ..      ADD      r2,sp,#0x20
        0x10002e88:    920a        ..      STR      r2,[sp,#0x28]
        0x10002e8a:    e00b        ..      B        0x10002ea4 ; _printf_core + 808
        0x10002e8c:    a23a        :.      ADR      r2,{pc}+0xec ; 0x10002f78
        0x10002e8e:    e7f9        ..      B        0x10002e84 ; _printf_core + 776
        0x10002e90:    465b        [F      MOV      r3,r11
        0x10002e92:    9a08        ..      LDR      r2,[sp,#0x20]
        0x10002e94:    f7fffa2c    ..,.    BL       __aeabi_uldivmod ; 0x100022f0
        0x10002e98:    9b0b        ..      LDR      r3,[sp,#0x2c]
        0x10002e9a:    5c9b        .\      LDRB     r3,[r3,r2]
        0x10002e9c:    9a0a        ..      LDR      r2,[sp,#0x28]
        0x10002e9e:    1e52        R.      SUBS     r2,r2,#1
        0x10002ea0:    920a        ..      STR      r2,[sp,#0x28]
        0x10002ea2:    7013        .p      STRB     r3,[r2,#0]
        0x10002ea4:    ea500201    P...    ORRS     r2,r0,r1
        0x10002ea8:    d1f2        ..      BNE      0x10002e90 ; _printf_core + 788
        0x10002eaa:    980a        ..      LDR      r0,[sp,#0x28]
        0x10002eac:    ebad0000    ....    SUB      r0,sp,r0
        0x10002eb0:    f1000b20    .. .    ADD      r11,r0,#0x20
        0x10002eb4:    0760        `.      LSLS     r0,r4,#29
        0x10002eb6:    d502        ..      BPL      0x10002ebe ; _printf_core + 834
        0x10002eb8:    f4243480    $..4    BIC      r4,r4,#0x10000
        0x10002ebc:    e001        ..      B        0x10002ec2 ; _printf_core + 838
        0x10002ebe:    f04f0901    O...    MOV      r9,#1
        0x10002ec2:    45d9        .E      CMP      r9,r11
        0x10002ec4:    dd02        ..      BLE      0x10002ecc ; _printf_core + 848
        0x10002ec6:    eba9000b    ....    SUB      r0,r9,r11
        0x10002eca:    e000        ..      B        0x10002ece ; _printf_core + 850
        0x10002ecc:    2000        .       MOVS     r0,#0
        0x10002ece:    eb00010b    ....    ADD      r1,r0,r11
        0x10002ed2:    4441        AD      ADD      r1,r1,r8
        0x10002ed4:    9008        ..      STR      r0,[sp,#0x20]
        0x10002ed6:    ebaa0a01    ....    SUB      r10,r10,r1
        0x10002eda:    03e0        ..      LSLS     r0,r4,#15
        0x10002edc:    d406        ..      BMI      0x10002eec ; _printf_core + 880
        0x10002ede:    e9dd230f    ...#    LDRD     r2,r3,[sp,#0x3c]
        0x10002ee2:    4621        !F      MOV      r1,r4
        0x10002ee4:    4650        PF      MOV      r0,r10
        0x10002ee6:    f000f863    ..c.    BL       _printf_pre_padding ; 0x10002fb0
        0x10002eea:    4406        .D      ADD      r6,r6,r0
        0x10002eec:    f04f0900    O...    MOV      r9,#0
        0x10002ef0:    e008        ..      B        0x10002f04 ; _printf_core + 904
        0x10002ef2:    a909        ..      ADD      r1,sp,#0x24
        0x10002ef4:    f8110009    ....    LDRB     r0,[r1,r9]
        0x10002ef8:    e9dd120f    ....    LDRD     r1,r2,[sp,#0x3c]
        0x10002efc:    4790        .G      BLX      r2
        0x10002efe:    f1090901    ....    ADD      r9,r9,#1
        0x10002f02:    1c76        v.      ADDS     r6,r6,#1
        0x10002f04:    45c1        .E      CMP      r9,r8
        0x10002f06:    dbf4        ..      BLT      0x10002ef2 ; _printf_core + 886
        0x10002f08:    03e0        ..      LSLS     r0,r4,#15
        0x10002f0a:    d50c        ..      BPL      0x10002f26 ; _printf_core + 938
        0x10002f0c:    e9dd230f    ...#    LDRD     r2,r3,[sp,#0x3c]
        0x10002f10:    4621        !F      MOV      r1,r4
        0x10002f12:    4650        PF      MOV      r0,r10
        0x10002f14:    f000f84c    ..L.    BL       _printf_pre_padding ; 0x10002fb0
        0x10002f18:    4406        .D      ADD      r6,r6,r0
        0x10002f1a:    e004        ..      B        0x10002f26 ; _printf_core + 938
        0x10002f1c:    e9dd120f    ....    LDRD     r1,r2,[sp,#0x3c]
        0x10002f20:    2030        0       MOVS     r0,#0x30
        0x10002f22:    4790        .G      BLX      r2
        0x10002f24:    1c76        v.      ADDS     r6,r6,#1
        0x10002f26:    9908        ..      LDR      r1,[sp,#0x20]
        0x10002f28:    1e48        H.      SUBS     r0,r1,#1
        0x10002f2a:    9008        ..      STR      r0,[sp,#0x20]
        0x10002f2c:    2900        .)      CMP      r1,#0
        0x10002f2e:    dcf5        ..      BGT      0x10002f1c ; _printf_core + 928
        0x10002f30:    e008        ..      B        0x10002f44 ; _printf_core + 968
        0x10002f32:    980a        ..      LDR      r0,[sp,#0x28]
        0x10002f34:    990a        ..      LDR      r1,[sp,#0x28]
        0x10002f36:    7800        .x      LDRB     r0,[r0,#0]
        0x10002f38:    1c49        I.      ADDS     r1,r1,#1
        0x10002f3a:    910a        ..      STR      r1,[sp,#0x28]
        0x10002f3c:    e9dd120f    ....    LDRD     r1,r2,[sp,#0x3c]
        0x10002f40:    4790        .G      BLX      r2
        0x10002f42:    1c76        v.      ADDS     r6,r6,#1
        0x10002f44:    f1bb0100    ....    SUBS     r1,r11,#0
        0x10002f48:    f1ab0b01    ....    SUB      r11,r11,#1
        0x10002f4c:    dcf1        ..      BGT      0x10002f32 ; _printf_core + 950
        0x10002f4e:    4621        !F      MOV      r1,r4
        0x10002f50:    4650        PF      MOV      r0,r10
        0x10002f52:    e9dd230f    ...#    LDRD     r2,r3,[sp,#0x3c]
        0x10002f56:    f000f819    ....    BL       _printf_post_padding ; 0x10002f8c
        0x10002f5a:    4406        .D      ADD      r6,r6,r0
        0x10002f5c:    1c6d        m.      ADDS     r5,r5,#1
        0x10002f5e:    e61b        ..      B        0x10002b98 ; _printf_core + 28
    $d
        0x10002f60:    00012809    .(..    DCD    75785
        0x10002f64:    33323130    0123    DCD    858927408
        0x10002f68:    37363534    4567    DCD    926299444
        0x10002f6c:    62613938    89ab    DCD    1650538808
        0x10002f70:    66656463    cdef    DCD    1717920867
        0x10002f74:    00000000    ....    DCD    0
        0x10002f78:    33323130    0123    DCD    858927408
        0x10002f7c:    37363534    4567    DCD    926299444
        0x10002f80:    42413938    89AB    DCD    1111570744
        0x10002f84:    46454443    CDEF    DCD    1178944579
        0x10002f88:    00000000    ....    DCD    0
    $t
    i._printf_post_padding
    _printf_post_padding
        0x10002f8c:    e92d41f0    -..A    PUSH     {r4-r8,lr}
        0x10002f90:    4604        .F      MOV      r4,r0
        0x10002f92:    2500        .%      MOVS     r5,#0
        0x10002f94:    461e        .F      MOV      r6,r3
        0x10002f96:    4617        .F      MOV      r7,r2
        0x10002f98:    0488        ..      LSLS     r0,r1,#18
        0x10002f9a:    d404        ..      BMI      0x10002fa6 ; _printf_post_padding + 26
        0x10002f9c:    e005        ..      B        0x10002faa ; _printf_post_padding + 30
        0x10002f9e:    4639        9F      MOV      r1,r7
        0x10002fa0:    2020                MOVS     r0,#0x20
        0x10002fa2:    47b0        .G      BLX      r6
        0x10002fa4:    1c6d        m.      ADDS     r5,r5,#1
        0x10002fa6:    1e64        d.      SUBS     r4,r4,#1
        0x10002fa8:    d5f9        ..      BPL      0x10002f9e ; _printf_post_padding + 18
        0x10002faa:    4628        (F      MOV      r0,r5
        0x10002fac:    e8bd81f0    ....    POP      {r4-r8,pc}
    i._printf_pre_padding
    _printf_pre_padding
        0x10002fb0:    e92d41f0    -..A    PUSH     {r4-r8,lr}
        0x10002fb4:    4604        .F      MOV      r4,r0
        0x10002fb6:    2500        .%      MOVS     r5,#0
        0x10002fb8:    461e        .F      MOV      r6,r3
        0x10002fba:    4690        .F      MOV      r8,r2
        0x10002fbc:    03c8        ..      LSLS     r0,r1,#15
        0x10002fbe:    d501        ..      BPL      0x10002fc4 ; _printf_pre_padding + 20
        0x10002fc0:    2730        0'      MOVS     r7,#0x30
        0x10002fc2:    e000        ..      B        0x10002fc6 ; _printf_pre_padding + 22
        0x10002fc4:    2720         '      MOVS     r7,#0x20
        0x10002fc6:    0488        ..      LSLS     r0,r1,#18
        0x10002fc8:    d504        ..      BPL      0x10002fd4 ; _printf_pre_padding + 36
        0x10002fca:    e005        ..      B        0x10002fd8 ; _printf_pre_padding + 40
        0x10002fcc:    4641        AF      MOV      r1,r8
        0x10002fce:    4638        8F      MOV      r0,r7
        0x10002fd0:    47b0        .G      BLX      r6
        0x10002fd2:    1c6d        m.      ADDS     r5,r5,#1
        0x10002fd4:    1e64        d.      SUBS     r4,r4,#1
        0x10002fd6:    d5f9        ..      BPL      0x10002fcc ; _printf_pre_padding + 28
        0x10002fd8:    4628        (F      MOV      r0,r5
        0x10002fda:    e8bd81f0    ....    POP      {r4-r8,pc}
        0x10002fde:    0000        ..      MOVS     r0,r0
    i.puts
    puts
        0x10002fe0:    b510        ..      PUSH     {r4,lr}
        0x10002fe2:    4604        .F      MOV      r4,r0
        0x10002fe4:    e001        ..      B        0x10002fea ; puts + 10
        0x10002fe6:    f7fffc47    ..G.    BL       fputc ; 0x10002878
        0x10002fea:    f8140b01    ....    LDRB     r0,[r4],#1
        0x10002fee:    4904        .I      LDR      r1,[pc,#16] ; [0x10003000] = 0x2000b000
        0x10002ff0:    2800        .(      CMP      r0,#0
        0x10002ff2:    d1f8        ..      BNE      0x10002fe6 ; puts + 6
        0x10002ff4:    e8bd4010    ...@    POP      {r4,lr}
        0x10002ff8:    200a        .       MOVS     r0,#0xa
        0x10002ffa:    f7ffbc3d    ..=.    B.W      fputc ; 0x10002878
    $d
        0x10002ffe:    0000        ..      DCW    0
        0x10003000:    2000b000    ...     DCD    536915968
    $d.realdata
    .L.str.27
        0x10003004:    4552505b    [PRE    DCD    1163022427
        0x10003008:    45534943    CISE    DCD    1163086147
        0x1000300c:    205d5252    RR]     DCD    542986834
        0x10003010:    61746164    data    DCD    1635017060
        0x10003014:    73756220     bus    DCD    1937072672
        0x10003018:    72726520     err    DCD    1920099616
        0x1000301c:    6820726f    or h    DCD    1746956911
        0x10003020:    6f207361    as o    DCD    1864397665
        0x10003024:    72756363    ccur    DCD    1920295779
        0x10003028:    2c646572    red,    DCD    744777074
        0x1000302c:    20435020     PC     DCD    541282336
        0x10003030:    7830203a    : 0x    DCD    2016419898
        0x10003034:    78383025    %08x    DCD    2016948261
        0x10003038:    0a0d        ..      DCW    2573
        0x1000303a:    00          .       DCB    0
    .L.str.20
        0x1000303b:    5b          [       DCB    91
        0x1000303c:    43434144    DACC    DCD    1128481092
        0x10003040:    4c4f4956    VIOL    DCD    1280264534
        0x10003044:    6854205d    ] Th    DCD    1750343773
        0x10003048:    72702065    e pr    DCD    1919950949
        0x1000304c:    7365636f    oces    DCD    1936024431
        0x10003050:    20726f73    sor     DCD    544370547
        0x10003054:    65747461    atte    DCD    1702130785
        0x10003058:    6574706d    mpte    DCD    1702129773
        0x1000305c:    20612064    d a     DCD    543236196
        0x10003060:    64616f6c    load    DCD    1684107116
        0x10003064:    20726f20     or     DCD    544370464
        0x10003068:    726f7473    stor    DCD    1919906931
        0x1000306c:    74612065    e at    DCD    1952522341
        0x10003070:    6c206120     a l    DCD    1814061344
        0x10003074:    7461636f    ocat    DCD    1952539503
        0x10003078:    206e6f69    ion     DCD    544108393
        0x1000307c:    74616874    that    DCD    1952540788
        0x10003080:    656f6420     doe    DCD    1701798944
        0x10003084:    6f6e2073    s no    DCD    1869488243
        0x10003088:    65702074    t pe    DCD    1701847156
        0x1000308c:    74696d72    rmit    DCD    1953066354
        0x10003090:    65687420     the    DCD    1701344288
        0x10003094:    65706f20     ope    DCD    1701867296
        0x10003098:    69746172    rati    DCD    1769234802
        0x1000309c:    202c6e6f    on,     DCD    539782767
        0x100030a0:    3a204350    PC :    DCD    975192912
        0x100030a4:    25783020     0x%    DCD    628633632
        0x100030a8:    0d783830    08x.    DCD    225982512
        0x100030ac:    000a        ..      DCW    10
    .L.str.19
        0x100030ae:    495b        [I      DCW    18779
        0x100030b0:    56434341    ACCV    DCD    1447248705
        0x100030b4:    5d4c4f49    IOL]    DCD    1565282121
        0x100030b8:    20656854    The     DCD    543516756
        0x100030bc:    636f7270    proc    DCD    1668248176
        0x100030c0:    6f737365    esso    DCD    1869837157
        0x100030c4:    74612072    r at    DCD    1952522354
        0x100030c8:    706d6574    temp    DCD    1886217588
        0x100030cc:    20646574    ted     DCD    543450484
        0x100030d0:    69206e61    an i    DCD    1763733089
        0x100030d4:    7274736e    nstr    DCD    1920234350
        0x100030d8:    69746375    ucti    DCD    1769235317
        0x100030dc:    66206e6f    on f    DCD    1713401455
        0x100030e0:    68637465    etch    DCD    1751348325
        0x100030e4:    6f726620     fro    DCD    1869768224
        0x100030e8:    2061206d    m a     DCD    543236205
        0x100030ec:    61636f6c    loca    DCD    1633906540
        0x100030f0:    6e6f6974    tion    DCD    1852795252
        0x100030f4:    61687420     tha    DCD    1634235424
        0x100030f8:    6f642074    t do    DCD    1868832884
        0x100030fc:    6e207365    es n    DCD    1847620453
        0x10003100:    7020746f    ot p    DCD    1881175151
        0x10003104:    696d7265    ermi    DCD    1768780389
        0x10003108:    78652074    t ex    DCD    2019893364
        0x1000310c:    74756365    ecut    DCD    1953850213
        0x10003110:    2c6e6f69    ion,    DCD    745434985
        0x10003114:    20435020     PC     DCD    541282336
        0x10003118:    7830203a    : 0x    DCD    2016419898
        0x1000311c:    78383025    %08x    DCD    2016948261
        0x10003120:    0a0d        ..      DCW    2573
        0x10003122:    00          .       DCB    0
    .L.str.21
        0x10003123:    41          A       DCB    65
        0x10003124:    303a2054    T :0    DCD    809115732
        0x10003128:    38302578    x%08    DCD    942679416
        0x1000312c:    000a0d78    x...    DCD    658808
    .L.str.1
        0x10003130:    7261485b    [Har    DCD    1918978139
        0x10003134:    75614664    dFau    DCD    1969309284
        0x10003138:    485f746c    lt_H    DCD    1214215276
        0x1000313c:    6c646e61    andl    DCD    1818521185
        0x10003140:    435d7265    er]C    DCD    1130197605
        0x10003144:    65727275    urre    DCD    1701999221
        0x10003148:    6d20746e    nt m    DCD    1830843502
        0x1000314c:    203a7073    sp:     DCD    540700787
        0x10003150:    30257830    0x%0    DCD    807761968
        0x10003154:    000a5838    8X..    DCD    677944
    .Lstr.68
        0x10003158:    564e495b    [INV    DCD    1447971163
        0x1000315c:    615d4350    PC]a    DCD    1633502032
        0x10003160:    6e69206e    n in    DCD    1852383342
        0x10003164:    72676574    tegr    DCD    1919378804
        0x10003168:    20797469    ity     DCD    544830569
        0x1000316c:    63656863    chec    DCD    1667590243
        0x10003170:    7265206b    k er    DCD    1919230059
        0x10003174:    20726f72    ror     DCD    544370546
        0x10003178:    20736168    has     DCD    544432488
        0x1000317c:    7563636f    occu    DCD    1969447791
        0x10003180:    64657272    rred    DCD    1684370034
        0x10003184:    000d        ..      DCW    13
    .Lstr.66
        0x10003186:    555b        [U      DCW    21851
        0x10003188:    4645444e    NDEF    DCD    1178944590
        0x1000318c:    54534e49    INST    DCD    1414745673
        0x10003190:    6e615d52    R]an    DCD    1851874642
        0x10003194:    646e7520     und    DCD    1684960544
        0x10003198:    6e696665    efin    DCD    1852401253
        0x1000319c:    69206465    ed i    DCD    1763730533
        0x100031a0:    7274736e    nstr    DCD    1920234350
        0x100031a4:    69746375    ucti    DCD    1769235317
        0x100031a8:    65206e6f    on e    DCD    1696624239
        0x100031ac:    726f7272    rror    DCD    1919906418
        0x100031b0:    73616820     has    DCD    1935763488
        0x100031b4:    63636f20     occ    DCD    1667460896
        0x100031b8:    65727275    urre    DCD    1701999221
        0x100031bc:    0d64        d.      DCW    3428
        0x100031be:    00          .       DCB    0
    .Lstr.72
        0x100031bf:    5b          [       DCB    91
        0x100031c0:    42564944    DIVB    DCD    1112951108
        0x100031c4:    52455a59    YZER    DCD    1380276825
        0x100031c8:    6e615d4f    O]an    DCD    1851874639
        0x100031cc:    746e6920     int    DCD    1953392928
        0x100031d0:    72656765    eger    DCD    1919248229
        0x100031d4:    76696420     div    DCD    1986618400
        0x100031d8:    6f697369    isio    DCD    1869181801
        0x100031dc:    7962206e    n by    DCD    2036473966
        0x100031e0:    72657a20     zer    DCD    1919253024
        0x100031e4:    7265206f    o er    DCD    1919230063
        0x100031e8:    20726f72    ror     DCD    544370546
        0x100031ec:    20736168    has     DCD    544432488
        0x100031f0:    7563636f    occu    DCD    1969447791
        0x100031f4:    64657272    rred    DCD    1684370034
        0x100031f8:    000d        ..      DCW    13
    .Lstr.61
        0x100031fa:    495b        [I      DCW    18779
        0x100031fc:    4552504d    MPRE    DCD    1163022413
        0x10003200:    45534943    CISE    DCD    1163086147
        0x10003204:    495d5252    RR]I    DCD    1230852690
        0x10003208:    6572706d    mpre    DCD    1701998701
        0x1000320c:    65736963    cise    DCD    1702062435
        0x10003210:    74616420     dat    DCD    1952539680
        0x10003214:    63612061    a ac    DCD    1667309665
        0x10003218:    73736563    cess    DCD    1936942435
        0x1000321c:    72726520     err    DCD    1920099616
        0x10003220:    6820726f    or h    DCD    1746956911
        0x10003224:    6f207361    as o    DCD    1864397665
        0x10003228:    72756363    ccur    DCD    1920295779
        0x1000322c:    0d646572    red.    DCD    224683378
        0x10003230:    00          .       DCB    0
    .Lstr.71
        0x10003231:    5b554e      [UN     DCB    91,85,78
        0x10003234:    47494c41    ALIG    DCD    1195985985
        0x10003238:    5d44454e    NED]    DCD    1564755278
        0x1000323c:    75206e61    an u    DCD    1965059681
        0x10003240:    696c616e    nali    DCD    1768710510
        0x10003244:    64656e67    gned    DCD    1684368999
        0x10003248:    63636120     acc    DCD    1667457312
        0x1000324c:    20737365    ess     DCD    544437093
        0x10003250:    6f727265    erro    DCD    1869771365
        0x10003254:    61682072    r ha    DCD    1634214002
        0x10003258:    636f2073    s oc    DCD    1668227187
        0x1000325c:    72727563    curr    DCD    1920103779
        0x10003260:    000d6465    ed..    DCD    877669
    .Lstr.60
        0x10003264:    5542495b    [IBU    DCD    1430407515
        0x10003268:    52524553    SERR    DCD    1381123411
        0x1000326c:    736e695d    ]ins    DCD    1936615773
        0x10003270:    63757274    truc    DCD    1668641396
        0x10003274:    6e6f6974    tion    DCD    1852795252
        0x10003278:    73756220     bus    DCD    1937072672
        0x1000327c:    72726520     err    DCD    1920099616
        0x10003280:    6820726f    or h    DCD    1746956911
        0x10003284:    6f207361    as o    DCD    1864397665
        0x10003288:    72756363    ccur    DCD    1920295779
        0x1000328c:    0d646572    red.    DCD    224683378
        0x10003290:    00          .       DCB    0
    .Lstr.69
        0x10003291:    5b4e4f      [NO     DCB    91,78,79
        0x10003294:    615d5043    CP]a    DCD    1633505347
        0x10003298:    706f6320     cop    DCD    1886348064
        0x1000329c:    65636f72    roce    DCD    1701015410
        0x100032a0:    726f7373    ssor    DCD    1919906675
        0x100032a4:    73696420     dis    DCD    1936286752
        0x100032a8:    656c6261    able    DCD    1701601889
        0x100032ac:    726f2064    d or    DCD    1919885412
        0x100032b0:    746f6e20     not    DCD    1953459744
        0x100032b4:    65727020     pre    DCD    1701998624
        0x100032b8:    746e6573    sent    DCD    1953391987
        0x100032bc:    72726520     err    DCD    1920099616
        0x100032c0:    6820726f    or h    DCD    1746956911
        0x100032c4:    6f207361    as o    DCD    1864397665
        0x100032c8:    72756363    ccur    DCD    1920295779
        0x100032cc:    0d646572    red.    DCD    224683378
        0x100032d0:    00          .       DCB    0
    .Lstr.70
        0x100032d1:    5b5354      [ST     DCB    91,83,84
        0x100032d4:    5d464f4b    KOF]    DCD    1564888907
        0x100032d8:    74732061    a st    DCD    1953701985
        0x100032dc:    206b6361    ack     DCD    543908705
        0x100032e0:    7265766f    over    DCD    1919252079
        0x100032e4:    776f6c66    flow    DCD    2003790950
        0x100032e8:    72726520     err    DCD    1920099616
        0x100032ec:    6820726f    or h    DCD    1746956911
        0x100032f0:    6f207361    as o    DCD    1864397665
        0x100032f4:    72756363    ccur    DCD    1920295779
        0x100032f8:    0d646572    red.    DCD    224683378
        0x100032fc:    00          .       DCB    0
    .Lstr.67
        0x100032fd:    5b494e      [IN     DCB    91,73,78
        0x10003300:    41545356    VSTA    DCD    1096045398
        0x10003304:    205d4554    TE]     DCD    542983508
        0x10003308:    45206e61    an E    DCD    1159753313
        0x1000330c:    2e525350    PSR.    DCD    777147216
        0x10003310:    726f2054    T or    DCD    1919885396
        0x10003314:    53504520     EPS    DCD    1397769504
        0x10003318:    54492e52    R.IT    DCD    1414082130
        0x1000331c:    6c617620     val    DCD    1818326560
        0x10003320:    74696469    idit    DCD    1953064041
        0x10003324:    72652079    y er    DCD    1919230073
        0x10003328:    20726f72    ror     DCD    544370546
        0x1000332c:    20736168    has     DCD    544432488
        0x10003330:    7563636f    occu    DCD    1969447791
        0x10003334:    64657272    rred    DCD    1684370034
        0x10003338:    000d        ..      DCW    13
    .Lstr.58
        0x1000333a:    4d5b        [M      DCW    19803
        0x1000333c:    4550534c    LSPE    DCD    1162892108
        0x10003340:    415d5252    RR]A    DCD    1096634962
        0x10003344:    6d654d20     Mem    DCD    1835355424
        0x10003348:    616e614d    Mana    DCD    1634623821
        0x1000334c:    66206567    ge f    DCD    1713399143
        0x10003350:    746c7561    ault    DCD    1953264993
        0x10003354:    63636f20     occ    DCD    1667460896
        0x10003358:    65727275    urre    DCD    1701999221
        0x1000335c:    75642064    d du    DCD    1969496164
        0x10003360:    676e6972    ring    DCD    1735289202
        0x10003364:    6f6c6620     flo    DCD    1869375008
        0x10003368:    6e697461    atin    DCD    1852404833
        0x1000336c:    6f702d67    g-po    DCD    1869622631
        0x10003370:    20746e69    int     DCD    544501353
        0x10003374:    797a616c    lazy    DCD    2038063468
        0x10003378:    61747320     sta    DCD    1635021600
        0x1000337c:    70206574    te p    DCD    1881171316
        0x10003380:    65736572    rese    DCD    1702061426
        0x10003384:    74617672    rvat    DCD    1952544370
        0x10003388:    0d6e6f69    ion.    DCD    225341289
        0x1000338c:    00          .       DCB    0
    .Lstr.64
        0x1000338d:    5b4c53      [LS     DCB    91,76,83
        0x10003390:    52524550    PERR    DCD    1381123408
        0x10003394:    6220415d    ]A b    DCD    1646281053
        0x10003398:    66207375    us f    DCD    1713402741
        0x1000339c:    746c7561    ault    DCD    1953264993
        0x100033a0:    63636f20     occ    DCD    1667460896
        0x100033a4:    65727275    urre    DCD    1701999221
        0x100033a8:    75642064    d du    DCD    1969496164
        0x100033ac:    676e6972    ring    DCD    1735289202
        0x100033b0:    6f6c6620     flo    DCD    1869375008
        0x100033b4:    6e697461    atin    DCD    1852404833
        0x100033b8:    6f702d67    g-po    DCD    1869622631
        0x100033bc:    20746e69    int     DCD    544501353
        0x100033c0:    797a616c    lazy    DCD    2038063468
        0x100033c4:    61747320     sta    DCD    1635021600
        0x100033c8:    70206574    te p    DCD    1881171316
        0x100033cc:    65736572    rese    DCD    1702061426
        0x100033d0:    74617672    rvat    DCD    1952544370
        0x100033d4:    0d6e6f69    ion.    DCD    225341289
        0x100033d8:    00          .       DCB    0
    .Lstr.56
        0x100033d9:    5b4d55      [MU     DCB    91,77,85
        0x100033dc:    4b54534e    NSTK    DCD    1263817550
        0x100033e0:    5d525245    ERR]    DCD    1565676101
        0x100033e4:    74736e55    Unst    DCD    1953721941
        0x100033e8:    206b6361    ack     DCD    543908705
        0x100033ec:    20726f66    for     DCD    544370534
        0x100033f0:    65206e61    an e    DCD    1696624225
        0x100033f4:    70656378    xcep    DCD    1885692792
        0x100033f8:    6e6f6974    tion    DCD    1852795252
        0x100033fc:    74657220     ret    DCD    1952805408
        0x10003400:    206e7275    urn     DCD    544109173
        0x10003404:    20736168    has     DCD    544432488
        0x10003408:    73756163    caus    DCD    1937072483
        0x1000340c:    6f206465    ed o    DCD    1864393829
        0x10003410:    6f20656e    ne o    DCD    1864394094
        0x10003414:    6f6d2072    r mo    DCD    1869422706
        0x10003418:    61206572    re a    DCD    1629513074
        0x1000341c:    73656363    cces    DCD    1936024419
        0x10003420:    69762073    s vi    DCD    1769349235
        0x10003424:    74616c6f    olat    DCD    1952541807
        0x10003428:    736e6f69    ions    DCD    1936617321
        0x1000342c:    000d        ..      DCW    13
    .Lstr.57
        0x1000342e:    4d5b        [M      DCW    19803
        0x10003430:    454b5453    STKE    DCD    1162564691
        0x10003434:    535d5252    RR]S    DCD    1398624850
        0x10003438:    6b636174    tack    DCD    1801675124
        0x1000343c:    20676e69    ing     DCD    543649385
        0x10003440:    20726f66    for     DCD    544370534
        0x10003444:    65206e61    an e    DCD    1696624225
        0x10003448:    70656378    xcep    DCD    1885692792
        0x1000344c:    6e6f6974    tion    DCD    1852795252
        0x10003450:    746e6520     ent    DCD    1953391904
        0x10003454:    68207972    ry h    DCD    1746958706
        0x10003458:    63207361    as c    DCD    1663071073
        0x1000345c:    65737561    ause    DCD    1702065505
        0x10003460:    6e6f2064    d on    DCD    1852776548
        0x10003464:    726f2065    e or    DCD    1919885413
        0x10003468:    726f6d20     mor    DCD    1919905056
        0x1000346c:    63612065    e ac    DCD    1667309669
        0x10003470:    73736563    cess    DCD    1936942435
        0x10003474:    6f697620     vio    DCD    1869182496
        0x10003478:    6974616c    lati    DCD    1769234796
        0x1000347c:    0d736e6f    ons.    DCD    225668719
        0x10003480:    00          .       DCB    0
    .Lstr.62
        0x10003481:    5b554e      [UN     DCB    91,85,78
        0x10003484:    454b5453    STKE    DCD    1162564691
        0x10003488:    555d5252    RR]U    DCD    1432179282
        0x1000348c:    6174736e    nsta    DCD    1635021678
        0x10003490:    66206b63    ck f    DCD    1713400675
        0x10003494:    6120726f    or a    DCD    1629516399
        0x10003498:    7865206e    n ex    DCD    2019893358
        0x1000349c:    74706563    cept    DCD    1953523043
        0x100034a0:    206e6f69    ion     DCD    544108393
        0x100034a4:    75746572    retu    DCD    1970562418
        0x100034a8:    68206e72    rn h    DCD    1746955890
        0x100034ac:    63207361    as c    DCD    1663071073
        0x100034b0:    65737561    ause    DCD    1702065505
        0x100034b4:    6e6f2064    d on    DCD    1852776548
        0x100034b8:    726f2065    e or    DCD    1919885413
        0x100034bc:    726f6d20     mor    DCD    1919905056
        0x100034c0:    75422065    e Bu    DCD    1967267941
        0x100034c4:    75614673    sFau    DCD    1969309299
        0x100034c8:    0d73746c    lts.    DCD    225670252
        0x100034cc:    00          .       DCB    0
    .Lstr.63
        0x100034cd:    5b5354      [ST     DCB    91,83,84
        0x100034d0:    5252454b    KERR    DCD    1381123403
        0x100034d4:    6174535d    ]Sta    DCD    1635013469
        0x100034d8:    6e696b63    ckin    DCD    1852402531
        0x100034dc:    6f662067    g fo    DCD    1868963943
        0x100034e0:    6e612072    r an    DCD    1851859058
        0x100034e4:    63786520     exc    DCD    1668834592
        0x100034e8:    69747065    epti    DCD    1769238629
        0x100034ec:    65206e6f    on e    DCD    1696624239
        0x100034f0:    7972746e    ntry    DCD    2037544046
        0x100034f4:    73616820     has    DCD    1935763488
        0x100034f8:    75616320     cau    DCD    1969316640
        0x100034fc:    20646573    sed     DCD    543450483
        0x10003500:    20656e6f    one     DCD    543518319
        0x10003504:    6d20726f    or m    DCD    1830842991
        0x10003508:    2065726f    ore     DCD    543519343
        0x1000350c:    46737542    BusF    DCD    1181971778
        0x10003510:    746c7561    ault    DCD    1953264993
        0x10003514:    0d73        s.      DCW    3443
        0x10003516:    00          .       DCB    0
    .Lstr.55
        0x10003517:    4d          M       DCB    77
        0x10003518:    614d6d65    emMa    DCD    1632464229
        0x1000351c:    6567616e    nage    DCD    1701273966
        0x10003520:    75614620     Fau    DCD    1969309216
        0x10003524:    000d746c    lt..    DCD    881772
    .Lstr.65
        0x10003528:    67617355    Usag    DCD    1734439765
        0x1000352c:    61462065    e Fa    DCD    1631985765
        0x10003530:    0d746c75    ult.    DCD    225733749
        0x10003534:    00          .       DCB    0
    .Lstr.54
        0x10003535:    436f6e      Con     DCB    67,111,110
        0x10003538:    75676966    figu    DCD    1969711462
        0x1000353c:    6c626172    rabl    DCD    1818386802
        0x10003540:    61462065    e Fa    DCD    1631985765
        0x10003544:    0d746c75    ult.    DCD    225733749
        0x10003548:    00          .       DCB    0
    .Lstr.52
        0x10003549:    566563      Vec     DCB    86,101,99
        0x1000354c:    20726f74    tor     DCD    544370548
        0x10003550:    6c756146    Faul    DCD    1819631942
        0x10003554:    0d74        t.      DCW    3444
        0x10003556:    00          .       DCB    0
    .Lstr.59
        0x10003557:    42          B       DCB    66
        0x10003558:    46207375    us F    DCD    1176531829
        0x1000355c:    746c7561    ault    DCD    1953264993
        0x10003560:    000d        ..      DCW    13
    .Lstr.53
        0x10003562:    6544        De      DCW    25924
        0x10003564:    20677562    bug     DCD    543651170
        0x10003568:    6e657645    Even    DCD    1852143173
        0x1000356c:    61462074    t Fa    DCD    1631985780
        0x10003570:    0d746c75    ult.    DCD    225733749
        0x10003574:    00          .       DCB    0
    .Lstr.48
        0x10003575:    4f6363      Occ     DCB    79,99,99
        0x10003578:    64657275    ured    DCD    1684370037
        0x1000357c:    206e6920     in     DCD    544106784
        0x10003580:    6b736174    task    DCD    1802723700
        0x10003584:    002e        ..      DCW    46
    .Lstr.49
        0x10003586:    7355        Us      DCW    29525
        0x10003588:    20676e69    ing     DCD    543649385
        0x1000358c:    4d323375    u32M    DCD    1295135605
        0x10003590:    002e7073    sp..    DCD    3043443
    .Lstr
        0x10003594:    7563634f    Occu    DCD    1969447759
        0x10003598:    20646572    red     DCD    543450482
        0x1000359c:    69206e69    in i    DCD    1763733097
        0x100035a0:    7265746e    nter    DCD    1919251566
        0x100035a4:    74707572    rupt    DCD    1953527154
        0x100035a8:    0000002e    ....    DCD    46

** Section #4 'RAM_VECTOR' (SHT_NOBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 300 bytes (alignment 512)
    Address: 0x20003000


** Section #5 'RAM_CODE' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 148 bytes (alignment 4)
    Address: 0x20003200

    $t
    GPIO_IRQ0_Handler
        0x20003200:    b510        ..      PUSH     {r4,lr}
        0x20003202:    b082        ..      SUB      sp,sp,#8
        0x20003204:    f24b0400    K...    MOVW     r4,#0xb000
        0x20003208:    f2c60404    ....    MOVT     r4,#0x6004
        0x2000320c:    aa01        ..      ADD      r2,sp,#4
        0x2000320e:    4620         F      MOV      r0,r4
        0x20003210:    f04f6100    O..a    MOV      r1,#0x8000000
        0x20003214:    f000f82a    ..*.    BL       $Ven$TT$L$$rom_hw_gpio_get_pin_interrupt_flag ; 0x2000326c
        0x20003218:    4620         F      MOV      r0,r4
        0x2000321a:    f04f6100    O..a    MOV      r1,#0x8000000
        0x2000321e:    f000f82a    ..*.    BL       $Ven$TT$L$$rom_hw_gpio_clear_pin_interrupt_flag ; 0x20003276
        0x20003222:    9901        ..      LDR      r1,[sp,#4]
        0x20003224:    a007        ..      ADR      r0,{pc}+0x20 ; 0x20003244
        0x20003226:    f000f82b    ..+.    BL       $Ven$TT$L$$__2printf ; 0x20003280
        0x2000322a:    466a        jF      MOV      r2,sp
        0x2000322c:    4620         F      MOV      r0,r4
        0x2000322e:    f04f6100    O..a    MOV      r1,#0x8000000
        0x20003232:    f000f82a    ..*.    BL       $Ven$TT$L$$rom_hw_gpio_get_pin_input_level ; 0x2000328a
        0x20003236:    9900        ..      LDR      r1,[sp,#0]
        0x20003238:    a007        ..      ADR      r0,{pc}+0x20 ; 0x20003258
        0x2000323a:    f000f821    ..!.    BL       $Ven$TT$L$$__2printf ; 0x20003280
        0x2000323e:    b002        ..      ADD      sp,sp,#8
        0x20003240:    bd10        ..      POP      {r4,pc}
        0x20003242:    bf00        ..      NOP      
    $d
        0x20003244:    69206f69    io i    DCD    1763733353
        0x20003248:    6620746e    nt f    DCD    1713402990
        0x2000324c:    3a67616c    lag:    DCD    979853676
        0x20003250:    38302520     %08    DCD    942679328
        0x20003254:    00000a58    X...    DCD    2648
        0x20003258:    69206f69    io i    DCD    1763733353
        0x2000325c:    6c20746e    nt l    DCD    1814066286
        0x20003260:    6c657665    evel    DCD    1818588773
        0x20003264:    3025203a    : %0    DCD    807739450
        0x20003268:    000a5838    8X..    DCD    677944
    $t
    $Ven$TT$L$$rom_hw_gpio_get_pin_interrupt_flag
        0x2000326c:    f2495c4d    I.M\    MOV      r12,#0x954d
        0x20003270:    f2c00c00    ....    MOVT     r12,#0
        0x20003274:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_gpio_clear_pin_interrupt_flag
        0x20003276:    f2493c09    I..<    MOV      r12,#0x9309
        0x2000327a:    f2c00c00    ....    MOVT     r12,#0
        0x2000327e:    4760        `G      BX       r12
    $Ven$TT$L$$__2printf
        0x20003280:    f6423c5d    B.]<    MOV      r12,#0x2b5d
        0x20003284:    f2c10c00    ....    MOVT     r12,#0x1000
        0x20003288:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_gpio_get_pin_input_level
        0x2000328a:    f2495c15    I..\    MOV      r12,#0x9515
        0x2000328e:    f2c00c00    ....    MOVT     r12,#0
        0x20003292:    4760        `G      BX       r12

** Section #6 'RAM_DATA' (SHT_PROGBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 4 bytes (alignment 4)
    Address: 0x2000b000


** Section #7 'RAM_DATA' (SHT_NOBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 24 bytes (alignment 4)
    Address: 0x2000b004


** Section #8 'RAM_STACK_HEAP' (SHT_NOBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 4096 bytes (alignment 8)
    Address: 0x2000f000


** Section #9 '.debug_abbrev' (SHT_PROGBITS)
    Size   : 1581 bytes


** Section #10 '.debug_frame' (SHT_PROGBITS)
    Size   : 2260 bytes


** Section #11 '.debug_info' (SHT_PROGBITS)
    Size   : 10004 bytes


** Section #12 '.debug_line' (SHT_PROGBITS)
    Size   : 3038 bytes


** Section #13 '.debug_loc' (SHT_PROGBITS)
    Size   : 1470 bytes


** Section #14 '.debug_ranges' (SHT_PROGBITS)
    Size   : 160 bytes


** Section #15 '.debug_str' (SHT_PROGBITS)
    Size   : 9047 bytes


** Section #16 '.symtab' (SHT_SYMTAB)
    Size   : 18368 bytes (alignment 4)
    String table #17 '.strtab'
    Last local symbol no. 146


** Section #17 '.strtab' (SHT_STRTAB)
    Size   : 26500 bytes


** Section #18 '.note' (SHT_NOTE)
    Size   : 48 bytes (alignment 4)


** Section #19 '.comment' (SHT_PROGBITS)
    Size   : 1332 bytes


** Section #20 '.shstrtab' (SHT_STRTAB)
    Size   : 208 bytes


