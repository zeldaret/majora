glabel func_80C11538
/* 000882 0x80C11538 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000883 0x80C1153C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000884 0x80C11540 00803825 */ move	$a3, $a0
/* 000885 0x80C11544 3C050600 */ lui	$a1, 0x0600
/* 000886 0x80C11548 24A50604 */ addiu	$a1, $a1, 0X604
/* 000887 0x80C1154C 24E40144 */ addiu	$a0, $a3, 0X144
/* 000888 0x80C11550 3C06C080 */ lui	$a2, 0xC080
/* 000889 0x80C11554 0C04DD65 */ jal	SkelAnime_ChangeAnimTransitionRepeat
/* 000890 0x80C11558 AFA70018 */ sw	$a3, 0X18($sp)
/* 000891 0x80C1155C 8FA70018 */ lw	$a3, 0X18($sp)
/* 000892 0x80C11560 3C1980C1 */ lui	$t9, %hi(func_80C11590)
/* 000893 0x80C11564 240E003C */ li	$t6, 0X3C
/* 000894 0x80C11568 90EF0281 */ lbu	$t7, 0X281($a3)
/* 000895 0x80C1156C 27391590 */ addiu	$t9, $t9, %lo(func_80C11590)
/* 000896 0x80C11570 A4EE018E */ sh	$t6, 0X18E($a3)
/* 000897 0x80C11574 35F80001 */ ori	$t8, $t7, 0X1
/* 000898 0x80C11578 A0F80281 */ sb	$t8, 0X281($a3)
/* 000899 0x80C1157C ACF90188 */ sw	$t9, 0X188($a3)
/* 000900 0x80C11580 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000901 0x80C11584 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000902 0x80C11588 03E00008 */ jr	$ra
/* 000903 0x80C1158C 00000000 */ nop

