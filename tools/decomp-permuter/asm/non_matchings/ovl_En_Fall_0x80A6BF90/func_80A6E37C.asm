glabel func_80A6E37C
/* 002299 0x80A6E37C 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 002300 0x80A6E380 AFB10018 */ sw	$s1, 0X18($sp)
/* 002301 0x80A6E384 00A08825 */ move	$s1, $a1
/* 002302 0x80A6E388 AFBF001C */ sw	$ra, 0X1C($sp)
/* 002303 0x80A6E38C AFB00014 */ sw	$s0, 0X14($sp)
/* 002304 0x80A6E390 AFA40038 */ sw	$a0, 0X38($sp)
/* 002305 0x80A6E394 3C040600 */ lui	$a0, 0x0600
/* 002306 0x80A6E398 8E300000 */ lw	$s0, 0X0($s1)
/* 002307 0x80A6E39C 0C040141 */ jal	Lib_PtrSegToVirt
/* 002308 0x80A6E3A0 24841220 */ addiu	$a0, $a0, 0X1220
/* 002309 0x80A6E3A4 02202025 */ move	$a0, $s1
/* 002310 0x80A6E3A8 0C04C5D6 */ jal	SceneProc_DrawAllSceneAnimatedTextures
/* 002311 0x80A6E3AC 00402825 */ move	$a1, $v0
/* 002312 0x80A6E3B0 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 002313 0x80A6E3B4 3C0FDA38 */ lui	$t7, 0xDA38
/* 002314 0x80A6E3B8 35EF0003 */ ori	$t7, $t7, 0X3
/* 002315 0x80A6E3BC 244E0008 */ addiu	$t6, $v0, 0X8
/* 002316 0x80A6E3C0 AE0E02B0 */ sw	$t6, 0X2B0($s0)
/* 002317 0x80A6E3C4 AC4F0000 */ sw	$t7, 0X0($v0)
/* 002318 0x80A6E3C8 8E240000 */ lw	$a0, 0X0($s1)
/* 002319 0x80A6E3CC 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 002320 0x80A6E3D0 AFA20028 */ sw	$v0, 0X28($sp)
/* 002321 0x80A6E3D4 8FA30028 */ lw	$v1, 0X28($sp)
/* 002322 0x80A6E3D8 AC620004 */ sw	$v0, 0X4($v1)
/* 002323 0x80A6E3DC 0C04B0A3 */ jal	func_8012C28C
/* 002324 0x80A6E3E0 8E240000 */ lw	$a0, 0X0($s1)
/* 002325 0x80A6E3E4 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 002326 0x80A6E3E8 3C080600 */ lui	$t0, 0x0600
/* 002327 0x80A6E3EC 25080400 */ addiu	$t0, $t0, 0X400
/* 002328 0x80A6E3F0 24580008 */ addiu	$t8, $v0, 0X8
/* 002329 0x80A6E3F4 AE1802B0 */ sw	$t8, 0X2B0($s0)
/* 002330 0x80A6E3F8 3C19DE00 */ lui	$t9, 0xDE00
/* 002331 0x80A6E3FC AC590000 */ sw	$t9, 0X0($v0)
/* 002332 0x80A6E400 AC480004 */ sw	$t0, 0X4($v0)
/* 002333 0x80A6E404 3C014040 */ lui	$at, 0x4040
/* 002334 0x80A6E408 44816000 */ mtc1	$at, $f12
/* 002335 0x80A6E40C 3C0640C0 */ lui	$a2, 0x40C0
/* 002336 0x80A6E410 24070001 */ li	$a3, 0X1
/* 002337 0x80A6E414 0C0600E7 */ jal	SysMatrix_InsertScale
/* 002338 0x80A6E418 46006386 */ mov.s	$f14, $f12
/* 002339 0x80A6E41C 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 002340 0x80A6E420 3C0ADA38 */ lui	$t2, 0xDA38
/* 002341 0x80A6E424 354A0003 */ ori	$t2, $t2, 0X3
/* 002342 0x80A6E428 24490008 */ addiu	$t1, $v0, 0X8
/* 002343 0x80A6E42C AE0902C0 */ sw	$t1, 0X2C0($s0)
/* 002344 0x80A6E430 AC4A0000 */ sw	$t2, 0X0($v0)
/* 002345 0x80A6E434 8E240000 */ lw	$a0, 0X0($s1)
/* 002346 0x80A6E438 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 002347 0x80A6E43C AFA20020 */ sw	$v0, 0X20($sp)
/* 002348 0x80A6E440 8FA30020 */ lw	$v1, 0X20($sp)
/* 002349 0x80A6E444 AC620004 */ sw	$v0, 0X4($v1)
/* 002350 0x80A6E448 0C04B0B7 */ jal	func_8012C2DC
/* 002351 0x80A6E44C 8E240000 */ lw	$a0, 0X0($s1)
/* 002352 0x80A6E450 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 002353 0x80A6E454 3C0D0600 */ lui	$t5, 0x0600
/* 002354 0x80A6E458 25AD04C8 */ addiu	$t5, $t5, 0X4C8
/* 002355 0x80A6E45C 244B0008 */ addiu	$t3, $v0, 0X8
/* 002356 0x80A6E460 AE0B02C0 */ sw	$t3, 0X2C0($s0)
/* 002357 0x80A6E464 3C0CDE00 */ lui	$t4, 0xDE00
/* 002358 0x80A6E468 AC4C0000 */ sw	$t4, 0X0($v0)
/* 002359 0x80A6E46C AC4D0004 */ sw	$t5, 0X4($v0)
/* 002360 0x80A6E470 8FBF001C */ lw	$ra, 0X1C($sp)
/* 002361 0x80A6E474 8FB00014 */ lw	$s0, 0X14($sp)
/* 002362 0x80A6E478 8FB10018 */ lw	$s1, 0X18($sp)
/* 002363 0x80A6E47C 03E00008 */ jr	$ra
/* 002364 0x80A6E480 27BD0038 */ addiu	$sp, $sp, 0X38
/* 002365 0x80A6E484 00000000 */ nop
/* 002366 0x80A6E488 00000000 */ nop
/* 002367 0x80A6E48C 00000000 */ nop
