glabel func_8097480C
/* 000583 0x8097480C 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000584 0x80974810 AFB00020 */ sw	$s0, 0X20($sp)
/* 000585 0x80974814 00808025 */ move	$s0, $a0
/* 000586 0x80974818 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000587 0x8097481C AFA5002C */ sw	$a1, 0X2C($sp)
/* 000588 0x80974820 86020524 */ lh	$v0, 0X524($s0)
/* 000589 0x80974824 10400002 */ beqz	$v0, .L80974830
/* 000590 0x80974828 244EFFFF */ addiu	$t6, $v0, -0X1
/* 000591 0x8097482C A60E0524 */ sh	$t6, 0X524($s0)
.L80974830:
/* 000592 0x80974830 86020522 */ lh	$v0, 0X522($s0)
/* 000593 0x80974834 14400003 */ bnez	$v0, .L80974844
/* 000594 0x80974838 244FFFFF */ addiu	$t7, $v0, -0X1
/* 000595 0x8097483C 10000004 */ b	.L80974850
/* 000596 0x80974840 00001825 */ move	$v1, $zero
.L80974844:
/* 000597 0x80974844 A60F0522 */ sh	$t7, 0X522($s0)
/* 000598 0x80974848 86020522 */ lh	$v0, 0X522($s0)
/* 000599 0x8097484C 00401825 */ move	$v1, $v0
.L80974850:
/* 000600 0x80974850 50600011 */ beqzl	$v1, .L80974898
/* 000601 0x80974854 860C052E */ lh	$t4, 0X52E($s0)
/* 000602 0x80974858 44822000 */ mtc1	$v0, $f4
/* 000603 0x8097485C 3C0141F0 */ lui	$at, 0x41F0
/* 000604 0x80974860 44814000 */ mtc1	$at, $f8
/* 000605 0x80974864 468021A0 */ cvt.s.w	$f6, $f4
/* 000606 0x80974868 3C018097 */ lui	$at, %hi(D_80976194)
/* 000607 0x8097486C C4306194 */ lwc1	$f16, %lo(D_80976194)($at)
/* 000608 0x80974870 860A0032 */ lh	$t2, 0X32($s0)
/* 000609 0x80974874 46083283 */ div.s	$f10, $f6, $f8
/* 000610 0x80974878 460A8482 */ mul.s	$f18, $f16, $f10
/* 000611 0x8097487C 4600910D */ trunc.w.s	$f4, $f18
/* 000612 0x80974880 44092000 */ mfc1	$t1, $f4
/* 000613 0x80974884 00000000 */ nop
/* 000614 0x80974888 01495821 */ addu	$t3, $t2, $t1
/* 000615 0x8097488C 1000000D */ b	.L809748C4
/* 000616 0x80974890 A60B0032 */ sh	$t3, 0X32($s0)
/* 000617 0x80974894 860C052E */ lh	$t4, 0X52E($s0)
.L80974898:
/* 000618 0x80974898 5580000B */ bnezl	$t4, .L809748C8
/* 000619 0x8097489C 860F0032 */ lh	$t7, 0X32($s0)
/* 000620 0x809748A0 860D052A */ lh	$t5, 0X52A($s0)
/* 000621 0x809748A4 26040032 */ addiu	$a0, $s0, 0X32
/* 000622 0x809748A8 24060004 */ li	$a2, 0X4
/* 000623 0x809748AC 15A00005 */ bnez	$t5, .L809748C4
/* 000624 0x809748B0 24072710 */ li	$a3, 0X2710
/* 000625 0x809748B4 86050092 */ lh	$a1, 0X92($s0)
/* 000626 0x809748B8 240E0001 */ li	$t6, 0X1
/* 000627 0x809748BC 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 000628 0x809748C0 AFAE0010 */ sw	$t6, 0X10($sp)
.L809748C4:
/* 000629 0x809748C4 860F0032 */ lh	$t7, 0X32($s0)
.L809748C8:
/* 000630 0x809748C8 A60F00BE */ sh	$t7, 0XBE($s0)
/* 000631 0x809748CC 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000632 0x809748D0 8FB00020 */ lw	$s0, 0X20($sp)
/* 000633 0x809748D4 03E00008 */ jr	$ra
/* 000634 0x809748D8 27BD0028 */ addiu	$sp, $sp, 0X28


.section .late_rodata

glabel D_80976194
/* 002217 0x80976194 */ .word	0x461C4000
