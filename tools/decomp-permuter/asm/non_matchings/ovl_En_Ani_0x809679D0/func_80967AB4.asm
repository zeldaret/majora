glabel func_80967AB4
/* 000057 0x80967AB4 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000058 0x80967AB8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000059 0x80967ABC 00803025 */ move	$a2, $a0
/* 000060 0x80967AC0 84C202FA */ lh	$v0, 0X2FA($a2)
/* 000061 0x80967AC4 18400003 */ blez	$v0, .L80967AD4
/* 000062 0x80967AC8 244EFFFF */ addiu	$t6, $v0, -0X1
/* 000063 0x80967ACC 1000000F */ b	.L80967B0C
/* 000064 0x80967AD0 A4CE02FA */ sh	$t6, 0X2FA($a2)
.L80967AD4:
/* 000065 0x80967AD4 84C202F8 */ lh	$v0, 0X2F8($a2)
/* 000066 0x80967AD8 3C188096 */ lui	$t8, %hi(func_80967A48)
/* 000067 0x80967ADC 27187A48 */ addiu	$t8, $t8, %lo(func_80967A48)
/* 000068 0x80967AE0 18400004 */ blez	$v0, .L80967AF4
/* 000069 0x80967AE4 2404000A */ li	$a0, 0XA
/* 000070 0x80967AE8 244FFFFF */ addiu	$t7, $v0, -0X1
/* 000071 0x80967AEC 10000007 */ b	.L80967B0C
/* 000072 0x80967AF0 A4CF02F8 */ sh	$t7, 0X2F8($a2)
.L80967AF4:
/* 000073 0x80967AF4 ACD802F4 */ sw	$t8, 0X2F4($a2)
/* 000074 0x80967AF8 AFA60018 */ sw	$a2, 0X18($sp)
/* 000075 0x80967AFC 0C03FD14 */ jal	Math_Rand_S16Offset
/* 000076 0x80967B00 2405000A */ li	$a1, 0XA
/* 000077 0x80967B04 8FA60018 */ lw	$a2, 0X18($sp)
/* 000078 0x80967B08 A4C202FA */ sh	$v0, 0X2FA($a2)
.L80967B0C:
/* 000079 0x80967B0C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000080 0x80967B10 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000081 0x80967B14 03E00008 */ jr	$ra
/* 000082 0x80967B18 00000000 */ nop

