glabel func_800C9A24
/* 036825 0x800C9A24 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 036826 0x800C9A28 AFBF0014 */ sw	$ra, 0X14($sp)
/* 036827 0x800C9A2C 0C0325A5 */ jal	BgCheck_GetPolygonAttributes
/* 036828 0x800C9A30 00003825 */ move	$a3, $zero
/* 036829 0x800C9A34 00021542 */ srl	$v0, $v0, 21
/* 036830 0x800C9A38 3042001F */ andi	$v0, $v0, 0X1F
/* 036831 0x800C9A3C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 036832 0x800C9A40 27BD0018 */ addiu	$sp, $sp, 0X18
/* 036833 0x800C9A44 03E00008 */ jr	$ra
/* 036834 0x800C9A48 00000000 */ nop

