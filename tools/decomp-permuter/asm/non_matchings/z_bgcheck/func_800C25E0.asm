glabel func_800C25E0
/* 029384 0x800C25E0 C4A40000 */ lwc1	$f4, 0X0($a1)
/* 029385 0x800C25E4 C4860004 */ lwc1	$f6, 0X4($a0)
/* 029386 0x800C25E8 C48A0034 */ lwc1	$f10, 0X34($a0)
/* 029387 0x800C25EC 46062201 */ sub.s	$f8, $f4, $f6
/* 029388 0x800C25F0 460A4402 */ mul.s	$f16, $f8, $f10
/* 029389 0x800C25F4 4600848D */ trunc.w.s	$f18, $f16
/* 029390 0x800C25F8 44029000 */ mfc1	$v0, $f18
/* 029391 0x800C25FC 00000000 */ nop
/* 029392 0x800C2600 ACC20000 */ sw	$v0, 0X0($a2)
/* 029393 0x800C2604 C4860008 */ lwc1	$f6, 0X8($a0)
/* 029394 0x800C2608 C4A40004 */ lwc1	$f4, 0X4($a1)
/* 029395 0x800C260C C48A0038 */ lwc1	$f10, 0X38($a0)
/* 029396 0x800C2610 46062201 */ sub.s	$f8, $f4, $f6
/* 029397 0x800C2614 460A4402 */ mul.s	$f16, $f8, $f10
/* 029398 0x800C2618 4600848D */ trunc.w.s	$f18, $f16
/* 029399 0x800C261C 44199000 */ mfc1	$t9, $f18
/* 029400 0x800C2620 00000000 */ nop
/* 029401 0x800C2624 ACD90004 */ sw	$t9, 0X4($a2)
/* 029402 0x800C2628 C486000C */ lwc1	$f6, 0XC($a0)
/* 029403 0x800C262C C4A40008 */ lwc1	$f4, 0X8($a1)
/* 029404 0x800C2630 C48A003C */ lwc1	$f10, 0X3C($a0)
/* 029405 0x800C2634 46062201 */ sub.s	$f8, $f4, $f6
/* 029406 0x800C2638 460A4402 */ mul.s	$f16, $f8, $f10
/* 029407 0x800C263C 4600848D */ trunc.w.s	$f18, $f16
/* 029408 0x800C2640 44099000 */ mfc1	$t1, $f18
/* 029409 0x800C2644 04410003 */ bgez	$v0, .L800C2654
/* 029410 0x800C2648 ACC90008 */ sw	$t1, 0X8($a2)
/* 029411 0x800C264C 10000006 */ b	.L800C2668
/* 029412 0x800C2650 ACC00000 */ sw	$zero, 0X0($a2)
.L800C2654:
/* 029413 0x800C2654 8C83001C */ lw	$v1, 0X1C($a0)
/* 029414 0x800C2658 0043082A */ slt	$at, $v0, $v1
/* 029415 0x800C265C 14200002 */ bnez	$at, .L800C2668
/* 029416 0x800C2660 246AFFFF */ addiu	$t2, $v1, -0X1
/* 029417 0x800C2664 ACCA0000 */ sw	$t2, 0X0($a2)
.L800C2668:
/* 029418 0x800C2668 8CC20004 */ lw	$v0, 0X4($a2)
/* 029419 0x800C266C 04430004 */ bgezl	$v0, .L800C2680
/* 029420 0x800C2670 8C830020 */ lw	$v1, 0X20($a0)
/* 029421 0x800C2674 10000006 */ b	.L800C2690
/* 029422 0x800C2678 ACC00004 */ sw	$zero, 0X4($a2)
/* 029423 0x800C267C 8C830020 */ lw	$v1, 0X20($a0)
.L800C2680:
/* 029424 0x800C2680 0043082A */ slt	$at, $v0, $v1
/* 029425 0x800C2684 14200002 */ bnez	$at, .L800C2690
/* 029426 0x800C2688 246BFFFF */ addiu	$t3, $v1, -0X1
/* 029427 0x800C268C ACCB0004 */ sw	$t3, 0X4($a2)
.L800C2690:
/* 029428 0x800C2690 8CC20008 */ lw	$v0, 0X8($a2)
/* 029429 0x800C2694 04430004 */ bgezl	$v0, .L800C26A8
/* 029430 0x800C2698 8C830024 */ lw	$v1, 0X24($a0)
/* 029431 0x800C269C 03E00008 */ jr	$ra
/* 029432 0x800C26A0 ACC00008 */ sw	$zero, 0X8($a2)
/* 029433 0x800C26A4 8C830024 */ lw	$v1, 0X24($a0)
.L800C26A8:
/* 029434 0x800C26A8 0043082A */ slt	$at, $v0, $v1
/* 029435 0x800C26AC 14200002 */ bnez	$at, .L800C26B8
/* 029436 0x800C26B0 246CFFFF */ addiu	$t4, $v1, -0X1
/* 029437 0x800C26B4 ACCC0008 */ sw	$t4, 0X8($a2)
.L800C26B8:
/* 029438 0x800C26B8 03E00008 */ jr	$ra
/* 029439 0x800C26BC 00000000 */ nop

