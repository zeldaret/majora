glabel EnHakurock_Update
/* 000803 0x80B2278C 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 000804 0x80B22790 AFB20028 */ sw	$s2, 0X28($sp)
/* 000805 0x80B22794 AFB10024 */ sw	$s1, 0X24($sp)
/* 000806 0x80B22798 00808825 */ move	$s1, $a0
/* 000807 0x80B2279C 00A09025 */ move	$s2, $a1
/* 000808 0x80B227A0 AFBF002C */ sw	$ra, 0X2C($sp)
/* 000809 0x80B227A4 AFB00020 */ sw	$s0, 0X20($sp)
/* 000810 0x80B227A8 8E390144 */ lw	$t9, 0X144($s1)
/* 000811 0x80B227AC 02202025 */ move	$a0, $s1
/* 000812 0x80B227B0 02402825 */ move	$a1, $s2
/* 000813 0x80B227B4 0320F809 */ jalr	$t9
/* 000814 0x80B227B8 00000000 */ nop
/* 000815 0x80B227BC 8622001C */ lh	$v0, 0X1C($s1)
/* 000816 0x80B227C0 24010001 */ li	$at, 0X1
/* 000817 0x80B227C4 10410003 */ beq	$v0, $at, .L80B227D4
/* 000818 0x80B227C8 24010002 */ li	$at, 0X2
/* 000819 0x80B227CC 54410031 */ bnel	$v0, $at, .L80B22894
/* 000820 0x80B227D0 24010003 */ li	$at, 0X3
.L80B227D4:
/* 000821 0x80B227D4 0C02DAA2 */ jal	Actor_SetVelocityAndMoveYRotationAndGravity
/* 000822 0x80B227D8 02202025 */ move	$a0, $s1
/* 000823 0x80B227DC 862E018C */ lh	$t6, 0X18C($s1)
/* 000824 0x80B227E0 44803000 */ mtc1	$zero, $f6
/* 000825 0x80B227E4 240F0085 */ li	$t7, 0X85
/* 000826 0x80B227E8 448E2000 */ mtc1	$t6, $f4
/* 000827 0x80B227EC AFAF0014 */ sw	$t7, 0X14($sp)
/* 000828 0x80B227F0 02402025 */ move	$a0, $s2
/* 000829 0x80B227F4 46802120 */ cvt.s.w	$f4, $f4
/* 000830 0x80B227F8 02202825 */ move	$a1, $s1
/* 000831 0x80B227FC 3C0641F0 */ lui	$a2, 0x41F0
/* 000832 0x80B22800 E7A60010 */ swc1	$f6, 0X10($sp)
/* 000833 0x80B22804 44072000 */ mfc1	$a3, $f4
/* 000834 0x80B22808 0C02DE2E */ jal	func_800B78B8
/* 000835 0x80B2280C 00000000 */ nop
/* 000836 0x80B22810 3C01C6FA */ lui	$at, 0xC6FA
/* 000837 0x80B22814 44814000 */ mtc1	$at, $f8
/* 000838 0x80B22818 C62A0088 */ lwc1	$f10, 0X88($s1)
/* 000839 0x80B2281C 02202025 */ move	$a0, $s1
/* 000840 0x80B22820 2630014C */ addiu	$s0, $s1, 0X14C
/* 000841 0x80B22824 460A4032 */ c.eq.s	$f8, $f10
/* 000842 0x80B22828 00000000 */ nop
/* 000843 0x80B2282C 45000005 */ bc1f .L80B22844
/* 000844 0x80B22830 00000000 */ nop
/* 000845 0x80B22834 0C2C87FF */ jal	func_80B21FFC
/* 000846 0x80B22838 02202025 */ move	$a0, $s1
/* 000847 0x80B2283C 10000028 */ b	.L80B228E0
/* 000848 0x80B22840 8FBF002C */ lw	$ra, 0X2C($sp)
.L80B22844:
/* 000849 0x80B22844 0C039F7E */ jal	Collision_CylinderMoveToActor
/* 000850 0x80B22848 02002825 */ move	$a1, $s0
/* 000851 0x80B2284C 3C010001 */ lui	$at, 0x0001
/* 000852 0x80B22850 34218884 */ ori	$at, $at, 0X8884
/* 000853 0x80B22854 02412821 */ addu	$a1, $s2, $at
/* 000854 0x80B22858 AFA50034 */ sw	$a1, 0X34($sp)
/* 000855 0x80B2285C 02402025 */ move	$a0, $s2
/* 000856 0x80B22860 0C038956 */ jal	Collision_AddAT
/* 000857 0x80B22864 02003025 */ move	$a2, $s0
/* 000858 0x80B22868 8FA50034 */ lw	$a1, 0X34($sp)
/* 000859 0x80B2286C 02402025 */ move	$a0, $s2
/* 000860 0x80B22870 0C0389D0 */ jal	Collision_AddAC
/* 000861 0x80B22874 02003025 */ move	$a2, $s0
/* 000862 0x80B22878 8FA50034 */ lw	$a1, 0X34($sp)
/* 000863 0x80B2287C 02402025 */ move	$a0, $s2
/* 000864 0x80B22880 0C038A4A */ jal	Collision_AddOT
/* 000865 0x80B22884 02003025 */ move	$a2, $s0
/* 000866 0x80B22888 10000015 */ b	.L80B228E0
/* 000867 0x80B2288C 8FBF002C */ lw	$ra, 0X2C($sp)
/* 000868 0x80B22890 24010003 */ li	$at, 0X3
.L80B22894:
/* 000869 0x80B22894 10410003 */ beq	$v0, $at, .L80B228A4
/* 000870 0x80B22898 02202025 */ move	$a0, $s1
/* 000871 0x80B2289C 24010004 */ li	$at, 0X4
/* 000872 0x80B228A0 1441000E */ bne	$v0, $at, .L80B228DC
.L80B228A4:
/* 000873 0x80B228A4 2630014C */ addiu	$s0, $s1, 0X14C
/* 000874 0x80B228A8 0C039F7E */ jal	Collision_CylinderMoveToActor
/* 000875 0x80B228AC 02002825 */ move	$a1, $s0
/* 000876 0x80B228B0 3C010001 */ lui	$at, 0x0001
/* 000877 0x80B228B4 34218884 */ ori	$at, $at, 0X8884
/* 000878 0x80B228B8 02412821 */ addu	$a1, $s2, $at
/* 000879 0x80B228BC AFA50034 */ sw	$a1, 0X34($sp)
/* 000880 0x80B228C0 02402025 */ move	$a0, $s2
/* 000881 0x80B228C4 0C0389D0 */ jal	Collision_AddAC
/* 000882 0x80B228C8 02003025 */ move	$a2, $s0
/* 000883 0x80B228CC 8FA50034 */ lw	$a1, 0X34($sp)
/* 000884 0x80B228D0 02402025 */ move	$a0, $s2
/* 000885 0x80B228D4 0C038A4A */ jal	Collision_AddOT
/* 000886 0x80B228D8 02003025 */ move	$a2, $s0
.L80B228DC:
/* 000887 0x80B228DC 8FBF002C */ lw	$ra, 0X2C($sp)
.L80B228E0:
/* 000888 0x80B228E0 8FB00020 */ lw	$s0, 0X20($sp)
/* 000889 0x80B228E4 8FB10024 */ lw	$s1, 0X24($sp)
/* 000890 0x80B228E8 8FB20028 */ lw	$s2, 0X28($sp)
/* 000891 0x80B228EC 03E00008 */ jr	$ra
/* 000892 0x80B228F0 27BD0040 */ addiu	$sp, $sp, 0X40

