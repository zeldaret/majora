glabel func_80B2BD30
/* 000320 0x80B2BD30 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000321 0x80B2BD34 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000322 0x80B2BD38 A4800208 */ sh	$zero, 0X208($a0)
/* 000323 0x80B2BD3C 90C20000 */ lbu	$v0, 0X0($a2)
/* 000324 0x80B2BD40 24010001 */ li	$at, 0X1
/* 000325 0x80B2BD44 00001825 */ move	$v1, $zero
/* 000326 0x80B2BD48 10410005 */ beq	$v0, $at, .L80B2BD60
/* 000327 0x80B2BD4C 24010002 */ li	$at, 0X2
/* 000328 0x80B2BD50 50410008 */ beql	$v0, $at, .L80B2BD74
/* 000329 0x80B2BD54 24030001 */ li	$v1, 0X1
/* 000330 0x80B2BD58 10000007 */ b	.L80B2BD78
/* 000331 0x80B2BD5C 00601025 */ move	$v0, $v1
.L80B2BD60:
/* 000332 0x80B2BD60 0C2CAF3E */ jal	func_80B2BCF8
/* 000333 0x80B2BD64 00000000 */ nop
/* 000334 0x80B2BD68 10000002 */ b	.L80B2BD74
/* 000335 0x80B2BD6C 00401825 */ move	$v1, $v0
/* 000336 0x80B2BD70 24030001 */ li	$v1, 0X1
.L80B2BD74:
/* 000337 0x80B2BD74 00601025 */ move	$v0, $v1
.L80B2BD78:
/* 000338 0x80B2BD78 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000339 0x80B2BD7C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000340 0x80B2BD80 03E00008 */ jr	$ra
/* 000341 0x80B2BD84 00000000 */ nop

