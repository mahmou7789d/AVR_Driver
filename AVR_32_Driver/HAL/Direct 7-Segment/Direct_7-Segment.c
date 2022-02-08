/*
 * Direct_7_Segment.c
 *
 * Created: 12/19/2021 7:26:32 AM
 *  Author: Mahm Oud Sa Ad
 */ 
#include <Direct_7-Segment.h>
void Seven_Seg_Init(GPIO_Register *_7_Segment_port)
{
	GPIO_Port_Configuration(_7_Segment_port,Max_uint8_Value);
}
void Seven_Seg_Write(GPIO_Register *_7_Segment_port,Seven_Segment_Type Type,unsigned char Written_Number)
{
	unsigned char Numbers_arr[]={ Zero,One,Two,Three,Four,Five,Six,Seven,Eight,Nine};
	switch(Type)
	{
		case Common_Anode:
		GPIO_Port_Write(_7_Segment_port,~(Numbers_arr[Written_Number]));
		break;
		case Common_Cathode:
		GPIO_Port_Write(_7_Segment_port,Numbers_arr[Written_Number]);
		break;
	}
	
}