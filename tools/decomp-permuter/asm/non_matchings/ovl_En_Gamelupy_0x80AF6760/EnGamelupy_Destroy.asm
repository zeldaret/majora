glabel EnGamelupy_Destroy
/* 000050 0x80AF6828 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000051 0x80AF682C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000052 0x80AF6830 00803025 */ move	$a2, $a0
/* 000053 0x80AF6834 00A03825 */ move	$a3, $a1
/* 000054 0x80AF6838 00E02025 */ move	$a0, $a3
/* 000055 0x80AF683C 0C03847B */ jal	Collision_FiniCylinder
/* 000056 0x80AF6840 24C50144 */ addiu	$a1, $a2, 0X144
/* 000057 0x80AF6844 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000058 0x80AF6848 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000059 0x80AF684C 03E00008 */ jr	$ra
/* 000060 0x80AF6850 00000000 */ nop

