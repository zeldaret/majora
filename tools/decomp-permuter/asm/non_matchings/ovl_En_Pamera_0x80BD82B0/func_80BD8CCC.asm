glabel func_80BD8CCC
/* 000647 0x80BD8CCC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000648 0x80BD8CD0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000649 0x80BD8CD4 00803825 */ move	$a3, $a0
/* 000650 0x80BD8CD8 44802000 */ mtc1	$zero, $f4
/* 000651 0x80BD8CDC A4E0031C */ sh	$zero, 0X31C($a3)
/* 000652 0x80BD8CE0 3C0580BE */ lui	$a1, %hi(D_80BDA4B8)
/* 000653 0x80BD8CE4 E4E40070 */ swc1	$f4, 0X70($a3)
/* 000654 0x80BD8CE8 AFA70018 */ sw	$a3, 0X18($sp)
/* 000655 0x80BD8CEC 24A5A4B8 */ addiu	$a1, $a1, %lo(D_80BDA4B8)
/* 000656 0x80BD8CF0 24E40190 */ addiu	$a0, $a3, 0X190
/* 000657 0x80BD8CF4 0C02F717 */ jal	func_800BDC5C
/* 000658 0x80BD8CF8 24060003 */ li	$a2, 0X3
/* 000659 0x80BD8CFC 8FA70018 */ lw	$a3, 0X18($sp)
/* 000660 0x80BD8D00 3C0E80BE */ lui	$t6, %hi(func_80BD8D1C)
/* 000661 0x80BD8D04 25CE8D1C */ addiu	$t6, $t6, %lo(func_80BD8D1C)
/* 000662 0x80BD8D08 ACEE01D4 */ sw	$t6, 0X1D4($a3)
/* 000663 0x80BD8D0C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000664 0x80BD8D10 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000665 0x80BD8D14 03E00008 */ jr	$ra
/* 000666 0x80BD8D18 00000000 */ nop

