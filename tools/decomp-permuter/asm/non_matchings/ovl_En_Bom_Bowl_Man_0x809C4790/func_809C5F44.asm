glabel func_809C5F44
/* 001517 0x809C5F44 AFA40000 */ sw	$a0, 0X0($sp)
/* 001518 0x809C5F48 AFA7000C */ sw	$a3, 0XC($sp)
/* 001519 0x809C5F4C 2401000F */ li	$at, 0XF
/* 001520 0x809C5F50 54A10003 */ bnel	$a1, $at, .L809C5F60
/* 001521 0x809C5F54 24010011 */ li	$at, 0X11
/* 001522 0x809C5F58 ACC00000 */ sw	$zero, 0X0($a2)
/* 001523 0x809C5F5C 24010011 */ li	$at, 0X11
.L809C5F60:
/* 001524 0x809C5F60 14A10006 */ bne	$a1, $at, .L809C5F7C
/* 001525 0x809C5F64 8FA20014 */ lw	$v0, 0X14($sp)
/* 001526 0x809C5F68 8FA30010 */ lw	$v1, 0X10($sp)
/* 001527 0x809C5F6C 844F028A */ lh	$t7, 0X28A($v0)
/* 001528 0x809C5F70 846E0000 */ lh	$t6, 0X0($v1)
/* 001529 0x809C5F74 01CFC021 */ addu	$t8, $t6, $t7
/* 001530 0x809C5F78 A4780000 */ sh	$t8, 0X0($v1)
.L809C5F7C:
/* 001531 0x809C5F7C 24010013 */ li	$at, 0X13
/* 001532 0x809C5F80 14A10006 */ bne	$a1, $at, .L809C5F9C
/* 001533 0x809C5F84 8FA20014 */ lw	$v0, 0X14($sp)
/* 001534 0x809C5F88 845902F6 */ lh	$t9, 0X2F6($v0)
/* 001535 0x809C5F8C 24010002 */ li	$at, 0X2
/* 001536 0x809C5F90 57210003 */ bnel	$t9, $at, .L809C5FA0
/* 001537 0x809C5F94 24010014 */ li	$at, 0X14
/* 001538 0x809C5F98 ACC00000 */ sw	$zero, 0X0($a2)
.L809C5F9C:
/* 001539 0x809C5F9C 24010014 */ li	$at, 0X14
.L809C5FA0:
/* 001540 0x809C5FA0 54A10006 */ bnel	$a1, $at, .L809C5FBC
/* 001541 0x809C5FA4 00001025 */ move	$v0, $zero
/* 001542 0x809C5FA8 844802F6 */ lh	$t0, 0X2F6($v0)
/* 001543 0x809C5FAC 55000003 */ bnezl	$t0, .L809C5FBC
/* 001544 0x809C5FB0 00001025 */ move	$v0, $zero
/* 001545 0x809C5FB4 ACC00000 */ sw	$zero, 0X0($a2)
/* 001546 0x809C5FB8 00001025 */ move	$v0, $zero
.L809C5FBC:
/* 001547 0x809C5FBC 03E00008 */ jr	$ra
/* 001548 0x809C5FC0 00000000 */ nop

