glabel func_80AE2074
/* 000321 0x80AE2074 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000322 0x80AE2078 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000323 0x80AE207C 00803025 */ move	$a2, $a0
/* 000324 0x80AE2080 8CC303A0 */ lw	$v1, 0X3A0($a2)
/* 000325 0x80AE2084 90C20379 */ lbu	$v0, 0X379($a2)
/* 000326 0x80AE2088 1860001C */ blez	$v1, .L80AE20FC
/* 000327 0x80AE208C 00000000 */ nop
/* 000328 0x80AE2090 84C5038A */ lh	$a1, 0X38A($a2)
/* 000329 0x80AE2094 0002C840 */ sll	$t9, $v0, 1
/* 000330 0x80AE2098 00401825 */ move	$v1, $v0
/* 000331 0x80AE209C 24A5FFFF */ addiu	$a1, $a1, -0X1
/* 000332 0x80AE20A0 10A20010 */ beq	$a1, $v0, .L80AE20E4
/* 000333 0x80AE20A4 00D94021 */ addu	$t0, $a2, $t9
/* 000334 0x80AE20A8 10A30043 */ beq	$a1, $v1, .L80AE21B8
/* 000335 0x80AE20AC 2404FFFF */ li	$a0, -0X1
/* 000336 0x80AE20B0 24420001 */ addiu	$v0, $v0, 0X1
.L80AE20B4:
/* 000337 0x80AE20B4 304200FF */ andi	$v0, $v0, 0XFF
/* 000338 0x80AE20B8 00027040 */ sll	$t6, $v0, 1
/* 000339 0x80AE20BC 00CE7821 */ addu	$t7, $a2, $t6
/* 000340 0x80AE20C0 85F80384 */ lh	$t8, 0X384($t7)
/* 000341 0x80AE20C4 10980003 */ beq	$a0, $t8, .L80AE20D4
/* 000342 0x80AE20C8 00000000 */ nop
/* 000343 0x80AE20CC 1000003A */ b	.L80AE21B8
/* 000344 0x80AE20D0 A0C20379 */ sb	$v0, 0X379($a2)
.L80AE20D4:
/* 000345 0x80AE20D4 54A2FFF7 */ bnel	$a1, $v0, .L80AE20B4
/* 000346 0x80AE20D8 24420001 */ addiu	$v0, $v0, 0X1
/* 000347 0x80AE20DC 10000037 */ b	.L80AE21BC
/* 000348 0x80AE20E0 8FBF0014 */ lw	$ra, 0X14($sp)
.L80AE20E4:
/* 000349 0x80AE20E4 85090384 */ lh	$t1, 0X384($t0)
/* 000350 0x80AE20E8 2404FFFF */ li	$a0, -0X1
/* 000351 0x80AE20EC 50890033 */ beql	$a0, $t1, .L80AE21BC
/* 000352 0x80AE20F0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000353 0x80AE20F4 10000030 */ b	.L80AE21B8
/* 000354 0x80AE20F8 A0C20379 */ sb	$v0, 0X379($a2)
.L80AE20FC:
/* 000355 0x80AE20FC 0463002F */ bgezl	$v1, .L80AE21BC
/* 000356 0x80AE2100 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000357 0x80AE2104 1040001B */ beqz	$v0, .L80AE2174
/* 000358 0x80AE2108 00401825 */ move	$v1, $v0
/* 000359 0x80AE210C 1060002A */ beqz	$v1, .L80AE21B8
/* 000360 0x80AE2110 2404FFFF */ li	$a0, -0X1
/* 000361 0x80AE2114 2442FFFF */ addiu	$v0, $v0, -0X1
.L80AE2118:
/* 000362 0x80AE2118 304200FF */ andi	$v0, $v0, 0XFF
/* 000363 0x80AE211C 00025040 */ sll	$t2, $v0, 1
/* 000364 0x80AE2120 00CA5821 */ addu	$t3, $a2, $t2
/* 000365 0x80AE2124 856C0384 */ lh	$t4, 0X384($t3)
/* 000366 0x80AE2128 108C0003 */ beq	$a0, $t4, .L80AE2138
/* 000367 0x80AE212C 00000000 */ nop
/* 000368 0x80AE2130 10000021 */ b	.L80AE21B8
/* 000369 0x80AE2134 A0C20379 */ sb	$v0, 0X379($a2)
.L80AE2138:
/* 000370 0x80AE2138 1440000A */ bnez	$v0, .L80AE2164
/* 000371 0x80AE213C 00401825 */ move	$v1, $v0
/* 000372 0x80AE2140 24044809 */ li	$a0, 0X4809
/* 000373 0x80AE2144 0C067C32 */ jal	play_sound
/* 000374 0x80AE2148 AFA60020 */ sw	$a2, 0X20($sp)
/* 000375 0x80AE214C 8FA60020 */ lw	$a2, 0X20($sp)
/* 000376 0x80AE2150 3C0D80AE */ lui	$t5, %hi(func_80AE4120)
/* 000377 0x80AE2154 25AD4120 */ addiu	$t5, $t5, %lo(func_80AE4120)
/* 000378 0x80AE2158 A0C003C9 */ sb	$zero, 0X3C9($a2)
/* 000379 0x80AE215C 10000016 */ b	.L80AE21B8
/* 000380 0x80AE2160 ACCD01D4 */ sw	$t5, 0X1D4($a2)
.L80AE2164:
/* 000381 0x80AE2164 5460FFEC */ bnezl	$v1, .L80AE2118
/* 000382 0x80AE2168 2442FFFF */ addiu	$v0, $v0, -0X1
/* 000383 0x80AE216C 10000013 */ b	.L80AE21BC
/* 000384 0x80AE2170 8FBF0014 */ lw	$ra, 0X14($sp)
.L80AE2174:
/* 000385 0x80AE2174 24044809 */ li	$a0, 0X4809
/* 000386 0x80AE2178 A3A2001F */ sb	$v0, 0X1F($sp)
/* 000387 0x80AE217C 0C067C32 */ jal	play_sound
/* 000388 0x80AE2180 AFA60020 */ sw	$a2, 0X20($sp)
/* 000389 0x80AE2184 8FA60020 */ lw	$a2, 0X20($sp)
/* 000390 0x80AE2188 93A2001F */ lbu	$v0, 0X1F($sp)
/* 000391 0x80AE218C 3C0E80AE */ lui	$t6, %hi(func_80AE4120)
/* 000392 0x80AE2190 25CE4120 */ addiu	$t6, $t6, %lo(func_80AE4120)
/* 000393 0x80AE2194 00027840 */ sll	$t7, $v0, 1
/* 000394 0x80AE2198 A0C003C9 */ sb	$zero, 0X3C9($a2)
/* 000395 0x80AE219C ACCE01D4 */ sw	$t6, 0X1D4($a2)
/* 000396 0x80AE21A0 00CFC021 */ addu	$t8, $a2, $t7
/* 000397 0x80AE21A4 87190384 */ lh	$t9, 0X384($t8)
/* 000398 0x80AE21A8 2404FFFF */ li	$a0, -0X1
/* 000399 0x80AE21AC 50990003 */ beql	$a0, $t9, .L80AE21BC
/* 000400 0x80AE21B0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000401 0x80AE21B4 A0C20379 */ sb	$v0, 0X379($a2)
.L80AE21B8:
/* 000402 0x80AE21B8 8FBF0014 */ lw	$ra, 0X14($sp)
.L80AE21BC:
/* 000403 0x80AE21BC 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000404 0x80AE21C0 03E00008 */ jr	$ra
/* 000405 0x80AE21C4 00000000 */ nop

