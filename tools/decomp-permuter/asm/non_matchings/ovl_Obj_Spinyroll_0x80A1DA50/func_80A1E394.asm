glabel func_80A1E394
/* 000593 0x80A1E394 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000594 0x80A1E398 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000595 0x80A1E39C AFA60030 */ sw	$a2, 0X30($sp)
/* 000596 0x80A1E3A0 AFA70034 */ sw	$a3, 0X34($sp)
/* 000597 0x80A1E3A4 8FAE0030 */ lw	$t6, 0X30($sp)
/* 000598 0x80A1E3A8 8FAF0034 */ lw	$t7, 0X34($sp)
/* 000599 0x80A1E3AC 8FB8003C */ lw	$t8, 0X3C($sp)
/* 000600 0x80A1E3B0 8FA60038 */ lw	$a2, 0X38($sp)
/* 000601 0x80A1E3B4 3C0741C0 */ lui	$a3, 0x41C0
/* 000602 0x80A1E3B8 AFAE0010 */ sw	$t6, 0X10($sp)
/* 000603 0x80A1E3BC AFAF0014 */ sw	$t7, 0X14($sp)
/* 000604 0x80A1E3C0 0C0313E1 */ jal	func_800C4F84
/* 000605 0x80A1E3C4 AFB80018 */ sw	$t8, 0X18($sp)
/* 000606 0x80A1E3C8 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000607 0x80A1E3CC 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000608 0x80A1E3D0 03E00008 */ jr	$ra
/* 000609 0x80A1E3D4 00000000 */ nop

