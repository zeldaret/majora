glabel func_809B3E9C
/* 001899 0x809B3E9C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001900 0x809B3EA0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001901 0x809B3EA4 AFA40018 */ sw	$a0, 0X18($sp)
/* 001902 0x809B3EA8 AFA5001C */ sw	$a1, 0X1C($sp)
/* 001903 0x809B3EAC 8FA40018 */ lw	$a0, 0X18($sp)
/* 001904 0x809B3EB0 3C050600 */ lui	$a1, 0x0600
/* 001905 0x809B3EB4 24A540E0 */ addiu	$a1, $a1, 0X40E0
/* 001906 0x809B3EB8 3C06C0A0 */ lui	$a2, 0xC0A0
/* 001907 0x809B3EBC 0C04DD65 */ jal	SkelAnime_ChangeAnimTransitionRepeat
/* 001908 0x809B3EC0 24840194 */ addiu	$a0, $a0, 0X194
/* 001909 0x809B3EC4 8FAF0018 */ lw	$t7, 0X18($sp)
/* 001910 0x809B3EC8 3C0E809B */ lui	$t6, %hi(func_809B3F0C)
/* 001911 0x809B3ECC 3C014248 */ lui	$at, 0x4248
/* 001912 0x809B3ED0 25CE3F0C */ addiu	$t6, $t6, %lo(func_809B3F0C)
/* 001913 0x809B3ED4 44816000 */ mtc1	$at, $f12
/* 001914 0x809B3ED8 0C05E565 */ jal	randZeroOneScaled
/* 001915 0x809B3EDC ADEE0420 */ sw	$t6, 0X420($t7)
/* 001916 0x809B3EE0 3C0141A0 */ lui	$at, 0x41A0
/* 001917 0x809B3EE4 44812000 */ mtc1	$at, $f4
/* 001918 0x809B3EE8 8FA80018 */ lw	$t0, 0X18($sp)
/* 001919 0x809B3EEC 46040180 */ add.s	$f6, $f0, $f4
/* 001920 0x809B3EF0 4600320D */ trunc.w.s	$f8, $f6
/* 001921 0x809B3EF4 44194000 */ mfc1	$t9, $f8
/* 001922 0x809B3EF8 00000000 */ nop
/* 001923 0x809B3EFC A519014A */ sh	$t9, 0X14A($t0)
/* 001924 0x809B3F00 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001925 0x809B3F04 03E00008 */ jr	$ra
/* 001926 0x809B3F08 27BD0018 */ addiu	$sp, $sp, 0X18

