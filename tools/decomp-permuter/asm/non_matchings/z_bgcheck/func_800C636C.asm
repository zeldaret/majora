glabel func_800C636C
/* 033323 0x800C636C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 033324 0x800C6370 AFBF0014 */ sw	$ra, 0X14($sp)
/* 033325 0x800C6374 AFA40018 */ sw	$a0, 0X18($sp)
/* 033326 0x800C6378 AFA60020 */ sw	$a2, 0X20($sp)
/* 033327 0x800C637C 8FA40020 */ lw	$a0, 0X20($sp)
/* 033328 0x800C6380 0C031809 */ jal	BgCheck_IsActorMeshIndexValid
/* 033329 0x800C6384 AFA5001C */ sw	$a1, 0X1C($sp)
/* 033330 0x800C6388 1040000A */ beqz	$v0, .L800C63B4
/* 033331 0x800C638C 8FA5001C */ lw	$a1, 0X1C($sp)
/* 033332 0x800C6390 8FAE0020 */ lw	$t6, 0X20($sp)
/* 033333 0x800C6394 000E7840 */ sll	$t7, $t6, 1
/* 033334 0x800C6398 00AF1021 */ addu	$v0, $a1, $t7
/* 033335 0x800C639C 9458138C */ lhu	$t8, 0X138C($v0)
/* 033336 0x800C63A0 37190008 */ ori	$t9, $t8, 0X8
/* 033337 0x800C63A4 A459138C */ sh	$t9, 0X138C($v0)
/* 033338 0x800C63A8 90A80000 */ lbu	$t0, 0X0($a1)
/* 033339 0x800C63AC 35090001 */ ori	$t1, $t0, 0X1
/* 033340 0x800C63B0 A0A90000 */ sb	$t1, 0X0($a1)
.L800C63B4:
/* 033341 0x800C63B4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 033342 0x800C63B8 27BD0018 */ addiu	$sp, $sp, 0X18
/* 033343 0x800C63BC 03E00008 */ jr	$ra
/* 033344 0x800C63C0 00000000 */ nop

