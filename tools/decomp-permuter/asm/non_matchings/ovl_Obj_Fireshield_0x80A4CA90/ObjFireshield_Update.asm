glabel ObjFireshield_Update
/* 000579 0x80A4D39C 27BDFFB0 */ addiu	$sp, $sp, -0X50
/* 000580 0x80A4D3A0 AFB00020 */ sw	$s0, 0X20($sp)
/* 000581 0x80A4D3A4 00808025 */ move	$s0, $a0
/* 000582 0x80A4D3A8 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000583 0x80A4D3AC AFA50054 */ sw	$a1, 0X54($sp)
/* 000584 0x80A4D3B0 860E0014 */ lh	$t6, 0X14($s0)
/* 000585 0x80A4D3B4 31CF0001 */ andi	$t7, $t6, 0X1
/* 000586 0x80A4D3B8 AFAF0044 */ sw	$t7, 0X44($sp)
/* 000587 0x80A4D3BC 8602001C */ lh	$v0, 0X1C($s0)
/* 000588 0x80A4D3C0 3042007F */ andi	$v0, $v0, 0X7F
/* 000589 0x80A4D3C4 0C293473 */ jal	func_80A4D1CC
/* 000590 0x80A4D3C8 AFA20040 */ sw	$v0, 0X40($sp)
/* 000591 0x80A4D3CC 821801A7 */ lb	$t8, 0X1A7($s0)
/* 000592 0x80A4D3D0 8FA20040 */ lw	$v0, 0X40($sp)
/* 000593 0x80A4D3D4 2401FFE0 */ li	$at, -0X20
/* 000594 0x80A4D3D8 13000019 */ beqz	$t8, .L80A4D440
/* 000595 0x80A4D3DC 00412024 */ and	$a0, $v0, $at
/* 000596 0x80A4D3E0 00042143 */ sra	$a0, $a0, 5
/* 000597 0x80A4D3E4 00042080 */ sll	$a0, $a0, 2
/* 000598 0x80A4D3E8 3C0980A5 */ lui	$t1, %hi(D_80A4D884)
/* 000599 0x80A4D3EC 01244821 */ addu	$t1, $t1, $a0
/* 000600 0x80A4D3F0 8D29D884 */ lw	$t1, %lo(D_80A4D884)($t1)
/* 000601 0x80A4D3F4 3059001F */ andi	$t9, $v0, 0X1F
/* 000602 0x80A4D3F8 24080001 */ li	$t0, 0X1
/* 000603 0x80A4D3FC 03281804 */ sllv	$v1, $t0, $t9
/* 000604 0x80A4D400 01235024 */ and	$t2, $t1, $v1
/* 000605 0x80A4D404 11400008 */ beqz	$t2, .L80A4D428
/* 000606 0x80A4D408 3C0E80A5 */ lui	$t6, %hi(D_80A4D874)
/* 000607 0x80A4D40C 3C0B80A5 */ lui	$t3, %hi(D_80A4D874)
/* 000608 0x80A4D410 256BD874 */ addiu	$t3, $t3, %lo(D_80A4D874)
/* 000609 0x80A4D414 008B1021 */ addu	$v0, $a0, $t3
/* 000610 0x80A4D418 8C4C0000 */ lw	$t4, 0X0($v0)
/* 000611 0x80A4D41C 01836825 */ or	$t5, $t4, $v1
/* 000612 0x80A4D420 10000007 */ b	.L80A4D440
/* 000613 0x80A4D424 AC4D0000 */ sw	$t5, 0X0($v0)
.L80A4D428:
/* 000614 0x80A4D428 25CED874 */ addiu	$t6, $t6, %lo(D_80A4D874)
/* 000615 0x80A4D42C 008E1021 */ addu	$v0, $a0, $t6
/* 000616 0x80A4D430 8C4F0000 */ lw	$t7, 0X0($v0)
/* 000617 0x80A4D434 0060C027 */ nor	$t8, $v1, $zero
/* 000618 0x80A4D438 01F84024 */ and	$t0, $t7, $t8
/* 000619 0x80A4D43C AC480000 */ sw	$t0, 0X0($v0)
.L80A4D440:
/* 000620 0x80A4D440 861901A4 */ lh	$t9, 0X1A4($s0)
/* 000621 0x80A4D444 02002025 */ move	$a0, $s0
/* 000622 0x80A4D448 27290001 */ addiu	$t1, $t9, 0X1
/* 000623 0x80A4D44C 8E190190 */ lw	$t9, 0X190($s0)
/* 000624 0x80A4D450 A60901A4 */ sh	$t1, 0X1A4($s0)
/* 000625 0x80A4D454 0320F809 */ jalr	$t9
/* 000626 0x80A4D458 00000000 */ nop
/* 000627 0x80A4D45C 8E0B0190 */ lw	$t3, 0X190($s0)
/* 000628 0x80A4D460 3C0A80A5 */ lui	$t2, %hi(func_80A4CABC)
/* 000629 0x80A4D464 254ACABC */ addiu	$t2, $t2, %lo(func_80A4CABC)
/* 000630 0x80A4D468 554B0006 */ bnel	$t2, $t3, .L80A4D484
/* 000631 0x80A4D46C 92020154 */ lbu	$v0, 0X154($s0)
/* 000632 0x80A4D470 920C0154 */ lbu	$t4, 0X154($s0)
/* 000633 0x80A4D474 318DFFFD */ andi	$t5, $t4, 0XFFFD
/* 000634 0x80A4D478 1000000E */ b	.L80A4D4B4
/* 000635 0x80A4D47C A20D0154 */ sb	$t5, 0X154($s0)
/* 000636 0x80A4D480 92020154 */ lbu	$v0, 0X154($s0)
.L80A4D484:
/* 000637 0x80A4D484 02002825 */ move	$a1, $s0
/* 000638 0x80A4D488 3C0640A0 */ lui	$a2, 0x40A0
/* 000639 0x80A4D48C 304E0002 */ andi	$t6, $v0, 0X2
/* 000640 0x80A4D490 11C00008 */ beqz	$t6, .L80A4D4B4
/* 000641 0x80A4D494 304FFFFD */ andi	$t7, $v0, 0XFFFD
/* 000642 0x80A4D498 3C013F80 */ lui	$at, 0x3F80
/* 000643 0x80A4D49C 44812000 */ mtc1	$at, $f4
/* 000644 0x80A4D4A0 A20F0154 */ sb	$t7, 0X154($s0)
/* 000645 0x80A4D4A4 86070092 */ lh	$a3, 0X92($s0)
/* 000646 0x80A4D4A8 8FA40054 */ lw	$a0, 0X54($sp)
/* 000647 0x80A4D4AC 0C02E366 */ jal	func_800B8D98
/* 000648 0x80A4D4B0 E7A40010 */ swc1	$f4, 0X10($sp)
.L80A4D4B4:
/* 000649 0x80A4D4B4 02002025 */ move	$a0, $s0
/* 000650 0x80A4D4B8 0C29338A */ jal	func_80A4CE28
/* 000651 0x80A4D4BC 8FA50054 */ lw	$a1, 0X54($sp)
/* 000652 0x80A4D4C0 8FA30044 */ lw	$v1, 0X44($sp)
/* 000653 0x80A4D4C4 3C01C310 */ lui	$at, 0xC310
/* 000654 0x80A4D4C8 02002025 */ move	$a0, $s0
/* 000655 0x80A4D4CC 10600005 */ beqz	$v1, .L80A4D4E4
/* 000656 0x80A4D4D0 240520B3 */ li	$a1, 0X20B3
/* 000657 0x80A4D4D4 3C014310 */ lui	$at, 0x4310
/* 000658 0x80A4D4D8 44811000 */ mtc1	$at, $f2
/* 000659 0x80A4D4DC 10000004 */ b	.L80A4D4F0
/* 000660 0x80A4D4E0 3C013F80 */ lui	$at, 0x3F80
.L80A4D4E4:
/* 000661 0x80A4D4E4 44811000 */ mtc1	$at, $f2
/* 000662 0x80A4D4E8 00000000 */ nop
/* 000663 0x80A4D4EC 3C013F80 */ lui	$at, 0x3F80
.L80A4D4F0:
/* 000664 0x80A4D4F0 44813000 */ mtc1	$at, $f6
/* 000665 0x80A4D4F4 C6080198 */ lwc1	$f8, 0X198($s0)
/* 000666 0x80A4D4F8 3C01437F */ lui	$at, 0x437F
/* 000667 0x80A4D4FC C6000198 */ lwc1	$f0, 0X198($s0)
/* 000668 0x80A4D500 46083281 */ sub.s	$f10, $f6, $f8
/* 000669 0x80A4D504 44813000 */ mtc1	$at, $f6
/* 000670 0x80A4D508 C612000C */ lwc1	$f18, 0XC($s0)
/* 000671 0x80A4D50C 24080001 */ li	$t0, 0X1
/* 000672 0x80A4D510 460A1402 */ mul.s	$f16, $f2, $f10
/* 000673 0x80A4D514 3C014F00 */ lui	$at, 0x4F00
/* 000674 0x80A4D518 46060202 */ mul.s	$f8, $f0, $f6
/* 000675 0x80A4D51C 46128100 */ add.s	$f4, $f16, $f18
/* 000676 0x80A4D520 4458F800 */ cfc1	$t8, $31
/* 000677 0x80A4D524 44C8F800 */ ctc1	$t0, $31
/* 000678 0x80A4D528 E6040028 */ swc1	$f4, 0X28($s0)
/* 000679 0x80A4D52C 460042A4 */ cvt.w.s	$f10, $f8
/* 000680 0x80A4D530 4448F800 */ cfc1	$t0, $31
/* 000681 0x80A4D534 00000000 */ nop
/* 000682 0x80A4D538 31080078 */ andi	$t0, $t0, 0X78
/* 000683 0x80A4D53C 51000013 */ beqzl	$t0, .L80A4D58C
/* 000684 0x80A4D540 44085000 */ mfc1	$t0, $f10
/* 000685 0x80A4D544 44815000 */ mtc1	$at, $f10
/* 000686 0x80A4D548 24080001 */ li	$t0, 0X1
/* 000687 0x80A4D54C 460A4281 */ sub.s	$f10, $f8, $f10
/* 000688 0x80A4D550 44C8F800 */ ctc1	$t0, $31
/* 000689 0x80A4D554 00000000 */ nop
/* 000690 0x80A4D558 460052A4 */ cvt.w.s	$f10, $f10
/* 000691 0x80A4D55C 4448F800 */ cfc1	$t0, $31
/* 000692 0x80A4D560 00000000 */ nop
/* 000693 0x80A4D564 31080078 */ andi	$t0, $t0, 0X78
/* 000694 0x80A4D568 15000005 */ bnez	$t0, .L80A4D580
/* 000695 0x80A4D56C 00000000 */ nop
/* 000696 0x80A4D570 44085000 */ mfc1	$t0, $f10
/* 000697 0x80A4D574 3C018000 */ lui	$at, 0x8000
/* 000698 0x80A4D578 10000007 */ b	.L80A4D598
/* 000699 0x80A4D57C 01014025 */ or	$t0, $t0, $at
.L80A4D580:
/* 000700 0x80A4D580 10000005 */ b	.L80A4D598
/* 000701 0x80A4D584 2408FFFF */ li	$t0, -0X1
/* 000702 0x80A4D588 44085000 */ mfc1	$t0, $f10
.L80A4D58C:
/* 000703 0x80A4D58C 00000000 */ nop
/* 000704 0x80A4D590 0500FFFB */ bltz	$t0, .L80A4D580
/* 000705 0x80A4D594 00000000 */ nop
.L80A4D598:
/* 000706 0x80A4D598 A20801A6 */ sb	$t0, 0X1A6($s0)
/* 000707 0x80A4D59C 3C0180A5 */ lui	$at, %hi(D_80A4D8B8)
/* 000708 0x80A4D5A0 44D8F800 */ ctc1	$t8, $31
/* 000709 0x80A4D5A4 C430D8B8 */ lwc1	$f16, %lo(D_80A4D8B8)($at)
/* 000710 0x80A4D5A8 3C0142A0 */ lui	$at, 0x42A0
/* 000711 0x80A4D5AC 4600803E */ c.le.s	$f16, $f0
/* 000712 0x80A4D5B0 00000000 */ nop
/* 000713 0x80A4D5B4 45020037 */ bc1fl .L80A4D694
/* 000714 0x80A4D5B8 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000715 0x80A4D5BC 44819000 */ mtc1	$at, $f18
/* 000716 0x80A4D5C0 8FA90054 */ lw	$t1, 0X54($sp)
/* 000717 0x80A4D5C4 46120102 */ mul.s	$f4, $f0, $f18
/* 000718 0x80A4D5C8 8D221CCC */ lw	$v0, 0X1CCC($t1)
/* 000719 0x80A4D5CC 4600218D */ trunc.w.s	$f6, $f4
/* 000720 0x80A4D5D0 440A3000 */ mfc1	$t2, $f6
/* 000721 0x80A4D5D4 1060000B */ beqz	$v1, .L80A4D604
/* 000722 0x80A4D5D8 A60A0186 */ sh	$t2, 0X186($s0)
/* 000723 0x80A4D5DC C608000C */ lwc1	$f8, 0XC($s0)
/* 000724 0x80A4D5E0 C60A0028 */ lwc1	$f10, 0X28($s0)
/* 000725 0x80A4D5E4 860D0186 */ lh	$t5, 0X186($s0)
/* 000726 0x80A4D5E8 460A4401 */ sub.s	$f16, $f8, $f10
/* 000727 0x80A4D5EC 4600848D */ trunc.w.s	$f18, $f16
/* 000728 0x80A4D5F0 440C9000 */ mfc1	$t4, $f18
/* 000729 0x80A4D5F4 00000000 */ nop
/* 000730 0x80A4D5F8 018D7023 */ subu	$t6, $t4, $t5
/* 000731 0x80A4D5FC 10000008 */ b	.L80A4D620
/* 000732 0x80A4D600 A60E0188 */ sh	$t6, 0X188($s0)
.L80A4D604:
/* 000733 0x80A4D604 C604000C */ lwc1	$f4, 0XC($s0)
/* 000734 0x80A4D608 C6060028 */ lwc1	$f6, 0X28($s0)
/* 000735 0x80A4D60C 46062201 */ sub.s	$f8, $f4, $f6
/* 000736 0x80A4D610 4600428D */ trunc.w.s	$f10, $f8
/* 000737 0x80A4D614 44185000 */ mfc1	$t8, $f10
/* 000738 0x80A4D618 00000000 */ nop
/* 000739 0x80A4D61C A6180188 */ sh	$t8, 0X188($s0)
.L80A4D620:
/* 000740 0x80A4D620 0C02E404 */ jal	func_800B9010
/* 000741 0x80A4D624 AFA20034 */ sw	$v0, 0X34($sp)
/* 000742 0x80A4D628 8FA20034 */ lw	$v0, 0X34($sp)
/* 000743 0x80A4D62C 24010001 */ li	$at, 0X1
/* 000744 0x80A4D630 24090004 */ li	$t1, 0X4
/* 000745 0x80A4D634 9048014B */ lbu	$t0, 0X14B($v0)
/* 000746 0x80A4D638 24190001 */ li	$t9, 0X1
/* 000747 0x80A4D63C 02002025 */ move	$a0, $s0
/* 000748 0x80A4D640 15010004 */ bne	$t0, $at, .L80A4D654
/* 000749 0x80A4D644 26050144 */ addiu	$a1, $s0, 0X144
/* 000750 0x80A4D648 A2000161 */ sb	$zero, 0X161($s0)
/* 000751 0x80A4D64C 10000003 */ b	.L80A4D65C
/* 000752 0x80A4D650 A2000160 */ sb	$zero, 0X160($s0)
.L80A4D654:
/* 000753 0x80A4D654 A2090161 */ sb	$t1, 0X161($s0)
/* 000754 0x80A4D658 A2190160 */ sb	$t9, 0X160($s0)
.L80A4D65C:
/* 000755 0x80A4D65C 0C039F7E */ jal	Collision_CylinderMoveToActor
/* 000756 0x80A4D660 AFA50028 */ sw	$a1, 0X28($sp)
/* 000757 0x80A4D664 8FA40054 */ lw	$a0, 0X54($sp)
/* 000758 0x80A4D668 3C010001 */ lui	$at, 0x0001
/* 000759 0x80A4D66C 34218884 */ ori	$at, $at, 0X8884
/* 000760 0x80A4D670 00812821 */ addu	$a1, $a0, $at
/* 000761 0x80A4D674 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000762 0x80A4D678 0C038956 */ jal	Collision_AddAT
/* 000763 0x80A4D67C 8FA60028 */ lw	$a2, 0X28($sp)
/* 000764 0x80A4D680 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000765 0x80A4D684 8FA40054 */ lw	$a0, 0X54($sp)
/* 000766 0x80A4D688 0C038A4A */ jal	Collision_AddOT
/* 000767 0x80A4D68C 8FA60028 */ lw	$a2, 0X28($sp)
/* 000768 0x80A4D690 8FBF0024 */ lw	$ra, 0X24($sp)
.L80A4D694:
/* 000769 0x80A4D694 8FB00020 */ lw	$s0, 0X20($sp)
/* 000770 0x80A4D698 27BD0050 */ addiu	$sp, $sp, 0X50
/* 000771 0x80A4D69C 03E00008 */ jr	$ra
/* 000772 0x80A4D6A0 00000000 */ nop


.section .late_rodata

glabel D_80A4D8B8
/* 000906 0x80A4D8B8 */ .word	0x3F333333
/* 000907 0x80A4D8BC */ .word	0x00000000
