glabel func_808A6580
/* 001356 0x808A6580 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 001357 0x808A6584 AFB00030 */ sw	$s0, 0X30($sp)
/* 001358 0x808A6588 00808025 */ move	$s0, $a0
/* 001359 0x808A658C AFBF0034 */ sw	$ra, 0X34($sp)
/* 001360 0x808A6590 AFA50044 */ sw	$a1, 0X44($sp)
/* 001361 0x808A6594 8FAE0044 */ lw	$t6, 0X44($sp)
/* 001362 0x808A6598 8DCF1CCC */ lw	$t7, 0X1CCC($t6)
/* 001363 0x808A659C AFA00038 */ sw	$zero, 0X38($sp)
/* 001364 0x808A65A0 AFAF003C */ sw	$t7, 0X3C($sp)
/* 001365 0x808A65A4 86020316 */ lh	$v0, 0X316($s0)
/* 001366 0x808A65A8 10400002 */ beqz	$v0, .L808A65B4
/* 001367 0x808A65AC 2458FFFF */ addiu	$t8, $v0, -0X1
/* 001368 0x808A65B0 A6180316 */ sh	$t8, 0X316($s0)
.L808A65B4:
/* 001369 0x808A65B4 92190239 */ lbu	$t9, 0X239($s0)
/* 001370 0x808A65B8 33290002 */ andi	$t1, $t9, 0X2
/* 001371 0x808A65BC 51200024 */ beqzl	$t1, .L808A6650
/* 001372 0x808A65C0 920201ED */ lbu	$v0, 0X1ED($s0)
/* 001373 0x808A65C4 920A018E */ lbu	$t2, 0X18E($s0)
/* 001374 0x808A65C8 2401000A */ li	$at, 0XA
/* 001375 0x808A65CC 00001825 */ move	$v1, $zero
/* 001376 0x808A65D0 1541000A */ bne	$t2, $at, .L808A65FC
/* 001377 0x808A65D4 02001025 */ move	$v0, $s0
/* 001378 0x808A65D8 2408000C */ li	$t0, 0XC
.L808A65DC:
/* 001379 0x808A65DC 24630004 */ addiu	$v1, $v1, 0X4
/* 001380 0x808A65E0 A440031C */ sh	$zero, 0X31C($v0)
/* 001381 0x808A65E4 A440031E */ sh	$zero, 0X31E($v0)
/* 001382 0x808A65E8 A4400320 */ sh	$zero, 0X320($v0)
/* 001383 0x808A65EC A4400322 */ sh	$zero, 0X322($v0)
/* 001384 0x808A65F0 1468FFFA */ bne	$v1, $t0, .L808A65DC
/* 001385 0x808A65F4 24420008 */ addiu	$v0, $v0, 0X8
/* 001386 0x808A65F8 A6000318 */ sh	$zero, 0X318($s0)
.L808A65FC:
/* 001387 0x808A65FC 920B00B9 */ lbu	$t3, 0XB9($s0)
/* 001388 0x808A6600 8FA50044 */ lw	$a1, 0X44($sp)
/* 001389 0x808A6604 24010004 */ li	$at, 0X4
/* 001390 0x808A6608 1561000D */ bne	$t3, $at, .L808A6640
/* 001391 0x808A660C 24A41CA0 */ addiu	$a0, $a1, 0X1CA0
/* 001392 0x808A6610 C6040028 */ lwc1	$f4, 0X28($s0)
/* 001393 0x808A6614 8E070024 */ lw	$a3, 0X24($s0)
/* 001394 0x808A6618 240D0004 */ li	$t5, 0X4
/* 001395 0x808A661C E7A40010 */ swc1	$f4, 0X10($sp)
/* 001396 0x808A6620 C606002C */ lwc1	$f6, 0X2C($s0)
/* 001397 0x808A6624 AFAD0024 */ sw	$t5, 0X24($sp)
/* 001398 0x808A6628 AFA00020 */ sw	$zero, 0X20($sp)
/* 001399 0x808A662C AFA0001C */ sw	$zero, 0X1C($sp)
/* 001400 0x808A6630 AFA00018 */ sw	$zero, 0X18($sp)
/* 001401 0x808A6634 240600A2 */ li	$a2, 0XA2
/* 001402 0x808A6638 0C02EB18 */ jal	Actor_Spawn
/* 001403 0x808A663C E7A60014 */ swc1	$f6, 0X14($sp)
.L808A6640:
/* 001404 0x808A6640 920E0239 */ lbu	$t6, 0X239($s0)
/* 001405 0x808A6644 31CFFFFD */ andi	$t7, $t6, 0XFFFD
/* 001406 0x808A6648 A20F0239 */ sb	$t7, 0X239($s0)
/* 001407 0x808A664C 920201ED */ lbu	$v0, 0X1ED($s0)
.L808A6650:
/* 001408 0x808A6650 2408000C */ li	$t0, 0XC
/* 001409 0x808A6654 24010004 */ li	$at, 0X4
/* 001410 0x808A6658 30580002 */ andi	$t8, $v0, 0X2
/* 001411 0x808A665C 17000005 */ bnez	$t8, .L808A6674
/* 001412 0x808A6660 304AFFFD */ andi	$t2, $v0, 0XFFFD
/* 001413 0x808A6664 92190285 */ lbu	$t9, 0X285($s0)
/* 001414 0x808A6668 33290002 */ andi	$t1, $t9, 0X2
/* 001415 0x808A666C 512000B9 */ beqzl	$t1, .L808A6954
/* 001416 0x808A6670 920D01A3 */ lbu	$t5, 0X1A3($s0)
.L808A6674:
/* 001417 0x808A6674 920B0285 */ lbu	$t3, 0X285($s0)
/* 001418 0x808A6678 920D00B9 */ lbu	$t5, 0XB9($s0)
/* 001419 0x808A667C A20A01ED */ sb	$t2, 0X1ED($s0)
/* 001420 0x808A6680 316CFFFD */ andi	$t4, $t3, 0XFFFD
/* 001421 0x808A6684 15A10010 */ bne	$t5, $at, .L808A66C8
/* 001422 0x808A6688 A20C0285 */ sb	$t4, 0X285($s0)
/* 001423 0x808A668C C6080028 */ lwc1	$f8, 0X28($s0)
/* 001424 0x808A6690 8E070024 */ lw	$a3, 0X24($s0)
/* 001425 0x808A6694 8FA50044 */ lw	$a1, 0X44($sp)
/* 001426 0x808A6698 E7A80010 */ swc1	$f8, 0X10($sp)
/* 001427 0x808A669C C60A002C */ lwc1	$f10, 0X2C($s0)
/* 001428 0x808A66A0 240F0004 */ li	$t7, 0X4
/* 001429 0x808A66A4 AFAF0024 */ sw	$t7, 0X24($sp)
/* 001430 0x808A66A8 AFA00020 */ sw	$zero, 0X20($sp)
/* 001431 0x808A66AC AFA0001C */ sw	$zero, 0X1C($sp)
/* 001432 0x808A66B0 AFA00018 */ sw	$zero, 0X18($sp)
/* 001433 0x808A66B4 240600A2 */ li	$a2, 0XA2
/* 001434 0x808A66B8 24A41CA0 */ addiu	$a0, $a1, 0X1CA0
/* 001435 0x808A66BC 0C02EB18 */ jal	Actor_Spawn
/* 001436 0x808A66C0 E7AA0014 */ swc1	$f10, 0X14($sp)
/* 001437 0x808A66C4 2408000C */ li	$t0, 0XC
.L808A66C8:
/* 001438 0x808A66C8 9218018E */ lbu	$t8, 0X18E($s0)
/* 001439 0x808A66CC 2401000A */ li	$at, 0XA
/* 001440 0x808A66D0 00001825 */ move	$v1, $zero
/* 001441 0x808A66D4 1701000A */ bne	$t8, $at, .L808A6700
/* 001442 0x808A66D8 02001025 */ move	$v0, $s0
.L808A66DC:
/* 001443 0x808A66DC 24630004 */ addiu	$v1, $v1, 0X4
/* 001444 0x808A66E0 A440031C */ sh	$zero, 0X31C($v0)
/* 001445 0x808A66E4 A440031E */ sh	$zero, 0X31E($v0)
/* 001446 0x808A66E8 A4400320 */ sh	$zero, 0X320($v0)
/* 001447 0x808A66EC A4400322 */ sh	$zero, 0X322($v0)
/* 001448 0x808A66F0 1468FFFA */ bne	$v1, $t0, .L808A66DC
/* 001449 0x808A66F4 24420008 */ addiu	$v0, $v0, 0X8
/* 001450 0x808A66F8 10000091 */ b	.L808A6940
/* 001451 0x808A66FC A6000318 */ sh	$zero, 0X318($s0)
.L808A6700:
/* 001452 0x808A6700 0C22987D */ jal	func_808A61F4
/* 001453 0x808A6704 02002025 */ move	$a0, $s0
/* 001454 0x808A6708 50400041 */ beqzl	$v0, .L808A6810
/* 001455 0x808A670C 8605001C */ lh	$a1, 0X1C($s0)
/* 001456 0x808A6710 920200B9 */ lbu	$v0, 0XB9($s0)
/* 001457 0x808A6714 24010001 */ li	$at, 0X1
/* 001458 0x808A6718 02002025 */ move	$a0, $s0
/* 001459 0x808A671C 10410005 */ beq	$v0, $at, .L808A6734
/* 001460 0x808A6720 24010005 */ li	$at, 0X5
/* 001461 0x808A6724 10410010 */ beq	$v0, $at, .L808A6768
/* 001462 0x808A6728 240A001E */ li	$t2, 0X1E
/* 001463 0x808A672C 1000001C */ b	.L808A67A0
/* 001464 0x808A6730 02002025 */ move	$a0, $s0
.L808A6734:
/* 001465 0x808A6734 0C02E3B2 */ jal	func_800B8EC8
/* 001466 0x808A6738 2405389E */ li	$a1, 0X389E
/* 001467 0x808A673C 24190028 */ li	$t9, 0X28
/* 001468 0x808A6740 A6190312 */ sh	$t9, 0X312($s0)
/* 001469 0x808A6744 86090312 */ lh	$t1, 0X312($s0)
/* 001470 0x808A6748 02002025 */ move	$a0, $s0
/* 001471 0x808A674C 00002825 */ move	$a1, $zero
/* 001472 0x808A6750 240600C8 */ li	$a2, 0XC8
/* 001473 0x808A6754 00003825 */ move	$a3, $zero
/* 001474 0x808A6758 0C02F2DC */ jal	func_800BCB70
/* 001475 0x808A675C AFA90010 */ sw	$t1, 0X10($sp)
/* 001476 0x808A6760 10000078 */ b	.L808A6944
/* 001477 0x808A6764 960B018C */ lhu	$t3, 0X18C($s0)
.L808A6768:
/* 001478 0x808A6768 240B0028 */ li	$t3, 0X28
/* 001479 0x808A676C A20A018E */ sb	$t2, 0X18E($s0)
/* 001480 0x808A6770 A60B0312 */ sh	$t3, 0X312($s0)
/* 001481 0x808A6774 0C2295DB */ jal	func_808A576C
/* 001482 0x808A6778 02002025 */ move	$a0, $s0
/* 001483 0x808A677C 860C0312 */ lh	$t4, 0X312($s0)
/* 001484 0x808A6780 02002025 */ move	$a0, $s0
/* 001485 0x808A6784 00002825 */ move	$a1, $zero
/* 001486 0x808A6788 240600C8 */ li	$a2, 0XC8
/* 001487 0x808A678C 00003825 */ move	$a3, $zero
/* 001488 0x808A6790 0C02F2DC */ jal	func_800BCB70
/* 001489 0x808A6794 AFAC0010 */ sw	$t4, 0X10($sp)
/* 001490 0x808A6798 1000006A */ b	.L808A6944
/* 001491 0x808A679C 960B018C */ lhu	$t3, 0X18C($s0)
.L808A67A0:
/* 001492 0x808A67A0 0C02E3B2 */ jal	func_800B8EC8
/* 001493 0x808A67A4 2405386B */ li	$a1, 0X386B
/* 001494 0x808A67A8 240D0014 */ li	$t5, 0X14
/* 001495 0x808A67AC A60D0314 */ sh	$t5, 0X314($s0)
/* 001496 0x808A67B0 860E0314 */ lh	$t6, 0X314($s0)
/* 001497 0x808A67B4 A6000312 */ sh	$zero, 0X312($s0)
/* 001498 0x808A67B8 02002025 */ move	$a0, $s0
/* 001499 0x808A67BC 24054000 */ li	$a1, 0X4000
/* 001500 0x808A67C0 240600C8 */ li	$a2, 0XC8
/* 001501 0x808A67C4 00003825 */ move	$a3, $zero
/* 001502 0x808A67C8 0C02F2DC */ jal	func_800BCB70
/* 001503 0x808A67CC AFAE0010 */ sw	$t6, 0X10($sp)
/* 001504 0x808A67D0 3C05808A */ lui	$a1, %hi(D_808A768C)
/* 001505 0x808A67D4 24A5768C */ addiu	$a1, $a1, %lo(D_808A768C)
/* 001506 0x808A67D8 26040144 */ addiu	$a0, $s0, 0X144
/* 001507 0x808A67DC 0C04EF1B */ jal	func_8013BC6C
/* 001508 0x808A67E0 24060001 */ li	$a2, 0X1
/* 001509 0x808A67E4 960F018C */ lhu	$t7, 0X18C($s0)
/* 001510 0x808A67E8 3C01BF80 */ lui	$at, 0xBF80
/* 001511 0x808A67EC 44818000 */ mtc1	$at, $f16
/* 001512 0x808A67F0 3C19808A */ lui	$t9, %hi(func_808A6D84)
/* 001513 0x808A67F4 27396D84 */ addiu	$t9, $t9, %lo(func_808A6D84)
/* 001514 0x808A67F8 35F80008 */ ori	$t8, $t7, 0X8
/* 001515 0x808A67FC A618018C */ sh	$t8, 0X18C($s0)
/* 001516 0x808A6800 AE190188 */ sw	$t9, 0X188($s0)
/* 001517 0x808A6804 1000004E */ b	.L808A6940
/* 001518 0x808A6808 E61002C8 */ swc1	$f16, 0X2C8($s0)
/* 001519 0x808A680C 8605001C */ lh	$a1, 0X1C($s0)
.L808A6810:
/* 001520 0x808A6810 2401003F */ li	$at, 0X3F
/* 001521 0x808A6814 30A5003F */ andi	$a1, $a1, 0X3F
/* 001522 0x808A6818 30A500FF */ andi	$a1, $a1, 0XFF
/* 001523 0x808A681C 50A10004 */ beql	$a1, $at, .L808A6830
/* 001524 0x808A6820 8FA40044 */ lw	$a0, 0X44($sp)
/* 001525 0x808A6824 0C02D6FD */ jal	Actor_SetSwitchFlag
/* 001526 0x808A6828 8FA40044 */ lw	$a0, 0X44($sp)
/* 001527 0x808A682C 8FA40044 */ lw	$a0, 0X44($sp)
.L808A6830:
/* 001528 0x808A6830 26050024 */ addiu	$a1, $s0, 0X24
/* 001529 0x808A6834 24060028 */ li	$a2, 0X28
/* 001530 0x808A6838 0C03C15A */ jal	func_800F0568
/* 001531 0x808A683C 24073885 */ li	$a3, 0X3885
/* 001532 0x808A6840 8FA40044 */ lw	$a0, 0X44($sp)
/* 001533 0x808A6844 0C02EEA2 */ jal	func_800BBA88
/* 001534 0x808A6848 02002825 */ move	$a1, $s0
/* 001535 0x808A684C 8E090004 */ lw	$t1, 0X4($s0)
/* 001536 0x808A6850 920200B9 */ lbu	$v0, 0XB9($s0)
/* 001537 0x808A6854 2401FFFE */ li	$at, -0X2
/* 001538 0x808A6858 01215024 */ and	$t2, $t1, $at
/* 001539 0x808A685C 24010002 */ li	$at, 0X2
/* 001540 0x808A6860 10410018 */ beq	$v0, $at, .L808A68C4
/* 001541 0x808A6864 AE0A0004 */ sw	$t2, 0X4($s0)
/* 001542 0x808A6868 24010003 */ li	$at, 0X3
/* 001543 0x808A686C 1041000F */ beq	$v0, $at, .L808A68AC
/* 001544 0x808A6870 240E000A */ li	$t6, 0XA
/* 001545 0x808A6874 24010004 */ li	$at, 0X4
/* 001546 0x808A6878 10410005 */ beq	$v0, $at, .L808A6890
/* 001547 0x808A687C 240C0014 */ li	$t4, 0X14
/* 001548 0x808A6880 240B0001 */ li	$t3, 0X1
/* 001549 0x808A6884 A20B018E */ sb	$t3, 0X18E($s0)
/* 001550 0x808A6888 10000013 */ b	.L808A68D8
/* 001551 0x808A688C A6000318 */ sh	$zero, 0X318($s0)
.L808A6890:
/* 001552 0x808A6890 240D0014 */ li	$t5, 0X14
/* 001553 0x808A6894 A20C018E */ sb	$t4, 0X18E($s0)
/* 001554 0x808A6898 A60D0318 */ sh	$t5, 0X318($s0)
/* 001555 0x808A689C 0C2295DB */ jal	func_808A576C
/* 001556 0x808A68A0 02002025 */ move	$a0, $s0
/* 001557 0x808A68A4 1000000D */ b	.L808A68DC
/* 001558 0x808A68A8 9218018E */ lbu	$t8, 0X18E($s0)
.L808A68AC:
/* 001559 0x808A68AC A20E018E */ sb	$t6, 0X18E($s0)
/* 001560 0x808A68B0 A6000318 */ sh	$zero, 0X318($s0)
/* 001561 0x808A68B4 0C2295DB */ jal	func_808A576C
/* 001562 0x808A68B8 02002025 */ move	$a0, $s0
/* 001563 0x808A68BC 10000007 */ b	.L808A68DC
/* 001564 0x808A68C0 9218018E */ lbu	$t8, 0X18E($s0)
.L808A68C4:
/* 001565 0x808A68C4 240F0014 */ li	$t7, 0X14
/* 001566 0x808A68C8 A200018E */ sb	$zero, 0X18E($s0)
/* 001567 0x808A68CC A60F0318 */ sh	$t7, 0X318($s0)
/* 001568 0x808A68D0 0C2295DB */ jal	func_808A576C
/* 001569 0x808A68D4 02002025 */ move	$a0, $s0
.L808A68D8:
/* 001570 0x808A68D8 9218018E */ lbu	$t8, 0X18E($s0)
.L808A68DC:
/* 001571 0x808A68DC 2401000A */ li	$at, 0XA
/* 001572 0x808A68E0 26040144 */ addiu	$a0, $s0, 0X144
/* 001573 0x808A68E4 1301000A */ beq	$t8, $at, .L808A6910
/* 001574 0x808A68E8 3C05808A */ lui	$a1, %hi(D_808A768C)
/* 001575 0x808A68EC 24A5768C */ addiu	$a1, $a1, %lo(D_808A768C)
/* 001576 0x808A68F0 0C04EF1B */ jal	func_8013BC6C
/* 001577 0x808A68F4 24060007 */ li	$a2, 0X7
/* 001578 0x808A68F8 44800000 */ mtc1	$zero, $f0
/* 001579 0x808A68FC 3C01BF80 */ lui	$at, 0xBF80
/* 001580 0x808A6900 44819000 */ mtc1	$at, $f18
/* 001581 0x808A6904 E60002CC */ swc1	$f0, 0X2CC($s0)
/* 001582 0x808A6908 E60002D4 */ swc1	$f0, 0X2D4($s0)
/* 001583 0x808A690C E6120074 */ swc1	$f18, 0X74($s0)
.L808A6910:
/* 001584 0x808A6910 24190014 */ li	$t9, 0X14
/* 001585 0x808A6914 A6190314 */ sh	$t9, 0X314($s0)
/* 001586 0x808A6918 86090314 */ lh	$t1, 0X314($s0)
/* 001587 0x808A691C A6000312 */ sh	$zero, 0X312($s0)
/* 001588 0x808A6920 02002025 */ move	$a0, $s0
/* 001589 0x808A6924 24054000 */ li	$a1, 0X4000
/* 001590 0x808A6928 240600C8 */ li	$a2, 0XC8
/* 001591 0x808A692C 00003825 */ move	$a3, $zero
/* 001592 0x808A6930 0C02F2DC */ jal	func_800BCB70
/* 001593 0x808A6934 AFA90010 */ sw	$t1, 0X10($sp)
/* 001594 0x808A6938 240A0001 */ li	$t2, 0X1
/* 001595 0x808A693C AFAA0038 */ sw	$t2, 0X38($sp)
.L808A6940:
/* 001596 0x808A6940 960B018C */ lhu	$t3, 0X18C($s0)
.L808A6944:
/* 001597 0x808A6944 A6000310 */ sh	$zero, 0X310($s0)
/* 001598 0x808A6948 316CFFFE */ andi	$t4, $t3, 0XFFFE
/* 001599 0x808A694C A60C018C */ sh	$t4, 0X18C($s0)
/* 001600 0x808A6950 920D01A3 */ lbu	$t5, 0X1A3($s0)
.L808A6954:
/* 001601 0x808A6954 31AE0001 */ andi	$t6, $t5, 0X1
/* 001602 0x808A6958 55C00006 */ bnezl	$t6, .L808A6974
/* 001603 0x808A695C 86190316 */ lh	$t9, 0X316($s0)
/* 001604 0x808A6960 920F01A0 */ lbu	$t7, 0X1A0($s0)
/* 001605 0x808A6964 31F80002 */ andi	$t8, $t7, 0X2
/* 001606 0x808A6968 5300002F */ beqzl	$t8, .L808A6A28
/* 001607 0x808A696C 8FA20038 */ lw	$v0, 0X38($sp)
/* 001608 0x808A6970 86190316 */ lh	$t9, 0X316($s0)
.L808A6974:
/* 001609 0x808A6974 920201A0 */ lbu	$v0, 0X1A0($s0)
/* 001610 0x808A6978 57200026 */ bnezl	$t9, .L808A6A14
/* 001611 0x808A697C 920901A2 */ lbu	$t1, 0X1A2($s0)
/* 001612 0x808A6980 86090314 */ lh	$t1, 0X314($s0)
/* 001613 0x808A6984 55200023 */ bnezl	$t1, .L808A6A14
/* 001614 0x808A6988 920901A2 */ lbu	$t1, 0X1A2($s0)
/* 001615 0x808A698C 860A0312 */ lh	$t2, 0X312($s0)
/* 001616 0x808A6990 304B0004 */ andi	$t3, $v0, 0X4
/* 001617 0x808A6994 5540001F */ bnezl	$t2, .L808A6A14
/* 001618 0x808A6998 920901A2 */ lbu	$t1, 0X1A2($s0)
/* 001619 0x808A699C 5560001D */ bnezl	$t3, .L808A6A14
/* 001620 0x808A69A0 920901A2 */ lbu	$t1, 0X1A2($s0)
/* 001621 0x808A69A4 920C00B7 */ lbu	$t4, 0XB7($s0)
/* 001622 0x808A69A8 8FA40044 */ lw	$a0, 0X44($sp)
/* 001623 0x808A69AC 3C190002 */ lui	$t9, 0x0002
/* 001624 0x808A69B0 11800017 */ beqz	$t4, .L808A6A10
/* 001625 0x808A69B4 0324C821 */ addu	$t9, $t9, $a0
/* 001626 0x808A69B8 8F398784 */ lw	$t9, -0X787C($t9)
/* 001627 0x808A69BC 2405FFF8 */ li	$a1, -0X8
/* 001628 0x808A69C0 0320F809 */ jalr	$t9
/* 001629 0x808A69C4 00000000 */ nop
/* 001630 0x808A69C8 8FA4003C */ lw	$a0, 0X3C($sp)
/* 001631 0x808A69CC 0C02E3B2 */ jal	func_800B8EC8
/* 001632 0x808A69D0 2405083E */ li	$a1, 0X83E
/* 001633 0x808A69D4 3C0140C0 */ lui	$at, 0x40C0
/* 001634 0x808A69D8 44812000 */ mtc1	$at, $f4
/* 001635 0x808A69DC 86070092 */ lh	$a3, 0X92($s0)
/* 001636 0x808A69E0 8FA40044 */ lw	$a0, 0X44($sp)
/* 001637 0x808A69E4 02002825 */ move	$a1, $s0
/* 001638 0x808A69E8 3C064080 */ lui	$a2, 0x4080
/* 001639 0x808A69EC 0C02E366 */ jal	func_800B8D98
/* 001640 0x808A69F0 E7A40010 */ swc1	$f4, 0X10($sp)
/* 001641 0x808A69F4 960F018C */ lhu	$t7, 0X18C($s0)
/* 001642 0x808A69F8 240E000A */ li	$t6, 0XA
/* 001643 0x808A69FC A60E0316 */ sh	$t6, 0X316($s0)
/* 001644 0x808A6A00 35F80001 */ ori	$t8, $t7, 0X1
/* 001645 0x808A6A04 A618018C */ sh	$t8, 0X18C($s0)
/* 001646 0x808A6A08 A600030E */ sh	$zero, 0X30E($s0)
/* 001647 0x808A6A0C 920201A0 */ lbu	$v0, 0X1A0($s0)
.L808A6A10:
/* 001648 0x808A6A10 920901A2 */ lbu	$t1, 0X1A2($s0)
.L808A6A14:
/* 001649 0x808A6A14 304BFFFD */ andi	$t3, $v0, 0XFFFD
/* 001650 0x808A6A18 A20B01A0 */ sb	$t3, 0X1A0($s0)
/* 001651 0x808A6A1C 312AFFFD */ andi	$t2, $t1, 0XFFFD
/* 001652 0x808A6A20 A20A01A2 */ sb	$t2, 0X1A2($s0)
/* 001653 0x808A6A24 8FA20038 */ lw	$v0, 0X38($sp)
.L808A6A28:
/* 001654 0x808A6A28 8FBF0034 */ lw	$ra, 0X34($sp)
/* 001655 0x808A6A2C 8FB00030 */ lw	$s0, 0X30($sp)
/* 001656 0x808A6A30 27BD0040 */ addiu	$sp, $sp, 0X40
/* 001657 0x808A6A34 03E00008 */ jr	$ra
/* 001658 0x808A6A38 00000000 */ nop

