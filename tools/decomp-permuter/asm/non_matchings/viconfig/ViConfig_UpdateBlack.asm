glabel ViConfig_UpdateBlack
/* 000442 0x80080748 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000443 0x8008074C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000444 0x80080750 3C0E8009 */ lui	$t6, %hi(gViConfigUseDefault)
/* 000445 0x80080754 25CE6B24 */ addiu	$t6, $t6, %lo(gViConfigUseDefault)
/* 000446 0x80080758 91CF0000 */ lbu	$t7, 0X0($t6)
/* 000447 0x8008075C 11E00005 */ beqz	$t7, .L80080774
/* 000448 0x80080760 00000000 */ nop
/* 000449 0x80080764 0C022B9C */ jal	osViBlack
/* 000450 0x80080768 24040001 */ li	$a0, 0X1
/* 000451 0x8008076C 10000004 */ b	.L80080780
/* 000452 0x80080770 8FBF0014 */ lw	$ra, 0X14($sp)
.L80080774:
/* 000453 0x80080774 0C022B9C */ jal	osViBlack
/* 000454 0x80080778 00002025 */ move	$a0, $zero
/* 000455 0x8008077C 8FBF0014 */ lw	$ra, 0X14($sp)
.L80080780:
/* 000456 0x80080780 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000457 0x80080784 03E00008 */ jr	$ra
/* 000458 0x80080788 00000000 */ nop
/* 000459 0x8008078C 00000000 */ nop
