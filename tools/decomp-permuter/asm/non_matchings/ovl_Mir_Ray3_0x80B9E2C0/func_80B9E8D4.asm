glabel func_80B9E8D4
/* 000389 0x80B9E8D4 27BDFEA8 */ addiu	$sp, $sp, -0X158
/* 000390 0x80B9E8D8 3C0143C8 */ lui	$at, 0x43C8
/* 000391 0x80B9E8DC 44810000 */ mtc1	$at, $f0
/* 000392 0x80B9E8E0 AFBF007C */ sw	$ra, 0X7C($sp)
/* 000393 0x80B9E8E4 AFBE0078 */ sw	$fp, 0X78($sp)
/* 000394 0x80B9E8E8 AFB70074 */ sw	$s7, 0X74($sp)
/* 000395 0x80B9E8EC AFB60070 */ sw	$s6, 0X70($sp)
/* 000396 0x80B9E8F0 AFB5006C */ sw	$s5, 0X6C($sp)
/* 000397 0x80B9E8F4 AFB40068 */ sw	$s4, 0X68($sp)
/* 000398 0x80B9E8F8 AFB30064 */ sw	$s3, 0X64($sp)
/* 000399 0x80B9E8FC AFB20060 */ sw	$s2, 0X60($sp)
/* 000400 0x80B9E900 AFB1005C */ sw	$s1, 0X5C($sp)
/* 000401 0x80B9E904 AFB00058 */ sw	$s0, 0X58($sp)
/* 000402 0x80B9E908 F7BE0050 */ sdc1	$f30, 0X50($sp)
/* 000403 0x80B9E90C F7BC0048 */ sdc1	$f28, 0X48($sp)
/* 000404 0x80B9E910 F7BA0040 */ sdc1	$f26, 0X40($sp)
/* 000405 0x80B9E914 F7B80038 */ sdc1	$f24, 0X38($sp)
/* 000406 0x80B9E918 F7B60030 */ sdc1	$f22, 0X30($sp)
/* 000407 0x80B9E91C F7B40028 */ sdc1	$f20, 0X28($sp)
/* 000408 0x80B9E920 AFA40158 */ sw	$a0, 0X158($sp)
/* 000409 0x80B9E924 AFA5015C */ sw	$a1, 0X15C($sp)
/* 000410 0x80B9E928 8FAE015C */ lw	$t6, 0X15C($sp)
/* 000411 0x80B9E92C 8FAF0158 */ lw	$t7, 0X158($sp)
/* 000412 0x80B9E930 3C014120 */ lui	$at, 0x4120
/* 000413 0x80B9E934 8DC21CCC */ lw	$v0, 0X1CCC($t6)
/* 000414 0x80B9E938 C5E60260 */ lwc1	$f6, 0X260($t7)
/* 000415 0x80B9E93C C5F20214 */ lwc1	$f18, 0X214($t7)
/* 000416 0x80B9E940 C4440D24 */ lwc1	$f4, 0XD24($v0)
/* 000417 0x80B9E944 4481F000 */ mtc1	$at, $f30
/* 000418 0x80B9E948 3C0180BA */ lui	$at, %hi(D_80B9F4B8)
/* 000419 0x80B9E94C 46062202 */ mul.s	$f8, $f4, $f6
/* 000420 0x80B9E950 C43CF4B8 */ lwc1	$f28, %lo(D_80B9F4B8)($at)
/* 000421 0x80B9E954 3C013F80 */ lui	$at, 0x3F80
/* 000422 0x80B9E958 4481C000 */ mtc1	$at, $f24
/* 000423 0x80B9E95C 3C014080 */ lui	$at, 0x4080
/* 000424 0x80B9E960 4481B000 */ mtc1	$at, $f22
/* 000425 0x80B9E964 3C0142C8 */ lui	$at, 0x42C8
/* 000426 0x80B9E968 46004287 */ neg.s	$f10, $f8
/* 000427 0x80B9E96C 4481A000 */ mtc1	$at, $f20
/* 000428 0x80B9E970 46125102 */ mul.s	$f4, $f10, $f18
/* 000429 0x80B9E974 00009025 */ move	$s2, $zero
/* 000430 0x80B9E978 00C08025 */ move	$s0, $a2
/* 000431 0x80B9E97C 241E01F8 */ li	$fp, 0X1F8
/* 000432 0x80B9E980 241700FF */ li	$s7, 0XFF
/* 000433 0x80B9E984 27B60134 */ addiu	$s6, $sp, 0X134
/* 000434 0x80B9E988 27B50104 */ addiu	$s5, $sp, 0X104
/* 000435 0x80B9E98C 46002182 */ mul.s	$f6, $f4, $f0
/* 000436 0x80B9E990 27B40110 */ addiu	$s4, $sp, 0X110
/* 000437 0x80B9E994 27B3011C */ addiu	$s3, $sp, 0X11C
/* 000438 0x80B9E998 24510D04 */ addiu	$s1, $v0, 0XD04
/* 000439 0x80B9E99C E7A600F8 */ swc1	$f6, 0XF8($sp)
/* 000440 0x80B9E9A0 C5EA0260 */ lwc1	$f10, 0X260($t7)
/* 000441 0x80B9E9A4 C4480D28 */ lwc1	$f8, 0XD28($v0)
/* 000442 0x80B9E9A8 460A4482 */ mul.s	$f18, $f8, $f10
/* 000443 0x80B9E9AC C5E80214 */ lwc1	$f8, 0X214($t7)
/* 000444 0x80B9E9B0 46009107 */ neg.s	$f4, $f18
/* 000445 0x80B9E9B4 46082282 */ mul.s	$f10, $f4, $f8
/* 000446 0x80B9E9B8 00000000 */ nop
/* 000447 0x80B9E9BC 46005482 */ mul.s	$f18, $f10, $f0
/* 000448 0x80B9E9C0 E7B200FC */ swc1	$f18, 0XFC($sp)
/* 000449 0x80B9E9C4 C5E80260 */ lwc1	$f8, 0X260($t7)
/* 000450 0x80B9E9C8 C4440D2C */ lwc1	$f4, 0XD2C($v0)
/* 000451 0x80B9E9CC 46082282 */ mul.s	$f10, $f4, $f8
/* 000452 0x80B9E9D0 C5E80214 */ lwc1	$f8, 0X214($t7)
/* 000453 0x80B9E9D4 46005107 */ neg.s	$f4, $f10
/* 000454 0x80B9E9D8 46082282 */ mul.s	$f10, $f4, $f8
/* 000455 0x80B9E9DC 00000000 */ nop
/* 000456 0x80B9E9E0 46005102 */ mul.s	$f4, $f10, $f0
/* 000457 0x80B9E9E4 E7A40100 */ swc1	$f4, 0X100($sp)
/* 000458 0x80B9E9E8 C4480D34 */ lwc1	$f8, 0XD34($v0)
/* 000459 0x80B9E9EC E7A80140 */ swc1	$f8, 0X140($sp)
/* 000460 0x80B9E9F0 C44A0D38 */ lwc1	$f10, 0XD38($v0)
/* 000461 0x80B9E9F4 E7AA0144 */ swc1	$f10, 0X144($sp)
/* 000462 0x80B9E9F8 C4480D3C */ lwc1	$f8, 0XD3C($v0)
/* 000463 0x80B9E9FC C7AA0140 */ lwc1	$f10, 0X140($sp)
/* 000464 0x80B9EA00 E7A80148 */ swc1	$f8, 0X148($sp)
/* 000465 0x80B9EA04 460A3200 */ add.s	$f8, $f6, $f10
/* 000466 0x80B9EA08 C7A60144 */ lwc1	$f6, 0X144($sp)
/* 000467 0x80B9EA0C E7A80134 */ swc1	$f8, 0X134($sp)
/* 000468 0x80B9EA10 C7A80148 */ lwc1	$f8, 0X148($sp)
/* 000469 0x80B9EA14 46069280 */ add.s	$f10, $f18, $f6
/* 000470 0x80B9EA18 46082480 */ add.s	$f18, $f4, $f8
/* 000471 0x80B9EA1C E7AA0138 */ swc1	$f10, 0X138($sp)
/* 000472 0x80B9EA20 E7B2013C */ swc1	$f18, 0X13C($sp)
/* 000473 0x80B9EA24 C5E60214 */ lwc1	$f6, 0X214($t7)
/* 000474 0x80B9EA28 46003682 */ mul.s	$f26, $f6, $f0
/* 000475 0x80B9EA2C 00000000 */ nop
.L80B9EA30:
/* 000476 0x80B9EA30 8E02004C */ lw	$v0, 0X4C($s0)
/* 000477 0x80B9EA34 504000D6 */ beqzl	$v0, .L80B9ED90
/* 000478 0x80B9EA38 26520054 */ addiu	$s2, $s2, 0X54
/* 000479 0x80B9EA3C 84580008 */ lh	$t8, 0X8($v0)
/* 000480 0x80B9EA40 27AD0140 */ addiu	$t5, $sp, 0X140
/* 000481 0x80B9EA44 27AE0128 */ addiu	$t6, $sp, 0X128
/* 000482 0x80B9EA48 44985000 */ mtc1	$t8, $f10
/* 000483 0x80B9EA4C 240F0001 */ li	$t7, 0X1
/* 000484 0x80B9EA50 46805120 */ cvt.s.w	$f4, $f10
/* 000485 0x80B9EA54 461C2302 */ mul.s	$f12, $f4, $f28
/* 000486 0x80B9EA58 E7AC00EC */ swc1	$f12, 0XEC($sp)
/* 000487 0x80B9EA5C 8E19004C */ lw	$t9, 0X4C($s0)
/* 000488 0x80B9EA60 8728000A */ lh	$t0, 0XA($t9)
/* 000489 0x80B9EA64 44889000 */ mtc1	$t0, $f18
/* 000490 0x80B9EA68 00000000 */ nop
/* 000491 0x80B9EA6C 468091A0 */ cvt.s.w	$f6, $f18
/* 000492 0x80B9EA70 461C3382 */ mul.s	$f14, $f6, $f28
/* 000493 0x80B9EA74 E7AE00F0 */ swc1	$f14, 0XF0($sp)
/* 000494 0x80B9EA78 8E09004C */ lw	$t1, 0X4C($s0)
/* 000495 0x80B9EA7C 852A000C */ lh	$t2, 0XC($t1)
/* 000496 0x80B9EA80 448A2000 */ mtc1	$t2, $f4
/* 000497 0x80B9EA84 00000000 */ nop
/* 000498 0x80B9EA88 468024A0 */ cvt.s.w	$f18, $f4
/* 000499 0x80B9EA8C 461C9182 */ mul.s	$f6, $f18, $f28
/* 000500 0x80B9EA90 E7A600F4 */ swc1	$f6, 0XF4($sp)
/* 000501 0x80B9EA94 8E0B004C */ lw	$t3, 0X4C($s0)
/* 000502 0x80B9EA98 44063000 */ mfc1	$a2, $f6
/* 000503 0x80B9EA9C 856C000E */ lh	$t4, 0XE($t3)
/* 000504 0x80B9EAA0 AFAF001C */ sw	$t7, 0X1C($sp)
/* 000505 0x80B9EAA4 AFAE0018 */ sw	$t6, 0X18($sp)
/* 000506 0x80B9EAA8 448C2000 */ mtc1	$t4, $f4
/* 000507 0x80B9EAAC AFB60014 */ sw	$s6, 0X14($sp)
/* 000508 0x80B9EAB0 AFAD0010 */ sw	$t5, 0X10($sp)
/* 000509 0x80B9EAB4 46802120 */ cvt.s.w	$f4, $f4
/* 000510 0x80B9EAB8 44072000 */ mfc1	$a3, $f4
/* 000511 0x80B9EABC 0C05F4BF */ jal	func_8017D2FC
/* 000512 0x80B9EAC0 00000000 */ nop
/* 000513 0x80B9EAC4 104000B0 */ beqz	$v0, .L80B9ED88
/* 000514 0x80B9EAC8 C7B20128 */ lwc1	$f18, 0X128($sp)
/* 000515 0x80B9EACC E6120000 */ swc1	$f18, 0X0($s0)
/* 000516 0x80B9EAD0 C7A8012C */ lwc1	$f8, 0X12C($sp)
/* 000517 0x80B9EAD4 3C0180BA */ lui	$at, %hi(D_80B9F4BC)
/* 000518 0x80B9EAD8 E6080004 */ swc1	$f8, 0X4($s0)
/* 000519 0x80B9EADC C7AA0130 */ lwc1	$f10, 0X130($sp)
/* 000520 0x80B9EAE0 E60A0008 */ swc1	$f10, 0X8($s0)
/* 000521 0x80B9EAE4 C7A40140 */ lwc1	$f4, 0X140($sp)
/* 000522 0x80B9EAE8 C7A60128 */ lwc1	$f6, 0X128($sp)
/* 000523 0x80B9EAEC C7A80144 */ lwc1	$f8, 0X144($sp)
/* 000524 0x80B9EAF0 C7B2012C */ lwc1	$f18, 0X12C($sp)
/* 000525 0x80B9EAF4 46043081 */ sub.s	$f2, $f6, $f4
/* 000526 0x80B9EAF8 C7A60148 */ lwc1	$f6, 0X148($sp)
/* 000527 0x80B9EAFC C7AA0130 */ lwc1	$f10, 0X130($sp)
/* 000528 0x80B9EB00 46089301 */ sub.s	$f12, $f18, $f8
/* 000529 0x80B9EB04 46021102 */ mul.s	$f4, $f2, $f2
/* 000530 0x80B9EB08 46065381 */ sub.s	$f14, $f10, $f6
/* 000531 0x80B9EB0C 460C6482 */ mul.s	$f18, $f12, $f12
/* 000532 0x80B9EB10 C426F4BC */ lwc1	$f6, %lo(D_80B9F4BC)($at)
/* 000533 0x80B9EB14 460E7282 */ mul.s	$f10, $f14, $f14
/* 000534 0x80B9EB18 00000000 */ nop
/* 000535 0x80B9EB1C 4606D402 */ mul.s	$f16, $f26, $f6
/* 000536 0x80B9EB20 46122200 */ add.s	$f8, $f4, $f18
/* 000537 0x80B9EB24 460A4000 */ add.s	$f0, $f8, $f10
/* 000538 0x80B9EB28 46000004 */ sqrt.s	$f0, $f0
/* 000539 0x80B9EB2C 4610003C */ c.lt.s	$f0, $f16
/* 000540 0x80B9EB30 00000000 */ nop
/* 000541 0x80B9EB34 45000003 */ bc1f .L80B9EB44
/* 000542 0x80B9EB38 00000000 */ nop
/* 000543 0x80B9EB3C 10000011 */ b	.L80B9EB84
/* 000544 0x80B9EB40 A2170050 */ sb	$s7, 0X50($s0)
.L80B9EB44:
/* 000545 0x80B9EB44 4600D03C */ c.lt.s	$f26, $f0
/* 000546 0x80B9EB48 00000000 */ nop
/* 000547 0x80B9EB4C 45020004 */ bc1fl .L80B9EB60
/* 000548 0x80B9EB50 461AF103 */ div.s	$f4, $f30, $f26
/* 000549 0x80B9EB54 1000000B */ b	.L80B9EB84
/* 000550 0x80B9EB58 A2000050 */ sb	$zero, 0X50($s0)
/* 000551 0x80B9EB5C 461AF103 */ div.s	$f4, $f30, $f26
.L80B9EB60:
/* 000552 0x80B9EB60 3C01437F */ lui	$at, 0x437F
/* 000553 0x80B9EB64 44815000 */ mtc1	$at, $f10
/* 000554 0x80B9EB68 46002482 */ mul.s	$f18, $f4, $f0
/* 000555 0x80B9EB6C 4612F201 */ sub.s	$f8, $f30, $f18
/* 000556 0x80B9EB70 460A4182 */ mul.s	$f6, $f8, $f10
/* 000557 0x80B9EB74 4600310D */ trunc.w.s	$f4, $f6
/* 000558 0x80B9EB78 44192000 */ mfc1	$t9, $f4
/* 000559 0x80B9EB7C 00000000 */ nop
/* 000560 0x80B9EB80 A2190050 */ sb	$t9, 0X50($s0)
.L80B9EB84:
/* 000561 0x80B9EB84 C6320000 */ lwc1	$f18, 0X0($s1)
/* 000562 0x80B9EB88 C7AA0140 */ lwc1	$f10, 0X140($sp)
/* 000563 0x80B9EB8C 240A0001 */ li	$t2, 0X1
/* 000564 0x80B9EB90 46149202 */ mul.s	$f8, $f18, $f20
/* 000565 0x80B9EB94 460A4180 */ add.s	$f6, $f8, $f10
/* 000566 0x80B9EB98 C7A80144 */ lwc1	$f8, 0X144($sp)
/* 000567 0x80B9EB9C E7A6011C */ swc1	$f6, 0X11C($sp)
/* 000568 0x80B9EBA0 C6240004 */ lwc1	$f4, 0X4($s1)
/* 000569 0x80B9EBA4 46142482 */ mul.s	$f18, $f4, $f20
/* 000570 0x80B9EBA8 46089280 */ add.s	$f10, $f18, $f8
/* 000571 0x80B9EBAC C7A80148 */ lwc1	$f8, 0X148($sp)
/* 000572 0x80B9EBB0 E7AA0120 */ swc1	$f10, 0X120($sp)
/* 000573 0x80B9EBB4 C6240008 */ lwc1	$f4, 0X8($s1)
/* 000574 0x80B9EBB8 46142482 */ mul.s	$f18, $f4, $f20
/* 000575 0x80B9EBBC 46089100 */ add.s	$f4, $f18, $f8
/* 000576 0x80B9EBC0 C7B200F8 */ lwc1	$f18, 0XF8($sp)
/* 000577 0x80B9EBC4 46169202 */ mul.s	$f8, $f18, $f22
/* 000578 0x80B9EBC8 E7A40124 */ swc1	$f4, 0X124($sp)
/* 000579 0x80B9EBCC 46064480 */ add.s	$f18, $f8, $f6
/* 000580 0x80B9EBD0 C7A800FC */ lwc1	$f8, 0XFC($sp)
/* 000581 0x80B9EBD4 46164182 */ mul.s	$f6, $f8, $f22
/* 000582 0x80B9EBD8 C7A80100 */ lwc1	$f8, 0X100($sp)
/* 000583 0x80B9EBDC E7B20110 */ swc1	$f18, 0X110($sp)
/* 000584 0x80B9EBE0 460A3480 */ add.s	$f18, $f6, $f10
/* 000585 0x80B9EBE4 46164182 */ mul.s	$f6, $f8, $f22
/* 000586 0x80B9EBE8 E7B20114 */ swc1	$f18, 0X114($sp)
/* 000587 0x80B9EBEC 44809000 */ mtc1	$zero, $f18
/* 000588 0x80B9EBF0 46043280 */ add.s	$f10, $f6, $f4
/* 000589 0x80B9EBF4 E7AA0118 */ swc1	$f10, 0X118($sp)
/* 000590 0x80B9EBF8 E6120044 */ swc1	$f18, 0X44($s0)
/* 000591 0x80B9EBFC C6000044 */ lwc1	$f0, 0X44($s0)
/* 000592 0x80B9EC00 8E08004C */ lw	$t0, 0X4C($s0)
/* 000593 0x80B9EC04 E618000C */ swc1	$f24, 0XC($s0)
/* 000594 0x80B9EC08 E6180020 */ swc1	$f24, 0X20($s0)
/* 000595 0x80B9EC0C E6180034 */ swc1	$f24, 0X34($s0)
/* 000596 0x80B9EC10 E6180048 */ swc1	$f24, 0X48($s0)
/* 000597 0x80B9EC14 E6000040 */ swc1	$f0, 0X40($s0)
/* 000598 0x80B9EC18 E600003C */ swc1	$f0, 0X3C($s0)
/* 000599 0x80B9EC1C E6000038 */ swc1	$f0, 0X38($s0)
/* 000600 0x80B9EC20 E6000030 */ swc1	$f0, 0X30($s0)
/* 000601 0x80B9EC24 E600002C */ swc1	$f0, 0X2C($s0)
/* 000602 0x80B9EC28 E6000028 */ swc1	$f0, 0X28($s0)
/* 000603 0x80B9EC2C E6000024 */ swc1	$f0, 0X24($s0)
/* 000604 0x80B9EC30 E600001C */ swc1	$f0, 0X1C($s0)
/* 000605 0x80B9EC34 E6000018 */ swc1	$f0, 0X18($s0)
/* 000606 0x80B9EC38 E6000014 */ swc1	$f0, 0X14($s0)
/* 000607 0x80B9EC3C E6000010 */ swc1	$f0, 0X10($s0)
/* 000608 0x80B9EC40 8509000E */ lh	$t1, 0XE($t0)
/* 000609 0x80B9EC44 AFAA001C */ sw	$t2, 0X1C($sp)
/* 000610 0x80B9EC48 AFB50018 */ sw	$s5, 0X18($sp)
/* 000611 0x80B9EC4C 44894000 */ mtc1	$t1, $f8
/* 000612 0x80B9EC50 AFB40014 */ sw	$s4, 0X14($sp)
/* 000613 0x80B9EC54 AFB30010 */ sw	$s3, 0X10($sp)
/* 000614 0x80B9EC58 46804220 */ cvt.s.w	$f8, $f8
/* 000615 0x80B9EC5C 8FA600F4 */ lw	$a2, 0XF4($sp)
/* 000616 0x80B9EC60 C7AE00F0 */ lwc1	$f14, 0XF0($sp)
/* 000617 0x80B9EC64 C7AC00EC */ lwc1	$f12, 0XEC($sp)
/* 000618 0x80B9EC68 44074000 */ mfc1	$a3, $f8
/* 000619 0x80B9EC6C 0C05F4BF */ jal	func_8017D2FC
/* 000620 0x80B9EC70 00000000 */ nop
/* 000621 0x80B9EC74 1040000C */ beqz	$v0, .L80B9ECA8
/* 000622 0x80B9EC78 C7A60104 */ lwc1	$f6, 0X104($sp)
/* 000623 0x80B9EC7C C7A40128 */ lwc1	$f4, 0X128($sp)
/* 000624 0x80B9EC80 46043281 */ sub.s	$f10, $f6, $f4
/* 000625 0x80B9EC84 E60A000C */ swc1	$f10, 0XC($s0)
/* 000626 0x80B9EC88 C7A8012C */ lwc1	$f8, 0X12C($sp)
/* 000627 0x80B9EC8C C7B20108 */ lwc1	$f18, 0X108($sp)
/* 000628 0x80B9EC90 46089181 */ sub.s	$f6, $f18, $f8
/* 000629 0x80B9EC94 E6060010 */ swc1	$f6, 0X10($s0)
/* 000630 0x80B9EC98 C7AA0130 */ lwc1	$f10, 0X130($sp)
/* 000631 0x80B9EC9C C7A4010C */ lwc1	$f4, 0X10C($sp)
/* 000632 0x80B9ECA0 460A2481 */ sub.s	$f18, $f4, $f10
/* 000633 0x80B9ECA4 E6120014 */ swc1	$f18, 0X14($s0)
.L80B9ECA8:
/* 000634 0x80B9ECA8 C6280010 */ lwc1	$f8, 0X10($s1)
/* 000635 0x80B9ECAC C7A40140 */ lwc1	$f4, 0X140($sp)
/* 000636 0x80B9ECB0 240D0001 */ li	$t5, 0X1
/* 000637 0x80B9ECB4 46144182 */ mul.s	$f6, $f8, $f20
/* 000638 0x80B9ECB8 C7AC00EC */ lwc1	$f12, 0XEC($sp)
/* 000639 0x80B9ECBC C7AE00F0 */ lwc1	$f14, 0XF0($sp)
/* 000640 0x80B9ECC0 8FA600F4 */ lw	$a2, 0XF4($sp)
/* 000641 0x80B9ECC4 46043280 */ add.s	$f10, $f6, $f4
/* 000642 0x80B9ECC8 C7A60144 */ lwc1	$f6, 0X144($sp)
/* 000643 0x80B9ECCC E7AA011C */ swc1	$f10, 0X11C($sp)
/* 000644 0x80B9ECD0 C6320014 */ lwc1	$f18, 0X14($s1)
/* 000645 0x80B9ECD4 46149202 */ mul.s	$f8, $f18, $f20
/* 000646 0x80B9ECD8 46064100 */ add.s	$f4, $f8, $f6
/* 000647 0x80B9ECDC C7A60148 */ lwc1	$f6, 0X148($sp)
/* 000648 0x80B9ECE0 E7A40120 */ swc1	$f4, 0X120($sp)
/* 000649 0x80B9ECE4 C6320018 */ lwc1	$f18, 0X18($s1)
/* 000650 0x80B9ECE8 46149202 */ mul.s	$f8, $f18, $f20
/* 000651 0x80B9ECEC 46064480 */ add.s	$f18, $f8, $f6
/* 000652 0x80B9ECF0 C7A800F8 */ lwc1	$f8, 0XF8($sp)
/* 000653 0x80B9ECF4 46164182 */ mul.s	$f6, $f8, $f22
/* 000654 0x80B9ECF8 E7B20124 */ swc1	$f18, 0X124($sp)
/* 000655 0x80B9ECFC 460A3200 */ add.s	$f8, $f6, $f10
/* 000656 0x80B9ED00 C7A600FC */ lwc1	$f6, 0XFC($sp)
/* 000657 0x80B9ED04 46163282 */ mul.s	$f10, $f6, $f22
/* 000658 0x80B9ED08 C7A60100 */ lwc1	$f6, 0X100($sp)
/* 000659 0x80B9ED0C E7A80110 */ swc1	$f8, 0X110($sp)
/* 000660 0x80B9ED10 46045200 */ add.s	$f8, $f10, $f4
/* 000661 0x80B9ED14 46163282 */ mul.s	$f10, $f6, $f22
/* 000662 0x80B9ED18 E7A80114 */ swc1	$f8, 0X114($sp)
/* 000663 0x80B9ED1C 46125100 */ add.s	$f4, $f10, $f18
/* 000664 0x80B9ED20 E7A40118 */ swc1	$f4, 0X118($sp)
/* 000665 0x80B9ED24 8E0B004C */ lw	$t3, 0X4C($s0)
/* 000666 0x80B9ED28 856C000E */ lh	$t4, 0XE($t3)
/* 000667 0x80B9ED2C AFAD001C */ sw	$t5, 0X1C($sp)
/* 000668 0x80B9ED30 AFB50018 */ sw	$s5, 0X18($sp)
/* 000669 0x80B9ED34 448C4000 */ mtc1	$t4, $f8
/* 000670 0x80B9ED38 AFB40014 */ sw	$s4, 0X14($sp)
/* 000671 0x80B9ED3C AFB30010 */ sw	$s3, 0X10($sp)
/* 000672 0x80B9ED40 46804220 */ cvt.s.w	$f8, $f8
/* 000673 0x80B9ED44 44074000 */ mfc1	$a3, $f8
/* 000674 0x80B9ED48 0C05F4BF */ jal	func_8017D2FC
/* 000675 0x80B9ED4C 00000000 */ nop
/* 000676 0x80B9ED50 1040000E */ beqz	$v0, .L80B9ED8C
/* 000677 0x80B9ED54 C7A60104 */ lwc1	$f6, 0X104($sp)
/* 000678 0x80B9ED58 C7AA0128 */ lwc1	$f10, 0X128($sp)
/* 000679 0x80B9ED5C 460A3481 */ sub.s	$f18, $f6, $f10
/* 000680 0x80B9ED60 E612001C */ swc1	$f18, 0X1C($s0)
/* 000681 0x80B9ED64 C7A8012C */ lwc1	$f8, 0X12C($sp)
/* 000682 0x80B9ED68 C7A40108 */ lwc1	$f4, 0X108($sp)
/* 000683 0x80B9ED6C 46082181 */ sub.s	$f6, $f4, $f8
/* 000684 0x80B9ED70 E6060020 */ swc1	$f6, 0X20($s0)
/* 000685 0x80B9ED74 C7B20130 */ lwc1	$f18, 0X130($sp)
/* 000686 0x80B9ED78 C7AA010C */ lwc1	$f10, 0X10C($sp)
/* 000687 0x80B9ED7C 46125101 */ sub.s	$f4, $f10, $f18
/* 000688 0x80B9ED80 10000002 */ b	.L80B9ED8C
/* 000689 0x80B9ED84 E6040024 */ swc1	$f4, 0X24($s0)
.L80B9ED88:
/* 000690 0x80B9ED88 AE00004C */ sw	$zero, 0X4C($s0)
.L80B9ED8C:
/* 000691 0x80B9ED8C 26520054 */ addiu	$s2, $s2, 0X54
.L80B9ED90:
/* 000692 0x80B9ED90 165EFF27 */ bne	$s2, $fp, .L80B9EA30
/* 000693 0x80B9ED94 26100054 */ addiu	$s0, $s0, 0X54
/* 000694 0x80B9ED98 8FAE0158 */ lw	$t6, 0X158($sp)
/* 000695 0x80B9ED9C 3C0143C8 */ lui	$at, 0x43C8
/* 000696 0x80B9EDA0 44813000 */ mtc1	$at, $f6
/* 000697 0x80B9EDA4 C5C80214 */ lwc1	$f8, 0X214($t6)
/* 000698 0x80B9EDA8 C62A0020 */ lwc1	$f10, 0X20($s1)
/* 000699 0x80B9EDAC C5D20260 */ lwc1	$f18, 0X260($t6)
/* 000700 0x80B9EDB0 46064082 */ mul.s	$f2, $f8, $f6
/* 000701 0x80B9EDB4 8FA4015C */ lw	$a0, 0X15C($sp)
/* 000702 0x80B9EDB8 27A50140 */ addiu	$a1, $sp, 0X140
/* 000703 0x80B9EDBC 46125102 */ mul.s	$f4, $f10, $f18
/* 000704 0x80B9EDC0 02C03025 */ move	$a2, $s6
/* 000705 0x80B9EDC4 27A70128 */ addiu	$a3, $sp, 0X128
/* 000706 0x80B9EDC8 27B800C4 */ addiu	$t8, $sp, 0XC4
/* 000707 0x80B9EDCC 24190001 */ li	$t9, 0X1
/* 000708 0x80B9EDD0 24840830 */ addiu	$a0, $a0, 0X830
/* 000709 0x80B9EDD4 46002207 */ neg.s	$f8, $f4
/* 000710 0x80B9EDD8 E7A800F8 */ swc1	$f8, 0XF8($sp)
/* 000711 0x80B9EDDC C6260024 */ lwc1	$f6, 0X24($s1)
/* 000712 0x80B9EDE0 C5CA0260 */ lwc1	$f10, 0X260($t6)
/* 000713 0x80B9EDE4 460A3482 */ mul.s	$f18, $f6, $f10
/* 000714 0x80B9EDE8 46009107 */ neg.s	$f4, $f18
/* 000715 0x80B9EDEC E7A400FC */ swc1	$f4, 0XFC($sp)
/* 000716 0x80B9EDF0 C6260028 */ lwc1	$f6, 0X28($s1)
/* 000717 0x80B9EDF4 C5CA0260 */ lwc1	$f10, 0X260($t6)
/* 000718 0x80B9EDF8 460A3482 */ mul.s	$f18, $f6, $f10
/* 000719 0x80B9EDFC 46009187 */ neg.s	$f6, $f18
/* 000720 0x80B9EE00 46024282 */ mul.s	$f10, $f8, $f2
/* 000721 0x80B9EE04 C7B20140 */ lwc1	$f18, 0X140($sp)
/* 000722 0x80B9EE08 E7A60100 */ swc1	$f6, 0X100($sp)
/* 000723 0x80B9EE0C 46125200 */ add.s	$f8, $f10, $f18
/* 000724 0x80B9EE10 46022282 */ mul.s	$f10, $f4, $f2
/* 000725 0x80B9EE14 C7B20144 */ lwc1	$f18, 0X144($sp)
/* 000726 0x80B9EE18 46023102 */ mul.s	$f4, $f6, $f2
/* 000727 0x80B9EE1C E7A80134 */ swc1	$f8, 0X134($sp)
/* 000728 0x80B9EE20 46125200 */ add.s	$f8, $f10, $f18
/* 000729 0x80B9EE24 C7AA0148 */ lwc1	$f10, 0X148($sp)
/* 000730 0x80B9EE28 460A2480 */ add.s	$f18, $f4, $f10
/* 000731 0x80B9EE2C E7A80138 */ swc1	$f8, 0X138($sp)
/* 000732 0x80B9EE30 E7B2013C */ swc1	$f18, 0X13C($sp)
/* 000733 0x80B9EE34 AFB80010 */ sw	$t8, 0X10($sp)
/* 000734 0x80B9EE38 0C0315FE */ jal	func_800C57F8
/* 000735 0x80B9EE3C AFB90014 */ sw	$t9, 0X14($sp)
/* 000736 0x80B9EE40 14400003 */ bnez	$v0, .L80B9EE50
/* 000737 0x80B9EE44 27A40128 */ addiu	$a0, $sp, 0X128
/* 000738 0x80B9EE48 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000739 0x80B9EE4C 02C02825 */ move	$a1, $s6
.L80B9EE50:
/* 000740 0x80B9EE50 3C014396 */ lui	$at, 0x4396
/* 000741 0x80B9EE54 44810000 */ mtc1	$at, $f0
/* 000742 0x80B9EE58 3C0140A0 */ lui	$at, 0x40A0
/* 000743 0x80B9EE5C 44811000 */ mtc1	$at, $f2
/* 000744 0x80B9EE60 C7A600F8 */ lwc1	$f6, 0XF8($sp)
/* 000745 0x80B9EE64 C7A80128 */ lwc1	$f8, 0X128($sp)
/* 000746 0x80B9EE68 C7B2012C */ lwc1	$f18, 0X12C($sp)
/* 000747 0x80B9EE6C 46023102 */ mul.s	$f4, $f6, $f2
/* 000748 0x80B9EE70 C7A600FC */ lwc1	$f6, 0XFC($sp)
/* 000749 0x80B9EE74 8FA40158 */ lw	$a0, 0X158($sp)
/* 000750 0x80B9EE78 27A80128 */ addiu	$t0, $sp, 0X128
/* 000751 0x80B9EE7C 27A500D4 */ addiu	$a1, $sp, 0XD4
/* 000752 0x80B9EE80 27A60140 */ addiu	$a2, $sp, 0X140
/* 000753 0x80B9EE84 27A700C8 */ addiu	$a3, $sp, 0XC8
/* 000754 0x80B9EE88 46044280 */ add.s	$f10, $f8, $f4
/* 000755 0x80B9EE8C 46023202 */ mul.s	$f8, $f6, $f2
/* 000756 0x80B9EE90 C7A60130 */ lwc1	$f6, 0X130($sp)
/* 000757 0x80B9EE94 24840144 */ addiu	$a0, $a0, 0X144
/* 000758 0x80B9EE98 E7AA0128 */ swc1	$f10, 0X128($sp)
/* 000759 0x80B9EE9C 46089100 */ add.s	$f4, $f18, $f8
/* 000760 0x80B9EEA0 C7B20100 */ lwc1	$f18, 0X100($sp)
/* 000761 0x80B9EEA4 46029202 */ mul.s	$f8, $f18, $f2
/* 000762 0x80B9EEA8 E7A4012C */ swc1	$f4, 0X12C($sp)
/* 000763 0x80B9EEAC 46083480 */ add.s	$f18, $f6, $f8
/* 000764 0x80B9EEB0 E7B20130 */ swc1	$f18, 0X130($sp)
/* 000765 0x80B9EEB4 C6260000 */ lwc1	$f6, 0X0($s1)
/* 000766 0x80B9EEB8 46003202 */ mul.s	$f8, $f6, $f0
/* 000767 0x80B9EEBC C7A60140 */ lwc1	$f6, 0X140($sp)
/* 000768 0x80B9EEC0 46064200 */ add.s	$f8, $f8, $f6
/* 000769 0x80B9EEC4 E7A800D4 */ swc1	$f8, 0XD4($sp)
/* 000770 0x80B9EEC8 C6260004 */ lwc1	$f6, 0X4($s1)
/* 000771 0x80B9EECC 46003202 */ mul.s	$f8, $f6, $f0
/* 000772 0x80B9EED0 C7A60144 */ lwc1	$f6, 0X144($sp)
/* 000773 0x80B9EED4 46064200 */ add.s	$f8, $f8, $f6
/* 000774 0x80B9EED8 E7A800D8 */ swc1	$f8, 0XD8($sp)
/* 000775 0x80B9EEDC C6260008 */ lwc1	$f6, 0X8($s1)
/* 000776 0x80B9EEE0 46003202 */ mul.s	$f8, $f6, $f0
/* 000777 0x80B9EEE4 C7A60148 */ lwc1	$f6, 0X148($sp)
/* 000778 0x80B9EEE8 46064200 */ add.s	$f8, $f8, $f6
/* 000779 0x80B9EEEC E7A800DC */ swc1	$f8, 0XDC($sp)
/* 000780 0x80B9EEF0 C6260000 */ lwc1	$f6, 0X0($s1)
/* 000781 0x80B9EEF4 46003202 */ mul.s	$f8, $f6, $f0
/* 000782 0x80B9EEF8 460A4180 */ add.s	$f6, $f8, $f10
/* 000783 0x80B9EEFC E7A600C8 */ swc1	$f6, 0XC8($sp)
/* 000784 0x80B9EF00 C6280004 */ lwc1	$f8, 0X4($s1)
/* 000785 0x80B9EF04 46004282 */ mul.s	$f10, $f8, $f0
/* 000786 0x80B9EF08 46045180 */ add.s	$f6, $f10, $f4
/* 000787 0x80B9EF0C E7A600CC */ swc1	$f6, 0XCC($sp)
/* 000788 0x80B9EF10 C6280008 */ lwc1	$f8, 0X8($s1)
/* 000789 0x80B9EF14 AFA80010 */ sw	$t0, 0X10($sp)
/* 000790 0x80B9EF18 46004282 */ mul.s	$f10, $f8, $f0
/* 000791 0x80B9EF1C 46125100 */ add.s	$f4, $f10, $f18
/* 000792 0x80B9EF20 0C039F97 */ jal	Collision_QuadSetCoords
/* 000793 0x80B9EF24 E7A400D0 */ swc1	$f4, 0XD0($sp)
/* 000794 0x80B9EF28 8FBF007C */ lw	$ra, 0X7C($sp)
/* 000795 0x80B9EF2C D7B40028 */ ldc1	$f20, 0X28($sp)
/* 000796 0x80B9EF30 D7B60030 */ ldc1	$f22, 0X30($sp)
/* 000797 0x80B9EF34 D7B80038 */ ldc1	$f24, 0X38($sp)
/* 000798 0x80B9EF38 D7BA0040 */ ldc1	$f26, 0X40($sp)
/* 000799 0x80B9EF3C D7BC0048 */ ldc1	$f28, 0X48($sp)
/* 000800 0x80B9EF40 D7BE0050 */ ldc1	$f30, 0X50($sp)
/* 000801 0x80B9EF44 8FB00058 */ lw	$s0, 0X58($sp)
/* 000802 0x80B9EF48 8FB1005C */ lw	$s1, 0X5C($sp)
/* 000803 0x80B9EF4C 8FB20060 */ lw	$s2, 0X60($sp)
/* 000804 0x80B9EF50 8FB30064 */ lw	$s3, 0X64($sp)
/* 000805 0x80B9EF54 8FB40068 */ lw	$s4, 0X68($sp)
/* 000806 0x80B9EF58 8FB5006C */ lw	$s5, 0X6C($sp)
/* 000807 0x80B9EF5C 8FB60070 */ lw	$s6, 0X70($sp)
/* 000808 0x80B9EF60 8FB70074 */ lw	$s7, 0X74($sp)
/* 000809 0x80B9EF64 8FBE0078 */ lw	$fp, 0X78($sp)
/* 000810 0x80B9EF68 03E00008 */ jr	$ra
/* 000811 0x80B9EF6C 27BD0158 */ addiu	$sp, $sp, 0X158

