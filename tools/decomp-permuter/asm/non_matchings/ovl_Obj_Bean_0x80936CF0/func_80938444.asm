glabel func_80938444
/* 001493 0x80938444 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 001494 0x80938448 AFB00018 */ sw	$s0, 0X18($sp)
/* 001495 0x8093844C 00808025 */ move	$s0, $a0
/* 001496 0x80938450 AFBF001C */ sw	$ra, 0X1C($sp)
/* 001497 0x80938454 AFA5002C */ sw	$a1, 0X2C($sp)
/* 001498 0x80938458 3C053E2A */ lui	$a1, 0x3E2A
/* 001499 0x8093845C 3C063C23 */ lui	$a2, 0x3C23
/* 001500 0x80938460 34C6D70A */ ori	$a2, $a2, 0XD70A
/* 001501 0x80938464 34A5BA63 */ ori	$a1, $a1, 0XBA63
/* 001502 0x80938468 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 001503 0x8093846C 2604005C */ addiu	$a0, $s0, 0X5C
/* 001504 0x80938470 30430001 */ andi	$v1, $v0, 0X1
/* 001505 0x80938474 3C053D12 */ lui	$a1, 0x3D12
/* 001506 0x80938478 3C063A94 */ lui	$a2, 0x3A94
/* 001507 0x8093847C 34C61C82 */ ori	$a2, $a2, 0X1C82
/* 001508 0x80938480 34A531C4 */ ori	$a1, $a1, 0X31C4
/* 001509 0x80938484 AFA30020 */ sw	$v1, 0X20($sp)
/* 001510 0x80938488 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 001511 0x8093848C 26040058 */ addiu	$a0, $s0, 0X58
/* 001512 0x80938490 8FA30020 */ lw	$v1, 0X20($sp)
/* 001513 0x80938494 C6040058 */ lwc1	$f4, 0X58($s0)
/* 001514 0x80938498 240F0001 */ li	$t7, 0X1
/* 001515 0x8093849C 00621824 */ and	$v1, $v1, $v0
/* 001516 0x809384A0 10600008 */ beqz	$v1, .L809384C4
/* 001517 0x809384A4 E6040060 */ swc1	$f4, 0X60($s0)
/* 001518 0x809384A8 860E01B2 */ lh	$t6, 0X1B2($s0)
/* 001519 0x809384AC 5DC00007 */ bgtzl	$t6, .L809384CC
/* 001520 0x809384B0 02002025 */ move	$a0, $s0
/* 001521 0x809384B4 0C24E13A */ jal	func_809384E8
/* 001522 0x809384B8 02002025 */ move	$a0, $s0
/* 001523 0x809384BC 10000003 */ b	.L809384CC
/* 001524 0x809384C0 02002025 */ move	$a0, $s0
.L809384C4:
/* 001525 0x809384C4 A60F01B2 */ sh	$t7, 0X1B2($s0)
/* 001526 0x809384C8 02002025 */ move	$a0, $s0
.L809384CC:
/* 001527 0x809384CC 0C02E404 */ jal	func_800B9010
/* 001528 0x809384D0 240500C6 */ li	$a1, 0XC6
/* 001529 0x809384D4 8FBF001C */ lw	$ra, 0X1C($sp)
/* 001530 0x809384D8 8FB00018 */ lw	$s0, 0X18($sp)
/* 001531 0x809384DC 27BD0028 */ addiu	$sp, $sp, 0X28
/* 001532 0x809384E0 03E00008 */ jr	$ra
/* 001533 0x809384E4 00000000 */ nop

