glabel func_80B2ABF4
/* 002593 0x80B2ABF4 AFA40000 */ sw	$a0, 0X0($sp)
/* 002594 0x80B2ABF8 AFA7000C */ sw	$a3, 0XC($sp)
/* 002595 0x80B2ABFC 24010014 */ li	$at, 0X14
/* 002596 0x80B2AC00 10A10004 */ beq	$a1, $at, .L80B2AC14
/* 002597 0x80B2AC04 00001025 */ move	$v0, $zero
/* 002598 0x80B2AC08 24010015 */ li	$at, 0X15
/* 002599 0x80B2AC0C 14A10002 */ bne	$a1, $at, .L80B2AC18
/* 002600 0x80B2AC10 00000000 */ nop
.L80B2AC14:
/* 002601 0x80B2AC14 ACC00000 */ sw	$zero, 0X0($a2)
.L80B2AC18:
/* 002602 0x80B2AC18 03E00008 */ jr	$ra
/* 002603 0x80B2AC1C 00000000 */ nop

