glabel func_80BD8040
/* 000356 0x80BD8040 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000357 0x80BD8044 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000358 0x80BD8048 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000359 0x80BD804C 00803825 */ move	$a3, $a0
/* 000360 0x80BD8050 00E02025 */ move	$a0, $a3
/* 000361 0x80BD8054 0C2F5F3B */ jal	func_80BD7CEC
/* 000362 0x80BD8058 AFA70018 */ sw	$a3, 0X18($sp)
/* 000363 0x80BD805C 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000364 0x80BD8060 10400004 */ beqz	$v0, .L80BD8074
/* 000365 0x80BD8064 8FA70018 */ lw	$a3, 0X18($sp)
/* 000366 0x80BD8068 3C0E80BD */ lui	$t6, %hi(func_80BD7FDC)
/* 000367 0x80BD806C 25CE7FDC */ addiu	$t6, $t6, %lo(func_80BD7FDC)
/* 000368 0x80BD8070 ACEE01AC */ sw	$t6, 0X1AC($a3)
.L80BD8074:
/* 000369 0x80BD8074 3C010001 */ lui	$at, 0x0001
/* 000370 0x80BD8078 34218884 */ ori	$at, $at, 0X8884
/* 000371 0x80BD807C 00812821 */ addu	$a1, $a0, $at
/* 000372 0x80BD8080 0C038A4A */ jal	Collision_AddOT
/* 000373 0x80BD8084 24E6015C */ addiu	$a2, $a3, 0X15C
/* 000374 0x80BD8088 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000375 0x80BD808C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000376 0x80BD8090 03E00008 */ jr	$ra
/* 000377 0x80BD8094 00000000 */ nop

