glabel func_80BE0C04
/* 000457 0x80BE0C04 27BDFFB0 */ addiu	$sp, $sp, -0X50
/* 000458 0x80BE0C08 AFB00018 */ sw	$s0, 0X18($sp)
/* 000459 0x80BE0C0C AFA60058 */ sw	$a2, 0X58($sp)
/* 000460 0x80BE0C10 00A03025 */ move	$a2, $a1
/* 000461 0x80BE0C14 00808025 */ move	$s0, $a0
/* 000462 0x80BE0C18 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000463 0x80BE0C1C AFA50054 */ sw	$a1, 0X54($sp)
/* 000464 0x80BE0C20 10C0003F */ beqz	$a2, .L80BE0D20
/* 000465 0x80BE0C24 AFA00034 */ sw	$zero, 0X34($sp)
/* 000466 0x80BE0C28 27A40038 */ addiu	$a0, $sp, 0X38
/* 000467 0x80BE0C2C 26050024 */ addiu	$a1, $s0, 0X24
/* 000468 0x80BE0C30 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000469 0x80BE0C34 AFA60054 */ sw	$a2, 0X54($sp)
/* 000470 0x80BE0C38 8FA60054 */ lw	$a2, 0X54($sp)
/* 000471 0x80BE0C3C 27A40044 */ addiu	$a0, $sp, 0X44
/* 000472 0x80BE0C40 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000473 0x80BE0C44 24C50024 */ addiu	$a1, $a2, 0X24
/* 000474 0x80BE0C48 27A40038 */ addiu	$a0, $sp, 0X38
/* 000475 0x80BE0C4C 0C03FE98 */ jal	Math_Vec3f_Yaw
/* 000476 0x80BE0C50 27A50044 */ addiu	$a1, $sp, 0X44
/* 000477 0x80BE0C54 8E0E0338 */ lw	$t6, 0X338($s0)
/* 000478 0x80BE0C58 00021C00 */ sll	$v1, $v0, 16
/* 000479 0x80BE0C5C 00031C03 */ sra	$v1, $v1, 16
/* 000480 0x80BE0C60 11C00003 */ beqz	$t6, .L80BE0C70
/* 000481 0x80BE0C64 27A40044 */ addiu	$a0, $sp, 0X44
/* 000482 0x80BE0C68 10000006 */ b	.L80BE0C84
/* 000483 0x80BE0C6C C7A20058 */ lwc1	$f2, 0X58($sp)
.L80BE0C70:
/* 000484 0x80BE0C70 3C013F00 */ lui	$at, 0x3F00
/* 000485 0x80BE0C74 44813000 */ mtc1	$at, $f6
/* 000486 0x80BE0C78 C7A40058 */ lwc1	$f4, 0X58($sp)
/* 000487 0x80BE0C7C 46062082 */ mul.s	$f2, $f4, $f6
/* 000488 0x80BE0C80 00000000 */ nop
.L80BE0C84:
/* 000489 0x80BE0C84 27A50038 */ addiu	$a1, $sp, 0X38
/* 000490 0x80BE0C88 A7A3002E */ sh	$v1, 0X2E($sp)
/* 000491 0x80BE0C8C 0C03FE4B */ jal	Math_Vec3f_DistXZ
/* 000492 0x80BE0C90 E7A20030 */ swc1	$f2, 0X30($sp)
/* 000493 0x80BE0C94 C7A20030 */ lwc1	$f2, 0X30($sp)
/* 000494 0x80BE0C98 87A3002E */ lh	$v1, 0X2E($sp)
/* 000495 0x80BE0C9C 4602003C */ c.lt.s	$f0, $f2
/* 000496 0x80BE0CA0 00000000 */ nop
/* 000497 0x80BE0CA4 4502000F */ bc1fl .L80BE0CE4
/* 000498 0x80BE0CA8 86020322 */ lh	$v0, 0X322($s0)
/* 000499 0x80BE0CAC 860F00BE */ lh	$t7, 0XBE($s0)
/* 000500 0x80BE0CB0 24180001 */ li	$t8, 0X1
/* 000501 0x80BE0CB4 006F1023 */ subu	$v0, $v1, $t7
/* 000502 0x80BE0CB8 00021400 */ sll	$v0, $v0, 16
/* 000503 0x80BE0CBC 00021403 */ sra	$v0, $v0, 16
/* 000504 0x80BE0CC0 04410003 */ bgez	$v0, .L80BE0CD0
/* 000505 0x80BE0CC4 00401825 */ move	$v1, $v0
/* 000506 0x80BE0CC8 10000001 */ b	.L80BE0CD0
/* 000507 0x80BE0CCC 00021823 */ negu	$v1, $v0
.L80BE0CD0:
/* 000508 0x80BE0CD0 286138E0 */ slti	$at, $v1, 0X38E0
/* 000509 0x80BE0CD4 50200003 */ beqzl	$at, .L80BE0CE4
/* 000510 0x80BE0CD8 86020322 */ lh	$v0, 0X322($s0)
/* 000511 0x80BE0CDC AFB80034 */ sw	$t8, 0X34($sp)
/* 000512 0x80BE0CE0 86020322 */ lh	$v0, 0X322($s0)
.L80BE0CE4:
/* 000513 0x80BE0CE4 14400003 */ bnez	$v0, .L80BE0CF4
/* 000514 0x80BE0CE8 2459FFFF */ addiu	$t9, $v0, -0X1
/* 000515 0x80BE0CEC 10000003 */ b	.L80BE0CFC
/* 000516 0x80BE0CF0 00001825 */ move	$v1, $zero
.L80BE0CF4:
/* 000517 0x80BE0CF4 A6190322 */ sh	$t9, 0X322($s0)
/* 000518 0x80BE0CF8 86030322 */ lh	$v1, 0X322($s0)
.L80BE0CFC:
/* 000519 0x80BE0CFC 54600009 */ bnezl	$v1, .L80BE0D24
/* 000520 0x80BE0D00 8FA20034 */ lw	$v0, 0X34($sp)
/* 000521 0x80BE0D04 8E080338 */ lw	$t0, 0X338($s0)
/* 000522 0x80BE0D08 2404003C */ li	$a0, 0X3C
/* 000523 0x80BE0D0C 2405003C */ li	$a1, 0X3C
/* 000524 0x80BE0D10 39090001 */ xori	$t1, $t0, 0X1
/* 000525 0x80BE0D14 0C03FD14 */ jal	Math_Rand_S16Offset
/* 000526 0x80BE0D18 AE090338 */ sw	$t1, 0X338($s0)
/* 000527 0x80BE0D1C A6020322 */ sh	$v0, 0X322($s0)
.L80BE0D20:
/* 000528 0x80BE0D20 8FA20034 */ lw	$v0, 0X34($sp)
.L80BE0D24:
/* 000529 0x80BE0D24 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000530 0x80BE0D28 8FB00018 */ lw	$s0, 0X18($sp)
/* 000531 0x80BE0D2C 27BD0050 */ addiu	$sp, $sp, 0X50
/* 000532 0x80BE0D30 03E00008 */ jr	$ra
/* 000533 0x80BE0D34 00000000 */ nop

