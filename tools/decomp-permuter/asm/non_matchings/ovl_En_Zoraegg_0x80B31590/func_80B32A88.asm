glabel func_80B32A88
/* 001342 0x80B32A88 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 001343 0x80B32A8C AFB00018 */ sw	$s0, 0X18($sp)
/* 001344 0x80B32A90 00808025 */ move	$s0, $a0
/* 001345 0x80B32A94 AFBF001C */ sw	$ra, 0X1C($sp)
/* 001346 0x80B32A98 AFA50024 */ sw	$a1, 0X24($sp)
/* 001347 0x80B32A9C 8FA40024 */ lw	$a0, 0X24($sp)
/* 001348 0x80B32AA0 0C03B8A7 */ jal	func_800EE29C
/* 001349 0x80B32AA4 960501F0 */ lhu	$a1, 0X1F0($s0)
/* 001350 0x80B32AA8 1040000F */ beqz	$v0, .L80B32AE8
/* 001351 0x80B32AAC 8FA40024 */ lw	$a0, 0X24($sp)
/* 001352 0x80B32AB0 0C03B880 */ jal	func_800EE200
/* 001353 0x80B32AB4 960501F0 */ lhu	$a1, 0X1F0($s0)
/* 001354 0x80B32AB8 8FAE0024 */ lw	$t6, 0X24($sp)
/* 001355 0x80B32ABC 00027880 */ sll	$t7, $v0, 2
/* 001356 0x80B32AC0 24010002 */ li	$at, 0X2
/* 001357 0x80B32AC4 01CFC021 */ addu	$t8, $t6, $t7
/* 001358 0x80B32AC8 8F191F4C */ lw	$t9, 0X1F4C($t8)
/* 001359 0x80B32ACC 3C0980B3 */ lui	$t1, %hi(func_80B32928)
/* 001360 0x80B32AD0 25292928 */ addiu	$t1, $t1, %lo(func_80B32928)
/* 001361 0x80B32AD4 97280000 */ lhu	$t0, 0X0($t9)
/* 001362 0x80B32AD8 55010004 */ bnel	$t0, $at, .L80B32AEC
/* 001363 0x80B32ADC 02002025 */ move	$a0, $s0
/* 001364 0x80B32AE0 A60001E8 */ sh	$zero, 0X1E8($s0)
/* 001365 0x80B32AE4 AE0901F8 */ sw	$t1, 0X1F8($s0)
.L80B32AE8:
/* 001366 0x80B32AE8 02002025 */ move	$a0, $s0
.L80B32AEC:
/* 001367 0x80B32AEC 8FA50024 */ lw	$a1, 0X24($sp)
/* 001368 0x80B32AF0 2406000D */ li	$a2, 0XD
/* 001369 0x80B32AF4 0C2CC759 */ jal	func_80B31D64
/* 001370 0x80B32AF8 24070000 */ li	$a3, 0X0
/* 001371 0x80B32AFC 8FBF001C */ lw	$ra, 0X1C($sp)
/* 001372 0x80B32B00 8FB00018 */ lw	$s0, 0X18($sp)
/* 001373 0x80B32B04 27BD0020 */ addiu	$sp, $sp, 0X20
/* 001374 0x80B32B08 03E00008 */ jr	$ra
/* 001375 0x80B32B0C 00000000 */ nop

