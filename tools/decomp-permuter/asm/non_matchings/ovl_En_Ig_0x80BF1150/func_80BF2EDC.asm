glabel func_80BF2EDC
/* 001891 0x80BF2EDC AFA40000 */ sw	$a0, 0X0($sp)
/* 001892 0x80BF2EE0 AFA7000C */ sw	$a3, 0XC($sp)
/* 001893 0x80BF2EE4 2401000A */ li	$at, 0XA
/* 001894 0x80BF2EE8 14A10002 */ bne	$a1, $at, .L80BF2EF4
/* 001895 0x80BF2EEC 00001025 */ move	$v0, $zero
/* 001896 0x80BF2EF0 ACC00000 */ sw	$zero, 0X0($a2)
.L80BF2EF4:
/* 001897 0x80BF2EF4 03E00008 */ jr	$ra
/* 001898 0x80BF2EF8 00000000 */ nop

