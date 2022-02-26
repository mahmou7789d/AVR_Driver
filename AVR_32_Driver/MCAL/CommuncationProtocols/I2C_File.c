/*
 * I2c_File.c
 *
 * Created: 2/24/2022 8:05:18 AM
 *  Author: Mahm Oud Sa Ad
 */ 

#include <GPIO.h>
#include <I2C_File.h>
TWi_Micro_data TWI_1={0};
void TWI_INIT(uint_32 SCL_F)
{
	uint_8 Presaler_Val=0;
	uint_8 TWSR_Temp =0;
	switch(TWI_1.Presaler_Val)
	{
		case No_Presaler:
		CLEAR_BIT(TWSR_Temp,TWPS0_bit);
		CLEAR_BIT(TWSR_Temp,TWPS1_bit);
		Presaler_Val=1;
		break;
		case Prescaler_4:
		SET_BIT(TWSR_Temp,TWPS0_bit);
		CLEAR_BIT(TWSR_Temp,TWPS1_bit);
		Presaler_Val=4;
		break;
		case Prescaler_16:
		CLEAR_BIT(TWSR_Temp,TWPS0_bit);
		SET_BIT(TWSR_Temp,TWPS1_bit);
		Presaler_Val=16;
		break;
		case Prescaler_64:
		SET_BIT(TWSR_Temp,TWPS0_bit);
		SET_BIT(TWSR_Temp,TWPS1_bit);
		Presaler_Val=64;
		break;
		default:
		break;
	}
	TWSR = TWSR_Temp;
	TWBR= (uint_8) (((F_CPU/SCL_F)-16) / (2*Presaler_Val));
}
void TWI_Start(uint_8 SLA_Value)
{
	switch(TWI_1.Micro_state)
	{
		case Master_Transmitter:
		SET_BIT(TWCR,TWEN_bit);
		SET_BIT(TWCR,TWINT_bit);
		SET_BIT(TWCR,TWSTA_bit);
		while (READ_BIT(TWCR,TWINT_bit) ==0);
		while ((TWSR & Mask_Prescaler_val) != S_Transmit_status);
		TWDR = SLA_Value;
		SET_BIT(TWCR,TWEN_bit);
		SET_BIT(TWCR,TWINT_bit);
		while (READ_BIT(TWCR,TWINT_bit) ==0);
		while ((TWSR & Mask_Prescaler_val) != SLA_RW_Transmit_status);
		break;
		case Master_Receiver:
		break;
		case Slave_Transmitter:
		break;
		case Slave_Receiver:
		TWAR = SLA_Value;
		SET_BIT(TWCR,TWEN_bit);
		SET_BIT(TWCR,TWEA_bit);
		SET_BIT(TWCR,TWINT_bit);
		while (READ_BIT(TWCR,TWINT_bit) ==0);
		while ((TWSR & Mask_Prescaler_val) != Own_SLA_A_Returned_status);
		break;
		default:
		break;
	}
}
void TWI_Write_Byte(uint_8 T_Data)
{
	TWDR = T_Data;
	TWCR=(1<<TWINT_bit)|(1<<TWEN_bit);
	while (READ_BIT(TWCR,TWINT_bit) ==0);
	while ((TWSR & Mask_Prescaler_val) != Data_Transmit_status);
}

void TWI_Stop(void)
{
	SET_BIT(TWCR,TWEN_bit);
	SET_BIT(TWCR,TWINT_bit);
	SET_BIT(TWCR,TWSTO_bit);
}

void Set_SLA_Value(uint_8 address)
{
	TWAR=address;
}

uint_8 TWI_Read_Byte(void)
{
	 
	SET_BIT(TWCR,TWEN_bit);
	SET_BIT(TWCR,TWEA_bit);
	SET_BIT(TWCR,TWINT_bit);
	while(READ_BIT(TWCR,TWINT_bit)==0);
	while ((TWSR & Mask_Prescaler_val) != Own_SLA_A_Returned_status); // own SLA+W has been received and ACK has been returned
	SET_BIT(TWCR,TWEN_bit);
	SET_BIT(TWCR,TWEA_bit);
	SET_BIT(TWCR,TWINT_bit);
	while (READ_BIT(TWCR,TWINT_bit) ==0);
	while ((TWSR & Mask_Prescaler_val) != Data_Rec_A_Returned_status);
	return TWDR;
}