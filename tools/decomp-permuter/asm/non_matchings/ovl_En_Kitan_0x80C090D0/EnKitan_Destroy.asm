glabel EnKitan_Destroy
/* 000080 0x80C09210 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000081 0x80C09214 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000082 0x80C09218 00803025 */ move	$a2, $a0
/* 000083 0x80C0921C 00A03825 */ move	$a3, $a1
/* 000084 0x80C09220 00E02025 */ move	$a0, $a3
/* 000085 0x80C09224 0C03847B */ jal	Collision_FiniCylinder
/* 000086 0x80C09228 24C50284 */ addiu	$a1, $a2, 0X284
/* 000087 0x80C0922C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000088 0x80C09230 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000089 0x80C09234 03E00008 */ jr	$ra
/* 000090 0x80C09238 00000000 */ nop

