glabel func_80A10344
/* 003789 0x80A10344 8C8302B4 */ lw	$v1, 0X2B4($a0)
/* 003790 0x80A10348 3C0EDF00 */ lui	$t6, 0xDF00
/* 003791 0x80A1034C 2463FFF0 */ addiu	$v1, $v1, -0X10
/* 003792 0x80A10350 AC8302B4 */ sw	$v1, 0X2B4($a0)
/* 003793 0x80A10354 AC6E0000 */ sw	$t6, 0X0($v1)
/* 003794 0x80A10358 AC600004 */ sw	$zero, 0X4($v1)
/* 003795 0x80A1035C 00601025 */ move	$v0, $v1
/* 003796 0x80A10360 03E00008 */ jr	$ra
/* 003797 0x80A10364 00000000 */ nop

