glabel func_808D7A14
/* 000081 0x808D7A14 84830148 */ lh	$v1, 0X148($a0)
/* 000082 0x808D7A18 14600007 */ bnez	$v1, .L808D7A38
/* 000083 0x808D7A1C 00601025 */ move	$v0, $v1
/* 000084 0x808D7A20 848E014A */ lh	$t6, 0X14A($a0)
/* 000085 0x808D7A24 3C02808E */ lui	$v0, 0x808E
/* 000086 0x808D7A28 000E7880 */ sll	$t7, $t6, 2
/* 000087 0x808D7A2C 004F1021 */ addu	$v0, $v0, $t7
/* 000088 0x808D7A30 03E00008 */ jr	$ra
/* 000089 0x808D7A34 8C428794 */ lw	$v0, -0X786C($v0)
.L808D7A38:
/* 000090 0x808D7A38 03E00008 */ jr	$ra
/* 000091 0x808D7A3C 00000000 */ nop

