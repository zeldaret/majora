glabel Collision_DoATWithAC
/* 066277 0x800E6654 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 066278 0x800E6658 AFB20020 */ sw	$s2, 0X20($sp)
/* 066279 0x800E665C AFB1001C */ sw	$s1, 0X1C($sp)
/* 066280 0x800E6660 00A08825 */ move	$s1, $a1
/* 066281 0x800E6664 00809025 */ move	$s2, $a0
/* 066282 0x800E6668 AFBF0024 */ sw	$ra, 0X24($sp)
/* 066283 0x800E666C AFB00018 */ sw	$s0, 0X18($sp)
/* 066284 0x800E6670 86260000 */ lh	$a2, 0X0($s1)
/* 066285 0x800E6674 50C00026 */ beqzl	$a2, .L800E6710
/* 066286 0x800E6678 8FBF0024 */ lw	$ra, 0X24($sp)
/* 066287 0x800E667C 8E2E00CC */ lw	$t6, 0XCC($s1)
/* 066288 0x800E6680 00067880 */ sll	$t7, $a2, 2
/* 066289 0x800E6684 022F1821 */ addu	$v1, $s1, $t7
/* 066290 0x800E6688 11C00020 */ beqz	$t6, .L800E670C
/* 066291 0x800E668C 26300004 */ addiu	$s0, $s1, 0X4
/* 066292 0x800E6690 24630004 */ addiu	$v1, $v1, 0X4
/* 066293 0x800E6694 0203082B */ sltu	$at, $s0, $v1
/* 066294 0x800E6698 5020001A */ beqzl	$at, .L800E6704
/* 066295 0x800E669C 02402025 */ move	$a0, $s2
/* 066296 0x800E66A0 8E060000 */ lw	$a2, 0X0($s0)
.L800E66A4:
/* 066297 0x800E66A4 50C00013 */ beqzl	$a2, .L800E66F4
/* 066298 0x800E66A8 26100004 */ addiu	$s0, $s0, 0X4
/* 066299 0x800E66AC 90D80010 */ lbu	$t8, 0X10($a2)
/* 066300 0x800E66B0 33190001 */ andi	$t9, $t8, 0X1
/* 066301 0x800E66B4 5320000F */ beqzl	$t9, .L800E66F4
/* 066302 0x800E66B8 26100004 */ addiu	$s0, $s0, 0X4
/* 066303 0x800E66BC 8CC20000 */ lw	$v0, 0X0($a2)
/* 066304 0x800E66C0 02402025 */ move	$a0, $s2
/* 066305 0x800E66C4 10400004 */ beqz	$v0, .L800E66D8
/* 066306 0x800E66C8 00000000 */ nop
/* 066307 0x800E66CC 8C480138 */ lw	$t0, 0X138($v0)
/* 066308 0x800E66D0 51000008 */ beqzl	$t0, .L800E66F4
/* 066309 0x800E66D4 26100004 */ addiu	$s0, $s0, 0X4
.L800E66D8:
/* 066310 0x800E66D8 0C039949 */ jal	Collision_CollideWithAC
/* 066311 0x800E66DC 02202825 */ move	$a1, $s1
/* 066312 0x800E66E0 86290000 */ lh	$t1, 0X0($s1)
/* 066313 0x800E66E4 00095080 */ sll	$t2, $t1, 2
/* 066314 0x800E66E8 022A1821 */ addu	$v1, $s1, $t2
/* 066315 0x800E66EC 24630004 */ addiu	$v1, $v1, 0X4
/* 066316 0x800E66F0 26100004 */ addiu	$s0, $s0, 0X4
.L800E66F4:
/* 066317 0x800E66F4 0203082B */ sltu	$at, $s0, $v1
/* 066318 0x800E66F8 5420FFEA */ bnezl	$at, .L800E66A4
/* 066319 0x800E66FC 8E060000 */ lw	$a2, 0X0($s0)
/* 066320 0x800E6700 02402025 */ move	$a0, $s2
.L800E6704:
/* 066321 0x800E6704 0C039914 */ jal	func_800E6450
/* 066322 0x800E6708 02202825 */ move	$a1, $s1
.L800E670C:
/* 066323 0x800E670C 8FBF0024 */ lw	$ra, 0X24($sp)
.L800E6710:
/* 066324 0x800E6710 8FB00018 */ lw	$s0, 0X18($sp)
/* 066325 0x800E6714 8FB1001C */ lw	$s1, 0X1C($sp)
/* 066326 0x800E6718 8FB20020 */ lw	$s2, 0X20($sp)
/* 066327 0x800E671C 03E00008 */ jr	$ra
/* 066328 0x800E6720 27BD0028 */ addiu	$sp, $sp, 0X28

