glabel func_80B32644
/* 001069 0x80B32644 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 001070 0x80B32648 AFB00018 */ sw	$s0, 0X18($sp)
/* 001071 0x80B3264C 00808025 */ move	$s0, $a0
/* 001072 0x80B32650 AFBF001C */ sw	$ra, 0X1C($sp)
/* 001073 0x80B32654 AFA5002C */ sw	$a1, 0X2C($sp)
/* 001074 0x80B32658 26040144 */ addiu	$a0, $s0, 0X144
/* 001075 0x80B3265C 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 001076 0x80B32660 AFA40020 */ sw	$a0, 0X20($sp)
/* 001077 0x80B32664 10400008 */ beqz	$v0, .L80B32688
/* 001078 0x80B32668 8FA40020 */ lw	$a0, 0X20($sp)
/* 001079 0x80B3266C 3C050600 */ lui	$a1, 0x0600
/* 001080 0x80B32670 0C04DD50 */ jal	SkelAnime_ChangeAnimDefaultRepeat
/* 001081 0x80B32674 24A54FE4 */ addiu	$a1, $a1, 0X4FE4
/* 001082 0x80B32678 960E01EA */ lhu	$t6, 0X1EA($s0)
/* 001083 0x80B3267C A20001EE */ sb	$zero, 0X1EE($s0)
/* 001084 0x80B32680 35CF0002 */ ori	$t7, $t6, 0X2
/* 001085 0x80B32684 A60F01EA */ sh	$t7, 0X1EA($s0)
.L80B32688:
/* 001086 0x80B32688 8FA4002C */ lw	$a0, 0X2C($sp)
/* 001087 0x80B3268C 0C03B8A7 */ jal	func_800EE29C
/* 001088 0x80B32690 960501F0 */ lhu	$a1, 0X1F0($s0)
/* 001089 0x80B32694 14400005 */ bnez	$v0, .L80B326AC
/* 001090 0x80B32698 8FA4002C */ lw	$a0, 0X2C($sp)
/* 001091 0x80B3269C 3C1880B3 */ lui	$t8, %hi(func_80B324B0)
/* 001092 0x80B326A0 271824B0 */ addiu	$t8, $t8, %lo(func_80B324B0)
/* 001093 0x80B326A4 1000000E */ b	.L80B326E0
/* 001094 0x80B326A8 AE1801F8 */ sw	$t8, 0X1F8($s0)
.L80B326AC:
/* 001095 0x80B326AC 0C03B880 */ jal	func_800EE200
/* 001096 0x80B326B0 960501F0 */ lhu	$a1, 0X1F0($s0)
/* 001097 0x80B326B4 02002025 */ move	$a0, $s0
/* 001098 0x80B326B8 8FA5002C */ lw	$a1, 0X2C($sp)
/* 001099 0x80B326BC 0C03B7C9 */ jal	func_800EDF24
/* 001100 0x80B326C0 00403025 */ move	$a2, $v0
/* 001101 0x80B326C4 920201EE */ lbu	$v0, 0X1EE($s0)
/* 001102 0x80B326C8 2841001A */ slti	$at, $v0, 0X1A
/* 001103 0x80B326CC 14200003 */ bnez	$at, .L80B326DC
/* 001104 0x80B326D0 2459FFE7 */ addiu	$t9, $v0, -0X19
/* 001105 0x80B326D4 10000002 */ b	.L80B326E0
/* 001106 0x80B326D8 A21901EE */ sb	$t9, 0X1EE($s0)
.L80B326DC:
/* 001107 0x80B326DC A20001EE */ sb	$zero, 0X1EE($s0)
.L80B326E0:
/* 001108 0x80B326E0 8FBF001C */ lw	$ra, 0X1C($sp)
/* 001109 0x80B326E4 8FB00018 */ lw	$s0, 0X18($sp)
/* 001110 0x80B326E8 27BD0028 */ addiu	$sp, $sp, 0X28
/* 001111 0x80B326EC 03E00008 */ jr	$ra
/* 001112 0x80B326F0 00000000 */ nop

