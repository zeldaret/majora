glabel func_80A81AA4
/* 000565 0x80A81AA4 8482001C */ lh	$v0, 0X1C($a0)
/* 000566 0x80A81AA8 3C014140 */ lui	$at, 0x4140
/* 000567 0x80A81AAC 44814000 */ mtc1	$at, $f8
/* 000568 0x80A81AB0 3042003F */ andi	$v0, $v0, 0X3F
/* 000569 0x80A81AB4 44822000 */ mtc1	$v0, $f4
/* 000570 0x80A81AB8 3C014120 */ lui	$at, 0x4120
/* 000571 0x80A81ABC 44818000 */ mtc1	$at, $f16
/* 000572 0x80A81AC0 468021A0 */ cvt.s.w	$f6, $f4
/* 000573 0x80A81AC4 C49201C4 */ lwc1	$f18, 0X1C4($a0)
/* 000574 0x80A81AC8 46083282 */ mul.s	$f10, $f6, $f8
/* 000575 0x80A81ACC C4860008 */ lwc1	$f6, 0X8($a0)
/* 000576 0x80A81AD0 46105000 */ add.s	$f0, $f10, $f16
/* 000577 0x80A81AD4 C48A01C8 */ lwc1	$f10, 0X1C8($a0)
/* 000578 0x80A81AD8 46000007 */ neg.s	$f0, $f0
/* 000579 0x80A81ADC 46009102 */ mul.s	$f4, $f18, $f0
/* 000580 0x80A81AE0 C492000C */ lwc1	$f18, 0XC($a0)
/* 000581 0x80A81AE4 46005402 */ mul.s	$f16, $f10, $f0
/* 000582 0x80A81AE8 C48A0010 */ lwc1	$f10, 0X10($a0)
/* 000583 0x80A81AEC 46062200 */ add.s	$f8, $f4, $f6
/* 000584 0x80A81AF0 C48601CC */ lwc1	$f6, 0X1CC($a0)
/* 000585 0x80A81AF4 46128100 */ add.s	$f4, $f16, $f18
/* 000586 0x80A81AF8 E4880024 */ swc1	$f8, 0X24($a0)
/* 000587 0x80A81AFC 46003202 */ mul.s	$f8, $f6, $f0
/* 000588 0x80A81B00 E4840028 */ swc1	$f4, 0X28($a0)
/* 000589 0x80A81B04 460A4400 */ add.s	$f16, $f8, $f10
/* 000590 0x80A81B08 E490002C */ swc1	$f16, 0X2C($a0)
/* 000591 0x80A81B0C 03E00008 */ jr	$ra
/* 000592 0x80A81B10 00000000 */ nop

