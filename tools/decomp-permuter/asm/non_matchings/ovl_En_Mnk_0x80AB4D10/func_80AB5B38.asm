glabel func_80AB5B38
/* 000906 0x80AB5B38 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000907 0x80AB5B3C AFBF0024 */ sw	$ra, 0X24($sp)
/* 000908 0x80AB5B40 3C014248 */ lui	$at, 0x4248
/* 000909 0x80AB5B44 44812000 */ mtc1	$at, $f4
/* 000910 0x80AB5B48 3C0143FA */ lui	$at, 0x43FA
/* 000911 0x80AB5B4C 44813000 */ mtc1	$at, $f6
/* 000912 0x80AB5B50 24AE00BC */ addiu	$t6, $a1, 0XBC
/* 000913 0x80AB5B54 240FFFFF */ li	$t7, -0X1
/* 000914 0x80AB5B58 AFAF001C */ sw	$t7, 0X1C($sp)
/* 000915 0x80AB5B5C AFAE0010 */ sw	$t6, 0X10($sp)
/* 000916 0x80AB5B60 24060002 */ li	$a2, 0X2
/* 000917 0x80AB5B64 24A7003C */ addiu	$a3, $a1, 0X3C
/* 000918 0x80AB5B68 E7A40014 */ swc1	$f4, 0X14($sp)
/* 000919 0x80AB5B6C 0C04E94C */ jal	func_8013A530
/* 000920 0x80AB5B70 E7A60018 */ swc1	$f6, 0X18($sp)
/* 000921 0x80AB5B74 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000922 0x80AB5B78 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000923 0x80AB5B7C 03E00008 */ jr	$ra
/* 000924 0x80AB5B80 00000000 */ nop

