glabel func_80961F38
/* 000534 0x80961F38 27BDFFB8 */ addiu	$sp, $sp, -0X48
/* 000535 0x80961F3C AFB00020 */ sw	$s0, 0X20($sp)
/* 000536 0x80961F40 AFA5004C */ sw	$a1, 0X4C($sp)
/* 000537 0x80961F44 27A50034 */ addiu	$a1, $sp, 0X34
/* 000538 0x80961F48 00C08025 */ move	$s0, $a2
/* 000539 0x80961F4C AFBF0024 */ sw	$ra, 0X24($sp)
/* 000540 0x80961F50 AFA40048 */ sw	$a0, 0X48($sp)
/* 000541 0x80961F54 AFA70054 */ sw	$a3, 0X54($sp)
/* 000542 0x80961F58 8FAE0048 */ lw	$t6, 0X48($sp)
/* 000543 0x80961F5C 8DC21CCC */ lw	$v0, 0X1CCC($t6)
/* 000544 0x80961F60 8C58003C */ lw	$t8, 0X3C($v0)
/* 000545 0x80961F64 ACB80000 */ sw	$t8, 0X0($a1)
/* 000546 0x80961F68 8C4F0040 */ lw	$t7, 0X40($v0)
/* 000547 0x80961F6C ACAF0004 */ sw	$t7, 0X4($a1)
/* 000548 0x80961F70 8C580044 */ lw	$t8, 0X44($v0)
/* 000549 0x80961F74 ACB80008 */ sw	$t8, 0X8($a1)
/* 000550 0x80961F78 0C03FE98 */ jal	Math_Vec3f_Yaw
/* 000551 0x80961F7C 8FA4004C */ lw	$a0, 0X4C($sp)
/* 000552 0x80961F80 87B90056 */ lh	$t9, 0X56($sp)
/* 000553 0x80961F84 87A8005E */ lh	$t0, 0X5E($sp)
/* 000554 0x80961F88 27A50034 */ addiu	$a1, $sp, 0X34
/* 000555 0x80961F8C 00591823 */ subu	$v1, $v0, $t9
/* 000556 0x80961F90 00032400 */ sll	$a0, $v1, 16
/* 000557 0x80961F94 00042403 */ sra	$a0, $a0, 16
/* 000558 0x80961F98 04810003 */ bgez	$a0, .L80961FA8
/* 000559 0x80961F9C A7A30040 */ sh	$v1, 0X40($sp)
/* 000560 0x80961FA0 10000002 */ b	.L80961FAC
/* 000561 0x80961FA4 00041823 */ negu	$v1, $a0
.L80961FA8:
/* 000562 0x80961FA8 00801825 */ move	$v1, $a0
.L80961FAC:
/* 000563 0x80961FAC 0103082A */ slt	$at, $t0, $v1
/* 000564 0x80961FB0 10200010 */ beqz	$at, .L80961FF4
/* 000565 0x80961FB4 02002025 */ move	$a0, $s0
/* 000566 0x80961FB8 24090064 */ li	$t1, 0X64
/* 000567 0x80961FBC AFA90010 */ sw	$t1, 0X10($sp)
/* 000568 0x80961FC0 00002825 */ move	$a1, $zero
/* 000569 0x80961FC4 24060006 */ li	$a2, 0X6
/* 000570 0x80961FC8 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 000571 0x80961FCC 24071838 */ li	$a3, 0X1838
/* 000572 0x80961FD0 240A0064 */ li	$t2, 0X64
/* 000573 0x80961FD4 AFAA0010 */ sw	$t2, 0X10($sp)
/* 000574 0x80961FD8 26040002 */ addiu	$a0, $s0, 0X2
/* 000575 0x80961FDC 00002825 */ move	$a1, $zero
/* 000576 0x80961FE0 24060006 */ li	$a2, 0X6
/* 000577 0x80961FE4 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 000578 0x80961FE8 24071838 */ li	$a3, 0X1838
/* 000579 0x80961FEC 10000013 */ b	.L8096203C
/* 000580 0x80961FF0 86020002 */ lh	$v0, 0X2($s0)
.L80961FF4:
/* 000581 0x80961FF4 0C03FEA5 */ jal	Math_Vec3f_Pitch
/* 000582 0x80961FF8 8FA4004C */ lw	$a0, 0X4C($sp)
/* 000583 0x80961FFC 00022C00 */ sll	$a1, $v0, 16
/* 000584 0x80962000 240B0064 */ li	$t3, 0X64
/* 000585 0x80962004 AFAB0010 */ sw	$t3, 0X10($sp)
/* 000586 0x80962008 00052C03 */ sra	$a1, $a1, 16
/* 000587 0x8096200C 02002025 */ move	$a0, $s0
/* 000588 0x80962010 24060006 */ li	$a2, 0X6
/* 000589 0x80962014 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 000590 0x80962018 24071838 */ li	$a3, 0X1838
/* 000591 0x8096201C 240C0064 */ li	$t4, 0X64
/* 000592 0x80962020 AFAC0010 */ sw	$t4, 0X10($sp)
/* 000593 0x80962024 26040002 */ addiu	$a0, $s0, 0X2
/* 000594 0x80962028 87A50040 */ lh	$a1, 0X40($sp)
/* 000595 0x8096202C 24060006 */ li	$a2, 0X6
/* 000596 0x80962030 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 000597 0x80962034 24071838 */ li	$a3, 0X1838
/* 000598 0x80962038 86020002 */ lh	$v0, 0X2($s0)
.L8096203C:
/* 000599 0x8096203C 87A4005A */ lh	$a0, 0X5A($sp)
/* 000600 0x80962040 00002825 */ move	$a1, $zero
/* 000601 0x80962044 04410003 */ bgez	$v0, .L80962054
/* 000602 0x80962048 24060006 */ li	$a2, 0X6
/* 000603 0x8096204C 10000002 */ b	.L80962058
/* 000604 0x80962050 00021823 */ negu	$v1, $v0
.L80962054:
/* 000605 0x80962054 00401825 */ move	$v1, $v0
.L80962058:
/* 000606 0x80962058 0083082A */ slt	$at, $a0, $v1
/* 000607 0x8096205C 10200006 */ beqz	$at, .L80962078
/* 000608 0x80962060 240707D0 */ li	$a3, 0X7D0
/* 000609 0x80962064 18400003 */ blez	$v0, .L80962074
/* 000610 0x80962068 00046823 */ negu	$t5, $a0
/* 000611 0x8096206C 10000002 */ b	.L80962078
/* 000612 0x80962070 A6040002 */ sh	$a0, 0X2($s0)
.L80962074:
/* 000613 0x80962074 A60D0002 */ sh	$t5, 0X2($s0)
.L80962078:
/* 000614 0x80962078 240E0064 */ li	$t6, 0X64
/* 000615 0x8096207C AFAE0010 */ sw	$t6, 0X10($sp)
/* 000616 0x80962080 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 000617 0x80962084 26040004 */ addiu	$a0, $s0, 0X4
/* 000618 0x80962088 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000619 0x8096208C 8FB00020 */ lw	$s0, 0X20($sp)
/* 000620 0x80962090 27BD0048 */ addiu	$sp, $sp, 0X48
/* 000621 0x80962094 03E00008 */ jr	$ra
/* 000622 0x80962098 00000000 */ nop

