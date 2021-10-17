glabel EnElf_Init
/* 000551 0x8088CDAC 27BDFFA8 */ addiu	$sp, $sp, -0X58
/* 000552 0x8088CDB0 AFB10030 */ sw	$s1, 0X30($sp)
/* 000553 0x8088CDB4 AFB0002C */ sw	$s0, 0X2C($sp)
/* 000554 0x8088CDB8 00808025 */ move	$s0, $a0
/* 000555 0x8088CDBC 00A08825 */ move	$s1, $a1
/* 000556 0x8088CDC0 AFBF0034 */ sw	$ra, 0X34($sp)
/* 000557 0x8088CDC4 8E2E1CCC */ lw	$t6, 0X1CCC($s1)
/* 000558 0x8088CDC8 3C058089 */ lui	$a1, %hi(D_808909E0)
/* 000559 0x8088CDCC 24A509E0 */ addiu	$a1, $a1, %lo(D_808909E0)
/* 000560 0x8088CDD0 02002025 */ move	$a0, $s0
/* 000561 0x8088CDD4 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000562 0x8088CDD8 AFAE004C */ sw	$t6, 0X4C($sp)
/* 000563 0x8088CDDC 3C060403 */ lui	$a2, 0x0403
/* 000564 0x8088CDE0 3C070403 */ lui	$a3, 0x0403
/* 000565 0x8088CDE4 260F0188 */ addiu	$t7, $s0, 0X188
/* 000566 0x8088CDE8 261801B2 */ addiu	$t8, $s0, 0X1B2
/* 000567 0x8088CDEC 24190007 */ li	$t9, 0X7
/* 000568 0x8088CDF0 AFB90018 */ sw	$t9, 0X18($sp)
/* 000569 0x8088CDF4 AFB80014 */ sw	$t8, 0X14($sp)
/* 000570 0x8088CDF8 AFAF0010 */ sw	$t7, 0X10($sp)
/* 000571 0x8088CDFC 24E79140 */ addiu	$a3, $a3, -0X6EC0
/* 000572 0x8088CE00 24C6AF58 */ addiu	$a2, $a2, -0X50A8
/* 000573 0x8088CE04 02202025 */ move	$a0, $s1
/* 000574 0x8088CE08 0C04DA9F */ jal	SkelAnime_Init
/* 000575 0x8088CE0C 26050144 */ addiu	$a1, $s0, 0X144
/* 000576 0x8088CE10 260400BC */ addiu	$a0, $s0, 0XBC
/* 000577 0x8088CE14 24050000 */ li	$a1, 0X0
/* 000578 0x8088CE18 00003025 */ move	$a2, $zero
/* 000579 0x8088CE1C 0C02CEE9 */ jal	Actor_SetDrawParams
/* 000580 0x8088CE20 3C074170 */ lui	$a3, 0x4170
/* 000581 0x8088CE24 C6040024 */ lwc1	$f4, 0X24($s0)
/* 000582 0x8088CE28 C6080028 */ lwc1	$f8, 0X28($s0)
/* 000583 0x8088CE2C C610002C */ lwc1	$f16, 0X2C($s0)
/* 000584 0x8088CE30 4600218D */ trunc.w.s	$f6, $f4
/* 000585 0x8088CE34 240800FF */ li	$t0, 0XFF
/* 000586 0x8088CE38 A20800D0 */ sb	$t0, 0XD0($s0)
/* 000587 0x8088CE3C 4600428D */ trunc.w.s	$f10, $f8
/* 000588 0x8088CE40 44053000 */ mfc1	$a1, $f6
/* 000589 0x8088CE44 260401FC */ addiu	$a0, $s0, 0X1FC
/* 000590 0x8088CE48 4600848D */ trunc.w.s	$f18, $f16
/* 000591 0x8088CE4C 44065000 */ mfc1	$a2, $f10
/* 000592 0x8088CE50 240C00FF */ li	$t4, 0XFF
/* 000593 0x8088CE54 240D00FF */ li	$t5, 0XFF
/* 000594 0x8088CE58 44079000 */ mfc1	$a3, $f18
/* 000595 0x8088CE5C 240E00FF */ li	$t6, 0XFF
/* 000596 0x8088CE60 00052C00 */ sll	$a1, $a1, 16
/* 000597 0x8088CE64 00063400 */ sll	$a2, $a2, 16
/* 000598 0x8088CE68 00073C00 */ sll	$a3, $a3, 16
/* 000599 0x8088CE6C 00073C03 */ sra	$a3, $a3, 16
/* 000600 0x8088CE70 00063403 */ sra	$a2, $a2, 16
/* 000601 0x8088CE74 00052C03 */ sra	$a1, $a1, 16
/* 000602 0x8088CE78 AFAE0018 */ sw	$t6, 0X18($sp)
/* 000603 0x8088CE7C AFAD0014 */ sw	$t5, 0X14($sp)
/* 000604 0x8088CE80 AFAC0010 */ sw	$t4, 0X10($sp)
/* 000605 0x8088CE84 AFA40038 */ sw	$a0, 0X38($sp)
/* 000606 0x8088CE88 0C040698 */ jal	Lights_InitType2PositionalLight
/* 000607 0x8088CE8C AFA0001C */ sw	$zero, 0X1C($sp)
/* 000608 0x8088CE90 26250818 */ addiu	$a1, $s1, 0X818
/* 000609 0x8088CE94 AFA5003C */ sw	$a1, 0X3C($sp)
/* 000610 0x8088CE98 02202025 */ move	$a0, $s1
/* 000611 0x8088CE9C 0C040989 */ jal	Lights_Insert
/* 000612 0x8088CEA0 8FA60038 */ lw	$a2, 0X38($sp)
/* 000613 0x8088CEA4 C6040024 */ lwc1	$f4, 0X24($s0)
/* 000614 0x8088CEA8 C6080028 */ lwc1	$f8, 0X28($s0)
/* 000615 0x8088CEAC C610002C */ lwc1	$f16, 0X2C($s0)
/* 000616 0x8088CEB0 4600218D */ trunc.w.s	$f6, $f4
/* 000617 0x8088CEB4 AE02020C */ sw	$v0, 0X20C($s0)
/* 000618 0x8088CEB8 26040210 */ addiu	$a0, $s0, 0X210
/* 000619 0x8088CEBC 4600428D */ trunc.w.s	$f10, $f8
/* 000620 0x8088CEC0 44053000 */ mfc1	$a1, $f6
/* 000621 0x8088CEC4 240800FF */ li	$t0, 0XFF
/* 000622 0x8088CEC8 4600848D */ trunc.w.s	$f18, $f16
/* 000623 0x8088CECC 44065000 */ mfc1	$a2, $f10
/* 000624 0x8088CED0 240900FF */ li	$t1, 0XFF
/* 000625 0x8088CED4 240A00FF */ li	$t2, 0XFF
/* 000626 0x8088CED8 44079000 */ mfc1	$a3, $f18
/* 000627 0x8088CEDC 00052C00 */ sll	$a1, $a1, 16
/* 000628 0x8088CEE0 00063400 */ sll	$a2, $a2, 16
/* 000629 0x8088CEE4 00073C00 */ sll	$a3, $a3, 16
/* 000630 0x8088CEE8 00073C03 */ sra	$a3, $a3, 16
/* 000631 0x8088CEEC 00063403 */ sra	$a2, $a2, 16
/* 000632 0x8088CEF0 00052C03 */ sra	$a1, $a1, 16
/* 000633 0x8088CEF4 AFAA0018 */ sw	$t2, 0X18($sp)
/* 000634 0x8088CEF8 AFA90014 */ sw	$t1, 0X14($sp)
/* 000635 0x8088CEFC AFA80010 */ sw	$t0, 0X10($sp)
/* 000636 0x8088CF00 AFA40038 */ sw	$a0, 0X38($sp)
/* 000637 0x8088CF04 0C04067F */ jal	Lights_InitType0PositionalLight
/* 000638 0x8088CF08 AFA0001C */ sw	$zero, 0X1C($sp)
/* 000639 0x8088CF0C 02202025 */ move	$a0, $s1
/* 000640 0x8088CF10 8FA5003C */ lw	$a1, 0X3C($sp)
/* 000641 0x8088CF14 0C040989 */ jal	Lights_Insert
/* 000642 0x8088CF18 8FA60038 */ lw	$a2, 0X38($sp)
/* 000643 0x8088CF1C 44802000 */ mtc1	$zero, $f4
/* 000644 0x8088CF20 240B0258 */ li	$t3, 0X258
/* 000645 0x8088CF24 AE020220 */ sw	$v0, 0X220($s0)
/* 000646 0x8088CF28 A6000262 */ sh	$zero, 0X262($s0)
/* 000647 0x8088CF2C A60B025E */ sh	$t3, 0X25E($s0)
/* 000648 0x8088CF30 E6040240 */ swc1	$f4, 0X240($s0)
/* 000649 0x8088CF34 AFA00048 */ sw	$zero, 0X48($sp)
/* 000650 0x8088CF38 8603001C */ lh	$v1, 0X1C($s0)
/* 000651 0x8088CF3C 860E001C */ lh	$t6, 0X1C($s0)
/* 000652 0x8088CF40 306CFE00 */ andi	$t4, $v1, 0XFE00
/* 000653 0x8088CF44 000C6A43 */ sra	$t5, $t4, 9
/* 000654 0x8088CF48 31CF0100 */ andi	$t7, $t6, 0X100
/* 000655 0x8088CF4C A60D0260 */ sh	$t5, 0X260($s0)
/* 000656 0x8088CF50 11E00004 */ beqz	$t7, .L8088CF64
/* 000657 0x8088CF54 3064000F */ andi	$a0, $v1, 0XF
/* 000658 0x8088CF58 96180262 */ lhu	$t8, 0X262($s0)
/* 000659 0x8088CF5C 37190400 */ ori	$t9, $t8, 0X400
/* 000660 0x8088CF60 A6190262 */ sh	$t9, 0X262($s0)
.L8088CF64:
/* 000661 0x8088CF64 2C81000B */ sltiu	$at, $a0, 0XB
/* 000662 0x8088CF68 102000CF */ beqz	$at, .L8088D2A8
/* 000663 0x8088CF6C A604001C */ sh	$a0, 0X1C($s0)
/* 000664 0x8088CF70 00044080 */ sll	$t0, $a0, 2
/* 000665 0x8088CF74 3C018089 */ lui	$at, %hi(jtbl_D_80890ADC)
/* 000666 0x8088CF78 00280821 */ addu	$at, $at, $t0
/* 000667 0x8088CF7C 8C280ADC */ lw	$t0, %lo(jtbl_D_80890ADC)($at)
/* 000668 0x8088CF80 01000008 */ jr	$t0
/* 000669 0x8088CF84 00000000 */ nop
glabel L8088CF88
.L8088CF88:
/* 000670 0x8088CF88 2409FFFF */ li	$t1, -0X1
/* 000671 0x8088CF8C 3C058089 */ lui	$a1, %hi(func_8088E850)
/* 000672 0x8088CF90 A2090003 */ sb	$t1, 0X3($s0)
/* 000673 0x8088CF94 24A5E850 */ addiu	$a1, $a1, %lo(func_8088E850)
/* 000674 0x8088CF98 0C223144 */ jal	func_8088C510
/* 000675 0x8088CF9C 02002025 */ move	$a0, $s0
/* 000676 0x8088CFA0 02002025 */ move	$a0, $s0
/* 000677 0x8088CFA4 0C223147 */ jal	func_8088C51C
/* 000678 0x8088CFA8 00002825 */ move	$a1, $zero
/* 000679 0x8088CFAC 960A0262 */ lhu	$t2, 0X262($s0)
/* 000680 0x8088CFB0 3C0C8089 */ lui	$t4, %hi(func_8089010C)
/* 000681 0x8088CFB4 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 000682 0x8088CFB8 258C010C */ addiu	$t4, $t4, %lo(func_8089010C)
/* 000683 0x8088CFBC 240D0014 */ li	$t5, 0X14
/* 000684 0x8088CFC0 354B0004 */ ori	$t3, $t2, 0X4
/* 000685 0x8088CFC4 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 000686 0x8088CFC8 A60B0262 */ sh	$t3, 0X262($s0)
/* 000687 0x8088CFCC AE0C0138 */ sw	$t4, 0X138($s0)
/* 000688 0x8088CFD0 AE000230 */ sw	$zero, 0X230($s0)
/* 000689 0x8088CFD4 AE000234 */ sw	$zero, 0X234($s0)
/* 000690 0x8088CFD8 A20D0269 */ sb	$t5, 0X269($s0)
/* 000691 0x8088CFDC 9462003E */ lhu	$v0, 0X3E($v1)
/* 000692 0x8088CFE0 284164C8 */ slti	$at, $v0, 0X64C8
/* 000693 0x8088CFE4 10200003 */ beqz	$at, .L8088CFF4
/* 000694 0x8088CFE8 28410BB8 */ slti	$at, $v0, 0XBB8
/* 000695 0x8088CFEC 10200002 */ beqz	$at, .L8088CFF8
/* 000696 0x8088CFF0 00000000 */ nop
.L8088CFF4:
/* 000697 0x8088CFF4 A460003E */ sh	$zero, 0X3E($v1)
.L8088CFF8:
/* 000698 0x8088CFF8 0C03C170 */ jal	func_800F05C0
/* 000699 0x8088CFFC 02202025 */ move	$a0, $s1
/* 000700 0x8088D000 100000A9 */ b	.L8088D2A8
/* 000701 0x8088D004 A6020266 */ sh	$v0, 0X266($s0)
glabel L8088D008
.L8088D008:
/* 000702 0x8088D008 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 000703 0x8088D00C 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 000704 0x8088D010 240EFFFF */ li	$t6, -0X1
/* 000705 0x8088D014 3C058089 */ lui	$a1, %hi(func_8088E0F0)
/* 000706 0x8088D018 AFAE0048 */ sw	$t6, 0X48($sp)
/* 000707 0x8088D01C A4601016 */ sh	$zero, 0X1016($v1)
/* 000708 0x8088D020 24A5E0F0 */ addiu	$a1, $a1, %lo(func_8088E0F0)
/* 000709 0x8088D024 0C223144 */ jal	func_8088C510
/* 000710 0x8088D028 02002025 */ move	$a0, $s0
/* 000711 0x8088D02C 8FA5004C */ lw	$a1, 0X4C($sp)
/* 000712 0x8088D030 26040024 */ addiu	$a0, $s0, 0X24
/* 000713 0x8088D034 0C03FE4B */ jal	Math_Vec3f_DistXZ
/* 000714 0x8088D038 24A50024 */ addiu	$a1, $a1, 0X24
/* 000715 0x8088D03C E6000254 */ swc1	$f0, 0X254($s0)
/* 000716 0x8088D040 8FAF004C */ lw	$t7, 0X4C($sp)
/* 000717 0x8088D044 2419F000 */ li	$t9, -0X1000
/* 000718 0x8088D048 C6060028 */ lwc1	$f6, 0X28($s0)
/* 000719 0x8088D04C 85F800BE */ lh	$t8, 0XBE($t7)
/* 000720 0x8088D050 A619024C */ sh	$t9, 0X24C($s0)
/* 000721 0x8088D054 44808000 */ mtc1	$zero, $f16
/* 000722 0x8088D058 A6180248 */ sh	$t8, 0X248($s0)
/* 000723 0x8088D05C 8FA8004C */ lw	$t0, 0X4C($sp)
/* 000724 0x8088D060 C5080028 */ lwc1	$f8, 0X28($t0)
/* 000725 0x8088D064 A6000246 */ sh	$zero, 0X246($s0)
/* 000726 0x8088D068 E6100250 */ swc1	$f16, 0X250($s0)
/* 000727 0x8088D06C 46083281 */ sub.s	$f10, $f6, $f8
/* 000728 0x8088D070 1000008D */ b	.L8088D2A8
/* 000729 0x8088D074 E60A0228 */ swc1	$f10, 0X228($s0)
glabel L8088D078
.L8088D078:
/* 000730 0x8088D078 2409FFFF */ li	$t1, -0X1
/* 000731 0x8088D07C 3C058089 */ lui	$a1, %hi(func_8088E484)
/* 000732 0x8088D080 AFA90048 */ sw	$t1, 0X48($sp)
/* 000733 0x8088D084 24A5E484 */ addiu	$a1, $a1, %lo(func_8088E484)
/* 000734 0x8088D088 0C223144 */ jal	func_8088C510
/* 000735 0x8088D08C 02002025 */ move	$a0, $s0
/* 000736 0x8088D090 44809000 */ mtc1	$zero, $f18
/* 000737 0x8088D094 8FA2004C */ lw	$v0, 0X4C($sp)
/* 000738 0x8088D098 C6040028 */ lwc1	$f4, 0X28($s0)
/* 000739 0x8088D09C E6120254 */ swc1	$f18, 0X254($s0)
/* 000740 0x8088D0A0 844A00BE */ lh	$t2, 0XBE($v0)
/* 000741 0x8088D0A4 A600024C */ sh	$zero, 0X24C($s0)
/* 000742 0x8088D0A8 3C0140E0 */ lui	$at, 0x40E0
/* 000743 0x8088D0AC A60A0248 */ sh	$t2, 0X248($s0)
/* 000744 0x8088D0B0 C4460028 */ lwc1	$f6, 0X28($v0)
/* 000745 0x8088D0B4 44815000 */ mtc1	$at, $f10
/* 000746 0x8088D0B8 A6000246 */ sh	$zero, 0X246($s0)
/* 000747 0x8088D0BC 46062201 */ sub.s	$f8, $f4, $f6
/* 000748 0x8088D0C0 E60A0250 */ swc1	$f10, 0X250($s0)
/* 000749 0x8088D0C4 10000078 */ b	.L8088D2A8
/* 000750 0x8088D0C8 E6080228 */ swc1	$f8, 0X228($s0)
glabel L8088D0CC
.L8088D0CC:
/* 000751 0x8088D0CC 960B0262 */ lhu	$t3, 0X262($s0)
/* 000752 0x8088D0D0 3C0D800B */ lui	$t5, %hi(func_800B4088)
/* 000753 0x8088D0D4 25AD4088 */ addiu	$t5, $t5, %lo(func_800B4088)
/* 000754 0x8088D0D8 356E0200 */ ori	$t6, $t3, 0X200
/* 000755 0x8088D0DC A60E0262 */ sh	$t6, 0X262($s0)
/* 000756 0x8088D0E0 35CF0100 */ ori	$t7, $t6, 0X100
/* 000757 0x8088D0E4 AE0D00C8 */ sw	$t5, 0XC8($s0)
/* 000758 0x8088D0E8 A60F0262 */ sh	$t7, 0X262($s0)
/* 000759 0x8088D0EC 2418FFFF */ li	$t8, -0X1
/* 000760 0x8088D0F0 AFB80048 */ sw	$t8, 0X48($sp)
/* 000761 0x8088D0F4 96190262 */ lhu	$t9, 0X262($s0)
/* 000762 0x8088D0F8 02002025 */ move	$a0, $s0
/* 000763 0x8088D0FC 02202825 */ move	$a1, $s1
/* 000764 0x8088D100 37290800 */ ori	$t1, $t9, 0X800
/* 000765 0x8088D104 A6090262 */ sh	$t1, 0X262($s0)
/* 000766 0x8088D108 352A1000 */ ori	$t2, $t1, 0X1000
/* 000767 0x8088D10C 0C223312 */ jal	func_8088CC48
/* 000768 0x8088D110 A60A0262 */ sh	$t2, 0X262($s0)
/* 000769 0x8088D114 10000065 */ b	.L8088D2AC
/* 000770 0x8088D118 3C014040 */ lui	$at, 0x4040
glabel L8088D11C
.L8088D11C:
/* 000771 0x8088D11C 960B0262 */ lhu	$t3, 0X262($s0)
/* 000772 0x8088D120 240DFFFF */ li	$t5, -0X1
/* 000773 0x8088D124 02002025 */ move	$a0, $s0
/* 000774 0x8088D128 356C0100 */ ori	$t4, $t3, 0X100
/* 000775 0x8088D12C A60C0262 */ sh	$t4, 0X262($s0)
/* 000776 0x8088D130 AFAD0048 */ sw	$t5, 0X48($sp)
/* 000777 0x8088D134 960E0262 */ lhu	$t6, 0X262($s0)
/* 000778 0x8088D138 02202825 */ move	$a1, $s1
/* 000779 0x8088D13C 35D80800 */ ori	$t8, $t6, 0X800
/* 000780 0x8088D140 37082000 */ ori	$t0, $t8, 0X2000
/* 000781 0x8088D144 A6180262 */ sh	$t8, 0X262($s0)
/* 000782 0x8088D148 A6080262 */ sh	$t0, 0X262($s0)
/* 000783 0x8088D14C 35091000 */ ori	$t1, $t0, 0X1000
/* 000784 0x8088D150 0C223312 */ jal	func_8088CC48
/* 000785 0x8088D154 A6090262 */ sh	$t1, 0X262($s0)
/* 000786 0x8088D158 10000054 */ b	.L8088D2AC
/* 000787 0x8088D15C 3C014040 */ lui	$at, 0x4040
glabel L8088D160
.L8088D160:
/* 000788 0x8088D160 240AFFFF */ li	$t2, -0X1
/* 000789 0x8088D164 AFAA0048 */ sw	$t2, 0X48($sp)
/* 000790 0x8088D168 960B0262 */ lhu	$t3, 0X262($s0)
/* 000791 0x8088D16C 02002025 */ move	$a0, $s0
/* 000792 0x8088D170 02202825 */ move	$a1, $s1
/* 000793 0x8088D174 356D0800 */ ori	$t5, $t3, 0X800
/* 000794 0x8088D178 35AF2000 */ ori	$t7, $t5, 0X2000
/* 000795 0x8088D17C A60D0262 */ sh	$t5, 0X262($s0)
/* 000796 0x8088D180 A60F0262 */ sh	$t7, 0X262($s0)
/* 000797 0x8088D184 35F81000 */ ori	$t8, $t7, 0X1000
/* 000798 0x8088D188 0C223312 */ jal	func_8088CC48
/* 000799 0x8088D18C A6180262 */ sh	$t8, 0X262($s0)
/* 000800 0x8088D190 10000046 */ b	.L8088D2AC
/* 000801 0x8088D194 3C014040 */ lui	$at, 0x4040
glabel L8088D198
.L8088D198:
/* 000802 0x8088D198 96190262 */ lhu	$t9, 0X262($s0)
/* 000803 0x8088D19C 37281000 */ ori	$t0, $t9, 0X1000
/* 000804 0x8088D1A0 A6080262 */ sh	$t0, 0X262($s0)
glabel L8088D1A4
.L8088D1A4:
/* 000805 0x8088D1A4 2409FFFE */ li	$t1, -0X2
/* 000806 0x8088D1A8 AFA90048 */ sw	$t1, 0X48($sp)
/* 000807 0x8088D1AC 02002025 */ move	$a0, $s0
/* 000808 0x8088D1B0 0C223312 */ jal	func_8088CC48
/* 000809 0x8088D1B4 02202825 */ move	$a1, $s1
/* 000810 0x8088D1B8 1000003C */ b	.L8088D2AC
/* 000811 0x8088D1BC 3C014040 */ lui	$at, 0x4040
glabel L8088D1C0
.L8088D1C0:
/* 000812 0x8088D1C0 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000813 0x8088D1C4 02002025 */ move	$a0, $s0
/* 000814 0x8088D1C8 10000070 */ b	.L8088D38C
/* 000815 0x8088D1CC 8FBF0034 */ lw	$ra, 0X34($sp)
glabel L8088D1D0
.L8088D1D0:
/* 000816 0x8088D1D0 3C018089 */ lui	$at, %hi(D_80890B08)
/* 000817 0x8088D1D4 0C05E565 */ jal	randZeroOneScaled
/* 000818 0x8088D1D8 C42C0B08 */ lwc1	$f12, %lo(D_80890B08)($at)
/* 000819 0x8088D1DC 3C013F80 */ lui	$at, 0x3F80
/* 000820 0x8088D1E0 44818000 */ mtc1	$at, $f16
/* 000821 0x8088D1E4 3C058089 */ lui	$a1, %hi(func_8088E018)
/* 000822 0x8088D1E8 24A5E018 */ addiu	$a1, $a1, %lo(func_8088E018)
/* 000823 0x8088D1EC 46100480 */ add.s	$f18, $f0, $f16
/* 000824 0x8088D1F0 02002025 */ move	$a0, $s0
/* 000825 0x8088D1F4 4600910D */ trunc.w.s	$f4, $f18
/* 000826 0x8088D1F8 440B2000 */ mfc1	$t3, $f4
/* 000827 0x8088D1FC 0C223144 */ jal	func_8088C510
/* 000828 0x8088D200 AFAB0048 */ sw	$t3, 0X48($sp)
/* 000829 0x8088D204 02002025 */ move	$a0, $s0
/* 000830 0x8088D208 0C223147 */ jal	func_8088C51C
/* 000831 0x8088D20C 00002825 */ move	$a1, $zero
/* 000832 0x8088D210 10000026 */ b	.L8088D2AC
/* 000833 0x8088D214 3C014040 */ lui	$at, 0x4040
glabel L8088D218
.L8088D218:
/* 000834 0x8088D218 3C058089 */ lui	$a1, %hi(func_8088E0E0)
/* 000835 0x8088D21C 24A5E0E0 */ addiu	$a1, $a1, %lo(func_8088E0E0)
/* 000836 0x8088D220 0C223144 */ jal	func_8088C510
/* 000837 0x8088D224 02002025 */ move	$a0, $s0
/* 000838 0x8088D228 02002025 */ move	$a0, $s0
/* 000839 0x8088D22C 0C223147 */ jal	func_8088C51C
/* 000840 0x8088D230 24050006 */ li	$a1, 0X6
/* 000841 0x8088D234 960C0262 */ lhu	$t4, 0X262($s0)
/* 000842 0x8088D238 00001825 */ move	$v1, $zero
/* 000843 0x8088D23C 26241CA0 */ addiu	$a0, $s1, 0X1CA0
/* 000844 0x8088D240 358D0008 */ ori	$t5, $t4, 0X8
/* 000845 0x8088D244 A60D0262 */ sh	$t5, 0X262($s0)
/* 000846 0x8088D248 AFA4003C */ sw	$a0, 0X3C($sp)
/* 000847 0x8088D24C 3C0141F0 */ lui	$at, 0x41F0
.L8088D250:
/* 000848 0x8088D250 44814000 */ mtc1	$at, $f8
/* 000849 0x8088D254 C6060028 */ lwc1	$f6, 0X28($s0)
/* 000850 0x8088D258 8E070024 */ lw	$a3, 0X24($s0)
/* 000851 0x8088D25C 240E0006 */ li	$t6, 0X6
/* 000852 0x8088D260 46083281 */ sub.s	$f10, $f6, $f8
/* 000853 0x8088D264 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000854 0x8088D268 02202825 */ move	$a1, $s1
/* 000855 0x8088D26C 24060010 */ li	$a2, 0X10
/* 000856 0x8088D270 E7AA0010 */ swc1	$f10, 0X10($sp)
/* 000857 0x8088D274 C610002C */ lwc1	$f16, 0X2C($s0)
/* 000858 0x8088D278 AFA30040 */ sw	$v1, 0X40($sp)
/* 000859 0x8088D27C AFAE0024 */ sw	$t6, 0X24($sp)
/* 000860 0x8088D280 AFA00020 */ sw	$zero, 0X20($sp)
/* 000861 0x8088D284 AFA0001C */ sw	$zero, 0X1C($sp)
/* 000862 0x8088D288 AFA00018 */ sw	$zero, 0X18($sp)
/* 000863 0x8088D28C 0C02EB18 */ jal	Actor_Spawn
/* 000864 0x8088D290 E7B00014 */ swc1	$f16, 0X14($sp)
/* 000865 0x8088D294 8FA30040 */ lw	$v1, 0X40($sp)
/* 000866 0x8088D298 24010008 */ li	$at, 0X8
/* 000867 0x8088D29C 24630001 */ addiu	$v1, $v1, 0X1
/* 000868 0x8088D2A0 5461FFEB */ bnel	$v1, $at, .L8088D250
/* 000869 0x8088D2A4 3C0141F0 */ lui	$at, 0x41F0
.L8088D2A8:
/* 000870 0x8088D2A8 3C014040 */ lui	$at, 0x4040
.L8088D2AC:
/* 000871 0x8088D2AC 44819000 */ mtc1	$at, $f18
/* 000872 0x8088D2B0 3C048089 */ lui	$a0, %hi(D_808909E4)
/* 000873 0x8088D2B4 248409E4 */ addiu	$a0, $a0, %lo(D_808909E4)
/* 000874 0x8088D2B8 E612023C */ swc1	$f18, 0X23C($s0)
/* 000875 0x8088D2BC 8C980000 */ lw	$t8, 0X0($a0)
/* 000876 0x8088D2C0 260301DC */ addiu	$v1, $s0, 0X1DC
/* 000877 0x8088D2C4 3C098089 */ lui	$t1, %hi(D_80890A44)
/* 000878 0x8088D2C8 AC780000 */ sw	$t8, 0X0($v1)
/* 000879 0x8088D2CC 8C8F0004 */ lw	$t7, 0X4($a0)
/* 000880 0x8088D2D0 25290A44 */ addiu	$t1, $t1, %lo(D_80890A44)
/* 000881 0x8088D2D4 AC6F0004 */ sw	$t7, 0X4($v1)
/* 000882 0x8088D2D8 8C980008 */ lw	$t8, 0X8($a0)
/* 000883 0x8088D2DC AC780008 */ sw	$t8, 0X8($v1)
/* 000884 0x8088D2E0 8C8F000C */ lw	$t7, 0XC($a0)
/* 000885 0x8088D2E4 AC6F000C */ sw	$t7, 0XC($v1)
/* 000886 0x8088D2E8 8FB90048 */ lw	$t9, 0X48($sp)
/* 000887 0x8088D2EC 8FA20048 */ lw	$v0, 0X48($sp)
/* 000888 0x8088D2F0 1B200010 */ blez	$t9, .L8088D334
/* 000889 0x8088D2F4 00021023 */ negu	$v0, $v0
/* 000890 0x8088D2F8 00194080 */ sll	$t0, $t9, 2
/* 000891 0x8088D2FC 01194023 */ subu	$t0, $t0, $t9
/* 000892 0x8088D300 01098821 */ addu	$s1, $t0, $t1
/* 000893 0x8088D304 0C22334F */ jal	func_8088CD3C
/* 000894 0x8088D308 92240000 */ lbu	$a0, 0X0($s1)
/* 000895 0x8088D30C E60001EC */ swc1	$f0, 0X1EC($s0)
/* 000896 0x8088D310 0C22334F */ jal	func_8088CD3C
/* 000897 0x8088D314 92240001 */ lbu	$a0, 0X1($s1)
/* 000898 0x8088D318 E60001F0 */ swc1	$f0, 0X1F0($s0)
/* 000899 0x8088D31C 0C22334F */ jal	func_8088CD3C
/* 000900 0x8088D320 92240002 */ lbu	$a0, 0X2($s1)
/* 000901 0x8088D324 44802000 */ mtc1	$zero, $f4
/* 000902 0x8088D328 E60001F4 */ swc1	$f0, 0X1F4($s0)
/* 000903 0x8088D32C 10000016 */ b	.L8088D388
/* 000904 0x8088D330 E60401F8 */ swc1	$f4, 0X1F8($s0)
.L8088D334:
/* 000905 0x8088D334 00021100 */ sll	$v0, $v0, 4
/* 000906 0x8088D338 00825021 */ addu	$t2, $a0, $v0
/* 000907 0x8088D33C 8D4C0000 */ lw	$t4, 0X0($t2)
/* 000908 0x8088D340 3C0D8089 */ lui	$t5, %hi(D_80890A14)
/* 000909 0x8088D344 25AD0A14 */ addiu	$t5, $t5, %lo(D_80890A14)
/* 000910 0x8088D348 AC6C0000 */ sw	$t4, 0X0($v1)
/* 000911 0x8088D34C 8D4B0004 */ lw	$t3, 0X4($t2)
/* 000912 0x8088D350 004D7021 */ addu	$t6, $v0, $t5
/* 000913 0x8088D354 AC6B0004 */ sw	$t3, 0X4($v1)
/* 000914 0x8088D358 8D4C0008 */ lw	$t4, 0X8($t2)
/* 000915 0x8088D35C AC6C0008 */ sw	$t4, 0X8($v1)
/* 000916 0x8088D360 8D4B000C */ lw	$t3, 0XC($t2)
/* 000917 0x8088D364 AC6B000C */ sw	$t3, 0XC($v1)
/* 000918 0x8088D368 8DD80000 */ lw	$t8, 0X0($t6)
/* 000919 0x8088D36C AE1801EC */ sw	$t8, 0X1EC($s0)
/* 000920 0x8088D370 8DCF0004 */ lw	$t7, 0X4($t6)
/* 000921 0x8088D374 AE0F01F0 */ sw	$t7, 0X1F0($s0)
/* 000922 0x8088D378 8DD80008 */ lw	$t8, 0X8($t6)
/* 000923 0x8088D37C AE1801F4 */ sw	$t8, 0X1F4($s0)
/* 000924 0x8088D380 8DCF000C */ lw	$t7, 0XC($t6)
/* 000925 0x8088D384 AE0F01F8 */ sw	$t7, 0X1F8($s0)
.L8088D388:
/* 000926 0x8088D388 8FBF0034 */ lw	$ra, 0X34($sp)
.L8088D38C:
/* 000927 0x8088D38C 8FB0002C */ lw	$s0, 0X2C($sp)
/* 000928 0x8088D390 8FB10030 */ lw	$s1, 0X30($sp)
/* 000929 0x8088D394 03E00008 */ jr	$ra
/* 000930 0x8088D398 27BD0058 */ addiu	$sp, $sp, 0X58

