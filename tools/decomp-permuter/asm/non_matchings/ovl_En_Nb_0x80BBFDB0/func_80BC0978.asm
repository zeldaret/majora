glabel func_80BC0978
/* 000754 0x80BC0978 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000755 0x80BC097C AFB00018 */ sw	$s0, 0X18($sp)
/* 000756 0x80BC0980 00808025 */ move	$s0, $a0
/* 000757 0x80BC0984 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000758 0x80BC0988 AFA50024 */ sw	$a1, 0X24($sp)
/* 000759 0x80BC098C 86020284 */ lh	$v0, 0X284($s0)
/* 000760 0x80BC0990 02002025 */ move	$a0, $s0
/* 000761 0x80BC0994 24010001 */ li	$at, 0X1
/* 000762 0x80BC0998 1440000C */ bnez	$v0, .L80BC09CC
/* 000763 0x80BC099C 00000000 */ nop
/* 000764 0x80BC09A0 0C2EFFA3 */ jal	func_80BBFE8C
/* 000765 0x80BC09A4 24050005 */ li	$a1, 0X5
/* 000766 0x80BC09A8 960E0262 */ lhu	$t6, 0X262($s0)
/* 000767 0x80BC09AC 86080284 */ lh	$t0, 0X284($s0)
/* 000768 0x80BC09B0 31D8FFDF */ andi	$t8, $t6, 0XFFDF
/* 000769 0x80BC09B4 A6180262 */ sh	$t8, 0X262($s0)
/* 000770 0x80BC09B8 37190400 */ ori	$t9, $t8, 0X400
/* 000771 0x80BC09BC 25090001 */ addiu	$t1, $t0, 0X1
/* 000772 0x80BC09C0 A6190262 */ sh	$t9, 0X262($s0)
/* 000773 0x80BC09C4 1000000F */ b	.L80BC0A04
/* 000774 0x80BC09C8 A6090284 */ sh	$t1, 0X284($s0)
.L80BC09CC:
/* 000775 0x80BC09CC 1441000D */ bne	$v0, $at, .L80BC0A04
/* 000776 0x80BC09D0 26040144 */ addiu	$a0, $s0, 0X144
/* 000777 0x80BC09D4 0C04DE2E */ jal	func_801378B8
/* 000778 0x80BC09D8 8E050154 */ lw	$a1, 0X154($s0)
/* 000779 0x80BC09DC 10400009 */ beqz	$v0, .L80BC0A04
/* 000780 0x80BC09E0 02002025 */ move	$a0, $s0
/* 000781 0x80BC09E4 0C2EFFA3 */ jal	func_80BBFE8C
/* 000782 0x80BC09E8 24050003 */ li	$a1, 0X3
/* 000783 0x80BC09EC 960A0262 */ lhu	$t2, 0X262($s0)
/* 000784 0x80BC09F0 860C0284 */ lh	$t4, 0X284($s0)
/* 000785 0x80BC09F4 314BFBFF */ andi	$t3, $t2, 0XFBFF
/* 000786 0x80BC09F8 258D0001 */ addiu	$t5, $t4, 0X1
/* 000787 0x80BC09FC A60B0262 */ sh	$t3, 0X262($s0)
/* 000788 0x80BC0A00 A60D0284 */ sh	$t5, 0X284($s0)
.L80BC0A04:
/* 000789 0x80BC0A04 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000790 0x80BC0A08 8FB00018 */ lw	$s0, 0X18($sp)
/* 000791 0x80BC0A0C 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000792 0x80BC0A10 03E00008 */ jr	$ra
/* 000793 0x80BC0A14 00000000 */ nop

