glabel func_808C9340
/* 004336 0x808C9340 27BDFF80 */ addiu	$sp, $sp, -0X80
/* 004337 0x808C9344 AFB00020 */ sw	$s0, 0X20($sp)
/* 004338 0x808C9348 00808025 */ move	$s0, $a0
/* 004339 0x808C934C AFBF002C */ sw	$ra, 0X2C($sp)
/* 004340 0x808C9350 AFB20028 */ sw	$s2, 0X28($sp)
/* 004341 0x808C9354 AFB10024 */ sw	$s1, 0X24($sp)
/* 004342 0x808C9358 AFA50084 */ sw	$a1, 0X84($sp)
/* 004343 0x808C935C AFA60088 */ sw	$a2, 0X88($sp)
/* 004344 0x808C9360 AFA7008C */ sw	$a3, 0X8C($sp)
/* 004345 0x808C9364 8FAE0084 */ lw	$t6, 0X84($sp)
/* 004346 0x808C9368 24010015 */ li	$at, 0X15
/* 004347 0x808C936C 8FB20090 */ lw	$s2, 0X90($sp)
/* 004348 0x808C9370 15C1005C */ bne	$t6, $at, .L808C94E4
/* 004349 0x808C9374 8FA90084 */ lw	$t1, 0X84($sp)
/* 004350 0x808C9378 0C0606D4 */ jal	SysMatrix_GetStateTranslation
/* 004351 0x808C937C 2644032C */ addiu	$a0, $s2, 0X32C
/* 004352 0x808C9380 924F0798 */ lbu	$t7, 0X798($s2)
/* 004353 0x808C9384 31F80001 */ andi	$t8, $t7, 0X1
/* 004354 0x808C9388 53000037 */ beqzl	$t8, .L808C9468
/* 004355 0x808C938C 924D018C */ lbu	$t5, 0X18C($s2)
/* 004356 0x808C9390 865902EE */ lh	$t9, 0X2EE($s2)
/* 004357 0x808C9394 864802EC */ lh	$t0, 0X2EC($s2)
/* 004358 0x808C9398 27A4006C */ addiu	$a0, $sp, 0X6C
/* 004359 0x808C939C 53280032 */ beql	$t9, $t0, .L808C9468
/* 004360 0x808C93A0 924D018C */ lbu	$t5, 0X18C($s2)
/* 004361 0x808C93A4 0C03FD43 */ jal	Math_Vec3f_Copy
/* 004362 0x808C93A8 264507C8 */ addiu	$a1, $s2, 0X7C8
/* 004363 0x808C93AC 27A40060 */ addiu	$a0, $sp, 0X60
/* 004364 0x808C93B0 0C03FD43 */ jal	Math_Vec3f_Copy
/* 004365 0x808C93B4 264507D4 */ addiu	$a1, $s2, 0X7D4
/* 004366 0x808C93B8 8E4A0188 */ lw	$t2, 0X188($s2)
/* 004367 0x808C93BC 3C09808C */ lui	$t1, %hi(func_808C682C)
/* 004368 0x808C93C0 2529682C */ addiu	$t1, $t1, %lo(func_808C682C)
/* 004369 0x808C93C4 152A000D */ bne	$t1, $t2, .L808C93FC
/* 004370 0x808C93C8 27B10048 */ addiu	$s1, $sp, 0X48
/* 004371 0x808C93CC 27B00054 */ addiu	$s0, $sp, 0X54
/* 004372 0x808C93D0 3C01808D */ lui	$at, %hi(D_808C9BFC)
/* 004373 0x808C93D4 C42C9BFC */ lwc1	$f12, %lo(D_808C9BFC)($at)
/* 004374 0x808C93D8 0C0606DE */ jal	SysMatrix_GetStateTranslationAndScaledX
/* 004375 0x808C93DC 02002825 */ move	$a1, $s0
/* 004376 0x808C93E0 27B10048 */ addiu	$s1, $sp, 0X48
/* 004377 0x808C93E4 3C04808D */ lui	$a0, %hi(D_808C9AF4)
/* 004378 0x808C93E8 24849AF4 */ addiu	$a0, $a0, %lo(D_808C9AF4)
/* 004379 0x808C93EC 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 004380 0x808C93F0 02202825 */ move	$a1, $s1
/* 004381 0x808C93F4 1000000B */ b	.L808C9424
/* 004382 0x808C93F8 27AB0060 */ addiu	$t3, $sp, 0X60
.L808C93FC:
/* 004383 0x808C93FC 3C01808D */ lui	$at, %hi(D_808C9C00)
/* 004384 0x808C9400 C42C9C00 */ lwc1	$f12, %lo(D_808C9C00)($at)
/* 004385 0x808C9404 0C0606F1 */ jal	SysMatrix_GetStateTranslationAndScaledY
/* 004386 0x808C9408 02202825 */ move	$a1, $s1
/* 004387 0x808C940C 27B00054 */ addiu	$s0, $sp, 0X54
/* 004388 0x808C9410 3C04808D */ lui	$a0, %hi(D_808C9B00)
/* 004389 0x808C9414 24849B00 */ addiu	$a0, $a0, %lo(D_808C9B00)
/* 004390 0x808C9418 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 004391 0x808C941C 02002825 */ move	$a1, $s0
/* 004392 0x808C9420 27AB0060 */ addiu	$t3, $sp, 0X60
.L808C9424:
/* 004393 0x808C9424 AFAB0010 */ sw	$t3, 0X10($sp)
/* 004394 0x808C9428 26440788 */ addiu	$a0, $s2, 0X788
/* 004395 0x808C942C 02202825 */ move	$a1, $s1
/* 004396 0x808C9430 02003025 */ move	$a2, $s0
/* 004397 0x808C9434 0C039F97 */ jal	Collision_QuadSetCoords
/* 004398 0x808C9438 27A7006C */ addiu	$a3, $sp, 0X6C
/* 004399 0x808C943C 0C02BDC8 */ jal	Effect_GetParams
/* 004400 0x808C9440 8E440300 */ lw	$a0, 0X300($s2)
/* 004401 0x808C9444 00402025 */ move	$a0, $v0
/* 004402 0x808C9448 02002825 */ move	$a1, $s0
/* 004403 0x808C944C 0C02A07C */ jal	func_800A81F0
/* 004404 0x808C9450 02203025 */ move	$a2, $s1
/* 004405 0x808C9454 864C02EE */ lh	$t4, 0X2EE($s2)
/* 004406 0x808C9458 A64C02EC */ sh	$t4, 0X2EC($s2)
/* 004407 0x808C945C 10000063 */ b	.L808C95EC
/* 004408 0x808C9460 8FB90084 */ lw	$t9, 0X84($sp)
/* 004409 0x808C9464 924D018C */ lbu	$t5, 0X18C($s2)
.L808C9468:
/* 004410 0x808C9468 51A00060 */ beqzl	$t5, .L808C95EC
/* 004411 0x808C946C 8FB90084 */ lw	$t9, 0X84($sp)
/* 004412 0x808C9470 8E4F0188 */ lw	$t7, 0X188($s2)
/* 004413 0x808C9474 3C0E808C */ lui	$t6, %hi(func_808C682C)
/* 004414 0x808C9478 25CE682C */ addiu	$t6, $t6, %lo(func_808C682C)
/* 004415 0x808C947C 15CF000B */ bne	$t6, $t7, .L808C94AC
/* 004416 0x808C9480 3C01808D */ lui	$at, %hi(D_808C9C08)
/* 004417 0x808C9484 3C01808D */ lui	$at, %hi(D_808C9C04)
/* 004418 0x808C9488 C42C9C04 */ lwc1	$f12, %lo(D_808C9C04)($at)
/* 004419 0x808C948C 0C0606DE */ jal	SysMatrix_GetStateTranslationAndScaledX
/* 004420 0x808C9490 264507D4 */ addiu	$a1, $s2, 0X7D4
/* 004421 0x808C9494 3C04808D */ lui	$a0, %hi(D_808C9AF4)
/* 004422 0x808C9498 24849AF4 */ addiu	$a0, $a0, %lo(D_808C9AF4)
/* 004423 0x808C949C 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 004424 0x808C94A0 264507C8 */ addiu	$a1, $s2, 0X7C8
/* 004425 0x808C94A4 10000009 */ b	.L808C94CC
/* 004426 0x808C94A8 92580798 */ lbu	$t8, 0X798($s2)
.L808C94AC:
/* 004427 0x808C94AC C42C9C08 */ lwc1	$f12, %lo(D_808C9C08)($at)
/* 004428 0x808C94B0 0C0606F1 */ jal	SysMatrix_GetStateTranslationAndScaledY
/* 004429 0x808C94B4 264507C8 */ addiu	$a1, $s2, 0X7C8
/* 004430 0x808C94B8 3C04808D */ lui	$a0, %hi(D_808C9B00)
/* 004431 0x808C94BC 24849B00 */ addiu	$a0, $a0, %lo(D_808C9B00)
/* 004432 0x808C94C0 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 004433 0x808C94C4 264507D4 */ addiu	$a1, $s2, 0X7D4
/* 004434 0x808C94C8 92580798 */ lbu	$t8, 0X798($s2)
.L808C94CC:
/* 004435 0x808C94CC 864802EE */ lh	$t0, 0X2EE($s2)
/* 004436 0x808C94D0 A240018C */ sb	$zero, 0X18C($s2)
/* 004437 0x808C94D4 37190001 */ ori	$t9, $t8, 0X1
/* 004438 0x808C94D8 A2590798 */ sb	$t9, 0X798($s2)
/* 004439 0x808C94DC 10000042 */ b	.L808C95E8
/* 004440 0x808C94E0 A64802EC */ sh	$t0, 0X2EC($s2)
.L808C94E4:
/* 004441 0x808C94E4 24010002 */ li	$at, 0X2
/* 004442 0x808C94E8 15210026 */ bne	$t1, $at, .L808C9584
/* 004443 0x808C94EC 8FB20090 */ lw	$s2, 0X90($sp)
/* 004444 0x808C94F0 8E4B0188 */ lw	$t3, 0X188($s2)
/* 004445 0x808C94F4 3C0A808C */ lui	$t2, %hi(func_808C7AAC)
/* 004446 0x808C94F8 254A7AAC */ addiu	$t2, $t2, %lo(func_808C7AAC)
/* 004447 0x808C94FC 514B0022 */ beql	$t2, $t3, .L808C9588
/* 004448 0x808C9500 8FAB0084 */ lw	$t3, 0X84($sp)
/* 004449 0x808C9504 0C060067 */ jal	SysMatrix_StatePush
/* 004450 0x808C9508 00000000 */ nop
/* 004451 0x808C950C 02402025 */ move	$a0, $s2
/* 004452 0x808C9510 0C232458 */ jal	func_808C9160
/* 004453 0x808C9514 02002825 */ move	$a1, $s0
/* 004454 0x808C9518 0C060073 */ jal	SysMatrix_StatePop
/* 004455 0x808C951C 00000000 */ nop
/* 004456 0x808C9520 0C0606D4 */ jal	SysMatrix_GetStateTranslation
/* 004457 0x808C9524 2644003C */ addiu	$a0, $s2, 0X3C
/* 004458 0x808C9528 C644003C */ lwc1	$f4, 0X3C($s2)
/* 004459 0x808C952C C6400040 */ lwc1	$f0, 0X40($s2)
/* 004460 0x808C9530 C64A0044 */ lwc1	$f10, 0X44($s2)
/* 004461 0x808C9534 4600218D */ trunc.w.s	$f6, $f4
/* 004462 0x808C9538 8648001C */ lh	$t0, 0X1C($s2)
/* 004463 0x808C953C 4600020D */ trunc.w.s	$f8, $f0
/* 004464 0x808C9540 440D3000 */ mfc1	$t5, $f6
/* 004465 0x808C9544 29010005 */ slti	$at, $t0, 0X5
/* 004466 0x808C9548 4600540D */ trunc.w.s	$f16, $f10
/* 004467 0x808C954C 440F4000 */ mfc1	$t7, $f8
/* 004468 0x808C9550 A64D0850 */ sh	$t5, 0X850($s2)
/* 004469 0x808C9554 44198000 */ mfc1	$t9, $f16
/* 004470 0x808C9558 A64F0852 */ sh	$t7, 0X852($s2)
/* 004471 0x808C955C 10200022 */ beqz	$at, .L808C95E8
/* 004472 0x808C9560 A6590854 */ sh	$t9, 0X854($s2)
/* 004473 0x808C9564 3C0140A0 */ lui	$at, 0x40A0
/* 004474 0x808C9568 44819000 */ mtc1	$at, $f18
/* 004475 0x808C956C 00000000 */ nop
/* 004476 0x808C9570 46120100 */ add.s	$f4, $f0, $f18
/* 004477 0x808C9574 4600218D */ trunc.w.s	$f6, $f4
/* 004478 0x808C9578 440A3000 */ mfc1	$t2, $f6
/* 004479 0x808C957C 1000001A */ b	.L808C95E8
/* 004480 0x808C9580 A64A0852 */ sh	$t2, 0X852($s2)
.L808C9584:
/* 004481 0x808C9584 8FAB0084 */ lw	$t3, 0X84($sp)
.L808C9588:
/* 004482 0x808C9588 24010014 */ li	$at, 0X14
/* 004483 0x808C958C 8FB20090 */ lw	$s2, 0X90($sp)
/* 004484 0x808C9590 55610016 */ bnel	$t3, $at, .L808C95EC
/* 004485 0x808C9594 8FB90084 */ lw	$t9, 0X84($sp)
/* 004486 0x808C9598 8E420188 */ lw	$v0, 0X188($s2)
/* 004487 0x808C959C 3C0C808C */ lui	$t4, %hi(func_808C6AB0)
/* 004488 0x808C95A0 258C6AB0 */ addiu	$t4, $t4, %lo(func_808C6AB0)
/* 004489 0x808C95A4 1182000E */ beq	$t4, $v0, .L808C95E0
/* 004490 0x808C95A8 3C0D808C */ lui	$t5, %hi(func_808C692C)
/* 004491 0x808C95AC 25AD692C */ addiu	$t5, $t5, %lo(func_808C692C)
/* 004492 0x808C95B0 11A2000B */ beq	$t5, $v0, .L808C95E0
/* 004493 0x808C95B4 3C0E808C */ lui	$t6, %hi(func_808C6070)
/* 004494 0x808C95B8 25CE6070 */ addiu	$t6, $t6, %lo(func_808C6070)
/* 004495 0x808C95BC 11C20008 */ beq	$t6, $v0, .L808C95E0
/* 004496 0x808C95C0 3C0F808C */ lui	$t7, %hi(func_808C6F6C)
/* 004497 0x808C95C4 25EF6F6C */ addiu	$t7, $t7, %lo(func_808C6F6C)
/* 004498 0x808C95C8 55E20008 */ bnel	$t7, $v0, .L808C95EC
/* 004499 0x808C95CC 8FB90084 */ lw	$t9, 0X84($sp)
/* 004500 0x808C95D0 9258018E */ lbu	$t8, 0X18E($s2)
/* 004501 0x808C95D4 24010001 */ li	$at, 0X1
/* 004502 0x808C95D8 57010004 */ bnel	$t8, $at, .L808C95EC
/* 004503 0x808C95DC 8FB90084 */ lw	$t9, 0X84($sp)
.L808C95E0:
/* 004504 0x808C95E0 0C06007A */ jal	SysMatrix_CopyCurrentState
/* 004505 0x808C95E4 264406A4 */ addiu	$a0, $s2, 0X6A4
.L808C95E8:
/* 004506 0x808C95E8 8FB90084 */ lw	$t9, 0X84($sp)
.L808C95EC:
/* 004507 0x808C95EC 3C03808D */ lui	$v1, %hi(D_808C9B48)
/* 004508 0x808C95F0 2401FFFF */ li	$at, -0X1
/* 004509 0x808C95F4 00791821 */ addu	$v1, $v1, $t9
/* 004510 0x808C95F8 80639B48 */ lb	$v1, %lo(D_808C9B48)($v1)
/* 004511 0x808C95FC 1061002C */ beq	$v1, $at, .L808C96B0
/* 004512 0x808C9600 28610007 */ slti	$at, $v1, 0X7
/* 004513 0x808C9604 10200008 */ beqz	$at, .L808C9628
/* 004514 0x808C9608 2405000C */ li	$a1, 0XC
/* 004515 0x808C960C 00650019 */ multu	$v1, $a1
/* 004516 0x808C9610 00004012 */ mflo	$t0
/* 004517 0x808C9614 02482021 */ addu	$a0, $s2, $t0
/* 004518 0x808C9618 0C0606D4 */ jal	SysMatrix_GetStateTranslation
/* 004519 0x808C961C 2484035C */ addiu	$a0, $a0, 0X35C
/* 004520 0x808C9620 10000024 */ b	.L808C96B4
/* 004521 0x808C9624 8FBF002C */ lw	$ra, 0X2C($sp)
.L808C9628:
/* 004522 0x808C9628 24010007 */ li	$at, 0X7
/* 004523 0x808C962C 14610015 */ bne	$v1, $at, .L808C9684
/* 004524 0x808C9630 2405000C */ li	$a1, 0XC
/* 004525 0x808C9634 2405000C */ li	$a1, 0XC
/* 004526 0x808C9638 00650019 */ multu	$v1, $a1
/* 004527 0x808C963C 3C11808D */ lui	$s1, %hi(D_808C9B0C)
/* 004528 0x808C9640 26319B0C */ addiu	$s1, $s1, %lo(D_808C9B0C)
/* 004529 0x808C9644 00001025 */ move	$v0, $zero
/* 004530 0x808C9648 00004812 */ mflo	$t1
/* 004531 0x808C964C 02498021 */ addu	$s0, $s2, $t1
/* 004532 0x808C9650 2610035C */ addiu	$s0, $s0, 0X35C
.L808C9654:
/* 004533 0x808C9654 02202025 */ move	$a0, $s1
/* 004534 0x808C9658 02002825 */ move	$a1, $s0
/* 004535 0x808C965C 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 004536 0x808C9660 AFA20044 */ sw	$v0, 0X44($sp)
/* 004537 0x808C9664 8FA20044 */ lw	$v0, 0X44($sp)
/* 004538 0x808C9668 24010005 */ li	$at, 0X5
/* 004539 0x808C966C 2631000C */ addiu	$s1, $s1, 0XC
/* 004540 0x808C9670 24420001 */ addiu	$v0, $v0, 0X1
/* 004541 0x808C9674 1441FFF7 */ bne	$v0, $at, .L808C9654
/* 004542 0x808C9678 2610000C */ addiu	$s0, $s0, 0XC
/* 004543 0x808C967C 1000000D */ b	.L808C96B4
/* 004544 0x808C9680 8FBF002C */ lw	$ra, 0X2C($sp)
.L808C9684:
/* 004545 0x808C9684 5465000B */ bnel	$v1, $a1, .L808C96B4
/* 004546 0x808C9688 8FBF002C */ lw	$ra, 0X2C($sp)
/* 004547 0x808C968C 00650019 */ multu	$v1, $a1
/* 004548 0x808C9690 00005012 */ mflo	$t2
/* 004549 0x808C9694 024A8021 */ addu	$s0, $s2, $t2
/* 004550 0x808C9698 0C0606D4 */ jal	SysMatrix_GetStateTranslation
/* 004551 0x808C969C 2604035C */ addiu	$a0, $s0, 0X35C
/* 004552 0x808C96A0 3C01C4FA */ lui	$at, 0xC4FA
/* 004553 0x808C96A4 44816000 */ mtc1	$at, $f12
/* 004554 0x808C96A8 0C0606F1 */ jal	SysMatrix_GetStateTranslationAndScaledY
/* 004555 0x808C96AC 26050368 */ addiu	$a1, $s0, 0X368
.L808C96B0:
/* 004556 0x808C96B0 8FBF002C */ lw	$ra, 0X2C($sp)
.L808C96B4:
/* 004557 0x808C96B4 8FB00020 */ lw	$s0, 0X20($sp)
/* 004558 0x808C96B8 8FB10024 */ lw	$s1, 0X24($sp)
/* 004559 0x808C96BC 8FB20028 */ lw	$s2, 0X28($sp)
/* 004560 0x808C96C0 03E00008 */ jr	$ra
/* 004561 0x808C96C4 27BD0080 */ addiu	$sp, $sp, 0X80

