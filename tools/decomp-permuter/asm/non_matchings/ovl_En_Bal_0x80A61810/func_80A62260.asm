glabel func_80A62260
/* 000660 0x80A62260 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000661 0x80A62264 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000662 0x80A62268 240E0005 */ li	$t6, 0X5
/* 000663 0x80A6226C A48E03A4 */ sh	$t6, 0X3A4($a0)
/* 000664 0x80A62270 0C298686 */ jal	func_80A61A18
/* 000665 0x80A62274 AFA40018 */ sw	$a0, 0X18($sp)
/* 000666 0x80A62278 8FA40018 */ lw	$a0, 0X18($sp)
/* 000667 0x80A6227C 44802000 */ mtc1	$zero, $f4
/* 000668 0x80A62280 3C0F80A6 */ lui	$t7, %hi(func_80A622A0)
/* 000669 0x80A62284 25EF22A0 */ addiu	$t7, $t7, %lo(func_80A622A0)
/* 000670 0x80A62288 AC8F018C */ sw	$t7, 0X18C($a0)
/* 000671 0x80A6228C E4840074 */ swc1	$f4, 0X74($a0)
/* 000672 0x80A62290 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000673 0x80A62294 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000674 0x80A62298 03E00008 */ jr	$ra
/* 000675 0x80A6229C 00000000 */ nop

