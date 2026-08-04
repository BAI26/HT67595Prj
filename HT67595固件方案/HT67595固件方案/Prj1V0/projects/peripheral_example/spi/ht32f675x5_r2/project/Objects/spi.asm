
========================================================================

** ELF Header Information

    File Name: .\Objects\spi.axf

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
    Section header entries: 20

    Program header offset: 105232 (0x00019b10)
    Section header offset: 105296 (0x00019b50)

    Section header string table index: 19

========================================================================

** Program header #0 (PT_LOAD) [PF_R]
    Size : 4096 bytes
    Virtual address: 0x10000000 (Alignment 4)


====================================

** Program header #1 (PT_LOAD) [PF_X + PF_W + PF_R + PF_ARM_ENTRY]
    Size : 15624 bytes (10872 bytes in file)
    Virtual address: 0x10002000 (Alignment 512)


========================================================================

** Section #1 'BOOT2_CODE' (SHT_PROGBITS) [SHF_ALLOC]
    Size   : 4096 bytes
    Address: 0x10000000


** Section #2 'INIT' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 792 bytes (alignment 4)
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
        0x10002074:    20003c99    .<.     DCD    536886425
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
        0x100020d0:    2000371d    .7.     DCD    536885021
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
        0x10002148:    4800        .H      LDR      r0,[pc,#0] ; [0x1000214c] = 0x20004099
        0x1000214a:    4700        .G      BX       r0
    $d
        0x1000214c:    20004099    .@.     DCD    536887449
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
        0x10002160:    482d        -H      LDR      r0,[pc,#180] ; [0x10002218] = 0x1000224d
        0x10002162:    4780        .G      BLX      r0
        0x10002164:    482d        -H      LDR      r0,[pc,#180] ; [0x1000221c] = 0x10002141
        0x10002166:    4700        .G      BX       r0
    NMI_Handler
        0x10002168:    ea5f000e    _...    MOVS     r0,lr
        0x1000216c:    f3ef8108    ....    MRS      r1,MSP
        0x10002170:    f3ef8209    ....    MRS      r2,PSP
        0x10002174:    4b2a        *K      LDR      r3,[pc,#168] ; [0x10002220] = 0x20003c71
        0x10002176:    4798        .G      BLX      r3
        0x10002178:    e7fe        ..      B        0x10002178 ; NMI_Handler + 16
    HardFault_Handler
        0x1000217a:    ea5f000e    _...    MOVS     r0,lr
        0x1000217e:    f3ef8108    ....    MRS      r1,MSP
        0x10002182:    f3ef8209    ....    MRS      r2,PSP
        0x10002186:    4b27        'K      LDR      r3,[pc,#156] ; [0x10002224] = 0x20003801
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
        0x100021b4:    e7fe        ..      B        0x100021b4 ; SPI0_IRQ_Handler + 2
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
        0x100021e2:    e7fe        ..      B        0x100021e2 ; DMA_IRQ5_Handler + 2
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
        0x10002218:    1000224d    M"..    DCD    268444237
        0x1000221c:    10002141    A!..    DCD    268443969
        0x10002220:    20003c71    q<.     DCD    536886385
        0x10002224:    20003801    .8.     DCD    536885249
    $t
    .text
    __scatterload
    __scatterload_rt2
        0x10002228:    4c06        .L      LDR      r4,[pc,#24] ; [0x10002244] = 0x100022e8
        0x1000222a:    4d07        .M      LDR      r5,[pc,#28] ; [0x10002248] = 0x10002318
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
        0x10002244:    100022e8    ."..    DCD    268444392
        0x10002248:    10002318    .#..    DCD    268444440
    $t.0
    SystemInit
        0x1000224c:    b082        ..      SUB      sp,sp,#8
        0x1000224e:    2000        .       MOVS     r0,#0
        0x10002250:    9001        ..      STR      r0,[sp,#4]
        0x10002252:    9000        ..      STR      r0,[sp,#0]
        0x10002254:    f2420100    B...    MOVW     r1,#0x2000
        0x10002258:    f2c10100    ....    MOVT     r1,#0x1000
        0x1000225c:    9100        ..      STR      r1,[sp,#0]
        0x1000225e:    9001        ..      STR      r0,[sp,#4]
        0x10002260:    e7ff        ..      B        0x10002262 ; SystemInit + 22
        0x10002262:    9801        ..      LDR      r0,[sp,#4]
        0x10002264:    284a        J(      CMP      r0,#0x4a
        0x10002266:    d810        ..      BHI      0x1000228a ; SystemInit + 62
        0x10002268:    e7ff        ..      B        0x1000226a ; SystemInit + 30
        0x1000226a:    9800        ..      LDR      r0,[sp,#0]
        0x1000226c:    9901        ..      LDR      r1,[sp,#4]
        0x1000226e:    f8500021    P.!.    LDR      r0,[r0,r1,LSL #2]
        0x10002272:    9a01        ..      LDR      r2,[sp,#4]
        0x10002274:    f2430100    C...    MOVW     r1,#0x3000
        0x10002278:    f2c20100    ....    MOVT     r1,#0x2000
        0x1000227c:    f8410022    A.".    STR      r0,[r1,r2,LSL #2]
        0x10002280:    e7ff        ..      B        0x10002282 ; SystemInit + 54
        0x10002282:    9801        ..      LDR      r0,[sp,#4]
        0x10002284:    3001        .0      ADDS     r0,#1
        0x10002286:    9001        ..      STR      r0,[sp,#4]
        0x10002288:    e7eb        ..      B        0x10002262 ; SystemInit + 22
        0x1000228a:    f2430000    C...    MOVW     r0,#0x3000
        0x1000228e:    f2c20000    ....    MOVT     r0,#0x2000
        0x10002292:    f64e5108    N..Q    MOV      r1,#0xed08
        0x10002296:    f2ce0100    ....    MOVT     r1,#0xe000
        0x1000229a:    6008        .`      STR      r0,[r1,#0]
        0x1000229c:    f64e5188    N..Q    MOV      r1,#0xed88
        0x100022a0:    f2ce0100    ....    MOVT     r1,#0xe000
        0x100022a4:    6808        .h      LDR      r0,[r1,#0]
        0x100022a6:    f4400070    @.p.    ORR      r0,r0,#0xf00000
        0x100022aa:    6008        .`      STR      r0,[r1,#0]
        0x100022ac:    f64e5114    N..Q    MOV      r1,#0xed14
        0x100022b0:    f2ce0100    ....    MOVT     r1,#0xe000
        0x100022b4:    6808        .h      LDR      r0,[r1,#0]
        0x100022b6:    f0400010    @...    ORR      r0,r0,#0x10
        0x100022ba:    6008        .`      STR      r0,[r1,#0]
        0x100022bc:    6808        .h      LDR      r0,[r1,#0]
        0x100022be:    f4407080    @..p    ORR      r0,r0,#0x100
        0x100022c2:    6008        .`      STR      r0,[r1,#0]
        0x100022c4:    b002        ..      ADD      sp,sp,#8
        0x100022c6:    4770        pG      BX       lr
    $t
    i.__scatterload_copy
    __scatterload_copy
        0x100022c8:    e002        ..      B        0x100022d0 ; __scatterload_copy + 8
        0x100022ca:    c808        ..      LDM      r0!,{r3}
        0x100022cc:    1f12        ..      SUBS     r2,r2,#4
        0x100022ce:    c108        ..      STM      r1!,{r3}
        0x100022d0:    2a00        .*      CMP      r2,#0
        0x100022d2:    d1fa        ..      BNE      0x100022ca ; __scatterload_copy + 2
        0x100022d4:    4770        pG      BX       lr
    i.__scatterload_null
    __scatterload_null
        0x100022d6:    4770        pG      BX       lr
    i.__scatterload_zeroinit
    __scatterload_zeroinit
        0x100022d8:    2000        .       MOVS     r0,#0
        0x100022da:    e001        ..      B        0x100022e0 ; __scatterload_zeroinit + 8
        0x100022dc:    c101        ..      STM      r1!,{r0}
        0x100022de:    1f12        ..      SUBS     r2,r2,#4
        0x100022e0:    2a00        .*      CMP      r2,#0
        0x100022e2:    d1fb        ..      BNE      0x100022dc ; __scatterload_zeroinit + 4
        0x100022e4:    4770        pG      BX       lr
        0x100022e6:    0000        ..      MOVS     r0,r0
    $d.realdata
    Region$$Table$$Base
        0x100022e8:    10002318    .#..    DCD    268444440
        0x100022ec:    20003200    .2.     DCD    536883712
        0x100022f0:    0000275c    \'..    DCD    10076
        0x100022f4:    100022c8    ."..    DCD    268444360
        0x100022f8:    10004a74    tJ..    DCD    268454516
        0x100022fc:    2000b000    ...     DCD    536915968
        0x10002300:    00000004    ....    DCD    4
        0x10002304:    100022c8    ."..    DCD    268444360
        0x10002308:    10004a78    xJ..    DCD    268454520
        0x1000230c:    2000b004    ...     DCD    536915972
        0x10002310:    0000007c    |...    DCD    124
        0x10002314:    100022d8    ."..    DCD    268444376
    Region$$Table$$Limit

** Section #3 'RAM_VECTOR' (SHT_NOBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 300 bytes (alignment 512)
    Address: 0x20003000


** Section #4 'RAM_CODE' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 10076 bytes (alignment 4)
    Address: 0x20003200

    $t
    .text
    __aeabi_uidiv
    __aeabi_uidivmod
        0x20003200:    b530        0.      PUSH     {r4,r5,lr}
        0x20003202:    460b        .F      MOV      r3,r1
        0x20003204:    4601        .F      MOV      r1,r0
        0x20003206:    2000        .       MOVS     r0,#0
        0x20003208:    2220         "      MOVS     r2,#0x20
        0x2000320a:    2401        .$      MOVS     r4,#1
        0x2000320c:    e009        ..      B        0x20003222 ; __aeabi_uidiv + 34
        0x2000320e:    fa21f502    !...    LSR      r5,r1,r2
        0x20003212:    429d        .B      CMP      r5,r3
        0x20003214:    d305        ..      BCC      0x20003222 ; __aeabi_uidiv + 34
        0x20003216:    fa03f502    ....    LSL      r5,r3,r2
        0x2000321a:    1b49        I.      SUBS     r1,r1,r5
        0x2000321c:    fa04f502    ....    LSL      r5,r4,r2
        0x20003220:    4428        (D      ADD      r0,r0,r5
        0x20003222:    1e15        ..      SUBS     r5,r2,#0
        0x20003224:    f1a20201    ....    SUB      r2,r2,#1
        0x20003228:    dcf1        ..      BGT      0x2000320e ; __aeabi_uidiv + 14
        0x2000322a:    bd30        0.      POP      {r4,r5,pc}
    .text
    __aeabi_uldivmod
        0x2000322c:    e92d5ff0    -.._    PUSH     {r4-r12,lr}
        0x20003230:    4605        .F      MOV      r5,r0
        0x20003232:    2000        .       MOVS     r0,#0
        0x20003234:    4692        .F      MOV      r10,r2
        0x20003236:    469b        .F      MOV      r11,r3
        0x20003238:    4688        .F      MOV      r8,r1
        0x2000323a:    4606        .F      MOV      r6,r0
        0x2000323c:    4681        .F      MOV      r9,r0
        0x2000323e:    2440        @$      MOVS     r4,#0x40
        0x20003240:    e01b        ..      B        0x2000327a ; __aeabi_uldivmod + 78
        0x20003242:    4628        (F      MOV      r0,r5
        0x20003244:    4641        AF      MOV      r1,r8
        0x20003246:    4647        GF      MOV      r7,r8
        0x20003248:    4622        "F      MOV      r2,r4
        0x2000324a:    f000f9e8    ....    BL       __aeabi_llsr ; 0x2000361e
        0x2000324e:    4653        SF      MOV      r3,r10
        0x20003250:    465a        ZF      MOV      r2,r11
        0x20003252:    1ac0        ..      SUBS     r0,r0,r3
        0x20003254:    4191        .A      SBCS     r1,r1,r2
        0x20003256:    d310        ..      BCC      0x2000327a ; __aeabi_uldivmod + 78
        0x20003258:    4611        .F      MOV      r1,r2
        0x2000325a:    4618        .F      MOV      r0,r3
        0x2000325c:    4622        "F      MOV      r2,r4
        0x2000325e:    f000f9cf    ....    BL       __aeabi_llsl ; 0x20003600
        0x20003262:    1a2d        -.      SUBS     r5,r5,r0
        0x20003264:    eb670801    g...    SBC      r8,r7,r1
        0x20003268:    464f        OF      MOV      r7,r9
        0x2000326a:    4622        "F      MOV      r2,r4
        0x2000326c:    2001        .       MOVS     r0,#1
        0x2000326e:    2100        .!      MOVS     r1,#0
        0x20003270:    f000f9c6    ....    BL       __aeabi_llsl ; 0x20003600
        0x20003274:    eb170900    ....    ADDS     r9,r7,r0
        0x20003278:    414e        NA      ADCS     r6,r6,r1
        0x2000327a:    1e20         .      SUBS     r0,r4,#0
        0x2000327c:    f1a40401    ....    SUB      r4,r4,#1
        0x20003280:    dcdf        ..      BGT      0x20003242 ; __aeabi_uldivmod + 22
        0x20003282:    4648        HF      MOV      r0,r9
        0x20003284:    4631        1F      MOV      r1,r6
        0x20003286:    462a        *F      MOV      r2,r5
        0x20003288:    4643        CF      MOV      r3,r8
        0x2000328a:    e8bd9ff0    ....    POP      {r4-r12,pc}
    .text
    .text
    __I$use$fp
    __aeabi_dadd
        0x2000328e:    e92d4ffe    -..O    PUSH     {r1-r11,lr}
        0x20003292:    4680        .F      MOV      r8,r0
        0x20003294:    ea810003    ....    EOR      r0,r1,r3
        0x20003298:    0fc0        ..      LSRS     r0,r0,#31
        0x2000329a:    460c        .F      MOV      r4,r1
        0x2000329c:    9000        ..      STR      r0,[sp,#0]
        0x2000329e:    f0214100    !..A    BIC      r1,r1,#0x80000000
        0x200032a2:    f0234500    #..E    BIC      r5,r3,#0x80000000
        0x200032a6:    ebb80002    ....    SUBS     r0,r8,r2
        0x200032aa:    41a9        .A      SBCS     r1,r1,r5
        0x200032ac:    d205        ..      BCS      0x200032ba ; __I$use$fp + 44
        0x200032ae:    4640        @F      MOV      r0,r8
        0x200032b0:    4621        !F      MOV      r1,r4
        0x200032b2:    4690        .F      MOV      r8,r2
        0x200032b4:    461c        .F      MOV      r4,r3
        0x200032b6:    460b        .F      MOV      r3,r1
        0x200032b8:    4602        .F      MOV      r2,r0
        0x200032ba:    f0234000    #..@    BIC      r0,r3,#0x80000000
        0x200032be:    4310        .C      ORRS     r0,r0,r2
        0x200032c0:    d047        G.      BEQ      0x20003352 ; __I$use$fp + 196
        0x200032c2:    0d27        '.      LSRS     r7,r4,#20
        0x200032c4:    f3c7000a    ....    UBFX     r0,r7,#0,#11
        0x200032c8:    f3c3510a    ...Q    UBFX     r1,r3,#20,#11
        0x200032cc:    9002        ..      STR      r0,[sp,#8]
        0x200032ce:    1a40        @.      SUBS     r0,r0,r1
        0x200032d0:    9001        ..      STR      r0,[sp,#4]
        0x200032d2:    2840        @(      CMP      r0,#0x40
        0x200032d4:    da6b        k.      BGE      0x200033ae ; __I$use$fp + 288
        0x200032d6:    f3c30013    ....    UBFX     r0,r3,#0,#20
        0x200032da:    f4401b80    @...    ORR      r11,r0,#0x100000
        0x200032de:    9800        ..      LDR      r0,[sp,#0]
        0x200032e0:    4692        .F      MOV      r10,r2
        0x200032e2:    b120         .      CBZ      r0,0x200032ee ; __I$use$fp + 96
        0x200032e4:    2300        .#      MOVS     r3,#0
        0x200032e6:    ebd20a03    ....    RSBS     r10,r2,r3
        0x200032ea:    eb630b0b    c...    SBC      r11,r3,r11
        0x200032ee:    9801        ..      LDR      r0,[sp,#4]
        0x200032f0:    4659        YF      MOV      r1,r11
        0x200032f2:    f1c00240    ..@.    RSB      r2,r0,#0x40
        0x200032f6:    4650        PF      MOV      r0,r10
        0x200032f8:    f000f982    ....    BL       __aeabi_llsl ; 0x20003600
        0x200032fc:    4606        .F      MOV      r6,r0
        0x200032fe:    460d        .F      MOV      r5,r1
        0x20003300:    4650        PF      MOV      r0,r10
        0x20003302:    4659        YF      MOV      r1,r11
        0x20003304:    9a01        ..      LDR      r2,[sp,#4]
        0x20003306:    f000f99a    ....    BL       __aeabi_lasr ; 0x2000363e
        0x2000330a:    eb100008    ....    ADDS     r0,r0,r8
        0x2000330e:    4161        aA      ADCS     r1,r1,r4
        0x20003310:    2400        .$      MOVS     r4,#0
        0x20003312:    ea875211    ...R    EOR      r2,r7,r1,LSR #20
        0x20003316:    ea8473e7    ...s    EOR      r3,r4,r7,ASR #31
        0x2000331a:    431a        .C      ORRS     r2,r2,r3
        0x2000331c:    d040        @.      BEQ      0x200033a0 ; __I$use$fp + 274
        0x2000331e:    9a00        ..      LDR      r2,[sp,#0]
        0x20003320:    b362        b.      CBZ      r2,0x2000337c ; __I$use$fp + 238
        0x20003322:    9a01        ..      LDR      r2,[sp,#4]
        0x20003324:    2a01        .*      CMP      r2,#1
        0x20003326:    ea4f5207    O..R    LSL      r2,r7,#20
        0x2000332a:    dc15        ..      BGT      0x20003358 ; __I$use$fp + 202
        0x2000332c:    1b00        ..      SUBS     r0,r0,r4
        0x2000332e:    eb610102    a...    SBC      r1,r1,r2
        0x20003332:    f04f4200    O..B    MOV      r2,#0x80000000
        0x20003336:    ea025207    ...R    AND      r2,r2,r7,LSL #20
        0x2000333a:    e9cd4200    ...B    STRD     r4,r2,[sp,#0]
        0x2000333e:    1c00        ..      ADDS     r0,r0,#0
        0x20003340:    f5411180    A...    ADC      r1,r1,#0x100000
        0x20003344:    4632        2F      MOV      r2,r6
        0x20003346:    462b        +F      MOV      r3,r5
        0x20003348:    f000f99a    ....    BL       _double_epilogue ; 0x20003680
        0x2000334c:    b003        ..      ADD      sp,sp,#0xc
        0x2000334e:    e8bd8ff0    ....    POP      {r4-r11,pc}
        0x20003352:    4640        @F      MOV      r0,r8
        0x20003354:    4621        !F      MOV      r1,r4
        0x20003356:    e7f9        ..      B        0x2000334c ; __I$use$fp + 190
        0x20003358:    1b00        ..      SUBS     r0,r0,r4
        0x2000335a:    eb610102    a...    SBC      r1,r1,r2
        0x2000335e:    1c00        ..      ADDS     r0,r0,#0
        0x20003360:    f5411380    A...    ADC      r3,r1,#0x100000
        0x20003364:    1800        ..      ADDS     r0,r0,r0
        0x20003366:    415b        [A      ADCS     r3,r3,r3
        0x20003368:    1820         .      ADDS     r0,r4,r0
        0x2000336a:    f5a21700    ....    SUB      r7,r2,#0x200000
        0x2000336e:    eb470103    G...    ADC      r1,r7,r3
        0x20003372:    ea4070d5    @..p    ORR      r0,r0,r5,LSR #31
        0x20003376:    19b6        ..      ADDS     r6,r6,r6
        0x20003378:    416d        mA      ADCS     r5,r5,r5
        0x2000337a:    e011        ..      B        0x200033a0 ; __I$use$fp + 274
        0x2000337c:    086d        m.      LSRS     r5,r5,#1
        0x2000337e:    ea4f0636    O.6.    RRX      r6,r6
        0x20003382:    ea4575c0    E..u    ORR      r5,r5,r0,LSL #31
        0x20003386:    ea4f5207    O..R    LSL      r2,r7,#20
        0x2000338a:    1b00        ..      SUBS     r0,r0,r4
        0x2000338c:    eb610102    a...    SBC      r1,r1,r2
        0x20003390:    1c00        ..      ADDS     r0,r0,#0
        0x20003392:    f5411180    A...    ADC      r1,r1,#0x100000
        0x20003396:    0849        I.      LSRS     r1,r1,#1
        0x20003398:    ea4f0030    O.0.    RRX      r0,r0
        0x2000339c:    1900        ..      ADDS     r0,r0,r4
        0x2000339e:    4151        QA      ADCS     r1,r1,r2
        0x200033a0:    4632        2F      MOV      r2,r6
        0x200033a2:    462b        +F      MOV      r3,r5
        0x200033a4:    b003        ..      ADD      sp,sp,#0xc
        0x200033a6:    e8bd4ff0    ...O    POP      {r4-r11,lr}
        0x200033aa:    f000b95a    ..Z.    B.W      _double_round ; 0x20003662
        0x200033ae:    9800        ..      LDR      r0,[sp,#0]
        0x200033b0:    2201        ."      MOVS     r2,#1
        0x200033b2:    0040        @.      LSLS     r0,r0,#1
        0x200033b4:    2300        .#      MOVS     r3,#0
        0x200033b6:    ebd00202    ....    RSBS     r2,r0,r2
        0x200033ba:    eb6373e0    c..s    SBC      r3,r3,r0,ASR #31
        0x200033be:    9800        ..      LDR      r0,[sp,#0]
        0x200033c0:    4621        !F      MOV      r1,r4
        0x200033c2:    ea4f74e0    O..t    ASR      r4,r0,#31
        0x200033c6:    ebb80000    ....    SUBS     r0,r8,r0
        0x200033ca:    eb610104    a...    SBC      r1,r1,r4
        0x200033ce:    e7e9        ..      B        0x200033a4 ; __I$use$fp + 278
    __aeabi_dsub
        0x200033d0:    f0834300    ...C    EOR      r3,r3,#0x80000000
        0x200033d4:    e75b        [.      B        __I$use$fp ; 0x2000328e
    __aeabi_drsub
        0x200033d6:    f0814100    ...A    EOR      r1,r1,#0x80000000
        0x200033da:    e758        X.      B        __I$use$fp ; 0x2000328e
    .text
    __aeabi_dmul
        0x200033dc:    e92d4ffe    -..O    PUSH     {r1-r11,lr}
        0x200033e0:    ea810403    ....    EOR      r4,r1,r3
        0x200033e4:    f0044400    ...D    AND      r4,r4,#0x80000000
        0x200033e8:    f0214100    !..A    BIC      r1,r1,#0x80000000
        0x200033ec:    9400        ..      STR      r4,[sp,#0]
        0x200033ee:    f04f0b00    O...    MOV      r11,#0
        0x200033f2:    f0234300    #..C    BIC      r3,r3,#0x80000000
        0x200033f6:    ea500401    P...    ORRS     r4,r0,r1
        0x200033fa:    d05e        ^.      BEQ      0x200034ba ; __aeabi_dmul + 222
        0x200033fc:    ea520403    R...    ORRS     r4,r2,r3
        0x20003400:    d05b        [.      BEQ      0x200034ba ; __aeabi_dmul + 222
        0x20003402:    f3c3540a    ...T    UBFX     r4,r3,#20,#11
        0x20003406:    f3c1550a    ...U    UBFX     r5,r1,#20,#11
        0x2000340a:    442c        ,D      ADD      r4,r4,r5
        0x2000340c:    f2a434f3    ...4    SUB      r4,r4,#0x3f3
        0x20003410:    9401        ..      STR      r4,[sp,#4]
        0x20003412:    fba05402    ...T    UMULL    r5,r4,r0,r2
        0x20003416:    f3c10113    ....    UBFX     r1,r1,#0,#20
        0x2000341a:    f4411180    A...    ORR      r1,r1,#0x100000
        0x2000341e:    f3c30313    ....    UBFX     r3,r3,#0,#20
        0x20003422:    f4431380    C...    ORR      r3,r3,#0x100000
        0x20003426:    fb014402    ...D    MLA      r4,r1,r2,r4
        0x2000342a:    fb004e03    ...N    MLA      lr,r0,r3,r4
        0x2000342e:    0a84        ..      LSRS     r4,r0,#10
        0x20003430:    0a97        ..      LSRS     r7,r2,#10
        0x20003432:    ea445481    D..T    ORR      r4,r4,r1,LSL #22
        0x20003436:    ea475783    G..W    ORR      r7,r7,r3,LSL #22
        0x2000343a:    fba46807    ...h    UMULL    r6,r8,r4,r7
        0x2000343e:    9502        ..      STR      r5,[sp,#8]
        0x20003440:    0a8d        ..      LSRS     r5,r1,#10
        0x20003442:    fb058507    ....    MLA      r5,r5,r7,r8
        0x20003446:    ea4f2c93    O..,    LSR      r12,r3,#10
        0x2000344a:    fb04540c    ...T    MLA      r4,r4,r12,r5
        0x2000344e:    0527        '.      LSLS     r7,r4,#20
        0x20003450:    9d02        ..      LDR      r5,[sp,#8]
        0x20003452:    ea4f5806    O..X    LSL      r8,r6,#20
        0x20003456:    ea473716    G..7    ORR      r7,r7,r6,LSR #12
        0x2000345a:    ebb50508    ....    SUBS     r5,r5,r8
        0x2000345e:    eb6e0c07    n...    SBC      r12,lr,r7
        0x20003462:    0e87        ..      LSRS     r7,r0,#26
        0x20003464:    0e92        ..      LSRS     r2,r2,#26
        0x20003466:    ea471781    G...    ORR      r7,r7,r1,LSL #6
        0x2000346a:    ea421283    B...    ORR      r2,r2,r3,LSL #6
        0x2000346e:    fba70102    ....    UMULL    r0,r1,r7,r2
        0x20003472:    ebb6010b    ....    SUBS     r1,r6,r11
        0x20003476:    eb640400    d...    SBC      r4,r4,r0
        0x2000347a:    0d2b        +.      LSRS     r3,r5,#20
        0x2000347c:    ea43330c    C..3    ORR      r3,r3,r12,LSL #12
        0x20003480:    185e        ^.      ADDS     r6,r3,r1
        0x20003482:    eb44501c    D..P    ADC      r0,r4,r12,LSR #20
        0x20003486:    46da        .F      MOV      r10,r11
        0x20003488:    4651        QF      MOV      r1,r10
        0x2000348a:    fbe70102    ....    UMLAL    r0,r1,r7,r2
        0x2000348e:    f3c50413    ....    UBFX     r4,r5,#0,#20
        0x20003492:    ea4f330b    O..3    LSL      r3,r11,#12
        0x20003496:    ea435314    C..S    ORR      r3,r3,r4,LSR #20
        0x2000349a:    ea4f3204    O..2    LSL      r2,r4,#12
        0x2000349e:    9c01        ..      LDR      r4,[sp,#4]
        0x200034a0:    ea430306    C...    ORR      r3,r3,r6
        0x200034a4:    f1a4040c    ....    SUB      r4,r4,#0xc
        0x200034a8:    9402        ..      STR      r4,[sp,#8]
        0x200034aa:    9c00        ..      LDR      r4,[sp,#0]
        0x200034ac:    e9cdb400    ....    STRD     r11,r4,[sp,#0]
        0x200034b0:    f000f8e6    ....    BL       _double_epilogue ; 0x20003680
        0x200034b4:    b003        ..      ADD      sp,sp,#0xc
        0x200034b6:    e8bd8ff0    ....    POP      {r4-r11,pc}
        0x200034ba:    2000        .       MOVS     r0,#0
        0x200034bc:    4601        .F      MOV      r1,r0
        0x200034be:    e7f9        ..      B        0x200034b4 ; __aeabi_dmul + 216
    .text
    __aeabi_ddiv
        0x200034c0:    e92d4df0    -..M    PUSH     {r4-r8,r10,r11,lr}
        0x200034c4:    ea810403    ....    EOR      r4,r1,r3
        0x200034c8:    f0044b00    ...K    AND      r11,r4,#0x80000000
        0x200034cc:    f0214500    !..E    BIC      r5,r1,#0x80000000
        0x200034d0:    4614        .F      MOV      r4,r2
        0x200034d2:    f04f0a00    O...    MOV      r10,#0
        0x200034d6:    f0234100    #..A    BIC      r1,r3,#0x80000000
        0x200034da:    ea500205    P...    ORRS     r2,r0,r5
        0x200034de:    d020         .      BEQ      0x20003522 ; __aeabi_ddiv + 98
        0x200034e0:    ea540201    T...    ORRS     r2,r4,r1
        0x200034e4:    d01d        ..      BEQ      0x20003522 ; __aeabi_ddiv + 98
        0x200034e6:    f3c5570a    ...W    UBFX     r7,r5,#20,#11
        0x200034ea:    4602        .F      MOV      r2,r0
        0x200034ec:    f3c50313    ....    UBFX     r3,r5,#0,#20
        0x200034f0:    f3c10013    ....    UBFX     r0,r1,#0,#20
        0x200034f4:    f3c1560a    ...V    UBFX     r6,r1,#20,#11
        0x200034f8:    f4401580    @...    ORR      r5,r0,#0x100000
        0x200034fc:    f4431380    C...    ORR      r3,r3,#0x100000
        0x20003500:    eba70806    ....    SUB      r8,r7,r6
        0x20003504:    1b10        ..      SUBS     r0,r2,r4
        0x20003506:    46d6        .F      MOV      lr,r10
        0x20003508:    f20838fd    ...8    ADD      r8,r8,#0x3fd
        0x2000350c:    eb730005    s...    SBCS     r0,r3,r5
        0x20003510:    d302        ..      BCC      0x20003518 ; __aeabi_ddiv + 88
        0x20003512:    f1080801    ....    ADD      r8,r8,#1
        0x20003516:    e001        ..      B        0x2000351c ; __aeabi_ddiv + 92
        0x20003518:    1892        ..      ADDS     r2,r2,r2
        0x2000351a:    415b        [A      ADCS     r3,r3,r3
        0x2000351c:    f1b80f00    ....    CMP      r8,#0
        0x20003520:    da03        ..      BGE      0x2000352a ; __aeabi_ddiv + 106
        0x20003522:    2000        .       MOVS     r0,#0
        0x20003524:    4601        .F      MOV      r1,r0
        0x20003526:    e8bd8df0    ....    POP      {r4-r8,r10,r11,pc}
        0x2000352a:    2000        .       MOVS     r0,#0
        0x2000352c:    f44f1180    O...    MOV      r1,#0x100000
        0x20003530:    4606        .F      MOV      r6,r0
        0x20003532:    4684        .F      MOV      r12,r0
        0x20003534:    e00e        ..      B        0x20003554 ; __aeabi_ddiv + 148
        0x20003536:    1b17        ..      SUBS     r7,r2,r4
        0x20003538:    eb730705    s...    SBCS     r7,r3,r5
        0x2000353c:    d305        ..      BCC      0x2000354a ; __aeabi_ddiv + 138
        0x2000353e:    1b12        ..      SUBS     r2,r2,r4
        0x20003540:    eb630305    c...    SBC      r3,r3,r5
        0x20003544:    4306        .C      ORRS     r6,r6,r0
        0x20003546:    ea4c0c01    L...    ORR      r12,r12,r1
        0x2000354a:    0849        I.      LSRS     r1,r1,#1
        0x2000354c:    ea4f0030    O.0.    RRX      r0,r0
        0x20003550:    1892        ..      ADDS     r2,r2,r2
        0x20003552:    415b        [A      ADCS     r3,r3,r3
        0x20003554:    ea500701    P...    ORRS     r7,r0,r1
        0x20003558:    d1ed        ..      BNE      0x20003536 ; __aeabi_ddiv + 118
        0x2000355a:    ea520003    R...    ORRS     r0,r2,r3
        0x2000355e:    d012        ..      BEQ      0x20003586 ; __aeabi_ddiv + 198
        0x20003560:    ea820004    ....    EOR      r0,r2,r4
        0x20003564:    ea830105    ....    EOR      r1,r3,r5
        0x20003568:    4308        .C      ORRS     r0,r0,r1
        0x2000356a:    d005        ..      BEQ      0x20003578 ; __aeabi_ddiv + 184
        0x2000356c:    1b10        ..      SUBS     r0,r2,r4
        0x2000356e:    41ab        .A      SBCS     r3,r3,r5
        0x20003570:    d206        ..      BCS      0x20003580 ; __aeabi_ddiv + 192
        0x20003572:    2201        ."      MOVS     r2,#1
        0x20003574:    2300        .#      MOVS     r3,#0
        0x20003576:    e006        ..      B        0x20003586 ; __aeabi_ddiv + 198
        0x20003578:    2200        ."      MOVS     r2,#0
        0x2000357a:    f04f4300    O..C    MOV      r3,#0x80000000
        0x2000357e:    e002        ..      B        0x20003586 ; __aeabi_ddiv + 198
        0x20003580:    f06f0201    o...    MVN      r2,#1
        0x20003584:    1053        S.      ASRS     r3,r2,#1
        0x20003586:    eb1a0006    ....    ADDS     r0,r10,r6
        0x2000358a:    eb4c5108    L..Q    ADC      r1,r12,r8,LSL #20
        0x2000358e:    eb10000a    ....    ADDS     r0,r0,r10
        0x20003592:    eb41010b    A...    ADC      r1,r1,r11
        0x20003596:    e8bd4df0    ...M    POP      {r4-r8,r10,r11,lr}
        0x2000359a:    f000b862    ..b.    B.W      _double_round ; 0x20003662
    .text
    __aeabi_d2ulz
        0x2000359e:    f3c1520a    ...R    UBFX     r2,r1,#20,#11
        0x200035a2:    f3c10113    ....    UBFX     r1,r1,#0,#20
        0x200035a6:    f24033ff    @..3    MOV      r3,#0x3ff
        0x200035aa:    f4411180    A...    ORR      r1,r1,#0x100000
        0x200035ae:    429a        .B      CMP      r2,r3
        0x200035b0:    da02        ..      BGE      0x200035b8 ; __aeabi_d2ulz + 26
        0x200035b2:    2000        .       MOVS     r0,#0
        0x200035b4:    4601        .F      MOV      r1,r0
        0x200035b6:    4770        pG      BX       lr
        0x200035b8:    f2404333    @.3C    MOV      r3,#0x433
        0x200035bc:    429a        .B      CMP      r2,r3
        0x200035be:    f2a24233    ..3B    SUB      r2,r2,#0x433
        0x200035c2:    dc02        ..      BGT      0x200035ca ; __aeabi_d2ulz + 44
        0x200035c4:    4252        RB      RSBS     r2,r2,#0
        0x200035c6:    f000b82a    ..*.    B.W      __aeabi_llsr ; 0x2000361e
        0x200035ca:    f000b819    ....    B.W      __aeabi_llsl ; 0x20003600
        0x200035ce:    0000        ..      MOVS     r0,r0
    .text
    __aeabi_cdrcmple
        0x200035d0:    b530        0.      PUSH     {r4,r5,lr}
        0x200035d2:    1e04        ..      SUBS     r4,r0,#0
        0x200035d4:    f1710400    q...    SBCS     r4,r1,#0
        0x200035d8:    db04        ..      BLT      0x200035e4 ; __aeabi_cdrcmple + 20
        0x200035da:    f04f4400    O..D    MOV      r4,#0x80000000
        0x200035de:    4240        @B      RSBS     r0,r0,#0
        0x200035e0:    eb640101    d...    SBC      r1,r4,r1
        0x200035e4:    1e14        ..      SUBS     r4,r2,#0
        0x200035e6:    f1730400    s...    SBCS     r4,r3,#0
        0x200035ea:    db05        ..      BLT      0x200035f8 ; __aeabi_cdrcmple + 40
        0x200035ec:    461c        .F      MOV      r4,r3
        0x200035ee:    f04f4300    O..C    MOV      r3,#0x80000000
        0x200035f2:    4252        RB      RSBS     r2,r2,#0
        0x200035f4:    eb630304    c...    SBC      r3,r3,r4
        0x200035f8:    4299        .B      CMP      r1,r3
        0x200035fa:    bf08        ..      IT       EQ
        0x200035fc:    4290        .B      CMPEQ    r0,r2
        0x200035fe:    bd30        0.      POP      {r4,r5,pc}
    .text
    __aeabi_llsl
    _ll_shift_l
        0x20003600:    2a20         *      CMP      r2,#0x20
        0x20003602:    db04        ..      BLT      0x2000360e ; __aeabi_llsl + 14
        0x20003604:    3a20         :      SUBS     r2,r2,#0x20
        0x20003606:    fa00f102    ....    LSL      r1,r0,r2
        0x2000360a:    2000        .       MOVS     r0,#0
        0x2000360c:    4770        pG      BX       lr
        0x2000360e:    4091        .@      LSLS     r1,r1,r2
        0x20003610:    f1c20320    .. .    RSB      r3,r2,#0x20
        0x20003614:    fa20f303     ...    LSR      r3,r0,r3
        0x20003618:    4319        .C      ORRS     r1,r1,r3
        0x2000361a:    4090        .@      LSLS     r0,r0,r2
        0x2000361c:    4770        pG      BX       lr
    .text
    __aeabi_llsr
    _ll_ushift_r
        0x2000361e:    2a20         *      CMP      r2,#0x20
        0x20003620:    db04        ..      BLT      0x2000362c ; __aeabi_llsr + 14
        0x20003622:    3a20         :      SUBS     r2,r2,#0x20
        0x20003624:    fa21f002    !...    LSR      r0,r1,r2
        0x20003628:    2100        .!      MOVS     r1,#0
        0x2000362a:    4770        pG      BX       lr
        0x2000362c:    fa21f302    !...    LSR      r3,r1,r2
        0x20003630:    40d0        .@      LSRS     r0,r0,r2
        0x20003632:    f1c20220    .. .    RSB      r2,r2,#0x20
        0x20003636:    4091        .@      LSLS     r1,r1,r2
        0x20003638:    4308        .C      ORRS     r0,r0,r1
        0x2000363a:    4619        .F      MOV      r1,r3
        0x2000363c:    4770        pG      BX       lr
    .text
    __aeabi_lasr
    _ll_sshift_r
        0x2000363e:    2a20         *      CMP      r2,#0x20
        0x20003640:    db06        ..      BLT      0x20003650 ; __aeabi_lasr + 18
        0x20003642:    17cb        ..      ASRS     r3,r1,#31
        0x20003644:    3a20         :      SUBS     r2,r2,#0x20
        0x20003646:    fa41f002    A...    ASR      r0,r1,r2
        0x2000364a:    ea4373e0    C..s    ORR      r3,r3,r0,ASR #31
        0x2000364e:    e006        ..      B        0x2000365e ; __aeabi_lasr + 32
        0x20003650:    fa41f302    A...    ASR      r3,r1,r2
        0x20003654:    40d0        .@      LSRS     r0,r0,r2
        0x20003656:    f1c20220    .. .    RSB      r2,r2,#0x20
        0x2000365a:    4091        .@      LSLS     r1,r1,r2
        0x2000365c:    4308        .C      ORRS     r0,r0,r1
        0x2000365e:    4619        .F      MOV      r1,r3
        0x20003660:    4770        pG      BX       lr
    .text
    _double_round
        0x20003662:    b510        ..      PUSH     {r4,lr}
        0x20003664:    1e14        ..      SUBS     r4,r2,#0
        0x20003666:    f1730400    s...    SBCS     r4,r3,#0
        0x2000366a:    da08        ..      BGE      0x2000367e ; _double_round + 28
        0x2000366c:    1c40        @.      ADDS     r0,r0,#1
        0x2000366e:    f1410100    A...    ADC      r1,r1,#0
        0x20003672:    1892        ..      ADDS     r2,r2,r2
        0x20003674:    415b        [A      ADCS     r3,r3,r3
        0x20003676:    431a        .C      ORRS     r2,r2,r3
        0x20003678:    d101        ..      BNE      0x2000367e ; _double_round + 28
        0x2000367a:    f0200001     ...    BIC      r0,r0,#1
        0x2000367e:    bd10        ..      POP      {r4,pc}
    _double_epilogue
        0x20003680:    e92d4df0    -..M    PUSH     {r4-r8,r10,r11,lr}
        0x20003684:    4692        .F      MOV      r10,r2
        0x20003686:    469b        .F      MOV      r11,r3
        0x20003688:    b111        ..      CBZ      r1,0x20003690 ; _double_epilogue + 16
        0x2000368a:    fab1f281    ....    CLZ      r2,r1
        0x2000368e:    e002        ..      B        0x20003696 ; _double_epilogue + 22
        0x20003690:    fab0f280    ....    CLZ      r2,r0
        0x20003694:    3220         2      ADDS     r2,r2,#0x20
        0x20003696:    4690        .F      MOV      r8,r2
        0x20003698:    f7ffffb2    ....    BL       __aeabi_llsl ; 0x20003600
        0x2000369c:    4604        .F      MOV      r4,r0
        0x2000369e:    460f        .F      MOV      r7,r1
        0x200036a0:    ea40000a    @...    ORR      r0,r0,r10
        0x200036a4:    ea41010b    A...    ORR      r1,r1,r11
        0x200036a8:    4653        SF      MOV      r3,r10
        0x200036aa:    465a        ZF      MOV      r2,r11
        0x200036ac:    4308        .C      ORRS     r0,r0,r1
        0x200036ae:    d013        ..      BEQ      0x200036d8 ; _double_epilogue + 88
        0x200036b0:    4611        .F      MOV      r1,r2
        0x200036b2:    ea530001    S...    ORRS     r0,r3,r1
        0x200036b6:    d019        ..      BEQ      0x200036ec ; _double_epilogue + 108
        0x200036b8:    f1c80240    ..@.    RSB      r2,r8,#0x40
        0x200036bc:    4650        PF      MOV      r0,r10
        0x200036be:    f7ffffae    ....    BL       __aeabi_llsr ; 0x2000361e
        0x200036c2:    4605        .F      MOV      r5,r0
        0x200036c4:    460e        .F      MOV      r6,r1
        0x200036c6:    4650        PF      MOV      r0,r10
        0x200036c8:    4659        YF      MOV      r1,r11
        0x200036ca:    4642        BF      MOV      r2,r8
        0x200036cc:    f7ffff98    ....    BL       __aeabi_llsl ; 0x20003600
        0x200036d0:    4308        .C      ORRS     r0,r0,r1
        0x200036d2:    d005        ..      BEQ      0x200036e0 ; _double_epilogue + 96
        0x200036d4:    2001        .       MOVS     r0,#1
        0x200036d6:    e004        ..      B        0x200036e2 ; _double_epilogue + 98
        0x200036d8:    4620         F      MOV      r0,r4
        0x200036da:    4639        9F      MOV      r1,r7
        0x200036dc:    e8bd8df0    ....    POP      {r4-r8,r10,r11,pc}
        0x200036e0:    2000        .       MOVS     r0,#0
        0x200036e2:    4305        .C      ORRS     r5,r5,r0
        0x200036e4:    ea4676e0    F..v    ORR      r6,r6,r0,ASR #31
        0x200036e8:    432c        ,C      ORRS     r4,r4,r5
        0x200036ea:    4337        7C      ORRS     r7,r7,r6
        0x200036ec:    980a        ..      LDR      r0,[sp,#0x28]
        0x200036ee:    0563        c.      LSLS     r3,r4,#21
        0x200036f0:    0ae4        ..      LSRS     r4,r4,#11
        0x200036f2:    eba00008    ....    SUB      r0,r0,r8
        0x200036f6:    2200        ."      MOVS     r2,#0
        0x200036f8:    0afd        ..      LSRS     r5,r7,#11
        0x200036fa:    ea445447    D.GT    ORR      r4,r4,r7,LSL #21
        0x200036fe:    300a        .0      ADDS     r0,r0,#0xa
        0x20003700:    d502        ..      BPL      0x20003708 ; _double_epilogue + 136
        0x20003702:    2000        .       MOVS     r0,#0
        0x20003704:    4601        .F      MOV      r1,r0
        0x20003706:    e7e9        ..      B        0x200036dc ; _double_epilogue + 92
        0x20003708:    0501        ..      LSLS     r1,r0,#20
        0x2000370a:    1910        ..      ADDS     r0,r2,r4
        0x2000370c:    4169        iA      ADCS     r1,r1,r5
        0x2000370e:    e9dd4508    ...E    LDRD     r4,r5,[sp,#0x20]
        0x20003712:    1900        ..      ADDS     r0,r0,r4
        0x20003714:    4169        iA      ADCS     r1,r1,r5
        0x20003716:    e8bd4df0    ...M    POP      {r4-r8,r10,r11,lr}
        0x2000371a:    e7a2        ..      B        _double_round ; 0x20003662
    $t.3
    DMA_IRQ6_Handler
        0x2000371c:    b580        ..      PUSH     {r7,lr}
        0x2000371e:    b084        ..      SUB      sp,sp,#0x10
        0x20003720:    2000        .       MOVS     r0,#0
        0x20003722:    f88d000f    ....    STRB     r0,[sp,#0xf]
        0x20003726:    f2481080    H...    MOV      r0,#0x8180
        0x2000372a:    f2c50000    ....    MOVT     r0,#0x5000
        0x2000372e:    f10d010f    ....    ADD      r1,sp,#0xf
        0x20003732:    f001f862    ..b.    BL       $Ven$TT$L$$rom_hw_dma_get_interrupt_flag ; 0x200047fa
        0x20003736:    f89d000f    ....    LDRB     r0,[sp,#0xf]
        0x2000373a:    07c0        ..      LSLS     r0,r0,#31
        0x2000373c:    b3c0        ..      CBZ      r0,0x200037b0 ; DMA_IRQ6_Handler + 148
        0x2000373e:    e7ff        ..      B        0x20003740 ; DMA_IRQ6_Handler + 36
        0x20003740:    f2481080    H...    MOV      r0,#0x8180
        0x20003744:    f2c50000    ....    MOVT     r0,#0x5000
        0x20003748:    9001        ..      STR      r0,[sp,#4]
        0x2000374a:    f001f85b    ..[.    BL       $Ven$TT$L$$rom_hw_dma_disable ; 0x20004804
        0x2000374e:    9801        ..      LDR      r0,[sp,#4]
        0x20003750:    a903        ..      ADD      r1,sp,#0xc
        0x20003752:    f001f85c    ..\.    BL       $Ven$TT$L$$rom_hw_dma_get_trx_pointer ; 0x2000480e
        0x20003756:    f645101d    E...    MOV      r0,#0x591d
        0x2000375a:    f2c20000    ....    MOVT     r0,#0x2000
        0x2000375e:    f001f90f    ....    BL       __0printf ; 0x20004980
        0x20003762:    2000        .       MOVS     r0,#0
        0x20003764:    9002        ..      STR      r0,[sp,#8]
        0x20003766:    e7ff        ..      B        0x20003768 ; DMA_IRQ6_Handler + 76
        0x20003768:    9802        ..      LDR      r0,[sp,#8]
        0x2000376a:    f8bd100c    ....    LDRH     r1,[sp,#0xc]
        0x2000376e:    4288        .B      CMP      r0,r1
        0x20003770:    da11        ..      BGE      0x20003796 ; DMA_IRQ6_Handler + 122
        0x20003772:    e7ff        ..      B        0x20003774 ; DMA_IRQ6_Handler + 88
        0x20003774:    9902        ..      LDR      r1,[sp,#8]
        0x20003776:    f24b0030    K.0.    MOV      r0,#0xb030
        0x2000377a:    f2c20000    ....    MOVT     r0,#0x2000
        0x2000377e:    5c41        A\      LDRB     r1,[r0,r1]
        0x20003780:    f6451040    E.@.    MOV      r0,#0x5940
        0x20003784:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003788:    f001f8fa    ....    BL       __0printf ; 0x20004980
        0x2000378c:    e7ff        ..      B        0x2000378e ; DMA_IRQ6_Handler + 114
        0x2000378e:    9802        ..      LDR      r0,[sp,#8]
        0x20003790:    3001        .0      ADDS     r0,#1
        0x20003792:    9002        ..      STR      r0,[sp,#8]
        0x20003794:    e7e8        ..      B        0x20003768 ; DMA_IRQ6_Handler + 76
        0x20003796:    f24570ad    E..p    MOV      r0,#0x57ad
        0x2000379a:    f2c20000    ....    MOVT     r0,#0x2000
        0x2000379e:    f001f8ef    ....    BL       __0printf ; 0x20004980
        0x200037a2:    f2481080    H...    MOV      r0,#0x8180
        0x200037a6:    f2c50000    ....    MOVT     r0,#0x5000
        0x200037aa:    f001f835    ..5.    BL       $Ven$TT$L$$rom_hw_dma_enable ; 0x20004818
        0x200037ae:    e7ff        ..      B        0x200037b0 ; DMA_IRQ6_Handler + 148
        0x200037b0:    f89d100f    ....    LDRB     r1,[sp,#0xf]
        0x200037b4:    f2481080    H...    MOV      r0,#0x8180
        0x200037b8:    f2c50000    ....    MOVT     r0,#0x5000
        0x200037bc:    f001f831    ..1.    BL       $Ven$TT$L$$rom_hw_dma_clear_interrupt_flag ; 0x20004822
        0x200037c0:    f24810c0    H...    MOV      r0,#0x81c0
        0x200037c4:    f2c50000    ....    MOVT     r0,#0x5000
        0x200037c8:    f10d010f    ....    ADD      r1,sp,#0xf
        0x200037cc:    f001f815    ....    BL       $Ven$TT$L$$rom_hw_dma_get_interrupt_flag ; 0x200047fa
        0x200037d0:    f89d000f    ....    LDRB     r0,[sp,#0xf]
        0x200037d4:    0680        ..      LSLS     r0,r0,#26
        0x200037d6:    2800        .(      CMP      r0,#0
        0x200037d8:    d507        ..      BPL      0x200037ea ; DMA_IRQ6_Handler + 206
        0x200037da:    e7ff        ..      B        0x200037dc ; DMA_IRQ6_Handler + 192
        0x200037dc:    f645100a    E...    MOV      r0,#0x590a
        0x200037e0:    f2c20000    ....    MOVT     r0,#0x2000
        0x200037e4:    f001f8cc    ....    BL       __0printf ; 0x20004980
        0x200037e8:    e7ff        ..      B        0x200037ea ; DMA_IRQ6_Handler + 206
        0x200037ea:    f89d100f    ....    LDRB     r1,[sp,#0xf]
        0x200037ee:    f24810c0    H...    MOV      r0,#0x81c0
        0x200037f2:    f2c50000    ....    MOVT     r0,#0x5000
        0x200037f6:    f001f814    ....    BL       $Ven$TT$L$$rom_hw_dma_clear_interrupt_flag ; 0x20004822
        0x200037fa:    b004        ..      ADD      sp,sp,#0x10
        0x200037fc:    bd80        ..      POP      {r7,pc}
        0x200037fe:    0000        ..      MOVS     r0,r0
    HardFault_Handler_Proc
        0x20003800:    b580        ..      PUSH     {r7,lr}
        0x20003802:    b086        ..      SUB      sp,sp,#0x18
        0x20003804:    9004        ..      STR      r0,[sp,#0x10]
        0x20003806:    9103        ..      STR      r1,[sp,#0xc]
        0x20003808:    9202        ..      STR      r2,[sp,#8]
        0x2000380a:    f000fb79    ..y.    BL       app_debug_reinit ; 0x20003f00
        0x2000380e:    f3ef8008    ....    MRS      r0,MSP
        0x20003812:    9005        ..      STR      r0,[sp,#0x14]
        0x20003814:    9905        ..      LDR      r1,[sp,#0x14]
        0x20003816:    f6450094    E...    MOV      r0,#0x5894
        0x2000381a:    f2c20000    ....    MOVT     r0,#0x2000
        0x2000381e:    f001f8af    ....    BL       __0printf ; 0x20004980
        0x20003822:    2000        .       MOVS     r0,#0
        0x20003824:    9001        ..      STR      r0,[sp,#4]
        0x20003826:    f89d0010    ....    LDRB     r0,[sp,#0x10]
        0x2000382a:    0700        ..      LSLS     r0,r0,#28
        0x2000382c:    2800        .(      CMP      r0,#0
        0x2000382e:    d507        ..      BPL      0x20003840 ; HardFault_Handler_Proc + 64
        0x20003830:    e7ff        ..      B        0x20003832 ; HardFault_Handler_Proc + 50
        0x20003832:    f24570b0    E..p    MOV      r0,#0x57b0
        0x20003836:    f2c20000    ....    MOVT     r0,#0x2000
        0x2000383a:    f001f8a1    ....    BL       __0printf ; 0x20004980
        0x2000383e:    e006        ..      B        0x2000384e ; HardFault_Handler_Proc + 78
        0x20003840:    f24570e0    E..p    MOV      r0,#0x57e0
        0x20003844:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003848:    f001f89a    ....    BL       __0printf ; 0x20004980
        0x2000384c:    e7ff        ..      B        0x2000384e ; HardFault_Handler_Proc + 78
        0x2000384e:    f89d0010    ....    LDRB     r0,[sp,#0x10]
        0x20003852:    0740        @.      LSLS     r0,r0,#29
        0x20003854:    2800        .(      CMP      r0,#0
        0x20003856:    d509        ..      BPL      0x2000386c ; HardFault_Handler_Proc + 108
        0x20003858:    e7ff        ..      B        0x2000385a ; HardFault_Handler_Proc + 90
        0x2000385a:    f24570d1    E..p    MOV      r0,#0x57d1
        0x2000385e:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003862:    f001f88d    ....    BL       __0printf ; 0x20004980
        0x20003866:    9802        ..      LDR      r0,[sp,#8]
        0x20003868:    9001        ..      STR      r0,[sp,#4]
        0x2000386a:    e008        ..      B        0x2000387e ; HardFault_Handler_Proc + 126
        0x2000386c:    f24570c2    E..p    MOV      r0,#0x57c2
        0x20003870:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003874:    f001f884    ....    BL       __0printf ; 0x20004980
        0x20003878:    9803        ..      LDR      r0,[sp,#0xc]
        0x2000387a:    9001        ..      STR      r0,[sp,#4]
        0x2000387c:    e7ff        ..      B        0x2000387e ; HardFault_Handler_Proc + 126
        0x2000387e:    f24570f7    E..p    MOV      r0,#0x57f7
        0x20003882:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003886:    f001f87b    ..{.    BL       __0printf ; 0x20004980
        0x2000388a:    9801        ..      LDR      r0,[sp,#4]
        0x2000388c:    6801        .h      LDR      r1,[r0,#0]
        0x2000388e:    f6450024    E.$.    MOV      r0,#0x5824
        0x20003892:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003896:    f001f873    ..s.    BL       __0printf ; 0x20004980
        0x2000389a:    9801        ..      LDR      r0,[sp,#4]
        0x2000389c:    6841        Ah      LDR      r1,[r0,#4]
        0x2000389e:    f6450032    E.2.    MOV      r0,#0x5832
        0x200038a2:    f2c20000    ....    MOVT     r0,#0x2000
        0x200038a6:    f001f86b    ..k.    BL       __0printf ; 0x20004980
        0x200038aa:    9801        ..      LDR      r0,[sp,#4]
        0x200038ac:    6881        .h      LDR      r1,[r0,#8]
        0x200038ae:    f6450040    E.@.    MOV      r0,#0x5840
        0x200038b2:    f2c20000    ....    MOVT     r0,#0x2000
        0x200038b6:    f001f863    ..c.    BL       __0printf ; 0x20004980
        0x200038ba:    9801        ..      LDR      r0,[sp,#4]
        0x200038bc:    68c1        .h      LDR      r1,[r0,#0xc]
        0x200038be:    f645004e    E.N.    MOV      r0,#0x584e
        0x200038c2:    f2c20000    ....    MOVT     r0,#0x2000
        0x200038c6:    f001f85b    ..[.    BL       __0printf ; 0x20004980
        0x200038ca:    9801        ..      LDR      r0,[sp,#4]
        0x200038cc:    6901        .i      LDR      r1,[r0,#0x10]
        0x200038ce:    f6450078    E.x.    MOV      r0,#0x5878
        0x200038d2:    f2c20000    ....    MOVT     r0,#0x2000
        0x200038d6:    f001f853    ..S.    BL       __0printf ; 0x20004980
        0x200038da:    9801        ..      LDR      r0,[sp,#4]
        0x200038dc:    6941        Ai      LDR      r1,[r0,#0x14]
        0x200038de:    f645006a    E.j.    MOV      r0,#0x586a
        0x200038e2:    f2c20000    ....    MOVT     r0,#0x2000
        0x200038e6:    f001f84b    ..K.    BL       __0printf ; 0x20004980
        0x200038ea:    9801        ..      LDR      r0,[sp,#4]
        0x200038ec:    6981        .i      LDR      r1,[r0,#0x18]
        0x200038ee:    f645005c    E.\.    MOV      r0,#0x585c
        0x200038f2:    f2c20000    ....    MOVT     r0,#0x2000
        0x200038f6:    f001f843    ..C.    BL       __0printf ; 0x20004980
        0x200038fa:    9801        ..      LDR      r0,[sp,#4]
        0x200038fc:    69c1        .i      LDR      r1,[r0,#0x1c]
        0x200038fe:    f6450086    E...    MOV      r0,#0x5886
        0x20003902:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003906:    f001f83b    ..;.    BL       __0printf ; 0x20004980
        0x2000390a:    9801        ..      LDR      r0,[sp,#4]
        0x2000390c:    6980        .i      LDR      r0,[r0,#0x18]
        0x2000390e:    9000        ..      STR      r0,[sp,#0]
        0x20003910:    f64e502c    N.,P    MOV      r0,#0xed2c
        0x20003914:    f2ce0000    ....    MOVT     r0,#0xe000
        0x20003918:    6800        .h      LDR      r0,[r0,#0]
        0x2000391a:    0780        ..      LSLS     r0,r0,#30
        0x2000391c:    2800        .(      CMP      r0,#0
        0x2000391e:    d507        ..      BPL      0x20003930 ; HardFault_Handler_Proc + 304
        0x20003920:    e7ff        ..      B        0x20003922 ; HardFault_Handler_Proc + 290
        0x20003922:    f2456055    E.U`    MOV      r0,#0x5655
        0x20003926:    f2c20000    ....    MOVT     r0,#0x2000
        0x2000392a:    f001f829    ..).    BL       __0printf ; 0x20004980
        0x2000392e:    e7ff        ..      B        0x20003930 ; HardFault_Handler_Proc + 304
        0x20003930:    f64e502c    N.,P    MOV      r0,#0xed2c
        0x20003934:    f2ce0000    ....    MOVT     r0,#0xe000
        0x20003938:    6800        .h      LDR      r0,[r0,#0]
        0x2000393a:    0fc0        ..      LSRS     r0,r0,#31
        0x2000393c:    b138        8.      CBZ      r0,0x2000394e ; HardFault_Handler_Proc + 334
        0x2000393e:    e7ff        ..      B        0x20003940 ; HardFault_Handler_Proc + 320
        0x20003940:    f2456070    E.p`    MOV      r0,#0x5670
        0x20003944:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003948:    f001f81a    ....    BL       __0printf ; 0x20004980
        0x2000394c:    e7ff        ..      B        0x2000394e ; HardFault_Handler_Proc + 334
        0x2000394e:    f64e502c    N.,P    MOV      r0,#0xed2c
        0x20003952:    f2ce0000    ....    MOVT     r0,#0xe000
        0x20003956:    6800        .h      LDR      r0,[r0,#0]
        0x20003958:    0040        @.      LSLS     r0,r0,#1
        0x2000395a:    2800        .(      CMP      r0,#0
        0x2000395c:    f1408184    @...    BPL.W    0x20003c68 ; HardFault_Handler_Proc + 1128
        0x20003960:    e7ff        ..      B        0x20003962 ; HardFault_Handler_Proc + 354
        0x20003962:    f2456040    E.@`    MOV      r0,#0x5640
        0x20003966:    f2c20000    ....    MOVT     r0,#0x2000
        0x2000396a:    f001f809    ....    BL       __0printf ; 0x20004980
        0x2000396e:    f64e5028    N.(P    MOV      r0,#0xed28
        0x20003972:    f2ce0000    ....    MOVT     r0,#0xe000
        0x20003976:    6800        .h      LDR      r0,[r0,#0]
        0x20003978:    0600        ..      LSLS     r0,r0,#24
        0x2000397a:    2800        .(      CMP      r0,#0
        0x2000397c:    d06d        m.      BEQ      0x20003a5a ; HardFault_Handler_Proc + 602
        0x2000397e:    e7ff        ..      B        0x20003980 ; HardFault_Handler_Proc + 384
        0x20003980:    f2456020    E. `    MOV      r0,#0x5620
        0x20003984:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003988:    f000fffa    ....    BL       __0printf ; 0x20004980
        0x2000398c:    f64e5028    N.(P    MOV      r0,#0xed28
        0x20003990:    f2ce0000    ....    MOVT     r0,#0xe000
        0x20003994:    6800        .h      LDR      r0,[r0,#0]
        0x20003996:    07c0        ..      LSLS     r0,r0,#31
        0x20003998:    b140        @.      CBZ      r0,0x200039ac ; HardFault_Handler_Proc + 428
        0x2000399a:    e7ff        ..      B        0x2000399c ; HardFault_Handler_Proc + 412
        0x2000399c:    9900        ..      LDR      r1,[sp,#0]
        0x2000399e:    f245702e    E..p    MOV      r0,#0x572e
        0x200039a2:    f2c20000    ....    MOVT     r0,#0x2000
        0x200039a6:    f000ffeb    ....    BL       __0printf ; 0x20004980
        0x200039aa:    e7ff        ..      B        0x200039ac ; HardFault_Handler_Proc + 428
        0x200039ac:    f64e5028    N.(P    MOV      r0,#0xed28
        0x200039b0:    f2ce0000    ....    MOVT     r0,#0xe000
        0x200039b4:    6800        .h      LDR      r0,[r0,#0]
        0x200039b6:    0780        ..      LSLS     r0,r0,#30
        0x200039b8:    2800        .(      CMP      r0,#0
        0x200039ba:    d51d        ..      BPL      0x200039f8 ; HardFault_Handler_Proc + 504
        0x200039bc:    e7ff        ..      B        0x200039be ; HardFault_Handler_Proc + 446
        0x200039be:    9900        ..      LDR      r1,[sp,#0]
        0x200039c0:    f24560bb    E..`    MOV      r0,#0x56bb
        0x200039c4:    f2c20000    ....    MOVT     r0,#0x2000
        0x200039c8:    f000ffda    ....    BL       __0printf ; 0x20004980
        0x200039cc:    f64e5028    N.(P    MOV      r0,#0xed28
        0x200039d0:    f2ce0000    ....    MOVT     r0,#0xe000
        0x200039d4:    6800        .h      LDR      r0,[r0,#0]
        0x200039d6:    0600        ..      LSLS     r0,r0,#24
        0x200039d8:    2800        .(      CMP      r0,#0
        0x200039da:    d50c        ..      BPL      0x200039f6 ; HardFault_Handler_Proc + 502
        0x200039dc:    e7ff        ..      B        0x200039de ; HardFault_Handler_Proc + 478
        0x200039de:    f64e5034    N.4P    MOV      r0,#0xed34
        0x200039e2:    f2ce0000    ....    MOVT     r0,#0xe000
        0x200039e6:    6801        .h      LDR      r1,[r0,#0]
        0x200039e8:    f24570a3    E..p    MOV      r0,#0x57a3
        0x200039ec:    f2c20000    ....    MOVT     r0,#0x2000
        0x200039f0:    f000ffc6    ....    BL       __0printf ; 0x20004980
        0x200039f4:    e7ff        ..      B        0x200039f6 ; HardFault_Handler_Proc + 502
        0x200039f6:    e7ff        ..      B        0x200039f8 ; HardFault_Handler_Proc + 504
        0x200039f8:    f64e5028    N.(P    MOV      r0,#0xed28
        0x200039fc:    f2ce0000    ....    MOVT     r0,#0xe000
        0x20003a00:    6800        .h      LDR      r0,[r0,#0]
        0x20003a02:    0700        ..      LSLS     r0,r0,#28
        0x20003a04:    2800        .(      CMP      r0,#0
        0x20003a06:    d507        ..      BPL      0x20003a18 ; HardFault_Handler_Proc + 536
        0x20003a08:    e7ff        ..      B        0x20003a0a ; HardFault_Handler_Proc + 522
        0x20003a0a:    f24540de    E..@    MOV      r0,#0x54de
        0x20003a0e:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003a12:    f000ffb5    ....    BL       __0printf ; 0x20004980
        0x20003a16:    e7ff        ..      B        0x20003a18 ; HardFault_Handler_Proc + 536
        0x20003a18:    f64e5028    N.(P    MOV      r0,#0xed28
        0x20003a1c:    f2ce0000    ....    MOVT     r0,#0xe000
        0x20003a20:    6800        .h      LDR      r0,[r0,#0]
        0x20003a22:    06c0        ..      LSLS     r0,r0,#27
        0x20003a24:    2800        .(      CMP      r0,#0
        0x20003a26:    d507        ..      BPL      0x20003a38 ; HardFault_Handler_Proc + 568
        0x20003a28:    e7ff        ..      B        0x20003a2a ; HardFault_Handler_Proc + 554
        0x20003a2a:    f2455034    E.4P    MOV      r0,#0x5534
        0x20003a2e:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003a32:    f000ffa5    ....    BL       __0printf ; 0x20004980
        0x20003a36:    e7ff        ..      B        0x20003a38 ; HardFault_Handler_Proc + 568
        0x20003a38:    f64e5028    N.(P    MOV      r0,#0xed28
        0x20003a3c:    f2ce0000    ....    MOVT     r0,#0xe000
        0x20003a40:    6800        .h      LDR      r0,[r0,#0]
        0x20003a42:    0680        ..      LSLS     r0,r0,#26
        0x20003a44:    2800        .(      CMP      r0,#0
        0x20003a46:    d507        ..      BPL      0x20003a58 ; HardFault_Handler_Proc + 600
        0x20003a48:    e7ff        ..      B        0x20003a4a ; HardFault_Handler_Proc + 586
        0x20003a4a:    f245403d    E.=@    MOV      r0,#0x543d
        0x20003a4e:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003a52:    f000ff95    ....    BL       __0printf ; 0x20004980
        0x20003a56:    e7ff        ..      B        0x20003a58 ; HardFault_Handler_Proc + 600
        0x20003a58:    e7ff        ..      B        0x20003a5a ; HardFault_Handler_Proc + 602
        0x20003a5a:    f64e5028    N.(P    MOV      r0,#0xed28
        0x20003a5e:    f2ce0000    ....    MOVT     r0,#0xe000
        0x20003a62:    6800        .h      LDR      r0,[r0,#0]
        0x20003a64:    f4104f7f    ...O    TST      r0,#0xff00
        0x20003a68:    d07d        }.      BEQ      0x20003b66 ; HardFault_Handler_Proc + 870
        0x20003a6a:    e7ff        ..      B        0x20003a6c ; HardFault_Handler_Proc + 620
        0x20003a6c:    f2456064    E.d`    MOV      r0,#0x5664
        0x20003a70:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003a74:    f000ff84    ....    BL       __0printf ; 0x20004980
        0x20003a78:    f64e5028    N.(P    MOV      r0,#0xed28
        0x20003a7c:    f2ce0000    ....    MOVT     r0,#0xe000
        0x20003a80:    6800        .h      LDR      r0,[r0,#0]
        0x20003a82:    05c0        ..      LSLS     r0,r0,#23
        0x20003a84:    2800        .(      CMP      r0,#0
        0x20003a86:    d507        ..      BPL      0x20003a98 ; HardFault_Handler_Proc + 664
        0x20003a88:    e7ff        ..      B        0x20003a8a ; HardFault_Handler_Proc + 650
        0x20003a8a:    f2453063    E.c0    MOV      r0,#0x5363
        0x20003a8e:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003a92:    f000ff75    ..u.    BL       __0printf ; 0x20004980
        0x20003a96:    e7ff        ..      B        0x20003a98 ; HardFault_Handler_Proc + 664
        0x20003a98:    f64e5028    N.(P    MOV      r0,#0xed28
        0x20003a9c:    f2ce0000    ....    MOVT     r0,#0xe000
        0x20003aa0:    6800        .h      LDR      r0,[r0,#0]
        0x20003aa2:    0580        ..      LSLS     r0,r0,#22
        0x20003aa4:    2800        .(      CMP      r0,#0
        0x20003aa6:    d51d        ..      BPL      0x20003ae4 ; HardFault_Handler_Proc + 740
        0x20003aa8:    e7ff        ..      B        0x20003aaa ; HardFault_Handler_Proc + 682
        0x20003aaa:    9900        ..      LDR      r1,[sp,#0]
        0x20003aac:    f2456084    E..`    MOV      r0,#0x5684
        0x20003ab0:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003ab4:    f000ff64    ..d.    BL       __0printf ; 0x20004980
        0x20003ab8:    f64e5028    N.(P    MOV      r0,#0xed28
        0x20003abc:    f2ce0000    ....    MOVT     r0,#0xe000
        0x20003ac0:    6800        .h      LDR      r0,[r0,#0]
        0x20003ac2:    0400        ..      LSLS     r0,r0,#16
        0x20003ac4:    2800        .(      CMP      r0,#0
        0x20003ac6:    d50c        ..      BPL      0x20003ae2 ; HardFault_Handler_Proc + 738
        0x20003ac8:    e7ff        ..      B        0x20003aca ; HardFault_Handler_Proc + 714
        0x20003aca:    f64e5038    N.8P    MOV      r0,#0xed38
        0x20003ace:    f2ce0000    ....    MOVT     r0,#0xe000
        0x20003ad2:    6801        .h      LDR      r1,[r0,#0]
        0x20003ad4:    f24570a3    E..p    MOV      r0,#0x57a3
        0x20003ad8:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003adc:    f000ff50    ..P.    BL       __0printf ; 0x20004980
        0x20003ae0:    e7ff        ..      B        0x20003ae2 ; HardFault_Handler_Proc + 738
        0x20003ae2:    e7ff        ..      B        0x20003ae4 ; HardFault_Handler_Proc + 740
        0x20003ae4:    f64e5028    N.(P    MOV      r0,#0xed28
        0x20003ae8:    f2ce0000    ....    MOVT     r0,#0xe000
        0x20003aec:    6800        .h      LDR      r0,[r0,#0]
        0x20003aee:    0540        @.      LSLS     r0,r0,#21
        0x20003af0:    2800        .(      CMP      r0,#0
        0x20003af2:    d507        ..      BPL      0x20003b04 ; HardFault_Handler_Proc + 772
        0x20003af4:    e7ff        ..      B        0x20003af6 ; HardFault_Handler_Proc + 758
        0x20003af6:    f24520f7    E..     MOV      r0,#0x52f7
        0x20003afa:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003afe:    f000ff3f    ..?.    BL       __0printf ; 0x20004980
        0x20003b02:    e7ff        ..      B        0x20003b04 ; HardFault_Handler_Proc + 772
        0x20003b04:    f64e5028    N.(P    MOV      r0,#0xed28
        0x20003b08:    f2ce0000    ....    MOVT     r0,#0xe000
        0x20003b0c:    6800        .h      LDR      r0,[r0,#0]
        0x20003b0e:    0500        ..      LSLS     r0,r0,#20
        0x20003b10:    2800        .(      CMP      r0,#0
        0x20003b12:    d507        ..      BPL      0x20003b24 ; HardFault_Handler_Proc + 804
        0x20003b14:    e7ff        ..      B        0x20003b16 ; HardFault_Handler_Proc + 790
        0x20003b16:    f2455088    E..P    MOV      r0,#0x5588
        0x20003b1a:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003b1e:    f000ff2f    ../.    BL       __0printf ; 0x20004980
        0x20003b22:    e7ff        ..      B        0x20003b24 ; HardFault_Handler_Proc + 804
        0x20003b24:    f64e5028    N.(P    MOV      r0,#0xed28
        0x20003b28:    f2ce0000    ....    MOVT     r0,#0xe000
        0x20003b2c:    6800        .h      LDR      r0,[r0,#0]
        0x20003b2e:    04c0        ..      LSLS     r0,r0,#19
        0x20003b30:    2800        .(      CMP      r0,#0
        0x20003b32:    d507        ..      BPL      0x20003b44 ; HardFault_Handler_Proc + 836
        0x20003b34:    e7ff        ..      B        0x20003b36 ; HardFault_Handler_Proc + 822
        0x20003b36:    f24550d5    E..P    MOV      r0,#0x55d5
        0x20003b3a:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003b3e:    f000ff1f    ....    BL       __0printf ; 0x20004980
        0x20003b42:    e7ff        ..      B        0x20003b44 ; HardFault_Handler_Proc + 836
        0x20003b44:    f64e5028    N.(P    MOV      r0,#0xed28
        0x20003b48:    f2ce0000    ....    MOVT     r0,#0xe000
        0x20003b4c:    6800        .h      LDR      r0,[r0,#0]
        0x20003b4e:    0480        ..      LSLS     r0,r0,#18
        0x20003b50:    2800        .(      CMP      r0,#0
        0x20003b52:    d507        ..      BPL      0x20003b64 ; HardFault_Handler_Proc + 868
        0x20003b54:    e7ff        ..      B        0x20003b56 ; HardFault_Handler_Proc + 854
        0x20003b56:    f2454091    E..@    MOV      r0,#0x5491
        0x20003b5a:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003b5e:    f000ff0f    ....    BL       __0printf ; 0x20004980
        0x20003b62:    e7ff        ..      B        0x20003b64 ; HardFault_Handler_Proc + 868
        0x20003b64:    e7ff        ..      B        0x20003b66 ; HardFault_Handler_Proc + 870
        0x20003b66:    f64e5028    N.(P    MOV      r0,#0xed28
        0x20003b6a:    f2ce0000    ....    MOVT     r0,#0xe000
        0x20003b6e:    6800        .h      LDR      r0,[r0,#0]
        0x20003b70:    0c00        ..      LSRS     r0,r0,#16
        0x20003b72:    2800        .(      CMP      r0,#0
        0x20003b74:    d077        w.      BEQ      0x20003c66 ; HardFault_Handler_Proc + 1126
        0x20003b76:    e7ff        ..      B        0x20003b78 ; HardFault_Handler_Proc + 888
        0x20003b78:    f2456032    E.2`    MOV      r0,#0x5632
        0x20003b7c:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003b80:    f000fefe    ....    BL       __0printf ; 0x20004980
        0x20003b84:    f64e5028    N.(P    MOV      r0,#0xed28
        0x20003b88:    f2ce0000    ....    MOVT     r0,#0xe000
        0x20003b8c:    6800        .h      LDR      r0,[r0,#0]
        0x20003b8e:    03c0        ..      LSLS     r0,r0,#15
        0x20003b90:    2800        .(      CMP      r0,#0
        0x20003b92:    d507        ..      BPL      0x20003ba4 ; HardFault_Handler_Proc + 932
        0x20003b94:    e7ff        ..      B        0x20003b96 ; HardFault_Handler_Proc + 918
        0x20003b96:    f2452081    E..     MOV      r0,#0x5281
        0x20003b9a:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003b9e:    f000feef    ....    BL       __0printf ; 0x20004980
        0x20003ba2:    e7ff        ..      B        0x20003ba4 ; HardFault_Handler_Proc + 932
        0x20003ba4:    f64e5028    N.(P    MOV      r0,#0xed28
        0x20003ba8:    f2ce0000    ....    MOVT     r0,#0xe000
        0x20003bac:    6800        .h      LDR      r0,[r0,#0]
        0x20003bae:    0380        ..      LSLS     r0,r0,#14
        0x20003bb0:    2800        .(      CMP      r0,#0
        0x20003bb2:    d507        ..      BPL      0x20003bc4 ; HardFault_Handler_Proc + 964
        0x20003bb4:    e7ff        ..      B        0x20003bb6 ; HardFault_Handler_Proc + 950
        0x20003bb6:    f24530ff    E..0    MOV      r0,#0x53ff
        0x20003bba:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003bbe:    f000fedf    ....    BL       __0printf ; 0x20004980
        0x20003bc2:    e7ff        ..      B        0x20003bc4 ; HardFault_Handler_Proc + 964
        0x20003bc4:    f64e5028    N.(P    MOV      r0,#0xed28
        0x20003bc8:    f2ce0000    ....    MOVT     r0,#0xe000
        0x20003bcc:    6800        .h      LDR      r0,[r0,#0]
        0x20003bce:    0340        @.      LSLS     r0,r0,#13
        0x20003bd0:    2800        .(      CMP      r0,#0
        0x20003bd2:    d507        ..      BPL      0x20003be4 ; HardFault_Handler_Proc + 996
        0x20003bd4:    e7ff        ..      B        0x20003bd6 ; HardFault_Handler_Proc + 982
        0x20003bd6:    f2452052    E.R     MOV      r0,#0x5252
        0x20003bda:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003bde:    f000fecf    ....    BL       __0printf ; 0x20004980
        0x20003be2:    e7ff        ..      B        0x20003be4 ; HardFault_Handler_Proc + 996
        0x20003be4:    f64e5028    N.(P    MOV      r0,#0xed28
        0x20003be8:    f2ce0000    ....    MOVT     r0,#0xe000
        0x20003bec:    6800        .h      LDR      r0,[r0,#0]
        0x20003bee:    0300        ..      LSLS     r0,r0,#12
        0x20003bf0:    2800        .(      CMP      r0,#0
        0x20003bf2:    d507        ..      BPL      0x20003c04 ; HardFault_Handler_Proc + 1028
        0x20003bf4:    e7ff        ..      B        0x20003bf6 ; HardFault_Handler_Proc + 1014
        0x20003bf6:    f2453091    E..0    MOV      r0,#0x5391
        0x20003bfa:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003bfe:    f000febf    ....    BL       __0printf ; 0x20004980
        0x20003c02:    e7ff        ..      B        0x20003c04 ; HardFault_Handler_Proc + 1028
        0x20003c04:    f64e5028    N.(P    MOV      r0,#0xed28
        0x20003c08:    f2ce0000    ....    MOVT     r0,#0xe000
        0x20003c0c:    6800        .h      LDR      r0,[r0,#0]
        0x20003c0e:    02c0        ..      LSLS     r0,r0,#11
        0x20003c10:    2800        .(      CMP      r0,#0
        0x20003c12:    d507        ..      BPL      0x20003c24 ; HardFault_Handler_Proc + 1060
        0x20003c14:    e7ff        ..      B        0x20003c16 ; HardFault_Handler_Proc + 1046
        0x20003c16:    f24530d2    E..0    MOV      r0,#0x53d2
        0x20003c1a:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003c1e:    f000feaf    ....    BL       __0printf ; 0x20004980
        0x20003c22:    e7ff        ..      B        0x20003c24 ; HardFault_Handler_Proc + 1060
        0x20003c24:    f64e5028    N.(P    MOV      r0,#0xed28
        0x20003c28:    f2ce0000    ....    MOVT     r0,#0xe000
        0x20003c2c:    6800        .h      LDR      r0,[r0,#0]
        0x20003c2e:    01c0        ..      LSLS     r0,r0,#7
        0x20003c30:    2800        .(      CMP      r0,#0
        0x20003c32:    d507        ..      BPL      0x20003c44 ; HardFault_Handler_Proc + 1092
        0x20003c34:    e7ff        ..      B        0x20003c36 ; HardFault_Handler_Proc + 1078
        0x20003c36:    f245302f    E./0    MOV      r0,#0x532f
        0x20003c3a:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003c3e:    f000fe9f    ....    BL       __0printf ; 0x20004980
        0x20003c42:    e7ff        ..      B        0x20003c44 ; HardFault_Handler_Proc + 1092
        0x20003c44:    f64e5028    N.(P    MOV      r0,#0xed28
        0x20003c48:    f2ce0000    ....    MOVT     r0,#0xe000
        0x20003c4c:    6800        .h      LDR      r0,[r0,#0]
        0x20003c4e:    0180        ..      LSLS     r0,r0,#6
        0x20003c50:    2800        .(      CMP      r0,#0
        0x20003c52:    d507        ..      BPL      0x20003c64 ; HardFault_Handler_Proc + 1124
        0x20003c54:    e7ff        ..      B        0x20003c56 ; HardFault_Handler_Proc + 1110
        0x20003c56:    f24520bb    E..     MOV      r0,#0x52bb
        0x20003c5a:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003c5e:    f000fe8f    ....    BL       __0printf ; 0x20004980
        0x20003c62:    e7ff        ..      B        0x20003c64 ; HardFault_Handler_Proc + 1124
        0x20003c64:    e7ff        ..      B        0x20003c66 ; HardFault_Handler_Proc + 1126
        0x20003c66:    e7ff        ..      B        0x20003c68 ; HardFault_Handler_Proc + 1128
        0x20003c68:    f000f908    ....    BL       app_debug_printf ; 0x20003e7c
        0x20003c6c:    e7ff        ..      B        0x20003c6e ; HardFault_Handler_Proc + 1134
        0x20003c6e:    e7fe        ..      B        0x20003c6e ; HardFault_Handler_Proc + 1134
    NMI_Handler_Proc
        0x20003c70:    b580        ..      PUSH     {r7,lr}
        0x20003c72:    b084        ..      SUB      sp,sp,#0x10
        0x20003c74:    9003        ..      STR      r0,[sp,#0xc]
        0x20003c76:    9102        ..      STR      r1,[sp,#8]
        0x20003c78:    9201        ..      STR      r2,[sp,#4]
        0x20003c7a:    f000f941    ..A.    BL       app_debug_reinit ; 0x20003f00
        0x20003c7e:    9903        ..      LDR      r1,[sp,#0xc]
        0x20003c80:    9a02        ..      LDR      r2,[sp,#8]
        0x20003c82:    9b01        ..      LDR      r3,[sp,#4]
        0x20003c84:    f6450005    E...    MOV      r0,#0x5805
        0x20003c88:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003c8c:    f000fe78    ..x.    BL       __0printf ; 0x20004980
        0x20003c90:    f000f8f4    ....    BL       app_debug_printf ; 0x20003e7c
        0x20003c94:    e7ff        ..      B        0x20003c96 ; NMI_Handler_Proc + 38
        0x20003c96:    e7fe        ..      B        0x20003c96 ; NMI_Handler_Proc + 38
    SPI1_IRQ_Handler
        0x20003c98:    b580        ..      PUSH     {r7,lr}
        0x20003c9a:    b084        ..      SUB      sp,sp,#0x10
        0x20003c9c:    2000        .       MOVS     r0,#0
        0x20003c9e:    f8ad000e    ....    STRH     r0,[sp,#0xe]
        0x20003ca2:    f2420000    B...    MOVW     r0,#0x2000
        0x20003ca6:    f2c60000    ....    MOVT     r0,#0x6000
        0x20003caa:    f10d010e    ....    ADD      r1,sp,#0xe
        0x20003cae:    f000fdbd    ....    BL       $Ven$TT$L$$rom_hw_spi_get_interrupt_flag ; 0x2000482c
        0x20003cb2:    f8bd000e    ....    LDRH     r0,[sp,#0xe]
        0x20003cb6:    04c0        ..      LSLS     r0,r0,#19
        0x20003cb8:    2800        .(      CMP      r0,#0
        0x20003cba:    d51b        ..      BPL      0x20003cf4 ; SPI1_IRQ_Handler + 92
        0x20003cbc:    e7ff        ..      B        0x20003cbe ; SPI1_IRQ_Handler + 38
        0x20003cbe:    2000        .       MOVS     r0,#0
        0x20003cc0:    9002        ..      STR      r0,[sp,#8]
        0x20003cc2:    f24810c0    H...    MOV      r0,#0x81c0
        0x20003cc6:    f2c50000    ....    MOVT     r0,#0x5000
        0x20003cca:    9001        ..      STR      r0,[sp,#4]
        0x20003ccc:    a902        ..      ADD      r1,sp,#8
        0x20003cce:    f000fdb2    ....    BL       $Ven$TT$L$$rom_hw_dma_get_circ_count ; 0x20004836
        0x20003cd2:    9801        ..      LDR      r0,[sp,#4]
        0x20003cd4:    9902        ..      LDR      r1,[sp,#8]
        0x20003cd6:    310a        .1      ADDS     r1,r1,#0xa
        0x20003cd8:    f64c42cd    L..B    MOV      r2,#0xcccd
        0x20003cdc:    f6cc42cc    ...B    MOVT     r2,#0xcccc
        0x20003ce0:    fba13202    ...2    UMULL    r3,r2,r1,r2
        0x20003ce4:    0952        R.      LSRS     r2,r2,#5
        0x20003ce6:    eb020282    ....    ADD      r2,r2,r2,LSL #2
        0x20003cea:    eba101c2    ....    SUB      r1,r1,r2,LSL #3
        0x20003cee:    f000fda7    ....    BL       $Ven$TT$L$$rom_hw_dma_set_interval_tx_index ; 0x20004840
        0x20003cf2:    e7ff        ..      B        0x20003cf4 ; SPI1_IRQ_Handler + 92
        0x20003cf4:    f8bd100e    ....    LDRH     r1,[sp,#0xe]
        0x20003cf8:    f2420000    B...    MOVW     r0,#0x2000
        0x20003cfc:    f2c60000    ....    MOVT     r0,#0x6000
        0x20003d00:    f000fda3    ....    BL       $Ven$TT$L$$rom_hw_spi_clear_interrupt_flag ; 0x2000484a
        0x20003d04:    b004        ..      ADD      sp,sp,#0x10
        0x20003d06:    bd80        ..      POP      {r7,pc}
    __NVIC_ClearPendingIRQ
        0x20003d08:    b081        ..      SUB      sp,sp,#4
        0x20003d0a:    f88d0003    ....    STRB     r0,[sp,#3]
        0x20003d0e:    f99d0003    ....    LDRSB    r0,[sp,#3]
        0x20003d12:    2800        .(      CMP      r0,#0
        0x20003d14:    d40e        ..      BMI      0x20003d34 ; __NVIC_ClearPendingIRQ + 44
        0x20003d16:    e7ff        ..      B        0x20003d18 ; __NVIC_ClearPendingIRQ + 16
        0x20003d18:    f99d1003    ....    LDRSB    r1,[sp,#3]
        0x20003d1c:    f001021f    ....    AND      r2,r1,#0x1f
        0x20003d20:    2001        .       MOVS     r0,#1
        0x20003d22:    4090        .@      LSLS     r0,r0,r2
        0x20003d24:    094a        J.      LSRS     r2,r1,#5
        0x20003d26:    f24e2180    N..!    MOV      r1,#0xe280
        0x20003d2a:    f2ce0100    ....    MOVT     r1,#0xe000
        0x20003d2e:    f8410022    A.".    STR      r0,[r1,r2,LSL #2]
        0x20003d32:    e7ff        ..      B        0x20003d34 ; __NVIC_ClearPendingIRQ + 44
        0x20003d34:    b001        ..      ADD      sp,sp,#4
        0x20003d36:    4770        pG      BX       lr
    __NVIC_EnableIRQ
        0x20003d38:    b081        ..      SUB      sp,sp,#4
        0x20003d3a:    f88d0003    ....    STRB     r0,[sp,#3]
        0x20003d3e:    f99d0003    ....    LDRSB    r0,[sp,#3]
        0x20003d42:    2800        .(      CMP      r0,#0
        0x20003d44:    d40e        ..      BMI      0x20003d64 ; __NVIC_EnableIRQ + 44
        0x20003d46:    e7ff        ..      B        0x20003d48 ; __NVIC_EnableIRQ + 16
        0x20003d48:    f99d1003    ....    LDRSB    r1,[sp,#3]
        0x20003d4c:    f001021f    ....    AND      r2,r1,#0x1f
        0x20003d50:    2001        .       MOVS     r0,#1
        0x20003d52:    4090        .@      LSLS     r0,r0,r2
        0x20003d54:    094a        J.      LSRS     r2,r1,#5
        0x20003d56:    f24e1100    N...    MOVW     r1,#0xe100
        0x20003d5a:    f2ce0100    ....    MOVT     r1,#0xe000
        0x20003d5e:    f8410022    A.".    STR      r0,[r1,r2,LSL #2]
        0x20003d62:    e7ff        ..      B        0x20003d64 ; __NVIC_EnableIRQ + 44
        0x20003d64:    b001        ..      ADD      sp,sp,#4
        0x20003d66:    4770        pG      BX       lr
    __NVIC_SetPriority
        0x20003d68:    b082        ..      SUB      sp,sp,#8
        0x20003d6a:    f88d0007    ....    STRB     r0,[sp,#7]
        0x20003d6e:    9100        ..      STR      r1,[sp,#0]
        0x20003d70:    f99d0007    ....    LDRSB    r0,[sp,#7]
        0x20003d74:    2800        .(      CMP      r0,#0
        0x20003d76:    d40a        ..      BMI      0x20003d8e ; __NVIC_SetPriority + 38
        0x20003d78:    e7ff        ..      B        0x20003d7a ; __NVIC_SetPriority + 18
        0x20003d7a:    9800        ..      LDR      r0,[sp,#0]
        0x20003d7c:    0140        @.      LSLS     r0,r0,#5
        0x20003d7e:    f99d1007    ....    LDRSB    r1,[sp,#7]
        0x20003d82:    f24e4200    N..B    MOVW     r2,#0xe400
        0x20003d86:    f2ce0200    ....    MOVT     r2,#0xe000
        0x20003d8a:    5488        .T      STRB     r0,[r1,r2]
        0x20003d8c:    e00b        ..      B        0x20003da6 ; __NVIC_SetPriority + 62
        0x20003d8e:    9800        ..      LDR      r0,[sp,#0]
        0x20003d90:    0140        @.      LSLS     r0,r0,#5
        0x20003d92:    f89d1007    ....    LDRB     r1,[sp,#7]
        0x20003d96:    f001010f    ....    AND      r1,r1,#0xf
        0x20003d9a:    f64e5214    N..R    MOV      r2,#0xed14
        0x20003d9e:    f2ce0200    ....    MOVT     r2,#0xe000
        0x20003da2:    5488        .T      STRB     r0,[r1,r2]
        0x20003da4:    e7ff        ..      B        0x20003da6 ; __NVIC_SetPriority + 62
        0x20003da6:    b002        ..      ADD      sp,sp,#8
        0x20003da8:    4770        pG      BX       lr
        0x20003daa:    0000        ..      MOVS     r0,r0
    app_debug_init
        0x20003dac:    b580        ..      PUSH     {r7,lr}
        0x20003dae:    b086        ..      SUB      sp,sp,#0x18
        0x20003db0:    f8ddc020    .. .    LDR      r12,[sp,#0x20]
        0x20003db4:    9004        ..      STR      r0,[sp,#0x10]
        0x20003db6:    9103        ..      STR      r1,[sp,#0xc]
        0x20003db8:    9202        ..      STR      r2,[sp,#8]
        0x20003dba:    9301        ..      STR      r3,[sp,#4]
        0x20003dbc:    9802        ..      LDR      r0,[sp,#8]
        0x20003dbe:    f1b04fc0    ...O    CMP      r0,#0x60000000
        0x20003dc2:    d010        ..      BEQ      0x20003de6 ; app_debug_init + 58
        0x20003dc4:    e7ff        ..      B        0x20003dc6 ; app_debug_init + 26
        0x20003dc6:    9802        ..      LDR      r0,[sp,#8]
        0x20003dc8:    f2404100    @..A    MOVW     r1,#0x400
        0x20003dcc:    f2c60100    ....    MOVT     r1,#0x6000
        0x20003dd0:    4288        .B      CMP      r0,r1
        0x20003dd2:    d008        ..      BEQ      0x20003de6 ; app_debug_init + 58
        0x20003dd4:    e7ff        ..      B        0x20003dd6 ; app_debug_init + 42
        0x20003dd6:    9802        ..      LDR      r0,[sp,#8]
        0x20003dd8:    f6400100    @...    MOVW     r1,#0x800
        0x20003ddc:    f2c60100    ....    MOVT     r1,#0x6000
        0x20003de0:    4288        .B      CMP      r0,r1
        0x20003de2:    d110        ..      BNE      0x20003e06 ; app_debug_init + 90
        0x20003de4:    e7ff        ..      B        0x20003de6 ; app_debug_init + 58
        0x20003de6:    9804        ..      LDR      r0,[sp,#0x10]
        0x20003de8:    f24b0100    K...    MOVW     r1,#0xb000
        0x20003dec:    f2c60104    ....    MOVT     r1,#0x6004
        0x20003df0:    4288        .B      CMP      r0,r1
        0x20003df2:    d00c        ..      BEQ      0x20003e0e ; app_debug_init + 98
        0x20003df4:    e7ff        ..      B        0x20003df6 ; app_debug_init + 74
        0x20003df6:    9804        ..      LDR      r0,[sp,#0x10]
        0x20003df8:    f24b0180    K...    MOV      r1,#0xb080
        0x20003dfc:    f2c60104    ....    MOVT     r1,#0x6004
        0x20003e00:    4288        .B      CMP      r0,r1
        0x20003e02:    d004        ..      BEQ      0x20003e0e ; app_debug_init + 98
        0x20003e04:    e7ff        ..      B        0x20003e06 ; app_debug_init + 90
        0x20003e06:    2010        .       MOVS     r0,#0x10
        0x20003e08:    f88d0017    ....    STRB     r0,[sp,#0x17]
        0x20003e0c:    e031        1.      B        0x20003e72 ; app_debug_init + 198
        0x20003e0e:    9908        ..      LDR      r1,[sp,#0x20]
        0x20003e10:    f24b0004    K...    MOV      r0,#0xb004
        0x20003e14:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003e18:    6001        .`      STR      r1,[r0,#0]
        0x20003e1a:    6800        .h      LDR      r0,[r0,#0]
        0x20003e1c:    b160        `.      CBZ      r0,0x20003e38 ; app_debug_init + 140
        0x20003e1e:    e7ff        ..      B        0x20003e20 ; app_debug_init + 116
        0x20003e20:    f24b0112    K...    MOV      r1,#0xb012
        0x20003e24:    f2c20100    ....    MOVT     r1,#0x2000
        0x20003e28:    2000        .       MOVS     r0,#0
        0x20003e2a:    8008        ..      STRH     r0,[r1,#0]
        0x20003e2c:    f24b0110    K...    MOV      r1,#0xb010
        0x20003e30:    f2c20100    ....    MOVT     r1,#0x2000
        0x20003e34:    8008        ..      STRH     r0,[r1,#0]
        0x20003e36:    e7ff        ..      B        0x20003e38 ; app_debug_init + 140
        0x20003e38:    9802        ..      LDR      r0,[sp,#8]
        0x20003e3a:    f24b010c    K...    MOV      r1,#0xb00c
        0x20003e3e:    f2c20100    ....    MOVT     r1,#0x2000
        0x20003e42:    6008        .`      STR      r0,[r1,#0]
        0x20003e44:    9804        ..      LDR      r0,[sp,#0x10]
        0x20003e46:    f24b0108    K...    MOV      r1,#0xb008
        0x20003e4a:    f2c20100    ....    MOVT     r1,#0x2000
        0x20003e4e:    6008        .`      STR      r0,[r1,#0]
        0x20003e50:    9803        ..      LDR      r0,[sp,#0xc]
        0x20003e52:    f24b0114    K...    MOV      r1,#0xb014
        0x20003e56:    f2c20100    ....    MOVT     r1,#0x2000
        0x20003e5a:    6008        .`      STR      r0,[r1,#0]
        0x20003e5c:    9801        ..      LDR      r0,[sp,#4]
        0x20003e5e:    f24b0118    K...    MOV      r1,#0xb018
        0x20003e62:    f2c20100    ....    MOVT     r1,#0x2000
        0x20003e66:    6008        .`      STR      r0,[r1,#0]
        0x20003e68:    f000f84a    ..J.    BL       app_debug_reinit ; 0x20003f00
        0x20003e6c:    f88d0017    ....    STRB     r0,[sp,#0x17]
        0x20003e70:    e7ff        ..      B        0x20003e72 ; app_debug_init + 198
        0x20003e72:    f89d0017    ....    LDRB     r0,[sp,#0x17]
        0x20003e76:    b006        ..      ADD      sp,sp,#0x18
        0x20003e78:    bd80        ..      POP      {r7,pc}
        0x20003e7a:    0000        ..      MOVS     r0,r0
    app_debug_printf
        0x20003e7c:    b580        ..      PUSH     {r7,lr}
        0x20003e7e:    b082        ..      SUB      sp,sp,#8
        0x20003e80:    f24b0004    K...    MOV      r0,#0xb004
        0x20003e84:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003e88:    6800        .h      LDR      r0,[r0,#0]
        0x20003e8a:    b908        ..      CBNZ     r0,0x20003e90 ; app_debug_printf + 20
        0x20003e8c:    e7ff        ..      B        0x20003e8e ; app_debug_printf + 18
        0x20003e8e:    e035        5.      B        0x20003efc ; app_debug_printf + 128
        0x20003e90:    e7ff        ..      B        0x20003e92 ; app_debug_printf + 22
        0x20003e92:    f24b0012    K...    MOV      r0,#0xb012
        0x20003e96:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003e9a:    8800        ..      LDRH     r0,[r0,#0]
        0x20003e9c:    f24b0110    K...    MOV      r1,#0xb010
        0x20003ea0:    f2c20100    ....    MOVT     r1,#0x2000
        0x20003ea4:    8809        ..      LDRH     r1,[r1,#0]
        0x20003ea6:    4288        .B      CMP      r0,r1
        0x20003ea8:    d028        (.      BEQ      0x20003efc ; app_debug_printf + 128
        0x20003eaa:    e7ff        ..      B        0x20003eac ; app_debug_printf + 48
        0x20003eac:    f24b000c    K...    MOV      r0,#0xb00c
        0x20003eb0:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003eb4:    6800        .h      LDR      r0,[r0,#0]
        0x20003eb6:    f24b0104    K...    MOV      r1,#0xb004
        0x20003eba:    f2c20100    ....    MOVT     r1,#0x2000
        0x20003ebe:    9100        ..      STR      r1,[sp,#0]
        0x20003ec0:    6809        .h      LDR      r1,[r1,#0]
        0x20003ec2:    6809        .h      LDR      r1,[r1,#0]
        0x20003ec4:    f24b0212    K...    MOV      r2,#0xb012
        0x20003ec8:    f2c20200    ....    MOVT     r2,#0x2000
        0x20003ecc:    9201        ..      STR      r2,[sp,#4]
        0x20003ece:    8812        ..      LDRH     r2,[r2,#0]
        0x20003ed0:    5c89        .\      LDRB     r1,[r1,r2]
        0x20003ed2:    f000fcbf    ....    BL       $Ven$TT$L$$rom_hw_uart_send_byte ; 0x20004854
        0x20003ed6:    9900        ..      LDR      r1,[sp,#0]
        0x20003ed8:    9801        ..      LDR      r0,[sp,#4]
        0x20003eda:    8802        ..      LDRH     r2,[r0,#0]
        0x20003edc:    3201        .2      ADDS     r2,#1
        0x20003ede:    8002        ..      STRH     r2,[r0,#0]
        0x20003ee0:    8800        ..      LDRH     r0,[r0,#0]
        0x20003ee2:    6809        .h      LDR      r1,[r1,#0]
        0x20003ee4:    8889        ..      LDRH     r1,[r1,#4]
        0x20003ee6:    4288        .B      CMP      r0,r1
        0x20003ee8:    db07        ..      BLT      0x20003efa ; app_debug_printf + 126
        0x20003eea:    e7ff        ..      B        0x20003eec ; app_debug_printf + 112
        0x20003eec:    f24b0112    K...    MOV      r1,#0xb012
        0x20003ef0:    f2c20100    ....    MOVT     r1,#0x2000
        0x20003ef4:    2000        .       MOVS     r0,#0
        0x20003ef6:    8008        ..      STRH     r0,[r1,#0]
        0x20003ef8:    e7ff        ..      B        0x20003efa ; app_debug_printf + 126
        0x20003efa:    e7ca        ..      B        0x20003e92 ; app_debug_printf + 22
        0x20003efc:    b002        ..      ADD      sp,sp,#8
        0x20003efe:    bd80        ..      POP      {r7,pc}
    app_debug_reinit
        0x20003f00:    b580        ..      PUSH     {r7,lr}
        0x20003f02:    b084        ..      SUB      sp,sp,#0x10
        0x20003f04:    f24b000c    K...    MOV      r0,#0xb00c
        0x20003f08:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003f0c:    6800        .h      LDR      r0,[r0,#0]
        0x20003f0e:    f1b04fc0    ...O    CMP      r0,#0x60000000
        0x20003f12:    d113        ..      BNE      0x20003f3c ; app_debug_reinit + 60
        0x20003f14:    e7ff        ..      B        0x20003f16 ; app_debug_reinit + 22
        0x20003f16:    202b        +       MOVS     r0,#0x2b
        0x20003f18:    f000fca1    ....    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x2000485e
        0x20003f1c:    f24b0008    K...    MOV      r0,#0xb008
        0x20003f20:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003f24:    6800        .h      LDR      r0,[r0,#0]
        0x20003f26:    f24b0114    K...    MOV      r1,#0xb014
        0x20003f2a:    f2c20100    ....    MOVT     r1,#0x2000
        0x20003f2e:    6809        .h      LDR      r1,[r1,#0]
        0x20003f30:    2204        ."      MOVS     r2,#4
        0x20003f32:    f000fc99    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pid ; 0x20004868
        0x20003f36:    f88d000e    ....    STRB     r0,[sp,#0xe]
        0x20003f3a:    e032        2.      B        0x20003fa2 ; app_debug_reinit + 162
        0x20003f3c:    f24b000c    K...    MOV      r0,#0xb00c
        0x20003f40:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003f44:    6800        .h      LDR      r0,[r0,#0]
        0x20003f46:    f2404100    @..A    MOVW     r1,#0x400
        0x20003f4a:    f2c60100    ....    MOVT     r1,#0x6000
        0x20003f4e:    4288        .B      CMP      r0,r1
        0x20003f50:    d113        ..      BNE      0x20003f7a ; app_debug_reinit + 122
        0x20003f52:    e7ff        ..      B        0x20003f54 ; app_debug_reinit + 84
        0x20003f54:    202c        ,       MOVS     r0,#0x2c
        0x20003f56:    f000fc82    ....    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x2000485e
        0x20003f5a:    f24b0008    K...    MOV      r0,#0xb008
        0x20003f5e:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003f62:    6800        .h      LDR      r0,[r0,#0]
        0x20003f64:    f24b0114    K...    MOV      r1,#0xb014
        0x20003f68:    f2c20100    ....    MOVT     r1,#0x2000
        0x20003f6c:    6809        .h      LDR      r1,[r1,#0]
        0x20003f6e:    2208        ."      MOVS     r2,#8
        0x20003f70:    f000fc7a    ..z.    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pid ; 0x20004868
        0x20003f74:    f88d000e    ....    STRB     r0,[sp,#0xe]
        0x20003f78:    e012        ..      B        0x20003fa0 ; app_debug_reinit + 160
        0x20003f7a:    202d        -       MOVS     r0,#0x2d
        0x20003f7c:    f000fc6f    ..o.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x2000485e
        0x20003f80:    f24b0008    K...    MOV      r0,#0xb008
        0x20003f84:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003f88:    6800        .h      LDR      r0,[r0,#0]
        0x20003f8a:    f24b0114    K...    MOV      r1,#0xb014
        0x20003f8e:    f2c20100    ....    MOVT     r1,#0x2000
        0x20003f92:    6809        .h      LDR      r1,[r1,#0]
        0x20003f94:    220c        ."      MOVS     r2,#0xc
        0x20003f96:    f000fc67    ..g.    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pid ; 0x20004868
        0x20003f9a:    f88d000e    ....    STRB     r0,[sp,#0xe]
        0x20003f9e:    e7ff        ..      B        0x20003fa0 ; app_debug_reinit + 160
        0x20003fa0:    e7ff        ..      B        0x20003fa2 ; app_debug_reinit + 162
        0x20003fa2:    e7ff        ..      B        0x20003fa4 ; app_debug_reinit + 164
        0x20003fa4:    f89d000e    ....    LDRB     r0,[sp,#0xe]
        0x20003fa8:    b128        (.      CBZ      r0,0x20003fb6 ; app_debug_reinit + 182
        0x20003faa:    e7ff        ..      B        0x20003fac ; app_debug_reinit + 172
        0x20003fac:    f89d000e    ....    LDRB     r0,[sp,#0xe]
        0x20003fb0:    f88d000f    ....    STRB     r0,[sp,#0xf]
        0x20003fb4:    e030        0.      B        0x20004018 ; app_debug_reinit + 280
        0x20003fb6:    e7ff        ..      B        0x20003fb8 ; app_debug_reinit + 184
        0x20003fb8:    f24b0008    K...    MOV      r0,#0xb008
        0x20003fbc:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003fc0:    6800        .h      LDR      r0,[r0,#0]
        0x20003fc2:    f24b0114    K...    MOV      r1,#0xb014
        0x20003fc6:    f2c20100    ....    MOVT     r1,#0x2000
        0x20003fca:    6809        .h      LDR      r1,[r1,#0]
        0x20003fcc:    2202        ."      MOVS     r2,#2
        0x20003fce:    f000fc50    ..P.    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x20004872
        0x20003fd2:    f88d000e    ....    STRB     r0,[sp,#0xe]
        0x20003fd6:    e7ff        ..      B        0x20003fd8 ; app_debug_reinit + 216
        0x20003fd8:    f89d000e    ....    LDRB     r0,[sp,#0xe]
        0x20003fdc:    b128        (.      CBZ      r0,0x20003fea ; app_debug_reinit + 234
        0x20003fde:    e7ff        ..      B        0x20003fe0 ; app_debug_reinit + 224
        0x20003fe0:    f89d000e    ....    LDRB     r0,[sp,#0xe]
        0x20003fe4:    f88d000f    ....    STRB     r0,[sp,#0xf]
        0x20003fe8:    e016        ..      B        0x20004018 ; app_debug_reinit + 280
        0x20003fea:    e7ff        ..      B        0x20003fec ; app_debug_reinit + 236
        0x20003fec:    f24b0018    K...    MOV      r0,#0xb018
        0x20003ff0:    f2c20000    ....    MOVT     r0,#0x2000
        0x20003ff4:    6800        .h      LDR      r0,[r0,#0]
        0x20003ff6:    9001        ..      STR      r0,[sp,#4]
        0x20003ff8:    f2430021    C.!.    MOV      r0,#0x3021
        0x20003ffc:    f2c01001    ....    MOVT     r0,#0x101
        0x20004000:    9002        ..      STR      r0,[sp,#8]
        0x20004002:    f24b000c    K...    MOV      r0,#0xb00c
        0x20004006:    f2c20000    ....    MOVT     r0,#0x2000
        0x2000400a:    6800        .h      LDR      r0,[r0,#0]
        0x2000400c:    a901        ..      ADD      r1,sp,#4
        0x2000400e:    f000fc35    ..5.    BL       $Ven$TT$L$$rom_hw_uart_init ; 0x2000487c
        0x20004012:    f88d000f    ....    STRB     r0,[sp,#0xf]
        0x20004016:    e7ff        ..      B        0x20004018 ; app_debug_reinit + 280
        0x20004018:    f89d000f    ....    LDRB     r0,[sp,#0xf]
        0x2000401c:    b004        ..      ADD      sp,sp,#0x10
        0x2000401e:    bd80        ..      POP      {r7,pc}
    fputc
        0x20004020:    b580        ..      PUSH     {r7,lr}
        0x20004022:    b084        ..      SUB      sp,sp,#0x10
        0x20004024:    9003        ..      STR      r0,[sp,#0xc]
        0x20004026:    9102        ..      STR      r1,[sp,#8]
        0x20004028:    f24b0004    K...    MOV      r0,#0xb004
        0x2000402c:    f2c20000    ....    MOVT     r0,#0x2000
        0x20004030:    6800        .h      LDR      r0,[r0,#0]
        0x20004032:    b970        p.      CBNZ     r0,0x20004052 ; fputc + 50
        0x20004034:    e7ff        ..      B        0x20004036 ; fputc + 22
        0x20004036:    9803        ..      LDR      r0,[sp,#0xc]
        0x20004038:    f88d0007    ....    STRB     r0,[sp,#7]
        0x2000403c:    f24b000c    K...    MOV      r0,#0xb00c
        0x20004040:    f2c20000    ....    MOVT     r0,#0x2000
        0x20004044:    6800        .h      LDR      r0,[r0,#0]
        0x20004046:    f10d0107    ....    ADD      r1,sp,#7
        0x2000404a:    2201        ."      MOVS     r2,#1
        0x2000404c:    f000fc1b    ....    BL       $Ven$TT$L$$rom_hw_uart_transmit ; 0x20004886
        0x20004050:    e01f        ..      B        0x20004092 ; fputc + 114
        0x20004052:    9a03        ..      LDR      r2,[sp,#0xc]
        0x20004054:    f24b0104    K...    MOV      r1,#0xb004
        0x20004058:    f2c20100    ....    MOVT     r1,#0x2000
        0x2000405c:    6808        .h      LDR      r0,[r1,#0]
        0x2000405e:    6803        .h      LDR      r3,[r0,#0]
        0x20004060:    f24b0010    K...    MOV      r0,#0xb010
        0x20004064:    f2c20000    ....    MOVT     r0,#0x2000
        0x20004068:    f8b0c000    ....    LDRH     r12,[r0,#0]
        0x2000406c:    f803200c    ...     STRB     r2,[r3,r12]
        0x20004070:    8802        ..      LDRH     r2,[r0,#0]
        0x20004072:    3201        .2      ADDS     r2,#1
        0x20004074:    8002        ..      STRH     r2,[r0,#0]
        0x20004076:    8800        ..      LDRH     r0,[r0,#0]
        0x20004078:    6809        .h      LDR      r1,[r1,#0]
        0x2000407a:    8889        ..      LDRH     r1,[r1,#4]
        0x2000407c:    4288        .B      CMP      r0,r1
        0x2000407e:    db07        ..      BLT      0x20004090 ; fputc + 112
        0x20004080:    e7ff        ..      B        0x20004082 ; fputc + 98
        0x20004082:    f24b0110    K...    MOV      r1,#0xb010
        0x20004086:    f2c20100    ....    MOVT     r1,#0x2000
        0x2000408a:    2000        .       MOVS     r0,#0
        0x2000408c:    8008        ..      STRH     r0,[r1,#0]
        0x2000408e:    e7ff        ..      B        0x20004090 ; fputc + 112
        0x20004090:    e7ff        ..      B        0x20004092 ; fputc + 114
        0x20004092:    9803        ..      LDR      r0,[sp,#0xc]
        0x20004094:    b004        ..      ADD      sp,sp,#0x10
        0x20004096:    bd80        ..      POP      {r7,pc}
    main
        0x20004098:    b580        ..      PUSH     {r7,lr}
        0x2000409a:    b082        ..      SUB      sp,sp,#8
        0x2000409c:    2000        .       MOVS     r0,#0
        0x2000409e:    9001        ..      STR      r0,[sp,#4]
        0x200040a0:    f24e0000    N...    MOVW     r0,#0xe000
        0x200040a4:    f2c60004    ....    MOVT     r0,#0x6004
        0x200040a8:    f000fbf2    ....    BL       $Ven$TT$L$$rom_hw_wdt_disable ; 0x20004890
        0x200040ac:    f000fb94    ....    BL       system_power_init ; 0x200047d8
        0x200040b0:    2001        .       MOVS     r0,#1
        0x200040b2:    f000fb59    ..Y.    BL       system_clock_init ; 0x20004768
        0x200040b6:    f000f877    ..w.    BL       peripheral_init ; 0x200041a8
        0x200040ba:    f000f89f    ....    BL       spi_example ; 0x200041fc
        0x200040be:    e7ff        ..      B        0x200040c0 ; main + 40
        0x200040c0:    e7fe        ..      B        0x200040c0 ; main + 40
        0x200040c2:    0000        ..      MOVS     r0,r0
    patch_hw_spi_transmit_bytes
        0x200040c4:    e92d4ff0    -..O    PUSH     {r4-r11,lr}
        0x200040c8:    b081        ..      SUB      sp,sp,#4
        0x200040ca:    4604        .F      MOV      r4,r0
        0x200040cc:    f2420000    B...    MOVW     r0,#0x2000
        0x200040d0:    f2c60000    ....    MOVT     r0,#0x6000
        0x200040d4:    461d        .F      MOV      r5,r3
        0x200040d6:    4690        .F      MOV      r8,r2
        0x200040d8:    4284        .B      CMP      r4,r0
        0x200040da:    4689        .F      MOV      r9,r1
        0x200040dc:    d005        ..      BEQ      0x200040ea ; patch_hw_spi_transmit_bytes + 38
        0x200040de:    f2410000    A...    MOVW     r0,#0x1000
        0x200040e2:    f2c60000    ....    MOVT     r0,#0x6000
        0x200040e6:    4284        .B      CMP      r4,r0
        0x200040e8:    d104        ..      BNE      0x200040f4 ; patch_hw_spi_transmit_bytes + 48
        0x200040ea:    2d00        .-      CMP      r5,#0
        0x200040ec:    bf18        ..      IT       NE
        0x200040ee:    ea590008    Y...    ORRSNE   r0,r9,r8
        0x200040f2:    d103        ..      BNE      0x200040fc ; patch_hw_spi_transmit_bytes + 56
        0x200040f4:    2010        .       MOVS     r0,#0x10
        0x200040f6:    b001        ..      ADD      sp,sp,#4
        0x200040f8:    e8bd8ff0    ....    POP      {r4-r11,pc}
        0x200040fc:    f44f6780    O..g    MOV      r7,#0x400
        0x20004100:    2020                MOVS     r0,#0x20
        0x20004102:    6127        'a      STR      r7,[r4,#0x10]
        0x20004104:    6120         a      STR      r0,[r4,#0x10]
        0x20004106:    2001        .       MOVS     r0,#1
        0x20004108:    f2427b0f    B..{    MOV      r11,#0x270f
        0x2000410c:    f04f0a00    O...    MOV      r10,#0
        0x20004110:    2600        .&      MOVS     r6,#0
        0x20004112:    63e0        .c      STR      r0,[r4,#0x3c]
        0x20004114:    63a0        .c      STR      r0,[r4,#0x38]
        0x20004116:    bf00        ..      NOP      
        0x20004118:    68a0        .h      LDR      r0,[r4,#8]
        0x2000411a:    0540        @.      LSLS     r0,r0,#21
        0x2000411c:    d507        ..      BPL      0x2000412e ; patch_hw_spi_transmit_bytes + 106
        0x2000411e:    2001        .       MOVS     r0,#1
        0x20004120:    6127        'a      STR      r7,[r4,#0x10]
        0x20004122:    3601        .6      ADDS     r6,#1
        0x20004124:    f000fbb9    ....    BL       $Ven$TT$L$$rom_delay_us ; 0x2000489a
        0x20004128:    455e        ^E      CMP      r6,r11
        0x2000412a:    d9f5        ..      BLS      0x20004118 ; patch_hw_spi_transmit_bytes + 84
        0x2000412c:    e034        4.      B        0x20004198 ; patch_hw_spi_transmit_bytes + 212
        0x2000412e:    f1b90f00    ....    CMP      r9,#0
        0x20004132:    d002        ..      BEQ      0x2000413a ; patch_hw_spi_transmit_bytes + 118
        0x20004134:    f819000a    ....    LDRB     r0,[r9,r10]
        0x20004138:    e003        ..      B        0x20004142 ; patch_hw_spi_transmit_bytes + 126
        0x2000413a:    6960        `i      LDR      r0,[r4,#0x14]
        0x2000413c:    0700        ..      LSLS     r0,r0,#28
        0x2000413e:    d501        ..      BPL      0x20004144 ; patch_hw_spi_transmit_bytes + 128
        0x20004140:    2000        .       MOVS     r0,#0
        0x20004142:    6020         `      STR      r0,[r4,#0]
        0x20004144:    68a0        .h      LDR      r0,[r4,#8]
        0x20004146:    0680        ..      LSLS     r0,r0,#26
        0x20004148:    d406        ..      BMI      0x20004158 ; patch_hw_spi_transmit_bytes + 148
        0x2000414a:    2001        .       MOVS     r0,#1
        0x2000414c:    3601        .6      ADDS     r6,#1
        0x2000414e:    f000fba4    ....    BL       $Ven$TT$L$$rom_delay_us ; 0x2000489a
        0x20004152:    455e        ^E      CMP      r6,r11
        0x20004154:    d9f6        ..      BLS      0x20004144 ; patch_hw_spi_transmit_bytes + 128
        0x20004156:    e01f        ..      B        0x20004198 ; patch_hw_spi_transmit_bytes + 212
        0x20004158:    6860        `h      LDR      r0,[r4,#4]
        0x2000415a:    f1b80f00    ....    CMP      r8,#0
        0x2000415e:    bf18        ..      IT       NE
        0x20004160:    f808000a    ....    STRBNE   r0,[r8,r10]
        0x20004164:    f10a0a01    ....    ADD      r10,r10,#1
        0x20004168:    45aa        .E      CMP      r10,r5
        0x2000416a:    f04f0020    O. .    MOV      r0,#0x20
        0x2000416e:    6120         a      STR      r0,[r4,#0x10]
        0x20004170:    d1d2        ..      BNE      0x20004118 ; patch_hw_spi_transmit_bytes + 84
        0x20004172:    2004        .       MOVS     r0,#4
        0x20004174:    f2427510    B..u    MOV      r5,#0x2710
        0x20004178:    6120         a      STR      r0,[r4,#0x10]
        0x2000417a:    68a7        .h      LDR      r7,[r4,#8]
        0x2000417c:    2001        .       MOVS     r0,#1
        0x2000417e:    f000fb8c    ....    BL       $Ven$TT$L$$rom_delay_us ; 0x2000489a
        0x20004182:    0778        x.      LSLS     r0,r7,#29
        0x20004184:    d40c        ..      BMI      0x200041a0 ; patch_hw_spi_transmit_bytes + 220
        0x20004186:    3601        .6      ADDS     r6,#1
        0x20004188:    42ae        .B      CMP      r6,r5
        0x2000418a:    f04f0003    O...    MOV      r0,#3
        0x2000418e:    bf24        $.      ITT      CS
        0x20004190:    b001        ..      ADDCS    sp,sp,#4
        0x20004192:    e8bd8ff0    ....    POPCS    {r4-r11,pc}
        0x20004196:    e7f0        ..      B        0x2000417a ; patch_hw_spi_transmit_bytes + 182
        0x20004198:    2003        .       MOVS     r0,#3
        0x2000419a:    b001        ..      ADD      sp,sp,#4
        0x2000419c:    e8bd8ff0    ....    POP      {r4-r11,pc}
        0x200041a0:    2000        .       MOVS     r0,#0
        0x200041a2:    b001        ..      ADD      sp,sp,#4
        0x200041a4:    e8bd8ff0    ....    POP      {r4-r11,pc}
    peripheral_init
        0x200041a8:    b580        ..      PUSH     {r7,lr}
        0x200041aa:    b082        ..      SUB      sp,sp,#8
        0x200041ac:    2001        .       MOVS     r0,#1
        0x200041ae:    2200        ."      MOVS     r2,#0
        0x200041b0:    9201        ..      STR      r2,[sp,#4]
        0x200041b2:    4611        .F      MOV      r1,r2
        0x200041b4:    f000fb76    ..v.    BL       $Ven$TT$L$$rom_hw_sys_ctrl_peri_int_ctrl ; 0x200048a4
        0x200041b8:    9801        ..      LDR      r0,[sp,#4]
        0x200041ba:    4669        iF      MOV      r1,sp
        0x200041bc:    6008        .`      STR      r0,[r1,#0]
        0x200041be:    f24b0080    K...    MOV      r0,#0xb080
        0x200041c2:    f2c60004    ....    MOVT     r0,#0x6004
        0x200041c6:    f44f5180    O..Q    MOV      r1,#0x1000
        0x200041ca:    f2404200    @..B    MOVW     r2,#0x400
        0x200041ce:    f2c60200    ....    MOVT     r2,#0x6000
        0x200041d2:    f44f23e1    O..#    MOV      r3,#0x70800
        0x200041d6:    f7fffde9    ....    BL       app_debug_init ; 0x20003dac
        0x200041da:    f64500bc    E...    MOV      r0,#0x58bc
        0x200041de:    f2c20000    ....    MOVT     r0,#0x2000
        0x200041e2:    f645114d    E.M.    MOV      r1,#0x594d
        0x200041e6:    f2c20100    ....    MOVT     r1,#0x2000
        0x200041ea:    f6451244    E.D.    MOV      r2,#0x5944
        0x200041ee:    f2c20200    ....    MOVT     r2,#0x2000
        0x200041f2:    f000fbc5    ....    BL       __0printf ; 0x20004980
        0x200041f6:    b002        ..      ADD      sp,sp,#8
        0x200041f8:    bd80        ..      POP      {r7,pc}
        0x200041fa:    0000        ..      MOVS     r0,r0
    spi_example
        0x200041fc:    b580        ..      PUSH     {r7,lr}
        0x200041fe:    b082        ..      SUB      sp,sp,#8
        0x20004200:    2000        .       MOVS     r0,#0
        0x20004202:    f88d0007    ....    STRB     r0,[sp,#7]
        0x20004206:    f88d0006    ....    STRB     r0,[sp,#6]
        0x2000420a:    e7ff        ..      B        0x2000420c ; spi_example + 16
        0x2000420c:    f89d0006    ....    LDRB     r0,[sp,#6]
        0x20004210:    2809        .(      CMP      r0,#9
        0x20004212:    dc0e        ..      BGT      0x20004232 ; spi_example + 54
        0x20004214:    e7ff        ..      B        0x20004216 ; spi_example + 26
        0x20004216:    f89d0006    ....    LDRB     r0,[sp,#6]
        0x2000421a:    f24b0126    K.&.    MOV      r1,#0xb026
        0x2000421e:    f2c20100    ....    MOVT     r1,#0x2000
        0x20004222:    5408        .T      STRB     r0,[r1,r0]
        0x20004224:    e7ff        ..      B        0x20004226 ; spi_example + 42
        0x20004226:    f89d0006    ....    LDRB     r0,[sp,#6]
        0x2000422a:    3001        .0      ADDS     r0,#1
        0x2000422c:    f88d0006    ....    STRB     r0,[sp,#6]
        0x20004230:    e7ec        ..      B        0x2000420c ; spi_example + 16
        0x20004232:    2028        (       MOVS     r0,#0x28
        0x20004234:    f88d0005    ....    STRB     r0,[sp,#5]
        0x20004238:    e7ff        ..      B        0x2000423a ; spi_example + 62
        0x2000423a:    f89d0005    ....    LDRB     r0,[sp,#5]
        0x2000423e:    2801        .(      CMP      r0,#1
        0x20004240:    db10        ..      BLT      0x20004264 ; spi_example + 104
        0x20004242:    e7ff        ..      B        0x20004244 ; spi_example + 72
        0x20004244:    f89d0005    ....    LDRB     r0,[sp,#5]
        0x20004248:    f24b0158    K.X.    MOV      r1,#0xb058
        0x2000424c:    f2c20100    ....    MOVT     r1,#0x2000
        0x20004250:    1a09        ..      SUBS     r1,r1,r0
        0x20004252:    f8810028    ..(.    STRB     r0,[r1,#0x28]
        0x20004256:    e7ff        ..      B        0x20004258 ; spi_example + 92
        0x20004258:    f89d0005    ....    LDRB     r0,[sp,#5]
        0x2000425c:    3801        .8      SUBS     r0,#1
        0x2000425e:    f88d0005    ....    STRB     r0,[sp,#5]
        0x20004262:    e7ea        ..      B        0x2000423a ; spi_example + 62
        0x20004264:    f000fa04    ....    BL       spi_example_slave_init ; 0x20004670
        0x20004268:    f000f8aa    ....    BL       spi_example_master_init ; 0x200043c0
        0x2000426c:    e7ff        ..      B        0x2000426e ; spi_example + 114
        0x2000426e:    f24b0026    K.&.    MOV      r0,#0xb026
        0x20004272:    f2c20000    ....    MOVT     r0,#0x2000
        0x20004276:    210a        .!      MOVS     r1,#0xa
        0x20004278:    f44f727a    O.zr    MOV      r2,#0x3e8
        0x2000427c:    f000f938    ..8.    BL       spi_example_master_transmit_bytes ; 0x200044f0
        0x20004280:    f88d0007    ....    STRB     r0,[sp,#7]
        0x20004284:    f89d0007    ....    LDRB     r0,[sp,#7]
        0x20004288:    b138        8.      CBZ      r0,0x2000429a ; spi_example + 158
        0x2000428a:    e7ff        ..      B        0x2000428c ; spi_example + 144
        0x2000428c:    f64500f2    E...    MOV      r0,#0x58f2
        0x20004290:    f2c20000    ....    MOVT     r0,#0x2000
        0x20004294:    f000fb74    ..t.    BL       __0printf ; 0x20004980
        0x20004298:    e7ff        ..      B        0x2000429a ; spi_example + 158
        0x2000429a:    f24b001c    K...    MOV      r0,#0xb01c
        0x2000429e:    f2c20000    ....    MOVT     r0,#0x2000
        0x200042a2:    210a        .!      MOVS     r1,#0xa
        0x200042a4:    f44f727a    O.zr    MOV      r2,#0x3e8
        0x200042a8:    f000f8f8    ....    BL       spi_example_master_receive_bytes ; 0x2000449c
        0x200042ac:    f88d0007    ....    STRB     r0,[sp,#7]
        0x200042b0:    f89d0007    ....    LDRB     r0,[sp,#7]
        0x200042b4:    b148        H.      CBZ      r0,0x200042ca ; spi_example + 206
        0x200042b6:    e7ff        ..      B        0x200042b8 ; spi_example + 188
        0x200042b8:    f89d1007    ....    LDRB     r1,[sp,#7]
        0x200042bc:    f64500e6    E...    MOV      r0,#0x58e6
        0x200042c0:    f2c20000    ....    MOVT     r0,#0x2000
        0x200042c4:    f000fb5c    ..\.    BL       __0printf ; 0x20004980
        0x200042c8:    e02c        ,.      B        0x20004324 ; spi_example + 296
        0x200042ca:    2064        d       MOVS     r0,#0x64
        0x200042cc:    f000faef    ....    BL       $Ven$TT$L$$rom_delay_ms ; 0x200048ae
        0x200042d0:    f645102e    E...    MOV      r0,#0x592e
        0x200042d4:    f2c20000    ....    MOVT     r0,#0x2000
        0x200042d8:    f000fb52    ..R.    BL       __0printf ; 0x20004980
        0x200042dc:    2000        .       MOVS     r0,#0
        0x200042de:    f88d0004    ....    STRB     r0,[sp,#4]
        0x200042e2:    e7ff        ..      B        0x200042e4 ; spi_example + 232
        0x200042e4:    f89d0004    ....    LDRB     r0,[sp,#4]
        0x200042e8:    2809        .(      CMP      r0,#9
        0x200042ea:    dc14        ..      BGT      0x20004316 ; spi_example + 282
        0x200042ec:    e7ff        ..      B        0x200042ee ; spi_example + 242
        0x200042ee:    f89d1004    ....    LDRB     r1,[sp,#4]
        0x200042f2:    f24b001c    K...    MOV      r0,#0xb01c
        0x200042f6:    f2c20000    ....    MOVT     r0,#0x2000
        0x200042fa:    5c41        A\      LDRB     r1,[r0,r1]
        0x200042fc:    f6451040    E.@.    MOV      r0,#0x5940
        0x20004300:    f2c20000    ....    MOVT     r0,#0x2000
        0x20004304:    f000fb3c    ..<.    BL       __0printf ; 0x20004980
        0x20004308:    e7ff        ..      B        0x2000430a ; spi_example + 270
        0x2000430a:    f89d0004    ....    LDRB     r0,[sp,#4]
        0x2000430e:    3001        .0      ADDS     r0,#1
        0x20004310:    f88d0004    ....    STRB     r0,[sp,#4]
        0x20004314:    e7e6        ..      B        0x200042e4 ; spi_example + 232
        0x20004316:    f24570ad    E..p    MOV      r0,#0x57ad
        0x2000431a:    f2c20000    ....    MOVT     r0,#0x2000
        0x2000431e:    f000fb2f    ../.    BL       __0printf ; 0x20004980
        0x20004322:    e7ff        ..      B        0x20004324 ; spi_example + 296
        0x20004324:    f24b0026    K.&.    MOV      r0,#0xb026
        0x20004328:    f2c20000    ....    MOVT     r0,#0x2000
        0x2000432c:    f24b011c    K...    MOV      r1,#0xb01c
        0x20004330:    f2c20100    ....    MOVT     r1,#0x2000
        0x20004334:    220a        ."      MOVS     r2,#0xa
        0x20004336:    f44f737a    O.zs    MOV      r3,#0x3e8
        0x2000433a:    f000f903    ....    BL       spi_example_master_transmit_receive ; 0x20004544
        0x2000433e:    f88d0007    ....    STRB     r0,[sp,#7]
        0x20004342:    f89d0007    ....    LDRB     r0,[sp,#7]
        0x20004346:    b148        H.      CBZ      r0,0x2000435c ; spi_example + 352
        0x20004348:    e7ff        ..      B        0x2000434a ; spi_example + 334
        0x2000434a:    f89d1007    ....    LDRB     r1,[sp,#7]
        0x2000434e:    f64500e6    E...    MOV      r0,#0x58e6
        0x20004352:    f2c20000    ....    MOVT     r0,#0x2000
        0x20004356:    f000fb13    ....    BL       __0printf ; 0x20004980
        0x2000435a:    e02c        ,.      B        0x200043b6 ; spi_example + 442
        0x2000435c:    2064        d       MOVS     r0,#0x64
        0x2000435e:    f000faa6    ....    BL       $Ven$TT$L$$rom_delay_ms ; 0x200048ae
        0x20004362:    f645102e    E...    MOV      r0,#0x592e
        0x20004366:    f2c20000    ....    MOVT     r0,#0x2000
        0x2000436a:    f000fb09    ....    BL       __0printf ; 0x20004980
        0x2000436e:    2000        .       MOVS     r0,#0
        0x20004370:    f88d0003    ....    STRB     r0,[sp,#3]
        0x20004374:    e7ff        ..      B        0x20004376 ; spi_example + 378
        0x20004376:    f89d0003    ....    LDRB     r0,[sp,#3]
        0x2000437a:    2809        .(      CMP      r0,#9
        0x2000437c:    dc14        ..      BGT      0x200043a8 ; spi_example + 428
        0x2000437e:    e7ff        ..      B        0x20004380 ; spi_example + 388
        0x20004380:    f89d1003    ....    LDRB     r1,[sp,#3]
        0x20004384:    f24b001c    K...    MOV      r0,#0xb01c
        0x20004388:    f2c20000    ....    MOVT     r0,#0x2000
        0x2000438c:    5c41        A\      LDRB     r1,[r0,r1]
        0x2000438e:    f6451040    E.@.    MOV      r0,#0x5940
        0x20004392:    f2c20000    ....    MOVT     r0,#0x2000
        0x20004396:    f000faf3    ....    BL       __0printf ; 0x20004980
        0x2000439a:    e7ff        ..      B        0x2000439c ; spi_example + 416
        0x2000439c:    f89d0003    ....    LDRB     r0,[sp,#3]
        0x200043a0:    3001        .0      ADDS     r0,#1
        0x200043a2:    f88d0003    ....    STRB     r0,[sp,#3]
        0x200043a6:    e7e6        ..      B        0x20004376 ; spi_example + 378
        0x200043a8:    f24570ad    E..p    MOV      r0,#0x57ad
        0x200043ac:    f2c20000    ....    MOVT     r0,#0x2000
        0x200043b0:    f000fae6    ....    BL       __0printf ; 0x20004980
        0x200043b4:    e7ff        ..      B        0x200043b6 ; spi_example + 442
        0x200043b6:    f44f707a    O.zp    MOV      r0,#0x3e8
        0x200043ba:    f000fa78    ..x.    BL       $Ven$TT$L$$rom_delay_ms ; 0x200048ae
        0x200043be:    e756        V.      B        0x2000426e ; spi_example + 114
    spi_example_master_init
        0x200043c0:    b580        ..      PUSH     {r7,lr}
        0x200043c2:    b086        ..      SUB      sp,sp,#0x18
        0x200043c4:    f24b0000    K...    MOVW     r0,#0xb000
        0x200043c8:    f2c60004    ....    MOVT     r0,#0x6004
        0x200043cc:    9003        ..      STR      r0,[sp,#0xc]
        0x200043ce:    f04f6100    O..a    MOV      r1,#0x8000000
        0x200043d2:    2214        ."      MOVS     r2,#0x14
        0x200043d4:    f000fa48    ..H.    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pid ; 0x20004868
        0x200043d8:    f24b0080    K...    MOV      r0,#0xb080
        0x200043dc:    f2c60004    ....    MOVT     r0,#0x6004
        0x200043e0:    9000        ..      STR      r0,[sp,#0]
        0x200043e2:    f44f1100    O...    MOV      r1,#0x200000
        0x200043e6:    2217        ."      MOVS     r2,#0x17
        0x200043e8:    f000fa3e    ..>.    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pid ; 0x20004868
        0x200043ec:    9800        ..      LDR      r0,[sp,#0]
        0x200043ee:    f44f3100    O..1    MOV      r1,#0x20000
        0x200043f2:    2215        ."      MOVS     r2,#0x15
        0x200043f4:    f000fa38    ..8.    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pid ; 0x20004868
        0x200043f8:    9803        ..      LDR      r0,[sp,#0xc]
        0x200043fa:    f04f7180    O..q    MOV      r1,#0x1000000
        0x200043fe:    9101        ..      STR      r1,[sp,#4]
        0x20004400:    2201        ."      MOVS     r2,#1
        0x20004402:    9202        ..      STR      r2,[sp,#8]
        0x20004404:    f000fa58    ..X.    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_input_output ; 0x200048b8
        0x20004408:    9901        ..      LDR      r1,[sp,#4]
        0x2000440a:    9a02        ..      LDR      r2,[sp,#8]
        0x2000440c:    9803        ..      LDR      r0,[sp,#0xc]
        0x2000440e:    f000fa58    ..X.    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_output_level ; 0x200048c2
        0x20004412:    202e        .       MOVS     r0,#0x2e
        0x20004414:    f000fa23    ..#.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x2000485e
        0x20004418:    2007        .       MOVS     r0,#7
        0x2000441a:    9004        ..      STR      r0,[sp,#0x10]
        0x2000441c:    f8bd0014    ....    LDRH     r0,[sp,#0x14]
        0x20004420:    f0400001    @...    ORR      r0,r0,#1
        0x20004424:    f8ad0014    ....    STRH     r0,[sp,#0x14]
        0x20004428:    f8bd0014    ....    LDRH     r0,[sp,#0x14]
        0x2000442c:    f0200006     ...    BIC      r0,r0,#6
        0x20004430:    f8ad0014    ....    STRH     r0,[sp,#0x14]
        0x20004434:    f8bd0014    ....    LDRH     r0,[sp,#0x14]
        0x20004438:    f0400008    @...    ORR      r0,r0,#8
        0x2000443c:    f8ad0014    ....    STRH     r0,[sp,#0x14]
        0x20004440:    f8bd0014    ....    LDRH     r0,[sp,#0x14]
        0x20004444:    f440607f    @..`    ORR      r0,r0,#0xff0
        0x20004448:    f8ad0014    ....    STRH     r0,[sp,#0x14]
        0x2000444c:    f8bd0014    ....    LDRH     r0,[sp,#0x14]
        0x20004450:    f4205040     .@P    BIC      r0,r0,#0x3000
        0x20004454:    f8ad0014    ....    STRH     r0,[sp,#0x14]
        0x20004458:    f8bd0014    ....    LDRH     r0,[sp,#0x14]
        0x2000445c:    f36f309f    o..0    BFC      r0,#14,#18
        0x20004460:    f8ad0014    ....    STRH     r0,[sp,#0x14]
        0x20004464:    f89d0016    ....    LDRB     r0,[sp,#0x16]
        0x20004468:    f00000fe    ....    AND      r0,r0,#0xfe
        0x2000446c:    f88d0016    ....    STRB     r0,[sp,#0x16]
        0x20004470:    f89d0016    ....    LDRB     r0,[sp,#0x16]
        0x20004474:    f0400004    @...    ORR      r0,r0,#4
        0x20004478:    f88d0016    ....    STRB     r0,[sp,#0x16]
        0x2000447c:    f89d0016    ....    LDRB     r0,[sp,#0x16]
        0x20004480:    f0400002    @...    ORR      r0,r0,#2
        0x20004484:    f88d0016    ....    STRB     r0,[sp,#0x16]
        0x20004488:    f2410000    A...    MOVW     r0,#0x1000
        0x2000448c:    f2c60000    ....    MOVT     r0,#0x6000
        0x20004490:    a904        ..      ADD      r1,sp,#0x10
        0x20004492:    f000fa1b    ....    BL       $Ven$TT$L$$rom_hw_spi_init ; 0x200048cc
        0x20004496:    b006        ..      ADD      sp,sp,#0x18
        0x20004498:    bd80        ..      POP      {r7,pc}
        0x2000449a:    0000        ..      MOVS     r0,r0
    spi_example_master_receive_bytes
        0x2000449c:    b580        ..      PUSH     {r7,lr}
        0x2000449e:    b088        ..      SUB      sp,sp,#0x20
        0x200044a0:    9007        ..      STR      r0,[sp,#0x1c]
        0x200044a2:    f8ad101a    ....    STRH     r1,[sp,#0x1a]
        0x200044a6:    9205        ..      STR      r2,[sp,#0x14]
        0x200044a8:    2200        ."      MOVS     r2,#0
        0x200044aa:    9201        ..      STR      r2,[sp,#4]
        0x200044ac:    f88d2013    ...     STRB     r2,[sp,#0x13]
        0x200044b0:    f24b0000    K...    MOVW     r0,#0xb000
        0x200044b4:    f2c60004    ....    MOVT     r0,#0x6004
        0x200044b8:    9003        ..      STR      r0,[sp,#0xc]
        0x200044ba:    f04f7180    O..q    MOV      r1,#0x1000000
        0x200044be:    9102        ..      STR      r1,[sp,#8]
        0x200044c0:    f000f9ff    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_output_level ; 0x200048c2
        0x200044c4:    9901        ..      LDR      r1,[sp,#4]
        0x200044c6:    9a07        ..      LDR      r2,[sp,#0x1c]
        0x200044c8:    f8bd301a    ...0    LDRH     r3,[sp,#0x1a]
        0x200044cc:    f2410000    A...    MOVW     r0,#0x1000
        0x200044d0:    f2c60000    ....    MOVT     r0,#0x6000
        0x200044d4:    f7fffdf6    ....    BL       patch_hw_spi_transmit_bytes ; 0x200040c4
        0x200044d8:    9902        ..      LDR      r1,[sp,#8]
        0x200044da:    4602        .F      MOV      r2,r0
        0x200044dc:    9803        ..      LDR      r0,[sp,#0xc]
        0x200044de:    f88d2013    ...     STRB     r2,[sp,#0x13]
        0x200044e2:    2201        ."      MOVS     r2,#1
        0x200044e4:    f000f9ed    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_output_level ; 0x200048c2
        0x200044e8:    f89d0013    ....    LDRB     r0,[sp,#0x13]
        0x200044ec:    b008        ..      ADD      sp,sp,#0x20
        0x200044ee:    bd80        ..      POP      {r7,pc}
    spi_example_master_transmit_bytes
        0x200044f0:    b580        ..      PUSH     {r7,lr}
        0x200044f2:    b088        ..      SUB      sp,sp,#0x20
        0x200044f4:    9007        ..      STR      r0,[sp,#0x1c]
        0x200044f6:    f8ad101a    ....    STRH     r1,[sp,#0x1a]
        0x200044fa:    9205        ..      STR      r2,[sp,#0x14]
        0x200044fc:    2200        ."      MOVS     r2,#0
        0x200044fe:    9201        ..      STR      r2,[sp,#4]
        0x20004500:    f88d2013    ...     STRB     r2,[sp,#0x13]
        0x20004504:    f24b0000    K...    MOVW     r0,#0xb000
        0x20004508:    f2c60004    ....    MOVT     r0,#0x6004
        0x2000450c:    9003        ..      STR      r0,[sp,#0xc]
        0x2000450e:    f04f7180    O..q    MOV      r1,#0x1000000
        0x20004512:    9102        ..      STR      r1,[sp,#8]
        0x20004514:    f000f9d5    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_output_level ; 0x200048c2
        0x20004518:    9a01        ..      LDR      r2,[sp,#4]
        0x2000451a:    9907        ..      LDR      r1,[sp,#0x1c]
        0x2000451c:    f8bd301a    ...0    LDRH     r3,[sp,#0x1a]
        0x20004520:    f2410000    A...    MOVW     r0,#0x1000
        0x20004524:    f2c60000    ....    MOVT     r0,#0x6000
        0x20004528:    f7fffdcc    ....    BL       patch_hw_spi_transmit_bytes ; 0x200040c4
        0x2000452c:    9902        ..      LDR      r1,[sp,#8]
        0x2000452e:    4602        .F      MOV      r2,r0
        0x20004530:    9803        ..      LDR      r0,[sp,#0xc]
        0x20004532:    f88d2013    ...     STRB     r2,[sp,#0x13]
        0x20004536:    2201        ."      MOVS     r2,#1
        0x20004538:    f000f9c3    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_output_level ; 0x200048c2
        0x2000453c:    f89d0013    ....    LDRB     r0,[sp,#0x13]
        0x20004540:    b008        ..      ADD      sp,sp,#0x20
        0x20004542:    bd80        ..      POP      {r7,pc}
    spi_example_master_transmit_receive
        0x20004544:    b580        ..      PUSH     {r7,lr}
        0x20004546:    b088        ..      SUB      sp,sp,#0x20
        0x20004548:    9007        ..      STR      r0,[sp,#0x1c]
        0x2000454a:    9106        ..      STR      r1,[sp,#0x18]
        0x2000454c:    f8ad2016    ...     STRH     r2,[sp,#0x16]
        0x20004550:    9304        ..      STR      r3,[sp,#0x10]
        0x20004552:    2200        ."      MOVS     r2,#0
        0x20004554:    f88d200f    ...     STRB     r2,[sp,#0xf]
        0x20004558:    f24b0000    K...    MOVW     r0,#0xb000
        0x2000455c:    f2c60004    ....    MOVT     r0,#0x6004
        0x20004560:    9002        ..      STR      r0,[sp,#8]
        0x20004562:    f04f7180    O..q    MOV      r1,#0x1000000
        0x20004566:    9101        ..      STR      r1,[sp,#4]
        0x20004568:    f000f9ab    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_output_level ; 0x200048c2
        0x2000456c:    9907        ..      LDR      r1,[sp,#0x1c]
        0x2000456e:    9a06        ..      LDR      r2,[sp,#0x18]
        0x20004570:    f8bd3016    ...0    LDRH     r3,[sp,#0x16]
        0x20004574:    f2410000    A...    MOVW     r0,#0x1000
        0x20004578:    f2c60000    ....    MOVT     r0,#0x6000
        0x2000457c:    f7fffda2    ....    BL       patch_hw_spi_transmit_bytes ; 0x200040c4
        0x20004580:    9901        ..      LDR      r1,[sp,#4]
        0x20004582:    4602        .F      MOV      r2,r0
        0x20004584:    9802        ..      LDR      r0,[sp,#8]
        0x20004586:    f88d200f    ...     STRB     r2,[sp,#0xf]
        0x2000458a:    2201        ."      MOVS     r2,#1
        0x2000458c:    f000f999    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_output_level ; 0x200048c2
        0x20004590:    f89d000f    ....    LDRB     r0,[sp,#0xf]
        0x20004594:    b008        ..      ADD      sp,sp,#0x20
        0x20004596:    bd80        ..      POP      {r7,pc}
    spi_example_slave_dma_init
        0x20004598:    b580        ..      PUSH     {r7,lr}
        0x2000459a:    b08c        ..      SUB      sp,sp,#0x30
        0x2000459c:    2001        .       MOVS     r0,#1
        0x2000459e:    9002        ..      STR      r0,[sp,#8]
        0x200045a0:    2124        $!      MOVS     r1,#0x24
        0x200045a2:    9101        ..      STR      r1,[sp,#4]
        0x200045a4:    f000f997    ....    BL       $Ven$TT$L$$rom_hw_sys_ctrl_enable_peri_int ; 0x200048d6
        0x200045a8:    9801        ..      LDR      r0,[sp,#4]
        0x200045aa:    f7fffbad    ....    BL       __NVIC_ClearPendingIRQ ; 0x20003d08
        0x200045ae:    9801        ..      LDR      r0,[sp,#4]
        0x200045b0:    2102        .!      MOVS     r1,#2
        0x200045b2:    f7fffbd9    ....    BL       __NVIC_SetPriority ; 0x20003d68
        0x200045b6:    9801        ..      LDR      r0,[sp,#4]
        0x200045b8:    f7fffbbe    ....    BL       __NVIC_EnableIRQ ; 0x20003d38
        0x200045bc:    2017        .       MOVS     r0,#0x17
        0x200045be:    f000f94e    ..N.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x2000485e
        0x200045c2:    f2420004    B...    MOV      r0,#0x2004
        0x200045c6:    f2c60000    ....    MOVT     r0,#0x6000
        0x200045ca:    9007        ..      STR      r0,[sp,#0x1c]
        0x200045cc:    f24b0030    K.0.    MOV      r0,#0xb030
        0x200045d0:    f2c20000    ....    MOVT     r0,#0x2000
        0x200045d4:    9008        ..      STR      r0,[sp,#0x20]
        0x200045d6:    f44f707a    O.zp    MOV      r0,#0x3e8
        0x200045da:    9009        ..      STR      r0,[sp,#0x24]
        0x200045dc:    200f        .       MOVS     r0,#0xf
        0x200045de:    f88d002c    ..,.    STRB     r0,[sp,#0x2c]
        0x200045e2:    2028        (       MOVS     r0,#0x28
        0x200045e4:    f2c00049    ..I.    MOVT     r0,#0x49
        0x200045e8:    900a        ..      STR      r0,[sp,#0x28]
        0x200045ea:    f2481080    H...    MOV      r0,#0x8180
        0x200045ee:    f2c50000    ....    MOVT     r0,#0x5000
        0x200045f2:    9003        ..      STR      r0,[sp,#0xc]
        0x200045f4:    a907        ..      ADD      r1,sp,#0x1c
        0x200045f6:    9104        ..      STR      r1,[sp,#0x10]
        0x200045f8:    f000f972    ..r.    BL       $Ven$TT$L$$rom_hw_dma_init ; 0x200048e0
        0x200045fc:    9803        ..      LDR      r0,[sp,#0xc]
        0x200045fe:    2106        .!      MOVS     r1,#6
        0x20004600:    9105        ..      STR      r1,[sp,#0x14]
        0x20004602:    f000f972    ..r.    BL       $Ven$TT$L$$rom_hw_dma_set_interrupt_channel ; 0x200048ea
        0x20004606:    9902        ..      LDR      r1,[sp,#8]
        0x20004608:    9803        ..      LDR      r0,[sp,#0xc]
        0x2000460a:    f000f973    ..s.    BL       $Ven$TT$L$$rom_hw_dma_enable_interrupt ; 0x200048f4
        0x2000460e:    9803        ..      LDR      r0,[sp,#0xc]
        0x20004610:    f000f902    ....    BL       $Ven$TT$L$$rom_hw_dma_enable ; 0x20004818
        0x20004614:    9904        ..      LDR      r1,[sp,#0x10]
        0x20004616:    f24b0058    K.X.    MOV      r0,#0xb058
        0x2000461a:    f2c20000    ....    MOVT     r0,#0x2000
        0x2000461e:    9007        ..      STR      r0,[sp,#0x1c]
        0x20004620:    f2420000    B...    MOVW     r0,#0x2000
        0x20004624:    f2c60000    ....    MOVT     r0,#0x6000
        0x20004628:    9008        ..      STR      r0,[sp,#0x20]
        0x2000462a:    2028        (       MOVS     r0,#0x28
        0x2000462c:    f2c02005    ...     MOVT     r0,#0x205
        0x20004630:    900a        ..      STR      r0,[sp,#0x28]
        0x20004632:    200e        .       MOVS     r0,#0xe
        0x20004634:    f88d002c    ..,.    STRB     r0,[sp,#0x2c]
        0x20004638:    f24810c0    H...    MOV      r0,#0x81c0
        0x2000463c:    f2c50000    ....    MOVT     r0,#0x5000
        0x20004640:    9006        ..      STR      r0,[sp,#0x18]
        0x20004642:    f000f94d    ..M.    BL       $Ven$TT$L$$rom_hw_dma_init ; 0x200048e0
        0x20004646:    9905        ..      LDR      r1,[sp,#0x14]
        0x20004648:    9806        ..      LDR      r0,[sp,#0x18]
        0x2000464a:    f000f94e    ..N.    BL       $Ven$TT$L$$rom_hw_dma_set_interrupt_channel ; 0x200048ea
        0x2000464e:    9806        ..      LDR      r0,[sp,#0x18]
        0x20004650:    2120         !      MOVS     r1,#0x20
        0x20004652:    f000f94f    ..O.    BL       $Ven$TT$L$$rom_hw_dma_enable_interrupt ; 0x200048f4
        0x20004656:    9806        ..      LDR      r0,[sp,#0x18]
        0x20004658:    f000f8de    ....    BL       $Ven$TT$L$$rom_hw_dma_enable ; 0x20004818
        0x2000465c:    9806        ..      LDR      r0,[sp,#0x18]
        0x2000465e:    f000f94e    ..N.    BL       $Ven$TT$L$$rom_hw_dma_interval_tx_mode_enable ; 0x200048fe
        0x20004662:    9806        ..      LDR      r0,[sp,#0x18]
        0x20004664:    210a        .!      MOVS     r1,#0xa
        0x20004666:    f000f8eb    ....    BL       $Ven$TT$L$$rom_hw_dma_set_interval_tx_index ; 0x20004840
        0x2000466a:    b00c        ..      ADD      sp,sp,#0x30
        0x2000466c:    bd80        ..      POP      {r7,pc}
        0x2000466e:    0000        ..      MOVS     r0,r0
    spi_example_slave_init
        0x20004670:    b580        ..      PUSH     {r7,lr}
        0x20004672:    b086        ..      SUB      sp,sp,#0x18
        0x20004674:    f24b0080    K...    MOV      r0,#0xb080
        0x20004678:    f2c60004    ....    MOVT     r0,#0x6004
        0x2000467c:    9000        ..      STR      r0,[sp,#0]
        0x2000467e:    2180        .!      MOVS     r1,#0x80
        0x20004680:    2210        ."      MOVS     r2,#0x10
        0x20004682:    f000f8f1    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pid ; 0x20004868
        0x20004686:    9800        ..      LDR      r0,[sp,#0]
        0x20004688:    f44f6180    O..a    MOV      r1,#0x400
        0x2000468c:    2213        ."      MOVS     r2,#0x13
        0x2000468e:    f000f8eb    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pid ; 0x20004868
        0x20004692:    9800        ..      LDR      r0,[sp,#0]
        0x20004694:    2101        .!      MOVS     r1,#1
        0x20004696:    9102        ..      STR      r1,[sp,#8]
        0x20004698:    2211        ."      MOVS     r2,#0x11
        0x2000469a:    f000f8e5    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pid ; 0x20004868
        0x2000469e:    9800        ..      LDR      r0,[sp,#0]
        0x200046a0:    f44f7100    O..q    MOV      r1,#0x200
        0x200046a4:    2212        ."      MOVS     r2,#0x12
        0x200046a6:    f000f8df    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pid ; 0x20004868
        0x200046aa:    202f        /       MOVS     r0,#0x2f
        0x200046ac:    f000f8d7    ....    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x2000485e
        0x200046b0:    2007        .       MOVS     r0,#7
        0x200046b2:    9004        ..      STR      r0,[sp,#0x10]
        0x200046b4:    f8bd0014    ....    LDRH     r0,[sp,#0x14]
        0x200046b8:    f0400001    @...    ORR      r0,r0,#1
        0x200046bc:    f8ad0014    ....    STRH     r0,[sp,#0x14]
        0x200046c0:    f8bd0014    ....    LDRH     r0,[sp,#0x14]
        0x200046c4:    f0200006     ...    BIC      r0,r0,#6
        0x200046c8:    f8ad0014    ....    STRH     r0,[sp,#0x14]
        0x200046cc:    f8bd0014    ....    LDRH     r0,[sp,#0x14]
        0x200046d0:    f0200008     ...    BIC      r0,r0,#8
        0x200046d4:    f8ad0014    ....    STRH     r0,[sp,#0x14]
        0x200046d8:    f8bd0014    ....    LDRH     r0,[sp,#0x14]
        0x200046dc:    f440607f    @..`    ORR      r0,r0,#0xff0
        0x200046e0:    f8ad0014    ....    STRH     r0,[sp,#0x14]
        0x200046e4:    f8bd0014    ....    LDRH     r0,[sp,#0x14]
        0x200046e8:    f4205040     .@P    BIC      r0,r0,#0x3000
        0x200046ec:    f8ad0014    ....    STRH     r0,[sp,#0x14]
        0x200046f0:    f8bd0014    ....    LDRH     r0,[sp,#0x14]
        0x200046f4:    f36f309f    o..0    BFC      r0,#14,#18
        0x200046f8:    f8ad0014    ....    STRH     r0,[sp,#0x14]
        0x200046fc:    f89d0016    ....    LDRB     r0,[sp,#0x16]
        0x20004700:    f00000fe    ....    AND      r0,r0,#0xfe
        0x20004704:    f88d0016    ....    STRB     r0,[sp,#0x16]
        0x20004708:    f89d0016    ....    LDRB     r0,[sp,#0x16]
        0x2000470c:    f0400004    @...    ORR      r0,r0,#4
        0x20004710:    f88d0016    ....    STRB     r0,[sp,#0x16]
        0x20004714:    f89d0016    ....    LDRB     r0,[sp,#0x16]
        0x20004718:    f0400002    @...    ORR      r0,r0,#2
        0x2000471c:    f88d0016    ....    STRB     r0,[sp,#0x16]
        0x20004720:    f2420000    B...    MOVW     r0,#0x2000
        0x20004724:    f2c60000    ....    MOVT     r0,#0x6000
        0x20004728:    9003        ..      STR      r0,[sp,#0xc]
        0x2000472a:    a904        ..      ADD      r1,sp,#0x10
        0x2000472c:    f000f8ce    ....    BL       $Ven$TT$L$$rom_hw_spi_init ; 0x200048cc
        0x20004730:    9802        ..      LDR      r0,[sp,#8]
        0x20004732:    210d        .!      MOVS     r1,#0xd
        0x20004734:    9101        ..      STR      r1,[sp,#4]
        0x20004736:    f000f8ce    ....    BL       $Ven$TT$L$$rom_hw_sys_ctrl_enable_peri_int ; 0x200048d6
        0x2000473a:    9801        ..      LDR      r0,[sp,#4]
        0x2000473c:    f7fffae4    ....    BL       __NVIC_ClearPendingIRQ ; 0x20003d08
        0x20004740:    9801        ..      LDR      r0,[sp,#4]
        0x20004742:    2102        .!      MOVS     r1,#2
        0x20004744:    f7fffb10    ....    BL       __NVIC_SetPriority ; 0x20003d68
        0x20004748:    9801        ..      LDR      r0,[sp,#4]
        0x2000474a:    f7fffaf5    ....    BL       __NVIC_EnableIRQ ; 0x20003d38
        0x2000474e:    9803        ..      LDR      r0,[sp,#0xc]
        0x20004750:    f44f5180    O..Q    MOV      r1,#0x1000
        0x20004754:    f000f8d8    ....    BL       $Ven$TT$L$$rom_hw_spi_enable_interrupt ; 0x20004908
        0x20004758:    9902        ..      LDR      r1,[sp,#8]
        0x2000475a:    9803        ..      LDR      r0,[sp,#0xc]
        0x2000475c:    f000f8d9    ....    BL       $Ven$TT$L$$rom_hw_spi_set_rxfifo_thld ; 0x20004912
        0x20004760:    f7ffff1a    ....    BL       spi_example_slave_dma_init ; 0x20004598
        0x20004764:    b006        ..      ADD      sp,sp,#0x18
        0x20004766:    bd80        ..      POP      {r7,pc}
    system_clock_init
        0x20004768:    b580        ..      PUSH     {r7,lr}
        0x2000476a:    b082        ..      SUB      sp,sp,#8
        0x2000476c:    f88d0007    ....    STRB     r0,[sp,#7]
        0x20004770:    2000        .       MOVS     r0,#0
        0x20004772:    f88d0006    ....    STRB     r0,[sp,#6]
        0x20004776:    200f        .       MOVS     r0,#0xf
        0x20004778:    f10d0106    ....    ADD      r1,sp,#6
        0x2000477c:    2201        ."      MOVS     r2,#1
        0x2000477e:    f000f8cd    ....    BL       $Ven$TT$L$$rom_hw_efuse_read_bytes ; 0x2000491c
        0x20004782:    f89d0006    ....    LDRB     r0,[sp,#6]
        0x20004786:    b920         .      CBNZ     r0,0x20004792 ; system_clock_init + 42
        0x20004788:    e7ff        ..      B        0x2000478a ; system_clock_init + 34
        0x2000478a:    2056        V       MOVS     r0,#0x56
        0x2000478c:    f000f8cb    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_rc_hclk_tune ; 0x20004926
        0x20004790:    e7ff        ..      B        0x20004792 ; system_clock_init + 42
        0x20004792:    2010        .       MOVS     r0,#0x10
        0x20004794:    f10d0106    ....    ADD      r1,sp,#6
        0x20004798:    2201        ."      MOVS     r2,#1
        0x2000479a:    f000f8bf    ....    BL       $Ven$TT$L$$rom_hw_efuse_read_bytes ; 0x2000491c
        0x2000479e:    f89d0006    ....    LDRB     r0,[sp,#6]
        0x200047a2:    b128        (.      CBZ      r0,0x200047b0 ; system_clock_init + 72
        0x200047a4:    e7ff        ..      B        0x200047a6 ; system_clock_init + 62
        0x200047a6:    f89d0006    ....    LDRB     r0,[sp,#6]
        0x200047aa:    f000f8c1    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_rc_lclk_tune ; 0x20004930
        0x200047ae:    e003        ..      B        0x200047b8 ; system_clock_init + 80
        0x200047b0:    20a9        .       MOVS     r0,#0xa9
        0x200047b2:    f000f8bd    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_rc_lclk_tune ; 0x20004930
        0x200047b6:    e7ff        ..      B        0x200047b8 ; system_clock_init + 80
        0x200047b8:    2000        .       MOVS     r0,#0
        0x200047ba:    f000f8be    ....    BL       $Ven$TT$L$$rom_hw_pmu_sel_dcxo_hclk_pwr ; 0x2000493a
        0x200047be:    2103        .!      MOVS     r1,#3
        0x200047c0:    2264        d"      MOVS     r2,#0x64
        0x200047c2:    4608        .F      MOV      r0,r1
        0x200047c4:    f000f8be    ....    BL       $Ven$TT$L$$rom_hal_pmu_cfg_dcxo_hclk_param ; 0x20004944
        0x200047c8:    f89d0007    ....    LDRB     r0,[sp,#7]
        0x200047cc:    f64011c4    @...    MOV      r1,#0x9c4
        0x200047d0:    f000f8bd    ....    BL       $Ven$TT$L$$rom_hal_pmu_set_sys_clk_src ; 0x2000494e
        0x200047d4:    b002        ..      ADD      sp,sp,#8
        0x200047d6:    bd80        ..      POP      {r7,pc}
    system_power_init
        0x200047d8:    b580        ..      PUSH     {r7,lr}
        0x200047da:    b082        ..      SUB      sp,sp,#8
        0x200047dc:    2002        .       MOVS     r0,#2
        0x200047de:    f000f8bb    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_ldo_act_voltage ; 0x20004958
        0x200047e2:    2000        .       MOVS     r0,#0
        0x200047e4:    9001        ..      STR      r0,[sp,#4]
        0x200047e6:    f000f8bc    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_ldo_dig_voltage ; 0x20004962
        0x200047ea:    9801        ..      LDR      r0,[sp,#4]
        0x200047ec:    f000f8be    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_ldo_ret_sleep_voltage ; 0x2000496c
        0x200047f0:    9801        ..      LDR      r0,[sp,#4]
        0x200047f2:    f000f8c0    ....    BL       $Ven$TT$L$$rom_hal_pmu_sel_power_act_out_mode ; 0x20004976
        0x200047f6:    b002        ..      ADD      sp,sp,#8
        0x200047f8:    bd80        ..      POP      {r7,pc}
    $t
    $Ven$TT$L$$rom_hw_dma_get_interrupt_flag
        0x200047fa:    f2482c1d    H..,    MOV      r12,#0x821d
        0x200047fe:    f2c00c00    ....    MOVT     r12,#0
        0x20004802:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_dma_disable
        0x20004804:    f2480cad    H...    MOV      r12,#0x80ad
        0x20004808:    f2c00c00    ....    MOVT     r12,#0
        0x2000480c:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_dma_get_trx_pointer
        0x2000480e:    f2482cc5    H..,    MOV      r12,#0x82c5
        0x20004812:    f2c00c00    ....    MOVT     r12,#0
        0x20004816:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_dma_enable
        0x20004818:    f2481c15    H...    MOV      r12,#0x8115
        0x2000481c:    f2c00c00    ....    MOVT     r12,#0
        0x20004820:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_dma_clear_interrupt_flag
        0x20004822:    f2480c59    H.Y.    MOV      r12,#0x8059
        0x20004826:    f2c00c00    ....    MOVT     r12,#0
        0x2000482a:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_spi_get_interrupt_flag
        0x2000482c:    f24b6c55    K.Ul    MOV      r12,#0xb655
        0x20004830:    f2c00c00    ....    MOVT     r12,#0
        0x20004834:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_dma_get_circ_count
        0x20004836:    f2481c7d    H.}.    MOV      r12,#0x817d
        0x2000483a:    f2c00c00    ....    MOVT     r12,#0
        0x2000483e:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_dma_set_interval_tx_index
        0x20004840:    f2485c19    H..\    MOV      r12,#0x8519
        0x20004844:    f2c00c00    ....    MOVT     r12,#0
        0x20004848:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_spi_clear_interrupt_flag
        0x2000484a:    f24b4cdd    K..L    MOV      r12,#0xb4dd
        0x2000484e:    f2c00c00    ....    MOVT     r12,#0
        0x20004852:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_uart_send_byte
        0x20004854:    f64d7c7d    M.}|    MOV      r12,#0xdf7d
        0x20004858:    f2c00c00    ....    MOVT     r12,#0
        0x2000485c:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_crg_enable_clk_gate
        0x2000485e:    f6471c7d    G.}.    MOV      r12,#0x797d
        0x20004862:    f2c00c00    ....    MOVT     r12,#0
        0x20004866:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_gpio_set_pin_pid
        0x20004868:    f6490c21    I.!.    MOV      r12,#0x9821
        0x2000486c:    f2c00c00    ....    MOVT     r12,#0
        0x20004870:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode
        0x20004872:    f6490c9d    I...    MOV      r12,#0x989d
        0x20004876:    f2c00c00    ....    MOVT     r12,#0
        0x2000487a:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_uart_init
        0x2000487c:    f64d6c65    M.el    MOV      r12,#0xde65
        0x20004880:    f2c00c00    ....    MOVT     r12,#0
        0x20004884:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_uart_transmit
        0x20004886:    f24e1ccd    N...    MOV      r12,#0xe1cd
        0x2000488a:    f2c00c00    ....    MOVT     r12,#0
        0x2000488e:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_wdt_disable
        0x20004890:    f64f0c31    O.1.    MOV      r12,#0xf831
        0x20004894:    f2c00c00    ....    MOVT     r12,#0
        0x20004898:    4760        `G      BX       r12
    $Ven$TT$L$$rom_delay_us
        0x2000489a:    f2447c81    D..|    MOV      r12,#0x4781
        0x2000489e:    f2c00c00    ....    MOVT     r12,#0
        0x200048a2:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_sys_ctrl_peri_int_ctrl
        0x200048a4:    f24c3c11    L..<    MOV      r12,#0xc311
        0x200048a8:    f2c00c00    ....    MOVT     r12,#0
        0x200048ac:    4760        `G      BX       r12
    $Ven$TT$L$$rom_delay_ms
        0x200048ae:    f2447c71    D.q|    MOV      r12,#0x4771
        0x200048b2:    f2c00c00    ....    MOVT     r12,#0
        0x200048b6:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_gpio_set_pin_input_output
        0x200048b8:    f2496cf1    I..l    MOV      r12,#0x96f1
        0x200048bc:    f2c00c00    ....    MOVT     r12,#0
        0x200048c0:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_gpio_set_pin_output_level
        0x200048c2:    f2497cf9    I..|    MOV      r12,#0x97f9
        0x200048c6:    f2c00c00    ....    MOVT     r12,#0
        0x200048ca:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_spi_init
        0x200048cc:    f24b6ce5    K..l    MOV      r12,#0xb6e5
        0x200048d0:    f2c00c00    ....    MOVT     r12,#0
        0x200048d4:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_sys_ctrl_enable_peri_int
        0x200048d6:    f24c1cc5    L...    MOV      r12,#0xc1c5
        0x200048da:    f2c00c00    ....    MOVT     r12,#0
        0x200048de:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_dma_init
        0x200048e0:    f2483c65    H.e<    MOV      r12,#0x8365
        0x200048e4:    f2c00c00    ....    MOVT     r12,#0
        0x200048e8:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_dma_set_interrupt_channel
        0x200048ea:    f2484cf1    H..L    MOV      r12,#0x84f1
        0x200048ee:    f2c00c00    ....    MOVT     r12,#0
        0x200048f2:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_dma_enable_interrupt
        0x200048f4:    f2481c35    H.5.    MOV      r12,#0x8135
        0x200048f8:    f2c00c00    ....    MOVT     r12,#0
        0x200048fc:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_dma_interval_tx_mode_enable
        0x200048fe:    f2484c7d    H.}L    MOV      r12,#0x847d
        0x20004902:    f2c00c00    ....    MOVT     r12,#0
        0x20004906:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_spi_enable_interrupt
        0x20004908:    f24b6c21    K.!l    MOV      r12,#0xb621
        0x2000490c:    f2c00c00    ....    MOVT     r12,#0
        0x20004910:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_spi_set_rxfifo_thld
        0x20004912:    f64b1c09    K...    MOV      r12,#0xb909
        0x20004916:    f2c00c00    ....    MOVT     r12,#0
        0x2000491a:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_efuse_read_bytes
        0x2000491c:    f2487c0d    H..|    MOV      r12,#0x870d
        0x20004920:    f2c00c00    ....    MOVT     r12,#0
        0x20004924:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_rc_hclk_tune
        0x20004926:    f64a6c59    J.Yl    MOV      r12,#0xae59
        0x2000492a:    f2c00c00    ....    MOVT     r12,#0
        0x2000492e:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_rc_lclk_tune
        0x20004930:    f64a6c69    J.il    MOV      r12,#0xae69
        0x20004934:    f2c00c00    ....    MOVT     r12,#0
        0x20004938:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_sel_dcxo_hclk_pwr
        0x2000493a:    f64a3cb1    J..<    MOV      r12,#0xabb1
        0x2000493e:    f2c00c00    ....    MOVT     r12,#0
        0x20004942:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hal_pmu_cfg_dcxo_hclk_param
        0x20004944:    f6451c65    E.e.    MOV      r12,#0x5965
        0x20004948:    f2c00c00    ....    MOVT     r12,#0
        0x2000494c:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hal_pmu_set_sys_clk_src
        0x2000494e:    f6455c29    E.)\    MOV      r12,#0x5d29
        0x20004952:    f2c00c00    ....    MOVT     r12,#0
        0x20004956:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_ldo_act_voltage
        0x20004958:    f64a5c7d    J.}\    MOV      r12,#0xad7d
        0x2000495c:    f2c00c00    ....    MOVT     r12,#0
        0x20004960:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_ldo_dig_voltage
        0x20004962:    f64a5ca9    J..\    MOV      r12,#0xada9
        0x20004966:    f2c00c00    ....    MOVT     r12,#0
        0x2000496a:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_ldo_ret_sleep_voltage
        0x2000496c:    f64a5cfd    J..\    MOV      r12,#0xadfd
        0x20004970:    f2c00c00    ....    MOVT     r12,#0
        0x20004974:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hal_pmu_sel_power_act_out_mode
        0x20004976:    f6454c21    E.!L    MOV      r12,#0x5c21
        0x2000497a:    f2c00c00    ....    MOVT     r12,#0
        0x2000497e:    4760        `G      BX       r12
    i.__0printf
    __0printf
    __1printf
    __2printf
    __c89printf
    printf
        0x20004980:    b40f        ..      PUSH     {r0-r3}
        0x20004982:    4b05        .K      LDR      r3,[pc,#20] ; [0x20004998] = 0x20004021
        0x20004984:    b510        ..      PUSH     {r4,lr}
        0x20004986:    a903        ..      ADD      r1,sp,#0xc
        0x20004988:    4a04        .J      LDR      r2,[pc,#16] ; [0x2000499c] = 0x2000b000
        0x2000498a:    9802        ..      LDR      r0,[sp,#8]
        0x2000498c:    f000f8ca    ....    BL       _printf_core ; 0x20004b24
        0x20004990:    bc10        ..      POP      {r4}
        0x20004992:    f85dfb14    ]...    LDR      pc,[sp],#0x14
    $d
        0x20004996:    0000        ..      DCW    0
        0x20004998:    20004021    !@.     DCD    536887329
        0x2000499c:    2000b000    ...     DCD    536915968
    $t
    i._fp_digits
    _fp_digits
        0x200049a0:    e92d5fff    -.._    PUSH     {r0-r12,lr}
        0x200049a4:    b082        ..      SUB      sp,sp,#8
        0x200049a6:    2100        .!      MOVS     r1,#0
        0x200049a8:    e9dd3004    ...0    LDRD     r3,r0,[sp,#0x10]
        0x200049ac:    0d02        ..      LSRS     r2,r0,#20
        0x200049ae:    f8ddb040    ..@.    LDR      r11,[sp,#0x40]
        0x200049b2:    4303        .C      ORRS     r3,r3,r0
        0x200049b4:    d018        ..      BEQ      0x200049e8 ; _fp_digits + 72
        0x200049b6:    f6445010    D..P    MOV      r0,#0x4d10
        0x200049ba:    f2a232ff    ...2    SUB      r2,r2,#0x3ff
        0x200049be:    4342        BC      MULS     r2,r0,r2
        0x200049c0:    1415        ..      ASRS     r5,r2,#16
        0x200049c2:    9811        ..      LDR      r0,[sp,#0x44]
        0x200049c4:    2801        .(      CMP      r0,#1
        0x200049c6:    d01f        ..      BEQ      0x20004a08 ; _fp_digits + 104
        0x200049c8:    eba5000b    ....    SUB      r0,r5,r11
        0x200049cc:    1c40        @.      ADDS     r0,r0,#1
        0x200049ce:    ea5f0a00    _...    MOVS     r10,r0
        0x200049d2:    f04f0600    O...    MOV      r6,#0
        0x200049d6:    4f4e        NO      LDR      r7,[pc,#312] ; [0x20004b10] = 0x40140000
        0x200049d8:    f8df9138    ..8.    LDR      r9,[pc,#312] ; [0x20004b14] = 0x3ff00000
        0x200049dc:    46b0        .F      MOV      r8,r6
        0x200049de:    4650        PF      MOV      r0,r10
        0x200049e0:    d515        ..      BPL      0x20004a0e ; _fp_digits + 110
        0x200049e2:    f1ca0400    ....    RSB      r4,r10,#0
        0x200049e6:    e013        ..      B        0x20004a10 ; _fp_digits + 112
        0x200049e8:    9811        ..      LDR      r0,[sp,#0x44]
        0x200049ea:    2401        .$      MOVS     r4,#1
        0x200049ec:    a34a        J.      ADR      r3,{pc}+0x12c ; 0x20004b18
        0x200049ee:    2801        .(      CMP      r0,#1
        0x200049f0:    d101        ..      BNE      0x200049f6 ; _fp_digits + 86
        0x200049f2:    ea6f010b    o...    MVN      r1,r11
        0x200049f6:    9802        ..      LDR      r0,[sp,#8]
        0x200049f8:    9a11        ..      LDR      r2,[sp,#0x44]
        0x200049fa:    e9c03100    ...1    STRD     r3,r1,[r0,#0]
        0x200049fe:    e9c04202    ...B    STRD     r4,r2,[r0,#8]
        0x20004a02:    b006        ..      ADD      sp,sp,#0x18
        0x20004a04:    e8bd9ff0    ....    POP      {r4-r12,pc}
        0x20004a08:    f1cb0000    ....    RSB      r0,r11,#0
        0x20004a0c:    e7df        ..      B        0x200049ce ; _fp_digits + 46
        0x20004a0e:    4604        .F      MOV      r4,r0
        0x20004a10:    2100        .!      MOVS     r1,#0
        0x20004a12:    4a40        @J      LDR      r2,[pc,#256] ; [0x20004b14] = 0x3ff00000
        0x20004a14:    1849        I.      ADDS     r1,r1,r1
        0x20004a16:    eb425004    B..P    ADC      r0,r2,r4,LSL #20
        0x20004a1a:    e9cd1000    ....    STRD     r1,r0,[sp,#0]
        0x20004a1e:    e012        ..      B        0x20004a46 ; _fp_digits + 166
        0x20004a20:    07e0        ..      LSLS     r0,r4,#31
        0x20004a22:    d007        ..      BEQ      0x20004a34 ; _fp_digits + 148
        0x20004a24:    4632        2F      MOV      r2,r6
        0x20004a26:    463b        ;F      MOV      r3,r7
        0x20004a28:    4640        @F      MOV      r0,r8
        0x20004a2a:    4649        IF      MOV      r1,r9
        0x20004a2c:    f7fefcd6    ....    BL       __aeabi_dmul ; 0x200033dc
        0x20004a30:    4680        .F      MOV      r8,r0
        0x20004a32:    4689        .F      MOV      r9,r1
        0x20004a34:    4632        2F      MOV      r2,r6
        0x20004a36:    463b        ;F      MOV      r3,r7
        0x20004a38:    4610        .F      MOV      r0,r2
        0x20004a3a:    4619        .F      MOV      r1,r3
        0x20004a3c:    f7fefcce    ....    BL       __aeabi_dmul ; 0x200033dc
        0x20004a40:    4606        .F      MOV      r6,r0
        0x20004a42:    460f        .F      MOV      r7,r1
        0x20004a44:    1064        d.      ASRS     r4,r4,#1
        0x20004a46:    2c00        .,      CMP      r4,#0
        0x20004a48:    d1ea        ..      BNE      0x20004a20 ; _fp_digits + 128
        0x20004a4a:    e9dd0104    ....    LDRD     r0,r1,[sp,#0x10]
        0x20004a4e:    e9dd2300    ...#    LDRD     r2,r3,[sp,#0]
        0x20004a52:    f1ba0f00    ....    CMP      r10,#0
        0x20004a56:    da06        ..      BGE      0x20004a66 ; _fp_digits + 198
        0x20004a58:    f7fefcc0    ....    BL       __aeabi_dmul ; 0x200033dc
        0x20004a5c:    4642        BF      MOV      r2,r8
        0x20004a5e:    464b        KF      MOV      r3,r9
        0x20004a60:    f7fefcbc    ....    BL       __aeabi_dmul ; 0x200033dc
        0x20004a64:    e005        ..      B        0x20004a72 ; _fp_digits + 210
        0x20004a66:    f7fefd2b    ..+.    BL       __aeabi_ddiv ; 0x200034c0
        0x20004a6a:    4642        BF      MOV      r2,r8
        0x20004a6c:    464b        KF      MOV      r3,r9
        0x20004a6e:    f7fefd27    ..'.    BL       __aeabi_ddiv ; 0x200034c0
        0x20004a72:    4604        .F      MOV      r4,r0
        0x20004a74:    460e        .F      MOV      r6,r1
        0x20004a76:    2200        ."      MOVS     r2,#0
        0x20004a78:    4b28        (K      LDR      r3,[pc,#160] ; [0x20004b1c] = 0x43f00000
        0x20004a7a:    f7fefda9    ....    BL       __aeabi_cdrcmple ; 0x200035d0
        0x20004a7e:    d803        ..      BHI      0x20004a88 ; _fp_digits + 232
        0x20004a80:    f04f30ff    O..0    MOV      r0,#0xffffffff
        0x20004a84:    4601        .F      MOV      r1,r0
        0x20004a86:    e007        ..      B        0x20004a98 ; _fp_digits + 248
        0x20004a88:    2200        ."      MOVS     r2,#0
        0x20004a8a:    4b25        %K      LDR      r3,[pc,#148] ; [0x20004b20] = 0x3fe00000
        0x20004a8c:    4620         F      MOV      r0,r4
        0x20004a8e:    4631        1F      MOV      r1,r6
        0x20004a90:    f7fefbfd    ....    BL       __I$use$fp ; 0x2000328e
        0x20004a94:    f7fefd83    ....    BL       __aeabi_d2ulz ; 0x2000359e
        0x20004a98:    2410        .$      MOVS     r4,#0x10
        0x20004a9a:    e009        ..      B        0x20004ab0 ; _fp_digits + 272
        0x20004a9c:    2c00        .,      CMP      r4,#0
        0x20004a9e:    db0a        ..      BLT      0x20004ab6 ; _fp_digits + 278
        0x20004aa0:    220a        ."      MOVS     r2,#0xa
        0x20004aa2:    2300        .#      MOVS     r3,#0
        0x20004aa4:    f7fefbc2    ....    BL       __aeabi_uldivmod ; 0x2000322c
        0x20004aa8:    9b03        ..      LDR      r3,[sp,#0xc]
        0x20004aaa:    3230        02      ADDS     r2,r2,#0x30
        0x20004aac:    551a        .U      STRB     r2,[r3,r4]
        0x20004aae:    1e64        d.      SUBS     r4,r4,#1
        0x20004ab0:    ea500201    P...    ORRS     r2,r0,r1
        0x20004ab4:    d1f2        ..      BNE      0x20004a9c ; _fp_digits + 252
        0x20004ab6:    1c64        d.      ADDS     r4,r4,#1
        0x20004ab8:    9a03        ..      LDR      r2,[sp,#0xc]
        0x20004aba:    f1c40311    ....    RSB      r3,r4,#0x11
        0x20004abe:    4414        .D      ADD      r4,r4,r2
        0x20004ac0:    9a11        ..      LDR      r2,[sp,#0x44]
        0x20004ac2:    2a01        .*      CMP      r2,#1
        0x20004ac4:    d003        ..      BEQ      0x20004ace ; _fp_digits + 302
        0x20004ac6:    2201        ."      MOVS     r2,#1
        0x20004ac8:    4308        .C      ORRS     r0,r0,r1
        0x20004aca:    d10d        ..      BNE      0x20004ae8 ; _fp_digits + 328
        0x20004acc:    e00a        ..      B        0x20004ae4 ; _fp_digits + 324
        0x20004ace:    4308        .C      ORRS     r0,r0,r1
        0x20004ad0:    d004        ..      BEQ      0x20004adc ; _fp_digits + 316
        0x20004ad2:    2000        .       MOVS     r0,#0
        0x20004ad4:    f04f0b11    O...    MOV      r11,#0x11
        0x20004ad8:    9011        ..      STR      r0,[sp,#0x44]
        0x20004ada:    e772        r.      B        0x200049c2 ; _fp_digits + 34
        0x20004adc:    eba3050b    ....    SUB      r5,r3,r11
        0x20004ae0:    1e6d        m.      SUBS     r5,r5,#1
        0x20004ae2:    e00d        ..      B        0x20004b00 ; _fp_digits + 352
        0x20004ae4:    455b        [E      CMP      r3,r11
        0x20004ae6:    dd04        ..      BLE      0x20004af2 ; _fp_digits + 338
        0x20004ae8:    f04f0200    O...    MOV      r2,#0
        0x20004aec:    f1050501    ....    ADD      r5,r5,#1
        0x20004af0:    e004        ..      B        0x20004afc ; _fp_digits + 348
        0x20004af2:    da03        ..      BGE      0x20004afc ; _fp_digits + 348
        0x20004af4:    f04f0200    O...    MOV      r2,#0
        0x20004af8:    f1a50501    ....    SUB      r5,r5,#1
        0x20004afc:    2a00        .*      CMP      r2,#0
        0x20004afe:    d0ec        ..      BEQ      0x20004ada ; _fp_digits + 314
        0x20004b00:    9802        ..      LDR      r0,[sp,#8]
        0x20004b02:    9911        ..      LDR      r1,[sp,#0x44]
        0x20004b04:    e9c03102    ...1    STRD     r3,r1,[r0,#8]
        0x20004b08:    e9c04500    ...E    STRD     r4,r5,[r0,#0]
        0x20004b0c:    e779        y.      B        0x20004a02 ; _fp_digits + 98
    $d
        0x20004b0e:    0000        ..      DCW    0
        0x20004b10:    40140000    ...@    DCD    1075052544
        0x20004b14:    3ff00000    ...?    DCD    1072693248
        0x20004b18:    00000030    0...    DCD    48
        0x20004b1c:    43f00000    ...C    DCD    1139802112
        0x20004b20:    3fe00000    ...?    DCD    1071644672
    $t
    i._printf_core
    _printf_core
        0x20004b24:    e92d4fff    -..O    PUSH     {r0-r11,lr}
        0x20004b28:    b095        ..      SUB      sp,sp,#0x54
        0x20004b2a:    469b        .F      MOV      r11,r3
        0x20004b2c:    4689        .F      MOV      r9,r1
        0x20004b2e:    4606        .F      MOV      r6,r0
        0x20004b30:    2500        .%      MOVS     r5,#0
        0x20004b32:    e20f        ..      B        0x20004f54 ; _printf_core + 1072
        0x20004b34:    2825        %(      CMP      r0,#0x25
        0x20004b36:    d177        w.      BNE      0x20004c28 ; _printf_core + 260
        0x20004b38:    2400        .$      MOVS     r4,#0
        0x20004b3a:    4627        'F      MOV      r7,r4
        0x20004b3c:    4af8        .J      LDR      r2,[pc,#992] ; [0x20004f20] = 0x12809
        0x20004b3e:    2101        .!      MOVS     r1,#1
        0x20004b40:    9405        ..      STR      r4,[sp,#0x14]
        0x20004b42:    e000        ..      B        0x20004b46 ; _printf_core + 34
        0x20004b44:    4304        .C      ORRS     r4,r4,r0
        0x20004b46:    f8163f01    ...?    LDRB     r3,[r6,#1]!
        0x20004b4a:    3b20         ;      SUBS     r3,r3,#0x20
        0x20004b4c:    fa01f003    ....    LSL      r0,r1,r3
        0x20004b50:    4210        .B      TST      r0,r2
        0x20004b52:    d1f7        ..      BNE      0x20004b44 ; _printf_core + 32
        0x20004b54:    7830        0x      LDRB     r0,[r6,#0]
        0x20004b56:    282a        *(      CMP      r0,#0x2a
        0x20004b58:    d011        ..      BEQ      0x20004b7e ; _printf_core + 90
        0x20004b5a:    f06f032f    o./.    MVN      r3,#0x2f
        0x20004b5e:    7830        0x      LDRB     r0,[r6,#0]
        0x20004b60:    f1a00230    ..0.    SUB      r2,r0,#0x30
        0x20004b64:    2a09        .*      CMP      r2,#9
        0x20004b66:    d816        ..      BHI      0x20004b96 ; _printf_core + 114
        0x20004b68:    9a05        ..      LDR      r2,[sp,#0x14]
        0x20004b6a:    f0440402    D...    ORR      r4,r4,#2
        0x20004b6e:    eb020282    ....    ADD      r2,r2,r2,LSL #2
        0x20004b72:    eb030242    ..B.    ADD      r2,r3,r2,LSL #1
        0x20004b76:    4410        .D      ADD      r0,r0,r2
        0x20004b78:    1c76        v.      ADDS     r6,r6,#1
        0x20004b7a:    9005        ..      STR      r0,[sp,#0x14]
        0x20004b7c:    e7ef        ..      B        0x20004b5e ; _printf_core + 58
        0x20004b7e:    f8592b04    Y..+    LDR      r2,[r9],#4
        0x20004b82:    9205        ..      STR      r2,[sp,#0x14]
        0x20004b84:    2a00        .*      CMP      r2,#0
        0x20004b86:    da03        ..      BGE      0x20004b90 ; _printf_core + 108
        0x20004b88:    4250        PB      RSBS     r0,r2,#0
        0x20004b8a:    f4445400    D..T    ORR      r4,r4,#0x2000
        0x20004b8e:    9005        ..      STR      r0,[sp,#0x14]
        0x20004b90:    f0440402    D...    ORR      r4,r4,#2
        0x20004b94:    1c76        v.      ADDS     r6,r6,#1
        0x20004b96:    7830        0x      LDRB     r0,[r6,#0]
        0x20004b98:    282e        .(      CMP      r0,#0x2e
        0x20004b9a:    d116        ..      BNE      0x20004bca ; _printf_core + 166
        0x20004b9c:    f8160f01    ....    LDRB     r0,[r6,#1]!
        0x20004ba0:    f0440404    D...    ORR      r4,r4,#4
        0x20004ba4:    282a        *(      CMP      r0,#0x2a
        0x20004ba6:    d00d        ..      BEQ      0x20004bc4 ; _printf_core + 160
        0x20004ba8:    f06f022f    o./.    MVN      r2,#0x2f
        0x20004bac:    7830        0x      LDRB     r0,[r6,#0]
        0x20004bae:    f1a00330    ..0.    SUB      r3,r0,#0x30
        0x20004bb2:    2b09        .+      CMP      r3,#9
        0x20004bb4:    d809        ..      BHI      0x20004bca ; _printf_core + 166
        0x20004bb6:    eb070387    ....    ADD      r3,r7,r7,LSL #2
        0x20004bba:    eb020343    ..C.    ADD      r3,r2,r3,LSL #1
        0x20004bbe:    18c7        ..      ADDS     r7,r0,r3
        0x20004bc0:    1c76        v.      ADDS     r6,r6,#1
        0x20004bc2:    e7f3        ..      B        0x20004bac ; _printf_core + 136
        0x20004bc4:    f8597b04    Y..{    LDR      r7,[r9],#4
        0x20004bc8:    1c76        v.      ADDS     r6,r6,#1
        0x20004bca:    7830        0x      LDRB     r0,[r6,#0]
        0x20004bcc:    286c        l(      CMP      r0,#0x6c
        0x20004bce:    d00f        ..      BEQ      0x20004bf0 ; _printf_core + 204
        0x20004bd0:    dc06        ..      BGT      0x20004be0 ; _printf_core + 188
        0x20004bd2:    284c        L(      CMP      r0,#0x4c
        0x20004bd4:    d017        ..      BEQ      0x20004c06 ; _printf_core + 226
        0x20004bd6:    2868        h(      CMP      r0,#0x68
        0x20004bd8:    d00d        ..      BEQ      0x20004bf6 ; _printf_core + 210
        0x20004bda:    286a        j(      CMP      r0,#0x6a
        0x20004bdc:    d114        ..      BNE      0x20004c08 ; _printf_core + 228
        0x20004bde:    e004        ..      B        0x20004bea ; _printf_core + 198
        0x20004be0:    2874        t(      CMP      r0,#0x74
        0x20004be2:    d010        ..      BEQ      0x20004c06 ; _printf_core + 226
        0x20004be4:    287a        z(      CMP      r0,#0x7a
        0x20004be6:    d10f        ..      BNE      0x20004c08 ; _printf_core + 228
        0x20004be8:    e00d        ..      B        0x20004c06 ; _printf_core + 226
        0x20004bea:    f4441400    D...    ORR      r4,r4,#0x200000
        0x20004bee:    e00a        ..      B        0x20004c06 ; _printf_core + 226
        0x20004bf0:    f4441480    D...    ORR      r4,r4,#0x100000
        0x20004bf4:    e001        ..      B        0x20004bfa ; _printf_core + 214
        0x20004bf6:    f4441440    D.@.    ORR      r4,r4,#0x300000
        0x20004bfa:    7872        rx      LDRB     r2,[r6,#1]
        0x20004bfc:    4282        .B      CMP      r2,r0
        0x20004bfe:    d102        ..      BNE      0x20004c06 ; _printf_core + 226
        0x20004c00:    f5041480    ....    ADD      r4,r4,#0x100000
        0x20004c04:    1c76        v.      ADDS     r6,r6,#1
        0x20004c06:    1c76        v.      ADDS     r6,r6,#1
        0x20004c08:    7830        0x      LDRB     r0,[r6,#0]
        0x20004c0a:    2866        f(      CMP      r0,#0x66
        0x20004c0c:    d00b        ..      BEQ      0x20004c26 ; _printf_core + 258
        0x20004c0e:    dc13        ..      BGT      0x20004c38 ; _printf_core + 276
        0x20004c10:    2858        X(      CMP      r0,#0x58
        0x20004c12:    d077        w.      BEQ      0x20004d04 ; _printf_core + 480
        0x20004c14:    dc09        ..      BGT      0x20004c2a ; _printf_core + 262
        0x20004c16:    2800        .(      CMP      r0,#0
        0x20004c18:    d075        u.      BEQ      0x20004d06 ; _printf_core + 482
        0x20004c1a:    2845        E(      CMP      r0,#0x45
        0x20004c1c:    d0f6        ..      BEQ      0x20004c0c ; _printf_core + 232
        0x20004c1e:    2846        F(      CMP      r0,#0x46
        0x20004c20:    d0f4        ..      BEQ      0x20004c0c ; _printf_core + 232
        0x20004c22:    2847        G(      CMP      r0,#0x47
        0x20004c24:    d11a        ..      BNE      0x20004c5c ; _printf_core + 312
        0x20004c26:    e19d        ..      B        0x20004f64 ; _printf_core + 1088
        0x20004c28:    e018        ..      B        0x20004c5c ; _printf_core + 312
        0x20004c2a:    2863        c(      CMP      r0,#0x63
        0x20004c2c:    d035        5.      BEQ      0x20004c9a ; _printf_core + 374
        0x20004c2e:    2864        d(      CMP      r0,#0x64
        0x20004c30:    d079        y.      BEQ      0x20004d26 ; _printf_core + 514
        0x20004c32:    2865        e(      CMP      r0,#0x65
        0x20004c34:    d112        ..      BNE      0x20004c5c ; _printf_core + 312
        0x20004c36:    e195        ..      B        0x20004f64 ; _printf_core + 1088
        0x20004c38:    2870        p(      CMP      r0,#0x70
        0x20004c3a:    d073        s.      BEQ      0x20004d24 ; _printf_core + 512
        0x20004c3c:    dc08        ..      BGT      0x20004c50 ; _printf_core + 300
        0x20004c3e:    2867        g(      CMP      r0,#0x67
        0x20004c40:    d0f1        ..      BEQ      0x20004c26 ; _printf_core + 258
        0x20004c42:    2869        i(      CMP      r0,#0x69
        0x20004c44:    d06f        o.      BEQ      0x20004d26 ; _printf_core + 514
        0x20004c46:    286e        n(      CMP      r0,#0x6e
        0x20004c48:    d00d        ..      BEQ      0x20004c66 ; _printf_core + 322
        0x20004c4a:    286f        o(      CMP      r0,#0x6f
        0x20004c4c:    d106        ..      BNE      0x20004c5c ; _printf_core + 312
        0x20004c4e:    e0b5        ..      B        0x20004dbc ; _printf_core + 664
        0x20004c50:    2873        s(      CMP      r0,#0x73
        0x20004c52:    d02c        ,.      BEQ      0x20004cae ; _printf_core + 394
        0x20004c54:    2875        u(      CMP      r0,#0x75
        0x20004c56:    d075        u.      BEQ      0x20004d44 ; _printf_core + 544
        0x20004c58:    2878        x(      CMP      r0,#0x78
        0x20004c5a:    d074        t.      BEQ      0x20004d46 ; _printf_core + 546
        0x20004c5c:    465a        ZF      MOV      r2,r11
        0x20004c5e:    9917        ..      LDR      r1,[sp,#0x5c]
        0x20004c60:    4790        .G      BLX      r2
        0x20004c62:    1c6d        m.      ADDS     r5,r5,#1
        0x20004c64:    e175        u.      B        0x20004f52 ; _printf_core + 1070
        0x20004c66:    f3c45002    ...P    UBFX     r0,r4,#20,#3
        0x20004c6a:    2802        .(      CMP      r0,#2
        0x20004c6c:    d009        ..      BEQ      0x20004c82 ; _printf_core + 350
        0x20004c6e:    2803        .(      CMP      r0,#3
        0x20004c70:    d00d        ..      BEQ      0x20004c8e ; _printf_core + 362
        0x20004c72:    f8d91000    ....    LDR      r1,[r9,#0]
        0x20004c76:    2804        .(      CMP      r0,#4
        0x20004c78:    d00d        ..      BEQ      0x20004c96 ; _printf_core + 370
        0x20004c7a:    600d        .`      STR      r5,[r1,#0]
        0x20004c7c:    f1090904    ....    ADD      r9,r9,#4
        0x20004c80:    e167        g.      B        0x20004f52 ; _printf_core + 1070
        0x20004c82:    f8d91000    ....    LDR      r1,[r9,#0]
        0x20004c86:    17ea        ..      ASRS     r2,r5,#31
        0x20004c88:    e9c15200    ...R    STRD     r5,r2,[r1,#0]
        0x20004c8c:    e7f6        ..      B        0x20004c7c ; _printf_core + 344
        0x20004c8e:    f8d91000    ....    LDR      r1,[r9,#0]
        0x20004c92:    800d        ..      STRH     r5,[r1,#0]
        0x20004c94:    e7f2        ..      B        0x20004c7c ; _printf_core + 344
        0x20004c96:    700d        .p      STRB     r5,[r1,#0]
        0x20004c98:    e7f0        ..      B        0x20004c7c ; _printf_core + 344
        0x20004c9a:    f8191b04    ....    LDRB     r1,[r9],#4
        0x20004c9e:    f88d1000    ....    STRB     r1,[sp,#0]
        0x20004ca2:    2000        .       MOVS     r0,#0
        0x20004ca4:    f88d0001    ....    STRB     r0,[sp,#1]
        0x20004ca8:    46ea        .F      MOV      r10,sp
        0x20004caa:    2001        .       MOVS     r0,#1
        0x20004cac:    e003        ..      B        0x20004cb6 ; _printf_core + 402
        0x20004cae:    f859ab04    Y...    LDR      r10,[r9],#4
        0x20004cb2:    f04f30ff    O..0    MOV      r0,#0xffffffff
        0x20004cb6:    0761        a.      LSLS     r1,r4,#29
        0x20004cb8:    f04f0100    O...    MOV      r1,#0
        0x20004cbc:    d402        ..      BMI      0x20004cc4 ; _printf_core + 416
        0x20004cbe:    e00d        ..      B        0x20004cdc ; _printf_core + 440
        0x20004cc0:    f1080101    ....    ADD      r1,r8,#1
        0x20004cc4:    4688        .F      MOV      r8,r1
        0x20004cc6:    42b9        .B      CMP      r1,r7
        0x20004cc8:    da0f        ..      BGE      0x20004cea ; _printf_core + 454
        0x20004cca:    4580        .E      CMP      r8,r0
        0x20004ccc:    dbf8        ..      BLT      0x20004cc0 ; _printf_core + 412
        0x20004cce:    f81a1008    ....    LDRB     r1,[r10,r8]
        0x20004cd2:    2900        .)      CMP      r1,#0
        0x20004cd4:    d1f4        ..      BNE      0x20004cc0 ; _printf_core + 412
        0x20004cd6:    e008        ..      B        0x20004cea ; _printf_core + 454
        0x20004cd8:    f1080101    ....    ADD      r1,r8,#1
        0x20004cdc:    4688        .F      MOV      r8,r1
        0x20004cde:    4281        .B      CMP      r1,r0
        0x20004ce0:    dbfa        ..      BLT      0x20004cd8 ; _printf_core + 436
        0x20004ce2:    f81a1008    ....    LDRB     r1,[r10,r8]
        0x20004ce6:    2900        .)      CMP      r1,#0
        0x20004ce8:    d1f6        ..      BNE      0x20004cd8 ; _printf_core + 436
        0x20004cea:    9805        ..      LDR      r0,[sp,#0x14]
        0x20004cec:    465b        [F      MOV      r3,r11
        0x20004cee:    eba00708    ....    SUB      r7,r0,r8
        0x20004cf2:    4621        !F      MOV      r1,r4
        0x20004cf4:    4638        8F      MOV      r0,r7
        0x20004cf6:    9a17        ..      LDR      r2,[sp,#0x5c]
        0x20004cf8:    f000fa94    ....    BL       _printf_pre_padding ; 0x20005224
        0x20004cfc:    4428        (D      ADD      r0,r0,r5
        0x20004cfe:    eb000508    ....    ADD      r5,r0,r8
        0x20004d02:    e007        ..      B        0x20004d14 ; _printf_core + 496
        0x20004d04:    e04d        M.      B        0x20004da2 ; _printf_core + 638
        0x20004d06:    e129        ).      B        0x20004f5c ; _printf_core + 1080
        0x20004d08:    e00d        ..      B        0x20004d26 ; _printf_core + 514
        0x20004d0a:    f81a0b01    ....    LDRB     r0,[r10],#1
        0x20004d0e:    465a        ZF      MOV      r2,r11
        0x20004d10:    9917        ..      LDR      r1,[sp,#0x5c]
        0x20004d12:    4790        .G      BLX      r2
        0x20004d14:    f1b80801    ....    SUBS     r8,r8,#1
        0x20004d18:    d2f7        ..      BCS      0x20004d0a ; _printf_core + 486
        0x20004d1a:    465b        [F      MOV      r3,r11
        0x20004d1c:    4621        !F      MOV      r1,r4
        0x20004d1e:    4638        8F      MOV      r0,r7
        0x20004d20:    9a17        ..      LDR      r2,[sp,#0x5c]
        0x20004d22:    e113        ..      B        0x20004f4c ; _printf_core + 1064
        0x20004d24:    e042        B.      B        0x20004dac ; _printf_core + 648
        0x20004d26:    220a        ."      MOVS     r2,#0xa
        0x20004d28:    9200        ..      STR      r2,[sp,#0]
        0x20004d2a:    f3c45202    ...R    UBFX     r2,r4,#20,#3
        0x20004d2e:    f04f0a00    O...    MOV      r10,#0
        0x20004d32:    2a02        .*      CMP      r2,#2
        0x20004d34:    d008        ..      BEQ      0x20004d48 ; _printf_core + 548
        0x20004d36:    f859cb04    Y...    LDR      r12,[r9],#4
        0x20004d3a:    2a03        .*      CMP      r2,#3
        0x20004d3c:    ea4f71ec    O..q    ASR      r1,r12,#31
        0x20004d40:    d00a        ..      BEQ      0x20004d58 ; _printf_core + 564
        0x20004d42:    e00d        ..      B        0x20004d60 ; _printf_core + 572
        0x20004d44:    e029        ).      B        0x20004d9a ; _printf_core + 630
        0x20004d46:    e02a        *.      B        0x20004d9e ; _printf_core + 634
        0x20004d48:    f1090107    ....    ADD      r1,r9,#7
        0x20004d4c:    f0210207    !...    BIC      r2,r1,#7
        0x20004d50:    e8f2c102    ....    LDRD     r12,r1,[r2],#8
        0x20004d54:    4691        .F      MOV      r9,r2
        0x20004d56:    e009        ..      B        0x20004d6c ; _printf_core + 584
        0x20004d58:    fa0ffc8c    ....    SXTH     r12,r12
        0x20004d5c:    ea4f71ec    O..q    ASR      r1,r12,#31
        0x20004d60:    2a04        .*      CMP      r2,#4
        0x20004d62:    d103        ..      BNE      0x20004d6c ; _printf_core + 584
        0x20004d64:    fa4ffc8c    O...    SXTB     r12,r12
        0x20004d68:    ea4f71ec    O..q    ASR      r1,r12,#31
        0x20004d6c:    2900        .)      CMP      r1,#0
        0x20004d6e:    da07        ..      BGE      0x20004d80 ; _printf_core + 604
        0x20004d70:    460a        .F      MOV      r2,r1
        0x20004d72:    2100        .!      MOVS     r1,#0
        0x20004d74:    f1dc0c00    ....    RSBS     r12,r12,#0
        0x20004d78:    eb610102    a...    SBC      r1,r1,r2
        0x20004d7c:    222d        -"      MOVS     r2,#0x2d
        0x20004d7e:    e002        ..      B        0x20004d86 ; _printf_core + 610
        0x20004d80:    0522        ".      LSLS     r2,r4,#20
        0x20004d82:    d504        ..      BPL      0x20004d8e ; _printf_core + 618
        0x20004d84:    222b        +"      MOVS     r2,#0x2b
        0x20004d86:    f88d2004    ...     STRB     r2,[sp,#4]
        0x20004d8a:    2201        ."      MOVS     r2,#1
        0x20004d8c:    e003        ..      B        0x20004d96 ; _printf_core + 626
        0x20004d8e:    07e2        ..      LSLS     r2,r4,#31
        0x20004d90:    d001        ..      BEQ      0x20004d96 ; _printf_core + 626
        0x20004d92:    2220         "      MOVS     r2,#0x20
        0x20004d94:    e7f7        ..      B        0x20004d86 ; _printf_core + 610
        0x20004d96:    4690        .F      MOV      r8,r2
        0x20004d98:    e059        Y.      B        0x20004e4e ; _printf_core + 810
        0x20004d9a:    210a        .!      MOVS     r1,#0xa
        0x20004d9c:    e002        ..      B        0x20004da4 ; _printf_core + 640
        0x20004d9e:    2210        ."      MOVS     r2,#0x10
        0x20004da0:    e00d        ..      B        0x20004dbe ; _printf_core + 666
        0x20004da2:    2110        .!      MOVS     r1,#0x10
        0x20004da4:    f04f0a00    O...    MOV      r10,#0
        0x20004da8:    9100        ..      STR      r1,[sp,#0]
        0x20004daa:    e00b        ..      B        0x20004dc4 ; _printf_core + 672
        0x20004dac:    2210        ."      MOVS     r2,#0x10
        0x20004dae:    f04f0a00    O...    MOV      r10,#0
        0x20004db2:    f0440404    D...    ORR      r4,r4,#4
        0x20004db6:    2708        .'      MOVS     r7,#8
        0x20004db8:    9200        ..      STR      r2,[sp,#0]
        0x20004dba:    e003        ..      B        0x20004dc4 ; _printf_core + 672
        0x20004dbc:    2208        ."      MOVS     r2,#8
        0x20004dbe:    f04f0a00    O...    MOV      r10,#0
        0x20004dc2:    9200        ..      STR      r2,[sp,#0]
        0x20004dc4:    f3c45202    ...R    UBFX     r2,r4,#20,#3
        0x20004dc8:    2a02        .*      CMP      r2,#2
        0x20004dca:    d005        ..      BEQ      0x20004dd8 ; _printf_core + 692
        0x20004dcc:    f859cb04    Y...    LDR      r12,[r9],#4
        0x20004dd0:    2100        .!      MOVS     r1,#0
        0x20004dd2:    2a03        .*      CMP      r2,#3
        0x20004dd4:    d008        ..      BEQ      0x20004de8 ; _printf_core + 708
        0x20004dd6:    e009        ..      B        0x20004dec ; _printf_core + 712
        0x20004dd8:    f1090107    ....    ADD      r1,r9,#7
        0x20004ddc:    f0210207    !...    BIC      r2,r1,#7
        0x20004de0:    e8f2c102    ....    LDRD     r12,r1,[r2],#8
        0x20004de4:    4691        .F      MOV      r9,r2
        0x20004de6:    e005        ..      B        0x20004df4 ; _printf_core + 720
        0x20004de8:    fa1ffc8c    ....    UXTH     r12,r12
        0x20004dec:    2a04        .*      CMP      r2,#4
        0x20004dee:    d101        ..      BNE      0x20004df4 ; _printf_core + 720
        0x20004df0:    f00c0cff    ....    AND      r12,r12,#0xff
        0x20004df4:    f04f0800    O...    MOV      r8,#0
        0x20004df8:    0722        ".      LSLS     r2,r4,#28
        0x20004dfa:    d528        (.      BPL      0x20004e4e ; _printf_core + 810
        0x20004dfc:    2870        p(      CMP      r0,#0x70
        0x20004dfe:    d006        ..      BEQ      0x20004e0e ; _printf_core + 746
        0x20004e00:    9b00        ..      LDR      r3,[sp,#0]
        0x20004e02:    f0830310    ....    EOR      r3,r3,#0x10
        0x20004e06:    ea53030a    S...    ORRS     r3,r3,r10
        0x20004e0a:    d005        ..      BEQ      0x20004e18 ; _printf_core + 756
        0x20004e0c:    e00e        ..      B        0x20004e2c ; _printf_core + 776
        0x20004e0e:    2240        @"      MOVS     r2,#0x40
        0x20004e10:    f88d2004    ...     STRB     r2,[sp,#4]
        0x20004e14:    2201        ."      MOVS     r2,#1
        0x20004e16:    e008        ..      B        0x20004e2a ; _printf_core + 774
        0x20004e18:    ea5c0201    \...    ORRS     r2,r12,r1
        0x20004e1c:    d006        ..      BEQ      0x20004e2c ; _printf_core + 776
        0x20004e1e:    2230        0"      MOVS     r2,#0x30
        0x20004e20:    f88d2004    ...     STRB     r2,[sp,#4]
        0x20004e24:    f88d0005    ....    STRB     r0,[sp,#5]
        0x20004e28:    2202        ."      MOVS     r2,#2
        0x20004e2a:    4690        .F      MOV      r8,r2
        0x20004e2c:    9b00        ..      LDR      r3,[sp,#0]
        0x20004e2e:    f0830308    ....    EOR      r3,r3,#8
        0x20004e32:    ea53030a    S...    ORRS     r3,r3,r10
        0x20004e36:    d10a        ..      BNE      0x20004e4e ; _printf_core + 810
        0x20004e38:    ea5c0201    \...    ORRS     r2,r12,r1
        0x20004e3c:    d101        ..      BNE      0x20004e42 ; _printf_core + 798
        0x20004e3e:    0762        b.      LSLS     r2,r4,#29
        0x20004e40:    d505        ..      BPL      0x20004e4e ; _printf_core + 810
        0x20004e42:    2230        0"      MOVS     r2,#0x30
        0x20004e44:    f88d2004    ...     STRB     r2,[sp,#4]
        0x20004e48:    f04f0801    O...    MOV      r8,#1
        0x20004e4c:    1e7f        ..      SUBS     r7,r7,#1
        0x20004e4e:    2858        X(      CMP      r0,#0x58
        0x20004e50:    d004        ..      BEQ      0x20004e5c ; _printf_core + 824
        0x20004e52:    a034        4.      ADR      r0,{pc}+0xd2 ; 0x20004f24
        0x20004e54:    9003        ..      STR      r0,[sp,#0xc]
        0x20004e56:    a80e        ..      ADD      r0,sp,#0x38
        0x20004e58:    9002        ..      STR      r0,[sp,#8]
        0x20004e5a:    e00d        ..      B        0x20004e78 ; _printf_core + 852
        0x20004e5c:    a036        6.      ADR      r0,{pc}+0xdc ; 0x20004f38
        0x20004e5e:    e7f9        ..      B        0x20004e54 ; _printf_core + 816
        0x20004e60:    4653        SF      MOV      r3,r10
        0x20004e62:    4660        `F      MOV      r0,r12
        0x20004e64:    9a00        ..      LDR      r2,[sp,#0]
        0x20004e66:    f7fef9e1    ....    BL       __aeabi_uldivmod ; 0x2000322c
        0x20004e6a:    4684        .F      MOV      r12,r0
        0x20004e6c:    9803        ..      LDR      r0,[sp,#0xc]
        0x20004e6e:    5c82        .\      LDRB     r2,[r0,r2]
        0x20004e70:    9802        ..      LDR      r0,[sp,#8]
        0x20004e72:    1e40        @.      SUBS     r0,r0,#1
        0x20004e74:    9002        ..      STR      r0,[sp,#8]
        0x20004e76:    7002        .p      STRB     r2,[r0,#0]
        0x20004e78:    ea5c0001    \...    ORRS     r0,r12,r1
        0x20004e7c:    d1f0        ..      BNE      0x20004e60 ; _printf_core + 828
        0x20004e7e:    9802        ..      LDR      r0,[sp,#8]
        0x20004e80:    a906        ..      ADD      r1,sp,#0x18
        0x20004e82:    1a08        ..      SUBS     r0,r1,r0
        0x20004e84:    f1000a20    .. .    ADD      r10,r0,#0x20
        0x20004e88:    0760        `.      LSLS     r0,r4,#29
        0x20004e8a:    d502        ..      BPL      0x20004e92 ; _printf_core + 878
        0x20004e8c:    f4243480    $..4    BIC      r4,r4,#0x10000
        0x20004e90:    e000        ..      B        0x20004e94 ; _printf_core + 880
        0x20004e92:    2701        .'      MOVS     r7,#1
        0x20004e94:    4557        WE      CMP      r7,r10
        0x20004e96:    dd02        ..      BLE      0x20004e9e ; _printf_core + 890
        0x20004e98:    eba7000a    ....    SUB      r0,r7,r10
        0x20004e9c:    e000        ..      B        0x20004ea0 ; _printf_core + 892
        0x20004e9e:    2000        .       MOVS     r0,#0
        0x20004ea0:    eb00010a    ....    ADD      r1,r0,r10
        0x20004ea4:    9000        ..      STR      r0,[sp,#0]
        0x20004ea6:    9805        ..      LDR      r0,[sp,#0x14]
        0x20004ea8:    4441        AD      ADD      r1,r1,r8
        0x20004eaa:    1a40        @.      SUBS     r0,r0,r1
        0x20004eac:    9005        ..      STR      r0,[sp,#0x14]
        0x20004eae:    03e0        ..      LSLS     r0,r4,#15
        0x20004eb0:    d406        ..      BMI      0x20004ec0 ; _printf_core + 924
        0x20004eb2:    465b        [F      MOV      r3,r11
        0x20004eb4:    4621        !F      MOV      r1,r4
        0x20004eb6:    9a17        ..      LDR      r2,[sp,#0x5c]
        0x20004eb8:    9805        ..      LDR      r0,[sp,#0x14]
        0x20004eba:    f000f9b3    ....    BL       _printf_pre_padding ; 0x20005224
        0x20004ebe:    4405        .D      ADD      r5,r5,r0
        0x20004ec0:    2700        .'      MOVS     r7,#0
        0x20004ec2:    e006        ..      B        0x20004ed2 ; _printf_core + 942
        0x20004ec4:    a801        ..      ADD      r0,sp,#4
        0x20004ec6:    465a        ZF      MOV      r2,r11
        0x20004ec8:    5dc0        .]      LDRB     r0,[r0,r7]
        0x20004eca:    9917        ..      LDR      r1,[sp,#0x5c]
        0x20004ecc:    4790        .G      BLX      r2
        0x20004ece:    1c6d        m.      ADDS     r5,r5,#1
        0x20004ed0:    1c7f        ..      ADDS     r7,r7,#1
        0x20004ed2:    4547        GE      CMP      r7,r8
        0x20004ed4:    dbf6        ..      BLT      0x20004ec4 ; _printf_core + 928
        0x20004ed6:    03e0        ..      LSLS     r0,r4,#15
        0x20004ed8:    d50c        ..      BPL      0x20004ef4 ; _printf_core + 976
        0x20004eda:    465b        [F      MOV      r3,r11
        0x20004edc:    4621        !F      MOV      r1,r4
        0x20004ede:    9a17        ..      LDR      r2,[sp,#0x5c]
        0x20004ee0:    9805        ..      LDR      r0,[sp,#0x14]
        0x20004ee2:    f000f99f    ....    BL       _printf_pre_padding ; 0x20005224
        0x20004ee6:    4405        .D      ADD      r5,r5,r0
        0x20004ee8:    e004        ..      B        0x20004ef4 ; _printf_core + 976
        0x20004eea:    2030        0       MOVS     r0,#0x30
        0x20004eec:    465a        ZF      MOV      r2,r11
        0x20004eee:    9917        ..      LDR      r1,[sp,#0x5c]
        0x20004ef0:    4790        .G      BLX      r2
        0x20004ef2:    1c6d        m.      ADDS     r5,r5,#1
        0x20004ef4:    9900        ..      LDR      r1,[sp,#0]
        0x20004ef6:    1e48        H.      SUBS     r0,r1,#1
        0x20004ef8:    9000        ..      STR      r0,[sp,#0]
        0x20004efa:    2900        .)      CMP      r1,#0
        0x20004efc:    dcf5        ..      BGT      0x20004eea ; _printf_core + 966
        0x20004efe:    e008        ..      B        0x20004f12 ; _printf_core + 1006
        0x20004f00:    9802        ..      LDR      r0,[sp,#8]
        0x20004f02:    9902        ..      LDR      r1,[sp,#8]
        0x20004f04:    465a        ZF      MOV      r2,r11
        0x20004f06:    7800        .x      LDRB     r0,[r0,#0]
        0x20004f08:    1c49        I.      ADDS     r1,r1,#1
        0x20004f0a:    9102        ..      STR      r1,[sp,#8]
        0x20004f0c:    9917        ..      LDR      r1,[sp,#0x5c]
        0x20004f0e:    4790        .G      BLX      r2
        0x20004f10:    1c6d        m.      ADDS     r5,r5,#1
        0x20004f12:    f1ba0100    ....    SUBS     r1,r10,#0
        0x20004f16:    f1aa0a01    ....    SUB      r10,r10,#1
        0x20004f1a:    dcf1        ..      BGT      0x20004f00 ; _printf_core + 988
        0x20004f1c:    e165        e.      B        0x200051ea ; _printf_core + 1734
    $d
        0x20004f1e:    0000        ..      DCW    0
        0x20004f20:    00012809    .(..    DCD    75785
        0x20004f24:    33323130    0123    DCD    858927408
        0x20004f28:    37363534    4567    DCD    926299444
        0x20004f2c:    62613938    89ab    DCD    1650538808
        0x20004f30:    66656463    cdef    DCD    1717920867
        0x20004f34:    00000000    ....    DCD    0
        0x20004f38:    33323130    0123    DCD    858927408
        0x20004f3c:    37363534    4567    DCD    926299444
        0x20004f40:    42413938    89AB    DCD    1111570744
        0x20004f44:    46454443    CDEF    DCD    1178944579
        0x20004f48:    00000000    ....    DCD    0
    $t
        0x20004f4c:    f000f958    ..X.    BL       _printf_post_padding ; 0x20005200
        0x20004f50:    4405        .D      ADD      r5,r5,r0
        0x20004f52:    1c76        v.      ADDS     r6,r6,#1
        0x20004f54:    7830        0x      LDRB     r0,[r6,#0]
        0x20004f56:    2800        .(      CMP      r0,#0
        0x20004f58:    f47fadec    ....    BNE      0x20004b34 ; _printf_core + 16
        0x20004f5c:    b019        ..      ADD      sp,sp,#0x64
        0x20004f5e:    4628        (F      MOV      r0,r5
        0x20004f60:    e8bd8ff0    ....    POP      {r4-r11,pc}
        0x20004f64:    0762        b.      LSLS     r2,r4,#29
        0x20004f66:    d400        ..      BMI      0x20004f6a ; _printf_core + 1094
        0x20004f68:    2706        .'      MOVS     r7,#6
        0x20004f6a:    f1090207    ....    ADD      r2,r9,#7
        0x20004f6e:    f0220c07    "...    BIC      r12,r2,#7
        0x20004f72:    e8fc2302    ...#    LDRD     r2,r3,[r12],#8
        0x20004f76:    46e1        .F      MOV      r9,r12
        0x20004f78:    f0034800    ...H    AND      r8,r3,#0x80000000
        0x20004f7c:    ea5f0c08    _...    MOVS     r12,r8
        0x20004f80:    d002        ..      BEQ      0x20004f88 ; _printf_core + 1124
        0x20004f82:    f20f2c70    ..p,    ADR.W    r12,{pc}+0x272 ; 0x200051f4
        0x20004f86:    e00d        ..      B        0x20004fa4 ; _printf_core + 1152
        0x20004f88:    ea5f5c04    _..\    LSLS     r12,r4,#20
        0x20004f8c:    d502        ..      BPL      0x20004f94 ; _printf_core + 1136
        0x20004f8e:    f20f2c68    ..h,    ADR.W    r12,{pc}+0x26a ; 0x200051f8
        0x20004f92:    e007        ..      B        0x20004fa4 ; _printf_core + 1152
        0x20004f94:    ea5f7cc4    _..|    LSLS     r12,r4,#31
        0x20004f98:    d002        ..      BEQ      0x20004fa0 ; _printf_core + 1148
        0x20004f9a:    f20f2c60    ..`,    ADR.W    r12,{pc}+0x262 ; 0x200051fc
        0x20004f9e:    e001        ..      B        0x20004fa4 ; _printf_core + 1152
        0x20004fa0:    f2af0c70    ..p.    ADR      r12,{pc}-0x6c ; 0x20004f34
        0x20004fa4:    f04f38ff    O..8    MOV      r8,#0xffffffff
        0x20004fa8:    f0234300    #..C    BIC      r3,r3,#0x80000000
        0x20004fac:    f8cdc050    ..P.    STR      r12,[sp,#0x50]
        0x20004fb0:    2865        e(      CMP      r0,#0x65
        0x20004fb2:    d00c        ..      BEQ      0x20004fce ; _printf_core + 1194
        0x20004fb4:    dc06        ..      BGT      0x20004fc4 ; _printf_core + 1184
        0x20004fb6:    2845        E(      CMP      r0,#0x45
        0x20004fb8:    d009        ..      BEQ      0x20004fce ; _printf_core + 1194
        0x20004fba:    2846        F(      CMP      r0,#0x46
        0x20004fbc:    d01d        ..      BEQ      0x20004ffa ; _printf_core + 1238
        0x20004fbe:    2847        G(      CMP      r0,#0x47
        0x20004fc0:    d13d        =.      BNE      0x2000503e ; _printf_core + 1306
        0x20004fc2:    e03d        =.      B        0x20005040 ; _printf_core + 1308
        0x20004fc4:    2866        f(      CMP      r0,#0x66
        0x20004fc6:    d018        ..      BEQ      0x20004ffa ; _printf_core + 1238
        0x20004fc8:    2867        g(      CMP      r0,#0x67
        0x20004fca:    d17e        ~.      BNE      0x200050ca ; _printf_core + 1446
        0x20004fcc:    e038        8.      B        0x20005040 ; _printf_core + 1308
        0x20004fce:    2100        .!      MOVS     r1,#0
        0x20004fd0:    2f11        ./      CMP      r7,#0x11
        0x20004fd2:    db01        ..      BLT      0x20004fd8 ; _printf_core + 1204
        0x20004fd4:    2011        .       MOVS     r0,#0x11
        0x20004fd6:    e000        ..      B        0x20004fda ; _printf_core + 1206
        0x20004fd8:    1c78        x.      ADDS     r0,r7,#1
        0x20004fda:    e9cd0100    ....    STRD     r0,r1,[sp,#0]
        0x20004fde:    a906        ..      ADD      r1,sp,#0x18
        0x20004fe0:    a80e        ..      ADD      r0,sp,#0x38
        0x20004fe2:    f7fffcdd    ....    BL       _fp_digits ; 0x200049a0
        0x20004fe6:    e9dd010f    ....    LDRD     r0,r1,[sp,#0x3c]
        0x20004fea:    9a0e        ..      LDR      r2,[sp,#0x38]
        0x20004fec:    9103        ..      STR      r1,[sp,#0xc]
        0x20004fee:    2100        .!      MOVS     r1,#0
        0x20004ff0:    9200        ..      STR      r2,[sp,#0]
        0x20004ff2:    f1070a01    ....    ADD      r10,r7,#1
        0x20004ff6:    9104        ..      STR      r1,[sp,#0x10]
        0x20004ff8:    e04d        M.      B        0x20005096 ; _printf_core + 1394
        0x20004ffa:    f04f4000    O..@    MOV      r0,#0x80000000
        0x20004ffe:    9700        ..      STR      r7,[sp,#0]
        0x20005000:    e9cd1001    ....    STRD     r1,r0,[sp,#4]
        0x20005004:    a906        ..      ADD      r1,sp,#0x18
        0x20005006:    a80e        ..      ADD      r0,sp,#0x38
        0x20005008:    f7fffcca    ....    BL       _fp_digits ; 0x200049a0
        0x2000500c:    e9dd020f    ....    LDRD     r0,r2,[sp,#0x3c]
        0x20005010:    9203        ..      STR      r2,[sp,#0xc]
        0x20005012:    9b0e        ..      LDR      r3,[sp,#0x38]
        0x20005014:    9911        ..      LDR      r1,[sp,#0x44]
        0x20005016:    2200        ."      MOVS     r2,#0
        0x20005018:    f8dda00c    ....    LDR      r10,[sp,#0xc]
        0x2000501c:    9300        ..      STR      r3,[sp,#0]
        0x2000501e:    9204        ..      STR      r2,[sp,#0x10]
        0x20005020:    b911        ..      CBNZ     r1,0x20005028 ; _printf_core + 1284
        0x20005022:    1c79        y.      ADDS     r1,r7,#1
        0x20005024:    eb000a01    ....    ADD      r10,r0,r1
        0x20005028:    ebb7000a    ....    SUBS     r0,r7,r10
        0x2000502c:    d404        ..      BMI      0x20005038 ; _printf_core + 1300
        0x2000502e:    f1c030ff    ...0    RSB      r0,r0,#0xffffffff
        0x20005032:    f1070a01    ....    ADD      r10,r7,#1
        0x20005036:    9004        ..      STR      r0,[sp,#0x10]
        0x20005038:    ebaa0007    ....    SUB      r0,r10,r7
        0x2000503c:    9001        ..      STR      r0,[sp,#4]
        0x2000503e:    e044        D.      B        0x200050ca ; _printf_core + 1446
        0x20005040:    2f01        ./      CMP      r7,#1
        0x20005042:    da00        ..      BGE      0x20005046 ; _printf_core + 1314
        0x20005044:    2701        .'      MOVS     r7,#1
        0x20005046:    2100        .!      MOVS     r1,#0
        0x20005048:    2f11        ./      CMP      r7,#0x11
        0x2000504a:    dd01        ..      BLE      0x20005050 ; _printf_core + 1324
        0x2000504c:    2011        .       MOVS     r0,#0x11
        0x2000504e:    e000        ..      B        0x20005052 ; _printf_core + 1326
        0x20005050:    4638        8F      MOV      r0,r7
        0x20005052:    e9cd0100    ....    STRD     r0,r1,[sp,#0]
        0x20005056:    a906        ..      ADD      r1,sp,#0x18
        0x20005058:    a80e        ..      ADD      r0,sp,#0x38
        0x2000505a:    f7fffca1    ....    BL       _fp_digits ; 0x200049a0
        0x2000505e:    e9dd010f    ....    LDRD     r0,r1,[sp,#0x3c]
        0x20005062:    9a0e        ..      LDR      r2,[sp,#0x38]
        0x20005064:    9103        ..      STR      r1,[sp,#0xc]
        0x20005066:    2100        .!      MOVS     r1,#0
        0x20005068:    9104        ..      STR      r1,[sp,#0x10]
        0x2000506a:    9200        ..      STR      r2,[sp,#0]
        0x2000506c:    46ba        .F      MOV      r10,r7
        0x2000506e:    0721        !.      LSLS     r1,r4,#28
        0x20005070:    d40c        ..      BMI      0x2000508c ; _printf_core + 1384
        0x20005072:    9903        ..      LDR      r1,[sp,#0xc]
        0x20005074:    4551        QE      CMP      r1,r10
        0x20005076:    da00        ..      BGE      0x2000507a ; _printf_core + 1366
        0x20005078:    468a        .F      MOV      r10,r1
        0x2000507a:    f1ba0f01    ....    CMP      r10,#1
        0x2000507e:    dd05        ..      BLE      0x2000508c ; _printf_core + 1384
        0x20005080:    9a00        ..      LDR      r2,[sp,#0]
        0x20005082:    f1aa0101    ....    SUB      r1,r10,#1
        0x20005086:    5c51        Q\      LDRB     r1,[r2,r1]
        0x20005088:    2930        0)      CMP      r1,#0x30
        0x2000508a:    d008        ..      BEQ      0x2000509e ; _printf_core + 1402
        0x2000508c:    42b8        .B      CMP      r0,r7
        0x2000508e:    da02        ..      BGE      0x20005096 ; _printf_core + 1394
        0x20005090:    f1100f04    ....    CMN      r0,#4
        0x20005094:    da06        ..      BGE      0x200050a4 ; _printf_core + 1408
        0x20005096:    2101        .!      MOVS     r1,#1
        0x20005098:    e9cd1001    ....    STRD     r1,r0,[sp,#4]
        0x2000509c:    e015        ..      B        0x200050ca ; _printf_core + 1446
        0x2000509e:    f1aa0101    ....    SUB      r1,r10,#1
        0x200050a2:    e7e9        ..      B        0x20005078 ; _printf_core + 1364
        0x200050a4:    2800        .(      CMP      r0,#0
        0x200050a6:    dc05        ..      BGT      0x200050b4 ; _printf_core + 1424
        0x200050a8:    9904        ..      LDR      r1,[sp,#0x10]
        0x200050aa:    4401        .D      ADD      r1,r1,r0
        0x200050ac:    9104        ..      STR      r1,[sp,#0x10]
        0x200050ae:    ebaa0100    ....    SUB      r1,r10,r0
        0x200050b2:    e002        ..      B        0x200050ba ; _printf_core + 1430
        0x200050b4:    1c41        A.      ADDS     r1,r0,#1
        0x200050b6:    4551        QE      CMP      r1,r10
        0x200050b8:    dd00        ..      BLE      0x200050bc ; _printf_core + 1432
        0x200050ba:    468a        .F      MOV      r10,r1
        0x200050bc:    9904        ..      LDR      r1,[sp,#0x10]
        0x200050be:    1a40        @.      SUBS     r0,r0,r1
        0x200050c0:    1c40        @.      ADDS     r0,r0,#1
        0x200050c2:    9001        ..      STR      r0,[sp,#4]
        0x200050c4:    f04f4000    O..@    MOV      r0,#0x80000000
        0x200050c8:    9002        ..      STR      r0,[sp,#8]
        0x200050ca:    0720         .      LSLS     r0,r4,#28
        0x200050cc:    d404        ..      BMI      0x200050d8 ; _printf_core + 1460
        0x200050ce:    9801        ..      LDR      r0,[sp,#4]
        0x200050d0:    4550        PE      CMP      r0,r10
        0x200050d2:    db01        ..      BLT      0x200050d8 ; _printf_core + 1460
        0x200050d4:    f8cd8004    ....    STR      r8,[sp,#4]
        0x200050d8:    2000        .       MOVS     r0,#0
        0x200050da:    f88d004f    ..O.    STRB     r0,[sp,#0x4f]
        0x200050de:    9802        ..      LDR      r0,[sp,#8]
        0x200050e0:    f10d074f    ..O.    ADD      r7,sp,#0x4f
        0x200050e4:    f1b04f00    ...O    CMP      r0,#0x80000000
        0x200050e8:    d025        %.      BEQ      0x20005136 ; _printf_core + 1554
        0x200050ea:    202b        +       MOVS     r0,#0x2b
        0x200050ec:    900e        ..      STR      r0,[sp,#0x38]
        0x200050ee:    9802        ..      LDR      r0,[sp,#8]
        0x200050f0:    f04f0802    O...    MOV      r8,#2
        0x200050f4:    2800        .(      CMP      r0,#0
        0x200050f6:    da0c        ..      BGE      0x20005112 ; _printf_core + 1518
        0x200050f8:    4240        @B      RSBS     r0,r0,#0
        0x200050fa:    9002        ..      STR      r0,[sp,#8]
        0x200050fc:    202d        -       MOVS     r0,#0x2d
        0x200050fe:    900e        ..      STR      r0,[sp,#0x38]
        0x20005100:    e007        ..      B        0x20005112 ; _printf_core + 1518
        0x20005102:    210a        .!      MOVS     r1,#0xa
        0x20005104:    9802        ..      LDR      r0,[sp,#8]
        0x20005106:    f7fef87b    ..{.    BL       __aeabi_uidiv ; 0x20003200
        0x2000510a:    3130        01      ADDS     r1,r1,#0x30
        0x2000510c:    9002        ..      STR      r0,[sp,#8]
        0x2000510e:    f8071d01    ....    STRB     r1,[r7,#-1]!
        0x20005112:    f1b80100    ....    SUBS     r1,r8,#0
        0x20005116:    f1a80801    ....    SUB      r8,r8,#1
        0x2000511a:    dcf2        ..      BGT      0x20005102 ; _printf_core + 1502
        0x2000511c:    9802        ..      LDR      r0,[sp,#8]
        0x2000511e:    2800        .(      CMP      r0,#0
        0x20005120:    d1ef        ..      BNE      0x20005102 ; _printf_core + 1502
        0x20005122:    1e79        y.      SUBS     r1,r7,#1
        0x20005124:    980e        ..      LDR      r0,[sp,#0x38]
        0x20005126:    7008        .p      STRB     r0,[r1,#0]
        0x20005128:    7830        0x      LDRB     r0,[r6,#0]
        0x2000512a:    f0000020    .. .    AND      r0,r0,#0x20
        0x2000512e:    f0400045    @.E.    ORR      r0,r0,#0x45
        0x20005132:    f8070d02    ....    STRB     r0,[r7,#-2]!
        0x20005136:    a812        ..      ADD      r0,sp,#0x48
        0x20005138:    1bc0        ..      SUBS     r0,r0,r7
        0x2000513a:    f1000807    ....    ADD      r8,r0,#7
        0x2000513e:    9814        ..      LDR      r0,[sp,#0x50]
        0x20005140:    7800        .x      LDRB     r0,[r0,#0]
        0x20005142:    b100        ..      CBZ      r0,0x20005146 ; _printf_core + 1570
        0x20005144:    2001        .       MOVS     r0,#1
        0x20005146:    eb00010a    ....    ADD      r1,r0,r10
        0x2000514a:    9801        ..      LDR      r0,[sp,#4]
        0x2000514c:    eb0171e0    ...q    ADD      r1,r1,r0,ASR #31
        0x20005150:    9805        ..      LDR      r0,[sp,#0x14]
        0x20005152:    4441        AD      ADD      r1,r1,r8
        0x20005154:    1a40        @.      SUBS     r0,r0,r1
        0x20005156:    1e40        @.      SUBS     r0,r0,#1
        0x20005158:    9005        ..      STR      r0,[sp,#0x14]
        0x2000515a:    03e0        ..      LSLS     r0,r4,#15
        0x2000515c:    d406        ..      BMI      0x2000516c ; _printf_core + 1608
        0x2000515e:    465b        [F      MOV      r3,r11
        0x20005160:    4621        !F      MOV      r1,r4
        0x20005162:    9a17        ..      LDR      r2,[sp,#0x5c]
        0x20005164:    9805        ..      LDR      r0,[sp,#0x14]
        0x20005166:    f000f85d    ..].    BL       _printf_pre_padding ; 0x20005224
        0x2000516a:    4405        .D      ADD      r5,r5,r0
        0x2000516c:    9814        ..      LDR      r0,[sp,#0x50]
        0x2000516e:    7800        .x      LDRB     r0,[r0,#0]
        0x20005170:    b118        ..      CBZ      r0,0x2000517a ; _printf_core + 1622
        0x20005172:    465a        ZF      MOV      r2,r11
        0x20005174:    9917        ..      LDR      r1,[sp,#0x5c]
        0x20005176:    4790        .G      BLX      r2
        0x20005178:    1c6d        m.      ADDS     r5,r5,#1
        0x2000517a:    03e0        ..      LSLS     r0,r4,#15
        0x2000517c:    d524        $.      BPL      0x200051c8 ; _printf_core + 1700
        0x2000517e:    465b        [F      MOV      r3,r11
        0x20005180:    4621        !F      MOV      r1,r4
        0x20005182:    9a17        ..      LDR      r2,[sp,#0x5c]
        0x20005184:    9805        ..      LDR      r0,[sp,#0x14]
        0x20005186:    f000f84d    ..M.    BL       _printf_pre_padding ; 0x20005224
        0x2000518a:    4405        .D      ADD      r5,r5,r0
        0x2000518c:    e01c        ..      B        0x200051c8 ; _printf_core + 1700
        0x2000518e:    9804        ..      LDR      r0,[sp,#0x10]
        0x20005190:    2800        .(      CMP      r0,#0
        0x20005192:    db07        ..      BLT      0x200051a4 ; _printf_core + 1664
        0x20005194:    e9dd0103    ....    LDRD     r0,r1,[sp,#0xc]
        0x20005198:    4288        .B      CMP      r0,r1
        0x2000519a:    dd03        ..      BLE      0x200051a4 ; _printf_core + 1664
        0x2000519c:    9800        ..      LDR      r0,[sp,#0]
        0x2000519e:    5c40        @\      LDRB     r0,[r0,r1]
        0x200051a0:    9917        ..      LDR      r1,[sp,#0x5c]
        0x200051a2:    e001        ..      B        0x200051a8 ; _printf_core + 1668
        0x200051a4:    9917        ..      LDR      r1,[sp,#0x5c]
        0x200051a6:    2030        0       MOVS     r0,#0x30
        0x200051a8:    465a        ZF      MOV      r2,r11
        0x200051aa:    4790        .G      BLX      r2
        0x200051ac:    9804        ..      LDR      r0,[sp,#0x10]
        0x200051ae:    f1050501    ....    ADD      r5,r5,#1
        0x200051b2:    1c40        @.      ADDS     r0,r0,#1
        0x200051b4:    9004        ..      STR      r0,[sp,#0x10]
        0x200051b6:    9801        ..      LDR      r0,[sp,#4]
        0x200051b8:    1e40        @.      SUBS     r0,r0,#1
        0x200051ba:    9001        ..      STR      r0,[sp,#4]
        0x200051bc:    d104        ..      BNE      0x200051c8 ; _printf_core + 1700
        0x200051be:    202e        .       MOVS     r0,#0x2e
        0x200051c0:    465a        ZF      MOV      r2,r11
        0x200051c2:    9917        ..      LDR      r1,[sp,#0x5c]
        0x200051c4:    4790        .G      BLX      r2
        0x200051c6:    1c6d        m.      ADDS     r5,r5,#1
        0x200051c8:    f1ba0100    ....    SUBS     r1,r10,#0
        0x200051cc:    f1aa0a01    ....    SUB      r10,r10,#1
        0x200051d0:    dcdd        ..      BGT      0x2000518e ; _printf_core + 1642
        0x200051d2:    e005        ..      B        0x200051e0 ; _printf_core + 1724
        0x200051d4:    f8170b01    ....    LDRB     r0,[r7],#1
        0x200051d8:    465a        ZF      MOV      r2,r11
        0x200051da:    9917        ..      LDR      r1,[sp,#0x5c]
        0x200051dc:    4790        .G      BLX      r2
        0x200051de:    1c6d        m.      ADDS     r5,r5,#1
        0x200051e0:    f1b80100    ....    SUBS     r1,r8,#0
        0x200051e4:    f1a80801    ....    SUB      r8,r8,#1
        0x200051e8:    dcf4        ..      BGT      0x200051d4 ; _printf_core + 1712
        0x200051ea:    465b        [F      MOV      r3,r11
        0x200051ec:    4621        !F      MOV      r1,r4
        0x200051ee:    9a17        ..      LDR      r2,[sp,#0x5c]
        0x200051f0:    9805        ..      LDR      r0,[sp,#0x14]
        0x200051f2:    e6ab        ..      B        0x20004f4c ; _printf_core + 1064
    $d
        0x200051f4:    0000002d    -...    DCD    45
        0x200051f8:    0000002b    +...    DCD    43
        0x200051fc:    00000020     ...    DCD    32
    $t
    i._printf_post_padding
    _printf_post_padding
        0x20005200:    e92d41f0    -..A    PUSH     {r4-r8,lr}
        0x20005204:    4604        .F      MOV      r4,r0
        0x20005206:    2500        .%      MOVS     r5,#0
        0x20005208:    461e        .F      MOV      r6,r3
        0x2000520a:    4617        .F      MOV      r7,r2
        0x2000520c:    0488        ..      LSLS     r0,r1,#18
        0x2000520e:    d404        ..      BMI      0x2000521a ; _printf_post_padding + 26
        0x20005210:    e005        ..      B        0x2000521e ; _printf_post_padding + 30
        0x20005212:    4639        9F      MOV      r1,r7
        0x20005214:    2020                MOVS     r0,#0x20
        0x20005216:    47b0        .G      BLX      r6
        0x20005218:    1c6d        m.      ADDS     r5,r5,#1
        0x2000521a:    1e64        d.      SUBS     r4,r4,#1
        0x2000521c:    d5f9        ..      BPL      0x20005212 ; _printf_post_padding + 18
        0x2000521e:    4628        (F      MOV      r0,r5
        0x20005220:    e8bd81f0    ....    POP      {r4-r8,pc}
    i._printf_pre_padding
    _printf_pre_padding
        0x20005224:    e92d41f0    -..A    PUSH     {r4-r8,lr}
        0x20005228:    4604        .F      MOV      r4,r0
        0x2000522a:    2500        .%      MOVS     r5,#0
        0x2000522c:    461e        .F      MOV      r6,r3
        0x2000522e:    4690        .F      MOV      r8,r2
        0x20005230:    03c8        ..      LSLS     r0,r1,#15
        0x20005232:    d501        ..      BPL      0x20005238 ; _printf_pre_padding + 20
        0x20005234:    2730        0'      MOVS     r7,#0x30
        0x20005236:    e000        ..      B        0x2000523a ; _printf_pre_padding + 22
        0x20005238:    2720         '      MOVS     r7,#0x20
        0x2000523a:    0488        ..      LSLS     r0,r1,#18
        0x2000523c:    d504        ..      BPL      0x20005248 ; _printf_pre_padding + 36
        0x2000523e:    e005        ..      B        0x2000524c ; _printf_pre_padding + 40
        0x20005240:    4641        AF      MOV      r1,r8
        0x20005242:    4638        8F      MOV      r0,r7
        0x20005244:    47b0        .G      BLX      r6
        0x20005246:    1c6d        m.      ADDS     r5,r5,#1
        0x20005248:    1e64        d.      SUBS     r4,r4,#1
        0x2000524a:    d5f9        ..      BPL      0x20005240 ; _printf_pre_padding + 28
        0x2000524c:    4628        (F      MOV      r0,r5
        0x2000524e:    e8bd81f0    ....    POP      {r4-r8,pc}
    $d.realdata
    .L.str.35
        0x20005252:    495b        [I      DCW    18779
        0x20005254:    4350564e    NVPC    DCD    1129338446
        0x20005258:    206e615d    ]an     DCD    544104797
        0x2000525c:    65746e69    inte    DCD    1702129257
        0x20005260:    74697267    grit    DCD    1953067623
        0x20005264:    68632079    y ch    DCD    1751326841
        0x20005268:    206b6365    eck     DCD    543908709
        0x2000526c:    6f727265    erro    DCD    1869771365
        0x20005270:    61682072    r ha    DCD    1634214002
        0x20005274:    636f2073    s oc    DCD    1668227187
        0x20005278:    72727563    curr    DCD    1920103779
        0x2000527c:    0a0d6465    ed..    DCD    168649829
        0x20005280:    00          .       DCB    0
    .L.str.33
        0x20005281:    5b554e      [UN     DCB    91,85,78
        0x20005284:    49464544    DEFI    DCD    1229342020
        0x20005288:    5254534e    NSTR    DCD    1381258062
        0x2000528c:    206e615d    ]an     DCD    544104797
        0x20005290:    65646e75    unde    DCD    1701080693
        0x20005294:    656e6966    fine    DCD    1701734758
        0x20005298:    6e692064    d in    DCD    1852383332
        0x2000529c:    75727473    stru    DCD    1970435187
        0x200052a0:    6f697463    ctio    DCD    1869182051
        0x200052a4:    7265206e    n er    DCD    1919230062
        0x200052a8:    20726f72    ror     DCD    544370546
        0x200052ac:    20736168    has     DCD    544432488
        0x200052b0:    7563636f    occu    DCD    1969447791
        0x200052b4:    64657272    rred    DCD    1684370034
        0x200052b8:    0a0d        ..      DCW    2573
        0x200052ba:    00          .       DCB    0
    .L.str.39
        0x200052bb:    5b          [       DCB    91
        0x200052bc:    42564944    DIVB    DCD    1112951108
        0x200052c0:    52455a59    YZER    DCD    1380276825
        0x200052c4:    6e615d4f    O]an    DCD    1851874639
        0x200052c8:    746e6920     int    DCD    1953392928
        0x200052cc:    72656765    eger    DCD    1919248229
        0x200052d0:    76696420     div    DCD    1986618400
        0x200052d4:    6f697369    isio    DCD    1869181801
        0x200052d8:    7962206e    n by    DCD    2036473966
        0x200052dc:    72657a20     zer    DCD    1919253024
        0x200052e0:    7265206f    o er    DCD    1919230063
        0x200052e4:    20726f72    ror     DCD    544370546
        0x200052e8:    20736168    has     DCD    544432488
        0x200052ec:    7563636f    occu    DCD    1969447791
        0x200052f0:    64657272    rred    DCD    1684370034
        0x200052f4:    0a0d        ..      DCW    2573
        0x200052f6:    00          .       DCB    0
    .L.str.28
        0x200052f7:    5b          [       DCB    91
        0x200052f8:    52504d49    IMPR    DCD    1380994377
        0x200052fc:    53494345    ECIS    DCD    1397310277
        0x20005300:    5d525245    ERR]    DCD    1565676101
        0x20005304:    72706d49    Impr    DCD    1919970633
        0x20005308:    73696365    ecis    DCD    1936286565
        0x2000530c:    61642065    e da    DCD    1633951845
        0x20005310:    61206174    ta a    DCD    1629512052
        0x20005314:    73656363    cces    DCD    1936024419
        0x20005318:    72652073    s er    DCD    1919230067
        0x2000531c:    20726f72    ror     DCD    544370546
        0x20005320:    20736168    has     DCD    544432488
        0x20005324:    7563636f    occu    DCD    1969447791
        0x20005328:    64657272    rred    DCD    1684370034
        0x2000532c:    0a0d        ..      DCW    2573
        0x2000532e:    00          .       DCB    0
    .L.str.38
        0x2000532f:    5b          [       DCB    91
        0x20005330:    4c414e55    UNAL    DCD    1279348309
        0x20005334:    454e4749    IGNE    DCD    1162757961
        0x20005338:    6e615d44    D]an    DCD    1851874628
        0x2000533c:    616e7520     una    DCD    1634628896
        0x20005340:    6e67696c    lign    DCD    1852270956
        0x20005344:    61206465    ed a    DCD    1629512805
        0x20005348:    73656363    cces    DCD    1936024419
        0x2000534c:    72652073    s er    DCD    1919230067
        0x20005350:    20726f72    ror     DCD    544370546
        0x20005354:    20736168    has     DCD    544432488
        0x20005358:    7563636f    occu    DCD    1969447791
        0x2000535c:    64657272    rred    DCD    1684370034
        0x20005360:    0a0d        ..      DCW    2573
        0x20005362:    00          .       DCB    0
    .L.str.26
        0x20005363:    5b          [       DCB    91
        0x20005364:    53554249    IBUS    DCD    1398096457
        0x20005368:    5d525245    ERR]    DCD    1565676101
        0x2000536c:    74736e69    inst    DCD    1953721961
        0x20005370:    74637572    ruct    DCD    1952675186
        0x20005374:    206e6f69    ion     DCD    544108393
        0x20005378:    20737562    bus     DCD    544437602
        0x2000537c:    6f727265    erro    DCD    1869771365
        0x20005380:    61682072    r ha    DCD    1634214002
        0x20005384:    636f2073    s oc    DCD    1668227187
        0x20005388:    72727563    curr    DCD    1920103779
        0x2000538c:    0a0d6465    ed..    DCD    168649829
        0x20005390:    00          .       DCB    0
    .L.str.36
        0x20005391:    5b4e4f      [NO     DCB    91,78,79
        0x20005394:    615d5043    CP]a    DCD    1633505347
        0x20005398:    706f6320     cop    DCD    1886348064
        0x2000539c:    65636f72    roce    DCD    1701015410
        0x200053a0:    726f7373    ssor    DCD    1919906675
        0x200053a4:    73696420     dis    DCD    1936286752
        0x200053a8:    656c6261    able    DCD    1701601889
        0x200053ac:    726f2064    d or    DCD    1919885412
        0x200053b0:    746f6e20     not    DCD    1953459744
        0x200053b4:    65727020     pre    DCD    1701998624
        0x200053b8:    746e6573    sent    DCD    1953391987
        0x200053bc:    72726520     err    DCD    1920099616
        0x200053c0:    6820726f    or h    DCD    1746956911
        0x200053c4:    6f207361    as o    DCD    1864397665
        0x200053c8:    72756363    ccur    DCD    1920295779
        0x200053cc:    0d646572    red.    DCD    224683378
        0x200053d0:    000a        ..      DCW    10
    .L.str.37
        0x200053d2:    535b        [S      DCW    21339
        0x200053d4:    464f4b54    TKOF    DCD    1179601748
        0x200053d8:    7320615d    ]a s    DCD    1931501917
        0x200053dc:    6b636174    tack    DCD    1801675124
        0x200053e0:    65766f20     ove    DCD    1702260512
        0x200053e4:    6f6c6672    rflo    DCD    1869375090
        0x200053e8:    72652077    w er    DCD    1919230071
        0x200053ec:    20726f72    ror     DCD    544370546
        0x200053f0:    20736168    has     DCD    544432488
        0x200053f4:    7563636f    occu    DCD    1969447791
        0x200053f8:    64657272    rred    DCD    1684370034
        0x200053fc:    0a0d        ..      DCW    2573
        0x200053fe:    00          .       DCB    0
    .L.str.34
        0x200053ff:    5b          [       DCB    91
        0x20005400:    53564e49    INVS    DCD    1398165065
        0x20005404:    45544154    TATE    DCD    1163149652
        0x20005408:    6e61205d    ] an    DCD    1851859037
        0x2000540c:    53504520     EPS    DCD    1397769504
        0x20005410:    20542e52    R.T     DCD    542387794
        0x20005414:    4520726f    or E    DCD    1159754351
        0x20005418:    2e525350    PSR.    DCD    777147216
        0x2000541c:    76205449    IT v    DCD    1981830217
        0x20005420:    64696c61    alid    DCD    1684630625
        0x20005424:    20797469    ity     DCD    544830569
        0x20005428:    6f727265    erro    DCD    1869771365
        0x2000542c:    61682072    r ha    DCD    1634214002
        0x20005430:    636f2073    s oc    DCD    1668227187
        0x20005434:    72727563    curr    DCD    1920103779
        0x20005438:    0a0d6465    ed..    DCD    168649829
        0x2000543c:    00          .       DCB    0
    .L.str.24
        0x2000543d:    5b4d4c      [ML     DCB    91,77,76
        0x20005440:    52455053    SPER    DCD    1380274259
        0x20005444:    20415d52    R]A     DCD    541154642
        0x20005448:    4d6d654d    MemM    DCD    1299014989
        0x2000544c:    67616e61    anag    DCD    1734438497
        0x20005450:    61662065    e fa    DCD    1634082917
        0x20005454:    20746c75    ult     DCD    544500853
        0x20005458:    7563636f    occu    DCD    1969447791
        0x2000545c:    64657272    rred    DCD    1684370034
        0x20005460:    72756420     dur    DCD    1920295968
        0x20005464:    20676e69    ing     DCD    543649385
        0x20005468:    616f6c66    floa    DCD    1634692198
        0x2000546c:    676e6974    ting    DCD    1735289204
        0x20005470:    696f702d    -poi    DCD    1768910893
        0x20005474:    6c20746e    nt l    DCD    1814066286
        0x20005478:    20797a61    azy     DCD    544832097
        0x2000547c:    74617473    stat    DCD    1952543859
        0x20005480:    72702065    e pr    DCD    1919950949
        0x20005484:    72657365    eser    DCD    1919251301
        0x20005488:    69746176    vati    DCD    1769234806
        0x2000548c:    0a0d6e6f    on..    DCD    168652399
        0x20005490:    00          .       DCB    0
    .L.str.31
        0x20005491:    5b4c53      [LS     DCB    91,76,83
        0x20005494:    52524550    PERR    DCD    1381123408
        0x20005498:    6220415d    ]A b    DCD    1646281053
        0x2000549c:    66207375    us f    DCD    1713402741
        0x200054a0:    746c7561    ault    DCD    1953264993
        0x200054a4:    63636f20     occ    DCD    1667460896
        0x200054a8:    65727275    urre    DCD    1701999221
        0x200054ac:    75642064    d du    DCD    1969496164
        0x200054b0:    676e6972    ring    DCD    1735289202
        0x200054b4:    6f6c6620     flo    DCD    1869375008
        0x200054b8:    6e697461    atin    DCD    1852404833
        0x200054bc:    6f702d67    g-po    DCD    1869622631
        0x200054c0:    20746e69    int     DCD    544501353
        0x200054c4:    797a616c    lazy    DCD    2038063468
        0x200054c8:    61747320     sta    DCD    1635021600
        0x200054cc:    70206574    te p    DCD    1881171316
        0x200054d0:    65736572    rese    DCD    1702061426
        0x200054d4:    74617672    rvat    DCD    1952544370
        0x200054d8:    0d6e6f69    ion.    DCD    225341289
        0x200054dc:    000a        ..      DCW    10
    .L.str.22
        0x200054de:    4d5b        [M      DCW    19803
        0x200054e0:    54534e55    UNST    DCD    1414745685
        0x200054e4:    5252454b    KERR    DCD    1381123403
        0x200054e8:    736e555d    ]Uns    DCD    1936610653
        0x200054ec:    6b636174    tack    DCD    1801675124
        0x200054f0:    726f6620     for    DCD    1919903264
        0x200054f4:    206e6120     an     DCD    544104736
        0x200054f8:    65637865    exce    DCD    1701017701
        0x200054fc:    6f697470    ptio    DCD    1869182064
        0x20005500:    6572206e    n re    DCD    1701978222
        0x20005504:    6e727574    turn    DCD    1852994932
        0x20005508:    73616820     has    DCD    1935763488
        0x2000550c:    75616320     cau    DCD    1969316640
        0x20005510:    20646573    sed     DCD    543450483
        0x20005514:    20656e6f    one     DCD    543518319
        0x20005518:    6d20726f    or m    DCD    1830842991
        0x2000551c:    2065726f    ore     DCD    543519343
        0x20005520:    65636361    acce    DCD    1701012321
        0x20005524:    76207373    ss v    DCD    1981838195
        0x20005528:    616c6f69    iola    DCD    1634496361
        0x2000552c:    6e6f6974    tion    DCD    1852795252
        0x20005530:    000a0d73    s...    DCD    658803
    .L.str.23
        0x20005534:    54534d5b    [MST    DCD    1414745435
        0x20005538:    5252454b    KERR    DCD    1381123403
        0x2000553c:    6174535d    ]Sta    DCD    1635013469
        0x20005540:    6e696b63    ckin    DCD    1852402531
        0x20005544:    6f662067    g fo    DCD    1868963943
        0x20005548:    6e612072    r an    DCD    1851859058
        0x2000554c:    63786520     exc    DCD    1668834592
        0x20005550:    69747065    epti    DCD    1769238629
        0x20005554:    65206e6f    on e    DCD    1696624239
        0x20005558:    7972746e    ntry    DCD    2037544046
        0x2000555c:    73616820     has    DCD    1935763488
        0x20005560:    75616320     cau    DCD    1969316640
        0x20005564:    20646573    sed     DCD    543450483
        0x20005568:    20656e6f    one     DCD    543518319
        0x2000556c:    6d20726f    or m    DCD    1830842991
        0x20005570:    2065726f    ore     DCD    543519343
        0x20005574:    65636361    acce    DCD    1701012321
        0x20005578:    76207373    ss v    DCD    1981838195
        0x2000557c:    616c6f69    iola    DCD    1634496361
        0x20005580:    6e6f6974    tion    DCD    1852795252
        0x20005584:    000a0d73    s...    DCD    658803
    .L.str.29
        0x20005588:    534e555b    [UNS    DCD    1397642587
        0x2000558c:    52454b54    TKER    DCD    1380272980
        0x20005590:    6e555d52    R]Un    DCD    1851088210
        0x20005594:    63617473    stac    DCD    1667331187
        0x20005598:    6f66206b    k fo    DCD    1868963947
        0x2000559c:    6e612072    r an    DCD    1851859058
        0x200055a0:    63786520     exc    DCD    1668834592
        0x200055a4:    69747065    epti    DCD    1769238629
        0x200055a8:    72206e6f    on r    DCD    1914728047
        0x200055ac:    72757465    etur    DCD    1920300133
        0x200055b0:    6168206e    n ha    DCD    1634213998
        0x200055b4:    61632073    s ca    DCD    1633886323
        0x200055b8:    64657375    used    DCD    1684370293
        0x200055bc:    656e6f20     one    DCD    1701736224
        0x200055c0:    20726f20     or     DCD    544370464
        0x200055c4:    65726f6d    more    DCD    1701998445
        0x200055c8:    73754220     Bus    DCD    1937064480
        0x200055cc:    6c756146    Faul    DCD    1819631942
        0x200055d0:    0a0d7374    ts..    DCD    168653684
        0x200055d4:    00          .       DCB    0
    .L.str.30
        0x200055d5:    5b5354      [ST     DCB    91,83,84
        0x200055d8:    5252454b    KERR    DCD    1381123403
        0x200055dc:    6174535d    ]Sta    DCD    1635013469
        0x200055e0:    6e696b63    ckin    DCD    1852402531
        0x200055e4:    6f662067    g fo    DCD    1868963943
        0x200055e8:    6e612072    r an    DCD    1851859058
        0x200055ec:    63786520     exc    DCD    1668834592
        0x200055f0:    69747065    epti    DCD    1769238629
        0x200055f4:    65206e6f    on e    DCD    1696624239
        0x200055f8:    7972746e    ntry    DCD    2037544046
        0x200055fc:    73616820     has    DCD    1935763488
        0x20005600:    75616320     cau    DCD    1969316640
        0x20005604:    20646573    sed     DCD    543450483
        0x20005608:    20656e6f    one     DCD    543518319
        0x2000560c:    6d20726f    or m    DCD    1830842991
        0x20005610:    2065726f    ore     DCD    543519343
        0x20005614:    46737542    BusF    DCD    1181971778
        0x20005618:    746c7561    ault    DCD    1953264993
        0x2000561c:    000a0d73    s...    DCD    658803
    .L.str.18
        0x20005620:    4d6d654d    MemM    DCD    1299014989
        0x20005624:    67616e61    anag    DCD    1734438497
        0x20005628:    61462065    e Fa    DCD    1631985765
        0x2000562c:    0d746c75    ult.    DCD    225733749
        0x20005630:    000a        ..      DCW    10
    .L.str.32
        0x20005632:    7355        Us      DCW    29525
        0x20005634:    20656761    age     DCD    543516513
        0x20005638:    6c756146    Faul    DCD    1819631942
        0x2000563c:    000a0d74    t...    DCD    658804
    .L.str.17
        0x20005640:    666e6f43    Conf    DCD    1718513475
        0x20005644:    72756769    igur    DCD    1920296809
        0x20005648:    656c6261    able    DCD    1701601889
        0x2000564c:    75614620     Fau    DCD    1969309216
        0x20005650:    0a0d746c    lt..    DCD    168653932
        0x20005654:    00          .       DCB    0
    .L.str.15
        0x20005655:    566563      Vec     DCB    86,101,99
        0x20005658:    20726f74    tor     DCD    544370548
        0x2000565c:    6c756146    Faul    DCD    1819631942
        0x20005660:    000a0d74    t...    DCD    658804
    .L.str.25
        0x20005664:    20737542    Bus     DCD    544437570
        0x20005668:    6c756146    Faul    DCD    1819631942
        0x2000566c:    000a0d74    t...    DCD    658804
    .L.str.16
        0x20005670:    75626544    Debu    DCD    1969382724
        0x20005674:    76452067    g Ev    DCD    1984241767
        0x20005678:    20746e65    ent     DCD    544501349
        0x2000567c:    6c756146    Faul    DCD    1819631942
        0x20005680:    000a0d74    t...    DCD    658804
    .L.str.27
        0x20005684:    4552505b    [PRE    DCD    1163022427
        0x20005688:    45534943    CISE    DCD    1163086147
        0x2000568c:    205d5252    RR]     DCD    542986834
        0x20005690:    61746164    data    DCD    1635017060
        0x20005694:    73756220     bus    DCD    1937072672
        0x20005698:    72726520     err    DCD    1920099616
        0x2000569c:    6820726f    or h    DCD    1746956911
        0x200056a0:    6f207361    as o    DCD    1864397665
        0x200056a4:    72756363    ccur    DCD    1920295779
        0x200056a8:    2c646572    red,    DCD    744777074
        0x200056ac:    20435020     PC     DCD    541282336
        0x200056b0:    7830203a    : 0x    DCD    2016419898
        0x200056b4:    78383025    %08x    DCD    2016948261
        0x200056b8:    0a0d        ..      DCW    2573
        0x200056ba:    00          .       DCB    0
    .L.str.20
        0x200056bb:    5b          [       DCB    91
        0x200056bc:    43434144    DACC    DCD    1128481092
        0x200056c0:    4c4f4956    VIOL    DCD    1280264534
        0x200056c4:    6854205d    ] Th    DCD    1750343773
        0x200056c8:    72702065    e pr    DCD    1919950949
        0x200056cc:    7365636f    oces    DCD    1936024431
        0x200056d0:    20726f73    sor     DCD    544370547
        0x200056d4:    65747461    atte    DCD    1702130785
        0x200056d8:    6574706d    mpte    DCD    1702129773
        0x200056dc:    20612064    d a     DCD    543236196
        0x200056e0:    64616f6c    load    DCD    1684107116
        0x200056e4:    20726f20     or     DCD    544370464
        0x200056e8:    726f7473    stor    DCD    1919906931
        0x200056ec:    74612065    e at    DCD    1952522341
        0x200056f0:    6c206120     a l    DCD    1814061344
        0x200056f4:    7461636f    ocat    DCD    1952539503
        0x200056f8:    206e6f69    ion     DCD    544108393
        0x200056fc:    74616874    that    DCD    1952540788
        0x20005700:    656f6420     doe    DCD    1701798944
        0x20005704:    6f6e2073    s no    DCD    1869488243
        0x20005708:    65702074    t pe    DCD    1701847156
        0x2000570c:    74696d72    rmit    DCD    1953066354
        0x20005710:    65687420     the    DCD    1701344288
        0x20005714:    65706f20     ope    DCD    1701867296
        0x20005718:    69746172    rati    DCD    1769234802
        0x2000571c:    202c6e6f    on,     DCD    539782767
        0x20005720:    3a204350    PC :    DCD    975192912
        0x20005724:    25783020     0x%    DCD    628633632
        0x20005728:    0d783830    08x.    DCD    225982512
        0x2000572c:    000a        ..      DCW    10
    .L.str.19
        0x2000572e:    495b        [I      DCW    18779
        0x20005730:    56434341    ACCV    DCD    1447248705
        0x20005734:    5d4c4f49    IOL]    DCD    1565282121
        0x20005738:    20656854    The     DCD    543516756
        0x2000573c:    636f7270    proc    DCD    1668248176
        0x20005740:    6f737365    esso    DCD    1869837157
        0x20005744:    74612072    r at    DCD    1952522354
        0x20005748:    706d6574    temp    DCD    1886217588
        0x2000574c:    20646574    ted     DCD    543450484
        0x20005750:    69206e61    an i    DCD    1763733089
        0x20005754:    7274736e    nstr    DCD    1920234350
        0x20005758:    69746375    ucti    DCD    1769235317
        0x2000575c:    66206e6f    on f    DCD    1713401455
        0x20005760:    68637465    etch    DCD    1751348325
        0x20005764:    6f726620     fro    DCD    1869768224
        0x20005768:    2061206d    m a     DCD    543236205
        0x2000576c:    61636f6c    loca    DCD    1633906540
        0x20005770:    6e6f6974    tion    DCD    1852795252
        0x20005774:    61687420     tha    DCD    1634235424
        0x20005778:    6f642074    t do    DCD    1868832884
        0x2000577c:    6e207365    es n    DCD    1847620453
        0x20005780:    7020746f    ot p    DCD    1881175151
        0x20005784:    696d7265    ermi    DCD    1768780389
        0x20005788:    78652074    t ex    DCD    2019893364
        0x2000578c:    74756365    ecut    DCD    1953850213
        0x20005790:    2c6e6f69    ion,    DCD    745434985
        0x20005794:    20435020     PC     DCD    541282336
        0x20005798:    7830203a    : 0x    DCD    2016419898
        0x2000579c:    78383025    %08x    DCD    2016948261
        0x200057a0:    0a0d        ..      DCW    2573
        0x200057a2:    00          .       DCB    0
    .L.str.21
        0x200057a3:    41          A       DCB    65
        0x200057a4:    303a2054    T :0    DCD    809115732
        0x200057a8:    38302578    x%08    DCD    942679416
        0x200057ac:    78          x       DCB    120
    .L.str.2
        0x200057ad:    0d0a00      ...     DCB    13,10,0
    .L.str.2
        0x200057b0:    7563634f    Occu    DCD    1969447759
        0x200057b4:    20646572    red     DCD    543450482
        0x200057b8:    74206e69    in t    DCD    1948282473
        0x200057bc:    2e6b7361    ask.    DCD    778793825
        0x200057c0:    000a        ..      DCW    10
    .L.str.5
        0x200057c2:    7355        Us      DCW    29525
        0x200057c4:    20676e69    ing     DCD    543649385
        0x200057c8:    4d323375    u32M    DCD    1295135605
        0x200057cc:    0a2e7073    sp..    DCD    170815603
        0x200057d0:    00          .       DCB    0
    .L.str.4
        0x200057d1:    557369      Usi     DCB    85,115,105
        0x200057d4:    7520676e    ng u    DCD    1965057902
        0x200057d8:    73503233    32Ps    DCD    1934635571
        0x200057dc:    000a2e70    p...    DCD    667248
    .L.str.3
        0x200057e0:    7563634f    Occu    DCD    1969447759
        0x200057e4:    20646572    red     DCD    543450482
        0x200057e8:    69206e69    in i    DCD    1763733097
        0x200057ec:    7265746e    nter    DCD    1919251566
        0x200057f0:    74707572    rupt    DCD    1953527154
        0x200057f4:    0a2e        ..      DCW    2606
        0x200057f6:    00          .       DCB    0
    .L.str.6
        0x200057f7:    53          S       DCB    83
        0x200057f8:    6b636174    tack    DCD    1801675124
        0x200057fc:    61726620     fra    DCD    1634887200
        0x20005800:    0a3a656d    me:.    DCD    171599213
        0x20005804:    00          .       DCB    0
    .L.str
        0x20005805:    4e4d49      NMI     DCB    78,77,73
        0x20005808:    6e61485f    _Han    DCD    1851869279
        0x2000580c:    72656c64    dler    DCD    1919249508
        0x20005810:    3025203a    : %0    DCD    807739450
        0x20005814:    202c5838    8X,     DCD    539777080
        0x20005818:    58383025    %08X    DCD    1480077349
        0x2000581c:    3025202c    , %0    DCD    807739436
        0x20005820:    000a5838    8X..    DCD    677944
    .L.str.7
        0x20005824:    20203052    R0      DCD    538980434
        0x20005828:    7830203a    : 0x    DCD    2016419898
        0x2000582c:    58383025    %08X    DCD    1480077349
        0x20005830:    000a        ..      DCW    10
    .L.str.8
        0x20005832:    3152        R1      DCW    12626
        0x20005834:    203a2020      :     DCD    540680224
        0x20005838:    30257830    0x%0    DCD    807761968
        0x2000583c:    000a5838    8X..    DCD    677944
    .L.str.9
        0x20005840:    20203252    R2      DCD    538980946
        0x20005844:    7830203a    : 0x    DCD    2016419898
        0x20005848:    58383025    %08X    DCD    1480077349
        0x2000584c:    000a        ..      DCW    10
    .L.str.10
        0x2000584e:    3352        R3      DCW    13138
        0x20005850:    203a2020      :     DCD    540680224
        0x20005854:    30257830    0x%0    DCD    807761968
        0x20005858:    000a5838    8X..    DCD    677944
    .L.str.13
        0x2000585c:    20204350    PC      DCD    538985296
        0x20005860:    7830203a    : 0x    DCD    2016419898
        0x20005864:    58383025    %08X    DCD    1480077349
        0x20005868:    000a        ..      DCW    10
    .L.str.12
        0x2000586a:    524c        LR      DCW    21068
        0x2000586c:    203a2020      :     DCD    540680224
        0x20005870:    30257830    0x%0    DCD    807761968
        0x20005874:    000a5838    8X..    DCD    677944
    .L.str.11
        0x20005878:    20323152    R12     DCD    540160338
        0x2000587c:    7830203a    : 0x    DCD    2016419898
        0x20005880:    58383025    %08X    DCD    1480077349
        0x20005884:    000a        ..      DCW    10
    .L.str.14
        0x20005886:    5078        xP      DCW    20600
        0x20005888:    203a5253    SR:     DCD    540693075
        0x2000588c:    30257830    0x%0    DCD    807761968
        0x20005890:    000a5838    8X..    DCD    677944
    .L.str.1
        0x20005894:    7261485b    [Har    DCD    1918978139
        0x20005898:    75614664    dFau    DCD    1969309284
        0x2000589c:    485f746c    lt_H    DCD    1214215276
        0x200058a0:    6c646e61    andl    DCD    1818521185
        0x200058a4:    435d7265    er]C    DCD    1130197605
        0x200058a8:    65727275    urre    DCD    1701999221
        0x200058ac:    6d20746e    nt m    DCD    1830843502
        0x200058b0:    203a7073    sp:     DCD    540700787
        0x200058b4:    30257830    0x%0    DCD    807761968
        0x200058b8:    000a5838    8X..    DCD    677944
    .L.str.40
    .L.str.4
        0x200058bc:    2073255b    [%s     DCD    544417115
        0x200058c0:    73252054    T %s    DCD    1931812948
        0x200058c4:    4950535d    ]SPI    DCD    1230000989
        0x200058c8:    6520         e      DCW    25888
        0x200058ca:    78          x       DCB    120
    .L.str.41
        0x200058cb:    61          a       DCB    97
        0x200058cc:    656c706d    mple    DCD    1701605485
        0x200058d0:    646f6320     cod    DCD    1685021472
        0x200058d4:    74732065    e st    DCD    1953701989
        0x200058d8:    20747261    art     DCD    544502369
        0x200058dc:    6f74        to      DCW    28532
    .L.str.42
        0x200058de:    7720         w      DCW    30496
        0x200058e0:    2e6b726f    ork.    DCD    778793583
        0x200058e4:    000a        ..      DCW    10
    .L.str.8
        0x200058e6:    6e65        en      DCW    28261
        0x200058e8:    20746552    Ret     DCD    544499026
        0x200058ec:    6425203a    : %d    DCD    1680154682
        0x200058f0:    0a          .       DCB    10
    .L.str.43
        0x200058f1:    00          .       DCB    0
    .L.str.7
        0x200058f2:    614d        Ma      DCW    24909
        0x200058f4:    72657473    ster    DCD    1919251571
        0x200058f8:    61725420     Tra    DCD    1634882592
        0x200058fc:    736e        ns      DCW    29550
        0x200058fe:    6d          m       DCB    109
    .L.str.44
        0x200058ff:    69          i       DCB    105
        0x20005900:    61462074    t Fa    DCD    1631985780
        0x20005904:    64656c69    iled    DCD    1684368489
        0x20005908:    000a        ..      DCW    10
    .L.str.3
        0x2000590a:    6c53        Sl      DCW    27731
        0x2000590c:    61          a       DCB    97
    .L.str.45
        0x2000590d:    766520      ve      DCB    118,101,32
        0x20005910:    4f207854    Tx O    DCD    1327528020
        0x20005914:    4c20656e    ne L    DCD    1277191534
        0x20005918:    0a706f6f    oop.    DCD    175140719
        0x2000591c:    00          .       DCB    0
    .L.str
        0x2000591d:    536c61      Sla     DCB    83,108,97
        0x20005920:    6576        ve      DCW    25974
    .L.str.46
        0x20005922:    5220         R      DCW    21024
        0x20005924:    69656365    ecei    DCD    1768252261
        0x20005928:    3a206576    ve :    DCD    975201654
        0x2000592c:    0020         .      DCW    32
    .L.str.9
        0x2000592e:    614d        Ma      DCW    24909
        0x20005930:    72657473    ster    DCD    1919251571
        0x20005934:    63655220     Rec    DCD    1667584544
        0x20005938:    65766965    eive    DCD    1702259045
        0x2000593c:    00203a20     : .    DCD    2112032
    .L.str.1
        0x20005940:    25          %       DCB    37
    .L.str.47
        0x20005941:    642000      d .     DCB    100,32,0
    .L.str.6
        0x20005944:    353a3331    13:5    DCD    893006641
        0x20005948:    31303a35    5:01    DCD    825244213
        0x2000594c:    00          .       DCB    0
    .L.str.5
        0x2000594d:    4a756c      Jul     DCB    74,117,108
        0x20005950:    20383220     28     DCD    540553760
        0x20005954:    36323032    2026    DCD    909258802
        0x20005958:    00000000    ....    DCD    0

** Section #5 'RAM_DATA' (SHT_PROGBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 4 bytes (alignment 4)
    Address: 0x2000b000


** Section #6 'RAM_DATA' (SHT_NOBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 124 bytes (alignment 4)
    Address: 0x2000b004


** Section #7 'RAM_STACK_HEAP' (SHT_NOBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 4096 bytes (alignment 8)
    Address: 0x2000f000


** Section #8 '.debug_abbrev' (SHT_PROGBITS)
    Size   : 1647 bytes


** Section #9 '.debug_frame' (SHT_PROGBITS)
    Size   : 3100 bytes


** Section #10 '.debug_info' (SHT_PROGBITS)
    Size   : 14461 bytes


** Section #11 '.debug_line' (SHT_PROGBITS)
    Size   : 5167 bytes


** Section #12 '.debug_loc' (SHT_PROGBITS)
    Size   : 235 bytes


** Section #13 '.debug_str' (SHT_PROGBITS)
    Size   : 17356 bytes


** Section #14 '.debug_ranges' (SHT_PROGBITS)
    Size   : 272 bytes


** Section #15 '.symtab' (SHT_SYMTAB)
    Size   : 18800 bytes (alignment 4)
    String table #16 '.strtab'
    Last local symbol no. 183


** Section #16 '.strtab' (SHT_STRTAB)
    Size   : 27124 bytes


** Section #17 '.note' (SHT_NOTE)
    Size   : 44 bytes (alignment 4)


** Section #18 '.comment' (SHT_PROGBITS)
    Size   : 1352 bytes


** Section #19 '.shstrtab' (SHT_STRTAB)
    Size   : 192 bytes


