glabel func_808F152C
/* 000203 0x808F152C 24020019 */ li	$v0, 0X19
/* 000204 0x808F1530 9098028D */ lbu	$t8, 0X28D($a0)
/* 000205 0x808F1534 240E0007 */ li	$t6, 0X7
/* 000206 0x808F1538 240F000C */ li	$t7, 0XC
/* 000207 0x808F153C 37190004 */ ori	$t9, $t8, 0X4
/* 000208 0x808F1540 A48E02BC */ sh	$t6, 0X2BC($a0)
/* 000209 0x808F1544 A48202BE */ sh	$v0, 0X2BE($a0)
/* 000210 0x808F1548 A08F0290 */ sb	$t7, 0X290($a0)
/* 000211 0x808F154C A099028D */ sb	$t9, 0X28D($a0)
/* 000212 0x808F1550 A4820272 */ sh	$v0, 0X272($a0)
/* 000213 0x808F1554 03E00008 */ jr	$ra
/* 000214 0x808F1558 00000000 */ nop

