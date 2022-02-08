/*
 * BCD_Seven_Segment.h
 *
 * Created: 12/18/2021 3:02:38 PM
 *  Author: Mahm Oud Sa Ad
 */ 


#ifndef BCD_SEVEN_SEGMENT_H_
#define BCD_SEVEN_SEGMENT_H_

#include <GPIO.h>
#define bit_0_num (0)
#define bit_1_num (1)
#define bit_2_num (2)
#define bit_3_num (3)
#define Max_Displayed_Value (9)
#define Min_Displayed_Value (0)
typedef struct
{
	GPIO_Register *Sev_Seg_port;
	GPIO_pin_number A_pin;
	GPIO_pin_number B_pin;
	GPIO_pin_number C_pin;
	GPIO_pin_number D_pin;
}Sev_Seg_Datatype;

void Sev_Seg_Start(Sev_Seg_Datatype sevev_seg);
void Sev_Seg_Write(Sev_Seg_Datatype sevev_seg,uint_8  Written_Num);



#endif /* BCD SEVEN SEGMENT_H_ */