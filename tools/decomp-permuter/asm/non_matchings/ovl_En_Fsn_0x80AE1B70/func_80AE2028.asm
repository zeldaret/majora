glabel func_80AE2028
/* 000302 0x80AE2028 2402FFFF */ li	$v0, -0X1
/* 000303 0x80AE202C 848E0384 */ lh	$t6, 0X384($a0)
/* 000304 0x80AE2030 504E0004 */ beql	$v0, $t6, .L80AE2044
/* 000305 0x80AE2034 848F0386 */ lh	$t7, 0X386($a0)
/* 000306 0x80AE2038 03E00008 */ jr	$ra
/* 000307 0x80AE203C 00001025 */ move	$v0, $zero
/* 000308 0x80AE2040 848F0386 */ lh	$t7, 0X386($a0)
.L80AE2044:
/* 000309 0x80AE2044 504F0004 */ beql	$v0, $t7, .L80AE2058
/* 000310 0x80AE2048 84980388 */ lh	$t8, 0X388($a0)
/* 000311 0x80AE204C 03E00008 */ jr	$ra
/* 000312 0x80AE2050 24020001 */ li	$v0, 0X1
/* 000313 0x80AE2054 84980388 */ lh	$t8, 0X388($a0)
.L80AE2058:
/* 000314 0x80AE2058 50580004 */ beql	$v0, $t8, .L80AE206C
/* 000315 0x80AE205C 240200FF */ li	$v0, 0XFF
/* 000316 0x80AE2060 03E00008 */ jr	$ra
/* 000317 0x80AE2064 24020002 */ li	$v0, 0X2
/* 000318 0x80AE2068 240200FF */ li	$v0, 0XFF
.L80AE206C:
/* 000319 0x80AE206C 03E00008 */ jr	$ra
/* 000320 0x80AE2070 00000000 */ nop

