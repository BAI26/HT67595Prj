/*************************************************************************************************************
 * @file    app_cgm_cp.c
 * @version V1.0
 * @date    2021-02-06
 * @brief   
 *************************************************************************************************************
 * @attention
 *
 * Firmware Disclaimer Information
 *
 * 1. The customer hereby acknowledges and agrees that the program technical documentation, including the
 *    code, which is supplied by Holtek Semiconductor Inc., (hereinafter referred to as "HOLTEK") is the
 *    proprietary and confidential intellectual property of HOLTEK, and is protected by copyright law and
 *    other intellectual property laws.
 *
 * 2. The customer hereby acknowledges and agrees that the program technical documentation, including the
 *    code, is confidential information belonging to HOLTEK, and must not be disclosed to any third parties
 *    other than HOLTEK and the customer.
 *
 * 3. The program technical documentation, including the code, is provided "as is" and for customer reference
 *    only. After delivery by HOLTEK, the customer shall use the program technical documentation, including
 *    the code, at their own risk. HOLTEK disclaims any expressed, implied or statutory warranties, including
 *    the warranties of merchantability, satisfactory quality and fitness for a particular purpose.
 *
 * <h2><center>Copyright (C) Holtek Semiconductor Inc. All rights reserved</center></h2>
 ************************************************************************************************************/
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdbool.h>
#include <stdlib.h>

#include "RegHT32F675x5.h"
#include "err_def.h"
#include "app_cfg.h"
#include "boards.h"
#include "utility.h"
#include "hw_gpio.h"
#include "hw_pmu.h"
#include "hw_sys_ctrl.h"

#include "cmsis_os2.h"
#include "rtx_lib.h"

#include "app_timer.h"
#include "linkqueue.h"
#include "uart.h"
#include "ota.h"
#include "rand.h"
#include "calendar.h"
#include "rtc.h"
#include "mmu.h"
#include "ipc.h"

#include "ble_init.h"
#include "ble_peripheral.h"
#include "ble_event.h"
#include "ble_cb_event_def.h"
#include "ble_dis.h"
#include "ble_bas.h"
#include "tt_service.h"
#include "ota_service.h"
#include "ble_cts.h"
#include "cgm_service.h"
#include "cgms_racp.h"
#include "cgms_racp_process.h"
#include "cgms_db.h"
#include "cgms_utility.h"
#include "hci.h"

#include "gap_api.h"
#include "gatt_client_api.h"

#include "hw_crg.h"
#include "hw_dma.h"
#include "type_def.h"
#include "hw_efuse.h"

#include "hw_adc.h"
#include "hal_adc.h"
#include "patch_hal_adc.h"

#include "flash.h"

#include "afe_protocol.h"

#include "historical_data_process.h"

#if SPI_CMD_SUPPORT

#include "spi_master.h"

#define SPI_CMD_BEGIN           (0x5A)
#define SPI_EVT_BEGIN           (0xA5)
#define SPI_CMD_EVT_END         (0xFF)
#define SPI_CMD_MIN_SIZE        (1 + 1 + 1)     /* Begin + length + end */
#define SPI_EVT_MIN_SIZE        (1 + 1 + 1)     /* Begin + length + end */
#define SHARE_DATA_SIZE         (256)

typedef enum
{
    EN_SPI_CMD_READ_3_BYTES     = 0x01,
    EN_SPI_CMD_READ_256_BYTES   = 0x02,
}EN_SPI_CMD_T;

static uint8_t gpu8SharedData[SHARE_DATA_SIZE];

static inline bool is_valid_spi_cmd(uint8_t *pu8Data,uint16_t u16DataLen)
{
    if (NULL == pu8Data || SPI_CMD_MIN_SIZE > u16DataLen)
        return false;

    if (SPI_CMD_BEGIN != pu8Data[0] || SPI_CMD_EVT_END != pu8Data[u16DataLen -1])
        return false;
        
    return true;
}

static inline bool is_valid_spi_event_data(uint8_t *pu8Data,uint16_t u16DataLen)
{
    uint16_t u16Len = 0;
    
    if (NULL == pu8Data || SPI_EVT_MIN_SIZE > u16DataLen)
        return false;
    
    u16Len = SPI_EVT_MIN_SIZE + pu8Data[1] + 1;
    
    if (u16DataLen != u16Len)
        return false;

    if (SPI_EVT_BEGIN != pu8Data[0] || SPI_CMD_EVT_END != pu8Data[u16DataLen -1])
        return false;
        
    return true;
}

#endif

#define APP_MSG_NUM                 (5)

#define HALL_LATCH_ENABLE_LOCK()                                                                    \
    {                                                                                               \
        rom_hw_gpio_set_pin_output_level(GPIO_PORT_HALL_LATCH, GPIO_PIN_HALL_LATCH, GPIO_LEVEL_HI); \
    }
#define HALL_LATCH_DISABLE_UNLOCK()                                                                 \
    {                                                                                               \
        rom_hw_gpio_set_pin_output_level(GPIO_PORT_HALL_LATCH, GPIO_PIN_HALL_LATCH, GPIO_LEVEL_LO); \
    }

static int32_t currentSum;
static int8_t currentCnt;

typedef enum
{
    EN_MSG_MODULE_BLE  = 0x00,
    EN_MSG_MODULE_CGMS,
    EN_MSG_MODULE_OTA,
    
#if SPI_CMD_SUPPORT
    EN_MSG_MODULE_SPI,
#endif
    
}EN_MSG_MODULE_T;

typedef struct
{
    uint8_t  u8MsgModule;
    uint8_t  u8Event;
    uint32_t u32Length;
    void *p;
    uint16_t u16Reserve;
}stAppMsg_t;


/* Message Queue Variables */
static osMessageQueueId_t gosMsgId = NULL;
static uint32_t gu32TaskMsgQueueCb[osRtxMessageQueueCbSize / 4U];
static uint32_t gu32TaskMsgQueueMem[osRtxMessageQueueMemSize(10, sizeof(stAppMsg_t)) / 4U];

/* CGMS Variables */
static stCgmsHandle_t gstCgmsHandle;
static stAppTimerNode_t gstCgmsMeasTimer;
//static uint16_t gu16TimeOffsetMin;
static stCalendar_t gstCalendar;
static stCtsInit_t gstCtsInit;
static bool gbKeyDown = false;
static bool gbUpgrading = false;

/* Link Queue for OTA Data */
static stLinkQueue_t gpstOtaQueue = NULL;

static stAppTimerNode_t gstConnIntvTimer;
uint16_t gu16V_Conn_Interval;

static uint16_t gu16Temperature = 0;
static uint16_t gu16BatVol = 0;

static uint16_t battery_vol(void);
static void app_set_ntc_disable_source(void);
static void UpdateConnIntvTimer(void *pContext);

/**********************************************************************************************************************
 * @brief  Get NTC Temperature Voltage Level.
 *
 * @return NTC Voltage Level
 *********************************************************************************************************************/
// Resistance values corresponding to temperatures from -10°C to 85°C
// NTCG064BF473FTBX
// Note: Please update this lookup table according to the actual resistance values of the NTC thermistor you are using.
// The values are specific to the NTCG064BF473FTBX component and may not be accurate for other thermistors.
static const uint16_t ntc_resistance_lookup[96] = {
    2638, 2499, 2368, 2245, 2129, 2020, 1916, 1819, 1727, 1640,
    1558, 1480, 1407, 1338, 1272, 1210, 1151, 1096, 1043, 994,
    946, 902, 859, 819, 781, 745, 711, 678, 647, 618,
    590, 563, 538, 514, 492, 470, 449, 430, 411, 394,
    377, 361, 345, 331, 317, 304, 291, 279, 268, 257,
    246, 236, 227, 218, 209, 201, 193, 185, 178, 171,
    164, 158, 152, 146, 141, 135, 130, 125, 121, 116,
    112, 108, 104, 100, 97, 93, 90, 87, 84, 81,
    78, 75, 72, 70, 68, 65, 63, 61, 59, 57,
    55, 53, 51, 50, 48, 47};

#define ADC_SAMPLE_CHANNEL        (ADC_CH_3 | ADC_CH_7)
#define ADC_SAMPLE_CHANNEL_COUNT  (2)   // 2 channels
#define ADC_SAMPLE_NUMBER_FOR_DMA (100) // 100 sample count each channel
#define ADC_SAMPLE_BUF_SIZE       (ADC_SAMPLE_CHANNEL_COUNT * ADC_SAMPLE_NUMBER_FOR_DMA)

static uint32_t m_au32ADCSampleTmpBuf[HT32_ADC_SAMPLE_BUF_SIZE(ADC_SAMPLE_CHANNEL_COUNT, ADC_SAMPLE_NUMBER_FOR_DMA)];
static uint16_t m_au16ADCSampleDataBuf[ADC_SAMPLE_BUF_SIZE];
static stADCInitHandle_t m_stADCInitHandle;
static volatile bool isGetDMA_ADC_Data = false;

static void adc_example_dma_init(void)
{
    // 1. Turn DMA clock gating on.
    rom_hw_crg_enable_clk_gate(CRG_DMA_CLK_GATE);

    // 2. Enable DMA Interrupt.
    rom_hw_sys_ctrl_enable_peri_int(SYS_CTRL_CP, DMA_IRQ4);
    NVIC_ClearPendingIRQ(DMA_IRQ4);
    NVIC_SetPriority(DMA_IRQ4, 0x03);
    NVIC_EnableIRQ(DMA_IRQ4);

    // 3. ADC RX DMA configuration.
    stDmaInit_t stDmaInit = {
        .u32SrcAddr                   = (uint32_t) &(ADC1->ADC_RX_FIFO),
        .u32DstAddr                   = (uint32_t)m_au32ADCSampleTmpBuf,
        .u32TimeOut                   = 1000,
        .unPeriSel.stPeriSel.enPeriID = DMA_PERI_ADC1_RX,
        .unCfg.u32DMACfg =
            DMA_INIT_PERI_TO_MEM_DEFAULT_CFG(sizeof(m_au32ADCSampleTmpBuf) / UINT32_BYTES, DMA_DATA_4BYTES),
    };

    rom_hw_dma_init(DMA4, &stDmaInit);
    rom_hw_dma_set_interrupt_channel(DMA4, DMA_INT4);
    rom_hw_dma_enable_interrupt(DMA4, DMA_INT_4_4_DONE);
    rom_hw_dma_enable(DMA4);
}

__RAM_FUNC void DMA_IRQ4_Handler(void)
{
    uint8_t u8IntFlag;
    rom_hw_dma_get_interrupt_flag(DMA4, &u8IntFlag);
    rom_hw_dma_clear_interrupt_flag(DMA4, u8IntFlag);

    if (u8IntFlag & DMA_INT_4_4_DONE)
    {
        rom_hal_adc_read_dma_data(&m_stADCInitHandle, ADC_SAMPLE_CHANNEL_COUNT, ADC_SAMPLE_NUMBER_FOR_DMA,
                                   m_au32ADCSampleTmpBuf, m_au16ADCSampleDataBuf);
        isGetDMA_ADC_Data = true;  // Move this here to avoid unnecessary setting
    }

    // Print ADC data
    for (uint16_t i = 0; i < ADC_SAMPLE_BUF_SIZE; i++)
    {
        PRINTF("%d ", m_au16ADCSampleDataBuf[i]);
    }
    PRINTF("\r\n");
}

static uint16_t calculate_average(uint16_t* dataBuf, uint16_t sampleCount)
{
    uint32_t sum = 0;
    for (uint16_t i = 0; i < sampleCount; i++)
    {
        sum += dataBuf[i];
    }
    return (uint16_t)(sum / sampleCount);
}

static uint16_t NTC_res(uint16_t ref_res)
{
    rom_hw_pmu_set_ldo_dig_voltage(EN_LDO_DIG_1100mV);
    
    // Configure NTC pins
    rom_hw_gpio_set_pin_input_output(GPIO_PORT_NTC_GND, GPIO_PIN_NTC_GND, GPIO_MODE_OUTPUT);
    rom_hw_gpio_set_pin_output_level(GPIO_PORT_NTC_GND, GPIO_PIN_NTC_GND, GPIO_LEVEL_LO);
    
    rom_hw_gpio_set_pin_input_output(GPIO_PORT_NTC_ADC_AN, GPIO_PIN_NTC_ADC_AN, GPIO_MODE_IMPEDANCE);
    rom_hw_gpio_set_pin_pull_mode(GPIO_PORT_NTC_ADC_AN, GPIO_PIN_NTC_ADC_AN, GPIO_PULL_NONE);
    
    rom_hw_gpio_set_pin_input_output(GPIO_PORT_NTC_ADC_V, GPIO_PIN_NTC_ADC_V, GPIO_MODE_IMPEDANCE);
    rom_hw_gpio_set_pin_pull_mode(GPIO_PORT_NTC_ADC_V, GPIO_PIN_NTC_ADC_V, GPIO_PULL_NONE);

    uint16_t u16LowAdcDataNTC = 0;
    uint16_t u16HighAdcDataNTC= 0;

    // Initialize ADC
    m_stADCInitHandle.pstADCHandle = ADC1;
    m_stADCInitHandle.u8Resolution = ADC_RESOLUTION_12BIT;
    m_stADCInitHandle.enCh         = ADC_SAMPLE_CHANNEL;
    m_stADCInitHandle.enSampMode   = ADC_SAMP_BY_SW_TRIG;

    adc_example_dma_init();
    patch_hal_adc_init(&m_stADCInitHandle, HT32_ADC_SAMPLE_NUMBER_FOR_DMA(ADC_SAMPLE_NUMBER_FOR_DMA));
    
    // Trigger ADC readings
	patch_hal_adc_get_data(&m_stADCInitHandle, ADC_CH_3, &u16LowAdcDataNTC); // Trigger for NTC voltage
    patch_hal_adc_get_data(&m_stADCInitHandle, ADC_CH_7, &u16HighAdcDataNTC); // Trigger for reference voltage
    
    // Wait for DMA data
    for (uint8_t timeCount = 0; !isGetDMA_ADC_Data && timeCount < 20; timeCount++)
    {
        rom_delay_us(100);
    }

    rom_hw_pmu_set_ldo_dig_voltage(EN_LDO_DIG_1000mV);
    app_set_ntc_disable_source();

    if(!isGetDMA_ADC_Data || (u16LowAdcDataNTC == 0) || (u16HighAdcDataNTC == 0))
    {
        INFO("Error: ADC data not ready or invalid reference resistance.\n");
        return 0;
    }
	
    u16LowAdcDataNTC = calculate_average(m_au16ADCSampleDataBuf, ADC_SAMPLE_NUMBER_FOR_DMA);
    u16HighAdcDataNTC = calculate_average(m_au16ADCSampleDataBuf + ADC_SAMPLE_NUMBER_FOR_DMA, ADC_SAMPLE_NUMBER_FOR_DMA);
	
	// Print ADC values
    INFO("Low ADC Data (NTC): %u\n", u16LowAdcDataNTC);
    INFO("High ADC Data (Reference): %u\n", u16HighAdcDataNTC);
	
	uint16_t u16LowVolNTC = 0;
	uint16_t u16HighVolNTC = 0;
	patch_hal_adc_trans_voltage(&m_stADCInitHandle,ADC_CH_3,u16LowAdcDataNTC,&u16LowVolNTC);
	patch_hal_adc_trans_voltage(&m_stADCInitHandle,ADC_CH_7,u16HighAdcDataNTC,&u16HighVolNTC);
	
	// Print voltage values
    INFO("Low Voltage NTC: %u mV\n", u16LowVolNTC);
    INFO("High Voltage Reference: %u mV\n", u16HighVolNTC);
	
	ref_res = 470;
	
    // Calculate resistance
    double res = (double)(u16HighVolNTC - u16LowVolNTC) * ref_res / u16LowVolNTC;
    res = res < 0 ? 0 : res; // Ensure resistance is not negative

    INFO("Calculated Resistance: %.1f Ohms\r\n", res / 10); // Log calculated resistance
    return (uint16_t)res; // Return measured NTC resistance
}


/**********************************************************************************************************************
 * @brief  Get NTC Temperature, scaled by a factor of 10.
 *
 * @return Scaled NTC Temperature in tenths of degrees Celsius, or 0xFF on error.
 *********************************************************************************************************************/
static int16_t get_NTC_Temp(uint16_t res)
{
    // Define minimum and maximum resistance values
    const uint16_t minResistance = ntc_resistance_lookup[95];    // Minimum resistance value
    const uint16_t maxResistance = ntc_resistance_lookup[0];     // Maximum resistance value

    // Clamp resistance to ensure it stays within defined limits
    if (res < minResistance)
    {
        res = minResistance;    // If below minimum, set to minimum
        INFO("Resistance clamped to min: %d\r\n", res);
    }
    else if (res > maxResistance)
    {
        res = maxResistance;    // If above maximum, set to maximum
        INFO("Resistance clamped to max: %d\r\n", res);
    }

    uint8_t i;
    // Iterate through resistance lookup table to find corresponding temperature
    for (i = 0; i < 95; i++)    // Change loop condition to 95 for proper interpolation
    {
        // Check if the resistance is within the bounds of the lookup table
        if (ntc_resistance_lookup[i] >= (uint16_t)res && ntc_resistance_lookup[i + 1] < (uint16_t)res)
        {
            // Perform linear interpolation for a more accurate temperature value
            double temp1 = i - 10;          // Temperature at index i
            double temp2 = (i + 1) - 10;    // Temperature at index i+1

            double res1 = ntc_resistance_lookup[i];        // Resistance at index i
            double res2 = ntc_resistance_lookup[i + 1];    // Resistance at index i+1

            // Calculate the interpolated temperature
            double interpolatedTemperature = temp1 + (temp2 - temp1) * ((res1 - res) / (res1 - res2));
            INFO("NTCG064BF473FTBX Temperature: %.1f\r\n", interpolatedTemperature);    // Log the interpolated temperature

            return (int16_t)(interpolatedTemperature * 10);    // Return temperature scaled by 10
        }
    }

    INFO("Temperature returning error code.\r\n");    // Log error message
    return 0xFFFF;                                    // Return 0xFF to indicate an error or out of range
}

/**********************************************************************************************************************
 * @brief  Get Battery Level.
 *
 * @return Battery Level
 *********************************************************************************************************************/
static uint16_t battery_vol(void)
{
	rom_hw_pmu_set_ldo_dig_voltage(EN_LDO_DIG_1100mV);
	
    rom_hw_gpio_set_pin_pull_mode(GPIOB, GPIO_PIN_1, GPIO_PULL_NONE);

    // Initialize ADC handle
    stADCInitHandle_t m_stADCInitHandle;
    uint16_t u16Voltage = 0;

    // 1. Parameter Initialization
    m_stADCInitHandle.pstADCHandle = ADC0;                    // Set the ADC instance
    m_stADCInitHandle.u8Resolution = ADC_RESOLUTION_12BIT;    // Set ADC resolution
    m_stADCInitHandle.enCh         = ADC_CH_VDDR;             // Set the sample channel
    m_stADCInitHandle.enSampMode   = ADC_SAMP_BY_SW_TRIG;     // Set sampling mode to software trigger
    m_stADCInitHandle.enSampSrc    = 0;                       // Set the sample source (adjust as needed)
    m_stADCInitHandle.enPwmSampSrc = 0;                       // Set PWM sample source (adjust as needed)

    // 2. Initialize ADC and enable ADC sampling
    patch_hal_adc_init(&m_stADCInitHandle, HT32_ADC_SAMPLE_NUMBER_FOR_DMA(1024));

    // 3. Get VDDR voltage
    patch_hal_adc_get_voltage(&m_stADCInitHandle, ADC_CH_VDDR, &u16Voltage);
    INFO("VDDR Current voltage : %dmV\r\n", u16Voltage);
	
	rom_hw_pmu_set_ldo_dig_voltage(EN_LDO_DIG_1000mV);
	
    return u16Voltage;
}

static uint8_t battery_level(uint16_t u16Voltage)
{
    uint8_t u8BatteryLevel = 0;

    // Calculate battery level based on voltage
    if (u16Voltage > 3300)
    {
        u8BatteryLevel = 100;    // Full charge
    }
    else if (u16Voltage < 2700)
    {
        u8BatteryLevel = 0;    // Low battery
    }
    else
    {
        /*
         * This is the simplest way to linearly calculate battery capacity.
         * In practice, the mapping of voltage to capacity should be implemented
         * based on the characteristics of the specific battery used !!!
         */

        // Linear calculation for battery level percentage
        u8BatteryLevel = (u16Voltage - 2700) * 100 / (3200 - 2700);    // Map voltage to percentage
    }

    INFO("Current Battery Level : %u%%\r\n", u8BatteryLevel);    // Output current battery level
    return u8BatteryLevel;                                       // Return the battery level
}

static uint8_t get_battery_level(void)
{
    uint16_t u16Voltage    = 0;
    uint8_t u8BatteryLevel = 0;
    u16Voltage             = battery_vol();
    u8BatteryLevel         = battery_level(u16Voltage);
    return u8BatteryLevel;
}

/**********************************************************************************************************************
 * @brief  Set Wakeup Source.
 *
 * @return None.
 *********************************************************************************************************************/
static void app_set_wakeup_source(void)
{
    // 1. set gpio mode
    rom_hw_gpio_set_pin_input_output(GPIO_PORT_KEY, GPIO_PIN_KEY,
                                     GPIO_MODE_INPUT);

    // 2. set input pin pull mode
    rom_hw_gpio_set_pin_pull_mode(GPIO_PORT_KEY, GPIO_PIN_KEY, GPIO_PULL_UP);

    // 3. set input pin both edges interrupt
    rom_hw_sys_ctrl_enable_peri_int(SYS_CTRL_CP, GPIO_IRQ2);
    rom_hw_gpio_set_pin_interrupt_type(GPIO_PORT_KEY, GPIO_PIN_KEY, GPIO_INT_CH2,
                                       GPIO_INT_BOTH_EDGE);

    // 4. set input pin wake up source
    rom_hw_gpio_set_pin_wakeup_debounce(2, GPIO_WAKEUP_DEB_UNIT_30US);
    rom_hw_gpio_enable_pin_wakeup(GPIO_PORT_KEY, GPIO_PIN_KEY,
                                  GPIO_WAKEUP_LOW_LEVEL);
    rom_hw_pmu_set_gpio_wakeup_source(
        LUT_INDEX_KEY, LUT_TRIG_ID_FOR_KEY, GPIO_PIN_KEY,
        LUT_ACT_PD_SYS_ON | LUT_ACT_DCXO_HCLK_ON | LUT_ACT_CP_IRQ_EN);

    // 5. enable input interrupt
    rom_hw_gpio_clear_pin_interrupt_flag(GPIO_PORT_KEY, GPIO_PIN_KEY);
    rom_hw_gpio_enable_pin_interrupt(GPIO_PORT_KEY, GPIO_PIN_KEY);

    NVIC_ClearPendingIRQ(GPIO_IRQ2);
    NVIC_SetPriority(GPIO_IRQ2, 0x3);
    NVIC_EnableIRQ(GPIO_IRQ2);
}

/**********************************************************************************************************************
 * @brief  Set HALL LATCH Source to control the HALL latch functionality.
 *         This function sets the HALL latch pin as an output and enables the 
 *         HALL latch to lock the TMR (Timer) upon power-up, ensuring 
 *         stable operation of the device without being affected by the magnetic field.
 *
 * @return None.
 *********************************************************************************************************************/
static void app_set_hall_latch_source(void)
{
    rom_hw_gpio_set_pin_input_output(GPIO_PORT_HALL_LATCH, GPIO_PIN_HALL_LATCH, GPIO_MODE_OUTPUT);
    rom_hw_gpio_set_pin_drive_strength(GPIO_PORT_HALL_LATCH, GPIO_PIN_HALL_LATCH, GPIO_DRV_STRENGTH_LEVEL0);
    HALL_LATCH_ENABLE_LOCK(); // Enable HALL latch to lock TMR
}

/**********************************************************************************************************************
 * @brief  Set CS (Chip Select) pin to control AFE (Analog Front End) sleep and wake functions.
 *         This function sets the CS pin to put the AFE into sleep mode.
 *
 * @return None.
 *********************************************************************************************************************/
static void app_set_cs_control_afe_source(void)
{
    uint32_t u32Level;
    rom_hw_gpio_set_pin_input_output(GPIO_PORT_CS, GPIO_PIN_CS, GPIO_MODE_OUTPUT);
    rom_hw_gpio_set_pin_drive_strength(GPIO_PORT_CS, GPIO_PIN_CS, GPIO_DRV_STRENGTH_LEVEL0);
    DISABLE_AFE_BY_CS(); // Put AFE into sleep mode
}

/**********************************************************************************************************************
 * @brief  Set NTC (Negative Temperature Coefficient) Disable Source.
 *         This function configures the NTC GPIO pins to a high impedance state
 *         when not measuring the NTC, effectively disabling the NTC measurements.
 *
 * @return None.
 *********************************************************************************************************************/
static void app_set_ntc_disable_source(void)
{
    // Set NTC pins to high impedance state
    rom_hw_gpio_set_pin_input_output(GPIO_PORT_NTC_GND, GPIO_PIN_NTC_GND, GPIO_MODE_IMPEDANCE);
    rom_hw_gpio_set_pin_pull_mode(GPIO_PORT_NTC_GND, GPIO_PIN_NTC_GND, GPIO_PULL_NONE);
    rom_hw_gpio_set_pin_input_output(GPIO_PORT_NTC_ADC_AN, GPIO_PIN_NTC_ADC_AN, GPIO_MODE_IMPEDANCE);
    rom_hw_gpio_set_pin_pull_mode(GPIO_PORT_NTC_ADC_AN, GPIO_PIN_NTC_ADC_AN, GPIO_PULL_NONE);
	// rom_hw_gpio_set_pin_input_output(GPIO_PORT_NTC_ADC_V, GPIO_PIN_NTC_ADC_V, GPIO_MODE_IMPEDANCE);
    // rom_hw_gpio_set_pin_pull_mode(GPIO_PORT_NTC_ADC_V, GPIO_PIN_NTC_ADC_V, GPIO_PULL_NONE);
}

static EN_ERR_STA_T cgms_send_meas_by_float(float fGlucoseConcentration)
{
    EN_ERR_STA_T enRet = ERR_STA_OK;
    sfloat_t sfloatData;
    uint16_t u16Data;
    
    INFO("Glucose Concentration : %f mg/dL\n",fGlucoseConcentration);
    sfloatData = float_to_sfloat(fGlucoseConcentration);
    u16Data = sfloat_to_u16(sfloatData);
    stCgmsMeasRec_t stRecord;
    stRecord.u8Flags = 0;
    stRecord.u16GlucoseConcentration = u16Data;
    stRecord.u16TimeOffset = gstCgmsHandle.stStatus.u16TimeOffset;

    enRet = cgms_meas_send(&gstCgmsHandle,&stRecord);
    if(ERR_STA_OK != enRet)
    {
        INFO("CGMS Send Measurement Failed\r\n");
        return enRet;
    }
    
    if(0)// This condition is always false, so the CGMS database operations will not be executed.
    {
        enRet = cgms_db_record_add(&stRecord);
        if (ERR_STA_OK != enRet)
        {
            INFO("CGMS Database is Full\r\n");
            return enRet;
        }
        
        INFO("CGMS Record Add to Database Successful\r\n");
        INFO("CGMS Database Number of Stored Record : %u\r\n",cgms_db_get_record_num());
    }
    else
    {
        INFO("CGMS database is not used in this implementation.\r\n"); // Indicate that the CGMS database is not used
    }
    
    return ERR_STA_OK;
}

/**********************************************************************************************************************
 * @brief  Calendar transform to Session Start Time.
 * @param  pstCalendar: Calendar Handle.
 * @param  pstSst: Session Start Time Parameters.
 *
 * @return None.
 *********************************************************************************************************************/
static void calendar_to_sst(const pstCalendar_t pstCalendar,stCgmsSessionStartTime_t *pstSst)
{
    pstSst->u16Year = pstCalendar->u16Year;
    pstSst->u8Month = pstCalendar->u8Mon;
    pstSst->u8Day = pstCalendar->u8Day;
    pstSst->u8Hour = pstCalendar->u8Hour;
    pstSst->u8Minute = pstCalendar->u8Min;
    pstSst->u8Second = pstCalendar->u8Sec;
}

/**********************************************************************************************************************
 * @brief  Session Start Time transform to Calendar.
 * @param  pstSst: Session Start Time Parameters.
 * @param  pstCalendar: Calendar Handle.
 *
 * @return None.
 *********************************************************************************************************************/
static void sst_to_calendar(const stCgmsSessionStartTime_t *pstSst,pstCalendar_t pstCalendar)
{
    pstCalendar->u16Year  = pstSst->u16Year;
    pstCalendar->u8Mon    = pstSst->u8Month;
    pstCalendar->u8Day    = pstSst->u8Day;
    pstCalendar->u8Hour   = pstSst->u8Hour;
    pstCalendar->u8Min    = pstSst->u8Minute;
    pstCalendar->u8Sec    = pstSst->u8Second;
}

/**********************************************************************************************************************
 * @brief  OS Message Queue Init.
 *
 * @return status: @ref EN_ERR_STA_T.
 *********************************************************************************************************************/
static EN_ERR_STA_T msg_queue_init(void)
{
    const osMessageQueueAttr_t appMsgAueueAttr =
    {
        .name = "App CGMS Msg Queue",
        .attr_bits = 0,
        .cb_mem = gu32TaskMsgQueueCb,
        .cb_size = sizeof(gu32TaskMsgQueueCb),
        .mq_mem = gu32TaskMsgQueueMem,
        .mq_size = sizeof(gu32TaskMsgQueueMem),
    };

    gosMsgId = osMessageQueueNew(APP_MSG_NUM, sizeof(stAppMsg_t), &appMsgAueueAttr);
    if(NULL == gosMsgId)
    {
        PRINTF("create AppMsgId failed\n");
        return ERR_STA_ERROR;
    }
    return ERR_STA_OK;
}

/**********************************************************************************************************************
 * @brief  Send App Message.
 * @param  enMsgModlue: App Module.
 * @param  u8Event: Module Event.
 * @param  pu8Data: Event Data.
 * @param  u32Len: the length of Event Data.
 *
 * @return Result of Send Message.
 *********************************************************************************************************************/
static bool send_msg_app_task(EN_MSG_MODULE_T enMsgModlue, uint8_t u8Event, uint8_t *pu8Data, uint32_t u32Len)
{
    uint32_t u32Timeout = osWaitForever;
    stAppMsg_t stAppMsg;

    if (__get_IPSR())
    {
        // in interrupt
        u32Timeout = 0;
    }
    
    stAppMsg.u8MsgModule = enMsgModlue;
    stAppMsg.u8Event = u8Event;
    stAppMsg.p = pu8Data;
    stAppMsg.u32Length = u32Len;

    osStatus_t Status = osMessageQueuePut(gosMsgId, &stAppMsg, 0, u32Timeout);
    if (osOK == Status)
        return true;
    else
    {
        INFO("Send Message Failed: %d\n", Status);
        return false;
    }
}

/**********************************************************************************************************************
 * @brief  Send Message of Ble Event(Ble Task Context).
 * @param  u8Event: Module Event.
 * @param  pu8Data: Event Data.
 * @param  u16DataLen: the Length of Event Data.
 *
 * @return None.
 *********************************************************************************************************************/
static void ble_event_callback(uint8_t u8Event, uint8_t* pu8Data, uint16_t u16DataLen)
{
    if(!send_msg_app_task(EN_MSG_MODULE_BLE, u8Event, pu8Data, u16DataLen))
    {
        INFO("Send Ble Message Failed\r\n");
    }
}

/**********************************************************************************************************************
 * @brief  Send Message of CGM Service(LL Task Context).
 * @param  u8Event: Module Event.
 * @param  pu8Data: Event Data.
 * @param  u16DataLen: the Length of Event Data.
 *
 * @return None.
 *********************************************************************************************************************/
static void cgms_event_callback(uint8_t u8Event, uint8_t* pu8Data, uint16_t u16DataLen)
{
    if(!send_msg_app_task(EN_MSG_MODULE_CGMS, u8Event, pu8Data, u16DataLen))
    {
        INFO("Send CGM Message Failed\r\n");
    }
}

/**********************************************************************************************************************
 * @brief  Data Receive Callback of Uart(Interrupt Context).
 * @param  pu8Data: Receive Data.
 * @param  u16DataLen: the Length of Receive Data.
 *
 * @return None.
 *********************************************************************************************************************/
static void uart_recv_callback(uint8_t* pu8Data, uint16_t u16DataLen)
{
    INFO("UART Receive : ");
    for (int i = 0; i < u16DataLen; i++)
        PRINTF("%02X ", pu8Data[i]);
    PRINTF("\r\n");

    // ================== CGM AFE UART Data Parsing and Processing ==================
    SleepAfe(); // Put AFE into sleep mode

    int16_t currentAvg = 0;
    uint8_t rxCmd      = unpack_afe_protocol_buf(pu8Data, (uint8_t)u16DataLen); // Unpack the received AFE protocol data
    
    // Check if the received command is valid
    if (rxCmd == NULL_CMD)
    {
        INFO("Incomplete or invalid AFE protocol data received !!!");
        return;
    }
    else
    {
        INFO("UART unpack afe protocol\r\n");
        if (rxCmd == MEASURE_CMD && afeData.dataTypeTT == 0x00) // Receive AFE data, and it's a BLE periodic request, not a TT Service request
        {
            int16_t currentAfe = afeData.Current_WE1_Data;
            currentCnt++;
            currentSum += currentAfe;

            INFO("Time Offset Minutes : %u Min %u s\r\n", gstCgmsHandle.stStatus.u16TimeOffset, currentCnt * afeCollectionInterval);

            if (currentCnt >= (gstCgmsHandle.u8CommIntv * bleSendAfeDataInterval / afeCollectionInterval))
            {
                currentAvg = currentSum / currentCnt;
                INFO("currentAvg = currentSum / currentCnt = %u / %u = %u\r\n", currentSum, currentCnt, currentAvg);
                currentCnt = 0;

                // Update current average to buf, small end sequence
                pu8Data[8] = LO_UINT16(currentAvg);
                pu8Data[9] = HI_UINT16(currentAvg);
            }
            else
            {
                return;
            }
        }
        else if (rxCmd == RESTART_RECORD_CMD)
        {
            uint8_t buf[0x0D] = {0xAA, 0x0D, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

            // Store the value of restartNumBLE in little-endian format in buf from index 3 to 6
            buf[8]  = BREAK_UINT32(restartNumBLE, 0);    // Low byte
            buf[9]  = BREAK_UINT32(restartNumBLE, 1);    // Second low byte
            buf[10] = BREAK_UINT32(restartNumBLE, 2);    // Second high byte
            buf[11] = BREAK_UINT32(restartNumBLE, 3);    // High byte
            update_afe_protocol_buf(RESTART_RECORD_CMD, buf, sizeof(buf));

            // Send the data
            tt_service_send(gstCgmsHandle.u16ConnHandle, buf, sizeof(buf));
            INFO("tts To Set  \r\n");    // Output debug information
            return;
        }
        else if (rxCmd == MEASURE_CMD)
        {
#if !NTC_MEASURE_BY_BLE
            if ((afeData.dataTypeTT & 0x10) == 0x10)    // Bit 4 for temperature measurement
            {
                uint16_t res = afeData.Temperature_Data;
                afeData.Temperature_Data = get_NTC_Temp(res);    // Store computed temperature value
                update_afe_protocol_buf(MEASURE_CMD, pu8Data, sizeof(pu8Data));
            }
#endif
        }
        else
        {
            afeData.dataTypeTT = 0x00;
        }
    }

    if(gstCgmsHandle.u16ConnHandle != 0)
    {
        // Notify
        tt_service_send(gstCgmsHandle.u16ConnHandle, pu8Data, u16DataLen);
        INFO("tt_service_send\r\n");
    }
    else
    {
        static uint32_t saveIntvCount = 0;

        saveIntvCount ++;
        
        // save historyData
        EN_ERR_STA_T enRet = ERR_STA_OK;

        bool isDataFull = false;

        uint32_t u32Sec;
        calendar_period_get_time(&gstCalendar);
        calendar_utc_to_second(&gstCalendar, &u32Sec);

        historyDataRecord record = {0};
        record.timestamp         = u32Sec;
        record.temperature       = gu16Temperature;
        record.batteryVoltage_mV = gu16BatVol;
        record.currentWE1        = currentAvg;

        EN_ERR_STA_T result = ERR_STA_OK;

        // Synchronize data to flash and mark the record as full
        result = historical_data_write(&isDataFull, record);

        // Output write result
        if (result == ERR_STA_OK)
        {
            printf("Successfully wrote record #\n");
            printf("Timestamp: %u\n", record.timestamp);                       // Log the timestamp
            printf("Temperature: %u\n", record.temperature);                   // Log the temperature
            printf("Battery Voltage (mV): %u\n", record.batteryVoltage_mV);    // Log the battery voltage
            printf("Current WE1: %u\n", record.currentWE1);                    // Log the current measurement
        }
        else
        {
            printf("Failed to write record #%d. Error code: %d\n", record.writeNum, result);
        }
        return;
    }

    // Current parsing to standard protocol
    int32_t current    = currentAvg;
    currentSum         = 0;
    float currentFloat = current / 100.0f;
    char currentString[20];    // assume the maximum length is 20
    int len = snprintf(currentString, 20, "%.2f", currentFloat);
    if (len >= 0 && len < 20)
    {
        // String conversion succeeded
        INFO("UART Receive : %s\r\n", currentString);
    }
    else
    {
        // Conversion failed
        INFO("UART Receive : Error converting float to string, %d >=0 && <= 20\r\n", len);
    }

//  EN_ERR_STA_T enRet = ERR_STA_OK;

    if (true == gstCgmsHandle.isRacpRunning)
    {
        INFO("Racp is Running,Please Try Again Later\r\n");
        return;
    }
    
    if (false == gstCgmsHandle.isSessionStart)
    {
        INFO("Please Start Session and Try Again\r\n");
        return;
    }
    
#if SPI_CMD_SUPPORT

    /* Note : SPI command don't end with '\r' or '\n' */
    if (true == is_valid_spi_cmd(pu8Data,u16DataLen))
    {
        if (pu8Data[1] == 0x02)
        {
            if (false == send_msg_app_task(EN_MSG_MODULE_SPI,EN_SPI_CMD_READ_3_BYTES,NULL,0))
                INFO("Send App Message Failed\n");
            return;
        }
        else if(pu8Data[1] == 0xFF)
        {
            if (false == send_msg_app_task(EN_MSG_MODULE_SPI,EN_SPI_CMD_READ_256_BYTES,NULL,0))
                INFO("Send App Message Failed\n");
            return;
        }
    }

#endif
    
    cgms_send_meas_by_float(currentFloat);
}

/**********************************************************************************************************************
 * @brief  Data Receive Callback of OTA Service(LL Task Context).
 * @param  pu8Data: Receive Data.
 * @param  u16DataLen: the Length of Receive Data.
 *
 * @return None.
 *********************************************************************************************************************/
static void ota_recv_callback(uint8_t* pu8Data, uint16_t u16DataLen)
{
    uint8_t u8Ret = link_queue_put(gpstOtaQueue,pu8Data,u16DataLen);
    if (0 != u8Ret)
    {
        INFO("Link Queue Put Failed\n");
        return;
    }
    if(!send_msg_app_task(EN_MSG_MODULE_OTA, 0, NULL, 0))
    {
        INFO("Send OTA Message Failed\r\n");
    }
}

/**********************************************************************************************************************
 * @brief  Data Receive Callback of Transparent Transmission Service(LL Task Context).
 * @param  pu8Data: Receive Data.
 * @param  u16DataLen: the Length of Receive Data.
 *
 * @return None.
 *********************************************************************************************************************/
static void tt_recv_callback(uint8_t *pu8Data,uint16_t u16DataLen)
{
    INFO("TT Receive : ");
    for (int i=0;i<u16DataLen;i++)
        PRINTF("0x%02X ",pu8Data[i]);
    PRINTF("\r\n");

    // HT32F675x5 Demo Board Protocol
    // parsing protocol
    uint8_t rxCmd = unpack_afe_protocol_buf(pu8Data, (uint8_t)u16DataLen);

    if (rxCmd == NULL_CMD)
    {
        INFO("Incomplete or invalid tts data received :%02X !!!\r\n", rxCmd);
    }
    else
    {
        // Transparent to AFE command
        if (rxCmd == CALIBRATE_VOLTAGE_CMD || rxCmd == CALIBRATE_CURRENT_CMD || rxCmd == MEASURE_CMD || rxCmd == STORE_DATA_CMD || rxCmd == RESTART_RECORD_CMD)
        {
            bool isMeasureUsingBle = 0;
            if (rxCmd == MEASURE_CMD)
            {
                if ((afeData.dataTypeTT & 0x01) == 0x01)    // Check if bit 0 is set for battery voltage data
                {
                    isMeasureUsingBle = 1;    // Indicate that voltage measurement is in progress

                    uint16_t u16Voltage = battery_vol();    // Get the battery voltage
                    uint8_t buf[0x0D]   = {0x00};           // Initialize buffer

                    // Store the battery voltage in deciVolts
                    afeData.Valid_Data_Type      = 0x01;
                    afeData.Battery_Voltage_Data = u16Voltage / 10;

                    update_afe_protocol_buf(MEASURE_CMD, buf, sizeof(buf));            // Update protocol buffer
                    tt_service_send(gstCgmsHandle.u16ConnHandle, buf, sizeof(buf));    // Send the data over BLE
                    INFO("tts To Set  \r\n");                                          // Output debug information
                }
#if NTC_MEASURE_BY_BLE
                if ((afeData.dataTypeTT & 0x02) == 0x02 || (afeData.dataTypeTT & 0x10) == 0x10)    // Check if bit 1 or bit 4 indicates temperature measurement
                {
                    isMeasureUsingBle = 1;    // Indicate that temperature measurement is in progress
					
                    uint16_t res      = NTC_res(afeData.Voltage_Divider_Resistor);    // Measure NTC resistance
                    int16_t temp      = get_NTC_Temp(res);                            // Get temperature based on NTC resistance
                    uint8_t buf[0x0D] = {0x00};                                       // Initialize buffer

                    if ((afeData.dataTypeTT & 0x02) == 0x02)    // Bit 1 for temperature resistance measurement
                    {
                        afeData.Valid_Data_Type  = 0x02;
                        afeData.Temperature_Data = (int16_t)res;    // Store raw NTC resistance value
                    }

                    if ((afeData.dataTypeTT & 0x10) == 0x10)    // Bit 4 for temperature measurement
                    {
                        afeData.Valid_Data_Type  = 0x10;
                        afeData.Temperature_Data = (int16_t)temp;    // Store computed temperature value
                    }

                    update_afe_protocol_buf(MEASURE_CMD, buf, sizeof(buf));            // Update protocol buffer
                    tt_service_send(gstCgmsHandle.u16ConnHandle, buf, sizeof(buf));    // Send the data over BLE
                    INFO("tts To Set  \r\n");                                          // Output debug information
                }
#else
                if ((afeData.dataTypeTT & 0x02) == 0x02 || (afeData.dataTypeTT & 0x10) == 0x10)    // Check if bit 1 or bit 4 indicates temperature measurement
                {
                    afeData.Valid_Data_Type = 0x02;
                    pu8Data[3] = 0x02;
                    pu8Data[12] = GetCheckLRC(pu8Data, 0, pu8Data[1] - 2);
                }
#endif
            }
            if (!isMeasureUsingBle)
            {
                WakeUpAfe();
                INFO("tts To AFE by UART \r\n");
                uart_send_bytes(pu8Data, u16DataLen);
            }

            if (rxCmd == RESTART_RECORD_CMD)
            {
                if ((pu8Data[3] & 0x02) == 0x02)    // clear BLE restartNumBLE
                {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
                    restartNumBLE = 0;

                    // Update reboot count
                    if (ERR_STA_OK != mmu_write(EN_MMU_BLE_POWER_ON_COUNT, 0, (uint8_t *)&restartNumBLE, sizeof(restartNumBLE), true))
                    {
                        INFO("restart_num Write Data Failed\n");
                    }
                }
            }
        }
        // Set the BLE command
        else
        {
            // add code to handle other instructions here
            // Add logic as needed
            if (rxCmd == HALL_LATCH_CONTROL_CMD)
            {
                uint8_t buf[0x0D] = {0};
                if (GetHallLatchControlStatus() == 0x01)    // Lock
                {
                    HALL_LATCH_ENABLE_LOCK();    // High level lock
                    update_afe_protocol_buf(HALL_LATCH_CONTROL_CMD, buf, sizeof(buf));
                    tt_service_send(gstCgmsHandle.u16ConnHandle, buf, sizeof(buf));
                    INFO("tts To Set Hall Lock,latch High level \r\n");
                }
                if (GetHallLatchControlStatus() == 0x02)    // Unlock
                {
                    HALL_LATCH_DISABLE_UNLOCK();    // Low level unlock
                    update_afe_protocol_buf(HALL_LATCH_CONTROL_CMD, buf, sizeof(buf));
                    tt_service_send(gstCgmsHandle.u16ConnHandle, buf, sizeof(buf));
                    INFO("tts To Set Hall UnLock,latch Low level \r\n");
                }
            }
            if(rxCmd == PARAMETER_SETTING_CMD)
            {
                //BLE
                if ((parameterAddress & 0xF0) == 0x10)
                {
                    INFO("Processing BLE parameter: 0x%02X\n", parameterAddress);
                    switch (parameterAddress)
                    {
                        case BLE_VERSION:
                            if (readWrite == 0x00)    // Read operation
                            {
                                parameterOperationStatus = OPERATION_SUCCESS;
                                parameterValue           = APP_VERSION;
                                INFO("Read operation successful. Parameter value Read to APP_VERSION: %04X\n", parameterValue);
                            }
                            else
                            {
                                parameterOperationStatus = WRITE_FAILED;
                                parameterValue           = 0x0000;
                                INFO("Write operation failed. Parameter value reset to: %d\n", parameterValue);
                            }
                            break;

                        case BLE_SAMPLING_INTERVAL:
                            if (readWrite == 0x00)    // Read operation
                            {
                                if (ERR_STA_OK == mmu_read(EN_MMU_BLE_SAMPLING_INTERVAL, 0, (uint8_t *)&parameterValue, sizeof(parameterValue)))
                                {
                                    parameterOperationStatus = OPERATION_SUCCESS;
                                    INFO("Successfully read BLE sampling interval: %d\n", parameterValue);
                                }
                                else
                                {
                                    parameterValue           = 0x0000;
                                    parameterOperationStatus = READ_FAILED;
                                    INFO("\nFailed to read BLE sampling interval\n");
                                }
                            }
                            else    // Write operation
                            {
                                if (ERR_STA_OK == mmu_write(EN_MMU_BLE_SAMPLING_INTERVAL, 0, (uint8_t *)&parameterValue, sizeof(parameterValue), true))
                                {
                                    // Update the sampling interval
                                    afeCollectionInterval = parameterValue;
                                    INFO("Sampling interval updated to: %d\n", afeCollectionInterval);
                                    parameterOperationStatus = OPERATION_SUCCESS;
                                    INFO("MMU Write Successful: Parameter value %d written to address %d successfully.\n", parameterValue, EN_MMU_BLE_SAMPLING_INTERVAL);
                                }
                                else
                                {
                                    parameterValue           = 0x0000;
                                    parameterOperationStatus = WRITE_FAILED;
                                    INFO("MMU Write Failed: Unable to write to address %d. Parameter value reset to %d.\n", EN_MMU_BLE_SAMPLING_INTERVAL, parameterValue);
                                }
                            }
                            break;

                        case BLE_SENDING_INTERVAL:
                            if (readWrite == 0x00)    // Read operation
                            {
                                if (ERR_STA_OK == mmu_read(EN_MMU_BLE_SENDING_INTERVAL, 0, (uint8_t *)&parameterValue, sizeof(parameterValue)))
                                {
                                    parameterOperationStatus = OPERATION_SUCCESS;
                                    INFO("Successfully read BLE sending interval: %d\n", parameterValue);
                                }
                                else
                                {
                                    parameterValue           = 0x0000;
                                    parameterOperationStatus = READ_FAILED;
                                    INFO("\nFailed to read BLE sending interval\n");
                                }
                            }
                            else    // Write operation
                            {
                                // Check if the sending interval is a multiple of the sampling interval
                                if(parameterValue % afeCollectionInterval == 0)
                                {
                                    if (ERR_STA_OK == mmu_write(EN_MMU_BLE_SENDING_INTERVAL, 0, (uint8_t *)&parameterValue, sizeof(parameterValue), true))
                                    {
                                        // Update the sending interval
                                        bleSendAfeDataInterval = parameterValue;
                                        INFO("Sending interval updated to: %d\n", bleSendAfeDataInterval);
                                        parameterOperationStatus = OPERATION_SUCCESS;
                                        INFO("MMU Write Successful: Parameter value %d written to address %d successfully.\n", parameterValue, EN_MMU_BLE_SENDING_INTERVAL);
                                    }
                                    else
                                    {
                                        parameterValue           = 0x0000;
                                        parameterOperationStatus = WRITE_FAILED;
                                        INFO("MMU Write Failed: Unable to write to address %d. Parameter value reset to %d.\n", EN_MMU_BLE_SENDING_INTERVAL, parameterValue);
                                    }
                                }
                                else
                                {
                                    parameterOperationStatus = INVALID_PARAMETER_VALUE;
                                    INFO("Invalid parameter value: %d. It must be a multiple of the AFE collection interval: %d.\n",parameterValue, afeCollectionInterval);
                                }
                            }
                            break;

                        default:
                            parameterOperationStatus = INVALID_PARAMETER_ADDRESS;
                            INFO("Unexpected parameter address: 0x%02X\n", parameterAddress);
                            break;
                    }
                    uint8_t buf[0x0D] = {0};
                    update_afe_protocol_buf(PARAMETER_SETTING_CMD, buf, sizeof(buf));
                    tt_service_send(gstCgmsHandle.u16ConnHandle, buf, sizeof(buf));
                    INFO("Protocol buffer updated and sent: 0x%02X\n", parameterAddress);    // Log successful operation
                }
                else //AFE
                {
                    INFO("Processing AFE parameter: 0x%02X\n", parameterAddress);
                    WakeUpAfe();
                    INFO("tts To AFE by UART \r\n");
                    uart_send_bytes(pu8Data, u16DataLen);
                }
            }
            if(rxCmd == READ_HISTORICAL_DATA_CMD)
            {
                if(historyOperationType == READ_ALL_UNSYNCED_DATA)
                {
                    historical_data_update_connect_param(500);
                }
            }
        }
		return;
    }
    
    u16DataLen -= 1;
    
    switch(pu8Data[0])
    {
        case TT_CMD_WRITE_DEV_NAME:
        {
            uint8_t u8Idx;
            uint8_t u8DevName[TT_CMD_WRITE_DEV_NAME_PARAM_MAX_LEN+1] = {0};

            if (TT_CMD_WRITE_DEV_NAME_PARAM_MAX_LEN < u16DataLen || 1 > u16DataLen)
                return;

            for(u8Idx = 1;u8Idx < u16DataLen;u8Idx++)
            {
                if (' ' > pu8Data[u8Idx])
                    break;
            }
            
            if (1 == u8Idx)
            {
                INFO("Invaild Dev Name\n");
                return;
            }
            INFO("u8Idx : %u\r\n",u8Idx);
            memcpy(u8DevName,&pu8Data[1],u8Idx);
            
            if (ERR_STA_OK != mmu_write(EN_MMU_BLE_ADV_DEV_NAME,0,u8DevName,TT_CMD_WRITE_DEV_NAME_PARAM_MAX_LEN,true))   
            {
                INFO("MMU Write Failed\n");
                return;
            }

            INFO("MMU Write Dev Name : %s\n",(const char *)u8DevName);
            
            ble_set_dev_name((const char *)u8DevName);

            break;
        }
        case TT_CMD_READ_DEV_NAME:
        {
            EN_ERR_STA_T enRet;
            uint8_t u8DevName[TT_CMD_WRITE_DEV_NAME_PARAM_MAX_LEN + 1] = {0};

            if (0 < u16DataLen)
                return;

            if (ERR_STA_OK != mmu_read(EN_MMU_BLE_ADV_DEV_NAME,0,u8DevName,TT_CMD_WRITE_DEV_NAME_PARAM_MAX_LEN))
            {
                INFO("Ble Dev Name Not Found in flash\n");
                return;
            }
            
            enRet = tt_service_send(get_ble_conn_handle(),u8DevName,strlen((const char *)u8DevName));
            if (ERR_STA_OK != enRet)
            {
                INFO("TT Service Send Failed\n");
                return;
            }

            INFO("MMU Read Dev Name : %s\n",(const char *)u8DevName);

            break;
        }
        case TT_CMD_WRITE_ADV_INTERVAL:
        {
            uint16_t u16AdvInterval;

            if (TT_CMD_WRITE_ADV_INTERVAL_PARAM_LEN != u16DataLen)
                return;

            u16AdvInterval = BUILD_UINT16(pu8Data[1],pu8Data[2]);
            if (0x20 > u16AdvInterval || 0x4000 < u16AdvInterval)
            {
                INFO("Invaild Adv Interval\n");
                return;
            }

            if (ERR_STA_OK != mmu_write(EN_MMU_BLE_ADV_INTERVAL,0,&pu8Data[1],u16DataLen,true))   
            {
                INFO("MMU Write Failed\n");
                return;
            }

            INFO("MMU Write Adv Interval : %.3f ms\n",u16AdvInterval * 0.625);

            ble_set_adv_interval(u16AdvInterval);

            break;
        }
        case TT_CMD_READ_ADV_INTERVAL:
        {
            EN_ERR_STA_T enRet;
            uint16_t u16AdvInterval;
            if (0 < u16DataLen)
                return;

            if (ERR_STA_OK != mmu_read(EN_MMU_BLE_ADV_INTERVAL,0,(uint8_t *)&u16AdvInterval,2))
            {
                INFO("Ble Adv Interval Not Found in flash\n");
                return;
            }

            enRet = tt_service_send(get_ble_conn_handle(),(uint8_t *)&u16AdvInterval,TT_CMD_WRITE_ADV_INTERVAL_PARAM_LEN);
            if (ERR_STA_OK != enRet)
            {
                INFO("TT Service Send Failed\n");
                return;
            }

            INFO("MMU Read Adv Interval : %.3f ms\n",u16AdvInterval * 0.625);

            break;
        }
		
		case TT_CMD_WRITE_CONN_INTERVAL: //0x05
			// Command example
			// 05                // Command length
			// 1E                // Min Interval: 30ms (0x001E)
			// 00                // Min Interval high byte
			// 32                // Max Interval: 50ms (0x0032)
			// 00                // Max Interval high byte
			// 00                // Connection Latency: 0 (0x0000)
			// 00                // Connection Latency high byte
			// 70                // Supervision Timeout: 6000ms (0x1770)
			// 17                // Supervision Timeout high byte
			// C8				 // MTU Size：200
			// 00 			 	 //	MTU Size high byte	
		
			// Extract parameters from the pu8Data array
			{
				uint16_t u16ConnIntervalMin = (pu8Data[1] | (pu8Data[2] << 8)); // Minimum connection interval
				uint16_t u16ConnIntervalMax = (pu8Data[3] | (pu8Data[4] << 8)); // Maximum connection interval
				uint16_t u16ConnLatency = (pu8Data[5] | (pu8Data[6] << 8));      // Connection latency (number of skipped events)
				uint16_t u16SupervisionTimeout = (pu8Data[7] | (pu8Data[8] << 8)); // Supervision timeout
				uint16_t u16MtuSize = (pu8Data[9] | (pu8Data[10] << 8)); // MTU size
				uint16_t u16ConnHandle = get_ble_conn_handle();
				if(u16ConnHandle != 0xFFFF)
				{
					// update connect interval .
					stGapConnectionUpdate_t stConnPara = {
						.u16ConnIntervalMin1250us  = (uint16_t)((uint32_t)u16ConnIntervalMin * 1000 / UNIT_1_25_MS),
						.u16ConnIntervalMax1250us  = (uint16_t)((uint32_t)u16ConnIntervalMax * 1000 / UNIT_1_25_MS),
						.u16ConnLatency             = u16ConnLatency,
						.u16SupervisionTimeout10ms  = (uint16_t)((uint32_t)u16SupervisionTimeout * 1000 / UNIT_10_MS),
					};
					rom_gap_api_connection_parameters_update(u16ConnHandle, &stConnPara);
					rom_gatt_client_api_mtu_exchange(u16ConnHandle, u16MtuSize);
					
					PRINTF("updataConnIntv Timer running\n");
					PRINTF("Connection parameters updated: Min Interval=%d (0x%04X), Max Interval=%d (0x%04X), Latency=%d (0x%04X), Timeout=%d (0x%04X)\n",
						   u16ConnIntervalMin, u16ConnIntervalMin, 
						   u16ConnIntervalMax, u16ConnIntervalMax, 
						   u16ConnLatency, u16ConnLatency, 
						   u16SupervisionTimeout, u16SupervisionTimeout);
				}
				else
				{
					PRINTF("Invalid connection handle: 0xFFFF\n");
				}
			}
        default:break;
    }
}

/**********************************************************************************************************************
 * @brief  OTA Event Handle.
 * @param  enEvt: OTA Event.
 *
 * @return None.
 *********************************************************************************************************************/
static void ota_event_handler(EN_OTA_EVT_T enEvt)
{
    switch(enEvt)
    {
        case EN_OTA_EVT_GET_FIRMWARE_INFO:
            gbUpgrading = true;
            INFO("[EN_OTA_EVT_GET_FIRMWARE_INFO]\n");
            break;
        case EN_OTA_EVT_HANDSHAKE:
            INFO("[EN_OTA_EVT_HANDSHAKE]\n");
            break;
        case EN_OTA_EVT_UPGRADE_REQUEST:
            INFO("[EN_OTA_EVT_UPGRADE_REQUEST]\n");
            break;
        case EN_OTA_EVT_UPGRADE_CODE:
            //INFO("[EN_OTA_EVT_UPGRADE_CODE]\n");
            break;
        case EN_OTA_EVT_UPGRADE_FINISH:
            INFO("[EN_OTA_EVT_UPGRADE_FINISH]\n");
            break;
        case EN_OTA_EVT_CHIP_RESTART:
            INFO("[EN_OTA_EVT_CHIP_RESTART]\n");
            ota_rsp_restart(true,500);
            gbUpgrading = false;
            break;
        default:
            break;
    }
}

/**********************************************************************************************************************
 * @brief  App Timer Timeout Callback(Interrupt Context).
 * @param  pContext: Private Data.
 *
 * @return None.
 *********************************************************************************************************************/
static void cgms_meas_timer_timeout(void *pContext)
{
    app_timer_stop(&gstCgmsMeasTimer);
    app_timer_start(&gstCgmsMeasTimer, 1 * afeCollectionInterval * 1000, NULL);

    static uint16_t timeCount = 0;
    timeCount ++;
    if(timeCount * afeCollectionInterval >= 60)
    {
        gstCgmsHandle.stStatus.u16TimeOffset += (timeCount * afeCollectionInterval / 60);
        timeCount = 0;

        if (1)
        {
#if NTC_MEASURE_BY_BLE
            uint16_t res    = NTC_res(afeData.Voltage_Divider_Resistor);    // Measure NTC resistance
            gu16Temperature = get_NTC_Temp(res);                            // Get temperature based on NTC resistance
            PRINTF("Calculated Temperature: %u\n", gu16Temperature);
#endif
        }
        if (gstCgmsHandle.stStatus.u16TimeOffset % 10 == 0)
        {
            gu16BatVol = battery_vol();    // Get the battery voltage
            PRINTF("Battery Voltage: %u\n", gu16BatVol);
        }
    }
    uint16_t remainingSeconds = (timeCount * afeCollectionInterval) % 60;
    INFO("Time Offset Minutes : %u Min %u s\r\n", gstCgmsHandle.stStatus.u16TimeOffset, remainingSeconds);

    // AFE start measurement
    {
        PRINTF("\r\n");
        INFO("TimeOut Start Measure AFE WE1\r\n");
        WakeUpAfe();
        afe_start_measure_we1();
    }

    /**********************************************************************************************************************
     * @brief  This block of code is intended for sending CGMS measurement data and recording it in the database.
     *
     * 1. Increments `u16TimeOffset` to track time offset.
     * 2. If `u16TimeOffset` is divisible by `u8CommIntv`, it performs the following:
     *    - Creates a new CGMS measurement record with random glucose concentration.
     *    - Sends the measurement record using `cgms_meas_send`.
     *    - Adds the record to the database using `cgms_db_record_add`.
     *    - Logs the measurement details.
     *
     * Currently, this code block is disabled (using `if (0)`), so it will not execute.
     *********************************************************************************************************************/
    if(0)
    {
        EN_ERR_STA_T enRet = ERR_STA_OK;

        gstCgmsHandle.stStatus.u16TimeOffset++;
    
        INFO("Time Offset Minutes : %u\r\n",gstCgmsHandle.stStatus.u16TimeOffset);
    
        if (0 != (gstCgmsHandle.stStatus.u16TimeOffset % gstCgmsHandle.u8CommIntv))
            return;
    
        stCgmsMeasRec_t stRecord;
        stRecord.u8Flags = 0;
        stRecord.u16GlucoseConcentration = (uint16_t )rom_get_rand();
        stRecord.u16TimeOffset = gstCgmsHandle.stStatus.u16TimeOffset;
        stRecord.stStatus.u8CalTemp = 0;
        stRecord.stStatus.u8Status = 0;
        stRecord.stStatus.u8Warning = 0;
        enRet = cgms_meas_send(&gstCgmsHandle,&stRecord);
        if(ERR_STA_OK != enRet)
        {
            INFO("CGMS Send Measurement Failed\r\n");
            return;
        }
    
        enRet = cgms_db_record_add(&stRecord);
        if (ERR_STA_OK != enRet)
        {
            INFO("CGMS Database is Full\r\n");
            return;
        }
    
        INFO("Glucose Concentration : %f mg/dL\n",sfloat_to_float(u16_to_sfloat(stRecord.u16GlucoseConcentration)));
        INFO("CGMS Record Add to Database Successful\r\n");
        INFO("CGMS Database Number of Stored Record : %u\r\n",cgms_db_get_record_num());
    }
}

/**********************************************************************************************************************
 * @brief  Ble Event Handle Process(App Task).
 * @param  pstAppMsg: Module Message.
 *
 * @return None.
 *********************************************************************************************************************/
static void ble_event_process(const stAppMsg_t *pstAppMsg)
{
    uint16_t u16ConnHandle;
    switch(pstAppMsg->u8Event)
    {
        case MSG_BLE_CONNECTED_IND:
        {   
            u16ConnHandle = get_ble_conn_handle();
            gstCgmsHandle.u16ConnHandle = u16ConnHandle;
            app_timer_start(&gstConnIntvTimer,3000,NULL);
            break;
        }
        case MSG_BLE_DISCONNECTED_IND:
        {   
            gstCgmsHandle.u16ConnHandle = 0;
            gu16V_Conn_Interval = 0;
            start_pair_adv();
            break;
        }
        case MSG_BLE_CONNECTION_UPDATE_COMPLETE_IND:
        {
            stHciEventParamLEConnectionUpdateComplete_t *pstEvt = (stHciEventParamLEConnectionUpdateComplete_t *)pstAppMsg->p;
            
            gu16V_Conn_Interval = pstEvt->Conn_Interval;

            if(gu16V_Conn_Interval == MSEC_TO_UNITS(BLE_HISTORICAL_DATA_MAXCONNINTERVAL, UNIT_1_25_MS))
            {
                bool is_update_historical_data = get_is_changing_historical_data_connect_param();
                if(is_update_historical_data)
                {
                    set_is_changing_historical_data_connect_param(false);
                    app_timer_start_historical_data_upload();
                }
            }
        }
        default:break;
    }
}

/**********************************************************************************************************************
 * @brief  CGMS SOCP Event Handle Process(App Task).
 * @param  u8Event: Module Event.
 * @param  pstHandle: CGMS Global Handle.
 *
 * @return None.
 *********************************************************************************************************************/
static void cgms_socp_event_process(uint8_t u8Event,stCgmsHandle_t *pstHandle)
{
    switch(u8Event)
    {
        case EN_CGMS_EVT_SOCP_START_SESSION:
        {
            if (0 != pstHandle->u8CommIntv)
            {
                uint32_t u32Sec;

                calendar_period_get_time(&gstCalendar);
                calendar_to_sst(&gstCalendar,&pstHandle->stSst);
                calendar_utc_to_second(&gstCalendar,&u32Sec);
                if (ERR_STA_OK != mmu_write(EN_MMU_CGMS_SOCP_SST,0,(uint8_t *)&u32Sec,sizeof(uint32_t),true))
                {
                    INFO("MMU Write CGMS SOCP Session Start Time Failed\n");
                }

                cgms_db_record_delete_all();

                historical_data_delete_all();

                app_timer_stop(&gstCgmsMeasTimer);
                app_timer_start(&gstCgmsMeasTimer, 1 * afeCollectionInterval * 1000, NULL);

                INFO("CGMS SOCP Start Session\n");
                INFO("CGM Device Session Start Time : %04u-%02u-%02u %02u:%02u:%02u\r\n",
                    gstCgmsHandle.stSst.u16Year,gstCgmsHandle.stSst.u8Month,gstCgmsHandle.stSst.u8Day,gstCgmsHandle.stSst.u8Hour,
                    gstCgmsHandle.stSst.u8Minute,gstCgmsHandle.stSst.u8Second);
                INFO("SOCP Session Timer Start,Communication Interval : %u Minutes\n",pstHandle->u8CommIntv);
            }
            else
                INFO("[ERROR] Communication Interval is Zero\n");
            break;
        }
        case EN_CGMS_EVT_SOCP_STOP_SESSION:
        {
            INFO("CGMS SOCP Stop Session\n");
            pstHandle->stStatus.u16TimeOffset = 0;
            app_timer_stop(&gstCgmsMeasTimer);
            INFO("SOCP Session Timer Stop\r\n");
            break;
        }
        case EN_CGMS_EVT_SOCP_SET_COMM_INTV:
        {
            INFO("CGMS SOCP Communication Interval Changed,Communication Interval : %u Minutes\n",pstHandle->u8CommIntv);
            
            if (false == gstCgmsHandle.isSessionStart)
                return;

            app_timer_stop(&gstCgmsMeasTimer);
            app_timer_start(&gstCgmsMeasTimer, 1 * afeCollectionInterval * 1000, NULL);

            break;
        }
        default:break;
    }
}

/**********************************************************************************************************************
 * @brief  CGMS RACP Event Handle Process(App Task).
 * @param  u8Event: Module Event.
 * @param  pstHandle: CGMS Global Handle.
 *
 * @return None.
 *********************************************************************************************************************/
static void cgms_racp_event_process(uint8_t u8Event,stCgmsHandle_t *pstHandle)
{
    EN_ERR_STA_T enRet = ERR_STA_OK;
    
    switch(u8Event)
    {
        case EN_CGMS_EVT_RACP_REPORT_RECORDS:
        {
            stCgmsRacpVal_t stCmdInfo = pstHandle->stRacpCmdInfo;
            if (CGMS_RACP_OPERATOR_ALL == stCmdInfo.u8Operator)
            {
                INFO("CGMS Report All Stored Resords\n");
                enRet = cgms_racp_record_all_report(pstHandle);
            }
            else if (CGMS_RACP_OPERATOR_LESS_OR_EQUAL == stCmdInfo.u8Operator)
            {
                uint16_t u16MaxVal;
                u16MaxVal = rom_little_endian_read_16(&pstHandle->stRacpCmdInfo.u8Operand[CGMS_RACP_OPERAND_FILTER_PARAM_IDX],0);
                INFO("CGMS Report <= 0x%04X Stored Resords\n",u16MaxVal);
                enRet = cgms_racp_record_less_or_equal_report(pstHandle,u16MaxVal);
            }
            else if (CGMS_RACP_OPERATOR_GREATER_OR_EQUAL == stCmdInfo.u8Operator)
            {
                uint16_t u16MinVal;
                u16MinVal = rom_little_endian_read_16(&pstHandle->stRacpCmdInfo.u8Operand[CGMS_RACP_OPERAND_FILTER_PARAM_IDX],0);
                INFO("CGMS Report >= 0x%04X Stored Resords\n",u16MinVal);
                enRet = cgms_racp_record_greater_or_equal_report(pstHandle,u16MinVal);
            }
            else if (CGMS_RACP_OPERATOR_WITHIN_RANGE_OF == stCmdInfo.u8Operator)
            {
                uint16_t u16MinVal,u16MaxVal;
                u16MinVal = rom_little_endian_read_16(&pstHandle->stRacpCmdInfo.u8Operand[CGMS_RACP_OPERAND_FILTER_PARAM_IDX],0);
                u16MaxVal = rom_little_endian_read_16(&pstHandle->stRacpCmdInfo.u8Operand[CGMS_RACP_OPERAND_FILTER_PARAM_IDX],2);
                INFO("CGMS Report >= 0x%04X && <= 0x%04X Stored Resords\n",u16MinVal,u16MaxVal);
                enRet = cgms_racp_record_range_of_report(pstHandle,u16MinVal,u16MaxVal);
            }
            else if (CGMS_RACP_OPERATOR_FIRST_RECORD == stCmdInfo.u8Operator)
            {
                INFO("CGMS Report First Stored Resord\n");
                enRet = cgms_racp_record_first_report(pstHandle);
            }
            else if (CGMS_RACP_OPERATOR_LAST_RECORD == stCmdInfo.u8Operator)
            {
                INFO("CGMS Report Last Stored Resord\n");
                enRet = cgms_racp_record_last_report(pstHandle);
            }
            else
            {
                INFO("Unknown RACP Operator\n");
            }
            
            if (ERR_DATA_NOT_FOUND == enRet)
                enRet = cgms_racp_rsp_code_send(pstHandle,CGMS_RACP_OPCODE_RESPONSE_CODE,stCmdInfo.u8Opcode,CGMS_RACP_RESPONSE_NO_RECORDS_FOUND);
            else if (ERR_STA_OK == enRet)
                enRet = cgms_racp_rsp_code_send(pstHandle,CGMS_RACP_OPCODE_RESPONSE_CODE,stCmdInfo.u8Opcode,CGMS_RACP_RESPONSE_SUCCESS);
            else if (ERR_STA_BREAK == enRet)
                break;
            else
            {
                INFO("CGMS RACP Error : %d\r\n",enRet);
                break;
            }
            
            if (ERR_STA_OK != enRet)
            {
                INFO("CGMS RACP Respond Failed\r\n");
                break;
            }
            
            break;
        }
        case EN_CGMS_EVT_RACP_REPORT_NUM_OF_RECORDS:
        {
            stCgmsRacpVal_t stCmdInfo = pstHandle->stRacpCmdInfo;
            uint16_t u16NumOfRecords = 0;
            if (CGMS_RACP_OPERATOR_ALL == stCmdInfo.u8Operator)
            {
                INFO("CGMS Report Number of All Stored Resords\n");
                enRet = cgms_racp_record_number_of_all_get(pstHandle,&u16NumOfRecords);
            }
            else if (CGMS_RACP_OPERATOR_LESS_OR_EQUAL == stCmdInfo.u8Operator)
            {
                uint16_t u16MaxVal;
                u16MaxVal = rom_little_endian_read_16(&pstHandle->stRacpCmdInfo.u8Operand[CGMS_RACP_OPERAND_FILTER_PARAM_IDX],0);
                INFO("CGMS Report Number of Stored Resords <= 0x%04X\n",u16MaxVal);
                enRet = cgms_racp_record_number_of_less_or_equal_get(pstHandle,u16MaxVal,&u16NumOfRecords);
            }
            else if (CGMS_RACP_OPERATOR_GREATER_OR_EQUAL == stCmdInfo.u8Operator)
            {
                uint16_t u16MinVal;
                u16MinVal = rom_little_endian_read_16(&pstHandle->stRacpCmdInfo.u8Operand[CGMS_RACP_OPERAND_FILTER_PARAM_IDX],0);
                INFO("CGMS Report Number of Stored Resords >= 0x%04X\n",u16MinVal);
                enRet = cgms_racp_record_number_of_greater_or_equal_get(pstHandle,u16MinVal,&u16NumOfRecords);
            }
            else if (CGMS_RACP_OPERATOR_WITHIN_RANGE_OF == stCmdInfo.u8Operator)
            {
                uint16_t u16MinVal,u16MaxVal;
                u16MinVal = rom_little_endian_read_16(&pstHandle->stRacpCmdInfo.u8Operand[CGMS_RACP_OPERAND_FILTER_PARAM_IDX],0);
                u16MaxVal = rom_little_endian_read_16(&pstHandle->stRacpCmdInfo.u8Operand[CGMS_RACP_OPERAND_FILTER_PARAM_IDX],2);
                INFO("CGMS Report Number of Stored Resords >= 0x%04X && <= 0x%04X\n",u16MinVal,u16MaxVal);
                enRet = cgms_racp_record_number_of_range_get(pstHandle,u16MinVal,u16MaxVal,&u16NumOfRecords);
            }
            else if (CGMS_RACP_OPERATOR_FIRST_RECORD == stCmdInfo.u8Operator)
            {
                INFO("CGMS Report Number of First Stored Resord\n");
                enRet = cgms_racp_record_number_of_first_get(pstHandle,&u16NumOfRecords);
            }
            else if (CGMS_RACP_OPERATOR_LAST_RECORD == stCmdInfo.u8Operator)
            {
                INFO("CGMS Report Number of Last Stored Resord\n");
                enRet = cgms_racp_record_number_of_last_get(pstHandle,&u16NumOfRecords);
            }
            else
            {
                INFO("Unknown RACP Operator\n");
                break;
            }
            
            if (enRet == ERR_STA_BREAK)
                break;
            
            INFO("CGMS Report Number of Records : %u\r\n",u16NumOfRecords);
            enRet = cgms_racp_rsp_code_send(pstHandle,CGMS_RACP_OPCODE_RESPONSE_NUM_OF_STROED_RECORDS,u16NumOfRecords&0xFF,u16NumOfRecords>>8);
            if (ERR_STA_OK != enRet)
            {
                INFO("CGMS RACP Respond Failed\r\n");
                break;
            }
            
            break;
        }
        case EN_CGMS_EVT_RACP_DELETE_STORED_RECORDS:
        {
            stCgmsRacpVal_t stCmdInfo = pstHandle->stRacpCmdInfo;
//          uint16_t u16NumOfRecords = 0;
            if (CGMS_RACP_OPERATOR_ALL == stCmdInfo.u8Operator)
            {
                INFO("CGMS Delete All Stored Resords\n");
                enRet = cgms_racp_record_all_delete(pstHandle);
            }
            else if (CGMS_RACP_OPERATOR_LESS_OR_EQUAL == stCmdInfo.u8Operator)
            {
                uint16_t u16MaxVal;
                u16MaxVal = rom_little_endian_read_16(&pstHandle->stRacpCmdInfo.u8Operand[CGMS_RACP_OPERAND_FILTER_PARAM_IDX],0);
                INFO("CGMS Delete Stored Resords <= 0x%04X\n",u16MaxVal);
                enRet = cgms_racp_record_less_or_equal_delete(pstHandle,u16MaxVal);
            }
            else if (CGMS_RACP_OPERATOR_GREATER_OR_EQUAL == stCmdInfo.u8Operator)
            {
                uint16_t u16MinVal;
                u16MinVal = rom_little_endian_read_16(&pstHandle->stRacpCmdInfo.u8Operand[CGMS_RACP_OPERAND_FILTER_PARAM_IDX],0);
                INFO("CGMS Delete Stored Resords >= 0x%04X\n",u16MinVal);
                enRet = cgms_racp_record_greater_or_equal_delete(pstHandle,u16MinVal);
            }
            else if (CGMS_RACP_OPERATOR_WITHIN_RANGE_OF == stCmdInfo.u8Operator)
            {
                uint16_t u16MinVal,u16MaxVal;
                u16MinVal = rom_little_endian_read_16(&pstHandle->stRacpCmdInfo.u8Operand[CGMS_RACP_OPERAND_FILTER_PARAM_IDX],0);
                u16MaxVal = rom_little_endian_read_16(&pstHandle->stRacpCmdInfo.u8Operand[CGMS_RACP_OPERAND_FILTER_PARAM_IDX],2);
                INFO("CGMS Delete Stored Resords >= 0x%04X && <= 0x%04X\n",u16MinVal,u16MaxVal);
                enRet = cgms_racp_record_range_of_delete(pstHandle,u16MinVal,u16MaxVal);
            }
            else if (CGMS_RACP_OPERATOR_FIRST_RECORD == stCmdInfo.u8Operator)
            {
                INFO("CGMS Delete First Stored Resord\n");
                enRet = cgms_racp_record_first_delete(pstHandle);
            }
            else if (CGMS_RACP_OPERATOR_LAST_RECORD == stCmdInfo.u8Operator)
            {
                INFO("CGMS Delete Last Stored Resord\n");
                enRet = cgms_racp_record_last_delete(pstHandle);
            }
            else
            {
                INFO("Unknown RACP Operator\n");
                break;
            }
            
            if (enRet == ERR_STA_BREAK)
                break;
            else if (enRet == ERR_DATA_NOT_FOUND)
                enRet = cgms_racp_rsp_code_send(pstHandle,CGMS_RACP_OPCODE_RESPONSE_CODE,stCmdInfo.u8Opcode,CGMS_RACP_RESPONSE_NO_RECORDS_FOUND);
            else if (enRet == ERR_STA_OK)
                enRet = cgms_racp_rsp_code_send(pstHandle,CGMS_RACP_OPCODE_RESPONSE_CODE,stCmdInfo.u8Opcode,CGMS_RACP_RESPONSE_SUCCESS);
            else
            {
                INFO("CGMS RACP Error : %d\r\n",enRet);
                break;
            }
            if (ERR_STA_OK != enRet)
            {
                INFO("CGMS RACP Respond Failed\r\n");
                break;
            }
            break;
        }
        default:break;
    }
    pstHandle->isRacpRunning = false;
}

/**********************************************************************************************************************
 * @brief  CGMS Event Handle Process(App Task).
 * @param  pstAppMsg: Module Message.
 *
 * @return None.
 *********************************************************************************************************************/
static void cgms_event_process(stAppMsg_t *pstAppMsg)
{
    uint8_t u8Event = pstAppMsg->u8Event;
    stCgmsHandle_t *pstHandle = (stCgmsHandle_t *)pstAppMsg->p;
    
    switch(u8Event)
    {
        case EN_CGMS_EVT_SOCP_START_SESSION:
        case EN_CGMS_EVT_SOCP_STOP_SESSION:
        case EN_CGMS_EVT_SOCP_SET_COMM_INTV:
        {
            cgms_socp_event_process(u8Event,pstHandle);
            break;
        }
        case EN_CGMS_EVT_RACP_REPORT_RECORDS:
        case EN_CGMS_EVT_RACP_REPORT_NUM_OF_RECORDS:
        case EN_CGMS_EVT_RACP_DELETE_STORED_RECORDS:
        {
            cgms_racp_event_process(u8Event,pstHandle);
            break;
        }
        case EN_CGMS_EVT_SST_SESSION_START_TIME_UPDATE:
        {
            stCalendar_t stCalendar;
            uint32_t u32Sec = 0;
            
            sst_to_calendar(&pstHandle->stSst,&stCalendar);
            calendar_utc_to_second(&stCalendar,&u32Sec);
            
            if ( ERR_STA_OK != mmu_write(EN_MMU_CGMS_SOCP_SST,0,(uint8_t *)&u32Sec,sizeof(uint32_t),true))
            {
                INFO("MMU Write CGMS SOCP Session Start Time Failed\r\n");
            }
            
            INFO("CGMS Session Start Time Update\r\n");
            INFO("CGM Device Session Start Time : %04u-%02u-%02u %02u:%02u:%02u\r\n",
                gstCgmsHandle.stSst.u16Year,gstCgmsHandle.stSst.u8Month,gstCgmsHandle.stSst.u8Day,gstCgmsHandle.stSst.u8Hour,
                gstCgmsHandle.stSst.u8Minute,gstCgmsHandle.stSst.u8Second);
            
            break;
        }
        default:
            INFO("CGMS Unknown Event\n");
    }
}

/**********************************************************************************************************************
 * @brief  OTA Event Handle Process(App Task).
 *
 * @return None.
 *********************************************************************************************************************/
static void ota_event_process(void)
{
    EN_ERR_STA_T enRet = ERR_STA_OK;
    uint8_t pu8Data[OTA_PACKAGE_MAX_LEN];
    uint32_t u32PriMask;
    uint16_t u16DataLen;

    u32PriMask = __get_PRIMASK();
    __disable_irq();

    u16DataLen = link_queue_get_front_data_size(gpstOtaQueue);

    link_queue_get(gpstOtaQueue,pu8Data,u16DataLen);

    __set_PRIMASK(u32PriMask);

    enRet = ota_protocol_parse(get_ble_conn_handle(),pu8Data,u16DataLen,ota_event_handler);
    if (ERR_STA_OK != enRet)
        INFO("OTA Protocol Parse Failed\n");
}

#if SPI_CMD_SUPPORT

/**********************************************************************************************************************
 * @brief  SPI Read 3 Bytes CGM Data from SPI Slave.
 *
 * @return None.
 *********************************************************************************************************************/
static void spi_read_3_bytes_process(void)
{
    EN_ERR_STA_T enRet;
    char cTmpBuf[4] = {0};
    uint8_t u8SendData[] = {0x5A,0x02,0xFF};
    uint8_t u8RecvData[SPI_EVT_MIN_SIZE + 0x02 + 1];
    stCgmsMeasRec_t stRecord;
    float fGlucoseConcentration;
    sfloat_t sfGlucoseConcentration;
    uint16_t u16GlucoseConcentration;
    
    // Read Data
    enRet = spi_master_transmit_bytes(u8SendData,sizeof(u8SendData));
    if (ERR_STA_OK != enRet)
    {
        INFO("SPI Send Command Failed\n");
        return;
    }
    rom_delay_us(200);
    enRet = spi_master_receive_bytes(u8RecvData,sizeof(u8RecvData));
    if (ERR_STA_OK != enRet)
    {
        INFO("SPI Receive 3 Bytes Failed\n");
        return;
    }
    
    INFO("Recv Data : ");
    for(uint16_t i=0;i<sizeof(u8RecvData);i++)
        PRINTF("0x%02X ",u8RecvData[i]);
    PRINTF("\n");
    
    // Parse Data
    if (false == is_valid_spi_event_data(u8RecvData,sizeof(u8RecvData)))
    {
        INFO("Invalid SPI Event Data\n");
        return;
    }
    
    memcpy(cTmpBuf,&u8RecvData[2],3);
    
    if (false == str_to_float(cTmpBuf,&fGlucoseConcentration))
    {
        INFO("String To Float Failed\n");
        return;
    }
    
    cgms_send_meas_by_float(fGlucoseConcentration);
}

/**********************************************************************************************************************
 * @brief  SPI Read 256 Bytes CGM Data from SPI Slave.
 *
 * @return None.
 *********************************************************************************************************************/
static void spi_read_256_bytes_process(void)
{
    EN_ERR_STA_T enRet;
    uint8_t u8SendData[] = {0x5A,0xFF,0xFF};
    uint8_t u8RecvData[SPI_EVT_MIN_SIZE + 0xFF + 1];

    // Read Data
    enRet = spi_master_transmit_bytes(u8SendData,sizeof(u8SendData));
    if (ERR_STA_OK != enRet)
    {
        INFO("SPI Send Command Failed\n");
        return;
    }
    
    rom_delay_us(200);
    enRet = spi_master_receive_bytes(u8RecvData,sizeof(u8RecvData));
    if (ERR_STA_OK != enRet)
    {
        INFO("SPI Receive 256 Bytes Failed\n");
        return;
    }
    
    INFO("Recv Data : ");
    for(uint16_t i=0;i<sizeof(u8RecvData);i++)
        PRINTF("0x%02X ",u8RecvData[i]);
    PRINTF("\n");
    
    // Parse Data
    if (false == is_valid_spi_event_data(u8RecvData,sizeof(u8RecvData)))
    {
        INFO("Invalid SPI Event Data\n");
        return;
    }
    
    memcpy(gpu8SharedData,&u8RecvData[2],u8RecvData[1]+1);
    
    INFO("Valid SPI Event Data\n");
    
    // ipc cmd
    uint32_t u32SharedDataAddr = (uint32_t)&gpu8SharedData;
    ipc_send(EN_IPC_CMD_CAL_SUM,&u32SharedDataAddr,4);
}

/**********************************************************************************************************************
 * @brief  SPI Event Process.
 * @param  pstAppMsg: App Message.
 *
 * @return None.
 *********************************************************************************************************************/
static void spi_event_process(const stAppMsg_t *pstAppMsg)
{
    EN_ERR_STA_T enRet;
    
    switch(pstAppMsg->u8Event)
    {
        case EN_SPI_CMD_READ_3_BYTES:
        {
            spi_read_3_bytes_process();
            break;
        }
        case EN_SPI_CMD_READ_256_BYTES:
        {
            spi_read_256_bytes_process();
            break;
        }
        default:break;
    }
}

#endif

/**********************************************************************************************************************
 * @brief  CGM Device Time Init.
 *
 * @return None.
 *********************************************************************************************************************/
static void cgms_time_init(void)
{
//  EN_ERR_STA_T enRet = ERR_STA_OK;
    uint32_t u32Sec = 0;
//  uint16_t u16SstFlag;
    
    // Calendar Default Time
    gstCalendar.u16Year = 2025;
    gstCalendar.u8Mon = 3;
    gstCalendar.u8Day = 31;
    gstCalendar.u8Hour = 9;
    gstCalendar.u8Min = 1;
    gstCalendar.u8Sec = 55;
    gstCalendar.u8Wday = 1;

    // RTC Init&Start
    rtc_start();
    // Calendar Init
    calendar_init(&gstCalendar);

    // Set CGMS Session Run Time Default Value(Unit:hour)
    gstCgmsHandle.u16Srt = 10;

    // Set CGMS Time Offset Initial Value (Represent the number of minutes the user-facing time differs from the Session Start Time)
    gstCgmsHandle.stStatus.u16TimeOffset = 0;

    // Read Old Session Start Time from Flash
    // Set Session Start Time by Collector(Clinet) or yourself(CGM Device)
    // Represent the time of the initial CGM measurement
    if (ERR_STA_OK == mmu_read(EN_MMU_CGMS_SOCP_SST,0,(uint8_t *)&u32Sec,sizeof(uint32_t)))
    {
        INFO("Use Session Start Time From Flash\n");
        stCalendar_t stCalendar;
        calendar_second_to_utc(u32Sec,&stCalendar);

        calendar_to_sst(&stCalendar,&gstCgmsHandle.stSst);
    }
    else
    {
        INFO("Use Default Session Start Time\n");
        calendar_to_sst(&gstCalendar,&gstCgmsHandle.stSst);

        calendar_utc_to_second(&gstCalendar,&u32Sec);

        if (ERR_STA_OK != mmu_write(EN_MMU_CGMS_SOCP_SST,0,(uint8_t *)&u32Sec,sizeof(uint32_t),true))
        {
            INFO("MMU Write CGMS SOCP Session Start Time Failed\r\n");
        }
    }
    // -128 Represent for Time Zone Unknown
    gstCgmsHandle.stSst.i8TimeZone = -128;
    // 255 Represent for Daylight Saving Time Unknown
    gstCgmsHandle.stSst.u8Dst = 255;

    INFO("CGM Device System Time : %04u-%02u-%02u %02u:%02u:%02u\r\n",
        gstCalendar.u16Year,gstCalendar.u8Mon,gstCalendar.u8Day,gstCalendar.u8Hour,gstCalendar.u8Min,gstCalendar.u8Sec);
    INFO("CGM Device Session Start Time : %04u-%02u-%02u %02u:%02u:%02u\r\n",
        gstCgmsHandle.stSst.u16Year,gstCgmsHandle.stSst.u8Month,gstCgmsHandle.stSst.u8Day,gstCgmsHandle.stSst.u8Hour,
        gstCgmsHandle.stSst.u8Minute,gstCgmsHandle.stSst.u8Second);
}

/**********************************************************************************************************************
 * @brief  Current Time Service Get Time Callback.
 * @param  stCtsDateTime : Current Time Service Data Time
 *
 * @return status: @ref EN_ERR_STA_T.
 *********************************************************************************************************************/
static EN_ERR_STA_T ble_cts_get_time_callback(stCtsDateTime_t *stCtsDateTime)
{
//  EN_ERR_STA_T enRet = ERR_STA_OK;

    calendar_period_get_time(&gstCalendar);

    stCtsDateTime->u16Year  = gstCalendar.u16Year;
    stCtsDateTime->u8Mon    = gstCalendar.u8Mon;
    stCtsDateTime->u8Day    = gstCalendar.u8Day;
    stCtsDateTime->u8Hour   = gstCalendar.u8Hour;
    stCtsDateTime->u8Min    = gstCalendar.u8Min;
    stCtsDateTime->u8Sec    = gstCalendar.u8Sec;
    stCtsDateTime->u8Wday   = gstCalendar.u8Wday;
    stCtsDateTime->u8F256   = 0;

    INFO("CGM CTS Get System Time\r\n");
    INFO("CGM Device System Time : %04u-%02u-%02u %02u:%02u:%02u\r\n",
        gstCalendar.u16Year,gstCalendar.u8Mon,gstCalendar.u8Day,gstCalendar.u8Hour,gstCalendar.u8Min,gstCalendar.u8Sec);

    return ERR_STA_OK;
}

/**********************************************************************************************************************
 * @brief  Current Time Service Set Time Callback.
 * @param  stCtsDateTime : Current Time Service Data Time
 *
 * @return status: @ref EN_ERR_STA_T.
 *********************************************************************************************************************/
static EN_ERR_STA_T ble_cts_set_time_callback(const stCtsDateTime_t *stCtsDateTime)
{
    gstCalendar.u16Year = stCtsDateTime->u16Year;
    gstCalendar.u8Mon   = stCtsDateTime->u8Mon;
    gstCalendar.u8Day   = stCtsDateTime->u8Day;
    gstCalendar.u8Hour  = stCtsDateTime->u8Hour;
    gstCalendar.u8Min   = stCtsDateTime->u8Min;
    gstCalendar.u8Sec   = stCtsDateTime->u8Sec;
    gstCalendar.u8Wday  = stCtsDateTime->u8Wday;

    calendar_set_utc(&gstCalendar);

    INFO("CGM CTS Set System Time\r\n");
    INFO("CGM Device System Time : %04u-%02u-%02u %02u:%02u:%02u\r\n",
        gstCalendar.u16Year,gstCalendar.u8Mon,gstCalendar.u8Day,gstCalendar.u8Hour,gstCalendar.u8Min,gstCalendar.u8Sec);

    return ERR_STA_OK;
}

/**********************************************************************************************************************
 * @brief  Determine whether have Completed All Works and Enter Sleep Mode.
 *
 * @return true : goto sleep  false : can not goto sleep.
 *********************************************************************************************************************/
bool is_app_can_goto_sleep(void)
{
    if (true == gbKeyDown)
        return false;

    if (true == gbUpgrading)
        return false;

    // Check ble.
    if (!ble_init_is_system_sleep_allowed())
        return false;

    return true;
}

/**********************************************************************************************************************
 * @brief  GPIO IRQ2 Handle.
 *
 * @return None.
 *********************************************************************************************************************/
void GPIO_IRQ2_Handler(void)
{
    uint32_t u32IntMask = 0;
    uint32_t u32Level = 0;

    rom_hw_gpio_get_pin_interrupt_flag(GPIO_PORT_KEY,GPIO_PIN_KEY,&u32IntMask);
    rom_hw_gpio_clear_pin_interrupt_flag(GPIO_PORT_KEY,GPIO_PIN_KEY);

    if (u32IntMask & GPIO_PIN_KEY)
    {
        rom_hw_gpio_get_pin_input_level(GPIO_PORT_KEY,GPIO_PIN_KEY,&u32Level);
        if (u32Level)
            gbKeyDown = false;
        else
            gbKeyDown = true;
    }
}

/**********************************************************************************************************************
 * @brief  Update connect interval timer.
 *
 * This function updates the BLE connection parameters based on whether data is being sent or not.
 * When data is being sent, it sets the connection interval to 100ms.
 * When there is no data being sent, it sets the connection interval to 1000ms (which is (9 + 1) * 100ms).
 *
 * @return None.
 *********************************************************************************************************************/
static void UpdateConnIntvTimer(void *pContext)
{
    if (gu16V_Conn_Interval >= MSEC_TO_UNITS(900, UNIT_1_25_MS) && gu16V_Conn_Interval <= MSEC_TO_UNITS(1100, UNIT_1_25_MS))
    {
        PRINTF("The connection interval is within the range of 900ms to 1100ms\n");
        return;
    }
    INFO("ConnIntv Timer %d\n",gu16V_Conn_Interval);

    uint16_t u16ConnHandle = get_ble_conn_handle();
    // update connect interval .
    stGapConnectionUpdate_t stConnPara = {
        .u16ConnIntervalMin1250us  = MSEC_TO_UNITS(1000, UNIT_1_25_MS),
        .u16ConnIntervalMax1250us  = MSEC_TO_UNITS(1000, UNIT_1_25_MS),
        .u16ConnLatency            = 0,
        .u16SupervisionTimeout10ms = MSEC_TO_UNITS(6000, UNIT_10_MS),
    };
    rom_gap_api_connection_parameters_update(u16ConnHandle, &stConnPara);
    PRINTF("updataConnIntv Timer running\n");
}

/**********************************************************************************************************************
 * @brief  Update BLE param from flash.
 *
 * @return None.
 *********************************************************************************************************************/
static void ble_set_param_from_flash(void)
{
//  EN_ERR_STA_T enRet;
    uint16_t u16AdvInterval;
    uint8_t u8DevName[TT_CMD_WRITE_DEV_NAME_PARAM_MAX_LEN + 1] = {0};

    if (ERR_STA_OK != mmu_read(EN_MMU_BLE_ADV_DEV_NAME,0,u8DevName,TT_CMD_WRITE_DEV_NAME_PARAM_MAX_LEN))
    {
        INFO("Ble Dev Name Not Found in flash\n");
    }
    else
    {
        INFO("MMU Read Dev Name : %s\n",(const char *)u8DevName);
        ble_set_dev_name((const char *)u8DevName);
    }
    
    if (ERR_STA_OK != mmu_read(EN_MMU_BLE_ADV_INTERVAL,0,(uint8_t *)&u16AdvInterval,2))
    {
        INFO("Ble Adv Interval Not Found in flash\n");
        return;
    }
    else
    {
        INFO("MMU Read Adv Interval : %.3f ms\n",u16AdvInterval * 0.625);
        ble_set_adv_interval(u16AdvInterval);
    }
}

/**********************************************************************************************************************
 * @brief  CGM Device Application Main.
 * 
 * @return None
 *********************************************************************************************************************/
void app_cgm_cp(void)
{
    osStatus_t status = osOK;
    stAppMsg_t stAppMsg;
    EN_ERR_STA_T enRet = ERR_STA_OK;

    INFO("---------------CGM Profile Example----------------\n");
    
    // 1. Component init
    msg_queue_init();    
    gpstOtaQueue = link_queue_create();
    if (NULL == gpstOtaQueue)
        INFO("OTA Link Queue Create Failed\n");
    
    cgms_time_init();
    cgms_db_init();

    // Read the reboot count
    enRet = mmu_read(EN_MMU_BLE_POWER_ON_COUNT, 0, (uint8_t *)&restartNumBLE, sizeof(restartNumBLE));
    if (ERR_DATA_NOT_FOUND == enRet)    // If data is not found
    {
        restartNumBLE              = 0;    // Initialize reboot count to 0
        uint32_t restartNumBLETemp = restartNumBLE + 1;
        if (ERR_STA_OK != mmu_write(EN_MMU_BLE_POWER_ON_COUNT, 0, (uint8_t *)&restartNumBLETemp, sizeof(restartNumBLETemp), true))
        {
            INFO("restart_num Write Data Failed\n");    // Data write failed
        }
    }
    else if (ERR_STA_OK != enRet)    // If reading data failed
    {
        restartNumBLE = 0xFFFFFFFF;    // Set to maximum value to indicate error
        INFO("restart_num Flash Read Failed: 0x%2X\n", enRet);
    }
    else
    {
        // Increment reboot count
        uint32_t restartNumBLETemp = restartNumBLE + 1;

        // Update reboot count
        if (ERR_STA_OK != mmu_write(EN_MMU_BLE_POWER_ON_COUNT, 0, (uint8_t *)&restartNumBLETemp, sizeof(restartNumBLETemp), true))
        {
            INFO("restart_num Write Data Failed\n");
        }
    }
    INFO("Final restart_num: %u\n", restartNumBLE);

    // Read  BLE_SAMPLING_INTERVAL
    enRet = mmu_read(EN_MMU_BLE_SAMPLING_INTERVAL, 0, (uint8_t *)&afeCollectionInterval, sizeof(afeCollectionInterval));
    if (ERR_STA_OK != enRet)    // If data is not found
    {
        afeCollectionInterval = AFE_COLLECTION_INTERVAL;
        if (ERR_STA_OK != mmu_write(EN_MMU_BLE_SAMPLING_INTERVAL, 0, (uint8_t *)&afeCollectionInterval, sizeof(afeCollectionInterval), true))
        {
            INFO("afeCollectionInterval Write Data Failed\n");    // Data write failed
        }
    }
    INFO("AFE Collection Interval: %u\n", afeCollectionInterval);

    // Read  BLE_SEND_AFE_DATA_INTERVAL
    enRet = mmu_read(EN_MMU_BLE_SENDING_INTERVAL, 0, (uint8_t *)&bleSendAfeDataInterval, sizeof(bleSendAfeDataInterval));
    if (ERR_STA_OK != enRet)    // If data is not found
    {
        bleSendAfeDataInterval = BLE_SEND_AFE_DATA_INTERVAL;
        if (ERR_STA_OK != mmu_write(EN_MMU_BLE_SENDING_INTERVAL, 0, (uint8_t *)&bleSendAfeDataInterval, sizeof(bleSendAfeDataInterval), true))
        {
            INFO("Failed to write bleSendAfeDataInterval\n");
        }
    }
    INFO("BLE Sending AFE Data Interval: %u s\n", bleSendAfeDataInterval);

    historical_data_test();

    // 2. Init Ble
    ble_init();
    ble_event_init(ble_event_callback);
    ble_set_param_from_flash();
    ble_peripheral_init();

    // 3. Add Service
    ble_dis_init();
    ble_bas_init(get_battery_level); 
    tt_service_init(tt_recv_callback);
    ota_service_init(ota_recv_callback);

    gstCtsInit.cts_get_time_handler = ble_cts_get_time_callback;
    gstCtsInit.cts_set_time_handler = ble_cts_set_time_callback; 
    ble_cts_init(&gstCtsInit);

    // Add Cgm Sensor Feature
    // Refer to CGM_FEATURE_SUPPORT_* in "cgm_service.h"
    gstCgmsHandle.stFeature.u32Feature = 0;
    enRet = cgm_service_init(&gstCgmsHandle,cgms_event_callback);
    if (ERR_STA_OK != enRet)
    {
        PRINTF("CGMS Init Failed\n");
        return;
    }

    // 4. Init Uart
    enRet = uart_init(uart_recv_callback);
    if (enRet != ERR_STA_OK)
    {
        INFO("Uart Init Failed\r\n");
    }
    uart_send_bytes((uint8_t *)"Uart Init Successful\r\n",strlen("Uart Init Successful\r\n"));

#if SPI_CMD_SUPPORT
    enRet = spi_master_init();
    if (enRet != ERR_STA_OK)
    {
        INFO("SPI Master Init Failed\r\n");
    }
    INFO("SPI Master Init OK\n");
#endif
    
    // 5. Start Ble Pair Advertising
    start_pair_adv();
    
    // 6. Create Send CGMS Measurement App Timer 
    app_timer_create(&gstCgmsMeasTimer,APP_TIMER_MODE_REPEAT,cgms_meas_timer_timeout);
    // 7. Create Update Connect Interval App Timer
    app_timer_create(&gstConnIntvTimer, APP_TIMER_MODE_ONCE, UpdateConnIntvTimer);
    // 8. Add Wakeup Source (Wakeup by Key Down)
    app_set_wakeup_source();

    // 9. Add CS Control AFE Source (WakeUp AFE by CS IO)
    app_set_cs_control_afe_source();

    // 10. Add NTC Source
    app_set_ntc_disable_source();

    // 11. Add HALL LATCH Source
    app_set_hall_latch_source();

    historical_data_init();

    gu16BatVol = battery_vol();    // Get the battery voltage
    PRINTF("Battery Voltage: %u\n", gu16BatVol);

    uint16_t res    = NTC_res(afeData.Voltage_Divider_Resistor);    // Measure NTC resistance
    gu16Temperature = get_NTC_Temp(res);                            // Get temperature based on NTC resistance
    PRINTF("Calculated Temperature: %u\n", gu16Temperature);

    while(1)
    {
        // 12. Wait for Event
        status = osMessageQueueGet(gosMsgId, &stAppMsg, NULL, osWaitForever);
        if (osOK != status)
        {
            INFO("CGM Message Queue Get Failed \n");
            continue;
        }
        switch(stAppMsg.u8MsgModule)
        {
            case EN_MSG_MODULE_BLE:
            {   
                ble_event_process(&stAppMsg);
                break;
            }
            case EN_MSG_MODULE_CGMS:
            {
                cgms_event_process(&stAppMsg);
                break;
            }
            case EN_MSG_MODULE_OTA:
            {
                ota_event_process();
                break;
            }
            
#if SPI_CMD_SUPPORT
            case EN_MSG_MODULE_SPI:
            {
                spi_event_process(&stAppMsg);
                break;
            }
#endif
            default:break;
        }
    }
}
