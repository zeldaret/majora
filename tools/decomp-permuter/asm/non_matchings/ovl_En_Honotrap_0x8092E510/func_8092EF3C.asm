glabel func_8092EF3C
/* 000651 0x8092EF3C 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000652 0x8092EF40 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000653 0x8092EF44 AFA40020 */ sw	$a0, 0X20($sp)
/* 000654 0x8092EF48 8FA40020 */ lw	$a0, 0X20($sp)
/* 000655 0x8092EF4C 0C02E3B2 */ jal	func_800B8EC8
/* 000656 0x8092EF50 24052881 */ li	$a1, 0X2881
/* 000657 0x8092EF54 240E0028 */ li	$t6, 0X28
/* 000658 0x8092EF58 AFAE0010 */ sw	$t6, 0X10($sp)
/* 000659 0x8092EF5C 8FA40020 */ lw	$a0, 0X20($sp)
/* 000660 0x8092EF60 24054000 */ li	$a1, 0X4000
/* 000661 0x8092EF64 240600FF */ li	$a2, 0XFF
/* 000662 0x8092EF68 0C02F2DC */ jal	func_800BCB70
/* 000663 0x8092EF6C 00003825 */ move	$a3, $zero
/* 000664 0x8092EF70 8FA20020 */ lw	$v0, 0X20($sp)
/* 000665 0x8092EF74 3C188093 */ lui	$t8, %hi(func_8092EF98)
/* 000666 0x8092EF78 240F0028 */ li	$t7, 0X28
/* 000667 0x8092EF7C 2718EF98 */ addiu	$t8, $t8, %lo(func_8092EF98)
/* 000668 0x8092EF80 A44F0220 */ sh	$t7, 0X220($v0)
/* 000669 0x8092EF84 AC580144 */ sw	$t8, 0X144($v0)
/* 000670 0x8092EF88 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000671 0x8092EF8C 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000672 0x8092EF90 03E00008 */ jr	$ra
/* 000673 0x8092EF94 00000000 */ nop

