glabel func_80A61A44
/* 000141 0x80A61A44 8C8F01AC */ lw	$t7, 0X1AC($a0)
/* 000142 0x80A61A48 240E0016 */ li	$t6, 0X16
/* 000143 0x80A61A4C 24180019 */ li	$t8, 0X19
/* 000144 0x80A61A50 A1EE003C */ sb	$t6, 0X3C($t7)
/* 000145 0x80A61A54 8C9901AC */ lw	$t9, 0X1AC($a0)
/* 000146 0x80A61A58 A738002E */ sh	$t8, 0X2E($t9)
/* 000147 0x80A61A5C 8C8801AC */ lw	$t0, 0X1AC($a0)
/* 000148 0x80A61A60 A5000028 */ sh	$zero, 0X28($t0)
/* 000149 0x80A61A64 03E00008 */ jr	$ra
/* 000150 0x80A61A68 00000000 */ nop

