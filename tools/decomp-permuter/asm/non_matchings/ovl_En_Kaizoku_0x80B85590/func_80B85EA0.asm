glabel func_80B85EA0
/* 000580 0x80B85EA0 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 000581 0x80B85EA4 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000582 0x80B85EA8 AFA40038 */ sw	$a0, 0X38($sp)
/* 000583 0x80B85EAC 3C014120 */ lui	$at, 0x4120
/* 000584 0x80B85EB0 44812000 */ mtc1	$at, $f4
/* 000585 0x80B85EB4 3C0143C8 */ lui	$at, 0x43C8
/* 000586 0x80B85EB8 44813000 */ mtc1	$at, $f6
/* 000587 0x80B85EBC 24A7003C */ addiu	$a3, $a1, 0X3C
/* 000588 0x80B85EC0 24A800BC */ addiu	$t0, $a1, 0XBC
/* 000589 0x80B85EC4 240EFFFF */ li	$t6, -0X1
/* 000590 0x80B85EC8 AFAE001C */ sw	$t6, 0X1C($sp)
/* 000591 0x80B85ECC AFA80010 */ sw	$t0, 0X10($sp)
/* 000592 0x80B85ED0 AFA80028 */ sw	$t0, 0X28($sp)
/* 000593 0x80B85ED4 AFA7002C */ sw	$a3, 0X2C($sp)
/* 000594 0x80B85ED8 8FA40038 */ lw	$a0, 0X38($sp)
/* 000595 0x80B85EDC 24060009 */ li	$a2, 0X9
/* 000596 0x80B85EE0 AFA5003C */ sw	$a1, 0X3C($sp)
/* 000597 0x80B85EE4 E7A40014 */ swc1	$f4, 0X14($sp)
/* 000598 0x80B85EE8 0C04E94C */ jal	func_8013A530
/* 000599 0x80B85EEC E7A60018 */ swc1	$f6, 0X18($sp)
/* 000600 0x80B85EF0 3C014120 */ lui	$at, 0x4120
/* 000601 0x80B85EF4 44814000 */ mtc1	$at, $f8
/* 000602 0x80B85EF8 3C014496 */ lui	$at, 0x4496
/* 000603 0x80B85EFC 8FA80028 */ lw	$t0, 0X28($sp)
/* 000604 0x80B85F00 44815000 */ mtc1	$at, $f10
/* 000605 0x80B85F04 240FFFFF */ li	$t7, -0X1
/* 000606 0x80B85F08 8FA5003C */ lw	$a1, 0X3C($sp)
/* 000607 0x80B85F0C 8FA7002C */ lw	$a3, 0X2C($sp)
/* 000608 0x80B85F10 AFAF001C */ sw	$t7, 0X1C($sp)
/* 000609 0x80B85F14 8FA40038 */ lw	$a0, 0X38($sp)
/* 000610 0x80B85F18 2406000B */ li	$a2, 0XB
/* 000611 0x80B85F1C AFA20034 */ sw	$v0, 0X34($sp)
/* 000612 0x80B85F20 E7A80014 */ swc1	$f8, 0X14($sp)
/* 000613 0x80B85F24 AFA80010 */ sw	$t0, 0X10($sp)
/* 000614 0x80B85F28 0C04E94C */ jal	func_8013A530
/* 000615 0x80B85F2C E7AA0018 */ swc1	$f10, 0X18($sp)
/* 000616 0x80B85F30 8FA30034 */ lw	$v1, 0X34($sp)
/* 000617 0x80B85F34 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000618 0x80B85F38 00621825 */ or	$v1, $v1, $v0
/* 000619 0x80B85F3C 00601025 */ move	$v0, $v1
/* 000620 0x80B85F40 03E00008 */ jr	$ra
/* 000621 0x80B85F44 27BD0038 */ addiu	$sp, $sp, 0X38

