glabel func_80A149B0
/* 003704 0x80A149B0 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 003705 0x80A149B4 AFB00018 */ sw	$s0, 0X18($sp)
/* 003706 0x80A149B8 00808025 */ move	$s0, $a0
/* 003707 0x80A149BC AFBF001C */ sw	$ra, 0X1C($sp)
/* 003708 0x80A149C0 860E0032 */ lh	$t6, 0X32($s0)
/* 003709 0x80A149C4 24010002 */ li	$at, 0X2
/* 003710 0x80A149C8 3C0F801F */ lui	$t7, %hi(gSaveContext)
/* 003711 0x80A149CC A7AE0026 */ sh	$t6, 0X26($sp)
/* 003712 0x80A149D0 8602001C */ lh	$v0, 0X1C($s0)
/* 003713 0x80A149D4 3042000F */ andi	$v0, $v0, 0XF
/* 003714 0x80A149D8 304200FF */ andi	$v0, $v0, 0XFF
/* 003715 0x80A149DC 5441000B */ bnel	$v0, $at, .L80A14A0C
/* 003716 0x80A149E0 24010008 */ li	$at, 0X8
/* 003717 0x80A149E4 8DEFF670 */ lw	$t7, %lo(gSaveContext)($t7)
/* 003718 0x80A149E8 3401D010 */ ori	$at, $zero, 0XD010
/* 003719 0x80A149EC 02002025 */ move	$a0, $s0
/* 003720 0x80A149F0 55E10006 */ bnel	$t7, $at, .L80A14A0C
/* 003721 0x80A149F4 24010008 */ li	$at, 0X8
/* 003722 0x80A149F8 0C02E3B2 */ jal	func_800B8EC8
/* 003723 0x80A149FC 2405210F */ li	$a1, 0X210F
/* 003724 0x80A14A00 10000042 */ b	.L80A14B0C
/* 003725 0x80A14A04 260400BE */ addiu	$a0, $s0, 0XBE
/* 003726 0x80A14A08 24010008 */ li	$at, 0X8
.L80A14A0C:
/* 003727 0x80A14A0C 1041003E */ beq	$v0, $at, .L80A14B08
/* 003728 0x80A14A10 02002025 */ move	$a0, $s0
/* 003729 0x80A14A14 0C28488B */ jal	func_80A1222C
/* 003730 0x80A14A18 AFA5002C */ sw	$a1, 0X2C($sp)
/* 003731 0x80A14A1C 1040000B */ beqz	$v0, .L80A14A4C
/* 003732 0x80A14A20 8FA5002C */ lw	$a1, 0X2C($sp)
/* 003733 0x80A14A24 26040390 */ addiu	$a0, $s0, 0X390
/* 003734 0x80A14A28 00002825 */ move	$a1, $zero
/* 003735 0x80A14A2C 0C04EBB5 */ jal	func_8013AED4
/* 003736 0x80A14A30 24060007 */ li	$a2, 0X7
/* 003737 0x80A14A34 3C1980A1 */ lui	$t9, %hi(func_80A14B30)
/* 003738 0x80A14A38 24180001 */ li	$t8, 0X1
/* 003739 0x80A14A3C 27394B30 */ addiu	$t9, $t9, %lo(func_80A14B30)
/* 003740 0x80A14A40 AE1803EC */ sw	$t8, 0X3EC($s0)
/* 003741 0x80A14A44 10000030 */ b	.L80A14B08
/* 003742 0x80A14A48 AE190188 */ sw	$t9, 0X188($s0)
.L80A14A4C:
/* 003743 0x80A14A4C 8603001C */ lh	$v1, 0X1C($s0)
/* 003744 0x80A14A50 24010004 */ li	$at, 0X4
/* 003745 0x80A14A54 00601025 */ move	$v0, $v1
/* 003746 0x80A14A58 3042000F */ andi	$v0, $v0, 0XF
/* 003747 0x80A14A5C 54410013 */ bnel	$v0, $at, .L80A14AAC
/* 003748 0x80A14A60 24010001 */ li	$at, 0X1
/* 003749 0x80A14A64 30620070 */ andi	$v0, $v1, 0X70
/* 003750 0x80A14A68 00021103 */ sra	$v0, $v0, 4
/* 003751 0x80A14A6C 304200FF */ andi	$v0, $v0, 0XFF
/* 003752 0x80A14A70 10400005 */ beqz	$v0, .L80A14A88
/* 003753 0x80A14A74 24010001 */ li	$at, 0X1
/* 003754 0x80A14A78 10410007 */ beq	$v0, $at, .L80A14A98
/* 003755 0x80A14A7C 00000000 */ nop
/* 003756 0x80A14A80 10000022 */ b	.L80A14B0C
/* 003757 0x80A14A84 260400BE */ addiu	$a0, $s0, 0XBE
.L80A14A88:
/* 003758 0x80A14A88 0C284CB2 */ jal	func_80A132C8
/* 003759 0x80A14A8C 02002025 */ move	$a0, $s0
/* 003760 0x80A14A90 1000001E */ b	.L80A14B0C
/* 003761 0x80A14A94 260400BE */ addiu	$a0, $s0, 0XBE
.L80A14A98:
/* 003762 0x80A14A98 0C284CEA */ jal	func_80A133A8
/* 003763 0x80A14A9C 02002025 */ move	$a0, $s0
/* 003764 0x80A14AA0 1000001A */ b	.L80A14B0C
/* 003765 0x80A14AA4 260400BE */ addiu	$a0, $s0, 0XBE
/* 003766 0x80A14AA8 24010001 */ li	$at, 0X1
.L80A14AAC:
/* 003767 0x80A14AAC 54410017 */ bnel	$v0, $at, .L80A14B0C
/* 003768 0x80A14AB0 260400BE */ addiu	$a0, $s0, 0XBE
/* 003769 0x80A14AB4 86080092 */ lh	$t0, 0X92($s0)
/* 003770 0x80A14AB8 860900BE */ lh	$t1, 0XBE($s0)
/* 003771 0x80A14ABC 26040390 */ addiu	$a0, $s0, 0X390
/* 003772 0x80A14AC0 00002825 */ move	$a1, $zero
/* 003773 0x80A14AC4 01091823 */ subu	$v1, $t0, $t1
/* 003774 0x80A14AC8 00031C00 */ sll	$v1, $v1, 16
/* 003775 0x80A14ACC 00031C03 */ sra	$v1, $v1, 16
/* 003776 0x80A14AD0 04610003 */ bgez	$v1, .L80A14AE0
/* 003777 0x80A14AD4 00601025 */ move	$v0, $v1
/* 003778 0x80A14AD8 10000001 */ b	.L80A14AE0
/* 003779 0x80A14ADC 00031023 */ negu	$v0, $v1
.L80A14AE0:
/* 003780 0x80A14AE0 28413FFC */ slti	$at, $v0, 0X3FFC
/* 003781 0x80A14AE4 10200006 */ beqz	$at, .L80A14B00
/* 003782 0x80A14AE8 24060007 */ li	$a2, 0X7
/* 003783 0x80A14AEC 26040390 */ addiu	$a0, $s0, 0X390
/* 003784 0x80A14AF0 0C04EBB5 */ jal	func_8013AED4
/* 003785 0x80A14AF4 24050003 */ li	$a1, 0X3
/* 003786 0x80A14AF8 10000004 */ b	.L80A14B0C
/* 003787 0x80A14AFC 260400BE */ addiu	$a0, $s0, 0XBE
.L80A14B00:
/* 003788 0x80A14B00 0C04EBB5 */ jal	func_8013AED4
/* 003789 0x80A14B04 24060007 */ li	$a2, 0X7
.L80A14B08:
/* 003790 0x80A14B08 260400BE */ addiu	$a0, $s0, 0XBE
.L80A14B0C:
/* 003791 0x80A14B0C 87A50026 */ lh	$a1, 0X26($sp)
/* 003792 0x80A14B10 24060004 */ li	$a2, 0X4
/* 003793 0x80A14B14 0C03FFF6 */ jal	Math_SmoothScaleMaxS
/* 003794 0x80A14B18 24072AA8 */ li	$a3, 0X2AA8
/* 003795 0x80A14B1C 8FBF001C */ lw	$ra, 0X1C($sp)
/* 003796 0x80A14B20 8FB00018 */ lw	$s0, 0X18($sp)
/* 003797 0x80A14B24 27BD0028 */ addiu	$sp, $sp, 0X28
/* 003798 0x80A14B28 03E00008 */ jr	$ra
/* 003799 0x80A14B2C 00000000 */ nop

