glabel func_8091AC78
/* 000246 0x8091AC78 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000247 0x8091AC7C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000248 0x8091AC80 00803025 */ move	$a2, $a0
/* 000249 0x8091AC84 24040005 */ li	$a0, 0X5
/* 000250 0x8091AC88 24050023 */ li	$a1, 0X23
/* 000251 0x8091AC8C 0C03FD14 */ jal	Math_Rand_S16Offset
/* 000252 0x8091AC90 AFA60018 */ sw	$a2, 0X18($sp)
/* 000253 0x8091AC94 8FA60018 */ lw	$a2, 0X18($sp)
/* 000254 0x8091AC98 3C0E8092 */ lui	$t6, %hi(func_8091ACC4)
/* 000255 0x8091AC9C 25CEACC4 */ addiu	$t6, $t6, %lo(func_8091ACC4)
/* 000256 0x8091ACA0 94CF030C */ lhu	$t7, 0X30C($a2)
/* 000257 0x8091ACA4 A4C20312 */ sh	$v0, 0X312($a2)
/* 000258 0x8091ACA8 ACCE0308 */ sw	$t6, 0X308($a2)
/* 000259 0x8091ACAC 35F80100 */ ori	$t8, $t7, 0X100
/* 000260 0x8091ACB0 A4D8030C */ sh	$t8, 0X30C($a2)
/* 000261 0x8091ACB4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000262 0x8091ACB8 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000263 0x8091ACBC 03E00008 */ jr	$ra
/* 000264 0x8091ACC0 00000000 */ nop

