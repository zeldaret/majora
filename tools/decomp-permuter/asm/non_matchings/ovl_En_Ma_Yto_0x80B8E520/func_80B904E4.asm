glabel func_80B904E4
/* 002033 0x80B904E4 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 002034 0x80B904E8 AFB10018 */ sw	$s1, 0X18($sp)
/* 002035 0x80B904EC 00A08825 */ move	$s1, $a1
/* 002036 0x80B904F0 AFBF001C */ sw	$ra, 0X1C($sp)
/* 002037 0x80B904F4 AFB00014 */ sw	$s0, 0X14($sp)
/* 002038 0x80B904F8 AFA40020 */ sw	$a0, 0X20($sp)
/* 002039 0x80B904FC 26304908 */ addiu	$s0, $s1, 0X4908
/* 002040 0x80B90500 0C054926 */ jal	func_80152498
/* 002041 0x80B90504 02002025 */ move	$a0, $s0
/* 002042 0x80B90508 24010006 */ li	$at, 0X6
/* 002043 0x80B9050C 10410006 */ beq	$v0, $at, .L80B90528
/* 002044 0x80B90510 00000000 */ nop
/* 002045 0x80B90514 0C054926 */ jal	func_80152498
/* 002046 0x80B90518 02002025 */ move	$a0, $s0
/* 002047 0x80B9051C 24010005 */ li	$at, 0X5
/* 002048 0x80B90520 1441000F */ bne	$v0, $at, .L80B90560
/* 002049 0x80B90524 00000000 */ nop
.L80B90528:
/* 002050 0x80B90528 0C051D89 */ jal	func_80147624
/* 002051 0x80B9052C 02202025 */ move	$a0, $s1
/* 002052 0x80B90530 1040000B */ beqz	$v0, .L80B90560
/* 002053 0x80B90534 00000000 */ nop
/* 002054 0x80B90538 0C054926 */ jal	func_80152498
/* 002055 0x80B9053C 02002025 */ move	$a0, $s0
/* 002056 0x80B90540 24010005 */ li	$at, 0X5
/* 002057 0x80B90544 14410006 */ bne	$v0, $at, .L80B90560
/* 002058 0x80B90548 02202025 */ move	$a0, $s1
/* 002059 0x80B9054C 8FA50020 */ lw	$a1, 0X20($sp)
/* 002060 0x80B90550 0C02DCA6 */ jal	func_800B7298
/* 002061 0x80B90554 24060007 */ li	$a2, 0X7
/* 002062 0x80B90558 0C051DED */ jal	func_801477B4
/* 002063 0x80B9055C 02202025 */ move	$a0, $s1
.L80B90560:
/* 002064 0x80B90560 0C054926 */ jal	func_80152498
/* 002065 0x80B90564 02002025 */ move	$a0, $s0
/* 002066 0x80B90568 14400007 */ bnez	$v0, .L80B90588
/* 002067 0x80B9056C 3C0E0001 */ lui	$t6, 0x0001
/* 002068 0x80B90570 01D17021 */ addu	$t6, $t6, $s1
/* 002069 0x80B90574 91CE69B9 */ lbu	$t6, 0X69B9($t6)
/* 002070 0x80B90578 55C00004 */ bnezl	$t6, .L80B9058C
/* 002071 0x80B9057C 8FBF001C */ lw	$ra, 0X1C($sp)
/* 002072 0x80B90580 0C2E4167 */ jal	func_80B9059C
/* 002073 0x80B90584 8FA40020 */ lw	$a0, 0X20($sp)
.L80B90588:
/* 002074 0x80B90588 8FBF001C */ lw	$ra, 0X1C($sp)
.L80B9058C:
/* 002075 0x80B9058C 8FB00014 */ lw	$s0, 0X14($sp)
/* 002076 0x80B90590 8FB10018 */ lw	$s1, 0X18($sp)
/* 002077 0x80B90594 03E00008 */ jr	$ra
/* 002078 0x80B90598 27BD0020 */ addiu	$sp, $sp, 0X20

