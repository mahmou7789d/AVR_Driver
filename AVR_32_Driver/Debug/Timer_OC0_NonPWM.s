	.file	"Timer_OC0_NonPWM.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata
.LC0:
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	1
	.section	.text.Timer_OC0_NonPWM,"ax",@progbits
.global	Timer_OC0_NonPWM
	.type	Timer_OC0_NonPWM, @function
Timer_OC0_NonPWM:
.LFB0:
	.file 1 "../APP/Timer_OC0_NonPWM/Timer_OC0_NonPWM.c"
	.loc 1 13 0
	.cfi_startproc
	push r28
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
	rcall .
	rcall .
	push __zero_reg__
.LCFI2:
	.cfi_def_cfa_offset 9
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI3:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 5 */
/* stack size = 7 */
.L__stack_usage = 7
	.loc 1 14 0
	ldi r24,lo8(5)
	ldi r30,lo8(.LC0)
	ldi r31,hi8(.LC0)
	movw r26,r28
	adiw r26,1
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	.loc 1 15 0
	ldi r18,lo8(-6)
	ldd r20,Y+1
	ldd r21,Y+2
	ldd r22,Y+3
	ldd r23,Y+4
	ldd r24,Y+5
	call TIMER_Init
.LVL0:
/* epilogue start */
	.loc 1 16 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE0:
	.size	Timer_OC0_NonPWM, .-Timer_OC0_NonPWM
	.text
.Letext0:
	.file 2 "../Services/STD_Types.h"
	.file 3 "../MCAL/Timer 0,2/Timer0.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x239
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF51
	.byte	0x1
	.long	.LASF52
	.long	.LASF53
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF13
	.byte	0x2
	.byte	0xd
	.long	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF10
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0xce
	.long	0x96
	.uleb128 0x5
	.long	.LASF11
	.sleb128 0
	.uleb128 0x5
	.long	.LASF12
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF14
	.byte	0x3
	.byte	0xd1
	.long	0x81
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0xd2
	.long	0xc2
	.uleb128 0x5
	.long	.LASF15
	.sleb128 0
	.uleb128 0x5
	.long	.LASF16
	.sleb128 1
	.uleb128 0x5
	.long	.LASF17
	.sleb128 2
	.uleb128 0x5
	.long	.LASF18
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.long	.LASF19
	.byte	0x3
	.byte	0xd7
	.long	0xa1
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0xd9
	.long	0x118
	.uleb128 0x5
	.long	.LASF20
	.sleb128 0
	.uleb128 0x5
	.long	.LASF21
	.sleb128 1
	.uleb128 0x5
	.long	.LASF22
	.sleb128 2
	.uleb128 0x5
	.long	.LASF23
	.sleb128 3
	.uleb128 0x5
	.long	.LASF24
	.sleb128 4
	.uleb128 0x5
	.long	.LASF25
	.sleb128 5
	.uleb128 0x5
	.long	.LASF26
	.sleb128 6
	.uleb128 0x5
	.long	.LASF27
	.sleb128 7
	.uleb128 0x5
	.long	.LASF28
	.sleb128 8
	.uleb128 0x5
	.long	.LASF29
	.sleb128 9
	.uleb128 0x5
	.long	.LASF30
	.sleb128 10
	.byte	0
	.uleb128 0x2
	.long	.LASF31
	.byte	0x3
	.byte	0xe5
	.long	0xcd
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0xe8
	.long	0x13e
	.uleb128 0x5
	.long	.LASF32
	.sleb128 0
	.uleb128 0x5
	.long	.LASF33
	.sleb128 1
	.uleb128 0x5
	.long	.LASF34
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.long	.LASF35
	.byte	0x3
	.byte	0xec
	.long	0x123
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0xef
	.long	0x182
	.uleb128 0x5
	.long	.LASF36
	.sleb128 0
	.uleb128 0x5
	.long	.LASF37
	.sleb128 1
	.uleb128 0x5
	.long	.LASF38
	.sleb128 2
	.uleb128 0x5
	.long	.LASF39
	.sleb128 3
	.uleb128 0x5
	.long	.LASF40
	.sleb128 4
	.uleb128 0x5
	.long	.LASF41
	.sleb128 5
	.uleb128 0x5
	.long	.LASF42
	.sleb128 6
	.uleb128 0x5
	.long	.LASF43
	.sleb128 7
	.byte	0
	.uleb128 0x2
	.long	.LASF44
	.byte	0x3
	.byte	0xf8
	.long	0x149
	.uleb128 0x6
	.byte	0x5
	.byte	0x3
	.word	0x100
	.long	0x1e2
	.uleb128 0x7
	.long	.LASF45
	.byte	0x3
	.word	0x102
	.long	0x96
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.long	.LASF46
	.byte	0x3
	.word	0x103
	.long	0xc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.long	.LASF47
	.byte	0x3
	.word	0x104
	.long	0x118
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.long	.LASF48
	.byte	0x3
	.word	0x105
	.long	0x13e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x7
	.long	.LASF49
	.byte	0x3
	.word	0x106
	.long	0x182
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x8
	.long	.LASF50
	.byte	0x3
	.word	0x107
	.long	0x18d
	.uleb128 0x9
	.byte	0x1
	.long	.LASF54
	.byte	0x1
	.byte	0xc
	.long	.LFB0
	.long	.LFE0
	.long	.LLST0
	.byte	0x1
	.long	0x226
	.uleb128 0xa
	.long	.LASF55
	.byte	0x1
	.byte	0xe
	.long	0x1e2
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0xb
	.long	.LVL0
	.long	0x226
	.uleb128 0xc
	.byte	0x1
	.byte	0x62
	.byte	0x2
	.byte	0x9
	.byte	0xfa
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF56
	.byte	0x3
	.word	0x109
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x1e2
	.uleb128 0xe
	.long	0x29
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
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB0
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI3
	.long	.LFE0
	.word	0x2
	.byte	0x8c
	.sleb128 9
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB0
	.long	.LFE0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.string	"Timer_CLK_Source_selection"
.LASF29:
	.string	"External_Clock_Rising_edge"
.LASF54:
	.string	"Timer_OC0_NonPWM"
.LASF27:
	.string	"Clk_1024"
.LASF6:
	.string	"short int"
.LASF16:
	.string	"CTC_mode"
.LASF41:
	.string	"inverting_mode"
.LASF18:
	.string	"FastPWM_mode"
.LASF52:
	.string	"../APP/Timer_OC0_NonPWM/Timer_OC0_NonPWM.c"
.LASF43:
	.string	"Set_upCount_Clear_DownCount"
.LASF28:
	.string	"External_Clock_falling_edge"
.LASF11:
	.string	"Timer0"
.LASF12:
	.string	"Timer2"
.LASF40:
	.string	"NON_inverting_mode"
.LASF23:
	.string	"CLK_32"
.LASF39:
	.string	"OC_SetOn_Compare_match"
.LASF9:
	.string	"float"
.LASF8:
	.string	"long long int"
.LASF26:
	.string	"Clk_256"
.LASF7:
	.string	"long int"
.LASF37:
	.string	"OC_Toggle"
.LASF56:
	.string	"TIMER_Init"
.LASF15:
	.string	"Normal_mode"
.LASF50:
	.string	"TIMER_DataType"
.LASF45:
	.string	"Timer_Number"
.LASF53:
	.string	"C:\\\\Users\\\\Mahm Oud Sa Ad\\\\OneDrive - Higher Technological Institute\\\\Desktop\\\\Embedded Data\\\\Driver_To_Finish\\\\AVR_32_Driver\\\\AVR_32_Driver\\\\Debug"
.LASF1:
	.string	"unsigned char"
.LASF51:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega32 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF13:
	.string	"uint_8"
.LASF5:
	.string	"signed char"
.LASF14:
	.string	"Timer_Number_Selection"
.LASF4:
	.string	"long long unsigned int"
.LASF46:
	.string	"Timer_mode"
.LASF36:
	.string	"OC_Disconnected"
.LASF34:
	.string	"Timer_OutPut_Compare_match"
.LASF19:
	.string	"Timer_mode_selection"
.LASF24:
	.string	"Clk_64"
.LASF47:
	.string	"Timer_CLK"
.LASF2:
	.string	"short unsigned int"
.LASF55:
	.string	"Counter_2"
.LASF44:
	.string	"OC_behavior"
.LASF0:
	.string	"char"
.LASF25:
	.string	"CLK_128"
.LASF32:
	.string	"Timer_No_Interrupt"
.LASF22:
	.string	"Clk_8"
.LASF30:
	.string	"Timer2_OneSec_CLK"
.LASF3:
	.string	"long unsigned int"
.LASF10:
	.string	"double"
.LASF20:
	.string	"No_Clock_source"
.LASF38:
	.string	"OC_ClearOn_Compare_match"
.LASF35:
	.string	"Timer_Interrupt_Source"
.LASF42:
	.string	"Clear_upCount_Set_DownCount"
.LASF33:
	.string	"Timer_Overflow_Interrupt"
.LASF21:
	.string	"No_Prescaling"
.LASF48:
	.string	"Timer_INT_source"
.LASF17:
	.string	"PhaseCorrectPWM_mode"
.LASF49:
	.string	"OC_Pin_State"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
