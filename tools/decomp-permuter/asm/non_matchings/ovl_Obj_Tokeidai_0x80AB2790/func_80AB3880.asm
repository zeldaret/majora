glabel func_80AB3880
/* 001084 0x80AB3880 AFA50004 */ sw	$a1, 0X4($sp)
/* 001085 0x80AB3884 84820154 */ lh	$v0, 0X154($a0)
/* 001086 0x80AB3888 3C0F80AB */ lui	$t7, %hi(func_80AB3808)
/* 001087 0x80AB388C 25EF3808 */ addiu	$t7, $t7, %lo(func_80AB3808)
/* 001088 0x80AB3890 18400003 */ blez	$v0, .L80AB38A0
/* 001089 0x80AB3894 244EFFFF */ addiu	$t6, $v0, -0X1
/* 001090 0x80AB3898 03E00008 */ jr	$ra
/* 001091 0x80AB389C A48E0154 */ sh	$t6, 0X154($a0)
.L80AB38A0:
/* 001092 0x80AB38A0 AC8F0174 */ sw	$t7, 0X174($a0)
/* 001093 0x80AB38A4 A4800154 */ sh	$zero, 0X154($a0)
/* 001094 0x80AB38A8 03E00008 */ jr	$ra
/* 001095 0x80AB38AC 00000000 */ nop

