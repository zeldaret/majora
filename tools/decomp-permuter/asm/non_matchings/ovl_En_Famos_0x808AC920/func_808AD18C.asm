glabel func_808AD18C
/* 000539 0x808AD18C 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000540 0x808AD190 AFB00018 */ sw	$s0, 0X18($sp)
/* 000541 0x808AD194 00808025 */ move	$s0, $a0
/* 000542 0x808AD198 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000543 0x808AD19C AFA50024 */ sw	$a1, 0X24($sp)
/* 000544 0x808AD1A0 0C22B3E6 */ jal	func_808ACF98
/* 000545 0x808AD1A4 02002025 */ move	$a0, $s0
/* 000546 0x808AD1A8 920E01D8 */ lbu	$t6, 0X1D8($s0)
/* 000547 0x808AD1AC 26040200 */ addiu	$a0, $s0, 0X200
/* 000548 0x808AD1B0 51C00004 */ beqzl	$t6, .L808AD1C4
/* 000549 0x808AD1B4 02002025 */ move	$a0, $s0
/* 000550 0x808AD1B8 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000551 0x808AD1BC 26050024 */ addiu	$a1, $s0, 0X24
/* 000552 0x808AD1C0 02002025 */ move	$a0, $s0
.L808AD1C4:
/* 000553 0x808AD1C4 0C22B3C7 */ jal	func_808ACF1C
/* 000554 0x808AD1C8 8FA50024 */ lw	$a1, 0X24($sp)
/* 000555 0x808AD1CC 50400004 */ beqzl	$v0, .L808AD1E0
/* 000556 0x808AD1D0 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000557 0x808AD1D4 0C22B553 */ jal	func_808AD54C
/* 000558 0x808AD1D8 02002025 */ move	$a0, $s0
/* 000559 0x808AD1DC 8FBF001C */ lw	$ra, 0X1C($sp)
.L808AD1E0:
/* 000560 0x808AD1E0 8FB00018 */ lw	$s0, 0X18($sp)
/* 000561 0x808AD1E4 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000562 0x808AD1E8 03E00008 */ jr	$ra
/* 000563 0x808AD1EC 00000000 */ nop

