glabel func_80C13A2C
/* 000063 0x80C13A2C 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000064 0x80C13A30 AFB40024 */ sw	$s4, 0X24($sp)
/* 000065 0x80C13A34 0080A025 */ move	$s4, $a0
/* 000066 0x80C13A38 AFBF002C */ sw	$ra, 0X2C($sp)
/* 000067 0x80C13A3C AFB50028 */ sw	$s5, 0X28($sp)
/* 000068 0x80C13A40 AFB30020 */ sw	$s3, 0X20($sp)
/* 000069 0x80C13A44 AFB2001C */ sw	$s2, 0X1C($sp)
/* 000070 0x80C13A48 AFB10018 */ sw	$s1, 0X18($sp)
/* 000071 0x80C13A4C AFB00014 */ sw	$s0, 0X14($sp)
/* 000072 0x80C13A50 3C010001 */ lui	$at, 0x0001
/* 000073 0x80C13A54 868F001C */ lh	$t7, 0X1C($s4)
/* 000074 0x80C13A58 34218000 */ ori	$at, $at, 0X8000
/* 000075 0x80C13A5C 00A1A821 */ addu	$s5, $a1, $at
/* 000076 0x80C13A60 8EAE0864 */ lw	$t6, 0X864($s5)
/* 000077 0x80C13A64 31F800FF */ andi	$t8, $t7, 0XFF
/* 000078 0x80C13A68 0018C8C0 */ sll	$t9, $t8, 3
/* 000079 0x80C13A6C 01D98821 */ addu	$s1, $t6, $t9
/* 000080 0x80C13A70 56200004 */ bnezl	$s1, .L80C13A84
/* 000081 0x80C13A74 00009025 */ move	$s2, $zero
/* 000082 0x80C13A78 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000083 0x80C13A7C 02802025 */ move	$a0, $s4
/* 000084 0x80C13A80 00009025 */ move	$s2, $zero
.L80C13A84:
/* 000085 0x80C13A84 02808025 */ move	$s0, $s4
/* 000086 0x80C13A88 24130020 */ li	$s3, 0X20
.L80C13A8C:
/* 000087 0x80C13A8C 0C040141 */ jal	Lib_PtrSegToVirt
/* 000088 0x80C13A90 8E240004 */ lw	$a0, 0X4($s1)
/* 000089 0x80C13A94 AE0201D8 */ sw	$v0, 0X1D8($s0)
/* 000090 0x80C13A98 92280000 */ lbu	$t0, 0X0($s1)
/* 000091 0x80C13A9C AE0801DC */ sw	$t0, 0X1DC($s0)
/* 000092 0x80C13AA0 922A0001 */ lbu	$t2, 0X1($s1)
/* 000093 0x80C13AA4 8EA90864 */ lw	$t1, 0X864($s5)
/* 000094 0x80C13AA8 000A58C0 */ sll	$t3, $t2, 3
/* 000095 0x80C13AAC 012B8821 */ addu	$s1, $t1, $t3
/* 000096 0x80C13AB0 56200004 */ bnezl	$s1, .L80C13AC4
/* 000097 0x80C13AB4 26520008 */ addiu	$s2, $s2, 0X8
/* 000098 0x80C13AB8 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000099 0x80C13ABC 02802025 */ move	$a0, $s4
/* 000100 0x80C13AC0 26520008 */ addiu	$s2, $s2, 0X8
.L80C13AC4:
/* 000101 0x80C13AC4 1653FFF1 */ bne	$s2, $s3, .L80C13A8C
/* 000102 0x80C13AC8 26100008 */ addiu	$s0, $s0, 0X8
/* 000103 0x80C13ACC 0C040141 */ jal	Lib_PtrSegToVirt
/* 000104 0x80C13AD0 8E240004 */ lw	$a0, 0X4($s1)
/* 000105 0x80C13AD4 AE8201F8 */ sw	$v0, 0X1F8($s4)
/* 000106 0x80C13AD8 922C0000 */ lbu	$t4, 0X0($s1)
/* 000107 0x80C13ADC AE8C01FC */ sw	$t4, 0X1FC($s4)
/* 000108 0x80C13AE0 922F0001 */ lbu	$t7, 0X1($s1)
/* 000109 0x80C13AE4 8EAD0864 */ lw	$t5, 0X864($s5)
/* 000110 0x80C13AE8 000FC0C0 */ sll	$t8, $t7, 3
/* 000111 0x80C13AEC 01B88821 */ addu	$s1, $t5, $t8
/* 000112 0x80C13AF0 16200003 */ bnez	$s1, .L80C13B00
/* 000113 0x80C13AF4 00000000 */ nop
/* 000114 0x80C13AF8 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000115 0x80C13AFC 02802025 */ move	$a0, $s4
.L80C13B00:
/* 000116 0x80C13B00 0C040141 */ jal	Lib_PtrSegToVirt
/* 000117 0x80C13B04 8E240004 */ lw	$a0, 0X4($s1)
/* 000118 0x80C13B08 AE820200 */ sw	$v0, 0X200($s4)
/* 000119 0x80C13B0C 922E0000 */ lbu	$t6, 0X0($s1)
/* 000120 0x80C13B10 AE8E0204 */ sw	$t6, 0X204($s4)
/* 000121 0x80C13B14 8FBF002C */ lw	$ra, 0X2C($sp)
/* 000122 0x80C13B18 8FB00014 */ lw	$s0, 0X14($sp)
/* 000123 0x80C13B1C 8FB10018 */ lw	$s1, 0X18($sp)
/* 000124 0x80C13B20 8FB2001C */ lw	$s2, 0X1C($sp)
/* 000125 0x80C13B24 8FB30020 */ lw	$s3, 0X20($sp)
/* 000126 0x80C13B28 8FB40024 */ lw	$s4, 0X24($sp)
/* 000127 0x80C13B2C 8FB50028 */ lw	$s5, 0X28($sp)
/* 000128 0x80C13B30 03E00008 */ jr	$ra
/* 000129 0x80C13B34 27BD0030 */ addiu	$sp, $sp, 0X30

