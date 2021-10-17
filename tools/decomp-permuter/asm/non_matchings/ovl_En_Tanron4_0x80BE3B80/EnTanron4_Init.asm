glabel EnTanron4_Init
/* 000000 0x80BE3B80 27BDFF90 */ addiu	$sp, $sp, -0X70
/* 000001 0x80BE3B84 AFB20064 */ sw	$s2, 0X64($sp)
/* 000002 0x80BE3B88 AFB10060 */ sw	$s1, 0X60($sp)
/* 000003 0x80BE3B8C 00808825 */ move	$s1, $a0
/* 000004 0x80BE3B90 00A09025 */ move	$s2, $a1
/* 000005 0x80BE3B94 AFBF006C */ sw	$ra, 0X6C($sp)
/* 000006 0x80BE3B98 AFB30068 */ sw	$s3, 0X68($sp)
/* 000007 0x80BE3B9C AFB0005C */ sw	$s0, 0X5C($sp)
/* 000008 0x80BE3BA0 F7BE0050 */ sdc1	$f30, 0X50($sp)
/* 000009 0x80BE3BA4 F7BC0048 */ sdc1	$f28, 0X48($sp)
/* 000010 0x80BE3BA8 F7BA0040 */ sdc1	$f26, 0X40($sp)
/* 000011 0x80BE3BAC F7B80038 */ sdc1	$f24, 0X38($sp)
/* 000012 0x80BE3BB0 F7B60030 */ sdc1	$f22, 0X30($sp)
/* 000013 0x80BE3BB4 F7B40028 */ sdc1	$f20, 0X28($sp)
/* 000014 0x80BE3BB8 3C060600 */ lui	$a2, 0x0600
/* 000015 0x80BE3BBC 3C070600 */ lui	$a3, 0x0600
/* 000016 0x80BE3BC0 262E01A8 */ addiu	$t6, $s1, 0X1A8
/* 000017 0x80BE3BC4 262F01EA */ addiu	$t7, $s1, 0X1EA
/* 000018 0x80BE3BC8 2418000B */ li	$t8, 0XB
/* 000019 0x80BE3BCC AFB80018 */ sw	$t8, 0X18($sp)
/* 000020 0x80BE3BD0 AFAF0014 */ sw	$t7, 0X14($sp)
/* 000021 0x80BE3BD4 AFAE0010 */ sw	$t6, 0X10($sp)
/* 000022 0x80BE3BD8 24E70168 */ addiu	$a3, $a3, 0X168
/* 000023 0x80BE3BDC 24C60E68 */ addiu	$a2, $a2, 0XE68
/* 000024 0x80BE3BE0 02402025 */ move	$a0, $s2
/* 000025 0x80BE3BE4 0C04DACC */ jal	SkelAnime_InitSV
/* 000026 0x80BE3BE8 26250164 */ addiu	$a1, $s1, 0X164
/* 000027 0x80BE3BEC 8E390004 */ lw	$t9, 0X4($s1)
/* 000028 0x80BE3BF0 2401FFFE */ li	$at, -0X2
/* 000029 0x80BE3BF4 3C02801F */ lui	$v0, %hi(gStaticContext)
/* 000030 0x80BE3BF8 03214024 */ and	$t0, $t9, $at
/* 000031 0x80BE3BFC 24423F60 */ addiu	$v0, $v0, %lo(gStaticContext)
/* 000032 0x80BE3C00 AE280004 */ sw	$t0, 0X4($s1)
/* 000033 0x80BE3C04 8C490000 */ lw	$t1, 0X0($v0)
/* 000034 0x80BE3C08 3C014040 */ lui	$at, 0x4040
/* 000035 0x80BE3C0C 44814000 */ mtc1	$at, $f8
/* 000036 0x80BE3C10 852A0A34 */ lh	$t2, 0XA34($t1)
/* 000037 0x80BE3C14 3C0180BE */ lui	$at, %hi(D_80BE48A0)
/* 000038 0x80BE3C18 448A2000 */ mtc1	$t2, $f4
/* 000039 0x80BE3C1C 00000000 */ nop
/* 000040 0x80BE3C20 468021A0 */ cvt.s.w	$f6, $f4
/* 000041 0x80BE3C24 46083280 */ add.s	$f10, $f6, $f8
/* 000042 0x80BE3C28 E62A0070 */ swc1	$f10, 0X70($s1)
/* 000043 0x80BE3C2C 8C4B0000 */ lw	$t3, 0X0($v0)
/* 000044 0x80BE3C30 C42448A0 */ lwc1	$f4, %lo(D_80BE48A0)($at)
/* 000045 0x80BE3C34 3C014120 */ lui	$at, 0x4120
/* 000046 0x80BE3C38 856C0A60 */ lh	$t4, 0XA60($t3)
/* 000047 0x80BE3C3C 44816000 */ mtc1	$at, $f12
/* 000048 0x80BE3C40 448C8000 */ mtc1	$t4, $f16
/* 000049 0x80BE3C44 00000000 */ nop
/* 000050 0x80BE3C48 468084A0 */ cvt.s.w	$f18, $f16
/* 000051 0x80BE3C4C 46049180 */ add.s	$f6, $f18, $f4
/* 000052 0x80BE3C50 0C05E565 */ jal	randZeroOneScaled
/* 000053 0x80BE3C54 E62600FC */ swc1	$f6, 0XFC($s1)
/* 000054 0x80BE3C58 4600020D */ trunc.w.s	$f8, $f0
/* 000055 0x80BE3C5C 862F001C */ lh	$t7, 0X1C($s1)
/* 000056 0x80BE3C60 24010064 */ li	$at, 0X64
/* 000057 0x80BE3C64 440E4000 */ mfc1	$t6, $f8
/* 000058 0x80BE3C68 15E10005 */ bne	$t7, $at, .L80BE3C80
/* 000059 0x80BE3C6C A62E0144 */ sh	$t6, 0X144($s1)
/* 000060 0x80BE3C70 0C2F909A */ jal	func_80BE4268
/* 000061 0x80BE3C74 02202025 */ move	$a0, $s1
/* 000062 0x80BE3C78 10000041 */ b	.L80BE3D80
/* 000063 0x80BE3C7C 8FBF006C */ lw	$ra, 0X6C($sp)
.L80BE3C80:
/* 000064 0x80BE3C80 0C2F8F70 */ jal	func_80BE3DC0
/* 000065 0x80BE3C84 02202025 */ move	$a0, $s1
/* 000066 0x80BE3C88 8622001C */ lh	$v0, 0X1C($s1)
/* 000067 0x80BE3C8C 0440002E */ bltz	$v0, .L80BE3D48
/* 000068 0x80BE3C90 00000000 */ nop
/* 000069 0x80BE3C94 1840002C */ blez	$v0, .L80BE3D48
/* 000070 0x80BE3C98 00008025 */ move	$s0, $zero
/* 000071 0x80BE3C9C 3C014780 */ lui	$at, 0x4780
/* 000072 0x80BE3CA0 4481F000 */ mtc1	$at, $f30
/* 000073 0x80BE3CA4 3C0142C8 */ lui	$at, 0x42C8
/* 000074 0x80BE3CA8 4481E000 */ mtc1	$at, $f28
/* 000075 0x80BE3CAC 3C0143FA */ lui	$at, 0x43FA
/* 000076 0x80BE3CB0 4481D000 */ mtc1	$at, $f26
/* 000077 0x80BE3CB4 26531CA0 */ addiu	$s3, $s2, 0X1CA0
.L80BE3CB8:
/* 000078 0x80BE3CB8 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 000079 0x80BE3CBC 4600D306 */ mov.s	$f12, $f26
/* 000080 0x80BE3CC0 46000506 */ mov.s	$f20, $f0
/* 000081 0x80BE3CC4 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 000082 0x80BE3CC8 4600E306 */ mov.s	$f12, $f28
/* 000083 0x80BE3CCC 46000586 */ mov.s	$f22, $f0
/* 000084 0x80BE3CD0 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 000085 0x80BE3CD4 4600D306 */ mov.s	$f12, $f26
/* 000086 0x80BE3CD8 46000606 */ mov.s	$f24, $f0
/* 000087 0x80BE3CDC 0C05E565 */ jal	randZeroOneScaled
/* 000088 0x80BE3CE0 4600F306 */ mov.s	$f12, $f30
/* 000089 0x80BE3CE4 C6320028 */ lwc1	$f18, 0X28($s1)
/* 000090 0x80BE3CE8 C62A0024 */ lwc1	$f10, 0X24($s1)
/* 000091 0x80BE3CEC 2408FFFF */ li	$t0, -0X1
/* 000092 0x80BE3CF0 4612B100 */ add.s	$f4, $f22, $f18
/* 000093 0x80BE3CF4 02602025 */ move	$a0, $s3
/* 000094 0x80BE3CF8 02402825 */ move	$a1, $s2
/* 000095 0x80BE3CFC 460AA400 */ add.s	$f16, $f20, $f10
/* 000096 0x80BE3D00 E7A40010 */ swc1	$f4, 0X10($sp)
/* 000097 0x80BE3D04 C626002C */ lwc1	$f6, 0X2C($s1)
/* 000098 0x80BE3D08 4600028D */ trunc.w.s	$f10, $f0
/* 000099 0x80BE3D0C 44078000 */ mfc1	$a3, $f16
/* 000100 0x80BE3D10 AFA80024 */ sw	$t0, 0X24($sp)
/* 000101 0x80BE3D14 4606C200 */ add.s	$f8, $f24, $f6
/* 000102 0x80BE3D18 44195000 */ mfc1	$t9, $f10
/* 000103 0x80BE3D1C AFA00020 */ sw	$zero, 0X20($sp)
/* 000104 0x80BE3D20 AFA00018 */ sw	$zero, 0X18($sp)
/* 000105 0x80BE3D24 E7A80014 */ swc1	$f8, 0X14($sp)
/* 000106 0x80BE3D28 24060267 */ li	$a2, 0X267
/* 000107 0x80BE3D2C 0C02EB18 */ jal	Actor_Spawn
/* 000108 0x80BE3D30 AFB9001C */ sw	$t9, 0X1C($sp)
/* 000109 0x80BE3D34 8629001C */ lh	$t1, 0X1C($s1)
/* 000110 0x80BE3D38 26100001 */ addiu	$s0, $s0, 0X1
/* 000111 0x80BE3D3C 0209082A */ slt	$at, $s0, $t1
/* 000112 0x80BE3D40 1420FFDD */ bnez	$at, .L80BE3CB8
/* 000113 0x80BE3D44 00000000 */ nop
.L80BE3D48:
/* 000114 0x80BE3D48 3C02801F */ lui	$v0, %hi(gSaveContext + 0xC)
/* 000115 0x80BE3D4C 9442F67C */ lhu	$v0, %lo(gSaveContext + 0xC)($v0)
/* 000116 0x80BE3D50 3401D556 */ ori	$at, $zero, 0XD556
/* 000117 0x80BE3D54 0041082A */ slt	$at, $v0, $at
/* 000118 0x80BE3D58 10200002 */ beqz	$at, .L80BE3D64
/* 000119 0x80BE3D5C 28412AAA */ slti	$at, $v0, 0X2AAA
/* 000120 0x80BE3D60 10200006 */ beqz	$at, .L80BE3D7C
.L80BE3D64:
/* 000121 0x80BE3D64 3C0180BE */ lui	$at, %hi(D_80BE48A4)
/* 000122 0x80BE3D68 C42048A4 */ lwc1	$f0, %lo(D_80BE48A4)($at)
/* 000123 0x80BE3D6C C6300028 */ lwc1	$f16, 0X28($s1)
/* 000124 0x80BE3D70 E6200160 */ swc1	$f0, 0X160($s1)
/* 000125 0x80BE3D74 46008480 */ add.s	$f18, $f16, $f0
/* 000126 0x80BE3D78 E6320028 */ swc1	$f18, 0X28($s1)
.L80BE3D7C:
/* 000127 0x80BE3D7C 8FBF006C */ lw	$ra, 0X6C($sp)
.L80BE3D80:
/* 000128 0x80BE3D80 D7B40028 */ ldc1	$f20, 0X28($sp)
/* 000129 0x80BE3D84 D7B60030 */ ldc1	$f22, 0X30($sp)
/* 000130 0x80BE3D88 D7B80038 */ ldc1	$f24, 0X38($sp)
/* 000131 0x80BE3D8C D7BA0040 */ ldc1	$f26, 0X40($sp)
/* 000132 0x80BE3D90 D7BC0048 */ ldc1	$f28, 0X48($sp)
/* 000133 0x80BE3D94 D7BE0050 */ ldc1	$f30, 0X50($sp)
/* 000134 0x80BE3D98 8FB0005C */ lw	$s0, 0X5C($sp)
/* 000135 0x80BE3D9C 8FB10060 */ lw	$s1, 0X60($sp)
/* 000136 0x80BE3DA0 8FB20064 */ lw	$s2, 0X64($sp)
/* 000137 0x80BE3DA4 8FB30068 */ lw	$s3, 0X68($sp)
/* 000138 0x80BE3DA8 03E00008 */ jr	$ra
/* 000139 0x80BE3DAC 27BD0070 */ addiu	$sp, $sp, 0X70


.section .late_rodata

glabel D_80BE48A0
/* 000840 0x80BE48A0 */ .word	0x461C4000
glabel D_80BE48A4
/* 000841 0x80BE48A4 */ .word	0x44BB8000
