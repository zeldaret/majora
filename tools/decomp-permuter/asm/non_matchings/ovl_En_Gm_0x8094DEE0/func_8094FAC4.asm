glabel func_8094FAC4
/* 001785 0x8094FAC4 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 001786 0x8094FAC8 AFB00018 */ sw	$s0, 0X18($sp)
/* 001787 0x8094FACC 00808025 */ move	$s0, $a0
/* 001788 0x8094FAD0 AFBF001C */ sw	$ra, 0X1C($sp)
/* 001789 0x8094FAD4 AFA50034 */ sw	$a1, 0X34($sp)
/* 001790 0x8094FAD8 AFA60038 */ sw	$a2, 0X38($sp)
/* 001791 0x8094FADC 860E001C */ lh	$t6, 0X1C($s0)
/* 001792 0x8094FAE0 3C08801F */ lui	$t0, %hi(gSaveContext + 0xC)
/* 001793 0x8094FAE4 9508F67C */ lhu	$t0, %lo(gSaveContext + 0xC)($t0)
/* 001794 0x8094FAE8 31CF00FF */ andi	$t7, $t6, 0XFF
/* 001795 0x8094FAEC A3AF002B */ sb	$t7, 0X2B($sp)
/* 001796 0x8094FAF0 AE000234 */ sw	$zero, 0X234($s0)
/* 001797 0x8094FAF4 8FB80038 */ lw	$t8, 0X38($sp)
/* 001798 0x8094FAF8 3C078095 */ lui	$a3, %hi(D_80951A0C)
/* 001799 0x8094FAFC 2508C004 */ addiu	$t0, $t0, -0X3FFC
/* 001800 0x8094FB00 93190000 */ lbu	$t9, 0X0($t8)
/* 001801 0x8094FB04 3108FFFF */ andi	$t0, $t0, 0XFFFF
/* 001802 0x8094FB08 00001825 */ move	$v1, $zero
/* 001803 0x8094FB0C 00194880 */ sll	$t1, $t9, 2
/* 001804 0x8094FB10 00E93821 */ addu	$a3, $a3, $t1
/* 001805 0x8094FB14 8CE71A0C */ lw	$a3, %lo(D_80951A0C)($a3)
/* 001806 0x8094FB18 04E2000B */ bltzl	$a3, .L8094FB48
/* 001807 0x8094FB1C 8E020234 */ lw	$v0, 0X234($s0)
/* 001808 0x8094FB20 8FA40034 */ lw	$a0, 0X34($sp)
/* 001809 0x8094FB24 93A5002B */ lbu	$a1, 0X2B($sp)
/* 001810 0x8094FB28 00E03025 */ move	$a2, $a3
/* 001811 0x8094FB2C AFA30020 */ sw	$v1, 0X20($sp)
/* 001812 0x8094FB30 0C04EECD */ jal	func_8013BB34
/* 001813 0x8094FB34 A7A8002E */ sh	$t0, 0X2E($sp)
/* 001814 0x8094FB38 8FA30020 */ lw	$v1, 0X20($sp)
/* 001815 0x8094FB3C 97A8002E */ lhu	$t0, 0X2E($sp)
/* 001816 0x8094FB40 AE020234 */ sw	$v0, 0X234($s0)
/* 001817 0x8094FB44 8E020234 */ lw	$v0, 0X234($s0)
.L8094FB48:
/* 001818 0x8094FB48 260403A4 */ addiu	$a0, $s0, 0X3A4
/* 001819 0x8094FB4C 24050003 */ li	$a1, 0X3
/* 001820 0x8094FB50 10400007 */ beqz	$v0, .L8094FB70
/* 001821 0x8094FB54 24060007 */ li	$a2, 0X7
/* 001822 0x8094FB58 904A0000 */ lbu	$t2, 0X0($v0)
/* 001823 0x8094FB5C 29410003 */ slti	$at, $t2, 0X3
/* 001824 0x8094FB60 10200003 */ beqz	$at, .L8094FB70
/* 001825 0x8094FB64 00000000 */ nop
/* 001826 0x8094FB68 AE000234 */ sw	$zero, 0X234($s0)
/* 001827 0x8094FB6C 00001025 */ move	$v0, $zero
.L8094FB70:
/* 001828 0x8094FB70 1040004E */ beqz	$v0, .L8094FCAC
/* 001829 0x8094FB74 8FAD0038 */ lw	$t5, 0X38($sp)
/* 001830 0x8094FB78 92020258 */ lbu	$v0, 0X258($s0)
/* 001831 0x8094FB7C 28410009 */ slti	$at, $v0, 0X9
/* 001832 0x8094FB80 50200009 */ beqzl	$at, .L8094FBA8
/* 001833 0x8094FB84 8FAC0038 */ lw	$t4, 0X38($sp)
/* 001834 0x8094FB88 50400007 */ beqzl	$v0, .L8094FBA8
/* 001835 0x8094FB8C 8FAC0038 */ lw	$t4, 0X38($sp)
/* 001836 0x8094FB90 860B03C4 */ lh	$t3, 0X3C4($s0)
/* 001837 0x8094FB94 05620004 */ bltzl	$t3, .L8094FBA8
/* 001838 0x8094FB98 8FAC0038 */ lw	$t4, 0X38($sp)
/* 001839 0x8094FB9C 10000003 */ b	.L8094FBAC
/* 001840 0x8094FBA0 3103FFFF */ andi	$v1, $t0, 0XFFFF
/* 001841 0x8094FBA4 8FAC0038 */ lw	$t4, 0X38($sp)
.L8094FBA8:
/* 001842 0x8094FBA8 95830006 */ lhu	$v1, 0X6($t4)
.L8094FBAC:
/* 001843 0x8094FBAC 8DA20008 */ lw	$v0, 0X8($t5)
/* 001844 0x8094FBB0 00603825 */ move	$a3, $v1
/* 001845 0x8094FBB4 0107C823 */ subu	$t9, $t0, $a3
/* 001846 0x8094FBB8 0043082A */ slt	$at, $v0, $v1
/* 001847 0x8094FBBC 50200007 */ beqzl	$at, .L8094FBDC
/* 001848 0x8094FBC0 0047C023 */ subu	$t8, $v0, $a3
/* 001849 0x8094FBC4 00627023 */ subu	$t6, $v1, $v0
/* 001850 0x8094FBC8 3401FFFF */ ori	$at, $zero, 0XFFFF
/* 001851 0x8094FBCC 01C17821 */ addu	$t7, $t6, $at
/* 001852 0x8094FBD0 10000003 */ b	.L8094FBE0
/* 001853 0x8094FBD4 AE0F0248 */ sw	$t7, 0X248($s0)
/* 001854 0x8094FBD8 0047C023 */ subu	$t8, $v0, $a3
.L8094FBDC:
/* 001855 0x8094FBDC AE180248 */ sw	$t8, 0X248($s0)
.L8094FBE0:
/* 001856 0x8094FBE0 8E090234 */ lw	$t1, 0X234($s0)
/* 001857 0x8094FBE4 AE190254 */ sw	$t9, 0X254($s0)
/* 001858 0x8094FBE8 8E0A0248 */ lw	$t2, 0X248($s0)
/* 001859 0x8094FBEC 91230000 */ lbu	$v1, 0X0($t1)
/* 001860 0x8094FBF0 8E0B0254 */ lw	$t3, 0X254($s0)
/* 001861 0x8094FBF4 960E03A4 */ lhu	$t6, 0X3A4($s0)
/* 001862 0x8094FBF8 2463FFFE */ addiu	$v1, $v1, -0X2
/* 001863 0x8094FBFC 3063FFFF */ andi	$v1, $v1, 0XFFFF
/* 001864 0x8094FC00 0143001A */ div	$zero, $t2, $v1
/* 001865 0x8094FC04 00001012 */ mflo	$v0
/* 001866 0x8094FC08 31D8FFF7 */ andi	$t8, $t6, 0XFFF7
/* 001867 0x8094FC0C 14600002 */ bnez	$v1, .L8094FC18
/* 001868 0x8094FC10 00000000 */ nop
/* 001869 0x8094FC14 0007000D */ break	0x00007
.L8094FC18:
/* 001870 0x8094FC18 2401FFFF */ li	$at, -0X1
/* 001871 0x8094FC1C 14610004 */ bne	$v1, $at, .L8094FC30
/* 001872 0x8094FC20 3C018000 */ lui	$at, 0x8000
/* 001873 0x8094FC24 15410002 */ bne	$t2, $at, .L8094FC30
/* 001874 0x8094FC28 00000000 */ nop
/* 001875 0x8094FC2C 0006000D */ break	0x00006
.L8094FC30:
/* 001876 0x8094FC30 0162001A */ div	$zero, $t3, $v0
/* 001877 0x8094FC34 00006012 */ mflo	$t4
/* 001878 0x8094FC38 258D0002 */ addiu	$t5, $t4, 0X2
/* 001879 0x8094FC3C A61803A4 */ sh	$t8, 0X3A4($s0)
/* 001880 0x8094FC40 3319FFEF */ andi	$t9, $t8, 0XFFEF
/* 001881 0x8094FC44 AE02024C */ sw	$v0, 0X24C($s0)
/* 001882 0x8094FC48 14400002 */ bnez	$v0, .L8094FC54
/* 001883 0x8094FC4C 00000000 */ nop
/* 001884 0x8094FC50 0007000D */ break	0x00007
.L8094FC54:
/* 001885 0x8094FC54 2401FFFF */ li	$at, -0X1
/* 001886 0x8094FC58 14410004 */ bne	$v0, $at, .L8094FC6C
/* 001887 0x8094FC5C 3C018000 */ lui	$at, 0x8000
/* 001888 0x8094FC60 15610002 */ bne	$t3, $at, .L8094FC6C
/* 001889 0x8094FC64 00000000 */ nop
/* 001890 0x8094FC68 0006000D */ break	0x00006
.L8094FC6C:
/* 001891 0x8094FC6C AE0D0250 */ sw	$t5, 0X250($s0)
/* 001892 0x8094FC70 0C04EBB5 */ jal	func_8013AED4
/* 001893 0x8094FC74 A61903A4 */ sh	$t9, 0X3A4($s0)
/* 001894 0x8094FC78 960903A4 */ lhu	$t1, 0X3A4($s0)
/* 001895 0x8094FC7C 02002025 */ move	$a0, $s0
/* 001896 0x8094FC80 24060007 */ li	$a2, 0X7
/* 001897 0x8094FC84 352B0100 */ ori	$t3, $t1, 0X100
/* 001898 0x8094FC88 A60B03A4 */ sh	$t3, 0X3A4($s0)
/* 001899 0x8094FC8C 356C0200 */ ori	$t4, $t3, 0X200
/* 001900 0x8094FC90 A60C03A4 */ sh	$t4, 0X3A4($s0)
/* 001901 0x8094FC94 0C253815 */ jal	func_8094E054
/* 001902 0x8094FC98 8FA50034 */ lw	$a1, 0X34($sp)
/* 001903 0x8094FC9C 3C01BF80 */ lui	$at, 0xBF80
/* 001904 0x8094FCA0 44812000 */ mtc1	$at, $f4
/* 001905 0x8094FCA4 24030001 */ li	$v1, 0X1
/* 001906 0x8094FCA8 E6040074 */ swc1	$f4, 0X74($s0)
.L8094FCAC:
/* 001907 0x8094FCAC 00601025 */ move	$v0, $v1
/* 001908 0x8094FCB0 8FBF001C */ lw	$ra, 0X1C($sp)
/* 001909 0x8094FCB4 8FB00018 */ lw	$s0, 0X18($sp)
/* 001910 0x8094FCB8 27BD0030 */ addiu	$sp, $sp, 0X30
/* 001911 0x8094FCBC 03E00008 */ jr	$ra
/* 001912 0x8094FCC0 00000000 */ nop

