glabel func_80A794C8
/* 002114 0x80A794C8 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 002115 0x80A794CC AFBF0014 */ sw	$ra, 0X14($sp)
/* 002116 0x80A794D0 AFA5001C */ sw	$a1, 0X1C($sp)
/* 002117 0x80A794D4 00803025 */ move	$a2, $a0
/* 002118 0x80A794D8 84CE0290 */ lh	$t6, 0X290($a2)
/* 002119 0x80A794DC 2404001E */ li	$a0, 0X1E
/* 002120 0x80A794E0 2405001E */ li	$a1, 0X1E
/* 002121 0x80A794E4 55C0000C */ bnezl	$t6, .L80A79518
/* 002122 0x80A794E8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 002123 0x80A794EC 0C03FD14 */ jal	Math_Rand_S16Offset
/* 002124 0x80A794F0 AFA60018 */ sw	$a2, 0X18($sp)
/* 002125 0x80A794F4 8FA40018 */ lw	$a0, 0X18($sp)
/* 002126 0x80A794F8 908F0F05 */ lbu	$t7, 0XF05($a0)
/* 002127 0x80A794FC A482028E */ sh	$v0, 0X28E($a0)
/* 002128 0x80A79500 A0800371 */ sb	$zero, 0X371($a0)
/* 002129 0x80A79504 35F80004 */ ori	$t8, $t7, 0X4
/* 002130 0x80A79508 A0980F05 */ sb	$t8, 0XF05($a0)
/* 002131 0x80A7950C 0C29E1FF */ jal	func_80A787FC
/* 002132 0x80A79510 8FA5001C */ lw	$a1, 0X1C($sp)
/* 002133 0x80A79514 8FBF0014 */ lw	$ra, 0X14($sp)
.L80A79518:
/* 002134 0x80A79518 27BD0018 */ addiu	$sp, $sp, 0X18
/* 002135 0x80A7951C 03E00008 */ jr	$ra
/* 002136 0x80A79520 00000000 */ nop

