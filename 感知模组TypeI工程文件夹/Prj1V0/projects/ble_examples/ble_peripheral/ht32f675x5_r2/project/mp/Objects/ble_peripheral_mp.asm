
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

    Image Entry point: 0x100021b5
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
    Section header entries: 22

    Program header offset: 152076 (0x0002520c)
    Section header offset: 152140 (0x0002524c)

    Section header string table index: 21

========================================================================

** Program header #0 (PT_LOAD) [PF_R]
    Size : 4096 bytes
    Virtual address: 0x10000000 (Alignment 4)


====================================

** Program header #1 (PT_LOAD) [PF_X + PF_W + PF_R + PF_ARM_ENTRY]
    Size : 43208 bytes (30148 bytes in file)
    Virtual address: 0x10002000 (Alignment 512)


========================================================================

** Section #1 'BOOT2_CODE' (SHT_PROGBITS) [SHF_ALLOC]
    Size   : 4096 bytes
    Address: 0x10000000


** Section #2 'APP_CODE' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 784 bytes (alignment 4)
    Address: 0x10002000

    $d.realdata
    RESET
    __Vectors
        0x10002000:    20027000    .p.     DCD    537030656
        0x10002004:    100021b5    .!..    DCD    268444085
        0x10002008:    100021c9    .!..    DCD    268444105
        0x1000200c:    100021db    .!..    DCD    268444123
        0x10002010:    100021ed    .!..    DCD    268444141
        0x10002014:    100021ef    .!..    DCD    268444143
        0x10002018:    100021f1    .!..    DCD    268444145
        0x1000201c:    00000000    ....    DCD    0
        0x10002020:    00000000    ....    DCD    0
        0x10002024:    00000000    ....    DCD    0
        0x10002028:    00000000    ....    DCD    0
        0x1000202c:    000002d1    ....    DCD    721
        0x10002030:    100021f5    .!..    DCD    268444149
        0x10002034:    00000000    ....    DCD    0
        0x10002038:    00000375    u...    DCD    885
        0x1000203c:    00000381    ....    DCD    897
        0x10002040:    100021fb    .!..    DCD    268444155
        0x10002044:    100021fd    .!..    DCD    268444157
        0x10002048:    100021ff    .!..    DCD    268444159
        0x1000204c:    10002201    ."..    DCD    268444161
        0x10002050:    10002203    ."..    DCD    268444163
        0x10002054:    10002205    ."..    DCD    268444165
        0x10002058:    10002207    ."..    DCD    268444167
        0x1000205c:    10002209    ."..    DCD    268444169
        0x10002060:    1000220b    ."..    DCD    268444171
        0x10002064:    1000220d    ."..    DCD    268444173
        0x10002068:    1000220f    ."..    DCD    268444175
        0x1000206c:    10002211    ."..    DCD    268444177
        0x10002070:    10002213    ."..    DCD    268444179
        0x10002074:    10002215    ."..    DCD    268444181
        0x10002078:    10002217    ."..    DCD    268444183
        0x1000207c:    10002219    ."..    DCD    268444185
        0x10002080:    1000221b    ."..    DCD    268444187
        0x10002084:    1000221d    ."..    DCD    268444189
        0x10002088:    1000221f    ."..    DCD    268444191
        0x1000208c:    10002221    !"..    DCD    268444193
        0x10002090:    10002223    #"..    DCD    268444195
        0x10002094:    10002225    %"..    DCD    268444197
        0x10002098:    10002227    '"..    DCD    268444199
        0x1000209c:    10002229    )"..    DCD    268444201
        0x100020a0:    1000222b    +"..    DCD    268444203
        0x100020a4:    1000222d    -"..    DCD    268444205
        0x100020a8:    1000222f    /"..    DCD    268444207
        0x100020ac:    10002231    1"..    DCD    268444209
        0x100020b0:    10002233    3"..    DCD    268444211
        0x100020b4:    10002235    5"..    DCD    268444213
        0x100020b8:    10002237    7"..    DCD    268444215
        0x100020bc:    10002239    9"..    DCD    268444217
        0x100020c0:    1000223b    ;"..    DCD    268444219
        0x100020c4:    1000223d    ="..    DCD    268444221
        0x100020c8:    1000223f    ?"..    DCD    268444223
        0x100020cc:    10002241    A"..    DCD    268444225
        0x100020d0:    10002243    C"..    DCD    268444227
        0x100020d4:    10002245    E"..    DCD    268444229
        0x100020d8:    10002247    G"..    DCD    268444231
        0x100020dc:    10002249    I"..    DCD    268444233
        0x100020e0:    1000224b    K"..    DCD    268444235
        0x100020e4:    1000224d    M"..    DCD    268444237
        0x100020e8:    1000224f    O"..    DCD    268444239
        0x100020ec:    10002251    Q"..    DCD    268444241
        0x100020f0:    10002253    S"..    DCD    268444243
        0x100020f4:    10002255    U"..    DCD    268444245
        0x100020f8:    10002257    W"..    DCD    268444247
        0x100020fc:    10002259    Y"..    DCD    268444249
        0x10002100:    1000225b    ["..    DCD    268444251
        0x10002104:    1000225d    ]"..    DCD    268444253
        0x10002108:    1000225f    _"..    DCD    268444255
        0x1000210c:    10002261    a"..    DCD    268444257
        0x10002110:    10002263    c"..    DCD    268444259
        0x10002114:    10002265    e"..    DCD    268444261
        0x10002118:    10002267    g"..    DCD    268444263
        0x1000211c:    10002269    i"..    DCD    268444265
        0x10002120:    1000226b    k"..    DCD    268444267
        0x10002124:    1000226d    m"..    DCD    268444269
        0x10002128:    1000226f    o"..    DCD    268444271
        0x1000212c:    00000000    ....    DCD    0
        0x10002130:    00000000    ....    DCD    0
        0x10002134:    00000000    ....    DCD    0
        0x10002138:    00000000    ....    DCD    0
        0x1000213c:    00000000    ....    DCD    0
    $t
    !!!main
    __Vectors_End
    __main
        0x10002140:    f000f802    ....    BL       __scatterload ; 0x10002148
        0x10002144:    f000f904    ....    BL       __rt_entry ; 0x10002350
    !!!scatter
    __scatterload
    __scatterload_rt2
    __scatterload_rt2_thumb_only
        0x10002148:    a00a        ..      ADR      r0,{pc}+0x2c ; 0x10002174
        0x1000214a:    e8900c00    ....    LDM      r0,{r10,r11}
        0x1000214e:    4482        .D      ADD      r10,r10,r0
        0x10002150:    4483        .D      ADD      r11,r11,r0
        0x10002152:    f1aa0701    ....    SUB      r7,r10,#1
    __scatterload_null
        0x10002156:    45da        .E      CMP      r10,r11
        0x10002158:    d101        ..      BNE      0x1000215e ; __scatterload_null + 8
        0x1000215a:    f000f8f9    ....    BL       __rt_entry ; 0x10002350
        0x1000215e:    f2af0e09    ....    ADR      lr,{pc}-7 ; 0x10002157
        0x10002162:    e8ba000f    ....    LDM      r10!,{r0-r3}
        0x10002166:    f0130f01    ....    TST      r3,#1
        0x1000216a:    bf18        ..      IT       NE
        0x1000216c:    1afb        ..      SUBNE    r3,r7,r3
        0x1000216e:    f0430301    C...    ORR      r3,r3,#1
        0x10002172:    4718        .G      BX       r3
    $d
        0x10002174:    0000015c    \...    DCD    348
        0x10002178:    0000019c    ....    DCD    412
    $t
    !!handler_copy
    __scatterload_copy
        0x1000217c:    3a10        .:      SUBS     r2,r2,#0x10
        0x1000217e:    bf24        $.      ITT      CS
        0x10002180:    c878        x.      LDMCS    r0!,{r3-r6}
        0x10002182:    c178        x.      STMCS    r1!,{r3-r6}
        0x10002184:    d8fa        ..      BHI      __scatterload_copy ; 0x1000217c
        0x10002186:    0752        R.      LSLS     r2,r2,#29
        0x10002188:    bf24        $.      ITT      CS
        0x1000218a:    c830        0.      LDMCS    r0!,{r4,r5}
        0x1000218c:    c130        0.      STMCS    r1!,{r4,r5}
        0x1000218e:    bf44        D.      ITT      MI
        0x10002190:    6804        .h      LDRMI    r4,[r0,#0]
        0x10002192:    600c        .`      STRMI    r4,[r1,#0]
        0x10002194:    4770        pG      BX       lr
        0x10002196:    0000        ..      MOVS     r0,r0
    !!handler_zi
    __scatterload_zeroinit
        0x10002198:    2300        .#      MOVS     r3,#0
        0x1000219a:    2400        .$      MOVS     r4,#0
        0x1000219c:    2500        .%      MOVS     r5,#0
        0x1000219e:    2600        .&      MOVS     r6,#0
        0x100021a0:    3a10        .:      SUBS     r2,r2,#0x10
        0x100021a2:    bf28        (.      IT       CS
        0x100021a4:    c178        x.      STMCS    r1!,{r3-r6}
        0x100021a6:    d8fb        ..      BHI      0x100021a0 ; __scatterload_zeroinit + 8
        0x100021a8:    0752        R.      LSLS     r2,r2,#29
        0x100021aa:    bf28        (.      IT       CS
        0x100021ac:    c130        0.      STMCS    r1!,{r4,r5}
        0x100021ae:    bf48        H.      IT       MI
        0x100021b0:    600b        .`      STRMI    r3,[r1,#0]
        0x100021b2:    4770        pG      BX       lr
    .text
    $v0
    Reset_Handler
        0x100021b4:    482e        .H      LDR      r0,[pc,#184] ; [0x10002270] = 0x20027000
        0x100021b6:    f3808808    ....    MSR      MSP,r0
        0x100021ba:    482e        .H      LDR      r0,[pc,#184] ; [0x10002274] = 0x20026000
        0x100021bc:    f380880a    ....    MSR      MSPLIM,r0
        0x100021c0:    482d        -H      LDR      r0,[pc,#180] ; [0x10002278] = 0x10002289
        0x100021c2:    4780        .G      BLX      r0
        0x100021c4:    482d        -H      LDR      r0,[pc,#180] ; [0x1000227c] = 0x10002141
        0x100021c6:    4700        .G      BX       r0
    NMI_Handler
        0x100021c8:    ea5f000e    _...    MOVS     r0,lr
        0x100021cc:    f3ef8108    ....    MRS      r1,MSP
        0x100021d0:    f3ef8209    ....    MRS      r2,PSP
        0x100021d4:    4b2a        *K      LDR      r3,[pc,#168] ; [0x10002280] = 0x100033d5
        0x100021d6:    4798        .G      BLX      r3
        0x100021d8:    e7fe        ..      B        0x100021d8 ; NMI_Handler + 16
    HardFault_Handler
        0x100021da:    ea5f000e    _...    MOVS     r0,lr
        0x100021de:    f3ef8108    ....    MRS      r1,MSP
        0x100021e2:    f3ef8209    ....    MRS      r2,PSP
        0x100021e6:    4b27        'K      LDR      r3,[pc,#156] ; [0x10002284] = 0x100030a5
        0x100021e8:    4798        .G      BLX      r3
        0x100021ea:    e7fe        ..      B        0x100021ea ; HardFault_Handler + 16
    MemoryManagement_Handler
        0x100021ec:    e7fe        ..      B        MemoryManagement_Handler ; 0x100021ec
    BusFault_Handler
        0x100021ee:    e7fe        ..      B        BusFault_Handler ; 0x100021ee
    UsageFault_Handler
        0x100021f0:    e7fe        ..      B        UsageFault_Handler ; 0x100021f0
        0x100021f2:    e7fe        ..      B        0x100021f2 ; UsageFault_Handler + 2
    DebugMon_Handler
        0x100021f4:    e7fe        ..      B        DebugMon_Handler ; 0x100021f4
        0x100021f6:    e7fe        ..      B        0x100021f6 ; DebugMon_Handler + 2
        0x100021f8:    e7fe        ..      B        0x100021f8 ; DebugMon_Handler + 4
    RTC_CH0_IRQ_Handler
        0x100021fa:    e7fe        ..      B        RTC_CH0_IRQ_Handler ; 0x100021fa
    GPADC0_IRQ_Handler
        0x100021fc:    e7fe        ..      B        GPADC0_IRQ_Handler ; 0x100021fc
    LLC_IRQ_Handler
        0x100021fe:    e7fe        ..      B        LLC_IRQ_Handler ; 0x100021fe
    I2S_IRQ_Handler
        0x10002200:    e7fe        ..      B        I2S_IRQ_Handler ; 0x10002200
    QDEC_IRQ_Handler
        0x10002202:    e7fe        ..      B        QDEC_IRQ_Handler ; 0x10002202
    AUDIO0_IRQ_Handler
        0x10002204:    e7fe        ..      B        AUDIO0_IRQ_Handler ; 0x10002204
    CRYPT0_IRQ_Handler
        0x10002206:    e7fe        ..      B        CRYPT0_IRQ_Handler ; 0x10002206
    TRNG_IRQ_Handler
        0x10002208:    e7fe        ..      B        TRNG_IRQ_Handler ; 0x10002208
    RF_CAL_IRQ_Handler
        0x1000220a:    e7fe        ..      B        RF_CAL_IRQ_Handler ; 0x1000220a
    UART0_IRQ_Handler
        0x1000220c:    e7fe        ..      B        UART0_IRQ_Handler ; 0x1000220c
    UART1_IRQ_Handler
        0x1000220e:    e7fe        ..      B        UART1_IRQ_Handler ; 0x1000220e
    UART2_IRQ_Handler
        0x10002210:    e7fe        ..      B        UART2_IRQ_Handler ; 0x10002210
    SPI0_IRQ_Handler
        0x10002212:    e7fe        ..      B        SPI0_IRQ_Handler ; 0x10002212
    SPI1_IRQ_Handler
        0x10002214:    e7fe        ..      B        SPI1_IRQ_Handler ; 0x10002214
    I2C0_IRQ_Handler
        0x10002216:    e7fe        ..      B        I2C0_IRQ_Handler ; 0x10002216
    I2C1_IRQ_Handler
        0x10002218:    e7fe        ..      B        I2C1_IRQ_Handler ; 0x10002218
    I2C2_IRQ_Handler
        0x1000221a:    e7fe        ..      B        I2C2_IRQ_Handler ; 0x1000221a
    DMA_IRQ0_Handler
        0x1000221c:    e7fe        ..      B        DMA_IRQ0_Handler ; 0x1000221c
    DMA_IRQ4_Handler
        0x1000221e:    e7fe        ..      B        DMA_IRQ4_Handler ; 0x1000221e
    TIMER0_IRQ_Handler
        0x10002220:    e7fe        ..      B        TIMER0_IRQ_Handler ; 0x10002220
    GPIO_IRQ0_Handler
        0x10002222:    e7fe        ..      B        GPIO_IRQ0_Handler ; 0x10002222
    GPIO_IRQ1_Handler
        0x10002224:    e7fe        ..      B        GPIO_IRQ1_Handler ; 0x10002224
    GPIO_IRQ2_Handler
        0x10002226:    e7fe        ..      B        GPIO_IRQ2_Handler ; 0x10002226
    PMU_IRQ_Handler
        0x10002228:    e7fe        ..      B        PMU_IRQ_Handler ; 0x10002228
    QSPI0_IRQ_Handler
        0x1000222a:    e7fe        ..      B        QSPI0_IRQ_Handler ; 0x1000222a
    QSPI1_IRQ_Handler
        0x1000222c:    e7fe        ..      B        QSPI1_IRQ_Handler ; 0x1000222c
    QSPI2_IRQ_Handler
        0x1000222e:    e7fe        ..      B        QSPI2_IRQ_Handler ; 0x1000222e
    QSPI3_IRQ_Handler
        0x10002230:    e7fe        ..      B        QSPI3_IRQ_Handler ; 0x10002230
    SW_IRQ0_Handler
        0x10002232:    e7fe        ..      B        SW_IRQ0_Handler ; 0x10002232
    SW_IRQ1_Handler
        0x10002234:    e7fe        ..      B        SW_IRQ1_Handler ; 0x10002234
    USB_IRQ_Handler
        0x10002236:    e7fe        ..      B        USB_IRQ_Handler ; 0x10002236
    RTC_CH3_IRQ_Handler
        0x10002238:    e7fe        ..      B        RTC_CH3_IRQ_Handler ; 0x10002238
    DMA_IRQ1_Handler
        0x1000223a:    e7fe        ..      B        DMA_IRQ1_Handler ; 0x1000223a
    DMA_IRQ2_Handler
        0x1000223c:    e7fe        ..      B        DMA_IRQ2_Handler ; 0x1000223c
    DMA_IRQ3_Handler
        0x1000223e:    e7fe        ..      B        DMA_IRQ3_Handler ; 0x1000223e
    DMA_IRQ5_Handler
        0x10002240:    e7fe        ..      B        DMA_IRQ5_Handler ; 0x10002240
    DMA_IRQ6_Handler
        0x10002242:    e7fe        ..      B        DMA_IRQ6_Handler ; 0x10002242
    DMA_IRQ7_Handler
        0x10002244:    e7fe        ..      B        DMA_IRQ7_Handler ; 0x10002244
    TIMER1_IRQ_Handler
        0x10002246:    e7fe        ..      B        TIMER1_IRQ_Handler ; 0x10002246
    TIMER2_IRQ_Handler
        0x10002248:    e7fe        ..      B        TIMER2_IRQ_Handler ; 0x10002248
    TIMER3_IRQ_Handler
        0x1000224a:    e7fe        ..      B        TIMER3_IRQ_Handler ; 0x1000224a
    SW_IRQ2_Handler
        0x1000224c:    e7fe        ..      B        SW_IRQ2_Handler ; 0x1000224c
    FP_IRQ_Handler
        0x1000224e:    e7fe        ..      B        FP_IRQ_Handler ; 0x1000224e
    RTC_CH1_IRQ_Handler
        0x10002250:    e7fe        ..      B        RTC_CH1_IRQ_Handler ; 0x10002250
    RTC_CH2_IRQ_Handler
        0x10002252:    e7fe        ..      B        RTC_CH2_IRQ_Handler ; 0x10002252
    AUDIO1_IRQ_Handler
        0x10002254:    e7fe        ..      B        AUDIO1_IRQ_Handler ; 0x10002254
    GPADC1_IRQ_Handler
        0x10002256:    e7fe        ..      B        GPADC1_IRQ_Handler ; 0x10002256
    I2C3_IRQ_Handler
        0x10002258:    e7fe        ..      B        I2C3_IRQ_Handler ; 0x10002258
    USB_PHY_IRQ_Handler
        0x1000225a:    e7fe        ..      B        USB_PHY_IRQ_Handler ; 0x1000225a
    STIM0_IRQ0_Handler
        0x1000225c:    e7fe        ..      B        STIM0_IRQ0_Handler ; 0x1000225c
    STIM0_IRQ1_Handler
        0x1000225e:    e7fe        ..      B        STIM0_IRQ1_Handler ; 0x1000225e
    STIM0_IRQ2_Handler
        0x10002260:    e7fe        ..      B        STIM0_IRQ2_Handler ; 0x10002260
    STIM0_IRQ3_Handler
        0x10002262:    e7fe        ..      B        STIM0_IRQ3_Handler ; 0x10002262
    STIM1_IRQ0_Handler
        0x10002264:    e7fe        ..      B        STIM1_IRQ0_Handler ; 0x10002264
    STIM1_IRQ1_Handler
        0x10002266:    e7fe        ..      B        STIM1_IRQ1_Handler ; 0x10002266
    STIM1_IRQ2_Handler
        0x10002268:    e7fe        ..      B        STIM1_IRQ2_Handler ; 0x10002268
    STIM1_IRQ3_Handler
        0x1000226a:    e7fe        ..      B        STIM1_IRQ3_Handler ; 0x1000226a
    WDT1_IRQ_Handler
        0x1000226c:    e7fe        ..      B        WDT1_IRQ_Handler ; 0x1000226c
    CRYPT1_IRQ_Handler
        0x1000226e:    e7fe        ..      B        CRYPT1_IRQ_Handler ; 0x1000226e
    $d
        0x10002270:    20027000    .p.     DCD    537030656
        0x10002274:    20026000    .`.     DCD    537026560
        0x10002278:    10002289    ."..    DCD    268444297
        0x1000227c:    10002141    A!..    DCD    268443969
        0x10002280:    100033d5    .3..    DCD    268448725
        0x10002284:    100030a5    .0..    DCD    268447909
    $t.0
    SystemInit
        0x10002288:    f2420200    B...    MOVW     r2,#0x2000
        0x1000228c:    f2470100    G...    MOVW     r1,#0x7000
        0x10002290:    2000        .       MOVS     r0,#0
        0x10002292:    f2c10200    ....    MOVT     r2,#0x1000
        0x10002296:    f2c20101    ....    MOVT     r1,#0x2001
        0x1000229a:    bf00        ..      NOP      
        0x1000229c:    f8523020    R. 0    LDR      r3,[r2,r0,LSL #2]
        0x100022a0:    f8413020    A. 0    STR      r3,[r1,r0,LSL #2]
        0x100022a4:    3001        .0      ADDS     r0,#1
        0x100022a6:    284b        K(      CMP      r0,#0x4b
        0x100022a8:    d1f8        ..      BNE      0x1000229c ; SystemInit + 20
        0x100022aa:    f64e5014    N..P    MOV      r0,#0xed14
        0x100022ae:    f2ce0000    ....    MOVT     r0,#0xe000
        0x100022b2:    f8401c0c    @...    STR      r1,[r0,#-0xc]
        0x100022b6:    6f41        Ao      LDR      r1,[r0,#0x74]
        0x100022b8:    f4410170    A.p.    ORR      r1,r1,#0xf00000
        0x100022bc:    6741        Ag      STR      r1,[r0,#0x74]
        0x100022be:    6801        .h      LDR      r1,[r0,#0]
        0x100022c0:    f0410110    A...    ORR      r1,r1,#0x10
        0x100022c4:    6001        .`      STR      r1,[r0,#0]
        0x100022c6:    6801        .h      LDR      r1,[r0,#0]
        0x100022c8:    f4417180    A..q    ORR      r1,r1,#0x100
        0x100022cc:    6001        .`      STR      r1,[r0,#0]
        0x100022ce:    4770        pG      BX       lr
    $d.realdata
    Region$$Table$$Base
        0x100022d0:    10004134    4A..    DCD    268452148
        0x100022d4:    20003000    .0.     DCD    536883200
        0x100022d8:    00004c78    xL..    DCD    19576
        0x100022dc:    1000217c    |!..    DCD    268444028
        0x100022e0:    10008dac    ....    DCD    268471724
        0x100022e4:    20017200    .r.     DCD    536965632
        0x100022e8:    0000080c    ....    DCD    2060
        0x100022ec:    1000217c    |!..    DCD    268444028
        0x100022f0:    100095b8    ....    DCD    268473784
        0x100022f4:    2001f000    ...     DCD    536997888
        0x100022f8:    0000000c    ....    DCD    12
        0x100022fc:    1000217c    |!..    DCD    268444028
        0x10002300:    100095c4    ....    DCD    268473796
        0x10002304:    2001f00c    ...     DCD    536997900
        0x10002308:    00000180    ....    DCD    384
        0x1000230c:    10002198    .!..    DCD    268444056
    Region$$Table$$Limit

** Section #3 'FLASH_CACHE_CODE' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 7716 bytes (alignment 4)
    Address: 0x10002310

    $t
    .ARM.Collect$$_printf_percent$$00000009
    .ARM.Collect$$_printf_percent$$00000000
    _printf_d
    _printf_percent
        0x10002310:    2964        d)      CMP      r1,#0x64
        0x10002312:    f0008089    ....    BEQ.W    _printf_int_dec ; 0x10002428
    .ARM.Collect$$_printf_percent$$0000000A
    _printf_u
        0x10002316:    2975        u)      CMP      r1,#0x75
        0x10002318:    f0008086    ....    BEQ.W    _printf_int_dec ; 0x10002428
    .ARM.Collect$$_printf_percent$$0000000C
    _printf_x
        0x1000231c:    2978        x)      CMP      r1,#0x78
        0x1000231e:    f00080ea    ....    BEQ.W    _printf_int_hex ; 0x100024f6
    .ARM.Collect$$_printf_percent$$00000014
    _printf_s
        0x10002322:    2973        s)      CMP      r1,#0x73
        0x10002324:    f000829a    ....    BEQ.W    _printf_string ; 0x1000285c
    .ARM.Collect$$_printf_percent$$00000017
    _printf_percent_end
        0x10002328:    2000        .       MOVS     r0,#0
        0x1000232a:    4770        pG      BX       lr
    .ARM.Collect$$libinit$$00000000
    __rt_lib_init
        0x1000232c:    b51f        ..      PUSH     {r0-r4,lr}
    .ARM.Collect$$libinit$$00000001
    __rt_lib_init_fp_1
        0x1000232e:    f001fbfe    ....    BL       _fp_init ; 0x10003b2e
    .ARM.Collect$$libinit$$00000004
    .ARM.Collect$$libinit$$00000006
    .ARM.Collect$$libinit$$00000008
    __rt_lib_init_heap_2
    __rt_lib_init_preinit_1
    __rt_lib_init_relocate_pie_1
        0x10002332:    4803        .H      LDR      r0,__lit__00000000 ; [0x10002340] = 0x20024000
        0x10002334:    4903        .I      LDR      r1,__lit__00000001 ; [0x10002344] = 0x20026000
        0x10002336:    f000fc97    ....    BL       _init_alloc ; 0x10002c68
    .ARM.Collect$$libinit$$0000000C
    .ARM.Collect$$libinit$$0000000E
    .ARM.Collect$$libinit$$00000010
    .ARM.Collect$$libinit$$00000013
    .ARM.Collect$$libinit$$00000015
    .ARM.Collect$$libinit$$00000017
    .ARM.Collect$$libinit$$00000019
    .ARM.Collect$$libinit$$0000001B
    .ARM.Collect$$libinit$$0000001D
    .ARM.Collect$$libinit$$0000001F
    .ARM.Collect$$libinit$$00000021
    .ARM.Collect$$libinit$$00000023
    .ARM.Collect$$libinit$$00000025
    .ARM.Collect$$libinit$$00000026
    __rt_lib_init_atexit_1
    __rt_lib_init_clock_1
    __rt_lib_init_fp_trap_1
    __rt_lib_init_getenv_1
    __rt_lib_init_heap_1
    __rt_lib_init_lc_collate_1
    __rt_lib_init_lc_ctype_1
    __rt_lib_init_lc_monetary_1
    __rt_lib_init_lc_numeric_1
    __rt_lib_init_lc_time_1
    __rt_lib_init_rand_1
    __rt_lib_init_signal_1
    __rt_lib_init_stdio_2
    __rt_lib_init_user_alloc_1
        0x1000233a:    f000faa5    ....    BL       _initio ; 0x10002888
    .ARM.Collect$$libinit$$00000027
    .ARM.Collect$$libinit$$0000002E
    .ARM.Collect$$libinit$$00000030
    .ARM.Collect$$libinit$$00000032
    .ARM.Collect$$libinit$$00000034
    .ARM.Collect$$libinit$$00000035
    __rt_lib_init_alloca_1
    __rt_lib_init_argv_1
    __rt_lib_init_cpp_1
    __rt_lib_init_exceptions_1
    __rt_lib_init_return
    __rt_lib_init_stdio_1
        0x1000233e:    bd1f        ..      POP      {r0-r4,pc}
    $d
    .ARM.Collect$$libinit$$00002719
    __lit__00000000
        0x10002340:    20024000    .@.     DCD    537018368
    __lit__00000001
        0x10002344:    20026000    .`.     DCD    537026560
    $t
    .ARM.Collect$$libshutdown$$00000000
    __rt_lib_shutdown
        0x10002348:    b510        ..      PUSH     {r4,lr}
    .ARM.Collect$$libshutdown$$00000002
    .ARM.Collect$$libshutdown$$00000003
    __rt_lib_shutdown_cpp_1
    __rt_lib_shutdown_stdio_2
        0x1000234a:    f000fb06    ....    BL       _terminateio ; 0x1000295a
    .ARM.Collect$$libshutdown$$00000004
    .ARM.Collect$$libshutdown$$00000007
    .ARM.Collect$$libshutdown$$0000000A
    .ARM.Collect$$libshutdown$$0000000C
    .ARM.Collect$$libshutdown$$0000000F
    .ARM.Collect$$libshutdown$$00000010
    __rt_lib_shutdown_fp_trap_1
    __rt_lib_shutdown_heap_1
    __rt_lib_shutdown_return
    __rt_lib_shutdown_signal_1
    __rt_lib_shutdown_stdio_1
    __rt_lib_shutdown_user_alloc_1
        0x1000234e:    bd10        ..      POP      {r4,pc}
    .ARM.Collect$$rtentry$$00000000
    .ARM.Collect$$rtentry$$00000002
    .ARM.Collect$$rtentry$$00000005
    __rt_entry
    __rt_entry_presh_1
    __rt_entry_sh
        0x10002350:    f8dfd00c    ....    LDR      sp,__lit__00000000 ; [0x10002360] = 0x20027000
    .ARM.Collect$$rtentry$$00000009
    .ARM.Collect$$rtentry$$0000000A
    __rt_entry_li
    __rt_entry_postsh_1
        0x10002354:    f7ffffea    ....    BL       __rt_lib_init ; 0x1000232c
    .ARM.Collect$$rtentry$$0000000C
    .ARM.Collect$$rtentry$$0000000D
    __rt_entry_main
    __rt_entry_postli_1
        0x10002358:    f001fa0e    ....    BL       main ; 0x10003778
        0x1000235c:    f000fdd6    ....    BL       exit ; 0x10002f0c
    $d
    .ARM.Collect$$rtentry$$00002716
    __lit__00000000
        0x10002360:    20027000    .p.     DCD    537030656
    $t
    .ARM.Collect$$rtexit$$00000000
    __rt_exit
        0x10002364:    b403        ..      PUSH     {r0,r1}
    .ARM.Collect$$rtexit$$00000002
    .ARM.Collect$$rtexit$$00000003
    __rt_exit_ls
    __rt_exit_prels_1
        0x10002366:    f7ffffef    ....    BL       __rt_lib_shutdown ; 0x10002348
    .ARM.Collect$$rtexit$$00000004
    __rt_exit_exit
        0x1000236a:    bc03        ..      POP      {r0,r1}
        0x1000236c:    f000f9ec    ....    BL       _sys_exit ; 0x10002748
    .text
    __2printf
        0x10002370:    b40f        ..      PUSH     {r0-r3}
        0x10002372:    4904        .I      LDR      r1,[pc,#16] ; [0x10002384] = 0x2001f060
        0x10002374:    b510        ..      PUSH     {r4,lr}
        0x10002376:    aa03        ..      ADD      r2,sp,#0xc
        0x10002378:    9802        ..      LDR      r0,[sp,#8]
        0x1000237a:    f000fa73    ..s.    BL       _printf_char_file ; 0x10002864
        0x1000237e:    bc10        ..      POP      {r4}
        0x10002380:    f85dfb14    ]...    LDR      pc,[sp],#0x14
    $d
        0x10002384:    2001f060    `..     DCD    536997984
    $t
    .text
    _printf_pre_padding
        0x10002388:    b570        p.      PUSH     {r4-r6,lr}
        0x1000238a:    4604        .F      MOV      r4,r0
        0x1000238c:    6985        .i      LDR      r5,[r0,#0x18]
        0x1000238e:    6800        .h      LDR      r0,[r0,#0]
        0x10002390:    06c1        ..      LSLS     r1,r0,#27
        0x10002392:    d501        ..      BPL      0x10002398 ; _printf_pre_padding + 16
        0x10002394:    2630        0&      MOVS     r6,#0x30
        0x10002396:    e000        ..      B        0x1000239a ; _printf_pre_padding + 18
        0x10002398:    2620         &      MOVS     r6,#0x20
        0x1000239a:    07c0        ..      LSLS     r0,r0,#31
        0x1000239c:    d007        ..      BEQ      0x100023ae ; _printf_pre_padding + 38
        0x1000239e:    bd70        p.      POP      {r4-r6,pc}
        0x100023a0:    e9d42101    ...!    LDRD     r2,r1,[r4,#4]
        0x100023a4:    4630        0F      MOV      r0,r6
        0x100023a6:    4790        .G      BLX      r2
        0x100023a8:    6a20         j      LDR      r0,[r4,#0x20]
        0x100023aa:    1c40        @.      ADDS     r0,r0,#1
        0x100023ac:    6220         b      STR      r0,[r4,#0x20]
        0x100023ae:    1e6d        m.      SUBS     r5,r5,#1
        0x100023b0:    d5f6        ..      BPL      0x100023a0 ; _printf_pre_padding + 24
        0x100023b2:    bd70        p.      POP      {r4-r6,pc}
    _printf_post_padding
        0x100023b4:    b570        p.      PUSH     {r4-r6,lr}
        0x100023b6:    4604        .F      MOV      r4,r0
        0x100023b8:    6985        .i      LDR      r5,[r0,#0x18]
        0x100023ba:    7800        .x      LDRB     r0,[r0,#0]
        0x100023bc:    07c0        ..      LSLS     r0,r0,#31
        0x100023be:    d107        ..      BNE      0x100023d0 ; _printf_post_padding + 28
        0x100023c0:    bd70        p.      POP      {r4-r6,pc}
        0x100023c2:    e9d42101    ...!    LDRD     r2,r1,[r4,#4]
        0x100023c6:    2020                MOVS     r0,#0x20
        0x100023c8:    4790        .G      BLX      r2
        0x100023ca:    6a20         j      LDR      r0,[r4,#0x20]
        0x100023cc:    1c40        @.      ADDS     r0,r0,#1
        0x100023ce:    6220         b      STR      r0,[r4,#0x20]
        0x100023d0:    1e6d        m.      SUBS     r5,r5,#1
        0x100023d2:    d5f6        ..      BPL      0x100023c2 ; _printf_post_padding + 14
        0x100023d4:    bd70        p.      POP      {r4-r6,pc}
    .text
    _printf_str
        0x100023d6:    b570        p.      PUSH     {r4-r6,lr}
        0x100023d8:    460c        .F      MOV      r4,r1
        0x100023da:    4605        .F      MOV      r5,r0
        0x100023dc:    2a01        .*      CMP      r2,#1
        0x100023de:    d005        ..      BEQ      0x100023ec ; _printf_str + 22
        0x100023e0:    7828        (x      LDRB     r0,[r5,#0]
        0x100023e2:    0680        ..      LSLS     r0,r0,#26
        0x100023e4:    d500        ..      BPL      0x100023e8 ; _printf_str + 18
        0x100023e6:    69ea        .i      LDR      r2,[r5,#0x1c]
        0x100023e8:    2300        .#      MOVS     r3,#0
        0x100023ea:    e002        ..      B        0x100023f2 ; _printf_str + 28
        0x100023ec:    2301        .#      MOVS     r3,#1
        0x100023ee:    e005        ..      B        0x100023fc ; _printf_str + 38
        0x100023f0:    1c5b        [.      ADDS     r3,r3,#1
        0x100023f2:    4293        .B      CMP      r3,r2
        0x100023f4:    d202        ..      BCS      0x100023fc ; _printf_str + 38
        0x100023f6:    5ce0        .\      LDRB     r0,[r4,r3]
        0x100023f8:    2800        .(      CMP      r0,#0
        0x100023fa:    d1f9        ..      BNE      0x100023f0 ; _printf_str + 26
        0x100023fc:    69a8        .i      LDR      r0,[r5,#0x18]
        0x100023fe:    18e6        ..      ADDS     r6,r4,r3
        0x10002400:    1ac0        ..      SUBS     r0,r0,r3
        0x10002402:    61a8        .a      STR      r0,[r5,#0x18]
        0x10002404:    6a28        (j      LDR      r0,[r5,#0x20]
        0x10002406:    4418        .D      ADD      r0,r0,r3
        0x10002408:    6228        (b      STR      r0,[r5,#0x20]
        0x1000240a:    4628        (F      MOV      r0,r5
        0x1000240c:    f7ffffbc    ....    BL       _printf_pre_padding ; 0x10002388
        0x10002410:    e004        ..      B        0x1000241c ; _printf_str + 70
        0x10002412:    e9d52101    ...!    LDRD     r2,r1,[r5,#4]
        0x10002416:    f8140b01    ....    LDRB     r0,[r4],#1
        0x1000241a:    4790        .G      BLX      r2
        0x1000241c:    42b4        .B      CMP      r4,r6
        0x1000241e:    d3f8        ..      BCC      0x10002412 ; _printf_str + 60
        0x10002420:    4628        (F      MOV      r0,r5
        0x10002422:    f7ffffc7    ....    BL       _printf_post_padding ; 0x100023b4
        0x10002426:    bd70        p.      POP      {r4-r6,pc}
    .text
    _printf_int_dec
        0x10002428:    e92d41f0    -..A    PUSH     {r4-r8,lr}
        0x1000242c:    4606        .F      MOV      r6,r0
        0x1000242e:    2400        .$      MOVS     r4,#0
        0x10002430:    6810        .h      LDR      r0,[r2,#0]
        0x10002432:    2975        u)      CMP      r1,#0x75
        0x10002434:    4631        1F      MOV      r1,r6
        0x10002436:    a516        ..      ADR      r5,{pc}+0x5a ; 0x10002490
        0x10002438:    d010        ..      BEQ      0x1000245c ; _printf_int_dec + 52
        0x1000243a:    f3af8000    ....    NOP.W    
        0x1000243e:    2800        .(      CMP      r0,#0
        0x10002440:    da02        ..      BGE      0x10002448 ; _printf_int_dec + 32
        0x10002442:    4240        @B      RSBS     r0,r0,#0
        0x10002444:    a513        ..      ADR      r5,{pc}+0x50 ; 0x10002494
        0x10002446:    e007        ..      B        0x10002458 ; _printf_int_dec + 48
        0x10002448:    6831        1h      LDR      r1,[r6,#0]
        0x1000244a:    078a        ..      LSLS     r2,r1,#30
        0x1000244c:    d501        ..      BPL      0x10002452 ; _printf_int_dec + 42
        0x1000244e:    a512        ..      ADR      r5,{pc}+0x4a ; 0x10002498
        0x10002450:    e002        ..      B        0x10002458 ; _printf_int_dec + 48
        0x10002452:    0749        I.      LSLS     r1,r1,#29
        0x10002454:    d504        ..      BPL      0x10002460 ; _printf_int_dec + 56
        0x10002456:    a511        ..      ADR      r5,{pc}+0x46 ; 0x1000249c
        0x10002458:    2401        .$      MOVS     r4,#1
        0x1000245a:    e001        ..      B        0x10002460 ; _printf_int_dec + 56
        0x1000245c:    f3af8000    ....    NOP.W    
        0x10002460:    2100        .!      MOVS     r1,#0
        0x10002462:    220a        ."      MOVS     r2,#0xa
        0x10002464:    f1060724    ..$.    ADD      r7,r6,#0x24
        0x10002468:    e009        ..      B        0x1000247e ; _printf_int_dec + 86
        0x1000246a:    fbb0fcf2    ....    UDIV     r12,r0,r2
        0x1000246e:    fbb0f3f2    ....    UDIV     r3,r0,r2
        0x10002472:    fb02001c    ....    MLS      r0,r2,r12,r0
        0x10002476:    3030        00      ADDS     r0,r0,#0x30
        0x10002478:    5478        xT      STRB     r0,[r7,r1]
        0x1000247a:    4618        .F      MOV      r0,r3
        0x1000247c:    1c49        I.      ADDS     r1,r1,#1
        0x1000247e:    2800        .(      CMP      r0,#0
        0x10002480:    d1f3        ..      BNE      0x1000246a ; _printf_int_dec + 66
        0x10002482:    4623        #F      MOV      r3,r4
        0x10002484:    462a        *F      MOV      r2,r5
        0x10002486:    4630        0F      MOV      r0,r6
        0x10002488:    e8bd41f0    ...A    POP      {r4-r8,lr}
        0x1000248c:    f000b962    ..b.    B.W      _printf_int_common ; 0x10002754
    $d
        0x10002490:    00000000    ....    DCD    0
        0x10002494:    0000002d    -...    DCD    45
        0x10002498:    0000002b    +...    DCD    43
        0x1000249c:    00000020     ...    DCD    32
    $t
    .text
    _printf_hex_common
    _printf_longlong_hex
        0x100024a0:    b4f0        ..      PUSH     {r4-r7}
        0x100024a2:    460d        .F      MOV      r5,r1
        0x100024a4:    8801        ..      LDRH     r1,[r0,#0]
        0x100024a6:    0509        ..      LSLS     r1,r1,#20
        0x100024a8:    d502        ..      BPL      0x100024b0 ; _printf_hex_common + 16
        0x100024aa:    4c21        !L      LDR      r4,[pc,#132] ; [0x10002530] = 0x1698
        0x100024ac:    447c        |D      ADD      r4,r4,pc
        0x100024ae:    e002        ..      B        0x100024b6 ; _printf_hex_common + 22
        0x100024b0:    4c1f        .L      LDR      r4,[pc,#124] ; [0x10002530] = 0x1698
        0x100024b2:    447c        |D      ADD      r4,r4,pc
        0x100024b4:    340e        .4      ADDS     r4,r4,#0xe
        0x100024b6:    2100        .!      MOVS     r1,#0
        0x100024b8:    f1000624    ..$.    ADD      r6,r0,#0x24
        0x100024bc:    e008        ..      B        0x100024d0 ; _printf_hex_common + 48
        0x100024be:    f002070f    ....    AND      r7,r2,#0xf
        0x100024c2:    0912        ..      LSRS     r2,r2,#4
        0x100024c4:    5de7        .]      LDRB     r7,[r4,r7]
        0x100024c6:    ea427203    B..r    ORR      r2,r2,r3,LSL #28
        0x100024ca:    091b        ..      LSRS     r3,r3,#4
        0x100024cc:    5477        wT      STRB     r7,[r6,r1]
        0x100024ce:    1c49        I.      ADDS     r1,r1,#1
        0x100024d0:    ea520703    R...    ORRS     r7,r2,r3
        0x100024d4:    d1f3        ..      BNE      0x100024be ; _printf_hex_common + 30
        0x100024d6:    7802        .x      LDRB     r2,[r0,#0]
        0x100024d8:    2300        .#      MOVS     r3,#0
        0x100024da:    0712        ..      LSLS     r2,r2,#28
        0x100024dc:    d504        ..      BPL      0x100024e8 ; _printf_hex_common + 72
        0x100024de:    2d70        p-      CMP      r5,#0x70
        0x100024e0:    d006        ..      BEQ      0x100024f0 ; _printf_hex_common + 80
        0x100024e2:    b109        ..      CBZ      r1,0x100024e8 ; _printf_hex_common + 72
        0x100024e4:    2302        .#      MOVS     r3,#2
        0x100024e6:    3411        .4      ADDS     r4,r4,#0x11
        0x100024e8:    4622        "F      MOV      r2,r4
        0x100024ea:    bcf0        ..      POP      {r4-r7}
        0x100024ec:    f000b932    ..2.    B.W      _printf_int_common ; 0x10002754
        0x100024f0:    2301        .#      MOVS     r3,#1
        0x100024f2:    3410        .4      ADDS     r4,r4,#0x10
        0x100024f4:    e7f8        ..      B        0x100024e8 ; _printf_hex_common + 72
    _printf_int_hex
        0x100024f6:    b570        p.      PUSH     {r4-r6,lr}
        0x100024f8:    4604        .F      MOV      r4,r0
        0x100024fa:    460d        .F      MOV      r5,r1
        0x100024fc:    4621        !F      MOV      r1,r4
        0x100024fe:    6810        .h      LDR      r0,[r2,#0]
        0x10002500:    f3af8000    ....    NOP.W    
        0x10002504:    4602        .F      MOV      r2,r0
        0x10002506:    4629        )F      MOV      r1,r5
        0x10002508:    4620         F      MOV      r0,r4
        0x1000250a:    e8bd4070    ..p@    POP      {r4-r6,lr}
        0x1000250e:    2300        .#      MOVS     r3,#0
        0x10002510:    e7c6        ..      B        _printf_hex_common ; 0x100024a0
    _printf_ll_hex
        0x10002512:    1dd2        ..      ADDS     r2,r2,#7
        0x10002514:    f0220307    "...    BIC      r3,r2,#7
        0x10002518:    e9d32300    ...#    LDRD     r2,r3,[r3,#0]
        0x1000251c:    e7c0        ..      B        _printf_hex_common ; 0x100024a0
    _printf_hex_ptr
        0x1000251e:    6803        .h      LDR      r3,[r0,#0]
        0x10002520:    6812        .h      LDR      r2,[r2,#0]
        0x10002522:    f0430320    C. .    ORR      r3,r3,#0x20
        0x10002526:    6003        .`      STR      r3,[r0,#0]
        0x10002528:    2308        .#      MOVS     r3,#8
        0x1000252a:    61c3        .a      STR      r3,[r0,#0x1c]
        0x1000252c:    2300        .#      MOVS     r3,#0
        0x1000252e:    e7b7        ..      B        _printf_hex_common ; 0x100024a0
    $d
        0x10002530:    00001698    ....    DCD    5784
    $t
    .text
    __printf
        0x10002534:    e92d5ff0    -.._    PUSH     {r4-r12,lr}
        0x10002538:    4689        .F      MOV      r9,r1
        0x1000253a:    4604        .F      MOV      r4,r0
        0x1000253c:    f04f0a00    O...    MOV      r10,#0
        0x10002540:    f8dfb174    ..t.    LDR      r11,[pc,#372] ; [0x100026b8] = 0x1628
        0x10002544:    44fb        .D      ADD      r11,r11,pc
        0x10002546:    f8c0a020    .. .    STR      r10,[r0,#0x20]
        0x1000254a:    4620         F      MOV      r0,r4
        0x1000254c:    68e1        .h      LDR      r1,[r4,#0xc]
        0x1000254e:    4788        .G      BLX      r1
        0x10002550:    2800        .(      CMP      r0,#0
        0x10002552:    d074        t.      BEQ      0x1000263e ; __printf + 266
        0x10002554:    2825        %(      CMP      r0,#0x25
        0x10002556:    d006        ..      BEQ      0x10002566 ; __printf + 50
        0x10002558:    e9d42101    ...!    LDRD     r2,r1,[r4,#4]
        0x1000255c:    4790        .G      BLX      r2
        0x1000255e:    6a20         j      LDR      r0,[r4,#0x20]
        0x10002560:    1c40        @.      ADDS     r0,r0,#1
        0x10002562:    6220         b      STR      r0,[r4,#0x20]
        0x10002564:    e7f1        ..      B        0x1000254a ; __printf + 22
        0x10002566:    2600        .&      MOVS     r6,#0
        0x10002568:    465f        _F      MOV      r7,r11
        0x1000256a:    4620         F      MOV      r0,r4
        0x1000256c:    68e1        .h      LDR      r1,[r4,#0xc]
        0x1000256e:    4788        .G      BLX      r1
        0x10002570:    2820         (      CMP      r0,#0x20
        0x10002572:    4605        .F      MOV      r5,r0
        0x10002574:    db07        ..      BLT      0x10002586 ; __printf + 82
        0x10002576:    2d31        1-      CMP      r5,#0x31
        0x10002578:    d205        ..      BCS      0x10002586 ; __printf + 82
        0x1000257a:    1978        x.      ADDS     r0,r7,r5
        0x1000257c:    f8100c20    .. .    LDRB     r0,[r0,#-0x20]
        0x10002580:    b108        ..      CBZ      r0,0x10002586 ; __printf + 82
        0x10002582:    4306        .C      ORRS     r6,r6,r0
        0x10002584:    e7f1        ..      B        0x1000256a ; __printf + 54
        0x10002586:    07b0        ..      LSLS     r0,r6,#30
        0x10002588:    d501        ..      BPL      0x1000258e ; __printf + 90
        0x1000258a:    f0260604    &...    BIC      r6,r6,#4
        0x1000258e:    f8c4a01c    ....    STR      r10,[r4,#0x1c]
        0x10002592:    2700        .'      MOVS     r7,#0
        0x10002594:    f8c4a018    ....    STR      r10,[r4,#0x18]
        0x10002598:    2d2a        *-      CMP      r5,#0x2a
        0x1000259a:    d009        ..      BEQ      0x100025b0 ; __printf + 124
        0x1000259c:    4628        (F      MOV      r0,r5
        0x1000259e:    f001fabf    ....    BL       _is_digit ; 0x10003b20
        0x100025a2:    b338        8.      CBZ      r0,0x100025f4 ; __printf + 192
        0x100025a4:    eb040887    ....    ADD      r8,r4,r7,LSL #2
        0x100025a8:    3d30        0=      SUBS     r5,r5,#0x30
        0x100025aa:    f8c85018    ...P    STR      r5,[r8,#0x18]
        0x100025ae:    e019        ..      B        0x100025e4 ; __printf + 176
        0x100025b0:    f8591b04    Y...    LDR      r1,[r9],#4
        0x100025b4:    4620         F      MOV      r0,r4
        0x100025b6:    eb040287    ....    ADD      r2,r4,r7,LSL #2
        0x100025ba:    6191        .a      STR      r1,[r2,#0x18]
        0x100025bc:    68e1        .h      LDR      r1,[r4,#0xc]
        0x100025be:    4788        .G      BLX      r1
        0x100025c0:    2f01        ./      CMP      r7,#1
        0x100025c2:    4605        .F      MOV      r5,r0
        0x100025c4:    d118        ..      BNE      0x100025f8 ; __printf + 196
        0x100025c6:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x100025c8:    2800        .(      CMP      r0,#0
        0x100025ca:    da20         .      BGE      0x1000260e ; __printf + 218
        0x100025cc:    f0260620    &. .    BIC      r6,r6,#0x20
        0x100025d0:    e01d        ..      B        0x1000260e ; __printf + 218
        0x100025d2:    f8d80018    ....    LDR      r0,[r8,#0x18]
        0x100025d6:    eb000080    ....    ADD      r0,r0,r0,LSL #2
        0x100025da:    eb050040    ..@.    ADD      r0,r5,r0,LSL #1
        0x100025de:    3830        08      SUBS     r0,r0,#0x30
        0x100025e0:    f8c80018    ....    STR      r0,[r8,#0x18]
        0x100025e4:    4620         F      MOV      r0,r4
        0x100025e6:    68e1        .h      LDR      r1,[r4,#0xc]
        0x100025e8:    4788        .G      BLX      r1
        0x100025ea:    4605        .F      MOV      r5,r0
        0x100025ec:    f001fa98    ....    BL       _is_digit ; 0x10003b20
        0x100025f0:    2800        .(      CMP      r0,#0
        0x100025f2:    d1ee        ..      BNE      0x100025d2 ; __printf + 158
        0x100025f4:    2f01        ./      CMP      r7,#1
        0x100025f6:    d00a        ..      BEQ      0x1000260e ; __printf + 218
        0x100025f8:    2d2e        .-      CMP      r5,#0x2e
        0x100025fa:    d108        ..      BNE      0x1000260e ; __printf + 218
        0x100025fc:    4620         F      MOV      r0,r4
        0x100025fe:    68e1        .h      LDR      r1,[r4,#0xc]
        0x10002600:    4788        .G      BLX      r1
        0x10002602:    1c7f        ..      ADDS     r7,r7,#1
        0x10002604:    4605        .F      MOV      r5,r0
        0x10002606:    2f02        ./      CMP      r7,#2
        0x10002608:    f0460620    F. .    ORR      r6,r6,#0x20
        0x1000260c:    dbc4        ..      BLT      0x10002598 ; __printf + 100
        0x1000260e:    69a0        .i      LDR      r0,[r4,#0x18]
        0x10002610:    2800        .(      CMP      r0,#0
        0x10002612:    da03        ..      BGE      0x1000261c ; __printf + 232
        0x10002614:    4240        @B      RSBS     r0,r0,#0
        0x10002616:    f0460601    F...    ORR      r6,r6,#1
        0x1000261a:    61a0        .a      STR      r0,[r4,#0x18]
        0x1000261c:    07f0        ..      LSLS     r0,r6,#31
        0x1000261e:    d001        ..      BEQ      0x10002624 ; __printf + 240
        0x10002620:    f0260610    &...    BIC      r6,r6,#0x10
        0x10002624:    2d6c        l-      CMP      r5,#0x6c
        0x10002626:    d00b        ..      BEQ      0x10002640 ; __printf + 268
        0x10002628:    2d68        h-      CMP      r5,#0x68
        0x1000262a:    d009        ..      BEQ      0x10002640 ; __printf + 268
        0x1000262c:    2d4c        L-      CMP      r5,#0x4c
        0x1000262e:    d039        9.      BEQ      0x100026a4 ; __printf + 368
        0x10002630:    2d6a        j-      CMP      r5,#0x6a
        0x10002632:    d035        5.      BEQ      0x100026a0 ; __printf + 364
        0x10002634:    2d74        t-      CMP      r5,#0x74
        0x10002636:    d035        5.      BEQ      0x100026a4 ; __printf + 368
        0x10002638:    2d7a        z-      CMP      r5,#0x7a
        0x1000263a:    d033        3.      BEQ      0x100026a4 ; __printf + 368
        0x1000263c:    e016        ..      B        0x1000266c ; __printf + 312
        0x1000263e:    e038        8.      B        0x100026b2 ; __printf + 382
        0x10002640:    68e1        .h      LDR      r1,[r4,#0xc]
        0x10002642:    462f        /F      MOV      r7,r5
        0x10002644:    4620         F      MOV      r0,r4
        0x10002646:    4788        .G      BLX      r1
        0x10002648:    42b8        .B      CMP      r0,r7
        0x1000264a:    4605        .F      MOV      r5,r0
        0x1000264c:    d109        ..      BNE      0x10002662 ; __printf + 302
        0x1000264e:    2f6c        l/      CMP      r7,#0x6c
        0x10002650:    d026        &.      BEQ      0x100026a0 ; __printf + 364
        0x10002652:    f44f6080    O..`    MOV      r0,#0x400
        0x10002656:    68e1        .h      LDR      r1,[r4,#0xc]
        0x10002658:    4306        .C      ORRS     r6,r6,r0
        0x1000265a:    4620         F      MOV      r0,r4
        0x1000265c:    4788        .G      BLX      r1
        0x1000265e:    4605        .F      MOV      r5,r0
        0x10002660:    e004        ..      B        0x1000266c ; __printf + 312
        0x10002662:    2f6c        l/      CMP      r7,#0x6c
        0x10002664:    d01a        ..      BEQ      0x1000269c ; __printf + 360
        0x10002666:    f44f7080    O..p    MOV      r0,#0x100
        0x1000266a:    4306        .C      ORRS     r6,r6,r0
        0x1000266c:    b30d        ..      CBZ      r5,0x100026b2 ; __printf + 382
        0x1000266e:    f1a50041    ..A.    SUB      r0,r5,#0x41
        0x10002672:    2819        .(      CMP      r0,#0x19
        0x10002674:    d802        ..      BHI      0x1000267c ; __printf + 328
        0x10002676:    3520         5      ADDS     r5,r5,#0x20
        0x10002678:    f4466600    F..f    ORR      r6,r6,#0x800
        0x1000267c:    464a        JF      MOV      r2,r9
        0x1000267e:    4629        )F      MOV      r1,r5
        0x10002680:    4620         F      MOV      r0,r4
        0x10002682:    6026        &`      STR      r6,[r4,#0]
        0x10002684:    464e        NF      MOV      r6,r9
        0x10002686:    f7fffe43    ..C.    BL       _printf_d ; 0x10002310
        0x1000268a:    b180        ..      CBZ      r0,0x100026ae ; __printf + 378
        0x1000268c:    2801        .(      CMP      r0,#1
        0x1000268e:    d00b        ..      BEQ      0x100026a8 ; __printf + 372
        0x10002690:    1df6        ..      ADDS     r6,r6,#7
        0x10002692:    f0260007    &...    BIC      r0,r6,#7
        0x10002696:    f1000908    ....    ADD      r9,r0,#8
        0x1000269a:    e756        V.      B        0x1000254a ; __printf + 22
        0x1000269c:    2040        @       MOVS     r0,#0x40
        0x1000269e:    e7e4        ..      B        0x1000266a ; __printf + 310
        0x100026a0:    2080        .       MOVS     r0,#0x80
        0x100026a2:    e7d8        ..      B        0x10002656 ; __printf + 290
        0x100026a4:    2000        .       MOVS     r0,#0
        0x100026a6:    e7d6        ..      B        0x10002656 ; __printf + 290
        0x100026a8:    f1060904    ....    ADD      r9,r6,#4
        0x100026ac:    e74d        M.      B        0x1000254a ; __printf + 22
        0x100026ae:    4628        (F      MOV      r0,r5
        0x100026b0:    e752        R.      B        0x10002558 ; __printf + 36
        0x100026b2:    6a20         j      LDR      r0,[r4,#0x20]
        0x100026b4:    e8bd9ff0    ....    POP      {r4-r12,pc}
    $d
        0x100026b8:    00001628    (...    DCD    5672
    $t
    .text
    putchar
        0x100026bc:    4901        .I      LDR      r1,[pc,#4] ; [0x100026c4] = 0x2001f060
        0x100026be:    f000bf79    ..y.    B.W      fputc ; 0x100035b4
    $d
        0x100026c2:    0000        ..      DCW    0
        0x100026c4:    2001f060    `..     DCD    536997984
    $t
    .text
    puts
        0x100026c8:    b510        ..      PUSH     {r4,lr}
        0x100026ca:    4604        .F      MOV      r4,r0
        0x100026cc:    e003        ..      B        0x100026d6 ; puts + 14
        0x100026ce:    f000ff71    ..q.    BL       fputc ; 0x100035b4
        0x100026d2:    1c40        @.      ADDS     r0,r0,#1
        0x100026d4:    d009        ..      BEQ      0x100026ea ; puts + 34
        0x100026d6:    f8140b01    ....    LDRB     r0,[r4],#1
        0x100026da:    4905        .I      LDR      r1,[pc,#20] ; [0x100026f0] = 0x2001f060
        0x100026dc:    2800        .(      CMP      r0,#0
        0x100026de:    d1f6        ..      BNE      0x100026ce ; puts + 6
        0x100026e0:    e8bd4010    ...@    POP      {r4,lr}
        0x100026e4:    200a        .       MOVS     r0,#0xa
        0x100026e6:    f000bf65    ..e.    B.W      fputc ; 0x100035b4
        0x100026ea:    f04f30ff    O..0    MOV      r0,#0xffffffff
        0x100026ee:    bd10        ..      POP      {r4,pc}
    $d
        0x100026f0:    2001f060    `..     DCD    536997984
    $t
    .text
    __aeabi_memclr4
    __aeabi_memclr8
    __rt_memclr_w
        0x100026f4:    f04f0200    O...    MOV      r2,#0
    _memset_w
        0x100026f8:    b500        ..      PUSH     {lr}
        0x100026fa:    4613        .F      MOV      r3,r2
        0x100026fc:    4694        .F      MOV      r12,r2
        0x100026fe:    4696        .F      MOV      lr,r2
        0x10002700:    3920         9      SUBS     r1,r1,#0x20
        0x10002702:    bf22        ".      ITTT     CS
        0x10002704:    e8a0500c    ...P    STMCS    r0!,{r2,r3,r12,lr}
        0x10002708:    e8a0500c    ...P    STMCS    r0!,{r2,r3,r12,lr}
        0x1000270c:    f1b10120    .. .    SUBSCS   r1,r1,#0x20
        0x10002710:    f4bfaff7    ....    BCS.W    0x10002702 ; _memset_w + 10
        0x10002714:    0709        ..      LSLS     r1,r1,#28
        0x10002716:    bf28        (.      IT       CS
        0x10002718:    e8a0500c    ...P    STMCS    r0!,{r2,r3,r12,lr}
        0x1000271c:    bf48        H.      IT       MI
        0x1000271e:    c00c        ..      STMMI    r0!,{r2,r3}
        0x10002720:    f85deb04    ]...    POP      {lr}
        0x10002724:    0089        ..      LSLS     r1,r1,#2
        0x10002726:    bf28        (.      IT       CS
        0x10002728:    f8402b04    @..+    STRCS    r2,[r0],#4
        0x1000272c:    bf08        ..      IT       EQ
        0x1000272e:    4770        pG      BXEQ     lr
        0x10002730:    bf48        H.      IT       MI
        0x10002732:    f8202b02     ..+    STRHMI   r2,[r0],#2
        0x10002736:    f0114f80    ...O    TST      r1,#0x40000000
        0x1000273a:    bf18        ..      IT       NE
        0x1000273c:    f8002b01    ...+    STRBNE   r2,[r0],#1
        0x10002740:    4770        pG      BX       lr
    .text
    __use_two_region_memory
        0x10002742:    4770        pG      BX       lr
    __rt_heap_escrow
        0x10002744:    4770        pG      BX       lr
    __rt_heap_expand
        0x10002746:    4770        pG      BX       lr
    .text
    _sys_exit
        0x10002748:    4901        .I      LDR      r1,[pc,#4] ; [0x10002750] = 0x20026
        0x1000274a:    2018        .       MOVS     r0,#0x18
        0x1000274c:    beab        ..      BKPT     #0xab
        0x1000274e:    e7fe        ..      B        0x1000274e ; _sys_exit + 6
    $d
        0x10002750:    00020026    &...    DCD    131110
    $t
    .text
    _printf_int_common
        0x10002754:    e92d47f0    -..G    PUSH     {r4-r10,lr}
        0x10002758:    460d        .F      MOV      r5,r1
        0x1000275a:    4699        .F      MOV      r9,r3
        0x1000275c:    4692        .F      MOV      r10,r2
        0x1000275e:    4604        .F      MOV      r4,r0
        0x10002760:    f1000824    ..$.    ADD      r8,r0,#0x24
        0x10002764:    6801        .h      LDR      r1,[r0,#0]
        0x10002766:    0688        ..      LSLS     r0,r1,#26
        0x10002768:    d504        ..      BPL      0x10002774 ; _printf_int_common + 32
        0x1000276a:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1000276c:    f0210110    !...    BIC      r1,r1,#0x10
        0x10002770:    6021        !`      STR      r1,[r4,#0]
        0x10002772:    e000        ..      B        0x10002776 ; _printf_int_common + 34
        0x10002774:    2001        .       MOVS     r0,#1
        0x10002776:    42a8        .B      CMP      r0,r5
        0x10002778:    dd01        ..      BLE      0x1000277e ; _printf_int_common + 42
        0x1000277a:    1b47        G.      SUBS     r7,r0,r5
        0x1000277c:    e000        ..      B        0x10002780 ; _printf_int_common + 44
        0x1000277e:    2700        .'      MOVS     r7,#0
        0x10002780:    69a1        .i      LDR      r1,[r4,#0x18]
        0x10002782:    197a        z.      ADDS     r2,r7,r5
        0x10002784:    eb020009    ....    ADD      r0,r2,r9
        0x10002788:    1a08        ..      SUBS     r0,r1,r0
        0x1000278a:    61a0        .a      STR      r0,[r4,#0x18]
        0x1000278c:    7820         x      LDRB     r0,[r4,#0]
        0x1000278e:    06c0        ..      LSLS     r0,r0,#27
        0x10002790:    d402        ..      BMI      0x10002798 ; _printf_int_common + 68
        0x10002792:    4620         F      MOV      r0,r4
        0x10002794:    f7fffdf8    ....    BL       _printf_pre_padding ; 0x10002388
        0x10002798:    2600        .&      MOVS     r6,#0
        0x1000279a:    e008        ..      B        0x100027ae ; _printf_int_common + 90
        0x1000279c:    e9d42101    ...!    LDRD     r2,r1,[r4,#4]
        0x100027a0:    f81a0006    ....    LDRB     r0,[r10,r6]
        0x100027a4:    4790        .G      BLX      r2
        0x100027a6:    6a20         j      LDR      r0,[r4,#0x20]
        0x100027a8:    1c40        @.      ADDS     r0,r0,#1
        0x100027aa:    1c76        v.      ADDS     r6,r6,#1
        0x100027ac:    6220         b      STR      r0,[r4,#0x20]
        0x100027ae:    454e        NE      CMP      r6,r9
        0x100027b0:    dbf4        ..      BLT      0x1000279c ; _printf_int_common + 72
        0x100027b2:    7820         x      LDRB     r0,[r4,#0]
        0x100027b4:    06c0        ..      LSLS     r0,r0,#27
        0x100027b6:    d50a        ..      BPL      0x100027ce ; _printf_int_common + 122
        0x100027b8:    4620         F      MOV      r0,r4
        0x100027ba:    f7fffde5    ....    BL       _printf_pre_padding ; 0x10002388
        0x100027be:    e006        ..      B        0x100027ce ; _printf_int_common + 122
        0x100027c0:    e9d42101    ...!    LDRD     r2,r1,[r4,#4]
        0x100027c4:    2030        0       MOVS     r0,#0x30
        0x100027c6:    4790        .G      BLX      r2
        0x100027c8:    6a20         j      LDR      r0,[r4,#0x20]
        0x100027ca:    1c40        @.      ADDS     r0,r0,#1
        0x100027cc:    6220         b      STR      r0,[r4,#0x20]
        0x100027ce:    1e38        8.      SUBS     r0,r7,#0
        0x100027d0:    f1a70701    ....    SUB      r7,r7,#1
        0x100027d4:    dcf4        ..      BGT      0x100027c0 ; _printf_int_common + 108
        0x100027d6:    e007        ..      B        0x100027e8 ; _printf_int_common + 148
        0x100027d8:    e9d42101    ...!    LDRD     r2,r1,[r4,#4]
        0x100027dc:    f8180005    ....    LDRB     r0,[r8,r5]
        0x100027e0:    4790        .G      BLX      r2
        0x100027e2:    6a20         j      LDR      r0,[r4,#0x20]
        0x100027e4:    1c40        @.      ADDS     r0,r0,#1
        0x100027e6:    6220         b      STR      r0,[r4,#0x20]
        0x100027e8:    1e28        (.      SUBS     r0,r5,#0
        0x100027ea:    f1a50501    ....    SUB      r5,r5,#1
        0x100027ee:    dcf3        ..      BGT      0x100027d8 ; _printf_int_common + 132
        0x100027f0:    4620         F      MOV      r0,r4
        0x100027f2:    f7fffddf    ....    BL       _printf_post_padding ; 0x100023b4
        0x100027f6:    7820         x      LDRB     r0,[r4,#0]
        0x100027f8:    0600        ..      LSLS     r0,r0,#24
        0x100027fa:    d502        ..      BPL      0x10002802 ; _printf_int_common + 174
        0x100027fc:    2002        .       MOVS     r0,#2
        0x100027fe:    e8bd87f0    ....    POP      {r4-r10,pc}
        0x10002802:    2001        .       MOVS     r0,#1
        0x10002804:    e7fb        ..      B        0x100027fe ; _printf_int_common + 170
        0x10002806:    0000        ..      MOVS     r0,r0
    .text
    _printf_input_char
        0x10002808:    6901        .i      LDR      r1,[r0,#0x10]
        0x1000280a:    1c4a        J.      ADDS     r2,r1,#1
        0x1000280c:    6102        .a      STR      r2,[r0,#0x10]
        0x1000280e:    7808        .x      LDRB     r0,[r1,#0]
        0x10002810:    4770        pG      BX       lr
    _printf_char_common
        0x10002812:    b500        ..      PUSH     {lr}
        0x10002814:    b08f        ..      SUB      sp,sp,#0x3c
        0x10002816:    e9cd3101    ...1    STRD     r3,r1,[sp,#4]
        0x1000281a:    2100        .!      MOVS     r1,#0
        0x1000281c:    9105        ..      STR      r1,[sp,#0x14]
        0x1000281e:    4905        .I      LDR      r1,[pc,#20] ; [0x10002834] = 0xffffffe5
        0x10002820:    4479        yD      ADD      r1,r1,pc
        0x10002822:    e9cd1003    ....    STRD     r1,r0,[sp,#0xc]
        0x10002826:    4611        .F      MOV      r1,r2
        0x10002828:    4668        hF      MOV      r0,sp
        0x1000282a:    f7fffe83    ....    BL       __printf ; 0x10002534
        0x1000282e:    b00f        ..      ADD      sp,sp,#0x3c
        0x10002830:    bd00        ..      POP      {pc}
    $d
        0x10002832:    0000        ..      DCW    0
        0x10002834:    ffffffe5    ....    DCD    4294967269
    $t
    .text
    _printf_cs_common
        0x10002838:    b510        ..      PUSH     {r4,lr}
        0x1000283a:    6943        Ci      LDR      r3,[r0,#0x14]
        0x1000283c:    b113        ..      CBZ      r3,0x10002844 ; _printf_cs_common + 12
        0x1000283e:    f3af8000    ....    NOP.W    
        0x10002842:    e001        ..      B        0x10002848 ; _printf_cs_common + 16
        0x10002844:    f7fffdc7    ....    BL       _printf_str ; 0x100023d6
        0x10002848:    2001        .       MOVS     r0,#1
        0x1000284a:    bd10        ..      POP      {r4,pc}
    _printf_char
        0x1000284c:    7812        .x      LDRB     r2,[r2,#0]
        0x1000284e:    f1000124    ..$.    ADD      r1,r0,#0x24
        0x10002852:    700a        .p      STRB     r2,[r1,#0]
        0x10002854:    2200        ."      MOVS     r2,#0
        0x10002856:    704a        Jp      STRB     r2,[r1,#1]
        0x10002858:    2201        ."      MOVS     r2,#1
        0x1000285a:    e7ed        ..      B        _printf_cs_common ; 0x10002838
    _printf_string
        0x1000285c:    6811        .h      LDR      r1,[r2,#0]
        0x1000285e:    f04f32ff    O..2    MOV      r2,#0xffffffff
        0x10002862:    e7e9        ..      B        _printf_cs_common ; 0x10002838
    .text
    _printf_char_file
        0x10002864:    4b07        .K      LDR      r3,[pc,#28] ; [0x10002884] = 0xd47
        0x10002866:    b570        p.      PUSH     {r4-r6,lr}
        0x10002868:    460d        .F      MOV      r5,r1
        0x1000286a:    447b        {D      ADD      r3,r3,pc
        0x1000286c:    f7ffffd1    ....    BL       _printf_char_common ; 0x10002812
        0x10002870:    4604        .F      MOV      r4,r0
        0x10002872:    4628        (F      MOV      r0,r5
        0x10002874:    f000f8d7    ....    BL       ferror ; 0x10002a26
        0x10002878:    b110        ..      CBZ      r0,0x10002880 ; _printf_char_file + 28
        0x1000287a:    f04f30ff    O..0    MOV      r0,#0xffffffff
        0x1000287e:    bd70        p.      POP      {r4-r6,pc}
        0x10002880:    4620         F      MOV      r0,r4
        0x10002882:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x10002884:    00000d47    G...    DCD    3399
    $t
    .text
    _initio
        0x10002888:    b510        ..      PUSH     {r4,lr}
        0x1000288a:    4842        BH      LDR      r0,[pc,#264] ; [0x10002994] = 0x2001f00c
        0x1000288c:    2154        T!      MOVS     r1,#0x54
        0x1000288e:    f7ffff31    ..1.    BL       __aeabi_memclr4 ; 0x100026f4
        0x10002892:    4841        AH      LDR      r0,[pc,#260] ; [0x10002998] = 0x2001f060
        0x10002894:    2154        T!      MOVS     r1,#0x54
        0x10002896:    f7ffff2d    ..-.    BL       __aeabi_memclr4 ; 0x100026f4
        0x1000289a:    4840        @H      LDR      r0,[pc,#256] ; [0x1000299c] = 0x2001f0b4
        0x1000289c:    2154        T!      MOVS     r1,#0x54
        0x1000289e:    f7ffff29    ..).    BL       __aeabi_memclr4 ; 0x100026f4
        0x100028a2:    493f        ?I      LDR      r1,[pc,#252] ; [0x100029a0] = 0x2001f000
        0x100028a4:    483b        ;H      LDR      r0,[pc,#236] ; [0x10002994] = 0x2001f00c
        0x100028a6:    4a3c        <J      LDR      r2,[pc,#240] ; [0x10002998] = 0x2001f060
        0x100028a8:    4b3f        ?K      LDR      r3,[pc,#252] ; [0x100029a8] = 0x2001f008
        0x100028aa:    6008        .`      STR      r0,[r1,#0]
        0x100028ac:    493d        =I      LDR      r1,[pc,#244] ; [0x100029a4] = 0x2001f004
        0x100028ae:    600a        .`      STR      r2,[r1,#0]
        0x100028b0:    493a        :I      LDR      r1,[pc,#232] ; [0x1000299c] = 0x2001f0b4
        0x100028b2:    6019        .`      STR      r1,[r3,#0]
        0x100028b4:    1c53        S.      ADDS     r3,r2,#1
        0x100028b6:    6503        .e      STR      r3,[r0,#0x50]
        0x100028b8:    1c48        H.      ADDS     r0,r1,#1
        0x100028ba:    6510        .e      STR      r0,[r2,#0x50]
        0x100028bc:    2001        .       MOVS     r0,#1
        0x100028be:    6508        .e      STR      r0,[r1,#0x50]
        0x100028c0:    483b        ;H      LDR      r0,[pc,#236] ; [0x100029b0] = 0x12b7
        0x100028c2:    4a34        4J      LDR      r2,[pc,#208] ; [0x10002994] = 0x2001f00c
        0x100028c4:    a139        9.      ADR      r1,{pc}+0xe8 ; 0x100029ac
        0x100028c6:    4478        xD      ADD      r0,r0,pc
        0x100028c8:    f000f8d4    ....    BL       _freopen_locked ; 0x10002a74
        0x100028cc:    b920         .      CBNZ     r0,0x100028d8 ; _initio + 80
        0x100028ce:    4838        8H      LDR      r0,[pc,#224] ; [0x100029b0] = 0x12b7
        0x100028d0:    4478        xD      ADD      r0,r0,pc
        0x100028d2:    380a        .8      SUBS     r0,r0,#0xa
        0x100028d4:    f000f971    ..q.    BL       __rt_SIGRTRED ; 0x10002bba
        0x100028d8:    4837        7H      LDR      r0,[pc,#220] ; [0x100029b8] = 0x12a3
        0x100028da:    4a2f        /J      LDR      r2,[pc,#188] ; [0x10002998] = 0x2001f060
        0x100028dc:    a135        5.      ADR      r1,{pc}+0xd8 ; 0x100029b4
        0x100028de:    4478        xD      ADD      r0,r0,pc
        0x100028e0:    f000f8c8    ....    BL       _freopen_locked ; 0x10002a74
        0x100028e4:    b920         .      CBNZ     r0,0x100028f0 ; _initio + 104
        0x100028e6:    4834        4H      LDR      r0,[pc,#208] ; [0x100029b8] = 0x12a3
        0x100028e8:    4478        xD      ADD      r0,r0,pc
        0x100028ea:    380a        .8      SUBS     r0,r0,#0xa
        0x100028ec:    f000f965    ..e.    BL       __rt_SIGRTRED ; 0x10002bba
        0x100028f0:    4832        2H      LDR      r0,[pc,#200] ; [0x100029bc] = 0x128f
        0x100028f2:    4a2a        *J      LDR      r2,[pc,#168] ; [0x1000299c] = 0x2001f0b4
        0x100028f4:    a12f        /.      ADR      r1,{pc}+0xc0 ; 0x100029b4
        0x100028f6:    4478        xD      ADD      r0,r0,pc
        0x100028f8:    f000f8bc    ....    BL       _freopen_locked ; 0x10002a74
        0x100028fc:    b920         .      CBNZ     r0,0x10002908 ; _initio + 128
        0x100028fe:    482f        /H      LDR      r0,[pc,#188] ; [0x100029bc] = 0x128f
        0x10002900:    4478        xD      ADD      r0,r0,pc
        0x10002902:    380a        .8      SUBS     r0,r0,#0xa
        0x10002904:    f000f959    ..Y.    BL       __rt_SIGRTRED ; 0x10002bba
        0x10002908:    2340        @#      MOVS     r3,#0x40
        0x1000290a:    4822        "H      LDR      r0,[pc,#136] ; [0x10002994] = 0x2001f00c
        0x1000290c:    00dc        ..      LSLS     r4,r3,#3
        0x1000290e:    2100        .!      MOVS     r1,#0
        0x10002910:    4622        "F      MOV      r2,r4
        0x10002912:    f000f88c    ....    BL       setvbuf ; 0x10002a2e
        0x10002916:    b120         .      CBZ      r0,0x10002922 ; _initio + 154
        0x10002918:    4825        %H      LDR      r0,[pc,#148] ; [0x100029b0] = 0x12b7
        0x1000291a:    4478        xD      ADD      r0,r0,pc
        0x1000291c:    3854        T8      SUBS     r0,r0,#0x54
        0x1000291e:    f000f94c    ..L.    BL       __rt_SIGRTRED ; 0x10002bba
        0x10002922:    481d        .H      LDR      r0,[pc,#116] ; [0x10002998] = 0x2001f060
        0x10002924:    4622        "F      MOV      r2,r4
        0x10002926:    2340        @#      MOVS     r3,#0x40
        0x10002928:    2100        .!      MOVS     r1,#0
        0x1000292a:    f000f880    ....    BL       setvbuf ; 0x10002a2e
        0x1000292e:    b120         .      CBZ      r0,0x1000293a ; _initio + 178
        0x10002930:    4821        !H      LDR      r0,[pc,#132] ; [0x100029b8] = 0x12a3
        0x10002932:    4478        xD      ADD      r0,r0,pc
        0x10002934:    3854        T8      SUBS     r0,r0,#0x54
        0x10002936:    f000f940    ..@.    BL       __rt_SIGRTRED ; 0x10002bba
        0x1000293a:    4818        .H      LDR      r0,[pc,#96] ; [0x1000299c] = 0x2001f0b4
        0x1000293c:    4622        "F      MOV      r2,r4
        0x1000293e:    2310        .#      MOVS     r3,#0x10
        0x10002940:    2100        .!      MOVS     r1,#0
        0x10002942:    f000f874    ..t.    BL       setvbuf ; 0x10002a2e
        0x10002946:    2800        .(      CMP      r0,#0
        0x10002948:    d006        ..      BEQ      0x10002958 ; _initio + 208
        0x1000294a:    481c        .H      LDR      r0,[pc,#112] ; [0x100029bc] = 0x128f
        0x1000294c:    4478        xD      ADD      r0,r0,pc
        0x1000294e:    e8bd4010    ...@    POP      {r4,lr}
        0x10002952:    3856        V8      SUBS     r0,r0,#0x56
        0x10002954:    f000b931    ..1.    B.W      __rt_SIGRTRED ; 0x10002bba
        0x10002958:    bd10        ..      POP      {r4,pc}
    _terminateio
        0x1000295a:    4810        .H      LDR      r0,[pc,#64] ; [0x1000299c] = 0x2001f0b4
        0x1000295c:    b570        p.      PUSH     {r4-r6,lr}
        0x1000295e:    6d00        .m      LDR      r0,[r0,#0x50]
        0x10002960:    f0200401     ...    BIC      r4,r0,#1
        0x10002964:    480b        .H      LDR      r0,[pc,#44] ; [0x10002994] = 0x2001f00c
        0x10002966:    f000f8fd    ....    BL       _fclose_internal ; 0x10002b64
        0x1000296a:    480b        .H      LDR      r0,[pc,#44] ; [0x10002998] = 0x2001f060
        0x1000296c:    f000f8fa    ....    BL       _fclose_internal ; 0x10002b64
        0x10002970:    480a        .H      LDR      r0,[pc,#40] ; [0x1000299c] = 0x2001f0b4
        0x10002972:    f000f8f7    ....    BL       _fclose_internal ; 0x10002b64
        0x10002976:    e009        ..      B        0x1000298c ; _terminateio + 50
        0x10002978:    6d20         m      LDR      r0,[r4,#0x50]
        0x1000297a:    f0200501     ...    BIC      r5,r0,#1
        0x1000297e:    4620         F      MOV      r0,r4
        0x10002980:    f000f8f0    ....    BL       _fclose_internal ; 0x10002b64
        0x10002984:    4620         F      MOV      r0,r4
        0x10002986:    f000f827    ..'.    BL       free ; 0x100029d8
        0x1000298a:    462c        ,F      MOV      r4,r5
        0x1000298c:    2c00        .,      CMP      r4,#0
        0x1000298e:    d1f3        ..      BNE      0x10002978 ; _terminateio + 30
        0x10002990:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x10002992:    0000        ..      DCW    0
        0x10002994:    2001f00c    ...     DCD    536997900
        0x10002998:    2001f060    `..     DCD    536997984
        0x1000299c:    2001f0b4    ...     DCD    536998068
        0x100029a0:    2001f000    ...     DCD    536997888
        0x100029a4:    2001f004    ...     DCD    536997892
        0x100029a8:    2001f008    ...     DCD    536997896
        0x100029ac:    00000072    r...    DCD    114
        0x100029b0:    000012b7    ....    DCD    4791
        0x100029b4:    00000077    w...    DCD    119
        0x100029b8:    000012a3    ....    DCD    4771
        0x100029bc:    0000128f    ....    DCD    4751
    $t
    .text
    _ttywrch
        0x100029c0:    b508        ..      PUSH     {r3,lr}
        0x100029c2:    4669        iF      MOV      r1,sp
        0x100029c4:    f88d0000    ....    STRB     r0,[sp,#0]
        0x100029c8:    2003        .       MOVS     r0,#3
        0x100029ca:    beab        ..      BKPT     #0xab
        0x100029cc:    bd08        ..      POP      {r3,pc}
    .text
    __I$use$semihosting
    __use_no_semihosting_swi
        0x100029ce:    4770        pG      BX       lr
    .text
    .text
    __aeabi_errno_addr
    __errno$intlibspace
    __rt_errno_addr$intlibspace
    __semihosting_library_function
        0x100029d0:    4800        .H      LDR      r0,[pc,#0] ; [0x100029d4] = 0x2001f108
        0x100029d2:    4770        pG      BX       lr
    $d
        0x100029d4:    2001f108    ...     DCD    536998152
    $t
    .text
    free
        0x100029d8:    b570        p.      PUSH     {r4-r6,lr}
        0x100029da:    4604        .F      MOV      r4,r0
        0x100029dc:    1f05        ..      SUBS     r5,r0,#4
        0x100029de:    f000f927    ..'.    BL       __rt_heap_descriptor ; 0x10002c30
        0x100029e2:    6800        .h      LDR      r0,[r0,#0]
        0x100029e4:    2c00        .,      CMP      r4,#0
        0x100029e6:    bf14        ..      ITE      NE
        0x100029e8:    6844        Dh      LDRNE    r4,[r0,#4]
        0x100029ea:    bd70        p.      POPEQ    {r4-r6,pc}
        0x100029ec:    2c00        .,      CMP      r4,#0
        0x100029ee:    bf18        ..      IT       NE
        0x100029f0:    42ac        .B      CMPNE    r4,r5
        0x100029f2:    bf3c        <.      ITT      CC
        0x100029f4:    4620         F      MOVCC    r0,r4
        0x100029f6:    6864        dh      LDRCC    r4,[r4,#4]
        0x100029f8:    d3f8        ..      BCC      0x100029ec ; free + 20
        0x100029fa:    6801        .h      LDR      r1,[r0,#0]
        0x100029fc:    180a        ..      ADDS     r2,r1,r0
        0x100029fe:    42aa        .B      CMP      r2,r5
        0x10002a00:    bf18        ..      IT       NE
        0x10002a02:    6045        E`      STRNE    r5,[r0,#4]
        0x10002a04:    d103        ..      BNE      0x10002a0e ; free + 54
        0x10002a06:    682a        *h      LDR      r2,[r5,#0]
        0x10002a08:    4605        .F      MOV      r5,r0
        0x10002a0a:    4411        .D      ADD      r1,r1,r2
        0x10002a0c:    6001        .`      STR      r1,[r0,#0]
        0x10002a0e:    6828        (h      LDR      r0,[r5,#0]
        0x10002a10:    1941        A.      ADDS     r1,r0,r5
        0x10002a12:    42a1        .B      CMP      r1,r4
        0x10002a14:    bf1c        ..      ITT      NE
        0x10002a16:    606c        l`      STRNE    r4,[r5,#4]
        0x10002a18:    bd70        p.      POPNE    {r4-r6,pc}
        0x10002a1a:    6861        ah      LDR      r1,[r4,#4]
        0x10002a1c:    6069        i`      STR      r1,[r5,#4]
        0x10002a1e:    6821        !h      LDR      r1,[r4,#0]
        0x10002a20:    4408        .D      ADD      r0,r0,r1
        0x10002a22:    6028        (`      STR      r0,[r5,#0]
        0x10002a24:    bd70        p.      POP      {r4-r6,pc}
    .text
    ferror
        0x10002a26:    7b00        .{      LDRB     r0,[r0,#0xc]
        0x10002a28:    f0000080    ....    AND      r0,r0,#0x80
        0x10002a2c:    4770        pG      BX       lr
    .text
    setvbuf
        0x10002a2e:    b570        p.      PUSH     {r4-r6,lr}
        0x10002a30:    68c4        .h      LDR      r4,[r0,#0xc]
        0x10002a32:    07a5        ..      LSLS     r5,r4,#30
        0x10002a34:    d013        ..      BEQ      0x10002a5e ; setvbuf + 48
        0x10002a36:    0265        e.      LSLS     r5,r4,#9
        0x10002a38:    d411        ..      BMI      0x10002a5e ; setvbuf + 48
        0x10002a3a:    f5b27f80    ....    CMP      r2,#0x100
        0x10002a3e:    d009        ..      BEQ      0x10002a54 ; setvbuf + 38
        0x10002a40:    f5b27f00    ....    CMP      r2,#0x200
        0x10002a44:    d006        ..      BEQ      0x10002a54 ; setvbuf + 38
        0x10002a46:    f5b26f80    ...o    CMP      r2,#0x400
        0x10002a4a:    d108        ..      BNE      0x10002a5e ; setvbuf + 48
        0x10002a4c:    2301        .#      MOVS     r3,#1
        0x10002a4e:    f1000124    ..$.    ADD      r1,r0,#0x24
        0x10002a52:    e006        ..      B        0x10002a62 ; setvbuf + 52
        0x10002a54:    1e5d        ].      SUBS     r5,r3,#1
        0x10002a56:    f06f467f    o..F    MVN      r6,#0xff000000
        0x10002a5a:    42b5        .B      CMP      r5,r6
        0x10002a5c:    d301        ..      BCC      0x10002a62 ; setvbuf + 52
        0x10002a5e:    2001        .       MOVS     r0,#1
        0x10002a60:    bd70        p.      POP      {r4-r6,pc}
        0x10002a62:    6101        .a      STR      r1,[r0,#0x10]
        0x10002a64:    61c3        .a      STR      r3,[r0,#0x1c]
        0x10002a66:    6041        A`      STR      r1,[r0,#4]
        0x10002a68:    f4246170    $.pa    BIC      r1,r4,#0xf00
        0x10002a6c:    4311        .C      ORRS     r1,r1,r2
        0x10002a6e:    60c1        .`      STR      r1,[r0,#0xc]
        0x10002a70:    2000        .       MOVS     r0,#0
        0x10002a72:    bd70        p.      POP      {r4-r6,pc}
    .text
    _freopen_locked
    freopen
        0x10002a74:    e92d41f0    -..A    PUSH     {r4-r8,lr}
        0x10002a78:    460c        .F      MOV      r4,r1
        0x10002a7a:    4616        .F      MOV      r6,r2
        0x10002a7c:    0007        ..      MOVS     r7,r0
        0x10002a7e:    d047        G.      BEQ      0x10002b10 ; _freopen_locked + 156
        0x10002a80:    4610        .F      MOV      r0,r2
        0x10002a82:    f000f86f    ..o.    BL       _fclose_internal ; 0x10002b64
        0x10002a86:    7820         x      LDRB     r0,[r4,#0]
        0x10002a88:    1c61        a.      ADDS     r1,r4,#1
        0x10002a8a:    2861        a(      CMP      r0,#0x61
        0x10002a8c:    d00a        ..      BEQ      0x10002aa4 ; _freopen_locked + 48
        0x10002a8e:    2872        r(      CMP      r0,#0x72
        0x10002a90:    d002        ..      BEQ      0x10002a98 ; _freopen_locked + 36
        0x10002a92:    2877        w(      CMP      r0,#0x77
        0x10002a94:    d13c        <.      BNE      0x10002b10 ; _freopen_locked + 156
        0x10002a96:    e002        ..      B        0x10002a9e ; _freopen_locked + 42
        0x10002a98:    2501        .%      MOVS     r5,#1
        0x10002a9a:    2400        .$      MOVS     r4,#0
        0x10002a9c:    e005        ..      B        0x10002aaa ; _freopen_locked + 54
        0x10002a9e:    2502        .%      MOVS     r5,#2
        0x10002aa0:    2404        .$      MOVS     r4,#4
        0x10002aa2:    e002        ..      B        0x10002aaa ; _freopen_locked + 54
        0x10002aa4:    2408        .$      MOVS     r4,#8
        0x10002aa6:    f2480502    H...    MOV      r5,#0x8002
        0x10002aaa:    f8110b01    ....    LDRB     r0,[r1],#1
        0x10002aae:    282b        +(      CMP      r0,#0x2b
        0x10002ab0:    d006        ..      BEQ      0x10002ac0 ; _freopen_locked + 76
        0x10002ab2:    2862        b(      CMP      r0,#0x62
        0x10002ab4:    d009        ..      BEQ      0x10002aca ; _freopen_locked + 86
        0x10002ab6:    f8110c01    ....    LDRB     r0,[r1,#-1]
        0x10002aba:    2874        t(      CMP      r0,#0x74
        0x10002abc:    d00a        ..      BEQ      0x10002ad4 ; _freopen_locked + 96
        0x10002abe:    e00b        ..      B        0x10002ad8 ; _freopen_locked + 100
        0x10002ac0:    f0450503    E...    ORR      r5,r5,#3
        0x10002ac4:    f0440402    D...    ORR      r4,r4,#2
        0x10002ac8:    e7ef        ..      B        0x10002aaa ; _freopen_locked + 54
        0x10002aca:    f0450504    E...    ORR      r5,r5,#4
        0x10002ace:    f0440401    D...    ORR      r4,r4,#1
        0x10002ad2:    e7ea        ..      B        0x10002aaa ; _freopen_locked + 54
        0x10002ad4:    f0440410    D...    ORR      r4,r4,#0x10
        0x10002ad8:    4638        8F      MOV      r0,r7
        0x10002ada:    4621        !F      MOV      r1,r4
        0x10002adc:    f000f874    ..t.    BL       _sys_open ; 0x10002bc8
        0x10002ae0:    1c41        A.      ADDS     r1,r0,#1
        0x10002ae2:    d015        ..      BEQ      0x10002b10 ; _freopen_locked + 156
        0x10002ae4:    2100        .!      MOVS     r1,#0
        0x10002ae6:    6131        1a      STR      r1,[r6,#0x10]
        0x10002ae8:    6071        q`      STR      r1,[r6,#4]
        0x10002aea:    f44f7100    O..q    MOV      r1,#0x200
        0x10002aee:    60f5        .`      STR      r5,[r6,#0xc]
        0x10002af0:    61f1        .a      STR      r1,[r6,#0x1c]
        0x10002af2:    6170        pa      STR      r0,[r6,#0x14]
        0x10002af4:    0720         .      LSLS     r0,r4,#28
        0x10002af6:    d504        ..      BPL      0x10002b02 ; _freopen_locked + 142
        0x10002af8:    4630        0F      MOV      r0,r6
        0x10002afa:    2202        ."      MOVS     r2,#2
        0x10002afc:    2100        .!      MOVS     r1,#0
        0x10002afe:    f000f911    ....    BL       _fseek ; 0x10002d24
        0x10002b02:    6d30        0m      LDR      r0,[r6,#0x50]
        0x10002b04:    f0400001    @...    ORR      r0,r0,#1
        0x10002b08:    6530        0e      STR      r0,[r6,#0x50]
        0x10002b0a:    4630        0F      MOV      r0,r6
        0x10002b0c:    e8bd81f0    ....    POP      {r4-r8,pc}
        0x10002b10:    2000        .       MOVS     r0,#0
        0x10002b12:    e7fb        ..      B        0x10002b0c ; _freopen_locked + 152
    fopen
        0x10002b14:    e92d41f0    -..A    PUSH     {r4-r8,lr}
        0x10002b18:    460d        .F      MOV      r5,r1
        0x10002b1a:    4606        .F      MOV      r6,r0
        0x10002b1c:    4c10        .L      LDR      r4,[pc,#64] ; [0x10002b60] = 0x2001f00c
        0x10002b1e:    6d20         m      LDR      r0,[r4,#0x50]
        0x10002b20:    07c1        ..      LSLS     r1,r0,#31
        0x10002b22:    d004        ..      BEQ      0x10002b2e ; fopen + 26
        0x10002b24:    0841        A.      LSRS     r1,r0,#1
        0x10002b26:    d004        ..      BEQ      0x10002b32 ; fopen + 30
        0x10002b28:    f0200401     ...    BIC      r4,r0,#1
        0x10002b2c:    e7f7        ..      B        0x10002b1e ; fopen + 10
        0x10002b2e:    4622        "F      MOV      r2,r4
        0x10002b30:    e00e        ..      B        0x10002b50 ; fopen + 60
        0x10002b32:    2054        T       MOVS     r0,#0x54
        0x10002b34:    f000f8c7    ....    BL       malloc ; 0x10002cc6
        0x10002b38:    0007        ..      MOVS     r7,r0
        0x10002b3a:    d00e        ..      BEQ      0x10002b5a ; fopen + 70
        0x10002b3c:    6d20         m      LDR      r0,[r4,#0x50]
        0x10002b3e:    f0470101    G...    ORR      r1,r7,#1
        0x10002b42:    4308        .C      ORRS     r0,r0,r1
        0x10002b44:    2154        T!      MOVS     r1,#0x54
        0x10002b46:    6520         e      STR      r0,[r4,#0x50]
        0x10002b48:    4638        8F      MOV      r0,r7
        0x10002b4a:    f7fffdd3    ....    BL       __aeabi_memclr4 ; 0x100026f4
        0x10002b4e:    463a        :F      MOV      r2,r7
        0x10002b50:    4629        )F      MOV      r1,r5
        0x10002b52:    4630        0F      MOV      r0,r6
        0x10002b54:    e8bd41f0    ...A    POP      {r4-r8,lr}
        0x10002b58:    e78c        ..      B        _freopen_locked ; 0x10002a74
        0x10002b5a:    2000        .       MOVS     r0,#0
        0x10002b5c:    e7d6        ..      B        0x10002b0c ; _freopen_locked + 152
    $d
        0x10002b5e:    0000        ..      DCW    0
        0x10002b60:    2001f00c    ...     DCD    536997900
    $t
    .text
    _fclose_internal
    fclose
        0x10002b64:    e92d47f0    -..G    PUSH     {r4-r10,lr}
        0x10002b68:    4604        .F      MOV      r4,r0
        0x10002b6a:    f04f0900    O...    MOV      r9,#0
        0x10002b6e:    f04f37ff    O..7    MOV      r7,#0xffffffff
        0x10002b72:    68c5        .h      LDR      r5,[r0,#0xc]
        0x10002b74:    e9d48604    ....    LDRD     r8,r6,[r4,#0x10]
        0x10002b78:    07a8        ..      LSLS     r0,r5,#30
        0x10002b7a:    d007        ..      BEQ      0x10002b8c ; _fclose_internal + 40
        0x10002b7c:    4620         F      MOV      r0,r4
        0x10002b7e:    f000f981    ....    BL       _fflush ; 0x10002e84
        0x10002b82:    4630        0F      MOV      r0,r6
        0x10002b84:    f000f82a    ..*.    BL       _sys_close ; 0x10002bdc
        0x10002b88:    2800        .(      CMP      r0,#0
        0x10002b8a:    da02        ..      BGE      0x10002b92 ; _fclose_internal + 46
        0x10002b8c:    4638        8F      MOV      r0,r7
        0x10002b8e:    e8bd87f0    ....    POP      {r4-r10,pc}
        0x10002b92:    0528        (.      LSLS     r0,r5,#20
        0x10002b94:    d502        ..      BPL      0x10002b9c ; _fclose_internal + 56
        0x10002b96:    4640        @F      MOV      r0,r8
        0x10002b98:    f7ffff1e    ....    BL       free ; 0x100029d8
        0x10002b9c:    214c        L!      MOVS     r1,#0x4c
        0x10002b9e:    4620         F      MOV      r0,r4
        0x10002ba0:    f7fffda8    ....    BL       __aeabi_memclr4 ; 0x100026f4
        0x10002ba4:    6d20         m      LDR      r0,[r4,#0x50]
        0x10002ba6:    f0200001     ...    BIC      r0,r0,#1
        0x10002baa:    6520         e      STR      r0,[r4,#0x50]
        0x10002bac:    4648        HF      MOV      r0,r9
        0x10002bae:    e7ee        ..      B        0x10002b8e ; _fclose_internal + 42
    .text
    __sig_exit
        0x10002bb0:    2800        .(      CMP      r0,#0
        0x10002bb2:    d001        ..      BEQ      0x10002bb8 ; __sig_exit + 8
        0x10002bb4:    f7ffbdc8    ....    B.W      _sys_exit ; 0x10002748
        0x10002bb8:    4770        pG      BX       lr
    .text
    __rt_SIGRTRED
        0x10002bba:    b510        ..      PUSH     {r4,lr}
        0x10002bbc:    f000f9c8    ....    BL       __rt_SIGRTRED_inner ; 0x10002f50
        0x10002bc0:    e8bd4010    ...@    POP      {r4,lr}
        0x10002bc4:    f7ffbff4    ....    B.W      __sig_exit ; 0x10002bb0
    .text
    _sys_open
        0x10002bc8:    b50e        ..      PUSH     {r1-r3,lr}
        0x10002bca:    e9cd0100    ....    STRD     r0,r1,[sp,#0]
        0x10002bce:    f000fa22    ..".    BL       strlen ; 0x10003016
        0x10002bd2:    9002        ..      STR      r0,[sp,#8]
        0x10002bd4:    4669        iF      MOV      r1,sp
        0x10002bd6:    2001        .       MOVS     r0,#1
        0x10002bd8:    beab        ..      BKPT     #0xab
        0x10002bda:    bd0e        ..      POP      {r1-r3,pc}
    _sys_close
        0x10002bdc:    b508        ..      PUSH     {r3,lr}
        0x10002bde:    4669        iF      MOV      r1,sp
        0x10002be0:    9000        ..      STR      r0,[sp,#0]
        0x10002be2:    2002        .       MOVS     r0,#2
        0x10002be4:    beab        ..      BKPT     #0xab
        0x10002be6:    bd08        ..      POP      {r3,pc}
    _sys_write
        0x10002be8:    b51f        ..      PUSH     {r0-r4,lr}
        0x10002bea:    e88d0007    ....    STM      sp,{r0-r2}
        0x10002bee:    4669        iF      MOV      r1,sp
        0x10002bf0:    2005        .       MOVS     r0,#5
        0x10002bf2:    beab        ..      BKPT     #0xab
        0x10002bf4:    b004        ..      ADD      sp,sp,#0x10
        0x10002bf6:    bd10        ..      POP      {r4,pc}
    _sys_read
        0x10002bf8:    b51f        ..      PUSH     {r0-r4,lr}
        0x10002bfa:    e88d000f    ....    STM      sp,{r0-r3}
        0x10002bfe:    4669        iF      MOV      r1,sp
        0x10002c00:    2006        .       MOVS     r0,#6
        0x10002c02:    beab        ..      BKPT     #0xab
        0x10002c04:    e7f6        ..      B        0x10002bf4 ; _sys_write + 12
    _sys_istty
        0x10002c06:    b508        ..      PUSH     {r3,lr}
        0x10002c08:    4669        iF      MOV      r1,sp
        0x10002c0a:    9000        ..      STR      r0,[sp,#0]
        0x10002c0c:    2009        .       MOVS     r0,#9
        0x10002c0e:    beab        ..      BKPT     #0xab
        0x10002c10:    bd08        ..      POP      {r3,pc}
    _sys_seek
        0x10002c12:    b51c        ..      PUSH     {r2-r4,lr}
        0x10002c14:    e9cd0100    ....    STRD     r0,r1,[sp,#0]
        0x10002c18:    4669        iF      MOV      r1,sp
        0x10002c1a:    200a        .       MOVS     r0,#0xa
        0x10002c1c:    beab        ..      BKPT     #0xab
        0x10002c1e:    bd1c        ..      POP      {r2-r4,pc}
    _sys_ensure
        0x10002c20:    4770        pG      BX       lr
    _sys_flen
        0x10002c22:    b508        ..      PUSH     {r3,lr}
        0x10002c24:    4669        iF      MOV      r1,sp
        0x10002c26:    9000        ..      STR      r0,[sp,#0]
        0x10002c28:    200c        .       MOVS     r0,#0xc
        0x10002c2a:    beab        ..      BKPT     #0xab
        0x10002c2c:    bd08        ..      POP      {r3,pc}
        0x10002c2e:    0000        ..      MOVS     r0,r0
    .text
    __rt_heap_descriptor
        0x10002c30:    4800        .H      LDR      r0,[pc,#0] ; [0x10002c34] = 0x2001f110
        0x10002c32:    4770        pG      BX       lr
    $d
        0x10002c34:    2001f110    ...     DCD    536998160
    $t
    .text
    __use_no_heap
        0x10002c38:    4770        pG      BX       lr
    __heap$guard
        0x10002c3a:    4770        pG      BX       lr
    .text
    _terminate_user_alloc
        0x10002c3c:    4770        pG      BX       lr
    _init_user_alloc
        0x10002c3e:    4770        pG      BX       lr
    __Heap_Full
        0x10002c40:    b538        8.      PUSH     {r3-r5,lr}
        0x10002c42:    4604        .F      MOV      r4,r0
        0x10002c44:    460a        .F      MOV      r2,r1
        0x10002c46:    2000        .       MOVS     r0,#0
        0x10002c48:    4669        iF      MOV      r1,sp
        0x10002c4a:    f3af8000    ....    NOP.W    
        0x10002c4e:    2800        .(      CMP      r0,#0
        0x10002c50:    bf08        ..      IT       EQ
        0x10002c52:    bd38        8.      POPEQ    {r3-r5,pc}
        0x10002c54:    4602        .F      MOV      r2,r0
        0x10002c56:    9900        ..      LDR      r1,[sp,#0]
        0x10002c58:    4620         F      MOV      r0,r4
        0x10002c5a:    f000f99a    ....    BL       __Heap_ProvideMemory ; 0x10002f92
        0x10002c5e:    2001        .       MOVS     r0,#1
        0x10002c60:    bd38        8.      POP      {r3-r5,pc}
    __Heap_Broken
        0x10002c62:    2001        .       MOVS     r0,#1
        0x10002c64:    f000b9d0    ....    B.W      __rt_SIGRTMEM ; 0x10003008
    _init_alloc
        0x10002c68:    b5f8        ..      PUSH     {r3-r7,lr}
        0x10002c6a:    f3af8000    ....    NOP.W    
        0x10002c6e:    4605        .F      MOV      r5,r0
        0x10002c70:    2000        .       MOVS     r0,#0
        0x10002c72:    460c        .F      MOV      r4,r1
        0x10002c74:    2010        .       MOVS     r0,#0x10
        0x10002c76:    bf00        ..      NOP      
        0x10002c78:    4606        .F      MOV      r6,r0
        0x10002c7a:    19a8        ..      ADDS     r0,r5,r6
        0x10002c7c:    42a0        .B      CMP      r0,r4
        0x10002c7e:    d90d        ..      BLS      0x10002c9c ; _init_alloc + 52
        0x10002c80:    4632        2F      MOV      r2,r6
        0x10002c82:    4669        iF      MOV      r1,sp
        0x10002c84:    2000        .       MOVS     r0,#0
        0x10002c86:    f3af8000    ....    NOP.W    
        0x10002c8a:    0007        ..      MOVS     r7,r0
        0x10002c8c:    bf08        ..      IT       EQ
        0x10002c8e:    f000f9bb    ....    BLEQ     __rt_SIGRTMEM ; 0x10003008
        0x10002c92:    9800        ..      LDR      r0,[sp,#0]
        0x10002c94:    42a0        .B      CMP      r0,r4
        0x10002c96:    bf18        ..      IT       NE
        0x10002c98:    4605        .F      MOVNE    r5,r0
        0x10002c9a:    19c4        ..      ADDS     r4,r0,r7
        0x10002c9c:    f7ffffc8    ....    BL       __rt_heap_descriptor ; 0x10002c30
        0x10002ca0:    6005        .`      STR      r5,[r0,#0]
        0x10002ca2:    4607        .F      MOV      r7,r0
        0x10002ca4:    1df0        ..      ADDS     r0,r6,#7
        0x10002ca6:    f0200007     ...    BIC      r0,r0,#7
        0x10002caa:    1946        F.      ADDS     r6,r0,r5
        0x10002cac:    4628        (F      MOV      r0,r5
        0x10002cae:    f000f969    ..i.    BL       __Heap_Initialize ; 0x10002f84
        0x10002cb2:    42b4        .B      CMP      r4,r6
        0x10002cb4:    bf08        ..      IT       EQ
        0x10002cb6:    bdf8        ..      POPEQ    {r3-r7,pc}
        0x10002cb8:    1ba2        ..      SUBS     r2,r4,r6
        0x10002cba:    4631        1F      MOV      r1,r6
        0x10002cbc:    6838        8h      LDR      r0,[r7,#0]
        0x10002cbe:    e8bd40f8    ...@    POP      {r3-r7,lr}
        0x10002cc2:    f000b966    ..f.    B.W      __Heap_ProvideMemory ; 0x10002f92
    .text
    malloc
        0x10002cc6:    b570        p.      PUSH     {r4-r6,lr}
        0x10002cc8:    4606        .F      MOV      r6,r0
        0x10002cca:    f7ffffb1    ....    BL       __rt_heap_descriptor ; 0x10002c30
        0x10002cce:    6805        .h      LDR      r5,[r0,#0]
        0x10002cd0:    f106000b    ....    ADD      r0,r6,#0xb
        0x10002cd4:    f0200407     ...    BIC      r4,r0,#7
        0x10002cd8:    42b4        .B      CMP      r4,r6
        0x10002cda:    bf9c        ..      ITT      LS
        0x10002cdc:    2000        .       MOVLS    r0,#0
        0x10002cde:    bd70        p.      POPLS    {r4-r6,pc}
        0x10002ce0:    462b        +F      MOV      r3,r5
        0x10002ce2:    686a        jh      LDR      r2,[r5,#4]
        0x10002ce4:    b1ba        ..      CBZ      r2,0x10002d16 ; malloc + 80
        0x10002ce6:    6810        .h      LDR      r0,[r2,#0]
        0x10002ce8:    42a0        .B      CMP      r0,r4
        0x10002cea:    d310        ..      BCC      0x10002d0e ; malloc + 72
        0x10002cec:    f1040108    ....    ADD      r1,r4,#8
        0x10002cf0:    4288        .B      CMP      r0,r1
        0x10002cf2:    bf3c        <.      ITT      CC
        0x10002cf4:    6850        Ph      LDRCC    r0,[r2,#4]
        0x10002cf6:    6058        X`      STRCC    r0,[r3,#4]
        0x10002cf8:    d307        ..      BCC      0x10002d0a ; malloc + 68
        0x10002cfa:    6851        Qh      LDR      r1,[r2,#4]
        0x10002cfc:    1910        ..      ADDS     r0,r2,r4
        0x10002cfe:    6041        A`      STR      r1,[r0,#4]
        0x10002d00:    6811        .h      LDR      r1,[r2,#0]
        0x10002d02:    1b09        ..      SUBS     r1,r1,r4
        0x10002d04:    6001        .`      STR      r1,[r0,#0]
        0x10002d06:    6058        X`      STR      r0,[r3,#4]
        0x10002d08:    6014        .`      STR      r4,[r2,#0]
        0x10002d0a:    1d10        ..      ADDS     r0,r2,#4
        0x10002d0c:    bd70        p.      POP      {r4-r6,pc}
        0x10002d0e:    4613        .F      MOV      r3,r2
        0x10002d10:    6852        Rh      LDR      r2,[r2,#4]
        0x10002d12:    2a00        .*      CMP      r2,#0
        0x10002d14:    d1e7        ..      BNE      0x10002ce6 ; malloc + 32
        0x10002d16:    4621        !F      MOV      r1,r4
        0x10002d18:    4628        (F      MOV      r0,r5
        0x10002d1a:    f7ffff91    ....    BL       __Heap_Full ; 0x10002c40
        0x10002d1e:    2800        .(      CMP      r0,#0
        0x10002d20:    d1de        ..      BNE      0x10002ce0 ; malloc + 26
        0x10002d22:    bd70        p.      POP      {r4-r6,pc}
    .text
    _fseek
    fseek
        0x10002d24:    e92d41f0    -..A    PUSH     {r4-r8,lr}
        0x10002d28:    4604        .F      MOV      r4,r0
        0x10002d2a:    4616        .F      MOV      r6,r2
        0x10002d2c:    460d        .F      MOV      r5,r1
        0x10002d2e:    6947        Gi      LDR      r7,[r0,#0x14]
        0x10002d30:    7b00        .{      LDRB     r0,[r0,#0xc]
        0x10002d32:    0780        ..      LSLS     r0,r0,#30
        0x10002d34:    d02e        ..      BEQ      0x10002d94 ; _fseek + 112
        0x10002d36:    4638        8F      MOV      r0,r7
        0x10002d38:    f7ffff65    ..e.    BL       _sys_istty ; 0x10002c06
        0x10002d3c:    bb50        P.      CBNZ     r0,0x10002d94 ; _fseek + 112
        0x10002d3e:    b33e        >.      CBZ      r6,0x10002d90 ; _fseek + 108
        0x10002d40:    2e01        ..      CMP      r6,#1
        0x10002d42:    d002        ..      BEQ      0x10002d4a ; _fseek + 38
        0x10002d44:    2e02        ..      CMP      r6,#2
        0x10002d46:    d125        %.      BNE      0x10002d94 ; _fseek + 112
        0x10002d48:    e004        ..      B        0x10002d54 ; _fseek + 48
        0x10002d4a:    4620         F      MOV      r0,r4
        0x10002d4c:    f000f93b    ..;.    BL       _ftell_internal ; 0x10002fc6
        0x10002d50:    4405        .D      ADD      r5,r5,r0
        0x10002d52:    e01d        ..      B        0x10002d90 ; _fseek + 108
        0x10002d54:    4638        8F      MOV      r0,r7
        0x10002d56:    f7ffff64    ..d.    BL       _sys_flen ; 0x10002c22
        0x10002d5a:    68e1        .h      LDR      r1,[r4,#0xc]
        0x10002d5c:    2800        .(      CMP      r0,#0
        0x10002d5e:    f0410110    A...    ORR      r1,r1,#0x10
        0x10002d62:    60e1        .`      STR      r1,[r4,#0xc]
        0x10002d64:    da05        ..      BGE      0x10002d72 ; _fseek + 78
        0x10002d66:    4620         F      MOV      r0,r4
        0x10002d68:    f000f858    ..X.    BL       _seterr ; 0x10002e1c
        0x10002d6c:    2001        .       MOVS     r0,#1
        0x10002d6e:    e8bd81f0    ....    POP      {r4-r8,pc}
        0x10002d72:    03c9        ..      LSLS     r1,r1,#15
        0x10002d74:    d50b        ..      BPL      0x10002d8e ; _fseek + 106
        0x10002d76:    6862        bh      LDR      r2,[r4,#4]
        0x10002d78:    6ae1        .j      LDR      r1,[r4,#0x2c]
        0x10002d7a:    4291        .B      CMP      r1,r2
        0x10002d7c:    d800        ..      BHI      0x10002d80 ; _fseek + 92
        0x10002d7e:    4611        .F      MOV      r1,r2
        0x10002d80:    69a2        .i      LDR      r2,[r4,#0x18]
        0x10002d82:    4411        .D      ADD      r1,r1,r2
        0x10002d84:    6922        "i      LDR      r2,[r4,#0x10]
        0x10002d86:    1a89        ..      SUBS     r1,r1,r2
        0x10002d88:    4281        .B      CMP      r1,r0
        0x10002d8a:    dd00        ..      BLE      0x10002d8e ; _fseek + 106
        0x10002d8c:    4608        .F      MOV      r0,r1
        0x10002d8e:    4405        .D      ADD      r5,r5,r0
        0x10002d90:    2d00        .-      CMP      r5,#0
        0x10002d92:    da01        ..      BGE      0x10002d98 ; _fseek + 116
        0x10002d94:    2002        .       MOVS     r0,#2
        0x10002d96:    e7ea        ..      B        0x10002d6e ; _fseek + 74
        0x10002d98:    6ae1        .j      LDR      r1,[r4,#0x2c]
        0x10002d9a:    6860        `h      LDR      r0,[r4,#4]
        0x10002d9c:    68e2        .h      LDR      r2,[r4,#0xc]
        0x10002d9e:    4281        .B      CMP      r1,r0
        0x10002da0:    d206        ..      BCS      0x10002db0 ; _fseek + 140
        0x10002da2:    0391        ..      LSLS     r1,r2,#14
        0x10002da4:    62e0        .b      STR      r0,[r4,#0x2c]
        0x10002da6:    d503        ..      BPL      0x10002db0 ; _fseek + 140
        0x10002da8:    f4223100    "..1    BIC      r1,r2,#0x20000
        0x10002dac:    f0410210    A...    ORR      r2,r1,#0x10
        0x10002db0:    69a6        .i      LDR      r6,[r4,#0x18]
        0x10002db2:    2700        .'      MOVS     r7,#0
        0x10002db4:    42ae        .B      CMP      r6,r5
        0x10002db6:    dc13        ..      BGT      0x10002de0 ; _fseek + 188
        0x10002db8:    6ae1        .j      LDR      r1,[r4,#0x2c]
        0x10002dba:    4281        .B      CMP      r1,r0
        0x10002dbc:    d901        ..      BLS      0x10002dc2 ; _fseek + 158
        0x10002dbe:    460b        .F      MOV      r3,r1
        0x10002dc0:    e000        ..      B        0x10002dc4 ; _fseek + 160
        0x10002dc2:    4603        .F      MOV      r3,r0
        0x10002dc4:    eb030c06    ....    ADD      r12,r3,r6
        0x10002dc8:    6923        #i      LDR      r3,[r4,#0x10]
        0x10002dca:    ebac0c03    ....    SUB      r12,r12,r3
        0x10002dce:    45ac        .E      CMP      r12,r5
        0x10002dd0:    dd06        ..      BLE      0x10002de0 ; _fseek + 188
        0x10002dd2:    4281        .B      CMP      r1,r0
        0x10002dd4:    d901        ..      BLS      0x10002dda ; _fseek + 182
        0x10002dd6:    468c        .F      MOV      r12,r1
        0x10002dd8:    e000        ..      B        0x10002ddc ; _fseek + 184
        0x10002dda:    4684        .F      MOV      r12,r0
        0x10002ddc:    459c        .E      CMP      r12,r3
        0x10002dde:    d105        ..      BNE      0x10002dec ; _fseek + 200
        0x10002de0:    60a7        .`      STR      r7,[r4,#8]
        0x10002de2:    6027        '`      STR      r7,[r4,#0]
        0x10002de4:    f0420020    B. .    ORR      r0,r2,#0x20
        0x10002de8:    62a5        .b      STR      r5,[r4,#0x28]
        0x10002dea:    e00d        ..      B        0x10002e08 ; _fseek + 228
        0x10002dec:    1bad        ..      SUBS     r5,r5,r6
        0x10002dee:    69e6        .i      LDR      r6,[r4,#0x1c]
        0x10002df0:    1bae        ..      SUBS     r6,r5,r6
        0x10002df2:    4281        .B      CMP      r1,r0
        0x10002df4:    60a6        .`      STR      r6,[r4,#8]
        0x10002df6:    d900        ..      BLS      0x10002dfa ; _fseek + 214
        0x10002df8:    4608        .F      MOV      r0,r1
        0x10002dfa:    1ac0        ..      SUBS     r0,r0,r3
        0x10002dfc:    1a28        (.      SUBS     r0,r5,r0
        0x10002dfe:    6020         `      STR      r0,[r4,#0]
        0x10002e00:    1958        X.      ADDS     r0,r3,r5
        0x10002e02:    6060        ``      STR      r0,[r4,#4]
        0x10002e04:    f0220020    ". .    BIC      r0,r2,#0x20
        0x10002e08:    4903        .I      LDR      r1,[pc,#12] ; [0x10002e18] = 0xffd7cfbf
        0x10002e0a:    4008        .@      ANDS     r0,r0,r1
        0x10002e0c:    60e0        .`      STR      r0,[r4,#0xc]
        0x10002e0e:    2000        .       MOVS     r0,#0
        0x10002e10:    f8847048    ..Hp    STRB     r7,[r4,#0x48]
        0x10002e14:    e7ab        ..      B        0x10002d6e ; _fseek + 74
    $d
        0x10002e16:    0000        ..      DCW    0
        0x10002e18:    ffd7cfbf    ....    DCD    4292333503
    $t
    .text
    _seterr
        0x10002e1c:    68c1        .h      LDR      r1,[r0,#0xc]
        0x10002e1e:    f4211100    !...    BIC      r1,r1,#0x200000
        0x10002e22:    f0410180    A...    ORR      r1,r1,#0x80
        0x10002e26:    60c1        .`      STR      r1,[r0,#0xc]
        0x10002e28:    2100        .!      MOVS     r1,#0
        0x10002e2a:    6081        .`      STR      r1,[r0,#8]
        0x10002e2c:    6001        .`      STR      r1,[r0,#0]
        0x10002e2e:    4770        pG      BX       lr
    _writebuf
        0x10002e30:    e92d47f0    -..G    PUSH     {r4-r10,lr}
        0x10002e34:    4681        .F      MOV      r9,r0
        0x10002e36:    4614        .F      MOV      r4,r2
        0x10002e38:    460e        .F      MOV      r6,r1
        0x10002e3a:    f04f38ff    O..8    MOV      r8,#0xffffffff
        0x10002e3e:    4832        2H      LDR      r0,[pc,#200] ; [0x10002f08] = 0x20010
        0x10002e40:    68d5        .h      LDR      r5,[r2,#0xc]
        0x10002e42:    6957        Wi      LDR      r7,[r2,#0x14]
        0x10002e44:    4205        .B      TST      r5,r0
        0x10002e46:    d009        ..      BEQ      0x10002e5c ; _writebuf + 44
        0x10002e48:    4638        8F      MOV      r0,r7
        0x10002e4a:    69a1        .i      LDR      r1,[r4,#0x18]
        0x10002e4c:    f7fffee1    ....    BL       _sys_seek ; 0x10002c12
        0x10002e50:    2800        .(      CMP      r0,#0
        0x10002e52:    db11        ..      BLT      0x10002e78 ; _writebuf + 72
        0x10002e54:    482c        ,H      LDR      r0,[pc,#176] ; [0x10002f08] = 0x20010
        0x10002e56:    43c0        .C      MVNS     r0,r0
        0x10002e58:    4005        .@      ANDS     r5,r5,r0
        0x10002e5a:    60e5        .`      STR      r5,[r4,#0xc]
        0x10002e5c:    462b        +F      MOV      r3,r5
        0x10002e5e:    4632        2F      MOV      r2,r6
        0x10002e60:    4649        IF      MOV      r1,r9
        0x10002e62:    4638        8F      MOV      r0,r7
        0x10002e64:    f7fffec0    ....    BL       _sys_write ; 0x10002be8
        0x10002e68:    69a1        .i      LDR      r1,[r4,#0x18]
        0x10002e6a:    f0204200     ..B    BIC      r2,r0,#0x80000000
        0x10002e6e:    1ab2        ..      SUBS     r2,r6,r2
        0x10002e70:    4411        .D      ADD      r1,r1,r2
        0x10002e72:    2800        .(      CMP      r0,#0
        0x10002e74:    61a1        .a      STR      r1,[r4,#0x18]
        0x10002e76:    d003        ..      BEQ      0x10002e80 ; _writebuf + 80
        0x10002e78:    4620         F      MOV      r0,r4
        0x10002e7a:    f7ffffcf    ....    BL       _seterr ; 0x10002e1c
        0x10002e7e:    4640        @F      MOV      r0,r8
        0x10002e80:    e8bd87f0    ....    POP      {r4-r10,pc}
    _fflush
        0x10002e84:    b570        p.      PUSH     {r4-r6,lr}
        0x10002e86:    4604        .F      MOV      r4,r0
        0x10002e88:    6905        .i      LDR      r5,[r0,#0x10]
        0x10002e8a:    6ac0        .j      LDR      r0,[r0,#0x2c]
        0x10002e8c:    6861        ah      LDR      r1,[r4,#4]
        0x10002e8e:    4288        .B      CMP      r0,r1
        0x10002e90:    d800        ..      BHI      0x10002e94 ; _fflush + 16
        0x10002e92:    4608        .F      MOV      r0,r1
        0x10002e94:    68e1        .h      LDR      r1,[r4,#0xc]
        0x10002e96:    f4211120    !. .    BIC      r1,r1,#0x280000
        0x10002e9a:    60e1        .`      STR      r1,[r4,#0xc]
        0x10002e9c:    03c9        ..      LSLS     r1,r1,#15
        0x10002e9e:    d512        ..      BPL      0x10002ec6 ; _fflush + 66
        0x10002ea0:    42a8        .B      CMP      r0,r5
        0x10002ea2:    d008        ..      BEQ      0x10002eb6 ; _fflush + 50
        0x10002ea4:    4622        "F      MOV      r2,r4
        0x10002ea6:    1b41        A.      SUBS     r1,r0,r5
        0x10002ea8:    4628        (F      MOV      r0,r5
        0x10002eaa:    f7ffffc1    ....    BL       _writebuf ; 0x10002e30
        0x10002eae:    b110        ..      CBZ      r0,0x10002eb6 ; _fflush + 50
        0x10002eb0:    f04f30ff    O..0    MOV      r0,#0xffffffff
        0x10002eb4:    bd70        p.      POP      {r4-r6,pc}
        0x10002eb6:    2000        .       MOVS     r0,#0
        0x10002eb8:    62e5        .b      STR      r5,[r4,#0x2c]
        0x10002eba:    e9c45001    ...P    STRD     r5,r0,[r4,#4]
        0x10002ebe:    68e0        .h      LDR      r0,[r4,#0xc]
        0x10002ec0:    f4203080     ..0    BIC      r0,r0,#0x10000
        0x10002ec4:    60e0        .`      STR      r0,[r4,#0xc]
        0x10002ec6:    2000        .       MOVS     r0,#0
        0x10002ec8:    bd70        p.      POP      {r4-r6,pc}
    _deferredlazyseek
        0x10002eca:    b510        ..      PUSH     {r4,lr}
        0x10002ecc:    4604        .F      MOV      r4,r0
        0x10002ece:    68c0        .h      LDR      r0,[r0,#0xc]
        0x10002ed0:    f0200020     . .    BIC      r0,r0,#0x20
        0x10002ed4:    60e0        .`      STR      r0,[r4,#0xc]
        0x10002ed6:    6aa1        .j      LDR      r1,[r4,#0x28]
        0x10002ed8:    69a0        .i      LDR      r0,[r4,#0x18]
        0x10002eda:    4288        .B      CMP      r0,r1
        0x10002edc:    d00d        ..      BEQ      0x10002efa ; _deferredlazyseek + 48
        0x10002ede:    4620         F      MOV      r0,r4
        0x10002ee0:    f7ffffd0    ....    BL       _fflush ; 0x10002e84
        0x10002ee4:    68e0        .h      LDR      r0,[r4,#0xc]
        0x10002ee6:    f4205040     .@P    BIC      r0,r0,#0x3000
        0x10002eea:    f0400010    @...    ORR      r0,r0,#0x10
        0x10002eee:    60e0        .`      STR      r0,[r4,#0xc]
        0x10002ef0:    6aa0        .j      LDR      r0,[r4,#0x28]
        0x10002ef2:    61a0        .a      STR      r0,[r4,#0x18]
        0x10002ef4:    6920         i      LDR      r0,[r4,#0x10]
        0x10002ef6:    62e0        .b      STR      r0,[r4,#0x2c]
        0x10002ef8:    6060        ``      STR      r0,[r4,#4]
        0x10002efa:    f2440140    D.@.    MOV      r1,#0x4040
        0x10002efe:    68e0        .h      LDR      r0,[r4,#0xc]
        0x10002f00:    4388        .C      BICS     r0,r0,r1
        0x10002f02:    60e0        .`      STR      r0,[r4,#0xc]
        0x10002f04:    bd10        ..      POP      {r4,pc}
    $d
        0x10002f06:    0000        ..      DCW    0
        0x10002f08:    00020010    ....    DCD    131088
    $t
    .text
    exit
        0x10002f0c:    b510        ..      PUSH     {r4,lr}
        0x10002f0e:    4604        .F      MOV      r4,r0
        0x10002f10:    f3af8000    ....    NOP.W    
        0x10002f14:    4620         F      MOV      r0,r4
        0x10002f16:    e8bd4010    ...@    POP      {r4,lr}
        0x10002f1a:    f7ffba23    ..#.    B        __rt_exit ; 0x10002364
    .text
    __default_signal_display
        0x10002f1e:    b570        p.      PUSH     {r4-r6,lr}
        0x10002f20:    4605        .F      MOV      r5,r0
        0x10002f22:    460c        .F      MOV      r4,r1
        0x10002f24:    200a        .       MOVS     r0,#0xa
        0x10002f26:    e000        ..      B        0x10002f2a ; __default_signal_display + 12
        0x10002f28:    1c6d        m.      ADDS     r5,r5,#1
        0x10002f2a:    f7fffd49    ..I.    BL       _ttywrch ; 0x100029c0
        0x10002f2e:    b135        5.      CBZ      r5,0x10002f3e ; __default_signal_display + 32
        0x10002f30:    7828        (x      LDRB     r0,[r5,#0]
        0x10002f32:    2800        .(      CMP      r0,#0
        0x10002f34:    d1f8        ..      BNE      0x10002f28 ; __default_signal_display + 10
        0x10002f36:    e002        ..      B        0x10002f3e ; __default_signal_display + 32
        0x10002f38:    1c64        d.      ADDS     r4,r4,#1
        0x10002f3a:    f7fffd41    ..A.    BL       _ttywrch ; 0x100029c0
        0x10002f3e:    b114        ..      CBZ      r4,0x10002f46 ; __default_signal_display + 40
        0x10002f40:    7820         x      LDRB     r0,[r4,#0]
        0x10002f42:    2800        .(      CMP      r0,#0
        0x10002f44:    d1f8        ..      BNE      0x10002f38 ; __default_signal_display + 26
        0x10002f46:    e8bd4070    ..p@    POP      {r4-r6,lr}
        0x10002f4a:    200a        .       MOVS     r0,#0xa
        0x10002f4c:    f7ffbd38    ..8.    B.W      _ttywrch ; 0x100029c0
    .text
    __rt_SIGRTRED_inner
        0x10002f50:    b510        ..      PUSH     {r4,lr}
        0x10002f52:    4601        .F      MOV      r1,r0
        0x10002f54:    a002        ..      ADR      r0,{pc}+0xc ; 0x10002f60
        0x10002f56:    f7ffffe2    ....    BL       __default_signal_display ; 0x10002f1e
        0x10002f5a:    2001        .       MOVS     r0,#1
        0x10002f5c:    bd10        ..      POP      {r4,pc}
    $d
        0x10002f5e:    0000        ..      DCW    0
        0x10002f60:    52474953    SIGR    DCD    1380403539
        0x10002f64:    44455254    TRED    DCD    1145393748
        0x10002f68:    6552203a    : Re    DCD    1699881018
        0x10002f6c:    65726964    dire    DCD    1701996900
        0x10002f70:    203a7463    ct:     DCD    540701795
        0x10002f74:    276e6163    can'    DCD    661545315
        0x10002f78:    706f2074    t op    DCD    1886330996
        0x10002f7c:    203a6e65    en:     DCD    540700261
        0x10002f80:    00000000    ....    DCD    0
    $t
    .text
    .text
    __Heap_Initialize
    _maybe_terminate_alloc
        0x10002f84:    2100        .!      MOVS     r1,#0
        0x10002f86:    6001        .`      STR      r1,[r0,#0]
        0x10002f88:    e9c01001    ....    STRD     r1,r0,[r0,#4]
        0x10002f8c:    4770        pG      BX       lr
    __Heap_DescSize
        0x10002f8e:    2010        .       MOVS     r0,#0x10
        0x10002f90:    4770        pG      BX       lr
    .text
    __Heap_ProvideMemory
        0x10002f92:    4603        .F      MOV      r3,r0
        0x10002f94:    6840        @h      LDR      r0,[r0,#4]
        0x10002f96:    468c        .F      MOV      r12,r1
        0x10002f98:    2800        .(      CMP      r0,#0
        0x10002f9a:    bf18        ..      IT       NE
        0x10002f9c:    4288        .B      CMPNE    r0,r1
        0x10002f9e:    bf3c        <.      ITT      CC
        0x10002fa0:    4603        .F      MOVCC    r3,r0
        0x10002fa2:    6840        @h      LDRCC    r0,[r0,#4]
        0x10002fa4:    d3f8        ..      BCC      0x10002f98 ; __Heap_ProvideMemory + 6
        0x10002fa6:    6818        .h      LDR      r0,[r3,#0]
        0x10002fa8:    4418        .D      ADD      r0,r0,r3
        0x10002faa:    4288        .B      CMP      r0,r1
        0x10002fac:    d007        ..      BEQ      0x10002fbe ; __Heap_ProvideMemory + 44
        0x10002fae:    f10c0003    ....    ADD      r0,r12,#3
        0x10002fb2:    f0200007     ...    BIC      r0,r0,#7
        0x10002fb6:    1d00        ..      ADDS     r0,r0,#4
        0x10002fb8:    1a41        A.      SUBS     r1,r0,r1
        0x10002fba:    1a52        R.      SUBS     r2,r2,r1
        0x10002fbc:    4601        .F      MOV      r1,r0
        0x10002fbe:    1d08        ..      ADDS     r0,r1,#4
        0x10002fc0:    600a        .`      STR      r2,[r1,#0]
        0x10002fc2:    f7ffbd09    ....    B.W      free ; 0x100029d8
    .text
    _ftell_internal
    ftell
        0x10002fc6:    b510        ..      PUSH     {r4,lr}
        0x10002fc8:    4601        .F      MOV      r1,r0
        0x10002fca:    68c2        .h      LDR      r2,[r0,#0xc]
        0x10002fcc:    0790        ..      LSLS     r0,r2,#30
        0x10002fce:    d003        ..      BEQ      0x10002fd8 ; _ftell_internal + 18
        0x10002fd0:    0690        ..      LSLS     r0,r2,#26
        0x10002fd2:    d507        ..      BPL      0x10002fe4 ; _ftell_internal + 30
        0x10002fd4:    6a88        .j      LDR      r0,[r1,#0x28]
        0x10002fd6:    e00a        ..      B        0x10002fee ; _ftell_internal + 40
        0x10002fd8:    f7fffcfa    ....    BL       __aeabi_errno_addr ; 0x100029d0
        0x10002fdc:    2101        .!      MOVS     r1,#1
        0x10002fde:    6001        .`      STR      r1,[r0,#0]
        0x10002fe0:    1e88        ..      SUBS     r0,r1,#2
        0x10002fe2:    bd10        ..      POP      {r4,pc}
        0x10002fe4:    698b        .i      LDR      r3,[r1,#0x18]
        0x10002fe6:    6848        Hh      LDR      r0,[r1,#4]
        0x10002fe8:    4418        .D      ADD      r0,r0,r3
        0x10002fea:    690b        .i      LDR      r3,[r1,#0x10]
        0x10002fec:    1ac0        ..      SUBS     r0,r0,r3
        0x10002fee:    f8913048    ..H0    LDRB     r3,[r1,#0x48]
        0x10002ff2:    b11b        ..      CBZ      r3,0x10002ffc ; _ftell_internal + 54
        0x10002ff4:    f8911049    ..I.    LDRB     r1,[r1,#0x49]
        0x10002ff8:    1a40        @.      SUBS     r0,r0,r1
        0x10002ffa:    bd10        ..      POP      {r4,pc}
        0x10002ffc:    0311        ..      LSLS     r1,r2,#12
        0x10002ffe:    d5fc        ..      BPL      0x10002ffa ; _ftell_internal + 52
        0x10003000:    2800        .(      CMP      r0,#0
        0x10003002:    ddfa        ..      BLE      0x10002ffa ; _ftell_internal + 52
        0x10003004:    1e40        @.      SUBS     r0,r0,#1
        0x10003006:    bd10        ..      POP      {r4,pc}
    .text
    __rt_SIGRTMEM
        0x10003008:    b510        ..      PUSH     {r4,lr}
        0x1000300a:    f000f823    ..#.    BL       __rt_SIGRTMEM_inner ; 0x10003054
        0x1000300e:    e8bd4010    ...@    POP      {r4,lr}
        0x10003012:    f7ffbdcd    ....    B.W      __sig_exit ; 0x10002bb0
    .text
    strlen
        0x10003016:    b510        ..      PUSH     {r4,lr}
        0x10003018:    1c43        C.      ADDS     r3,r0,#1
        0x1000301a:    e002        ..      B        0x10003022 ; strlen + 12
        0x1000301c:    f8101b01    ....    LDRB     r1,[r0],#1
        0x10003020:    b171        q.      CBZ      r1,0x10003040 ; strlen + 42
        0x10003022:    0781        ..      LSLS     r1,r0,#30
        0x10003024:    d1fa        ..      BNE      0x1000301c ; strlen + 6
        0x10003026:    f04f3201    O..2    MOV      r2,#0x1010101
        0x1000302a:    c802        ..      LDM      r0!,{r1}
        0x1000302c:    1a8c        ..      SUBS     r4,r1,r2
        0x1000302e:    438c        .C      BICS     r4,r4,r1
        0x10003030:    ea1411c2    ....    ANDS     r1,r4,r2,LSL #7
        0x10003034:    d0f9        ..      BEQ      0x1000302a ; strlen + 20
        0x10003036:    1ac0        ..      SUBS     r0,r0,r3
        0x10003038:    060a        ..      LSLS     r2,r1,#24
        0x1000303a:    d003        ..      BEQ      0x10003044 ; strlen + 46
        0x1000303c:    1ec0        ..      SUBS     r0,r0,#3
        0x1000303e:    bd10        ..      POP      {r4,pc}
        0x10003040:    1ac0        ..      SUBS     r0,r0,r3
        0x10003042:    bd10        ..      POP      {r4,pc}
        0x10003044:    040a        ..      LSLS     r2,r1,#16
        0x10003046:    d001        ..      BEQ      0x1000304c ; strlen + 54
        0x10003048:    1e80        ..      SUBS     r0,r0,#2
        0x1000304a:    bd10        ..      POP      {r4,pc}
        0x1000304c:    0209        ..      LSLS     r1,r1,#8
        0x1000304e:    d0fc        ..      BEQ      0x1000304a ; strlen + 52
        0x10003050:    1e40        @.      SUBS     r0,r0,#1
        0x10003052:    bd10        ..      POP      {r4,pc}
    .text
    __rt_SIGRTMEM_inner
        0x10003054:    b510        ..      PUSH     {r4,lr}
        0x10003056:    2801        .(      CMP      r0,#1
        0x10003058:    d005        ..      BEQ      0x10003066 ; __rt_SIGRTMEM_inner + 18
        0x1000305a:    2100        .!      MOVS     r1,#0
        0x1000305c:    a003        ..      ADR      r0,{pc}+0x10 ; 0x1000306c
        0x1000305e:    f7ffff5e    ..^.    BL       __default_signal_display ; 0x10002f1e
        0x10003062:    2001        .       MOVS     r0,#1
        0x10003064:    bd10        ..      POP      {r4,pc}
        0x10003066:    a109        ..      ADR      r1,{pc}+0x26 ; 0x1000308c
        0x10003068:    e7f8        ..      B        0x1000305c ; __rt_SIGRTMEM_inner + 8
    $d
        0x1000306a:    0000        ..      DCW    0
        0x1000306c:    52474953    SIGR    DCD    1380403539
        0x10003070:    4d454d54    TMEM    DCD    1296387412
        0x10003074:    754f203a    : Ou    DCD    1968119866
        0x10003078:    666f2074    t of    DCD    1718558836
        0x1000307c:    61656820     hea    DCD    1634035744
        0x10003080:    656d2070    p me    DCD    1701650544
        0x10003084:    79726f6d    mory    DCD    2037542765
        0x10003088:    00000000    ....    DCD    0
        0x1000308c:    6548203a    : He    DCD    1699225658
        0x10003090:    6d207061    ap m    DCD    1830842465
        0x10003094:    726f6d65    emor    DCD    1919905125
        0x10003098:    6f632079    y co    DCD    1868767353
        0x1000309c:    70757272    rrup    DCD    1886745202
        0x100030a0:    00646574    ted.    DCD    6579572
    $t.2
    HardFault_Handler_Proc
        0x100030a4:    b082        ..      SUB      sp,sp,#8
        0x100030a6:    f64e5728    N.(W    MOV      r7,#0xed28
        0x100030aa:    4615        .F      MOV      r5,r2
        0x100030ac:    460c        .F      MOV      r4,r1
        0x100030ae:    4606        .F      MOV      r6,r0
        0x100030b0:    f2ce0700    ....    MOVT     r7,#0xe000
        0x100030b4:    f000fa28    ..(.    BL       app_debug_reinit ; 0x10003508
        0x100030b8:    f64340b9    C..@    MOV      r0,#0x3cb9
        0x100030bc:    f3ef8108    ....    MRS      r1,MSP
        0x100030c0:    f2c10000    ....    MOVT     r0,#0x1000
        0x100030c4:    f7fff954    ..T.    BL       __2printf ; 0x10002370
        0x100030c8:    0730        0.      LSLS     r0,r6,#28
        0x100030ca:    f24400fe    D...    MOV      r0,#0x40fe
        0x100030ce:    f244111d    D...    MOV      r1,#0x411d
        0x100030d2:    f2c10000    ....    MOVT     r0,#0x1000
        0x100030d6:    f2c10100    ....    MOVT     r1,#0x1000
        0x100030da:    bf58        X.      IT       PL
        0x100030dc:    4608        .F      MOVPL    r0,r1
        0x100030de:    f7fffaf3    ....    BL       puts ; 0x100026c8
        0x100030e2:    f0160004    ....    ANDS     r0,r6,#4
        0x100030e6:    f244110f    D...    MOV      r1,#0x410f
        0x100030ea:    a092        ..      ADR      r0,{pc}+0x24a ; 0x10003334
        0x100030ec:    f2c10100    ....    MOVT     r1,#0x1000
        0x100030f0:    bf0c        ..      ITE      EQ
        0x100030f2:    4608        .F      MOVEQ    r0,r1
        0x100030f4:    462c        ,F      MOVNE    r4,r5
        0x100030f6:    f7fffae7    ....    BL       puts ; 0x100026c8
        0x100030fa:    a092        ..      ADR      r0,{pc}+0x24a ; 0x10003344
        0x100030fc:    f7fffae4    ....    BL       puts ; 0x100026c8
        0x10003100:    6821        !h      LDR      r1,[r4,#0]
        0x10003102:    a094        ..      ADR      r0,{pc}+0x252 ; 0x10003354
        0x10003104:    f7fff934    ..4.    BL       __2printf ; 0x10002370
        0x10003108:    6861        ah      LDR      r1,[r4,#4]
        0x1000310a:    a096        ..      ADR      r0,{pc}+0x25a ; 0x10003364
        0x1000310c:    f7fff930    ..0.    BL       __2printf ; 0x10002370
        0x10003110:    68a1        .h      LDR      r1,[r4,#8]
        0x10003112:    a098        ..      ADR      r0,{pc}+0x262 ; 0x10003374
        0x10003114:    f7fff92c    ..,.    BL       __2printf ; 0x10002370
        0x10003118:    68e1        .h      LDR      r1,[r4,#0xc]
        0x1000311a:    a09a        ..      ADR      r0,{pc}+0x26a ; 0x10003384
        0x1000311c:    f7fff928    ..(.    BL       __2printf ; 0x10002370
        0x10003120:    6921        !i      LDR      r1,[r4,#0x10]
        0x10003122:    a09c        ..      ADR      r0,{pc}+0x272 ; 0x10003394
        0x10003124:    f7fff924    ..$.    BL       __2printf ; 0x10002370
        0x10003128:    6961        ai      LDR      r1,[r4,#0x14]
        0x1000312a:    a09e        ..      ADR      r0,{pc}+0x27a ; 0x100033a4
        0x1000312c:    f7fff920    .. .    BL       __2printf ; 0x10002370
        0x10003130:    69a1        .i      LDR      r1,[r4,#0x18]
        0x10003132:    a0a0        ..      ADR      r0,{pc}+0x282 ; 0x100033b4
        0x10003134:    f7fff91c    ....    BL       __2printf ; 0x10002370
        0x10003138:    69e1        .i      LDR      r1,[r4,#0x1c]
        0x1000313a:    a0a2        ..      ADR      r0,{pc}+0x28a ; 0x100033c4
        0x1000313c:    f7fff918    ....    BL       __2printf ; 0x10002370
        0x10003140:    69a0        .i      LDR      r0,[r4,#0x18]
        0x10003142:    9001        ..      STR      r0,[sp,#4]
        0x10003144:    6878        xh      LDR      r0,[r7,#4]
        0x10003146:    0780        ..      LSLS     r0,r0,#30
        0x10003148:    d505        ..      BPL      0x10003156 ; HardFault_Handler_Proc + 178
        0x1000314a:    f24400d2    D...    MOV      r0,#0x40d2
        0x1000314e:    f2c10000    ....    MOVT     r0,#0x1000
        0x10003152:    f7fffab9    ....    BL       puts ; 0x100026c8
        0x10003156:    6878        xh      LDR      r0,[r7,#4]
        0x10003158:    f1b03fff    ...?    CMP      r0,#0xffffffff
        0x1000315c:    dc05        ..      BGT      0x1000316a ; HardFault_Handler_Proc + 198
        0x1000315e:    f24400eb    D...    MOV      r0,#0x40eb
        0x10003162:    f2c10000    ....    MOVT     r0,#0x1000
        0x10003166:    f7fffaaf    ....    BL       puts ; 0x100026c8
        0x1000316a:    6878        xh      LDR      r0,[r7,#4]
        0x1000316c:    0040        @.      LSLS     r0,r0,#1
        0x1000316e:    f14080dc    @...    BPL.W    0x1000332a ; HardFault_Handler_Proc + 646
        0x10003172:    f24400be    D...    MOV      r0,#0x40be
        0x10003176:    f2c10000    ....    MOVT     r0,#0x1000
        0x1000317a:    f7fffaa5    ....    BL       puts ; 0x100026c8
        0x1000317e:    6838        8h      LDR      r0,[r7,#0]
        0x10003180:    0600        ..      LSLS     r0,r0,#24
        0x10003182:    d03e        >.      BEQ      0x10003202 ; HardFault_Handler_Proc + 350
        0x10003184:    f24400a0    D...    MOV      r0,#0x40a0
        0x10003188:    f2c10000    ....    MOVT     r0,#0x1000
        0x1000318c:    f7fffa9c    ....    BL       puts ; 0x100026c8
        0x10003190:    6838        8h      LDR      r0,[r7,#0]
        0x10003192:    07c0        ..      LSLS     r0,r0,#31
        0x10003194:    d006        ..      BEQ      0x100031a4 ; HardFault_Handler_Proc + 256
        0x10003196:    9901        ..      LDR      r1,[sp,#4]
        0x10003198:    f6434037    C.7@    MOV      r0,#0x3c37
        0x1000319c:    f2c10000    ....    MOVT     r0,#0x1000
        0x100031a0:    f7fff8e6    ....    BL       __2printf ; 0x10002370
        0x100031a4:    6838        8h      LDR      r0,[r7,#0]
        0x100031a6:    0780        ..      LSLS     r0,r0,#30
        0x100031a8:    d510        ..      BPL      0x100031cc ; HardFault_Handler_Proc + 296
        0x100031aa:    9901        ..      LDR      r1,[sp,#4]
        0x100031ac:    f64330c4    C..0    MOV      r0,#0x3bc4
        0x100031b0:    f2c10000    ....    MOVT     r0,#0x1000
        0x100031b4:    f7fff8dc    ....    BL       __2printf ; 0x10002370
        0x100031b8:    6838        8h      LDR      r0,[r7,#0]
        0x100031ba:    0600        ..      LSLS     r0,r0,#24
        0x100031bc:    d506        ..      BPL      0x100031cc ; HardFault_Handler_Proc + 296
        0x100031be:    68f9        .h      LDR      r1,[r7,#0xc]
        0x100031c0:    f64340ac    C..@    MOV      r0,#0x3cac
        0x100031c4:    f2c10000    ....    MOVT     r0,#0x1000
        0x100031c8:    f7fff8d2    ....    BL       __2printf ; 0x10002370
        0x100031cc:    6838        8h      LDR      r0,[r7,#0]
        0x100031ce:    0700        ..      LSLS     r0,r0,#28
        0x100031d0:    d505        ..      BPL      0x100031de ; HardFault_Handler_Proc + 314
        0x100031d2:    f6437062    C.bp    MOV      r0,#0x3f62
        0x100031d6:    f2c10000    ....    MOVT     r0,#0x1000
        0x100031da:    f7fffa75    ..u.    BL       puts ; 0x100026c8
        0x100031de:    6838        8h      LDR      r0,[r7,#0]
        0x100031e0:    06c0        ..      LSLS     r0,r0,#27
        0x100031e2:    d505        ..      BPL      0x100031f0 ; HardFault_Handler_Proc + 332
        0x100031e4:    f64370b7    C..p    MOV      r0,#0x3fb7
        0x100031e8:    f2c10000    ....    MOVT     r0,#0x1000
        0x100031ec:    f7fffa6c    ..l.    BL       puts ; 0x100026c8
        0x100031f0:    6838        8h      LDR      r0,[r7,#0]
        0x100031f2:    0680        ..      LSLS     r0,r0,#26
        0x100031f4:    d505        ..      BPL      0x10003202 ; HardFault_Handler_Proc + 350
        0x100031f6:    f64360c3    C..`    MOV      r0,#0x3ec3
        0x100031fa:    f2c10000    ....    MOVT     r0,#0x1000
        0x100031fe:    f7fffa63    ..c.    BL       puts ; 0x100026c8
        0x10003202:    6838        8h      LDR      r0,[r7,#0]
        0x10003204:    f4104f7f    ...O    TST      r0,#0xff00
        0x10003208:    d046        F.      BEQ      0x10003298 ; HardFault_Handler_Proc + 500
        0x1000320a:    f24400e0    D...    MOV      r0,#0x40e0
        0x1000320e:    f2c10000    ....    MOVT     r0,#0x1000
        0x10003212:    f7fffa59    ..Y.    BL       puts ; 0x100026c8
        0x10003216:    6838        8h      LDR      r0,[r7,#0]
        0x10003218:    05c0        ..      LSLS     r0,r0,#23
        0x1000321a:    d505        ..      BPL      0x10003228 ; HardFault_Handler_Proc + 388
        0x1000321c:    f64350ed    C..P    MOV      r0,#0x3ded
        0x10003220:    f2c10000    ....    MOVT     r0,#0x1000
        0x10003224:    f7fffa50    ..P.    BL       puts ; 0x100026c8
        0x10003228:    6838        8h      LDR      r0,[r7,#0]
        0x1000322a:    0580        ..      LSLS     r0,r0,#22
        0x1000322c:    d510        ..      BPL      0x10003250 ; HardFault_Handler_Proc + 428
        0x1000322e:    9901        ..      LDR      r1,[sp,#4]
        0x10003230:    f643308d    C..0    MOV      r0,#0x3b8d
        0x10003234:    f2c10000    ....    MOVT     r0,#0x1000
        0x10003238:    f7fff89a    ....    BL       __2printf ; 0x10002370
        0x1000323c:    6838        8h      LDR      r0,[r7,#0]
        0x1000323e:    0400        ..      LSLS     r0,r0,#16
        0x10003240:    d506        ..      BPL      0x10003250 ; HardFault_Handler_Proc + 428
        0x10003242:    6939        9i      LDR      r1,[r7,#0x10]
        0x10003244:    f64340ac    C..@    MOV      r0,#0x3cac
        0x10003248:    f2c10000    ....    MOVT     r0,#0x1000
        0x1000324c:    f7fff890    ....    BL       __2printf ; 0x10002370
        0x10003250:    6838        8h      LDR      r0,[r7,#0]
        0x10003252:    0540        @.      LSLS     r0,r0,#21
        0x10003254:    d505        ..      BPL      0x10003262 ; HardFault_Handler_Proc + 446
        0x10003256:    f6435083    C..P    MOV      r0,#0x3d83
        0x1000325a:    f2c10000    ....    MOVT     r0,#0x1000
        0x1000325e:    f7fffa33    ..3.    BL       puts ; 0x100026c8
        0x10003262:    6838        8h      LDR      r0,[r7,#0]
        0x10003264:    0500        ..      LSLS     r0,r0,#20
        0x10003266:    d505        ..      BPL      0x10003274 ; HardFault_Handler_Proc + 464
        0x10003268:    f244000a    D...    MOV      r0,#0x400a
        0x1000326c:    f2c10000    ....    MOVT     r0,#0x1000
        0x10003270:    f7fffa2a    ..*.    BL       puts ; 0x100026c8
        0x10003274:    6838        8h      LDR      r0,[r7,#0]
        0x10003276:    04c0        ..      LSLS     r0,r0,#19
        0x10003278:    d505        ..      BPL      0x10003286 ; HardFault_Handler_Proc + 482
        0x1000327a:    f2440056    D.V.    MOV      r0,#0x4056
        0x1000327e:    f2c10000    ....    MOVT     r0,#0x1000
        0x10003282:    f7fffa21    ..!.    BL       puts ; 0x100026c8
        0x10003286:    6838        8h      LDR      r0,[r7,#0]
        0x10003288:    0480        ..      LSLS     r0,r0,#18
        0x1000328a:    d505        ..      BPL      0x10003298 ; HardFault_Handler_Proc + 500
        0x1000328c:    f6437016    C..p    MOV      r0,#0x3f16
        0x10003290:    f2c10000    ....    MOVT     r0,#0x1000
        0x10003294:    f7fffa18    ....    BL       puts ; 0x100026c8
        0x10003298:    6838        8h      LDR      r0,[r7,#0]
        0x1000329a:    f5b03f80    ...?    CMP      r0,#0x10000
        0x1000329e:    d344        D.      BCC      0x1000332a ; HardFault_Handler_Proc + 646
        0x100032a0:    f24400b1    D...    MOV      r0,#0x40b1
        0x100032a4:    f2c10000    ....    MOVT     r0,#0x1000
        0x100032a8:    f7fffa0e    ....    BL       puts ; 0x100026c8
        0x100032ac:    6838        8h      LDR      r0,[r7,#0]
        0x100032ae:    03c0        ..      LSLS     r0,r0,#15
        0x100032b0:    d505        ..      BPL      0x100032be ; HardFault_Handler_Proc + 538
        0x100032b2:    f643500f    C..P    MOV      r0,#0x3d0f
        0x100032b6:    f2c10000    ....    MOVT     r0,#0x1000
        0x100032ba:    f7fffa05    ....    BL       puts ; 0x100026c8
        0x100032be:    6838        8h      LDR      r0,[r7,#0]
        0x100032c0:    0380        ..      LSLS     r0,r0,#14
        0x100032c2:    d505        ..      BPL      0x100032d0 ; HardFault_Handler_Proc + 556
        0x100032c4:    f6436086    C..`    MOV      r0,#0x3e86
        0x100032c8:    f2c10000    ....    MOVT     r0,#0x1000
        0x100032cc:    f7fff9fc    ....    BL       puts ; 0x100026c8
        0x100032d0:    6838        8h      LDR      r0,[r7,#0]
        0x100032d2:    0340        @.      LSLS     r0,r0,#13
        0x100032d4:    d505        ..      BPL      0x100032e2 ; HardFault_Handler_Proc + 574
        0x100032d6:    f64340e1    C..@    MOV      r0,#0x3ce1
        0x100032da:    f2c10000    ....    MOVT     r0,#0x1000
        0x100032de:    f7fff9f3    ....    BL       puts ; 0x100026c8
        0x100032e2:    6838        8h      LDR      r0,[r7,#0]
        0x100032e4:    0300        ..      LSLS     r0,r0,#12
        0x100032e6:    d505        ..      BPL      0x100032f4 ; HardFault_Handler_Proc + 592
        0x100032e8:    f643601a    C..`    MOV      r0,#0x3e1a
        0x100032ec:    f2c10000    ....    MOVT     r0,#0x1000
        0x100032f0:    f7fff9ea    ....    BL       puts ; 0x100026c8
        0x100032f4:    6838        8h      LDR      r0,[r7,#0]
        0x100032f6:    02c0        ..      LSLS     r0,r0,#11
        0x100032f8:    d505        ..      BPL      0x10003306 ; HardFault_Handler_Proc + 610
        0x100032fa:    f643605a    C.Z`    MOV      r0,#0x3e5a
        0x100032fe:    f2c10000    ....    MOVT     r0,#0x1000
        0x10003302:    f7fff9e1    ....    BL       puts ; 0x100026c8
        0x10003306:    6838        8h      LDR      r0,[r7,#0]
        0x10003308:    01c0        ..      LSLS     r0,r0,#7
        0x1000330a:    d505        ..      BPL      0x10003318 ; HardFault_Handler_Proc + 628
        0x1000330c:    f64350ba    C..P    MOV      r0,#0x3dba
        0x10003310:    f2c10000    ....    MOVT     r0,#0x1000
        0x10003314:    f7fff9d8    ....    BL       puts ; 0x100026c8
        0x10003318:    6838        8h      LDR      r0,[r7,#0]
        0x1000331a:    0180        ..      LSLS     r0,r0,#6
        0x1000331c:    d505        ..      BPL      0x1000332a ; HardFault_Handler_Proc + 646
        0x1000331e:    f6435048    C.HP    MOV      r0,#0x3d48
        0x10003322:    f2c10000    ....    MOVT     r0,#0x1000
        0x10003326:    f7fff9cf    ....    BL       puts ; 0x100026c8
        0x1000332a:    f000f8bf    ....    BL       app_debug_printf ; 0x100034ac
        0x1000332e:    bf00        ..      NOP      
        0x10003330:    e7fe        ..      B        0x10003330 ; HardFault_Handler_Proc + 652
        0x10003332:    bf00        ..      NOP      
    $d.3
        0x10003334:    6e697355    Usin    DCD    1852404565
        0x10003338:    33752067    g u3    DCD    863314023
        0x1000333c:    70735032    2Psp    DCD    1886605362
        0x10003340:    0000002e    ....    DCD    46
        0x10003344:    63617453    Stac    DCD    1667331155
        0x10003348:    7266206b    k fr    DCD    1919295595
        0x1000334c:    3a656d61    ame:    DCD    979725665
        0x10003350:    00000000    ....    DCD    0
        0x10003354:    20203052    R0      DCD    538980434
        0x10003358:    7830203a    : 0x    DCD    2016419898
        0x1000335c:    58383025    %08X    DCD    1480077349
        0x10003360:    0000000a    ....    DCD    10
        0x10003364:    20203152    R1      DCD    538980690
        0x10003368:    7830203a    : 0x    DCD    2016419898
        0x1000336c:    58383025    %08X    DCD    1480077349
        0x10003370:    0000000a    ....    DCD    10
        0x10003374:    20203252    R2      DCD    538980946
        0x10003378:    7830203a    : 0x    DCD    2016419898
        0x1000337c:    58383025    %08X    DCD    1480077349
        0x10003380:    0000000a    ....    DCD    10
        0x10003384:    20203352    R3      DCD    538981202
        0x10003388:    7830203a    : 0x    DCD    2016419898
        0x1000338c:    58383025    %08X    DCD    1480077349
        0x10003390:    0000000a    ....    DCD    10
        0x10003394:    20323152    R12     DCD    540160338
        0x10003398:    7830203a    : 0x    DCD    2016419898
        0x1000339c:    58383025    %08X    DCD    1480077349
        0x100033a0:    0000000a    ....    DCD    10
        0x100033a4:    2020524c    LR      DCD    538989132
        0x100033a8:    7830203a    : 0x    DCD    2016419898
        0x100033ac:    58383025    %08X    DCD    1480077349
        0x100033b0:    0000000a    ....    DCD    10
        0x100033b4:    20204350    PC      DCD    538985296
        0x100033b8:    7830203a    : 0x    DCD    2016419898
        0x100033bc:    58383025    %08X    DCD    1480077349
        0x100033c0:    0000000a    ....    DCD    10
        0x100033c4:    52535078    xPSR    DCD    1381191800
        0x100033c8:    7830203a    : 0x    DCD    2016419898
        0x100033cc:    58383025    %08X    DCD    1480077349
        0x100033d0:    0000000a    ....    DCD    10
    $t.0
    NMI_Handler_Proc
        0x100033d4:    4614        .F      MOV      r4,r2
        0x100033d6:    460d        .F      MOV      r5,r1
        0x100033d8:    4606        .F      MOV      r6,r0
        0x100033da:    f000f895    ....    BL       app_debug_reinit ; 0x10003508
        0x100033de:    a005        ..      ADR      r0,{pc}+0x16 ; 0x100033f4
        0x100033e0:    4631        1F      MOV      r1,r6
        0x100033e2:    462a        *F      MOV      r2,r5
        0x100033e4:    4623        #F      MOV      r3,r4
        0x100033e6:    f7feffc3    ....    BL       __2printf ; 0x10002370
        0x100033ea:    f000f85f    .._.    BL       app_debug_printf ; 0x100034ac
        0x100033ee:    bf00        ..      NOP      
        0x100033f0:    e7fe        ..      B        0x100033f0 ; NMI_Handler_Proc + 28
        0x100033f2:    bf00        ..      NOP      
    $d.1
        0x100033f4:    5f494d4e    NMI_    DCD    1598639438
        0x100033f8:    646e6148    Hand    DCD    1684955464
        0x100033fc:    3a72656c    ler:    DCD    980575596
        0x10003400:    38302520     %08    DCD    942679328
        0x10003404:    25202c58    X, %    DCD    622865496
        0x10003408:    2c583830    08X,    DCD    743979056
        0x1000340c:    38302520     %08    DCD    942679328
        0x10003410:    00000a58    X...    DCD    2648
    $t.0
    app_debug_init
        0x10003414:    b580        ..      PUSH     {r7,lr}
        0x10003416:    f1b24fc0    ...O    CMP      r2,#0x60000000
        0x1000341a:    d00b        ..      BEQ      0x10003434 ; app_debug_init + 32
        0x1000341c:    f6400c00    @...    MOVW     r12,#0x800
        0x10003420:    f2c60c00    ....    MOVT     r12,#0x6000
        0x10003424:    4562        bE      CMP      r2,r12
        0x10003426:    d005        ..      BEQ      0x10003434 ; app_debug_init + 32
        0x10003428:    f2404c00    @..L    MOVW     r12,#0x400
        0x1000342c:    f2c60c00    ....    MOVT     r12,#0x6000
        0x10003430:    4562        bE      CMP      r2,r12
        0x10003432:    d138        8.      BNE      0x100034a6 ; app_debug_init + 146
        0x10003434:    f24b0e80    K...    MOV      lr,#0xb080
        0x10003438:    f0400c80    @...    ORR      r12,r0,#0x80
        0x1000343c:    f2c60e04    ....    MOVT     lr,#0x6004
        0x10003440:    45f4        .E      CMP      r12,lr
        0x10003442:    d130        0.      BNE      0x100034a6 ; app_debug_init + 146
        0x10003444:    f8ddc008    ....    LDR      r12,[sp,#8]
        0x10003448:    f24f1e6c    O.l.    MOV      lr,#0xf16c
        0x1000344c:    f2c20e01    ....    MOVT     lr,#0x2001
        0x10003450:    f1bc0f00    ....    CMP      r12,#0
        0x10003454:    f8cec000    ....    STR      r12,[lr,#0]
        0x10003458:    d00d        ..      BEQ      0x10003476 ; app_debug_init + 98
        0x1000345a:    f24f1c7a    O.z.    MOV      r12,#0xf17a
        0x1000345e:    f2c20c01    ....    MOVT     r12,#0x2001
        0x10003462:    f04f0e00    O...    MOV      lr,#0
        0x10003466:    f8ace000    ....    STRH     lr,[r12,#0]
        0x1000346a:    f24f1c78    O.x.    MOV      r12,#0xf178
        0x1000346e:    f2c20c01    ....    MOVT     r12,#0x2001
        0x10003472:    f8ace000    ....    STRH     lr,[r12,#0]
        0x10003476:    f24f1c74    O.t.    MOV      r12,#0xf174
        0x1000347a:    f2c20c01    ....    MOVT     r12,#0x2001
        0x1000347e:    f8cc2000    ...     STR      r2,[r12,#0]
        0x10003482:    f24f1270    O.p.    MOV      r2,#0xf170
        0x10003486:    f2c20201    ....    MOVT     r2,#0x2001
        0x1000348a:    6010        .`      STR      r0,[r2,#0]
        0x1000348c:    f24f107c    O.|.    MOV      r0,#0xf17c
        0x10003490:    f2c20001    ....    MOVT     r0,#0x2001
        0x10003494:    6001        .`      STR      r1,[r0,#0]
        0x10003496:    f24f1080    O...    MOV      r0,#0xf180
        0x1000349a:    f2c20001    ....    MOVT     r0,#0x2001
        0x1000349e:    6003        .`      STR      r3,[r0,#0]
        0x100034a0:    f000f832    ..2.    BL       app_debug_reinit ; 0x10003508
        0x100034a4:    bd80        ..      POP      {r7,pc}
        0x100034a6:    2010        .       MOVS     r0,#0x10
        0x100034a8:    bd80        ..      POP      {r7,pc}
        0x100034aa:    0000        ..      MOVS     r0,r0
    app_debug_printf
        0x100034ac:    b5f0        ..      PUSH     {r4-r7,lr}
        0x100034ae:    b081        ..      SUB      sp,sp,#4
        0x100034b0:    f24f146c    O.l.    MOV      r4,#0xf16c
        0x100034b4:    f2c20401    ....    MOVT     r4,#0x2001
        0x100034b8:    6820         h      LDR      r0,[r4,#0]
        0x100034ba:    b318        ..      CBZ      r0,0x10003504 ; app_debug_printf + 88
        0x100034bc:    f24f157a    O.z.    MOV      r5,#0xf17a
        0x100034c0:    f24f1678    O.x.    MOV      r6,#0xf178
        0x100034c4:    f2c20501    ....    MOVT     r5,#0x2001
        0x100034c8:    f2c20601    ....    MOVT     r6,#0x2001
        0x100034cc:    8828        (.      LDRH     r0,[r5,#0]
        0x100034ce:    8831        1.      LDRH     r1,[r6,#0]
        0x100034d0:    4288        .B      CMP      r0,r1
        0x100034d2:    d017        ..      BEQ      0x10003504 ; app_debug_printf + 88
        0x100034d4:    f24f1774    O.t.    MOV      r7,#0xf174
        0x100034d8:    f2c20701    ....    MOVT     r7,#0x2001
        0x100034dc:    6821        !h      LDR      r1,[r4,#0]
        0x100034de:    b282        ..      UXTH     r2,r0
        0x100034e0:    6809        .h      LDR      r1,[r1,#0]
        0x100034e2:    6838        8h      LDR      r0,[r7,#0]
        0x100034e4:    5c89        .\      LDRB     r1,[r1,r2]
        0x100034e6:    f000fa85    ....    BL       $Ven$TT$L$$rom_hw_uart_send_byte ; 0x100039f4
        0x100034ea:    8828        (.      LDRH     r0,[r5,#0]
        0x100034ec:    6821        !h      LDR      r1,[r4,#0]
        0x100034ee:    3001        .0      ADDS     r0,#1
        0x100034f0:    b282        ..      UXTH     r2,r0
        0x100034f2:    8889        ..      LDRH     r1,[r1,#4]
        0x100034f4:    428a        .B      CMP      r2,r1
        0x100034f6:    bf28        (.      IT       CS
        0x100034f8:    2000        .       MOVCS    r0,#0
        0x100034fa:    b281        ..      UXTH     r1,r0
        0x100034fc:    8832        2.      LDRH     r2,[r6,#0]
        0x100034fe:    8028        (.      STRH     r0,[r5,#0]
        0x10003500:    4291        .B      CMP      r1,r2
        0x10003502:    d1eb        ..      BNE      0x100034dc ; app_debug_printf + 48
        0x10003504:    b001        ..      ADD      sp,sp,#4
        0x10003506:    bdf0        ..      POP      {r4-r7,pc}
    app_debug_reinit
        0x10003508:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1000350a:    b083        ..      SUB      sp,sp,#0xc
        0x1000350c:    f24f1574    O.t.    MOV      r5,#0xf174
        0x10003510:    f2c20501    ....    MOVT     r5,#0x2001
        0x10003514:    6828        (h      LDR      r0,[r5,#0]
        0x10003516:    f1b04fc0    ...O    CMP      r0,#0x60000000
        0x1000351a:    d00a        ..      BEQ      0x10003532 ; app_debug_reinit + 42
        0x1000351c:    f2404100    @..A    MOVW     r1,#0x400
        0x10003520:    f2c60100    ....    MOVT     r1,#0x6000
        0x10003524:    4288        .B      CMP      r0,r1
        0x10003526:    bf19        ..      ITTEE    NE
        0x10003528:    240c        .$      MOVNE    r4,#0xc
        0x1000352a:    202d        -       MOVNE    r0,#0x2d
        0x1000352c:    2408        .$      MOVEQ    r4,#8
        0x1000352e:    202c        ,       MOVEQ    r0,#0x2c
        0x10003530:    e001        ..      B        0x10003536 ; app_debug_reinit + 46
        0x10003532:    2404        .$      MOVS     r4,#4
        0x10003534:    202b        +       MOVS     r0,#0x2b
        0x10003536:    f000fa62    ..b.    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x100039fe
        0x1000353a:    f24f1670    O.p.    MOV      r6,#0xf170
        0x1000353e:    f24f177c    O.|.    MOV      r7,#0xf17c
        0x10003542:    f2c20601    ....    MOVT     r6,#0x2001
        0x10003546:    f2c20701    ....    MOVT     r7,#0x2001
        0x1000354a:    6830        0h      LDR      r0,[r6,#0]
        0x1000354c:    6839        9h      LDR      r1,[r7,#0]
        0x1000354e:    4622        "F      MOV      r2,r4
        0x10003550:    f000fa5a    ..Z.    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pid ; 0x10003a08
        0x10003554:    b108        ..      CBZ      r0,0x1000355a ; app_debug_reinit + 82
        0x10003556:    b003        ..      ADD      sp,sp,#0xc
        0x10003558:    bdf0        ..      POP      {r4-r7,pc}
        0x1000355a:    6830        0h      LDR      r0,[r6,#0]
        0x1000355c:    6839        9h      LDR      r1,[r7,#0]
        0x1000355e:    2202        ."      MOVS     r2,#2
        0x10003560:    f000fa57    ..W.    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x10003a12
        0x10003564:    2800        .(      CMP      r0,#0
        0x10003566:    d1f6        ..      BNE      0x10003556 ; app_debug_reinit + 78
        0x10003568:    f24f1080    O...    MOV      r0,#0xf180
        0x1000356c:    f2c20001    ....    MOVT     r0,#0x2001
        0x10003570:    6800        .h      LDR      r0,[r0,#0]
        0x10003572:    f2430121    C.!.    MOV      r1,#0x3021
        0x10003576:    9001        ..      STR      r0,[sp,#4]
        0x10003578:    f2c01101    ....    MOVT     r1,#0x101
        0x1000357c:    6828        (h      LDR      r0,[r5,#0]
        0x1000357e:    9102        ..      STR      r1,[sp,#8]
        0x10003580:    a901        ..      ADD      r1,sp,#4
        0x10003582:    f000fa4b    ..K.    BL       $Ven$TT$L$$rom_hw_uart_init ; 0x10003a1c
        0x10003586:    b003        ..      ADD      sp,sp,#0xc
        0x10003588:    bdf0        ..      POP      {r4-r7,pc}
        0x1000358a:    0000        ..      MOVS     r0,r0
    err_debug_init
        0x1000358c:    f24000e8    @...    MOVW     r0,#0xe8
        0x10003590:    f64301d9    C...    MOV      r1,#0x38d9
        0x10003594:    f2c20000    ....    MOVT     r0,#0x2000
        0x10003598:    f2c10100    ....    MOVT     r1,#0x1000
        0x1000359c:    6001        .`      STR      r1,[r0,#0]
        0x1000359e:    f24000ec    @...    MOVW     r0,#0xec
        0x100035a2:    f6431171    C.q.    MOV      r1,#0x3971
        0x100035a6:    f2c20000    ....    MOVT     r0,#0x2000
        0x100035aa:    f2c10100    ....    MOVT     r1,#0x1000
        0x100035ae:    6001        .`      STR      r1,[r0,#0]
        0x100035b0:    4770        pG      BX       lr
        0x100035b2:    0000        ..      MOVS     r0,r0
    fputc
        0x100035b4:    b510        ..      PUSH     {r4,lr}
        0x100035b6:    b082        ..      SUB      sp,sp,#8
        0x100035b8:    f24f116c    O.l.    MOV      r1,#0xf16c
        0x100035bc:    f2c20101    ....    MOVT     r1,#0x2001
        0x100035c0:    6809        .h      LDR      r1,[r1,#0]
        0x100035c2:    4604        .F      MOV      r4,r0
        0x100035c4:    b171        q.      CBZ      r1,0x100035e4 ; fputc + 48
        0x100035c6:    f24f1278    O.x.    MOV      r2,#0xf178
        0x100035ca:    f2c20201    ....    MOVT     r2,#0x2001
        0x100035ce:    6808        .h      LDR      r0,[r1,#0]
        0x100035d0:    8813        ..      LDRH     r3,[r2,#0]
        0x100035d2:    54c4        .T      STRB     r4,[r0,r3]
        0x100035d4:    1c58        X.      ADDS     r0,r3,#1
        0x100035d6:    b283        ..      UXTH     r3,r0
        0x100035d8:    8889        ..      LDRH     r1,[r1,#4]
        0x100035da:    428b        .B      CMP      r3,r1
        0x100035dc:    bf28        (.      IT       CS
        0x100035de:    2000        .       MOVCS    r0,#0
        0x100035e0:    8010        ..      STRH     r0,[r2,#0]
        0x100035e2:    e00b        ..      B        0x100035fc ; fputc + 72
        0x100035e4:    f24f1074    O.t.    MOV      r0,#0xf174
        0x100035e8:    f2c20001    ....    MOVT     r0,#0x2001
        0x100035ec:    6800        .h      LDR      r0,[r0,#0]
        0x100035ee:    f10d0107    ....    ADD      r1,sp,#7
        0x100035f2:    2201        ."      MOVS     r2,#1
        0x100035f4:    f88d4007    ...@    STRB     r4,[sp,#7]
        0x100035f8:    f000fa15    ....    BL       $Ven$TT$L$$rom_hw_uart_transmit ; 0x10003a26
        0x100035fc:    4620         F      MOV      r0,r4
        0x100035fe:    b002        ..      ADD      sp,sp,#8
        0x10003600:    bd10        ..      POP      {r4,pc}
        0x10003602:    0000        ..      MOVS     r0,r0
    lpwr_after_wakeup
        0x10003604:    b580        ..      PUSH     {r7,lr}
        0x10003606:    f7ffff7f    ....    BL       app_debug_reinit ; 0x10003508
        0x1000360a:    2041        A       MOVS     r0,#0x41
        0x1000360c:    f7fff856    ..V.    BL       putchar ; 0x100026bc
        0x10003610:    bd80        ..      POP      {r7,pc}
        0x10003612:    0000        ..      MOVS     r0,r0
    lpwr_before_sleep
        0x10003614:    2001        .       MOVS     r0,#1
        0x10003616:    4770        pG      BX       lr
    lpwr_ctrl_init
        0x10003618:    b570        p.      PUSH     {r4-r6,lr}
        0x1000361a:    b082        ..      SUB      sp,sp,#8
        0x1000361c:    4604        .F      MOV      r4,r0
        0x1000361e:    f24f1068    O.h.    MOV      r0,#0xf168
        0x10003622:    f2c20001    ....    MOVT     r0,#0x2001
        0x10003626:    7004        .p      STRB     r4,[r0,#0]
        0x10003628:    f24f1088    O...    MOV      r0,#0xf188
        0x1000362c:    f2c20001    ....    MOVT     r0,#0x2001
        0x10003630:    6001        .`      STR      r1,[r0,#0]
        0x10003632:    f24f1084    O...    MOV      r0,#0xf184
        0x10003636:    f2c20001    ....    MOVT     r0,#0x2001
        0x1000363a:    6002        .`      STR      r2,[r0,#0]
        0x1000363c:    f10d0107    ....    ADD      r1,sp,#7
        0x10003640:    2002        .       MOVS     r0,#2
        0x10003642:    2201        ."      MOVS     r2,#1
        0x10003644:    2601        .&      MOVS     r6,#1
        0x10003646:    f000f9f3    ....    BL       $Ven$TT$L$$rom_hw_efuse_read_bytes ; 0x10003a30
        0x1000364a:    f89d0007    ....    LDRB     r0,[sp,#7]
        0x1000364e:    f3c01041    ..A.    UBFX     r0,r0,#5,#2
        0x10003652:    2803        .(      CMP      r0,#3
        0x10003654:    d00f        ..      BEQ      0x10003676 ; lpwr_ctrl_init + 94
        0x10003656:    2802        .(      CMP      r0,#2
        0x10003658:    d179        y.      BNE      0x1000374e ; lpwr_ctrl_init + 310
        0x1000365a:    f24b0500    K...    MOVW     r5,#0xb000
        0x1000365e:    f2c60504    ....    MOVT     r5,#0x6004
        0x10003662:    4628        (F      MOV      r0,r5
        0x10003664:    f44f4150    O.PA    MOV      r1,#0xd000
        0x10003668:    2201        ."      MOVS     r2,#1
        0x1000366a:    f000f9d2    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x10003a12
        0x1000366e:    4628        (F      MOV      r0,r5
        0x10003670:    f44f3148    O.H1    MOV      r1,#0x32000
        0x10003674:    e068        h.      B        0x10003748 ; lpwr_ctrl_init + 304
        0x10003676:    f10d0101    ....    ADD      r1,sp,#1
        0x1000367a:    203a        :       MOVS     r0,#0x3a
        0x1000367c:    2206        ."      MOVS     r2,#6
        0x1000367e:    f000f9d7    ....    BL       $Ven$TT$L$$rom_hw_efuse_read_bytes ; 0x10003a30
        0x10003682:    f89d1001    ....    LDRB     r1,[sp,#1]
        0x10003686:    f24b0000    K...    MOVW     r0,#0xb000
        0x1000368a:    f2c60004    ....    MOVT     r0,#0x6004
        0x1000368e:    f1000580    ....    ADD      r5,r0,#0x80
        0x10003692:    2920         )      CMP      r1,#0x20
        0x10003694:    f001011f    ....    AND      r1,r1,#0x1f
        0x10003698:    4628        (F      MOV      r0,r5
        0x1000369a:    fa06f101    ....    LSL      r1,r6,r1
        0x1000369e:    bf3c        <.      ITT      CC
        0x100036a0:    f24b0000    K...    MOVWCC   r0,#0xb000
        0x100036a4:    f2c60004    ....    MOVTCC   r0,#0x6004
        0x100036a8:    2201        ."      MOVS     r2,#1
        0x100036aa:    f000f9b2    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x10003a12
        0x100036ae:    f89d1002    ....    LDRB     r1,[sp,#2]
        0x100036b2:    4628        (F      MOV      r0,r5
        0x100036b4:    2920         )      CMP      r1,#0x20
        0x100036b6:    bf3c        <.      ITT      CC
        0x100036b8:    f24b0000    K...    MOVWCC   r0,#0xb000
        0x100036bc:    f2c60004    ....    MOVTCC   r0,#0x6004
        0x100036c0:    f001011f    ....    AND      r1,r1,#0x1f
        0x100036c4:    fa06f101    ....    LSL      r1,r6,r1
        0x100036c8:    2202        ."      MOVS     r2,#2
        0x100036ca:    f000f9a2    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x10003a12
        0x100036ce:    f89d1003    ....    LDRB     r1,[sp,#3]
        0x100036d2:    4628        (F      MOV      r0,r5
        0x100036d4:    2920         )      CMP      r1,#0x20
        0x100036d6:    bf3c        <.      ITT      CC
        0x100036d8:    f24b0000    K...    MOVWCC   r0,#0xb000
        0x100036dc:    f2c60004    ....    MOVTCC   r0,#0x6004
        0x100036e0:    f001011f    ....    AND      r1,r1,#0x1f
        0x100036e4:    fa06f101    ....    LSL      r1,r6,r1
        0x100036e8:    2201        ."      MOVS     r2,#1
        0x100036ea:    f000f992    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x10003a12
        0x100036ee:    f89d1004    ....    LDRB     r1,[sp,#4]
        0x100036f2:    4628        (F      MOV      r0,r5
        0x100036f4:    2920         )      CMP      r1,#0x20
        0x100036f6:    bf3c        <.      ITT      CC
        0x100036f8:    f24b0000    K...    MOVWCC   r0,#0xb000
        0x100036fc:    f2c60004    ....    MOVTCC   r0,#0x6004
        0x10003700:    f001011f    ....    AND      r1,r1,#0x1f
        0x10003704:    fa06f101    ....    LSL      r1,r6,r1
        0x10003708:    2201        ."      MOVS     r2,#1
        0x1000370a:    f000f982    ....    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x10003a12
        0x1000370e:    f89d1005    ....    LDRB     r1,[sp,#5]
        0x10003712:    4628        (F      MOV      r0,r5
        0x10003714:    2920         )      CMP      r1,#0x20
        0x10003716:    bf3c        <.      ITT      CC
        0x10003718:    f24b0000    K...    MOVWCC   r0,#0xb000
        0x1000371c:    f2c60004    ....    MOVTCC   r0,#0x6004
        0x10003720:    f001011f    ....    AND      r1,r1,#0x1f
        0x10003724:    fa06f101    ....    LSL      r1,r6,r1
        0x10003728:    2202        ."      MOVS     r2,#2
        0x1000372a:    f000f972    ..r.    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x10003a12
        0x1000372e:    f89d0006    ....    LDRB     r0,[sp,#6]
        0x10003732:    2820         (      CMP      r0,#0x20
        0x10003734:    bf3c        <.      ITT      CC
        0x10003736:    f24b0500    K...    MOVWCC   r5,#0xb000
        0x1000373a:    f2c60504    ....    MOVTCC   r5,#0x6004
        0x1000373e:    f000001f    ....    AND      r0,r0,#0x1f
        0x10003742:    fa06f100    ....    LSL      r1,r6,r0
        0x10003746:    4628        (F      MOV      r0,r5
        0x10003748:    2202        ."      MOVS     r2,#2
        0x1000374a:    f000f962    ..b.    BL       $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode ; 0x10003a12
        0x1000374e:    2c04        .,      CMP      r4,#4
        0x10003750:    d809        ..      BHI      0x10003766 ; lpwr_ctrl_init + 334
        0x10003752:    1f20         .      SUBS     r0,r4,#4
        0x10003754:    fab0f080    ....    CLZ      r0,r0
        0x10003758:    0940        @.      LSRS     r0,r0,#5
        0x1000375a:    0040        @.      LSLS     r0,r0,#1
        0x1000375c:    2c03        .,      CMP      r4,#3
        0x1000375e:    bf08        ..      IT       EQ
        0x10003760:    2001        .       MOVEQ    r0,#1
        0x10003762:    f000f96a    ..j.    BL       $Ven$TT$L$$rom_hw_pmu_set_low_power_mode ; 0x10003a3a
        0x10003766:    2001        .       MOVS     r0,#1
        0x10003768:    2103        .!      MOVS     r1,#3
        0x1000376a:    220b        ."      MOVS     r2,#0xb
        0x1000376c:    2309        .#      MOVS     r3,#9
        0x1000376e:    f000f969    ..i.    BL       $Ven$TT$L$$rom_hw_pmu_set_wakeup_source ; 0x10003a44
        0x10003772:    b002        ..      ADD      sp,sp,#8
        0x10003774:    bd70        p.      POP      {r4-r6,pc}
        0x10003776:    0000        ..      MOVS     r0,r0
    main
        0x10003778:    b082        ..      SUB      sp,sp,#8
        0x1000377a:    f24b0480    K...    MOV      r4,#0xb080
        0x1000377e:    f2c60404    ....    MOVT     r4,#0x6004
        0x10003782:    f504503e    ..>P    ADD      r0,r4,#0x2f80
        0x10003786:    f000f962    ..b.    BL       $Ven$TT$L$$rom_hw_wdt_disable ; 0x10003a4e
        0x1000378a:    2064        d       MOVS     r0,#0x64
        0x1000378c:    f000f964    ..d.    BL       $Ven$TT$L$$rom_delay_ms ; 0x10003a58
        0x10003790:    2002        .       MOVS     r0,#2
        0x10003792:    f000f966    ..f.    BL       $Ven$TT$L$$rom_hw_pmu_set_ldo_act_voltage ; 0x10003a62
        0x10003796:    f000f969    ..i.    BL       $Ven$TT$L$$rom_hw_pmu_dcdc_init ; 0x10003a6c
        0x1000379a:    2003        .       MOVS     r0,#3
        0x1000379c:    f000f96b    ..k.    BL       $Ven$TT$L$$rom_hw_pmu_set_dcdc_act_voltage ; 0x10003a76
        0x100037a0:    2000        .       MOVS     r0,#0
        0x100037a2:    2500        .%      MOVS     r5,#0
        0x100037a4:    f000f96c    ..l.    BL       $Ven$TT$L$$rom_hw_pmu_set_ldo_dig_voltage ; 0x10003a80
        0x100037a8:    2000        .       MOVS     r0,#0
        0x100037aa:    f000f96e    ..n.    BL       $Ven$TT$L$$rom_hw_pmu_set_ldo_ret_sleep_voltage ; 0x10003a8a
        0x100037ae:    2000        .       MOVS     r0,#0
        0x100037b0:    f000f970    ..p.    BL       $Ven$TT$L$$rom_hal_pmu_sel_power_act_out_mode ; 0x10003a94
        0x100037b4:    f10d0107    ....    ADD      r1,sp,#7
        0x100037b8:    200f        .       MOVS     r0,#0xf
        0x100037ba:    2201        ."      MOVS     r2,#1
        0x100037bc:    f88d5007    ...P    STRB     r5,[sp,#7]
        0x100037c0:    f000f936    ..6.    BL       $Ven$TT$L$$rom_hw_efuse_read_bytes ; 0x10003a30
        0x100037c4:    f89d0007    ....    LDRB     r0,[sp,#7]
        0x100037c8:    2800        .(      CMP      r0,#0
        0x100037ca:    bf04        ..      ITT      EQ
        0x100037cc:    2056        V       MOVEQ    r0,#0x56
        0x100037ce:    f000f966    ..f.    BLEQ     $Ven$TT$L$$rom_hw_pmu_set_rc_hclk_tune ; 0x10003a9e
        0x100037d2:    f10d0107    ....    ADD      r1,sp,#7
        0x100037d6:    2010        .       MOVS     r0,#0x10
        0x100037d8:    2201        ."      MOVS     r2,#1
        0x100037da:    f000f929    ..).    BL       $Ven$TT$L$$rom_hw_efuse_read_bytes ; 0x10003a30
        0x100037de:    f89d0007    ....    LDRB     r0,[sp,#7]
        0x100037e2:    2800        .(      CMP      r0,#0
        0x100037e4:    bf08        ..      IT       EQ
        0x100037e6:    20a9        .       MOVEQ    r0,#0xa9
        0x100037e8:    f000f95e    ..^.    BL       $Ven$TT$L$$rom_hw_pmu_set_rc_lclk_tune ; 0x10003aa8
        0x100037ec:    2000        .       MOVS     r0,#0
        0x100037ee:    f000f960    ..`.    BL       $Ven$TT$L$$rom_hw_pmu_sel_dcxo_hclk_pwr ; 0x10003ab2
        0x100037f2:    2003        .       MOVS     r0,#3
        0x100037f4:    2103        .!      MOVS     r1,#3
        0x100037f6:    2264        d"      MOVS     r2,#0x64
        0x100037f8:    f000f960    ..`.    BL       $Ven$TT$L$$rom_hal_pmu_cfg_dcxo_hclk_param ; 0x10003abc
        0x100037fc:    2001        .       MOVS     r0,#1
        0x100037fe:    f64011c4    @...    MOV      r1,#0x9c4
        0x10003802:    f000f960    ..`.    BL       $Ven$TT$L$$rom_hal_pmu_set_sys_clk_src ; 0x10003ac6
        0x10003806:    2001        .       MOVS     r0,#1
        0x10003808:    2100        .!      MOVS     r1,#0
        0x1000380a:    2200        ."      MOVS     r2,#0
        0x1000380c:    f000f960    ..`.    BL       $Ven$TT$L$$rom_hw_sys_ctrl_peri_int_ctrl ; 0x10003ad0
        0x10003810:    4620         F      MOV      r0,r4
        0x10003812:    f44f5180    O..Q    MOV      r1,#0x1000
        0x10003816:    f04f42c0    O..B    MOV      r2,#0x60000000
        0x1000381a:    f44f23e1    O..#    MOV      r3,#0x70800
        0x1000381e:    9500        ..      STR      r5,[sp,#0]
        0x10003820:    f7fffdf8    ....    BL       app_debug_init ; 0x10003414
        0x10003824:    a019        ..      ADR      r0,{pc}+0x68 ; 0x1000388c
        0x10003826:    a126        &.      ADR      r1,{pc}+0x9a ; 0x100038c0
        0x10003828:    a228        (.      ADR      r2,{pc}+0xa4 ; 0x100038cc
        0x1000382a:    f7fefda1    ....    BL       __2printf ; 0x10002370
        0x1000382e:    f7fffead    ....    BL       err_debug_init ; 0x1000358c
        0x10003832:    209c        .       MOVS     r0,#0x9c
        0x10003834:    f000f880    ....    BL       patch_hal_pmu_set_sram_ret ; 0x10003938
        0x10003838:    f2436115    C..a    MOV      r1,#0x3615
        0x1000383c:    f2436205    C..b    MOV      r2,#0x3605
        0x10003840:    f2c10100    ....    MOVT     r1,#0x1000
        0x10003844:    2002        .       MOVS     r0,#2
        0x10003846:    f2c10200    ....    MOVT     r2,#0x1000
        0x1000384a:    f7fffee5    ....    BL       lpwr_ctrl_init ; 0x10003618
        0x1000384e:    2020                MOVS     r0,#0x20
        0x10003850:    f000f943    ..C.    BL       $Ven$TT$L$$rom_hw_crg_keep_reset ; 0x10003ada
        0x10003854:    f44f3080    O..0    MOV      r0,#0x10000
        0x10003858:    f44f6180    O..a    MOV      r1,#0x400
        0x1000385c:    f000f942    ..B.    BL       $Ven$TT$L$$rom_hw_sys_ctrl_enable_cp_remap ; 0x10003ae4
        0x10003860:    b980        ..      CBNZ     r0,0x10003884 ; main + 268
        0x10003862:    f2430004    C...    MOV      r0,#0x3004
        0x10003866:    f2c20000    ....    MOVT     r0,#0x2000
        0x1000386a:    6801        .h      LDR      r1,[r0,#0]
        0x1000386c:    2000        .       MOVS     r0,#0
        0x1000386e:    f000f93e    ..>.    BL       $Ven$TT$L$$rom_hw_sys_ctrl_write_com_reg ; 0x10003aee
        0x10003872:    2029        )       MOVS     r0,#0x29
        0x10003874:    f000f8c3    ....    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x100039fe
        0x10003878:    202a        *       MOVS     r0,#0x2a
        0x1000387a:    f000f8c0    ....    BL       $Ven$TT$L$$rom_hw_crg_enable_clk_gate ; 0x100039fe
        0x1000387e:    2020                MOVS     r0,#0x20
        0x10003880:    f000f93a    ..:.    BL       $Ven$TT$L$$rom_hw_crg_release_reset ; 0x10003af8
        0x10003884:    f000f93d    ..=.    BL       $Ven$TT$L$$lpwr_ctrl_goto_sleep ; 0x10003b02
        0x10003888:    e7fc        ..      B        0x10003884 ; main + 268
        0x1000388a:    bf00        ..      NOP      
    $d.1
        0x1000388c:    2073255b    [%s     DCD    544417115
        0x10003890:    73252054    T %s    DCD    1931812948
        0x10003894:    656c625d    ]ble    DCD    1701601885
        0x10003898:    72657020     per    DCD    1919250464
        0x1000389c:    65687069    iphe    DCD    1701343337
        0x100038a0:    206c6172    ral     DCD    543973746
        0x100038a4:    6a6f7270    proj    DCD    1785688688
        0x100038a8:    28746365    ect(    DCD    678716261
        0x100038ac:    2029706d    mp)     DCD    539586669
        0x100038b0:    72617473    star    DCD    1918989427
        0x100038b4:    6f742074    t to    DCD    1869881460
        0x100038b8:    726f7720     wor    DCD    1919907616
        0x100038bc:    000a2e6b    k...    DCD    667243
        0x100038c0:    206c754a    Jul     DCD    543978826
        0x100038c4:    32203033    30 2    DCD    840970291
        0x100038c8:    00363230    026.    DCD    3551792
        0x100038cc:    333a3531    15:3    DCD    859452721
        0x100038d0:    37313a34    4:17    DCD    925973044
        0x100038d4:    00000000    ....    DCD    0
    $t.4
    os_error_handler
        0x100038d8:    460c        .F      MOV      r4,r1
        0x100038da:    4605        .F      MOV      r5,r0
        0x100038dc:    f7fffe14    ....    BL       app_debug_reinit ; 0x10003508
        0x100038e0:    a007        ..      ADR      r0,{pc}+0x20 ; 0x10003900
        0x100038e2:    f7fefef1    ....    BL       puts ; 0x100026c8
        0x100038e6:    a00a        ..      ADR      r0,{pc}+0x2a ; 0x10003910
        0x100038e8:    4629        )F      MOV      r1,r5
        0x100038ea:    f7fefd41    ..A.    BL       __2printf ; 0x10002370
        0x100038ee:    a00d        ..      ADR      r0,{pc}+0x36 ; 0x10003924
        0x100038f0:    4621        !F      MOV      r1,r4
        0x100038f2:    f7fefd3d    ..=.    BL       __2printf ; 0x10002370
        0x100038f6:    f7fffdd9    ....    BL       app_debug_printf ; 0x100034ac
        0x100038fa:    bf00        ..      NOP      
        0x100038fc:    e7fe        ..      B        0x100038fc ; os_error_handler + 36
        0x100038fe:    bf00        ..      NOP      
    $d.5
        0x10003900:    6520736f    os e    DCD    1696625519
        0x10003904:    6f207272    rr o    DCD    1864397426
        0x10003908:    72756363    ccur    DCD    1920295779
        0x1000390c:    00000073    s...    DCD    115
        0x10003910:    65646f63    code    DCD    1701080931
        0x10003914:    20202020            DCD    538976288
        0x10003918:    30203a20     : 0    DCD    807418400
        0x1000391c:    38302578    x%08    DCD    942679416
        0x10003920:    00000a58    X...    DCD    2648
        0x10003924:    656a626f    obje    DCD    1701470831
        0x10003928:    695f7463    ct_i    DCD    1767863395
        0x1000392c:    30203a64    d: 0    DCD    807418468
        0x10003930:    38302578    x%08    DCD    942679416
        0x10003934:    00000a58    X...    DCD    2648
    $t.0
    patch_hal_pmu_set_sram_ret
        0x10003938:    f5b07f80    ....    CMP      r0,#0x100
        0x1000393c:    bf84        ..      ITT      HI
        0x1000393e:    2010        .       MOVHI    r0,#0x10
        0x10003940:    4770        pG      BXHI     lr
        0x10003942:    b510        ..      PUSH     {r4,lr}
        0x10003944:    0981        ..      LSRS     r1,r0,#6
        0x10003946:    2201        ."      MOVS     r2,#1
        0x10003948:    0683        ..      LSLS     r3,r0,#26
        0x1000394a:    bf18        ..      IT       NE
        0x1000394c:    eb021190    ....    ADDNE    r1,r2,r0,LSR #6
        0x10003950:    f04f30ff    O..0    MOV      r0,#0xffffffff
        0x10003954:    4088        .@      LSLS     r0,r0,r1
        0x10003956:    43c4        .C      MVNS     r4,r0
        0x10003958:    f64f70ff    O..p    MOV      r0,#0xffff
        0x1000395c:    f2c0000f    ....    MOVT     r0,#0xf
        0x10003960:    f000f8d4    ....    BL       $Ven$TT$L$$rom_hw_pmu_clr_sram_block_ret ; 0x10003b0c
        0x10003964:    4620         F      MOV      r0,r4
        0x10003966:    f000f8d6    ....    BL       $Ven$TT$L$$rom_hw_pmu_set_sram_block_ret ; 0x10003b16
        0x1000396a:    2000        .       MOVS     r0,#0
        0x1000396c:    bd10        ..      POP      {r4,pc}
        0x1000396e:    0000        ..      MOVS     r0,r0
    system_error_handler
        0x10003970:    461c        .F      MOV      r4,r3
        0x10003972:    4615        .F      MOV      r5,r2
        0x10003974:    460e        .F      MOV      r6,r1
        0x10003976:    4607        .F      MOV      r7,r0
        0x10003978:    f7fffdc6    ....    BL       app_debug_reinit ; 0x10003508
        0x1000397c:    a008        ..      ADR      r0,{pc}+0x24 ; 0x100039a0
        0x1000397e:    f7fefea3    ....    BL       puts ; 0x100026c8
        0x10003982:    a00c        ..      ADR      r0,{pc}+0x32 ; 0x100039b4
        0x10003984:    4639        9F      MOV      r1,r7
        0x10003986:    4632        2F      MOV      r2,r6
        0x10003988:    f7fefcf2    ....    BL       __2printf ; 0x10002370
        0x1000398c:    a011        ..      ADR      r0,{pc}+0x48 ; 0x100039d4
        0x1000398e:    4629        )F      MOV      r1,r5
        0x10003990:    4622        "F      MOV      r2,r4
        0x10003992:    f7fefced    ....    BL       __2printf ; 0x10002370
        0x10003996:    f7fffd89    ....    BL       app_debug_printf ; 0x100034ac
        0x1000399a:    bf00        ..      NOP      
        0x1000399c:    e7fe        ..      B        0x1000399c ; system_error_handler + 44
        0x1000399e:    bf00        ..      NOP      
    $d.9
        0x100039a0:    74737973    syst    DCD    1953724787
        0x100039a4:    65206d65    em e    DCD    1696623973
        0x100039a8:    726f7272    rror    DCD    1919906418
        0x100039ac:    63636f20     occ    DCD    1667460896
        0x100039b0:    00737275    urs.    DCD    7565941
        0x100039b4:    45363175    u16E    DCD    1161179509
        0x100039b8:    6f4d7272    rrMo    DCD    1867346546
        0x100039bc:    656c7564    dule    DCD    1701606756
        0x100039c0:    2075253a    :%u     DCD    544548154
        0x100039c4:    45363175    u16E    DCD    1161179509
        0x100039c8:    694c7272    rrLi    DCD    1766617714
        0x100039cc:    253a656e    ne:%    DCD    624584046
        0x100039d0:    00000a75    u...    DCD    2677
        0x100039d4:    45323375    u32E    DCD    1160917877
        0x100039d8:    6e497272    rrIn    DCD    1850307186
        0x100039dc:    3a316f66    fo1:    DCD    976318310
        0x100039e0:    75207525    %u u    DCD    1965061413
        0x100039e4:    72453233    32Er    DCD    1917137459
        0x100039e8:    666e4972    rInf    DCD    1718503794
        0x100039ec:    253a326f    o2:%    DCD    624570991
        0x100039f0:    00000a75    u...    DCD    2677
    $t
    $Ven$TT$L$$rom_hw_uart_send_byte
        0x100039f4:    f64d7c7d    M.}|    MOV      r12,#0xdf7d
        0x100039f8:    f2c00c00    ....    MOVT     r12,#0
        0x100039fc:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_crg_enable_clk_gate
        0x100039fe:    f6471c7d    G.}.    MOV      r12,#0x797d
        0x10003a02:    f2c00c00    ....    MOVT     r12,#0
        0x10003a06:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_gpio_set_pin_pid
        0x10003a08:    f6490c21    I.!.    MOV      r12,#0x9821
        0x10003a0c:    f2c00c00    ....    MOVT     r12,#0
        0x10003a10:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_gpio_set_pin_pull_mode
        0x10003a12:    f6490c9d    I...    MOV      r12,#0x989d
        0x10003a16:    f2c00c00    ....    MOVT     r12,#0
        0x10003a1a:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_uart_init
        0x10003a1c:    f64d6c65    M.el    MOV      r12,#0xde65
        0x10003a20:    f2c00c00    ....    MOVT     r12,#0
        0x10003a24:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_uart_transmit
        0x10003a26:    f24e1ccd    N...    MOV      r12,#0xe1cd
        0x10003a2a:    f2c00c00    ....    MOVT     r12,#0
        0x10003a2e:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_efuse_read_bytes
        0x10003a30:    f2487c0d    H..|    MOV      r12,#0x870d
        0x10003a34:    f2c00c00    ....    MOVT     r12,#0
        0x10003a38:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_low_power_mode
        0x10003a3a:    f64a6c25    J.%l    MOV      r12,#0xae25
        0x10003a3e:    f2c00c00    ....    MOVT     r12,#0
        0x10003a42:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_wakeup_source
        0x10003a44:    f64a6c8d    J..l    MOV      r12,#0xae8d
        0x10003a48:    f2c00c00    ....    MOVT     r12,#0
        0x10003a4c:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_wdt_disable
        0x10003a4e:    f64f0c31    O.1.    MOV      r12,#0xf831
        0x10003a52:    f2c00c00    ....    MOVT     r12,#0
        0x10003a56:    4760        `G      BX       r12
    $Ven$TT$L$$rom_delay_ms
        0x10003a58:    f2447c71    D.q|    MOV      r12,#0x4771
        0x10003a5c:    f2c00c00    ....    MOVT     r12,#0
        0x10003a60:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_ldo_act_voltage
        0x10003a62:    f64a5c7d    J.}\    MOV      r12,#0xad7d
        0x10003a66:    f2c00c00    ....    MOVT     r12,#0
        0x10003a6a:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_dcdc_init
        0x10003a6c:    f64a0c6d    J.m.    MOV      r12,#0xa86d
        0x10003a70:    f2c00c00    ....    MOVT     r12,#0
        0x10003a74:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_dcdc_act_voltage
        0x10003a76:    f64a3ce9    J..<    MOV      r12,#0xabe9
        0x10003a7a:    f2c00c00    ....    MOVT     r12,#0
        0x10003a7e:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_ldo_dig_voltage
        0x10003a80:    f64a5ca9    J..\    MOV      r12,#0xada9
        0x10003a84:    f2c00c00    ....    MOVT     r12,#0
        0x10003a88:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_ldo_ret_sleep_voltage
        0x10003a8a:    f64a5cfd    J..\    MOV      r12,#0xadfd
        0x10003a8e:    f2c00c00    ....    MOVT     r12,#0
        0x10003a92:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hal_pmu_sel_power_act_out_mode
        0x10003a94:    f6454c21    E.!L    MOV      r12,#0x5c21
        0x10003a98:    f2c00c00    ....    MOVT     r12,#0
        0x10003a9c:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_rc_hclk_tune
        0x10003a9e:    f64a6c59    J.Yl    MOV      r12,#0xae59
        0x10003aa2:    f2c00c00    ....    MOVT     r12,#0
        0x10003aa6:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_rc_lclk_tune
        0x10003aa8:    f64a6c69    J.il    MOV      r12,#0xae69
        0x10003aac:    f2c00c00    ....    MOVT     r12,#0
        0x10003ab0:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_sel_dcxo_hclk_pwr
        0x10003ab2:    f64a3cb1    J..<    MOV      r12,#0xabb1
        0x10003ab6:    f2c00c00    ....    MOVT     r12,#0
        0x10003aba:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hal_pmu_cfg_dcxo_hclk_param
        0x10003abc:    f6451c65    E.e.    MOV      r12,#0x5965
        0x10003ac0:    f2c00c00    ....    MOVT     r12,#0
        0x10003ac4:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hal_pmu_set_sys_clk_src
        0x10003ac6:    f6455c29    E.)\    MOV      r12,#0x5d29
        0x10003aca:    f2c00c00    ....    MOVT     r12,#0
        0x10003ace:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_sys_ctrl_peri_int_ctrl
        0x10003ad0:    f24c3c11    L..<    MOV      r12,#0xc311
        0x10003ad4:    f2c00c00    ....    MOVT     r12,#0
        0x10003ad8:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_crg_keep_reset
        0x10003ada:    f6472c85    G..,    MOV      r12,#0x7a85
        0x10003ade:    f2c00c00    ....    MOVT     r12,#0
        0x10003ae2:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_sys_ctrl_enable_cp_remap
        0x10003ae4:    f24c1c79    L.y.    MOV      r12,#0xc179
        0x10003ae8:    f2c00c00    ....    MOVT     r12,#0
        0x10003aec:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_sys_ctrl_write_com_reg
        0x10003aee:    f24c3cb9    L..<    MOV      r12,#0xc3b9
        0x10003af2:    f2c00c00    ....    MOVT     r12,#0
        0x10003af6:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_crg_release_reset
        0x10003af8:    f6472cd1    G..,    MOV      r12,#0x7ad1
        0x10003afc:    f2c00c00    ....    MOVT     r12,#0
        0x10003b00:    4760        `G      BX       r12
    $Ven$TT$L$$lpwr_ctrl_goto_sleep
        0x10003b02:    f2472c01    G..,    MOV      r12,#0x7201
        0x10003b06:    f2c20c01    ....    MOVT     r12,#0x2001
        0x10003b0a:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_clr_sram_block_ret
        0x10003b0c:    f64a0c51    J.Q.    MOV      r12,#0xa851
        0x10003b10:    f2c00c00    ....    MOVT     r12,#0
        0x10003b14:    4760        `G      BX       r12
    $Ven$TT$L$$rom_hw_pmu_set_sram_block_ret
        0x10003b16:    f64a6c79    J.yl    MOV      r12,#0xae79
        0x10003b1a:    f2c00c00    ....    MOVT     r12,#0
        0x10003b1e:    4760        `G      BX       r12
    i._is_digit
    _is_digit
        0x10003b20:    3830        08      SUBS     r0,r0,#0x30
        0x10003b22:    280a        .(      CMP      r0,#0xa
        0x10003b24:    d201        ..      BCS      0x10003b2a ; _is_digit + 10
        0x10003b26:    2001        .       MOVS     r0,#1
        0x10003b28:    4770        pG      BX       lr
        0x10003b2a:    2000        .       MOVS     r0,#0
        0x10003b2c:    4770        pG      BX       lr
    x$fpl$fpinit
    $v0
    _fp_init
        0x10003b2e:    eef10a10    ....    VMRS     r0,FPSCR
        0x10003b32:    f64f71ff    O..q    MOV      r1,#0xffff
        0x10003b36:    f2c031c0    ...1    MOVT     r1,#0x3c0
        0x10003b3a:    ea200001     ...    BIC      r0,r0,r1
        0x10003b3e:    f0407040    @.@p    ORR      r0,r0,#0x3000000
        0x10003b42:    eee10a10    ....    VMSR     FPSCR,r0
    __fplib_config_fpu_vfp
    __fplib_config_pureend_doubles
        0x10003b46:    4770        pG      BX       lr
    $d.realdata
    .constdata
    uc_hextab
        0x10003b48:    33323130    0123    DCD    858927408
        0x10003b4c:    37363534    4567    DCD    926299444
        0x10003b50:    42413938    89AB    DCD    1111570744
        0x10003b54:    46454443    CDEF    DCD    1178944579
        0x10003b58:    00583040    @0X.    DCD    5779520
    lc_hextab
        0x10003b5c:    33323130    0123    DCD    858927408
        0x10003b60:    37363534    4567    DCD    926299444
        0x10003b64:    62613938    89ab    DCD    1650538808
        0x10003b68:    66656463    cdef    DCD    1717920867
        0x10003b6c:    00783040    @0x.    DCD    7876672
    .constdata
    maptable
        0x10003b70:    08000004    ....    DCD    134217732
        0x10003b74:    00000000    ....    DCD    0
        0x10003b78:    02000000    ....    DCD    33554432
        0x10003b7c:    00000100    ....    DCD    256
        0x10003b80:    10          .       DCB    16
    .constdata
    __stdin_name
        0x10003b81:    3a7474      :tt     DCB    58,116,116
        0x10003b84:    00          .       DCB    0
    .constdata
    __stdout_name
        0x10003b85:    3a7474      :tt     DCB    58,116,116
        0x10003b88:    00          .       DCB    0
    .constdata
    __stderr_name
        0x10003b89:    3a7474      :tt     DCB    58,116,116
        0x10003b8c:    00          .       DCB    0
    .L.str.27
        0x10003b8d:    5b5052      [PR     DCB    91,80,82
        0x10003b90:    53494345    ECIS    DCD    1397310277
        0x10003b94:    5d525245    ERR]    DCD    1565676101
        0x10003b98:    74616420     dat    DCD    1952539680
        0x10003b9c:    75622061    a bu    DCD    1969365089
        0x10003ba0:    72652073    s er    DCD    1919230067
        0x10003ba4:    20726f72    ror     DCD    544370546
        0x10003ba8:    20736168    has     DCD    544432488
        0x10003bac:    7563636f    occu    DCD    1969447791
        0x10003bb0:    64657272    rred    DCD    1684370034
        0x10003bb4:    4350202c    , PC    DCD    1129324588
        0x10003bb8:    30203a20     : 0    DCD    807418400
        0x10003bbc:    38302578    x%08    DCD    942679416
        0x10003bc0:    000a0d78    x...    DCD    658808
    .L.str.20
        0x10003bc4:    4341445b    [DAC    DCD    1128350811
        0x10003bc8:    4f495643    CVIO    DCD    1330206275
        0x10003bcc:    54205d4c    L] T    DCD    1411407180
        0x10003bd0:    70206568    he p    DCD    1881171304
        0x10003bd4:    65636f72    roce    DCD    1701015410
        0x10003bd8:    726f7373    ssor    DCD    1919906675
        0x10003bdc:    74746120     att    DCD    1953784096
        0x10003be0:    74706d65    empt    DCD    1953525093
        0x10003be4:    61206465    ed a    DCD    1629512805
        0x10003be8:    616f6c20     loa    DCD    1634692128
        0x10003bec:    726f2064    d or    DCD    1919885412
        0x10003bf0:    6f747320     sto    DCD    1869902624
        0x10003bf4:    61206572    re a    DCD    1629513074
        0x10003bf8:    20612074    t a     DCD    543236212
        0x10003bfc:    61636f6c    loca    DCD    1633906540
        0x10003c00:    6e6f6974    tion    DCD    1852795252
        0x10003c04:    61687420     tha    DCD    1634235424
        0x10003c08:    6f642074    t do    DCD    1868832884
        0x10003c0c:    6e207365    es n    DCD    1847620453
        0x10003c10:    7020746f    ot p    DCD    1881175151
        0x10003c14:    696d7265    ermi    DCD    1768780389
        0x10003c18:    68742074    t th    DCD    1752440948
        0x10003c1c:    706f2065    e op    DCD    1886330981
        0x10003c20:    74617265    erat    DCD    1952543333
        0x10003c24:    2c6e6f69    ion,    DCD    745434985
        0x10003c28:    20435020     PC     DCD    541282336
        0x10003c2c:    7830203a    : 0x    DCD    2016419898
        0x10003c30:    78383025    %08x    DCD    2016948261
        0x10003c34:    0a0d        ..      DCW    2573
        0x10003c36:    00          .       DCB    0
    .L.str.19
        0x10003c37:    5b          [       DCB    91
        0x10003c38:    43434149    IACC    DCD    1128481097
        0x10003c3c:    4c4f4956    VIOL    DCD    1280264534
        0x10003c40:    6568545d    ]The    DCD    1701336157
        0x10003c44:    6f727020     pro    DCD    1869770784
        0x10003c48:    73736563    cess    DCD    1936942435
        0x10003c4c:    6120726f    or a    DCD    1629516399
        0x10003c50:    6d657474    ttem    DCD    1835365492
        0x10003c54:    64657470    pted    DCD    1684370544
        0x10003c58:    206e6120     an     DCD    544104736
        0x10003c5c:    74736e69    inst    DCD    1953721961
        0x10003c60:    74637572    ruct    DCD    1952675186
        0x10003c64:    206e6f69    ion     DCD    544108393
        0x10003c68:    63746566    fetc    DCD    1668572518
        0x10003c6c:    72662068    h fr    DCD    1919295592
        0x10003c70:    61206d6f    om a    DCD    1629515119
        0x10003c74:    636f6c20     loc    DCD    1668246560
        0x10003c78:    6f697461    atio    DCD    1869182049
        0x10003c7c:    6874206e    n th    DCD    1752440942
        0x10003c80:    64207461    at d    DCD    1679848545
        0x10003c84:    2073656f    oes     DCD    544433519
        0x10003c88:    20746f6e    not     DCD    544501614
        0x10003c8c:    6d726570    perm    DCD    1836213616
        0x10003c90:    65207469    it e    DCD    1696625769
        0x10003c94:    75636578    xecu    DCD    1969448312
        0x10003c98:    6e6f6974    tion    DCD    1852795252
        0x10003c9c:    4350202c    , PC    DCD    1129324588
        0x10003ca0:    30203a20     : 0    DCD    807418400
        0x10003ca4:    38302578    x%08    DCD    942679416
        0x10003ca8:    000a0d78    x...    DCD    658808
    .L.str.21
        0x10003cac:    3a205441    AT :    DCD    975197249
        0x10003cb0:    30257830    0x%0    DCD    807761968
        0x10003cb4:    0a0d7838    8x..    DCD    168654904
        0x10003cb8:    00          .       DCB    0
    .L.str.1
        0x10003cb9:    5b4861      [Ha     DCB    91,72,97
        0x10003cbc:    61466472    rdFa    DCD    1632003186
        0x10003cc0:    5f746c75    ult_    DCD    1601465461
        0x10003cc4:    646e6148    Hand    DCD    1684955464
        0x10003cc8:    5d72656c    ler]    DCD    1567778156
        0x10003ccc:    72727543    Curr    DCD    1920103747
        0x10003cd0:    20746e65    ent     DCD    544501349
        0x10003cd4:    3a70736d    msp:    DCD    980448109
        0x10003cd8:    25783020     0x%    DCD    628633632
        0x10003cdc:    0a583830    08X.    DCD    173553712
        0x10003ce0:    00          .       DCB    0
    .Lstr.56
        0x10003ce1:    5b494e      [IN     DCB    91,73,78
        0x10003ce4:    5d435056    VPC]    DCD    1564692566
        0x10003ce8:    69206e61    an i    DCD    1763733089
        0x10003cec:    6765746e    nteg    DCD    1734702190
        0x10003cf0:    79746972    rity    DCD    2037672306
        0x10003cf4:    65686320     che    DCD    1701339936
        0x10003cf8:    65206b63    ck e    DCD    1696623459
        0x10003cfc:    726f7272    rror    DCD    1919906418
        0x10003d00:    73616820     has    DCD    1935763488
        0x10003d04:    63636f20     occ    DCD    1667460896
        0x10003d08:    65727275    urre    DCD    1701999221
        0x10003d0c:    0d64        d.      DCW    3428
        0x10003d0e:    00          .       DCB    0
    .Lstr.58
        0x10003d0f:    5b          [       DCB    91
        0x10003d10:    45444e55    UNDE    DCD    1162104405
        0x10003d14:    534e4946    FINS    DCD    1397639494
        0x10003d18:    615d5254    TR]a    DCD    1633505876
        0x10003d1c:    6e75206e    n un    DCD    1853169774
        0x10003d20:    69666564    defi    DCD    1768318308
        0x10003d24:    2064656e    ned     DCD    543450478
        0x10003d28:    74736e69    inst    DCD    1953721961
        0x10003d2c:    74637572    ruct    DCD    1952675186
        0x10003d30:    206e6f69    ion     DCD    544108393
        0x10003d34:    6f727265    erro    DCD    1869771365
        0x10003d38:    61682072    r ha    DCD    1634214002
        0x10003d3c:    636f2073    s oc    DCD    1668227187
        0x10003d40:    72727563    curr    DCD    1920103779
        0x10003d44:    000d6465    ed..    DCD    877669
    .Lstr.52
        0x10003d48:    5649445b    [DIV    DCD    1447642203
        0x10003d4c:    455a5942    BYZE    DCD    1163548994
        0x10003d50:    615d4f52    RO]a    DCD    1633505106
        0x10003d54:    6e69206e    n in    DCD    1852383342
        0x10003d58:    65676574    tege    DCD    1701274996
        0x10003d5c:    69642072    r di    DCD    1768169586
        0x10003d60:    69736976    visi    DCD    1769171318
        0x10003d64:    62206e6f    on b    DCD    1646292591
        0x10003d68:    657a2079    y ze    DCD    1702502521
        0x10003d6c:    65206f72    ro e    DCD    1696624498
        0x10003d70:    726f7272    rror    DCD    1919906418
        0x10003d74:    73616820     has    DCD    1935763488
        0x10003d78:    63636f20     occ    DCD    1667460896
        0x10003d7c:    65727275    urre    DCD    1701999221
        0x10003d80:    0d64        d.      DCW    3428
        0x10003d82:    00          .       DCB    0
    .Lstr.63
        0x10003d83:    5b          [       DCB    91
        0x10003d84:    52504d49    IMPR    DCD    1380994377
        0x10003d88:    53494345    ECIS    DCD    1397310277
        0x10003d8c:    5d525245    ERR]    DCD    1565676101
        0x10003d90:    72706d49    Impr    DCD    1919970633
        0x10003d94:    73696365    ecis    DCD    1936286565
        0x10003d98:    61642065    e da    DCD    1633951845
        0x10003d9c:    61206174    ta a    DCD    1629512052
        0x10003da0:    73656363    cces    DCD    1936024419
        0x10003da4:    72652073    s er    DCD    1919230067
        0x10003da8:    20726f72    ror     DCD    544370546
        0x10003dac:    20736168    has     DCD    544432488
        0x10003db0:    7563636f    occu    DCD    1969447791
        0x10003db4:    64657272    rred    DCD    1684370034
        0x10003db8:    000d        ..      DCW    13
    .Lstr.53
        0x10003dba:    555b        [U      DCW    21851
        0x10003dbc:    494c414e    NALI    DCD    1229734222
        0x10003dc0:    44454e47    GNED    DCD    1145392711
        0x10003dc4:    206e615d    ]an     DCD    544104797
        0x10003dc8:    6c616e75    unal    DCD    1818324597
        0x10003dcc:    656e6769    igne    DCD    1701734249
        0x10003dd0:    63612064    d ac    DCD    1667309668
        0x10003dd4:    73736563    cess    DCD    1936942435
        0x10003dd8:    72726520     err    DCD    1920099616
        0x10003ddc:    6820726f    or h    DCD    1746956911
        0x10003de0:    6f207361    as o    DCD    1864397665
        0x10003de4:    72756363    ccur    DCD    1920295779
        0x10003de8:    0d646572    red.    DCD    224683378
        0x10003dec:    00          .       DCB    0
    .Lstr.64
        0x10003ded:    5b4942      [IB     DCB    91,73,66
        0x10003df0:    52455355    USER    DCD    1380275029
        0x10003df4:    6e695d52    R]in    DCD    1852398930
        0x10003df8:    75727473    stru    DCD    1970435187
        0x10003dfc:    6f697463    ctio    DCD    1869182051
        0x10003e00:    7562206e    n bu    DCD    1969365102
        0x10003e04:    72652073    s er    DCD    1919230067
        0x10003e08:    20726f72    ror     DCD    544370546
        0x10003e0c:    20736168    has     DCD    544432488
        0x10003e10:    7563636f    occu    DCD    1969447791
        0x10003e14:    64657272    rred    DCD    1684370034
        0x10003e18:    000d        ..      DCW    13
    .Lstr.55
        0x10003e1a:    4e5b        [N      DCW    20059
        0x10003e1c:    5d50434f    OCP]    DCD    1565541199
        0x10003e20:    6f632061    a co    DCD    1868767329
        0x10003e24:    636f7270    proc    DCD    1668248176
        0x10003e28:    6f737365    esso    DCD    1869837157
        0x10003e2c:    69642072    r di    DCD    1768169586
        0x10003e30:    6c626173    sabl    DCD    1818386803
        0x10003e34:    6f206465    ed o    DCD    1864393829
        0x10003e38:    6f6e2072    r no    DCD    1869488242
        0x10003e3c:    72702074    t pr    DCD    1919950964
        0x10003e40:    6e657365    esen    DCD    1852142437
        0x10003e44:    72652074    t er    DCD    1919230068
        0x10003e48:    20726f72    ror     DCD    544370546
        0x10003e4c:    20736168    has     DCD    544432488
        0x10003e50:    7563636f    occu    DCD    1969447791
        0x10003e54:    64657272    rred    DCD    1684370034
        0x10003e58:    000d        ..      DCW    13
    .Lstr.54
        0x10003e5a:    535b        [S      DCW    21339
        0x10003e5c:    464f4b54    TKOF    DCD    1179601748
        0x10003e60:    7320615d    ]a s    DCD    1931501917
        0x10003e64:    6b636174    tack    DCD    1801675124
        0x10003e68:    65766f20     ove    DCD    1702260512
        0x10003e6c:    6f6c6672    rflo    DCD    1869375090
        0x10003e70:    72652077    w er    DCD    1919230071
        0x10003e74:    20726f72    ror     DCD    544370546
        0x10003e78:    20736168    has     DCD    544432488
        0x10003e7c:    7563636f    occu    DCD    1969447791
        0x10003e80:    64657272    rred    DCD    1684370034
        0x10003e84:    000d        ..      DCW    13
    .Lstr.57
        0x10003e86:    495b        [I      DCW    18779
        0x10003e88:    5453564e    NVST    DCD    1414747726
        0x10003e8c:    5d455441    ATE]    DCD    1564824641
        0x10003e90:    206e6120     an     DCD    544104736
        0x10003e94:    52535045    EPSR    DCD    1381191749
        0x10003e98:    6f20542e    .T o    DCD    1864389678
        0x10003e9c:    50452072    r EP    DCD    1346707570
        0x10003ea0:    492e5253    SR.I    DCD    1227772499
        0x10003ea4:    61762054    T va    DCD    1635131476
        0x10003ea8:    6964696c    lidi    DCD    1768188268
        0x10003eac:    65207974    ty e    DCD    1696627060
        0x10003eb0:    726f7272    rror    DCD    1919906418
        0x10003eb4:    73616820     has    DCD    1935763488
        0x10003eb8:    63636f20     occ    DCD    1667460896
        0x10003ebc:    65727275    urre    DCD    1701999221
        0x10003ec0:    0d64        d.      DCW    3428
        0x10003ec2:    00          .       DCB    0
    .Lstr.66
        0x10003ec3:    5b          [       DCB    91
        0x10003ec4:    50534c4d    MLSP    DCD    1347636301
        0x10003ec8:    5d525245    ERR]    DCD    1565676101
        0x10003ecc:    654d2041    A Me    DCD    1699553345
        0x10003ed0:    6e614d6d    mMan    DCD    1851870573
        0x10003ed4:    20656761    age     DCD    543516513
        0x10003ed8:    6c756166    faul    DCD    1819631974
        0x10003edc:    636f2074    t oc    DCD    1668227188
        0x10003ee0:    72727563    curr    DCD    1920103779
        0x10003ee4:    64206465    ed d    DCD    1679844453
        0x10003ee8:    6e697275    urin    DCD    1852404341
        0x10003eec:    6c662067    g fl    DCD    1818632295
        0x10003ef0:    6974616f    oati    DCD    1769234799
        0x10003ef4:    702d676e    ng-p    DCD    1882023790
        0x10003ef8:    746e696f    oint    DCD    1953393007
        0x10003efc:    7a616c20     laz    DCD    2053205024
        0x10003f00:    74732079    y st    DCD    1953702009
        0x10003f04:    20657461    ate     DCD    543519841
        0x10003f08:    73657270    pres    DCD    1936028272
        0x10003f0c:    61767265    erva    DCD    1635152485
        0x10003f10:    6e6f6974    tion    DCD    1852795252
        0x10003f14:    000d        ..      DCW    13
    .Lstr.60
        0x10003f16:    4c5b        [L      DCW    19547
        0x10003f18:    52455053    SPER    DCD    1380274259
        0x10003f1c:    20415d52    R]A     DCD    541154642
        0x10003f20:    20737562    bus     DCD    544437602
        0x10003f24:    6c756166    faul    DCD    1819631974
        0x10003f28:    636f2074    t oc    DCD    1668227188
        0x10003f2c:    72727563    curr    DCD    1920103779
        0x10003f30:    64206465    ed d    DCD    1679844453
        0x10003f34:    6e697275    urin    DCD    1852404341
        0x10003f38:    6c662067    g fl    DCD    1818632295
        0x10003f3c:    6974616f    oati    DCD    1769234799
        0x10003f40:    702d676e    ng-p    DCD    1882023790
        0x10003f44:    746e696f    oint    DCD    1953393007
        0x10003f48:    7a616c20     laz    DCD    2053205024
        0x10003f4c:    74732079    y st    DCD    1953702009
        0x10003f50:    20657461    ate     DCD    543519841
        0x10003f54:    73657270    pres    DCD    1936028272
        0x10003f58:    61767265    erva    DCD    1635152485
        0x10003f5c:    6e6f6974    tion    DCD    1852795252
        0x10003f60:    000d        ..      DCW    13
    .Lstr.68
        0x10003f62:    4d5b        [M      DCW    19803
        0x10003f64:    54534e55    UNST    DCD    1414745685
        0x10003f68:    5252454b    KERR    DCD    1381123403
        0x10003f6c:    736e555d    ]Uns    DCD    1936610653
        0x10003f70:    6b636174    tack    DCD    1801675124
        0x10003f74:    726f6620     for    DCD    1919903264
        0x10003f78:    206e6120     an     DCD    544104736
        0x10003f7c:    65637865    exce    DCD    1701017701
        0x10003f80:    6f697470    ptio    DCD    1869182064
        0x10003f84:    6572206e    n re    DCD    1701978222
        0x10003f88:    6e727574    turn    DCD    1852994932
        0x10003f8c:    73616820     has    DCD    1935763488
        0x10003f90:    75616320     cau    DCD    1969316640
        0x10003f94:    20646573    sed     DCD    543450483
        0x10003f98:    20656e6f    one     DCD    543518319
        0x10003f9c:    6d20726f    or m    DCD    1830842991
        0x10003fa0:    2065726f    ore     DCD    543519343
        0x10003fa4:    65636361    acce    DCD    1701012321
        0x10003fa8:    76207373    ss v    DCD    1981838195
        0x10003fac:    616c6f69    iola    DCD    1634496361
        0x10003fb0:    6e6f6974    tion    DCD    1852795252
        0x10003fb4:    0d73        s.      DCW    3443
        0x10003fb6:    00          .       DCB    0
    .Lstr.67
        0x10003fb7:    5b          [       DCB    91
        0x10003fb8:    4b54534d    MSTK    DCD    1263817549
        0x10003fbc:    5d525245    ERR]    DCD    1565676101
        0x10003fc0:    63617453    Stac    DCD    1667331155
        0x10003fc4:    676e696b    king    DCD    1735289195
        0x10003fc8:    726f6620     for    DCD    1919903264
        0x10003fcc:    206e6120     an     DCD    544104736
        0x10003fd0:    65637865    exce    DCD    1701017701
        0x10003fd4:    6f697470    ptio    DCD    1869182064
        0x10003fd8:    6e65206e    n en    DCD    1852121198
        0x10003fdc:    20797274    try     DCD    544830068
        0x10003fe0:    20736168    has     DCD    544432488
        0x10003fe4:    73756163    caus    DCD    1937072483
        0x10003fe8:    6f206465    ed o    DCD    1864393829
        0x10003fec:    6f20656e    ne o    DCD    1864394094
        0x10003ff0:    6f6d2072    r mo    DCD    1869422706
        0x10003ff4:    61206572    re a    DCD    1629513074
        0x10003ff8:    73656363    cces    DCD    1936024419
        0x10003ffc:    69762073    s vi    DCD    1769349235
        0x10004000:    74616c6f    olat    DCD    1952541807
        0x10004004:    736e6f69    ions    DCD    1936617321
        0x10004008:    000d        ..      DCW    13
    .Lstr.62
        0x1000400a:    555b        [U      DCW    21851
        0x1000400c:    4b54534e    NSTK    DCD    1263817550
        0x10004010:    5d525245    ERR]    DCD    1565676101
        0x10004014:    74736e55    Unst    DCD    1953721941
        0x10004018:    206b6361    ack     DCD    543908705
        0x1000401c:    20726f66    for     DCD    544370534
        0x10004020:    65206e61    an e    DCD    1696624225
        0x10004024:    70656378    xcep    DCD    1885692792
        0x10004028:    6e6f6974    tion    DCD    1852795252
        0x1000402c:    74657220     ret    DCD    1952805408
        0x10004030:    206e7275    urn     DCD    544109173
        0x10004034:    20736168    has     DCD    544432488
        0x10004038:    73756163    caus    DCD    1937072483
        0x1000403c:    6f206465    ed o    DCD    1864393829
        0x10004040:    6f20656e    ne o    DCD    1864394094
        0x10004044:    6f6d2072    r mo    DCD    1869422706
        0x10004048:    42206572    re B    DCD    1109419378
        0x1000404c:    61467375    usFa    DCD    1632007029
        0x10004050:    73746c75    ults    DCD    1937009781
        0x10004054:    000d        ..      DCW    13
    .Lstr.61
        0x10004056:    535b        [S      DCW    21339
        0x10004058:    52454b54    TKER    DCD    1380272980
        0x1000405c:    74535d52    R]St    DCD    1951620434
        0x10004060:    696b6361    acki    DCD    1768645473
        0x10004064:    6620676e    ng f    DCD    1713399662
        0x10004068:    6120726f    or a    DCD    1629516399
        0x1000406c:    7865206e    n ex    DCD    2019893358
        0x10004070:    74706563    cept    DCD    1953523043
        0x10004074:    206e6f69    ion     DCD    544108393
        0x10004078:    72746e65    entr    DCD    1920233061
        0x1000407c:    61682079    y ha    DCD    1634214009
        0x10004080:    61632073    s ca    DCD    1633886323
        0x10004084:    64657375    used    DCD    1684370293
        0x10004088:    656e6f20     one    DCD    1701736224
        0x1000408c:    20726f20     or     DCD    544370464
        0x10004090:    65726f6d    more    DCD    1701998445
        0x10004094:    73754220     Bus    DCD    1937064480
        0x10004098:    6c756146    Faul    DCD    1819631942
        0x1000409c:    000d7374    ts..    DCD    881524
    .Lstr.65
        0x100040a0:    4d6d654d    MemM    DCD    1299014989
        0x100040a4:    67616e61    anag    DCD    1734438497
        0x100040a8:    61462065    e Fa    DCD    1631985765
        0x100040ac:    0d746c75    ult.    DCD    225733749
        0x100040b0:    00          .       DCB    0
    .Lstr.51
        0x100040b1:    557361      Usa     DCB    85,115,97
        0x100040b4:    46206567    ge F    DCD    1176528231
        0x100040b8:    746c7561    ault    DCD    1953264993
        0x100040bc:    000d        ..      DCW    13
    .Lstr.50
        0x100040be:    6f43        Co      DCW    28483
        0x100040c0:    6769666e    nfig    DCD    1734960750
        0x100040c4:    62617275    urab    DCD    1650553461
        0x100040c8:    4620656c    le F    DCD    1176528236
        0x100040cc:    746c7561    ault    DCD    1953264993
        0x100040d0:    000d        ..      DCW    13
    .Lstr.70
        0x100040d2:    6556        Ve      DCW    25942
        0x100040d4:    726f7463    ctor    DCD    1919906915
        0x100040d8:    75614620     Fau    DCD    1969309216
        0x100040dc:    000d746c    lt..    DCD    881772
    .Lstr.59
        0x100040e0:    20737542    Bus     DCD    544437570
        0x100040e4:    6c756146    Faul    DCD    1819631942
        0x100040e8:    0d74        t.      DCW    3444
        0x100040ea:    00          .       DCB    0
    .Lstr.69
        0x100040eb:    44          D       DCB    68
        0x100040ec:    67756265    ebug    DCD    1735746149
        0x100040f0:    65764520     Eve    DCD    1702249760
        0x100040f4:    4620746e    nt F    DCD    1176532078
        0x100040f8:    746c7561    ault    DCD    1953264993
        0x100040fc:    000d        ..      DCW    13
    .Lstr.72
        0x100040fe:    634f        Oc      DCW    25423
        0x10004100:    65727563    cure    DCD    1701999971
        0x10004104:    6e692064    d in    DCD    1852383332
        0x10004108:    73617420     tas    DCD    1935766560
        0x1000410c:    2e6b        k.      DCW    11883
        0x1000410e:    00          .       DCB    0
    .Lstr.48
        0x1000410f:    55          U       DCB    85
        0x10004110:    676e6973    sing    DCD    1735289203
        0x10004114:    32337520     u32    DCD    842233120
        0x10004118:    2e70734d    Msp.    DCD    779121485
        0x1000411c:    00          .       DCB    0
    .Lstr
        0x1000411d:    4f6363      Occ     DCB    79,99,99
        0x10004120:    64657275    ured    DCD    1684370037
        0x10004124:    206e6920     in     DCD    544106784
        0x10004128:    65746e69    inte    DCD    1702129257
        0x1000412c:    70757272    rrup    DCD    1886745202
        0x10004130:    00002e74    t...    DCD    11892

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
        0x20017204:    f24f1568    O.h.    MOV      r5,#0xf168
        0x20017208:    f2c20501    ....    MOVT     r5,#0x2001
        0x2001720c:    7829        )x      LDRB     r1,[r5,#0]
        0x2001720e:    2000        .       MOVS     r0,#0
        0x20017210:    2900        .)      CMP      r1,#0
        0x20017212:    9003        ..      STR      r0,[sp,#0xc]
        0x20017214:    9002        ..      STR      r0,[sp,#8]
        0x20017216:    f000807e    ..~.    BEQ.W    0x20017316 ; lpwr_ctrl_goto_sleep + 278
        0x2001721a:    f24f1088    O...    MOV      r0,#0xf188
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
        0x200172fe:    f24f1084    O...    MOV      r0,#0xf184
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

** Section #7 'RAM_MP_DATA' (SHT_PROGBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 12 bytes (alignment 4)
    Address: 0x2001f000


** Section #8 'RAM_MP_DATA' (SHT_NOBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 384 bytes (alignment 4)
    Address: 0x2001f00c


** Section #9 'RAM_MP_STACK_HEAP' (SHT_NOBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 12288 bytes (alignment 8)
    Address: 0x20024000


** Section #10 '.debug_abbrev' (SHT_PROGBITS)
    Size   : 2596 bytes


** Section #11 '.debug_frame' (SHT_PROGBITS)
    Size   : 4516 bytes


** Section #12 '.debug_info' (SHT_PROGBITS)
    Size   : 16489 bytes


** Section #13 '.debug_line' (SHT_PROGBITS)
    Size   : 6748 bytes


** Section #14 '.debug_loc' (SHT_PROGBITS)
    Size   : 5739 bytes


** Section #15 '.debug_str' (SHT_PROGBITS)
    Size   : 19164 bytes


** Section #16 '.debug_ranges' (SHT_PROGBITS)
    Size   : 280 bytes


** Section #17 '.symtab' (SHT_SYMTAB)
    Size   : 26464 bytes (alignment 4)
    String table #18 '.strtab'
    Last local symbol no. 509


** Section #18 '.strtab' (SHT_STRTAB)
    Size   : 32980 bytes


** Section #19 '.note' (SHT_NOTE)
    Size   : 52 bytes (alignment 4)


** Section #20 '.comment' (SHT_PROGBITS)
    Size   : 2056 bytes


** Section #21 '.shstrtab' (SHT_STRTAB)
    Size   : 236 bytes


