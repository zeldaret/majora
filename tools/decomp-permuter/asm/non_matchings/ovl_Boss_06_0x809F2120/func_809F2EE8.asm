glabel func_809F2EE8
/* 000882 0x809F2EE8 AFA50004 */ sw	$a1, 0X4($sp)
/* 000883 0x809F2EEC 3C0142C8 */ lui	$at, 0x42C8
/* 000884 0x809F2EF0 44812000 */ mtc1	$at, $f4
/* 000885 0x809F2EF4 3C014150 */ lui	$at, 0x4150
/* 000886 0x809F2EF8 44813000 */ mtc1	$at, $f6
/* 000887 0x809F2EFC E48401E0 */ swc1	$f4, 0X1E0($a0)
/* 000888 0x809F2F00 E48601DC */ swc1	$f6, 0X1DC($a0)
/* 000889 0x809F2F04 03E00008 */ jr	$ra
/* 000890 0x809F2F08 00000000 */ nop

