glabel func_80B349C8
/* 000806 0x80B349C8 AFA40000 */ sw	$a0, 0X0($sp)
/* 000807 0x80B349CC AFA7000C */ sw	$a3, 0XC($sp)
/* 000808 0x80B349D0 8FAE0014 */ lw	$t6, 0X14($sp)
/* 000809 0x80B349D4 2401000E */ li	$at, 0XE
/* 000810 0x80B349D8 00001025 */ move	$v0, $zero
/* 000811 0x80B349DC 95CF027C */ lhu	$t7, 0X27C($t6)
/* 000812 0x80B349E0 31F80001 */ andi	$t8, $t7, 0X1
/* 000813 0x80B349E4 17000004 */ bnez	$t8, .L80B349F8
/* 000814 0x80B349E8 00000000 */ nop
/* 000815 0x80B349EC 14A10002 */ bne	$a1, $at, .L80B349F8
/* 000816 0x80B349F0 00000000 */ nop
/* 000817 0x80B349F4 ACC00000 */ sw	$zero, 0X0($a2)
.L80B349F8:
/* 000818 0x80B349F8 03E00008 */ jr	$ra
/* 000819 0x80B349FC 00000000 */ nop

