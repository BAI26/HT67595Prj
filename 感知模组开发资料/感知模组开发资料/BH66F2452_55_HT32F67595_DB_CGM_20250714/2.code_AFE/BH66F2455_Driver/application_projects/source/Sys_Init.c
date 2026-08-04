#include <stdint.h>
#include "BH66F2455.h"
#include "..\..\driver\Oscillators.h"
#include "..\..\driver\Ram.h"
#include "..\..\driver\wdt.h"
#include "..\..\driver\IntPin.h"
#include "..\..\driver\Eeprom.h"
#include "..\..\driver\Afe.h"
#include "..\..\driver\Adc24.h"
//#include "..\..\driver\I2c.h"
//#include "..\..\driver\Spi.h"
#include "..\..\driver\Uart.h"
#include "..\..\driver\Gpio.h"

#include "Work_Mode_Polling.h"
#include "User_Protocol.h"

volatile uint8_t queueBuf[32];

void Gpio_PowerOnInit()
{
    _pa   = 0b00000000;
    _pac  = 0b00000000;
    _papu = 0b00000000;
    _pas0 = 0b00000000;
    _pas1 = 0b00000000;

    // PB0-unuse
    _pb   = 0b00000000;
    _pbc  = 0b00000000;
    _pbpu = 0b00000000;
    _pbs0 = 0b00000000;
   
//     PIN_PA3_AIN0();
//     PIN_PA1_AIN1();
}

//void SpiDisable()
//{
//    Spi_Disable();
//#if defined(PIN_SCK_PB0)
//    PIN_PB0_GPIO();
//#endif
//#if defined(PIN_SCK_PA4)
//    PIN_PA4_GPIO();
//#endif
//#if defined(PIN_SDI_PA7)
//    PIN_PA7_GPIO();
//#endif
//#if defined(PIN_SDI_PA2)
//    PIN_PA2_GPIO();
//#endif
//#if defined(PIN_SDO_PA6)
//    PIN_PA6_GPIO();
//#endif
//#if defined(PIN_SDO_PA0)
//    PIN_PA0_GPIO();
//#endif
//}
//
//void SpiEnable()
//{
//    spiStatus.rxBuf    = queueBuf;
//    spiStatus.rxBufLen = sizeof(queueBuf);
//    Spi_Cfg_t cfg;
//    cfg.mode      = SPI_SLAVE;
//    
//#if SPI_CS_ENABLED
//    cfg.csen      = SPI_CSEN_ENABLE;    
//#else
//	cfg.csen      = SPI_CSEN_DISABLE;	// CS pin removes energy, GPIO is used as wake-up sleep control pin
//#endif
//
//    cfg.sck_edge  = SPI_SCK_HIGH_RISING;
//    cfg.dataShift = SPI_LSB;
//    Spi_Cfg(&cfg);
//    Spi_Enable();
//    Spi_Isr_Enable();
//}

void Sys_PowerOnInit()
{
    Oscillators_Cfg_t oscCfg;
    oscCfg.haltMode = HALT_MODE_SLEEP;
    oscCfg.irc2     = IRC2_HIRC_4MHZ;
    Oscillators_Cfg(&oscCfg);
    
    Ram_Clear();
    
    Wdt_Enable(WDT_TIME_1024MS);
    Wdt_Disable();
    
    Gpio_PowerOnInit();

	AFE_IO_WAKEUP_SLEEP_INIT();

    // DRDY output high
    AFE_DRDY_OUTPUT();
    AFE_DRDY_HIGH();

    uartStatus.rxBuf    = queueBuf;            // Incoming cache Buf address
    uartStatus.rxBufLen = sizeof(queueBuf);    // Incoming cache Buf length
    Uart_Cfg_t uartCfg;
    uartCfg.flag.b.addr   = false;
    uartCfg.flag.b.wakeUp = false;
    Uart_Cfg(&uartCfg);
    Uart_Enable();
    Uart_Isr_Enable();

    _emi = 1;
}

void Enter_Halt()
{
    Wdt_Disable();

    if (isDeepSleep)    // isDeepSleep = = 1 AFE off; = = 0 AFE hold
    {
        // Close AFE
        Disable_AFE();
    }

#if USE_I2C
    workModeLast = 0;
#elif USE_SPI
    SpiDisable();
#endif

    AFE_DRDY_HIGH();

    cgmApiP->workMode     = MODE_NULL;
    cgmApiP->isEnterHalt  = false;
    cgmApiP->isDataUpdate = false;

    deviceApi.flag1.b.isCalVoltage		= false;
    deviceApi.flag1.b.isCalCurrent		= false;
    deviceApi.flag1.b.isReadWriteData	= false;
    deviceApi.flag1.b.isAfeMeasureData	= false;
    
    //Adc24_Disable();
	
	SetHaltMode(HALT_MODE_SLEEP);
	
    GCC_HALT();
}

void WakeUpInit()
{
    Wdt_Enable(WDT_TIME_1024MS);

#if USE_SPI
    SpiEnable();
#endif
}
