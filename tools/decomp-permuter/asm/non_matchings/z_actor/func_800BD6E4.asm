glabel func_800BD6E4
/* 024329 0x800BD6E4 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 024330 0x800BD6E8 AFA60038 */ sw	$a2, 0X38($sp)
/* 024331 0x800BD6EC 00A03025 */ move	$a2, $a1
/* 024332 0x800BD6F0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 024333 0x800BD6F4 AFA40030 */ sw	$a0, 0X30($sp)
/* 024334 0x800BD6F8 AFA50034 */ sw	$a1, 0X34($sp)
/* 024335 0x800BD6FC AFA7003C */ sw	$a3, 0X3C($sp)
/* 024336 0x800BD700 87AE0042 */ lh	$t6, 0X42($sp)
/* 024337 0x800BD704 51C00004 */ beqzl	$t6, .L800BD718
/* 024338 0x800BD708 84CF0000 */ lh	$t7, 0X0($a2)
/* 024339 0x800BD70C 1000005A */ b	.L800BD878
/* 024340 0x800BD710 01C01025 */ move	$v0, $t6
/* 024341 0x800BD714 84CF0000 */ lh	$t7, 0X0($a2)
.L800BD718:
/* 024342 0x800BD718 8FA40030 */ lw	$a0, 0X30($sp)
/* 024343 0x800BD71C 24C50018 */ addiu	$a1, $a2, 0X18
/* 024344 0x800BD720 11E00003 */ beqz	$t7, .L800BD730
/* 024345 0x800BD724 24840024 */ addiu	$a0, $a0, 0X24
/* 024346 0x800BD728 10000053 */ b	.L800BD878
/* 024347 0x800BD72C 24020004 */ li	$v0, 0X4
.L800BD730:
/* 024348 0x800BD730 AFA40020 */ sw	$a0, 0X20($sp)
/* 024349 0x800BD734 AFA5001C */ sw	$a1, 0X1C($sp)
/* 024350 0x800BD738 0C03FE21 */ jal	Math_Vec3f_DistXYZ
/* 024351 0x800BD73C AFA60034 */ sw	$a2, 0X34($sp)
/* 024352 0x800BD740 C7A40038 */ lwc1	$f4, 0X38($sp)
/* 024353 0x800BD744 8FA40020 */ lw	$a0, 0X20($sp)
/* 024354 0x800BD748 8FA5001C */ lw	$a1, 0X1C($sp)
/* 024355 0x800BD74C 4600203C */ c.lt.s	$f4, $f0
/* 024356 0x800BD750 8FA60034 */ lw	$a2, 0X34($sp)
/* 024357 0x800BD754 24020001 */ li	$v0, 0X1
/* 024358 0x800BD758 45000004 */ bc1f .L800BD76C
/* 024359 0x800BD75C 00000000 */ nop
/* 024360 0x800BD760 A4C00004 */ sh	$zero, 0X4($a2)
/* 024361 0x800BD764 10000044 */ b	.L800BD878
/* 024362 0x800BD768 A4C00006 */ sh	$zero, 0X6($a2)
.L800BD76C:
/* 024363 0x800BD76C 0C03FE98 */ jal	Math_Vec3f_Yaw
/* 024364 0x800BD770 AFA60034 */ sw	$a2, 0X34($sp)
/* 024365 0x800BD774 8FB80030 */ lw	$t8, 0X30($sp)
/* 024366 0x800BD778 8FA60034 */ lw	$a2, 0X34($sp)
/* 024367 0x800BD77C 87AE003E */ lh	$t6, 0X3E($sp)
/* 024368 0x800BD780 870300BE */ lh	$v1, 0XBE($t8)
/* 024369 0x800BD784 0043C823 */ subu	$t9, $v0, $v1
/* 024370 0x800BD788 00194400 */ sll	$t0, $t9, 16
/* 024371 0x800BD78C 00084C03 */ sra	$t1, $t0, 16
/* 024372 0x800BD790 05210008 */ bgez	$t1, .L800BD7B4
/* 024373 0x800BD794 00432023 */ subu	$a0, $v0, $v1
/* 024374 0x800BD798 00432023 */ subu	$a0, $v0, $v1
/* 024375 0x800BD79C 00042400 */ sll	$a0, $a0, 16
/* 024376 0x800BD7A0 00042403 */ sra	$a0, $a0, 16
/* 024377 0x800BD7A4 00042023 */ negu	$a0, $a0
/* 024378 0x800BD7A8 00042400 */ sll	$a0, $a0, 16
/* 024379 0x800BD7AC 10000003 */ b	.L800BD7BC
/* 024380 0x800BD7B0 00042403 */ sra	$a0, $a0, 16
.L800BD7B4:
/* 024381 0x800BD7B4 00042400 */ sll	$a0, $a0, 16
/* 024382 0x800BD7B8 00042403 */ sra	$a0, $a0, 16
.L800BD7BC:
/* 024383 0x800BD7BC 01C4082A */ slt	$at, $t6, $a0
/* 024384 0x800BD7C0 14200004 */ bnez	$at, .L800BD7D4
/* 024385 0x800BD7C4 24020002 */ li	$v0, 0X2
/* 024386 0x800BD7C8 A4C00004 */ sh	$zero, 0X4($a2)
/* 024387 0x800BD7CC 1000002A */ b	.L800BD878
/* 024388 0x800BD7D0 A4C00006 */ sh	$zero, 0X6($a2)
.L800BD7D4:
/* 024389 0x800BD7D4 84C30004 */ lh	$v1, 0X4($a2)
/* 024390 0x800BD7D8 14600003 */ bnez	$v1, .L800BD7E8
/* 024391 0x800BD7DC 246FFFFF */ addiu	$t7, $v1, -0X1
/* 024392 0x800BD7E0 10000003 */ b	.L800BD7F0
/* 024393 0x800BD7E4 00001025 */ move	$v0, $zero
.L800BD7E8:
/* 024394 0x800BD7E8 A4CF0004 */ sh	$t7, 0X4($a2)
/* 024395 0x800BD7EC 84C20004 */ lh	$v0, 0X4($a2)
.L800BD7F0:
/* 024396 0x800BD7F0 50400004 */ beqzl	$v0, .L800BD804
/* 024397 0x800BD7F4 84C20006 */ lh	$v0, 0X6($a2)
/* 024398 0x800BD7F8 1000001F */ b	.L800BD878
/* 024399 0x800BD7FC 84C20002 */ lh	$v0, 0X2($a2)
/* 024400 0x800BD800 84C20006 */ lh	$v0, 0X6($a2)
.L800BD804:
/* 024401 0x800BD804 24010001 */ li	$at, 0X1
/* 024402 0x800BD808 2404001E */ li	$a0, 0X1E
/* 024403 0x800BD80C 10400005 */ beqz	$v0, .L800BD824
/* 024404 0x800BD810 2405001E */ li	$a1, 0X1E
/* 024405 0x800BD814 1041000C */ beq	$v0, $at, .L800BD848
/* 024406 0x800BD818 24010002 */ li	$at, 0X2
/* 024407 0x800BD81C 54410016 */ bnel	$v0, $at, .L800BD878
/* 024408 0x800BD820 24020004 */ li	$v0, 0X4
.L800BD824:
/* 024409 0x800BD824 0C03FD14 */ jal	Math_Rand_S16Offset
/* 024410 0x800BD828 AFA60034 */ sw	$a2, 0X34($sp)
/* 024411 0x800BD82C 8FA60034 */ lw	$a2, 0X34($sp)
/* 024412 0x800BD830 84D80006 */ lh	$t8, 0X6($a2)
/* 024413 0x800BD834 A4C20004 */ sh	$v0, 0X4($a2)
/* 024414 0x800BD838 24020001 */ li	$v0, 0X1
/* 024415 0x800BD83C 27190001 */ addiu	$t9, $t8, 0X1
/* 024416 0x800BD840 1000000D */ b	.L800BD878
/* 024417 0x800BD844 A4D90006 */ sh	$t9, 0X6($a2)
.L800BD848:
/* 024418 0x800BD848 2404000A */ li	$a0, 0XA
/* 024419 0x800BD84C 2405000A */ li	$a1, 0XA
/* 024420 0x800BD850 0C03FD14 */ jal	Math_Rand_S16Offset
/* 024421 0x800BD854 AFA60034 */ sw	$a2, 0X34($sp)
/* 024422 0x800BD858 8FA60034 */ lw	$a2, 0X34($sp)
/* 024423 0x800BD85C 84C80006 */ lh	$t0, 0X6($a2)
/* 024424 0x800BD860 A4C20004 */ sh	$v0, 0X4($a2)
/* 024425 0x800BD864 24020003 */ li	$v0, 0X3
/* 024426 0x800BD868 25090001 */ addiu	$t1, $t0, 0X1
/* 024427 0x800BD86C 10000002 */ b	.L800BD878
/* 024428 0x800BD870 A4C90006 */ sh	$t1, 0X6($a2)
/* 024429 0x800BD874 24020004 */ li	$v0, 0X4
.L800BD878:
/* 024430 0x800BD878 8FBF0014 */ lw	$ra, 0X14($sp)
/* 024431 0x800BD87C 27BD0030 */ addiu	$sp, $sp, 0X30
/* 024432 0x800BD880 03E00008 */ jr	$ra
/* 024433 0x800BD884 00000000 */ nop

