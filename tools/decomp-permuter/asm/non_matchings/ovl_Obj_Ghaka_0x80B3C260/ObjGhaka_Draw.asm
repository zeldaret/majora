glabel ObjGhaka_Draw
/* 000382 0x80B3C858 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 000383 0x80B3C85C AFBF001C */ sw	$ra, 0X1C($sp)
/* 000384 0x80B3C860 AFB00018 */ sw	$s0, 0X18($sp)
/* 000385 0x80B3C864 AFA40038 */ sw	$a0, 0X38($sp)
/* 000386 0x80B3C868 AFA5003C */ sw	$a1, 0X3C($sp)
/* 000387 0x80B3C86C 8FAE003C */ lw	$t6, 0X3C($sp)
/* 000388 0x80B3C870 8DC40000 */ lw	$a0, 0X0($t6)
/* 000389 0x80B3C874 0C04B0A3 */ jal	func_8012C28C
/* 000390 0x80B3C878 00808025 */ move	$s0, $a0
/* 000391 0x80B3C87C 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 000392 0x80B3C880 3C18DA38 */ lui	$t8, 0xDA38
/* 000393 0x80B3C884 37180003 */ ori	$t8, $t8, 0X3
/* 000394 0x80B3C888 244F0008 */ addiu	$t7, $v0, 0X8
/* 000395 0x80B3C88C AE0F02B0 */ sw	$t7, 0X2B0($s0)
/* 000396 0x80B3C890 AC580000 */ sw	$t8, 0X0($v0)
/* 000397 0x80B3C894 8FB9003C */ lw	$t9, 0X3C($sp)
/* 000398 0x80B3C898 8F240000 */ lw	$a0, 0X0($t9)
/* 000399 0x80B3C89C 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000400 0x80B3C8A0 AFA2002C */ sw	$v0, 0X2C($sp)
/* 000401 0x80B3C8A4 8FA3002C */ lw	$v1, 0X2C($sp)
/* 000402 0x80B3C8A8 3C09DE00 */ lui	$t1, 0xDE00
/* 000403 0x80B3C8AC AC620004 */ sw	$v0, 0X4($v1)
/* 000404 0x80B3C8B0 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 000405 0x80B3C8B4 3C0A0600 */ lui	$t2, 0x0600
/* 000406 0x80B3C8B8 254A1A20 */ addiu	$t2, $t2, 0X1A20
/* 000407 0x80B3C8BC 24480008 */ addiu	$t0, $v0, 0X8
/* 000408 0x80B3C8C0 AE0802B0 */ sw	$t0, 0X2B0($s0)
/* 000409 0x80B3C8C4 AC4A0004 */ sw	$t2, 0X4($v0)
/* 000410 0x80B3C8C8 AC490000 */ sw	$t1, 0X0($v0)
/* 000411 0x80B3C8CC 8FAB003C */ lw	$t3, 0X3C($sp)
/* 000412 0x80B3C8D0 0C04B0B7 */ jal	func_8012C2DC
/* 000413 0x80B3C8D4 8D640000 */ lw	$a0, 0X0($t3)
/* 000414 0x80B3C8D8 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000415 0x80B3C8DC 3C0DDA38 */ lui	$t5, 0xDA38
/* 000416 0x80B3C8E0 35AD0003 */ ori	$t5, $t5, 0X3
/* 000417 0x80B3C8E4 244C0008 */ addiu	$t4, $v0, 0X8
/* 000418 0x80B3C8E8 AE0C02C0 */ sw	$t4, 0X2C0($s0)
/* 000419 0x80B3C8EC AC4D0000 */ sw	$t5, 0X0($v0)
/* 000420 0x80B3C8F0 8FAE003C */ lw	$t6, 0X3C($sp)
/* 000421 0x80B3C8F4 8DC40000 */ lw	$a0, 0X0($t6)
/* 000422 0x80B3C8F8 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000423 0x80B3C8FC AFA20024 */ sw	$v0, 0X24($sp)
/* 000424 0x80B3C900 8FA30024 */ lw	$v1, 0X24($sp)
/* 000425 0x80B3C904 3C18DE00 */ lui	$t8, 0xDE00
/* 000426 0x80B3C908 AC620004 */ sw	$v0, 0X4($v1)
/* 000427 0x80B3C90C 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000428 0x80B3C910 3C190600 */ lui	$t9, 0x0600
/* 000429 0x80B3C914 27391980 */ addiu	$t9, $t9, 0X1980
/* 000430 0x80B3C918 244F0008 */ addiu	$t7, $v0, 0X8
/* 000431 0x80B3C91C AE0F02C0 */ sw	$t7, 0X2C0($s0)
/* 000432 0x80B3C920 AC590004 */ sw	$t9, 0X4($v0)
/* 000433 0x80B3C924 AC580000 */ sw	$t8, 0X0($v0)
/* 000434 0x80B3C928 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000435 0x80B3C92C 8FB00018 */ lw	$s0, 0X18($sp)
/* 000436 0x80B3C930 27BD0038 */ addiu	$sp, $sp, 0X38
/* 000437 0x80B3C934 03E00008 */ jr	$ra
/* 000438 0x80B3C938 00000000 */ nop
/* 000439 0x80B3C93C 00000000 */ nop
