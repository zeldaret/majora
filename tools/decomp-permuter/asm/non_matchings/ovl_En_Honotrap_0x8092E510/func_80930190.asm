glabel func_80930190
/* 001824 0x80930190 27BDFF28 */ addiu	$sp, $sp, -0XD8
/* 001825 0x80930194 AFB60070 */ sw	$s6, 0X70($sp)
/* 001826 0x80930198 00A0B025 */ move	$s6, $a1
/* 001827 0x8093019C AFBF007C */ sw	$ra, 0X7C($sp)
/* 001828 0x809301A0 AFBE0078 */ sw	$fp, 0X78($sp)
/* 001829 0x809301A4 AFB70074 */ sw	$s7, 0X74($sp)
/* 001830 0x809301A8 AFB5006C */ sw	$s5, 0X6C($sp)
/* 001831 0x809301AC AFB40068 */ sw	$s4, 0X68($sp)
/* 001832 0x809301B0 AFB30064 */ sw	$s3, 0X64($sp)
/* 001833 0x809301B4 AFB20060 */ sw	$s2, 0X60($sp)
/* 001834 0x809301B8 AFB1005C */ sw	$s1, 0X5C($sp)
/* 001835 0x809301BC AFB00058 */ sw	$s0, 0X58($sp)
/* 001836 0x809301C0 F7BA0050 */ sdc1	$f26, 0X50($sp)
/* 001837 0x809301C4 F7B80048 */ sdc1	$f24, 0X48($sp)
/* 001838 0x809301C8 F7B60040 */ sdc1	$f22, 0X40($sp)
/* 001839 0x809301CC F7B40038 */ sdc1	$f20, 0X38($sp)
/* 001840 0x809301D0 AFA400D8 */ sw	$a0, 0XD8($sp)
/* 001841 0x809301D4 8EC40000 */ lw	$a0, 0X0($s6)
/* 001842 0x809301D8 0C04B0B7 */ jal	func_8012C2DC
/* 001843 0x809301DC 00809025 */ move	$s2, $a0
/* 001844 0x809301E0 8E4202C0 */ lw	$v0, 0X2C0($s2)
/* 001845 0x809301E4 3C0FFA00 */ lui	$t7, 0xFA00
/* 001846 0x809301E8 3C18FFC8 */ lui	$t8, 0xFFC8
/* 001847 0x809301EC 244E0008 */ addiu	$t6, $v0, 0X8
/* 001848 0x809301F0 AE4E02C0 */ sw	$t6, 0X2C0($s2)
/* 001849 0x809301F4 371800FF */ ori	$t8, $t8, 0XFF
/* 001850 0x809301F8 35EF8080 */ ori	$t7, $t7, 0X8080
/* 001851 0x809301FC AC4F0000 */ sw	$t7, 0X0($v0)
/* 001852 0x80930200 AC580004 */ sw	$t8, 0X4($v0)
/* 001853 0x80930204 8E4202C0 */ lw	$v0, 0X2C0($s2)
/* 001854 0x80930208 3C08FB00 */ lui	$t0, 0xFB00
/* 001855 0x8093020C 3C09FF00 */ lui	$t1, 0xFF00
/* 001856 0x80930210 24590008 */ addiu	$t9, $v0, 0X8
/* 001857 0x80930214 AE5902C0 */ sw	$t9, 0X2C0($s2)
/* 001858 0x80930218 AC490004 */ sw	$t1, 0X4($v0)
/* 001859 0x8093021C AC480000 */ sw	$t0, 0X0($v0)
/* 001860 0x80930220 86CA0810 */ lh	$t2, 0X810($s6)
/* 001861 0x80930224 27A400B8 */ addiu	$a0, $sp, 0XB8
/* 001862 0x80930228 000A5880 */ sll	$t3, $t2, 2
/* 001863 0x8093022C 02CB6021 */ addu	$t4, $s6, $t3
/* 001864 0x80930230 0C037F24 */ jal	func_800DFC90
/* 001865 0x80930234 8D850800 */ lw	$a1, 0X800($t4)
/* 001866 0x80930238 87AD00BA */ lh	$t5, 0XBA($sp)
/* 001867 0x8093023C 34018000 */ ori	$at, $zero, 0X8000
/* 001868 0x80930240 8FB300D8 */ lw	$s3, 0XD8($sp)
/* 001869 0x80930244 01A17021 */ addu	$t6, $t5, $at
/* 001870 0x80930248 3C013F80 */ lui	$at, 0x3F80
/* 001871 0x8093024C 4481D000 */ mtc1	$at, $f26
/* 001872 0x80930250 3C018093 */ lui	$at, %hi(D_80930570)
/* 001873 0x80930254 C4380570 */ lwc1	$f24, %lo(D_80930570)($at)
/* 001874 0x80930258 3C018093 */ lui	$at, %hi(D_80930574)
/* 001875 0x8093025C C4360574 */ lwc1	$f22, %lo(D_80930574)($at)
/* 001876 0x80930260 3C01457A */ lui	$at, 0x457A
/* 001877 0x80930264 3C1EDA38 */ lui	$fp, 0xDA38
/* 001878 0x80930268 3C17DB06 */ lui	$s7, 0xDB06
/* 001879 0x8093026C 4481A000 */ mtc1	$at, $f20
/* 001880 0x80930270 A7AE00BA */ sh	$t6, 0XBA($sp)
/* 001881 0x80930274 36F70020 */ ori	$s7, $s7, 0X20
/* 001882 0x80930278 37DE0003 */ ori	$fp, $fp, 0X3
/* 001883 0x8093027C 0000A025 */ move	$s4, $zero
/* 001884 0x80930280 2673023C */ addiu	$s3, $s3, 0X23C
.L80930284:
/* 001885 0x80930284 926F001E */ lbu	$t7, 0X1E($s3)
/* 001886 0x80930288 3C150408 */ lui	$s5, 0x0408
/* 001887 0x8093028C 26B5D590 */ addiu	$s5, $s5, -0X2A70
/* 001888 0x80930290 11E00042 */ beqz	$t7, .L8093039C
/* 001889 0x80930294 2670000C */ addiu	$s0, $s3, 0XC
/* 001890 0x80930298 8E4202C0 */ lw	$v0, 0X2C0($s2)
/* 001891 0x8093029C 24190020 */ li	$t9, 0X20
/* 001892 0x809302A0 24080040 */ li	$t0, 0X40
/* 001893 0x809302A4 24580008 */ addiu	$t8, $v0, 0X8
/* 001894 0x809302A8 AE5802C0 */ sw	$t8, 0X2C0($s2)
/* 001895 0x809302AC AC570000 */ sw	$s7, 0X0($v0)
/* 001896 0x809302B0 8EC40000 */ lw	$a0, 0X0($s6)
/* 001897 0x809302B4 24090001 */ li	$t1, 0X1
/* 001898 0x809302B8 AFA90018 */ sw	$t1, 0X18($sp)
/* 001899 0x809302BC AFA0001C */ sw	$zero, 0X1C($sp)
/* 001900 0x809302C0 AFA80014 */ sw	$t0, 0X14($sp)
/* 001901 0x809302C4 AFB90010 */ sw	$t9, 0X10($sp)
/* 001902 0x809302C8 860A0010 */ lh	$t2, 0X10($s0)
/* 001903 0x809302CC 240B0020 */ li	$t3, 0X20
/* 001904 0x809302D0 240C0080 */ li	$t4, 0X80
/* 001905 0x809302D4 AFAC0028 */ sw	$t4, 0X28($sp)
/* 001906 0x809302D8 AFAB0024 */ sw	$t3, 0X24($sp)
/* 001907 0x809302DC 00002825 */ move	$a1, $zero
/* 001908 0x809302E0 00003025 */ move	$a2, $zero
/* 001909 0x809302E4 00003825 */ move	$a3, $zero
/* 001910 0x809302E8 00408825 */ move	$s1, $v0
/* 001911 0x809302EC 0C04B2F4 */ jal	Gfx_TwoTexScroll
/* 001912 0x809302F0 AFAA0020 */ sw	$t2, 0X20($sp)
/* 001913 0x809302F4 AE220004 */ sw	$v0, 0X4($s1)
/* 001914 0x809302F8 C606000C */ lwc1	$f6, 0XC($s0)
/* 001915 0x809302FC C6040004 */ lwc1	$f4, 0X4($s0)
/* 001916 0x80930300 C60C0000 */ lwc1	$f12, 0X0($s0)
/* 001917 0x80930304 4606A202 */ mul.s	$f8, $f20, $f6
/* 001918 0x80930308 8E060008 */ lw	$a2, 0X8($s0)
/* 001919 0x8093030C 27A700B8 */ addiu	$a3, $sp, 0XB8
/* 001920 0x80930310 0C060594 */ jal	SysMatrix_SetStateRotationAndTranslation
/* 001921 0x80930314 46082381 */ sub.s	$f14, $f4, $f8
/* 001922 0x80930318 8FAE00D8 */ lw	$t6, 0XD8($sp)
/* 001923 0x8093031C 87AD00BA */ lh	$t5, 0XBA($sp)
/* 001924 0x80930320 85CF00BE */ lh	$t7, 0XBE($t6)
/* 001925 0x80930324 01AF2023 */ subu	$a0, $t5, $t7
/* 001926 0x80930328 00042400 */ sll	$a0, $a0, 16
/* 001927 0x8093032C 00042403 */ sra	$a0, $a0, 16
/* 001928 0x80930330 00042043 */ sra	$a0, $a0, 1
/* 001929 0x80930334 00042400 */ sll	$a0, $a0, 16
/* 001930 0x80930338 0C03FB61 */ jal	Math_Sins
/* 001931 0x8093033C 00042403 */ sra	$a0, $a0, 16
/* 001932 0x80930340 46000005 */ abs.s	$f0, $f0
/* 001933 0x80930344 C60E000C */ lwc1	$f14, 0XC($s0)
/* 001934 0x80930348 46160282 */ mul.s	$f10, $f0, $f22
/* 001935 0x8093034C 4406D000 */ mfc1	$a2, $f26
/* 001936 0x80930350 24070001 */ li	$a3, 0X1
/* 001937 0x80930354 46185400 */ add.s	$f16, $f10, $f24
/* 001938 0x80930358 460E8302 */ mul.s	$f12, $f16, $f14
/* 001939 0x8093035C 0C0600E7 */ jal	SysMatrix_InsertScale
/* 001940 0x80930360 00000000 */ nop
/* 001941 0x80930364 8E4202C0 */ lw	$v0, 0X2C0($s2)
/* 001942 0x80930368 24580008 */ addiu	$t8, $v0, 0X8
/* 001943 0x8093036C AE5802C0 */ sw	$t8, 0X2C0($s2)
/* 001944 0x80930370 AC5E0000 */ sw	$fp, 0X0($v0)
/* 001945 0x80930374 8EC40000 */ lw	$a0, 0X0($s6)
/* 001946 0x80930378 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 001947 0x8093037C 00408025 */ move	$s0, $v0
/* 001948 0x80930380 AE020004 */ sw	$v0, 0X4($s0)
/* 001949 0x80930384 8E4202C0 */ lw	$v0, 0X2C0($s2)
/* 001950 0x80930388 3C08DE00 */ lui	$t0, 0xDE00
/* 001951 0x8093038C 24590008 */ addiu	$t9, $v0, 0X8
/* 001952 0x80930390 AE5902C0 */ sw	$t9, 0X2C0($s2)
/* 001953 0x80930394 AC550004 */ sw	$s5, 0X4($v0)
/* 001954 0x80930398 AC480000 */ sw	$t0, 0X0($v0)
.L8093039C:
/* 001955 0x8093039C 26940014 */ addiu	$s4, $s4, 0X14
/* 001956 0x809303A0 24010078 */ li	$at, 0X78
/* 001957 0x809303A4 1681FFB7 */ bne	$s4, $at, .L80930284
/* 001958 0x809303A8 26730014 */ addiu	$s3, $s3, 0X14
/* 001959 0x809303AC 8FBF007C */ lw	$ra, 0X7C($sp)
/* 001960 0x809303B0 D7B40038 */ ldc1	$f20, 0X38($sp)
/* 001961 0x809303B4 D7B60040 */ ldc1	$f22, 0X40($sp)
/* 001962 0x809303B8 D7B80048 */ ldc1	$f24, 0X48($sp)
/* 001963 0x809303BC D7BA0050 */ ldc1	$f26, 0X50($sp)
/* 001964 0x809303C0 8FB00058 */ lw	$s0, 0X58($sp)
/* 001965 0x809303C4 8FB1005C */ lw	$s1, 0X5C($sp)
/* 001966 0x809303C8 8FB20060 */ lw	$s2, 0X60($sp)
/* 001967 0x809303CC 8FB30064 */ lw	$s3, 0X64($sp)
/* 001968 0x809303D0 8FB40068 */ lw	$s4, 0X68($sp)
/* 001969 0x809303D4 8FB5006C */ lw	$s5, 0X6C($sp)
/* 001970 0x809303D8 8FB60070 */ lw	$s6, 0X70($sp)
/* 001971 0x809303DC 8FB70074 */ lw	$s7, 0X74($sp)
/* 001972 0x809303E0 8FBE0078 */ lw	$fp, 0X78($sp)
/* 001973 0x809303E4 03E00008 */ jr	$ra
/* 001974 0x809303E8 27BD00D8 */ addiu	$sp, $sp, 0XD8
/* 001975 0x809303EC 00000000 */ nop
