glabel BgDkjailIvy_Draw
/* 000401 0x80ADE874 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000402 0x80ADE878 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000403 0x80ADE87C AFA40030 */ sw	$a0, 0X30($sp)
/* 000404 0x80ADE880 AFA50034 */ sw	$a1, 0X34($sp)
/* 000405 0x80ADE884 8FAE0034 */ lw	$t6, 0X34($sp)
/* 000406 0x80ADE888 8DC40000 */ lw	$a0, 0X0($t6)
/* 000407 0x80ADE88C 0C04B0B7 */ jal	func_8012C2DC
/* 000408 0x80ADE890 AFA40028 */ sw	$a0, 0X28($sp)
/* 000409 0x80ADE894 8FA60028 */ lw	$a2, 0X28($sp)
/* 000410 0x80ADE898 8CC202C0 */ lw	$v0, 0X2C0($a2)
/* 000411 0x80ADE89C 3C18FA00 */ lui	$t8, 0xFA00
/* 000412 0x80ADE8A0 371800FF */ ori	$t8, $t8, 0XFF
/* 000413 0x80ADE8A4 244F0008 */ addiu	$t7, $v0, 0X8
/* 000414 0x80ADE8A8 ACCF02C0 */ sw	$t7, 0X2C0($a2)
/* 000415 0x80ADE8AC AC580000 */ sw	$t8, 0X0($v0)
/* 000416 0x80ADE8B0 8FB90030 */ lw	$t9, 0X30($sp)
/* 000417 0x80ADE8B4 2401FF00 */ li	$at, -0X100
/* 000418 0x80ADE8B8 932901AD */ lbu	$t1, 0X1AD($t9)
/* 000419 0x80ADE8BC 01215025 */ or	$t2, $t1, $at
/* 000420 0x80ADE8C0 AC4A0004 */ sw	$t2, 0X4($v0)
/* 000421 0x80ADE8C4 8CC202C0 */ lw	$v0, 0X2C0($a2)
/* 000422 0x80ADE8C8 3C0CDA38 */ lui	$t4, 0xDA38
/* 000423 0x80ADE8CC 358C0003 */ ori	$t4, $t4, 0X3
/* 000424 0x80ADE8D0 244B0008 */ addiu	$t3, $v0, 0X8
/* 000425 0x80ADE8D4 ACCB02C0 */ sw	$t3, 0X2C0($a2)
/* 000426 0x80ADE8D8 AC4C0000 */ sw	$t4, 0X0($v0)
/* 000427 0x80ADE8DC 8FAD0034 */ lw	$t5, 0X34($sp)
/* 000428 0x80ADE8E0 8DA40000 */ lw	$a0, 0X0($t5)
/* 000429 0x80ADE8E4 AFA60028 */ sw	$a2, 0X28($sp)
/* 000430 0x80ADE8E8 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000431 0x80ADE8EC AFA2001C */ sw	$v0, 0X1C($sp)
/* 000432 0x80ADE8F0 8FA3001C */ lw	$v1, 0X1C($sp)
/* 000433 0x80ADE8F4 8FA60028 */ lw	$a2, 0X28($sp)
/* 000434 0x80ADE8F8 3C0FDE00 */ lui	$t7, 0xDE00
/* 000435 0x80ADE8FC AC620004 */ sw	$v0, 0X4($v1)
/* 000436 0x80ADE900 8CC202C0 */ lw	$v0, 0X2C0($a2)
/* 000437 0x80ADE904 3C180600 */ lui	$t8, 0x0600
/* 000438 0x80ADE908 27180080 */ addiu	$t8, $t8, 0X80
/* 000439 0x80ADE90C 244E0008 */ addiu	$t6, $v0, 0X8
/* 000440 0x80ADE910 ACCE02C0 */ sw	$t6, 0X2C0($a2)
/* 000441 0x80ADE914 AC580004 */ sw	$t8, 0X4($v0)
/* 000442 0x80ADE918 AC4F0000 */ sw	$t7, 0X0($v0)
/* 000443 0x80ADE91C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000444 0x80ADE920 27BD0030 */ addiu	$sp, $sp, 0X30
/* 000445 0x80ADE924 03E00008 */ jr	$ra
/* 000446 0x80ADE928 00000000 */ nop
/* 000447 0x80ADE92C 00000000 */ nop
