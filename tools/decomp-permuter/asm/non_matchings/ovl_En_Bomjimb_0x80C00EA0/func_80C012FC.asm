glabel func_80C012FC
/* 000279 0x80C012FC 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000280 0x80C01300 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000281 0x80C01304 00803025 */ move	$a2, $a0
/* 000282 0x80C01308 8CAE1CCC */ lw	$t6, 0X1CCC($a1)
/* 000283 0x80C0130C AFA60020 */ sw	$a2, 0X20($sp)
/* 000284 0x80C01310 AFA50024 */ sw	$a1, 0X24($sp)
/* 000285 0x80C01314 00A02025 */ move	$a0, $a1
/* 000286 0x80C01318 0C05A433 */ jal	func_801690CC
/* 000287 0x80C0131C AFAE001C */ sw	$t6, 0X1C($sp)
/* 000288 0x80C01320 8FA50024 */ lw	$a1, 0X24($sp)
/* 000289 0x80C01324 1440001E */ bnez	$v0, .L80C013A0
/* 000290 0x80C01328 8FA60020 */ lw	$a2, 0X20($sp)
/* 000291 0x80C0132C 3C014220 */ lui	$at, 0x4220
/* 000292 0x80C01330 44813000 */ mtc1	$at, $f6
/* 000293 0x80C01334 C4C40098 */ lwc1	$f4, 0X98($a2)
/* 000294 0x80C01338 8FAF001C */ lw	$t7, 0X1C($sp)
/* 000295 0x80C0133C 4606203C */ c.lt.s	$f4, $f6
/* 000296 0x80C01340 00000000 */ nop
/* 000297 0x80C01344 45020017 */ bc1fl .L80C013A4
/* 000298 0x80C01348 00001025 */ move	$v0, $zero
/* 000299 0x80C0134C C5E80028 */ lwc1	$f8, 0X28($t7)
/* 000300 0x80C01350 C4CA0028 */ lwc1	$f10, 0X28($a2)
/* 000301 0x80C01354 3C014248 */ lui	$at, 0x4248
/* 000302 0x80C01358 44818000 */ mtc1	$at, $f16
/* 000303 0x80C0135C 460A4001 */ sub.s	$f0, $f8, $f10
/* 000304 0x80C01360 3C180001 */ lui	$t8, 0x0001
/* 000305 0x80C01364 0305C021 */ addu	$t8, $t8, $a1
/* 000306 0x80C01368 46000005 */ abs.s	$f0, $f0
/* 000307 0x80C0136C 4610003C */ c.lt.s	$f0, $f16
/* 000308 0x80C01370 00000000 */ nop
/* 000309 0x80C01374 4502000B */ bc1fl .L80C013A4
/* 000310 0x80C01378 00001025 */ move	$v0, $zero
/* 000311 0x80C0137C 8F186818 */ lw	$t8, 0X6818($t8)
/* 000312 0x80C01380 57000008 */ bnezl	$t8, .L80C013A4
/* 000313 0x80C01384 00001025 */ move	$v0, $zero
/* 000314 0x80C01388 44809000 */ mtc1	$zero, $f18
/* 000315 0x80C0138C 00C02025 */ move	$a0, $a2
/* 000316 0x80C01390 0C3009D0 */ jal	func_80C02740
/* 000317 0x80C01394 E4D20070 */ swc1	$f18, 0X70($a2)
/* 000318 0x80C01398 10000002 */ b	.L80C013A4
/* 000319 0x80C0139C 24020001 */ li	$v0, 0X1
.L80C013A0:
/* 000320 0x80C013A0 00001025 */ move	$v0, $zero
.L80C013A4:
/* 000321 0x80C013A4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000322 0x80C013A8 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000323 0x80C013AC 03E00008 */ jr	$ra
/* 000324 0x80C013B0 00000000 */ nop

