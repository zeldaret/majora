glabel func_80AB75A4
/* 002597 0x80AB75A4 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 002598 0x80AB75A8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 002599 0x80AB75AC 3C01C120 */ lui	$at, 0xC120
/* 002600 0x80AB75B0 44812000 */ mtc1	$at, $f4
/* 002601 0x80AB75B4 C486009C */ lwc1	$f6, 0X9C($a0)
/* 002602 0x80AB75B8 3C014320 */ lui	$at, 0x4320
/* 002603 0x80AB75BC 4606203C */ c.lt.s	$f4, $f6
/* 002604 0x80AB75C0 00000000 */ nop
/* 002605 0x80AB75C4 45000010 */ bc1f .L80AB7608
/* 002606 0x80AB75C8 00000000 */ nop
/* 002607 0x80AB75CC C4880098 */ lwc1	$f8, 0X98($a0)
/* 002608 0x80AB75D0 44815000 */ mtc1	$at, $f10
/* 002609 0x80AB75D4 00000000 */ nop
/* 002610 0x80AB75D8 460A403C */ c.lt.s	$f8, $f10
/* 002611 0x80AB75DC 00000000 */ nop
/* 002612 0x80AB75E0 45000009 */ bc1f .L80AB7608
/* 002613 0x80AB75E4 00000000 */ nop
/* 002614 0x80AB75E8 0C2AD71D */ jal	func_80AB5C74
/* 002615 0x80AB75EC AFA40018 */ sw	$a0, 0X18($sp)
/* 002616 0x80AB75F0 8FA40018 */ lw	$a0, 0X18($sp)
/* 002617 0x80AB75F4 3C0E80AB */ lui	$t6, %hi(func_80AB7504)
/* 002618 0x80AB75F8 25CE7504 */ addiu	$t6, $t6, %lo(func_80AB7504)
/* 002619 0x80AB75FC AC8003C0 */ sw	$zero, 0X3C0($a0)
/* 002620 0x80AB7600 10000003 */ b	.L80AB7610
/* 002621 0x80AB7604 AC8E03E8 */ sw	$t6, 0X3E8($a0)
.L80AB7608:
/* 002622 0x80AB7608 0C2AD7DB */ jal	func_80AB5F6C
/* 002623 0x80AB760C 00000000 */ nop
.L80AB7610:
/* 002624 0x80AB7610 8FBF0014 */ lw	$ra, 0X14($sp)
/* 002625 0x80AB7614 27BD0018 */ addiu	$sp, $sp, 0X18
/* 002626 0x80AB7618 03E00008 */ jr	$ra
/* 002627 0x80AB761C 00000000 */ nop

