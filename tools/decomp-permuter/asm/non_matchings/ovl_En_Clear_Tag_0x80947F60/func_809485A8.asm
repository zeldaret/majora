glabel func_809485A8
/* 000402 0x809485A8 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000403 0x809485AC AFBF001C */ sw	$ra, 0X1C($sp)
/* 000404 0x809485B0 AFB00018 */ sw	$s0, 0X18($sp)
/* 000405 0x809485B4 24900144 */ addiu	$s0, $a0, 0X144
/* 000406 0x809485B8 00001025 */ move	$v0, $zero
.L809485BC:
/* 000407 0x809485BC 920E0000 */ lbu	$t6, 0X0($s0)
/* 000408 0x809485C0 15C00066 */ bnez	$t6, .L8094875C
/* 000409 0x809485C4 240F0005 */ li	$t7, 0X5
/* 000410 0x809485C8 A20F0000 */ sb	$t7, 0X0($s0)
/* 000411 0x809485CC 8CB90000 */ lw	$t9, 0X0($a1)
/* 000412 0x809485D0 3C01447A */ lui	$at, 0x447A
/* 000413 0x809485D4 44813000 */ mtc1	$at, $f6
/* 000414 0x809485D8 AE190004 */ sw	$t9, 0X4($s0)
/* 000415 0x809485DC 8CB80004 */ lw	$t8, 0X4($a1)
/* 000416 0x809485E0 3C013F80 */ lui	$at, 0x3F80
/* 000417 0x809485E4 44815000 */ mtc1	$at, $f10
/* 000418 0x809485E8 AE180008 */ sw	$t8, 0X8($s0)
/* 000419 0x809485EC 8CB90008 */ lw	$t9, 0X8($a1)
/* 000420 0x809485F0 3C0142C8 */ lui	$at, 0x42C8
/* 000421 0x809485F4 44816000 */ mtc1	$at, $f12
/* 000422 0x809485F8 AE19000C */ sw	$t9, 0XC($s0)
/* 000423 0x809485FC 8CC90000 */ lw	$t1, 0X0($a2)
/* 000424 0x80948600 AE090010 */ sw	$t1, 0X10($s0)
/* 000425 0x80948604 8CC80004 */ lw	$t0, 0X4($a2)
/* 000426 0x80948608 AE080014 */ sw	$t0, 0X14($s0)
/* 000427 0x8094860C 8CC90008 */ lw	$t1, 0X8($a2)
/* 000428 0x80948610 AE090018 */ sw	$t1, 0X18($s0)
/* 000429 0x80948614 8CEB0000 */ lw	$t3, 0X0($a3)
/* 000430 0x80948618 AE0B001C */ sw	$t3, 0X1C($s0)
/* 000431 0x8094861C 8CEA0004 */ lw	$t2, 0X4($a3)
/* 000432 0x80948620 AE0A0020 */ sw	$t2, 0X20($s0)
/* 000433 0x80948624 8CEB0008 */ lw	$t3, 0X8($a3)
/* 000434 0x80948628 AE0B0024 */ sw	$t3, 0X24($s0)
/* 000435 0x8094862C C7A40030 */ lwc1	$f4, 0X30($sp)
/* 000436 0x80948630 E60A0054 */ swc1	$f10, 0X54($s0)
/* 000437 0x80948634 46062203 */ div.s	$f8, $f4, $f6
/* 000438 0x80948638 E6080050 */ swc1	$f8, 0X50($s0)
/* 000439 0x8094863C C7B20034 */ lwc1	$f18, 0X34($sp)
/* 000440 0x80948640 0C05E565 */ jal	randZeroOneScaled
/* 000441 0x80948644 E6120064 */ swc1	$f18, 0X64($s0)
/* 000442 0x80948648 3C014348 */ lui	$at, 0x4348
/* 000443 0x8094864C 44812000 */ mtc1	$at, $f4
/* 000444 0x80948650 3C014120 */ lui	$at, 0x4120
/* 000445 0x80948654 44816000 */ mtc1	$at, $f12
/* 000446 0x80948658 46040180 */ add.s	$f6, $f0, $f4
/* 000447 0x8094865C 4600320D */ trunc.w.s	$f8, $f6
/* 000448 0x80948660 440D4000 */ mfc1	$t5, $f8
/* 000449 0x80948664 00000000 */ nop
/* 000450 0x80948668 A60D004C */ sh	$t5, 0X4C($s0)
/* 000451 0x8094866C 87AE003A */ lh	$t6, 0X3A($sp)
/* 000452 0x80948670 0C05E565 */ jal	randZeroOneScaled
/* 000453 0x80948674 A60E004E */ sh	$t6, 0X4E($s0)
/* 000454 0x80948678 444FF800 */ cfc1	$t7, $31
/* 000455 0x8094867C 24180001 */ li	$t8, 0X1
/* 000456 0x80948680 44D8F800 */ ctc1	$t8, $31
/* 000457 0x80948684 3C014F00 */ lui	$at, 0x4F00
/* 000458 0x80948688 460002A4 */ cvt.w.s	$f10, $f0
/* 000459 0x8094868C 4458F800 */ cfc1	$t8, $31
/* 000460 0x80948690 00000000 */ nop
/* 000461 0x80948694 33180078 */ andi	$t8, $t8, 0X78
/* 000462 0x80948698 53000013 */ beqzl	$t8, .L809486E8
/* 000463 0x8094869C 44185000 */ mfc1	$t8, $f10
/* 000464 0x809486A0 44815000 */ mtc1	$at, $f10
/* 000465 0x809486A4 24180001 */ li	$t8, 0X1
/* 000466 0x809486A8 460A0281 */ sub.s	$f10, $f0, $f10
/* 000467 0x809486AC 44D8F800 */ ctc1	$t8, $31
/* 000468 0x809486B0 00000000 */ nop
/* 000469 0x809486B4 460052A4 */ cvt.w.s	$f10, $f10
/* 000470 0x809486B8 4458F800 */ cfc1	$t8, $31
/* 000471 0x809486BC 00000000 */ nop
/* 000472 0x809486C0 33180078 */ andi	$t8, $t8, 0X78
/* 000473 0x809486C4 17000005 */ bnez	$t8, .L809486DC
/* 000474 0x809486C8 00000000 */ nop
/* 000475 0x809486CC 44185000 */ mfc1	$t8, $f10
/* 000476 0x809486D0 3C018000 */ lui	$at, 0x8000
/* 000477 0x809486D4 10000007 */ b	.L809486F4
/* 000478 0x809486D8 0301C025 */ or	$t8, $t8, $at
.L809486DC:
/* 000479 0x809486DC 10000005 */ b	.L809486F4
/* 000480 0x809486E0 2418FFFF */ li	$t8, -0X1
/* 000481 0x809486E4 44185000 */ mfc1	$t8, $f10
.L809486E8:
/* 000482 0x809486E8 00000000 */ nop
/* 000483 0x809486EC 0700FFFB */ bltz	$t8, .L809486DC
/* 000484 0x809486F0 00000000 */ nop
.L809486F4:
/* 000485 0x809486F4 44CFF800 */ ctc1	$t7, $31
/* 000486 0x809486F8 A2180001 */ sb	$t8, 0X1($s0)
/* 000487 0x809486FC C60C0018 */ lwc1	$f12, 0X18($s0)
/* 000488 0x80948700 0C06004B */ jal	atan_flip
/* 000489 0x80948704 C60E0010 */ lwc1	$f14, 0X10($s0)
/* 000490 0x80948708 C6100010 */ lwc1	$f16, 0X10($s0)
/* 000491 0x8094870C C6020018 */ lwc1	$f2, 0X18($s0)
/* 000492 0x80948710 E6000058 */ swc1	$f0, 0X58($s0)
/* 000493 0x80948714 46108482 */ mul.s	$f18, $f16, $f16
/* 000494 0x80948718 C60E0014 */ lwc1	$f14, 0X14($s0)
/* 000495 0x8094871C 46021102 */ mul.s	$f4, $f2, $f2
/* 000496 0x80948720 46049000 */ add.s	$f0, $f18, $f4
/* 000497 0x80948724 0C06004B */ jal	atan_flip
/* 000498 0x80948728 46000304 */ sqrt.s	$f12, $f0
/* 000499 0x8094872C 3C01437F */ lui	$at, 0x437F
/* 000500 0x80948730 44811000 */ mtc1	$at, $f2
/* 000501 0x80948734 44804000 */ mtc1	$zero, $f8
/* 000502 0x80948738 46000187 */ neg.s	$f6, $f0
/* 000503 0x8094873C E6020038 */ swc1	$f2, 0X38($s0)
/* 000504 0x80948740 E606005C */ swc1	$f6, 0X5C($s0)
/* 000505 0x80948744 E602003C */ swc1	$f2, 0X3C($s0)
/* 000506 0x80948748 E6020028 */ swc1	$f2, 0X28($s0)
/* 000507 0x8094874C E602002C */ swc1	$f2, 0X2C($s0)
/* 000508 0x80948750 E6020030 */ swc1	$f2, 0X30($s0)
/* 000509 0x80948754 10000007 */ b	.L80948774
/* 000510 0x80948758 E6080040 */ swc1	$f8, 0X40($s0)
.L8094875C:
/* 000511 0x8094875C 24420001 */ addiu	$v0, $v0, 0X1
/* 000512 0x80948760 00021400 */ sll	$v0, $v0, 16
/* 000513 0x80948764 00021403 */ sra	$v0, $v0, 16
/* 000514 0x80948768 28410066 */ slti	$at, $v0, 0X66
/* 000515 0x8094876C 1420FF93 */ bnez	$at, .L809485BC
/* 000516 0x80948770 26100070 */ addiu	$s0, $s0, 0X70
.L80948774:
/* 000517 0x80948774 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000518 0x80948778 8FB00018 */ lw	$s0, 0X18($sp)
/* 000519 0x8094877C 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000520 0x80948780 03E00008 */ jr	$ra
/* 000521 0x80948784 00000000 */ nop

