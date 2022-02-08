	.file	"Push Button.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Butt_Switch_init,"ax",@progbits
.global	Butt_Switch_init
	.type	Butt_Switch_init, @function
Butt_Switch_init:
.LFB6:
	.file 1 "../HAL/Push Button/Push Button.c"
	.loc 1 14 0
	.cfi_startproc
.LVL0:
	push r28
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	.loc 1 15 0
	ldd r20,Y+3
	tst r20
	breq .L1
	.loc 1 21 0
	ldd r22,Y+2
	ld r24,Y
	ldd r25,Y+1
.LVL1:
	call GPIO_Pin_Configuration
.LVL2:
	.loc 1 22 0
	ldd r22,Y+2
	ld r24,Y
	ldd r25,Y+1
	call GPIO_Pin_Read
.LVL3:
	std Y+4,r24
	.loc 1 23 0
	sts Button_Default_State,r24
	.loc 1 24 0
	std Y+5,__zero_reg__
.L1:
/* epilogue start */
	.loc 1 26 0
	pop r29
	pop r28
.LVL4:
	ret
	.cfi_endproc
.LFE6:
	.size	Butt_Switch_init, .-Butt_Switch_init
	.section	.text.Butt_Switch_Read,"ax",@progbits
.global	Butt_Switch_Read
	.type	Butt_Switch_Read, @function
Butt_Switch_Read:
.LFB7:
	.loc 1 28 0
	.cfi_startproc
.LVL5:
	push r17
.LCFI2:
	.cfi_def_cfa_offset 3
	.cfi_offset 17, -2
	push r28
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI4:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r28,r24
.LVL6:
	.loc 1 30 0
	ldd r17,Y+4
	ldd r22,Y+2
	ld r24,Y
	ldd r25,Y+1
.LVL7:
	call GPIO_Pin_Read
.LVL8:
	cp r17,r24
	breq .L10
.LVL9:
.LBB4:
.LBB5:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
	.loc 2 163 0
	ldi r18,lo8(159999)
	ldi r24,hi8(159999)
	ldi r25,hlo8(159999)
	1: subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
.LBE5:
.LBE4:
	.loc 1 33 0
	ldd r17,Y+4
	ldd r22,Y+2
	ld r24,Y
	ldd r25,Y+1
	call GPIO_Pin_Read
.LVL10:
	cp r17,r24
	breq .L10
	.loc 1 35 0
	ldd r22,Y+2
	ld r24,Y
	ldd r25,Y+1
	call GPIO_Pin_Read
.LVL11:
	std Y+4,r24
	.loc 1 36 0
	lds r25,Button_Default_State
	cp r24,r25
	breq .L11
	.loc 1 38 0
	ldi r24,lo8(1)
.LVL12:
/* epilogue start */
	.loc 1 47 0
	pop r29
	pop r28
.LVL13:
	pop r17
	ret
.LVL14:
.L10:
	.loc 1 29 0
	ldi r24,0
.LVL15:
/* epilogue start */
	.loc 1 47 0
	pop r29
	pop r28
.LVL16:
	pop r17
	ret
.LVL17:
.L11:
	.loc 1 42 0
	ldi r24,lo8(2)
.LVL18:
/* epilogue start */
	.loc 1 47 0
	pop r29
	pop r28
.LVL19:
	pop r17
	ret
	.cfi_endproc
.LFE7:
	.size	Butt_Switch_Read, .-Butt_Switch_Read
	.section	.bss.Button_Default_State,"aw",@nobits
	.type	Button_Default_State, @object
	.size	Button_Default_State, 1
Button_Default_State:
	.zero	1
	.text
.Letext0:
	.file 3 "../Services/AVR_32_Registers.h"
	.file 4 "../Services/STD_Types.h"
	.file 5 "../MCAL/DIO/GPIO.h"
	.file 6 "../HAL/Push Button/Push Button.h"
	.file 7 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x344
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF49
	.byte	0x1
	.long	.LASF50
	.long	.LASF51
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
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
	.byte	0x3
	.byte	0x3
	.byte	0x12
	.long	0xb4
	.uleb128 0x5
	.string	"PIN"
	.byte	0x3
	.byte	0x14
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"DDR"
	.byte	0x3
	.byte	0x15
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.long	.LASF11
	.byte	0x3
	.byte	0x16
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.long	0x29
	.uleb128 0x2
	.long	.LASF13
	.byte	0x3
	.byte	0x17
	.long	0x81
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0x10
	.long	0xdf
	.uleb128 0x9
	.long	.LASF14
	.sleb128 0
	.uleb128 0x9
	.long	.LASF15
	.sleb128 1
	.uleb128 0x9
	.long	.LASF16
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.long	.LASF17
	.byte	0x5
	.byte	0x14
	.long	0xc4
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0x15
	.long	0xff
	.uleb128 0xa
	.string	"LOW"
	.sleb128 0
	.uleb128 0x9
	.long	.LASF18
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF19
	.byte	0x5
	.byte	0x18
	.long	0xea
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0x19
	.long	0x149
	.uleb128 0x9
	.long	.LASF20
	.sleb128 0
	.uleb128 0x9
	.long	.LASF21
	.sleb128 1
	.uleb128 0x9
	.long	.LASF22
	.sleb128 2
	.uleb128 0x9
	.long	.LASF23
	.sleb128 3
	.uleb128 0x9
	.long	.LASF24
	.sleb128 4
	.uleb128 0x9
	.long	.LASF25
	.sleb128 5
	.uleb128 0x9
	.long	.LASF26
	.sleb128 6
	.uleb128 0x9
	.long	.LASF27
	.sleb128 7
	.uleb128 0x9
	.long	.LASF28
	.sleb128 8
	.byte	0
	.uleb128 0x2
	.long	.LASF29
	.byte	0x5
	.byte	0x23
	.long	0x10a
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.byte	0x13
	.long	0x16f
	.uleb128 0x9
	.long	.LASF30
	.sleb128 0
	.uleb128 0x9
	.long	.LASF31
	.sleb128 1
	.uleb128 0x9
	.long	.LASF32
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.long	.LASF33
	.byte	0x6
	.byte	0x17
	.long	0x154
	.uleb128 0x4
	.byte	0x6
	.byte	0x6
	.byte	0x18
	.long	0x1c9
	.uleb128 0x6
	.long	.LASF34
	.byte	0x6
	.byte	0x1a
	.long	0x1c9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF35
	.byte	0x6
	.byte	0x1b
	.long	0x149
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.long	.LASF36
	.byte	0x6
	.byte	0x1c
	.long	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x6
	.long	.LASF37
	.byte	0x6
	.byte	0x1d
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.long	.LASF38
	.byte	0x6
	.byte	0x1e
	.long	0x16f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0xb9
	.uleb128 0x2
	.long	.LASF39
	.byte	0x6
	.byte	0x1f
	.long	0x17a
	.uleb128 0xc
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF40
	.uleb128 0x2
	.long	.LASF41
	.byte	0x7
	.byte	0x7e
	.long	0x49
	.uleb128 0xd
	.long	.LASF52
	.byte	0x2
	.byte	0x8e
	.byte	0x1
	.byte	0x3
	.long	0x22c
	.uleb128 0xe
	.long	.LASF53
	.byte	0x2
	.byte	0x8e
	.long	0x7a
	.uleb128 0xf
	.long	.LASF42
	.byte	0x2
	.byte	0x90
	.long	0x7a
	.uleb128 0xf
	.long	.LASF43
	.byte	0x2
	.byte	0x94
	.long	0x1e8
	.uleb128 0x10
	.byte	0x1
	.long	.LASF54
	.byte	0x2
	.byte	0x95
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF55
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.long	.LLST0
	.byte	0x1
	.long	0x268
	.uleb128 0x12
	.long	.LASF44
	.byte	0x1
	.byte	0xd
	.long	0x268
	.long	.LLST1
	.uleb128 0x13
	.long	.LVL2
	.long	0x310
	.uleb128 0x13
	.long	.LVL3
	.long	0x32e
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x1cf
	.uleb128 0x14
	.byte	0x1
	.long	.LASF56
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.long	0x16f
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.byte	0x1
	.long	0x2ff
	.uleb128 0x12
	.long	.LASF44
	.byte	0x1
	.byte	0x1b
	.long	0x268
	.long	.LLST3
	.uleb128 0x15
	.long	.LASF45
	.byte	0x1
	.byte	0x1d
	.long	0x16f
	.long	.LLST4
	.uleb128 0x16
	.long	0x1f3
	.long	.LBB4
	.long	.LBE4
	.byte	0x1
	.byte	0x20
	.long	0x2e3
	.uleb128 0x17
	.long	0x200
	.long	.LLST5
	.uleb128 0x18
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x19
	.long	0x20b
	.long	.LLST6
	.uleb128 0x19
	.long	0x216
	.long	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LVL8
	.long	0x32e
	.uleb128 0x13
	.long	.LVL10
	.long	0x32e
	.uleb128 0x13
	.long	.LVL11
	.long	0x32e
	.byte	0
	.uleb128 0x1a
	.long	.LASF46
	.byte	0x1
	.byte	0xc
	.long	0xff
	.byte	0x5
	.byte	0x3
	.long	Button_Default_State
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF47
	.byte	0x5
	.byte	0x2a
	.byte	0x1
	.byte	0x1
	.long	0x32e
	.uleb128 0x1c
	.long	0x1c9
	.uleb128 0x1c
	.long	0x149
	.uleb128 0x1c
	.long	0xdf
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF48
	.byte	0x5
	.byte	0x2c
	.byte	0x1
	.long	0xff
	.byte	0x1
	.uleb128 0x1c
	.long	0x1c9
	.uleb128 0x1c
	.long	0x149
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
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
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
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB6
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
	.long	.LFE6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1
	.long	.LVL4
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL4
	.long	.LFE6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LFB7
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI4
	.long	.LFE7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST3:
	.long	.LVL5
	.long	.LVL7
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7
	.long	.LVL13
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13
	.long	.LVL14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL14
	.long	.LVL16
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL16
	.long	.LVL17
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL17
	.long	.LVL19
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL19
	.long	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL6
	.long	.LVL12
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL12
	.long	.LVL14
	.word	0x1
	.byte	0x68
	.long	.LVL14
	.long	.LVL15
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL15
	.long	.LVL17
	.word	0x1
	.byte	0x68
	.long	.LVL17
	.long	.LVL18
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL18
	.long	.LFE7
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST5:
	.long	.LVL9
	.long	.LVL14
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x42480000
	.long	.LVL17
	.long	.LFE7
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x42480000
	.long	0
	.long	0
.LLST6:
	.long	.LVL9
	.long	.LVL14
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x49435000
	.long	.LVL17
	.long	.LFE7
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x49435000
	.long	0
	.long	0
.LLST7:
	.long	.LVL9
	.long	.LVL14
	.word	0x6
	.byte	0xc
	.long	0xc3500
	.byte	0x9f
	.long	.LVL17
	.long	.LFE7
	.word	0x6
	.byte	0xc
	.long	0xc3500
	.byte	0x9f
	.long	0
	.long	0
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
.LASF16:
	.string	"INPUT_Pullup"
.LASF32:
	.string	"Released"
.LASF17:
	.string	"GPIO_pin_Type"
.LASF37:
	.string	"Button_Pre_Level"
.LASF30:
	.string	"Not_Pressed"
.LASF36:
	.string	"Button_mode"
.LASF54:
	.string	"__builtin_avr_delay_cycles"
.LASF6:
	.string	"short int"
.LASF42:
	.string	"__tmp"
.LASF18:
	.string	"HIGH"
.LASF38:
	.string	"Button_PrevState"
.LASF28:
	.string	"ADC_Diff_Mode"
.LASF56:
	.string	"Butt_Switch_Read"
.LASF9:
	.string	"float"
.LASF13:
	.string	"GPIO_Register"
.LASF47:
	.string	"GPIO_Pin_Configuration"
.LASF8:
	.string	"long long int"
.LASF7:
	.string	"long int"
.LASF52:
	.string	"_delay_ms"
.LASF46:
	.string	"Button_Default_State"
.LASF19:
	.string	"Digital_pinState"
.LASF31:
	.string	"Pressed"
.LASF51:
	.string	"C:\\\\Users\\\\Mahm Oud Sa Ad\\\\OneDrive - Higher Technological Institute\\\\Desktop\\\\Embedded Data\\\\Driver_To_Finish\\\\AVR_32_Driver\\\\AVR_32_Driver\\\\Debug"
.LASF1:
	.string	"unsigned char"
.LASF49:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega32 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF12:
	.string	"uint_8"
.LASF5:
	.string	"signed char"
.LASF4:
	.string	"long long unsigned int"
.LASF41:
	.string	"uint32_t"
.LASF40:
	.string	"unsigned int"
.LASF11:
	.string	"PORT"
.LASF44:
	.string	"Button"
.LASF2:
	.string	"short unsigned int"
.LASF14:
	.string	"OUTPUT"
.LASF0:
	.string	"char"
.LASF34:
	.string	"Button_port"
.LASF39:
	.string	"Push_Sw_Datatype"
.LASF35:
	.string	"Button_pin"
.LASF45:
	.string	"returnstate"
.LASF15:
	.string	"INPUT_Float"
.LASF3:
	.string	"long unsigned int"
.LASF10:
	.string	"double"
.LASF48:
	.string	"GPIO_Pin_Read"
.LASF53:
	.string	"__ms"
.LASF50:
	.string	"../HAL/Push Button/Push Button.c"
.LASF43:
	.string	"__ticks_dc"
.LASF55:
	.string	"Butt_Switch_init"
.LASF33:
	.string	"Push_Button_State"
.LASF29:
	.string	"GPIO_pin_number"
.LASF20:
	.string	"PIN0"
.LASF21:
	.string	"PIN1"
.LASF22:
	.string	"PIN2"
.LASF23:
	.string	"PIN3"
.LASF24:
	.string	"PIN4"
.LASF25:
	.string	"PIN5"
.LASF26:
	.string	"PIN6"
.LASF27:
	.string	"PIN7"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
