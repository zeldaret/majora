glabel func_80AD7798
/* 000626 0x80AD7798 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000627 0x80AD779C AFB00018 */ sw	$s0, 0X18($sp)
/* 000628 0x80AD77A0 00808025 */ move	$s0, $a0
/* 000629 0x80AD77A4 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000630 0x80AD77A8 AFA50024 */ sw	$a1, 0X24($sp)
/* 000631 0x80AD77AC 8602029E */ lh	$v0, 0X29E($s0)
/* 000632 0x80AD77B0 2401000F */ li	$at, 0XF
/* 000633 0x80AD77B4 14410016 */ bne	$v0, $at, .L80AD7810
/* 000634 0x80AD77B8 3C0180AE */ lui	$at, %hi(D_80AD8EE4)
/* 000635 0x80AD77BC C4268EE4 */ lwc1	$f6, %lo(D_80AD8EE4)($at)
/* 000636 0x80AD77C0 C60402AC */ lwc1	$f4, 0X2AC($s0)
/* 000637 0x80AD77C4 3C0180AE */ lui	$at, %hi(D_80AD8EE8)
/* 000638 0x80AD77C8 46062200 */ add.s	$f8, $f4, $f6
/* 000639 0x80AD77CC E60802AC */ swc1	$f8, 0X2AC($s0)
/* 000640 0x80AD77D0 C61002AC */ lwc1	$f16, 0X2AC($s0)
/* 000641 0x80AD77D4 C42A8EE8 */ lwc1	$f10, %lo(D_80AD8EE8)($at)
/* 000642 0x80AD77D8 3C013F80 */ lui	$at, 0x3F80
/* 000643 0x80AD77DC 4610503C */ c.lt.s	$f10, $f16
/* 000644 0x80AD77E0 00000000 */ nop
/* 000645 0x80AD77E4 4502003A */ bc1fl .L80AD78D0
/* 000646 0x80AD77E8 C60A02C0 */ lwc1	$f10, 0X2C0($s0)
/* 000647 0x80AD77EC 860E029E */ lh	$t6, 0X29E($s0)
/* 000648 0x80AD77F0 92180350 */ lbu	$t8, 0X350($s0)
/* 000649 0x80AD77F4 44819000 */ mtc1	$at, $f18
/* 000650 0x80AD77F8 25CFFFFF */ addiu	$t7, $t6, -0X1
/* 000651 0x80AD77FC 37190001 */ ori	$t9, $t8, 0X1
/* 000652 0x80AD7800 A60F029E */ sh	$t7, 0X29E($s0)
/* 000653 0x80AD7804 A2190350 */ sb	$t9, 0X350($s0)
/* 000654 0x80AD7808 10000030 */ b	.L80AD78CC
/* 000655 0x80AD780C E61202AC */ swc1	$f18, 0X2AC($s0)
.L80AD7810:
/* 000656 0x80AD7810 18400003 */ blez	$v0, .L80AD7820
/* 000657 0x80AD7814 2448FFFF */ addiu	$t0, $v0, -0X1
/* 000658 0x80AD7818 1000002C */ b	.L80AD78CC
/* 000659 0x80AD781C A608029E */ sh	$t0, 0X29E($s0)
.L80AD7820:
/* 000660 0x80AD7820 860902A6 */ lh	$t1, 0X2A6($s0)
/* 000661 0x80AD7824 3C0180AE */ lui	$at, %hi(D_80AD8EEC)
/* 000662 0x80AD7828 C4288EEC */ lwc1	$f8, %lo(D_80AD8EEC)($at)
/* 000663 0x80AD782C 44892000 */ mtc1	$t1, $f4
/* 000664 0x80AD7830 260402A6 */ addiu	$a0, $s0, 0X2A6
/* 000665 0x80AD7834 24053B00 */ li	$a1, 0X3B00
/* 000666 0x80AD7838 468021A0 */ cvt.s.w	$f6, $f4
/* 000667 0x80AD783C 46083282 */ mul.s	$f10, $f6, $f8
/* 000668 0x80AD7840 4600540D */ trunc.w.s	$f16, $f10
/* 000669 0x80AD7844 44068000 */ mfc1	$a2, $f16
/* 000670 0x80AD7848 00000000 */ nop
/* 000671 0x80AD784C 24C6002D */ addiu	$a2, $a2, 0X2D
/* 000672 0x80AD7850 00063400 */ sll	$a2, $a2, 16
/* 000673 0x80AD7854 0C03FB9C */ jal	Lib_StepTowardsCheckFramerateScaled_s
/* 000674 0x80AD7858 00063403 */ sra	$a2, $a2, 16
/* 000675 0x80AD785C 5040001C */ beqzl	$v0, .L80AD78D0
/* 000676 0x80AD7860 C60A02C0 */ lwc1	$f10, 0X2C0($s0)
/* 000677 0x80AD7864 C61202C0 */ lwc1	$f18, 0X2C0($s0)
/* 000678 0x80AD7868 C604000C */ lwc1	$f4, 0XC($s0)
/* 000679 0x80AD786C 4604903C */ c.lt.s	$f18, $f4
/* 000680 0x80AD7870 00000000 */ nop
/* 000681 0x80AD7874 45000013 */ bc1f .L80AD78C4
/* 000682 0x80AD7878 00000000 */ nop
/* 000683 0x80AD787C 860B0092 */ lh	$t3, 0X92($s0)
/* 000684 0x80AD7880 A60B0032 */ sh	$t3, 0X32($s0)
/* 000685 0x80AD7884 0C03FB61 */ jal	Math_Sins
/* 000686 0x80AD7888 86040032 */ lh	$a0, 0X32($s0)
/* 000687 0x80AD788C 3C0143B4 */ lui	$at, 0x43B4
/* 000688 0x80AD7890 44813000 */ mtc1	$at, $f6
/* 000689 0x80AD7894 C60A0024 */ lwc1	$f10, 0X24($s0)
/* 000690 0x80AD7898 86040032 */ lh	$a0, 0X32($s0)
/* 000691 0x80AD789C 46060202 */ mul.s	$f8, $f0, $f6
/* 000692 0x80AD78A0 460A4400 */ add.s	$f16, $f8, $f10
/* 000693 0x80AD78A4 0C03FB51 */ jal	Math_Coss
/* 000694 0x80AD78A8 E61002BC */ swc1	$f16, 0X2BC($s0)
/* 000695 0x80AD78AC 3C0143B4 */ lui	$at, 0x43B4
/* 000696 0x80AD78B0 44819000 */ mtc1	$at, $f18
/* 000697 0x80AD78B4 C606002C */ lwc1	$f6, 0X2C($s0)
/* 000698 0x80AD78B8 46120102 */ mul.s	$f4, $f0, $f18
/* 000699 0x80AD78BC 46062200 */ add.s	$f8, $f4, $f6
/* 000700 0x80AD78C0 E60802C4 */ swc1	$f8, 0X2C4($s0)
.L80AD78C4:
/* 000701 0x80AD78C4 0C2B5E4B */ jal	func_80AD792C
/* 000702 0x80AD78C8 02002025 */ move	$a0, $s0
.L80AD78CC:
/* 000703 0x80AD78CC C60A02C0 */ lwc1	$f10, 0X2C0($s0)
.L80AD78D0:
/* 000704 0x80AD78D0 C610000C */ lwc1	$f16, 0XC($s0)
/* 000705 0x80AD78D4 860C00BE */ lh	$t4, 0XBE($s0)
/* 000706 0x80AD78D8 860D02A6 */ lh	$t5, 0X2A6($s0)
/* 000707 0x80AD78DC 4610503C */ c.lt.s	$f10, $f16
/* 000708 0x80AD78E0 018D7021 */ addu	$t6, $t4, $t5
/* 000709 0x80AD78E4 A60E00BE */ sh	$t6, 0XBE($s0)
/* 000710 0x80AD78E8 45000006 */ bc1f .L80AD7904
/* 000711 0x80AD78EC 00000000 */ nop
/* 000712 0x80AD78F0 8E180298 */ lw	$t8, 0X298($s0)
/* 000713 0x80AD78F4 3C0F80AD */ lui	$t7, %hi(func_80AD7798)
/* 000714 0x80AD78F8 25EF7798 */ addiu	$t7, $t7, %lo(func_80AD7798)
/* 000715 0x80AD78FC 51F80004 */ beql	$t7, $t8, .L80AD7910
/* 000716 0x80AD7900 02002025 */ move	$a0, $s0
.L80AD7904:
/* 000717 0x80AD7904 0C2B5D5A */ jal	func_80AD7568
/* 000718 0x80AD7908 02002025 */ move	$a0, $s0
/* 000719 0x80AD790C 02002025 */ move	$a0, $s0
.L80AD7910:
/* 000720 0x80AD7910 0C2B5D6A */ jal	func_80AD75A8
/* 000721 0x80AD7914 8FA50024 */ lw	$a1, 0X24($sp)
/* 000722 0x80AD7918 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000723 0x80AD791C 8FB00018 */ lw	$s0, 0X18($sp)
/* 000724 0x80AD7920 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000725 0x80AD7924 03E00008 */ jr	$ra
/* 000726 0x80AD7928 00000000 */ nop

