glabel func_80BCF710
/* 000336 0x80BCF710 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000337 0x80BCF714 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000338 0x80BCF718 AFA40018 */ sw	$a0, 0X18($sp)
/* 000339 0x80BCF71C AFA5001C */ sw	$a1, 0X1C($sp)
/* 000340 0x80BCF720 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000341 0x80BCF724 0C054926 */ jal	func_80152498
/* 000342 0x80BCF728 24844908 */ addiu	$a0, $a0, 0X4908
/* 000343 0x80BCF72C 1440000E */ bnez	$v0, .L80BCF768
/* 000344 0x80BCF730 8FA40018 */ lw	$a0, 0X18($sp)
/* 000345 0x80BCF734 0C02E134 */ jal	func_800B84D0
/* 000346 0x80BCF738 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000347 0x80BCF73C 10400007 */ beqz	$v0, .L80BCF75C
/* 000348 0x80BCF740 8FA40018 */ lw	$a0, 0X18($sp)
/* 000349 0x80BCF744 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000350 0x80BCF748 2405024F */ li	$a1, 0X24F
/* 000351 0x80BCF74C 0C05462C */ jal	func_801518B0
/* 000352 0x80BCF750 8FA60018 */ lw	$a2, 0X18($sp)
/* 000353 0x80BCF754 10000005 */ b	.L80BCF76C
/* 000354 0x80BCF758 8FBF0014 */ lw	$ra, 0X14($sp)
.L80BCF75C:
/* 000355 0x80BCF75C 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000356 0x80BCF760 0C02E185 */ jal	func_800B8614
/* 000357 0x80BCF764 3C0642A0 */ lui	$a2, 0x42A0
.L80BCF768:
/* 000358 0x80BCF768 8FBF0014 */ lw	$ra, 0X14($sp)
.L80BCF76C:
/* 000359 0x80BCF76C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000360 0x80BCF770 03E00008 */ jr	$ra
/* 000361 0x80BCF774 00000000 */ nop

