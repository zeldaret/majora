glabel func_80A19BA8
/* 000166 0x80A19BA8 27BDFFA8 */ addiu	$sp, $sp, -0X58
/* 000167 0x80A19BAC AFB00018 */ sw	$s0, 0X18($sp)
/* 000168 0x80A19BB0 00808025 */ move	$s0, $a0
/* 000169 0x80A19BB4 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000170 0x80A19BB8 AFA5005C */ sw	$a1, 0X5C($sp)
/* 000171 0x80A19BBC 860E001C */ lh	$t6, 0X1C($s0)
/* 000172 0x80A19BC0 000E7B43 */ sra	$t7, $t6, 13
/* 000173 0x80A19BC4 31F80001 */ andi	$t8, $t7, 0X1
/* 000174 0x80A19BC8 53000014 */ beqzl	$t8, .L80A19C1C
/* 000175 0x80A19BCC 8E0C0168 */ lw	$t4, 0X168($s0)
/* 000176 0x80A19BD0 86050014 */ lh	$a1, 0X14($s0)
/* 000177 0x80A19BD4 8FA4005C */ lw	$a0, 0X5C($sp)
/* 000178 0x80A19BD8 0C02D6EC */ jal	Actor_GetSwitchFlag
/* 000179 0x80A19BDC 30A5007F */ andi	$a1, $a1, 0X7F
/* 000180 0x80A19BE0 14400004 */ bnez	$v0, .L80A19BF4
/* 000181 0x80A19BE4 3C1980A2 */ lui	$t9, %hi(func_80A19F18)
/* 000182 0x80A19BE8 27399F18 */ addiu	$t9, $t9, %lo(func_80A19F18)
/* 000183 0x80A19BEC 100000A0 */ b	.L80A19E70
/* 000184 0x80A19BF0 AE19015C */ sw	$t9, 0X15C($s0)
.L80A19BF4:
/* 000185 0x80A19BF4 8608001C */ lh	$t0, 0X1C($s0)
/* 000186 0x80A19BF8 24010001 */ li	$at, 0X1
/* 000187 0x80A19BFC 02002025 */ move	$a0, $s0
/* 000188 0x80A19C00 00084BC3 */ sra	$t1, $t0, 15
/* 000189 0x80A19C04 312A0001 */ andi	$t2, $t1, 0X1
/* 000190 0x80A19C08 55410004 */ bnel	$t2, $at, .L80A19C1C
/* 000191 0x80A19C0C 8E0C0168 */ lw	$t4, 0X168($s0)
/* 000192 0x80A19C10 0C02E404 */ jal	func_800B9010
/* 000193 0x80A19C14 24052103 */ li	$a1, 0X2103
/* 000194 0x80A19C18 8E0C0168 */ lw	$t4, 0X168($s0)
.L80A19C1C:
/* 000195 0x80A19C1C 24020006 */ li	$v0, 0X6
/* 000196 0x80A19C20 8E0F016C */ lw	$t7, 0X16C($s0)
/* 000197 0x80A19C24 01820019 */ multu	$t4, $v0
/* 000198 0x80A19C28 8E0B0170 */ lw	$t3, 0X170($s0)
/* 000199 0x80A19C2C 27A40048 */ addiu	$a0, $sp, 0X48
/* 000200 0x80A19C30 00006812 */ mflo	$t5
/* 000201 0x80A19C34 016D7021 */ addu	$t6, $t3, $t5
/* 000202 0x80A19C38 00000000 */ nop
/* 000203 0x80A19C3C 01E20019 */ multu	$t7, $v0
/* 000204 0x80A19C40 0000C012 */ mflo	$t8
/* 000205 0x80A19C44 01D82821 */ addu	$a1, $t6, $t8
/* 000206 0x80A19C48 0C03FD53 */ jal	Math_Vec3s_ToVec3f
/* 000207 0x80A19C4C 00000000 */ nop
/* 000208 0x80A19C50 26060064 */ addiu	$a2, $s0, 0X64
/* 000209 0x80A19C54 AFA60028 */ sw	$a2, 0X28($sp)
/* 000210 0x80A19C58 27A40048 */ addiu	$a0, $sp, 0X48
/* 000211 0x80A19C5C 0C03FD7D */ jal	Math_Vec3f_Diff
/* 000212 0x80A19C60 26050024 */ addiu	$a1, $s0, 0X24
/* 000213 0x80A19C64 0C05E9B5 */ jal	Math3D_Length
/* 000214 0x80A19C68 8FA40028 */ lw	$a0, 0X28($sp)
/* 000215 0x80A19C6C 3C014100 */ lui	$at, 0x4100
/* 000216 0x80A19C70 44812000 */ mtc1	$at, $f4
/* 000217 0x80A19C74 C6020160 */ lwc1	$f2, 0X160($s0)
/* 000218 0x80A19C78 46000386 */ mov.s	$f14, $f0
/* 000219 0x80A19C7C 3C014000 */ lui	$at, 0x4000
/* 000220 0x80A19C80 46041182 */ mul.s	$f6, $f2, $f4
/* 000221 0x80A19C84 26040070 */ addiu	$a0, $s0, 0X70
/* 000222 0x80A19C88 4606003C */ c.lt.s	$f0, $f6
/* 000223 0x80A19C8C 00000000 */ nop
/* 000224 0x80A19C90 45000010 */ bc1f .L80A19CD4
/* 000225 0x80A19C94 00000000 */ nop
/* 000226 0x80A19C98 44818000 */ mtc1	$at, $f16
/* 000227 0x80A19C9C 3C0180A2 */ lui	$at, %hi(D_80A1A3D8)
/* 000228 0x80A19CA0 4602803C */ c.lt.s	$f16, $f2
/* 000229 0x80A19CA4 00000000 */ nop
/* 000230 0x80A19CA8 4500000A */ bc1f .L80A19CD4
/* 000231 0x80A19CAC 00000000 */ nop
/* 000232 0x80A19CB0 46101201 */ sub.s	$f8, $f2, $f16
/* 000233 0x80A19CB4 C42AA3D8 */ lwc1	$f10, %lo(D_80A1A3D8)($at)
/* 000234 0x80A19CB8 3C0180A2 */ lui	$at, %hi(D_80A1A3DC)
/* 000235 0x80A19CBC C424A3DC */ lwc1	$f4, %lo(D_80A1A3DC)($at)
/* 000236 0x80A19CC0 460A4482 */ mul.s	$f18, $f8, $f10
/* 000237 0x80A19CC4 46109000 */ add.s	$f0, $f18, $f16
/* 000238 0x80A19CC8 46041302 */ mul.s	$f12, $f2, $f4
/* 000239 0x80A19CCC 10000007 */ b	.L80A19CEC
/* 000240 0x80A19CD0 44050000 */ mfc1	$a1, $f0
.L80A19CD4:
/* 000241 0x80A19CD4 3C0180A2 */ lui	$at, %hi(D_80A1A3E0)
/* 000242 0x80A19CD8 C426A3E0 */ lwc1	$f6, %lo(D_80A1A3E0)($at)
/* 000243 0x80A19CDC 46001006 */ mov.s	$f0, $f2
/* 000244 0x80A19CE0 46061302 */ mul.s	$f12, $f2, $f6
/* 000245 0x80A19CE4 00000000 */ nop
/* 000246 0x80A19CE8 44050000 */ mfc1	$a1, $f0
.L80A19CEC:
/* 000247 0x80A19CEC 44066000 */ mfc1	$a2, $f12
/* 000248 0x80A19CF0 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 000249 0x80A19CF4 E7AE0044 */ swc1	$f14, 0X44($sp)
/* 000250 0x80A19CF8 3C0180A2 */ lui	$at, %hi(D_80A1A3E4)
/* 000251 0x80A19CFC C428A3E4 */ lwc1	$f8, %lo(D_80A1A3E4)($at)
/* 000252 0x80A19D00 C6000070 */ lwc1	$f0, 0X70($s0)
/* 000253 0x80A19D04 C7AE0044 */ lwc1	$f14, 0X44($sp)
/* 000254 0x80A19D08 46080280 */ add.s	$f10, $f0, $f8
/* 000255 0x80A19D0C 460E503C */ c.lt.s	$f10, $f14
/* 000256 0x80A19D10 00000000 */ nop
/* 000257 0x80A19D14 45020014 */ bc1fl .L80A19D68
/* 000258 0x80A19D18 8E190168 */ lw	$t9, 0X168($s0)
/* 000259 0x80A19D1C 460E0483 */ div.s	$f18, $f0, $f14
/* 000260 0x80A19D20 8FA40028 */ lw	$a0, 0X28($sp)
/* 000261 0x80A19D24 44059000 */ mfc1	$a1, $f18
/* 000262 0x80A19D28 0C03FDA2 */ jal	Math_Vec3f_Scale
/* 000263 0x80A19D2C 00000000 */ nop
/* 000264 0x80A19D30 C6040024 */ lwc1	$f4, 0X24($s0)
/* 000265 0x80A19D34 C6060064 */ lwc1	$f6, 0X64($s0)
/* 000266 0x80A19D38 C60A0028 */ lwc1	$f10, 0X28($s0)
/* 000267 0x80A19D3C C6120068 */ lwc1	$f18, 0X68($s0)
/* 000268 0x80A19D40 46062200 */ add.s	$f8, $f4, $f6
/* 000269 0x80A19D44 C606002C */ lwc1	$f6, 0X2C($s0)
/* 000270 0x80A19D48 46125100 */ add.s	$f4, $f10, $f18
/* 000271 0x80A19D4C E6080024 */ swc1	$f8, 0X24($s0)
/* 000272 0x80A19D50 C608006C */ lwc1	$f8, 0X6C($s0)
/* 000273 0x80A19D54 E6040028 */ swc1	$f4, 0X28($s0)
/* 000274 0x80A19D58 46083280 */ add.s	$f10, $f6, $f8
/* 000275 0x80A19D5C 10000044 */ b	.L80A19E70
/* 000276 0x80A19D60 E60A002C */ swc1	$f10, 0X2C($s0)
/* 000277 0x80A19D64 8E190168 */ lw	$t9, 0X168($s0)
.L80A19D68:
/* 000278 0x80A19D68 8E08016C */ lw	$t0, 0X16C($s0)
/* 000279 0x80A19D6C 3C0180A2 */ lui	$at, %hi(D_80A1A3E8)
/* 000280 0x80A19D70 C6120070 */ lwc1	$f18, 0X70($s0)
/* 000281 0x80A19D74 03281821 */ addu	$v1, $t9, $t0
/* 000282 0x80A19D78 AE030168 */ sw	$v1, 0X168($s0)
/* 000283 0x80A19D7C C424A3E8 */ lwc1	$f4, %lo(D_80A1A3E8)($at)
/* 000284 0x80A19D80 8605001C */ lh	$a1, 0X1C($s0)
/* 000285 0x80A19D84 8E040164 */ lw	$a0, 0X164($s0)
/* 000286 0x80A19D88 46049182 */ mul.s	$f6, $f18, $f4
/* 000287 0x80A19D8C 00052B03 */ sra	$a1, $a1, 12
/* 000288 0x80A19D90 0064082A */ slt	$at, $v1, $a0
/* 000289 0x80A19D94 30A50001 */ andi	$a1, $a1, 0X1
/* 000290 0x80A19D98 24060001 */ li	$a2, 0X1
/* 000291 0x80A19D9C 14200004 */ bnez	$at, .L80A19DB0
/* 000292 0x80A19DA0 E6060070 */ swc1	$f6, 0X70($s0)
/* 000293 0x80A19DA4 8E02016C */ lw	$v0, 0X16C($s0)
/* 000294 0x80A19DA8 1C400006 */ bgtz	$v0, .L80A19DC4
/* 000295 0x80A19DAC 00000000 */ nop
.L80A19DB0:
/* 000296 0x80A19DB0 1C60002B */ bgtz	$v1, .L80A19E60
/* 000297 0x80A19DB4 00000000 */ nop
/* 000298 0x80A19DB8 8E02016C */ lw	$v0, 0X16C($s0)
/* 000299 0x80A19DBC 04410028 */ bgez	$v0, .L80A19E60
/* 000300 0x80A19DC0 00000000 */ nop
.L80A19DC4:
/* 000301 0x80A19DC4 14A00009 */ bnez	$a1, .L80A19DEC
/* 000302 0x80A19DC8 00047880 */ sll	$t7, $a0, 2
/* 000303 0x80A19DCC 3C0B80A2 */ lui	$t3, %hi(func_80A19EE0)
/* 000304 0x80A19DD0 00025023 */ negu	$t2, $v0
/* 000305 0x80A19DD4 240C000A */ li	$t4, 0XA
/* 000306 0x80A19DD8 256B9EE0 */ addiu	$t3, $t3, %lo(func_80A19EE0)
/* 000307 0x80A19DDC AE0A016C */ sw	$t2, 0X16C($s0)
/* 000308 0x80A19DE0 A60C0186 */ sh	$t4, 0X186($s0)
/* 000309 0x80A19DE4 1000001E */ b	.L80A19E60
/* 000310 0x80A19DE8 AE0B015C */ sw	$t3, 0X15C($s0)
.L80A19DEC:
/* 000311 0x80A19DEC 8E0D0170 */ lw	$t5, 0X170($s0)
/* 000312 0x80A19DF0 01E47823 */ subu	$t7, $t7, $a0
/* 000313 0x80A19DF4 000F7840 */ sll	$t7, $t7, 1
/* 000314 0x80A19DF8 18400003 */ blez	$v0, .L80A19E08
/* 000315 0x80A19DFC 01AF1821 */ addu	$v1, $t5, $t7
/* 000316 0x80A19E00 10000002 */ b	.L80A19E0C
/* 000317 0x80A19E04 AE000168 */ sw	$zero, 0X168($s0)
.L80A19E08:
/* 000318 0x80A19E08 AE040168 */ sw	$a0, 0X168($s0)
.L80A19E0C:
/* 000319 0x80A19E0C 8E020170 */ lw	$v0, 0X170($s0)
/* 000320 0x80A19E10 846E0000 */ lh	$t6, 0X0($v1)
/* 000321 0x80A19E14 3C0C80A2 */ lui	$t4, %hi(func_80A19E84)
/* 000322 0x80A19E18 84580000 */ lh	$t8, 0X0($v0)
/* 000323 0x80A19E1C 258C9E84 */ addiu	$t4, $t4, %lo(func_80A19E84)
/* 000324 0x80A19E20 55D8000A */ bnel	$t6, $t8, .L80A19E4C
/* 000325 0x80A19E24 AE0C015C */ sw	$t4, 0X15C($s0)
/* 000326 0x80A19E28 84790002 */ lh	$t9, 0X2($v1)
/* 000327 0x80A19E2C 84480002 */ lh	$t0, 0X2($v0)
/* 000328 0x80A19E30 57280006 */ bnel	$t9, $t0, .L80A19E4C
/* 000329 0x80A19E34 AE0C015C */ sw	$t4, 0X15C($s0)
/* 000330 0x80A19E38 84690004 */ lh	$t1, 0X4($v1)
/* 000331 0x80A19E3C 844A0004 */ lh	$t2, 0X4($v0)
/* 000332 0x80A19E40 112A0007 */ beq	$t1, $t2, .L80A19E60
/* 000333 0x80A19E44 00000000 */ nop
/* 000334 0x80A19E48 AE0C015C */ sw	$t4, 0X15C($s0)
.L80A19E4C:
/* 000335 0x80A19E4C 8FA4005C */ lw	$a0, 0X5C($sp)
/* 000336 0x80A19E50 8E060144 */ lw	$a2, 0X144($s0)
/* 000337 0x80A19E54 0C0318AF */ jal	func_800C62BC
/* 000338 0x80A19E58 24850880 */ addiu	$a1, $a0, 0X880
/* 000339 0x80A19E5C 00003025 */ move	$a2, $zero
.L80A19E60:
/* 000340 0x80A19E60 10C00003 */ beqz	$a2, .L80A19E70
/* 000341 0x80A19E64 02002025 */ move	$a0, $s0
/* 000342 0x80A19E68 0C286644 */ jal	func_80A19910
/* 000343 0x80A19E6C 8E050168 */ lw	$a1, 0X168($s0)
.L80A19E70:
/* 000344 0x80A19E70 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000345 0x80A19E74 8FB00018 */ lw	$s0, 0X18($sp)
/* 000346 0x80A19E78 27BD0058 */ addiu	$sp, $sp, 0X58
/* 000347 0x80A19E7C 03E00008 */ jr	$ra
/* 000348 0x80A19E80 00000000 */ nop


.section .late_rodata

glabel D_80A1A3D8
/* 000690 0x80A1A3D8 */ .word	0x3DCCCCCD
glabel D_80A1A3DC
/* 000691 0x80A1A3DC */ .word	0x3CF5C28F
glabel D_80A1A3E0
/* 000692 0x80A1A3E0 */ .word	0x3E23D70A
glabel D_80A1A3E4
/* 000693 0x80A1A3E4 */ .word	0x3D4CCCCD
glabel D_80A1A3E8
/* 000694 0x80A1A3E8 */ .word	0x3ECCCCCD
