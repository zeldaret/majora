glabel EnCrow_Draw
/* 001309 0x8099BFA4 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 001310 0x8099BFA8 AFB00028 */ sw	$s0, 0X28($sp)
/* 001311 0x8099BFAC 00808025 */ move	$s0, $a0
/* 001312 0x8099BFB0 AFBF002C */ sw	$ra, 0X2C($sp)
/* 001313 0x8099BFB4 AFA50034 */ sw	$a1, 0X34($sp)
/* 001314 0x8099BFB8 8FAE0034 */ lw	$t6, 0X34($sp)
/* 001315 0x8099BFBC 0C04B0A3 */ jal	func_8012C28C
/* 001316 0x8099BFC0 8DC40000 */ lw	$a0, 0X0($t6)
/* 001317 0x8099BFC4 8E050148 */ lw	$a1, 0X148($s0)
/* 001318 0x8099BFC8 8E060164 */ lw	$a2, 0X164($s0)
/* 001319 0x8099BFCC 92070146 */ lbu	$a3, 0X146($s0)
/* 001320 0x8099BFD0 3C0F809A */ lui	$t7, %hi(func_8099BE48)
/* 001321 0x8099BFD4 3C18809A */ lui	$t8, %hi(func_8099BF20)
/* 001322 0x8099BFD8 2718BF20 */ addiu	$t8, $t8, %lo(func_8099BF20)
/* 001323 0x8099BFDC 25EFBE48 */ addiu	$t7, $t7, %lo(func_8099BE48)
/* 001324 0x8099BFE0 AFAF0010 */ sw	$t7, 0X10($sp)
/* 001325 0x8099BFE4 AFB80014 */ sw	$t8, 0X14($sp)
/* 001326 0x8099BFE8 AFB00018 */ sw	$s0, 0X18($sp)
/* 001327 0x8099BFEC 0C04CFCA */ jal	SkelAnime_DrawSV
/* 001328 0x8099BFF0 8FA40034 */ lw	$a0, 0X34($sp)
/* 001329 0x8099BFF4 3C0142C8 */ lui	$at, 0x42C8
/* 001330 0x8099BFF8 44813000 */ mtc1	$at, $f6
/* 001331 0x8099BFFC C6040058 */ lwc1	$f4, 0X58($s0)
/* 001332 0x8099C000 C60A0294 */ lwc1	$f10, 0X294($s0)
/* 001333 0x8099C004 8FA40034 */ lw	$a0, 0X34($sp)
/* 001334 0x8099C008 46062202 */ mul.s	$f8, $f4, $f6
/* 001335 0x8099C00C 02002825 */ move	$a1, $s0
/* 001336 0x8099C010 26060260 */ addiu	$a2, $s0, 0X260
/* 001337 0x8099C014 24070004 */ li	$a3, 0X4
/* 001338 0x8099C018 460A4402 */ mul.s	$f16, $f8, $f10
/* 001339 0x8099C01C E7B00010 */ swc1	$f16, 0X10($sp)
/* 001340 0x8099C020 C6120298 */ lwc1	$f18, 0X298($s0)
/* 001341 0x8099C024 E7B20014 */ swc1	$f18, 0X14($sp)
/* 001342 0x8099C028 C6040290 */ lwc1	$f4, 0X290($s0)
/* 001343 0x8099C02C E7A40018 */ swc1	$f4, 0X18($sp)
/* 001344 0x8099C030 9219018C */ lbu	$t9, 0X18C($s0)
/* 001345 0x8099C034 0C02F9A0 */ jal	func_800BE680
/* 001346 0x8099C038 AFB9001C */ sw	$t9, 0X1C($sp)
/* 001347 0x8099C03C 8FBF002C */ lw	$ra, 0X2C($sp)
/* 001348 0x8099C040 8FB00028 */ lw	$s0, 0X28($sp)
/* 001349 0x8099C044 27BD0030 */ addiu	$sp, $sp, 0X30
/* 001350 0x8099C048 03E00008 */ jr	$ra
/* 001351 0x8099C04C 00000000 */ nop
