glabel func_80B228F4
/* 000893 0x80B228F4 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000894 0x80B228F8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000895 0x80B228FC AFA40028 */ sw	$a0, 0X28($sp)
/* 000896 0x80B22900 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000897 0x80B22904 8FAE002C */ lw	$t6, 0X2C($sp)
/* 000898 0x80B22908 8DC40000 */ lw	$a0, 0X0($t6)
/* 000899 0x80B2290C 0C04B0A3 */ jal	func_8012C28C
/* 000900 0x80B22910 AFA40024 */ sw	$a0, 0X24($sp)
/* 000901 0x80B22914 8FA60024 */ lw	$a2, 0X24($sp)
/* 000902 0x80B22918 8CC202B0 */ lw	$v0, 0X2B0($a2)
/* 000903 0x80B2291C 3C18FA00 */ lui	$t8, 0xFA00
/* 000904 0x80B22920 3C19FFB9 */ lui	$t9, 0xFFB9
/* 000905 0x80B22924 244F0008 */ addiu	$t7, $v0, 0X8
/* 000906 0x80B22928 ACCF02B0 */ sw	$t7, 0X2B0($a2)
/* 000907 0x80B2292C 373918FF */ ori	$t9, $t9, 0X18FF
/* 000908 0x80B22930 37180080 */ ori	$t8, $t8, 0X80
/* 000909 0x80B22934 AC580000 */ sw	$t8, 0X0($v0)
/* 000910 0x80B22938 AC590004 */ sw	$t9, 0X4($v0)
/* 000911 0x80B2293C 8CC202B0 */ lw	$v0, 0X2B0($a2)
/* 000912 0x80B22940 3C09DA38 */ lui	$t1, 0xDA38
/* 000913 0x80B22944 35290003 */ ori	$t1, $t1, 0X3
/* 000914 0x80B22948 24480008 */ addiu	$t0, $v0, 0X8
/* 000915 0x80B2294C ACC802B0 */ sw	$t0, 0X2B0($a2)
/* 000916 0x80B22950 AC490000 */ sw	$t1, 0X0($v0)
/* 000917 0x80B22954 8FAA002C */ lw	$t2, 0X2C($sp)
/* 000918 0x80B22958 8D440000 */ lw	$a0, 0X0($t2)
/* 000919 0x80B2295C AFA60024 */ sw	$a2, 0X24($sp)
/* 000920 0x80B22960 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000921 0x80B22964 AFA20018 */ sw	$v0, 0X18($sp)
/* 000922 0x80B22968 8FA30018 */ lw	$v1, 0X18($sp)
/* 000923 0x80B2296C 8FA60024 */ lw	$a2, 0X24($sp)
/* 000924 0x80B22970 3C0CDE00 */ lui	$t4, 0xDE00
/* 000925 0x80B22974 AC620004 */ sw	$v0, 0X4($v1)
/* 000926 0x80B22978 8CC202B0 */ lw	$v0, 0X2B0($a2)
/* 000927 0x80B2297C 3C0D0407 */ lui	$t5, 0x0407
/* 000928 0x80B22980 25ADAB30 */ addiu	$t5, $t5, -0X54D0
/* 000929 0x80B22984 244B0008 */ addiu	$t3, $v0, 0X8
/* 000930 0x80B22988 ACCB02B0 */ sw	$t3, 0X2B0($a2)
/* 000931 0x80B2298C AC4D0004 */ sw	$t5, 0X4($v0)
/* 000932 0x80B22990 AC4C0000 */ sw	$t4, 0X0($v0)
/* 000933 0x80B22994 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000934 0x80B22998 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000935 0x80B2299C 03E00008 */ jr	$ra
/* 000936 0x80B229A0 00000000 */ nop

