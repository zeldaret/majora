glabel DoorAna_Init
/* 000003 0x808E01AC 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000004 0x808E01B0 AFB00018 */ sw	$s0, 0X18($sp)
/* 000005 0x808E01B4 00808025 */ move	$s0, $a0
/* 000006 0x808E01B8 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000007 0x808E01BC AFA50024 */ sw	$a1, 0X24($sp)
/* 000008 0x808E01C0 8602001C */ lh	$v0, 0X1C($s0)
/* 000009 0x808E01C4 A60000C0 */ sh	$zero, 0XC0($s0)
/* 000010 0x808E01C8 860E00C0 */ lh	$t6, 0XC0($s0)
/* 000011 0x808E01CC 24010100 */ li	$at, 0X100
/* 000012 0x808E01D0 30420300 */ andi	$v0, $v0, 0X300
/* 000013 0x808E01D4 10410004 */ beq	$v0, $at, .L808E01E8
/* 000014 0x808E01D8 A60E00BE */ sh	$t6, 0XBE($s0)
/* 000015 0x808E01DC 24010200 */ li	$at, 0X200
/* 000016 0x808E01E0 14410017 */ bne	$v0, $at, .L808E0240
/* 000017 0x808E01E4 02002025 */ move	$a0, $s0
.L808E01E8:
/* 000018 0x808E01E8 24010200 */ li	$at, 0X200
/* 000019 0x808E01EC 14410008 */ bne	$v0, $at, .L808E0210
/* 000020 0x808E01F0 8FA40024 */ lw	$a0, 0X24($sp)
/* 000021 0x808E01F4 3C07808E */ lui	$a3, %hi(D_808E0760)
/* 000022 0x808E01F8 24E70760 */ addiu	$a3, $a3, %lo(D_808E0760)
/* 000023 0x808E01FC 26050144 */ addiu	$a1, $s0, 0X144
/* 000024 0x808E0200 0C0384DD */ jal	Collision_InitCylinder
/* 000025 0x808E0204 02003025 */ move	$a2, $s0
/* 000026 0x808E0208 10000005 */ b	.L808E0220
/* 000027 0x808E020C 02002025 */ move	$a0, $s0
.L808E0210:
/* 000028 0x808E0210 8E0F0004 */ lw	$t7, 0X4($s0)
/* 000029 0x808E0214 35F80010 */ ori	$t8, $t7, 0X10
/* 000030 0x808E0218 AE180004 */ sw	$t8, 0X4($s0)
/* 000031 0x808E021C 02002025 */ move	$a0, $s0
.L808E0220:
/* 000032 0x808E0220 0C02D9F8 */ jal	Actor_SetScale
/* 000033 0x808E0224 24050000 */ li	$a1, 0X0
/* 000034 0x808E0228 3C05808E */ lui	$a1, %hi(func_808E02A4)
/* 000035 0x808E022C 24A502A4 */ addiu	$a1, $a1, %lo(func_808E02A4)
/* 000036 0x808E0230 0C238068 */ jal	func_808E01A0
/* 000037 0x808E0234 02002025 */ move	$a0, $s0
/* 000038 0x808E0238 10000005 */ b	.L808E0250
/* 000039 0x808E023C A200001F */ sb	$zero, 0X1F($s0)
.L808E0240:
/* 000040 0x808E0240 3C05808E */ lui	$a1, %hi(func_808E03B8)
/* 000041 0x808E0244 0C238068 */ jal	func_808E01A0
/* 000042 0x808E0248 24A503B8 */ addiu	$a1, $a1, %lo(func_808E03B8)
/* 000043 0x808E024C A200001F */ sb	$zero, 0X1F($s0)
.L808E0250:
/* 000044 0x808E0250 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000045 0x808E0254 8FB00018 */ lw	$s0, 0X18($sp)
/* 000046 0x808E0258 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000047 0x808E025C 03E00008 */ jr	$ra
/* 000048 0x808E0260 00000000 */ nop

