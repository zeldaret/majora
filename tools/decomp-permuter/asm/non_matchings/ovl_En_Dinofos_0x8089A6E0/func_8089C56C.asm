glabel func_8089C56C
/* 001955 0x8089C56C 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 001956 0x8089C570 AFB00018 */ sw	$s0, 0X18($sp)
/* 001957 0x8089C574 00808025 */ move	$s0, $a0
/* 001958 0x8089C578 AFBF001C */ sw	$ra, 0X1C($sp)
/* 001959 0x8089C57C AFA5002C */ sw	$a1, 0X2C($sp)
/* 001960 0x8089C580 860E0290 */ lh	$t6, 0X290($s0)
/* 001961 0x8089C584 260400BE */ addiu	$a0, $s0, 0XBE
/* 001962 0x8089C588 86050092 */ lh	$a1, 0X92($s0)
/* 001963 0x8089C58C 25CF0001 */ addiu	$t7, $t6, 0X1
/* 001964 0x8089C590 A60F0290 */ sh	$t7, 0X290($s0)
/* 001965 0x8089C594 0C03FB9C */ jal	Lib_StepTowardsCheckFramerateScaled_s
/* 001966 0x8089C598 24060800 */ li	$a2, 0X800
/* 001967 0x8089C59C 861800BE */ lh	$t8, 0XBE($s0)
/* 001968 0x8089C5A0 26040144 */ addiu	$a0, $s0, 0X144
/* 001969 0x8089C5A4 A6180032 */ sh	$t8, 0X32($s0)
/* 001970 0x8089C5A8 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 001971 0x8089C5AC AFA40020 */ sw	$a0, 0X20($sp)
/* 001972 0x8089C5B0 1040000D */ beqz	$v0, .L8089C5E8
/* 001973 0x8089C5B4 8FA40020 */ lw	$a0, 0X20($sp)
/* 001974 0x8089C5B8 0C02BDC8 */ jal	Effect_GetParams
/* 001975 0x8089C5BC 8E0402A0 */ lw	$a0, 0X2A0($s0)
/* 001976 0x8089C5C0 0C02A145 */ jal	func_800A8514
/* 001977 0x8089C5C4 00402025 */ move	$a0, $v0
/* 001978 0x8089C5C8 921905D4 */ lbu	$t9, 0X5D4($s0)
/* 001979 0x8089C5CC 02002025 */ move	$a0, $s0
/* 001980 0x8089C5D0 3328FFFE */ andi	$t0, $t9, 0XFFFE
/* 001981 0x8089C5D4 A20805D4 */ sb	$t0, 0X5D4($s0)
/* 001982 0x8089C5D8 0C226A6C */ jal	func_8089A9B0
/* 001983 0x8089C5DC 8FA5002C */ lw	$a1, 0X2C($sp)
/* 001984 0x8089C5E0 10000027 */ b	.L8089C680
/* 001985 0x8089C5E4 8FBF001C */ lw	$ra, 0X1C($sp)
.L8089C5E8:
/* 001986 0x8089C5E8 0C04DE2E */ jal	func_801378B8
/* 001987 0x8089C5EC 3C0540E0 */ lui	$a1, 0x40E0
/* 001988 0x8089C5F0 10400008 */ beqz	$v0, .L8089C614
/* 001989 0x8089C5F4 8FA40020 */ lw	$a0, 0X20($sp)
/* 001990 0x8089C5F8 920905D4 */ lbu	$t1, 0X5D4($s0)
/* 001991 0x8089C5FC 02002025 */ move	$a0, $s0
/* 001992 0x8089C600 352A0001 */ ori	$t2, $t1, 0X1
/* 001993 0x8089C604 0C226B5C */ jal	func_8089AD70
/* 001994 0x8089C608 A20A05D4 */ sb	$t2, 0X5D4($s0)
/* 001995 0x8089C60C 1000001C */ b	.L8089C680
/* 001996 0x8089C610 8FBF001C */ lw	$ra, 0X1C($sp)
.L8089C614:
/* 001997 0x8089C614 0C04DE2E */ jal	func_801378B8
/* 001998 0x8089C618 3C054150 */ lui	$a1, 0x4150
/* 001999 0x8089C61C 10400005 */ beqz	$v0, .L8089C634
/* 002000 0x8089C620 8FA40020 */ lw	$a0, 0X20($sp)
/* 002001 0x8089C624 920B05D4 */ lbu	$t3, 0X5D4($s0)
/* 002002 0x8089C628 316CFFFE */ andi	$t4, $t3, 0XFFFE
/* 002003 0x8089C62C 10000013 */ b	.L8089C67C
/* 002004 0x8089C630 A20C05D4 */ sb	$t4, 0X5D4($s0)
.L8089C634:
/* 002005 0x8089C634 0C04DE2E */ jal	func_801378B8
/* 002006 0x8089C638 3C054130 */ lui	$a1, 0x4130
/* 002007 0x8089C63C 10400006 */ beqz	$v0, .L8089C658
/* 002008 0x8089C640 3C0140E0 */ lui	$at, 0x40E0
/* 002009 0x8089C644 02002025 */ move	$a0, $s0
/* 002010 0x8089C648 0C02E3B2 */ jal	func_800B8EC8
/* 002011 0x8089C64C 2405382A */ li	$a1, 0X382A
/* 002012 0x8089C650 1000000B */ b	.L8089C680
/* 002013 0x8089C654 8FBF001C */ lw	$ra, 0X1C($sp)
.L8089C658:
/* 002014 0x8089C658 C604015C */ lwc1	$f4, 0X15C($s0)
/* 002015 0x8089C65C 44813000 */ mtc1	$at, $f6
/* 002016 0x8089C660 02002025 */ move	$a0, $s0
/* 002017 0x8089C664 4606203C */ c.lt.s	$f4, $f6
/* 002018 0x8089C668 00000000 */ nop
/* 002019 0x8089C66C 45020004 */ bc1fl .L8089C680
/* 002020 0x8089C670 8FBF001C */ lw	$ra, 0X1C($sp)
/* 002021 0x8089C674 0C226B80 */ jal	func_8089AE00
/* 002022 0x8089C678 8FA5002C */ lw	$a1, 0X2C($sp)
.L8089C67C:
/* 002023 0x8089C67C 8FBF001C */ lw	$ra, 0X1C($sp)
.L8089C680:
/* 002024 0x8089C680 8FB00018 */ lw	$s0, 0X18($sp)
/* 002025 0x8089C684 27BD0028 */ addiu	$sp, $sp, 0X28
/* 002026 0x8089C688 03E00008 */ jr	$ra
/* 002027 0x8089C68C 00000000 */ nop

