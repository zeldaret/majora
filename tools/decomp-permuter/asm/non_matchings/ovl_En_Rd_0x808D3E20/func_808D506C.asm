glabel func_808D506C
/* 001171 0x808D506C 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 001172 0x808D5070 AFB00020 */ sw	$s0, 0X20($sp)
/* 001173 0x808D5074 00808025 */ move	$s0, $a0
/* 001174 0x808D5078 AFBF0024 */ sw	$ra, 0X24($sp)
/* 001175 0x808D507C AFA50044 */ sw	$a1, 0X44($sp)
/* 001176 0x808D5080 8FAE0044 */ lw	$t6, 0X44($sp)
/* 001177 0x808D5084 260400BE */ addiu	$a0, $s0, 0XBE
/* 001178 0x808D5088 24060001 */ li	$a2, 0X1
/* 001179 0x808D508C 8DCF1CCC */ lw	$t7, 0X1CCC($t6)
/* 001180 0x808D5090 240700FA */ li	$a3, 0XFA
/* 001181 0x808D5094 AFAF003C */ sw	$t7, 0X3C($sp)
/* 001182 0x808D5098 861800BE */ lh	$t8, 0XBE($s0)
/* 001183 0x808D509C 86050092 */ lh	$a1, 0X92($s0)
/* 001184 0x808D50A0 860803D8 */ lh	$t0, 0X3D8($s0)
/* 001185 0x808D50A4 860A03DA */ lh	$t2, 0X3DA($s0)
/* 001186 0x808D50A8 00B8C823 */ subu	$t9, $a1, $t8
/* 001187 0x808D50AC 03284823 */ subu	$t1, $t9, $t0
/* 001188 0x808D50B0 012A5823 */ subu	$t3, $t1, $t2
/* 001189 0x808D50B4 A7AB0036 */ sh	$t3, 0X36($sp)
/* 001190 0x808D50B8 C6040070 */ lwc1	$f4, 0X70($s0)
/* 001191 0x808D50BC E6040160 */ swc1	$f4, 0X160($s0)
/* 001192 0x808D50C0 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 001193 0x808D50C4 AFA00010 */ sw	$zero, 0X10($sp)
/* 001194 0x808D50C8 260403D8 */ addiu	$a0, $s0, 0X3D8
/* 001195 0x808D50CC 00002825 */ move	$a1, $zero
/* 001196 0x808D50D0 24060001 */ li	$a2, 0X1
/* 001197 0x808D50D4 24070064 */ li	$a3, 0X64
/* 001198 0x808D50D8 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 001199 0x808D50DC AFA00010 */ sw	$zero, 0X10($sp)
/* 001200 0x808D50E0 260403DA */ addiu	$a0, $s0, 0X3DA
/* 001201 0x808D50E4 00002825 */ move	$a1, $zero
/* 001202 0x808D50E8 24060001 */ li	$a2, 0X1
/* 001203 0x808D50EC 24070064 */ li	$a3, 0X64
/* 001204 0x808D50F0 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 001205 0x808D50F4 AFA00010 */ sw	$zero, 0X10($sp)
/* 001206 0x808D50F8 860C00BE */ lh	$t4, 0XBE($s0)
/* 001207 0x808D50FC 26040144 */ addiu	$a0, $s0, 0X144
/* 001208 0x808D5100 A60C0032 */ sh	$t4, 0X32($s0)
/* 001209 0x808D5104 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 001210 0x808D5108 AFA4002C */ sw	$a0, 0X2C($sp)
/* 001211 0x808D510C 26050008 */ addiu	$a1, $s0, 0X8
/* 001212 0x808D5110 AFA50028 */ sw	$a1, 0X28($sp)
/* 001213 0x808D5114 0C02DB7E */ jal	Actor_DistanceToPoint
/* 001214 0x808D5118 8FA4003C */ lw	$a0, 0X3C($sp)
/* 001215 0x808D511C 3C014316 */ lui	$at, 0x4316
/* 001216 0x808D5120 44813000 */ mtc1	$at, $f6
/* 001217 0x808D5124 02002025 */ move	$a0, $s0
/* 001218 0x808D5128 4600303E */ c.le.s	$f6, $f0
/* 001219 0x808D512C 00000000 */ nop
/* 001220 0x808D5130 45020004 */ bc1fl .L808D5144
/* 001221 0x808D5134 87A30036 */ lh	$v1, 0X36($sp)
/* 001222 0x808D5138 0C2354F0 */ jal	func_808D53C0
/* 001223 0x808D513C 8FA50044 */ lw	$a1, 0X44($sp)
/* 001224 0x808D5140 87A30036 */ lh	$v1, 0X36($sp)
.L808D5144:
/* 001225 0x808D5144 02002025 */ move	$a0, $s0
/* 001226 0x808D5148 04610003 */ bgez	$v1, .L808D5158
/* 001227 0x808D514C 00601025 */ move	$v0, $v1
/* 001228 0x808D5150 10000001 */ b	.L808D5158
/* 001229 0x808D5154 00031023 */ negu	$v0, $v1
.L808D5158:
/* 001230 0x808D5158 28411554 */ slti	$at, $v0, 0X1554
/* 001231 0x808D515C 50200032 */ beqzl	$at, .L808D5228
/* 001232 0x808D5160 920203EE */ lbu	$v0, 0X3EE($s0)
/* 001233 0x808D5164 0C02DB73 */ jal	Actor_DistanceBetweenActors
/* 001234 0x808D5168 8FA5003C */ lw	$a1, 0X3C($sp)
/* 001235 0x808D516C 3C014316 */ lui	$at, 0x4316
/* 001236 0x808D5170 44814000 */ mtc1	$at, $f8
/* 001237 0x808D5174 8FAD003C */ lw	$t5, 0X3C($sp)
/* 001238 0x808D5178 4608003E */ c.le.s	$f0, $f8
/* 001239 0x808D517C 00000000 */ nop
/* 001240 0x808D5180 45020029 */ bc1fl .L808D5228
/* 001241 0x808D5184 920203EE */ lbu	$v0, 0X3EE($s0)
/* 001242 0x808D5188 8DAE0A6C */ lw	$t6, 0XA6C($t5)
/* 001243 0x808D518C 3C01002C */ lui	$at, 0x002C
/* 001244 0x808D5190 34216080 */ ori	$at, $at, 0X6080
/* 001245 0x808D5194 01C17824 */ and	$t7, $t6, $at
/* 001246 0x808D5198 15E00020 */ bnez	$t7, .L808D521C
/* 001247 0x808D519C 02002025 */ move	$a0, $s0
/* 001248 0x808D51A0 8DB80A70 */ lw	$t8, 0XA70($t5)
/* 001249 0x808D51A4 33194080 */ andi	$t9, $t8, 0X4080
/* 001250 0x808D51A8 1720001C */ bnez	$t9, .L808D521C
/* 001251 0x808D51AC 00000000 */ nop
/* 001252 0x808D51B0 920803ED */ lbu	$t0, 0X3ED($s0)
/* 001253 0x808D51B4 5500001C */ bnezl	$t0, .L808D5228
/* 001254 0x808D51B8 920203EE */ lbu	$v0, 0X3EE($s0)
/* 001255 0x808D51BC 860903DC */ lh	$t1, 0X3DC($s0)
/* 001256 0x808D51C0 240B0028 */ li	$t3, 0X28
/* 001257 0x808D51C4 02002825 */ move	$a1, $s0
/* 001258 0x808D51C8 312A0080 */ andi	$t2, $t1, 0X80
/* 001259 0x808D51CC 5540000D */ bnezl	$t2, .L808D5204
/* 001260 0x808D51D0 240F003C */ li	$t7, 0X3C
/* 001261 0x808D51D4 A5AB0118 */ sh	$t3, 0X118($t5)
/* 001262 0x808D51D8 0C048FA4 */ jal	func_80123E90
/* 001263 0x808D51DC 8FA40044 */ lw	$a0, 0X44($sp)
/* 001264 0x808D51E0 8FAC0044 */ lw	$t4, 0X44($sp)
/* 001265 0x808D51E4 240500FF */ li	$a1, 0XFF
/* 001266 0x808D51E8 24060014 */ li	$a2, 0X14
/* 001267 0x808D51EC 8D8E1CCC */ lw	$t6, 0X1CCC($t4)
/* 001268 0x808D51F0 24070096 */ li	$a3, 0X96
/* 001269 0x808D51F4 ADD00A78 */ sw	$s0, 0XA78($t6)
/* 001270 0x808D51F8 0C04FB38 */ jal	func_8013ECE0
/* 001271 0x808D51FC C60C0098 */ lwc1	$f12, 0X98($s0)
/* 001272 0x808D5200 240F003C */ li	$t7, 0X3C
.L808D5204:
/* 001273 0x808D5204 A20F03ED */ sb	$t7, 0X3ED($s0)
/* 001274 0x808D5208 02002025 */ move	$a0, $s0
/* 001275 0x808D520C 0C02E3B2 */ jal	func_800B8EC8
/* 001276 0x808D5210 240538E5 */ li	$a1, 0X38E5
/* 001277 0x808D5214 10000004 */ b	.L808D5228
/* 001278 0x808D5218 920203EE */ lbu	$v0, 0X3EE($s0)
.L808D521C:
/* 001279 0x808D521C 0C2354F0 */ jal	func_808D53C0
/* 001280 0x808D5220 8FA50044 */ lw	$a1, 0X44($sp)
/* 001281 0x808D5224 920203EE */ lbu	$v0, 0X3EE($s0)
.L808D5228:
/* 001282 0x808D5228 02002025 */ move	$a0, $s0
/* 001283 0x808D522C 10400003 */ beqz	$v0, .L808D523C
/* 001284 0x808D5230 2458FFFF */ addiu	$t8, $v0, -0X1
/* 001285 0x808D5234 A21803EE */ sb	$t8, 0X3EE($s0)
/* 001286 0x808D5238 330200FF */ andi	$v0, $t8, 0XFF
.L808D523C:
/* 001287 0x808D523C 5440003A */ bnezl	$v0, .L808D5328
/* 001288 0x808D5240 860D001C */ lh	$t5, 0X1C($s0)
/* 001289 0x808D5244 0C02DB73 */ jal	Actor_DistanceBetweenActors
/* 001290 0x808D5248 8FA5003C */ lw	$a1, 0X3C($sp)
/* 001291 0x808D524C 3C014234 */ lui	$at, 0x4234
/* 001292 0x808D5250 44815000 */ mtc1	$at, $f10
/* 001293 0x808D5254 02002025 */ move	$a0, $s0
/* 001294 0x808D5258 460A003E */ c.le.s	$f0, $f10
/* 001295 0x808D525C 00000000 */ nop
/* 001296 0x808D5260 45020031 */ bc1fl .L808D5328
/* 001297 0x808D5264 860D001C */ lh	$t5, 0X1C($s0)
/* 001298 0x808D5268 0C02DCF8 */ jal	Actor_IsActorFacingLink
/* 001299 0x808D526C 240538E3 */ li	$a1, 0X38E3
/* 001300 0x808D5270 1040002C */ beqz	$v0, .L808D5324
/* 001301 0x808D5274 8FB9003C */ lw	$t9, 0X3C($sp)
/* 001302 0x808D5278 A7200118 */ sh	$zero, 0X118($t9)
/* 001303 0x808D527C 8FA8003C */ lw	$t0, 0X3C($sp)
/* 001304 0x808D5280 24010001 */ li	$at, 0X1
/* 001305 0x808D5284 02002025 */ move	$a0, $s0
/* 001306 0x808D5288 9102014B */ lbu	$v0, 0X14B($t0)
/* 001307 0x808D528C 10410003 */ beq	$v0, $at, .L808D529C
/* 001308 0x808D5290 24010003 */ li	$at, 0X3
/* 001309 0x808D5294 54410013 */ bnel	$v0, $at, .L808D52E4
/* 001310 0x808D5298 8FA40044 */ lw	$a0, 0X44($sp)
.L808D529C:
/* 001311 0x808D529C 0C02DB7E */ jal	Actor_DistanceToPoint
/* 001312 0x808D52A0 8FA50028 */ lw	$a1, 0X28($sp)
/* 001313 0x808D52A4 3C014316 */ lui	$at, 0x4316
/* 001314 0x808D52A8 44818000 */ mtc1	$at, $f16
/* 001315 0x808D52AC 02002025 */ move	$a0, $s0
/* 001316 0x808D52B0 4610003C */ c.lt.s	$f0, $f16
/* 001317 0x808D52B4 00000000 */ nop
/* 001318 0x808D52B8 45000005 */ bc1f .L808D52D0
/* 001319 0x808D52BC 00000000 */ nop
/* 001320 0x808D52C0 0C235762 */ jal	func_808D5D88
/* 001321 0x808D52C4 02002025 */ move	$a0, $s0
/* 001322 0x808D52C8 10000022 */ b	.L808D5354
/* 001323 0x808D52CC 8FA4002C */ lw	$a0, 0X2C($sp)
.L808D52D0:
/* 001324 0x808D52D0 0C2354F0 */ jal	func_808D53C0
/* 001325 0x808D52D4 8FA50044 */ lw	$a1, 0X44($sp)
/* 001326 0x808D52D8 1000001E */ b	.L808D5354
/* 001327 0x808D52DC 8FA4002C */ lw	$a0, 0X2C($sp)
/* 001328 0x808D52E0 8FA40044 */ lw	$a0, 0X44($sp)
.L808D52E4:
/* 001329 0x808D52E4 3C190002 */ lui	$t9, 0x0002
/* 001330 0x808D52E8 8FA5003C */ lw	$a1, 0X3C($sp)
/* 001331 0x808D52EC 0324C821 */ addu	$t9, $t9, $a0
/* 001332 0x808D52F0 8F398778 */ lw	$t9, -0X7888($t9)
/* 001333 0x808D52F4 0320F809 */ jalr	$t9
/* 001334 0x808D52F8 00000000 */ nop
/* 001335 0x808D52FC 50400015 */ beqzl	$v0, .L808D5354
/* 001336 0x808D5300 8FA4002C */ lw	$a0, 0X2C($sp)
/* 001337 0x808D5304 8E0A0004 */ lw	$t2, 0X4($s0)
/* 001338 0x808D5308 2401FFFE */ li	$at, -0X2
/* 001339 0x808D530C 02002025 */ move	$a0, $s0
/* 001340 0x808D5310 01415824 */ and	$t3, $t2, $at
/* 001341 0x808D5314 0C23561B */ jal	func_808D586C
/* 001342 0x808D5318 AE0B0004 */ sw	$t3, 0X4($s0)
/* 001343 0x808D531C 1000000D */ b	.L808D5354
/* 001344 0x808D5320 8FA4002C */ lw	$a0, 0X2C($sp)
.L808D5324:
/* 001345 0x808D5324 860D001C */ lh	$t5, 0X1C($s0)
.L808D5328:
/* 001346 0x808D5328 59A0000A */ blezl	$t5, .L808D5354
/* 001347 0x808D532C 8FA4002C */ lw	$a0, 0X2C($sp)
/* 001348 0x808D5330 8E0C0120 */ lw	$t4, 0X120($s0)
/* 001349 0x808D5334 51800006 */ beqzl	$t4, .L808D5350
/* 001350 0x808D5338 A20003EC */ sb	$zero, 0X3EC($s0)
/* 001351 0x808D533C 0C235598 */ jal	func_808D5660
/* 001352 0x808D5340 02002025 */ move	$a0, $s0
/* 001353 0x808D5344 10000003 */ b	.L808D5354
/* 001354 0x808D5348 8FA4002C */ lw	$a0, 0X2C($sp)
/* 001355 0x808D534C A20003EC */ sb	$zero, 0X3EC($s0)
.L808D5350:
/* 001356 0x808D5350 8FA4002C */ lw	$a0, 0X2C($sp)
.L808D5354:
/* 001357 0x808D5354 0C04DE2E */ jal	func_801378B8
/* 001358 0x808D5358 3C054120 */ lui	$a1, 0x4120
/* 001359 0x808D535C 14400005 */ bnez	$v0, .L808D5374
/* 001360 0x808D5360 8FA4002C */ lw	$a0, 0X2C($sp)
/* 001361 0x808D5364 0C04DE2E */ jal	func_801378B8
/* 001362 0x808D5368 3C0541B0 */ lui	$a1, 0x41B0
/* 001363 0x808D536C 10400006 */ beqz	$v0, .L808D5388
/* 001364 0x808D5370 8FAE0044 */ lw	$t6, 0X44($sp)
.L808D5374:
/* 001365 0x808D5374 02002025 */ move	$a0, $s0
/* 001366 0x808D5378 0C02E3B2 */ jal	func_800B8EC8
/* 001367 0x808D537C 2405382E */ li	$a1, 0X382E
/* 001368 0x808D5380 1000000B */ b	.L808D53B0
/* 001369 0x808D5384 8FBF0024 */ lw	$ra, 0X24($sp)
.L808D5388:
/* 001370 0x808D5388 3C0F0002 */ lui	$t7, 0x0002
/* 001371 0x808D538C 01EE7821 */ addu	$t7, $t7, $t6
/* 001372 0x808D5390 8DEF8840 */ lw	$t7, -0X77C0($t7)
/* 001373 0x808D5394 02002025 */ move	$a0, $s0
/* 001374 0x808D5398 31F8005F */ andi	$t8, $t7, 0X5F
/* 001375 0x808D539C 57000004 */ bnezl	$t8, .L808D53B0
/* 001376 0x808D53A0 8FBF0024 */ lw	$ra, 0X24($sp)
/* 001377 0x808D53A4 0C02E3B2 */ jal	func_800B8EC8
/* 001378 0x808D53A8 240538E4 */ li	$a1, 0X38E4
/* 001379 0x808D53AC 8FBF0024 */ lw	$ra, 0X24($sp)
.L808D53B0:
/* 001380 0x808D53B0 8FB00020 */ lw	$s0, 0X20($sp)
/* 001381 0x808D53B4 27BD0040 */ addiu	$sp, $sp, 0X40
/* 001382 0x808D53B8 03E00008 */ jr	$ra
/* 001383 0x808D53BC 00000000 */ nop

