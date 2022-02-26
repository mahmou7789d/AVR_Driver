/*
 * I2c_File.h
 *
 * Created: 2/24/2022 8:05:50 AM
 *  Author: Mahm Oud Sa Ad
 */ 


#ifndef I2C_FILE_H_
#define I2C_FILE_H_

#include <GPIO.h>
#include <Interrupt.h>

/************************** STATUS CODE FOR Master Transmitter  ****************/
#define  Mask_Prescaler_val         0xf8
#define  S_Transmit_status          0x08
#define  SLA_RW_Transmit_status     0x18
#define  Data_Transmit_status       0x28
/************************** STATUS CODE FOR Slave Receiver  ****************/
#define Own_SLA_A_Returned_status   0x60
#define Data_Rec_A_Returned_status  0x80
typedef enum
{
	No_Presaler,
	Prescaler_4,
	Prescaler_16,
	Prescaler_64,
}Presaler_Value;

typedef enum
{
	GeneralCall_No_Recognition,
	GeneralCall_Recognition,
}GeneralCall_Recognition_State;

typedef enum
{
	TWI_Disables,
	TWI_Enabled,
}TWI_status;

typedef enum
{
	ACK_Disables,
	ACK_Enabled,
}ACK_status;

typedef enum
{
	TWI_Interrupt_Disables,
	TWI_Interrupt_Enabled,
}TWI_Interrupt_status;

typedef enum 
{
	Master_Transmitter,
	Master_Receiver,
	Slave_Transmitter,
	Slave_Receiver,
}Micro_Mode;

typedef struct
{
	TWI_status     TWI_state;
	Presaler_Value Presaler_Val;
	TWI_Interrupt_status TWI_Interrupt_state;
	Micro_Mode Micro_state;
}TWi_Micro_data;

extern TWi_Micro_data TWI_1;

void TWI_INIT(uint_8 SCL_F);
void TWI_Start(uint_8 SLA_Value);
void TWI_Stop ();
void TWI_Write_Byte(uint_8 T_Data);
uint_8 TWI_Read_Byte();

#endif /* I2C_FILE_H_ */