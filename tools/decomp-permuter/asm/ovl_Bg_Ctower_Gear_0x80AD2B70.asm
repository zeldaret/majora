.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_80AD2B70
/* 000000 0x80AD2B70 27BDFF70 */ addiu	$sp, $sp, -0X90
/* 000001 0x80AD2B74 AFB6004C */ sw	$s6, 0X4C($sp)
/* 000002 0x80AD2B78 AFB2003C */ sw	$s2, 0X3C($sp)
/* 000003 0x80AD2B7C 00809025 */ move	$s2, $a0
/* 000004 0x80AD2B80 00A0B025 */ move	$s6, $a1
/* 000005 0x80AD2B84 AFBF0054 */ sw	$ra, 0X54($sp)
/* 000006 0x80AD2B88 AFB70050 */ sw	$s7, 0X50($sp)
/* 000007 0x80AD2B8C AFB50048 */ sw	$s5, 0X48($sp)
/* 000008 0x80AD2B90 AFB40044 */ sw	$s4, 0X44($sp)
/* 000009 0x80AD2B94 AFB30040 */ sw	$s3, 0X40($sp)
/* 000010 0x80AD2B98 AFB10038 */ sw	$s1, 0X38($sp)
/* 000011 0x80AD2B9C AFB00034 */ sw	$s0, 0X34($sp)
/* 000012 0x80AD2BA0 F7B80028 */ sdc1	$f24, 0X28($sp)
/* 000013 0x80AD2BA4 F7B60020 */ sdc1	$f22, 0X20($sp)
/* 000014 0x80AD2BA8 F7B40018 */ sdc1	$f20, 0X18($sp)
/* 000015 0x80AD2BAC 8E4E0004 */ lw	$t6, 0X4($s2)
/* 000016 0x80AD2BB0 31CF0040 */ andi	$t7, $t6, 0X40
/* 000017 0x80AD2BB4 AFAF0088 */ sw	$t7, 0X88($sp)
/* 000018 0x80AD2BB8 865800C0 */ lh	$t8, 0XC0($s2)
/* 000019 0x80AD2BBC 33191FFF */ andi	$t9, $t8, 0X1FFF
/* 000020 0x80AD2BC0 11E00052 */ beqz	$t7, .L80AD2D0C
/* 000021 0x80AD2BC4 A7B90066 */ sh	$t9, 0X66($sp)
/* 000022 0x80AD2BC8 87A90066 */ lh	$t1, 0X66($sp)
/* 000023 0x80AD2BCC 29211B58 */ slti	$at, $t1, 0X1B58
/* 000024 0x80AD2BD0 1020004E */ beqz	$at, .L80AD2D0C
/* 000025 0x80AD2BD4 29211388 */ slti	$at, $t1, 0X1388
/* 000026 0x80AD2BD8 1420004C */ bnez	$at, .L80AD2D0C
/* 000027 0x80AD2BDC 00002825 */ move	$a1, $zero
/* 000028 0x80AD2BE0 0C06026B */ jal	SysMatrix_InsertYRotation_s
/* 000029 0x80AD2BE4 86440016 */ lh	$a0, 0X16($s2)
/* 000030 0x80AD2BE8 86440014 */ lh	$a0, 0X14($s2)
/* 000031 0x80AD2BEC 0C06011E */ jal	SysMatrix_InsertXRotation_s
/* 000032 0x80AD2BF0 24050001 */ li	$a1, 0X1
/* 000033 0x80AD2BF4 86440018 */ lh	$a0, 0X18($s2)
/* 000034 0x80AD2BF8 0C06033E */ jal	SysMatrix_InsertZRotation_s
/* 000035 0x80AD2BFC 24050001 */ li	$a1, 0X1
/* 000036 0x80AD2C00 3C0141F0 */ lui	$at, 0x41F0
/* 000037 0x80AD2C04 4481C000 */ mtc1	$at, $f24
/* 000038 0x80AD2C08 3C0141A0 */ lui	$at, 0x41A0
/* 000039 0x80AD2C0C 4481B000 */ mtc1	$at, $f22
/* 000040 0x80AD2C10 3C014120 */ lui	$at, 0x4120
/* 000041 0x80AD2C14 4481A000 */ mtc1	$at, $f20
/* 000042 0x80AD2C18 0000A025 */ move	$s4, $zero
/* 000043 0x80AD2C1C 24170004 */ li	$s7, 0X4
/* 000044 0x80AD2C20 27B50070 */ addiu	$s5, $sp, 0X70
/* 000045 0x80AD2C24 27B3007C */ addiu	$s3, $sp, 0X7C
/* 000046 0x80AD2C28 3C114000 */ lui	$s1, 0x4000
.L80AD2C2C:
/* 000047 0x80AD2C2C 0C021BE8 */ jal	rand
/* 000048 0x80AD2C30 00000000 */ nop
/* 000049 0x80AD2C34 0051082B */ sltu	$at, $v0, $s1
/* 000050 0x80AD2C38 14200031 */ bnez	$at, .L80AD2D00
/* 000051 0x80AD2C3C 00145080 */ sll	$t2, $s4, 2
/* 000052 0x80AD2C40 01545023 */ subu	$t2, $t2, $s4
/* 000053 0x80AD2C44 3C0B80AD */ lui	$t3, %hi(D_80AD3270)
/* 000054 0x80AD2C48 256B3270 */ addiu	$t3, $t3, %lo(D_80AD3270)
/* 000055 0x80AD2C4C 000A5080 */ sll	$t2, $t2, 2
/* 000056 0x80AD2C50 0C021BF7 */ jal	randZeroOne
/* 000057 0x80AD2C54 014B8021 */ addu	$s0, $t2, $t3
/* 000058 0x80AD2C58 46180182 */ mul.s	$f6, $f0, $f24
/* 000059 0x80AD2C5C C6040000 */ lwc1	$f4, 0X0($s0)
/* 000060 0x80AD2C60 C60A0004 */ lwc1	$f10, 0X4($s0)
/* 000061 0x80AD2C64 C6100008 */ lwc1	$f16, 0X8($s0)
/* 000062 0x80AD2C68 02A02025 */ move	$a0, $s5
/* 000063 0x80AD2C6C 02602825 */ move	$a1, $s3
/* 000064 0x80AD2C70 E7AA0074 */ swc1	$f10, 0X74($sp)
/* 000065 0x80AD2C74 46062201 */ sub.s	$f8, $f4, $f6
/* 000066 0x80AD2C78 E7B00078 */ swc1	$f16, 0X78($sp)
/* 000067 0x80AD2C7C 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000068 0x80AD2C80 E7A80070 */ swc1	$f8, 0X70($sp)
/* 000069 0x80AD2C84 0C021BF7 */ jal	randZeroOne
/* 000070 0x80AD2C88 00000000 */ nop
/* 000071 0x80AD2C8C 46160102 */ mul.s	$f4, $f0, $f22
/* 000072 0x80AD2C90 C6520024 */ lwc1	$f18, 0X24($s2)
/* 000073 0x80AD2C94 C7AA007C */ lwc1	$f10, 0X7C($sp)
/* 000074 0x80AD2C98 46142181 */ sub.s	$f6, $f4, $f20
/* 000075 0x80AD2C9C C7A40080 */ lwc1	$f4, 0X80($sp)
/* 000076 0x80AD2CA0 46069200 */ add.s	$f8, $f18, $f6
/* 000077 0x80AD2CA4 46085400 */ add.s	$f16, $f10, $f8
/* 000078 0x80AD2CA8 E7B0007C */ swc1	$f16, 0X7C($sp)
/* 000079 0x80AD2CAC C6520028 */ lwc1	$f18, 0X28($s2)
/* 000080 0x80AD2CB0 46122180 */ add.s	$f6, $f4, $f18
/* 000081 0x80AD2CB4 0C021BF7 */ jal	randZeroOne
/* 000082 0x80AD2CB8 E7A60080 */ swc1	$f6, 0X80($sp)
/* 000083 0x80AD2CBC 46160202 */ mul.s	$f8, $f0, $f22
/* 000084 0x80AD2CC0 C64A002C */ lwc1	$f10, 0X2C($s2)
/* 000085 0x80AD2CC4 C7B20084 */ lwc1	$f18, 0X84($sp)
/* 000086 0x80AD2CC8 46144401 */ sub.s	$f16, $f8, $f20
/* 000087 0x80AD2CCC 46105100 */ add.s	$f4, $f10, $f16
/* 000088 0x80AD2CD0 46049180 */ add.s	$f6, $f18, $f4
/* 000089 0x80AD2CD4 0C021BE8 */ jal	rand
/* 000090 0x80AD2CD8 E7A60084 */ swc1	$f6, 0X84($sp)
/* 000091 0x80AD2CDC 00026642 */ srl	$t4, $v0, 25
/* 000092 0x80AD2CE0 258D0154 */ addiu	$t5, $t4, 0X154
/* 000093 0x80AD2CE4 AFAD0014 */ sw	$t5, 0X14($sp)
/* 000094 0x80AD2CE8 02C02025 */ move	$a0, $s6
/* 000095 0x80AD2CEC 02602825 */ move	$a1, $s3
/* 000096 0x80AD2CF0 00003025 */ move	$a2, $zero
/* 000097 0x80AD2CF4 00003825 */ move	$a3, $zero
/* 000098 0x80AD2CF8 0C02C7D3 */ jal	EffectSS_SpawnGSplash
/* 000099 0x80AD2CFC AFA00010 */ sw	$zero, 0X10($sp)
.L80AD2D00:
/* 000100 0x80AD2D00 26940001 */ addiu	$s4, $s4, 0X1
/* 000101 0x80AD2D04 1697FFC9 */ bne	$s4, $s7, .L80AD2C2C
/* 000102 0x80AD2D08 00000000 */ nop
.L80AD2D0C:
/* 000103 0x80AD2D0C 3C014120 */ lui	$at, 0x4120
/* 000104 0x80AD2D10 87AE0066 */ lh	$t6, 0X66($sp)
/* 000105 0x80AD2D14 4481A000 */ mtc1	$at, $f20
/* 000106 0x80AD2D18 3C0141A0 */ lui	$at, 0x41A0
/* 000107 0x80AD2D1C 4481B000 */ mtc1	$at, $f22
/* 000108 0x80AD2D20 29C101F4 */ slti	$at, $t6, 0X1F4
/* 000109 0x80AD2D24 27B3007C */ addiu	$s3, $sp, 0X7C
/* 000110 0x80AD2D28 10200048 */ beqz	$at, .L80AD2E4C
/* 000111 0x80AD2D2C 27B50070 */ addiu	$s5, $sp, 0X70
/* 000112 0x80AD2D30 05C00046 */ bltz	$t6, .L80AD2E4C
/* 000113 0x80AD2D34 8FAF0088 */ lw	$t7, 0X88($sp)
/* 000114 0x80AD2D38 11E00041 */ beqz	$t7, .L80AD2E40
/* 000115 0x80AD2D3C 00002825 */ move	$a1, $zero
/* 000116 0x80AD2D40 0C06026B */ jal	SysMatrix_InsertYRotation_s
/* 000117 0x80AD2D44 86440016 */ lh	$a0, 0X16($s2)
/* 000118 0x80AD2D48 86440014 */ lh	$a0, 0X14($s2)
/* 000119 0x80AD2D4C 0C06011E */ jal	SysMatrix_InsertXRotation_s
/* 000120 0x80AD2D50 24050001 */ li	$a1, 0X1
/* 000121 0x80AD2D54 86440018 */ lh	$a0, 0X18($s2)
/* 000122 0x80AD2D58 0C06033E */ jal	SysMatrix_InsertZRotation_s
/* 000123 0x80AD2D5C 24050001 */ li	$a1, 0X1
/* 000124 0x80AD2D60 3C1180AD */ lui	$s1, %hi(D_80AD32A0)
/* 000125 0x80AD2D64 3C1780AD */ lui	$s7, %hi(D_80AD32C4)
/* 000126 0x80AD2D68 26F732C4 */ addiu	$s7, $s7, %lo(D_80AD32C4)
/* 000127 0x80AD2D6C 263132A0 */ addiu	$s1, $s1, %lo(D_80AD32A0)
/* 000128 0x80AD2D70 24140002 */ li	$s4, 0X2
/* 000129 0x80AD2D74 00008025 */ move	$s0, $zero
.L80AD2D78:
/* 000130 0x80AD2D78 0C021BF7 */ jal	randZeroOne
/* 000131 0x80AD2D7C 00000000 */ nop
/* 000132 0x80AD2D80 46140202 */ mul.s	$f8, $f0, $f20
/* 000133 0x80AD2D84 C62A0000 */ lwc1	$f10, 0X0($s1)
/* 000134 0x80AD2D88 C6320004 */ lwc1	$f18, 0X4($s1)
/* 000135 0x80AD2D8C C6240008 */ lwc1	$f4, 0X8($s1)
/* 000136 0x80AD2D90 02A02025 */ move	$a0, $s5
/* 000137 0x80AD2D94 02602825 */ move	$a1, $s3
/* 000138 0x80AD2D98 E7B20074 */ swc1	$f18, 0X74($sp)
/* 000139 0x80AD2D9C 460A4400 */ add.s	$f16, $f8, $f10
/* 000140 0x80AD2DA0 E7A40078 */ swc1	$f4, 0X78($sp)
/* 000141 0x80AD2DA4 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000142 0x80AD2DA8 E7B00070 */ swc1	$f16, 0X70($sp)
/* 000143 0x80AD2DAC 0C021BF7 */ jal	randZeroOne
/* 000144 0x80AD2DB0 00000000 */ nop
/* 000145 0x80AD2DB4 46160202 */ mul.s	$f8, $f0, $f22
/* 000146 0x80AD2DB8 C6460024 */ lwc1	$f6, 0X24($s2)
/* 000147 0x80AD2DBC C7B2007C */ lwc1	$f18, 0X7C($sp)
/* 000148 0x80AD2DC0 46144281 */ sub.s	$f10, $f8, $f20
/* 000149 0x80AD2DC4 C7A80080 */ lwc1	$f8, 0X80($sp)
/* 000150 0x80AD2DC8 460A3400 */ add.s	$f16, $f6, $f10
/* 000151 0x80AD2DCC 46109100 */ add.s	$f4, $f18, $f16
/* 000152 0x80AD2DD0 E7A4007C */ swc1	$f4, 0X7C($sp)
/* 000153 0x80AD2DD4 C6460028 */ lwc1	$f6, 0X28($s2)
/* 000154 0x80AD2DD8 46064280 */ add.s	$f10, $f8, $f6
/* 000155 0x80AD2DDC 0C021BF7 */ jal	randZeroOne
/* 000156 0x80AD2DE0 E7AA0080 */ swc1	$f10, 0X80($sp)
/* 000157 0x80AD2DE4 46160402 */ mul.s	$f16, $f0, $f22
/* 000158 0x80AD2DE8 C652002C */ lwc1	$f18, 0X2C($s2)
/* 000159 0x80AD2DEC C7A60084 */ lwc1	$f6, 0X84($sp)
/* 000160 0x80AD2DF0 46148101 */ sub.s	$f4, $f16, $f20
/* 000161 0x80AD2DF4 46049200 */ add.s	$f8, $f18, $f4
/* 000162 0x80AD2DF8 46083280 */ add.s	$f10, $f6, $f8
/* 000163 0x80AD2DFC 0C021BE8 */ jal	rand
/* 000164 0x80AD2E00 E7AA0084 */ swc1	$f10, 0X84($sp)
/* 000165 0x80AD2E04 0002C642 */ srl	$t8, $v0, 25
/* 000166 0x80AD2E08 27190118 */ addiu	$t9, $t8, 0X118
/* 000167 0x80AD2E0C AFB90014 */ sw	$t9, 0X14($sp)
/* 000168 0x80AD2E10 02C02025 */ move	$a0, $s6
/* 000169 0x80AD2E14 02602825 */ move	$a1, $s3
/* 000170 0x80AD2E18 00003025 */ move	$a2, $zero
/* 000171 0x80AD2E1C 00003825 */ move	$a3, $zero
/* 000172 0x80AD2E20 0C02C7D3 */ jal	EffectSS_SpawnGSplash
/* 000173 0x80AD2E24 AFA00010 */ sw	$zero, 0X10($sp)
/* 000174 0x80AD2E28 26100001 */ addiu	$s0, $s0, 0X1
/* 000175 0x80AD2E2C 1614FFD2 */ bne	$s0, $s4, .L80AD2D78
/* 000176 0x80AD2E30 00000000 */ nop
/* 000177 0x80AD2E34 2631000C */ addiu	$s1, $s1, 0XC
/* 000178 0x80AD2E38 5637FFCF */ bnel	$s1, $s7, .L80AD2D78
/* 000179 0x80AD2E3C 00008025 */ move	$s0, $zero
.L80AD2E40:
/* 000180 0x80AD2E40 02402025 */ move	$a0, $s2
/* 000181 0x80AD2E44 0C02E3B2 */ jal	func_800B8EC8
/* 000182 0x80AD2E48 2405291B */ li	$a1, 0X291B
.L80AD2E4C:
/* 000183 0x80AD2E4C 8FBF0054 */ lw	$ra, 0X54($sp)
/* 000184 0x80AD2E50 D7B40018 */ ldc1	$f20, 0X18($sp)
/* 000185 0x80AD2E54 D7B60020 */ ldc1	$f22, 0X20($sp)
/* 000186 0x80AD2E58 D7B80028 */ ldc1	$f24, 0X28($sp)
/* 000187 0x80AD2E5C 8FB00034 */ lw	$s0, 0X34($sp)
/* 000188 0x80AD2E60 8FB10038 */ lw	$s1, 0X38($sp)
/* 000189 0x80AD2E64 8FB2003C */ lw	$s2, 0X3C($sp)
/* 000190 0x80AD2E68 8FB30040 */ lw	$s3, 0X40($sp)
/* 000191 0x80AD2E6C 8FB40044 */ lw	$s4, 0X44($sp)
/* 000192 0x80AD2E70 8FB50048 */ lw	$s5, 0X48($sp)
/* 000193 0x80AD2E74 8FB6004C */ lw	$s6, 0X4C($sp)
/* 000194 0x80AD2E78 8FB70050 */ lw	$s7, 0X50($sp)
/* 000195 0x80AD2E7C 03E00008 */ jr	$ra
/* 000196 0x80AD2E80 27BD0090 */ addiu	$sp, $sp, 0X90

glabel BgCtowerGear_Init
/* 000197 0x80AD2E84 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000198 0x80AD2E88 AFB00014 */ sw	$s0, 0X14($sp)
/* 000199 0x80AD2E8C 00808025 */ move	$s0, $a0
/* 000200 0x80AD2E90 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000201 0x80AD2E94 AFB10018 */ sw	$s1, 0X18($sp)
/* 000202 0x80AD2E98 AFA50024 */ sw	$a1, 0X24($sp)
/* 000203 0x80AD2E9C 8611001C */ lh	$s1, 0X1C($s0)
/* 000204 0x80AD2EA0 3C053DCC */ lui	$a1, 0x3DCC
/* 000205 0x80AD2EA4 34A5CCCD */ ori	$a1, $a1, 0XCCCD
/* 000206 0x80AD2EA8 02002025 */ move	$a0, $s0
/* 000207 0x80AD2EAC 0C02D9F8 */ jal	Actor_SetScale
/* 000208 0x80AD2EB0 32310003 */ andi	$s1, $s1, 0X3
/* 000209 0x80AD2EB4 24010001 */ li	$at, 0X1
/* 000210 0x80AD2EB8 16210006 */ bne	$s1, $at, .L80AD2ED4
/* 000211 0x80AD2EBC 02002025 */ move	$a0, $s0
/* 000212 0x80AD2EC0 3C0580AD */ lui	$a1, %hi(D_80AD32D0)
/* 000213 0x80AD2EC4 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000214 0x80AD2EC8 24A532D0 */ addiu	$a1, $a1, %lo(D_80AD32D0)
/* 000215 0x80AD2ECC 10000011 */ b	.L80AD2F14
/* 000216 0x80AD2ED0 24010002 */ li	$at, 0X2
.L80AD2ED4:
/* 000217 0x80AD2ED4 24010003 */ li	$at, 0X3
/* 000218 0x80AD2ED8 1621000A */ bne	$s1, $at, .L80AD2F04
/* 000219 0x80AD2EDC 02002025 */ move	$a0, $s0
/* 000220 0x80AD2EE0 3C0580AD */ lui	$a1, %hi(D_80AD32DC)
/* 000221 0x80AD2EE4 24A532DC */ addiu	$a1, $a1, %lo(D_80AD32DC)
/* 000222 0x80AD2EE8 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000223 0x80AD2EEC 02002025 */ move	$a0, $s0
/* 000224 0x80AD2EF0 3C0E80AD */ lui	$t6, %hi(func_80AD3054)
/* 000225 0x80AD2EF4 25CE3054 */ addiu	$t6, $t6, %lo(func_80AD3054)
/* 000226 0x80AD2EF8 AE00013C */ sw	$zero, 0X13C($s0)
/* 000227 0x80AD2EFC 10000004 */ b	.L80AD2F10
/* 000228 0x80AD2F00 AE0E0138 */ sw	$t6, 0X138($s0)
.L80AD2F04:
/* 000229 0x80AD2F04 3C0580AD */ lui	$a1, %hi(D_80AD32C4)
/* 000230 0x80AD2F08 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000231 0x80AD2F0C 24A532C4 */ addiu	$a1, $a1, %lo(D_80AD32C4)
.L80AD2F10:
/* 000232 0x80AD2F10 24010002 */ li	$at, 0X2
.L80AD2F14:
/* 000233 0x80AD2F14 1621000A */ bne	$s1, $at, .L80AD2F40
/* 000234 0x80AD2F18 02002025 */ move	$a0, $s0
/* 000235 0x80AD2F1C 0C032B84 */ jal	BcCheck3_BgActorInit
/* 000236 0x80AD2F20 24050003 */ li	$a1, 0X3
/* 000237 0x80AD2F24 3C060602 */ lui	$a2, 0x0602
/* 000238 0x80AD2F28 24C68588 */ addiu	$a2, $a2, -0X7A78
/* 000239 0x80AD2F2C 8FA40024 */ lw	$a0, 0X24($sp)
/* 000240 0x80AD2F30 0C032B8D */ jal	BgCheck3_LoadMesh
/* 000241 0x80AD2F34 02002825 */ move	$a1, $s0
/* 000242 0x80AD2F38 10000010 */ b	.L80AD2F7C
/* 000243 0x80AD2F3C 8FBF001C */ lw	$ra, 0X1C($sp)
.L80AD2F40:
/* 000244 0x80AD2F40 24010003 */ li	$at, 0X3
/* 000245 0x80AD2F44 1621000C */ bne	$s1, $at, .L80AD2F78
/* 000246 0x80AD2F48 02002025 */ move	$a0, $s0
/* 000247 0x80AD2F4C 0C032B84 */ jal	BcCheck3_BgActorInit
/* 000248 0x80AD2F50 00002825 */ move	$a1, $zero
/* 000249 0x80AD2F54 3C060601 */ lui	$a2, 0x0601
/* 000250 0x80AD2F58 24C66E70 */ addiu	$a2, $a2, 0X6E70
/* 000251 0x80AD2F5C 8FA40024 */ lw	$a0, 0X24($sp)
/* 000252 0x80AD2F60 0C032B8D */ jal	BgCheck3_LoadMesh
/* 000253 0x80AD2F64 02002825 */ move	$a1, $s0
/* 000254 0x80AD2F68 8FA40024 */ lw	$a0, 0X24($sp)
/* 000255 0x80AD2F6C 8E060144 */ lw	$a2, 0X144($s0)
/* 000256 0x80AD2F70 0C0318AF */ jal	func_800C62BC
/* 000257 0x80AD2F74 24850880 */ addiu	$a1, $a0, 0X880
.L80AD2F78:
/* 000258 0x80AD2F78 8FBF001C */ lw	$ra, 0X1C($sp)
.L80AD2F7C:
/* 000259 0x80AD2F7C 8FB00014 */ lw	$s0, 0X14($sp)
/* 000260 0x80AD2F80 8FB10018 */ lw	$s1, 0X18($sp)
/* 000261 0x80AD2F84 03E00008 */ jr	$ra
/* 000262 0x80AD2F88 27BD0020 */ addiu	$sp, $sp, 0X20

glabel BgCtowerGear_Destroy
/* 000263 0x80AD2F8C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000264 0x80AD2F90 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000265 0x80AD2F94 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000266 0x80AD2F98 00803825 */ move	$a3, $a0
/* 000267 0x80AD2F9C 84E2001C */ lh	$v0, 0X1C($a3)
/* 000268 0x80AD2FA0 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000269 0x80AD2FA4 24010002 */ li	$at, 0X2
/* 000270 0x80AD2FA8 30420003 */ andi	$v0, $v0, 0X3
/* 000271 0x80AD2FAC 10410004 */ beq	$v0, $at, .L80AD2FC0
/* 000272 0x80AD2FB0 24850880 */ addiu	$a1, $a0, 0X880
/* 000273 0x80AD2FB4 24010003 */ li	$at, 0X3
/* 000274 0x80AD2FB8 54410004 */ bnel	$v0, $at, .L80AD2FCC
/* 000275 0x80AD2FBC 8FBF0014 */ lw	$ra, 0X14($sp)
.L80AD2FC0:
/* 000276 0x80AD2FC0 0C031933 */ jal	BgCheck_RemoveActorMesh
/* 000277 0x80AD2FC4 8CE60144 */ lw	$a2, 0X144($a3)
/* 000278 0x80AD2FC8 8FBF0014 */ lw	$ra, 0X14($sp)
.L80AD2FCC:
/* 000279 0x80AD2FCC 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000280 0x80AD2FD0 03E00008 */ jr	$ra
/* 000281 0x80AD2FD4 00000000 */ nop

glabel BgCtowerGear_Update
/* 000282 0x80AD2FD8 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000283 0x80AD2FDC AFBF0014 */ sw	$ra, 0X14($sp)
/* 000284 0x80AD2FE0 8482001C */ lh	$v0, 0X1C($a0)
/* 000285 0x80AD2FE4 24010001 */ li	$at, 0X1
/* 000286 0x80AD2FE8 30420003 */ andi	$v0, $v0, 0X3
/* 000287 0x80AD2FEC 14400005 */ bnez	$v0, .L80AD3004
/* 000288 0x80AD2FF0 00000000 */ nop
/* 000289 0x80AD2FF4 848E00BC */ lh	$t6, 0XBC($a0)
/* 000290 0x80AD2FF8 25CFFE0C */ addiu	$t7, $t6, -0X1F4
/* 000291 0x80AD2FFC 10000011 */ b	.L80AD3044
/* 000292 0x80AD3000 A48F00BC */ sh	$t7, 0XBC($a0)
.L80AD3004:
/* 000293 0x80AD3004 54410009 */ bnel	$v0, $at, .L80AD302C
/* 000294 0x80AD3008 24010002 */ li	$at, 0X2
/* 000295 0x80AD300C 849800BE */ lh	$t8, 0XBE($a0)
/* 000296 0x80AD3010 24052085 */ li	$a1, 0X2085
/* 000297 0x80AD3014 271901F4 */ addiu	$t9, $t8, 0X1F4
/* 000298 0x80AD3018 0C02E404 */ jal	func_800B9010
/* 000299 0x80AD301C A49900BE */ sh	$t9, 0XBE($a0)
/* 000300 0x80AD3020 10000009 */ b	.L80AD3048
/* 000301 0x80AD3024 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000302 0x80AD3028 24010002 */ li	$at, 0X2
.L80AD302C:
/* 000303 0x80AD302C 54410006 */ bnel	$v0, $at, .L80AD3048
/* 000304 0x80AD3030 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000305 0x80AD3034 848800C0 */ lh	$t0, 0XC0($a0)
/* 000306 0x80AD3038 2509FE0C */ addiu	$t1, $t0, -0X1F4
/* 000307 0x80AD303C 0C2B4ADC */ jal	func_80AD2B70
/* 000308 0x80AD3040 A48900C0 */ sh	$t1, 0XC0($a0)
.L80AD3044:
/* 000309 0x80AD3044 8FBF0014 */ lw	$ra, 0X14($sp)
.L80AD3048:
/* 000310 0x80AD3048 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000311 0x80AD304C 03E00008 */ jr	$ra
/* 000312 0x80AD3050 00000000 */ nop

glabel func_80AD3054
/* 000313 0x80AD3054 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000314 0x80AD3058 AFB00018 */ sw	$s0, 0X18($sp)
/* 000315 0x80AD305C 00808025 */ move	$s0, $a0
/* 000316 0x80AD3060 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000317 0x80AD3064 00A03825 */ move	$a3, $a1
/* 000318 0x80AD3068 00E02025 */ move	$a0, $a3
/* 000319 0x80AD306C 24050068 */ li	$a1, 0X68
/* 000320 0x80AD3070 0C03B8A7 */ jal	func_800EE29C
/* 000321 0x80AD3074 AFA70024 */ sw	$a3, 0X24($sp)
/* 000322 0x80AD3078 10400025 */ beqz	$v0, .L80AD3110
/* 000323 0x80AD307C 8FA70024 */ lw	$a3, 0X24($sp)
/* 000324 0x80AD3080 00E02025 */ move	$a0, $a3
/* 000325 0x80AD3084 24050068 */ li	$a1, 0X68
/* 000326 0x80AD3088 0C03B880 */ jal	func_800EE200
/* 000327 0x80AD308C AFA70024 */ sw	$a3, 0X24($sp)
/* 000328 0x80AD3090 8FA70024 */ lw	$a3, 0X24($sp)
/* 000329 0x80AD3094 00027080 */ sll	$t6, $v0, 2
/* 000330 0x80AD3098 24010001 */ li	$at, 0X1
/* 000331 0x80AD309C 00EE7821 */ addu	$t7, $a3, $t6
/* 000332 0x80AD30A0 8DF81F4C */ lw	$t8, 0X1F4C($t7)
/* 000333 0x80AD30A4 00E02025 */ move	$a0, $a3
/* 000334 0x80AD30A8 24E50880 */ addiu	$a1, $a3, 0X880
/* 000335 0x80AD30AC 97030000 */ lhu	$v1, 0X0($t8)
/* 000336 0x80AD30B0 10610008 */ beq	$v1, $at, .L80AD30D4
/* 000337 0x80AD30B4 24010002 */ li	$at, 0X2
/* 000338 0x80AD30B8 1061000B */ beq	$v1, $at, .L80AD30E8
/* 000339 0x80AD30BC 3C1980AD */ lui	$t9, %hi(func_80AD3164)
/* 000340 0x80AD30C0 24010003 */ li	$at, 0X3
/* 000341 0x80AD30C4 10610010 */ beq	$v1, $at, .L80AD3108
/* 000342 0x80AD30C8 00000000 */ nop
/* 000343 0x80AD30CC 10000011 */ b	.L80AD3114
/* 000344 0x80AD30D0 8FBF001C */ lw	$ra, 0X1C($sp)
.L80AD30D4:
/* 000345 0x80AD30D4 AE00013C */ sw	$zero, 0X13C($s0)
/* 000346 0x80AD30D8 0C0318AF */ jal	func_800C62BC
/* 000347 0x80AD30DC 8E060144 */ lw	$a2, 0X144($s0)
/* 000348 0x80AD30E0 1000000C */ b	.L80AD3114
/* 000349 0x80AD30E4 8FBF001C */ lw	$ra, 0X1C($sp)
.L80AD30E8:
/* 000350 0x80AD30E8 27393164 */ addiu	$t9, $t9, %lo(func_80AD3164)
/* 000351 0x80AD30EC AE19013C */ sw	$t9, 0X13C($s0)
/* 000352 0x80AD30F0 00E02025 */ move	$a0, $a3
/* 000353 0x80AD30F4 24E50880 */ addiu	$a1, $a3, 0X880
/* 000354 0x80AD30F8 0C0318C5 */ jal	func_800C6314
/* 000355 0x80AD30FC 8E060144 */ lw	$a2, 0X144($s0)
/* 000356 0x80AD3100 10000004 */ b	.L80AD3114
/* 000357 0x80AD3104 8FBF001C */ lw	$ra, 0X1C($sp)
.L80AD3108:
/* 000358 0x80AD3108 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000359 0x80AD310C 02002025 */ move	$a0, $s0
.L80AD3110:
/* 000360 0x80AD3110 8FBF001C */ lw	$ra, 0X1C($sp)
.L80AD3114:
/* 000361 0x80AD3114 8FB00018 */ lw	$s0, 0X18($sp)
/* 000362 0x80AD3118 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000363 0x80AD311C 03E00008 */ jr	$ra
/* 000364 0x80AD3120 00000000 */ nop

glabel BgCtowerGear_Draw
/* 000365 0x80AD3124 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000366 0x80AD3128 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000367 0x80AD312C 00803825 */ move	$a3, $a0
/* 000368 0x80AD3130 00A03025 */ move	$a2, $a1
/* 000369 0x80AD3134 84EE001C */ lh	$t6, 0X1C($a3)
/* 000370 0x80AD3138 3C0580AD */ lui	$a1, %hi(D_80AD32E8)
/* 000371 0x80AD313C 00C02025 */ move	$a0, $a2
/* 000372 0x80AD3140 31CF0003 */ andi	$t7, $t6, 0X3
/* 000373 0x80AD3144 000FC080 */ sll	$t8, $t7, 2
/* 000374 0x80AD3148 00B82821 */ addu	$a1, $a1, $t8
/* 000375 0x80AD314C 0C02F7F0 */ jal	func_800BDFC0
/* 000376 0x80AD3150 8CA532E8 */ lw	$a1, %lo(D_80AD32E8)($a1)
/* 000377 0x80AD3154 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000378 0x80AD3158 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000379 0x80AD315C 03E00008 */ jr	$ra
/* 000380 0x80AD3160 00000000 */ nop

glabel func_80AD3164
/* 000381 0x80AD3164 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 000382 0x80AD3168 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000383 0x80AD316C AFB00018 */ sw	$s0, 0X18($sp)
/* 000384 0x80AD3170 AFA40038 */ sw	$a0, 0X38($sp)
/* 000385 0x80AD3174 AFA5003C */ sw	$a1, 0X3C($sp)
/* 000386 0x80AD3178 8FAE003C */ lw	$t6, 0X3C($sp)
/* 000387 0x80AD317C 8DC40000 */ lw	$a0, 0X0($t6)
/* 000388 0x80AD3180 0C04B0A3 */ jal	func_8012C28C
/* 000389 0x80AD3184 00808025 */ move	$s0, $a0
/* 000390 0x80AD3188 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 000391 0x80AD318C 3C18DA38 */ lui	$t8, 0xDA38
/* 000392 0x80AD3190 37180003 */ ori	$t8, $t8, 0X3
/* 000393 0x80AD3194 244F0008 */ addiu	$t7, $v0, 0X8
/* 000394 0x80AD3198 AE0F02B0 */ sw	$t7, 0X2B0($s0)
/* 000395 0x80AD319C AC580000 */ sw	$t8, 0X0($v0)
/* 000396 0x80AD31A0 8FB9003C */ lw	$t9, 0X3C($sp)
/* 000397 0x80AD31A4 8F240000 */ lw	$a0, 0X0($t9)
/* 000398 0x80AD31A8 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000399 0x80AD31AC AFA2002C */ sw	$v0, 0X2C($sp)
/* 000400 0x80AD31B0 8FA3002C */ lw	$v1, 0X2C($sp)
/* 000401 0x80AD31B4 3C09DE00 */ lui	$t1, 0xDE00
/* 000402 0x80AD31B8 AC620004 */ sw	$v0, 0X4($v1)
/* 000403 0x80AD31BC 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 000404 0x80AD31C0 3C0A0601 */ lui	$t2, 0x0601
/* 000405 0x80AD31C4 254A60A0 */ addiu	$t2, $t2, 0X60A0
/* 000406 0x80AD31C8 24480008 */ addiu	$t0, $v0, 0X8
/* 000407 0x80AD31CC AE0802B0 */ sw	$t0, 0X2B0($s0)
/* 000408 0x80AD31D0 AC4A0004 */ sw	$t2, 0X4($v0)
/* 000409 0x80AD31D4 AC490000 */ sw	$t1, 0X0($v0)
/* 000410 0x80AD31D8 8FAB003C */ lw	$t3, 0X3C($sp)
/* 000411 0x80AD31DC 0C04B0B7 */ jal	func_8012C2DC
/* 000412 0x80AD31E0 8D640000 */ lw	$a0, 0X0($t3)
/* 000413 0x80AD31E4 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000414 0x80AD31E8 3C0DDA38 */ lui	$t5, 0xDA38
/* 000415 0x80AD31EC 35AD0003 */ ori	$t5, $t5, 0X3
/* 000416 0x80AD31F0 244C0008 */ addiu	$t4, $v0, 0X8
/* 000417 0x80AD31F4 AE0C02C0 */ sw	$t4, 0X2C0($s0)
/* 000418 0x80AD31F8 AC4D0000 */ sw	$t5, 0X0($v0)
/* 000419 0x80AD31FC 8FAE003C */ lw	$t6, 0X3C($sp)
/* 000420 0x80AD3200 8DC40000 */ lw	$a0, 0X0($t6)
/* 000421 0x80AD3204 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000422 0x80AD3208 AFA20024 */ sw	$v0, 0X24($sp)
/* 000423 0x80AD320C 8FA30024 */ lw	$v1, 0X24($sp)
/* 000424 0x80AD3210 3C18DE00 */ lui	$t8, 0xDE00
/* 000425 0x80AD3214 AC620004 */ sw	$v0, 0X4($v1)
/* 000426 0x80AD3218 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000427 0x80AD321C 3C190601 */ lui	$t9, 0x0601
/* 000428 0x80AD3220 27395F30 */ addiu	$t9, $t9, 0X5F30
/* 000429 0x80AD3224 244F0008 */ addiu	$t7, $v0, 0X8
/* 000430 0x80AD3228 AE0F02C0 */ sw	$t7, 0X2C0($s0)
/* 000431 0x80AD322C AC590004 */ sw	$t9, 0X4($v0)
/* 000432 0x80AD3230 AC580000 */ sw	$t8, 0X0($v0)
/* 000433 0x80AD3234 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000434 0x80AD3238 8FB00018 */ lw	$s0, 0X18($sp)
/* 000435 0x80AD323C 27BD0038 */ addiu	$sp, $sp, 0X38
/* 000436 0x80AD3240 03E00008 */ jr	$ra
/* 000437 0x80AD3244 00000000 */ nop
/* 000438 0x80AD3248 00000000 */ nop
/* 000439 0x80AD324C 00000000 */ nop
