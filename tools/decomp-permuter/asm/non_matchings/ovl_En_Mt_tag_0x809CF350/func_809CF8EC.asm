glabel func_809CF8EC
/* 000359 0x809CF8EC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000360 0x809CF8F0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000361 0x809CF8F4 AFA40018 */ sw	$a0, 0X18($sp)
/* 000362 0x809CF8F8 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000363 0x809CF8FC 3C01801F */ lui	$at, %hi(gSaveContext + 0x3DD4)
/* 000364 0x809CF900 A0203444 */ sb	$zero, %lo(gSaveContext + 0x3DD4)($at)
/* 000365 0x809CF904 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000366 0x809CF908 24050E95 */ li	$a1, 0XE95
/* 000367 0x809CF90C 0C05462C */ jal	func_801518B0
/* 000368 0x809CF910 00003025 */ move	$a2, $zero
/* 000369 0x809CF914 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000370 0x809CF918 8FA50018 */ lw	$a1, 0X18($sp)
/* 000371 0x809CF91C 0C02DCA6 */ jal	func_800B7298
/* 000372 0x809CF920 24060007 */ li	$a2, 0X7
/* 000373 0x809CF924 3C041014 */ lui	$a0, 0x1014
/* 000374 0x809CF928 0C06A26A */ jal	func_801A89A8
/* 000375 0x809CF92C 348400FF */ ori	$a0, $a0, 0XFF
/* 000376 0x809CF930 8FAF0018 */ lw	$t7, 0X18($sp)
/* 000377 0x809CF934 3C0E809D */ lui	$t6, %hi(func_809CFE28)
/* 000378 0x809CF938 25CEFE28 */ addiu	$t6, $t6, %lo(func_809CFE28)
/* 000379 0x809CF93C ADEE0144 */ sw	$t6, 0X144($t7)
/* 000380 0x809CF940 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000381 0x809CF944 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000382 0x809CF948 03E00008 */ jr	$ra
/* 000383 0x809CF94C 00000000 */ nop

