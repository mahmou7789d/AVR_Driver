/*
 * EEPROM.c
 *
 * Created: 2/25/2022 6:41:34 AM
 *  Author: Mahm Oud Sa Ad
 */ 


#include <EEPROM.h>




void Disable_Interrupt()
{
	if(READ_BIT(SREG,I_Bit))
	{
		CLEAR_BIT(SREG,I_Bit);
	}
}
void EEPROM_Write_Data(uint_16 address,uint_8 data)
{
	EEAR = address;
	EEDR = data;
	Disable_Interrupt();
	SET_BIT(EECR,EEMWE_Bit);
	SET_BIT(EECR,EEWE_Bit);
	while(READ_BIT(EECR,EEWE_Bit)==1);
}
uint_8 EEPROM_Read_Data(uint_16 address)
{
	EEAR = address;
	SET_BIT(EECR,EERE_Bit);
	return EEDR;
}