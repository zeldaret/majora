glabel EnRiverSound_Init
/* 000000 0x808A7E30 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000001 0x808A7E34 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000002 0x808A7E38 00803025 */ move	$a2, $a0
/* 000003 0x808A7E3C 00A03825 */ move	$a3, $a1
/* 000004 0x808A7E40 84C2001C */ lh	$v0, 0X1C($a2)
/* 000005 0x808A7E44 240100FF */ li	$at, 0XFF
/* 000006 0x808A7E48 A0C00144 */ sb	$zero, 0X144($a2)
/* 000007 0x808A7E4C 00021A03 */ sra	$v1, $v0, 8
/* 000008 0x808A7E50 306300FF */ andi	$v1, $v1, 0XFF
/* 000009 0x808A7E54 304E00FF */ andi	$t6, $v0, 0XFF
/* 000010 0x808A7E58 14610005 */ bne	$v1, $at, .L808A7E70
/* 000011 0x808A7E5C A4CE001C */ sh	$t6, 0X1C($a2)
/* 000012 0x808A7E60 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000013 0x808A7E64 00C02025 */ move	$a0, $a2
/* 000014 0x808A7E68 10000010 */ b	.L808A7EAC
/* 000015 0x808A7E6C 8FBF0014 */ lw	$ra, 0X14($sp)
.L808A7E70:
/* 000016 0x808A7E70 3C0F0002 */ lui	$t7, 0x0002
/* 000017 0x808A7E74 01E77821 */ addu	$t7, $t7, $a3
/* 000018 0x808A7E78 8DEF8864 */ lw	$t7, -0X779C($t7)
/* 000019 0x808A7E7C 0003C0C0 */ sll	$t8, $v1, 3
/* 000020 0x808A7E80 01F82821 */ addu	$a1, $t7, $t8
/* 000021 0x808A7E84 8CA40004 */ lw	$a0, 0X4($a1)
/* 000022 0x808A7E88 AFA60028 */ sw	$a2, 0X28($sp)
/* 000023 0x808A7E8C 0C040141 */ jal	Lib_PtrSegToVirt
/* 000024 0x808A7E90 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000025 0x808A7E94 8FA60028 */ lw	$a2, 0X28($sp)
/* 000026 0x808A7E98 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000027 0x808A7E9C ACC20148 */ sw	$v0, 0X148($a2)
/* 000028 0x808A7EA0 90B90000 */ lbu	$t9, 0X0($a1)
/* 000029 0x808A7EA4 A0D90146 */ sb	$t9, 0X146($a2)
/* 000030 0x808A7EA8 8FBF0014 */ lw	$ra, 0X14($sp)
.L808A7EAC:
/* 000031 0x808A7EAC 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000032 0x808A7EB0 03E00008 */ jr	$ra
/* 000033 0x808A7EB4 00000000 */ nop

