glabel func_80B72830
/* 002012 0x80B72830 AFA50004 */ sw	$a1, 0X4($sp)
/* 002013 0x80B72834 00052C00 */ sll	$a1, $a1, 16
/* 002014 0x80B72838 00052C03 */ sra	$a1, $a1, 16
/* 002015 0x80B7283C 8C820120 */ lw	$v0, 0X120($a0)
/* 002016 0x80B72840 54400004 */ bnezl	$v0, .L80B72854
/* 002017 0x80B72844 A44503F8 */ sh	$a1, 0X3F8($v0)
/* 002018 0x80B72848 03E00008 */ jr	$ra
/* 002019 0x80B7284C A48503F8 */ sh	$a1, 0X3F8($a0)
/* 002020 0x80B72850 A44503F8 */ sh	$a1, 0X3F8($v0)
.L80B72854:
/* 002021 0x80B72854 03E00008 */ jr	$ra
/* 002022 0x80B72858 00000000 */ nop

