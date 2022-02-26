/*
 * EEPROM.h
 *
 * Created: 2/25/2022 6:41:52 AM
 *  Author: Mahm Oud Sa Ad
 */ 

/*
* The ATmega32 contains 1024 bytes of data EEPROM memory It is organized as a separate
* data space, in which single bytes can be read and written.
* The EEPROM has an endurance of at least 100,000 write/erase cycles
***************************************************************************
*
* EEPROM Register
*
* EEPROM Address Registers :EEARH it Contain the High bit 8/9
EEARL  it contain the Low bit 0-7
* the EEPROM Data Register :EEDR it an 8bit register to hold the data will be read from or write into memory
*  EEPROM Control Register : EECR it an 8bit register to control the state of the EEPROM
*                             the Control Register Bits
*							EERE    EEPROM Read Enable Bit
*							EEWE     EEPROM Write Enable Bit
*							EEMWE   EEPROM Master Write Enable bit
*							EERIE  Ready Interrupt Enable
*
* ******************************************************************
* Write precautions
*
*  1. Wait until EEWE becomes zero.
*  2. Wait until SPMEN in SPMCR becomes zero.
*  3. Write new EEPROM address to EEAR (optional).
*  4. Write new EEPROM data to EEDR (optional).
*  5. Write a logical one to the EEMWE bit while writing a zero to EEWE in EECR.
*  6. Within four clock cycles after setting EEMWE, write a logical one to EEWE.
*
*       An interrupt between step 5 and step 6 will make the write cycle fail
*
****************************************************************************/

#ifndef EEPROM_H_
#define EEPROM_H_

#include <GPIO.h>
#include <Interrupt.h>


void Disable_Interrupt();
void EEPROM_Write_Data(uint_16 address,uint_8 data);
uint_8 EEPROM_Read_Data(uint_16 address);




#endif /* EEPROM_H_ */