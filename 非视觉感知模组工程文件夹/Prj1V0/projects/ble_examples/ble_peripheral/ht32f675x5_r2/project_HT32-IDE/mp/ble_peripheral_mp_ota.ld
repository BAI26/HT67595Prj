/* Entry Point */
ENTRY(Reset_Handler)

/* OTA Flash 分区方案 */
MEMORY
{
  BOOT2 (rx)          : ORIGIN = 0x10000000, LENGTH = 4K
  FW_INFO (rw)        : ORIGIN = 0x10001000, LENGTH = 4K
  
  /* APP Bank A - 当前运行区 */
  APP_A (rx)          : ORIGIN = 0x10002000, LENGTH = 150K
  
  /* APP Bank B - OTA 目标区 */
  APP_B (rx)          : ORIGIN = 0x10027800, LENGTH = 150K
  
  /* 模型存储区 */
  MODEL_SLOT1 (r)     : ORIGIN = 0x1004D000, LENGTH = 40K
  
  /* 模型存储区 2 */
  MODEL_SLOT2 (r)     : ORIGIN = 0x10057000, LENGTH = 40K
  
  /* 配置存储区 */
  CONFIG (rw)         : ORIGIN = 0x10061000, LENGTH = 16K
  
  /* RAM 分配 */
  RAM_CP_CODE (rwx)   : ORIGIN = 0x20003000, LENGTH = 80K
  RAM_MP_VECTOR(rwx)  : ORIGIN = 0x20017000, LENGTH = 512
  RAM_MP_CODE (rwx)   : ORIGIN = 0x20017200, LENGTH = 31K+512
  RAM_MP_DATA (rwx)   : ORIGIN = 0x2001F000, LENGTH = 32K
}

SECTIONS
{
  .boot2 :
  {
    . = ALIGN(4);
    KEEP(*(.boot2.code))
    . = ALIGN(4);
  } >BOOT2

  .isr_vector :
  {
    . = ALIGN(4);
    KEEP(*(.isr_vector))
    . = ALIGN(4);
  } >APP_A

  .text ALIGN(4) :
  {
    . = ALIGN(4);
    *(.text)
    *(.text*)
    *(.glue_7)
    *(.glue_7t)
    *(.eh_frame)
    KEEP (*(.init))
    KEEP (*(.fini))
    . = ALIGN(4);
    _etext = .;
  } >APP_A

  .rodata ALIGN(4) :
  {
    . = ALIGN(4);
    *(.rodata)
    *(.rodata*)
    . = ALIGN(4);
  } >APP_A

  /* TFLite 模型数据 - 放在固定槽位 */
  .model_data :
  {
    . = ALIGN(4);
    _smodel_data = .;
    *(.model_data)
    _emodel_data = .;
  } >MODEL_SLOT1

  /* 配置数据区 */
  .config_data :
  {
    . = ALIGN(4);
    *(.config_data)
  } >CONFIG

  .ARM.extab   : { *(.ARM.extab* .gnu.linkonce.armextab.*) } >APP_A
  .ARM : {
    __exidx_start = .;
    *(.ARM.exidx*)
    __exidx_end = .;
  } >APP_A

  .preinit_array     :
  {
    PROVIDE_HIDDEN (__preinit_array_start = .);
    KEEP (*(.preinit_array*))
    PROVIDE_HIDDEN (__preinit_array_end = .);
  } >APP_A

  .init_array :
  {
    PROVIDE_HIDDEN (__init_array_start = .);
    KEEP (*(SORT(.init_array.*)))
    KEEP (*(.init_array*))
    PROVIDE_HIDDEN (__init_array_end = .);
  } >APP_A

  .fini_array :
  {
    PROVIDE_HIDDEN (__fini_array_start = .);
    KEEP (*(SORT(.fini_array.*)))
    KEEP (*(.fini_array*))
    PROVIDE_HIDDEN (__fini_array_end = .);
  } >APP_A

  _sicp = LOADADDR(.cp.app.code);

  .cp.app.code :
  {
    . = ALIGN(4);
    _scp = .;
    KEEP(*(.cp.app.code))
    . = ALIGN(4);
    _ecp = .;
  } >RAM_CP_CODE AT> APP_A

  .bss.new_vector :
  {
    . = ALIGN(4);
    KEEP(*(.bss.new_vector))
    . = ALIGN(4);
  } >RAM_MP_VECTOR

  _siram = LOADADDR(.ram.function);

  .ram.function :
  {
    . = ALIGN(4);
    _sram = .;
    KEEP(*(.ram.function))
    . = ALIGN(4);
    _eram = .;
  } >RAM_MP_CODE AT> APP_A

  _sidata = LOADADDR(.data);

  .data :
  {
    . = ALIGN(4);
    _sdata = .;
    *(.data)
    *(.data*)
    . = ALIGN(4);
    _edata = .;
  } >RAM_MP_DATA AT> APP_A

  . = ALIGN(4);
  .bss ALIGN(4) :
  {
    _sbss = .;
    __bss_start__ = _sbss;
    *(.bss)
    *(.bss*)
    *(COMMON)
    . = ALIGN(4);
    _ebss = .;
    __bss_end__ = _ebss;
  } >RAM_MP_DATA

  .heap ALIGN(8) (COPY):
  {
    __end__ = .;
    PROVIDE(end = .);
    *(.heap*)
    __HeapLimit = .;
  } > RAM_MP_DATA

  .stack_dummy ALIGN(4):
  {
    *(.stack*)
  } > RAM_MP_DATA

  __StackTop = ORIGIN(RAM_MP_DATA) + LENGTH(RAM_MP_DATA);
  __StackLimit = __StackTop - SIZEOF(.stack_dummy);
  PROVIDE(__stack = __StackTop);

  __ram_end__ = ORIGIN(RAM_MP_DATA) + LENGTH(RAM_MP_DATA) -1 ;

  ASSERT(__StackLimit >= __HeapLimit, "region RAM overflowed with stack")

  /DISCARD/ :
  {
    libc.a ( * )
    libm.a ( * )
    libgcc.a ( * )
  }

  .ARM.attributes 0 : { *(.ARM.attributes) }
}
