glabel func_80B51510
/* 001088 0x80B51510 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 001089 0x80B51514 AFB00018 */ sw	$s0, 0X18($sp)
/* 001090 0x80B51518 00808025 */ move	$s0, $a0
/* 001091 0x80B5151C AFBF001C */ sw	$ra, 0X1C($sp)
/* 001092 0x80B51520 AFA5002C */ sw	$a1, 0X2C($sp)
/* 001093 0x80B51524 8FA4002C */ lw	$a0, 0X2C($sp)
/* 001094 0x80B51528 0C03B8A7 */ jal	func_800EE29C
/* 001095 0x80B5152C 240501DF */ li	$a1, 0X1DF
/* 001096 0x80B51530 10400053 */ beqz	$v0, .L80B51680
/* 001097 0x80B51534 240F0063 */ li	$t7, 0X63
/* 001098 0x80B51538 8FA4002C */ lw	$a0, 0X2C($sp)
/* 001099 0x80B5153C 0C03B880 */ jal	func_800EE200
/* 001100 0x80B51540 240501DF */ li	$a1, 0X1DF
/* 001101 0x80B51544 8FAE002C */ lw	$t6, 0X2C($sp)
/* 001102 0x80B51548 00027880 */ sll	$t7, $v0, 2
/* 001103 0x80B5154C AFA20020 */ sw	$v0, 0X20($sp)
/* 001104 0x80B51550 01CF1821 */ addu	$v1, $t6, $t7
/* 001105 0x80B51554 8C781F4C */ lw	$t8, 0X1F4C($v1)
/* 001106 0x80B51558 9219031B */ lbu	$t9, 0X31B($s0)
/* 001107 0x80B5155C 97040000 */ lhu	$a0, 0X0($t8)
/* 001108 0x80B51560 5324003A */ beql	$t9, $a0, .L80B5164C
/* 001109 0x80B51564 920E031A */ lbu	$t6, 0X31A($s0)
/* 001110 0x80B51568 A204031B */ sb	$a0, 0X31B($s0)
/* 001111 0x80B5156C 8C681F4C */ lw	$t0, 0X1F4C($v1)
/* 001112 0x80B51570 95090000 */ lhu	$t1, 0X0($t0)
/* 001113 0x80B51574 252AFFFF */ addiu	$t2, $t1, -0X1
/* 001114 0x80B51578 2D410007 */ sltiu	$at, $t2, 0X7
/* 001115 0x80B5157C 1020002D */ beqz	$at, .L80B51634
/* 001116 0x80B51580 000A5080 */ sll	$t2, $t2, 2
/* 001117 0x80B51584 3C0180B5 */ lui	$at, %hi(jtbl_D_80B53470)
/* 001118 0x80B51588 002A0821 */ addu	$at, $at, $t2
/* 001119 0x80B5158C 8C2A3470 */ lw	$t2, %lo(jtbl_D_80B53470)($at)
/* 001120 0x80B51590 01400008 */ jr	$t2
/* 001121 0x80B51594 00000000 */ nop
glabel L80B51598
.L80B51598:
/* 001122 0x80B51598 A200031A */ sb	$zero, 0X31A($s0)
/* 001123 0x80B5159C 10000025 */ b	.L80B51634
/* 001124 0x80B515A0 A60002E4 */ sh	$zero, 0X2E4($s0)
glabel L80B515A4
.L80B515A4:
/* 001125 0x80B515A4 240B0002 */ li	$t3, 0X2
/* 001126 0x80B515A8 240C0002 */ li	$t4, 0X2
/* 001127 0x80B515AC A20B031A */ sb	$t3, 0X31A($s0)
/* 001128 0x80B515B0 10000020 */ b	.L80B51634
/* 001129 0x80B515B4 A60C02E4 */ sh	$t4, 0X2E4($s0)
glabel L80B515B8
.L80B515B8:
/* 001130 0x80B515B8 240D0007 */ li	$t5, 0X7
/* 001131 0x80B515BC 240E0007 */ li	$t6, 0X7
/* 001132 0x80B515C0 A20D031A */ sb	$t5, 0X31A($s0)
/* 001133 0x80B515C4 1000001B */ b	.L80B51634
/* 001134 0x80B515C8 A60E02E4 */ sh	$t6, 0X2E4($s0)
glabel L80B515CC
.L80B515CC:
/* 001135 0x80B515CC 240F0003 */ li	$t7, 0X3
/* 001136 0x80B515D0 24180003 */ li	$t8, 0X3
/* 001137 0x80B515D4 A20F031A */ sb	$t7, 0X31A($s0)
/* 001138 0x80B515D8 10000016 */ b	.L80B51634
/* 001139 0x80B515DC A61802E4 */ sh	$t8, 0X2E4($s0)
glabel L80B515E0
.L80B515E0:
/* 001140 0x80B515E0 960901E4 */ lhu	$t1, 0X1E4($s0)
/* 001141 0x80B515E4 3C0B80B5 */ lui	$t3, %hi(func_80B5227C)
/* 001142 0x80B515E8 24190001 */ li	$t9, 0X1
/* 001143 0x80B515EC 24080001 */ li	$t0, 0X1
/* 001144 0x80B515F0 256B227C */ addiu	$t3, $t3, %lo(func_80B5227C)
/* 001145 0x80B515F4 352A0080 */ ori	$t2, $t1, 0X80
/* 001146 0x80B515F8 A219031A */ sb	$t9, 0X31A($s0)
/* 001147 0x80B515FC A60802E4 */ sh	$t0, 0X2E4($s0)
/* 001148 0x80B51600 A60A01E4 */ sh	$t2, 0X1E4($s0)
/* 001149 0x80B51604 1000000B */ b	.L80B51634
/* 001150 0x80B51608 AE0B01D4 */ sw	$t3, 0X1D4($s0)
glabel L80B5160C
.L80B5160C:
/* 001151 0x80B5160C 240C000C */ li	$t4, 0XC
/* 001152 0x80B51610 240D000C */ li	$t5, 0XC
/* 001153 0x80B51614 A20C031A */ sb	$t4, 0X31A($s0)
/* 001154 0x80B51618 10000006 */ b	.L80B51634
/* 001155 0x80B5161C A60D02E4 */ sh	$t5, 0X2E4($s0)
glabel L80B51620
.L80B51620:
/* 001156 0x80B51620 8605001C */ lh	$a1, 0X1C($s0)
/* 001157 0x80B51624 8FA4002C */ lw	$a0, 0X2C($sp)
/* 001158 0x80B51628 30A53F00 */ andi	$a1, $a1, 0X3F00
/* 001159 0x80B5162C 0C02D6FD */ jal	Actor_SetSwitchFlag
/* 001160 0x80B51630 00052A03 */ sra	$a1, $a1, 8
.L80B51634:
/* 001161 0x80B51634 3C0580B5 */ lui	$a1, %hi(D_80B53268)
/* 001162 0x80B51638 24A53268 */ addiu	$a1, $a1, %lo(D_80B53268)
/* 001163 0x80B5163C 26040190 */ addiu	$a0, $s0, 0X190
/* 001164 0x80B51640 0C02F717 */ jal	func_800BDC5C
/* 001165 0x80B51644 9206031A */ lbu	$a2, 0X31A($s0)
/* 001166 0x80B51648 920E031A */ lbu	$t6, 0X31A($s0)
.L80B5164C:
/* 001167 0x80B5164C 24010007 */ li	$at, 0X7
/* 001168 0x80B51650 02002025 */ move	$a0, $s0
/* 001169 0x80B51654 55C10004 */ bnel	$t6, $at, .L80B51668
/* 001170 0x80B51658 02002025 */ move	$a0, $s0
/* 001171 0x80B5165C 0C2D44C2 */ jal	func_80B51308
/* 001172 0x80B51660 8FA5002C */ lw	$a1, 0X2C($sp)
/* 001173 0x80B51664 02002025 */ move	$a0, $s0
.L80B51668:
/* 001174 0x80B51668 8FA5002C */ lw	$a1, 0X2C($sp)
/* 001175 0x80B5166C 0C03B7C9 */ jal	func_800EDF24
/* 001176 0x80B51670 8FA60020 */ lw	$a2, 0X20($sp)
/* 001177 0x80B51674 44802000 */ mtc1	$zero, $f4
/* 001178 0x80B51678 10000002 */ b	.L80B51684
/* 001179 0x80B5167C E60400C4 */ swc1	$f4, 0XC4($s0)
.L80B51680:
/* 001180 0x80B51680 A20F031B */ sb	$t7, 0X31B($s0)
.L80B51684:
/* 001181 0x80B51684 8FBF001C */ lw	$ra, 0X1C($sp)
/* 001182 0x80B51688 8FB00018 */ lw	$s0, 0X18($sp)
/* 001183 0x80B5168C 27BD0028 */ addiu	$sp, $sp, 0X28
/* 001184 0x80B51690 03E00008 */ jr	$ra
/* 001185 0x80B51694 00000000 */ nop


.section .late_rodata

glabel jtbl_D_80B53470
/* 003096 0x80B53470 */ .word	L80B51598
/* 003097 0x80B53474 */ .word	L80B515A4
/* 003098 0x80B53478 */ .word	L80B515B8
/* 003099 0x80B5347C */ .word	L80B515CC
/* 003100 0x80B53480 */ .word	L80B515E0
/* 003101 0x80B53484 */ .word	L80B5160C
/* 003102 0x80B53488 */ .word	L80B51620
