glabel func_808F8C70
/* 000116 0x808F8C70 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000117 0x808F8C74 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000118 0x808F8C78 AFA40018 */ sw	$a0, 0X18($sp)
/* 000119 0x808F8C7C AFA5001C */ sw	$a1, 0X1C($sp)
/* 000120 0x808F8C80 8FAE001C */ lw	$t6, 0X1C($sp)
/* 000121 0x808F8C84 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000122 0x808F8C88 8DC40000 */ lw	$a0, 0X0($t6)
/* 000123 0x808F8C8C 14400003 */ bnez	$v0, .L808F8C9C
/* 000124 0x808F8C90 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000125 0x808F8C94 10000009 */ b	.L808F8CBC
/* 000126 0x808F8C98 24020001 */ li	$v0, 0X1
.L808F8C9C:
/* 000127 0x808F8C9C 3C050600 */ lui	$a1, 0x0600
/* 000128 0x808F8CA0 0C02F80F */ jal	func_800BE03C
/* 000129 0x808F8CA4 24A53030 */ addiu	$a1, $a1, 0X3030
/* 000130 0x808F8CA8 3C050600 */ lui	$a1, 0x0600
/* 000131 0x808F8CAC 24A530C0 */ addiu	$a1, $a1, 0X30C0
/* 000132 0x808F8CB0 0C02F7F0 */ jal	func_800BDFC0
/* 000133 0x808F8CB4 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000134 0x808F8CB8 24020001 */ li	$v0, 0X1
.L808F8CBC:
/* 000135 0x808F8CBC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000136 0x808F8CC0 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000137 0x808F8CC4 03E00008 */ jr	$ra
/* 000138 0x808F8CC8 00000000 */ nop

