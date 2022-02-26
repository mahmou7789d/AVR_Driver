/*
 * USART_File.h
 *
 * Created: 2/13/2022 12:18:14 PM
 *  Author: Mahm Oud Sa Ad
 */ 


#ifndef USART_FILE_H_
#define USART_FILE_H_

#include <GPIO.h>
#include <Interrupt.h>


typedef enum
{
	USART_Asyn_Normal,
	USART_Asyn_DoupleSpeed,
	USART_Sync_Master,
}USART_Mode;

typedef enum
{
	USART_Disable,
	USART_Receiver,
	USART_Transmitter,
	USART_Receiver_Transmitter,
}USART_Micro_State;

typedef enum
{
	USART_Interrupt_Disable,
	USART_RxComplete_Enable,
	USART_TxComplete_Enable,
	USART_UDR_Enable,
	USART_Rx_Tx_Complete_Enable,
	USART_RX_Complete_UDR_Enable,
	USART_Tx_Complete_UDR_Enable,
	USART_All_Interrupt_Enable,
}USART_Interrupt_Source;
typedef enum
{
	Size_5bit,
	Size_6bit,
	Size_7bit,
	Size_8bit,
	Size_9bit,
}USART_Character_Size;

typedef enum
{
	USART_SingleProcessor,
	USART_MultiProcessor,
}USART_Communication_Processor;

typedef enum
{
	USART_NoError,
	USART_ParityError,
	USART_DataOverRunError,
	USART_FrameError,
}USART_ErrorsType;

typedef enum
{
	USART_SamplingOnFaling,
	USART_SamplingOnRising,
}USART_Clock_Parity;

typedef enum
{
	USART_Parity_Disable_1StopBit,
	USART_Parity_Disable_2StopBit,
	USART_Parity_Even_1StopBit,
	USART_Parity_Even_2StopBit,
	USART_Parity_Odd_1StopBit,
	USART_Parity_Odd_2StopBit,
}USART_Frame_Control;

typedef struct 
{
	USART_Micro_State             Micro_State;
	USART_Mode                    Communcation_Mode;
	USART_Communication_Processor Communication_Processor;
	USART_Interrupt_Source        Interrupt_Source;
	USART_Character_Size          Character_Size;
	USART_Frame_Control           Frame_Control;
	USART_Clock_Parity            Clock_Parity;
 	uint_32                       Baud_Rate;
	USART_ErrorsType              Error_Type;
}USART_Configuration;

extern USART_Configuration USART0;
void USART_Init();
void USART_Send_ByteOfData_Blocking(uint_16 Data);
void USART_Send_ByteOfData_NonBlocking(uint_16 Data);
uint_16 USART_Receive_ByteOfData_Blocking();
uint_16 USART_Receive_ByteOfData_NonBlocking();

void USART_RXC_Complete_Callback(void (*USART_RXC_Complete_User_ptr) (void));
void USART_TXC_Complete_Callback(void (*USART_TXC_Complete_User_ptr) (void));
void USART_UDRE_Callback(void (*USART_UDRE_User_ptr) (void));


#endif /* USART_FILE_H_ */