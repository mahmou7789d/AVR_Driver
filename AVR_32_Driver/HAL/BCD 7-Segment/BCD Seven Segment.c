/*
 * BCD_Seven_Segment.c
 *
 * Created: 12/18/2021 3:02:28 PM
 *  Author: Mahm Oud Sa Ad
 */ 
#include <BCD Seven Segment.h>

static void Sev_Segment_Error_Indication(ErrorType type)
{
	switch(type)
	{
		case InvalidArgument:
		printlog("Invalid Argument");
		break;
		case OverFlow:
		printlog("OverFlow");
		break;
		default:
		break;
	}
}

void Sev_Seg_Start(Sev_Seg_Datatype sevev_seg)
{

	GPIO_Pin_Configuration(sevev_seg.Sev_Seg_port,sevev_seg.A_pin,OUTPUT);
	GPIO_Pin_Configuration(sevev_seg.Sev_Seg_port,sevev_seg.B_pin,OUTPUT);
	GPIO_Pin_Configuration(sevev_seg.Sev_Seg_port,sevev_seg.C_pin,OUTPUT);
	GPIO_Pin_Configuration(sevev_seg.Sev_Seg_port,sevev_seg.D_pin,OUTPUT);

}

void Sev_Seg_Write(Sev_Seg_Datatype sevev_seg,uint_8 Written_Num)
{

	if(Written_Num < 10)
	{
		/* read The Bit 0 from The Number And represent By The Pin A */
		GPIO_Pin_Write(sevev_seg.Sev_Seg_port,sevev_seg.A_pin,(READ_BIT(Written_Num,bit_0_num))); 
		/* read The Bit 1 from The Number And represent By The Pin B */
		GPIO_Pin_Write(sevev_seg.Sev_Seg_port,sevev_seg.B_pin,(READ_BIT(Written_Num,bit_1_num))); 
		/* read The Bit 2 from The Number And represent By The Pin C */
		GPIO_Pin_Write(sevev_seg.Sev_Seg_port,sevev_seg.C_pin,(READ_BIT(Written_Num,bit_2_num))); 
		/* read The Bit 3 from The Number And represent By The Pin D */
		GPIO_Pin_Write(sevev_seg.Sev_Seg_port,sevev_seg.D_pin,(READ_BIT(Written_Num,bit_3_num))); 

	}
	else
	{
		Sev_Segment_Error_Indication(OverFlow);
	}
}
/*
#if 0
switch(Written_Num)
{
	case Get_1:
	GPIO_Pin_Write(Sev_Seg_Pins.Sev_Seg_port,Sev_Seg_Pins.A_pin,GPIO_HIGH);
	GPIO_Pin_Write(Sev_Seg_Pins.Sev_Seg_port,Sev_Seg_Pins.B_pin,GPIO_LOW);
	GPIO_Pin_Write(Sev_Seg_Pins.Sev_Seg_port,Sev_Seg_Pins.C_pin,GPIO_LOW);
	GPIO_Pin_Write(Sev_Seg_Pins.Sev_Seg_port,Sev_Seg_Pins.D_pin,GPIO_LOW);
	break;
	case Get_2:
	GPIO_Pin_Write(Sev_Seg_Pins.Sev_Seg_port,Sev_Seg_Pins.A_pin,GPIO_LOW);
	GPIO_Pin_Write(Sev_Seg_Pins.Sev_Seg_port,Sev_Seg_Pins.B_pin,GPIO_HIGH);
	GPIO_Pin_Write(Sev_Seg_Pins.Sev_Seg_port,Sev_Seg_Pins.C_pin,GPIO_LOW);
	GPIO_Pin_Write(Sev_Seg_Pins.Sev_Seg_port,Sev_Seg_Pins.D_pin,GPIO_LOW);
	break;
	default:
	Sev_Seg_Error_Indication(OverFlow);
	break;
}
#endif
*/