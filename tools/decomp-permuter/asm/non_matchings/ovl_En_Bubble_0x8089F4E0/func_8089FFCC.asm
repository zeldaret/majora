glabel func_8089FFCC
/* 000699 0x8089FFCC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000700 0x8089FFD0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000701 0x8089FFD4 84820200 */ lh	$v0, 0X200($a0)
/* 000702 0x8089FFD8 14400003 */ bnez	$v0, .L8089FFE8
/* 000703 0x8089FFDC 244EFFFF */ addiu	$t6, $v0, -0X1
/* 000704 0x8089FFE0 10000003 */ b	.L8089FFF0
/* 000705 0x8089FFE4 00001825 */ move	$v1, $zero
.L8089FFE8:
/* 000706 0x8089FFE8 A48E0200 */ sh	$t6, 0X200($a0)
/* 000707 0x8089FFEC 84830200 */ lh	$v1, 0X200($a0)
.L8089FFF0:
/* 000708 0x8089FFF0 14600006 */ bnez	$v1, .L808A000C
/* 000709 0x8089FFF4 00000000 */ nop
/* 000710 0x8089FFF8 8C980144 */ lw	$t8, 0X144($a0)
/* 000711 0x8089FFFC 3C0F808A */ lui	$t7, %hi(func_808A0350)
/* 000712 0x808A0000 25EF0350 */ addiu	$t7, $t7, %lo(func_808A0350)
/* 000713 0x808A0004 55F80004 */ bnel	$t7, $t8, .L808A0018
/* 000714 0x808A0008 9082015B */ lbu	$v0, 0X15B($a0)
.L808A000C:
/* 000715 0x808A000C 1000000F */ b	.L808A004C
/* 000716 0x808A0010 00001025 */ move	$v0, $zero
/* 000717 0x808A0014 9082015B */ lbu	$v0, 0X15B($a0)
.L808A0018:
/* 000718 0x808A0018 30590001 */ andi	$t9, $v0, 0X1
/* 000719 0x808A001C 13200009 */ beqz	$t9, .L808A0044
/* 000720 0x808A0020 3048FFFE */ andi	$t0, $v0, 0XFFFE
/* 000721 0x808A0024 A088015B */ sb	$t0, 0X15B($a0)
/* 000722 0x808A0028 0C227D7D */ jal	func_8089F5F4
/* 000723 0x808A002C AFA40018 */ sw	$a0, 0X18($sp)
/* 000724 0x808A0030 8FA40018 */ lw	$a0, 0X18($sp)
/* 000725 0x808A0034 24090008 */ li	$t1, 0X8
/* 000726 0x808A0038 24020001 */ li	$v0, 0X1
/* 000727 0x808A003C 10000003 */ b	.L808A004C
/* 000728 0x808A0040 A4890200 */ sh	$t1, 0X200($a0)
.L808A0044:
/* 000729 0x808A0044 0C227FCC */ jal	func_8089FF30
/* 000730 0x808A0048 00000000 */ nop
.L808A004C:
/* 000731 0x808A004C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000732 0x808A0050 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000733 0x808A0054 03E00008 */ jr	$ra
/* 000734 0x808A0058 00000000 */ nop

