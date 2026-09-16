/**
 * @file    ht32f675x5_flash.h
 * @brief   Holtek HT32F675x5 internal flash HAL
 * @note    These functions are provided by ht32f675x5_rom_lib_mp_r2.lib
 *          This header provides declarations for them.
 */
#ifndef __HT32F675X5_FLASH_H__
#define __HT32F675X5_FLASH_H__

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

/**
 * @brief  Erase a flash sector (4KB)
 * @param  addr: Sector start address (must be 4KB-aligned)
 */
void FLASH_EraseSector(uint32_t addr);

/**
 * @brief  Program a flash page (256 bytes)
 * @param  addr: Page start address (must be 256B-aligned)
 * @param  data: Pointer to data (must be 32-bit aligned)
 */
void FLASH_ProgramPage(uint32_t addr, uint32_t *data);

/**
 * @brief  Read data from flash
 * @param  addr: Start address
 * @param  buf:  Destination buffer
 * @param  len:  Number of bytes
 */
void FLASH_Read(uint32_t addr, uint8_t *buf, uint32_t len);

#ifdef __cplusplus
}
#endif

#endif /* __HT32F675X5_FLASH_H__ */
