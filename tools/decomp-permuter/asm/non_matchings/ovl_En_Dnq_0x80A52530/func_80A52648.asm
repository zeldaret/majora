glabel func_80A52648
/* 000070 0x80A52648 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000071 0x80A5264C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000072 0x80A52650 00803825 */ move	$a3, $a0
/* 000073 0x80A52654 90AE1F2C */ lbu	$t6, 0X1F2C($a1)
/* 000074 0x80A52658 00001825 */ move	$v1, $zero
/* 000075 0x80A5265C 00002825 */ move	$a1, $zero
/* 000076 0x80A52660 11C00010 */ beqz	$t6, .L80A526A4
/* 000077 0x80A52664 24E4037C */ addiu	$a0, $a3, 0X37C
/* 000078 0x80A52668 94E2037C */ lhu	$v0, 0X37C($a3)
/* 000079 0x80A5266C 2401FFFE */ li	$at, -0X2
/* 000080 0x80A52670 240800FF */ li	$t0, 0XFF
/* 000081 0x80A52674 304F0020 */ andi	$t7, $v0, 0X20
/* 000082 0x80A52678 15E00006 */ bnez	$t7, .L80A52694
/* 000083 0x80A5267C 34490020 */ ori	$t1, $v0, 0X20
/* 000084 0x80A52680 8CF80004 */ lw	$t8, 0X4($a3)
/* 000085 0x80A52684 A0E801DC */ sb	$t0, 0X1DC($a3)
/* 000086 0x80A52688 A4E9037C */ sh	$t1, 0X37C($a3)
/* 000087 0x80A5268C 0301C824 */ and	$t9, $t8, $at
/* 000088 0x80A52690 ACF90004 */ sw	$t9, 0X4($a3)
.L80A52694:
/* 000089 0x80A52694 0C04EBB5 */ jal	func_8013AED4
/* 000090 0x80A52698 24060007 */ li	$a2, 0X7
/* 000091 0x80A5269C 10000011 */ b	.L80A526E4
/* 000092 0x80A526A0 24030001 */ li	$v1, 0X1
.L80A526A4:
/* 000093 0x80A526A4 94E2037C */ lhu	$v0, 0X37C($a3)
/* 000094 0x80A526A8 240D00FF */ li	$t5, 0XFF
/* 000095 0x80A526AC 24E4037C */ addiu	$a0, $a3, 0X37C
/* 000096 0x80A526B0 304A0020 */ andi	$t2, $v0, 0X20
/* 000097 0x80A526B4 1140000B */ beqz	$t2, .L80A526E4
/* 000098 0x80A526B8 304EFFDF */ andi	$t6, $v0, 0XFFDF
/* 000099 0x80A526BC 8CEB0004 */ lw	$t3, 0X4($a3)
/* 000100 0x80A526C0 A0ED01DC */ sb	$t5, 0X1DC($a3)
/* 000101 0x80A526C4 A4EE037C */ sh	$t6, 0X37C($a3)
/* 000102 0x80A526C8 356C0001 */ ori	$t4, $t3, 0X1
/* 000103 0x80A526CC ACEC0004 */ sw	$t4, 0X4($a3)
/* 000104 0x80A526D0 AFA3001C */ sw	$v1, 0X1C($sp)
/* 000105 0x80A526D4 24050003 */ li	$a1, 0X3
/* 000106 0x80A526D8 0C04EBB5 */ jal	func_8013AED4
/* 000107 0x80A526DC 24060007 */ li	$a2, 0X7
/* 000108 0x80A526E0 8FA3001C */ lw	$v1, 0X1C($sp)
.L80A526E4:
/* 000109 0x80A526E4 00601025 */ move	$v0, $v1
/* 000110 0x80A526E8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000111 0x80A526EC 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000112 0x80A526F0 03E00008 */ jr	$ra
/* 000113 0x80A526F4 00000000 */ nop

