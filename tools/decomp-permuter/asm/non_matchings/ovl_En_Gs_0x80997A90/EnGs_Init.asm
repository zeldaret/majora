glabel EnGs_Init
/* 000040 0x80997B30 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000041 0x80997B34 AFB00018 */ sw	$s0, 0X18($sp)
/* 000042 0x80997B38 00808025 */ move	$s0, $a0
/* 000043 0x80997B3C AFBF001C */ sw	$ra, 0X1C($sp)
/* 000044 0x80997B40 AFA50034 */ sw	$a1, 0X34($sp)
/* 000045 0x80997B44 3C05809A */ lui	$a1, %hi(D_8099A404)
/* 000046 0x80997B48 24A5A404 */ addiu	$a1, $a1, %lo(D_8099A404)
/* 000047 0x80997B4C 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000048 0x80997B50 02002025 */ move	$a0, $s0
/* 000049 0x80997B54 8609001C */ lh	$t1, 0X1C($s0)
/* 000050 0x80997B58 860C001C */ lh	$t4, 0X1C($s0)
/* 000051 0x80997B5C 8619001C */ lh	$t9, 0X1C($s0)
/* 000052 0x80997B60 86180034 */ lh	$t8, 0X34($s0)
/* 000053 0x80997B64 240EFFFF */ li	$t6, -0X1
/* 000054 0x80997B68 AE0E0208 */ sw	$t6, 0X208($s0)
/* 000055 0x80997B6C 00095143 */ sra	$t2, $t1, 5
/* 000056 0x80997B70 000C6B03 */ sra	$t5, $t4, 12
/* 000057 0x80997B74 240F0001 */ li	$t7, 0X1
/* 000058 0x80997B78 314B007F */ andi	$t3, $t2, 0X7F
/* 000059 0x80997B7C 31AE000F */ andi	$t6, $t5, 0XF
/* 000060 0x80997B80 3328001F */ andi	$t0, $t9, 0X1F
/* 000061 0x80997B84 AE0F0204 */ sw	$t7, 0X204($s0)
/* 000062 0x80997B88 A2080195 */ sb	$t0, 0X195($s0)
/* 000063 0x80997B8C A20B0196 */ sb	$t3, 0X196($s0)
/* 000064 0x80997B90 A60E001C */ sh	$t6, 0X1C($s0)
/* 000065 0x80997B94 A6000034 */ sh	$zero, 0X34($s0)
/* 000066 0x80997B98 3C07809A */ lui	$a3, %hi(D_8099A3A0)
/* 000067 0x80997B9C A6180198 */ sh	$t8, 0X198($s0)
/* 000068 0x80997BA0 8FA40034 */ lw	$a0, 0X34($sp)
/* 000069 0x80997BA4 24E7A3A0 */ addiu	$a3, $a3, %lo(D_8099A3A0)
/* 000070 0x80997BA8 26050144 */ addiu	$a1, $s0, 0X144
/* 000071 0x80997BAC 0C0384DD */ jal	Collision_InitCylinder
/* 000072 0x80997BB0 02003025 */ move	$a2, $s0
/* 000073 0x80997BB4 3C05809A */ lui	$a1, %hi(D_8099A3D8)
/* 000074 0x80997BB8 3C06809A */ lui	$a2, %hi(D_8099A3CC)
/* 000075 0x80997BBC 24C6A3CC */ addiu	$a2, $a2, %lo(D_8099A3CC)
/* 000076 0x80997BC0 24A5A3D8 */ addiu	$a1, $a1, %lo(D_8099A3D8)
/* 000077 0x80997BC4 0C039D57 */ jal	func_800E755C
/* 000078 0x80997BC8 260400A0 */ addiu	$a0, $s0, 0XA0
/* 000079 0x80997BCC 3C013F80 */ lui	$at, 0x3F80
/* 000080 0x80997BD0 44812000 */ mtc1	$at, $f4
/* 000081 0x80997BD4 240F0006 */ li	$t7, 0X6
/* 000082 0x80997BD8 A20F001F */ sb	$t7, 0X1F($s0)
/* 000083 0x80997BDC A6000216 */ sh	$zero, 0X216($s0)
/* 000084 0x80997BE0 A6000218 */ sh	$zero, 0X218($s0)
/* 000085 0x80997BE4 8604001C */ lh	$a0, 0X1C($s0)
/* 000086 0x80997BE8 86050198 */ lh	$a1, 0X198($s0)
/* 000087 0x80997BEC 0C265EA4 */ jal	func_80997A90
/* 000088 0x80997BF0 E6040200 */ swc1	$f4, 0X200($s0)
/* 000089 0x80997BF4 A2020194 */ sb	$v0, 0X194($s0)
/* 000090 0x80997BF8 82040194 */ lb	$a0, 0X194($s0)
/* 000091 0x80997BFC 260601FA */ addiu	$a2, $s0, 0X1FA
/* 000092 0x80997C00 00C02825 */ move	$a1, $a2
/* 000093 0x80997C04 0C265EBF */ jal	func_80997AFC
/* 000094 0x80997C08 AFA60024 */ sw	$a2, 0X24($sp)
/* 000095 0x80997C0C 8FA60024 */ lw	$a2, 0X24($sp)
/* 000096 0x80997C10 3C05801C */ lui	$a1, %hi(D_801C5DB0)
/* 000097 0x80997C14 24A55DB0 */ addiu	$a1, $a1, %lo(D_801C5DB0)
/* 000098 0x80997C18 90D90000 */ lbu	$t9, 0X0($a2)
/* 000099 0x80997C1C 260401B0 */ addiu	$a0, $s0, 0X1B0
/* 000100 0x80997C20 A21901F4 */ sb	$t9, 0X1F4($s0)
/* 000101 0x80997C24 90D80001 */ lbu	$t8, 0X1($a2)
/* 000102 0x80997C28 A21801F5 */ sb	$t8, 0X1F5($s0)
/* 000103 0x80997C2C 90D90002 */ lbu	$t9, 0X2($a2)
/* 000104 0x80997C30 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000105 0x80997C34 A21901F6 */ sb	$t9, 0X1F6($s0)
/* 000106 0x80997C38 3C05801C */ lui	$a1, %hi(D_801C5DB0)
/* 000107 0x80997C3C 24A55DB0 */ addiu	$a1, $a1, %lo(D_801C5DB0)
/* 000108 0x80997C40 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000109 0x80997C44 260401BC */ addiu	$a0, $s0, 0X1BC
/* 000110 0x80997C48 02002025 */ move	$a0, $s0
/* 000111 0x80997C4C 26050212 */ addiu	$a1, $s0, 0X212
/* 000112 0x80997C50 0C04F8EE */ jal	func_8013E3B8
/* 000113 0x80997C54 24060002 */ li	$a2, 0X2
/* 000114 0x80997C58 0C069420 */ jal	func_801A5080
/* 000115 0x80997C5C 00002025 */ move	$a0, $zero
/* 000116 0x80997C60 8608001C */ lh	$t0, 0X1C($s0)
/* 000117 0x80997C64 24010001 */ li	$at, 0X1
/* 000118 0x80997C68 02002025 */ move	$a0, $s0
/* 000119 0x80997C6C 15010014 */ bne	$t0, $at, .L80997CC0
/* 000120 0x80997C70 3C053E19 */ lui	$a1, 0x3E19
/* 000121 0x80997C74 0C02D9F8 */ jal	Actor_SetScale
/* 000122 0x80997C78 34A5999A */ ori	$a1, $a1, 0X999A
/* 000123 0x80997C7C 86090184 */ lh	$t1, 0X184($s0)
/* 000124 0x80997C80 860C0186 */ lh	$t4, 0X186($s0)
/* 000125 0x80997C84 3C013FC0 */ lui	$at, 0x3FC0
/* 000126 0x80997C88 44893000 */ mtc1	$t1, $f6
/* 000127 0x80997C8C 448C9000 */ mtc1	$t4, $f18
/* 000128 0x80997C90 44810000 */ mtc1	$at, $f0
/* 000129 0x80997C94 46803220 */ cvt.s.w	$f8, $f6
/* 000130 0x80997C98 46809120 */ cvt.s.w	$f4, $f18
/* 000131 0x80997C9C 46004282 */ mul.s	$f10, $f8, $f0
/* 000132 0x80997CA0 00000000 */ nop
/* 000133 0x80997CA4 46002182 */ mul.s	$f6, $f4, $f0
/* 000134 0x80997CA8 4600540D */ trunc.w.s	$f16, $f10
/* 000135 0x80997CAC 4600320D */ trunc.w.s	$f8, $f6
/* 000136 0x80997CB0 440B8000 */ mfc1	$t3, $f16
/* 000137 0x80997CB4 440E4000 */ mfc1	$t6, $f8
/* 000138 0x80997CB8 A60B0184 */ sh	$t3, 0X184($s0)
/* 000139 0x80997CBC A60E0186 */ sh	$t6, 0X186($s0)
.L80997CC0:
/* 000140 0x80997CC0 02002025 */ move	$a0, $s0
/* 000141 0x80997CC4 0C265F45 */ jal	func_80997D14
/* 000142 0x80997CC8 8FA50034 */ lw	$a1, 0X34($sp)
/* 000143 0x80997CCC 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000144 0x80997CD0 8FB00018 */ lw	$s0, 0X18($sp)
/* 000145 0x80997CD4 27BD0030 */ addiu	$sp, $sp, 0X30
/* 000146 0x80997CD8 03E00008 */ jr	$ra
/* 000147 0x80997CDC 00000000 */ nop

