glabel func_809B71DC
/* 005179 0x809B71DC 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 005180 0x809B71E0 AFB00018 */ sw	$s0, 0X18($sp)
/* 005181 0x809B71E4 00808025 */ move	$s0, $a0
/* 005182 0x809B71E8 AFBF001C */ sw	$ra, 0X1C($sp)
/* 005183 0x809B71EC AFA5003C */ sw	$a1, 0X3C($sp)
/* 005184 0x809B71F0 8E0E0684 */ lw	$t6, 0X684($s0)
/* 005185 0x809B71F4 26040194 */ addiu	$a0, $s0, 0X194
/* 005186 0x809B71F8 25CF0001 */ addiu	$t7, $t6, 0X1
/* 005187 0x809B71FC AE0F0684 */ sw	$t7, 0X684($s0)
/* 005188 0x809B7200 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 005189 0x809B7204 AFA40020 */ sw	$a0, 0X20($sp)
/* 005190 0x809B7208 86030688 */ lh	$v1, 0X688($s0)
/* 005191 0x809B720C 24010001 */ li	$at, 0X1
/* 005192 0x809B7210 10600007 */ beqz	$v1, .L809B7230
/* 005193 0x809B7214 00000000 */ nop
/* 005194 0x809B7218 10610037 */ beq	$v1, $at, .L809B72F8
/* 005195 0x809B721C 24010002 */ li	$at, 0X2
/* 005196 0x809B7220 10610069 */ beq	$v1, $at, .L809B73C8
/* 005197 0x809B7224 00000000 */ nop
/* 005198 0x809B7228 10000122 */ b	.L809B76B4
/* 005199 0x809B722C 8618068A */ lh	$t8, 0X68A($s0)
.L809B7230:
/* 005200 0x809B7230 0C03C81F */ jal	ActorCutscene_GetCurrentIndex
/* 005201 0x809B7234 00000000 */ nop
/* 005202 0x809B7238 2401FFFF */ li	$at, -0X1
/* 005203 0x809B723C 1441011C */ bne	$v0, $at, .L809B76B0
/* 005204 0x809B7240 8FA4003C */ lw	$a0, 0X3C($sp)
/* 005205 0x809B7244 0C03A835 */ jal	func_800EA0D4
/* 005206 0x809B7248 24851F24 */ addiu	$a1, $a0, 0X1F24
/* 005207 0x809B724C 8FA4003C */ lw	$a0, 0X3C($sp)
/* 005208 0x809B7250 02002825 */ move	$a1, $s0
/* 005209 0x809B7254 0C02DCA6 */ jal	func_800B7298
/* 005210 0x809B7258 24060007 */ li	$a2, 0X7
/* 005211 0x809B725C 0C05A537 */ jal	func_801694DC
/* 005212 0x809B7260 8FA4003C */ lw	$a0, 0X3C($sp)
/* 005213 0x809B7264 A602068A */ sh	$v0, 0X68A($s0)
/* 005214 0x809B7268 8FA4003C */ lw	$a0, 0X3C($sp)
/* 005215 0x809B726C 00002825 */ move	$a1, $zero
/* 005216 0x809B7270 0C05A564 */ jal	func_80169590
/* 005217 0x809B7274 24060001 */ li	$a2, 0X1
/* 005218 0x809B7278 8FA4003C */ lw	$a0, 0X3C($sp)
/* 005219 0x809B727C 8605068A */ lh	$a1, 0X68A($s0)
/* 005220 0x809B7280 0C05A564 */ jal	func_80169590
/* 005221 0x809B7284 24060007 */ li	$a2, 0X7
/* 005222 0x809B7288 8E180004 */ lw	$t8, 0X4($s0)
/* 005223 0x809B728C 2401FFFE */ li	$at, -0X2
/* 005224 0x809B7290 24080001 */ li	$t0, 0X1
/* 005225 0x809B7294 0301C824 */ and	$t9, $t8, $at
/* 005226 0x809B7298 AE190004 */ sw	$t9, 0X4($s0)
/* 005227 0x809B729C AE000684 */ sw	$zero, 0X684($s0)
/* 005228 0x809B72A0 A6080688 */ sh	$t0, 0X688($s0)
/* 005229 0x809B72A4 3C01809C */ lui	$at, %hi(D_809BDE5C)
/* 005230 0x809B72A8 C424DE5C */ lwc1	$f4, %lo(D_809BDE5C)($at)
/* 005231 0x809B72AC 3C014260 */ lui	$at, 0x4260
/* 005232 0x809B72B0 44813000 */ mtc1	$at, $f6
/* 005233 0x809B72B4 3C01809C */ lui	$at, %hi(D_809BDE60)
/* 005234 0x809B72B8 E604068C */ swc1	$f4, 0X68C($s0)
/* 005235 0x809B72BC E6060690 */ swc1	$f6, 0X690($s0)
/* 005236 0x809B72C0 C428DE60 */ lwc1	$f8, %lo(D_809BDE60)($at)
/* 005237 0x809B72C4 3C0144AF */ lui	$at, 0x44AF
/* 005238 0x809B72C8 44815000 */ mtc1	$at, $f10
/* 005239 0x809B72CC 3C014264 */ lui	$at, 0x4264
/* 005240 0x809B72D0 44819000 */ mtc1	$at, $f18
/* 005241 0x809B72D4 3C01809C */ lui	$at, %hi(D_809BDE64)
/* 005242 0x809B72D8 E6080694 */ swc1	$f8, 0X694($s0)
/* 005243 0x809B72DC E60A0698 */ swc1	$f10, 0X698($s0)
/* 005244 0x809B72E0 E612069C */ swc1	$f18, 0X69C($s0)
/* 005245 0x809B72E4 C424DE64 */ lwc1	$f4, %lo(D_809BDE64)($at)
/* 005246 0x809B72E8 3C014270 */ lui	$at, 0x4270
/* 005247 0x809B72EC 44813000 */ mtc1	$at, $f6
/* 005248 0x809B72F0 E60406A0 */ swc1	$f4, 0X6A0($s0)
/* 005249 0x809B72F4 E60606B0 */ swc1	$f6, 0X6B0($s0)
.L809B72F8:
/* 005250 0x809B72F8 3C02801F */ lui	$v0, %hi(gStaticContext)
/* 005251 0x809B72FC 8C423F60 */ lw	$v0, %lo(gStaticContext)($v0)
/* 005252 0x809B7300 8E030684 */ lw	$v1, 0X684($s0)
/* 005253 0x809B7304 84490C94 */ lh	$t1, 0XC94($v0)
/* 005254 0x809B7308 252A000D */ addiu	$t2, $t1, 0XD
/* 005255 0x809B730C 546A0011 */ bnel	$v1, $t2, .L809B7354
/* 005256 0x809B7310 844C0C98 */ lh	$t4, 0XC98($v0)
/* 005257 0x809B7314 844B0C96 */ lh	$t3, 0XC96($v0)
/* 005258 0x809B7318 3C050601 */ lui	$a1, 0x0601
/* 005259 0x809B731C 24A59D8C */ addiu	$a1, $a1, -0X6274
/* 005260 0x809B7320 448B4000 */ mtc1	$t3, $f8
/* 005261 0x809B7324 8FA40020 */ lw	$a0, 0X20($sp)
/* 005262 0x809B7328 46804220 */ cvt.s.w	$f8, $f8
/* 005263 0x809B732C 44064000 */ mfc1	$a2, $f8
/* 005264 0x809B7330 0C04DD22 */ jal	SkelAnime_ChangeAnimTransitionStop
/* 005265 0x809B7334 00000000 */ nop
/* 005266 0x809B7338 02002025 */ move	$a0, $s0
/* 005267 0x809B733C 0C02E3B2 */ jal	func_800B8EC8
/* 005268 0x809B7340 24053A2A */ li	$a1, 0X3A2A
/* 005269 0x809B7344 3C02801F */ lui	$v0, %hi(gStaticContext)
/* 005270 0x809B7348 8C423F60 */ lw	$v0, %lo(gStaticContext)($v0)
/* 005271 0x809B734C 8E030684 */ lw	$v1, 0X684($s0)
/* 005272 0x809B7350 844C0C98 */ lh	$t4, 0XC98($v0)
.L809B7354:
/* 005273 0x809B7354 3C01809C */ lui	$at, %hi(D_809BDE68)
/* 005274 0x809B7358 258D0017 */ addiu	$t5, $t4, 0X17
/* 005275 0x809B735C 546D00D5 */ bnel	$v1, $t5, .L809B76B4
/* 005276 0x809B7360 8618068A */ lh	$t8, 0X68A($s0)
/* 005277 0x809B7364 C42ADE68 */ lwc1	$f10, %lo(D_809BDE68)($at)
/* 005278 0x809B7368 3C01429E */ lui	$at, 0x429E
/* 005279 0x809B736C 44819000 */ mtc1	$at, $f18
/* 005280 0x809B7370 3C01809C */ lui	$at, %hi(D_809BDE6C)
/* 005281 0x809B7374 E60A068C */ swc1	$f10, 0X68C($s0)
/* 005282 0x809B7378 E6120690 */ swc1	$f18, 0X690($s0)
/* 005283 0x809B737C C424DE6C */ lwc1	$f4, %lo(D_809BDE6C)($at)
/* 005284 0x809B7380 3C01809C */ lui	$at, %hi(D_809BDE70)
/* 005285 0x809B7384 3C050601 */ lui	$a1, 0x0601
/* 005286 0x809B7388 E6040694 */ swc1	$f4, 0X694($s0)
/* 005287 0x809B738C C426DE70 */ lwc1	$f6, %lo(D_809BDE70)($at)
/* 005288 0x809B7390 3C0142A6 */ lui	$at, 0x42A6
/* 005289 0x809B7394 44814000 */ mtc1	$at, $f8
/* 005290 0x809B7398 3C01809C */ lui	$at, %hi(D_809BDE74)
/* 005291 0x809B739C E6060698 */ swc1	$f6, 0X698($s0)
/* 005292 0x809B73A0 E608069C */ swc1	$f8, 0X69C($s0)
/* 005293 0x809B73A4 C42ADE74 */ lwc1	$f10, %lo(D_809BDE74)($at)
/* 005294 0x809B73A8 24A59D8C */ addiu	$a1, $a1, -0X6274
/* 005295 0x809B73AC 24060000 */ li	$a2, 0X0
/* 005296 0x809B73B0 E60A06A0 */ swc1	$f10, 0X6A0($s0)
/* 005297 0x809B73B4 0C04DD22 */ jal	SkelAnime_ChangeAnimTransitionStop
/* 005298 0x809B73B8 8FA40020 */ lw	$a0, 0X20($sp)
/* 005299 0x809B73BC 240E0002 */ li	$t6, 0X2
/* 005300 0x809B73C0 AE000684 */ sw	$zero, 0X684($s0)
/* 005301 0x809B73C4 A60E0688 */ sh	$t6, 0X688($s0)
.L809B73C8:
/* 005302 0x809B73C8 3C0F801F */ lui	$t7, %hi(gStaticContext)
/* 005303 0x809B73CC 8DEF3F60 */ lw	$t7, %lo(gStaticContext)($t7)
/* 005304 0x809B73D0 3C01809C */ lui	$at, %hi(D_809BDE78)
/* 005305 0x809B73D4 C426DE78 */ lwc1	$f6, %lo(D_809BDE78)($at)
/* 005306 0x809B73D8 85F80C9A */ lh	$t8, 0XC9A($t7)
/* 005307 0x809B73DC 3C01809C */ lui	$at, %hi(D_809BDE7C)
/* 005308 0x809B73E0 C42ADE7C */ lwc1	$f10, %lo(D_809BDE7C)($at)
/* 005309 0x809B73E4 44989000 */ mtc1	$t8, $f18
/* 005310 0x809B73E8 3C014210 */ lui	$at, 0x4210
/* 005311 0x809B73EC 3C063E4C */ lui	$a2, 0x3E4C
/* 005312 0x809B73F0 46809120 */ cvt.s.w	$f4, $f18
/* 005313 0x809B73F4 34C6CCCD */ ori	$a2, $a2, 0XCCCD
/* 005314 0x809B73F8 2604069C */ addiu	$a0, $s0, 0X69C
/* 005315 0x809B73FC 3C0542EE */ lui	$a1, 0x42EE
/* 005316 0x809B7400 46062202 */ mul.s	$f8, $f4, $f6
/* 005317 0x809B7404 44813000 */ mtc1	$at, $f6
/* 005318 0x809B7408 460A4480 */ add.s	$f18, $f8, $f10
/* 005319 0x809B740C E61206A4 */ swc1	$f18, 0X6A4($s0)
/* 005320 0x809B7410 C60406A4 */ lwc1	$f4, 0X6A4($s0)
/* 005321 0x809B7414 46062202 */ mul.s	$f8, $f4, $f6
/* 005322 0x809B7418 44074000 */ mfc1	$a3, $f8
/* 005323 0x809B741C 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 005324 0x809B7420 00000000 */ nop
/* 005325 0x809B7424 3C02801F */ lui	$v0, %hi(gStaticContext)
/* 005326 0x809B7428 8C423F60 */ lw	$v0, %lo(gStaticContext)($v0)
/* 005327 0x809B742C 8E030684 */ lw	$v1, 0X684($s0)
/* 005328 0x809B7430 84440C9C */ lh	$a0, 0XC9C($v0)
/* 005329 0x809B7434 2484000A */ addiu	$a0, $a0, 0XA
/* 005330 0x809B7438 0064082B */ sltu	$at, $v1, $a0
/* 005331 0x809B743C 5420002D */ bnezl	$at, .L809B74F4
/* 005332 0x809B7440 84440C9E */ lh	$a0, 0XC9E($v0)
/* 005333 0x809B7444 14640005 */ bne	$v1, $a0, .L809B745C
/* 005334 0x809B7448 24190011 */ li	$t9, 0X11
/* 005335 0x809B744C A619014C */ sh	$t9, 0X14C($s0)
/* 005336 0x809B7450 02002025 */ move	$a0, $s0
/* 005337 0x809B7454 0C02E3B2 */ jal	func_800B8EC8
/* 005338 0x809B7458 24053A4D */ li	$a1, 0X3A4D
.L809B745C:
/* 005339 0x809B745C 8604014C */ lh	$a0, 0X14C($s0)
/* 005340 0x809B7460 00800821 */ addu	$at, $a0, $zero
/* 005341 0x809B7464 00042080 */ sll	$a0, $a0, 2
/* 005342 0x809B7468 00812023 */ subu	$a0, $a0, $at
/* 005343 0x809B746C 00042340 */ sll	$a0, $a0, 13
/* 005344 0x809B7470 00042400 */ sll	$a0, $a0, 16
/* 005345 0x809B7474 0C03FB61 */ jal	Math_Sins
/* 005346 0x809B7478 00042403 */ sra	$a0, $a0, 16
/* 005347 0x809B747C 8608014C */ lh	$t0, 0X14C($s0)
/* 005348 0x809B7480 3C01809C */ lui	$at, %hi(D_809BDE80)
/* 005349 0x809B7484 C42EDE80 */ lwc1	$f14, %lo(D_809BDE80)($at)
/* 005350 0x809B7488 44885000 */ mtc1	$t0, $f10
/* 005351 0x809B748C 3C013F80 */ lui	$at, 0x3F80
/* 005352 0x809B7490 44818000 */ mtc1	$at, $f16
/* 005353 0x809B7494 468050A0 */ cvt.s.w	$f2, $f10
/* 005354 0x809B7498 2604046C */ addiu	$a0, $s0, 0X46C
/* 005355 0x809B749C 44068000 */ mfc1	$a2, $f16
/* 005356 0x809B74A0 3C073F00 */ lui	$a3, 0x3F00
/* 005357 0x809B74A4 460E1482 */ mul.s	$f18, $f2, $f14
/* 005358 0x809B74A8 00000000 */ nop
/* 005359 0x809B74AC 46020102 */ mul.s	$f4, $f0, $f2
/* 005360 0x809B74B0 00000000 */ nop
/* 005361 0x809B74B4 460E2182 */ mul.s	$f6, $f4, $f14
/* 005362 0x809B74B8 46069200 */ add.s	$f8, $f18, $f6
/* 005363 0x809B74BC 46104300 */ add.s	$f12, $f8, $f16
/* 005364 0x809B74C0 44056000 */ mfc1	$a1, $f12
/* 005365 0x809B74C4 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 005366 0x809B74C8 E7AC0034 */ swc1	$f12, 0X34($sp)
/* 005367 0x809B74CC C7AC0034 */ lwc1	$f12, 0X34($sp)
/* 005368 0x809B74D0 26040470 */ addiu	$a0, $s0, 0X470
/* 005369 0x809B74D4 3C063F80 */ lui	$a2, 0x3F80
/* 005370 0x809B74D8 44056000 */ mfc1	$a1, $f12
/* 005371 0x809B74DC 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 005372 0x809B74E0 3C073F00 */ lui	$a3, 0x3F00
/* 005373 0x809B74E4 3C02801F */ lui	$v0, %hi(gStaticContext)
/* 005374 0x809B74E8 8C423F60 */ lw	$v0, %lo(gStaticContext)($v0)
/* 005375 0x809B74EC 8E030684 */ lw	$v1, 0X684($s0)
/* 005376 0x809B74F0 84440C9E */ lh	$a0, 0XC9E($v0)
.L809B74F4:
/* 005377 0x809B74F4 24840032 */ addiu	$a0, $a0, 0X32
/* 005378 0x809B74F8 54640016 */ bnel	$v1, $a0, .L809B7554
/* 005379 0x809B74FC 0064082B */ sltu	$at, $v1, $a0
/* 005380 0x809B7500 84490C96 */ lh	$t1, 0XC96($v0)
/* 005381 0x809B7504 3C01C120 */ lui	$at, 0xC120
/* 005382 0x809B7508 44819000 */ mtc1	$at, $f18
/* 005383 0x809B750C 44895000 */ mtc1	$t1, $f10
/* 005384 0x809B7510 3C050601 */ lui	$a1, 0x0601
/* 005385 0x809B7514 24A58390 */ addiu	$a1, $a1, -0X7C70
/* 005386 0x809B7518 46805120 */ cvt.s.w	$f4, $f10
/* 005387 0x809B751C 8FA40020 */ lw	$a0, 0X20($sp)
/* 005388 0x809B7520 46122180 */ add.s	$f6, $f4, $f18
/* 005389 0x809B7524 44063000 */ mfc1	$a2, $f6
/* 005390 0x809B7528 0C04DD22 */ jal	SkelAnime_ChangeAnimTransitionStop
/* 005391 0x809B752C 00000000 */ nop
/* 005392 0x809B7530 02002025 */ move	$a0, $s0
/* 005393 0x809B7534 0C02E3B2 */ jal	func_800B8EC8
/* 005394 0x809B7538 24053A4C */ li	$a1, 0X3A4C
/* 005395 0x809B753C 3C02801F */ lui	$v0, %hi(gStaticContext)
/* 005396 0x809B7540 8C423F60 */ lw	$v0, %lo(gStaticContext)($v0)
/* 005397 0x809B7544 8E030684 */ lw	$v1, 0X684($s0)
/* 005398 0x809B7548 84440C9E */ lh	$a0, 0XC9E($v0)
/* 005399 0x809B754C 24840032 */ addiu	$a0, $a0, 0X32
/* 005400 0x809B7550 0064082B */ sltu	$at, $v1, $a0
.L809B7554:
/* 005401 0x809B7554 5420001C */ bnezl	$at, .L809B75C8
/* 005402 0x809B7558 844C0CA4 */ lh	$t4, 0XCA4($v0)
/* 005403 0x809B755C 844A0CA0 */ lh	$t2, 0XCA0($v0)
/* 005404 0x809B7560 844B0CA2 */ lh	$t3, 0XCA2($v0)
/* 005405 0x809B7564 3C014220 */ lui	$at, 0x4220
/* 005406 0x809B7568 448A4000 */ mtc1	$t2, $f8
/* 005407 0x809B756C 448B3000 */ mtc1	$t3, $f6
/* 005408 0x809B7570 44812000 */ mtc1	$at, $f4
/* 005409 0x809B7574 468042A0 */ cvt.s.w	$f10, $f8
/* 005410 0x809B7578 3C01809C */ lui	$at, %hi(D_809BDE84)
/* 005411 0x809B757C 3C063E4C */ lui	$a2, 0x3E4C
/* 005412 0x809B7580 34C6CCCD */ ori	$a2, $a2, 0XCCCD
/* 005413 0x809B7584 260406B0 */ addiu	$a0, $s0, 0X6B0
/* 005414 0x809B7588 46803220 */ cvt.s.w	$f8, $f6
/* 005415 0x809B758C 46045480 */ add.s	$f18, $f10, $f4
/* 005416 0x809B7590 C42ADE84 */ lwc1	$f10, %lo(D_809BDE84)($at)
/* 005417 0x809B7594 3C014040 */ lui	$at, 0x4040
/* 005418 0x809B7598 460A4102 */ mul.s	$f4, $f8, $f10
/* 005419 0x809B759C 44059000 */ mfc1	$a1, $f18
/* 005420 0x809B75A0 44819000 */ mtc1	$at, $f18
/* 005421 0x809B75A4 00000000 */ nop
/* 005422 0x809B75A8 46122180 */ add.s	$f6, $f4, $f18
/* 005423 0x809B75AC 44073000 */ mfc1	$a3, $f6
/* 005424 0x809B75B0 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 005425 0x809B75B4 00000000 */ nop
/* 005426 0x809B75B8 3C02801F */ lui	$v0, %hi(gStaticContext)
/* 005427 0x809B75BC 8C423F60 */ lw	$v0, %lo(gStaticContext)($v0)
/* 005428 0x809B75C0 8E030684 */ lw	$v1, 0X684($s0)
/* 005429 0x809B75C4 844C0CA4 */ lh	$t4, 0XCA4($v0)
.L809B75C8:
/* 005430 0x809B75C8 8FA4003C */ lw	$a0, 0X3C($sp)
/* 005431 0x809B75CC 00002825 */ move	$a1, $zero
/* 005432 0x809B75D0 258D005A */ addiu	$t5, $t4, 0X5A
/* 005433 0x809B75D4 006D082B */ sltu	$at, $v1, $t5
/* 005434 0x809B75D8 14200035 */ bnez	$at, .L809B76B0
/* 005435 0x809B75DC 248E1F24 */ addiu	$t6, $a0, 0X1F24
/* 005436 0x809B75E0 0C05A5B5 */ jal	Play_GetCamera
/* 005437 0x809B75E4 AFAE0024 */ sw	$t6, 0X24($sp)
/* 005438 0x809B75E8 A6000688 */ sh	$zero, 0X688($s0)
/* 005439 0x809B75EC AFA20030 */ sw	$v0, 0X30($sp)
/* 005440 0x809B75F0 8FA5003C */ lw	$a1, 0X3C($sp)
/* 005441 0x809B75F4 0C26CFA7 */ jal	func_809B3E9C
/* 005442 0x809B75F8 02002025 */ move	$a0, $s0
/* 005443 0x809B75FC 8FA30030 */ lw	$v1, 0X30($sp)
/* 005444 0x809B7600 8E190004 */ lw	$t9, 0X4($s0)
/* 005445 0x809B7604 3C01BFC0 */ lui	$at, 0xBFC0
/* 005446 0x809B7608 44814000 */ mtc1	$at, $f8
/* 005447 0x809B760C 240F012C */ li	$t7, 0X12C
/* 005448 0x809B7610 24180001 */ li	$t8, 0X1
/* 005449 0x809B7614 37280001 */ ori	$t0, $t9, 0X1
/* 005450 0x809B7618 A60F014E */ sh	$t7, 0X14E($s0)
/* 005451 0x809B761C A2180152 */ sb	$t8, 0X152($s0)
/* 005452 0x809B7620 AE080004 */ sw	$t0, 0X4($s0)
/* 005453 0x809B7624 2607068C */ addiu	$a3, $s0, 0X68C
/* 005454 0x809B7628 E6080074 */ swc1	$f8, 0X74($s0)
/* 005455 0x809B762C 8CEA0000 */ lw	$t2, 0X0($a3)
/* 005456 0x809B7630 00003025 */ move	$a2, $zero
/* 005457 0x809B7634 AC6A005C */ sw	$t2, 0X5C($v1)
/* 005458 0x809B7638 8CE90004 */ lw	$t1, 0X4($a3)
/* 005459 0x809B763C AC690060 */ sw	$t1, 0X60($v1)
/* 005460 0x809B7640 8CEA0008 */ lw	$t2, 0X8($a3)
/* 005461 0x809B7644 AC6A0064 */ sw	$t2, 0X64($v1)
/* 005462 0x809B7648 8CEC0000 */ lw	$t4, 0X0($a3)
/* 005463 0x809B764C AC6C0074 */ sw	$t4, 0X74($v1)
/* 005464 0x809B7650 8CEB0004 */ lw	$t3, 0X4($a3)
/* 005465 0x809B7654 AC6B0078 */ sw	$t3, 0X78($v1)
/* 005466 0x809B7658 8CEC0008 */ lw	$t4, 0X8($a3)
/* 005467 0x809B765C AC6C007C */ sw	$t4, 0X7C($v1)
/* 005468 0x809B7660 8E0E0698 */ lw	$t6, 0X698($s0)
/* 005469 0x809B7664 AC6E0050 */ sw	$t6, 0X50($v1)
/* 005470 0x809B7668 8E0D069C */ lw	$t5, 0X69C($s0)
/* 005471 0x809B766C AC6D0054 */ sw	$t5, 0X54($v1)
/* 005472 0x809B7670 8E0E06A0 */ lw	$t6, 0X6A0($s0)
/* 005473 0x809B7674 AC6E0058 */ sw	$t6, 0X58($v1)
/* 005474 0x809B7678 8605068A */ lh	$a1, 0X68A($s0)
/* 005475 0x809B767C 0C05A6BF */ jal	func_80169AFC
/* 005476 0x809B7680 8FA4003C */ lw	$a0, 0X3C($sp)
/* 005477 0x809B7684 A600068A */ sh	$zero, 0X68A($s0)
/* 005478 0x809B7688 8FA50024 */ lw	$a1, 0X24($sp)
/* 005479 0x809B768C 0C03A83B */ jal	func_800EA0EC
/* 005480 0x809B7690 8FA4003C */ lw	$a0, 0X3C($sp)
/* 005481 0x809B7694 8FA4003C */ lw	$a0, 0X3C($sp)
/* 005482 0x809B7698 02002825 */ move	$a1, $s0
/* 005483 0x809B769C 0C02DCA6 */ jal	func_800B7298
/* 005484 0x809B76A0 24060006 */ li	$a2, 0X6
/* 005485 0x809B76A4 240F0001 */ li	$t7, 0X1
/* 005486 0x809B76A8 3C01809C */ lui	$at, %hi(D_809BDB00)
/* 005487 0x809B76AC A02FDB00 */ sb	$t7, %lo(D_809BDB00)($at)
.L809B76B0:
/* 005488 0x809B76B0 8618068A */ lh	$t8, 0X68A($s0)
.L809B76B4:
/* 005489 0x809B76B4 2404001B */ li	$a0, 0X1B
/* 005490 0x809B76B8 2607068C */ addiu	$a3, $s0, 0X68C
/* 005491 0x809B76BC 1300000D */ beqz	$t8, .L809B76F4
/* 005492 0x809B76C0 26190698 */ addiu	$t9, $s0, 0X698
/* 005493 0x809B76C4 AFB90020 */ sw	$t9, 0X20($sp)
/* 005494 0x809B76C8 0C058300 */ jal	ShrinkWindow_SetLetterboxTarget
/* 005495 0x809B76CC AFA70024 */ sw	$a3, 0X24($sp)
/* 005496 0x809B76D0 8FA70024 */ lw	$a3, 0X24($sp)
/* 005497 0x809B76D4 8FA4003C */ lw	$a0, 0X3C($sp)
/* 005498 0x809B76D8 8605068A */ lh	$a1, 0X68A($s0)
/* 005499 0x809B76DC 0C05A5C3 */ jal	func_8016970C
/* 005500 0x809B76E0 8FA60020 */ lw	$a2, 0X20($sp)
/* 005501 0x809B76E4 8FA4003C */ lw	$a0, 0X3C($sp)
/* 005502 0x809B76E8 8605068A */ lh	$a1, 0X68A($s0)
/* 005503 0x809B76EC 0C05A650 */ jal	func_80169940
/* 005504 0x809B76F0 8E0606B0 */ lw	$a2, 0X6B0($s0)
.L809B76F4:
/* 005505 0x809B76F4 8FBF001C */ lw	$ra, 0X1C($sp)
/* 005506 0x809B76F8 8FB00018 */ lw	$s0, 0X18($sp)
/* 005507 0x809B76FC 27BD0038 */ addiu	$sp, $sp, 0X38
/* 005508 0x809B7700 03E00008 */ jr	$ra
/* 005509 0x809B7704 00000000 */ nop


.section .late_rodata

glabel D_809BDE5C
/* 012123 0x809BDE5C */ .word	0x44A7C000
glabel D_809BDE60
/* 012124 0x809BDE60 */ .word	0x452FA000
glabel D_809BDE64
/* 012125 0x809BDE64 */ .word	0x45336000
glabel D_809BDE68
/* 012126 0x809BDE68 */ .word	0x449CA000
glabel D_809BDE6C
/* 012127 0x809BDE6C */ .word	0x45357000
glabel D_809BDE70
/* 012128 0x809BDE70 */ .word	0x44A94000
glabel D_809BDE74
/* 012129 0x809BDE74 */ .word	0x45331000
glabel D_809BDE78
/* 012130 0x809BDE78 */ .word	0x3A83126F
glabel D_809BDE7C
/* 012131 0x809BDE7C */ .word	0x3D4CCCCD
glabel D_809BDE80
/* 012132 0x809BDE80 */ .word	0x3C8F5C29
glabel D_809BDE84
/* 012133 0x809BDE84 */ .word	0x3DCCCCCD
