glabel func_80A8BC8C
/* 000327 0x80A8BC8C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000328 0x80A8BC90 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000329 0x80A8BC94 AFA40018 */ sw	$a0, 0X18($sp)
/* 000330 0x80A8BC98 00A03825 */ move	$a3, $a1
/* 000331 0x80A8BC9C 94CE000C */ lhu	$t6, 0XC($a2)
/* 000332 0x80A8BCA0 2401BFFF */ li	$at, -0X4001
/* 000333 0x80A8BCA4 00E02025 */ move	$a0, $a3
/* 000334 0x80A8BCA8 01C17827 */ nor	$t7, $t6, $at
/* 000335 0x80A8BCAC 15E00005 */ bnez	$t7, .L80A8BCC4
/* 000336 0x80A8BCB0 00001025 */ move	$v0, $zero
/* 000337 0x80A8BCB4 0C2A2EE3 */ jal	func_80A8BB8C
/* 000338 0x80A8BCB8 8FA50018 */ lw	$a1, 0X18($sp)
/* 000339 0x80A8BCBC 10000001 */ b	.L80A8BCC4
/* 000340 0x80A8BCC0 24020001 */ li	$v0, 0X1
.L80A8BCC4:
/* 000341 0x80A8BCC4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000342 0x80A8BCC8 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000343 0x80A8BCCC 03E00008 */ jr	$ra
/* 000344 0x80A8BCD0 00000000 */ nop

