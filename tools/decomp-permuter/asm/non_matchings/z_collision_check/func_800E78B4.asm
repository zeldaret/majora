glabel func_800E78B4
/* 067453 0x800E78B4 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 067454 0x800E78B8 AFB50028 */ sw	$s5, 0X28($sp)
/* 067455 0x800E78BC AFB40024 */ sw	$s4, 0X24($sp)
/* 067456 0x800E78C0 AFB2001C */ sw	$s2, 0X1C($sp)
/* 067457 0x800E78C4 00C09025 */ move	$s2, $a2
/* 067458 0x800E78C8 0080A025 */ move	$s4, $a0
/* 067459 0x800E78CC 00A0A825 */ move	$s5, $a1
/* 067460 0x800E78D0 AFBF002C */ sw	$ra, 0X2C($sp)
/* 067461 0x800E78D4 AFB30020 */ sw	$s3, 0X20($sp)
/* 067462 0x800E78D8 AFB10018 */ sw	$s1, 0X18($sp)
/* 067463 0x800E78DC AFB00014 */ sw	$s0, 0X14($sp)
/* 067464 0x800E78E0 8E4E0018 */ lw	$t6, 0X18($s2)
/* 067465 0x800E78E4 02409825 */ move	$s3, $s2
/* 067466 0x800E78E8 00008025 */ move	$s0, $zero
/* 067467 0x800E78EC 19C0000D */ blez	$t6, .L800E7924
/* 067468 0x800E78F0 00008825 */ move	$s1, $zero
/* 067469 0x800E78F4 8E4F001C */ lw	$t7, 0X1C($s2)
.L800E78F8:
/* 067470 0x800E78F8 02802025 */ move	$a0, $s4
/* 067471 0x800E78FC 02A02825 */ move	$a1, $s5
/* 067472 0x800E7900 02403025 */ move	$a2, $s2
/* 067473 0x800E7904 0C039D72 */ jal	func_800E75C8
/* 067474 0x800E7908 01F13821 */ addu	$a3, $t7, $s1
/* 067475 0x800E790C 8E780018 */ lw	$t8, 0X18($s3)
/* 067476 0x800E7910 26100001 */ addiu	$s0, $s0, 0X1
/* 067477 0x800E7914 2631005C */ addiu	$s1, $s1, 0X5C
/* 067478 0x800E7918 0218082A */ slt	$at, $s0, $t8
/* 067479 0x800E791C 5420FFF6 */ bnezl	$at, .L800E78F8
/* 067480 0x800E7920 8E4F001C */ lw	$t7, 0X1C($s2)
.L800E7924:
/* 067481 0x800E7924 8FBF002C */ lw	$ra, 0X2C($sp)
/* 067482 0x800E7928 8FB00014 */ lw	$s0, 0X14($sp)
/* 067483 0x800E792C 8FB10018 */ lw	$s1, 0X18($sp)
/* 067484 0x800E7930 8FB2001C */ lw	$s2, 0X1C($sp)
/* 067485 0x800E7934 8FB30020 */ lw	$s3, 0X20($sp)
/* 067486 0x800E7938 8FB40024 */ lw	$s4, 0X24($sp)
/* 067487 0x800E793C 8FB50028 */ lw	$s5, 0X28($sp)
/* 067488 0x800E7940 03E00008 */ jr	$ra
/* 067489 0x800E7944 27BD0030 */ addiu	$sp, $sp, 0X30

