glabel BgBotihasira_Draw
/* 000112 0x80B28240 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000113 0x80B28244 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000114 0x80B28248 AFA40028 */ sw	$a0, 0X28($sp)
/* 000115 0x80B2824C AFA5002C */ sw	$a1, 0X2C($sp)
/* 000116 0x80B28250 8FAE002C */ lw	$t6, 0X2C($sp)
/* 000117 0x80B28254 8DC40000 */ lw	$a0, 0X0($t6)
/* 000118 0x80B28258 0C04B0A3 */ jal	func_8012C28C
/* 000119 0x80B2825C AFA40024 */ sw	$a0, 0X24($sp)
/* 000120 0x80B28260 8FA60024 */ lw	$a2, 0X24($sp)
/* 000121 0x80B28264 8CC202B0 */ lw	$v0, 0X2B0($a2)
/* 000122 0x80B28268 3C18DA38 */ lui	$t8, 0xDA38
/* 000123 0x80B2826C 37180003 */ ori	$t8, $t8, 0X3
/* 000124 0x80B28270 244F0008 */ addiu	$t7, $v0, 0X8
/* 000125 0x80B28274 ACCF02B0 */ sw	$t7, 0X2B0($a2)
/* 000126 0x80B28278 AC580000 */ sw	$t8, 0X0($v0)
/* 000127 0x80B2827C 8FB9002C */ lw	$t9, 0X2C($sp)
/* 000128 0x80B28280 8F240000 */ lw	$a0, 0X0($t9)
/* 000129 0x80B28284 AFA60024 */ sw	$a2, 0X24($sp)
/* 000130 0x80B28288 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000131 0x80B2828C AFA2001C */ sw	$v0, 0X1C($sp)
/* 000132 0x80B28290 8FA3001C */ lw	$v1, 0X1C($sp)
/* 000133 0x80B28294 8FA60024 */ lw	$a2, 0X24($sp)
/* 000134 0x80B28298 3C09DE00 */ lui	$t1, 0xDE00
/* 000135 0x80B2829C AC620004 */ sw	$v0, 0X4($v1)
/* 000136 0x80B282A0 8CC202B0 */ lw	$v0, 0X2B0($a2)
/* 000137 0x80B282A4 3C0A0600 */ lui	$t2, 0x0600
/* 000138 0x80B282A8 254A0638 */ addiu	$t2, $t2, 0X638
/* 000139 0x80B282AC 24480008 */ addiu	$t0, $v0, 0X8
/* 000140 0x80B282B0 ACC802B0 */ sw	$t0, 0X2B0($a2)
/* 000141 0x80B282B4 AC4A0004 */ sw	$t2, 0X4($v0)
/* 000142 0x80B282B8 AC490000 */ sw	$t1, 0X0($v0)
/* 000143 0x80B282BC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000144 0x80B282C0 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000145 0x80B282C4 03E00008 */ jr	$ra
/* 000146 0x80B282C8 00000000 */ nop
/* 000147 0x80B282CC 00000000 */ nop
