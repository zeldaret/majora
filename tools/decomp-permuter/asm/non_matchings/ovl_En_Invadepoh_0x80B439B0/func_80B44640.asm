glabel func_80B44640
/* 000804 0x80B44640 80820309 */ lb	$v0, 0X309($a0)
/* 000805 0x80B44644 808E0308 */ lb	$t6, 0X308($a0)
/* 000806 0x80B44648 244F0001 */ addiu	$t7, $v0, 0X1
/* 000807 0x80B4464C 004E082A */ slt	$at, $v0, $t6
/* 000808 0x80B44650 10200002 */ beqz	$at, .L80B4465C
/* 000809 0x80B44654 00000000 */ nop
/* 000810 0x80B44658 A08F0309 */ sb	$t7, 0X309($a0)
.L80B4465C:
/* 000811 0x80B4465C 03E00008 */ jr	$ra
/* 000812 0x80B44660 00000000 */ nop

