glabel EnTest_Destroy
/* 000488 0x80863310 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000489 0x80863314 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000490 0x80863318 00802825 */ move	$a1, $a0
/* 000491 0x8086331C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000492 0x80863320 AFA40018 */ sw	$a0, 0X18($sp)
/* 000493 0x80863324 0C060D27 */ jal	func_8018349C
/* 000494 0x80863328 24A40144 */ addiu	$a0, $a1, 0X144
/* 000495 0x8086332C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000496 0x80863330 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000497 0x80863334 03E00008 */ jr	$ra
/* 000498 0x80863338 00000000 */ nop

