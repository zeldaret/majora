glabel EnDoorEtc_Destroy
/* 000082 0x80AC2018 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000083 0x80AC201C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000084 0x80AC2020 00803025 */ move	$a2, $a0
/* 000085 0x80AC2024 00A03825 */ move	$a3, $a1
/* 000086 0x80AC2028 00E02025 */ move	$a0, $a3
/* 000087 0x80AC202C 0C03847B */ jal	Collision_FiniCylinder
/* 000088 0x80AC2030 24C501A8 */ addiu	$a1, $a2, 0X1A8
/* 000089 0x80AC2034 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000090 0x80AC2038 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000091 0x80AC203C 03E00008 */ jr	$ra
/* 000092 0x80AC2040 00000000 */ nop

