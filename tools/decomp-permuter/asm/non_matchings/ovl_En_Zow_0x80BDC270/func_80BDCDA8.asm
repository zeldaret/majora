glabel func_80BDCDA8
/* 000718 0x80BDCDA8 27BDFF70 */ addiu	$sp, $sp, -0X90
/* 000719 0x80BDCDAC AFB40058 */ sw	$s4, 0X58($sp)
/* 000720 0x80BDCDB0 AFB20050 */ sw	$s2, 0X50($sp)
/* 000721 0x80BDCDB4 00809025 */ move	$s2, $a0
/* 000722 0x80BDCDB8 00A0A025 */ move	$s4, $a1
/* 000723 0x80BDCDBC AFBF0064 */ sw	$ra, 0X64($sp)
/* 000724 0x80BDCDC0 AFB60060 */ sw	$s6, 0X60($sp)
/* 000725 0x80BDCDC4 AFB5005C */ sw	$s5, 0X5C($sp)
/* 000726 0x80BDCDC8 AFB30054 */ sw	$s3, 0X54($sp)
/* 000727 0x80BDCDCC AFB1004C */ sw	$s1, 0X4C($sp)
/* 000728 0x80BDCDD0 AFB00048 */ sw	$s0, 0X48($sp)
/* 000729 0x80BDCDD4 F7BE0040 */ sdc1	$f30, 0X40($sp)
/* 000730 0x80BDCDD8 F7BC0038 */ sdc1	$f28, 0X38($sp)
/* 000731 0x80BDCDDC F7BA0030 */ sdc1	$f26, 0X30($sp)
/* 000732 0x80BDCDE0 F7B80028 */ sdc1	$f24, 0X28($sp)
/* 000733 0x80BDCDE4 F7B60020 */ sdc1	$f22, 0X20($sp)
/* 000734 0x80BDCDE8 F7B40018 */ sdc1	$f20, 0X18($sp)
/* 000735 0x80BDCDEC 3C013F00 */ lui	$at, 0x3F00
/* 000736 0x80BDCDF0 4481F000 */ mtc1	$at, $f30
/* 000737 0x80BDCDF4 3C013FC0 */ lui	$at, 0x3FC0
/* 000738 0x80BDCDF8 4481E000 */ mtc1	$at, $f28
/* 000739 0x80BDCDFC 3C0140C0 */ lui	$at, 0x40C0
/* 000740 0x80BDCE00 4481D000 */ mtc1	$at, $f26
/* 000741 0x80BDCE04 3C014040 */ lui	$at, 0x4040
/* 000742 0x80BDCE08 4481C000 */ mtc1	$at, $f24
/* 000743 0x80BDCE0C 00008025 */ move	$s0, $zero
/* 000744 0x80BDCE10 26530024 */ addiu	$s3, $s2, 0X24
/* 000745 0x80BDCE14 2416000A */ li	$s6, 0XA
/* 000746 0x80BDCE18 27B50078 */ addiu	$s5, $sp, 0X78
/* 000747 0x80BDCE1C 27B10084 */ addiu	$s1, $sp, 0X84
.L80BDCE20:
/* 000748 0x80BDCE20 0C021BF7 */ jal	randZeroOne
/* 000749 0x80BDCE24 00000000 */ nop
/* 000750 0x80BDCE28 461C0102 */ mul.s	$f4, $f0, $f28
/* 000751 0x80BDCE2C 0C021BF7 */ jal	randZeroOne
/* 000752 0x80BDCE30 461E2500 */ add.s	$f20, $f4, $f30
/* 000753 0x80BDCE34 3C0180BE */ lui	$at, %hi(D_80BDDD90)
/* 000754 0x80BDCE38 C426DD90 */ lwc1	$f6, %lo(D_80BDDD90)($at)
/* 000755 0x80BDCE3C 46060582 */ mul.s	$f22, $f0, $f6
/* 000756 0x80BDCE40 0C021BF7 */ jal	randZeroOne
/* 000757 0x80BDCE44 00000000 */ nop
/* 000758 0x80BDCE48 46180202 */ mul.s	$f8, $f0, $f24
/* 000759 0x80BDCE4C 4600B306 */ mov.s	$f12, $f22
/* 000760 0x80BDCE50 46184280 */ add.s	$f10, $f8, $f24
/* 000761 0x80BDCE54 0C0220D4 */ jal	__sinf
/* 000762 0x80BDCE58 E7AA007C */ swc1	$f10, 0X7C($sp)
/* 000763 0x80BDCE5C 46140402 */ mul.s	$f16, $f0, $f20
/* 000764 0x80BDCE60 4600B306 */ mov.s	$f12, $f22
/* 000765 0x80BDCE64 0C0247D0 */ jal	__cosf
/* 000766 0x80BDCE68 E7B00078 */ swc1	$f16, 0X78($sp)
/* 000767 0x80BDCE6C 46140482 */ mul.s	$f18, $f0, $f20
/* 000768 0x80BDCE70 3C073DA3 */ lui	$a3, 0x3DA3
/* 000769 0x80BDCE74 34E7D70A */ ori	$a3, $a3, 0XD70A
/* 000770 0x80BDCE78 02802025 */ move	$a0, $s4
/* 000771 0x80BDCE7C 02202825 */ move	$a1, $s1
/* 000772 0x80BDCE80 02A03025 */ move	$a2, $s5
/* 000773 0x80BDCE84 E7B20080 */ swc1	$f18, 0X80($sp)
/* 000774 0x80BDCE88 8E6F0000 */ lw	$t7, 0X0($s3)
/* 000775 0x80BDCE8C AE2F0000 */ sw	$t7, 0X0($s1)
/* 000776 0x80BDCE90 8E6E0004 */ lw	$t6, 0X4($s3)
/* 000777 0x80BDCE94 AE2E0004 */ sw	$t6, 0X4($s1)
/* 000778 0x80BDCE98 8E6F0008 */ lw	$t7, 0X8($s3)
/* 000779 0x80BDCE9C AE2F0008 */ sw	$t7, 0X8($s1)
/* 000780 0x80BDCEA0 C7A60078 */ lwc1	$f6, 0X78($sp)
/* 000781 0x80BDCEA4 C7B20080 */ lwc1	$f18, 0X80($sp)
/* 000782 0x80BDCEA8 C7A40084 */ lwc1	$f4, 0X84($sp)
/* 000783 0x80BDCEAC 461A3202 */ mul.s	$f8, $f6, $f26
/* 000784 0x80BDCEB0 C7B0008C */ lwc1	$f16, 0X8C($sp)
/* 000785 0x80BDCEB4 461A9182 */ mul.s	$f6, $f18, $f26
/* 000786 0x80BDCEB8 46082280 */ add.s	$f10, $f4, $f8
/* 000787 0x80BDCEBC C7A80088 */ lwc1	$f8, 0X88($sp)
/* 000788 0x80BDCEC0 46068100 */ add.s	$f4, $f16, $f6
/* 000789 0x80BDCEC4 E7AA0084 */ swc1	$f10, 0X84($sp)
/* 000790 0x80BDCEC8 E7A4008C */ swc1	$f4, 0X8C($sp)
/* 000791 0x80BDCECC C64A008C */ lwc1	$f10, 0X8C($s2)
/* 000792 0x80BDCED0 460A4480 */ add.s	$f18, $f8, $f10
/* 000793 0x80BDCED4 0C2F70F0 */ jal	func_80BDC3C0
/* 000794 0x80BDCED8 E7B20088 */ swc1	$f18, 0X88($sp)
/* 000795 0x80BDCEDC 26100001 */ addiu	$s0, $s0, 0X1
/* 000796 0x80BDCEE0 1616FFCF */ bne	$s0, $s6, .L80BDCE20
/* 000797 0x80BDCEE4 00000000 */ nop
/* 000798 0x80BDCEE8 8FBF0064 */ lw	$ra, 0X64($sp)
/* 000799 0x80BDCEEC D7B40018 */ ldc1	$f20, 0X18($sp)
/* 000800 0x80BDCEF0 D7B60020 */ ldc1	$f22, 0X20($sp)
/* 000801 0x80BDCEF4 D7B80028 */ ldc1	$f24, 0X28($sp)
/* 000802 0x80BDCEF8 D7BA0030 */ ldc1	$f26, 0X30($sp)
/* 000803 0x80BDCEFC D7BC0038 */ ldc1	$f28, 0X38($sp)
/* 000804 0x80BDCF00 D7BE0040 */ ldc1	$f30, 0X40($sp)
/* 000805 0x80BDCF04 8FB00048 */ lw	$s0, 0X48($sp)
/* 000806 0x80BDCF08 8FB1004C */ lw	$s1, 0X4C($sp)
/* 000807 0x80BDCF0C 8FB20050 */ lw	$s2, 0X50($sp)
/* 000808 0x80BDCF10 8FB30054 */ lw	$s3, 0X54($sp)
/* 000809 0x80BDCF14 8FB40058 */ lw	$s4, 0X58($sp)
/* 000810 0x80BDCF18 8FB5005C */ lw	$s5, 0X5C($sp)
/* 000811 0x80BDCF1C 8FB60060 */ lw	$s6, 0X60($sp)
/* 000812 0x80BDCF20 03E00008 */ jr	$ra
/* 000813 0x80BDCF24 27BD0090 */ addiu	$sp, $sp, 0X90


.section .late_rodata

glabel D_80BDDD90
/* 001736 0x80BDDD90 */ .word	0x40C8F5C3
