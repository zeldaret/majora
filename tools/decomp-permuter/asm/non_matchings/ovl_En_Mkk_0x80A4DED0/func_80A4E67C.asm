glabel func_80A4E67C
/* 000491 0x80A4E67C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000492 0x80A4E680 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000493 0x80A4E684 8C980004 */ lw	$t8, 0X4($a0)
/* 000494 0x80A4E688 908E014B */ lbu	$t6, 0X14B($a0)
/* 000495 0x80A4E68C 9088018D */ lbu	$t0, 0X18D($a0)
/* 000496 0x80A4E690 2401FFFE */ li	$at, -0X2
/* 000497 0x80A4E694 0301C824 */ and	$t9, $t8, $at
/* 000498 0x80A4E698 AC990004 */ sw	$t9, 0X4($a0)
/* 000499 0x80A4E69C 372B0010 */ ori	$t3, $t9, 0X10
/* 000500 0x80A4E6A0 35CF0001 */ ori	$t7, $t6, 0X1
/* 000501 0x80A4E6A4 01014824 */ and	$t1, $t0, $at
/* 000502 0x80A4E6A8 A08F014B */ sb	$t7, 0X14B($a0)
/* 000503 0x80A4E6AC A089018D */ sb	$t1, 0X18D($a0)
/* 000504 0x80A4E6B0 AC8B0004 */ sw	$t3, 0X4($a0)
/* 000505 0x80A4E6B4 AFA40018 */ sw	$a0, 0X18($sp)
/* 000506 0x80A4E6B8 0C02E3B2 */ jal	func_800B8EC8
/* 000507 0x80A4E6BC 24053876 */ li	$a1, 0X3876
/* 000508 0x80A4E6C0 8FA40018 */ lw	$a0, 0X18($sp)
/* 000509 0x80A4E6C4 240C00FE */ li	$t4, 0XFE
/* 000510 0x80A4E6C8 A08C014A */ sb	$t4, 0X14A($a0)
/* 000511 0x80A4E6CC 0C02F95A */ jal	func_800BE568
/* 000512 0x80A4E6D0 2485017C */ addiu	$a1, $a0, 0X17C
/* 000513 0x80A4E6D4 8FA40018 */ lw	$a0, 0X18($sp)
/* 000514 0x80A4E6D8 3C0140E0 */ lui	$at, 0x40E0
/* 000515 0x80A4E6DC 44812000 */ mtc1	$at, $f4
/* 000516 0x80A4E6E0 3C0140A0 */ lui	$at, 0x40A0
/* 000517 0x80A4E6E4 44813000 */ mtc1	$at, $f6
/* 000518 0x80A4E6E8 848D0032 */ lh	$t5, 0X32($a0)
/* 000519 0x80A4E6EC 948E0090 */ lhu	$t6, 0X90($a0)
/* 000520 0x80A4E6F0 3C0180A5 */ lui	$at, %hi(D_80A4F7F0)
/* 000521 0x80A4E6F4 E4840070 */ swc1	$f4, 0X70($a0)
/* 000522 0x80A4E6F8 A48D00BE */ sh	$t5, 0XBE($a0)
/* 000523 0x80A4E6FC E4860068 */ swc1	$f6, 0X68($a0)
/* 000524 0x80A4E700 C428F7F0 */ lwc1	$f8, %lo(D_80A4F7F0)($at)
/* 000525 0x80A4E704 3C1880A5 */ lui	$t8, %hi(func_80A4E72C)
/* 000526 0x80A4E708 2718E72C */ addiu	$t8, $t8, %lo(func_80A4E72C)
/* 000527 0x80A4E70C 31CFFFFE */ andi	$t7, $t6, 0XFFFE
/* 000528 0x80A4E710 A48F0090 */ sh	$t7, 0X90($a0)
/* 000529 0x80A4E714 AC980144 */ sw	$t8, 0X144($a0)
/* 000530 0x80A4E718 E4880074 */ swc1	$f8, 0X74($a0)
/* 000531 0x80A4E71C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000532 0x80A4E720 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000533 0x80A4E724 03E00008 */ jr	$ra
/* 000534 0x80A4E728 00000000 */ nop


.section .late_rodata

glabel D_80A4F7F0
/* 001608 0x80A4F7F0 */ .word	0xBFA66666
