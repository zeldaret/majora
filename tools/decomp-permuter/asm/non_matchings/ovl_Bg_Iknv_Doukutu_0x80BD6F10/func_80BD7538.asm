glabel func_80BD7538
/* 000394 0x80BD7538 27BDFFA0 */ addiu	$sp, $sp, -0X60
/* 000395 0x80BD753C AFB00014 */ sw	$s0, 0X14($sp)
/* 000396 0x80BD7540 00A08025 */ move	$s0, $a1
/* 000397 0x80BD7544 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000398 0x80BD7548 AFB10018 */ sw	$s1, 0X18($sp)
/* 000399 0x80BD754C AFA40060 */ sw	$a0, 0X60($sp)
/* 000400 0x80BD7550 8FA40060 */ lw	$a0, 0X60($sp)
/* 000401 0x80BD7554 0C2F5DDA */ jal	func_80BD7768
/* 000402 0x80BD7558 02002825 */ move	$a1, $s0
/* 000403 0x80BD755C 8E110000 */ lw	$s1, 0X0($s0)
/* 000404 0x80BD7560 860E0810 */ lh	$t6, 0X810($s0)
/* 000405 0x80BD7564 000E7880 */ sll	$t7, $t6, 2
/* 000406 0x80BD7568 020FC021 */ addu	$t8, $s0, $t7
/* 000407 0x80BD756C 8F030800 */ lw	$v1, 0X800($t8)
/* 000408 0x80BD7570 2464005C */ addiu	$a0, $v1, 0X5C
/* 000409 0x80BD7574 0C03FE98 */ jal	Math_Vec3f_Yaw
/* 000410 0x80BD7578 24650050 */ addiu	$a1, $v1, 0X50
/* 000411 0x80BD757C A7A2003E */ sh	$v0, 0X3E($sp)
/* 000412 0x80BD7580 86190810 */ lh	$t9, 0X810($s0)
/* 000413 0x80BD7584 00194080 */ sll	$t0, $t9, 2
/* 000414 0x80BD7588 02084821 */ addu	$t1, $s0, $t0
/* 000415 0x80BD758C 8D230800 */ lw	$v1, 0X800($t1)
/* 000416 0x80BD7590 2464005C */ addiu	$a0, $v1, 0X5C
/* 000417 0x80BD7594 0C03FEA5 */ jal	Math_Vec3f_Pitch
/* 000418 0x80BD7598 24650050 */ addiu	$a1, $v1, 0X50
/* 000419 0x80BD759C 00025023 */ negu	$t2, $v0
/* 000420 0x80BD75A0 A7AA003C */ sh	$t2, 0X3C($sp)
/* 000421 0x80BD75A4 0C03FB61 */ jal	Math_Sins
/* 000422 0x80BD75A8 87A4003E */ lh	$a0, 0X3E($sp)
/* 000423 0x80BD75AC E7A00024 */ swc1	$f0, 0X24($sp)
/* 000424 0x80BD75B0 0C03FB51 */ jal	Math_Coss
/* 000425 0x80BD75B4 87A4003C */ lh	$a0, 0X3C($sp)
/* 000426 0x80BD75B8 3C01C2C8 */ lui	$at, 0xC2C8
/* 000427 0x80BD75BC 44812000 */ mtc1	$at, $f4
/* 000428 0x80BD75C0 C7A60024 */ lwc1	$f6, 0X24($sp)
/* 000429 0x80BD75C4 87A4003C */ lh	$a0, 0X3C($sp)
/* 000430 0x80BD75C8 46062202 */ mul.s	$f8, $f4, $f6
/* 000431 0x80BD75CC 00000000 */ nop
/* 000432 0x80BD75D0 46080282 */ mul.s	$f10, $f0, $f8
/* 000433 0x80BD75D4 0C03FB61 */ jal	Math_Sins
/* 000434 0x80BD75D8 E7AA0040 */ swc1	$f10, 0X40($sp)
/* 000435 0x80BD75DC 3C01C2C8 */ lui	$at, 0xC2C8
/* 000436 0x80BD75E0 44818000 */ mtc1	$at, $f16
/* 000437 0x80BD75E4 87A4003E */ lh	$a0, 0X3E($sp)
/* 000438 0x80BD75E8 46100482 */ mul.s	$f18, $f0, $f16
/* 000439 0x80BD75EC 0C03FB51 */ jal	Math_Coss
/* 000440 0x80BD75F0 E7B20044 */ swc1	$f18, 0X44($sp)
/* 000441 0x80BD75F4 E7A00024 */ swc1	$f0, 0X24($sp)
/* 000442 0x80BD75F8 0C03FB51 */ jal	Math_Coss
/* 000443 0x80BD75FC 87A4003C */ lh	$a0, 0X3C($sp)
/* 000444 0x80BD7600 3C01C2C8 */ lui	$at, 0xC2C8
/* 000445 0x80BD7604 44812000 */ mtc1	$at, $f4
/* 000446 0x80BD7608 C7A60024 */ lwc1	$f6, 0X24($sp)
/* 000447 0x80BD760C C7AC0040 */ lwc1	$f12, 0X40($sp)
/* 000448 0x80BD7610 C7AE0044 */ lwc1	$f14, 0X44($sp)
/* 000449 0x80BD7614 46062202 */ mul.s	$f8, $f4, $f6
/* 000450 0x80BD7618 24070001 */ li	$a3, 0X1
/* 000451 0x80BD761C 46080282 */ mul.s	$f10, $f0, $f8
/* 000452 0x80BD7620 44065000 */ mfc1	$a2, $f10
/* 000453 0x80BD7624 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 000454 0x80BD7628 00000000 */ nop
/* 000455 0x80BD762C 8FAB0060 */ lw	$t3, 0X60($sp)
/* 000456 0x80BD7630 3C040601 */ lui	$a0, 0x0601
/* 000457 0x80BD7634 2484F1C0 */ addiu	$a0, $a0, -0XE40
/* 000458 0x80BD7638 C5700160 */ lwc1	$f16, 0X160($t3)
/* 000459 0x80BD763C 0C040141 */ jal	Lib_PtrSegToVirt
/* 000460 0x80BD7640 E7B00054 */ swc1	$f16, 0X54($sp)
/* 000461 0x80BD7644 02002025 */ move	$a0, $s0
/* 000462 0x80BD7648 0C04C5D6 */ jal	SceneProc_DrawAllSceneAnimatedTextures
/* 000463 0x80BD764C 00402825 */ move	$a1, $v0
/* 000464 0x80BD7650 8E2502C0 */ lw	$a1, 0X2C0($s1)
/* 000465 0x80BD7654 3C0DDA38 */ lui	$t5, 0xDA38
/* 000466 0x80BD7658 35AD0003 */ ori	$t5, $t5, 0X3
/* 000467 0x80BD765C 24AC0008 */ addiu	$t4, $a1, 0X8
/* 000468 0x80BD7660 AE2C02C0 */ sw	$t4, 0X2C0($s1)
/* 000469 0x80BD7664 ACAD0000 */ sw	$t5, 0X0($a1)
/* 000470 0x80BD7668 8E040000 */ lw	$a0, 0X0($s0)
/* 000471 0x80BD766C 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000472 0x80BD7670 AFA50038 */ sw	$a1, 0X38($sp)
/* 000473 0x80BD7674 8FA30038 */ lw	$v1, 0X38($sp)
/* 000474 0x80BD7678 AC620004 */ sw	$v0, 0X4($v1)
/* 000475 0x80BD767C 8E2502C0 */ lw	$a1, 0X2C0($s1)
/* 000476 0x80BD7680 24AE0008 */ addiu	$t6, $a1, 0X8
/* 000477 0x80BD7684 AE2E02C0 */ sw	$t6, 0X2C0($s1)
/* 000478 0x80BD7688 0C04B0C1 */ jal	func_8012C304
/* 000479 0x80BD768C 00A02025 */ move	$a0, $a1
/* 000480 0x80BD7690 02002025 */ move	$a0, $s0
/* 000481 0x80BD7694 24050001 */ li	$a1, 0X1
/* 000482 0x80BD7698 0C04C77C */ jal	func_80131DF0
/* 000483 0x80BD769C 24060002 */ li	$a2, 0X2
/* 000484 0x80BD76A0 0C04B0B7 */ jal	func_8012C2DC
/* 000485 0x80BD76A4 8E040000 */ lw	$a0, 0X0($s0)
/* 000486 0x80BD76A8 3C03FB00 */ lui	$v1, 0xFB00
/* 000487 0x80BD76AC C7A00054 */ lwc1	$f0, 0X54($sp)
/* 000488 0x80BD76B0 3C01437F */ lui	$at, 0x437F
/* 000489 0x80BD76B4 44819000 */ mtc1	$at, $f18
/* 000490 0x80BD76B8 3C0142F0 */ lui	$at, 0x42F0
/* 000491 0x80BD76BC 44814000 */ mtc1	$at, $f8
/* 000492 0x80BD76C0 46009102 */ mul.s	$f4, $f18, $f0
/* 000493 0x80BD76C4 8E2502C0 */ lw	$a1, 0X2C0($s1)
/* 000494 0x80BD76C8 3C04DE00 */ lui	$a0, 0xDE00
/* 000495 0x80BD76CC 46004282 */ mul.s	$f10, $f8, $f0
/* 000496 0x80BD76D0 24AF0008 */ addiu	$t7, $a1, 0X8
/* 000497 0x80BD76D4 AE2F02C0 */ sw	$t7, 0X2C0($s1)
/* 000498 0x80BD76D8 3C01D72A */ lui	$at, 0xD72A
/* 000499 0x80BD76DC ACA30000 */ sw	$v1, 0X0($a1)
/* 000500 0x80BD76E0 4600218D */ trunc.w.s	$f6, $f4
/* 000501 0x80BD76E4 4600540D */ trunc.w.s	$f16, $f10
/* 000502 0x80BD76E8 44193000 */ mfc1	$t9, $f6
/* 000503 0x80BD76EC 00000000 */ nop
/* 000504 0x80BD76F0 332800FF */ andi	$t0, $t9, 0XFF
/* 000505 0x80BD76F4 ACA80004 */ sw	$t0, 0X4($a1)
/* 000506 0x80BD76F8 8E2502C0 */ lw	$a1, 0X2C0($s1)
/* 000507 0x80BD76FC 3C0A0601 */ lui	$t2, 0x0601
/* 000508 0x80BD7700 254ADDD8 */ addiu	$t2, $t2, -0X2228
/* 000509 0x80BD7704 24A90008 */ addiu	$t1, $a1, 0X8
/* 000510 0x80BD7708 AE2902C0 */ sw	$t1, 0X2C0($s1)
/* 000511 0x80BD770C ACAA0004 */ sw	$t2, 0X4($a1)
/* 000512 0x80BD7710 ACA40000 */ sw	$a0, 0X0($a1)
/* 000513 0x80BD7714 8E2502C0 */ lw	$a1, 0X2C0($s1)
/* 000514 0x80BD7718 440D8000 */ mfc1	$t5, $f16
/* 000515 0x80BD771C 34213700 */ ori	$at, $at, 0X3700
/* 000516 0x80BD7720 24AB0008 */ addiu	$t3, $a1, 0X8
/* 000517 0x80BD7724 AE2B02C0 */ sw	$t3, 0X2C0($s1)
/* 000518 0x80BD7728 31AE00FF */ andi	$t6, $t5, 0XFF
/* 000519 0x80BD772C 01C17825 */ or	$t7, $t6, $at
/* 000520 0x80BD7730 ACAF0004 */ sw	$t7, 0X4($a1)
/* 000521 0x80BD7734 ACA30000 */ sw	$v1, 0X0($a1)
/* 000522 0x80BD7738 8E2502C0 */ lw	$a1, 0X2C0($s1)
/* 000523 0x80BD773C 3C190601 */ lui	$t9, 0x0601
/* 000524 0x80BD7740 2739DB60 */ addiu	$t9, $t9, -0X24A0
/* 000525 0x80BD7744 24B80008 */ addiu	$t8, $a1, 0X8
/* 000526 0x80BD7748 AE3802C0 */ sw	$t8, 0X2C0($s1)
/* 000527 0x80BD774C ACB90004 */ sw	$t9, 0X4($a1)
/* 000528 0x80BD7750 ACA40000 */ sw	$a0, 0X0($a1)
/* 000529 0x80BD7754 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000530 0x80BD7758 8FB00014 */ lw	$s0, 0X14($sp)
/* 000531 0x80BD775C 8FB10018 */ lw	$s1, 0X18($sp)
/* 000532 0x80BD7760 03E00008 */ jr	$ra
/* 000533 0x80BD7764 27BD0060 */ addiu	$sp, $sp, 0X60

