glabel EnGs_Update
/* 002282 0x80999E38 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 002283 0x80999E3C AFB00018 */ sw	$s0, 0X18($sp)
/* 002284 0x80999E40 00808025 */ move	$s0, $a0
/* 002285 0x80999E44 AFBF001C */ sw	$ra, 0X1C($sp)
/* 002286 0x80999E48 AFA5003C */ sw	$a1, 0X3C($sp)
/* 002287 0x80999E4C 02002025 */ move	$a0, $s0
/* 002288 0x80999E50 0C02E134 */ jal	func_800B84D0
/* 002289 0x80999E54 8FA5003C */ lw	$a1, 0X3C($sp)
/* 002290 0x80999E58 1040000F */ beqz	$v0, .L80999E98
/* 002291 0x80999E5C 02002025 */ move	$a0, $s0
/* 002292 0x80999E60 8FA5003C */ lw	$a1, 0X3C($sp)
/* 002293 0x80999E64 3C010001 */ lui	$at, 0x0001
/* 002294 0x80999E68 02002025 */ move	$a0, $s0
/* 002295 0x80999E6C 00250821 */ addu	$at, $at, $a1
/* 002296 0x80999E70 A020682A */ sb	$zero, 0X682A($at)
/* 002297 0x80999E74 3C010001 */ lui	$at, 0x0001
/* 002298 0x80999E78 00250821 */ addu	$at, $at, $a1
/* 002299 0x80999E7C AC206818 */ sw	$zero, 0X6818($at)
/* 002300 0x80999E80 920E0155 */ lbu	$t6, 0X155($s0)
/* 002301 0x80999E84 31CFFFFD */ andi	$t7, $t6, 0XFFFD
/* 002302 0x80999E88 0C265F7B */ jal	func_80997DEC
/* 002303 0x80999E8C A20F0155 */ sb	$t7, 0X155($s0)
/* 002304 0x80999E90 1000007C */ b	.L8099A084
/* 002305 0x80999E94 8FBF001C */ lw	$ra, 0X1C($sp)
.L80999E98:
/* 002306 0x80999E98 0C02E1C6 */ jal	func_800B8718
/* 002307 0x80999E9C 8FA5003C */ lw	$a1, 0X3C($sp)
/* 002308 0x80999EA0 10400012 */ beqz	$v0, .L80999EEC
/* 002309 0x80999EA4 2401FFFF */ li	$at, -0X1
/* 002310 0x80999EA8 8618019A */ lh	$t8, 0X19A($s0)
/* 002311 0x80999EAC 92080155 */ lbu	$t0, 0X155($s0)
/* 002312 0x80999EB0 820A0038 */ lb	$t2, 0X38($s0)
/* 002313 0x80999EB4 37190200 */ ori	$t9, $t8, 0X200
/* 002314 0x80999EB8 3109FFFD */ andi	$t1, $t0, 0XFFFD
/* 002315 0x80999EBC A619019A */ sh	$t9, 0X19A($s0)
/* 002316 0x80999EC0 11410005 */ beq	$t2, $at, .L80999ED8
/* 002317 0x80999EC4 A2090155 */ sb	$t1, 0X155($s0)
/* 002318 0x80999EC8 3C0B8099 */ lui	$t3, %hi(func_80997FF0)
/* 002319 0x80999ECC 256B7FF0 */ addiu	$t3, $t3, %lo(func_80997FF0)
/* 002320 0x80999ED0 1000006B */ b	.L8099A080
/* 002321 0x80999ED4 AE0B0190 */ sw	$t3, 0X190($s0)
.L80999ED8:
/* 002322 0x80999ED8 02002025 */ move	$a0, $s0
/* 002323 0x80999EDC 0C266010 */ jal	func_80998040
/* 002324 0x80999EE0 8FA5003C */ lw	$a1, 0X3C($sp)
/* 002325 0x80999EE4 10000067 */ b	.L8099A084
/* 002326 0x80999EE8 8FBF001C */ lw	$ra, 0X1C($sp)
.L80999EEC:
/* 002327 0x80999EEC 8E0C0004 */ lw	$t4, 0X4($s0)
/* 002328 0x80999EF0 02002025 */ move	$a0, $s0
/* 002329 0x80999EF4 318D0040 */ andi	$t5, $t4, 0X40
/* 002330 0x80999EF8 15A00007 */ bnez	$t5, .L80999F18
/* 002331 0x80999EFC 00000000 */ nop
/* 002332 0x80999F00 8602019A */ lh	$v0, 0X19A($s0)
/* 002333 0x80999F04 304E0100 */ andi	$t6, $v0, 0X100
/* 002334 0x80999F08 15C00003 */ bnez	$t6, .L80999F18
/* 002335 0x80999F0C 304F0200 */ andi	$t7, $v0, 0X200
/* 002336 0x80999F10 51E00024 */ beqzl	$t7, .L80999FA4
/* 002337 0x80999F14 A6000216 */ sh	$zero, 0X216($s0)
.L80999F18:
/* 002338 0x80999F18 0C2666F2 */ jal	func_80999BC8
/* 002339 0x80999F1C 8FA5003C */ lw	$a1, 0X3C($sp)
/* 002340 0x80999F20 8FA4003C */ lw	$a0, 0X3C($sp)
/* 002341 0x80999F24 02002825 */ move	$a1, $s0
/* 002342 0x80999F28 27A6002E */ addiu	$a2, $sp, 0X2E
/* 002343 0x80999F2C 0C02E226 */ jal	func_800B8898
/* 002344 0x80999F30 27A7002C */ addiu	$a3, $sp, 0X2C
/* 002345 0x80999F34 3C01809A */ lui	$at, %hi(D_8099A578)
/* 002346 0x80999F38 C424A578 */ lwc1	$f4, %lo(D_8099A578)($at)
/* 002347 0x80999F3C C6060094 */ lwc1	$f6, 0X94($s0)
/* 002348 0x80999F40 87A2002E */ lh	$v0, 0X2E($sp)
/* 002349 0x80999F44 4606203C */ c.lt.s	$f4, $f6
/* 002350 0x80999F48 00000000 */ nop
/* 002351 0x80999F4C 45010009 */ bc1t .L80999F74
/* 002352 0x80999F50 00000000 */ nop
/* 002353 0x80999F54 04400007 */ bltz	$v0, .L80999F74
/* 002354 0x80999F58 28410141 */ slti	$at, $v0, 0X141
/* 002355 0x80999F5C 10200005 */ beqz	$at, .L80999F74
/* 002356 0x80999F60 87A2002C */ lh	$v0, 0X2C($sp)
/* 002357 0x80999F64 04400003 */ bltz	$v0, .L80999F74
/* 002358 0x80999F68 284100F1 */ slti	$at, $v0, 0XF1
/* 002359 0x80999F6C 54200004 */ bnezl	$at, .L80999F80
/* 002360 0x80999F70 8606021C */ lh	$a2, 0X21C($s0)
.L80999F74:
/* 002361 0x80999F74 1000000B */ b	.L80999FA4
/* 002362 0x80999F78 A6000216 */ sh	$zero, 0X216($s0)
/* 002363 0x80999F7C 8606021C */ lh	$a2, 0X21C($s0)
.L80999F80:
/* 002364 0x80999F80 02002025 */ move	$a0, $s0
/* 002365 0x80999F84 8FA5003C */ lw	$a1, 0X3C($sp)
/* 002366 0x80999F88 58C00007 */ blezl	$a2, .L80999FA8
/* 002367 0x80999F8C 3C013F80 */ lui	$at, 0x3F80
/* 002368 0x80999F90 0C02F212 */ jal	func_800BC848
/* 002369 0x80999F94 8607021E */ lh	$a3, 0X21E($s0)
/* 002370 0x80999F98 10000003 */ b	.L80999FA8
/* 002371 0x80999F9C 3C013F80 */ lui	$at, 0x3F80
/* 002372 0x80999FA0 A6000216 */ sh	$zero, 0X216($s0)
.L80999FA4:
/* 002373 0x80999FA4 3C013F80 */ lui	$at, 0x3F80
.L80999FA8:
/* 002374 0x80999FA8 44810000 */ mtc1	$at, $f0
/* 002375 0x80999FAC C6080200 */ lwc1	$f8, 0X200($s0)
/* 002376 0x80999FB0 4600403C */ c.lt.s	$f8, $f0
/* 002377 0x80999FB4 00000000 */ nop
/* 002378 0x80999FB8 4502002C */ bc1fl .L8099A06C
/* 002379 0x80999FBC 860A021C */ lh	$t2, 0X21C($s0)
/* 002380 0x80999FC0 8618019A */ lh	$t8, 0X19A($s0)
/* 002381 0x80999FC4 26040200 */ addiu	$a0, $s0, 0X200
/* 002382 0x80999FC8 3C063CA3 */ lui	$a2, 0x3CA3
/* 002383 0x80999FCC 33190004 */ andi	$t9, $t8, 0X4
/* 002384 0x80999FD0 53200009 */ beqzl	$t9, .L80999FF8
/* 002385 0x80999FD4 44050000 */ mfc1	$a1, $f0
/* 002386 0x80999FD8 44050000 */ mfc1	$a1, $f0
/* 002387 0x80999FDC 3C063D75 */ lui	$a2, 0x3D75
/* 002388 0x80999FE0 34C6C28F */ ori	$a2, $a2, 0XC28F
/* 002389 0x80999FE4 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 002390 0x80999FE8 26040200 */ addiu	$a0, $s0, 0X200
/* 002391 0x80999FEC 10000005 */ b	.L8099A004
/* 002392 0x80999FF0 82040194 */ lb	$a0, 0X194($s0)
/* 002393 0x80999FF4 44050000 */ mfc1	$a1, $f0
.L80999FF8:
/* 002394 0x80999FF8 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 002395 0x80999FFC 34C6D70A */ ori	$a2, $a2, 0XD70A
/* 002396 0x8099A000 82040194 */ lb	$a0, 0X194($s0)
.L8099A004:
/* 002397 0x8099A004 260501F7 */ addiu	$a1, $s0, 0X1F7
/* 002398 0x8099A008 0C265EBF */ jal	func_80997AFC
/* 002399 0x8099A00C AFA50020 */ sw	$a1, 0X20($sp)
/* 002400 0x8099A010 260401F4 */ addiu	$a0, $s0, 0X1F4
/* 002401 0x8099A014 8E060200 */ lw	$a2, 0X200($s0)
/* 002402 0x8099A018 260701FA */ addiu	$a3, $s0, 0X1FA
/* 002403 0x8099A01C 8FA50020 */ lw	$a1, 0X20($sp)
/* 002404 0x8099A020 AFA70024 */ sw	$a3, 0X24($sp)
/* 002405 0x8099A024 0C04006E */ jal	Lib_LerpRGB
/* 002406 0x8099A028 AFA40028 */ sw	$a0, 0X28($sp)
/* 002407 0x8099A02C 3C013F80 */ lui	$at, 0x3F80
/* 002408 0x8099A030 44818000 */ mtc1	$at, $f16
/* 002409 0x8099A034 C60A0200 */ lwc1	$f10, 0X200($s0)
/* 002410 0x8099A038 8FA40028 */ lw	$a0, 0X28($sp)
/* 002411 0x8099A03C 8FA70024 */ lw	$a3, 0X24($sp)
/* 002412 0x8099A040 460A803E */ c.le.s	$f16, $f10
/* 002413 0x8099A044 00000000 */ nop
/* 002414 0x8099A048 45020008 */ bc1fl .L8099A06C
/* 002415 0x8099A04C 860A021C */ lh	$t2, 0X21C($s0)
/* 002416 0x8099A050 90E90000 */ lbu	$t1, 0X0($a3)
/* 002417 0x8099A054 A0890000 */ sb	$t1, 0X0($a0)
/* 002418 0x8099A058 90E80001 */ lbu	$t0, 0X1($a3)
/* 002419 0x8099A05C A0880001 */ sb	$t0, 0X1($a0)
/* 002420 0x8099A060 90E90002 */ lbu	$t1, 0X2($a3)
/* 002421 0x8099A064 A0890002 */ sb	$t1, 0X2($a0)
/* 002422 0x8099A068 860A021C */ lh	$t2, 0X21C($s0)
.L8099A06C:
/* 002423 0x8099A06C 19400002 */ blez	$t2, .L8099A078
/* 002424 0x8099A070 00000000 */ nop
/* 002425 0x8099A074 A600021C */ sh	$zero, 0X21C($s0)
.L8099A078:
/* 002426 0x8099A078 0C2666CD */ jal	func_80999B34
/* 002427 0x8099A07C 02002025 */ move	$a0, $s0
.L8099A080:
/* 002428 0x8099A080 8FBF001C */ lw	$ra, 0X1C($sp)
.L8099A084:
/* 002429 0x8099A084 8FB00018 */ lw	$s0, 0X18($sp)
/* 002430 0x8099A088 27BD0038 */ addiu	$sp, $sp, 0X38
/* 002431 0x8099A08C 03E00008 */ jr	$ra
/* 002432 0x8099A090 00000000 */ nop


.section .late_rodata

glabel D_8099A578
/* 002746 0x8099A578 */ .word	0x481C4000
