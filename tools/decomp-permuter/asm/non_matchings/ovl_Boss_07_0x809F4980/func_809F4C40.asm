glabel func_809F4C40
/* 000176 0x809F4C40 84830092 */ lh	$v1, 0X92($a0)
/* 000177 0x809F4C44 848E00BE */ lh	$t6, 0XBE($a0)
/* 000178 0x809F4C48 8CA21CCC */ lw	$v0, 0X1CCC($a1)
/* 000179 0x809F4C4C 006E3023 */ subu	$a2, $v1, $t6
/* 000180 0x809F4C50 00063400 */ sll	$a2, $a2, 16
/* 000181 0x809F4C54 00063403 */ sra	$a2, $a2, 16
/* 000182 0x809F4C58 04C10003 */ bgez	$a2, .L809F4C68
/* 000183 0x809F4C5C 00C02025 */ move	$a0, $a2
/* 000184 0x809F4C60 10000001 */ b	.L809F4C68
/* 000185 0x809F4C64 00062023 */ negu	$a0, $a2
.L809F4C68:
/* 000186 0x809F4C68 28813000 */ slti	$at, $a0, 0X3000
/* 000187 0x809F4C6C 50200011 */ beqzl	$at, .L809F4CB4
/* 000188 0x809F4C70 00001025 */ move	$v0, $zero
/* 000189 0x809F4C74 844F00BE */ lh	$t7, 0XBE($v0)
/* 000190 0x809F4C78 34018000 */ ori	$at, $zero, 0X8000
/* 000191 0x809F4C7C 01E14021 */ addu	$t0, $t7, $at
/* 000192 0x809F4C80 00682023 */ subu	$a0, $v1, $t0
/* 000193 0x809F4C84 00042400 */ sll	$a0, $a0, 16
/* 000194 0x809F4C88 00042403 */ sra	$a0, $a0, 16
/* 000195 0x809F4C8C 04810003 */ bgez	$a0, .L809F4C9C
/* 000196 0x809F4C90 00801025 */ move	$v0, $a0
/* 000197 0x809F4C94 10000001 */ b	.L809F4C9C
/* 000198 0x809F4C98 00041023 */ negu	$v0, $a0
.L809F4C9C:
/* 000199 0x809F4C9C 28413000 */ slti	$at, $v0, 0X3000
/* 000200 0x809F4CA0 50200004 */ beqzl	$at, .L809F4CB4
/* 000201 0x809F4CA4 00001025 */ move	$v0, $zero
/* 000202 0x809F4CA8 03E00008 */ jr	$ra
/* 000203 0x809F4CAC 24020001 */ li	$v0, 0X1
/* 000204 0x809F4CB0 00001025 */ move	$v0, $zero
.L809F4CB4:
/* 000205 0x809F4CB4 03E00008 */ jr	$ra
/* 000206 0x809F4CB8 00000000 */ nop

