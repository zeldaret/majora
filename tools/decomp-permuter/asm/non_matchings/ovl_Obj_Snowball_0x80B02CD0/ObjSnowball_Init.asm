glabel ObjSnowball_Init
/* 001261 0x80B04084 27BDFFA0 */ addiu	$sp, $sp, -0X60
/* 001262 0x80B04088 AFB00028 */ sw	$s0, 0X28($sp)
/* 001263 0x80B0408C 00808025 */ move	$s0, $a0
/* 001264 0x80B04090 AFBF002C */ sw	$ra, 0X2C($sp)
/* 001265 0x80B04094 F7B40020 */ sdc1	$f20, 0X20($sp)
/* 001266 0x80B04098 AFA50064 */ sw	$a1, 0X64($sp)
/* 001267 0x80B0409C 860E0016 */ lh	$t6, 0X16($s0)
/* 001268 0x80B040A0 3C0580B0 */ lui	$a1, %hi(D_80B04FD4)
/* 001269 0x80B040A4 24A54FD4 */ addiu	$a1, $a1, %lo(D_80B04FD4)
/* 001270 0x80B040A8 02002025 */ move	$a0, $s0
/* 001271 0x80B040AC 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 001272 0x80B040B0 AFAE0040 */ sw	$t6, 0X40($sp)
/* 001273 0x80B040B4 8FA30040 */ lw	$v1, 0X40($sp)
/* 001274 0x80B040B8 3C013F80 */ lui	$at, 0x3F80
/* 001275 0x80B040BC 38630001 */ xori	$v1, $v1, 0X1
/* 001276 0x80B040C0 2C630001 */ sltiu	$v1, $v1, 0X1
/* 001277 0x80B040C4 50600006 */ beqzl	$v1, .L80B040E0
/* 001278 0x80B040C8 4481A000 */ mtc1	$at, $f20
/* 001279 0x80B040CC 3C013FC0 */ lui	$at, 0x3FC0
/* 001280 0x80B040D0 4481A000 */ mtc1	$at, $f20
/* 001281 0x80B040D4 10000003 */ b	.L80B040E4
/* 001282 0x80B040D8 00000000 */ nop
/* 001283 0x80B040DC 4481A000 */ mtc1	$at, $f20
.L80B040E0:
/* 001284 0x80B040E0 00000000 */ nop
.L80B040E4:
/* 001285 0x80B040E4 3C0180B0 */ lui	$at, %hi(D_80B05044)
/* 001286 0x80B040E8 C4245044 */ lwc1	$f4, %lo(D_80B05044)($at)
/* 001287 0x80B040EC 02002025 */ move	$a0, $s0
/* 001288 0x80B040F0 AFA30034 */ sw	$v1, 0X34($sp)
/* 001289 0x80B040F4 46142182 */ mul.s	$f6, $f4, $f20
/* 001290 0x80B040F8 44053000 */ mfc1	$a1, $f6
/* 001291 0x80B040FC 0C02D9F8 */ jal	Actor_SetScale
/* 001292 0x80B04100 00000000 */ nop
/* 001293 0x80B04104 3C0141A0 */ lui	$at, 0x41A0
/* 001294 0x80B04108 44815000 */ mtc1	$at, $f10
/* 001295 0x80B0410C 3C014316 */ lui	$at, 0x4316
/* 001296 0x80B04110 44812000 */ mtc1	$at, $f4
/* 001297 0x80B04114 46145402 */ mul.s	$f16, $f10, $f20
/* 001298 0x80B04118 C6080028 */ lwc1	$f8, 0X28($s0)
/* 001299 0x80B0411C 3C014396 */ lui	$at, 0x4396
/* 001300 0x80B04120 46142182 */ mul.s	$f6, $f4, $f20
/* 001301 0x80B04124 44815000 */ mtc1	$at, $f10
/* 001302 0x80B04128 A60000BC */ sh	$zero, 0XBC($s0)
/* 001303 0x80B0412C A60000C0 */ sh	$zero, 0XC0($s0)
/* 001304 0x80B04130 46104480 */ add.s	$f18, $f8, $f16
/* 001305 0x80B04134 46145202 */ mul.s	$f8, $f10, $f20
/* 001306 0x80B04138 E6060100 */ swc1	$f6, 0X100($s0)
/* 001307 0x80B0413C E6120028 */ swc1	$f18, 0X28($s0)
/* 001308 0x80B04140 0C021BE8 */ jal	rand
/* 001309 0x80B04144 E6080104 */ swc1	$f8, 0X104($s0)
/* 001310 0x80B04148 8FA30034 */ lw	$v1, 0X34($sp)
/* 001311 0x80B0414C 00027C02 */ srl	$t7, $v0, 16
/* 001312 0x80B04150 A60F00BE */ sh	$t7, 0XBE($s0)
/* 001313 0x80B04154 1060000E */ beqz	$v1, .L80B04190
/* 001314 0x80B04158 E614020C */ swc1	$f20, 0X20C($s0)
/* 001315 0x80B0415C 8E190004 */ lw	$t9, 0X4($s0)
/* 001316 0x80B04160 24180238 */ li	$t8, 0X238
/* 001317 0x80B04164 A6180116 */ sh	$t8, 0X116($s0)
/* 001318 0x80B04168 37290001 */ ori	$t1, $t9, 0X1
/* 001319 0x80B0416C AE090004 */ sw	$t1, 0X4($s0)
/* 001320 0x80B04170 3C0180B0 */ lui	$at, %hi(D_80B05048)
/* 001321 0x80B04174 C4305048 */ lwc1	$f16, %lo(D_80B05048)($at)
/* 001322 0x80B04178 02002025 */ move	$a0, $s0
/* 001323 0x80B0417C 3C0541C0 */ lui	$a1, 0x41C0
/* 001324 0x80B04180 0C02D9D7 */ jal	Actor_SetHeight
/* 001325 0x80B04184 E6100054 */ swc1	$f16, 0X54($s0)
/* 001326 0x80B04188 240A0003 */ li	$t2, 0X3
/* 001327 0x80B0418C A20A001F */ sb	$t2, 0X1F($s0)
.L80B04190:
/* 001328 0x80B04190 26050144 */ addiu	$a1, $s0, 0X144
/* 001329 0x80B04194 AFA50034 */ sw	$a1, 0X34($sp)
/* 001330 0x80B04198 0C0382D3 */ jal	Collision_InitSphereGroupDefault
/* 001331 0x80B0419C 8FA40064 */ lw	$a0, 0X64($sp)
/* 001332 0x80B041A0 3C0780B0 */ lui	$a3, %hi(D_80B04F74)
/* 001333 0x80B041A4 260B0164 */ addiu	$t3, $s0, 0X164
/* 001334 0x80B041A8 8FA50034 */ lw	$a1, 0X34($sp)
/* 001335 0x80B041AC AFAB0010 */ sw	$t3, 0X10($sp)
/* 001336 0x80B041B0 24E74F74 */ addiu	$a3, $a3, %lo(D_80B04F74)
/* 001337 0x80B041B4 8FA40064 */ lw	$a0, 0X64($sp)
/* 001338 0x80B041B8 0C038398 */ jal	Collision_InitSphereGroupWithData
/* 001339 0x80B041BC 02003025 */ move	$a2, $s0
/* 001340 0x80B041C0 C6120024 */ lwc1	$f18, 0X24($s0)
/* 001341 0x80B041C4 8E030160 */ lw	$v1, 0X160($s0)
/* 001342 0x80B041C8 240C00FE */ li	$t4, 0XFE
/* 001343 0x80B041CC 4600910D */ trunc.w.s	$f4, $f18
/* 001344 0x80B041D0 A20C00B6 */ sb	$t4, 0XB6($s0)
/* 001345 0x80B041D4 3C0141F0 */ lui	$at, 0x41F0
/* 001346 0x80B041D8 27AD0048 */ addiu	$t5, $sp, 0X48
/* 001347 0x80B041DC 440E2000 */ mfc1	$t6, $f4
/* 001348 0x80B041E0 26050080 */ addiu	$a1, $s0, 0X80
/* 001349 0x80B041E4 27A60044 */ addiu	$a2, $sp, 0X44
/* 001350 0x80B041E8 A46E0030 */ sh	$t6, 0X30($v1)
/* 001351 0x80B041EC C6060028 */ lwc1	$f6, 0X28($s0)
/* 001352 0x80B041F0 02003825 */ move	$a3, $s0
/* 001353 0x80B041F4 24630030 */ addiu	$v1, $v1, 0X30
/* 001354 0x80B041F8 4600328D */ trunc.w.s	$f10, $f6
/* 001355 0x80B041FC 44185000 */ mfc1	$t8, $f10
/* 001356 0x80B04200 00000000 */ nop
/* 001357 0x80B04204 A4780002 */ sh	$t8, 0X2($v1)
/* 001358 0x80B04208 C608002C */ lwc1	$f8, 0X2C($s0)
/* 001359 0x80B0420C 4600440D */ trunc.w.s	$f16, $f8
/* 001360 0x80B04210 44098000 */ mfc1	$t1, $f16
/* 001361 0x80B04214 00000000 */ nop
/* 001362 0x80B04218 A4690004 */ sh	$t1, 0X4($v1)
/* 001363 0x80B0421C 8E080160 */ lw	$t0, 0X160($s0)
/* 001364 0x80B04220 850A002E */ lh	$t2, 0X2E($t0)
/* 001365 0x80B04224 C5060038 */ lwc1	$f6, 0X38($t0)
/* 001366 0x80B04228 448A9000 */ mtc1	$t2, $f18
/* 001367 0x80B0422C 00000000 */ nop
/* 001368 0x80B04230 46809120 */ cvt.s.w	$f4, $f18
/* 001369 0x80B04234 46062282 */ mul.s	$f10, $f4, $f6
/* 001370 0x80B04238 44813000 */ mtc1	$at, $f6
/* 001371 0x80B0423C 46145202 */ mul.s	$f8, $f10, $f20
/* 001372 0x80B04240 4600440D */ trunc.w.s	$f16, $f8
/* 001373 0x80B04244 440C8000 */ mfc1	$t4, $f16
/* 001374 0x80B04248 00000000 */ nop
/* 001375 0x80B0424C A46C0006 */ sh	$t4, 0X6($v1)
/* 001376 0x80B04250 C6120008 */ lwc1	$f18, 0X8($s0)
/* 001377 0x80B04254 8FA40064 */ lw	$a0, 0X64($sp)
/* 001378 0x80B04258 E7B20048 */ swc1	$f18, 0X48($sp)
/* 001379 0x80B0425C C604000C */ lwc1	$f4, 0XC($s0)
/* 001380 0x80B04260 24840830 */ addiu	$a0, $a0, 0X830
/* 001381 0x80B04264 46062280 */ add.s	$f10, $f4, $f6
/* 001382 0x80B04268 E7AA004C */ swc1	$f10, 0X4C($sp)
/* 001383 0x80B0426C C6080010 */ lwc1	$f8, 0X10($s0)
/* 001384 0x80B04270 AFAD0010 */ sw	$t5, 0X10($sp)
/* 001385 0x80B04274 0C031047 */ jal	func_800C411C
/* 001386 0x80B04278 E7A80050 */ swc1	$f8, 0X50($sp)
/* 001387 0x80B0427C 3C014120 */ lui	$at, 0x4120
/* 001388 0x80B04280 44819000 */ mtc1	$at, $f18
/* 001389 0x80B04284 C610000C */ lwc1	$f16, 0XC($s0)
/* 001390 0x80B04288 E6000088 */ swc1	$f0, 0X88($s0)
/* 001391 0x80B0428C 260400BC */ addiu	$a0, $s0, 0XBC
/* 001392 0x80B04290 46128101 */ sub.s	$f4, $f16, $f18
/* 001393 0x80B04294 24050000 */ li	$a1, 0X0
/* 001394 0x80B04298 00003025 */ move	$a2, $zero
/* 001395 0x80B0429C 4604003C */ c.lt.s	$f0, $f4
/* 001396 0x80B042A0 00000000 */ nop
/* 001397 0x80B042A4 45000003 */ bc1f .L80B042B4
/* 001398 0x80B042A8 00000000 */ nop
/* 001399 0x80B042AC 10000003 */ b	.L80B042BC
/* 001400 0x80B042B0 AE000080 */ sw	$zero, 0X80($s0)
.L80B042B4:
/* 001401 0x80B042B4 0C02CEE9 */ jal	Actor_SetDrawParams
/* 001402 0x80B042B8 3C074150 */ lui	$a3, 0x4150
.L80B042BC:
/* 001403 0x80B042BC 02002025 */ move	$a0, $s0
/* 001404 0x80B042C0 0C2C10CE */ jal	func_80B04338
/* 001405 0x80B042C4 8FA50064 */ lw	$a1, 0X64($sp)
/* 001406 0x80B042C8 8FAE0040 */ lw	$t6, 0X40($sp)
/* 001407 0x80B042CC 24010005 */ li	$at, 0X5
/* 001408 0x80B042D0 55C1000A */ bnel	$t6, $at, .L80B042FC
/* 001409 0x80B042D4 8FBF002C */ lw	$ra, 0X2C($sp)
/* 001410 0x80B042D8 8605001C */ lh	$a1, 0X1C($s0)
/* 001411 0x80B042DC 8FA40064 */ lw	$a0, 0X64($sp)
/* 001412 0x80B042E0 0C02D6EC */ jal	Actor_GetSwitchFlag
/* 001413 0x80B042E4 30A5003F */ andi	$a1, $a1, 0X3F
/* 001414 0x80B042E8 50400004 */ beqzl	$v0, .L80B042FC
/* 001415 0x80B042EC 8FBF002C */ lw	$ra, 0X2C($sp)
/* 001416 0x80B042F0 0C02D9C3 */ jal	Actor_MarkForDeath
/* 001417 0x80B042F4 02002025 */ move	$a0, $s0
/* 001418 0x80B042F8 8FBF002C */ lw	$ra, 0X2C($sp)
.L80B042FC:
/* 001419 0x80B042FC D7B40020 */ ldc1	$f20, 0X20($sp)
/* 001420 0x80B04300 8FB00028 */ lw	$s0, 0X28($sp)
/* 001421 0x80B04304 03E00008 */ jr	$ra
/* 001422 0x80B04308 27BD0060 */ addiu	$sp, $sp, 0X60


.section .late_rodata

glabel D_80B05044
/* 002269 0x80B05044 */ .word	0x3DCCCCCD
glabel D_80B05048
/* 002270 0x80B05048 */ .word	0x43E95555
