glabel func_80A1BD80
/* 000620 0x80A1BD80 27BDFF28 */ addiu	$sp, $sp, -0XD8
/* 000621 0x80A1BD84 AFB5008C */ sw	$s5, 0X8C($sp)
/* 000622 0x80A1BD88 AFB40088 */ sw	$s4, 0X88($sp)
/* 000623 0x80A1BD8C 0080A025 */ move	$s4, $a0
/* 000624 0x80A1BD90 00A0A825 */ move	$s5, $a1
/* 000625 0x80A1BD94 AFBF009C */ sw	$ra, 0X9C($sp)
/* 000626 0x80A1BD98 AFBE0098 */ sw	$fp, 0X98($sp)
/* 000627 0x80A1BD9C AFB70094 */ sw	$s7, 0X94($sp)
/* 000628 0x80A1BDA0 AFB60090 */ sw	$s6, 0X90($sp)
/* 000629 0x80A1BDA4 AFB30084 */ sw	$s3, 0X84($sp)
/* 000630 0x80A1BDA8 AFB20080 */ sw	$s2, 0X80($sp)
/* 000631 0x80A1BDAC AFB1007C */ sw	$s1, 0X7C($sp)
/* 000632 0x80A1BDB0 AFB00078 */ sw	$s0, 0X78($sp)
/* 000633 0x80A1BDB4 F7BE0070 */ sdc1	$f30, 0X70($sp)
/* 000634 0x80A1BDB8 F7BC0068 */ sdc1	$f28, 0X68($sp)
/* 000635 0x80A1BDBC F7BA0060 */ sdc1	$f26, 0X60($sp)
/* 000636 0x80A1BDC0 F7B80058 */ sdc1	$f24, 0X58($sp)
/* 000637 0x80A1BDC4 F7B60050 */ sdc1	$f22, 0X50($sp)
/* 000638 0x80A1BDC8 F7B40048 */ sdc1	$f20, 0X48($sp)
/* 000639 0x80A1BDCC C6840024 */ lwc1	$f4, 0X24($s4)
/* 000640 0x80A1BDD0 3C014000 */ lui	$at, 0x4000
/* 000641 0x80A1BDD4 4481F000 */ mtc1	$at, $f30
/* 000642 0x80A1BDD8 E7A400C8 */ swc1	$f4, 0XC8($sp)
/* 000643 0x80A1BDDC C6860028 */ lwc1	$f6, 0X28($s4)
/* 000644 0x80A1BDE0 3C014100 */ lui	$at, 0x4100
/* 000645 0x80A1BDE4 4481E000 */ mtc1	$at, $f28
/* 000646 0x80A1BDE8 3C0180A2 */ lui	$at, %hi(D_80A1D458)
/* 000647 0x80A1BDEC C43AD458 */ lwc1	$f26, %lo(D_80A1D458)($at)
/* 000648 0x80A1BDF0 E7A600CC */ swc1	$f6, 0XCC($sp)
/* 000649 0x80A1BDF4 C688002C */ lwc1	$f8, 0X2C($s4)
/* 000650 0x80A1BDF8 3C0141A0 */ lui	$at, 0x41A0
/* 000651 0x80A1BDFC 4481C000 */ mtc1	$at, $f24
/* 000652 0x80A1BE00 3C0180A2 */ lui	$at, %hi(D_80A1D45C)
/* 000653 0x80A1BE04 3C1E0600 */ lui	$fp, 0x0600
/* 000654 0x80A1BE08 27DE15B0 */ addiu	$fp, $fp, 0X15B0
/* 000655 0x80A1BE0C C436D45C */ lwc1	$f22, %lo(D_80A1D45C)($at)
/* 000656 0x80A1BE10 00009025 */ move	$s2, $zero
/* 000657 0x80A1BE14 00008825 */ move	$s1, $zero
/* 000658 0x80A1BE18 27B700B0 */ addiu	$s7, $sp, 0XB0
/* 000659 0x80A1BE1C 27B600C8 */ addiu	$s6, $sp, 0XC8
/* 000660 0x80A1BE20 27B300BC */ addiu	$s3, $sp, 0XBC
/* 000661 0x80A1BE24 E7A800D0 */ swc1	$f8, 0XD0($sp)
.L80A1BE28:
/* 000662 0x80A1BE28 0C021BF7 */ jal	randZeroOne
/* 000663 0x80A1BE2C 00000000 */ nop
/* 000664 0x80A1BE30 461C0282 */ mul.s	$f10, $f0, $f28
/* 000665 0x80A1BE34 0C021BF7 */ jal	randZeroOne
/* 000666 0x80A1BE38 461E5500 */ add.s	$f20, $f10, $f30
/* 000667 0x80A1BE3C 46160402 */ mul.s	$f16, $f0, $f22
/* 000668 0x80A1BE40 4600848D */ trunc.w.s	$f18, $f16
/* 000669 0x80A1BE44 440F9000 */ mfc1	$t7, $f18
/* 000670 0x80A1BE48 00000000 */ nop
/* 000671 0x80A1BE4C 01F12021 */ addu	$a0, $t7, $s1
/* 000672 0x80A1BE50 00042400 */ sll	$a0, $a0, 16
/* 000673 0x80A1BE54 0C03FB61 */ jal	Math_Sins
/* 000674 0x80A1BE58 00042403 */ sra	$a0, $a0, 16
/* 000675 0x80A1BE5C 46140102 */ mul.s	$f4, $f0, $f20
/* 000676 0x80A1BE60 0C021BF7 */ jal	randZeroOne
/* 000677 0x80A1BE64 E7A400BC */ swc1	$f4, 0XBC($sp)
/* 000678 0x80A1BE68 46180182 */ mul.s	$f6, $f0, $f24
/* 000679 0x80A1BE6C 0C021BF7 */ jal	randZeroOne
/* 000680 0x80A1BE70 E7A600C0 */ swc1	$f6, 0XC0($sp)
/* 000681 0x80A1BE74 46160202 */ mul.s	$f8, $f0, $f22
/* 000682 0x80A1BE78 4600428D */ trunc.w.s	$f10, $f8
/* 000683 0x80A1BE7C 44195000 */ mfc1	$t9, $f10
/* 000684 0x80A1BE80 00000000 */ nop
/* 000685 0x80A1BE84 03312021 */ addu	$a0, $t9, $s1
/* 000686 0x80A1BE88 00042400 */ sll	$a0, $a0, 16
/* 000687 0x80A1BE8C 0C03FB51 */ jal	Math_Coss
/* 000688 0x80A1BE90 00042403 */ sra	$a0, $a0, 16
/* 000689 0x80A1BE94 46140402 */ mul.s	$f16, $f0, $f20
/* 000690 0x80A1BE98 C7B200BC */ lwc1	$f18, 0XBC($sp)
/* 000691 0x80A1BE9C 461A9102 */ mul.s	$f4, $f18, $f26
/* 000692 0x80A1BEA0 E7B000C4 */ swc1	$f16, 0XC4($sp)
/* 000693 0x80A1BEA4 0C021BF7 */ jal	randZeroOne
/* 000694 0x80A1BEA8 E7A400B0 */ swc1	$f4, 0XB0($sp)
/* 000695 0x80A1BEAC 3C0140A0 */ lui	$at, 0x40A0
/* 000696 0x80A1BEB0 44813000 */ mtc1	$at, $f6
/* 000697 0x80A1BEB4 C7B200C4 */ lwc1	$f18, 0XC4($sp)
/* 000698 0x80A1BEB8 3C0180A2 */ lui	$at, %hi(D_80A1D460)
/* 000699 0x80A1BEBC 46060202 */ mul.s	$f8, $f0, $f6
/* 000700 0x80A1BEC0 C42AD460 */ lwc1	$f10, %lo(D_80A1D460)($at)
/* 000701 0x80A1BEC4 02602025 */ move	$a0, $s3
/* 000702 0x80A1BEC8 461A9102 */ mul.s	$f4, $f18, $f26
/* 000703 0x80A1BECC 02C02825 */ move	$a1, $s6
/* 000704 0x80A1BED0 02603025 */ move	$a2, $s3
/* 000705 0x80A1BED4 460A4400 */ add.s	$f16, $f8, $f10
/* 000706 0x80A1BED8 E7A400B8 */ swc1	$f4, 0XB8($sp)
/* 000707 0x80A1BEDC 0C03FD6F */ jal	Math_Vec3f_Sum
/* 000708 0x80A1BEE0 E7B000B4 */ swc1	$f16, 0XB4($sp)
/* 000709 0x80A1BEE4 0C021BF7 */ jal	randZeroOne
/* 000710 0x80A1BEE8 00000000 */ nop
/* 000711 0x80A1BEEC 3C0180A2 */ lui	$at, %hi(D_80A1D464)
/* 000712 0x80A1BEF0 C426D464 */ lwc1	$f6, %lo(D_80A1D464)($at)
/* 000713 0x80A1BEF4 24100020 */ li	$s0, 0X20
/* 000714 0x80A1BEF8 4606003C */ c.lt.s	$f0, $f6
/* 000715 0x80A1BEFC 00000000 */ nop
/* 000716 0x80A1BF00 45000003 */ bc1f .L80A1BF10
/* 000717 0x80A1BF04 00000000 */ nop
/* 000718 0x80A1BF08 10000001 */ b	.L80A1BF10
/* 000719 0x80A1BF0C 24100040 */ li	$s0, 0X40
.L80A1BF10:
/* 000720 0x80A1BF10 0C021BF7 */ jal	randZeroOne
/* 000721 0x80A1BF14 00000000 */ nop
/* 000722 0x80A1BF18 46180202 */ mul.s	$f8, $f0, $f24
/* 000723 0x80A1BF1C 3C0180A2 */ lui	$at, %hi(D_80A1D468)
/* 000724 0x80A1BF20 C42AD468 */ lwc1	$f10, %lo(D_80A1D468)($at)
/* 000725 0x80A1BF24 2408FF10 */ li	$t0, -0XF0
/* 000726 0x80A1BF28 24090028 */ li	$t1, 0X28
/* 000727 0x80A1BF2C 240C002A */ li	$t4, 0X2A
/* 000728 0x80A1BF30 240DFFFF */ li	$t5, -0X1
/* 000729 0x80A1BF34 460A4400 */ add.s	$f16, $f8, $f10
/* 000730 0x80A1BF38 240E0165 */ li	$t6, 0X165
/* 000731 0x80A1BF3C AFAE0038 */ sw	$t6, 0X38($sp)
/* 000732 0x80A1BF40 AFAD0034 */ sw	$t5, 0X34($sp)
/* 000733 0x80A1BF44 4600848D */ trunc.w.s	$f18, $f16
/* 000734 0x80A1BF48 AFAC0030 */ sw	$t4, 0X30($sp)
/* 000735 0x80A1BF4C AFA90018 */ sw	$t1, 0X18($sp)
/* 000736 0x80A1BF50 AFA80010 */ sw	$t0, 0X10($sp)
/* 000737 0x80A1BF54 440B9000 */ mfc1	$t3, $f18
/* 000738 0x80A1BF58 02A02025 */ move	$a0, $s5
/* 000739 0x80A1BF5C 02602825 */ move	$a1, $s3
/* 000740 0x80A1BF60 02E03025 */ move	$a2, $s7
/* 000741 0x80A1BF64 02603825 */ move	$a3, $s3
/* 000742 0x80A1BF68 AFB00014 */ sw	$s0, 0X14($sp)
/* 000743 0x80A1BF6C AFA0001C */ sw	$zero, 0X1C($sp)
/* 000744 0x80A1BF70 AFA00020 */ sw	$zero, 0X20($sp)
/* 000745 0x80A1BF74 AFA00028 */ sw	$zero, 0X28($sp)
/* 000746 0x80A1BF78 AFA0002C */ sw	$zero, 0X2C($sp)
/* 000747 0x80A1BF7C AFBE003C */ sw	$fp, 0X3C($sp)
/* 000748 0x80A1BF80 0C02CA04 */ jal	EffectSS_SpawnShard
/* 000749 0x80A1BF84 AFAB0024 */ sw	$t3, 0X24($sp)
/* 000750 0x80A1BF88 26520001 */ addiu	$s2, $s2, 0X1
/* 000751 0x80A1BF8C 26311249 */ addiu	$s1, $s1, 0X1249
/* 000752 0x80A1BF90 00118C00 */ sll	$s1, $s1, 16
/* 000753 0x80A1BF94 2A41000E */ slti	$at, $s2, 0XE
/* 000754 0x80A1BF98 1420FFA3 */ bnez	$at, .L80A1BE28
/* 000755 0x80A1BF9C 00118C03 */ sra	$s1, $s1, 16
/* 000756 0x80A1BFA0 C6840028 */ lwc1	$f4, 0X28($s4)
/* 000757 0x80A1BFA4 C686008C */ lwc1	$f6, 0X8C($s4)
/* 000758 0x80A1BFA8 3C014170 */ lui	$at, 0x4170
/* 000759 0x80A1BFAC 4481B000 */ mtc1	$at, $f22
/* 000760 0x80A1BFB0 46062200 */ add.s	$f8, $f4, $f6
/* 000761 0x80A1BFB4 3C0145E1 */ lui	$at, 0x45E1
/* 000762 0x80A1BFB8 4481A000 */ mtc1	$at, $f20
/* 000763 0x80A1BFBC 00008825 */ move	$s1, $zero
/* 000764 0x80A1BFC0 E7A800C0 */ swc1	$f8, 0XC0($sp)
/* 000765 0x80A1BFC4 00009025 */ move	$s2, $zero
/* 000766 0x80A1BFC8 24100004 */ li	$s0, 0X4
.L80A1BFCC:
/* 000767 0x80A1BFCC 0C021BF7 */ jal	randZeroOne
/* 000768 0x80A1BFD0 00000000 */ nop
/* 000769 0x80A1BFD4 46140282 */ mul.s	$f10, $f0, $f20
/* 000770 0x80A1BFD8 4600540D */ trunc.w.s	$f16, $f10
/* 000771 0x80A1BFDC 44188000 */ mfc1	$t8, $f16
/* 000772 0x80A1BFE0 00000000 */ nop
/* 000773 0x80A1BFE4 03112021 */ addu	$a0, $t8, $s1
/* 000774 0x80A1BFE8 00042400 */ sll	$a0, $a0, 16
/* 000775 0x80A1BFEC 0C03FB61 */ jal	Math_Sins
/* 000776 0x80A1BFF0 00042403 */ sra	$a0, $a0, 16
/* 000777 0x80A1BFF4 46160482 */ mul.s	$f18, $f0, $f22
/* 000778 0x80A1BFF8 C6840024 */ lwc1	$f4, 0X24($s4)
/* 000779 0x80A1BFFC 46049180 */ add.s	$f6, $f18, $f4
/* 000780 0x80A1C000 0C021BF7 */ jal	randZeroOne
/* 000781 0x80A1C004 E7A600BC */ swc1	$f6, 0XBC($sp)
/* 000782 0x80A1C008 46140202 */ mul.s	$f8, $f0, $f20
/* 000783 0x80A1C00C 4600428D */ trunc.w.s	$f10, $f8
/* 000784 0x80A1C010 44085000 */ mfc1	$t0, $f10
/* 000785 0x80A1C014 00000000 */ nop
/* 000786 0x80A1C018 01112021 */ addu	$a0, $t0, $s1
/* 000787 0x80A1C01C 00042400 */ sll	$a0, $a0, 16
/* 000788 0x80A1C020 0C03FB51 */ jal	Math_Coss
/* 000789 0x80A1C024 00042403 */ sra	$a0, $a0, 16
/* 000790 0x80A1C028 46160402 */ mul.s	$f16, $f0, $f22
/* 000791 0x80A1C02C C692002C */ lwc1	$f18, 0X2C($s4)
/* 000792 0x80A1C030 240900C8 */ li	$t1, 0XC8
/* 000793 0x80A1C034 AFA90014 */ sw	$t1, 0X14($sp)
/* 000794 0x80A1C038 AFA00010 */ sw	$zero, 0X10($sp)
/* 000795 0x80A1C03C 02A02025 */ move	$a0, $s5
/* 000796 0x80A1C040 02602825 */ move	$a1, $s3
/* 000797 0x80A1C044 46128100 */ add.s	$f4, $f16, $f18
/* 000798 0x80A1C048 00003025 */ move	$a2, $zero
/* 000799 0x80A1C04C 00003825 */ move	$a3, $zero
/* 000800 0x80A1C050 0C02C7D3 */ jal	EffectSS_SpawnGSplash
/* 000801 0x80A1C054 E7A400C4 */ swc1	$f4, 0XC4($sp)
/* 000802 0x80A1C058 26314000 */ addiu	$s1, $s1, 0X4000
/* 000803 0x80A1C05C 00118C00 */ sll	$s1, $s1, 16
/* 000804 0x80A1C060 26520001 */ addiu	$s2, $s2, 0X1
/* 000805 0x80A1C064 1650FFD9 */ bne	$s2, $s0, .L80A1BFCC
/* 000806 0x80A1C068 00118C03 */ sra	$s1, $s1, 16
/* 000807 0x80A1C06C C6860024 */ lwc1	$f6, 0X24($s4)
/* 000808 0x80A1C070 240A015E */ li	$t2, 0X15E
/* 000809 0x80A1C074 02A02025 */ move	$a0, $s5
/* 000810 0x80A1C078 E7A600BC */ swc1	$f6, 0XBC($sp)
/* 000811 0x80A1C07C C688002C */ lwc1	$f8, 0X2C($s4)
/* 000812 0x80A1C080 AFAA0014 */ sw	$t2, 0X14($sp)
/* 000813 0x80A1C084 AFA00010 */ sw	$zero, 0X10($sp)
/* 000814 0x80A1C088 02602825 */ move	$a1, $s3
/* 000815 0x80A1C08C 00003025 */ move	$a2, $zero
/* 000816 0x80A1C090 00003825 */ move	$a3, $zero
/* 000817 0x80A1C094 0C02C7D3 */ jal	EffectSS_SpawnGSplash
/* 000818 0x80A1C098 E7A800C4 */ swc1	$f8, 0XC4($sp)
/* 000819 0x80A1C09C 02A02025 */ move	$a0, $s5
/* 000820 0x80A1C0A0 02602825 */ move	$a1, $s3
/* 000821 0x80A1C0A4 24060096 */ li	$a2, 0X96
/* 000822 0x80A1C0A8 2407028A */ li	$a3, 0X28A
/* 000823 0x80A1C0AC 0C02C7BD */ jal	EffectSS_SpawnGRipple
/* 000824 0x80A1C0B0 AFA00010 */ sw	$zero, 0X10($sp)
/* 000825 0x80A1C0B4 8FBF009C */ lw	$ra, 0X9C($sp)
/* 000826 0x80A1C0B8 D7B40048 */ ldc1	$f20, 0X48($sp)
/* 000827 0x80A1C0BC D7B60050 */ ldc1	$f22, 0X50($sp)
/* 000828 0x80A1C0C0 D7B80058 */ ldc1	$f24, 0X58($sp)
/* 000829 0x80A1C0C4 D7BA0060 */ ldc1	$f26, 0X60($sp)
/* 000830 0x80A1C0C8 D7BC0068 */ ldc1	$f28, 0X68($sp)
/* 000831 0x80A1C0CC D7BE0070 */ ldc1	$f30, 0X70($sp)
/* 000832 0x80A1C0D0 8FB00078 */ lw	$s0, 0X78($sp)
/* 000833 0x80A1C0D4 8FB1007C */ lw	$s1, 0X7C($sp)
/* 000834 0x80A1C0D8 8FB20080 */ lw	$s2, 0X80($sp)
/* 000835 0x80A1C0DC 8FB30084 */ lw	$s3, 0X84($sp)
/* 000836 0x80A1C0E0 8FB40088 */ lw	$s4, 0X88($sp)
/* 000837 0x80A1C0E4 8FB5008C */ lw	$s5, 0X8C($sp)
/* 000838 0x80A1C0E8 8FB60090 */ lw	$s6, 0X90($sp)
/* 000839 0x80A1C0EC 8FB70094 */ lw	$s7, 0X94($sp)
/* 000840 0x80A1C0F0 8FBE0098 */ lw	$fp, 0X98($sp)
/* 000841 0x80A1C0F4 03E00008 */ jr	$ra
/* 000842 0x80A1C0F8 27BD00D8 */ addiu	$sp, $sp, 0XD8


.section .late_rodata

glabel D_80A1D458
/* 002082 0x80A1D458 */ .word	0x3E2E147B
glabel D_80A1D45C
/* 002083 0x80A1D45C */ .word	0x45924800
glabel D_80A1D460
/* 002084 0x80A1D460 */ .word	0x3FB33333
glabel D_80A1D464
/* 002085 0x80A1D464 */ .word	0x3E4CCCCD
glabel D_80A1D468
/* 002086 0x80A1D468 */ .word	0x4129999A
