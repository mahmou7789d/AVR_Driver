	.file	"LM35OnLCD.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"temperature="
	.section	.text.LM35OnLCD_INIT,"ax",@progbits
.global	LM35OnLCD_INIT
	.type	LM35OnLCD_INIT, @function
LM35OnLCD_INIT:
.LFB6:
	.file 1 "../APP/LM35 On LCD/LM35OnLCD.c"
	.loc 1 13 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 14 0
	call LCD_Init
.LVL0:
	.loc 1 15 0
	lds r20,ADC_PIN
	lds r21,ADC_PIN+1
	lds r22,ADC_PIN+2
	lds r23,ADC_PIN+3
	lds r24,ADC_PIN+4
	lds r25,ADC_PIN+5
	call ADC_Init
.LVL1:
	.loc 1 16 0
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	jmp Send_String_LCD
.LVL2:
	.cfi_endproc
.LFE6:
	.size	LM35OnLCD_INIT, .-LM35OnLCD_INIT
.global	__floatunsisf
.global	__mulsf3
.global	__fixunssfsi
	.section	.text.LM35OnLCD_Control,"ax",@progbits
.global	LM35OnLCD_Control
	.type	LM35OnLCD_Control, @function
LM35OnLCD_Control:
.LFB7:
	.loc 1 20 0
	.cfi_startproc
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
.LVL3:
	.loc 1 23 0
	lds r20,ADC_PIN
	cpi r20,lo8(8)
	brlo .L4
	cpi r20,lo8(8)
	brne .L2
	.loc 1 55 0
	ldi r20,lo8(8)
	lds r21,ADC_PIN+1
	lds r22,ADC_PIN+2
	lds r23,ADC_PIN+3
	lds r24,ADC_PIN+4
	lds r25,ADC_PIN+5
	call ADC_Read
.LVL4:
	movw r22,r24
	ldi r24,0
	ldi r25,0
.LVL5:
	call __floatunsisf
.LVL6:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(32)
	ldi r21,lo8(64)
	call __mulsf3
.LVL7:
	call __fixunssfsi
.LVL8:
	.loc 1 79 0
	ldi r24,lo8(-24)
	ldi r25,lo8(3)
	sub r24,r22
	sbc r25,__zero_reg__
	ldi r22,lo8(10)
	ldi r23,0
	call __divmodhi4
	mov r28,r22
.LVL9:
	.loc 1 89 0
	cpi r22,lo8(100)
	brne .L15
.LVL10:
.L2:
/* epilogue start */
	.loc 1 104 0
	pop r29
	pop r28
	ret
.LVL11:
.L4:
	.loc 1 33 0
	lds r21,ADC_PIN+1
	lds r22,ADC_PIN+2
	lds r23,ADC_PIN+3
	lds r24,ADC_PIN+4
	lds r25,ADC_PIN+5
	call ADC_Read
.LVL12:
	movw r22,r24
	ldi r24,0
	ldi r25,0
	call __floatunsisf
.LVL13:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-128)
	ldi r21,lo8(62)
	call __mulsf3
.LVL14:
	call __fixunssfsi
.LVL15:
	mov r28,r22
.LVL16:
	.loc 1 34 0
	cpi r22,lo8(10)
	brlo .L16
	.loc 1 43 0
	cpi r22,lo8(100)
	brsh .L2
	.loc 1 45 0
	ldi r22,lo8(13)
.LVL17:
	ldi r24,lo8(1)
	call Move_Curser_LCD
.LVL18:
	rjmp .L13
.LVL19:
.L15:
	.loc 1 91 0
	ldi r22,lo8(13)
.LVL20:
	ldi r24,lo8(1)
	call Move_Curser_LCD
.LVL21:
	.loc 1 92 0
	ldi r24,lo8(45)
	call Send_char_LCD
.LVL22:
.L13:
	.loc 1 93 0
	ldi r29,lo8(-51)
	mul r28,r29
	mov r29,r1
	clr __zero_reg__
	lsr r29
	lsr r29
	lsr r29
	ldi r24,lo8(48)
	add r24,r29
	call Send_char_LCD
.LVL23:
	.loc 1 94 0
	mov r24,r28
	ldi r25,lo8(10)
	mul r29,r25
	sub r24,r0
	clr __zero_reg__
	subi r24,lo8(-(48))
.L12:
	call Send_char_LCD
.LVL24:
	.loc 1 95 0
	ldi r24,lo8(-33)
	call Send_char_LCD
.LVL25:
	.loc 1 96 0
	ldi r24,lo8(67)
	call Send_char_LCD
.LVL26:
	.loc 1 97 0
	ldi r24,lo8(32)
/* epilogue start */
	.loc 1 104 0
	pop r29
	pop r28
.LVL27:
	.loc 1 97 0
	jmp Send_char_LCD
.LVL28:
.L16:
	.loc 1 36 0
	ldi r22,lo8(13)
.LVL29:
	ldi r24,lo8(1)
	call Move_Curser_LCD
.LVL30:
	.loc 1 38 0
	ldi r24,lo8(48)
	add r24,r28
	rjmp .L12
	.cfi_endproc
.LFE7:
	.size	LM35OnLCD_Control, .-LM35OnLCD_Control
.global	ADC_PIN
	.section	.data.ADC_PIN,"aw",@progbits
	.type	ADC_PIN, @object
	.size	ADC_PIN, 6
ADC_PIN:
	.byte	0
	.byte	1
	.byte	2
	.byte	5
	.byte	0
	.byte	0
	.text
.Letext0:
	.file 2 "../Services/STD_Types.h"
	.file 3 "../MCAL/DIO/GPIO.h"
	.file 4 "../MCAL/ADC/ADC_File.h"
	.file 5 "../HAL/LCD_Screen/LCD.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3fd
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF65
	.byte	0x1
	.long	.LASF66
	.long	.LASF67
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x3
	.long	.LASF4
	.byte	0x2
	.byte	0xd
	.long	0x49
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x3
	.long	.LASF5
	.byte	0x2
	.byte	0xf
	.long	0x5b
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF13
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x19
	.long	0xd2
	.uleb128 0x5
	.long	.LASF14
	.sleb128 0
	.uleb128 0x5
	.long	.LASF15
	.sleb128 1
	.uleb128 0x5
	.long	.LASF16
	.sleb128 2
	.uleb128 0x5
	.long	.LASF17
	.sleb128 3
	.uleb128 0x5
	.long	.LASF18
	.sleb128 4
	.uleb128 0x5
	.long	.LASF19
	.sleb128 5
	.uleb128 0x5
	.long	.LASF20
	.sleb128 6
	.uleb128 0x5
	.long	.LASF21
	.sleb128 7
	.uleb128 0x5
	.long	.LASF22
	.sleb128 8
	.byte	0
	.uleb128 0x3
	.long	.LASF23
	.byte	0x3
	.byte	0x23
	.long	0x93
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x13
	.long	0xff
	.uleb128 0x5
	.long	.LASF24
	.sleb128 0
	.uleb128 0x5
	.long	.LASF25
	.sleb128 1
	.uleb128 0x5
	.long	.LASF26
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.long	.LASF27
	.byte	0x4
	.byte	0x17
	.long	0xe4
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x1a
	.long	0x13d
	.uleb128 0x5
	.long	.LASF28
	.sleb128 0
	.uleb128 0x5
	.long	.LASF29
	.sleb128 1
	.uleb128 0x5
	.long	.LASF30
	.sleb128 2
	.uleb128 0x5
	.long	.LASF31
	.sleb128 3
	.uleb128 0x5
	.long	.LASF32
	.sleb128 4
	.uleb128 0x5
	.long	.LASF33
	.sleb128 5
	.uleb128 0x5
	.long	.LASF34
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.long	.LASF35
	.byte	0x4
	.byte	0x22
	.long	0x10a
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x25
	.long	0x15d
	.uleb128 0x5
	.long	.LASF36
	.sleb128 0
	.uleb128 0x5
	.long	.LASF37
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.long	.LASF38
	.byte	0x4
	.byte	0x28
	.long	0x148
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2b
	.long	0x1a1
	.uleb128 0x5
	.long	.LASF39
	.sleb128 0
	.uleb128 0x5
	.long	.LASF40
	.sleb128 1
	.uleb128 0x5
	.long	.LASF41
	.sleb128 2
	.uleb128 0x5
	.long	.LASF42
	.sleb128 3
	.uleb128 0x5
	.long	.LASF43
	.sleb128 4
	.uleb128 0x5
	.long	.LASF44
	.sleb128 5
	.uleb128 0x5
	.long	.LASF45
	.sleb128 6
	.uleb128 0x5
	.long	.LASF46
	.sleb128 7
	.byte	0
	.uleb128 0x3
	.long	.LASF47
	.byte	0x4
	.byte	0x34
	.long	0x168
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x37
	.long	0x1c1
	.uleb128 0x5
	.long	.LASF48
	.sleb128 0
	.uleb128 0x5
	.long	.LASF49
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.long	.LASF50
	.byte	0x4
	.byte	0x3a
	.long	0x1ac
	.uleb128 0x7
	.byte	0x6
	.byte	0x4
	.byte	0x3c
	.long	0x229
	.uleb128 0x8
	.long	.LASF51
	.byte	0x4
	.byte	0x3e
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF52
	.byte	0x4
	.byte	0x3f
	.long	0x15d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF53
	.byte	0x4
	.byte	0x40
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF54
	.byte	0x4
	.byte	0x41
	.long	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.long	.LASF55
	.byte	0x4
	.byte	0x42
	.long	0x1a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF56
	.byte	0x4
	.byte	0x43
	.long	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.long	.LASF57
	.byte	0x4
	.byte	0x44
	.long	0x1cc
	.uleb128 0x9
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.byte	0xc
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x279
	.uleb128 0xa
	.long	.LVL0
	.long	0x387
	.uleb128 0xa
	.long	.LVL1
	.long	0x391
	.uleb128 0xb
	.long	.LVL2
	.byte	0x1
	.long	0x3a5
	.uleb128 0xc
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	.LC0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF59
	.byte	0x1
	.byte	0x13
	.long	.LFB7
	.long	.LFE7
	.long	.LLST0
	.byte	0x1
	.long	0x375
	.uleb128 0xe
	.long	.LASF60
	.byte	0x1
	.byte	0x15
	.long	0x3e
	.long	.LLST1
	.uleb128 0xe
	.long	.LASF61
	.byte	0x1
	.byte	0x16
	.long	0x3e
	.long	.LLST2
	.uleb128 0xa
	.long	.LVL4
	.long	0x3bf
	.uleb128 0xa
	.long	.LVL12
	.long	0x3bf
	.uleb128 0xf
	.long	.LVL18
	.long	0x3d7
	.long	0x2da
	.uleb128 0xc
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0xc
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x3d
	.byte	0
	.uleb128 0xf
	.long	.LVL21
	.long	0x3d7
	.long	0x2f2
	.uleb128 0xc
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0xc
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x3d
	.byte	0
	.uleb128 0xf
	.long	.LVL22
	.long	0x3f0
	.long	0x306
	.uleb128 0xc
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0xf
	.long	.LVL23
	.long	0x3f0
	.long	0x31a
	.uleb128 0xc
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 48
	.byte	0
	.uleb128 0xa
	.long	.LVL24
	.long	0x3f0
	.uleb128 0xf
	.long	.LVL25
	.long	0x3f0
	.long	0x337
	.uleb128 0xc
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xdf
	.byte	0
	.uleb128 0xf
	.long	.LVL26
	.long	0x3f0
	.long	0x34b
	.uleb128 0xc
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x43
	.byte	0
	.uleb128 0x10
	.long	.LVL28
	.byte	0x1
	.long	0x3f0
	.long	0x360
	.uleb128 0xc
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.long	.LVL30
	.long	0x3d7
	.uleb128 0xc
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0xc
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x3d
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF68
	.byte	0x1
	.byte	0xb
	.long	0x229
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ADC_PIN
	.uleb128 0x13
	.byte	0x1
	.long	.LASF69
	.byte	0x5
	.byte	0x43
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.byte	0x1
	.long	.LASF62
	.byte	0x4
	.byte	0x46
	.byte	0x1
	.byte	0x1
	.long	0x3a5
	.uleb128 0x15
	.long	0x229
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF63
	.byte	0x5
	.byte	0x48
	.byte	0x1
	.byte	0x1
	.long	0x3b9
	.uleb128 0x15
	.long	0x3b9
	.byte	0
	.uleb128 0x16
	.byte	0x2
	.long	0x3e
	.uleb128 0x17
	.byte	0x1
	.long	.LASF70
	.byte	0x4
	.byte	0x47
	.byte	0x1
	.long	0x50
	.byte	0x1
	.long	0x3d7
	.uleb128 0x15
	.long	0x229
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF64
	.byte	0x5
	.byte	0x46
	.byte	0x1
	.byte	0x1
	.long	0x3f0
	.uleb128 0x15
	.long	0x3e
	.uleb128 0x15
	.long	0x3e
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF71
	.byte	0x5
	.byte	0x45
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.long	0x3e
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
	.uleb128 0x3
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB7
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
	.long	.LFE7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST1:
	.long	.LVL3
	.long	.LVL9
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL9
	.long	.LVL10
	.word	0x1
	.byte	0x66
	.long	.LVL11
	.long	.LVL16
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL16
	.long	.LVL17
	.word	0x1
	.byte	0x66
	.long	.LVL17
	.long	.LVL19
	.word	0x1
	.byte	0x6c
	.long	.LVL19
	.long	.LVL20
	.word	0x1
	.byte	0x66
	.long	.LVL20
	.long	.LVL27
	.word	0x1
	.byte	0x6c
	.long	.LVL28
	.long	.LVL29
	.word	0x1
	.byte	0x66
	.long	.LVL29
	.long	.LFE7
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST2:
	.long	.LVL3
	.long	.LVL4
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL4
	.long	.LVL5
	.word	0x13
	.byte	0x88
	.sleb128 0
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.long	0x40200000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.long	.LVL5
	.long	.LVL6-1
	.word	0x13
	.byte	0x86
	.sleb128 0
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.long	0x40200000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x37
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.long	.LVL11
	.long	.LVL19
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL28
	.long	.LFE7
	.word	0x2
	.byte	0x30
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
.LASF39:
	.string	"FreeRunningMode"
.LASF68:
	.string	"ADC_PIN"
.LASF45:
	.string	"TimerCounter1Overflow"
.LASF26:
	.string	"Internal_Volt"
.LASF10:
	.string	"short int"
.LASF70:
	.string	"ADC_Read"
.LASF66:
	.string	"../APP/LM35 On LCD/LM35OnLCD.c"
.LASF33:
	.string	"ADC_Clk_64"
.LASF53:
	.string	"Vref"
.LASF49:
	.string	"Adjust_Left"
.LASF52:
	.string	"ADC_INT_State"
.LASF43:
	.string	"TimerCounter0Overflow"
.LASF5:
	.string	"uint_16"
.LASF48:
	.string	"Adjust_Right"
.LASF22:
	.string	"ADC_Diff_Mode"
.LASF61:
	.string	"volt"
.LASF40:
	.string	"AnalogComparator"
.LASF47:
	.string	"Auto_Trigger_Source"
.LASF41:
	.string	"ExternalInterruptRequest0"
.LASF0:
	.string	"float"
.LASF32:
	.string	"ADC_Clk_32"
.LASF63:
	.string	"Send_String_LCD"
.LASF12:
	.string	"long long int"
.LASF25:
	.string	"VACC_Volt"
.LASF54:
	.string	"ADC_Prescaler"
.LASF11:
	.string	"long int"
.LASF55:
	.string	"ADC_Conversion_Types"
.LASF51:
	.string	"ADC_Pin"
.LASF58:
	.string	"LM35OnLCD_INIT"
.LASF44:
	.string	"TimerCounterCompareMatchB"
.LASF64:
	.string	"Move_Curser_LCD"
.LASF69:
	.string	"LCD_Init"
.LASF67:
	.string	"C:\\\\Users\\\\Mahm Oud Sa Ad\\\\OneDrive - Higher Technological Institute\\\\Desktop\\\\Embedded Data\\\\Driver_To_Finish\\\\AVR_32_Driver\\\\AVR_32_Driver\\\\Debug"
.LASF2:
	.string	"unsigned char"
.LASF65:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega32 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF42:
	.string	"TimerCounter0CompareMatch"
.LASF50:
	.string	"ADLAR_Adjust_Results"
.LASF4:
	.string	"uint_8"
.LASF9:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned int"
.LASF36:
	.string	"ADC_Enabled_INT"
.LASF56:
	.string	"ADC_Adjust"
.LASF27:
	.string	"Voltage_Referance_Source"
.LASF6:
	.string	"short unsigned int"
.LASF3:
	.string	"char"
.LASF35:
	.string	"ADC_Prescalar_Value"
.LASF28:
	.string	"ADC_Clk_2"
.LASF46:
	.string	"TimerCounter1CaptureEvent"
.LASF29:
	.string	"ADC_Clk_4"
.LASF30:
	.string	"ADC_Clk_8"
.LASF57:
	.string	"ADC_Pin_Data"
.LASF37:
	.string	"ADC_Disabled_INT"
.LASF38:
	.string	"ADC_Inerrupt_state"
.LASF7:
	.string	"long unsigned int"
.LASF13:
	.string	"double"
.LASF59:
	.string	"LM35OnLCD_Control"
.LASF31:
	.string	"ADC_Clk_16"
.LASF34:
	.string	"ADC_Clk_128"
.LASF60:
	.string	"Temp"
.LASF24:
	.string	"VREF_Volt"
.LASF71:
	.string	"Send_char_LCD"
.LASF62:
	.string	"ADC_Init"
.LASF23:
	.string	"GPIO_pin_number"
.LASF14:
	.string	"PIN0"
.LASF15:
	.string	"PIN1"
.LASF16:
	.string	"PIN2"
.LASF17:
	.string	"PIN3"
.LASF18:
	.string	"PIN4"
.LASF19:
	.string	"PIN5"
.LASF20:
	.string	"PIN6"
.LASF21:
	.string	"PIN7"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
