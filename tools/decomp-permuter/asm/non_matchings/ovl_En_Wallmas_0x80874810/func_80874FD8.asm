glabel func_80874FD8
/* 000498 0x80874FD8 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000499 0x80874FDC AFBF0014 */ sw	$ra, 0X14($sp)
/* 000500 0x80874FE0 AFA40018 */ sw	$a0, 0X18($sp)
/* 000501 0x80874FE4 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000502 0x80874FE8 8FA40018 */ lw	$a0, 0X18($sp)
/* 000503 0x80874FEC 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 000504 0x80874FF0 24840144 */ addiu	$a0, $a0, 0X144
/* 000505 0x80874FF4 50400004 */ beqzl	$v0, .L80875008
/* 000506 0x80874FF8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000507 0x80874FFC 0C21D405 */ jal	func_80875014
/* 000508 0x80875000 8FA40018 */ lw	$a0, 0X18($sp)
/* 000509 0x80875004 8FBF0014 */ lw	$ra, 0X14($sp)
.L80875008:
/* 000510 0x80875008 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000511 0x8087500C 03E00008 */ jr	$ra
/* 000512 0x80875010 00000000 */ nop

