glabel Collision_FiniTri
/* 061125 0x800E15D4 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 061126 0x800E15D8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 061127 0x800E15DC AFA40018 */ sw	$a0, 0X18($sp)
/* 061128 0x800E15E0 AFA5001C */ sw	$a1, 0X1C($sp)
/* 061129 0x800E15E4 8FA40018 */ lw	$a0, 0X18($sp)
/* 061130 0x800E15E8 0C038207 */ jal	Collision_FiniBody
/* 061131 0x800E15EC 8FA5001C */ lw	$a1, 0X1C($sp)
/* 061132 0x800E15F0 8FA5001C */ lw	$a1, 0X1C($sp)
/* 061133 0x800E15F4 8FA40018 */ lw	$a0, 0X18($sp)
/* 061134 0x800E15F8 0C038533 */ jal	Collision_FiniTriParams
/* 061135 0x800E15FC 24A50028 */ addiu	$a1, $a1, 0X28
/* 061136 0x800E1600 24020001 */ li	$v0, 0X1
/* 061137 0x800E1604 8FBF0014 */ lw	$ra, 0X14($sp)
/* 061138 0x800E1608 27BD0018 */ addiu	$sp, $sp, 0X18
/* 061139 0x800E160C 03E00008 */ jr	$ra
/* 061140 0x800E1610 00000000 */ nop

