glabel func_80BA6664
/* 001177 0x80BA6664 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001178 0x80BA6668 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001179 0x80BA666C 00803825 */ move	$a3, $a0
/* 001180 0x80BA6670 3C0580BB */ lui	$a1, %hi(D_80BA80C0)
/* 001181 0x80BA6674 24A580C0 */ addiu	$a1, $a1, %lo(D_80BA80C0)
/* 001182 0x80BA6678 24E40190 */ addiu	$a0, $a3, 0X190
/* 001183 0x80BA667C 24060006 */ li	$a2, 0X6
/* 001184 0x80BA6680 0C02F717 */ jal	func_800BDC5C
/* 001185 0x80BA6684 AFA70018 */ sw	$a3, 0X18($sp)
/* 001186 0x80BA6688 8FA40018 */ lw	$a0, 0X18($sp)
/* 001187 0x80BA668C 2401FFFE */ li	$at, -0X2
/* 001188 0x80BA6690 240538E7 */ li	$a1, 0X38E7
/* 001189 0x80BA6694 8C8E0004 */ lw	$t6, 0X4($a0)
/* 001190 0x80BA6698 01C17824 */ and	$t7, $t6, $at
/* 001191 0x80BA669C 0C02E3B2 */ jal	func_800B8EC8
/* 001192 0x80BA66A0 AC8F0004 */ sw	$t7, 0X4($a0)
/* 001193 0x80BA66A4 8FA70018 */ lw	$a3, 0X18($sp)
/* 001194 0x80BA66A8 3C1880BA */ lui	$t8, %hi(func_80BA66C8)
/* 001195 0x80BA66AC 271866C8 */ addiu	$t8, $t8, %lo(func_80BA66C8)
/* 001196 0x80BA66B0 A4E003F2 */ sh	$zero, 0X3F2($a3)
/* 001197 0x80BA66B4 ACF801D4 */ sw	$t8, 0X1D4($a3)
/* 001198 0x80BA66B8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001199 0x80BA66BC 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001200 0x80BA66C0 03E00008 */ jr	$ra
/* 001201 0x80BA66C4 00000000 */ nop

