glabel func_80B40E74
/* 000413 0x80B40E74 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000414 0x80B40E78 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000415 0x80B40E7C AFA5001C */ sw	$a1, 0X1C($sp)
/* 000416 0x80B40E80 AFA60020 */ sw	$a2, 0X20($sp)
/* 000417 0x80B40E84 00803825 */ move	$a3, $a0
/* 000418 0x80B40E88 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000419 0x80B40E8C 97A50022 */ lhu	$a1, 0X22($sp)
/* 000420 0x80B40E90 0C05464E */ jal	func_80151938
/* 000421 0x80B40E94 AFA70018 */ sw	$a3, 0X18($sp)
/* 000422 0x80B40E98 97AE0022 */ lhu	$t6, 0X22($sp)
/* 000423 0x80B40E9C 8FA40018 */ lw	$a0, 0X18($sp)
/* 000424 0x80B40EA0 31C5FFFF */ andi	$a1, $t6, 0XFFFF
/* 000425 0x80B40EA4 0C2D0386 */ jal	func_80B40E18
/* 000426 0x80B40EA8 A48E0116 */ sh	$t6, 0X116($a0)
/* 000427 0x80B40EAC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000428 0x80B40EB0 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000429 0x80B40EB4 03E00008 */ jr	$ra
/* 000430 0x80B40EB8 00000000 */ nop

