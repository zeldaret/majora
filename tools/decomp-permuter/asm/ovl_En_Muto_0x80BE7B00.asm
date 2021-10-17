.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel EnMuto_Init
/* 000000 0x80BE7B00 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000001 0x80BE7B04 AFB00028 */ sw	$s0, 0X28($sp)
/* 000002 0x80BE7B08 00808025 */ move	$s0, $a0
/* 000003 0x80BE7B0C AFBF002C */ sw	$ra, 0X2C($sp)
/* 000004 0x80BE7B10 AFA50034 */ sw	$a1, 0X34($sp)
/* 000005 0x80BE7B14 240E00FF */ li	$t6, 0XFF
/* 000006 0x80BE7B18 3C06800B */ lui	$a2, %hi(func_800B3FC0)
/* 000007 0x80BE7B1C A20E00B6 */ sb	$t6, 0XB6($s0)
/* 000008 0x80BE7B20 24C63FC0 */ addiu	$a2, $a2, %lo(func_800B3FC0)
/* 000009 0x80BE7B24 260400BC */ addiu	$a0, $s0, 0XBC
/* 000010 0x80BE7B28 24050000 */ li	$a1, 0X0
/* 000011 0x80BE7B2C 0C02CEE9 */ jal	Actor_SetDrawParams
/* 000012 0x80BE7B30 3C074220 */ lui	$a3, 0x4220
/* 000013 0x80BE7B34 3C060600 */ lui	$a2, 0x0600
/* 000014 0x80BE7B38 3C070600 */ lui	$a3, 0x0600
/* 000015 0x80BE7B3C 260F0188 */ addiu	$t7, $s0, 0X188
/* 000016 0x80BE7B40 261801EE */ addiu	$t8, $s0, 0X1EE
/* 000017 0x80BE7B44 24190011 */ li	$t9, 0X11
/* 000018 0x80BE7B48 AFB90018 */ sw	$t9, 0X18($sp)
/* 000019 0x80BE7B4C AFB80014 */ sw	$t8, 0X14($sp)
/* 000020 0x80BE7B50 AFAF0010 */ sw	$t7, 0X10($sp)
/* 000021 0x80BE7B54 24E70E50 */ addiu	$a3, $a3, 0XE50
/* 000022 0x80BE7B58 24C67150 */ addiu	$a2, $a2, 0X7150
/* 000023 0x80BE7B5C 8FA40034 */ lw	$a0, 0X34($sp)
/* 000024 0x80BE7B60 0C04DACC */ jal	SkelAnime_InitSV
/* 000025 0x80BE7B64 26050144 */ addiu	$a1, $s0, 0X144
/* 000026 0x80BE7B68 8602001C */ lh	$v0, 0X1C($s0)
/* 000027 0x80BE7B6C 240F001E */ li	$t7, 0X1E
/* 000028 0x80BE7B70 2418003C */ li	$t8, 0X3C
/* 000029 0x80BE7B74 14400018 */ bnez	$v0, .L80BE7BD8
/* 000030 0x80BE7B78 AE020280 */ sw	$v0, 0X280($s0)
/* 000031 0x80BE7B7C 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 000032 0x80BE7B80 24080001 */ li	$t0, 0X1
/* 000033 0x80BE7B84 24090002 */ li	$t1, 0X2
/* 000034 0x80BE7B88 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 000035 0x80BE7B8C AE080284 */ sw	$t0, 0X284($s0)
/* 000036 0x80BE7B90 A609027A */ sh	$t1, 0X27A($s0)
/* 000037 0x80BE7B94 904A0F34 */ lbu	$t2, 0XF34($v0)
/* 000038 0x80BE7B98 240C0003 */ li	$t4, 0X3
/* 000039 0x80BE7B9C 314B0080 */ andi	$t3, $t2, 0X80
/* 000040 0x80BE7BA0 51600003 */ beqzl	$t3, .L80BE7BB0
/* 000041 0x80BE7BA4 8C4D0018 */ lw	$t5, 0X18($v0)
/* 000042 0x80BE7BA8 A60C027A */ sh	$t4, 0X27A($s0)
/* 000043 0x80BE7BAC 8C4D0018 */ lw	$t5, 0X18($v0)
.L80BE7BB0:
/* 000044 0x80BE7BB0 24010003 */ li	$at, 0X3
/* 000045 0x80BE7BB4 15A10004 */ bne	$t5, $at, .L80BE7BC8
/* 000046 0x80BE7BB8 00000000 */ nop
/* 000047 0x80BE7BBC 8C4E0010 */ lw	$t6, 0X10($v0)
/* 000048 0x80BE7BC0 55C00018 */ bnezl	$t6, .L80BE7C24
/* 000049 0x80BE7BC4 3C01C040 */ lui	$at, 0xC040
.L80BE7BC8:
/* 000050 0x80BE7BC8 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000051 0x80BE7BCC 02002025 */ move	$a0, $s0
/* 000052 0x80BE7BD0 10000014 */ b	.L80BE7C24
/* 000053 0x80BE7BD4 3C01C040 */ lui	$at, 0xC040
.L80BE7BD8:
/* 000054 0x80BE7BD8 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 000055 0x80BE7BDC 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 000056 0x80BE7BE0 A60F02D4 */ sh	$t7, 0X2D4($s0)
/* 000057 0x80BE7BE4 A61802D6 */ sh	$t8, 0X2D6($s0)
/* 000058 0x80BE7BE8 A60002D8 */ sh	$zero, 0X2D8($s0)
/* 000059 0x80BE7BEC 90590F37 */ lbu	$t9, 0XF37($v0)
/* 000060 0x80BE7BF0 33280080 */ andi	$t0, $t9, 0X80
/* 000061 0x80BE7BF4 15000008 */ bnez	$t0, .L80BE7C18
/* 000062 0x80BE7BF8 00000000 */ nop
/* 000063 0x80BE7BFC 8C490018 */ lw	$t1, 0X18($v0)
/* 000064 0x80BE7C00 24010003 */ li	$at, 0X3
/* 000065 0x80BE7C04 55210007 */ bnel	$t1, $at, .L80BE7C24
/* 000066 0x80BE7C08 3C01C040 */ lui	$at, 0xC040
/* 000067 0x80BE7C0C 8C4A0010 */ lw	$t2, 0X10($v0)
/* 000068 0x80BE7C10 51400004 */ beqzl	$t2, .L80BE7C24
/* 000069 0x80BE7C14 3C01C040 */ lui	$at, 0xC040
.L80BE7C18:
/* 000070 0x80BE7C18 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000071 0x80BE7C1C 02002025 */ move	$a0, $s0
/* 000072 0x80BE7C20 3C01C040 */ lui	$at, 0xC040
.L80BE7C24:
/* 000073 0x80BE7C24 44812000 */ mtc1	$at, $f4
/* 000074 0x80BE7C28 240B0006 */ li	$t3, 0X6
/* 000075 0x80BE7C2C A20B001F */ sb	$t3, 0X1F($s0)
/* 000076 0x80BE7C30 3C0780BF */ lui	$a3, %hi(D_80BE841C)
/* 000077 0x80BE7C34 E6040074 */ swc1	$f4, 0X74($s0)
/* 000078 0x80BE7C38 8FA40034 */ lw	$a0, 0X34($sp)
/* 000079 0x80BE7C3C 24E7841C */ addiu	$a3, $a3, %lo(D_80BE841C)
/* 000080 0x80BE7C40 26050294 */ addiu	$a1, $s0, 0X294
/* 000081 0x80BE7C44 0C0384DD */ jal	Collision_InitCylinder
/* 000082 0x80BE7C48 02003025 */ move	$a2, $s0
/* 000083 0x80BE7C4C 0C2F9F6D */ jal	func_80BE7DB4
/* 000084 0x80BE7C50 02002025 */ move	$a0, $s0
/* 000085 0x80BE7C54 8FBF002C */ lw	$ra, 0X2C($sp)
/* 000086 0x80BE7C58 8FB00028 */ lw	$s0, 0X28($sp)
/* 000087 0x80BE7C5C 27BD0030 */ addiu	$sp, $sp, 0X30
/* 000088 0x80BE7C60 03E00008 */ jr	$ra
/* 000089 0x80BE7C64 00000000 */ nop

glabel EnMuto_Destroy
/* 000090 0x80BE7C68 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000091 0x80BE7C6C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000092 0x80BE7C70 00803025 */ move	$a2, $a0
/* 000093 0x80BE7C74 00A03825 */ move	$a3, $a1
/* 000094 0x80BE7C78 00E02025 */ move	$a0, $a3
/* 000095 0x80BE7C7C 0C03847B */ jal	Collision_FiniCylinder
/* 000096 0x80BE7C80 24C50294 */ addiu	$a1, $a2, 0X294
/* 000097 0x80BE7C84 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000098 0x80BE7C88 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000099 0x80BE7C8C 03E00008 */ jr	$ra
/* 000100 0x80BE7C90 00000000 */ nop

glabel func_80BE7C94
/* 000101 0x80BE7C94 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000102 0x80BE7C98 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000103 0x80BE7C9C AFA40028 */ sw	$a0, 0X28($sp)
/* 000104 0x80BE7CA0 8FAE0028 */ lw	$t6, 0X28($sp)
/* 000105 0x80BE7CA4 00057880 */ sll	$t7, $a1, 2
/* 000106 0x80BE7CA8 3C0480BF */ lui	$a0, %hi(D_80BE8448)
/* 000107 0x80BE7CAC 008F2021 */ addu	$a0, $a0, $t7
/* 000108 0x80BE7CB0 ADC50290 */ sw	$a1, 0X290($t6)
/* 000109 0x80BE7CB4 0C04D1D2 */ jal	SkelAnime_GetFrameCount
/* 000110 0x80BE7CB8 8C848448 */ lw	$a0, %lo(D_80BE8448)($a0)
/* 000111 0x80BE7CBC 44822000 */ mtc1	$v0, $f4
/* 000112 0x80BE7CC0 8FA80028 */ lw	$t0, 0X28($sp)
/* 000113 0x80BE7CC4 3C1980BF */ lui	$t9, %hi(D_80BE8450)
/* 000114 0x80BE7CC8 46802020 */ cvt.s.w	$f0, $f4
/* 000115 0x80BE7CCC 8D030290 */ lw	$v1, 0X290($t0)
/* 000116 0x80BE7CD0 3C01C080 */ lui	$at, 0xC080
/* 000117 0x80BE7CD4 44813000 */ mtc1	$at, $f6
/* 000118 0x80BE7CD8 0323C821 */ addu	$t9, $t9, $v1
/* 000119 0x80BE7CDC 3C0580BF */ lui	$a1, %hi(D_80BE8448)
/* 000120 0x80BE7CE0 E5000274 */ swc1	$f0, 0X274($t0)
/* 000121 0x80BE7CE4 93398450 */ lbu	$t9, %lo(D_80BE8450)($t9)
/* 000122 0x80BE7CE8 0003C080 */ sll	$t8, $v1, 2
/* 000123 0x80BE7CEC 00B82821 */ addu	$a1, $a1, $t8
/* 000124 0x80BE7CF0 8CA58448 */ lw	$a1, %lo(D_80BE8448)($a1)
/* 000125 0x80BE7CF4 E7A00010 */ swc1	$f0, 0X10($sp)
/* 000126 0x80BE7CF8 3C063F80 */ lui	$a2, 0x3F80
/* 000127 0x80BE7CFC 24070000 */ li	$a3, 0X0
/* 000128 0x80BE7D00 25040144 */ addiu	$a0, $t0, 0X144
/* 000129 0x80BE7D04 E7A60018 */ swc1	$f6, 0X18($sp)
/* 000130 0x80BE7D08 0C04DCFA */ jal	SkelAnime_ChangeAnim
/* 000131 0x80BE7D0C AFB90014 */ sw	$t9, 0X14($sp)
/* 000132 0x80BE7D10 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000133 0x80BE7D14 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000134 0x80BE7D18 03E00008 */ jr	$ra
/* 000135 0x80BE7D1C 00000000 */ nop

glabel func_80BE7D20
/* 000136 0x80BE7D20 848E027C */ lh	$t6, 0X27C($a0)
/* 000137 0x80BE7D24 848F0032 */ lh	$t7, 0X32($a0)
/* 000138 0x80BE7D28 3C014348 */ lui	$at, 0x4348
/* 000139 0x80BE7D2C 44813000 */ mtc1	$at, $f6
/* 000140 0x80BE7D30 01CF1023 */ subu	$v0, $t6, $t7
/* 000141 0x80BE7D34 00021400 */ sll	$v0, $v0, 16
/* 000142 0x80BE7D38 00021403 */ sra	$v0, $v0, 16
/* 000143 0x80BE7D3C 04410003 */ bgez	$v0, .L80BE7D4C
/* 000144 0x80BE7D40 00401825 */ move	$v1, $v0
/* 000145 0x80BE7D44 10000001 */ b	.L80BE7D4C
/* 000146 0x80BE7D48 00021823 */ negu	$v1, $v0
.L80BE7D4C:
/* 000147 0x80BE7D4C C4840098 */ lwc1	$f4, 0X98($a0)
/* 000148 0x80BE7D50 A4800260 */ sh	$zero, 0X260($a0)
/* 000149 0x80BE7D54 28614E20 */ slti	$at, $v1, 0X4E20
/* 000150 0x80BE7D58 4606203C */ c.lt.s	$f4, $f6
/* 000151 0x80BE7D5C 00000000 */ nop
/* 000152 0x80BE7D60 45000012 */ bc1f .L80BE7DAC
/* 000153 0x80BE7D64 00000000 */ nop
/* 000154 0x80BE7D68 10200010 */ beqz	$at, .L80BE7DAC
/* 000155 0x80BE7D6C 00000000 */ nop
/* 000156 0x80BE7D70 8498027C */ lh	$t8, 0X27C($a0)
/* 000157 0x80BE7D74 84990032 */ lh	$t9, 0X32($a0)
/* 000158 0x80BE7D78 24092710 */ li	$t1, 0X2710
/* 000159 0x80BE7D7C 03194023 */ subu	$t0, $t8, $t9
/* 000160 0x80BE7D80 A4880260 */ sh	$t0, 0X260($a0)
/* 000161 0x80BE7D84 84820260 */ lh	$v0, 0X260($a0)
/* 000162 0x80BE7D88 28412711 */ slti	$at, $v0, 0X2711
/* 000163 0x80BE7D8C 54200004 */ bnezl	$at, .L80BE7DA0
/* 000164 0x80BE7D90 2841D8F0 */ slti	$at, $v0, -0X2710
/* 000165 0x80BE7D94 03E00008 */ jr	$ra
/* 000166 0x80BE7D98 A4890260 */ sh	$t1, 0X260($a0)
/* 000167 0x80BE7D9C 2841D8F0 */ slti	$at, $v0, -0X2710
.L80BE7DA0:
/* 000168 0x80BE7DA0 10200002 */ beqz	$at, .L80BE7DAC
/* 000169 0x80BE7DA4 240AD8F0 */ li	$t2, -0X2710
/* 000170 0x80BE7DA8 A48A0260 */ sh	$t2, 0X260($a0)
.L80BE7DAC:
/* 000171 0x80BE7DAC 03E00008 */ jr	$ra
/* 000172 0x80BE7DB0 00000000 */ nop

glabel func_80BE7DB4
/* 000173 0x80BE7DB4 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000174 0x80BE7DB8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000175 0x80BE7DBC 00002825 */ move	$a1, $zero
/* 000176 0x80BE7DC0 0C2F9F25 */ jal	func_80BE7C94
/* 000177 0x80BE7DC4 AFA40018 */ sw	$a0, 0X18($sp)
/* 000178 0x80BE7DC8 8FA40018 */ lw	$a0, 0X18($sp)
/* 000179 0x80BE7DCC 3C0E80BE */ lui	$t6, %hi(func_80BE7DEC)
/* 000180 0x80BE7DD0 25CE7DEC */ addiu	$t6, $t6, %lo(func_80BE7DEC)
/* 000181 0x80BE7DD4 A4800278 */ sh	$zero, 0X278($a0)
/* 000182 0x80BE7DD8 AC8E0254 */ sw	$t6, 0X254($a0)
/* 000183 0x80BE7DDC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000184 0x80BE7DE0 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000185 0x80BE7DE4 03E00008 */ jr	$ra
/* 000186 0x80BE7DE8 00000000 */ nop

glabel func_80BE7DEC
/* 000187 0x80BE7DEC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000188 0x80BE7DF0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000189 0x80BE7DF4 00803825 */ move	$a3, $a0
/* 000190 0x80BE7DF8 84EE027A */ lh	$t6, 0X27A($a3)
/* 000191 0x80BE7DFC 3C1880BF */ lui	$t8, %hi(D_80BE8410)
/* 000192 0x80BE7E00 8CE30280 */ lw	$v1, 0X280($a3)
/* 000193 0x80BE7E04 000E7840 */ sll	$t7, $t6, 1
/* 000194 0x80BE7E08 030FC021 */ addu	$t8, $t8, $t7
/* 000195 0x80BE7E0C 97188410 */ lhu	$t8, %lo(D_80BE8410)($t8)
/* 000196 0x80BE7E10 00A02025 */ move	$a0, $a1
/* 000197 0x80BE7E14 14600012 */ bnez	$v1, .L80BE7E60
/* 000198 0x80BE7E18 A4F80116 */ sh	$t8, 0X116($a3)
/* 000199 0x80BE7E1C 8CA21CCC */ lw	$v0, 0X1CCC($a1)
/* 000200 0x80BE7E20 24010003 */ li	$at, 0X3
/* 000201 0x80BE7E24 3C08801F */ lui	$t0, %hi(gSaveContext + 0xF50)
/* 000202 0x80BE7E28 9059014B */ lbu	$t9, 0X14B($v0)
/* 000203 0x80BE7E2C 1721000C */ bne	$t9, $at, .L80BE7E60
/* 000204 0x80BE7E30 00000000 */ nop
/* 000205 0x80BE7E34 910805C0 */ lbu	$t0, %lo(gSaveContext + 0xF50)($t0)
/* 000206 0x80BE7E38 240A062C */ li	$t2, 0X62C
/* 000207 0x80BE7E3C 240B062B */ li	$t3, 0X62B
/* 000208 0x80BE7E40 31090008 */ andi	$t1, $t0, 0X8
/* 000209 0x80BE7E44 55200005 */ bnezl	$t1, .L80BE7E5C
/* 000210 0x80BE7E48 A4EB0116 */ sh	$t3, 0X116($a3)
/* 000211 0x80BE7E4C A4EA0116 */ sh	$t2, 0X116($a3)
/* 000212 0x80BE7E50 10000003 */ b	.L80BE7E60
/* 000213 0x80BE7E54 8CE30280 */ lw	$v1, 0X280($a3)
/* 000214 0x80BE7E58 A4EB0116 */ sh	$t3, 0X116($a3)
.L80BE7E5C:
/* 000215 0x80BE7E5C 8CE30280 */ lw	$v1, 0X280($a3)
.L80BE7E60:
/* 000216 0x80BE7E60 5460000B */ bnezl	$v1, .L80BE7E90
/* 000217 0x80BE7E64 00E02025 */ move	$a0, $a3
/* 000218 0x80BE7E68 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000219 0x80BE7E6C 0C04900F */ jal	func_8012403C
/* 000220 0x80BE7E70 AFA70018 */ sw	$a3, 0X18($sp)
/* 000221 0x80BE7E74 24010002 */ li	$at, 0X2
/* 000222 0x80BE7E78 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000223 0x80BE7E7C 14410003 */ bne	$v0, $at, .L80BE7E8C
/* 000224 0x80BE7E80 8FA70018 */ lw	$a3, 0X18($sp)
/* 000225 0x80BE7E84 240C2363 */ li	$t4, 0X2363
/* 000226 0x80BE7E88 A4EC0116 */ sh	$t4, 0X116($a3)
.L80BE7E8C:
/* 000227 0x80BE7E8C 00E02025 */ move	$a0, $a3
.L80BE7E90:
/* 000228 0x80BE7E90 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000229 0x80BE7E94 0C02E134 */ jal	func_800B84D0
/* 000230 0x80BE7E98 AFA70018 */ sw	$a3, 0X18($sp)
/* 000231 0x80BE7E9C 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000232 0x80BE7EA0 10400005 */ beqz	$v0, .L80BE7EB8
/* 000233 0x80BE7EA4 8FA70018 */ lw	$a3, 0X18($sp)
/* 000234 0x80BE7EA8 0C2F9FE2 */ jal	func_80BE7F88
/* 000235 0x80BE7EAC 00E02025 */ move	$a0, $a3
/* 000236 0x80BE7EB0 10000032 */ b	.L80BE7F7C
/* 000237 0x80BE7EB4 8FBF0014 */ lw	$ra, 0X14($sp)
.L80BE7EB8:
/* 000238 0x80BE7EB8 8CED0280 */ lw	$t5, 0X280($a3)
/* 000239 0x80BE7EBC 55A00013 */ bnezl	$t5, .L80BE7F0C
/* 000240 0x80BE7EC0 A4E0027A */ sh	$zero, 0X27A($a3)
/* 000241 0x80BE7EC4 84E30092 */ lh	$v1, 0X92($a3)
/* 000242 0x80BE7EC8 84EE0032 */ lh	$t6, 0X32($a3)
/* 000243 0x80BE7ECC 006E1023 */ subu	$v0, $v1, $t6
/* 000244 0x80BE7ED0 00021400 */ sll	$v0, $v0, 16
/* 000245 0x80BE7ED4 00021403 */ sra	$v0, $v0, 16
/* 000246 0x80BE7ED8 04410005 */ bgez	$v0, .L80BE7EF0
/* 000247 0x80BE7EDC 00022400 */ sll	$a0, $v0, 16
/* 000248 0x80BE7EE0 00022023 */ negu	$a0, $v0
/* 000249 0x80BE7EE4 00042400 */ sll	$a0, $a0, 16
/* 000250 0x80BE7EE8 10000002 */ b	.L80BE7EF4
/* 000251 0x80BE7EEC 00042403 */ sra	$a0, $a0, 16
.L80BE7EF0:
/* 000252 0x80BE7EF0 00042403 */ sra	$a0, $a0, 16
.L80BE7EF4:
/* 000253 0x80BE7EF4 28812891 */ slti	$at, $a0, 0X2891
/* 000254 0x80BE7EF8 1420001C */ bnez	$at, .L80BE7F6C
/* 000255 0x80BE7EFC A4E3027C */ sh	$v1, 0X27C($a3)
/* 000256 0x80BE7F00 1000001E */ b	.L80BE7F7C
/* 000257 0x80BE7F04 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000258 0x80BE7F08 A4E0027A */ sh	$zero, 0X27A($a3)
.L80BE7F0C:
/* 000259 0x80BE7F0C 3C0F801F */ lui	$t7, %hi(gSaveContext + 0xF34)
/* 000260 0x80BE7F10 91EF05A4 */ lbu	$t7, %lo(gSaveContext + 0xF34)($t7)
/* 000261 0x80BE7F14 00A02025 */ move	$a0, $a1
/* 000262 0x80BE7F18 31F80008 */ andi	$t8, $t7, 0X8
/* 000263 0x80BE7F1C 13000002 */ beqz	$t8, .L80BE7F28
/* 000264 0x80BE7F20 24190001 */ li	$t9, 0X1
/* 000265 0x80BE7F24 A4F9027A */ sh	$t9, 0X27A($a3)
.L80BE7F28:
/* 000266 0x80BE7F28 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000267 0x80BE7F2C 0C04900F */ jal	func_8012403C
/* 000268 0x80BE7F30 AFA70018 */ sw	$a3, 0X18($sp)
/* 000269 0x80BE7F34 2401000A */ li	$at, 0XA
/* 000270 0x80BE7F38 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000271 0x80BE7F3C 14410003 */ bne	$v0, $at, .L80BE7F4C
/* 000272 0x80BE7F40 8FA70018 */ lw	$a3, 0X18($sp)
/* 000273 0x80BE7F44 24080004 */ li	$t0, 0X4
/* 000274 0x80BE7F48 A4E8027A */ sh	$t0, 0X27A($a3)
.L80BE7F4C:
/* 000275 0x80BE7F4C 8CE9028C */ lw	$t1, 0X28C($a3)
/* 000276 0x80BE7F50 24010001 */ li	$at, 0X1
/* 000277 0x80BE7F54 55210006 */ bnel	$t1, $at, .L80BE7F70
/* 000278 0x80BE7F58 00E02025 */ move	$a0, $a3
/* 000279 0x80BE7F5C 0C2F9FE2 */ jal	func_80BE7F88
/* 000280 0x80BE7F60 00E02025 */ move	$a0, $a3
/* 000281 0x80BE7F64 10000005 */ b	.L80BE7F7C
/* 000282 0x80BE7F68 8FBF0014 */ lw	$ra, 0X14($sp)
.L80BE7F6C:
/* 000283 0x80BE7F6C 00E02025 */ move	$a0, $a3
.L80BE7F70:
/* 000284 0x80BE7F70 0C02E185 */ jal	func_800B8614
/* 000285 0x80BE7F74 3C0642A0 */ lui	$a2, 0x42A0
/* 000286 0x80BE7F78 8FBF0014 */ lw	$ra, 0X14($sp)
.L80BE7F7C:
/* 000287 0x80BE7F7C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000288 0x80BE7F80 03E00008 */ jr	$ra
/* 000289 0x80BE7F84 00000000 */ nop

glabel func_80BE7F88
/* 000290 0x80BE7F88 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000291 0x80BE7F8C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000292 0x80BE7F90 00803825 */ move	$a3, $a0
/* 000293 0x80BE7F94 8CEE0280 */ lw	$t6, 0X280($a3)
/* 000294 0x80BE7F98 24020001 */ li	$v0, 0X1
/* 000295 0x80BE7F9C 55C00003 */ bnezl	$t6, .L80BE7FAC
/* 000296 0x80BE7FA0 8CE40288 */ lw	$a0, 0X288($a3)
/* 000297 0x80BE7FA4 A4E0027C */ sh	$zero, 0X27C($a3)
/* 000298 0x80BE7FA8 8CE40288 */ lw	$a0, 0X288($a3)
.L80BE7FAC:
/* 000299 0x80BE7FAC 10800006 */ beqz	$a0, .L80BE7FC8
/* 000300 0x80BE7FB0 00803025 */ move	$a2, $a0
/* 000301 0x80BE7FB4 ACE20284 */ sw	$v0, 0X284($a3)
/* 000302 0x80BE7FB8 ACE2028C */ sw	$v0, 0X28C($a3)
/* 000303 0x80BE7FBC 0C02E1B2 */ jal	func_800B86C8
/* 000304 0x80BE7FC0 AFA70018 */ sw	$a3, 0X18($sp)
/* 000305 0x80BE7FC4 8FA70018 */ lw	$a3, 0X18($sp)
.L80BE7FC8:
/* 000306 0x80BE7FC8 3C1880BE */ lui	$t8, %hi(func_80BE7FEC)
/* 000307 0x80BE7FCC 240F0001 */ li	$t7, 0X1
/* 000308 0x80BE7FD0 27187FEC */ addiu	$t8, $t8, %lo(func_80BE7FEC)
/* 000309 0x80BE7FD4 A4EF0278 */ sh	$t7, 0X278($a3)
/* 000310 0x80BE7FD8 ACF80254 */ sw	$t8, 0X254($a3)
/* 000311 0x80BE7FDC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000312 0x80BE7FE0 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000313 0x80BE7FE4 03E00008 */ jr	$ra
/* 000314 0x80BE7FE8 00000000 */ nop

glabel func_80BE7FEC
/* 000315 0x80BE7FEC 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000316 0x80BE7FF0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000317 0x80BE7FF4 AFA50024 */ sw	$a1, 0X24($sp)
/* 000318 0x80BE7FF8 00803025 */ move	$a2, $a0
/* 000319 0x80BE7FFC 8CCE0280 */ lw	$t6, 0X280($a2)
/* 000320 0x80BE8000 55C0002A */ bnezl	$t6, .L80BE80AC
/* 000321 0x80BE8004 8CC20288 */ lw	$v0, 0X288($a2)
/* 000322 0x80BE8008 84CF0092 */ lh	$t7, 0X92($a2)
/* 000323 0x80BE800C A4CF027C */ sh	$t7, 0X27C($a2)
/* 000324 0x80BE8010 8FA40024 */ lw	$a0, 0X24($sp)
/* 000325 0x80BE8014 AFA60020 */ sw	$a2, 0X20($sp)
/* 000326 0x80BE8018 0C054926 */ jal	func_80152498
/* 000327 0x80BE801C 24844908 */ addiu	$a0, $a0, 0X4908
/* 000328 0x80BE8020 24010005 */ li	$at, 0X5
/* 000329 0x80BE8024 1441005B */ bne	$v0, $at, .L80BE8194
/* 000330 0x80BE8028 8FA60020 */ lw	$a2, 0X20($sp)
/* 000331 0x80BE802C 8FA40024 */ lw	$a0, 0X24($sp)
/* 000332 0x80BE8030 0C051D89 */ jal	func_80147624
/* 000333 0x80BE8034 AFA60020 */ sw	$a2, 0X20($sp)
/* 000334 0x80BE8038 10400056 */ beqz	$v0, .L80BE8194
/* 000335 0x80BE803C 8FA60020 */ lw	$a2, 0X20($sp)
/* 000336 0x80BE8040 8FA40024 */ lw	$a0, 0X24($sp)
/* 000337 0x80BE8044 0C051DED */ jal	func_801477B4
/* 000338 0x80BE8048 AFA60020 */ sw	$a2, 0X20($sp)
/* 000339 0x80BE804C 8FA60020 */ lw	$a2, 0X20($sp)
/* 000340 0x80BE8050 2401062C */ li	$at, 0X62C
/* 000341 0x80BE8054 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 000342 0x80BE8058 94C20116 */ lhu	$v0, 0X116($a2)
/* 000343 0x80BE805C 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 000344 0x80BE8060 240A0003 */ li	$t2, 0X3
/* 000345 0x80BE8064 14410005 */ bne	$v0, $at, .L80BE807C
/* 000346 0x80BE8068 00C02025 */ move	$a0, $a2
/* 000347 0x80BE806C 90780F50 */ lbu	$t8, 0XF50($v1)
/* 000348 0x80BE8070 37190008 */ ori	$t9, $t8, 0X8
/* 000349 0x80BE8074 A0790F50 */ sb	$t9, 0XF50($v1)
/* 000350 0x80BE8078 94C20116 */ lhu	$v0, 0X116($a2)
.L80BE807C:
/* 000351 0x80BE807C 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 000352 0x80BE8080 24010624 */ li	$at, 0X624
/* 000353 0x80BE8084 14410004 */ bne	$v0, $at, .L80BE8098
/* 000354 0x80BE8088 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 000355 0x80BE808C 90680F34 */ lbu	$t0, 0XF34($v1)
/* 000356 0x80BE8090 35090080 */ ori	$t1, $t0, 0X80
/* 000357 0x80BE8094 A0690F34 */ sb	$t1, 0XF34($v1)
.L80BE8098:
/* 000358 0x80BE8098 0C2F9F6D */ jal	func_80BE7DB4
/* 000359 0x80BE809C A4CA027A */ sh	$t2, 0X27A($a2)
/* 000360 0x80BE80A0 1000003D */ b	.L80BE8198
/* 000361 0x80BE80A4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000362 0x80BE80A8 8CC20288 */ lw	$v0, 0X288($a2)
.L80BE80AC:
/* 000363 0x80BE80AC 24C40024 */ addiu	$a0, $a2, 0X24
/* 000364 0x80BE80B0 14C2000C */ bne	$a2, $v0, .L80BE80E4
/* 000365 0x80BE80B4 24450024 */ addiu	$a1, $v0, 0X24
/* 000366 0x80BE80B8 44800000 */ mtc1	$zero, $f0
/* 000367 0x80BE80BC C4C40160 */ lwc1	$f4, 0X160($a2)
/* 000368 0x80BE80C0 84CB0032 */ lh	$t3, 0X32($a2)
/* 000369 0x80BE80C4 3C013F80 */ lui	$at, 0x3F80
/* 000370 0x80BE80C8 46040032 */ c.eq.s	$f0, $f4
/* 000371 0x80BE80CC A4CB027C */ sh	$t3, 0X27C($a2)
/* 000372 0x80BE80D0 45020016 */ bc1fl .L80BE812C
/* 000373 0x80BE80D4 8FA30024 */ lw	$v1, 0X24($sp)
/* 000374 0x80BE80D8 44813000 */ mtc1	$at, $f6
/* 000375 0x80BE80DC 10000012 */ b	.L80BE8128
/* 000376 0x80BE80E0 E4C60160 */ swc1	$f6, 0X160($a2)
.L80BE80E4:
/* 000377 0x80BE80E4 C4C8015C */ lwc1	$f8, 0X15C($a2)
/* 000378 0x80BE80E8 AFA60020 */ sw	$a2, 0X20($sp)
/* 000379 0x80BE80EC 0C03FE98 */ jal	Math_Vec3f_Yaw
/* 000380 0x80BE80F0 E7A8001C */ swc1	$f8, 0X1C($sp)
/* 000381 0x80BE80F4 8FA60020 */ lw	$a2, 0X20($sp)
/* 000382 0x80BE80F8 A4C2027C */ sh	$v0, 0X27C($a2)
/* 000383 0x80BE80FC C7AA001C */ lwc1	$f10, 0X1C($sp)
/* 000384 0x80BE8100 C4D00274 */ lwc1	$f16, 0X274($a2)
/* 000385 0x80BE8104 460A803E */ c.le.s	$f16, $f10
/* 000386 0x80BE8108 00000000 */ nop
/* 000387 0x80BE810C 45020005 */ bc1fl .L80BE8124
/* 000388 0x80BE8110 44800000 */ mtc1	$zero, $f0
/* 000389 0x80BE8114 44800000 */ mtc1	$zero, $f0
/* 000390 0x80BE8118 00000000 */ nop
/* 000391 0x80BE811C E4C00160 */ swc1	$f0, 0X160($a2)
/* 000392 0x80BE8120 44800000 */ mtc1	$zero, $f0
.L80BE8124:
/* 000393 0x80BE8124 00000000 */ nop
.L80BE8128:
/* 000394 0x80BE8128 8FA30024 */ lw	$v1, 0X24($sp)
.L80BE812C:
/* 000395 0x80BE812C 3C010001 */ lui	$at, 0x0001
/* 000396 0x80BE8130 00611821 */ addu	$v1, $v1, $at
/* 000397 0x80BE8134 9462680C */ lhu	$v0, 0X680C($v1)
/* 000398 0x80BE8138 24012AC6 */ li	$at, 0X2AC6
/* 000399 0x80BE813C 10410004 */ beq	$v0, $at, .L80BE8150
/* 000400 0x80BE8140 24012AC7 */ li	$at, 0X2AC7
/* 000401 0x80BE8144 10410002 */ beq	$v0, $at, .L80BE8150
/* 000402 0x80BE8148 24012AC8 */ li	$at, 0X2AC8
/* 000403 0x80BE814C 14410007 */ bne	$v0, $at, .L80BE816C
.L80BE8150:
/* 000404 0x80BE8150 3C0141F0 */ lui	$at, 0x41F0
/* 000405 0x80BE8154 84CC0092 */ lh	$t4, 0X92($a2)
/* 000406 0x80BE8158 44819000 */ mtc1	$at, $f18
/* 000407 0x80BE815C E4C00160 */ swc1	$f0, 0X160($a2)
/* 000408 0x80BE8160 A4CC027C */ sh	$t4, 0X27C($a2)
/* 000409 0x80BE8164 E4D2015C */ swc1	$f18, 0X15C($a2)
/* 000410 0x80BE8168 9462680C */ lhu	$v0, 0X680C($v1)
.L80BE816C:
/* 000411 0x80BE816C 24012ACF */ li	$at, 0X2ACF
/* 000412 0x80BE8170 54410003 */ bnel	$v0, $at, .L80BE8180
/* 000413 0x80BE8174 8CCD028C */ lw	$t5, 0X28C($a2)
/* 000414 0x80BE8178 E4C00160 */ swc1	$f0, 0X160($a2)
/* 000415 0x80BE817C 8CCD028C */ lw	$t5, 0X28C($a2)
.L80BE8180:
/* 000416 0x80BE8180 24010002 */ li	$at, 0X2
/* 000417 0x80BE8184 55A10004 */ bnel	$t5, $at, .L80BE8198
/* 000418 0x80BE8188 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000419 0x80BE818C 0C2F9F6D */ jal	func_80BE7DB4
/* 000420 0x80BE8190 00C02025 */ move	$a0, $a2
.L80BE8194:
/* 000421 0x80BE8194 8FBF0014 */ lw	$ra, 0X14($sp)
.L80BE8198:
/* 000422 0x80BE8198 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000423 0x80BE819C 03E00008 */ jr	$ra
/* 000424 0x80BE81A0 00000000 */ nop

glabel EnMuto_Update
/* 000425 0x80BE81A4 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 000426 0x80BE81A8 AFB00020 */ sw	$s0, 0X20($sp)
/* 000427 0x80BE81AC 00808025 */ move	$s0, $a0
/* 000428 0x80BE81B0 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000429 0x80BE81B4 AFA5003C */ sw	$a1, 0X3C($sp)
/* 000430 0x80BE81B8 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 000431 0x80BE81BC 26040144 */ addiu	$a0, $s0, 0X144
/* 000432 0x80BE81C0 8E0E0284 */ lw	$t6, 0X284($s0)
/* 000433 0x80BE81C4 51C00004 */ beqzl	$t6, .L80BE81D8
/* 000434 0x80BE81C8 8E0F0280 */ lw	$t7, 0X280($s0)
/* 000435 0x80BE81CC 0C2F9F48 */ jal	func_80BE7D20
/* 000436 0x80BE81D0 02002025 */ move	$a0, $s0
/* 000437 0x80BE81D4 8E0F0280 */ lw	$t7, 0X280($s0)
.L80BE81D8:
/* 000438 0x80BE81D8 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 000439 0x80BE81DC 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 000440 0x80BE81E0 51E0000D */ beqzl	$t7, .L80BE8218
/* 000441 0x80BE81E4 8E190254 */ lw	$t9, 0X254($s0)
/* 000442 0x80BE81E8 8C580018 */ lw	$t8, 0X18($v0)
/* 000443 0x80BE81EC 24010003 */ li	$at, 0X3
/* 000444 0x80BE81F0 57010009 */ bnel	$t8, $at, .L80BE8218
/* 000445 0x80BE81F4 8E190254 */ lw	$t9, 0X254($s0)
/* 000446 0x80BE81F8 8C590010 */ lw	$t9, 0X10($v0)
/* 000447 0x80BE81FC 53200006 */ beqzl	$t9, .L80BE8218
/* 000448 0x80BE8200 8E190254 */ lw	$t9, 0X254($s0)
/* 000449 0x80BE8204 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000450 0x80BE8208 02002025 */ move	$a0, $s0
/* 000451 0x80BE820C 10000042 */ b	.L80BE8318
/* 000452 0x80BE8210 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000453 0x80BE8214 8E190254 */ lw	$t9, 0X254($s0)
.L80BE8218:
/* 000454 0x80BE8218 02002025 */ move	$a0, $s0
/* 000455 0x80BE821C 8FA5003C */ lw	$a1, 0X3C($sp)
/* 000456 0x80BE8220 0320F809 */ jalr	$t9
/* 000457 0x80BE8224 00000000 */ nop
/* 000458 0x80BE8228 86020270 */ lh	$v0, 0X270($s0)
/* 000459 0x80BE822C 02002025 */ move	$a0, $s0
/* 000460 0x80BE8230 3C053C23 */ lui	$a1, 0x3C23
/* 000461 0x80BE8234 10400002 */ beqz	$v0, .L80BE8240
/* 000462 0x80BE8238 2448FFFF */ addiu	$t0, $v0, -0X1
/* 000463 0x80BE823C A6080270 */ sh	$t0, 0X270($s0)
.L80BE8240:
/* 000464 0x80BE8240 0C02D9F8 */ jal	Actor_SetScale
/* 000465 0x80BE8244 34A5D70A */ ori	$a1, $a1, 0XD70A
/* 000466 0x80BE8248 86090032 */ lh	$t1, 0X32($s0)
/* 000467 0x80BE824C 02002025 */ move	$a0, $s0
/* 000468 0x80BE8250 3C054270 */ lui	$a1, 0x4270
/* 000469 0x80BE8254 0C02D9D7 */ jal	Actor_SetHeight
/* 000470 0x80BE8258 A60900BE */ sh	$t1, 0XBE($s0)
/* 000471 0x80BE825C 0C02DAA2 */ jal	Actor_SetVelocityAndMoveYRotationAndGravity
/* 000472 0x80BE8260 02002025 */ move	$a0, $s0
/* 000473 0x80BE8264 86050260 */ lh	$a1, 0X260($s0)
/* 000474 0x80BE8268 AFA00010 */ sw	$zero, 0X10($sp)
/* 000475 0x80BE826C 2604025A */ addiu	$a0, $s0, 0X25A
/* 000476 0x80BE8270 24060001 */ li	$a2, 0X1
/* 000477 0x80BE8274 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 000478 0x80BE8278 24070BB8 */ li	$a3, 0XBB8
/* 000479 0x80BE827C 8605025E */ lh	$a1, 0X25E($s0)
/* 000480 0x80BE8280 AFA00010 */ sw	$zero, 0X10($sp)
/* 000481 0x80BE8284 26040258 */ addiu	$a0, $s0, 0X258
/* 000482 0x80BE8288 24060001 */ li	$a2, 0X1
/* 000483 0x80BE828C 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 000484 0x80BE8290 240703E8 */ li	$a3, 0X3E8
/* 000485 0x80BE8294 8605026C */ lh	$a1, 0X26C($s0)
/* 000486 0x80BE8298 AFA00010 */ sw	$zero, 0X10($sp)
/* 000487 0x80BE829C 26040266 */ addiu	$a0, $s0, 0X266
/* 000488 0x80BE82A0 24060001 */ li	$a2, 0X1
/* 000489 0x80BE82A4 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 000490 0x80BE82A8 24070BB8 */ li	$a3, 0XBB8
/* 000491 0x80BE82AC 3C0141A0 */ lui	$at, 0x41A0
/* 000492 0x80BE82B0 44810000 */ mtc1	$at, $f0
/* 000493 0x80BE82B4 3C014248 */ lui	$at, 0x4248
/* 000494 0x80BE82B8 44812000 */ mtc1	$at, $f4
/* 000495 0x80BE82BC 240A001D */ li	$t2, 0X1D
/* 000496 0x80BE82C0 44060000 */ mfc1	$a2, $f0
/* 000497 0x80BE82C4 44070000 */ mfc1	$a3, $f0
/* 000498 0x80BE82C8 AFAA0014 */ sw	$t2, 0X14($sp)
/* 000499 0x80BE82CC 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000500 0x80BE82D0 02002825 */ move	$a1, $s0
/* 000501 0x80BE82D4 0C02DE2E */ jal	func_800B78B8
/* 000502 0x80BE82D8 E7A40010 */ swc1	$f4, 0X10($sp)
/* 000503 0x80BE82DC 3C0143FA */ lui	$at, 0x43FA
/* 000504 0x80BE82E0 44813000 */ mtc1	$at, $f6
/* 000505 0x80BE82E4 26060294 */ addiu	$a2, $s0, 0X294
/* 000506 0x80BE82E8 00C02825 */ move	$a1, $a2
/* 000507 0x80BE82EC E60600FC */ swc1	$f6, 0XFC($s0)
/* 000508 0x80BE82F0 AFA6002C */ sw	$a2, 0X2C($sp)
/* 000509 0x80BE82F4 0C039F7E */ jal	Collision_CylinderMoveToActor
/* 000510 0x80BE82F8 02002025 */ move	$a0, $s0
/* 000511 0x80BE82FC 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000512 0x80BE8300 3C010001 */ lui	$at, 0x0001
/* 000513 0x80BE8304 34218884 */ ori	$at, $at, 0X8884
/* 000514 0x80BE8308 8FA6002C */ lw	$a2, 0X2C($sp)
/* 000515 0x80BE830C 0C038A4A */ jal	Collision_AddOT
/* 000516 0x80BE8310 00812821 */ addu	$a1, $a0, $at
/* 000517 0x80BE8314 8FBF0024 */ lw	$ra, 0X24($sp)
.L80BE8318:
/* 000518 0x80BE8318 8FB00020 */ lw	$s0, 0X20($sp)
/* 000519 0x80BE831C 27BD0038 */ addiu	$sp, $sp, 0X38
/* 000520 0x80BE8320 03E00008 */ jr	$ra
/* 000521 0x80BE8324 00000000 */ nop

glabel func_80BE8328
/* 000522 0x80BE8328 AFA40000 */ sw	$a0, 0X0($sp)
/* 000523 0x80BE832C AFA60008 */ sw	$a2, 0X8($sp)
/* 000524 0x80BE8330 AFA7000C */ sw	$a3, 0XC($sp)
/* 000525 0x80BE8334 24010001 */ li	$at, 0X1
/* 000526 0x80BE8338 14A10006 */ bne	$a1, $at, .L80BE8354
/* 000527 0x80BE833C 8FA20014 */ lw	$v0, 0X14($sp)
/* 000528 0x80BE8340 8FA30010 */ lw	$v1, 0X10($sp)
/* 000529 0x80BE8344 844F0266 */ lh	$t7, 0X266($v0)
/* 000530 0x80BE8348 846E0000 */ lh	$t6, 0X0($v1)
/* 000531 0x80BE834C 01CFC021 */ addu	$t8, $t6, $t7
/* 000532 0x80BE8350 A4780000 */ sh	$t8, 0X0($v1)
.L80BE8354:
/* 000533 0x80BE8354 2401000F */ li	$at, 0XF
/* 000534 0x80BE8358 8FA20014 */ lw	$v0, 0X14($sp)
/* 000535 0x80BE835C 14A10009 */ bne	$a1, $at, .L80BE8384
/* 000536 0x80BE8360 8FA30010 */ lw	$v1, 0X10($sp)
/* 000537 0x80BE8364 84790000 */ lh	$t9, 0X0($v1)
/* 000538 0x80BE8368 8448025A */ lh	$t0, 0X25A($v0)
/* 000539 0x80BE836C 846A0004 */ lh	$t2, 0X4($v1)
/* 000540 0x80BE8370 03284821 */ addu	$t1, $t9, $t0
/* 000541 0x80BE8374 A4690000 */ sh	$t1, 0X0($v1)
/* 000542 0x80BE8378 844B0258 */ lh	$t3, 0X258($v0)
/* 000543 0x80BE837C 014B6021 */ addu	$t4, $t2, $t3
/* 000544 0x80BE8380 A46C0004 */ sh	$t4, 0X4($v1)
.L80BE8384:
/* 000545 0x80BE8384 00001025 */ move	$v0, $zero
/* 000546 0x80BE8388 03E00008 */ jr	$ra
/* 000547 0x80BE838C 00000000 */ nop

glabel EnMuto_Draw
/* 000548 0x80BE8390 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000549 0x80BE8394 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000550 0x80BE8398 AFA40028 */ sw	$a0, 0X28($sp)
/* 000551 0x80BE839C AFA5002C */ sw	$a1, 0X2C($sp)
/* 000552 0x80BE83A0 8FAE002C */ lw	$t6, 0X2C($sp)
/* 000553 0x80BE83A4 0C04B0A3 */ jal	func_8012C28C
/* 000554 0x80BE83A8 8DC40000 */ lw	$a0, 0X0($t6)
/* 000555 0x80BE83AC 8FA20028 */ lw	$v0, 0X28($sp)
/* 000556 0x80BE83B0 3C0F80BF */ lui	$t7, %hi(func_80BE8328)
/* 000557 0x80BE83B4 25EF8328 */ addiu	$t7, $t7, %lo(func_80BE8328)
/* 000558 0x80BE83B8 8C450148 */ lw	$a1, 0X148($v0)
/* 000559 0x80BE83BC 8C460164 */ lw	$a2, 0X164($v0)
/* 000560 0x80BE83C0 90470146 */ lbu	$a3, 0X146($v0)
/* 000561 0x80BE83C4 AFA00014 */ sw	$zero, 0X14($sp)
/* 000562 0x80BE83C8 AFAF0010 */ sw	$t7, 0X10($sp)
/* 000563 0x80BE83CC 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000564 0x80BE83D0 0C04CFCA */ jal	SkelAnime_DrawSV
/* 000565 0x80BE83D4 AFA20018 */ sw	$v0, 0X18($sp)
/* 000566 0x80BE83D8 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000567 0x80BE83DC 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000568 0x80BE83E0 03E00008 */ jr	$ra
/* 000569 0x80BE83E4 00000000 */ nop
/* 000570 0x80BE83E8 00000000 */ nop
/* 000571 0x80BE83EC 00000000 */ nop
