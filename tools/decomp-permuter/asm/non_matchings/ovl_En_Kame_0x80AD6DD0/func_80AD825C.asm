glabel func_80AD825C
/* 001315 0x80AD825C 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 001316 0x80AD8260 AFB00020 */ sw	$s0, 0X20($sp)
/* 001317 0x80AD8264 00808025 */ move	$s0, $a0
/* 001318 0x80AD8268 AFBF0024 */ sw	$ra, 0X24($sp)
/* 001319 0x80AD826C AFA5002C */ sw	$a1, 0X2C($sp)
/* 001320 0x80AD8270 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 001321 0x80AD8274 26040144 */ addiu	$a0, $s0, 0X144
/* 001322 0x80AD8278 960E0090 */ lhu	$t6, 0X90($s0)
/* 001323 0x80AD827C 31CF0001 */ andi	$t7, $t6, 0X1
/* 001324 0x80AD8280 51E0000F */ beqzl	$t7, .L80AD82C0
/* 001325 0x80AD8284 8618029E */ lh	$t8, 0X29E($s0)
/* 001326 0x80AD8288 C6040068 */ lwc1	$f4, 0X68($s0)
/* 001327 0x80AD828C 44803000 */ mtc1	$zero, $f6
/* 001328 0x80AD8290 02002025 */ move	$a0, $s0
/* 001329 0x80AD8294 4606203C */ c.lt.s	$f4, $f6
/* 001330 0x80AD8298 00000000 */ nop
/* 001331 0x80AD829C 45020008 */ bc1fl .L80AD82C0
/* 001332 0x80AD82A0 8618029E */ lh	$t8, 0X29E($s0)
/* 001333 0x80AD82A4 0C02E3B2 */ jal	func_800B8EC8
/* 001334 0x80AD82A8 240538DD */ li	$a1, 0X38DD
/* 001335 0x80AD82AC 0C2B60D9 */ jal	func_80AD8364
/* 001336 0x80AD82B0 02002025 */ move	$a0, $s0
/* 001337 0x80AD82B4 10000027 */ b	.L80AD8354
/* 001338 0x80AD82B8 8FBF0024 */ lw	$ra, 0X24($sp)
/* 001339 0x80AD82BC 8618029E */ lh	$t8, 0X29E($s0)
.L80AD82C0:
/* 001340 0x80AD82C0 24010001 */ li	$at, 0X1
/* 001341 0x80AD82C4 24190064 */ li	$t9, 0X64
/* 001342 0x80AD82C8 57010004 */ bnel	$t8, $at, .L80AD82DC
/* 001343 0x80AD82CC 9208011C */ lbu	$t0, 0X11C($s0)
/* 001344 0x80AD82D0 1000000A */ b	.L80AD82FC
/* 001345 0x80AD82D4 A219011C */ sb	$t9, 0X11C($s0)
/* 001346 0x80AD82D8 9208011C */ lbu	$t0, 0X11C($s0)
.L80AD82DC:
/* 001347 0x80AD82DC 02002025 */ move	$a0, $s0
/* 001348 0x80AD82E0 3405C000 */ ori	$a1, $zero, 0XC000
/* 001349 0x80AD82E4 15000005 */ bnez	$t0, .L80AD82FC
/* 001350 0x80AD82E8 240600FF */ li	$a2, 0XFF
/* 001351 0x80AD82EC 24090064 */ li	$t1, 0X64
/* 001352 0x80AD82F0 AFA90010 */ sw	$t1, 0X10($sp)
/* 001353 0x80AD82F4 0C02F2DC */ jal	func_800BCB70
/* 001354 0x80AD82F8 00003825 */ move	$a3, $zero
.L80AD82FC:
/* 001355 0x80AD82FC 24040700 */ li	$a0, 0X700
/* 001356 0x80AD8300 0C03FD14 */ jal	Math_Rand_S16Offset
/* 001357 0x80AD8304 24051400 */ li	$a1, 0X1400
/* 001358 0x80AD8308 860A00BC */ lh	$t2, 0XBC($s0)
/* 001359 0x80AD830C 3C0145A0 */ lui	$at, 0x45A0
/* 001360 0x80AD8310 44816000 */ mtc1	$at, $f12
/* 001361 0x80AD8314 01425821 */ addu	$t3, $t2, $v0
/* 001362 0x80AD8318 0C05E565 */ jal	randZeroOneScaled
/* 001363 0x80AD831C A60B00BC */ sh	$t3, 0XBC($s0)
/* 001364 0x80AD8320 4600020D */ trunc.w.s	$f8, $f0
/* 001365 0x80AD8324 860C00BE */ lh	$t4, 0XBE($s0)
/* 001366 0x80AD8328 24040700 */ li	$a0, 0X700
/* 001367 0x80AD832C 24051400 */ li	$a1, 0X1400
/* 001368 0x80AD8330 44184000 */ mfc1	$t8, $f8
/* 001369 0x80AD8334 00000000 */ nop
/* 001370 0x80AD8338 0198C821 */ addu	$t9, $t4, $t8
/* 001371 0x80AD833C 0C03FD14 */ jal	Math_Rand_S16Offset
/* 001372 0x80AD8340 A61900BE */ sh	$t9, 0XBE($s0)
/* 001373 0x80AD8344 860800C0 */ lh	$t0, 0XC0($s0)
/* 001374 0x80AD8348 01024821 */ addu	$t1, $t0, $v0
/* 001375 0x80AD834C A60900C0 */ sh	$t1, 0XC0($s0)
/* 001376 0x80AD8350 8FBF0024 */ lw	$ra, 0X24($sp)
.L80AD8354:
/* 001377 0x80AD8354 8FB00020 */ lw	$s0, 0X20($sp)
/* 001378 0x80AD8358 27BD0028 */ addiu	$sp, $sp, 0X28
/* 001379 0x80AD835C 03E00008 */ jr	$ra
/* 001380 0x80AD8360 00000000 */ nop

