glabel BgCheck_CreateColTriParamsFromPolygon
/* 027096 0x800C0220 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 027097 0x800C0224 AFBF0014 */ sw	$ra, 0X14($sp)
/* 027098 0x800C0228 AFA40018 */ sw	$a0, 0X18($sp)
/* 027099 0x800C022C AFA5001C */ sw	$a1, 0X1C($sp)
/* 027100 0x800C0230 AFA60020 */ sw	$a2, 0X20($sp)
/* 027101 0x800C0234 8FAE0018 */ lw	$t6, 0X18($sp)
/* 027102 0x800C0238 8FA8001C */ lw	$t0, 0X1C($sp)
/* 027103 0x800C023C 8FA50020 */ lw	$a1, 0X20($sp)
/* 027104 0x800C0240 95CF0002 */ lhu	$t7, 0X2($t6)
/* 027105 0x800C0244 31F81FFF */ andi	$t8, $t7, 0X1FFF
/* 027106 0x800C0248 0018C880 */ sll	$t9, $t8, 2
/* 027107 0x800C024C 0338C823 */ subu	$t9, $t9, $t8
/* 027108 0x800C0250 0019C840 */ sll	$t9, $t9, 1
/* 027109 0x800C0254 0C02FF3F */ jal	BgCheck_CreateVec3fFromVertex
/* 027110 0x800C0258 03282021 */ addu	$a0, $t9, $t0
/* 027111 0x800C025C 8FA90018 */ lw	$t1, 0X18($sp)
/* 027112 0x800C0260 8FAD001C */ lw	$t5, 0X1C($sp)
/* 027113 0x800C0264 8FA50020 */ lw	$a1, 0X20($sp)
/* 027114 0x800C0268 952A0004 */ lhu	$t2, 0X4($t1)
/* 027115 0x800C026C 24A5000C */ addiu	$a1, $a1, 0XC
/* 027116 0x800C0270 314B1FFF */ andi	$t3, $t2, 0X1FFF
/* 027117 0x800C0274 000B6080 */ sll	$t4, $t3, 2
/* 027118 0x800C0278 018B6023 */ subu	$t4, $t4, $t3
/* 027119 0x800C027C 000C6040 */ sll	$t4, $t4, 1
/* 027120 0x800C0280 0C02FF3F */ jal	BgCheck_CreateVec3fFromVertex
/* 027121 0x800C0284 018D2021 */ addu	$a0, $t4, $t5
/* 027122 0x800C0288 8FAE0018 */ lw	$t6, 0X18($sp)
/* 027123 0x800C028C 8FB9001C */ lw	$t9, 0X1C($sp)
/* 027124 0x800C0290 8FA50020 */ lw	$a1, 0X20($sp)
/* 027125 0x800C0294 95CF0006 */ lhu	$t7, 0X6($t6)
/* 027126 0x800C0298 24A50018 */ addiu	$a1, $a1, 0X18
/* 027127 0x800C029C 000FC080 */ sll	$t8, $t7, 2
/* 027128 0x800C02A0 030FC023 */ subu	$t8, $t8, $t7
/* 027129 0x800C02A4 0018C040 */ sll	$t8, $t8, 1
/* 027130 0x800C02A8 0C02FF3F */ jal	BgCheck_CreateVec3fFromVertex
/* 027131 0x800C02AC 03192021 */ addu	$a0, $t8, $t9
/* 027132 0x800C02B0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 027133 0x800C02B4 27BD0018 */ addiu	$sp, $sp, 0X18
/* 027134 0x800C02B8 03E00008 */ jr	$ra
/* 027135 0x800C02BC 00000000 */ nop

