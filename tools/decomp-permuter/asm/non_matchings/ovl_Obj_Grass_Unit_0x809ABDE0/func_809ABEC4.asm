glabel func_809ABEC4
/* 000057 0x809ABEC4 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000058 0x809ABEC8 44800000 */ mtc1	$zero, $f0
/* 000059 0x809ABECC AFBF002C */ sw	$ra, 0X2C($sp)
/* 000060 0x809ABED0 AFA40030 */ sw	$a0, 0X30($sp)
/* 000061 0x809ABED4 44070000 */ mfc1	$a3, $f0
/* 000062 0x809ABED8 240E0001 */ li	$t6, 0X1
/* 000063 0x809ABEDC AFAE0024 */ sw	$t6, 0X24($sp)
/* 000064 0x809ABEE0 24A41CA0 */ addiu	$a0, $a1, 0X1CA0
/* 000065 0x809ABEE4 2406010C */ li	$a2, 0X10C
/* 000066 0x809ABEE8 E7A00010 */ swc1	$f0, 0X10($sp)
/* 000067 0x809ABEEC E7A00014 */ swc1	$f0, 0X14($sp)
/* 000068 0x809ABEF0 AFA00018 */ sw	$zero, 0X18($sp)
/* 000069 0x809ABEF4 AFA0001C */ sw	$zero, 0X1C($sp)
/* 000070 0x809ABEF8 0C02EB18 */ jal	Actor_Spawn
/* 000071 0x809ABEFC AFA00020 */ sw	$zero, 0X20($sp)
/* 000072 0x809ABF00 3C04809B */ lui	$a0, %hi(D_809AC420)
/* 000073 0x809ABF04 2484C420 */ addiu	$a0, $a0, %lo(D_809AC420)
/* 000074 0x809ABF08 10400006 */ beqz	$v0, .L809ABF24
/* 000075 0x809ABF0C AC820000 */ sw	$v0, 0X0($a0)
/* 000076 0x809ABF10 8FAF0030 */ lw	$t7, 0X30($sp)
/* 000077 0x809ABF14 81F80003 */ lb	$t8, 0X3($t7)
/* 000078 0x809ABF18 A0580003 */ sb	$t8, 0X3($v0)
/* 000079 0x809ABF1C 10000002 */ b	.L809ABF28
/* 000080 0x809ABF20 24020001 */ li	$v0, 0X1
.L809ABF24:
/* 000081 0x809ABF24 00001025 */ move	$v0, $zero
.L809ABF28:
/* 000082 0x809ABF28 8FBF002C */ lw	$ra, 0X2C($sp)
/* 000083 0x809ABF2C 27BD0030 */ addiu	$sp, $sp, 0X30
/* 000084 0x809ABF30 03E00008 */ jr	$ra
/* 000085 0x809ABF34 00000000 */ nop

