glabel func_80985088
/* 001510 0x80985088 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 001511 0x8098508C AFB00018 */ sw	$s0, 0X18($sp)
/* 001512 0x80985090 00808025 */ move	$s0, $a0
/* 001513 0x80985094 AFBF001C */ sw	$ra, 0X1C($sp)
/* 001514 0x80985098 860E014A */ lh	$t6, 0X14A($s0)
/* 001515 0x8098509C 24010019 */ li	$at, 0X19
/* 001516 0x809850A0 25CF0001 */ addiu	$t7, $t6, 0X1
/* 001517 0x809850A4 A60F014A */ sh	$t7, 0X14A($s0)
/* 001518 0x809850A8 8618014A */ lh	$t8, 0X14A($s0)
/* 001519 0x809850AC 0301001A */ div	$zero, $t8, $at
/* 001520 0x809850B0 0000C810 */ mfhi	$t9
/* 001521 0x809850B4 57200008 */ bnezl	$t9, .L809850D8
/* 001522 0x809850B8 02002025 */ move	$a0, $s0
/* 001523 0x809850BC 920800D0 */ lbu	$t0, 0XD0($s0)
/* 001524 0x809850C0 2901001A */ slti	$at, $t0, 0X1A
/* 001525 0x809850C4 54200004 */ bnezl	$at, .L809850D8
/* 001526 0x809850C8 02002025 */ move	$a0, $s0
/* 001527 0x809850CC 0C260F6F */ jal	func_80983DBC
/* 001528 0x809850D0 02002025 */ move	$a0, $s0
/* 001529 0x809850D4 02002025 */ move	$a0, $s0
.L809850D8:
/* 001530 0x809850D8 0C02E404 */ jal	func_800B9010
/* 001531 0x809850DC 24052144 */ li	$a1, 0X2144
/* 001532 0x809850E0 3C053A83 */ lui	$a1, 0x3A83
/* 001533 0x809850E4 3C063A44 */ lui	$a2, 0x3A44
/* 001534 0x809850E8 34C69BA6 */ ori	$a2, $a2, 0X9BA6
/* 001535 0x809850EC 34A5126F */ ori	$a1, $a1, 0X126F
/* 001536 0x809850F0 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 001537 0x809850F4 2604005C */ addiu	$a0, $s0, 0X5C
/* 001538 0x809850F8 5040000C */ beqzl	$v0, .L8098512C
/* 001539 0x809850FC 3C063A83 */ lui	$a2, 0x3A83
/* 001540 0x80985100 920200D0 */ lbu	$v0, 0XD0($s0)
/* 001541 0x80985104 02002025 */ move	$a0, $s0
/* 001542 0x80985108 2442FFFC */ addiu	$v0, $v0, -0X4
/* 001543 0x8098510C 5C400006 */ bgtzl	$v0, .L80985128
/* 001544 0x80985110 A20200D0 */ sb	$v0, 0XD0($s0)
/* 001545 0x80985114 0C260FA7 */ jal	func_80983E9C
/* 001546 0x80985118 A20000D0 */ sb	$zero, 0XD0($s0)
/* 001547 0x8098511C 10000003 */ b	.L8098512C
/* 001548 0x80985120 3C063A83 */ lui	$a2, 0x3A83
/* 001549 0x80985124 A20200D0 */ sb	$v0, 0XD0($s0)
.L80985128:
/* 001550 0x80985128 3C063A83 */ lui	$a2, 0x3A83
.L8098512C:
/* 001551 0x8098512C 34C6126F */ ori	$a2, $a2, 0X126F
/* 001552 0x80985130 26040058 */ addiu	$a0, $s0, 0X58
/* 001553 0x80985134 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 001554 0x80985138 3C053E80 */ lui	$a1, 0x3E80
/* 001555 0x8098513C C6040058 */ lwc1	$f4, 0X58($s0)
/* 001556 0x80985140 E6040060 */ swc1	$f4, 0X60($s0)
/* 001557 0x80985144 8FBF001C */ lw	$ra, 0X1C($sp)
/* 001558 0x80985148 8FB00018 */ lw	$s0, 0X18($sp)
/* 001559 0x8098514C 03E00008 */ jr	$ra
/* 001560 0x80985150 27BD0020 */ addiu	$sp, $sp, 0X20

