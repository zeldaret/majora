glabel func_8093ED80
/* 000312 0x8093ED80 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000313 0x8093ED84 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000314 0x8093ED88 848201D8 */ lh	$v0, 0X1D8($a0)
/* 000315 0x8093ED8C 848E01DA */ lh	$t6, 0X1DA($a0)
/* 000316 0x8093ED90 A48201D6 */ sh	$v0, 0X1D6($a0)
/* 000317 0x8093ED94 004E7821 */ addu	$t7, $v0, $t6
/* 000318 0x8093ED98 0C24FB35 */ jal	func_8093ECD4
/* 000319 0x8093ED9C A48F01D8 */ sh	$t7, 0X1D8($a0)
/* 000320 0x8093EDA0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000321 0x8093EDA4 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000322 0x8093EDA8 03E00008 */ jr	$ra
/* 000323 0x8093EDAC 00000000 */ nop

