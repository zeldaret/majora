glabel func_8091D728
/* 000062 0x8091D728 C480025C */ lwc1	$f0, 0X25C($a0)
/* 000063 0x8091D72C C4840250 */ lwc1	$f4, 0X250($a0)
/* 000064 0x8091D730 C4880254 */ lwc1	$f8, 0X254($a0)
/* 000065 0x8091D734 C4900258 */ lwc1	$f16, 0X258($a0)
/* 000066 0x8091D738 46002182 */ mul.s	$f6, $f4, $f0
/* 000067 0x8091D73C 3C018092 */ lui	$at, %hi(D_8091FB00)
/* 000068 0x8091D740 46004282 */ mul.s	$f10, $f8, $f0
/* 000069 0x8091D744 00000000 */ nop
/* 000070 0x8091D748 46008082 */ mul.s	$f2, $f16, $f0
/* 000071 0x8091D74C E4860058 */ swc1	$f6, 0X58($a0)
/* 000072 0x8091D750 E48A005C */ swc1	$f10, 0X5C($a0)
/* 000073 0x8091D754 E4820060 */ swc1	$f2, 0X60($a0)
/* 000074 0x8091D758 C432FB00 */ lwc1	$f18, %lo(D_8091FB00)($at)
/* 000075 0x8091D75C 3C013F80 */ lui	$at, 0x3F80
/* 000076 0x8091D760 4602903C */ c.lt.s	$f18, $f2
/* 000077 0x8091D764 00000000 */ nop
/* 000078 0x8091D768 45000005 */ bc1f .L8091D780
/* 000079 0x8091D76C 00000000 */ nop
/* 000080 0x8091D770 44812000 */ mtc1	$at, $f4
/* 000081 0x8091D774 C4860060 */ lwc1	$f6, 0X60($a0)
/* 000082 0x8091D778 10000003 */ b	.L8091D788
/* 000083 0x8091D77C 46062003 */ div.s	$f0, $f4, $f6
.L8091D780:
/* 000084 0x8091D780 44800000 */ mtc1	$zero, $f0
/* 000085 0x8091D784 00000000 */ nop
.L8091D788:
/* 000086 0x8091D788 3C014180 */ lui	$at, 0x4180
/* 000087 0x8091D78C 44814000 */ mtc1	$at, $f8
/* 000088 0x8091D790 3C014140 */ lui	$at, 0x4140
/* 000089 0x8091D794 44819000 */ mtc1	$at, $f18
/* 000090 0x8091D798 46004282 */ mul.s	$f10, $f8, $f0
/* 000091 0x8091D79C 00000000 */ nop
/* 000092 0x8091D7A0 46009102 */ mul.s	$f4, $f18, $f0
/* 000093 0x8091D7A4 4600540D */ trunc.w.s	$f16, $f10
/* 000094 0x8091D7A8 4600218D */ trunc.w.s	$f6, $f4
/* 000095 0x8091D7AC 440F8000 */ mfc1	$t7, $f16
/* 000096 0x8091D7B0 44193000 */ mfc1	$t9, $f6
/* 000097 0x8091D7B4 A48F0264 */ sh	$t7, 0X264($a0)
/* 000098 0x8091D7B8 A4990266 */ sh	$t9, 0X266($a0)
/* 000099 0x8091D7BC 03E00008 */ jr	$ra
/* 000100 0x8091D7C0 00000000 */ nop

