glabel func_80BC9C88
/* 000646 0x80BC9C88 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000647 0x80BC9C8C AFBF001C */ sw	$ra, 0X1C($sp)
/* 000648 0x80BC9C90 AFA40020 */ sw	$a0, 0X20($sp)
/* 000649 0x80BC9C94 00A02025 */ move	$a0, $a1
/* 000650 0x80BC9C98 0C051DED */ jal	func_801477B4
/* 000651 0x80BC9C9C AFA50024 */ sw	$a1, 0X24($sp)
/* 000652 0x80BC9CA0 3C0E801C */ lui	$t6, %hi(D_801C20BD)
/* 000653 0x80BC9CA4 91CE20BD */ lbu	$t6, %lo(D_801C20BD)($t6)
/* 000654 0x80BC9CA8 3C0F801F */ lui	$t7, %hi(gSaveContext + 0x70)
/* 000655 0x80BC9CAC 24010045 */ li	$at, 0X45
/* 000656 0x80BC9CB0 01EE7821 */ addu	$t7, $t7, $t6
/* 000657 0x80BC9CB4 91EFF6E0 */ lbu	$t7, %lo(gSaveContext + 0x70)($t7)
/* 000658 0x80BC9CB8 8FA50024 */ lw	$a1, 0X24($sp)
/* 000659 0x80BC9CBC 15E10009 */ bne	$t7, $at, .L80BC9CE4
/* 000660 0x80BC9CC0 3C014396 */ lui	$at, 0x4396
/* 000661 0x80BC9CC4 44810000 */ mtc1	$at, $f0
/* 000662 0x80BC9CC8 8FA40020 */ lw	$a0, 0X20($sp)
/* 000663 0x80BC9CCC 24060002 */ li	$a2, 0X2
/* 000664 0x80BC9CD0 44070000 */ mfc1	$a3, $f0
/* 000665 0x80BC9CD4 0C02E287 */ jal	func_800B8A1C
/* 000666 0x80BC9CD8 E7A00010 */ swc1	$f0, 0X10($sp)
/* 000667 0x80BC9CDC 10000009 */ b	.L80BC9D04
/* 000668 0x80BC9CE0 8FA20020 */ lw	$v0, 0X20($sp)
.L80BC9CE4:
/* 000669 0x80BC9CE4 3C014396 */ lui	$at, 0x4396
/* 000670 0x80BC9CE8 44810000 */ mtc1	$at, $f0
/* 000671 0x80BC9CEC 8FA40020 */ lw	$a0, 0X20($sp)
/* 000672 0x80BC9CF0 2406008B */ li	$a2, 0X8B
/* 000673 0x80BC9CF4 44070000 */ mfc1	$a3, $f0
/* 000674 0x80BC9CF8 0C02E287 */ jal	func_800B8A1C
/* 000675 0x80BC9CFC E7A00010 */ swc1	$f0, 0X10($sp)
/* 000676 0x80BC9D00 8FA20020 */ lw	$v0, 0X20($sp)
.L80BC9D04:
/* 000677 0x80BC9D04 3C1980BD */ lui	$t9, %hi(func_80BC9D28)
/* 000678 0x80BC9D08 24180004 */ li	$t8, 0X4
/* 000679 0x80BC9D0C 27399D28 */ addiu	$t9, $t9, %lo(func_80BC9D28)
/* 000680 0x80BC9D10 A4580270 */ sh	$t8, 0X270($v0)
/* 000681 0x80BC9D14 AC590254 */ sw	$t9, 0X254($v0)
/* 000682 0x80BC9D18 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000683 0x80BC9D1C 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000684 0x80BC9D20 03E00008 */ jr	$ra
/* 000685 0x80BC9D24 00000000 */ nop

