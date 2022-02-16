/*
 * USART_File.c
 *
 * Created: 2/13/2022 12:17:56 PM
 *  Author: Mahm Oud Sa Ad
 */ 

#include <USART_File.h>


/******************************************************* USART Call Back Functions *********************************************************/

static void (*CP_USART_RXC_Complete_User_ptr) (void) =NULL;
static void (*CP_USART_TXC_Complete_User_ptr) (void) =NULL;
static void (*CP_USART_UDRE_User_ptr)         (void) =NULL;

void USART_RXC_Complete_Callback(void (*USART_RXC_Complete_User_ptr) (void))
{
	if(USART_RXC_Complete_User_ptr != NULL)
	{
		CP_USART_RXC_Complete_User_ptr =USART_RXC_Complete_User_ptr;
	}
}
void USART_TXC_Complete_Callback(void (*USART_TXC_Complete_User_ptr) (void))
{
	if(USART_TXC_Complete_User_ptr != NULL)
	{
		CP_USART_TXC_Complete_User_ptr =USART_TXC_Complete_User_ptr;
	}
}
void USART_UDRE_Callback(void (*USART_UDRE_User_ptr) (void))
{
	if(USART_UDRE_User_ptr != NULL)
	{
		CP_USART_UDRE_User_ptr =USART_UDRE_User_ptr;
	}
}


/******************************************************************************/
USART_Configuration USART0={0};



void USART_Init(void)
{
	uint_8 UCSRA_Temp=0;
	uint_8 UCSRB_Temp=0;
	uint_8 UCSRC_Temp=0;
	float_32 UBBR_Temp=0.0;
	switch (USART0.Micro_State)
	{
		case USART_Disable:
		CLEAR_BIT(UCSRB_Temp,RXEN);
		CLEAR_BIT(UCSRB_Temp,TXEN);
		break;
		case USART_Receiver:
		SET_BIT(UCSRB_Temp,RXEN);
		CLEAR_BIT(UCSRB_Temp,TXEN);
		break;
		case USART_Transmitter:
		CLEAR_BIT(UCSRB_Temp,RXEN);
		SET_BIT(UCSRB_Temp,TXEN);
		break;
		case USART_Receiver_Transmitter:
		SET_BIT(UCSRB_Temp,RXEN);
		SET_BIT(UCSRB_Temp,TXEN);
		break; 
		default:
		break;
	}
	switch(USART0.Communcation_Mode)
	{
		case USART_Asyn_Normal:
		CLEAR_BIT(UCSRC_Temp,UMSEL);
		CLEAR_BIT(UCSRA_Temp,U2X);
		CLEAR_BIT(UCSRC_Temp,UCPOL);
		UBBR_Temp = ((float_32)F_CPU)/(16.0*USART0.Baud_Rate) - 0.5;
		break;
		case USART_Asyn_DoupleSpeed:
		CLEAR_BIT(UCSRC_Temp,UMSEL);
		SET_BIT  (UCSRA_Temp,U2X);
		CLEAR_BIT(UCSRC_Temp,UCPOL);
		UBBR_Temp = ((float_32)F_CPU)/(8.0*USART0.Baud_Rate) - 0.5;
		break;
		case USART_Sync_Master:
		SET_BIT  (UCSRC_Temp,UMSEL);
		CLEAR_BIT(UCSRA_Temp,U2X);
		UBBR_Temp = ((float_32)F_CPU)/(2.0*USART0.Baud_Rate) - 0.5;
		switch(USART0.Clock_Parity)
		{
			case USART_SamplingOnFaling:
			CLEAR_BIT(UCSRC_Temp,UCPOL);
			break;
			case USART_SamplingOnRising:
			SET_BIT(UCSRC_Temp,UCPOL);
			break;
			default:
			break;
		}
		
		break;
		default:
		break;
	}
	switch(USART0.Communication_Processor)
	{
		case USART_SingleProcessor:
		CLEAR_BIT(UCSRA_Temp,MPCM);
		break;
		case USART_MultiProcessor:
		SET_BIT(UCSRA_Temp,MPCM);
		break;
		default:
		break;
	}
	switch(USART0.Interrupt_Source)
	{
		SET_BIT(SREG,I_Bit);
		case USART_Interrupt_Disable:
		break;
		case USART_RxComplete_Enable:
		SET_BIT(UCSRB_Temp,RXCIE);
		break;
		case USART_TxComplete_Enable:
		SET_BIT(UCSRB_Temp,TXCIE);
		break;
		case USART_UDR_Enable:
		SET_BIT(UCSRB_Temp,UDRIE);
		break;
		case USART_RX_Complete_UDR_Enable:
		SET_BIT(UCSRB_Temp,RXCIE);
		SET_BIT(UCSRB_Temp,UDRIE);
		break;
		case USART_Tx_Complete_UDR_Enable:
		SET_BIT(UCSRB_Temp,TXCIE);
		SET_BIT(UCSRB_Temp,UDRIE);
		break;
		case USART_All_Interrupt_Enable:
		SET_BIT(UCSRB_Temp,RXCIE);
		SET_BIT(UCSRB_Temp,TXCIE);
		SET_BIT(UCSRB_Temp,UDRIE);
		break;
		default:
		break;
	}
	switch(USART0.Character_Size)
	{
		case Size_5bit:
		CLEAR_BIT(UCSRB_Temp,UCSZ2);
		CLEAR_BIT(UCSRC_Temp,UCSZ1);
		CLEAR_BIT(UCSRC_Temp,UCSZ0);
		break;
		case Size_6bit:
		CLEAR_BIT(UCSRB_Temp,UCSZ2);
		CLEAR_BIT(UCSRC_Temp,UCSZ1);
		SET_BIT  (UCSRC_Temp,UCSZ0);
		break;
		case Size_7bit:
		CLEAR_BIT(UCSRB_Temp,UCSZ2);
		SET_BIT  (UCSRC_Temp,UCSZ1);
		CLEAR_BIT(UCSRC_Temp,UCSZ0);
		break;
		case Size_8bit:
		CLEAR_BIT(UCSRB_Temp,UCSZ2);
		SET_BIT  (UCSRC_Temp,UCSZ1);
		SET_BIT  (UCSRC_Temp,UCSZ0);
		break;
		case Size_9bit:
		SET_BIT  (UCSRB_Temp,UCSZ2);
		SET_BIT  (UCSRC_Temp,UCSZ1);
		SET_BIT  (UCSRC_Temp,UCSZ0);
		break;
		default:
		break;
		
	}
	switch(USART0.Frame_Control)
	{
		case USART_Parity_Disable_1StopBit:
		CLEAR_BIT(UCSRC_Temp,UPM1);
		CLEAR_BIT(UCSRC_Temp,UPM0);
		CLEAR_BIT(UCSRC_Temp,USBS);
		break;
		case USART_Parity_Disable_2StopBit:
		CLEAR_BIT(UCSRC_Temp,UPM1);
		CLEAR_BIT(UCSRC_Temp,UPM0);
		SET_BIT(UCSRC_Temp,USBS);
		break;
		case USART_Parity_Even_1StopBit:
		SET_BIT(UCSRC_Temp,UPM1);
		CLEAR_BIT(UCSRC_Temp,UPM0);
		CLEAR_BIT(UCSRC_Temp,USBS);
		break;
		case USART_Parity_Even_2StopBit:
		SET_BIT(UCSRC_Temp,UPM1);
		CLEAR_BIT(UCSRC_Temp,UPM0);
		SET_BIT(UCSRC_Temp,USBS);
		break;
		case USART_Parity_Odd_1StopBit:
		SET_BIT(UCSRC_Temp,UPM1);
		SET_BIT(UCSRC_Temp,UPM0);
		CLEAR_BIT(UCSRC_Temp,USBS);
		break;
		case USART_Parity_Odd_2StopBit:
		SET_BIT(UCSRC_Temp,UPM1);
		SET_BIT(UCSRC_Temp,UPM0);
		SET_BIT(UCSRC_Temp,USBS);
		break;
		default:
		break;
	}
	UBRRH = ((uint_16)UBBR_Temp)>>8;//shift right to get the most bits of UBBR
	UBRRL = ((uint_16)UBBR_Temp);
	UCSRA =UCSRA_Temp;
	UCSRC =UCSRC_Temp;
	UCSRB =UCSRB_Temp;//put in the last because on it the enable bit of the UART
}

void USART_Send_ByteOfData_Blocking(uint_16 Data)
{
	while (READ_BIT(UCSRA,UDRE)==0);
	if(USART0.Character_Size == Size_9bit)
	{
		/*
	     * UCSRB & 1111 1110 to make sure the bit 0 is reset to hold the new value because it does not mention in data sheet
		 * we need to take the bit 9  in the data and hold it in the bit 0  in the UCSRB so we & the data with 8 to get 
		 *  and shift it again to put in the position of the bit 0
	     */ 
		UCSRB = (UCSRB & 0xFE) | ((Data & (1<<8))>>8);
	}
	UDR = (uint_8) Data;
}
void USART_Send_ByteOfData_NonBlocking(uint_16 Data) // Don't wait UDER to be empty
{
	if(READ_BIT(UCSRA,UDRE)!=0)
	{
		if(USART0.Character_Size == Size_9bit)
	     {
		   /*
	        * UCSRB & 1111 1110 to make sure the bit 0 is reset to hold the new value because it does not mention in data sheet
		    * we need to take the bit 9  in the data and hold it in the bit 0  in the UCSRB so we & the data with 8 to get 
		    *  and shift it again to put in the position of the bit 0
	        */ 
		    UCSRB = (UCSRB & 0xFE) | ((Data & (1<<8))>>8);
	     }
	     UDR = (uint_8) Data;
	}	
}

uint_16 USART_Receive_ByteOfData_Blocking()
{
	uint_16 Recived_Data = 0;
	while (READ_BIT(UCSRA,RXC)==0);
	if(READ_BIT(UCSRA,FE)| READ_BIT(UCSRA,DOR) | READ_BIT(UCSRA,PE))
	{
		//there is error in data received,please handle this error
		if(READ_BIT(UCSRA,FE))
		{
			USART0.Error_Type = USART_FrameError;
		}
		else if (READ_BIT(UCSRA,DOR))
		{
			USART0.Error_Type = USART_DataOverRunError
		}
		else if (READ_BIT(UCSRA,PE))
		{
			USART0.Error_Type = USART_ParityError;	
		}
	}
	if(USART0.Character_Size == Size_9bit)
	{
		Recived_Data = UCSRB & (1<<RXB8) >>7;
	}
	Recived_Data |=UDR;
	return Recived_Data; 
	
}
uint_16 USART_Receive_ByteOfData_NonBlocking()
{
	uint_16 Recived_Data = 0;
	if(READ_BIT(UCSRA,RXC)!=0)
	{
		if(READ_BIT(UCSRA,FE)| READ_BIT(UCSRA,DOR) | READ_BIT(UCSRA,PE))
		{
			//there is error in data received,please handle this error
			if(READ_BIT(UCSRA,FE))
			{
				USART0.Error_Type = USART_FrameError;
			}
			else if (READ_BIT(UCSRA,DOR))
			{
				USART0.Error_Type = USART_DataOverRunError
			}
			else if (READ_BIT(UCSRA,PE))
			{
				USART0.Error_Type = USART_ParityError;
			}
		}
		if(USART0.Character_Size == Size_9bit)
		{
			/* read the 9bit from the bit 1 in the UCSRB then shift it to left by 7 to hold in 9bit */
			Recived_Data = UCSRB & (1<<RXB8) >>7;
		}
		Recived_Data |=UDR;	
	}
	return Recived_Data;
}