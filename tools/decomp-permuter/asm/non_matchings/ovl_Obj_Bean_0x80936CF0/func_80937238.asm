glabel func_80937238
/* 000338 0x80937238 C48401BC */ lwc1	$f4, 0X1BC($a0)
/* 000339 0x8093723C C48601CC */ lwc1	$f6, 0X1CC($a0)
/* 000340 0x80937240 C49001C4 */ lwc1	$f16, 0X1C4($a0)
/* 000341 0x80937244 C49201D0 */ lwc1	$f18, 0X1D0($a0)
/* 000342 0x80937248 46062200 */ add.s	$f8, $f4, $f6
/* 000343 0x8093724C C48A01C0 */ lwc1	$f10, 0X1C0($a0)
/* 000344 0x80937250 46128100 */ add.s	$f4, $f16, $f18
/* 000345 0x80937254 E4880024 */ swc1	$f8, 0X24($a0)
/* 000346 0x80937258 E48A0028 */ swc1	$f10, 0X28($a0)
/* 000347 0x8093725C E484002C */ swc1	$f4, 0X2C($a0)
/* 000348 0x80937260 03E00008 */ jr	$ra
/* 000349 0x80937264 00000000 */ nop

