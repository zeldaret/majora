glabel func_80ACA840
/* 000616 0x80ACA840 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000617 0x80ACA844 AFB00018 */ sw	$s0, 0X18($sp)
/* 000618 0x80ACA848 00808025 */ move	$s0, $a0
/* 000619 0x80ACA84C AFBF001C */ sw	$ra, 0X1C($sp)
/* 000620 0x80ACA850 00A03025 */ move	$a2, $a1
/* 000621 0x80ACA854 84CE00A4 */ lh	$t6, 0XA4($a2)
/* 000622 0x80ACA858 24010061 */ li	$at, 0X61
/* 000623 0x80ACA85C 3C0F801C */ lui	$t7, %hi(D_801C20A5)
/* 000624 0x80ACA860 15C10008 */ bne	$t6, $at, .L80ACA884
/* 000625 0x80ACA864 00000000 */ nop
/* 000626 0x80ACA868 91EF20A5 */ lbu	$t7, %lo(D_801C20A5)($t7)
/* 000627 0x80ACA86C 3C05801F */ lui	$a1, %hi(gSaveContext)
/* 000628 0x80ACA870 24A5F670 */ addiu	$a1, $a1, %lo(gSaveContext)
/* 000629 0x80ACA874 00AFC021 */ addu	$t8, $a1, $t7
/* 000630 0x80ACA878 93190070 */ lbu	$t9, 0X70($t8)
/* 000631 0x80ACA87C 2401002D */ li	$at, 0X2D
/* 000632 0x80ACA880 13210045 */ beq	$t9, $at, .L80ACA998
.L80ACA884:
/* 000633 0x80ACA884 3C05801F */ lui	$a1, %hi(gSaveContext)
/* 000634 0x80ACA888 24A5F670 */ addiu	$a1, $a1, %lo(gSaveContext)
/* 000635 0x80ACA88C 94A8000C */ lhu	$t0, 0XC($a1)
/* 000636 0x80ACA890 3C014F80 */ lui	$at, 0x4F80
/* 000637 0x80ACA894 44882000 */ mtc1	$t0, $f4
/* 000638 0x80ACA898 05010004 */ bgez	$t0, .L80ACA8AC
/* 000639 0x80ACA89C 46802020 */ cvt.s.w	$f0, $f4
/* 000640 0x80ACA8A0 44813000 */ mtc1	$at, $f6
/* 000641 0x80ACA8A4 00000000 */ nop
/* 000642 0x80ACA8A8 46060000 */ add.s	$f0, $f0, $f6
.L80ACA8AC:
/* 000643 0x80ACA8AC 3C0139C0 */ lui	$at, 0x39C0
/* 000644 0x80ACA8B0 44814000 */ mtc1	$at, $f8
/* 000645 0x80ACA8B4 3C013CB4 */ lui	$at, 0x3CB4
/* 000646 0x80ACA8B8 44819000 */ mtc1	$at, $f18
/* 000647 0x80ACA8BC 46080282 */ mul.s	$f10, $f0, $f8
/* 000648 0x80ACA8C0 2401003C */ li	$at, 0X3C
/* 000649 0x80ACA8C4 90A20F37 */ lbu	$v0, 0XF37($a1)
/* 000650 0x80ACA8C8 46120102 */ mul.s	$f4, $f0, $f18
/* 000651 0x80ACA8CC 304B0001 */ andi	$t3, $v0, 0X1
/* 000652 0x80ACA8D0 304C0002 */ andi	$t4, $v0, 0X2
/* 000653 0x80ACA8D4 4600540D */ trunc.w.s	$f16, $f10
/* 000654 0x80ACA8D8 4600218D */ trunc.w.s	$f6, $f4
/* 000655 0x80ACA8DC 44038000 */ mfc1	$v1, $f16
/* 000656 0x80ACA8E0 44043000 */ mfc1	$a0, $f6
/* 000657 0x80ACA8E4 00031C00 */ sll	$v1, $v1, 16
/* 000658 0x80ACA8E8 00031C03 */ sra	$v1, $v1, 16
/* 000659 0x80ACA8EC 0081001A */ div	$zero, $a0, $at
/* 000660 0x80ACA8F0 00002010 */ mfhi	$a0
/* 000661 0x80ACA8F4 00042400 */ sll	$a0, $a0, 16
/* 000662 0x80ACA8F8 1160000F */ beqz	$t3, .L80ACA938
/* 000663 0x80ACA8FC 00042403 */ sra	$a0, $a0, 16
/* 000664 0x80ACA900 11800004 */ beqz	$t4, .L80ACA914
/* 000665 0x80ACA904 3C0D80AD */ lui	$t5, %hi(func_80ACA7C4)
/* 000666 0x80ACA908 25ADA7C4 */ addiu	$t5, $t5, %lo(func_80ACA7C4)
/* 000667 0x80ACA90C 10000022 */ b	.L80ACA998
/* 000668 0x80ACA910 AE0D0144 */ sw	$t5, 0X144($s0)
.L80ACA914:
/* 000669 0x80ACA914 860E0014 */ lh	$t6, 0X14($s0)
/* 000670 0x80ACA918 546E0020 */ bnel	$v1, $t6, .L80ACA99C
/* 000671 0x80ACA91C 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000672 0x80ACA920 860F0016 */ lh	$t7, 0X16($s0)
/* 000673 0x80ACA924 34580002 */ ori	$t8, $v0, 0X2
/* 000674 0x80ACA928 548F001C */ bnel	$a0, $t7, .L80ACA99C
/* 000675 0x80ACA92C 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000676 0x80ACA930 10000019 */ b	.L80ACA998
/* 000677 0x80ACA934 A0B80F37 */ sb	$t8, 0XF37($a1)
.L80ACA938:
/* 000678 0x80ACA938 86190014 */ lh	$t9, 0X14($s0)
/* 000679 0x80ACA93C 54790017 */ bnel	$v1, $t9, .L80ACA99C
/* 000680 0x80ACA940 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000681 0x80ACA944 86080016 */ lh	$t0, 0X16($s0)
/* 000682 0x80ACA948 14880013 */ bne	$a0, $t0, .L80ACA998
/* 000683 0x80ACA94C 00C02025 */ move	$a0, $a2
/* 000684 0x80ACA950 0C05A433 */ jal	func_801690CC
/* 000685 0x80ACA954 AFA60024 */ sw	$a2, 0X24($sp)
/* 000686 0x80ACA958 1440000F */ bnez	$v0, .L80ACA998
/* 000687 0x80ACA95C 8FA40024 */ lw	$a0, 0X24($sp)
/* 000688 0x80ACA960 02002825 */ move	$a1, $s0
/* 000689 0x80ACA964 0C02DCA6 */ jal	func_800B7298
/* 000690 0x80ACA968 24060007 */ li	$a2, 0X7
/* 000691 0x80ACA96C 8605001C */ lh	$a1, 0X1C($s0)
/* 000692 0x80ACA970 8FA40024 */ lw	$a0, 0X24($sp)
/* 000693 0x80ACA974 00003025 */ move	$a2, $zero
/* 000694 0x80ACA978 30A51FE0 */ andi	$a1, $a1, 0X1FE0
/* 000695 0x80ACA97C 00052943 */ sra	$a1, $a1, 5
/* 000696 0x80ACA980 24A51883 */ addiu	$a1, $a1, 0X1883
/* 000697 0x80ACA984 0C05462C */ jal	func_801518B0
/* 000698 0x80ACA988 30A5FFFF */ andi	$a1, $a1, 0XFFFF
/* 000699 0x80ACA98C 3C0980AD */ lui	$t1, %hi(func_80ACA724)
/* 000700 0x80ACA990 2529A724 */ addiu	$t1, $t1, %lo(func_80ACA724)
/* 000701 0x80ACA994 AE090144 */ sw	$t1, 0X144($s0)
.L80ACA998:
/* 000702 0x80ACA998 8FBF001C */ lw	$ra, 0X1C($sp)
.L80ACA99C:
/* 000703 0x80ACA99C 8FB00018 */ lw	$s0, 0X18($sp)
/* 000704 0x80ACA9A0 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000705 0x80ACA9A4 03E00008 */ jr	$ra
/* 000706 0x80ACA9A8 00000000 */ nop

