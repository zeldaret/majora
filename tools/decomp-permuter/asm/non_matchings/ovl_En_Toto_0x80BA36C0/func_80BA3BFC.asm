glabel func_80BA3BFC
/* 000335 0x80BA3BFC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000336 0x80BA3C00 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000337 0x80BA3C04 00803825 */ move	$a3, $a0
/* 000338 0x80BA3C08 00A03025 */ move	$a2, $a1
/* 000339 0x80BA3C0C 84CE00A4 */ lh	$t6, 0XA4($a2)
/* 000340 0x80BA3C10 24010012 */ li	$at, 0X12
/* 000341 0x80BA3C14 24E40144 */ addiu	$a0, $a3, 0X144
/* 000342 0x80BA3C18 15C10008 */ bne	$t6, $at, .L80BA3C3C
/* 000343 0x80BA3C1C 3C050600 */ lui	$a1, 0x0600
/* 000344 0x80BA3C20 24A50C80 */ addiu	$a1, $a1, 0XC80
/* 000345 0x80BA3C24 3C06C080 */ lui	$a2, 0xC080
/* 000346 0x80BA3C28 0C04DD22 */ jal	SkelAnime_ChangeAnimTransitionStop
/* 000347 0x80BA3C2C AFA70018 */ sw	$a3, 0X18($sp)
/* 000348 0x80BA3C30 8FA70018 */ lw	$a3, 0X18($sp)
/* 000349 0x80BA3C34 10000010 */ b	.L80BA3C78
/* 000350 0x80BA3C38 A0E002B4 */ sb	$zero, 0X2B4($a3)
.L80BA3C3C:
/* 000351 0x80BA3C3C 8CEF02B8 */ lw	$t7, 0X2B8($a3)
/* 000352 0x80BA3C40 24010004 */ li	$at, 0X4
/* 000353 0x80BA3C44 00C02025 */ move	$a0, $a2
/* 000354 0x80BA3C48 91F80000 */ lbu	$t8, 0X0($t7)
/* 000355 0x80BA3C4C 24050009 */ li	$a1, 0X9
/* 000356 0x80BA3C50 17010004 */ bne	$t8, $at, .L80BA3C64
/* 000357 0x80BA3C54 00000000 */ nop
/* 000358 0x80BA3C58 0C0546ED */ jal	func_80151BB4
/* 000359 0x80BA3C5C AFA70018 */ sw	$a3, 0X18($sp)
/* 000360 0x80BA3C60 8FA70018 */ lw	$a3, 0X18($sp)
.L80BA3C64:
/* 000361 0x80BA3C64 3C050601 */ lui	$a1, 0x0601
/* 000362 0x80BA3C68 24A5B3E0 */ addiu	$a1, $a1, -0X4C20
/* 000363 0x80BA3C6C 24E40144 */ addiu	$a0, $a3, 0X144
/* 000364 0x80BA3C70 0C04DD65 */ jal	SkelAnime_ChangeAnimTransitionRepeat
/* 000365 0x80BA3C74 3C06C080 */ lui	$a2, 0xC080
.L80BA3C78:
/* 000366 0x80BA3C78 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000367 0x80BA3C7C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000368 0x80BA3C80 03E00008 */ jr	$ra
/* 000369 0x80BA3C84 00000000 */ nop

