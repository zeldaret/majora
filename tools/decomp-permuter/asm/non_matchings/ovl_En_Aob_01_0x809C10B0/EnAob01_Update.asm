glabel EnAob01_Update
/* 002235 0x809C339C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 002236 0x809C33A0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 002237 0x809C33A4 AFA5001C */ sw	$a1, 0X1C($sp)
/* 002238 0x809C33A8 AFA40018 */ sw	$a0, 0X18($sp)
/* 002239 0x809C33AC 8C990144 */ lw	$t9, 0X144($a0)
/* 002240 0x809C33B0 8FA5001C */ lw	$a1, 0X1C($sp)
/* 002241 0x809C33B4 0320F809 */ jalr	$t9
/* 002242 0x809C33B8 00000000 */ nop
/* 002243 0x809C33BC 8FA40018 */ lw	$a0, 0X18($sp)
/* 002244 0x809C33C0 0C2707B2 */ jal	func_809C1EC8
/* 002245 0x809C33C4 8FA5001C */ lw	$a1, 0X1C($sp)
/* 002246 0x809C33C8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 002247 0x809C33CC 27BD0018 */ addiu	$sp, $sp, 0X18
/* 002248 0x809C33D0 03E00008 */ jr	$ra
/* 002249 0x809C33D4 00000000 */ nop

