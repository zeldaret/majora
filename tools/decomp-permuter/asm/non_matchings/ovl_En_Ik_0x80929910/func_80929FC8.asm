glabel func_80929FC8
/* 000430 0x80929FC8 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000431 0x80929FCC AFBF0014 */ sw	$ra, 0X14($sp)
/* 000432 0x80929FD0 00803825 */ move	$a3, $a0
/* 000433 0x80929FD4 3C050600 */ lui	$a1, 0x0600
/* 000434 0x80929FD8 24A56294 */ addiu	$a1, $a1, 0X6294
/* 000435 0x80929FDC 24E40144 */ addiu	$a0, $a3, 0X144
/* 000436 0x80929FE0 3C06C080 */ lui	$a2, 0xC080
/* 000437 0x80929FE4 0C04DD65 */ jal	SkelAnime_ChangeAnimTransitionRepeat
/* 000438 0x80929FE8 AFA70018 */ sw	$a3, 0X18($sp)
/* 000439 0x80929FEC 8FA70018 */ lw	$a3, 0X18($sp)
/* 000440 0x80929FF0 3C018093 */ lui	$at, %hi(D_8092C228)
/* 000441 0x80929FF4 C424C228 */ lwc1	$f4, %lo(D_8092C228)($at)
/* 000442 0x80929FF8 84EE00BE */ lh	$t6, 0XBE($a3)
/* 000443 0x80929FFC 3C0F8093 */ lui	$t7, %hi(func_8092A020)
/* 000444 0x8092A000 25EFA020 */ addiu	$t7, $t7, %lo(func_8092A020)
/* 000445 0x8092A004 ACEF02F0 */ sw	$t7, 0X2F0($a3)
/* 000446 0x8092A008 E4E40070 */ swc1	$f4, 0X70($a3)
/* 000447 0x8092A00C A4EE0032 */ sh	$t6, 0X32($a3)
/* 000448 0x8092A010 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000449 0x8092A014 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000450 0x8092A018 03E00008 */ jr	$ra
/* 000451 0x8092A01C 00000000 */ nop


.section .late_rodata

glabel D_8092C228
/* 002630 0x8092C228 */ .word	0x3F666666
