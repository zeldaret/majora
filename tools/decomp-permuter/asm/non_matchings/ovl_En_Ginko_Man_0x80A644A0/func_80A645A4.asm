glabel func_80A645A4
/* 000065 0x80A645A4 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000066 0x80A645A8 AFB00018 */ sw	$s0, 0X18($sp)
/* 000067 0x80A645AC 00808025 */ move	$s0, $a0
/* 000068 0x80A645B0 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000069 0x80A645B4 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000070 0x80A645B8 860E0092 */ lh	$t6, 0X92($s0)
/* 000071 0x80A645BC 860F00BE */ lh	$t7, 0XBE($s0)
/* 000072 0x80A645C0 02002025 */ move	$a0, $s0
/* 000073 0x80A645C4 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000074 0x80A645C8 01CF1823 */ subu	$v1, $t6, $t7
/* 000075 0x80A645CC 0C299662 */ jal	func_80A65988
/* 000076 0x80A645D0 AFA30024 */ sw	$v1, 0X24($sp)
/* 000077 0x80A645D4 02002025 */ move	$a0, $s0
/* 000078 0x80A645D8 0C02E134 */ jal	func_800B84D0
/* 000079 0x80A645DC 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000080 0x80A645E0 8FA30024 */ lw	$v1, 0X24($sp)
/* 000081 0x80A645E4 10400034 */ beqz	$v0, .L80A646B8
/* 000082 0x80A645E8 8FA7002C */ lw	$a3, 0X2C($sp)
/* 000083 0x80A645EC 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 000084 0x80A645F0 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 000085 0x80A645F4 8C580EDC */ lw	$t8, 0XEDC($v0)
/* 000086 0x80A645F8 3C0580A6 */ lui	$a1, %hi(D_80A65D60)
/* 000087 0x80A645FC 24A55D60 */ addiu	$a1, $a1, %lo(D_80A65D60)
/* 000088 0x80A64600 3319FFFF */ andi	$t9, $t8, 0XFFFF
/* 000089 0x80A64604 1720000D */ bnez	$t9, .L80A6463C
/* 000090 0x80A64608 26040144 */ addiu	$a0, $s0, 0X144
/* 000091 0x80A6460C 3C0580A6 */ lui	$a1, %hi(D_80A65D60)
/* 000092 0x80A64610 24A55D60 */ addiu	$a1, $a1, %lo(D_80A65D60)
/* 000093 0x80A64614 26040144 */ addiu	$a0, $s0, 0X144
/* 000094 0x80A64618 0C02F717 */ jal	func_800BDC5C
/* 000095 0x80A6461C 00003025 */ move	$a2, $zero
/* 000096 0x80A64620 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000097 0x80A64624 2405044C */ li	$a1, 0X44C
/* 000098 0x80A64628 0C05462C */ jal	func_801518B0
/* 000099 0x80A6462C 02003025 */ move	$a2, $s0
/* 000100 0x80A64630 2408044C */ li	$t0, 0X44C
/* 000101 0x80A64634 1000001C */ b	.L80A646A8
/* 000102 0x80A64638 A6080258 */ sh	$t0, 0X258($s0)
.L80A6463C:
/* 000103 0x80A6463C 0C02F717 */ jal	func_800BDC5C
/* 000104 0x80A64640 24060001 */ li	$a2, 0X1
/* 000105 0x80A64644 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 000106 0x80A64648 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 000107 0x80A6464C 8C490018 */ lw	$t1, 0X18($v0)
/* 000108 0x80A64650 24010005 */ li	$at, 0X5
/* 000109 0x80A64654 8FA7002C */ lw	$a3, 0X2C($sp)
/* 000110 0x80A64658 0121001A */ div	$zero, $t1, $at
/* 000111 0x80A6465C 00005010 */ mfhi	$t2
/* 000112 0x80A64660 24010003 */ li	$at, 0X3
/* 000113 0x80A64664 1541000B */ bne	$t2, $at, .L80A64694
/* 000114 0x80A64668 00E02025 */ move	$a0, $a3
/* 000115 0x80A6466C 8C4B0010 */ lw	$t3, 0X10($v0)
/* 000116 0x80A64670 24010001 */ li	$at, 0X1
/* 000117 0x80A64674 24050467 */ li	$a1, 0X467
/* 000118 0x80A64678 15610006 */ bne	$t3, $at, .L80A64694
/* 000119 0x80A6467C 02003025 */ move	$a2, $s0
/* 000120 0x80A64680 0C05462C */ jal	func_801518B0
/* 000121 0x80A64684 00E02025 */ move	$a0, $a3
/* 000122 0x80A64688 240C0467 */ li	$t4, 0X467
/* 000123 0x80A6468C 10000006 */ b	.L80A646A8
/* 000124 0x80A64690 A60C0258 */ sh	$t4, 0X258($s0)
.L80A64694:
/* 000125 0x80A64694 24050466 */ li	$a1, 0X466
/* 000126 0x80A64698 0C05462C */ jal	func_801518B0
/* 000127 0x80A6469C 02003025 */ move	$a2, $s0
/* 000128 0x80A646A0 240D0466 */ li	$t5, 0X466
/* 000129 0x80A646A4 A60D0258 */ sh	$t5, 0X258($s0)
.L80A646A8:
/* 000130 0x80A646A8 0C299524 */ jal	func_80A65490
/* 000131 0x80A646AC 02002025 */ move	$a0, $s0
/* 000132 0x80A646B0 1000000C */ b	.L80A646E4
/* 000133 0x80A646B4 8FBF001C */ lw	$ra, 0X1C($sp)
.L80A646B8:
/* 000134 0x80A646B8 04610003 */ bgez	$v1, .L80A646C8
/* 000135 0x80A646BC 00601025 */ move	$v0, $v1
/* 000136 0x80A646C0 10000001 */ b	.L80A646C8
/* 000137 0x80A646C4 00031023 */ negu	$v0, $v1
.L80A646C8:
/* 000138 0x80A646C8 28411555 */ slti	$at, $v0, 0X1555
/* 000139 0x80A646CC 10200004 */ beqz	$at, .L80A646E0
/* 000140 0x80A646D0 02002025 */ move	$a0, $s0
/* 000141 0x80A646D4 00E02825 */ move	$a1, $a3
/* 000142 0x80A646D8 0C02E185 */ jal	func_800B8614
/* 000143 0x80A646DC 3C0642C8 */ lui	$a2, 0x42C8
.L80A646E0:
/* 000144 0x80A646E0 8FBF001C */ lw	$ra, 0X1C($sp)
.L80A646E4:
/* 000145 0x80A646E4 8FB00018 */ lw	$s0, 0X18($sp)
/* 000146 0x80A646E8 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000147 0x80A646EC 03E00008 */ jr	$ra
/* 000148 0x80A646F0 00000000 */ nop

