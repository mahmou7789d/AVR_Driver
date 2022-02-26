/*
 * EEPROM.h
 *
 * Created: 2/25/2022 6:41:52 AM
 *  Author: Mahm Oud Sa Ad
 */ 


#ifndef EEPROM_H_
#define EEPROM_H_

#include <GPIO.h>
#include <Interrupt.h>


void Disable_Interrupt();
void EEPROM_Write_Data(uint_16 address,uint_8 data);

uint_8 EEPROM_Read_Data(uint_16 address);




#endif /* EEPROM_H_ */