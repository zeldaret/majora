glabel func_80B5ED90
/* 000320 0x80B5ED90 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000321 0x80B5ED94 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000322 0x80B5ED98 AFA40020 */ sw	$a0, 0X20($sp)
/* 000323 0x80B5ED9C AFA50024 */ sw	$a1, 0X24($sp)
/* 000324 0x80B5EDA0 8FAE0020 */ lw	$t6, 0X20($sp)
/* 000325 0x80B5EDA4 3C014120 */ lui	$at, 0x4120
/* 000326 0x80B5EDA8 8FA40024 */ lw	$a0, 0X24($sp)
/* 000327 0x80B5EDAC 85CF02B4 */ lh	$t7, 0X2B4($t6)
/* 000328 0x80B5EDB0 24180008 */ li	$t8, 0X8
/* 000329 0x80B5EDB4 01C02825 */ move	$a1, $t6
/* 000330 0x80B5EDB8 55E0000A */ bnezl	$t7, .L80B5EDE4
/* 000331 0x80B5EDBC 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000332 0x80B5EDC0 44810000 */ mtc1	$at, $f0
/* 000333 0x80B5EDC4 85C70032 */ lh	$a3, 0X32($t6)
/* 000334 0x80B5EDC8 AFB80014 */ sw	$t8, 0X14($sp)
/* 000335 0x80B5EDCC 44060000 */ mfc1	$a2, $f0
/* 000336 0x80B5EDD0 0C02E354 */ jal	func_800B8D50
/* 000337 0x80B5EDD4 E7A00010 */ swc1	$f0, 0X10($sp)
/* 000338 0x80B5EDD8 0C2D7B7C */ jal	func_80B5EDF0
/* 000339 0x80B5EDDC 8FA40020 */ lw	$a0, 0X20($sp)
/* 000340 0x80B5EDE0 8FBF001C */ lw	$ra, 0X1C($sp)
.L80B5EDE4:
/* 000341 0x80B5EDE4 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000342 0x80B5EDE8 03E00008 */ jr	$ra
/* 000343 0x80B5EDEC 00000000 */ nop

