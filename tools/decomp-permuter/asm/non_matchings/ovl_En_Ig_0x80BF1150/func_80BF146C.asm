glabel func_80BF146C
/* 000199 0x80BF146C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000200 0x80BF1470 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000201 0x80BF1474 908E0298 */ lbu	$t6, 0X298($a0)
/* 000202 0x80BF1478 24010003 */ li	$at, 0X3
/* 000203 0x80BF147C 24060004 */ li	$a2, 0X4
/* 000204 0x80BF1480 55C10006 */ bnel	$t6, $at, .L80BF149C
/* 000205 0x80BF1484 8CA31CCC */ lw	$v1, 0X1CCC($a1)
/* 000206 0x80BF1488 0C2FC454 */ jal	func_80BF1150
/* 000207 0x80BF148C 24070202 */ li	$a3, 0X202
/* 000208 0x80BF1490 10000002 */ b	.L80BF149C
/* 000209 0x80BF1494 00401825 */ move	$v1, $v0
/* 000210 0x80BF1498 8CA31CCC */ lw	$v1, 0X1CCC($a1)
.L80BF149C:
/* 000211 0x80BF149C 00601025 */ move	$v0, $v1
/* 000212 0x80BF14A0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000213 0x80BF14A4 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000214 0x80BF14A8 03E00008 */ jr	$ra
/* 000215 0x80BF14AC 00000000 */ nop

