glabel func_808E40CC
/* 000119 0x808E40CC 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000120 0x808E40D0 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000121 0x808E40D4 AFA40028 */ sw	$a0, 0X28($sp)
/* 000122 0x808E40D8 3C040600 */ lui	$a0, 0x0600
/* 000123 0x808E40DC 0C04D1D2 */ jal	SkelAnime_GetFrameCount
/* 000124 0x808E40E0 2484004C */ addiu	$a0, $a0, 0X4C
/* 000125 0x808E40E4 44822000 */ mtc1	$v0, $f4
/* 000126 0x808E40E8 8FA40028 */ lw	$a0, 0X28($sp)
/* 000127 0x808E40EC 44804000 */ mtc1	$zero, $f8
/* 000128 0x808E40F0 468021A0 */ cvt.s.w	$f6, $f4
/* 000129 0x808E40F4 3C050600 */ lui	$a1, 0x0600
/* 000130 0x808E40F8 240E0002 */ li	$t6, 0X2
/* 000131 0x808E40FC AFAE0014 */ sw	$t6, 0X14($sp)
/* 000132 0x808E4100 24A5004C */ addiu	$a1, $a1, 0X4C
/* 000133 0x808E4104 3C063F80 */ lui	$a2, 0x3F80
/* 000134 0x808E4108 E7A60010 */ swc1	$f6, 0X10($sp)
/* 000135 0x808E410C 24070000 */ li	$a3, 0X0
/* 000136 0x808E4110 24840144 */ addiu	$a0, $a0, 0X144
/* 000137 0x808E4114 0C04DCFA */ jal	SkelAnime_ChangeAnim
/* 000138 0x808E4118 E7A80018 */ swc1	$f8, 0X18($sp)
/* 000139 0x808E411C 8FA20028 */ lw	$v0, 0X28($sp)
/* 000140 0x808E4120 3C18808E */ lui	$t8, %hi(func_808E4458)
/* 000141 0x808E4124 240F0001 */ li	$t7, 0X1
/* 000142 0x808E4128 27184458 */ addiu	$t8, $t8, %lo(func_808E4458)
/* 000143 0x808E412C A44F0246 */ sh	$t7, 0X246($v0)
/* 000144 0x808E4130 AC5801F4 */ sw	$t8, 0X1F4($v0)
/* 000145 0x808E4134 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000146 0x808E4138 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000147 0x808E413C 03E00008 */ jr	$ra
/* 000148 0x808E4140 00000000 */ nop

