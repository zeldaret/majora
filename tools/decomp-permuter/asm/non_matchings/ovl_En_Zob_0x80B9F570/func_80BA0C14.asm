glabel func_80BA0C14
/* 001449 0x80BA0C14 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001450 0x80BA0C18 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001451 0x80BA0C1C AFA5001C */ sw	$a1, 0X1C($sp)
/* 001452 0x80BA0C20 00803025 */ move	$a2, $a0
/* 001453 0x80BA0C24 00C02025 */ move	$a0, $a2
/* 001454 0x80BA0C28 0C2E7E1B */ jal	func_80B9F86C
/* 001455 0x80BA0C2C AFA60018 */ sw	$a2, 0X18($sp)
/* 001456 0x80BA0C30 8FA60018 */ lw	$a2, 0X18($sp)
/* 001457 0x80BA0C34 241903E7 */ li	$t9, 0X3E7
/* 001458 0x80BA0C38 24050203 */ li	$a1, 0X203
/* 001459 0x80BA0C3C 84C20312 */ lh	$v0, 0X312($a2)
/* 001460 0x80BA0C40 2841031F */ slti	$at, $v0, 0X31F
/* 001461 0x80BA0C44 10200004 */ beqz	$at, .L80BA0C58
/* 001462 0x80BA0C48 244F001E */ addiu	$t7, $v0, 0X1E
/* 001463 0x80BA0C4C 244E00C8 */ addiu	$t6, $v0, 0XC8
/* 001464 0x80BA0C50 10000002 */ b	.L80BA0C5C
/* 001465 0x80BA0C54 A4CE0312 */ sh	$t6, 0X312($a2)
.L80BA0C58:
/* 001466 0x80BA0C58 A4CF0312 */ sh	$t7, 0X312($a2)
.L80BA0C5C:
/* 001467 0x80BA0C5C 84D80312 */ lh	$t8, 0X312($a2)
/* 001468 0x80BA0C60 2B0103E8 */ slti	$at, $t8, 0X3E8
/* 001469 0x80BA0C64 54200003 */ bnezl	$at, .L80BA0C74
/* 001470 0x80BA0C68 8FA4001C */ lw	$a0, 0X1C($sp)
/* 001471 0x80BA0C6C A4D90312 */ sh	$t9, 0X312($a2)
/* 001472 0x80BA0C70 8FA4001C */ lw	$a0, 0X1C($sp)
.L80BA0C74:
/* 001473 0x80BA0C74 0C03B8A7 */ jal	func_800EE29C
/* 001474 0x80BA0C78 AFA60018 */ sw	$a2, 0X18($sp)
/* 001475 0x80BA0C7C 10400014 */ beqz	$v0, .L80BA0CD0
/* 001476 0x80BA0C80 8FA60018 */ lw	$a2, 0X18($sp)
/* 001477 0x80BA0C84 8FA4001C */ lw	$a0, 0X1C($sp)
/* 001478 0x80BA0C88 24050203 */ li	$a1, 0X203
/* 001479 0x80BA0C8C 0C03B880 */ jal	func_800EE200
/* 001480 0x80BA0C90 AFA60018 */ sw	$a2, 0X18($sp)
/* 001481 0x80BA0C94 8FA8001C */ lw	$t0, 0X1C($sp)
/* 001482 0x80BA0C98 00024880 */ sll	$t1, $v0, 2
/* 001483 0x80BA0C9C 24010001 */ li	$at, 0X1
/* 001484 0x80BA0CA0 01095021 */ addu	$t2, $t0, $t1
/* 001485 0x80BA0CA4 8D4B1F4C */ lw	$t3, 0X1F4C($t2)
/* 001486 0x80BA0CA8 3C0D80BA */ lui	$t5, %hi(func_80BA0CF4)
/* 001487 0x80BA0CAC 8FA60018 */ lw	$a2, 0X18($sp)
/* 001488 0x80BA0CB0 956C0000 */ lhu	$t4, 0X0($t3)
/* 001489 0x80BA0CB4 25AD0CF4 */ addiu	$t5, $t5, %lo(func_80BA0CF4)
/* 001490 0x80BA0CB8 240EFFFF */ li	$t6, -0X1
/* 001491 0x80BA0CBC 5581000A */ bnel	$t4, $at, .L80BA0CE8
/* 001492 0x80BA0CC0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001493 0x80BA0CC4 ACCD0314 */ sw	$t5, 0X314($a2)
/* 001494 0x80BA0CC8 10000006 */ b	.L80BA0CE4
/* 001495 0x80BA0CCC A4CE0312 */ sh	$t6, 0X312($a2)
.L80BA0CD0:
/* 001496 0x80BA0CD0 3C0F80BA */ lui	$t7, %hi(func_80BA0CF4)
/* 001497 0x80BA0CD4 25EF0CF4 */ addiu	$t7, $t7, %lo(func_80BA0CF4)
/* 001498 0x80BA0CD8 2418FFFF */ li	$t8, -0X1
/* 001499 0x80BA0CDC ACCF0314 */ sw	$t7, 0X314($a2)
/* 001500 0x80BA0CE0 A4D80312 */ sh	$t8, 0X312($a2)
.L80BA0CE4:
/* 001501 0x80BA0CE4 8FBF0014 */ lw	$ra, 0X14($sp)
.L80BA0CE8:
/* 001502 0x80BA0CE8 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001503 0x80BA0CEC 03E00008 */ jr	$ra
/* 001504 0x80BA0CF0 00000000 */ nop

