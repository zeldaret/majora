glabel func_800BC154
/* 022949 0x800BC154 AFA7000C */ sw	$a3, 0XC($sp)
/* 022950 0x800BC158 30E700FF */ andi	$a3, $a3, 0XFF
/* 022951 0x800BC15C AFA40000 */ sw	$a0, 0X0($sp)
/* 022952 0x800BC160 90CF0002 */ lbu	$t7, 0X2($a2)
/* 022953 0x800BC164 240E0001 */ li	$t6, 0X1
/* 022954 0x800BC168 000FC080 */ sll	$t8, $t7, 2
/* 022955 0x800BC16C 030FC023 */ subu	$t8, $t8, $t7
/* 022956 0x800BC170 0018C080 */ sll	$t8, $t8, 2
/* 022957 0x800BC174 00B8C821 */ addu	$t9, $a1, $t8
/* 022958 0x800BC178 AF2E0018 */ sw	$t6, 0X18($t9)
/* 022959 0x800BC17C A0C70002 */ sb	$a3, 0X2($a2)
/* 022960 0x800BC180 03E00008 */ jr	$ra
/* 022961 0x800BC184 00000000 */ nop

