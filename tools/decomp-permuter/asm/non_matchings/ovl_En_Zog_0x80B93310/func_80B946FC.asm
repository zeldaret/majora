glabel func_80B946FC
/* 001275 0x80B946FC 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 001276 0x80B94700 AFB10018 */ sw	$s1, 0X18($sp)
/* 001277 0x80B94704 AFB00014 */ sw	$s0, 0X14($sp)
/* 001278 0x80B94708 00A08025 */ move	$s0, $a1
/* 001279 0x80B9470C 00808825 */ move	$s1, $a0
/* 001280 0x80B94710 AFBF001C */ sw	$ra, 0X1C($sp)
/* 001281 0x80B94714 0C054926 */ jal	func_80152498
/* 001282 0x80B94718 26044908 */ addiu	$a0, $s0, 0X4908
/* 001283 0x80B9471C 24010004 */ li	$at, 0X4
/* 001284 0x80B94720 10410005 */ beq	$v0, $at, .L80B94738
/* 001285 0x80B94724 24010005 */ li	$at, 0X5
/* 001286 0x80B94728 10410024 */ beq	$v0, $at, .L80B947BC
/* 001287 0x80B9472C 00000000 */ nop
/* 001288 0x80B94730 10000056 */ b	.L80B9488C
/* 001289 0x80B94734 02202025 */ move	$a0, $s1
.L80B94738:
/* 001290 0x80B94738 0C051D89 */ jal	func_80147624
/* 001291 0x80B9473C 02002025 */ move	$a0, $s0
/* 001292 0x80B94740 10400051 */ beqz	$v0, .L80B94888
/* 001293 0x80B94744 3C020001 */ lui	$v0, 0x0001
/* 001294 0x80B94748 00501021 */ addu	$v0, $v0, $s0
/* 001295 0x80B9474C 90426929 */ lbu	$v0, 0X6929($v0)
/* 001296 0x80B94750 24010001 */ li	$at, 0X1
/* 001297 0x80B94754 10400005 */ beqz	$v0, .L80B9476C
/* 001298 0x80B94758 00000000 */ nop
/* 001299 0x80B9475C 10410010 */ beq	$v0, $at, .L80B947A0
/* 001300 0x80B94760 00000000 */ nop
/* 001301 0x80B94764 10000049 */ b	.L80B9488C
/* 001302 0x80B94768 02202025 */ move	$a0, $s1
.L80B9476C:
/* 001303 0x80B9476C 0C067C82 */ jal	func_8019F208
/* 001304 0x80B94770 00000000 */ nop
/* 001305 0x80B94774 3C010001 */ lui	$at, 0x0001
/* 001306 0x80B94778 00300821 */ addu	$at, $at, $s0
/* 001307 0x80B9477C 3C0E80B9 */ lui	$t6, %hi(func_80B946B4)
/* 001308 0x80B94780 AC206818 */ sw	$zero, 0X6818($at)
/* 001309 0x80B94784 25CE46B4 */ addiu	$t6, $t6, %lo(func_80B946B4)
/* 001310 0x80B94788 AE2E0328 */ sw	$t6, 0X328($s1)
/* 001311 0x80B9478C 02202025 */ move	$a0, $s1
/* 001312 0x80B94790 0C2E4EEA */ jal	func_80B93BA8
/* 001313 0x80B94794 24050001 */ li	$a1, 0X1
/* 001314 0x80B94798 1000003C */ b	.L80B9488C
/* 001315 0x80B9479C 02202025 */ move	$a0, $s1
.L80B947A0:
/* 001316 0x80B947A0 0C067C8C */ jal	func_8019F230
/* 001317 0x80B947A4 00000000 */ nop
/* 001318 0x80B947A8 02002025 */ move	$a0, $s0
/* 001319 0x80B947AC 0C05464E */ jal	func_80151938
/* 001320 0x80B947B0 24051014 */ li	$a1, 0X1014
/* 001321 0x80B947B4 10000035 */ b	.L80B9488C
/* 001322 0x80B947B8 02202025 */ move	$a0, $s1
.L80B947BC:
/* 001323 0x80B947BC 0C051D89 */ jal	func_80147624
/* 001324 0x80B947C0 02002025 */ move	$a0, $s0
/* 001325 0x80B947C4 10400030 */ beqz	$v0, .L80B94888
/* 001326 0x80B947C8 3C010001 */ lui	$at, 0x0001
/* 001327 0x80B947CC 02013021 */ addu	$a2, $s0, $at
/* 001328 0x80B947D0 94C3680C */ lhu	$v1, 0X680C($a2)
/* 001329 0x80B947D4 24011008 */ li	$at, 0X1008
/* 001330 0x80B947D8 02002025 */ move	$a0, $s0
/* 001331 0x80B947DC 1061000C */ beq	$v1, $at, .L80B94810
/* 001332 0x80B947E0 00601025 */ move	$v0, $v1
/* 001333 0x80B947E4 24011009 */ li	$at, 0X1009
/* 001334 0x80B947E8 1041000E */ beq	$v0, $at, .L80B94824
/* 001335 0x80B947EC 240F0004 */ li	$t7, 0X4
/* 001336 0x80B947F0 24011014 */ li	$at, 0X1014
/* 001337 0x80B947F4 10410013 */ beq	$v0, $at, .L80B94844
/* 001338 0x80B947F8 02002025 */ move	$a0, $s0
/* 001339 0x80B947FC 24011015 */ li	$at, 0X1015
/* 001340 0x80B94800 10410015 */ beq	$v0, $at, .L80B94858
/* 001341 0x80B94804 00000000 */ nop
/* 001342 0x80B94808 10000020 */ b	.L80B9488C
/* 001343 0x80B9480C 02202025 */ move	$a0, $s1
.L80B94810:
/* 001344 0x80B94810 24650001 */ addiu	$a1, $v1, 0X1
/* 001345 0x80B94814 0C05464E */ jal	func_80151938
/* 001346 0x80B94818 30A5FFFF */ andi	$a1, $a1, 0XFFFF
/* 001347 0x80B9481C 1000001B */ b	.L80B9488C
/* 001348 0x80B94820 02202025 */ move	$a0, $s1
.L80B94824:
/* 001349 0x80B94824 A62F0300 */ sh	$t7, 0X300($s1)
/* 001350 0x80B94828 94C5680C */ lhu	$a1, 0X680C($a2)
/* 001351 0x80B9482C 02002025 */ move	$a0, $s0
/* 001352 0x80B94830 24A50001 */ addiu	$a1, $a1, 0X1
/* 001353 0x80B94834 0C05464E */ jal	func_80151938
/* 001354 0x80B94838 30A5FFFF */ andi	$a1, $a1, 0XFFFF
/* 001355 0x80B9483C 10000013 */ b	.L80B9488C
/* 001356 0x80B94840 02202025 */ move	$a0, $s1
.L80B94844:
/* 001357 0x80B94844 24650001 */ addiu	$a1, $v1, 0X1
/* 001358 0x80B94848 0C05464E */ jal	func_80151938
/* 001359 0x80B9484C 30A5FFFF */ andi	$a1, $a1, 0XFFFF
/* 001360 0x80B94850 1000000E */ b	.L80B9488C
/* 001361 0x80B94854 02202025 */ move	$a0, $s1
.L80B94858:
/* 001362 0x80B94858 0C051DED */ jal	func_801477B4
/* 001363 0x80B9485C 02002025 */ move	$a0, $s0
/* 001364 0x80B94860 A6200302 */ sh	$zero, 0X302($s1)
/* 001365 0x80B94864 86390302 */ lh	$t9, 0X302($s1)
/* 001366 0x80B94868 3C1880B9 */ lui	$t8, %hi(func_80B948A8)
/* 001367 0x80B9486C 271848A8 */ addiu	$t8, $t8, %lo(func_80B948A8)
/* 001368 0x80B94870 24080002 */ li	$t0, 0X2
/* 001369 0x80B94874 AE380328 */ sw	$t8, 0X328($s1)
/* 001370 0x80B94878 A628031C */ sh	$t0, 0X31C($s1)
/* 001371 0x80B9487C A620031E */ sh	$zero, 0X31E($s1)
/* 001372 0x80B94880 10000004 */ b	.L80B94894
/* 001373 0x80B94884 A6390300 */ sh	$t9, 0X300($s1)
.L80B94888:
/* 001374 0x80B94888 02202025 */ move	$a0, $s1
.L80B9488C:
/* 001375 0x80B9488C 0C2E4E92 */ jal	func_80B93A48
/* 001376 0x80B94890 02002825 */ move	$a1, $s0
.L80B94894:
/* 001377 0x80B94894 8FBF001C */ lw	$ra, 0X1C($sp)
/* 001378 0x80B94898 8FB00014 */ lw	$s0, 0X14($sp)
/* 001379 0x80B9489C 8FB10018 */ lw	$s1, 0X18($sp)
/* 001380 0x80B948A0 03E00008 */ jr	$ra
/* 001381 0x80B948A4 27BD0020 */ addiu	$sp, $sp, 0X20

