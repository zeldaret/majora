glabel ObjTakarayaWall_Draw
/* 000878 0x80AD9FF8 27BDFF60 */ addiu	$sp, $sp, -0XA0
/* 000879 0x80AD9FFC AFBF004C */ sw	$ra, 0X4C($sp)
/* 000880 0x80ADA000 AFBE0048 */ sw	$fp, 0X48($sp)
/* 000881 0x80ADA004 AFB70044 */ sw	$s7, 0X44($sp)
/* 000882 0x80ADA008 AFB60040 */ sw	$s6, 0X40($sp)
/* 000883 0x80ADA00C AFB5003C */ sw	$s5, 0X3C($sp)
/* 000884 0x80ADA010 AFB40038 */ sw	$s4, 0X38($sp)
/* 000885 0x80ADA014 AFB30034 */ sw	$s3, 0X34($sp)
/* 000886 0x80ADA018 AFB20030 */ sw	$s2, 0X30($sp)
/* 000887 0x80ADA01C AFB1002C */ sw	$s1, 0X2C($sp)
/* 000888 0x80ADA020 AFB00028 */ sw	$s0, 0X28($sp)
/* 000889 0x80ADA024 F7B60020 */ sdc1	$f22, 0X20($sp)
/* 000890 0x80ADA028 F7B40018 */ sdc1	$f20, 0X18($sp)
/* 000891 0x80ADA02C AFA400A0 */ sw	$a0, 0XA0($sp)
/* 000892 0x80ADA030 AFA500A4 */ sw	$a1, 0XA4($sp)
/* 000893 0x80ADA034 8FAE00A4 */ lw	$t6, 0XA4($sp)
/* 000894 0x80ADA038 8DCF0000 */ lw	$t7, 0X0($t6)
/* 000895 0x80ADA03C 0C06008D */ jal	SysMatrix_GetCurrentState
/* 000896 0x80ADA040 AFAF007C */ sw	$t7, 0X7C($sp)
/* 000897 0x80ADA044 8FB8007C */ lw	$t8, 0X7C($sp)
/* 000898 0x80ADA048 0040A025 */ move	$s4, $v0
/* 000899 0x80ADA04C 3C19DE00 */ lui	$t9, 0xDE00
/* 000900 0x80ADA050 8F1202B0 */ lw	$s2, 0X2B0($t8)
/* 000901 0x80ADA054 02401025 */ move	$v0, $s2
/* 000902 0x80ADA058 3C08801C */ lui	$t0, %hi(sSetupDL + 0x4B0)
/* 000903 0x80ADA05C 250813A0 */ addiu	$t0, $t0, %lo(sSetupDL + 0x4B0)
/* 000904 0x80ADA060 AC480004 */ sw	$t0, 0X4($v0)
/* 000905 0x80ADA064 AC590000 */ sw	$t9, 0X0($v0)
/* 000906 0x80ADA068 26520008 */ addiu	$s2, $s2, 0X8
/* 000907 0x80ADA06C 02401025 */ move	$v0, $s2
/* 000908 0x80ADA070 3C09FA00 */ lui	$t1, 0xFA00
/* 000909 0x80ADA074 240AFFFF */ li	$t2, -0X1
/* 000910 0x80ADA078 AC4A0004 */ sw	$t2, 0X4($v0)
/* 000911 0x80ADA07C AC490000 */ sw	$t1, 0X0($v0)
/* 000912 0x80ADA080 26520008 */ addiu	$s2, $s2, 0X8
/* 000913 0x80ADA084 3C0B80AE */ lui	$t3, %hi(D_80ADA988)
/* 000914 0x80ADA088 3C0142F0 */ lui	$at, 0x42F0
/* 000915 0x80ADA08C 256BA988 */ addiu	$t3, $t3, %lo(D_80ADA988)
/* 000916 0x80ADA090 4481B000 */ mtc1	$at, $f22
/* 000917 0x80ADA094 4480A000 */ mtc1	$zero, $f20
/* 000918 0x80ADA098 AFAB0060 */ sw	$t3, 0X60($sp)
/* 000919 0x80ADA09C 0000B825 */ move	$s7, $zero
/* 000920 0x80ADA0A0 241E0078 */ li	$fp, 0X78
.L80ADA0A4:
/* 000921 0x80ADA0A4 00008825 */ move	$s1, $zero
/* 000922 0x80ADA0A8 8FB60060 */ lw	$s6, 0X60($sp)
.L80ADA0AC:
/* 000923 0x80ADA0AC C6C40000 */ lwc1	$f4, 0X0($s6)
/* 000924 0x80ADA0B0 3C0ADA38 */ lui	$t2, 0xDA38
/* 000925 0x80ADA0B4 354A0003 */ ori	$t2, $t2, 0X3
/* 000926 0x80ADA0B8 4604A03C */ c.lt.s	$f20, $f4
/* 000927 0x80ADA0BC 02408025 */ move	$s0, $s2
/* 000928 0x80ADA0C0 45020056 */ bc1fl .L80ADA21C
/* 000929 0x80ADA0C4 26310001 */ addiu	$s1, $s1, 0X1
/* 000930 0x80ADA0C8 02FE0019 */ multu	$s7, $fp
/* 000931 0x80ADA0CC 0017C8C0 */ sll	$t9, $s7, 3
/* 000932 0x80ADA0D0 3C0980AE */ lui	$t1, %hi(D_80ADA930)
/* 000933 0x80ADA0D4 2529A930 */ addiu	$t1, $t1, %lo(D_80ADA930)
/* 000934 0x80ADA0D8 03314021 */ addu	$t0, $t9, $s1
/* 000935 0x80ADA0DC 0109A821 */ addu	$s5, $t0, $t1
/* 000936 0x80ADA0E0 02F19821 */ addu	$s3, $s7, $s1
/* 000937 0x80ADA0E4 00006012 */ mflo	$t4
/* 000938 0x80ADA0E8 258DF9AC */ addiu	$t5, $t4, -0X654
/* 000939 0x80ADA0EC 448D3000 */ mtc1	$t5, $f6
/* 000940 0x80ADA0F0 023E0019 */ multu	$s1, $fp
/* 000941 0x80ADA0F4 46803220 */ cvt.s.w	$f8, $f6
/* 000942 0x80ADA0F8 E6880030 */ swc1	$f8, 0X30($s4)
/* 000943 0x80ADA0FC 8FAE00A0 */ lw	$t6, 0XA0($sp)
/* 000944 0x80ADA100 00007812 */ mflo	$t7
/* 000945 0x80ADA104 25F8003C */ addiu	$t8, $t7, 0X3C
/* 000946 0x80ADA108 C5D00028 */ lwc1	$f16, 0X28($t6)
/* 000947 0x80ADA10C 44983000 */ mtc1	$t8, $f6
/* 000948 0x80ADA110 C6CA0000 */ lwc1	$f10, 0X0($s6)
/* 000949 0x80ADA114 46168481 */ sub.s	$f18, $f16, $f22
/* 000950 0x80ADA118 46803220 */ cvt.s.w	$f8, $f6
/* 000951 0x80ADA11C 46125100 */ add.s	$f4, $f10, $f18
/* 000952 0x80ADA120 E6880038 */ swc1	$f8, 0X38($s4)
/* 000953 0x80ADA124 E6840034 */ swc1	$f4, 0X34($s4)
/* 000954 0x80ADA128 AE0A0000 */ sw	$t2, 0X0($s0)
/* 000955 0x80ADA12C 8FAB00A4 */ lw	$t3, 0XA4($sp)
/* 000956 0x80ADA130 26520008 */ addiu	$s2, $s2, 0X8
/* 000957 0x80ADA134 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000958 0x80ADA138 8D640000 */ lw	$a0, 0X0($t3)
/* 000959 0x80ADA13C AE020004 */ sw	$v0, 0X4($s0)
/* 000960 0x80ADA140 326C0001 */ andi	$t4, $s3, 0X1
/* 000961 0x80ADA144 1180000A */ beqz	$t4, .L80ADA170
/* 000962 0x80ADA148 3C030600 */ lui	$v1, 0x0600
/* 000963 0x80ADA14C 3C030600 */ lui	$v1, 0x0600
/* 000964 0x80ADA150 24630D60 */ addiu	$v1, $v1, 0XD60
/* 000965 0x80ADA154 02401025 */ move	$v0, $s2
/* 000966 0x80ADA158 3C0DDE00 */ lui	$t5, 0xDE00
/* 000967 0x80ADA15C AC4D0000 */ sw	$t5, 0X0($v0)
/* 000968 0x80ADA160 AC430004 */ sw	$v1, 0X4($v0)
/* 000969 0x80ADA164 26520008 */ addiu	$s2, $s2, 0X8
/* 000970 0x80ADA168 10000008 */ b	.L80ADA18C
/* 000971 0x80ADA16C 92AF0000 */ lbu	$t7, 0X0($s5)
.L80ADA170:
/* 000972 0x80ADA170 24630B70 */ addiu	$v1, $v1, 0XB70
/* 000973 0x80ADA174 02401025 */ move	$v0, $s2
/* 000974 0x80ADA178 3C0EDE00 */ lui	$t6, 0xDE00
/* 000975 0x80ADA17C AC4E0000 */ sw	$t6, 0X0($v0)
/* 000976 0x80ADA180 AC430004 */ sw	$v1, 0X4($v0)
/* 000977 0x80ADA184 26520008 */ addiu	$s2, $s2, 0X8
/* 000978 0x80ADA188 92AF0000 */ lbu	$t7, 0X0($s5)
.L80ADA18C:
/* 000979 0x80ADA18C 3C010001 */ lui	$at, 0x0001
/* 000980 0x80ADA190 342187B0 */ ori	$at, $at, 0X87B0
/* 000981 0x80ADA194 11E00020 */ beqz	$t7, .L80ADA218
/* 000982 0x80ADA198 27A50094 */ addiu	$a1, $sp, 0X94
/* 000983 0x80ADA19C C6900030 */ lwc1	$f16, 0X30($s4)
/* 000984 0x80ADA1A0 0017C080 */ sll	$t8, $s7, 2
/* 000985 0x80ADA1A4 0011C880 */ sll	$t9, $s1, 2
/* 000986 0x80ADA1A8 E7B00094 */ swc1	$f16, 0X94($sp)
/* 000987 0x80ADA1AC C68A0034 */ lwc1	$f10, 0X34($s4)
/* 000988 0x80ADA1B0 0331C823 */ subu	$t9, $t9, $s1
/* 000989 0x80ADA1B4 0317C023 */ subu	$t8, $t8, $s7
/* 000990 0x80ADA1B8 0018C140 */ sll	$t8, $t8, 5
/* 000991 0x80ADA1BC 0019C880 */ sll	$t9, $t9, 2
/* 000992 0x80ADA1C0 3C0980AE */ lui	$t1, %hi(D_80ADA510)
/* 000993 0x80ADA1C4 E7AA0098 */ swc1	$f10, 0X98($sp)
/* 000994 0x80ADA1C8 C6920038 */ lwc1	$f18, 0X38($s4)
/* 000995 0x80ADA1CC 8FA400A4 */ lw	$a0, 0XA4($sp)
/* 000996 0x80ADA1D0 2529A510 */ addiu	$t1, $t1, %lo(D_80ADA510)
/* 000997 0x80ADA1D4 03194021 */ addu	$t0, $t8, $t9
/* 000998 0x80ADA1D8 01098021 */ addu	$s0, $t0, $t1
/* 000999 0x80ADA1DC 02003025 */ move	$a2, $s0
/* 001000 0x80ADA1E0 E7B2009C */ swc1	$f18, 0X9C($sp)
/* 001001 0x80ADA1E4 0C04E322 */ jal	Matrix_MultiplyByVectorXYZ
/* 001002 0x80ADA1E8 00812021 */ addu	$a0, $a0, $at
/* 001003 0x80ADA1EC 92AA0000 */ lbu	$t2, 0X0($s5)
/* 001004 0x80ADA1F0 24010001 */ li	$at, 0X1
/* 001005 0x80ADA1F4 24052132 */ li	$a1, 0X2132
/* 001006 0x80ADA1F8 15410005 */ bne	$t2, $at, .L80ADA210
/* 001007 0x80ADA1FC 02002025 */ move	$a0, $s0
/* 001008 0x80ADA200 0C067C70 */ jal	func_8019F1C0
/* 001009 0x80ADA204 02002025 */ move	$a0, $s0
/* 001010 0x80ADA208 10000004 */ b	.L80ADA21C
/* 001011 0x80ADA20C 26310001 */ addiu	$s1, $s1, 0X1
.L80ADA210:
/* 001012 0x80ADA210 0C067C70 */ jal	func_8019F1C0
/* 001013 0x80ADA214 24052133 */ li	$a1, 0X2133
.L80ADA218:
/* 001014 0x80ADA218 26310001 */ addiu	$s1, $s1, 0X1
.L80ADA21C:
/* 001015 0x80ADA21C 24010008 */ li	$at, 0X8
/* 001016 0x80ADA220 1621FFA2 */ bne	$s1, $at, .L80ADA0AC
/* 001017 0x80ADA224 26D60004 */ addiu	$s6, $s6, 0X4
/* 001018 0x80ADA228 8FAB0060 */ lw	$t3, 0X60($sp)
/* 001019 0x80ADA22C 26F70001 */ addiu	$s7, $s7, 0X1
/* 001020 0x80ADA230 2401000B */ li	$at, 0XB
/* 001021 0x80ADA234 256C0020 */ addiu	$t4, $t3, 0X20
/* 001022 0x80ADA238 16E1FF9A */ bne	$s7, $at, .L80ADA0A4
/* 001023 0x80ADA23C AFAC0060 */ sw	$t4, 0X60($sp)
/* 001024 0x80ADA240 8FAD007C */ lw	$t5, 0X7C($sp)
/* 001025 0x80ADA244 ADB202B0 */ sw	$s2, 0X2B0($t5)
/* 001026 0x80ADA248 8FBF004C */ lw	$ra, 0X4C($sp)
/* 001027 0x80ADA24C D7B40018 */ ldc1	$f20, 0X18($sp)
/* 001028 0x80ADA250 D7B60020 */ ldc1	$f22, 0X20($sp)
/* 001029 0x80ADA254 8FB00028 */ lw	$s0, 0X28($sp)
/* 001030 0x80ADA258 8FB1002C */ lw	$s1, 0X2C($sp)
/* 001031 0x80ADA25C 8FB20030 */ lw	$s2, 0X30($sp)
/* 001032 0x80ADA260 8FB30034 */ lw	$s3, 0X34($sp)
/* 001033 0x80ADA264 8FB40038 */ lw	$s4, 0X38($sp)
/* 001034 0x80ADA268 8FB5003C */ lw	$s5, 0X3C($sp)
/* 001035 0x80ADA26C 8FB60040 */ lw	$s6, 0X40($sp)
/* 001036 0x80ADA270 8FB70044 */ lw	$s7, 0X44($sp)
/* 001037 0x80ADA274 8FBE0048 */ lw	$fp, 0X48($sp)
/* 001038 0x80ADA278 03E00008 */ jr	$ra
/* 001039 0x80ADA27C 27BD00A0 */ addiu	$sp, $sp, 0XA0
