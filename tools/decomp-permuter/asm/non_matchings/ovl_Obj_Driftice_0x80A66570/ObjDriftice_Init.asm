glabel ObjDriftice_Init
/* 000649 0x80A66F94 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 000650 0x80A66F98 AFB00018 */ sw	$s0, 0X18($sp)
/* 000651 0x80A66F9C 00808025 */ move	$s0, $a0
/* 000652 0x80A66FA0 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000653 0x80A66FA4 AFA5003C */ sw	$a1, 0X3C($sp)
/* 000654 0x80A66FA8 860E001C */ lh	$t6, 0X1C($s0)
/* 000655 0x80A66FAC 3C1980A6 */ lui	$t9, %hi(D_80A67620)
/* 000656 0x80A66FB0 27397620 */ addiu	$t9, $t9, %lo(D_80A67620)
/* 000657 0x80A66FB4 31CF0003 */ andi	$t7, $t6, 0X3
/* 000658 0x80A66FB8 000FC080 */ sll	$t8, $t7, 2
/* 000659 0x80A66FBC 030FC023 */ subu	$t8, $t8, $t7
/* 000660 0x80A66FC0 0018C080 */ sll	$t8, $t8, 2
/* 000661 0x80A66FC4 03194021 */ addu	$t0, $t8, $t9
/* 000662 0x80A66FC8 3C0580A6 */ lui	$a1, %hi(D_80A676F4)
/* 000663 0x80A66FCC AFA8002C */ sw	$t0, 0X2C($sp)
/* 000664 0x80A66FD0 24A576F4 */ addiu	$a1, $a1, %lo(D_80A676F4)
/* 000665 0x80A66FD4 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000666 0x80A66FD8 02002025 */ move	$a0, $s0
/* 000667 0x80A66FDC A60000BC */ sh	$zero, 0XBC($s0)
/* 000668 0x80A66FE0 A6000030 */ sh	$zero, 0X30($s0)
/* 000669 0x80A66FE4 A60000C0 */ sh	$zero, 0XC0($s0)
/* 000670 0x80A66FE8 A6000034 */ sh	$zero, 0X34($s0)
/* 000671 0x80A66FEC 8FA9002C */ lw	$t1, 0X2C($sp)
/* 000672 0x80A66FF0 3C0180A6 */ lui	$at, %hi(D_80A67730)
/* 000673 0x80A66FF4 C4267730 */ lwc1	$f6, %lo(D_80A67730)($at)
/* 000674 0x80A66FF8 C5240000 */ lwc1	$f4, 0X0($t1)
/* 000675 0x80A66FFC 02002025 */ move	$a0, $s0
/* 000676 0x80A67000 46062202 */ mul.s	$f8, $f4, $f6
/* 000677 0x80A67004 44054000 */ mfc1	$a1, $f8
/* 000678 0x80A67008 0C02D9F8 */ jal	Actor_SetScale
/* 000679 0x80A6700C 00000000 */ nop
/* 000680 0x80A67010 3C013F80 */ lui	$at, 0x3F80
/* 000681 0x80A67014 44819000 */ mtc1	$at, $f18
/* 000682 0x80A67018 C6040058 */ lwc1	$f4, 0X58($s0)
/* 000683 0x80A6701C 8FA3002C */ lw	$v1, 0X2C($sp)
/* 000684 0x80A67020 860A001C */ lh	$t2, 0X1C($s0)
/* 000685 0x80A67024 46049183 */ div.s	$f6, $f18, $f4
/* 000686 0x80A67028 C46A0004 */ lwc1	$f10, 0X4($v1)
/* 000687 0x80A6702C 000A5A43 */ sra	$t3, $t2, 9
/* 000688 0x80A67030 316C0007 */ andi	$t4, $t3, 0X7
/* 000689 0x80A67034 E60A0100 */ swc1	$f10, 0X100($s0)
/* 000690 0x80A67038 C4700008 */ lwc1	$f16, 0X8($v1)
/* 000691 0x80A6703C 000C6880 */ sll	$t5, $t4, 2
/* 000692 0x80A67040 3C0180A6 */ lui	$at, %hi(D_80A67644)
/* 000693 0x80A67044 002D0821 */ addu	$at, $at, $t5
/* 000694 0x80A67048 E6100104 */ swc1	$f16, 0X104($s0)
/* 000695 0x80A6704C 00001025 */ move	$v0, $zero
/* 000696 0x80A67050 02002025 */ move	$a0, $s0
/* 000697 0x80A67054 E6060240 */ swc1	$f6, 0X240($s0)
/* 000698 0x80A67058 C4287644 */ lwc1	$f8, %lo(D_80A67644)($at)
/* 000699 0x80A6705C 3C0180A6 */ lui	$at, %hi(D_80A67734)
/* 000700 0x80A67060 E608023C */ swc1	$f8, 0X23C($s0)
/* 000701 0x80A67064 C4307734 */ lwc1	$f16, %lo(D_80A67734)($at)
/* 000702 0x80A67068 C60A023C */ lwc1	$f10, 0X23C($s0)
/* 000703 0x80A6706C 4610503C */ c.lt.s	$f10, $f16
/* 000704 0x80A67070 00000000 */ nop
/* 000705 0x80A67074 45020003 */ bc1fl .L80A67084
/* 000706 0x80A67078 860E0018 */ lh	$t6, 0X18($s0)
/* 000707 0x80A6707C 24020001 */ li	$v0, 0X1
/* 000708 0x80A67080 860E0018 */ lh	$t6, 0X18($s0)
.L80A67084:
/* 000709 0x80A67084 3C0180A6 */ lui	$at, %hi(D_80A67738)
/* 000710 0x80A67088 C4267738 */ lwc1	$f6, %lo(D_80A67738)($at)
/* 000711 0x80A6708C 448E9000 */ mtc1	$t6, $f18
/* 000712 0x80A67090 00002825 */ move	$a1, $zero
/* 000713 0x80A67094 46809120 */ cvt.s.w	$f4, $f18
/* 000714 0x80A67098 46062202 */ mul.s	$f8, $f4, $f6
/* 000715 0x80A6709C 4600428D */ trunc.w.s	$f10, $f8
/* 000716 0x80A670A0 44185000 */ mfc1	$t8, $f10
/* 000717 0x80A670A4 14400002 */ bnez	$v0, .L80A670B0
/* 000718 0x80A670A8 A6180244 */ sh	$t8, 0X244($s0)
/* 000719 0x80A670AC 24050001 */ li	$a1, 0X1
.L80A670B0:
/* 000720 0x80A670B0 86190018 */ lh	$t9, 0X18($s0)
/* 000721 0x80A670B4 13200002 */ beqz	$t9, .L80A670C0
/* 000722 0x80A670B8 00000000 */ nop
/* 000723 0x80A670BC 34A50003 */ ori	$a1, $a1, 0X3
.L80A670C0:
/* 000724 0x80A670C0 0C032B84 */ jal	BcCheck3_BgActorInit
/* 000725 0x80A670C4 AFA20020 */ sw	$v0, 0X20($sp)
/* 000726 0x80A670C8 3C060600 */ lui	$a2, 0x0600
/* 000727 0x80A670CC 24C61AA8 */ addiu	$a2, $a2, 0X1AA8
/* 000728 0x80A670D0 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000729 0x80A670D4 0C032B8D */ jal	BgCheck3_LoadMesh
/* 000730 0x80A670D8 02002825 */ move	$a1, $s0
/* 000731 0x80A670DC 8FA20020 */ lw	$v0, 0X20($sp)
/* 000732 0x80A670E0 50400006 */ beqzl	$v0, .L80A670FC
/* 000733 0x80A670E4 8E080004 */ lw	$t0, 0X4($s0)
/* 000734 0x80A670E8 0C299C6A */ jal	func_80A671A8
/* 000735 0x80A670EC 02002025 */ move	$a0, $s0
/* 000736 0x80A670F0 1000001C */ b	.L80A67164
/* 000737 0x80A670F4 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000738 0x80A670F8 8E080004 */ lw	$t0, 0X4($s0)
.L80A670FC:
/* 000739 0x80A670FC 860C001C */ lh	$t4, 0X1C($s0)
/* 000740 0x80A67100 3C0B0002 */ lui	$t3, 0x0002
/* 000741 0x80A67104 35090010 */ ori	$t1, $t0, 0X10
/* 000742 0x80A67108 AE090004 */ sw	$t1, 0X4($s0)
/* 000743 0x80A6710C 8FAA003C */ lw	$t2, 0X3C($sp)
/* 000744 0x80A67110 000C6883 */ sra	$t5, $t4, 2
/* 000745 0x80A67114 31AE007F */ andi	$t6, $t5, 0X7F
/* 000746 0x80A67118 016A5821 */ addu	$t3, $t3, $t2
/* 000747 0x80A6711C 8D6B8864 */ lw	$t3, -0X779C($t3)
/* 000748 0x80A67120 000E78C0 */ sll	$t7, $t6, 3
/* 000749 0x80A67124 AE000164 */ sw	$zero, 0X164($s0)
/* 000750 0x80A67128 016F1021 */ addu	$v0, $t3, $t7
/* 000751 0x80A6712C 90580000 */ lbu	$t8, 0X0($v0)
/* 000752 0x80A67130 24080001 */ li	$t0, 0X1
/* 000753 0x80A67134 AE080168 */ sw	$t0, 0X168($s0)
/* 000754 0x80A67138 2719FFFF */ addiu	$t9, $t8, -0X1
/* 000755 0x80A6713C AE190160 */ sw	$t9, 0X160($s0)
/* 000756 0x80A67140 0C040141 */ jal	Lib_PtrSegToVirt
/* 000757 0x80A67144 8C440004 */ lw	$a0, 0X4($v0)
/* 000758 0x80A67148 AE02016C */ sw	$v0, 0X16C($s0)
/* 000759 0x80A6714C 02002025 */ move	$a0, $s0
/* 000760 0x80A67150 0C29995C */ jal	func_80A66570
/* 000761 0x80A67154 8E050164 */ lw	$a1, 0X164($s0)
/* 000762 0x80A67158 0C299C73 */ jal	func_80A671CC
/* 000763 0x80A6715C 02002025 */ move	$a0, $s0
/* 000764 0x80A67160 8FBF001C */ lw	$ra, 0X1C($sp)
.L80A67164:
/* 000765 0x80A67164 8FB00018 */ lw	$s0, 0X18($sp)
/* 000766 0x80A67168 27BD0038 */ addiu	$sp, $sp, 0X38
/* 000767 0x80A6716C 03E00008 */ jr	$ra
/* 000768 0x80A67170 00000000 */ nop

