glabel func_809679D0
/* 000000 0x809679D0 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000001 0x809679D4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000002 0x809679D8 00803025 */ move	$a2, $a0
/* 000003 0x809679DC 84C302FA */ lh	$v1, 0X2FA($a2)
/* 000004 0x809679E0 2404003C */ li	$a0, 0X3C
/* 000005 0x809679E4 2405003C */ li	$a1, 0X3C
/* 000006 0x809679E8 14600003 */ bnez	$v1, .L809679F8
/* 000007 0x809679EC 246EFFFF */ addiu	$t6, $v1, -0X1
/* 000008 0x809679F0 10000004 */ b	.L80967A04
/* 000009 0x809679F4 00001025 */ move	$v0, $zero
.L809679F8:
/* 000010 0x809679F8 A4CE02FA */ sh	$t6, 0X2FA($a2)
/* 000011 0x809679FC 84C302FA */ lh	$v1, 0X2FA($a2)
/* 000012 0x80967A00 00601025 */ move	$v0, $v1
.L80967A04:
/* 000013 0x80967A04 54400007 */ bnezl	$v0, .L80967A24
/* 000014 0x80967A08 A4C302F8 */ sh	$v1, 0X2F8($a2)
/* 000015 0x80967A0C 0C03FD14 */ jal	Math_Rand_S16Offset
/* 000016 0x80967A10 AFA60018 */ sw	$a2, 0X18($sp)
/* 000017 0x80967A14 8FA60018 */ lw	$a2, 0X18($sp)
/* 000018 0x80967A18 A4C202FA */ sh	$v0, 0X2FA($a2)
/* 000019 0x80967A1C 84C302FA */ lh	$v1, 0X2FA($a2)
/* 000020 0x80967A20 A4C302F8 */ sh	$v1, 0X2F8($a2)
.L80967A24:
/* 000021 0x80967A24 84CF02F8 */ lh	$t7, 0X2F8($a2)
/* 000022 0x80967A28 29E10003 */ slti	$at, $t7, 0X3
/* 000023 0x80967A2C 54200003 */ bnezl	$at, .L80967A3C
/* 000024 0x80967A30 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000025 0x80967A34 A4C002F8 */ sh	$zero, 0X2F8($a2)
/* 000026 0x80967A38 8FBF0014 */ lw	$ra, 0X14($sp)
.L80967A3C:
/* 000027 0x80967A3C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000028 0x80967A40 03E00008 */ jr	$ra
/* 000029 0x80967A44 00000000 */ nop

