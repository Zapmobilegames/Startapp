	.arch armv5te
	.eabi_attribute 27, 3
	.fpu vfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"startapp_register.cpp"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.rodata
	.align	2
.LC0:
	.ascii	"STARTAPP_VERBOSE\000"
	.align	2
.LC1:
	.ascii	"calling startapp func on main thread: initSDK\000"
	.section	.text._ZL12initSDK_wrapPKcS0_,"ax",%progbits
	.align	2
	.type	_ZL12initSDK_wrapPKcS0_, %function
_ZL12initSDK_wrapPKcS0_:
.LFB33:
	.file 1 "C:\\Marmalade\\6.4\\extensions\\startapp\\source\\generic\\startapp_register.cpp"
	.loc 1 28 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI0:
	sub	sp, sp, #8
.LCFI1:
	.loc 1 30 0
	ldr	r4, .L4
.LPIC3:
	add	r4, pc, r4
	.loc 1 28 0
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	.loc 1 29 0
	ldr	r3, .L4+4
.LPIC0:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, #1
	bl	IwDebugTraceIsChannelOn(PLT)
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L2
	ldr	r3, .L4+8
.LPIC1:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceSetTraceChannel(PLT)
	ldr	r3, .L4+12
.LPIC2:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceLinePrintf(PLT)
.L2:
	.loc 1 30 0
	ldr	r3, .L4+16
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #2
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #0]
	bl	s3eEdkThreadRunOnOS(PLT)
	mov	r3, r0
	.loc 1 31 0
	mov	r0, r3
	add	sp, sp, #8
	ldmfd	sp!, {r4, pc}
.L5:
	.align	2
.L4:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+8)
	.word	.LC0-(.LPIC0+8)
	.word	.LC0-(.LPIC1+8)
	.word	.LC1-(.LPIC2+8)
	.word	initSDK(GOT)
.LFE33:
	.size	_ZL12initSDK_wrapPKcS0_, .-_ZL12initSDK_wrapPKcS0_
	.section	.rodata
	.align	2
.LC2:
	.ascii	"calling startapp func on main thread: Show_Ad\000"
	.section	.text._ZL12Show_Ad_wrapv,"ax",%progbits
	.align	2
	.type	_ZL12Show_Ad_wrapv, %function
_ZL12Show_Ad_wrapv:
.LFB34:
	.loc 1 34 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI2:
	.loc 1 36 0
	ldr	r4, .L9
.LPIC7:
	add	r4, pc, r4
	.loc 1 35 0
	ldr	r3, .L9+4
.LPIC4:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, #1
	bl	IwDebugTraceIsChannelOn(PLT)
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L7
	ldr	r3, .L9+8
.LPIC5:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceSetTraceChannel(PLT)
	ldr	r3, .L9+12
.LPIC6:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceLinePrintf(PLT)
.L7:
	.loc 1 36 0
	ldr	r3, .L9+16
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	bl	s3eEdkThreadRunOnOS(PLT)
	mov	r3, r0
	.loc 1 37 0
	mov	r0, r3
	ldmfd	sp!, {r4, pc}
.L10:
	.align	2
.L9:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC7+8)
	.word	.LC0-(.LPIC4+8)
	.word	.LC0-(.LPIC5+8)
	.word	.LC2-(.LPIC6+8)
	.word	Show_Ad(GOT)
.LFE34:
	.size	_ZL12Show_Ad_wrapv, .-_ZL12Show_Ad_wrapv
	.section	.rodata
	.align	2
.LC3:
	.ascii	"calling startapp func on main thread: Show_SearchBo"
	.ascii	"x\000"
	.section	.text._ZL19Show_SearchBox_wrapb,"ax",%progbits
	.align	2
	.type	_ZL19Show_SearchBox_wrapb, %function
_ZL19Show_SearchBox_wrapb:
.LFB35:
	.loc 1 40 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI3:
	sub	sp, sp, #8
.LCFI4:
	.loc 1 42 0
	ldr	r4, .L14
.LPIC11:
	add	r4, pc, r4
	.loc 1 40 0
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 41 0
	ldr	r3, .L14+4
.LPIC8:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, #1
	bl	IwDebugTraceIsChannelOn(PLT)
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L12
	ldr	r3, .L14+8
.LPIC9:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceSetTraceChannel(PLT)
	ldr	r3, .L14+12
.LPIC10:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceLinePrintf(PLT)
.L12:
	.loc 1 42 0
	ldr	r3, .L14+16
	ldr	r3, [r4, r3]
	mov	r2, r3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	mov	r0, r2
	mov	r1, #1
	mov	r2, r3
	bl	s3eEdkThreadRunOnOS(PLT)
	mov	r3, r0
	.loc 1 43 0
	mov	r0, r3
	add	sp, sp, #8
	ldmfd	sp!, {r4, pc}
.L15:
	.align	2
.L14:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC11+8)
	.word	.LC0-(.LPIC8+8)
	.word	.LC0-(.LPIC9+8)
	.word	.LC3-(.LPIC10+8)
	.word	Show_SearchBox(GOT)
.LFE35:
	.size	_ZL19Show_SearchBox_wrapb, .-_ZL19Show_SearchBox_wrapb
	.section	.rodata
	.align	2
.LC4:
	.ascii	"startapp\000"
	.section	.text._Z19startappRegisterExtv,"ax",%progbits
	.align	2
	.global	_Z19startappRegisterExtv
	.hidden	_Z19startappRegisterExtv
	.type	_Z19startappRegisterExtv, %function
_Z19startappRegisterExtv:
.LFB36:
	.loc 1 52 0
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI5:
	sub	sp, sp, #44
.LCFI6:
.LBB2:
	.loc 1 67 0
	ldr	r2, .L18
.LPIC15:
	add	r2, pc, r2
	.loc 1 55 0
	ldr	r3, .L18+4
.LPIC12:
	add	r3, pc, r3
	str	r3, [sp, #28]
	.loc 1 56 0
	ldr	r3, .L18+8
.LPIC13:
	add	r3, pc, r3
	str	r3, [sp, #32]
	.loc 1 57 0
	ldr	r3, .L18+12
.LPIC14:
	add	r3, pc, r3
	str	r3, [sp, #36]
	.loc 1 62 0
	add	r3, sp, #16
	mov	r1, #0
	str	r1, [r3, #0]
	add	r3, r3, #4
	mov	r1, #0
	str	r1, [r3, #0]
	add	r3, r3, #4
	mov	r1, #0
	str	r1, [r3, #0]
	add	r3, r3, #4
	.loc 1 67 0
	add	r1, sp, #28
	add	ip, sp, #16
	ldr	r3, .L18+16
	ldr	r3, [r2, r3]
	str	r3, [sp, #0]
	ldr	r3, .L18+20
	ldr	r3, [r2, r3]
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp, #8]
	ldr	r3, .L18+24
.LPIC16:
	add	r3, pc, r3
	mov	r0, r3
	mov	r2, #12
	mov	r3, ip
	bl	s3eEdkRegister(PLT)
.LBE2:
	.loc 1 68 0
	add	sp, sp, #44
	ldmfd	sp!, {pc}
.L19:
	.align	2
.L18:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC15+8)
	.word	_ZL12initSDK_wrapPKcS0_-(.LPIC12+8)
	.word	_ZL12Show_Ad_wrapv-(.LPIC13+8)
	.word	_ZL19Show_SearchBox_wrapb-(.LPIC14+8)
	.word	_Z12startappInitv(GOT)
	.word	_Z17startappTerminatev(GOT)
	.word	.LC4-(.LPIC16+8)
.LFE36:
	.size	_Z19startappRegisterExtv, .-_Z19startappRegisterExtv
	.section	.text.RegisterExt,"ax",%progbits
	.align	2
	.global	RegisterExt
	.type	RegisterExt, %function
RegisterExt:
.LFB37:
	.loc 1 87 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI7:
	.loc 1 88 0
	bl	_Z19startappRegisterExtv(PLT)
	.loc 1 89 0
	ldmfd	sp!, {r4, pc}
.LFE37:
	.size	RegisterExt, .-RegisterExt
	.section	.debug_frame,"",%progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.byte	0xe
	.byte	0xc
	.uleb128 0xd
	.uleb128 0x0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI0-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI2-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI3-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI5-.LFB36
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x30
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI7-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE8:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB33
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI1
	.4byte	.LFE33
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LFB34
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LFE34
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB35
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI3
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI4
	.4byte	.LFE35
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB36
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI5
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI6
	.4byte	.LFE36
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB37
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI7
	.4byte	.LFE37
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
	.file 2 "../../../s3e/h/s3eTypes.h"
	.section	.debug_info
	.4byte	0x1a3
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x4
	.4byte	.LASF21
	.4byte	.LASF22
	.4byte	0x0
	.4byte	0x0
	.4byte	.Ldebug_ranges0+0x0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4
	.byte	0x2
	.byte	0xcf
	.4byte	0x81
	.uleb128 0x5
	.4byte	.LASF8
	.sleb128 0
	.uleb128 0x5
	.4byte	.LASF9
	.sleb128 1
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x2
	.byte	0xd3
	.4byte	0x68
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF11
	.uleb128 0x9
	.byte	0x4
	.4byte	0xa5
	.uleb128 0xa
	.4byte	0x98
	.uleb128 0xb
	.4byte	0x8c
	.uleb128 0xc
	.4byte	.LASF14
	.byte	0x1
	.byte	0x1b
	.4byte	0x81
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LLST0
	.4byte	0xe7
	.uleb128 0xd
	.4byte	.LASF12
	.byte	0x1
	.byte	0x1b
	.4byte	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.4byte	.LASF13
	.byte	0x1
	.byte	0x1b
	.4byte	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0x21
	.4byte	0x81
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LLST1
	.uleb128 0xc
	.4byte	.LASF15
	.byte	0x1
	.byte	0x27
	.4byte	0x81
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LLST2
	.4byte	0x128
	.uleb128 0xd
	.4byte	.LASF16
	.byte	0x1
	.byte	0x27
	.4byte	0x128
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.byte	0x0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF25
	.byte	0x1
	.byte	0x33
	.4byte	.LASF26
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LLST3
	.4byte	0x172
	.uleb128 0x10
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x1
	.byte	0x36
	.4byte	0x172
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.4byte	.LASF19
	.byte	0x1
	.byte	0x3e
	.4byte	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.4byte	0x8c
	.4byte	0x182
	.uleb128 0x13
	.4byte	0x95
	.byte	0x2
	.byte	0x0
	.uleb128 0x12
	.4byte	0x4c
	.4byte	0x192
	.uleb128 0x13
	.4byte	0x95
	.byte	0x2
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF27
	.byte	0x1
	.byte	0x56
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LLST4
	.byte	0x0
	.section	.debug_abbrev
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x36
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1a7
	.4byte	0x12f
	.ascii	"startappRegisterExt\000"
	.4byte	0x192
	.ascii	"RegisterExt\000"
	.4byte	0x0
	.section	.debug_aranges,"",%progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	0x0
	.4byte	0x0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF5:
	.ascii	"long long int\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF0:
	.ascii	"unsigned char\000"
.LASF27:
	.ascii	"RegisterExt\000"
.LASF19:
	.ascii	"flags\000"
.LASF8:
	.ascii	"S3E_RESULT_SUCCESS\000"
.LASF9:
	.ascii	"S3E_RESULT_ERROR\000"
.LASF26:
	.ascii	"_Z19startappRegisterExtv\000"
.LASF14:
	.ascii	"initSDK_wrap\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF6:
	.ascii	"long long unsigned int\000"
.LASF21:
	.ascii	"C:\\Marmalade\\6.4\\extensions\\startapp\\source\\g"
	.ascii	"eneric\\startapp_register.cpp\000"
.LASF20:
	.ascii	"GNU C++ 4.4.3\000"
.LASF23:
	.ascii	"s3eResult\000"
.LASF11:
	.ascii	"char\000"
.LASF17:
	.ascii	"bool\000"
.LASF3:
	.ascii	"short int\000"
.LASF10:
	.ascii	"long int\000"
.LASF16:
	.ascii	"show\000"
.LASF24:
	.ascii	"Show_Ad_wrap\000"
.LASF1:
	.ascii	"signed char\000"
.LASF22:
	.ascii	"c:\\\\Marmalade\\\\6.4\\\\extensions\\\\startapp\\\\"
	.ascii	"build_startapp_android_linux_scons_arm\000"
.LASF18:
	.ascii	"funcPtrs\000"
.LASF12:
	.ascii	"DEV_ID\000"
.LASF13:
	.ascii	"APP_ID\000"
.LASF25:
	.ascii	"startappRegisterExt\000"
.LASF15:
	.ascii	"Show_SearchBox_wrap\000"
	.ident	"GCC: (GNU) 4.4.3"
	.section	.note.GNU-stack,"",%progbits
