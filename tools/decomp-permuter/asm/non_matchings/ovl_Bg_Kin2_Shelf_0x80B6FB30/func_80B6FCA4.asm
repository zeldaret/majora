glabel func_80B6FCA4
/* 000093 0x80B6FCA4 27BDFF58 */ addiu	$sp, $sp, -0XA8
/* 000094 0x80B6FCA8 AFB00040 */ sw	$s0, 0X40($sp)
/* 000095 0x80B6FCAC 00808025 */ move	$s0, $a0
/* 000096 0x80B6FCB0 AFBF0044 */ sw	$ra, 0X44($sp)
/* 000097 0x80B6FCB4 F7B40038 */ sdc1	$f20, 0X38($sp)
/* 000098 0x80B6FCB8 AFA500AC */ sw	$a1, 0XAC($sp)
/* 000099 0x80B6FCBC 920E0164 */ lbu	$t6, 0X164($s0)
/* 000100 0x80B6FCC0 4480A000 */ mtc1	$zero, $f20
/* 000101 0x80B6FCC4 24048000 */ li	$a0, -0X8000
/* 000102 0x80B6FCC8 31CF0001 */ andi	$t7, $t6, 0X1
/* 000103 0x80B6FCCC 11E00003 */ beqz	$t7, .L80B6FCDC
/* 000104 0x80B6FCD0 00000000 */ nop
/* 000105 0x80B6FCD4 10000001 */ b	.L80B6FCDC
/* 000106 0x80B6FCD8 00002025 */ move	$a0, $zero
.L80B6FCDC:
/* 000107 0x80B6FCDC C6040148 */ lwc1	$f4, 0X148($s0)
/* 000108 0x80B6FCE0 3C01C000 */ lui	$at, 0xC000
/* 000109 0x80B6FCE4 4614203C */ c.lt.s	$f4, $f20
/* 000110 0x80B6FCE8 00000000 */ nop
/* 000111 0x80B6FCEC 45020006 */ bc1fl .L80B6FD08
/* 000112 0x80B6FCF0 44810000 */ mtc1	$at, $f0
/* 000113 0x80B6FCF4 3C0141E0 */ lui	$at, 0x41E0
/* 000114 0x80B6FCF8 44810000 */ mtc1	$at, $f0
/* 000115 0x80B6FCFC 10000003 */ b	.L80B6FD0C
/* 000116 0x80B6FD00 00000000 */ nop
/* 000117 0x80B6FD04 44810000 */ mtc1	$at, $f0
.L80B6FD08:
/* 000118 0x80B6FD08 00000000 */ nop
.L80B6FD0C:
/* 000119 0x80B6FD0C 3C0180B7 */ lui	$at, %hi(D_80B70770)
/* 000120 0x80B6FD10 C4260770 */ lwc1	$f6, %lo(D_80B70770)($at)
/* 000121 0x80B6FD14 3C0180B7 */ lui	$at, %hi(D_80B70758)
/* 000122 0x80B6FD18 C4280758 */ lwc1	$f8, %lo(D_80B70758)($at)
/* 000123 0x80B6FD1C 3C014120 */ lui	$at, 0x4120
/* 000124 0x80B6FD20 44817000 */ mtc1	$at, $f14
/* 000125 0x80B6FD24 46004280 */ add.s	$f10, $f8, $f0
/* 000126 0x80B6FD28 3C0680B7 */ lui	$a2, %hi(D_80B70760)
/* 000127 0x80B6FD2C 8CC60760 */ lw	$a2, %lo(D_80B70760)($a2)
/* 000128 0x80B6FD30 4600A306 */ mov.s	$f12, $f20
/* 000129 0x80B6FD34 460A3400 */ add.s	$f16, $f6, $f10
/* 000130 0x80B6FD38 00003825 */ move	$a3, $zero
/* 000131 0x80B6FD3C A7A4009E */ sh	$a0, 0X9E($sp)
/* 000132 0x80B6FD40 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 000133 0x80B6FD44 E7B000A0 */ swc1	$f16, 0XA0($sp)
/* 000134 0x80B6FD48 87A4009E */ lh	$a0, 0X9E($sp)
/* 000135 0x80B6FD4C 0C06026B */ jal	SysMatrix_InsertYRotation_s
/* 000136 0x80B6FD50 24050001 */ li	$a1, 0X1
/* 000137 0x80B6FD54 E7B40054 */ swc1	$f20, 0X54($sp)
/* 000138 0x80B6FD58 E7B40058 */ swc1	$f20, 0X58($sp)
/* 000139 0x80B6FD5C E7B4005C */ swc1	$f20, 0X5C($sp)
/* 000140 0x80B6FD60 27A40054 */ addiu	$a0, $sp, 0X54
/* 000141 0x80B6FD64 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000142 0x80B6FD68 27A50090 */ addiu	$a1, $sp, 0X90
/* 000143 0x80B6FD6C C7B200A0 */ lwc1	$f18, 0XA0($sp)
/* 000144 0x80B6FD70 27A40054 */ addiu	$a0, $sp, 0X54
/* 000145 0x80B6FD74 27A50084 */ addiu	$a1, $sp, 0X84
/* 000146 0x80B6FD78 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000147 0x80B6FD7C E7B2005C */ swc1	$f18, 0X5C($sp)
/* 000148 0x80B6FD80 C60C0024 */ lwc1	$f12, 0X24($s0)
/* 000149 0x80B6FD84 C60E0028 */ lwc1	$f14, 0X28($s0)
/* 000150 0x80B6FD88 8E06002C */ lw	$a2, 0X2C($s0)
/* 000151 0x80B6FD8C 0C060594 */ jal	SysMatrix_SetStateRotationAndTranslation
/* 000152 0x80B6FD90 260700BC */ addiu	$a3, $s0, 0XBC
/* 000153 0x80B6FD94 27A40090 */ addiu	$a0, $sp, 0X90
/* 000154 0x80B6FD98 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000155 0x80B6FD9C 27A50078 */ addiu	$a1, $sp, 0X78
/* 000156 0x80B6FDA0 27A40084 */ addiu	$a0, $sp, 0X84
/* 000157 0x80B6FDA4 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000158 0x80B6FDA8 27A5006C */ addiu	$a1, $sp, 0X6C
/* 000159 0x80B6FDAC 8FA400AC */ lw	$a0, 0XAC($sp)
/* 000160 0x80B6FDB0 27B80050 */ addiu	$t8, $sp, 0X50
/* 000161 0x80B6FDB4 24190001 */ li	$t9, 0X1
/* 000162 0x80B6FDB8 24080001 */ li	$t0, 0X1
/* 000163 0x80B6FDBC 27A9004C */ addiu	$t1, $sp, 0X4C
/* 000164 0x80B6FDC0 AFA90024 */ sw	$t1, 0X24($sp)
/* 000165 0x80B6FDC4 AFA80020 */ sw	$t0, 0X20($sp)
/* 000166 0x80B6FDC8 AFB90014 */ sw	$t9, 0X14($sp)
/* 000167 0x80B6FDCC AFB80010 */ sw	$t8, 0X10($sp)
/* 000168 0x80B6FDD0 27A50078 */ addiu	$a1, $sp, 0X78
/* 000169 0x80B6FDD4 27A6006C */ addiu	$a2, $sp, 0X6C
/* 000170 0x80B6FDD8 27A70060 */ addiu	$a3, $sp, 0X60
/* 000171 0x80B6FDDC AFA00018 */ sw	$zero, 0X18($sp)
/* 000172 0x80B6FDE0 AFA0001C */ sw	$zero, 0X1C($sp)
/* 000173 0x80B6FDE4 AFB00028 */ sw	$s0, 0X28($sp)
/* 000174 0x80B6FDE8 E7B4002C */ swc1	$f20, 0X2C($sp)
/* 000175 0x80B6FDEC 0C0315B8 */ jal	func_800C56E0
/* 000176 0x80B6FDF0 24840830 */ addiu	$a0, $a0, 0X830
/* 000177 0x80B6FDF4 8FBF0044 */ lw	$ra, 0X44($sp)
/* 000178 0x80B6FDF8 D7B40038 */ ldc1	$f20, 0X38($sp)
/* 000179 0x80B6FDFC 8FB00040 */ lw	$s0, 0X40($sp)
/* 000180 0x80B6FE00 03E00008 */ jr	$ra
/* 000181 0x80B6FE04 27BD00A8 */ addiu	$sp, $sp, 0XA8

