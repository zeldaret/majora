glabel EnTanron5_Init
/* 000123 0x80BE4B1C 27BDFFA8 */ addiu	$sp, $sp, -0X58
/* 000124 0x80BE4B20 AFB60048 */ sw	$s6, 0X48($sp)
/* 000125 0x80BE4B24 AFB50044 */ sw	$s5, 0X44($sp)
/* 000126 0x80BE4B28 00A0A825 */ move	$s5, $a1
/* 000127 0x80BE4B2C 0080B025 */ move	$s6, $a0
/* 000128 0x80BE4B30 AFBF0054 */ sw	$ra, 0X54($sp)
/* 000129 0x80BE4B34 AFBE0050 */ sw	$fp, 0X50($sp)
/* 000130 0x80BE4B38 AFB7004C */ sw	$s7, 0X4C($sp)
/* 000131 0x80BE4B3C AFB40040 */ sw	$s4, 0X40($sp)
/* 000132 0x80BE4B40 AFB3003C */ sw	$s3, 0X3C($sp)
/* 000133 0x80BE4B44 AFB20038 */ sw	$s2, 0X38($sp)
/* 000134 0x80BE4B48 AFB10034 */ sw	$s1, 0X34($sp)
/* 000135 0x80BE4B4C AFB00030 */ sw	$s0, 0X30($sp)
/* 000136 0x80BE4B50 86C2001C */ lh	$v0, 0X1C($s6)
/* 000137 0x80BE4B54 28410064 */ slti	$at, $v0, 0X64
/* 000138 0x80BE4B58 14200097 */ bnez	$at, .L80BE4DB8
/* 000139 0x80BE4B5C 00000000 */ nop
/* 000140 0x80BE4B60 3C0280BE */ lui	$v0, %hi(D_80BE5D80)
/* 000141 0x80BE4B64 24425D80 */ addiu	$v0, $v0, %lo(D_80BE5D80)
/* 000142 0x80BE4B68 8C4E0000 */ lw	$t6, 0X0($v0)
/* 000143 0x80BE4B6C 25CF0001 */ addiu	$t7, $t6, 0X1
/* 000144 0x80BE4B70 29E1003D */ slti	$at, $t7, 0X3D
/* 000145 0x80BE4B74 14200005 */ bnez	$at, .L80BE4B8C
/* 000146 0x80BE4B78 AC4F0000 */ sw	$t7, 0X0($v0)
/* 000147 0x80BE4B7C 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000148 0x80BE4B80 02C02025 */ move	$a0, $s6
/* 000149 0x80BE4B84 100000DC */ b	.L80BE4EF8
/* 000150 0x80BE4B88 8FBF0054 */ lw	$ra, 0X54($sp)
.L80BE4B8C:
/* 000151 0x80BE4B8C 3C014600 */ lui	$at, 0x4600
/* 000152 0x80BE4B90 44816000 */ mtc1	$at, $f12
/* 000153 0x80BE4B94 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 000154 0x80BE4B98 00000000 */ nop
/* 000155 0x80BE4B9C 4600010D */ trunc.w.s	$f4, $f0
/* 000156 0x80BE4BA0 3C014600 */ lui	$at, 0x4600
/* 000157 0x80BE4BA4 44816000 */ mtc1	$at, $f12
/* 000158 0x80BE4BA8 44082000 */ mfc1	$t0, $f4
/* 000159 0x80BE4BAC 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 000160 0x80BE4BB0 A6C80198 */ sh	$t0, 0X198($s6)
/* 000161 0x80BE4BB4 4600018D */ trunc.w.s	$f6, $f0
/* 000162 0x80BE4BB8 86CB001C */ lh	$t3, 0X1C($s6)
/* 000163 0x80BE4BBC 440A3000 */ mfc1	$t2, $f6
/* 000164 0x80BE4BC0 2961006B */ slti	$at, $t3, 0X6B
/* 000165 0x80BE4BC4 10200011 */ beqz	$at, .L80BE4C0C
/* 000166 0x80BE4BC8 A6CA019A */ sh	$t2, 0X19A($s6)
/* 000167 0x80BE4BCC 3C0180BE */ lui	$at, %hi(D_80BE5ED8)
/* 000168 0x80BE4BD0 0C05E565 */ jal	randZeroOneScaled
/* 000169 0x80BE4BD4 C42C5ED8 */ lwc1	$f12, %lo(D_80BE5ED8)($at)
/* 000170 0x80BE4BD8 3C0180BE */ lui	$at, %hi(D_80BE5EDC)
/* 000171 0x80BE4BDC C4285EDC */ lwc1	$f8, %lo(D_80BE5EDC)($at)
/* 000172 0x80BE4BE0 3C1080BE */ lui	$s0, %hi(D_80BE5DD0)
/* 000173 0x80BE4BE4 26105DD0 */ addiu	$s0, $s0, %lo(D_80BE5DD0)
/* 000174 0x80BE4BE8 46080280 */ add.s	$f10, $f0, $f8
/* 000175 0x80BE4BEC C6100000 */ lwc1	$f16, 0X0($s0)
/* 000176 0x80BE4BF0 02C02025 */ move	$a0, $s6
/* 000177 0x80BE4BF4 46105482 */ mul.s	$f18, $f10, $f16
/* 000178 0x80BE4BF8 44059000 */ mfc1	$a1, $f18
/* 000179 0x80BE4BFC 0C02D9F8 */ jal	Actor_SetScale
/* 000180 0x80BE4C00 00000000 */ nop
/* 000181 0x80BE4C04 10000010 */ b	.L80BE4C48
/* 000182 0x80BE4C08 3C014120 */ lui	$at, 0x4120
.L80BE4C0C:
/* 000183 0x80BE4C0C 3C0180BE */ lui	$at, %hi(D_80BE5EE0)
/* 000184 0x80BE4C10 0C05E565 */ jal	randZeroOneScaled
/* 000185 0x80BE4C14 C42C5EE0 */ lwc1	$f12, %lo(D_80BE5EE0)($at)
/* 000186 0x80BE4C18 3C0180BE */ lui	$at, %hi(D_80BE5EE4)
/* 000187 0x80BE4C1C C4245EE4 */ lwc1	$f4, %lo(D_80BE5EE4)($at)
/* 000188 0x80BE4C20 3C1080BE */ lui	$s0, %hi(D_80BE5DD0)
/* 000189 0x80BE4C24 26105DD0 */ addiu	$s0, $s0, %lo(D_80BE5DD0)
/* 000190 0x80BE4C28 46040180 */ add.s	$f6, $f0, $f4
/* 000191 0x80BE4C2C C6080000 */ lwc1	$f8, 0X0($s0)
/* 000192 0x80BE4C30 02C02025 */ move	$a0, $s6
/* 000193 0x80BE4C34 46083282 */ mul.s	$f10, $f6, $f8
/* 000194 0x80BE4C38 44055000 */ mfc1	$a1, $f10
/* 000195 0x80BE4C3C 0C02D9F8 */ jal	Actor_SetScale
/* 000196 0x80BE4C40 00000000 */ nop
/* 000197 0x80BE4C44 3C014120 */ lui	$at, 0x4120
.L80BE4C48:
/* 000198 0x80BE4C48 44816000 */ mtc1	$at, $f12
/* 000199 0x80BE4C4C 0C05E565 */ jal	randZeroOneScaled
/* 000200 0x80BE4C50 00000000 */ nop
/* 000201 0x80BE4C54 3C014120 */ lui	$at, 0x4120
/* 000202 0x80BE4C58 44816000 */ mtc1	$at, $f12
/* 000203 0x80BE4C5C C6120000 */ lwc1	$f18, 0X0($s0)
/* 000204 0x80BE4C60 460C0400 */ add.s	$f16, $f0, $f12
/* 000205 0x80BE4C64 46128102 */ mul.s	$f4, $f16, $f18
/* 000206 0x80BE4C68 0C05E565 */ jal	randZeroOneScaled
/* 000207 0x80BE4C6C E6C40070 */ swc1	$f4, 0X70($s6)
/* 000208 0x80BE4C70 3C014170 */ lui	$at, 0x4170
/* 000209 0x80BE4C74 44813000 */ mtc1	$at, $f6
/* 000210 0x80BE4C78 C60A0000 */ lwc1	$f10, 0X0($s0)
/* 000211 0x80BE4C7C 3C01C020 */ lui	$at, 0xC020
/* 000212 0x80BE4C80 46060200 */ add.s	$f8, $f0, $f6
/* 000213 0x80BE4C84 44819000 */ mtc1	$at, $f18
/* 000214 0x80BE4C88 3C01C47A */ lui	$at, 0xC47A
/* 000215 0x80BE4C8C 86CD001C */ lh	$t5, 0X1C($s6)
/* 000216 0x80BE4C90 460A4402 */ mul.s	$f16, $f8, $f10
/* 000217 0x80BE4C94 44814000 */ mtc1	$at, $f8
/* 000218 0x80BE4C98 3C0C80BE */ lui	$t4, %hi(func_80BE5818)
/* 000219 0x80BE4C9C 258C5818 */ addiu	$t4, $t4, %lo(func_80BE5818)
/* 000220 0x80BE4CA0 3C0E80BE */ lui	$t6, %hi(func_80BE5C10)
/* 000221 0x80BE4CA4 3C080600 */ lui	$t0, 0x0600
/* 000222 0x80BE4CA8 29A1006E */ slti	$at, $t5, 0X6E
/* 000223 0x80BE4CAC E6D00068 */ swc1	$f16, 0X68($s6)
/* 000224 0x80BE4CB0 C6040000 */ lwc1	$f4, 0X0($s0)
/* 000225 0x80BE4CB4 25CE5C10 */ addiu	$t6, $t6, %lo(func_80BE5C10)
/* 000226 0x80BE4CB8 25087A88 */ addiu	$t0, $t0, 0X7A88
/* 000227 0x80BE4CBC 46049182 */ mul.s	$f6, $f18, $f4
/* 000228 0x80BE4CC0 24090096 */ li	$t1, 0X96
/* 000229 0x80BE4CC4 E6C60074 */ swc1	$f6, 0X74($s6)
/* 000230 0x80BE4CC8 C60A0000 */ lwc1	$f10, 0X0($s0)
/* 000231 0x80BE4CCC AECC0138 */ sw	$t4, 0X138($s6)
/* 000232 0x80BE4CD0 460A4402 */ mul.s	$f16, $f8, $f10
/* 000233 0x80BE4CD4 14200035 */ bnez	$at, .L80BE4DAC
/* 000234 0x80BE4CD8 E6D00078 */ swc1	$f16, 0X78($s6)
/* 000235 0x80BE4CDC AECE013C */ sw	$t6, 0X13C($s6)
/* 000236 0x80BE4CE0 3C0180BE */ lui	$at, %hi(D_80BE5EE8)
/* 000237 0x80BE4CE4 0C05E565 */ jal	randZeroOneScaled
/* 000238 0x80BE4CE8 C42C5EE8 */ lwc1	$f12, %lo(D_80BE5EE8)($at)
/* 000239 0x80BE4CEC 444FF800 */ cfc1	$t7, $31
/* 000240 0x80BE4CF0 24180001 */ li	$t8, 0X1
/* 000241 0x80BE4CF4 44D8F800 */ ctc1	$t8, $31
/* 000242 0x80BE4CF8 3C014F00 */ lui	$at, 0x4F00
/* 000243 0x80BE4CFC 460004A4 */ cvt.w.s	$f18, $f0
/* 000244 0x80BE4D00 4458F800 */ cfc1	$t8, $31
/* 000245 0x80BE4D04 00000000 */ nop
/* 000246 0x80BE4D08 33180078 */ andi	$t8, $t8, 0X78
/* 000247 0x80BE4D0C 53000013 */ beqzl	$t8, .L80BE4D5C
/* 000248 0x80BE4D10 44189000 */ mfc1	$t8, $f18
/* 000249 0x80BE4D14 44819000 */ mtc1	$at, $f18
/* 000250 0x80BE4D18 24180001 */ li	$t8, 0X1
/* 000251 0x80BE4D1C 46120481 */ sub.s	$f18, $f0, $f18
/* 000252 0x80BE4D20 44D8F800 */ ctc1	$t8, $31
/* 000253 0x80BE4D24 00000000 */ nop
/* 000254 0x80BE4D28 460094A4 */ cvt.w.s	$f18, $f18
/* 000255 0x80BE4D2C 4458F800 */ cfc1	$t8, $31
/* 000256 0x80BE4D30 00000000 */ nop
/* 000257 0x80BE4D34 33180078 */ andi	$t8, $t8, 0X78
/* 000258 0x80BE4D38 17000005 */ bnez	$t8, .L80BE4D50
/* 000259 0x80BE4D3C 00000000 */ nop
/* 000260 0x80BE4D40 44189000 */ mfc1	$t8, $f18
/* 000261 0x80BE4D44 3C018000 */ lui	$at, 0x8000
/* 000262 0x80BE4D48 10000007 */ b	.L80BE4D68
/* 000263 0x80BE4D4C 0301C025 */ or	$t8, $t8, $at
.L80BE4D50:
/* 000264 0x80BE4D50 10000005 */ b	.L80BE4D68
/* 000265 0x80BE4D54 2418FFFF */ li	$t8, -0X1
/* 000266 0x80BE4D58 44189000 */ mfc1	$t8, $f18
.L80BE4D5C:
/* 000267 0x80BE4D5C 00000000 */ nop
/* 000268 0x80BE4D60 0700FFFB */ bltz	$t8, .L80BE4D50
/* 000269 0x80BE4D64 00000000 */ nop
.L80BE4D68:
/* 000270 0x80BE4D68 A2D801A0 */ sb	$t8, 0X1A0($s6)
/* 000271 0x80BE4D6C 3C0180BE */ lui	$at, %hi(D_80BE5EEC)
/* 000272 0x80BE4D70 44CFF800 */ ctc1	$t7, $31
/* 000273 0x80BE4D74 C4265EEC */ lwc1	$f6, %lo(D_80BE5EEC)($at)
/* 000274 0x80BE4D78 C6040000 */ lwc1	$f4, 0X0($s0)
/* 000275 0x80BE4D7C 02C02025 */ move	$a0, $s6
/* 000276 0x80BE4D80 46062202 */ mul.s	$f8, $f4, $f6
/* 000277 0x80BE4D84 44054000 */ mfc1	$a1, $f8
/* 000278 0x80BE4D88 0C02D9F8 */ jal	Actor_SetScale
/* 000279 0x80BE4D8C 00000000 */ nop
/* 000280 0x80BE4D90 A6C000C0 */ sh	$zero, 0XC0($s6)
/* 000281 0x80BE4D94 86C200C0 */ lh	$v0, 0XC0($s6)
/* 000282 0x80BE4D98 241900FA */ li	$t9, 0XFA
/* 000283 0x80BE4D9C A6D90144 */ sh	$t9, 0X144($s6)
/* 000284 0x80BE4DA0 A6C200BE */ sh	$v0, 0XBE($s6)
/* 000285 0x80BE4DA4 10000053 */ b	.L80BE4EF4
/* 000286 0x80BE4DA8 A6C200BC */ sh	$v0, 0XBC($s6)
.L80BE4DAC:
/* 000287 0x80BE4DAC AEC80148 */ sw	$t0, 0X148($s6)
/* 000288 0x80BE4DB0 10000050 */ b	.L80BE4EF4
/* 000289 0x80BE4DB4 A6C90144 */ sh	$t1, 0X144($s6)
.L80BE4DB8:
/* 000290 0x80BE4DB8 14400040 */ bnez	$v0, .L80BE4EBC
/* 000291 0x80BE4DBC 02A02025 */ move	$a0, $s5
/* 000292 0x80BE4DC0 3C1180BE */ lui	$s1, %hi(D_80BE5DD4)
/* 000293 0x80BE4DC4 3C1280BE */ lui	$s2, %hi(D_80BE5E74)
/* 000294 0x80BE4DC8 3C1380BE */ lui	$s3, %hi(D_80BE5E24)
/* 000295 0x80BE4DCC 3C1E0600 */ lui	$fp, 0x0600
/* 000296 0x80BE4DD0 27DE6FD0 */ addiu	$fp, $fp, 0X6FD0
/* 000297 0x80BE4DD4 26735E24 */ addiu	$s3, $s3, %lo(D_80BE5E24)
/* 000298 0x80BE4DD8 26525E74 */ addiu	$s2, $s2, %lo(D_80BE5E74)
/* 000299 0x80BE4DDC 26315DD4 */ addiu	$s1, $s1, %lo(D_80BE5DD4)
/* 000300 0x80BE4DE0 00008025 */ move	$s0, $zero
/* 000301 0x80BE4DE4 26B71CA0 */ addiu	$s7, $s5, 0X1CA0
.L80BE4DE8:
/* 000302 0x80BE4DE8 3C014780 */ lui	$at, 0x4780
/* 000303 0x80BE4DEC 44816000 */ mtc1	$at, $f12
/* 000304 0x80BE4DF0 0C05E565 */ jal	randZeroOneScaled
/* 000305 0x80BE4DF4 00000000 */ nop
/* 000306 0x80BE4DF8 862A0000 */ lh	$t2, 0X0($s1)
/* 000307 0x80BE4DFC 862B0002 */ lh	$t3, 0X2($s1)
/* 000308 0x80BE4E00 4600018D */ trunc.w.s	$f6, $f0
/* 000309 0x80BE4E04 448A5000 */ mtc1	$t2, $f10
/* 000310 0x80BE4E08 448B9000 */ mtc1	$t3, $f18
/* 000311 0x80BE4E0C C6D00028 */ lwc1	$f16, 0X28($s6)
/* 000312 0x80BE4E10 468052A0 */ cvt.s.w	$f10, $f10
/* 000313 0x80BE4E14 440D3000 */ mfc1	$t5, $f6
/* 000314 0x80BE4E18 26140001 */ addiu	$s4, $s0, 0X1
/* 000315 0x80BE4E1C AFB40024 */ sw	$s4, 0X24($sp)
/* 000316 0x80BE4E20 AFA00020 */ sw	$zero, 0X20($sp)
/* 000317 0x80BE4E24 46809120 */ cvt.s.w	$f4, $f18
/* 000318 0x80BE4E28 44075000 */ mfc1	$a3, $f10
/* 000319 0x80BE4E2C AFA00018 */ sw	$zero, 0X18($sp)
/* 000320 0x80BE4E30 02E02025 */ move	$a0, $s7
/* 000321 0x80BE4E34 02A02825 */ move	$a1, $s5
/* 000322 0x80BE4E38 24060268 */ li	$a2, 0X268
/* 000323 0x80BE4E3C E7A40014 */ swc1	$f4, 0X14($sp)
/* 000324 0x80BE4E40 E7B00010 */ swc1	$f16, 0X10($sp)
/* 000325 0x80BE4E44 0C02EB18 */ jal	Actor_Spawn
/* 000326 0x80BE4E48 AFAD001C */ sw	$t5, 0X1C($sp)
/* 000327 0x80BE4E4C 8ECE0120 */ lw	$t6, 0X120($s6)
/* 000328 0x80BE4E50 00408025 */ move	$s0, $v0
/* 000329 0x80BE4E54 00402025 */ move	$a0, $v0
/* 000330 0x80BE4E58 AC4E0120 */ sw	$t6, 0X120($v0)
/* 000331 0x80BE4E5C C6480000 */ lwc1	$f8, 0X0($s2)
/* 000332 0x80BE4E60 E448019C */ swc1	$f8, 0X19C($v0)
/* 000333 0x80BE4E64 0C02D9F8 */ jal	Actor_SetScale
/* 000334 0x80BE4E68 8C45019C */ lw	$a1, 0X19C($v0)
/* 000335 0x80BE4E6C 8E6F0000 */ lw	$t7, 0X0($s3)
/* 000336 0x80BE4E70 02A02025 */ move	$a0, $s5
/* 000337 0x80BE4E74 2605014C */ addiu	$a1, $s0, 0X14C
/* 000338 0x80BE4E78 17CF0002 */ bne	$fp, $t7, .L80BE4E84
/* 000339 0x80BE4E7C AE0F0148 */ sw	$t7, 0X148($s0)
/* 000340 0x80BE4E80 A60000BE */ sh	$zero, 0XBE($s0)
.L80BE4E84:
/* 000341 0x80BE4E84 3C0780BE */ lui	$a3, %hi(D_80BE5DA4)
/* 000342 0x80BE4E88 24E75DA4 */ addiu	$a3, $a3, %lo(D_80BE5DA4)
/* 000343 0x80BE4E8C 0C0384DD */ jal	Collision_InitCylinder
/* 000344 0x80BE4E90 02003025 */ move	$a2, $s0
/* 000345 0x80BE4E94 24010014 */ li	$at, 0X14
/* 000346 0x80BE4E98 02808025 */ move	$s0, $s4
/* 000347 0x80BE4E9C 26310004 */ addiu	$s1, $s1, 0X4
/* 000348 0x80BE4EA0 26520004 */ addiu	$s2, $s2, 0X4
/* 000349 0x80BE4EA4 1681FFD0 */ bne	$s4, $at, .L80BE4DE8
/* 000350 0x80BE4EA8 26730004 */ addiu	$s3, $s3, 0X4
/* 000351 0x80BE4EAC 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000352 0x80BE4EB0 02C02025 */ move	$a0, $s6
/* 000353 0x80BE4EB4 10000010 */ b	.L80BE4EF8
/* 000354 0x80BE4EB8 8FBF0054 */ lw	$ra, 0X54($sp)
.L80BE4EBC:
/* 000355 0x80BE4EBC 3C0142C8 */ lui	$at, 0x42C8
/* 000356 0x80BE4EC0 44815000 */ mtc1	$at, $f10
/* 000357 0x80BE4EC4 24190004 */ li	$t9, 0X4
/* 000358 0x80BE4EC8 AFB90014 */ sw	$t9, 0X14($sp)
/* 000359 0x80BE4ECC 02C02825 */ move	$a1, $s6
/* 000360 0x80BE4ED0 3C064248 */ lui	$a2, 0x4248
/* 000361 0x80BE4ED4 3C074316 */ lui	$a3, 0x4316
/* 000362 0x80BE4ED8 0C02DE2E */ jal	func_800B78B8
/* 000363 0x80BE4EDC E7AA0010 */ swc1	$f10, 0X10($sp)
/* 000364 0x80BE4EE0 3C01C1A0 */ lui	$at, 0xC1A0
/* 000365 0x80BE4EE4 44819000 */ mtc1	$at, $f18
/* 000366 0x80BE4EE8 C6D00088 */ lwc1	$f16, 0X88($s6)
/* 000367 0x80BE4EEC 46128100 */ add.s	$f4, $f16, $f18
/* 000368 0x80BE4EF0 E6C40028 */ swc1	$f4, 0X28($s6)
.L80BE4EF4:
/* 000369 0x80BE4EF4 8FBF0054 */ lw	$ra, 0X54($sp)
.L80BE4EF8:
/* 000370 0x80BE4EF8 8FB00030 */ lw	$s0, 0X30($sp)
/* 000371 0x80BE4EFC 8FB10034 */ lw	$s1, 0X34($sp)
/* 000372 0x80BE4F00 8FB20038 */ lw	$s2, 0X38($sp)
/* 000373 0x80BE4F04 8FB3003C */ lw	$s3, 0X3C($sp)
/* 000374 0x80BE4F08 8FB40040 */ lw	$s4, 0X40($sp)
/* 000375 0x80BE4F0C 8FB50044 */ lw	$s5, 0X44($sp)
/* 000376 0x80BE4F10 8FB60048 */ lw	$s6, 0X48($sp)
/* 000377 0x80BE4F14 8FB7004C */ lw	$s7, 0X4C($sp)
/* 000378 0x80BE4F18 8FBE0050 */ lw	$fp, 0X50($sp)
/* 000379 0x80BE4F1C 03E00008 */ jr	$ra
/* 000380 0x80BE4F20 27BD0058 */ addiu	$sp, $sp, 0X58


.section .late_rodata

glabel D_80BE5ED8
/* 001386 0x80BE5ED8 */ .word	0x3CCCCCCD
glabel D_80BE5EDC
/* 001387 0x80BE5EDC */ .word	0x3DAE147B
glabel D_80BE5EE0
/* 001388 0x80BE5EE0 */ .word	0x3C75C28F
glabel D_80BE5EE4
/* 001389 0x80BE5EE4 */ .word	0x3C23D70A
glabel D_80BE5EE8
/* 001390 0x80BE5EE8 */ .word	0x3FFFDF3B
glabel D_80BE5EEC
/* 001391 0x80BE5EEC */ .word	0x3CF5C28F
