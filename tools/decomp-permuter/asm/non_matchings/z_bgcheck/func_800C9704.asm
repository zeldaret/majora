glabel func_800C9704
/* 036625 0x800C9704 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 036626 0x800C9708 AFBF0014 */ sw	$ra, 0X14($sp)
/* 036627 0x800C970C 0C0325A5 */ jal	BgCheck_GetPolygonAttributes
/* 036628 0x800C9710 00003825 */ move	$a3, $zero
/* 036629 0x800C9714 304200FF */ andi	$v0, $v0, 0XFF
/* 036630 0x800C9718 8FBF0014 */ lw	$ra, 0X14($sp)
/* 036631 0x800C971C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 036632 0x800C9720 03E00008 */ jr	$ra
/* 036633 0x800C9724 00000000 */ nop

