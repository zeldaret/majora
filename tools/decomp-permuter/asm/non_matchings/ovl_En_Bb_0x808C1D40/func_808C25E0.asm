glabel func_808C25E0
/* 000552 0x808C25E0 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 000553 0x808C25E4 AFB00030 */ sw	$s0, 0X30($sp)
/* 000554 0x808C25E8 00808025 */ move	$s0, $a0
/* 000555 0x808C25EC AFBF0034 */ sw	$ra, 0X34($sp)
/* 000556 0x808C25F0 AFA50044 */ sw	$a1, 0X44($sp)
/* 000557 0x808C25F4 26040144 */ addiu	$a0, $s0, 0X144
/* 000558 0x808C25F8 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 000559 0x808C25FC AFA4003C */ sw	$a0, 0X3C($sp)
/* 000560 0x808C2600 0C2307A5 */ jal	func_808C1E94
/* 000561 0x808C2604 02002025 */ move	$a0, $s0
/* 000562 0x808C2608 960E0090 */ lhu	$t6, 0X90($s0)
/* 000563 0x808C260C 02002025 */ move	$a0, $s0
/* 000564 0x808C2610 31CF0001 */ andi	$t7, $t6, 0X1
/* 000565 0x808C2614 51E00034 */ beqzl	$t7, .L808C26E8
/* 000566 0x808C2618 860A00BE */ lh	$t2, 0XBE($s0)
/* 000567 0x808C261C 0C02E3B2 */ jal	func_800B8EC8
/* 000568 0x808C2620 2405387B */ li	$a1, 0X387B
/* 000569 0x808C2624 86180250 */ lh	$t8, 0X250($s0)
/* 000570 0x808C2628 3C01C160 */ lui	$at, 0xC160
/* 000571 0x808C262C 02002825 */ move	$a1, $s0
/* 000572 0x808C2630 17000008 */ bnez	$t8, .L808C2654
/* 000573 0x808C2634 26060024 */ addiu	$a2, $s0, 0X24
/* 000574 0x808C2638 02002025 */ move	$a0, $s0
/* 000575 0x808C263C 0C02E3B2 */ jal	func_800B8EC8
/* 000576 0x808C2640 240538CC */ li	$a1, 0X38CC
/* 000577 0x808C2644 0C230835 */ jal	func_808C20D4
/* 000578 0x808C2648 02002025 */ move	$a0, $s0
/* 000579 0x808C264C 10000033 */ b	.L808C271C
/* 000580 0x808C2650 8FBF0034 */ lw	$ra, 0X34($sp)
.L808C2654:
/* 000581 0x808C2654 C6000068 */ lwc1	$f0, 0X68($s0)
/* 000582 0x808C2658 44812000 */ mtc1	$at, $f4
/* 000583 0x808C265C 3C014120 */ lui	$at, 0x4120
/* 000584 0x808C2660 3C0740E0 */ lui	$a3, 0x40E0
/* 000585 0x808C2664 4604003C */ c.lt.s	$f0, $f4
/* 000586 0x808C2668 24090002 */ li	$t1, 0X2
/* 000587 0x808C266C 45020007 */ bc1fl .L808C268C
/* 000588 0x808C2670 44815000 */ mtc1	$at, $f10
/* 000589 0x808C2674 3C01808C */ lui	$at, %hi(D_808C383C)
/* 000590 0x808C2678 C426383C */ lwc1	$f6, %lo(D_808C383C)($at)
/* 000591 0x808C267C 46060202 */ mul.s	$f8, $f0, $f6
/* 000592 0x808C2680 10000004 */ b	.L808C2694
/* 000593 0x808C2684 E6080068 */ swc1	$f8, 0X68($s0)
/* 000594 0x808C2688 44815000 */ mtc1	$at, $f10
.L808C268C:
/* 000595 0x808C268C 00000000 */ nop
/* 000596 0x808C2690 E60A0068 */ swc1	$f10, 0X68($s0)
.L808C2694:
/* 000597 0x808C2694 96190090 */ lhu	$t9, 0X90($s0)
/* 000598 0x808C2698 3C014000 */ lui	$at, 0x4000
/* 000599 0x808C269C 44818000 */ mtc1	$at, $f16
/* 000600 0x808C26A0 3328FFFE */ andi	$t0, $t9, 0XFFFE
/* 000601 0x808C26A4 A6080090 */ sh	$t0, 0X90($s0)
/* 000602 0x808C26A8 AFA00020 */ sw	$zero, 0X20($sp)
/* 000603 0x808C26AC AFA0001C */ sw	$zero, 0X1C($sp)
/* 000604 0x808C26B0 AFA00018 */ sw	$zero, 0X18($sp)
/* 000605 0x808C26B4 AFA90010 */ sw	$t1, 0X10($sp)
/* 000606 0x808C26B8 8FA40044 */ lw	$a0, 0X44($sp)
/* 000607 0x808C26BC 0C02EF6B */ jal	func_800BBDAC
/* 000608 0x808C26C0 E7B00014 */ swc1	$f16, 0X14($sp)
/* 000609 0x808C26C4 86050092 */ lh	$a1, 0X92($s0)
/* 000610 0x808C26C8 34018000 */ ori	$at, $zero, 0X8000
/* 000611 0x808C26CC 260400BE */ addiu	$a0, $s0, 0XBE
/* 000612 0x808C26D0 00A12821 */ addu	$a1, $a1, $at
/* 000613 0x808C26D4 00052C00 */ sll	$a1, $a1, 16
/* 000614 0x808C26D8 00052C03 */ sra	$a1, $a1, 16
/* 000615 0x808C26DC 0C03FB9C */ jal	Lib_StepTowardsCheckFramerateScaled_s
/* 000616 0x808C26E0 24060BB8 */ li	$a2, 0XBB8
/* 000617 0x808C26E4 860A00BE */ lh	$t2, 0XBE($s0)
.L808C26E8:
/* 000618 0x808C26E8 3C0540A0 */ lui	$a1, 0x40A0
/* 000619 0x808C26EC A60A0032 */ sh	$t2, 0X32($s0)
/* 000620 0x808C26F0 0C04DE2E */ jal	func_801378B8
/* 000621 0x808C26F4 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000622 0x808C26F8 10400003 */ beqz	$v0, .L808C2708
/* 000623 0x808C26FC 02002025 */ move	$a0, $s0
/* 000624 0x808C2700 0C02E3B2 */ jal	func_800B8EC8
/* 000625 0x808C2704 240538C8 */ li	$a1, 0X38C8
.L808C2708:
/* 000626 0x808C2708 86020250 */ lh	$v0, 0X250($s0)
/* 000627 0x808C270C 18400002 */ blez	$v0, .L808C2718
/* 000628 0x808C2710 244BFFFF */ addiu	$t3, $v0, -0X1
/* 000629 0x808C2714 A60B0250 */ sh	$t3, 0X250($s0)
.L808C2718:
/* 000630 0x808C2718 8FBF0034 */ lw	$ra, 0X34($sp)
.L808C271C:
/* 000631 0x808C271C 8FB00030 */ lw	$s0, 0X30($sp)
/* 000632 0x808C2720 27BD0040 */ addiu	$sp, $sp, 0X40
/* 000633 0x808C2724 03E00008 */ jr	$ra
/* 000634 0x808C2728 00000000 */ nop


.section .late_rodata

glabel D_808C383C
/* 001727 0x808C383C */ .word	0xBF333333
