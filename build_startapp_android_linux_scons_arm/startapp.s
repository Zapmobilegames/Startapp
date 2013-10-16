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
	.file	"startapp.cpp"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.text._Z12startappInitv,"ax",%progbits
	.align	2
	.global	_Z12startappInitv
	.hidden	_Z12startappInitv
	.type	_Z12startappInitv, %function
_Z12startappInitv:
.LFB0:
	.file 1 "C:\\Marmalade\\6.4\\extensions\\startapp\\source\\generic\\startapp.cpp"
	.loc 1 15 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI0:
	.loc 1 17 0
	bl	_Z21startappInit_platformv(PLT)
	mov	r3, r0
	.loc 1 18 0
	mov	r0, r3
	ldmfd	sp!, {r4, pc}
.LFE0:
	.size	_Z12startappInitv, .-_Z12startappInitv
	.section	.text._Z17startappTerminatev,"ax",%progbits
	.align	2
	.global	_Z17startappTerminatev
	.hidden	_Z17startappTerminatev
	.type	_Z17startappTerminatev, %function
_Z17startappTerminatev:
.LFB1:
	.loc 1 21 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI1:
	.loc 1 23 0
	bl	_Z26startappTerminate_platformv(PLT)
	.loc 1 24 0
	ldmfd	sp!, {r4, pc}
.LFE1:
	.size	_Z17startappTerminatev, .-_Z17startappTerminatev
	.section	.text.initSDK,"ax",%progbits
	.align	2
	.global	initSDK
	.hidden	initSDK
	.type	initSDK, %function
initSDK:
.LFB2:
	.loc 1 27 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI2:
	sub	sp, sp, #12
.LCFI3:
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	.loc 1 28 0
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #0]
	bl	_Z16initSDK_platformPKcS0_(PLT)
	mov	r3, r0
	.loc 1 29 0
	mov	r0, r3
	add	sp, sp, #12
	ldmfd	sp!, {pc}
.LFE2:
	.size	initSDK, .-initSDK
	.section	.text.Show_Ad,"ax",%progbits
	.align	2
	.global	Show_Ad
	.hidden	Show_Ad
	.type	Show_Ad, %function
Show_Ad:
.LFB3:
	.loc 1 32 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI4:
	.loc 1 33 0
	bl	_Z16Show_Ad_platformv(PLT)
	mov	r3, r0
	.loc 1 34 0
	mov	r0, r3
	ldmfd	sp!, {r4, pc}
.LFE3:
	.size	Show_Ad, .-Show_Ad
	.section	.text.Show_SearchBox,"ax",%progbits
	.align	2
	.global	Show_SearchBox
	.hidden	Show_SearchBox
	.type	Show_SearchBox, %function
Show_SearchBox:
.LFB4:
	.loc 1 37 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI5:
	sub	sp, sp, #12
.LCFI6:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 38 0
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	_Z23Show_SearchBox_platformb(PLT)
	mov	r3, r0
	.loc 1 39 0
	mov	r0, r3
	add	sp, sp, #12
	ldmfd	sp!, {pc}
.LFE4:
	.size	Show_SearchBox, .-Show_SearchBox
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x8
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI4-.LFB3
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI5-.LFB4
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE8:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB0
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LFB1
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI1
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB2
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI3
	.4byte	.LFE2
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB3
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI4
	.4byte	.LFE3
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB4
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
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
	.file 2 "../../../s3e/h/s3eTypes.h"
	.section	.debug_info
	.4byte	0x152
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x4
	.4byte	.LASF20
	.4byte	.LASF21
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
	.4byte	.LASF22
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
	.4byte	.LASF22
	.byte	0x2
	.byte	0xd3
	.4byte	0x68
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF23
	.byte	0x1
	.byte	0xe
	.4byte	.LASF24
	.4byte	0x81
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF13
	.byte	0x1
	.byte	0x14
	.4byte	.LASF25
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST1
	.uleb128 0x9
	.byte	0x1
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1a
	.4byte	0x81
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST2
	.4byte	0xf9
	.uleb128 0xa
	.4byte	.LASF10
	.byte	0x1
	.byte	0x1a
	.4byte	0xf9
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF11
	.byte	0x1
	.byte	0x1a
	.4byte	0xf9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xff
	.uleb128 0xc
	.4byte	0x104
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF12
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF14
	.byte	0x1
	.byte	0x1f
	.4byte	0x81
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST3
	.uleb128 0x9
	.byte	0x1
	.4byte	.LASF16
	.byte	0x1
	.byte	0x24
	.4byte	0x81
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST4
	.4byte	0x14e
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x1
	.byte	0x24
	.4byte	0x14e
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.byte	0x0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF18
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
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0x8
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
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x60
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x156
	.4byte	0x8c
	.ascii	"startappInit\000"
	.4byte	0xa8
	.ascii	"startappTerminate\000"
	.4byte	0xc0
	.ascii	"initSDK\000"
	.4byte	0x10b
	.ascii	"Show_Ad\000"
	.4byte	0x123
	.ascii	"Show_SearchBox\000"
	.4byte	0x0
	.section	.debug_aranges,"",%progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0x0
	.4byte	0x0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF18:
	.ascii	"bool\000"
.LASF13:
	.ascii	"startappTerminate\000"
.LASF11:
	.ascii	"APP_ID\000"
.LASF8:
	.ascii	"S3E_RESULT_SUCCESS\000"
.LASF17:
	.ascii	"show\000"
.LASF0:
	.ascii	"unsigned char\000"
.LASF20:
	.ascii	"C:\\Marmalade\\6.4\\extensions\\startapp\\source\\g"
	.ascii	"eneric\\startapp.cpp\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF24:
	.ascii	"_Z12startappInitv\000"
.LASF23:
	.ascii	"startappInit\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF19:
	.ascii	"GNU C++ 4.4.3\000"
.LASF6:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"Show_SearchBox\000"
.LASF21:
	.ascii	"c:\\\\Marmalade\\\\6.4\\\\extensions\\\\startapp\\\\"
	.ascii	"build_startapp_android_linux_scons_arm\000"
.LASF15:
	.ascii	"initSDK\000"
.LASF9:
	.ascii	"S3E_RESULT_ERROR\000"
.LASF25:
	.ascii	"_Z17startappTerminatev\000"
.LASF5:
	.ascii	"long long int\000"
.LASF14:
	.ascii	"Show_Ad\000"
.LASF12:
	.ascii	"char\000"
.LASF10:
	.ascii	"DEV_ID\000"
.LASF3:
	.ascii	"short int\000"
.LASF1:
	.ascii	"signed char\000"
.LASF22:
	.ascii	"s3eResult\000"
	.ident	"GCC: (GNU) 4.4.3"
	.section	.note.GNU-stack,"",%progbits
