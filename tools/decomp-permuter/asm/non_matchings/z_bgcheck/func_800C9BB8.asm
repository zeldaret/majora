glabel func_800C9BB8
/* 036926 0x800C9BB8 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 036927 0x800C9BBC AFBF0014 */ sw	$ra, 0X14($sp)
/* 036928 0x800C9BC0 0C0325A5 */ jal	BgCheck_GetPolygonAttributes
/* 036929 0x800C9BC4 24070001 */ li	$a3, 0X1
/* 036930 0x800C9BC8 3042000F */ andi	$v0, $v0, 0XF
/* 036931 0x800C9BCC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 036932 0x800C9BD0 27BD0018 */ addiu	$sp, $sp, 0X18
/* 036933 0x800C9BD4 03E00008 */ jr	$ra
/* 036934 0x800C9BD8 00000000 */ nop

