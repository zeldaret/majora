glabel ObjLupygamelift_Init
/* 000000 0x80AF0170 27BDFFA0 */ addiu	$sp, $sp, -0X60
/* 000001 0x80AF0174 AFB10040 */ sw	$s1, 0X40($sp)
/* 000002 0x80AF0178 AFB0003C */ sw	$s0, 0X3C($sp)
/* 000003 0x80AF017C 00808025 */ move	$s0, $a0
/* 000004 0x80AF0180 00A08825 */ move	$s1, $a1
/* 000005 0x80AF0184 AFBF0044 */ sw	$ra, 0X44($sp)
/* 000006 0x80AF0188 F7B40030 */ sdc1	$f20, 0X30($sp)
/* 000007 0x80AF018C 3C0580AF */ lui	$a1, %hi(D_80AF0740)
/* 000008 0x80AF0190 24A50740 */ addiu	$a1, $a1, %lo(D_80AF0740)
/* 000009 0x80AF0194 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000010 0x80AF0198 02002025 */ move	$a0, $s0
/* 000011 0x80AF019C 3C0180AF */ lui	$at, %hi(D_80AF0770)
/* 000012 0x80AF01A0 C4240770 */ lwc1	$f4, %lo(D_80AF0770)($at)
/* 000013 0x80AF01A4 4480A000 */ mtc1	$zero, $f20
/* 000014 0x80AF01A8 A60000BC */ sh	$zero, 0XBC($s0)
/* 000015 0x80AF01AC A6000030 */ sh	$zero, 0X30($s0)
/* 000016 0x80AF01B0 A60000C0 */ sh	$zero, 0XC0($s0)
/* 000017 0x80AF01B4 A6000034 */ sh	$zero, 0X34($s0)
/* 000018 0x80AF01B8 A6000170 */ sh	$zero, 0X170($s0)
/* 000019 0x80AF01BC 240E0004 */ li	$t6, 0X4
/* 000020 0x80AF01C0 E604005C */ swc1	$f4, 0X5C($s0)
/* 000021 0x80AF01C4 4406A000 */ mfc1	$a2, $f20
/* 000022 0x80AF01C8 4407A000 */ mfc1	$a3, $f20
/* 000023 0x80AF01CC AFAE0014 */ sw	$t6, 0X14($sp)
/* 000024 0x80AF01D0 02202025 */ move	$a0, $s1
/* 000025 0x80AF01D4 02002825 */ move	$a1, $s0
/* 000026 0x80AF01D8 0C02DE2E */ jal	func_800B78B8
/* 000027 0x80AF01DC E7B40010 */ swc1	$f20, 0X10($sp)
/* 000028 0x80AF01E0 4405A000 */ mfc1	$a1, $f20
/* 000029 0x80AF01E4 3C06800B */ lui	$a2, %hi(func_800B4024)
/* 000030 0x80AF01E8 4407A000 */ mfc1	$a3, $f20
/* 000031 0x80AF01EC 24C64024 */ addiu	$a2, $a2, %lo(func_800B4024)
/* 000032 0x80AF01F0 0C02CEE9 */ jal	Actor_SetDrawParams
/* 000033 0x80AF01F4 260400BC */ addiu	$a0, $s0, 0XBC
/* 000034 0x80AF01F8 02002025 */ move	$a0, $s0
/* 000035 0x80AF01FC 0C032B84 */ jal	BcCheck3_BgActorInit
/* 000036 0x80AF0200 24050001 */ li	$a1, 0X1
/* 000037 0x80AF0204 3C060600 */ lui	$a2, 0x0600
/* 000038 0x80AF0208 24C648D0 */ addiu	$a2, $a2, 0X48D0
/* 000039 0x80AF020C 02202025 */ move	$a0, $s1
/* 000040 0x80AF0210 0C032B8D */ jal	BgCheck3_LoadMesh
/* 000041 0x80AF0214 02002825 */ move	$a1, $s0
/* 000042 0x80AF0218 860F0018 */ lh	$t7, 0X18($s0)
/* 000043 0x80AF021C 3C0180AF */ lui	$at, %hi(D_80AF0774)
/* 000044 0x80AF0220 C42A0774 */ lwc1	$f10, %lo(D_80AF0774)($at)
/* 000045 0x80AF0224 448F3000 */ mtc1	$t7, $f6
/* 000046 0x80AF0228 3C180002 */ lui	$t8, 0x0002
/* 000047 0x80AF022C 0311C021 */ addu	$t8, $t8, $s1
/* 000048 0x80AF0230 46803220 */ cvt.s.w	$f8, $f6
/* 000049 0x80AF0234 460A4402 */ mul.s	$f16, $f8, $f10
/* 000050 0x80AF0238 E6100160 */ swc1	$f16, 0X160($s0)
/* 000051 0x80AF023C C6000160 */ lwc1	$f0, 0X160($s0)
/* 000052 0x80AF0240 4614003C */ c.lt.s	$f0, $f20
/* 000053 0x80AF0244 00000000 */ nop
/* 000054 0x80AF0248 45020004 */ bc1fl .L80AF025C
/* 000055 0x80AF024C 8602001C */ lh	$v0, 0X1C($s0)
/* 000056 0x80AF0250 46000487 */ neg.s	$f18, $f0
/* 000057 0x80AF0254 E6120160 */ swc1	$f18, 0X160($s0)
/* 000058 0x80AF0258 8602001C */ lh	$v0, 0X1C($s0)
.L80AF025C:
/* 000059 0x80AF025C A6000014 */ sh	$zero, 0X14($s0)
/* 000060 0x80AF0260 A6000016 */ sh	$zero, 0X16($s0)
/* 000061 0x80AF0264 A6000018 */ sh	$zero, 0X18($s0)
/* 000062 0x80AF0268 8F188864 */ lw	$t8, -0X779C($t8)
/* 000063 0x80AF026C 3059007F */ andi	$t9, $v0, 0X7F
/* 000064 0x80AF0270 000249C3 */ sra	$t1, $v0, 7
/* 000065 0x80AF0274 001940C0 */ sll	$t0, $t9, 3
/* 000066 0x80AF0278 312A001F */ andi	$t2, $t1, 0X1F
/* 000067 0x80AF027C AE0A0168 */ sw	$t2, 0X168($s0)
/* 000068 0x80AF0280 03081821 */ addu	$v1, $t8, $t0
/* 000069 0x80AF0284 906B0000 */ lbu	$t3, 0X0($v1)
/* 000070 0x80AF0288 014B082A */ slt	$at, $t2, $t3
/* 000071 0x80AF028C 14200002 */ bnez	$at, .L80AF0298
/* 000072 0x80AF0290 AE0B0164 */ sw	$t3, 0X164($s0)
/* 000073 0x80AF0294 AE000168 */ sw	$zero, 0X168($s0)
.L80AF0298:
/* 000074 0x80AF0298 0C040141 */ jal	Lib_PtrSegToVirt
/* 000075 0x80AF029C 8C640004 */ lw	$a0, 0X4($v1)
/* 000076 0x80AF02A0 C6040024 */ lwc1	$f4, 0X24($s0)
/* 000077 0x80AF02A4 AE02016C */ sw	$v0, 0X16C($s0)
/* 000078 0x80AF02A8 26241CA0 */ addiu	$a0, $s1, 0X1CA0
/* 000079 0x80AF02AC E7A40010 */ swc1	$f4, 0X10($sp)
/* 000080 0x80AF02B0 C6060028 */ lwc1	$f6, 0X28($s0)
/* 000081 0x80AF02B4 02002825 */ move	$a1, $s0
/* 000082 0x80AF02B8 02203025 */ move	$a2, $s1
/* 000083 0x80AF02BC E7A60014 */ swc1	$f6, 0X14($sp)
/* 000084 0x80AF02C0 C608002C */ lwc1	$f8, 0X2C($s0)
/* 000085 0x80AF02C4 24070183 */ li	$a3, 0X183
/* 000086 0x80AF02C8 E7A80018 */ swc1	$f8, 0X18($sp)
/* 000087 0x80AF02CC 860E00BC */ lh	$t6, 0XBC($s0)
/* 000088 0x80AF02D0 AFAE001C */ sw	$t6, 0X1C($sp)
/* 000089 0x80AF02D4 860F00BE */ lh	$t7, 0XBE($s0)
/* 000090 0x80AF02D8 AFAF0020 */ sw	$t7, 0X20($sp)
/* 000091 0x80AF02DC 861900C0 */ lh	$t9, 0XC0($s0)
/* 000092 0x80AF02E0 AFA4004C */ sw	$a0, 0X4C($sp)
/* 000093 0x80AF02E4 AFA00028 */ sw	$zero, 0X28($sp)
/* 000094 0x80AF02E8 0C02EC30 */ jal	Actor_SpawnWithParent
/* 000095 0x80AF02EC AFB90024 */ sw	$t9, 0X24($sp)
/* 000096 0x80AF02F0 8618001C */ lh	$t8, 0X1C($s0)
/* 000097 0x80AF02F4 8FA4004C */ lw	$a0, 0X4C($sp)
/* 000098 0x80AF02F8 00001025 */ move	$v0, $zero
/* 000099 0x80AF02FC 00184303 */ sra	$t0, $t8, 12
/* 000100 0x80AF0300 31090001 */ andi	$t1, $t0, 0X1
/* 000101 0x80AF0304 11200003 */ beqz	$t1, .L80AF0314
/* 000102 0x80AF0308 02202825 */ move	$a1, $s1
/* 000103 0x80AF030C 10000001 */ b	.L80AF0314
/* 000104 0x80AF0310 24020001 */ li	$v0, 0X1
.L80AF0314:
/* 000105 0x80AF0314 C60A000C */ lwc1	$f10, 0XC($s0)
/* 000106 0x80AF0318 8E070008 */ lw	$a3, 0X8($s0)
/* 000107 0x80AF031C 240601D2 */ li	$a2, 0X1D2
/* 000108 0x80AF0320 E7AA0010 */ swc1	$f10, 0X10($sp)
/* 000109 0x80AF0324 C6100010 */ lwc1	$f16, 0X10($s0)
/* 000110 0x80AF0328 AFA20024 */ sw	$v0, 0X24($sp)
/* 000111 0x80AF032C AFA00020 */ sw	$zero, 0X20($sp)
/* 000112 0x80AF0330 AFA0001C */ sw	$zero, 0X1C($sp)
/* 000113 0x80AF0334 AFA00018 */ sw	$zero, 0X18($sp)
/* 000114 0x80AF0338 0C02EB18 */ jal	Actor_Spawn
/* 000115 0x80AF033C E7B00014 */ swc1	$f16, 0X14($sp)
/* 000116 0x80AF0340 0C2BC12F */ jal	func_80AF04BC
/* 000117 0x80AF0344 02002025 */ move	$a0, $s0
/* 000118 0x80AF0348 8FBF0044 */ lw	$ra, 0X44($sp)
/* 000119 0x80AF034C D7B40030 */ ldc1	$f20, 0X30($sp)
/* 000120 0x80AF0350 8FB0003C */ lw	$s0, 0X3C($sp)
/* 000121 0x80AF0354 8FB10040 */ lw	$s1, 0X40($sp)
/* 000122 0x80AF0358 03E00008 */ jr	$ra
/* 000123 0x80AF035C 27BD0060 */ addiu	$sp, $sp, 0X60


.section .late_rodata

glabel D_80AF0770
/* 000384 0x80AF0770 */ .word	0x3E19999A
glabel D_80AF0774
/* 000385 0x80AF0774 */ .word	0x3DCCCCCD
