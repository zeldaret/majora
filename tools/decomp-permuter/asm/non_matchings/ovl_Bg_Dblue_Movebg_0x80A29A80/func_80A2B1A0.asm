glabel func_80A2B1A0
/* 001480 0x80A2B1A0 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001481 0x80A2B1A4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001482 0x80A2B1A8 AFA5001C */ sw	$a1, 0X1C($sp)
/* 001483 0x80A2B1AC 00803825 */ move	$a3, $a0
/* 001484 0x80A2B1B0 8CE501C0 */ lw	$a1, 0X1C0($a3)
/* 001485 0x80A2B1B4 8CE601BC */ lw	$a2, 0X1BC($a3)
/* 001486 0x80A2B1B8 AFA70018 */ sw	$a3, 0X18($sp)
/* 001487 0x80A2B1BC 0C28A6A0 */ jal	func_80A29A80
/* 001488 0x80A2B1C0 8FA4001C */ lw	$a0, 0X1C($sp)
/* 001489 0x80A2B1C4 24010001 */ li	$at, 0X1
/* 001490 0x80A2B1C8 10410006 */ beq	$v0, $at, .L80A2B1E4
/* 001491 0x80A2B1CC 8FA70018 */ lw	$a3, 0X18($sp)
/* 001492 0x80A2B1D0 24010002 */ li	$at, 0X2
/* 001493 0x80A2B1D4 50410007 */ beql	$v0, $at, .L80A2B1F4
/* 001494 0x80A2B1D8 84EF0018 */ lh	$t7, 0X18($a3)
/* 001495 0x80A2B1DC 10000009 */ b	.L80A2B204
/* 001496 0x80A2B1E0 8FBF0014 */ lw	$ra, 0X14($sp)
.L80A2B1E4:
/* 001497 0x80A2B1E4 84EE0018 */ lh	$t6, 0X18($a3)
/* 001498 0x80A2B1E8 10000005 */ b	.L80A2B200
/* 001499 0x80A2B1EC A4EE00C0 */ sh	$t6, 0XC0($a3)
/* 001500 0x80A2B1F0 84EF0018 */ lh	$t7, 0X18($a3)
.L80A2B1F4:
/* 001501 0x80A2B1F4 34018000 */ ori	$at, $zero, 0X8000
/* 001502 0x80A2B1F8 01E1C021 */ addu	$t8, $t7, $at
/* 001503 0x80A2B1FC A4F800C0 */ sh	$t8, 0XC0($a3)
.L80A2B200:
/* 001504 0x80A2B200 8FBF0014 */ lw	$ra, 0X14($sp)
.L80A2B204:
/* 001505 0x80A2B204 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001506 0x80A2B208 03E00008 */ jr	$ra
/* 001507 0x80A2B20C 00000000 */ nop

