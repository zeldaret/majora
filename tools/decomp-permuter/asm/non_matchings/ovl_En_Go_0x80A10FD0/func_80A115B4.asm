glabel func_80A115B4
/* 000377 0x80A115B4 27BDFFA0 */ addiu	$sp, $sp, -0X60
/* 000378 0x80A115B8 AFB5004C */ sw	$s5, 0X4C($sp)
/* 000379 0x80A115BC AFB20040 */ sw	$s2, 0X40($sp)
/* 000380 0x80A115C0 00809025 */ move	$s2, $a0
/* 000381 0x80A115C4 00A0A825 */ move	$s5, $a1
/* 000382 0x80A115C8 AFBF005C */ sw	$ra, 0X5C($sp)
/* 000383 0x80A115CC AFBE0058 */ sw	$fp, 0X58($sp)
/* 000384 0x80A115D0 AFB70054 */ sw	$s7, 0X54($sp)
/* 000385 0x80A115D4 AFB60050 */ sw	$s6, 0X50($sp)
/* 000386 0x80A115D8 AFB40048 */ sw	$s4, 0X48($sp)
/* 000387 0x80A115DC AFB30044 */ sw	$s3, 0X44($sp)
/* 000388 0x80A115E0 AFB1003C */ sw	$s1, 0X3C($sp)
/* 000389 0x80A115E4 AFB00038 */ sw	$s0, 0X38($sp)
/* 000390 0x80A115E8 F7BA0030 */ sdc1	$f26, 0X30($sp)
/* 000391 0x80A115EC F7B80028 */ sdc1	$f24, 0X28($sp)
/* 000392 0x80A115F0 F7B60020 */ sdc1	$f22, 0X20($sp)
/* 000393 0x80A115F4 F7B40018 */ sdc1	$f20, 0X18($sp)
/* 000394 0x80A115F8 0000F025 */ move	$fp, $zero
/* 000395 0x80A115FC 8EA40000 */ lw	$a0, 0X0($s5)
/* 000396 0x80A11600 0C04B0B7 */ jal	func_8012C2DC
/* 000397 0x80A11604 00808025 */ move	$s0, $a0
/* 000398 0x80A11608 3C0140E0 */ lui	$at, 0x40E0
/* 000399 0x80A1160C 4481D000 */ mtc1	$at, $f26
/* 000400 0x80A11610 3C013F80 */ lui	$at, 0x3F80
/* 000401 0x80A11614 4481C000 */ mtc1	$at, $f24
/* 000402 0x80A11618 3C01437F */ lui	$at, 0x437F
/* 000403 0x80A1161C 4481B000 */ mtc1	$at, $f22
/* 000404 0x80A11620 0000A025 */ move	$s4, $zero
/* 000405 0x80A11624 3C17DE00 */ lui	$s7, 0xDE00
.L80A11628:
/* 000406 0x80A11628 92420000 */ lbu	$v0, 0X0($s2)
/* 000407 0x80A1162C 28410004 */ slti	$at, $v0, 0X4
/* 000408 0x80A11630 1420009D */ bnez	$at, .L80A118A8
/* 000409 0x80A11634 28410007 */ slti	$at, $v0, 0X7
/* 000410 0x80A11638 1020009B */ beqz	$at, .L80A118A8
/* 000411 0x80A1163C 3C160601 */ lui	$s6, 0x0601
/* 000412 0x80A11640 3C010001 */ lui	$at, 0x0001
/* 000413 0x80A11644 342187FC */ ori	$at, $at, 0X87FC
/* 000414 0x80A11648 02A19821 */ addu	$s3, $s5, $at
/* 000415 0x80A1164C 17C0000D */ bnez	$fp, .L80A11684
/* 000416 0x80A11650 26D64D00 */ addiu	$s6, $s6, 0X4D00
/* 000417 0x80A11654 3C110601 */ lui	$s1, 0x0601
/* 000418 0x80A11658 26314CF0 */ addiu	$s1, $s1, 0X4CF0
/* 000419 0x80A1165C 8E0402C0 */ lw	$a0, 0X2C0($s0)
/* 000420 0x80A11660 00002825 */ move	$a1, $zero
/* 000421 0x80A11664 0C04AFDE */ jal	Gfx_CallSetupDL
/* 000422 0x80A11668 241E0001 */ li	$fp, 0X1
/* 000423 0x80A1166C AE0202C0 */ sw	$v0, 0X2C0($s0)
/* 000424 0x80A11670 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000425 0x80A11674 244E0008 */ addiu	$t6, $v0, 0X8
/* 000426 0x80A11678 AE0E02C0 */ sw	$t6, 0X2C0($s0)
/* 000427 0x80A1167C AC510004 */ sw	$s1, 0X4($v0)
/* 000428 0x80A11680 AC570000 */ sw	$s7, 0X0($v0)
.L80A11684:
/* 000429 0x80A11684 0C060067 */ jal	SysMatrix_StatePush
/* 000430 0x80A11688 00000000 */ nop
/* 000431 0x80A1168C 924F0002 */ lbu	$t7, 0X2($s2)
/* 000432 0x80A11690 3C014F80 */ lui	$at, 0x4F80
/* 000433 0x80A11694 00003825 */ move	$a3, $zero
/* 000434 0x80A11698 448F2000 */ mtc1	$t7, $f4
/* 000435 0x80A1169C 05E10004 */ bgez	$t7, .L80A116B0
/* 000436 0x80A116A0 468021A0 */ cvt.s.w	$f6, $f4
/* 000437 0x80A116A4 44814000 */ mtc1	$at, $f8
/* 000438 0x80A116A8 00000000 */ nop
/* 000439 0x80A116AC 46083180 */ add.s	$f6, $f6, $f8
.L80A116B0:
/* 000440 0x80A116B0 92580001 */ lbu	$t8, 0X1($s2)
/* 000441 0x80A116B4 3C014F80 */ lui	$at, 0x4F80
/* 000442 0x80A116B8 44985000 */ mtc1	$t8, $f10
/* 000443 0x80A116BC 07010004 */ bgez	$t8, .L80A116D0
/* 000444 0x80A116C0 46805420 */ cvt.s.w	$f16, $f10
/* 000445 0x80A116C4 44819000 */ mtc1	$at, $f18
/* 000446 0x80A116C8 00000000 */ nop
/* 000447 0x80A116CC 46128400 */ add.s	$f16, $f16, $f18
.L80A116D0:
/* 000448 0x80A116D0 46103503 */ div.s	$f20, $f6, $f16
/* 000449 0x80A116D4 8E0402C0 */ lw	$a0, 0X2C0($s0)
/* 000450 0x80A116D8 3C08FA00 */ lui	$t0, 0xFA00
/* 000451 0x80A116DC 4616A102 */ mul.s	$f4, $f20, $f22
/* 000452 0x80A116E0 24990008 */ addiu	$t9, $a0, 0X8
/* 000453 0x80A116E4 AE1902C0 */ sw	$t9, 0X2C0($s0)
/* 000454 0x80A116E8 AC880000 */ sw	$t0, 0X0($a0)
/* 000455 0x80A116EC 92490000 */ lbu	$t1, 0X0($s2)
/* 000456 0x80A116F0 3C0B80A1 */ lui	$t3, %hi(D_80A16664)
/* 000457 0x80A116F4 256B6664 */ addiu	$t3, $t3, %lo(D_80A16664)
/* 000458 0x80A116F8 00095080 */ sll	$t2, $t1, 2
/* 000459 0x80A116FC 014B1821 */ addu	$v1, $t2, $t3
/* 000460 0x80A11700 906DFFF2 */ lbu	$t5, -0XE($v1)
/* 000461 0x80A11704 240F0001 */ li	$t7, 0X1
/* 000462 0x80A11708 9078FFF0 */ lbu	$t8, -0X10($v1)
/* 000463 0x80A1170C 000D7200 */ sll	$t6, $t5, 8
/* 000464 0x80A11710 444DF800 */ cfc1	$t5, $31
/* 000465 0x80A11714 44CFF800 */ ctc1	$t7, $31
/* 000466 0x80A11718 906AFFF1 */ lbu	$t2, -0XF($v1)
/* 000467 0x80A1171C 0018CE00 */ sll	$t9, $t8, 24
/* 000468 0x80A11720 46002224 */ cvt.w.s	$f8, $f4
/* 000469 0x80A11724 01D94025 */ or	$t0, $t6, $t9
/* 000470 0x80A11728 000A5C00 */ sll	$t3, $t2, 16
/* 000471 0x80A1172C 010B6025 */ or	$t4, $t0, $t3
/* 000472 0x80A11730 444FF800 */ cfc1	$t7, $31
/* 000473 0x80A11734 3C014F00 */ lui	$at, 0x4F00
/* 000474 0x80A11738 31EF0078 */ andi	$t7, $t7, 0X78
/* 000475 0x80A1173C 51E00013 */ beqzl	$t7, .L80A1178C
/* 000476 0x80A11740 440F4000 */ mfc1	$t7, $f8
/* 000477 0x80A11744 44814000 */ mtc1	$at, $f8
/* 000478 0x80A11748 240F0001 */ li	$t7, 0X1
/* 000479 0x80A1174C 46082201 */ sub.s	$f8, $f4, $f8
/* 000480 0x80A11750 44CFF800 */ ctc1	$t7, $31
/* 000481 0x80A11754 00000000 */ nop
/* 000482 0x80A11758 46004224 */ cvt.w.s	$f8, $f8
/* 000483 0x80A1175C 444FF800 */ cfc1	$t7, $31
/* 000484 0x80A11760 00000000 */ nop
/* 000485 0x80A11764 31EF0078 */ andi	$t7, $t7, 0X78
/* 000486 0x80A11768 15E00005 */ bnez	$t7, .L80A11780
/* 000487 0x80A1176C 00000000 */ nop
/* 000488 0x80A11770 440F4000 */ mfc1	$t7, $f8
/* 000489 0x80A11774 3C018000 */ lui	$at, 0x8000
/* 000490 0x80A11778 10000007 */ b	.L80A11798
/* 000491 0x80A1177C 01E17825 */ or	$t7, $t7, $at
.L80A11780:
/* 000492 0x80A11780 10000005 */ b	.L80A11798
/* 000493 0x80A11784 240FFFFF */ li	$t7, -0X1
/* 000494 0x80A11788 440F4000 */ mfc1	$t7, $f8
.L80A1178C:
/* 000495 0x80A1178C 00000000 */ nop
/* 000496 0x80A11790 05E0FFFB */ bltz	$t7, .L80A11780
/* 000497 0x80A11794 00000000 */ nop
.L80A11798:
/* 000498 0x80A11798 31EE00FF */ andi	$t6, $t7, 0XFF
/* 000499 0x80A1179C 44CDF800 */ ctc1	$t5, $31
/* 000500 0x80A117A0 018EC825 */ or	$t9, $t4, $t6
/* 000501 0x80A117A4 AC990004 */ sw	$t9, 0X4($a0)
/* 000502 0x80A117A8 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000503 0x80A117AC 3C0AFB00 */ lui	$t2, 0xFB00
/* 000504 0x80A117B0 3C0D80A1 */ lui	$t5, %hi(D_80A16670)
/* 000505 0x80A117B4 24490008 */ addiu	$t1, $v0, 0X8
/* 000506 0x80A117B8 AE0902C0 */ sw	$t1, 0X2C0($s0)
/* 000507 0x80A117BC AC4A0000 */ sw	$t2, 0X0($v0)
/* 000508 0x80A117C0 92480000 */ lbu	$t0, 0X0($s2)
/* 000509 0x80A117C4 25AD6670 */ addiu	$t5, $t5, %lo(D_80A16670)
/* 000510 0x80A117C8 00085880 */ sll	$t3, $t0, 2
/* 000511 0x80A117CC 016D1821 */ addu	$v1, $t3, $t5
/* 000512 0x80A117D0 9078FFF2 */ lbu	$t8, -0XE($v1)
/* 000513 0x80A117D4 9079FFF0 */ lbu	$t9, -0X10($v1)
/* 000514 0x80A117D8 906BFFF1 */ lbu	$t3, -0XF($v1)
/* 000515 0x80A117DC 00186200 */ sll	$t4, $t8, 8
/* 000516 0x80A117E0 00194E00 */ sll	$t1, $t9, 24
/* 000517 0x80A117E4 01895025 */ or	$t2, $t4, $t1
/* 000518 0x80A117E8 000B6C00 */ sll	$t5, $t3, 16
/* 000519 0x80A117EC 014D7825 */ or	$t7, $t2, $t5
/* 000520 0x80A117F0 AC4F0004 */ sw	$t7, 0X4($v0)
/* 000521 0x80A117F4 C64C0010 */ lwc1	$f12, 0X10($s2)
/* 000522 0x80A117F8 C64E0014 */ lwc1	$f14, 0X14($s2)
/* 000523 0x80A117FC 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 000524 0x80A11800 8E460018 */ lw	$a2, 0X18($s2)
/* 000525 0x80A11804 C64C0034 */ lwc1	$f12, 0X34($s2)
/* 000526 0x80A11808 4406C000 */ mfc1	$a2, $f24
/* 000527 0x80A1180C 24070001 */ li	$a3, 0X1
/* 000528 0x80A11810 0C0600E7 */ jal	SysMatrix_InsertScale
/* 000529 0x80A11814 46006386 */ mov.s	$f14, $f12
/* 000530 0x80A11818 0C060828 */ jal	SysMatrix_NormalizeXYZ
/* 000531 0x80A1181C 02602025 */ move	$a0, $s3
/* 000532 0x80A11820 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000533 0x80A11824 3C0EDA38 */ lui	$t6, 0xDA38
/* 000534 0x80A11828 35CE0003 */ ori	$t6, $t6, 0X3
/* 000535 0x80A1182C 24580008 */ addiu	$t8, $v0, 0X8
/* 000536 0x80A11830 AE1802C0 */ sw	$t8, 0X2C0($s0)
/* 000537 0x80A11834 AC4E0000 */ sw	$t6, 0X0($v0)
/* 000538 0x80A11838 8EA40000 */ lw	$a0, 0X0($s5)
/* 000539 0x80A1183C 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000540 0x80A11840 00408825 */ move	$s1, $v0
/* 000541 0x80A11844 AE220004 */ sw	$v0, 0X4($s1)
/* 000542 0x80A11848 461AA282 */ mul.s	$f10, $f20, $f26
/* 000543 0x80A1184C 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000544 0x80A11850 3C0CDB06 */ lui	$t4, 0xDB06
/* 000545 0x80A11854 358C0020 */ ori	$t4, $t4, 0X20
/* 000546 0x80A11858 24590008 */ addiu	$t9, $v0, 0X8
/* 000547 0x80A1185C AE1902C0 */ sw	$t9, 0X2C0($s0)
/* 000548 0x80A11860 3C0480A1 */ lui	$a0, %hi(D_80A16644)
/* 000549 0x80A11864 4600548D */ trunc.w.s	$f18, $f10
/* 000550 0x80A11868 AC4C0000 */ sw	$t4, 0X0($v0)
/* 000551 0x80A1186C 00408825 */ move	$s1, $v0
/* 000552 0x80A11870 44089000 */ mfc1	$t0, $f18
/* 000553 0x80A11874 00000000 */ nop
/* 000554 0x80A11878 00085880 */ sll	$t3, $t0, 2
/* 000555 0x80A1187C 008B2021 */ addu	$a0, $a0, $t3
/* 000556 0x80A11880 0C040141 */ jal	Lib_PtrSegToVirt
/* 000557 0x80A11884 8C846644 */ lw	$a0, %lo(D_80A16644)($a0)
/* 000558 0x80A11888 AE220004 */ sw	$v0, 0X4($s1)
/* 000559 0x80A1188C 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000560 0x80A11890 244A0008 */ addiu	$t2, $v0, 0X8
/* 000561 0x80A11894 AE0A02C0 */ sw	$t2, 0X2C0($s0)
/* 000562 0x80A11898 AC560004 */ sw	$s6, 0X4($v0)
/* 000563 0x80A1189C AC570000 */ sw	$s7, 0X0($v0)
/* 000564 0x80A118A0 0C060073 */ jal	SysMatrix_StatePop
/* 000565 0x80A118A4 00000000 */ nop
.L80A118A8:
/* 000566 0x80A118A8 26940001 */ addiu	$s4, $s4, 0X1
/* 000567 0x80A118AC 24010020 */ li	$at, 0X20
/* 000568 0x80A118B0 1681FF5D */ bne	$s4, $at, .L80A11628
/* 000569 0x80A118B4 2652003C */ addiu	$s2, $s2, 0X3C
/* 000570 0x80A118B8 8FBF005C */ lw	$ra, 0X5C($sp)
/* 000571 0x80A118BC D7B40018 */ ldc1	$f20, 0X18($sp)
/* 000572 0x80A118C0 D7B60020 */ ldc1	$f22, 0X20($sp)
/* 000573 0x80A118C4 D7B80028 */ ldc1	$f24, 0X28($sp)
/* 000574 0x80A118C8 D7BA0030 */ ldc1	$f26, 0X30($sp)
/* 000575 0x80A118CC 8FB00038 */ lw	$s0, 0X38($sp)
/* 000576 0x80A118D0 8FB1003C */ lw	$s1, 0X3C($sp)
/* 000577 0x80A118D4 8FB20040 */ lw	$s2, 0X40($sp)
/* 000578 0x80A118D8 8FB30044 */ lw	$s3, 0X44($sp)
/* 000579 0x80A118DC 8FB40048 */ lw	$s4, 0X48($sp)
/* 000580 0x80A118E0 8FB5004C */ lw	$s5, 0X4C($sp)
/* 000581 0x80A118E4 8FB60050 */ lw	$s6, 0X50($sp)
/* 000582 0x80A118E8 8FB70054 */ lw	$s7, 0X54($sp)
/* 000583 0x80A118EC 8FBE0058 */ lw	$fp, 0X58($sp)
/* 000584 0x80A118F0 03E00008 */ jr	$ra
/* 000585 0x80A118F4 27BD0060 */ addiu	$sp, $sp, 0X60

