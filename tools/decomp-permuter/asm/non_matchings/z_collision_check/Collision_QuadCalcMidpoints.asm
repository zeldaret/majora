glabel Collision_QuadCalcMidpoints
/* 061573 0x800E1CD4 3C013F00 */ lui	$at, 0x3F00
/* 061574 0x800E1CD8 44810000 */ mtc1	$at, $f0
/* 061575 0x800E1CDC 00000000 */ nop
/* 061576 0x800E1CE0 C4840018 */ lwc1	$f4, 0X18($a0)
/* 061577 0x800E1CE4 C4860024 */ lwc1	$f6, 0X24($a0)
/* 061578 0x800E1CE8 C492001C */ lwc1	$f18, 0X1C($a0)
/* 061579 0x800E1CEC 46062200 */ add.s	$f8, $f4, $f6
/* 061580 0x800E1CF0 C4840028 */ lwc1	$f4, 0X28($a0)
/* 061581 0x800E1CF4 46004282 */ mul.s	$f10, $f8, $f0
/* 061582 0x800E1CF8 46049180 */ add.s	$f6, $f18, $f4
/* 061583 0x800E1CFC C492002C */ lwc1	$f18, 0X2C($a0)
/* 061584 0x800E1D00 46003202 */ mul.s	$f8, $f6, $f0
/* 061585 0x800E1D04 4600540D */ trunc.w.s	$f16, $f10
/* 061586 0x800E1D08 4600428D */ trunc.w.s	$f10, $f8
/* 061587 0x800E1D0C 440F8000 */ mfc1	$t7, $f16
/* 061588 0x800E1D10 C4900020 */ lwc1	$f16, 0X20($a0)
/* 061589 0x800E1D14 44195000 */ mfc1	$t9, $f10
/* 061590 0x800E1D18 46128100 */ add.s	$f4, $f16, $f18
/* 061591 0x800E1D1C C490000C */ lwc1	$f16, 0XC($a0)
/* 061592 0x800E1D20 C48A0000 */ lwc1	$f10, 0X0($a0)
/* 061593 0x800E1D24 A48F0030 */ sh	$t7, 0X30($a0)
/* 061594 0x800E1D28 46002182 */ mul.s	$f6, $f4, $f0
/* 061595 0x800E1D2C 46105480 */ add.s	$f18, $f10, $f16
/* 061596 0x800E1D30 C48A0010 */ lwc1	$f10, 0X10($a0)
/* 061597 0x800E1D34 A4990032 */ sh	$t9, 0X32($a0)
/* 061598 0x800E1D38 46009102 */ mul.s	$f4, $f18, $f0
/* 061599 0x800E1D3C 4600320D */ trunc.w.s	$f8, $f6
/* 061600 0x800E1D40 4600218D */ trunc.w.s	$f6, $f4
/* 061601 0x800E1D44 44094000 */ mfc1	$t1, $f8
/* 061602 0x800E1D48 C4880004 */ lwc1	$f8, 0X4($a0)
/* 061603 0x800E1D4C 440B3000 */ mfc1	$t3, $f6
/* 061604 0x800E1D50 460A4400 */ add.s	$f16, $f8, $f10
/* 061605 0x800E1D54 C4880014 */ lwc1	$f8, 0X14($a0)
/* 061606 0x800E1D58 C4860008 */ lwc1	$f6, 0X8($a0)
/* 061607 0x800E1D5C A4890034 */ sh	$t1, 0X34($a0)
/* 061608 0x800E1D60 46008482 */ mul.s	$f18, $f16, $f0
/* 061609 0x800E1D64 46083280 */ add.s	$f10, $f6, $f8
/* 061610 0x800E1D68 A48B0036 */ sh	$t3, 0X36($a0)
/* 061611 0x800E1D6C 46005402 */ mul.s	$f16, $f10, $f0
/* 061612 0x800E1D70 4600910D */ trunc.w.s	$f4, $f18
/* 061613 0x800E1D74 4600848D */ trunc.w.s	$f18, $f16
/* 061614 0x800E1D78 440D2000 */ mfc1	$t5, $f4
/* 061615 0x800E1D7C 440F9000 */ mfc1	$t7, $f18
/* 061616 0x800E1D80 A48D0038 */ sh	$t5, 0X38($a0)
/* 061617 0x800E1D84 A48F003A */ sh	$t7, 0X3A($a0)
/* 061618 0x800E1D88 03E00008 */ jr	$ra
/* 061619 0x800E1D8C 00000000 */ nop

