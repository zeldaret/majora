glabel func_80BE42A4
/* 000457 0x80BE42A4 27BDFFB0 */ addiu	$sp, $sp, -0X50
/* 000458 0x80BE42A8 AFB00020 */ sw	$s0, 0X20($sp)
/* 000459 0x80BE42AC 00808025 */ move	$s0, $a0
/* 000460 0x80BE42B0 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000461 0x80BE42B4 AFA50054 */ sw	$a1, 0X54($sp)
/* 000462 0x80BE42B8 8E0E0120 */ lw	$t6, 0X120($s0)
/* 000463 0x80BE42BC AFAE0034 */ sw	$t6, 0X34($sp)
/* 000464 0x80BE42C0 C6060024 */ lwc1	$f6, 0X24($s0)
/* 000465 0x80BE42C4 C604014C */ lwc1	$f4, 0X14C($s0)
/* 000466 0x80BE42C8 46062201 */ sub.s	$f8, $f4, $f6
/* 000467 0x80BE42CC E7A8004C */ swc1	$f8, 0X4C($sp)
/* 000468 0x80BE42D0 C6100028 */ lwc1	$f16, 0X28($s0)
/* 000469 0x80BE42D4 C60A0150 */ lwc1	$f10, 0X150($s0)
/* 000470 0x80BE42D8 C7A8004C */ lwc1	$f8, 0X4C($sp)
/* 000471 0x80BE42DC 46105481 */ sub.s	$f18, $f10, $f16
/* 000472 0x80BE42E0 46084282 */ mul.s	$f10, $f8, $f8
/* 000473 0x80BE42E4 E7B20048 */ swc1	$f18, 0X48($sp)
/* 000474 0x80BE42E8 C606002C */ lwc1	$f6, 0X2C($s0)
/* 000475 0x80BE42EC C6040154 */ lwc1	$f4, 0X154($s0)
/* 000476 0x80BE42F0 46062381 */ sub.s	$f14, $f4, $f6
/* 000477 0x80BE42F4 460E7402 */ mul.s	$f16, $f14, $f14
/* 000478 0x80BE42F8 46105000 */ add.s	$f0, $f10, $f16
/* 000479 0x80BE42FC 46000004 */ sqrt.s	$f0, $f0
/* 000480 0x80BE4300 E7A00040 */ swc1	$f0, 0X40($sp)
/* 000481 0x80BE4304 860F0148 */ lh	$t7, 0X148($s0)
/* 000482 0x80BE4308 11E00006 */ beqz	$t7, .L80BE4324
/* 000483 0x80BE430C 3C0142C8 */ lui	$at, 0x42C8
/* 000484 0x80BE4310 44819000 */ mtc1	$at, $f18
/* 000485 0x80BE4314 00000000 */ nop
/* 000486 0x80BE4318 4612003C */ c.lt.s	$f0, $f18
/* 000487 0x80BE431C 00000000 */ nop
/* 000488 0x80BE4320 45000040 */ bc1f .L80BE4424
.L80BE4324:
/* 000489 0x80BE4324 3C18801F */ lui	$t8, %hi(gStaticContext)
/* 000490 0x80BE4328 8F183F60 */ lw	$t8, %lo(gStaticContext)($t8)
/* 000491 0x80BE432C 3C014348 */ lui	$at, 0x4348
/* 000492 0x80BE4330 44814000 */ mtc1	$at, $f8
/* 000493 0x80BE4334 87190A78 */ lh	$t9, 0XA78($t8)
/* 000494 0x80BE4338 E7AE0044 */ swc1	$f14, 0X44($sp)
/* 000495 0x80BE433C 44992000 */ mtc1	$t9, $f4
/* 000496 0x80BE4340 00000000 */ nop
/* 000497 0x80BE4344 468021A0 */ cvt.s.w	$f6, $f4
/* 000498 0x80BE4348 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 000499 0x80BE434C 46083300 */ add.s	$f12, $f6, $f8
/* 000500 0x80BE4350 8FA80034 */ lw	$t0, 0X34($sp)
/* 000501 0x80BE4354 3C09801F */ lui	$t1, %hi(gStaticContext)
/* 000502 0x80BE4358 3C0142C8 */ lui	$at, 0x42C8
/* 000503 0x80BE435C C50A0024 */ lwc1	$f10, 0X24($t0)
/* 000504 0x80BE4360 44813000 */ mtc1	$at, $f6
/* 000505 0x80BE4364 460A0400 */ add.s	$f16, $f0, $f10
/* 000506 0x80BE4368 E610014C */ swc1	$f16, 0X14C($s0)
/* 000507 0x80BE436C 8D293F60 */ lw	$t1, %lo(gStaticContext)($t1)
/* 000508 0x80BE4370 852A0A76 */ lh	$t2, 0XA76($t1)
/* 000509 0x80BE4374 448A9000 */ mtc1	$t2, $f18
/* 000510 0x80BE4378 00000000 */ nop
/* 000511 0x80BE437C 46809120 */ cvt.s.w	$f4, $f18
/* 000512 0x80BE4380 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 000513 0x80BE4384 46062300 */ add.s	$f12, $f4, $f6
/* 000514 0x80BE4388 3C02801F */ lui	$v0, %hi(gStaticContext)
/* 000515 0x80BE438C 24423F60 */ addiu	$v0, $v0, %lo(gStaticContext)
/* 000516 0x80BE4390 8C4C0000 */ lw	$t4, 0X0($v0)
/* 000517 0x80BE4394 8FAB0034 */ lw	$t3, 0X34($sp)
/* 000518 0x80BE4398 3C0142C8 */ lui	$at, 0x42C8
/* 000519 0x80BE439C 858D0A74 */ lh	$t5, 0XA74($t4)
/* 000520 0x80BE43A0 C5680028 */ lwc1	$f8, 0X28($t3)
/* 000521 0x80BE43A4 44812000 */ mtc1	$at, $f4
/* 000522 0x80BE43A8 448D5000 */ mtc1	$t5, $f10
/* 000523 0x80BE43AC 3C014348 */ lui	$at, 0x4348
/* 000524 0x80BE43B0 46805420 */ cvt.s.w	$f16, $f10
/* 000525 0x80BE43B4 46104480 */ add.s	$f18, $f8, $f16
/* 000526 0x80BE43B8 46049180 */ add.s	$f6, $f18, $f4
/* 000527 0x80BE43BC 44819000 */ mtc1	$at, $f18
/* 000528 0x80BE43C0 46060280 */ add.s	$f10, $f0, $f6
/* 000529 0x80BE43C4 E60A0150 */ swc1	$f10, 0X150($s0)
/* 000530 0x80BE43C8 8C4E0000 */ lw	$t6, 0X0($v0)
/* 000531 0x80BE43CC 85CF0A78 */ lh	$t7, 0XA78($t6)
/* 000532 0x80BE43D0 448F4000 */ mtc1	$t7, $f8
/* 000533 0x80BE43D4 00000000 */ nop
/* 000534 0x80BE43D8 46804420 */ cvt.s.w	$f16, $f8
/* 000535 0x80BE43DC 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 000536 0x80BE43E0 46128300 */ add.s	$f12, $f16, $f18
/* 000537 0x80BE43E4 8FB80034 */ lw	$t8, 0X34($sp)
/* 000538 0x80BE43E8 3C0142C8 */ lui	$at, 0x42C8
/* 000539 0x80BE43EC 44816000 */ mtc1	$at, $f12
/* 000540 0x80BE43F0 C704002C */ lwc1	$f4, 0X2C($t8)
/* 000541 0x80BE43F4 46040180 */ add.s	$f6, $f0, $f4
/* 000542 0x80BE43F8 0C05E565 */ jal	randZeroOneScaled
/* 000543 0x80BE43FC E6060154 */ swc1	$f6, 0X154($s0)
/* 000544 0x80BE4400 3C014270 */ lui	$at, 0x4270
/* 000545 0x80BE4404 44815000 */ mtc1	$at, $f10
/* 000546 0x80BE4408 A6000158 */ sh	$zero, 0X158($s0)
/* 000547 0x80BE440C 460A0200 */ add.s	$f8, $f0, $f10
/* 000548 0x80BE4410 4600440D */ trunc.w.s	$f16, $f8
/* 000549 0x80BE4414 44088000 */ mfc1	$t0, $f16
/* 000550 0x80BE4418 00000000 */ nop
/* 000551 0x80BE441C A6080148 */ sh	$t0, 0X148($s0)
/* 000552 0x80BE4420 C7AE0044 */ lwc1	$f14, 0X44($sp)
.L80BE4424:
/* 000553 0x80BE4424 0C05FFB9 */ jal	atans
/* 000554 0x80BE4428 C7AC004C */ lwc1	$f12, 0X4C($sp)
/* 000555 0x80BE442C A7A2003C */ sh	$v0, 0X3C($sp)
/* 000556 0x80BE4430 C7AC0048 */ lwc1	$f12, 0X48($sp)
/* 000557 0x80BE4434 0C05FFB9 */ jal	atans
/* 000558 0x80BE4438 C7AE0040 */ lwc1	$f14, 0X40($sp)
/* 000559 0x80BE443C A7A2003E */ sh	$v0, 0X3E($sp)
/* 000560 0x80BE4440 86070158 */ lh	$a3, 0X158($s0)
/* 000561 0x80BE4444 AFA00010 */ sw	$zero, 0X10($sp)
/* 000562 0x80BE4448 26040032 */ addiu	$a0, $s0, 0X32
/* 000563 0x80BE444C 87A5003C */ lh	$a1, 0X3C($sp)
/* 000564 0x80BE4450 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 000565 0x80BE4454 2406000A */ li	$a2, 0XA
/* 000566 0x80BE4458 00021C00 */ sll	$v1, $v0, 16
/* 000567 0x80BE445C 28411001 */ slti	$at, $v0, 0X1001
/* 000568 0x80BE4460 14200003 */ bnez	$at, .L80BE4470
/* 000569 0x80BE4464 00031C03 */ sra	$v1, $v1, 16
/* 000570 0x80BE4468 10000005 */ b	.L80BE4480
/* 000571 0x80BE446C 24031000 */ li	$v1, 0X1000
.L80BE4470:
/* 000572 0x80BE4470 2841F000 */ slti	$at, $v0, -0X1000
/* 000573 0x80BE4474 50200003 */ beqzl	$at, .L80BE4484
/* 000574 0x80BE4478 86070158 */ lh	$a3, 0X158($s0)
/* 000575 0x80BE447C 2403F000 */ li	$v1, -0X1000
.L80BE4480:
/* 000576 0x80BE4480 86070158 */ lh	$a3, 0X158($s0)
.L80BE4484:
/* 000577 0x80BE4484 A7A3003A */ sh	$v1, 0X3A($sp)
/* 000578 0x80BE4488 26040030 */ addiu	$a0, $s0, 0X30
/* 000579 0x80BE448C 87A5003E */ lh	$a1, 0X3E($sp)
/* 000580 0x80BE4490 0C03FFF6 */ jal	Math_SmoothScaleMaxS
/* 000581 0x80BE4494 2406000A */ li	$a2, 0XA
/* 000582 0x80BE4498 87A3003A */ lh	$v1, 0X3A($sp)
/* 000583 0x80BE449C 26040034 */ addiu	$a0, $s0, 0X34
/* 000584 0x80BE44A0 2406000A */ li	$a2, 0XA
/* 000585 0x80BE44A4 00032823 */ negu	$a1, $v1
/* 000586 0x80BE44A8 00052C00 */ sll	$a1, $a1, 16
/* 000587 0x80BE44AC 00052C03 */ sra	$a1, $a1, 16
/* 000588 0x80BE44B0 0C03FFF6 */ jal	Math_SmoothScaleMaxS
/* 000589 0x80BE44B4 86070158 */ lh	$a3, 0X158($s0)
/* 000590 0x80BE44B8 26040158 */ addiu	$a0, $s0, 0X158
/* 000591 0x80BE44BC 24050200 */ li	$a1, 0X200
/* 000592 0x80BE44C0 24060001 */ li	$a2, 0X1
/* 000593 0x80BE44C4 0C03FFF6 */ jal	Math_SmoothScaleMaxS
/* 000594 0x80BE44C8 24070010 */ li	$a3, 0X10
/* 000595 0x80BE44CC 26040164 */ addiu	$a0, $s0, 0X164
/* 000596 0x80BE44D0 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 000597 0x80BE44D4 AFA4002C */ sw	$a0, 0X2C($sp)
/* 000598 0x80BE44D8 9203014A */ lbu	$v1, 0X14A($s0)
/* 000599 0x80BE44DC 24010001 */ li	$at, 0X1
/* 000600 0x80BE44E0 50600006 */ beqzl	$v1, .L80BE44FC
/* 000601 0x80BE44E4 86090146 */ lh	$t1, 0X146($s0)
/* 000602 0x80BE44E8 5061003C */ beql	$v1, $at, .L80BE45DC
/* 000603 0x80BE44EC 86090144 */ lh	$t1, 0X144($s0)
/* 000604 0x80BE44F0 1000007B */ b	.L80BE46E0
/* 000605 0x80BE44F4 860C0030 */ lh	$t4, 0X30($s0)
/* 000606 0x80BE44F8 86090146 */ lh	$t1, 0X146($s0)
.L80BE44FC:
/* 000607 0x80BE44FC 3C0A801F */ lui	$t2, %hi(gStaticContext)
/* 000608 0x80BE4500 55200077 */ bnezl	$t1, .L80BE46E0
/* 000609 0x80BE4504 860C0030 */ lh	$t4, 0X30($s0)
/* 000610 0x80BE4508 8D4A3F60 */ lw	$t2, %lo(gStaticContext)($t2)
/* 000611 0x80BE450C 3C014000 */ lui	$at, 0x4000
/* 000612 0x80BE4510 44813000 */ mtc1	$at, $f6
/* 000613 0x80BE4514 854B0A28 */ lh	$t3, 0XA28($t2)
/* 000614 0x80BE4518 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000615 0x80BE451C 448B9000 */ mtc1	$t3, $f18
/* 000616 0x80BE4520 00000000 */ nop
/* 000617 0x80BE4524 46809120 */ cvt.s.w	$f4, $f18
/* 000618 0x80BE4528 46062280 */ add.s	$f10, $f4, $f6
/* 000619 0x80BE452C 44055000 */ mfc1	$a1, $f10
/* 000620 0x80BE4530 0C04DE2E */ jal	func_801378B8
/* 000621 0x80BE4534 00000000 */ nop
/* 000622 0x80BE4538 10400068 */ beqz	$v0, .L80BE46DC
/* 000623 0x80BE453C 240C0001 */ li	$t4, 0X1
/* 000624 0x80BE4540 3C014248 */ lui	$at, 0x4248
/* 000625 0x80BE4544 44816000 */ mtc1	$at, $f12
/* 000626 0x80BE4548 0C05E565 */ jal	randZeroOneScaled
/* 000627 0x80BE454C A20C014A */ sb	$t4, 0X14A($s0)
/* 000628 0x80BE4550 3C014248 */ lui	$at, 0x4248
/* 000629 0x80BE4554 44814000 */ mtc1	$at, $f8
/* 000630 0x80BE4558 3C0F801F */ lui	$t7, %hi(gStaticContext)
/* 000631 0x80BE455C 3C01C170 */ lui	$at, 0xC170
/* 000632 0x80BE4560 46080400 */ add.s	$f16, $f0, $f8
/* 000633 0x80BE4564 44815000 */ mtc1	$at, $f10
/* 000634 0x80BE4568 3C050600 */ lui	$a1, 0x0600
/* 000635 0x80BE456C 24A50168 */ addiu	$a1, $a1, 0X168
/* 000636 0x80BE4570 4600848D */ trunc.w.s	$f18, $f16
/* 000637 0x80BE4574 440E9000 */ mfc1	$t6, $f18
/* 000638 0x80BE4578 00000000 */ nop
/* 000639 0x80BE457C A60E0146 */ sh	$t6, 0X146($s0)
/* 000640 0x80BE4580 8DEF3F60 */ lw	$t7, %lo(gStaticContext)($t7)
/* 000641 0x80BE4584 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000642 0x80BE4588 85F80A2A */ lh	$t8, 0XA2A($t7)
/* 000643 0x80BE458C 44982000 */ mtc1	$t8, $f4
/* 000644 0x80BE4590 00000000 */ nop
/* 000645 0x80BE4594 468021A0 */ cvt.s.w	$f6, $f4
/* 000646 0x80BE4598 460A3200 */ add.s	$f8, $f6, $f10
/* 000647 0x80BE459C 44064000 */ mfc1	$a2, $f8
/* 000648 0x80BE45A0 0C04DD65 */ jal	SkelAnime_ChangeAnimTransitionRepeat
/* 000649 0x80BE45A4 00000000 */ nop
/* 000650 0x80BE45A8 3C19801F */ lui	$t9, %hi(gStaticContext)
/* 000651 0x80BE45AC 8F393F60 */ lw	$t9, %lo(gStaticContext)($t9)
/* 000652 0x80BE45B0 3C014000 */ lui	$at, 0x4000
/* 000653 0x80BE45B4 44812000 */ mtc1	$at, $f4
/* 000654 0x80BE45B8 87280A28 */ lh	$t0, 0XA28($t9)
/* 000655 0x80BE45BC 44805000 */ mtc1	$zero, $f10
/* 000656 0x80BE45C0 44888000 */ mtc1	$t0, $f16
/* 000657 0x80BE45C4 E60A0180 */ swc1	$f10, 0X180($s0)
/* 000658 0x80BE45C8 468084A0 */ cvt.s.w	$f18, $f16
/* 000659 0x80BE45CC 46049180 */ add.s	$f6, $f18, $f4
/* 000660 0x80BE45D0 10000042 */ b	.L80BE46DC
/* 000661 0x80BE45D4 E606017C */ swc1	$f6, 0X17C($s0)
/* 000662 0x80BE45D8 86090144 */ lh	$t1, 0X144($s0)
.L80BE45DC:
/* 000663 0x80BE45DC 312A0007 */ andi	$t2, $t1, 0X7
/* 000664 0x80BE45E0 55400018 */ bnezl	$t2, .L80BE4644
/* 000665 0x80BE45E4 860F0146 */ lh	$t7, 0X146($s0)
/* 000666 0x80BE45E8 0C021BF7 */ jal	randZeroOne
/* 000667 0x80BE45EC 00000000 */ nop
/* 000668 0x80BE45F0 3C013F00 */ lui	$at, 0x3F00
/* 000669 0x80BE45F4 44814000 */ mtc1	$at, $f8
/* 000670 0x80BE45F8 3C0B801F */ lui	$t3, %hi(gStaticContext)
/* 000671 0x80BE45FC 4608003C */ c.lt.s	$f0, $f8
/* 000672 0x80BE4600 00000000 */ nop
/* 000673 0x80BE4604 4502000F */ bc1fl .L80BE4644
/* 000674 0x80BE4608 860F0146 */ lh	$t7, 0X146($s0)
/* 000675 0x80BE460C 8D6B3F60 */ lw	$t3, %lo(gStaticContext)($t3)
/* 000676 0x80BE4610 3C0180BE */ lui	$at, %hi(D_80BE48AC)
/* 000677 0x80BE4614 C42448AC */ lwc1	$f4, %lo(D_80BE48AC)($at)
/* 000678 0x80BE4618 856C0A2C */ lh	$t4, 0XA2C($t3)
/* 000679 0x80BE461C 448C8000 */ mtc1	$t4, $f16
/* 000680 0x80BE4620 00000000 */ nop
/* 000681 0x80BE4624 468084A0 */ cvt.s.w	$f18, $f16
/* 000682 0x80BE4628 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 000683 0x80BE462C 46049300 */ add.s	$f12, $f18, $f4
/* 000684 0x80BE4630 4600018D */ trunc.w.s	$f6, $f0
/* 000685 0x80BE4634 440E3000 */ mfc1	$t6, $f6
/* 000686 0x80BE4638 00000000 */ nop
/* 000687 0x80BE463C A60E015C */ sh	$t6, 0X15C($s0)
/* 000688 0x80BE4640 860F0146 */ lh	$t7, 0X146($s0)
.L80BE4644:
/* 000689 0x80BE4644 3C014248 */ lui	$at, 0x4248
/* 000690 0x80BE4648 55E00025 */ bnezl	$t7, .L80BE46E0
/* 000691 0x80BE464C 860C0030 */ lh	$t4, 0X30($s0)
/* 000692 0x80BE4650 44816000 */ mtc1	$at, $f12
/* 000693 0x80BE4654 0C05E565 */ jal	randZeroOneScaled
/* 000694 0x80BE4658 A200014A */ sb	$zero, 0X14A($s0)
/* 000695 0x80BE465C 3C01428C */ lui	$at, 0x428C
/* 000696 0x80BE4660 44815000 */ mtc1	$at, $f10
/* 000697 0x80BE4664 3C08801F */ lui	$t0, %hi(gStaticContext)
/* 000698 0x80BE4668 3C01C120 */ lui	$at, 0xC120
/* 000699 0x80BE466C 460A0200 */ add.s	$f8, $f0, $f10
/* 000700 0x80BE4670 44813000 */ mtc1	$at, $f6
/* 000701 0x80BE4674 3C050600 */ lui	$a1, 0x0600
/* 000702 0x80BE4678 24A50168 */ addiu	$a1, $a1, 0X168
/* 000703 0x80BE467C 4600440D */ trunc.w.s	$f16, $f8
/* 000704 0x80BE4680 44198000 */ mfc1	$t9, $f16
/* 000705 0x80BE4684 00000000 */ nop
/* 000706 0x80BE4688 A6190146 */ sh	$t9, 0X146($s0)
/* 000707 0x80BE468C 8D083F60 */ lw	$t0, %lo(gStaticContext)($t0)
/* 000708 0x80BE4690 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000709 0x80BE4694 85090A2A */ lh	$t1, 0XA2A($t0)
/* 000710 0x80BE4698 44899000 */ mtc1	$t1, $f18
/* 000711 0x80BE469C 00000000 */ nop
/* 000712 0x80BE46A0 46809120 */ cvt.s.w	$f4, $f18
/* 000713 0x80BE46A4 46062280 */ add.s	$f10, $f4, $f6
/* 000714 0x80BE46A8 44065000 */ mfc1	$a2, $f10
/* 000715 0x80BE46AC 0C04DD65 */ jal	SkelAnime_ChangeAnimTransitionRepeat
/* 000716 0x80BE46B0 00000000 */ nop
/* 000717 0x80BE46B4 3C0A801F */ lui	$t2, %hi(gStaticContext)
/* 000718 0x80BE46B8 8D4A3F60 */ lw	$t2, %lo(gStaticContext)($t2)
/* 000719 0x80BE46BC 3C014000 */ lui	$at, 0x4000
/* 000720 0x80BE46C0 44819000 */ mtc1	$at, $f18
/* 000721 0x80BE46C4 854B0A28 */ lh	$t3, 0XA28($t2)
/* 000722 0x80BE46C8 448B4000 */ mtc1	$t3, $f8
/* 000723 0x80BE46CC 00000000 */ nop
/* 000724 0x80BE46D0 46804420 */ cvt.s.w	$f16, $f8
/* 000725 0x80BE46D4 46128100 */ add.s	$f4, $f16, $f18
/* 000726 0x80BE46D8 E604017C */ swc1	$f4, 0X17C($s0)
.L80BE46DC:
/* 000727 0x80BE46DC 860C0030 */ lh	$t4, 0X30($s0)
.L80BE46E0:
/* 000728 0x80BE46E0 860E0032 */ lh	$t6, 0X32($s0)
/* 000729 0x80BE46E4 860F0034 */ lh	$t7, 0X34($s0)
/* 000730 0x80BE46E8 000C6823 */ negu	$t5, $t4
/* 000731 0x80BE46EC A60D00BC */ sh	$t5, 0XBC($s0)
/* 000732 0x80BE46F0 3C18801F */ lui	$t8, %hi(gStaticContext)
/* 000733 0x80BE46F4 A60E00BE */ sh	$t6, 0XBE($s0)
/* 000734 0x80BE46F8 A60F00C0 */ sh	$t7, 0XC0($s0)
/* 000735 0x80BE46FC 8F183F60 */ lw	$t8, %lo(gStaticContext)($t8)
/* 000736 0x80BE4700 2604015A */ addiu	$a0, $s0, 0X15A
/* 000737 0x80BE4704 8605015C */ lh	$a1, 0X15C($s0)
/* 000738 0x80BE4708 87070A2E */ lh	$a3, 0XA2E($t8)
/* 000739 0x80BE470C 24060003 */ li	$a2, 0X3
/* 000740 0x80BE4710 24E703E8 */ addiu	$a3, $a3, 0X3E8
/* 000741 0x80BE4714 00073C00 */ sll	$a3, $a3, 16
/* 000742 0x80BE4718 0C03FFF6 */ jal	Math_SmoothScaleMaxS
/* 000743 0x80BE471C 00073C03 */ sra	$a3, $a3, 16
/* 000744 0x80BE4720 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000745 0x80BE4724 8FB00020 */ lw	$s0, 0X20($sp)
/* 000746 0x80BE4728 27BD0050 */ addiu	$sp, $sp, 0X50
/* 000747 0x80BE472C 03E00008 */ jr	$ra
/* 000748 0x80BE4730 00000000 */ nop


.section .late_rodata

glabel D_80BE48AC
/* 000843 0x80BE48AC */ .word	0x453B8000
