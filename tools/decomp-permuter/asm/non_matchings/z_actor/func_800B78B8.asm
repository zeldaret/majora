glabel func_800B78B8
/* 018302 0x800B78B8 27BDFF68 */ addiu	$sp, $sp, -0X98
/* 018303 0x800B78BC AFB00030 */ sw	$s0, 0X30($sp)
/* 018304 0x800B78C0 00A08025 */ move	$s0, $a1
/* 018305 0x800B78C4 AFBF0034 */ sw	$ra, 0X34($sp)
/* 018306 0x800B78C8 AFA40098 */ sw	$a0, 0X98($sp)
/* 018307 0x800B78CC AFA600A0 */ sw	$a2, 0XA0($sp)
/* 018308 0x800B78D0 AFA700A4 */ sw	$a3, 0XA4($sp)
/* 018309 0x800B78D4 C6040028 */ lwc1	$f4, 0X28($s0)
/* 018310 0x800B78D8 C606010C */ lwc1	$f6, 0X10C($s0)
/* 018311 0x800B78DC 24010032 */ li	$at, 0X32
/* 018312 0x800B78E0 46062201 */ sub.s	$f8, $f4, $f6
/* 018313 0x800B78E4 E7A80094 */ swc1	$f8, 0X94($sp)
/* 018314 0x800B78E8 92070085 */ lbu	$a3, 0X85($s0)
/* 018315 0x800B78EC 50E1000A */ beql	$a3, $at, .L800B7918
/* 018316 0x800B78F0 8FB800AC */ lw	$t8, 0XAC($sp)
/* 018317 0x800B78F4 960E0090 */ lhu	$t6, 0X90($s0)
/* 018318 0x800B78F8 8FA40098 */ lw	$a0, 0X98($sp)
/* 018319 0x800B78FC 00E02825 */ move	$a1, $a3
/* 018320 0x800B7900 31CF0001 */ andi	$t7, $t6, 0X1
/* 018321 0x800B7904 11E00003 */ beqz	$t7, .L800B7914
/* 018322 0x800B7908 24840830 */ addiu	$a0, $a0, 0X830
/* 018323 0x800B790C 0C032B4B */ jal	BgCheck2_UpdateActorAttachedToMesh
/* 018324 0x800B7910 02003025 */ move	$a2, $s0
.L800B7914:
/* 018325 0x800B7914 8FB800AC */ lw	$t8, 0XAC($sp)
.L800B7918:
/* 018326 0x800B7918 33190001 */ andi	$t9, $t8, 0X1
/* 018327 0x800B791C 53200068 */ beqzl	$t9, .L800B7AC0
/* 018328 0x800B7920 C6080024 */ lwc1	$f8, 0X24($s0)
/* 018329 0x800B7924 96080090 */ lhu	$t0, 0X90($s0)
/* 018330 0x800B7928 27A50084 */ addiu	$a1, $sp, 0X84
/* 018331 0x800B792C 26060024 */ addiu	$a2, $s0, 0X24
/* 018332 0x800B7930 3109EFFF */ andi	$t1, $t0, 0XEFFF
/* 018333 0x800B7934 A6090090 */ sh	$t1, 0X90($s0)
/* 018334 0x800B7938 8FA300AC */ lw	$v1, 0XAC($sp)
/* 018335 0x800B793C 8FA40098 */ lw	$a0, 0X98($sp)
/* 018336 0x800B7940 26070108 */ addiu	$a3, $s0, 0X108
/* 018337 0x800B7944 30630080 */ andi	$v1, $v1, 0X80
/* 018338 0x800B7948 14600010 */ bnez	$v1, .L800B798C
/* 018339 0x800B794C 24840830 */ addiu	$a0, $a0, 0X830
/* 018340 0x800B7950 C7AA00A4 */ lwc1	$f10, 0XA4($sp)
/* 018341 0x800B7954 C7B000A0 */ lwc1	$f16, 0XA0($sp)
/* 018342 0x800B7958 260A007C */ addiu	$t2, $s0, 0X7C
/* 018343 0x800B795C 27AB0080 */ addiu	$t3, $sp, 0X80
/* 018344 0x800B7960 AFAB0018 */ sw	$t3, 0X18($sp)
/* 018345 0x800B7964 AFAA0014 */ sw	$t2, 0X14($sp)
/* 018346 0x800B7968 AFB0001C */ sw	$s0, 0X1C($sp)
/* 018347 0x800B796C AFA3004C */ sw	$v1, 0X4C($sp)
/* 018348 0x800B7970 AFA60048 */ sw	$a2, 0X48($sp)
/* 018349 0x800B7974 E7AA0010 */ swc1	$f10, 0X10($sp)
/* 018350 0x800B7978 0C03134F */ jal	func_800C4D3C
/* 018351 0x800B797C E7B00020 */ swc1	$f16, 0X20($sp)
/* 018352 0x800B7980 8FA3004C */ lw	$v1, 0X4C($sp)
/* 018353 0x800B7984 14400014 */ bnez	$v0, .L800B79D8
/* 018354 0x800B7988 8FA60048 */ lw	$a2, 0X48($sp)
.L800B798C:
/* 018355 0x800B798C 10600048 */ beqz	$v1, .L800B7AB0
/* 018356 0x800B7990 8FA40098 */ lw	$a0, 0X98($sp)
/* 018357 0x800B7994 C7B200A4 */ lwc1	$f18, 0XA4($sp)
/* 018358 0x800B7998 C7A400A0 */ lwc1	$f4, 0XA0($sp)
/* 018359 0x800B799C 26060024 */ addiu	$a2, $s0, 0X24
/* 018360 0x800B79A0 260C007C */ addiu	$t4, $s0, 0X7C
/* 018361 0x800B79A4 27AD0080 */ addiu	$t5, $sp, 0X80
/* 018362 0x800B79A8 AFAD0018 */ sw	$t5, 0X18($sp)
/* 018363 0x800B79AC AFAC0014 */ sw	$t4, 0X14($sp)
/* 018364 0x800B79B0 AFA60048 */ sw	$a2, 0X48($sp)
/* 018365 0x800B79B4 24840830 */ addiu	$a0, $a0, 0X830
/* 018366 0x800B79B8 27A50084 */ addiu	$a1, $sp, 0X84
/* 018367 0x800B79BC 26070108 */ addiu	$a3, $s0, 0X108
/* 018368 0x800B79C0 AFB0001C */ sw	$s0, 0X1C($sp)
/* 018369 0x800B79C4 E7B20010 */ swc1	$f18, 0X10($sp)
/* 018370 0x800B79C8 0C031369 */ jal	func_800C4DA4
/* 018371 0x800B79CC E7A40020 */ swc1	$f4, 0X20($sp)
/* 018372 0x800B79D0 10400037 */ beqz	$v0, .L800B7AB0
/* 018373 0x800B79D4 8FA60048 */ lw	$a2, 0X48($sp)
.L800B79D8:
/* 018374 0x800B79D8 960E0090 */ lhu	$t6, 0X90($s0)
/* 018375 0x800B79DC 8E03007C */ lw	$v1, 0X7C($s0)
/* 018376 0x800B79E0 35CF0008 */ ori	$t7, $t6, 0X8
/* 018377 0x800B79E4 A60F0090 */ sh	$t7, 0X90($s0)
/* 018378 0x800B79E8 8FB800AC */ lw	$t8, 0XAC($sp)
/* 018379 0x800B79EC 31E2FFFF */ andi	$v0, $t7, 0XFFFF
/* 018380 0x800B79F0 30481000 */ andi	$t0, $v0, 0X1000
/* 018381 0x800B79F4 33190200 */ andi	$t9, $t8, 0X200
/* 018382 0x800B79F8 53200019 */ beqzl	$t9, .L800B7A60
/* 018383 0x800B79FC 960B0090 */ lhu	$t3, 0X90($s0)
/* 018384 0x800B7A00 51000017 */ beqzl	$t0, .L800B7A60
/* 018385 0x800B7A04 960B0090 */ lhu	$t3, 0X90($s0)
/* 018386 0x800B7A08 8469000A */ lh	$t1, 0XA($v1)
/* 018387 0x800B7A0C 59200014 */ blezl	$t1, .L800B7A60
/* 018388 0x800B7A10 960B0090 */ lhu	$t3, 0X90($s0)
/* 018389 0x800B7A14 C60200A4 */ lwc1	$f2, 0XA4($s0)
/* 018390 0x800B7A18 C60C00A8 */ lwc1	$f12, 0XA8($s0)
/* 018391 0x800B7A1C C60E00AC */ lwc1	$f14, 0XAC($s0)
/* 018392 0x800B7A20 46021182 */ mul.s	$f6, $f2, $f2
/* 018393 0x800B7A24 3C014120 */ lui	$at, 0x4120
/* 018394 0x800B7A28 44819000 */ mtc1	$at, $f18
/* 018395 0x800B7A2C 460C6202 */ mul.s	$f8, $f12, $f12
/* 018396 0x800B7A30 304AFFF7 */ andi	$t2, $v0, 0XFFF7
/* 018397 0x800B7A34 460E7402 */ mul.s	$f16, $f14, $f14
/* 018398 0x800B7A38 46083280 */ add.s	$f10, $f6, $f8
/* 018399 0x800B7A3C 46105000 */ add.s	$f0, $f10, $f16
/* 018400 0x800B7A40 46000004 */ sqrt.s	$f0, $f0
/* 018401 0x800B7A44 4612003C */ c.lt.s	$f0, $f18
/* 018402 0x800B7A48 00000000 */ nop
/* 018403 0x800B7A4C 45020004 */ bc1fl .L800B7A60
/* 018404 0x800B7A50 960B0090 */ lhu	$t3, 0X90($s0)
/* 018405 0x800B7A54 1000000A */ b	.L800B7A80
/* 018406 0x800B7A58 A60A0090 */ sh	$t2, 0X90($s0)
/* 018407 0x800B7A5C 960B0090 */ lhu	$t3, 0X90($s0)
.L800B7A60:
/* 018408 0x800B7A60 00C02025 */ move	$a0, $a2
/* 018409 0x800B7A64 27A50084 */ addiu	$a1, $sp, 0X84
/* 018410 0x800B7A68 316C0008 */ andi	$t4, $t3, 0X8
/* 018411 0x800B7A6C 51800005 */ beqzl	$t4, .L800B7A84
/* 018412 0x800B7A70 846D000C */ lh	$t5, 0XC($v1)
/* 018413 0x800B7A74 0C03FD43 */ jal	Math_Vec3f_Copy
/* 018414 0x800B7A78 AFA3007C */ sw	$v1, 0X7C($sp)
/* 018415 0x800B7A7C 8FA3007C */ lw	$v1, 0X7C($sp)
.L800B7A80:
/* 018416 0x800B7A80 846D000C */ lh	$t5, 0XC($v1)
.L800B7A84:
/* 018417 0x800B7A84 846E0008 */ lh	$t6, 0X8($v1)
/* 018418 0x800B7A88 448D2000 */ mtc1	$t5, $f4
/* 018419 0x800B7A8C 448E3000 */ mtc1	$t6, $f6
/* 018420 0x800B7A90 46802320 */ cvt.s.w	$f12, $f4
/* 018421 0x800B7A94 0C060040 */ jal	atans_flip
/* 018422 0x800B7A98 468033A0 */ cvt.s.w	$f14, $f6
/* 018423 0x800B7A9C A6020086 */ sh	$v0, 0X86($s0)
/* 018424 0x800B7AA0 8FAF0080 */ lw	$t7, 0X80($sp)
/* 018425 0x800B7AA4 A20F0084 */ sb	$t7, 0X84($s0)
/* 018426 0x800B7AA8 10000005 */ b	.L800B7AC0
/* 018427 0x800B7AAC C6080024 */ lwc1	$f8, 0X24($s0)
.L800B7AB0:
/* 018428 0x800B7AB0 96180090 */ lhu	$t8, 0X90($s0)
/* 018429 0x800B7AB4 3319FFF7 */ andi	$t9, $t8, 0XFFF7
/* 018430 0x800B7AB8 A6190090 */ sh	$t9, 0X90($s0)
/* 018431 0x800B7ABC C6080024 */ lwc1	$f8, 0X24($s0)
.L800B7AC0:
/* 018432 0x800B7AC0 8FA800AC */ lw	$t0, 0XAC($sp)
/* 018433 0x800B7AC4 3C014080 */ lui	$at, 0x4080
/* 018434 0x800B7AC8 E7A80084 */ swc1	$f8, 0X84($sp)
/* 018435 0x800B7ACC C60A002C */ lwc1	$f10, 0X2C($s0)
/* 018436 0x800B7AD0 31090002 */ andi	$t1, $t0, 0X2
/* 018437 0x800B7AD4 11200026 */ beqz	$t1, .L800B7B70
/* 018438 0x800B7AD8 E7AA008C */ swc1	$f10, 0X8C($sp)
/* 018439 0x800B7ADC 44810000 */ mtc1	$at, $f0
/* 018440 0x800B7AE0 27A50078 */ addiu	$a1, $sp, 0X78
/* 018441 0x800B7AE4 C7A400A8 */ lwc1	$f4, 0XA8($sp)
/* 018442 0x800B7AE8 C7A60094 */ lwc1	$f6, 0X94($sp)
/* 018443 0x800B7AEC C610010C */ lwc1	$f16, 0X10C($s0)
/* 018444 0x800B7AF0 8FA40098 */ lw	$a0, 0X98($sp)
/* 018445 0x800B7AF4 46062200 */ add.s	$f8, $f4, $f6
/* 018446 0x800B7AF8 3C0A801F */ lui	$t2, %hi(D_801ED8B0)
/* 018447 0x800B7AFC 3C0B801F */ lui	$t3, %hi(D_801ED8B4)
/* 018448 0x800B7B00 46008480 */ add.s	$f18, $f16, $f0
/* 018449 0x800B7B04 256BD8B4 */ addiu	$t3, $t3, %lo(D_801ED8B4)
/* 018450 0x800B7B08 254AD8B0 */ addiu	$t2, $t2, %lo(D_801ED8B0)
/* 018451 0x800B7B0C 46004281 */ sub.s	$f10, $f8, $f0
/* 018452 0x800B7B10 E7B20088 */ swc1	$f18, 0X88($sp)
/* 018453 0x800B7B14 AFAA0010 */ sw	$t2, 0X10($sp)
/* 018454 0x800B7B18 AFAB0014 */ sw	$t3, 0X14($sp)
/* 018455 0x800B7B1C 44075000 */ mfc1	$a3, $f10
/* 018456 0x800B7B20 AFB00018 */ sw	$s0, 0X18($sp)
/* 018457 0x800B7B24 27A60084 */ addiu	$a2, $sp, 0X84
/* 018458 0x800B7B28 0C0313E1 */ jal	func_800C4F84
/* 018459 0x800B7B2C 24840830 */ addiu	$a0, $a0, 0X830
/* 018460 0x800B7B30 5040000D */ beqzl	$v0, .L800B7B68
/* 018461 0x800B7B34 960E0090 */ lhu	$t6, 0X90($s0)
/* 018462 0x800B7B38 960C0090 */ lhu	$t4, 0X90($s0)
/* 018463 0x800B7B3C 3C014080 */ lui	$at, 0x4080
/* 018464 0x800B7B40 44813000 */ mtc1	$at, $f6
/* 018465 0x800B7B44 358D0010 */ ori	$t5, $t4, 0X10
/* 018466 0x800B7B48 A60D0090 */ sh	$t5, 0X90($s0)
/* 018467 0x800B7B4C C7B20094 */ lwc1	$f18, 0X94($sp)
/* 018468 0x800B7B50 C7B00078 */ lwc1	$f16, 0X78($sp)
/* 018469 0x800B7B54 46128100 */ add.s	$f4, $f16, $f18
/* 018470 0x800B7B58 46062201 */ sub.s	$f8, $f4, $f6
/* 018471 0x800B7B5C 10000004 */ b	.L800B7B70
/* 018472 0x800B7B60 E6080028 */ swc1	$f8, 0X28($s0)
/* 018473 0x800B7B64 960E0090 */ lhu	$t6, 0X90($s0)
.L800B7B68:
/* 018474 0x800B7B68 31CFFFEF */ andi	$t7, $t6, 0XFFEF
/* 018475 0x800B7B6C A60F0090 */ sh	$t7, 0X90($s0)
.L800B7B70:
/* 018476 0x800B7B70 8FB800AC */ lw	$t8, 0XAC($sp)
/* 018477 0x800B7B74 02002825 */ move	$a1, $s0
/* 018478 0x800B7B78 27A60084 */ addiu	$a2, $sp, 0X84
/* 018479 0x800B7B7C 33190004 */ andi	$t9, $t8, 0X4
/* 018480 0x800B7B80 53200050 */ beqzl	$t9, .L800B7CC4
/* 018481 0x800B7B84 8FAD00AC */ lw	$t5, 0XAC($sp)
/* 018482 0x800B7B88 8FA40098 */ lw	$a0, 0X98($sp)
/* 018483 0x800B7B8C C60A010C */ lwc1	$f10, 0X10C($s0)
/* 018484 0x800B7B90 03003825 */ move	$a3, $t8
/* 018485 0x800B7B94 24890830 */ addiu	$t1, $a0, 0X830
/* 018486 0x800B7B98 AFA9004C */ sw	$t1, 0X4C($sp)
/* 018487 0x800B7B9C 0C02DD9E */ jal	func_800B7678
/* 018488 0x800B7BA0 E7AA0088 */ swc1	$f10, 0X88($sp)
/* 018489 0x800B7BA4 C6100028 */ lwc1	$f16, 0X28($s0)
/* 018490 0x800B7BA8 27AA0070 */ addiu	$t2, $sp, 0X70
/* 018491 0x800B7BAC 27AB0074 */ addiu	$t3, $sp, 0X74
/* 018492 0x800B7BB0 E7B00070 */ swc1	$f16, 0X70($sp)
/* 018493 0x800B7BB4 8E07002C */ lw	$a3, 0X2C($s0)
/* 018494 0x800B7BB8 8E060024 */ lw	$a2, 0X24($s0)
/* 018495 0x800B7BBC AFAB0014 */ sw	$t3, 0X14($sp)
/* 018496 0x800B7BC0 AFAA0010 */ sw	$t2, 0X10($sp)
/* 018497 0x800B7BC4 8FA40098 */ lw	$a0, 0X98($sp)
/* 018498 0x800B7BC8 0C03286B */ jal	func_800CA1AC
/* 018499 0x800B7BCC 8FA5004C */ lw	$a1, 0X4C($sp)
/* 018500 0x800B7BD0 10400035 */ beqz	$v0, .L800B7CA8
/* 018501 0x800B7BD4 C7B20070 */ lwc1	$f18, 0X70($sp)
/* 018502 0x800B7BD8 C6040028 */ lwc1	$f4, 0X28($s0)
/* 018503 0x800B7BDC 44804000 */ mtc1	$zero, $f8
/* 018504 0x800B7BE0 46049181 */ sub.s	$f6, $f18, $f4
/* 018505 0x800B7BE4 E606008C */ swc1	$f6, 0X8C($s0)
/* 018506 0x800B7BE8 C60A008C */ lwc1	$f10, 0X8C($s0)
/* 018507 0x800B7BEC 4608503E */ c.le.s	$f10, $f8
/* 018508 0x800B7BF0 00000000 */ nop
/* 018509 0x800B7BF4 45020006 */ bc1fl .L800B7C10
/* 018510 0x800B7BF8 96020090 */ lhu	$v0, 0X90($s0)
/* 018511 0x800B7BFC 960C0090 */ lhu	$t4, 0X90($s0)
/* 018512 0x800B7C00 318DFF9F */ andi	$t5, $t4, 0XFF9F
/* 018513 0x800B7C04 1000002E */ b	.L800B7CC0
/* 018514 0x800B7C08 A60D0090 */ sh	$t5, 0X90($s0)
/* 018515 0x800B7C0C 96020090 */ lhu	$v0, 0X90($s0)
.L800B7C10:
/* 018516 0x800B7C10 304E0020 */ andi	$t6, $v0, 0X20
/* 018517 0x800B7C14 15C00022 */ bnez	$t6, .L800B7CA0
/* 018518 0x800B7C18 304AFFBF */ andi	$t2, $v0, 0XFFBF
/* 018519 0x800B7C1C 344F0060 */ ori	$t7, $v0, 0X60
/* 018520 0x800B7C20 A60F0090 */ sh	$t7, 0X90($s0)
/* 018521 0x800B7C24 8FB900AC */ lw	$t9, 0XAC($sp)
/* 018522 0x800B7C28 27A50064 */ addiu	$a1, $sp, 0X64
/* 018523 0x800B7C2C 24060064 */ li	$a2, 0X64
/* 018524 0x800B7C30 33380040 */ andi	$t8, $t9, 0X40
/* 018525 0x800B7C34 17000022 */ bnez	$t8, .L800B7CC0
/* 018526 0x800B7C38 240701F4 */ li	$a3, 0X1F4
/* 018527 0x800B7C3C C6100024 */ lwc1	$f16, 0X24($s0)
/* 018528 0x800B7C40 C7B20070 */ lwc1	$f18, 0X70($sp)
/* 018529 0x800B7C44 8FA40098 */ lw	$a0, 0X98($sp)
/* 018530 0x800B7C48 E7B00064 */ swc1	$f16, 0X64($sp)
/* 018531 0x800B7C4C E7B20068 */ swc1	$f18, 0X68($sp)
/* 018532 0x800B7C50 C604002C */ lwc1	$f4, 0X2C($s0)
/* 018533 0x800B7C54 AFA00010 */ sw	$zero, 0X10($sp)
/* 018534 0x800B7C58 0C02C7BD */ jal	EffectSS_SpawnGRipple
/* 018535 0x800B7C5C E7A4006C */ swc1	$f4, 0X6C($sp)
/* 018536 0x800B7C60 24080004 */ li	$t0, 0X4
/* 018537 0x800B7C64 AFA80010 */ sw	$t0, 0X10($sp)
/* 018538 0x800B7C68 8FA40098 */ lw	$a0, 0X98($sp)
/* 018539 0x800B7C6C 27A50064 */ addiu	$a1, $sp, 0X64
/* 018540 0x800B7C70 24060064 */ li	$a2, 0X64
/* 018541 0x800B7C74 0C02C7BD */ jal	EffectSS_SpawnGRipple
/* 018542 0x800B7C78 240701F4 */ li	$a3, 0X1F4
/* 018543 0x800B7C7C 24090008 */ li	$t1, 0X8
/* 018544 0x800B7C80 AFA90010 */ sw	$t1, 0X10($sp)
/* 018545 0x800B7C84 8FA40098 */ lw	$a0, 0X98($sp)
/* 018546 0x800B7C88 27A50064 */ addiu	$a1, $sp, 0X64
/* 018547 0x800B7C8C 24060064 */ li	$a2, 0X64
/* 018548 0x800B7C90 0C02C7BD */ jal	EffectSS_SpawnGRipple
/* 018549 0x800B7C94 240701F4 */ li	$a3, 0X1F4
/* 018550 0x800B7C98 1000000A */ b	.L800B7CC4
/* 018551 0x800B7C9C 8FAD00AC */ lw	$t5, 0XAC($sp)
.L800B7CA0:
/* 018552 0x800B7CA0 10000007 */ b	.L800B7CC0
/* 018553 0x800B7CA4 A60A0090 */ sh	$t2, 0X90($s0)
.L800B7CA8:
/* 018554 0x800B7CA8 960B0090 */ lhu	$t3, 0X90($s0)
/* 018555 0x800B7CAC 3C01C6FA */ lui	$at, 0xC6FA
/* 018556 0x800B7CB0 44813000 */ mtc1	$at, $f6
/* 018557 0x800B7CB4 316CFF9F */ andi	$t4, $t3, 0XFF9F
/* 018558 0x800B7CB8 A60C0090 */ sh	$t4, 0X90($s0)
/* 018559 0x800B7CBC E606008C */ swc1	$f6, 0X8C($s0)
.L800B7CC0:
/* 018560 0x800B7CC0 8FAD00AC */ lw	$t5, 0XAC($sp)
.L800B7CC4:
/* 018561 0x800B7CC4 27B9005C */ addiu	$t9, $sp, 0X5C
/* 018562 0x800B7CC8 31AE0400 */ andi	$t6, $t5, 0X400
/* 018563 0x800B7CCC 51C00049 */ beqzl	$t6, .L800B7DF4
/* 018564 0x800B7CD0 8FBF0034 */ lw	$ra, 0X34($sp)
/* 018565 0x800B7CD4 C6080028 */ lwc1	$f8, 0X28($s0)
/* 018566 0x800B7CD8 8FA40098 */ lw	$a0, 0X98($sp)
/* 018567 0x800B7CDC 27B80060 */ addiu	$t8, $sp, 0X60
/* 018568 0x800B7CE0 E7A8005C */ swc1	$f8, 0X5C($sp)
/* 018569 0x800B7CE4 8E07002C */ lw	$a3, 0X2C($s0)
/* 018570 0x800B7CE8 8E060024 */ lw	$a2, 0X24($s0)
/* 018571 0x800B7CEC AFB80014 */ sw	$t8, 0X14($sp)
/* 018572 0x800B7CF0 AFB90010 */ sw	$t9, 0X10($sp)
/* 018573 0x800B7CF4 0C03286B */ jal	func_800CA1AC
/* 018574 0x800B7CF8 24850830 */ addiu	$a1, $a0, 0X830
/* 018575 0x800B7CFC 10400036 */ beqz	$v0, .L800B7DD8
/* 018576 0x800B7D00 C7AA005C */ lwc1	$f10, 0X5C($sp)
/* 018577 0x800B7D04 C6100028 */ lwc1	$f16, 0X28($s0)
/* 018578 0x800B7D08 44803000 */ mtc1	$zero, $f6
/* 018579 0x800B7D0C 46105481 */ sub.s	$f18, $f10, $f16
/* 018580 0x800B7D10 E612008C */ swc1	$f18, 0X8C($s0)
/* 018581 0x800B7D14 C604008C */ lwc1	$f4, 0X8C($s0)
/* 018582 0x800B7D18 4606203C */ c.lt.s	$f4, $f6
/* 018583 0x800B7D1C 00000000 */ nop
/* 018584 0x800B7D20 45020006 */ bc1fl .L800B7D3C
/* 018585 0x800B7D24 96020090 */ lhu	$v0, 0X90($s0)
/* 018586 0x800B7D28 96080090 */ lhu	$t0, 0X90($s0)
/* 018587 0x800B7D2C 3109FF9F */ andi	$t1, $t0, 0XFF9F
/* 018588 0x800B7D30 1000002F */ b	.L800B7DF0
/* 018589 0x800B7D34 A6090090 */ sh	$t1, 0X90($s0)
/* 018590 0x800B7D38 96020090 */ lhu	$v0, 0X90($s0)
.L800B7D3C:
/* 018591 0x800B7D3C 304A0020 */ andi	$t2, $v0, 0X20
/* 018592 0x800B7D40 15400023 */ bnez	$t2, .L800B7DD0
/* 018593 0x800B7D44 3059FFBF */ andi	$t9, $v0, 0XFFBF
/* 018594 0x800B7D48 344B0060 */ ori	$t3, $v0, 0X60
/* 018595 0x800B7D4C A60B0090 */ sh	$t3, 0X90($s0)
/* 018596 0x800B7D50 8FAC00AC */ lw	$t4, 0XAC($sp)
/* 018597 0x800B7D54 27A50050 */ addiu	$a1, $sp, 0X50
/* 018598 0x800B7D58 24060064 */ li	$a2, 0X64
/* 018599 0x800B7D5C 318D0040 */ andi	$t5, $t4, 0X40
/* 018600 0x800B7D60 15A00023 */ bnez	$t5, .L800B7DF0
/* 018601 0x800B7D64 240701F4 */ li	$a3, 0X1F4
/* 018602 0x800B7D68 C6080024 */ lwc1	$f8, 0X24($s0)
/* 018603 0x800B7D6C C7AA005C */ lwc1	$f10, 0X5C($sp)
/* 018604 0x800B7D70 8FA40098 */ lw	$a0, 0X98($sp)
/* 018605 0x800B7D74 E7A80050 */ swc1	$f8, 0X50($sp)
/* 018606 0x800B7D78 E7AA0054 */ swc1	$f10, 0X54($sp)
/* 018607 0x800B7D7C C610002C */ lwc1	$f16, 0X2C($s0)
/* 018608 0x800B7D80 AFA00010 */ sw	$zero, 0X10($sp)
/* 018609 0x800B7D84 0C02C7BD */ jal	EffectSS_SpawnGRipple
/* 018610 0x800B7D88 E7B00058 */ swc1	$f16, 0X58($sp)
/* 018611 0x800B7D8C 27B00050 */ addiu	$s0, $sp, 0X50
/* 018612 0x800B7D90 240E0004 */ li	$t6, 0X4
/* 018613 0x800B7D94 AFAE0010 */ sw	$t6, 0X10($sp)
/* 018614 0x800B7D98 02002825 */ move	$a1, $s0
/* 018615 0x800B7D9C 8FA40098 */ lw	$a0, 0X98($sp)
/* 018616 0x800B7DA0 24060064 */ li	$a2, 0X64
/* 018617 0x800B7DA4 0C02C7BD */ jal	EffectSS_SpawnGRipple
/* 018618 0x800B7DA8 240701F4 */ li	$a3, 0X1F4
/* 018619 0x800B7DAC 240F0008 */ li	$t7, 0X8
/* 018620 0x800B7DB0 AFAF0010 */ sw	$t7, 0X10($sp)
/* 018621 0x800B7DB4 8FA40098 */ lw	$a0, 0X98($sp)
/* 018622 0x800B7DB8 02002825 */ move	$a1, $s0
/* 018623 0x800B7DBC 24060064 */ li	$a2, 0X64
/* 018624 0x800B7DC0 0C02C7BD */ jal	EffectSS_SpawnGRipple
/* 018625 0x800B7DC4 240701F4 */ li	$a3, 0X1F4
/* 018626 0x800B7DC8 1000000A */ b	.L800B7DF4
/* 018627 0x800B7DCC 8FBF0034 */ lw	$ra, 0X34($sp)
.L800B7DD0:
/* 018628 0x800B7DD0 10000007 */ b	.L800B7DF0
/* 018629 0x800B7DD4 A6190090 */ sh	$t9, 0X90($s0)
.L800B7DD8:
/* 018630 0x800B7DD8 96180090 */ lhu	$t8, 0X90($s0)
/* 018631 0x800B7DDC 3C01C6FA */ lui	$at, 0xC6FA
/* 018632 0x800B7DE0 44819000 */ mtc1	$at, $f18
/* 018633 0x800B7DE4 3308FF9F */ andi	$t0, $t8, 0XFF9F
/* 018634 0x800B7DE8 A6080090 */ sh	$t0, 0X90($s0)
/* 018635 0x800B7DEC E612008C */ swc1	$f18, 0X8C($s0)
.L800B7DF0:
/* 018636 0x800B7DF0 8FBF0034 */ lw	$ra, 0X34($sp)
.L800B7DF4:
/* 018637 0x800B7DF4 8FB00030 */ lw	$s0, 0X30($sp)
/* 018638 0x800B7DF8 27BD0098 */ addiu	$sp, $sp, 0X98
/* 018639 0x800B7DFC 03E00008 */ jr	$ra
/* 018640 0x800B7E00 00000000 */ nop

