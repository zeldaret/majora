glabel func_80A14430
/* 003352 0x80A14430 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 003353 0x80A14434 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 003354 0x80A14438 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 003355 0x80A1443C AFBF0014 */ sw	$ra, 0X14($sp)
/* 003356 0x80A14440 8C620000 */ lw	$v0, 0X0($v1)
/* 003357 0x80A14444 3401D000 */ ori	$at, $zero, 0XD000
/* 003358 0x80A14448 10410003 */ beq	$v0, $at, .L80A14458
/* 003359 0x80A1444C 3401D020 */ ori	$at, $zero, 0XD020
/* 003360 0x80A14450 1441000C */ bne	$v0, $at, .L80A14484
/* 003361 0x80A14454 00000000 */ nop
.L80A14458:
/* 003362 0x80A14458 906E0F19 */ lbu	$t6, 0XF19($v1)
/* 003363 0x80A1445C 31CF0080 */ andi	$t7, $t6, 0X80
/* 003364 0x80A14460 11E00008 */ beqz	$t7, .L80A14484
/* 003365 0x80A14464 00000000 */ nop
/* 003366 0x80A14468 0C285006 */ jal	func_80A14018
/* 003367 0x80A1446C AFA40018 */ sw	$a0, 0X18($sp)
/* 003368 0x80A14470 8FA40018 */ lw	$a0, 0X18($sp)
/* 003369 0x80A14474 3C1880A1 */ lui	$t8, %hi(func_80A149B0)
/* 003370 0x80A14478 271849B0 */ addiu	$t8, $t8, %lo(func_80A149B0)
/* 003371 0x80A1447C 10000003 */ b	.L80A1448C
/* 003372 0x80A14480 AC980188 */ sw	$t8, 0X188($a0)
.L80A14484:
/* 003373 0x80A14484 0C02D9C3 */ jal	Actor_MarkForDeath
/* 003374 0x80A14488 00000000 */ nop
.L80A1448C:
/* 003375 0x80A1448C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 003376 0x80A14490 27BD0018 */ addiu	$sp, $sp, 0X18
/* 003377 0x80A14494 03E00008 */ jr	$ra
/* 003378 0x80A14498 00000000 */ nop

