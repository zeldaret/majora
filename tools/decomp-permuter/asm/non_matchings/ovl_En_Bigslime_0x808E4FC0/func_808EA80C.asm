glabel func_808EA80C
/* 005651 0x808EA80C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 005652 0x808EA810 AFBF0014 */ sw	$ra, 0X14($sp)
/* 005653 0x808EA814 AFA40018 */ sw	$a0, 0X18($sp)
/* 005654 0x808EA818 8FA40018 */ lw	$a0, 0X18($sp)
/* 005655 0x808EA81C 3C050601 */ lui	$a1, 0x0601
/* 005656 0x808EA820 24A5F048 */ addiu	$a1, $a1, -0XFB8
/* 005657 0x808EA824 0C04DD0C */ jal	SkelAnime_ChangeAnimDefaultStop
/* 005658 0x808EA828 24840144 */ addiu	$a0, $a0, 0X144
/* 005659 0x808EA82C 8FA40018 */ lw	$a0, 0X18($sp)
/* 005660 0x808EA830 0C239B06 */ jal	func_808E6C18
/* 005661 0x808EA834 2405395D */ li	$a1, 0X395D
/* 005662 0x808EA838 8FA20018 */ lw	$v0, 0X18($sp)
/* 005663 0x808EA83C 44802000 */ mtc1	$zero, $f4
/* 005664 0x808EA840 3C0E808F */ lui	$t6, %hi(func_808EA860)
/* 005665 0x808EA844 25CEA860 */ addiu	$t6, $t6, %lo(func_808EA860)
/* 005666 0x808EA848 AC4E0188 */ sw	$t6, 0X188($v0)
/* 005667 0x808EA84C E4440070 */ swc1	$f4, 0X70($v0)
/* 005668 0x808EA850 8FBF0014 */ lw	$ra, 0X14($sp)
/* 005669 0x808EA854 27BD0018 */ addiu	$sp, $sp, 0X18
/* 005670 0x808EA858 03E00008 */ jr	$ra
/* 005671 0x808EA85C 00000000 */ nop

