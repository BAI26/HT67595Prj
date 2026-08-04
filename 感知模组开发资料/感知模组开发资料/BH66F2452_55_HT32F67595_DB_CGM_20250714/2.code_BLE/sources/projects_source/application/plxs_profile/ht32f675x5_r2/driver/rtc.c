/*************************************************************************************************************
 * @file    rtc.c
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

#include "RegHT32F675x5.h"
#include "err_def.h"
#include "app_cfg.h"
#include "boards.h"

#include "hw_rtc.h"
#include "hw_crg.h"
#include "hw_sys_ctrl.h"

#include "rtc.h"

static bool gbIsRtcStart = false;

EN_ERR_STA_T rtc_start(void)
{
    EN_ERR_STA_T enRet = ERR_STA_OK;
    
    rom_hw_crg_enable_clk_gate(CRG_RTC_APB_CLK_GATE);
    rom_hw_crg_enable_clk_gate(CRG_RTC_RC_LCLK_GATE);

    rom_hw_rtc_clear_count();
    
    enRet = rom_hw_rtc_start();
    if (ERR_STA_OK != enRet)
        return enRet;
    
    gbIsRtcStart = true;
    
    return ERR_STA_OK;
}

EN_ERR_STA_T rtc_stop(void)
{
    EN_ERR_STA_T enRet = ERR_STA_OK;
    
    rom_hw_crg_disable_clk_gate(CRG_RTC_APB_CLK_GATE);
    rom_hw_crg_disable_clk_gate(CRG_RTC_RC_LCLK_GATE);
    
    enRet = rom_hw_rtc_stop();
    if (ERR_STA_OK != enRet)
        return enRet;
    
    gbIsRtcStart = false;
    
    return ERR_STA_OK;
}


EN_ERR_STA_T rtc_restart(void)
{
    if (gbIsRtcStart)
    {
        rom_hw_rtc_clear_count();
        return ERR_STA_OK;
    }
    
    return rtc_start();    
}

