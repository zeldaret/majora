glabel func_808976DC
/* 000491 0x808976DC 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 000492 0x808976E0 AFB00028 */ sw	$s0, 0X28($sp)
/* 000493 0x808976E4 00808025 */ move	$s0, $a0
/* 000494 0x808976E8 AFBF002C */ sw	$ra, 0X2C($sp)
/* 000495 0x808976EC AFA50044 */ sw	$a1, 0X44($sp)
/* 000496 0x808976F0 260400C4 */ addiu	$a0, $s0, 0XC4
/* 000497 0x808976F4 24050000 */ li	$a1, 0X0
/* 000498 0x808976F8 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 000499 0x808976FC 3C064248 */ lui	$a2, 0x4248
/* 000500 0x80897700 260402B2 */ addiu	$a0, $s0, 0X2B2
/* 000501 0x80897704 24050FA0 */ li	$a1, 0XFA0
/* 000502 0x80897708 0C03FB9C */ jal	Lib_StepTowardsCheckFramerateScaled_s
/* 000503 0x8089770C 24060320 */ li	$a2, 0X320
/* 000504 0x80897710 5040003F */ beqzl	$v0, .L80897810
/* 000505 0x80897714 3C014000 */ lui	$at, 0x4000
/* 000506 0x80897718 860202B0 */ lh	$v0, 0X2B0($s0)
/* 000507 0x8089771C 10400011 */ beqz	$v0, .L80897764
/* 000508 0x80897720 244EFFFF */ addiu	$t6, $v0, -0X1
/* 000509 0x80897724 A60E02B0 */ sh	$t6, 0X2B0($s0)
/* 000510 0x80897728 860F02B0 */ lh	$t7, 0X2B0($s0)
/* 000511 0x8089772C 3C013F00 */ lui	$at, 0x3F00
/* 000512 0x80897730 15E0000C */ bnez	$t7, .L80897764
/* 000513 0x80897734 00000000 */ nop
/* 000514 0x80897738 C6040160 */ lwc1	$f4, 0X160($s0)
/* 000515 0x8089773C 44813000 */ mtc1	$at, $f6
/* 000516 0x80897740 3C013F80 */ lui	$at, 0x3F80
/* 000517 0x80897744 4606203C */ c.lt.s	$f4, $f6
/* 000518 0x80897748 00000000 */ nop
/* 000519 0x8089774C 45000005 */ bc1f .L80897764
/* 000520 0x80897750 00000000 */ nop
/* 000521 0x80897754 44814000 */ mtc1	$at, $f8
/* 000522 0x80897758 2418FFFF */ li	$t8, -0X1
/* 000523 0x8089775C A61802B0 */ sh	$t8, 0X2B0($s0)
/* 000524 0x80897760 E6080160 */ swc1	$f8, 0X160($s0)
.L80897764:
/* 000525 0x80897764 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 000526 0x80897768 26040144 */ addiu	$a0, $s0, 0X144
/* 000527 0x8089776C 14400005 */ bnez	$v0, .L80897784
/* 000528 0x80897770 00000000 */ nop
/* 000529 0x80897774 861902B0 */ lh	$t9, 0X2B0($s0)
/* 000530 0x80897778 3C0140D0 */ lui	$at, 0x40D0
/* 000531 0x8089777C 57200006 */ bnezl	$t9, .L80897798
/* 000532 0x80897780 C60A0028 */ lwc1	$f10, 0X28($s0)
.L80897784:
/* 000533 0x80897784 0C225FAB */ jal	func_80897EAC
/* 000534 0x80897788 02002025 */ move	$a0, $s0
/* 000535 0x8089778C 10000007 */ b	.L808977AC
/* 000536 0x80897790 C6040028 */ lwc1	$f4, 0X28($s0)
/* 000537 0x80897794 C60A0028 */ lwc1	$f10, 0X28($s0)
.L80897798:
/* 000538 0x80897798 44818000 */ mtc1	$at, $f16
/* 000539 0x8089779C 00000000 */ nop
/* 000540 0x808977A0 46105480 */ add.s	$f18, $f10, $f16
/* 000541 0x808977A4 E6120028 */ swc1	$f18, 0X28($s0)
/* 000542 0x808977A8 C6040028 */ lwc1	$f4, 0X28($s0)
.L808977AC:
/* 000543 0x808977AC C6060088 */ lwc1	$f6, 0X88($s0)
/* 000544 0x808977B0 3C0142A0 */ lui	$at, 0x42A0
/* 000545 0x808977B4 44815000 */ mtc1	$at, $f10
/* 000546 0x808977B8 46062201 */ sub.s	$f8, $f4, $f6
/* 000547 0x808977BC 27A40034 */ addiu	$a0, $sp, 0X34
/* 000548 0x808977C0 460A403C */ c.lt.s	$f8, $f10
/* 000549 0x808977C4 00000000 */ nop
/* 000550 0x808977C8 45020011 */ bc1fl .L80897810
/* 000551 0x808977CC 3C014000 */ lui	$at, 0x4000
/* 000552 0x808977D0 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000553 0x808977D4 26050024 */ addiu	$a1, $s0, 0X24
/* 000554 0x808977D8 C6100088 */ lwc1	$f16, 0X88($s0)
/* 000555 0x808977DC 24080096 */ li	$t0, 0X96
/* 000556 0x808977E0 24090064 */ li	$t1, 0X64
/* 000557 0x808977E4 240A0001 */ li	$t2, 0X1
/* 000558 0x808977E8 AFAA0018 */ sw	$t2, 0X18($sp)
/* 000559 0x808977EC AFA90014 */ sw	$t1, 0X14($sp)
/* 000560 0x808977F0 AFA80010 */ sw	$t0, 0X10($sp)
/* 000561 0x808977F4 8FA40044 */ lw	$a0, 0X44($sp)
/* 000562 0x808977F8 27A50034 */ addiu	$a1, $sp, 0X34
/* 000563 0x808977FC 3C0642B4 */ lui	$a2, 0x42B4
/* 000564 0x80897800 24070001 */ li	$a3, 0X1
/* 000565 0x80897804 0C02EFEC */ jal	func_800BBFB0
/* 000566 0x80897808 E7B00038 */ swc1	$f16, 0X38($sp)
/* 000567 0x8089780C 3C014000 */ lui	$at, 0x4000
.L80897810:
/* 000568 0x80897810 44819000 */ mtc1	$at, $f18
/* 000569 0x80897814 8FA40044 */ lw	$a0, 0X44($sp)
/* 000570 0x80897818 02002825 */ move	$a1, $s0
/* 000571 0x8089781C 26060024 */ addiu	$a2, $s0, 0X24
/* 000572 0x80897820 3C074296 */ lui	$a3, 0x4296
/* 000573 0x80897824 0C225C96 */ jal	func_80897258
/* 000574 0x80897828 E7B20010 */ swc1	$f18, 0X10($sp)
/* 000575 0x8089782C 3C053D99 */ lui	$a1, 0x3D99
/* 000576 0x80897830 3C063BA3 */ lui	$a2, 0x3BA3
/* 000577 0x80897834 34C6D70A */ ori	$a2, $a2, 0XD70A
/* 000578 0x80897838 34A5999A */ ori	$a1, $a1, 0X999A
/* 000579 0x8089783C 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 000580 0x80897840 260402C4 */ addiu	$a0, $s0, 0X2C4
/* 000581 0x80897844 860B02B4 */ lh	$t3, 0X2B4($s0)
/* 000582 0x80897848 860C02B2 */ lh	$t4, 0X2B2($s0)
/* 000583 0x8089784C 016C6821 */ addu	$t5, $t3, $t4
/* 000584 0x80897850 A60D02B4 */ sh	$t5, 0X2B4($s0)
/* 000585 0x80897854 8FBF002C */ lw	$ra, 0X2C($sp)
/* 000586 0x80897858 8FB00028 */ lw	$s0, 0X28($sp)
/* 000587 0x8089785C 03E00008 */ jr	$ra
/* 000588 0x80897860 27BD0040 */ addiu	$sp, $sp, 0X40

