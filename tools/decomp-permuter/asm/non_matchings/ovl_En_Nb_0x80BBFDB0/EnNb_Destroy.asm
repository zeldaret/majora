glabel EnNb_Destroy
/* 001204 0x80BC1080 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001205 0x80BC1084 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001206 0x80BC1088 AFA5001C */ sw	$a1, 0X1C($sp)
/* 001207 0x80BC108C 00803025 */ move	$a2, $a0
/* 001208 0x80BC1090 8FA4001C */ lw	$a0, 0X1C($sp)
/* 001209 0x80BC1094 0C03847B */ jal	Collision_FiniCylinder
/* 001210 0x80BC1098 24C50190 */ addiu	$a1, $a2, 0X190
/* 001211 0x80BC109C 8FAF001C */ lw	$t7, 0X1C($sp)
/* 001212 0x80BC10A0 3C010001 */ lui	$at, 0x0001
/* 001213 0x80BC10A4 240E0003 */ li	$t6, 0X3
/* 001214 0x80BC10A8 002F0821 */ addu	$at, $at, $t7
/* 001215 0x80BC10AC A02E6D02 */ sb	$t6, 0X6D02($at)
/* 001216 0x80BC10B0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001217 0x80BC10B4 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001218 0x80BC10B8 03E00008 */ jr	$ra
/* 001219 0x80BC10BC 00000000 */ nop

