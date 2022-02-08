	.file	"LED_Relay_Buzzer_Button_SevenSegment_Control.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.GPIO_APP_init,"ax",@progbits
.global	GPIO_APP_init
	.type	GPIO_APP_init, @function
GPIO_APP_init:
.LFB6:
	.file 1 "../APP/GPIO_App/LED_Relay_Buzzer_Button_SevenSegment_Control.c"
	.loc 1 23 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 24 0
	lds r22,LED_8
	lds r23,LED_8+1
	lds r24,LED_8+2
	lds r25,LED_8+3
	call Led_Start
.LVL0:
	.loc 1 25 0
	ldi r24,lo8(Button_2)
	ldi r25,hi8(Button_2)
	jmp Butt_Switch_init
.LVL1:
	.cfi_endproc
.LFE6:
	.size	GPIO_APP_init, .-GPIO_APP_init
	.section	.text.GPIO_APP_Control,"ax",@progbits
.global	GPIO_APP_Control
	.type	GPIO_APP_Control, @function
GPIO_APP_Control:
.LFB7:
	.loc 1 29 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 30 0
	ldi r24,lo8(Button_2)
	ldi r25,hi8(Button_2)
	call Butt_Switch_Read
.LVL2:
	cpi r24,lo8(1)
	breq .L5
	ret
.L5:
	.loc 1 32 0
	lds r22,LED_8
	lds r23,LED_8+1
	lds r24,LED_8+2
	lds r25,LED_8+3
	jmp Led_Toggle
.LVL3:
	.cfi_endproc
.LFE7:
	.size	GPIO_APP_Control, .-GPIO_APP_Control
.global	Button_2
	.section	.data.Button_2,"aw",@progbits
	.type	Button_2, @object
	.size	Button_2, 6
Button_2:
	.word	51
	.byte	1
	.byte	2
	.zero	2
.global	LED_8
	.section	.data.LED_8,"aw",@progbits
	.type	LED_8, @object
	.size	LED_8, 4
LED_8:
	.word	57
	.byte	0
	.byte	0
	.text
.Letext0:
	.file 2 "../Services/AVR_32_Registers.h"
	.file 3 "../Services/STD_Types.h"
	.file 4 "../MCAL/DIO/GPIO.h"
	.file 5 "../HAL/Push Button/Push Button.h"
	.file 6 "../HAL/LED_File/LED.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x32f
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF53
	.byte	0x1
	.long	.LASF54
	.long	.LASF55
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0xd
	.long	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF9
	.uleb128 0x4
	.byte	0x3
	.byte	0x2
	.byte	0x12
	.long	0xad
	.uleb128 0x5
	.string	"PIN"
	.byte	0x2
	.byte	0x14
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"DDR"
	.byte	0x2
	.byte	0x15
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.long	.LASF10
	.byte	0x2
	.byte	0x16
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.long	0x29
	.uleb128 0x2
	.long	.LASF12
	.byte	0x2
	.byte	0x17
	.long	0x7a
	.uleb128 0x8
	.byte	0x1
	.byte	0x4
	.byte	0xd
	.long	0xf6
	.uleb128 0x9
	.long	.LASF13
	.sleb128 0
	.uleb128 0x9
	.long	.LASF14
	.sleb128 1
	.uleb128 0x9
	.long	.LASF15
	.sleb128 2
	.uleb128 0x9
	.long	.LASF16
	.sleb128 3
	.uleb128 0x9
	.long	.LASF17
	.sleb128 4
	.uleb128 0x9
	.long	.LASF18
	.sleb128 5
	.uleb128 0x9
	.long	.LASF19
	.sleb128 6
	.uleb128 0x9
	.long	.LASF20
	.sleb128 7
	.byte	0
	.uleb128 0x2
	.long	.LASF21
	.byte	0x4
	.byte	0xf
	.long	0xbd
	.uleb128 0x8
	.byte	0x1
	.byte	0x4
	.byte	0x10
	.long	0x11c
	.uleb128 0x9
	.long	.LASF22
	.sleb128 0
	.uleb128 0x9
	.long	.LASF23
	.sleb128 1
	.uleb128 0x9
	.long	.LASF24
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.long	.LASF25
	.byte	0x4
	.byte	0x14
	.long	0x101
	.uleb128 0x8
	.byte	0x1
	.byte	0x4
	.byte	0x15
	.long	0x13c
	.uleb128 0xa
	.string	"LOW"
	.sleb128 0
	.uleb128 0x9
	.long	.LASF26
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF27
	.byte	0x4
	.byte	0x18
	.long	0x127
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0x13
	.long	0x162
	.uleb128 0x9
	.long	.LASF28
	.sleb128 0
	.uleb128 0x9
	.long	.LASF29
	.sleb128 1
	.uleb128 0x9
	.long	.LASF30
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.long	.LASF31
	.byte	0x5
	.byte	0x17
	.long	0x147
	.uleb128 0x4
	.byte	0x6
	.byte	0x5
	.byte	0x18
	.long	0x1bc
	.uleb128 0x6
	.long	.LASF32
	.byte	0x5
	.byte	0x1a
	.long	0x1bc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF33
	.byte	0x5
	.byte	0x1b
	.long	0xf6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.long	.LASF34
	.byte	0x5
	.byte	0x1c
	.long	0x11c
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x6
	.long	.LASF35
	.byte	0x5
	.byte	0x1d
	.long	0x13c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.long	.LASF36
	.byte	0x5
	.byte	0x1e
	.long	0x162
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0xb2
	.uleb128 0x2
	.long	.LASF37
	.byte	0x5
	.byte	0x1f
	.long	0x16d
	.uleb128 0x4
	.byte	0x4
	.byte	0x6
	.byte	0xc
	.long	0x200
	.uleb128 0x6
	.long	.LASF38
	.byte	0x6
	.byte	0xe
	.long	0x1bc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF39
	.byte	0x6
	.byte	0xf
	.long	0xf6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.long	.LASF40
	.byte	0x6
	.byte	0x10
	.long	0x13c
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF41
	.byte	0x6
	.byte	0x11
	.long	0x1cd
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.byte	0x13
	.long	0x22c
	.uleb128 0x9
	.long	.LASF42
	.sleb128 0
	.uleb128 0x9
	.long	.LASF43
	.sleb128 1
	.uleb128 0x9
	.long	.LASF44
	.sleb128 0
	.uleb128 0x9
	.long	.LASF45
	.sleb128 1
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF46
	.uleb128 0xd
	.byte	0x1
	.long	.LASF47
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x277
	.uleb128 0xe
	.long	.LVL0
	.long	0x2dc
	.uleb128 0xf
	.long	.LVL1
	.byte	0x1
	.long	0x2f0
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Button_2
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF48
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x2b8
	.uleb128 0x11
	.long	.LVL2
	.long	0x30a
	.long	0x2ad
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Button_2
	.byte	0
	.uleb128 0x12
	.long	.LVL3
	.byte	0x1
	.long	0x322
	.byte	0
	.uleb128 0x13
	.long	.LASF49
	.byte	0x1
	.byte	0x13
	.long	0x200
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LED_8
	.uleb128 0x13
	.long	.LASF50
	.byte	0x1
	.byte	0x14
	.long	0x1c2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Button_2
	.uleb128 0x14
	.byte	0x1
	.long	.LASF51
	.byte	0x6
	.byte	0x19
	.byte	0x1
	.byte	0x1
	.long	0x2f0
	.uleb128 0x15
	.long	0x200
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF52
	.byte	0x5
	.byte	0x21
	.byte	0x1
	.byte	0x1
	.long	0x304
	.uleb128 0x15
	.long	0x304
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x1c2
	.uleb128 0x16
	.byte	0x1
	.long	.LASF56
	.byte	0x5
	.byte	0x22
	.byte	0x1
	.long	0x162
	.byte	0x1
	.long	0x322
	.uleb128 0x15
	.long	0x304
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF57
	.byte	0x6
	.byte	0x1c
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.long	0x200
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x24
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF51:
	.string	"Led_Start"
.LASF24:
	.string	"INPUT_Pullup"
.LASF30:
	.string	"Released"
.LASF25:
	.string	"GPIO_pin_Type"
.LASF35:
	.string	"Button_Pre_Level"
.LASF28:
	.string	"Not_Pressed"
.LASF34:
	.string	"Button_mode"
.LASF5:
	.string	"short int"
.LASF26:
	.string	"HIGH"
.LASF42:
	.string	"LED_FW_OFF"
.LASF36:
	.string	"Button_PrevState"
.LASF57:
	.string	"Led_Toggle"
.LASF41:
	.string	"Led_Data"
.LASF39:
	.string	"LED_pin"
.LASF54:
	.string	"../APP/GPIO_App/LED_Relay_Buzzer_Button_SevenSegment_Control.c"
.LASF56:
	.string	"Butt_Switch_Read"
.LASF49:
	.string	"LED_8"
.LASF47:
	.string	"GPIO_APP_init"
.LASF8:
	.string	"float"
.LASF12:
	.string	"GPIO_Register"
.LASF7:
	.string	"long long int"
.LASF6:
	.string	"long int"
.LASF52:
	.string	"Butt_Switch_init"
.LASF27:
	.string	"Digital_pinState"
.LASF29:
	.string	"Pressed"
.LASF44:
	.string	"LED_REV_ON"
.LASF10:
	.string	"PORT"
.LASF0:
	.string	"unsigned char"
.LASF53:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega32 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF11:
	.string	"uint_8"
.LASF4:
	.string	"signed char"
.LASF3:
	.string	"long long unsigned int"
.LASF45:
	.string	"LED_REV_OFF"
.LASF46:
	.string	"unsigned int"
.LASF40:
	.string	"LED_Init_State"
.LASF48:
	.string	"GPIO_APP_Control"
.LASF1:
	.string	"short unsigned int"
.LASF22:
	.string	"OUTPUT"
.LASF32:
	.string	"Button_port"
.LASF37:
	.string	"Push_Sw_Datatype"
.LASF33:
	.string	"Button_pin"
.LASF23:
	.string	"INPUT_Float"
.LASF38:
	.string	"LED_port"
.LASF43:
	.string	"LED_FW_ON"
.LASF2:
	.string	"long unsigned int"
.LASF9:
	.string	"double"
.LASF50:
	.string	"Button_2"
.LASF55:
	.string	"C:\\\\Users\\\\Mahm Oud Sa Ad\\\\Desktop\\\\Embedded Data\\\\Driver_To_Finish\\\\AVR_32_Driver\\\\AVR_32_Driver\\\\Debug"
.LASF31:
	.string	"Push_Button_State"
.LASF21:
	.string	"GPIO_pin_number"
.LASF13:
	.string	"PIN0"
.LASF14:
	.string	"PIN1"
.LASF15:
	.string	"PIN2"
.LASF16:
	.string	"PIN3"
.LASF17:
	.string	"PIN4"
.LASF18:
	.string	"PIN5"
.LASF19:
	.string	"PIN6"
.LASF20:
	.string	"PIN7"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
