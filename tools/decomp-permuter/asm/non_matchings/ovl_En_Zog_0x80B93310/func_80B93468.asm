glabel func_80B93468
/* 000086 0x80B93468 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000087 0x80B9346C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000088 0x80B93470 00803025 */ move	$a2, $a0
/* 000089 0x80B93474 84CF001C */ lh	$t7, 0X1C($a2)
/* 000090 0x80B93478 3C0E0002 */ lui	$t6, 0x0002
/* 000091 0x80B9347C 01C57021 */ addu	$t6, $t6, $a1
/* 000092 0x80B93480 8DCE8864 */ lw	$t6, -0X779C($t6)
/* 000093 0x80B93484 31F8FC00 */ andi	$t8, $t7, 0XFC00
/* 000094 0x80B93488 0018CA83 */ sra	$t9, $t8, 10
/* 000095 0x80B9348C 001940C0 */ sll	$t0, $t9, 3
/* 000096 0x80B93490 01C84821 */ addu	$t1, $t6, $t0
/* 000097 0x80B93494 11200024 */ beqz	$t1, .L80B93528
/* 000098 0x80B93498 ACC902E8 */ sw	$t1, 0X2E8($a2)
/* 000099 0x80B9349C 8D240004 */ lw	$a0, 0X4($t1)
/* 000100 0x80B934A0 0C040141 */ jal	Lib_PtrSegToVirt
/* 000101 0x80B934A4 AFA60018 */ sw	$a2, 0X18($sp)
/* 000102 0x80B934A8 8FA60018 */ lw	$a2, 0X18($sp)
/* 000103 0x80B934AC 8CCA02EC */ lw	$t2, 0X2EC($a2)
/* 000104 0x80B934B0 000A5880 */ sll	$t3, $t2, 2
/* 000105 0x80B934B4 016A5823 */ subu	$t3, $t3, $t2
/* 000106 0x80B934B8 000B5840 */ sll	$t3, $t3, 1
/* 000107 0x80B934BC 004B1821 */ addu	$v1, $v0, $t3
/* 000108 0x80B934C0 846C0000 */ lh	$t4, 0X0($v1)
/* 000109 0x80B934C4 24630006 */ addiu	$v1, $v1, 0X6
/* 000110 0x80B934C8 448C2000 */ mtc1	$t4, $f4
/* 000111 0x80B934CC 00000000 */ nop
/* 000112 0x80B934D0 468021A0 */ cvt.s.w	$f6, $f4
/* 000113 0x80B934D4 E4C60024 */ swc1	$f6, 0X24($a2)
/* 000114 0x80B934D8 846DFFFE */ lh	$t5, -0X2($v1)
/* 000115 0x80B934DC C4C40024 */ lwc1	$f4, 0X24($a2)
/* 000116 0x80B934E0 448D4000 */ mtc1	$t5, $f8
/* 000117 0x80B934E4 00000000 */ nop
/* 000118 0x80B934E8 468042A0 */ cvt.s.w	$f10, $f8
/* 000119 0x80B934EC E4CA002C */ swc1	$f10, 0X2C($a2)
/* 000120 0x80B934F0 84780004 */ lh	$t8, 0X4($v1)
/* 000121 0x80B934F4 846F0000 */ lh	$t7, 0X0($v1)
/* 000122 0x80B934F8 C4CA002C */ lwc1	$f10, 0X2C($a2)
/* 000123 0x80B934FC 44983000 */ mtc1	$t8, $f6
/* 000124 0x80B93500 448F8000 */ mtc1	$t7, $f16
/* 000125 0x80B93504 46803220 */ cvt.s.w	$f8, $f6
/* 000126 0x80B93508 468084A0 */ cvt.s.w	$f18, $f16
/* 000127 0x80B9350C 460A4381 */ sub.s	$f14, $f8, $f10
/* 000128 0x80B93510 0C05FFB9 */ jal	atans
/* 000129 0x80B93514 46049301 */ sub.s	$f12, $f18, $f4
/* 000130 0x80B93518 8FA60018 */ lw	$a2, 0X18($sp)
/* 000131 0x80B9351C 44808000 */ mtc1	$zero, $f16
/* 000132 0x80B93520 A4C20032 */ sh	$v0, 0X32($a2)
/* 000133 0x80B93524 E4D00070 */ swc1	$f16, 0X70($a2)
.L80B93528:
/* 000134 0x80B93528 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000135 0x80B9352C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000136 0x80B93530 03E00008 */ jr	$ra
/* 000137 0x80B93534 00000000 */ nop

