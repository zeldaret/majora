.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel EffectSparkle_Init
/* 000000 0x80977A00 AFA40000 */ sw	$a0, 0X0($sp)
/* 000001 0x80977A04 AFA50004 */ sw	$a1, 0X4($sp)
/* 000002 0x80977A08 8CEF0000 */ lw	$t7, 0X0($a3)
/* 000003 0x80977A0C 3C0C0405 */ lui	$t4, 0x0405
/* 000004 0x80977A10 3C0D8097 */ lui	$t5, %hi(func_80977F28)
/* 000005 0x80977A14 ACCF0000 */ sw	$t7, 0X0($a2)
/* 000006 0x80977A18 8CEE0004 */ lw	$t6, 0X4($a3)
/* 000007 0x80977A1C 258C4A90 */ addiu	$t4, $t4, 0X4A90
/* 000008 0x80977A20 25AD7F28 */ addiu	$t5, $t5, %lo(func_80977F28)
/* 000009 0x80977A24 ACCE0004 */ sw	$t6, 0X4($a2)
/* 000010 0x80977A28 8CEF0008 */ lw	$t7, 0X8($a3)
/* 000011 0x80977A2C ACCF0008 */ sw	$t7, 0X8($a2)
/* 000012 0x80977A30 8CF9000C */ lw	$t9, 0XC($a3)
/* 000013 0x80977A34 3C0F0405 */ lui	$t7, 0x0405
/* 000014 0x80977A38 25EF4A90 */ addiu	$t7, $t7, 0X4A90
/* 000015 0x80977A3C ACD9000C */ sw	$t9, 0XC($a2)
/* 000016 0x80977A40 8CF80010 */ lw	$t8, 0X10($a3)
/* 000017 0x80977A44 ACD80010 */ sw	$t8, 0X10($a2)
/* 000018 0x80977A48 8CF90014 */ lw	$t9, 0X14($a3)
/* 000019 0x80977A4C ACD90014 */ sw	$t9, 0X14($a2)
/* 000020 0x80977A50 8CE90018 */ lw	$t1, 0X18($a3)
/* 000021 0x80977A54 ACC90018 */ sw	$t1, 0X18($a2)
/* 000022 0x80977A58 8CE8001C */ lw	$t0, 0X1C($a3)
/* 000023 0x80977A5C ACC8001C */ sw	$t0, 0X1C($a2)
/* 000024 0x80977A60 8CE90020 */ lw	$t1, 0X20($a3)
/* 000025 0x80977A64 ACC90020 */ sw	$t1, 0X20($a2)
/* 000026 0x80977A68 84E20032 */ lh	$v0, 0X32($a3)
/* 000027 0x80977A6C 0441000A */ bgez	$v0, .L80977A98
/* 000028 0x80977A70 A4C2005C */ sh	$v0, 0X5C($a2)
/* 000029 0x80977A74 84CA005C */ lh	$t2, 0X5C($a2)
/* 000030 0x80977A78 ACCC0038 */ sw	$t4, 0X38($a2)
/* 000031 0x80977A7C ACCD0024 */ sw	$t5, 0X24($a2)
/* 000032 0x80977A80 000A5823 */ negu	$t3, $t2
/* 000033 0x80977A84 A4CB005C */ sh	$t3, 0X5C($a2)
/* 000034 0x80977A88 84EE002E */ lh	$t6, 0X2E($a3)
/* 000035 0x80977A8C A4C00056 */ sh	$zero, 0X56($a2)
/* 000036 0x80977A90 10000016 */ b	.L80977AEC
/* 000037 0x80977A94 A4CE0052 */ sh	$t6, 0X52($a2)
.L80977A98:
/* 000038 0x80977A98 ACCF0038 */ sw	$t7, 0X38($a2)
/* 000039 0x80977A9C 90F80038 */ lbu	$t8, 0X38($a3)
/* 000040 0x80977AA0 3C088097 */ lui	$t0, %hi(func_80977E6C)
/* 000041 0x80977AA4 3C198097 */ lui	$t9, %hi(func_80977DB4)
/* 000042 0x80977AA8 17000004 */ bnez	$t8, .L80977ABC
/* 000043 0x80977AAC 25087E6C */ addiu	$t0, $t0, %lo(func_80977E6C)
/* 000044 0x80977AB0 27397DB4 */ addiu	$t9, $t9, %lo(func_80977DB4)
/* 000045 0x80977AB4 10000002 */ b	.L80977AC0
/* 000046 0x80977AB8 ACD90024 */ sw	$t9, 0X24($a2)
.L80977ABC:
/* 000047 0x80977ABC ACC80024 */ sw	$t0, 0X24($a2)
.L80977AC0:
/* 000048 0x80977AC0 90E9002B */ lbu	$t1, 0X2B($a3)
/* 000049 0x80977AC4 3C0B0407 */ lui	$t3, 0x0407
/* 000050 0x80977AC8 256BA800 */ addiu	$t3, $t3, -0X5800
/* 000051 0x80977ACC A4C90052 */ sh	$t1, 0X52($a2)
/* 000052 0x80977AD0 84EA002E */ lh	$t2, 0X2E($a3)
/* 000053 0x80977AD4 A4CA0056 */ sh	$t2, 0X56($a2)
/* 000054 0x80977AD8 84C20056 */ lh	$v0, 0X56($a2)
/* 000055 0x80977ADC 04410003 */ bgez	$v0, .L80977AEC
/* 000056 0x80977AE0 00026023 */ negu	$t4, $v0
/* 000057 0x80977AE4 ACCB0038 */ sw	$t3, 0X38($a2)
/* 000058 0x80977AE8 A4CC0056 */ sh	$t4, 0X56($a2)
.L80977AEC:
/* 000059 0x80977AEC 3C0D8097 */ lui	$t5, %hi(func_80977B5C)
/* 000060 0x80977AF0 25AD7B5C */ addiu	$t5, $t5, %lo(func_80977B5C)
/* 000061 0x80977AF4 ACCD0028 */ sw	$t5, 0X28($a2)
/* 000062 0x80977AF8 84EE0034 */ lh	$t6, 0X34($a3)
/* 000063 0x80977AFC 24020001 */ li	$v0, 0X1
/* 000064 0x80977B00 A4CE0040 */ sh	$t6, 0X40($a2)
/* 000065 0x80977B04 84EF0036 */ lh	$t7, 0X36($a3)
/* 000066 0x80977B08 A4CF0042 */ sh	$t7, 0X42($a2)
/* 000067 0x80977B0C 90F80024 */ lbu	$t8, 0X24($a3)
/* 000068 0x80977B10 A4D80044 */ sh	$t8, 0X44($a2)
/* 000069 0x80977B14 90F90025 */ lbu	$t9, 0X25($a3)
/* 000070 0x80977B18 A4D90046 */ sh	$t9, 0X46($a2)
/* 000071 0x80977B1C 90E80026 */ lbu	$t0, 0X26($a3)
/* 000072 0x80977B20 A4C80048 */ sh	$t0, 0X48($a2)
/* 000073 0x80977B24 90E90027 */ lbu	$t1, 0X27($a3)
/* 000074 0x80977B28 A4C9004A */ sh	$t1, 0X4A($a2)
/* 000075 0x80977B2C 90EA0028 */ lbu	$t2, 0X28($a3)
/* 000076 0x80977B30 A4CA004C */ sh	$t2, 0X4C($a2)
/* 000077 0x80977B34 90EB0029 */ lbu	$t3, 0X29($a3)
/* 000078 0x80977B38 A4CB004E */ sh	$t3, 0X4E($a2)
/* 000079 0x80977B3C 90EC002A */ lbu	$t4, 0X2A($a3)
/* 000080 0x80977B40 A4CC0050 */ sh	$t4, 0X50($a2)
/* 000081 0x80977B44 84ED002C */ lh	$t5, 0X2C($a3)
/* 000082 0x80977B48 A4CD0054 */ sh	$t5, 0X54($a2)
/* 000083 0x80977B4C 8CEE0030 */ lw	$t6, 0X30($a3)
/* 000084 0x80977B50 A4CE0058 */ sh	$t6, 0X58($a2)
/* 000085 0x80977B54 03E00008 */ jr	$ra
/* 000086 0x80977B58 00000000 */ nop

glabel func_80977B5C
/* 000087 0x80977B5C 27BDFE28 */ addiu	$sp, $sp, -0X1D8
/* 000088 0x80977B60 AFB00014 */ sw	$s0, 0X14($sp)
/* 000089 0x80977B64 00C08025 */ move	$s0, $a2
/* 000090 0x80977B68 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000091 0x80977B6C AFB10018 */ sw	$s1, 0X18($sp)
/* 000092 0x80977B70 AFA401D8 */ sw	$a0, 0X1D8($sp)
/* 000093 0x80977B74 AFA501DC */ sw	$a1, 0X1DC($sp)
/* 000094 0x80977B78 860E0056 */ lh	$t6, 0X56($s0)
/* 000095 0x80977B7C 3C018097 */ lui	$at, %hi(D_80977FD0)
/* 000096 0x80977B80 C4287FD0 */ lwc1	$f8, %lo(D_80977FD0)($at)
/* 000097 0x80977B84 448E2000 */ mtc1	$t6, $f4
/* 000098 0x80977B88 8FAF01D8 */ lw	$t7, 0X1D8($sp)
/* 000099 0x80977B8C 27A4018C */ addiu	$a0, $sp, 0X18C
/* 000100 0x80977B90 468021A0 */ cvt.s.w	$f6, $f4
/* 000101 0x80977B94 46083283 */ div.s	$f10, $f6, $f8
/* 000102 0x80977B98 E7AA01D0 */ swc1	$f10, 0X1D0($sp)
/* 000103 0x80977B9C 8DF10000 */ lw	$s1, 0X0($t7)
/* 000104 0x80977BA0 8E050000 */ lw	$a1, 0X0($s0)
/* 000105 0x80977BA4 8E060004 */ lw	$a2, 0X4($s0)
/* 000106 0x80977BA8 0C04E5EB */ jal	Matrix_MakeTranslation
/* 000107 0x80977BAC 8E070008 */ lw	$a3, 0X8($s0)
/* 000108 0x80977BB0 27A4014C */ addiu	$a0, $sp, 0X14C
/* 000109 0x80977BB4 00002825 */ move	$a1, $zero
/* 000110 0x80977BB8 00003025 */ move	$a2, $zero
/* 000111 0x80977BBC 0C04E523 */ jal	Matrix_MakeRotationZYX
/* 000112 0x80977BC0 86070042 */ lh	$a3, 0X42($s0)
/* 000113 0x80977BC4 C7A001D0 */ lwc1	$f0, 0X1D0($sp)
/* 000114 0x80977BC8 27A4010C */ addiu	$a0, $sp, 0X10C
/* 000115 0x80977BCC 3C073F80 */ lui	$a3, 0x3F80
/* 000116 0x80977BD0 44050000 */ mfc1	$a1, $f0
/* 000117 0x80977BD4 44060000 */ mfc1	$a2, $f0
/* 000118 0x80977BD8 0C04E50A */ jal	Matrix_MakeScale
/* 000119 0x80977BDC 00000000 */ nop
/* 000120 0x80977BE0 8FA501D8 */ lw	$a1, 0X1D8($sp)
/* 000121 0x80977BE4 3C010001 */ lui	$at, 0x0001
/* 000122 0x80977BE8 342187FC */ ori	$at, $at, 0X87FC
/* 000123 0x80977BEC 27A4018C */ addiu	$a0, $sp, 0X18C
/* 000124 0x80977BF0 27A600CC */ addiu	$a2, $sp, 0XCC
/* 000125 0x80977BF4 0C04E34E */ jal	Matrix_Multiply
/* 000126 0x80977BF8 00A12821 */ addu	$a1, $a1, $at
/* 000127 0x80977BFC 27A400CC */ addiu	$a0, $sp, 0XCC
/* 000128 0x80977C00 27A5014C */ addiu	$a1, $sp, 0X14C
/* 000129 0x80977C04 0C04E34E */ jal	Matrix_Multiply
/* 000130 0x80977C08 27A6008C */ addiu	$a2, $sp, 0X8C
/* 000131 0x80977C0C 27A4008C */ addiu	$a0, $sp, 0X8C
/* 000132 0x80977C10 27A5010C */ addiu	$a1, $sp, 0X10C
/* 000133 0x80977C14 0C04E34E */ jal	Matrix_Multiply
/* 000134 0x80977C18 27A6004C */ addiu	$a2, $sp, 0X4C
/* 000135 0x80977C1C 8E2302C0 */ lw	$v1, 0X2C0($s1)
/* 000136 0x80977C20 3C19DA38 */ lui	$t9, 0xDA38
/* 000137 0x80977C24 3C08801D */ lui	$t0, %hi(D_801D1DE0)
/* 000138 0x80977C28 24780008 */ addiu	$t8, $v1, 0X8
/* 000139 0x80977C2C AE3802C0 */ sw	$t8, 0X2C0($s1)
/* 000140 0x80977C30 25081DE0 */ addiu	$t0, $t0, %lo(D_801D1DE0)
/* 000141 0x80977C34 37390003 */ ori	$t9, $t9, 0X3
/* 000142 0x80977C38 AC790000 */ sw	$t9, 0X0($v1)
/* 000143 0x80977C3C AC680004 */ sw	$t0, 0X4($v1)
/* 000144 0x80977C40 02202025 */ move	$a0, $s1
/* 000145 0x80977C44 0C04E706 */ jal	Matrix_AppendToPloyOpaDisp
/* 000146 0x80977C48 27A5004C */ addiu	$a1, $sp, 0X4C
/* 000147 0x80977C4C 50400055 */ beqzl	$v0, .L80977DA4
/* 000148 0x80977C50 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000149 0x80977C54 8E2302C0 */ lw	$v1, 0X2C0($s1)
/* 000150 0x80977C58 3C0ADA38 */ lui	$t2, 0xDA38
/* 000151 0x80977C5C 354A0003 */ ori	$t2, $t2, 0X3
/* 000152 0x80977C60 24690008 */ addiu	$t1, $v1, 0X8
/* 000153 0x80977C64 AE2902C0 */ sw	$t1, 0X2C0($s1)
/* 000154 0x80977C68 AC620004 */ sw	$v0, 0X4($v1)
/* 000155 0x80977C6C AC6A0000 */ sw	$t2, 0X0($v1)
/* 000156 0x80977C70 0C04B0B7 */ jal	func_8012C2DC
/* 000157 0x80977C74 02202025 */ move	$a0, $s1
/* 000158 0x80977C78 8E2302C0 */ lw	$v1, 0X2C0($s1)
/* 000159 0x80977C7C 3C0CFA00 */ lui	$t4, 0xFA00
/* 000160 0x80977C80 358C8080 */ ori	$t4, $t4, 0X8080
/* 000161 0x80977C84 246B0008 */ addiu	$t3, $v1, 0X8
/* 000162 0x80977C88 AE2B02C0 */ sw	$t3, 0X2C0($s1)
/* 000163 0x80977C8C AC6C0000 */ sw	$t4, 0X0($v1)
/* 000164 0x80977C90 860D0058 */ lh	$t5, 0X58($s0)
/* 000165 0x80977C94 3C01425C */ lui	$at, 0x425C
/* 000166 0x80977C98 44818000 */ mtc1	$at, $f16
/* 000167 0x80977C9C 448D9000 */ mtc1	$t5, $f18
/* 000168 0x80977CA0 860E005C */ lh	$t6, 0X5C($s0)
/* 000169 0x80977CA4 860F0046 */ lh	$t7, 0X46($s0)
/* 000170 0x80977CA8 46809120 */ cvt.s.w	$f4, $f18
/* 000171 0x80977CAC 448E4000 */ mtc1	$t6, $f8
/* 000172 0x80977CB0 860C0044 */ lh	$t4, 0X44($s0)
/* 000173 0x80977CB4 31F800FF */ andi	$t8, $t7, 0XFF
/* 000174 0x80977CB8 0018CC00 */ sll	$t9, $t8, 16
/* 000175 0x80977CBC 468042A0 */ cvt.s.w	$f10, $f8
/* 000176 0x80977CC0 000C6E00 */ sll	$t5, $t4, 24
/* 000177 0x80977CC4 46048183 */ div.s	$f6, $f16, $f4
/* 000178 0x80977CC8 460A3482 */ mul.s	$f18, $f6, $f10
/* 000179 0x80977CCC 4600940D */ trunc.w.s	$f16, $f18
/* 000180 0x80977CD0 44088000 */ mfc1	$t0, $f16
/* 000181 0x80977CD4 00000000 */ nop
/* 000182 0x80977CD8 250900C8 */ addiu	$t1, $t0, 0XC8
/* 000183 0x80977CDC 312A00FF */ andi	$t2, $t1, 0XFF
/* 000184 0x80977CE0 86090048 */ lh	$t1, 0X48($s0)
/* 000185 0x80977CE4 014D7025 */ or	$t6, $t2, $t5
/* 000186 0x80977CE8 01D94025 */ or	$t0, $t6, $t9
/* 000187 0x80977CEC 312B00FF */ andi	$t3, $t1, 0XFF
/* 000188 0x80977CF0 000B6200 */ sll	$t4, $t3, 8
/* 000189 0x80977CF4 010C5025 */ or	$t2, $t0, $t4
/* 000190 0x80977CF8 AC6A0004 */ sw	$t2, 0X4($v1)
/* 000191 0x80977CFC 8E2302C0 */ lw	$v1, 0X2C0($s1)
/* 000192 0x80977D00 3C0FFB00 */ lui	$t7, 0xFB00
/* 000193 0x80977D04 246D0008 */ addiu	$t5, $v1, 0X8
/* 000194 0x80977D08 AE2D02C0 */ sw	$t5, 0X2C0($s1)
/* 000195 0x80977D0C AC6F0000 */ sw	$t7, 0X0($v1)
/* 000196 0x80977D10 86180052 */ lh	$t8, 0X52($s0)
/* 000197 0x80977D14 860C004E */ lh	$t4, 0X4E($s0)
/* 000198 0x80977D18 8609004C */ lh	$t1, 0X4C($s0)
/* 000199 0x80977D1C 330E00FF */ andi	$t6, $t8, 0XFF
/* 000200 0x80977D20 86180050 */ lh	$t8, 0X50($s0)
/* 000201 0x80977D24 318A00FF */ andi	$t2, $t4, 0XFF
/* 000202 0x80977D28 00095E00 */ sll	$t3, $t1, 24
/* 000203 0x80977D2C 01CB4025 */ or	$t0, $t6, $t3
/* 000204 0x80977D30 000A6C00 */ sll	$t5, $t2, 16
/* 000205 0x80977D34 331900FF */ andi	$t9, $t8, 0XFF
/* 000206 0x80977D38 00194A00 */ sll	$t1, $t9, 8
/* 000207 0x80977D3C 010D7825 */ or	$t7, $t0, $t5
/* 000208 0x80977D40 01E97025 */ or	$t6, $t7, $t1
/* 000209 0x80977D44 AC6E0004 */ sw	$t6, 0X4($v1)
/* 000210 0x80977D48 8E2302C0 */ lw	$v1, 0X2C0($s1)
/* 000211 0x80977D4C 3C0CD9FC */ lui	$t4, 0xD9FC
/* 000212 0x80977D50 358CFFFF */ ori	$t4, $t4, 0XFFFF
/* 000213 0x80977D54 246B0008 */ addiu	$t3, $v1, 0X8
/* 000214 0x80977D58 AE2B02C0 */ sw	$t3, 0X2C0($s1)
/* 000215 0x80977D5C AC600004 */ sw	$zero, 0X4($v1)
/* 000216 0x80977D60 AC6C0000 */ sw	$t4, 0X0($v1)
/* 000217 0x80977D64 8E2302C0 */ lw	$v1, 0X2C0($s1)
/* 000218 0x80977D68 3C08DE00 */ lui	$t0, 0xDE00
/* 000219 0x80977D6C 3C19D9FF */ lui	$t9, 0xD9FF
/* 000220 0x80977D70 246A0008 */ addiu	$t2, $v1, 0X8
/* 000221 0x80977D74 AE2A02C0 */ sw	$t2, 0X2C0($s1)
/* 000222 0x80977D78 AC680000 */ sw	$t0, 0X0($v1)
/* 000223 0x80977D7C 8E0D0038 */ lw	$t5, 0X38($s0)
/* 000224 0x80977D80 AC6D0004 */ sw	$t5, 0X4($v1)
/* 000225 0x80977D84 8E2302C0 */ lw	$v1, 0X2C0($s1)
/* 000226 0x80977D88 3739FFFF */ ori	$t9, $t9, 0XFFFF
/* 000227 0x80977D8C 3C0F0003 */ lui	$t7, 0x0003
/* 000228 0x80977D90 24780008 */ addiu	$t8, $v1, 0X8
/* 000229 0x80977D94 AE3802C0 */ sw	$t8, 0X2C0($s1)
/* 000230 0x80977D98 AC6F0004 */ sw	$t7, 0X4($v1)
/* 000231 0x80977D9C AC790000 */ sw	$t9, 0X0($v1)
/* 000232 0x80977DA0 8FBF001C */ lw	$ra, 0X1C($sp)
.L80977DA4:
/* 000233 0x80977DA4 8FB00014 */ lw	$s0, 0X14($sp)
/* 000234 0x80977DA8 8FB10018 */ lw	$s1, 0X18($sp)
/* 000235 0x80977DAC 03E00008 */ jr	$ra
/* 000236 0x80977DB0 27BD01D8 */ addiu	$sp, $sp, 0X1D8

glabel func_80977DB4
/* 000237 0x80977DB4 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000238 0x80977DB8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000239 0x80977DBC AFA40018 */ sw	$a0, 0X18($sp)
/* 000240 0x80977DC0 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000241 0x80977DC4 0C021BF7 */ jal	randZeroOne
/* 000242 0x80977DC8 AFA60020 */ sw	$a2, 0X20($sp)
/* 000243 0x80977DCC 3C018097 */ lui	$at, %hi(D_80977FD4)
/* 000244 0x80977DD0 C4247FD4 */ lwc1	$f4, %lo(D_80977FD4)($at)
/* 000245 0x80977DD4 3C018097 */ lui	$at, %hi(D_80977FD8)
/* 000246 0x80977DD8 C4287FD8 */ lwc1	$f8, %lo(D_80977FD8)($at)
/* 000247 0x80977DDC 46040182 */ mul.s	$f6, $f0, $f4
/* 000248 0x80977DE0 8FA60020 */ lw	$a2, 0X20($sp)
/* 000249 0x80977DE4 46083281 */ sub.s	$f10, $f6, $f8
/* 000250 0x80977DE8 0C021BF7 */ jal	randZeroOne
/* 000251 0x80977DEC E4CA0018 */ swc1	$f10, 0X18($a2)
/* 000252 0x80977DF0 3C018097 */ lui	$at, %hi(D_80977FDC)
/* 000253 0x80977DF4 C4307FDC */ lwc1	$f16, %lo(D_80977FDC)($at)
/* 000254 0x80977DF8 8FA60020 */ lw	$a2, 0X20($sp)
/* 000255 0x80977DFC 3C018097 */ lui	$at, %hi(D_80977FE0)
/* 000256 0x80977E00 46100482 */ mul.s	$f18, $f0, $f16
/* 000257 0x80977E04 84C20054 */ lh	$v0, 0X54($a2)
/* 000258 0x80977E08 84CE0052 */ lh	$t6, 0X52($a2)
/* 000259 0x80977E0C C4247FE0 */ lwc1	$f4, %lo(D_80977FE0)($at)
/* 000260 0x80977E10 0002C023 */ negu	$t8, $v0
/* 000261 0x80977E14 01C27821 */ addu	$t7, $t6, $v0
/* 000262 0x80977E18 A4CF0052 */ sh	$t7, 0X52($a2)
/* 000263 0x80977E1C 46049181 */ sub.s	$f6, $f18, $f4
/* 000264 0x80977E20 84C30052 */ lh	$v1, 0X52($a2)
/* 000265 0x80977E24 04610004 */ bgez	$v1, .L80977E38
/* 000266 0x80977E28 E4C60020 */ swc1	$f6, 0X20($a2)
/* 000267 0x80977E2C A4C00052 */ sh	$zero, 0X52($a2)
/* 000268 0x80977E30 10000007 */ b	.L80977E50
/* 000269 0x80977E34 A4D80054 */ sh	$t8, 0X54($a2)
.L80977E38:
/* 000270 0x80977E38 28610100 */ slti	$at, $v1, 0X100
/* 000271 0x80977E3C 14200004 */ bnez	$at, .L80977E50
/* 000272 0x80977E40 241900FF */ li	$t9, 0XFF
/* 000273 0x80977E44 00024023 */ negu	$t0, $v0
/* 000274 0x80977E48 A4D90052 */ sh	$t9, 0X52($a2)
/* 000275 0x80977E4C A4C80054 */ sh	$t0, 0X54($a2)
.L80977E50:
/* 000276 0x80977E50 84C90042 */ lh	$t1, 0X42($a2)
/* 000277 0x80977E54 84CA0040 */ lh	$t2, 0X40($a2)
/* 000278 0x80977E58 012A5821 */ addu	$t3, $t1, $t2
/* 000279 0x80977E5C A4CB0042 */ sh	$t3, 0X42($a2)
/* 000280 0x80977E60 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000281 0x80977E64 03E00008 */ jr	$ra
/* 000282 0x80977E68 27BD0018 */ addiu	$sp, $sp, 0X18

glabel func_80977E6C
/* 000283 0x80977E6C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000284 0x80977E70 3C018097 */ lui	$at, %hi(D_80977FE4)
/* 000285 0x80977E74 C4207FE4 */ lwc1	$f0, %lo(D_80977FE4)($at)
/* 000286 0x80977E78 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000287 0x80977E7C AFA40018 */ sw	$a0, 0X18($sp)
/* 000288 0x80977E80 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000289 0x80977E84 C4C4000C */ lwc1	$f4, 0XC($a2)
/* 000290 0x80977E88 C4C80014 */ lwc1	$f8, 0X14($a2)
/* 000291 0x80977E8C 3C018097 */ lui	$at, %hi(D_80977FE8)
/* 000292 0x80977E90 46002182 */ mul.s	$f6, $f4, $f0
/* 000293 0x80977E94 00000000 */ nop
/* 000294 0x80977E98 46004282 */ mul.s	$f10, $f8, $f0
/* 000295 0x80977E9C E4C6000C */ swc1	$f6, 0XC($a2)
/* 000296 0x80977EA0 E4CA0014 */ swc1	$f10, 0X14($a2)
/* 000297 0x80977EA4 AFA60020 */ sw	$a2, 0X20($sp)
/* 000298 0x80977EA8 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 000299 0x80977EAC C42C7FE8 */ lwc1	$f12, %lo(D_80977FE8)($at)
/* 000300 0x80977EB0 8FA60020 */ lw	$a2, 0X20($sp)
/* 000301 0x80977EB4 3C018097 */ lui	$at, %hi(D_80977FEC)
/* 000302 0x80977EB8 E4C00018 */ swc1	$f0, 0X18($a2)
/* 000303 0x80977EBC 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 000304 0x80977EC0 C42C7FEC */ lwc1	$f12, %lo(D_80977FEC)($at)
/* 000305 0x80977EC4 8FA60020 */ lw	$a2, 0X20($sp)
/* 000306 0x80977EC8 84C20054 */ lh	$v0, 0X54($a2)
/* 000307 0x80977ECC 84CE0052 */ lh	$t6, 0X52($a2)
/* 000308 0x80977ED0 E4C00020 */ swc1	$f0, 0X20($a2)
/* 000309 0x80977ED4 0002C023 */ negu	$t8, $v0
/* 000310 0x80977ED8 01C27821 */ addu	$t7, $t6, $v0
/* 000311 0x80977EDC A4CF0052 */ sh	$t7, 0X52($a2)
/* 000312 0x80977EE0 84C30052 */ lh	$v1, 0X52($a2)
/* 000313 0x80977EE4 04610004 */ bgez	$v1, .L80977EF8
/* 000314 0x80977EE8 28610100 */ slti	$at, $v1, 0X100
/* 000315 0x80977EEC A4C00052 */ sh	$zero, 0X52($a2)
/* 000316 0x80977EF0 10000006 */ b	.L80977F0C
/* 000317 0x80977EF4 A4D80054 */ sh	$t8, 0X54($a2)
.L80977EF8:
/* 000318 0x80977EF8 14200004 */ bnez	$at, .L80977F0C
/* 000319 0x80977EFC 241900FF */ li	$t9, 0XFF
/* 000320 0x80977F00 00024023 */ negu	$t0, $v0
/* 000321 0x80977F04 A4D90052 */ sh	$t9, 0X52($a2)
/* 000322 0x80977F08 A4C80054 */ sh	$t0, 0X54($a2)
.L80977F0C:
/* 000323 0x80977F0C 84C90042 */ lh	$t1, 0X42($a2)
/* 000324 0x80977F10 84CA0040 */ lh	$t2, 0X40($a2)
/* 000325 0x80977F14 012A5821 */ addu	$t3, $t1, $t2
/* 000326 0x80977F18 A4CB0042 */ sh	$t3, 0X42($a2)
/* 000327 0x80977F1C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000328 0x80977F20 03E00008 */ jr	$ra
/* 000329 0x80977F24 27BD0018 */ addiu	$sp, $sp, 0X18

glabel func_80977F28
/* 000330 0x80977F28 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000331 0x80977F2C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000332 0x80977F30 AFA40018 */ sw	$a0, 0X18($sp)
/* 000333 0x80977F34 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000334 0x80977F38 84CE0058 */ lh	$t6, 0X58($a2)
/* 000335 0x80977F3C 3C014700 */ lui	$at, 0x4700
/* 000336 0x80977F40 44812000 */ mtc1	$at, $f4
/* 000337 0x80977F44 448E3000 */ mtc1	$t6, $f6
/* 000338 0x80977F48 84CF005C */ lh	$t7, 0X5C($a2)
/* 000339 0x80977F4C AFA60020 */ sw	$a2, 0X20($sp)
/* 000340 0x80977F50 46803220 */ cvt.s.w	$f8, $f6
/* 000341 0x80977F54 448F8000 */ mtc1	$t7, $f16
/* 000342 0x80977F58 00000000 */ nop
/* 000343 0x80977F5C 468084A0 */ cvt.s.w	$f18, $f16
/* 000344 0x80977F60 46082283 */ div.s	$f10, $f4, $f8
/* 000345 0x80977F64 46125182 */ mul.s	$f6, $f10, $f18
/* 000346 0x80977F68 4600310D */ trunc.w.s	$f4, $f6
/* 000347 0x80977F6C 44042000 */ mfc1	$a0, $f4
/* 000348 0x80977F70 00000000 */ nop
/* 000349 0x80977F74 00042400 */ sll	$a0, $a0, 16
/* 000350 0x80977F78 0C03FB61 */ jal	Math_Sins
/* 000351 0x80977F7C 00042403 */ sra	$a0, $a0, 16
/* 000352 0x80977F80 8FA60020 */ lw	$a2, 0X20($sp)
/* 000353 0x80977F84 84D90052 */ lh	$t9, 0X52($a2)
/* 000354 0x80977F88 44994000 */ mtc1	$t9, $f8
/* 000355 0x80977F8C 00000000 */ nop
/* 000356 0x80977F90 46804420 */ cvt.s.w	$f16, $f8
/* 000357 0x80977F94 46100282 */ mul.s	$f10, $f0, $f16
/* 000358 0x80977F98 4600548D */ trunc.w.s	$f18, $f10
/* 000359 0x80977F9C 44099000 */ mfc1	$t1, $f18
/* 000360 0x80977FA0 00000000 */ nop
/* 000361 0x80977FA4 A4C90056 */ sh	$t1, 0X56($a2)
/* 000362 0x80977FA8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000363 0x80977FAC 03E00008 */ jr	$ra
/* 000364 0x80977FB0 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000365 0x80977FB4 00000000 */ nop
/* 000366 0x80977FB8 00000000 */ nop
/* 000367 0x80977FBC 00000000 */ nop
