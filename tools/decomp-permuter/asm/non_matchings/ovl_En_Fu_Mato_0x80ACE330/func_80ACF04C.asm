glabel func_80ACF04C
/* 000839 0x80ACF04C 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000840 0x80ACF050 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000841 0x80ACF054 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000842 0x80ACF058 00803825 */ move	$a3, $a0
/* 000843 0x80ACF05C C4E40024 */ lwc1	$f4, 0X24($a3)
/* 000844 0x80ACF060 C4E80028 */ lwc1	$f8, 0X28($a3)
/* 000845 0x80ACF064 C4F0002C */ lwc1	$f16, 0X2C($a3)
/* 000846 0x80ACF068 4600218D */ trunc.w.s	$f6, $f4
/* 000847 0x80ACF06C 84EA0302 */ lh	$t2, 0X302($a3)
/* 000848 0x80ACF070 8CE30120 */ lw	$v1, 0X120($a3)
/* 000849 0x80ACF074 4600428D */ trunc.w.s	$f10, $f8
/* 000850 0x80ACF078 440F3000 */ mfc1	$t7, $f6
/* 000851 0x80ACF07C 24E60160 */ addiu	$a2, $a3, 0X160
/* 000852 0x80ACF080 4600848D */ trunc.w.s	$f18, $f16
/* 000853 0x80ACF084 44195000 */ mfc1	$t9, $f10
/* 000854 0x80ACF088 A4EF01A8 */ sh	$t7, 0X1A8($a3)
/* 000855 0x80ACF08C 44099000 */ mfc1	$t1, $f18
/* 000856 0x80ACF090 A4F901AA */ sh	$t9, 0X1AA($a3)
/* 000857 0x80ACF094 15400031 */ bnez	$t2, .L80ACF15C
/* 000858 0x80ACF098 A4E901AC */ sh	$t1, 0X1AC($a3)
/* 000859 0x80ACF09C 84640542 */ lh	$a0, 0X542($v1)
/* 000860 0x80ACF0A0 24010002 */ li	$at, 0X2
/* 000861 0x80ACF0A4 14800005 */ bnez	$a0, .L80ACF0BC
/* 000862 0x80ACF0A8 00000000 */ nop
/* 000863 0x80ACF0AC 90E20171 */ lbu	$v0, 0X171($a3)
/* 000864 0x80ACF0B0 304B0002 */ andi	$t3, $v0, 0X2
/* 000865 0x80ACF0B4 55600009 */ bnezl	$t3, .L80ACF0DC
/* 000866 0x80ACF0B8 90EF0172 */ lbu	$t7, 0X172($a3)
.L80ACF0BC:
/* 000867 0x80ACF0BC 54810028 */ bnel	$a0, $at, .L80ACF160
/* 000868 0x80ACF0C0 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000869 0x80ACF0C4 90EC0172 */ lbu	$t4, 0X172($a3)
/* 000870 0x80ACF0C8 318D0002 */ andi	$t5, $t4, 0X2
/* 000871 0x80ACF0CC 51A00024 */ beqzl	$t5, .L80ACF160
/* 000872 0x80ACF0D0 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000873 0x80ACF0D4 90E20171 */ lbu	$v0, 0X171($a3)
/* 000874 0x80ACF0D8 90EF0172 */ lbu	$t7, 0X172($a3)
.L80ACF0DC:
/* 000875 0x80ACF0DC 304EFFFD */ andi	$t6, $v0, 0XFFFD
/* 000876 0x80ACF0E0 A0EE0171 */ sb	$t6, 0X171($a3)
/* 000877 0x80ACF0E4 31F8FFFD */ andi	$t8, $t7, 0XFFFD
/* 000878 0x80ACF0E8 A0F80172 */ sb	$t8, 0X172($a3)
/* 000879 0x80ACF0EC AFA70028 */ sw	$a3, 0X28($sp)
/* 000880 0x80ACF0F0 AFA30024 */ sw	$v1, 0X24($sp)
/* 000881 0x80ACF0F4 00E02025 */ move	$a0, $a3
/* 000882 0x80ACF0F8 0C02E3B2 */ jal	func_800B8EC8
/* 000883 0x80ACF0FC 24054807 */ li	$a1, 0X4807
/* 000884 0x80ACF100 8FA30024 */ lw	$v1, 0X24($sp)
/* 000885 0x80ACF104 8FA70028 */ lw	$a3, 0X28($sp)
/* 000886 0x80ACF108 24010002 */ li	$at, 0X2
/* 000887 0x80ACF10C 84790548 */ lh	$t9, 0X548($v1)
/* 000888 0x80ACF110 84690542 */ lh	$t1, 0X542($v1)
/* 000889 0x80ACF114 3C0A801F */ lui	$t2, %hi(gSaveContext + 0x20)
/* 000890 0x80ACF118 27280001 */ addiu	$t0, $t9, 0X1
/* 000891 0x80ACF11C 11210005 */ beq	$t1, $at, .L80ACF134
/* 000892 0x80ACF120 A4680548 */ sh	$t0, 0X548($v1)
/* 000893 0x80ACF124 914AF690 */ lbu	$t2, %lo(gSaveContext + 0x20)($t2)
/* 000894 0x80ACF128 24010003 */ li	$at, 0X3
/* 000895 0x80ACF12C 00E02025 */ move	$a0, $a3
/* 000896 0x80ACF130 15410006 */ bne	$t2, $at, .L80ACF14C
.L80ACF134:
/* 000897 0x80ACF134 240B0001 */ li	$t3, 0X1
/* 000898 0x80ACF138 A46B0546 */ sh	$t3, 0X546($v1)
/* 000899 0x80ACF13C 0C2B39A0 */ jal	func_80ACE680
/* 000900 0x80ACF140 00E02025 */ move	$a0, $a3
/* 000901 0x80ACF144 10000011 */ b	.L80ACF18C
/* 000902 0x80ACF148 24020001 */ li	$v0, 0X1
.L80ACF14C:
/* 000903 0x80ACF14C 0C2B3A14 */ jal	func_80ACE850
/* 000904 0x80ACF150 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000905 0x80ACF154 1000000D */ b	.L80ACF18C
/* 000906 0x80ACF158 24020001 */ li	$v0, 0X1
.L80ACF15C:
/* 000907 0x80ACF15C 8FA4002C */ lw	$a0, 0X2C($sp)
.L80ACF160:
/* 000908 0x80ACF160 3C010001 */ lui	$at, 0x0001
/* 000909 0x80ACF164 34218884 */ ori	$at, $at, 0X8884
/* 000910 0x80ACF168 00812821 */ addu	$a1, $a0, $at
/* 000911 0x80ACF16C AFA50020 */ sw	$a1, 0X20($sp)
/* 000912 0x80ACF170 0C0389D0 */ jal	Collision_AddAC
/* 000913 0x80ACF174 AFA6001C */ sw	$a2, 0X1C($sp)
/* 000914 0x80ACF178 8FA50020 */ lw	$a1, 0X20($sp)
/* 000915 0x80ACF17C 8FA6001C */ lw	$a2, 0X1C($sp)
/* 000916 0x80ACF180 0C038A4A */ jal	Collision_AddOT
/* 000917 0x80ACF184 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000918 0x80ACF188 00001025 */ move	$v0, $zero
.L80ACF18C:
/* 000919 0x80ACF18C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000920 0x80ACF190 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000921 0x80ACF194 03E00008 */ jr	$ra
/* 000922 0x80ACF198 00000000 */ nop

