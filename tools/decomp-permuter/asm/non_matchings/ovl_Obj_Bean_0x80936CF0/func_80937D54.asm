glabel func_80937D54
/* 001049 0x80937D54 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 001050 0x80937D58 AFB00018 */ sw	$s0, 0X18($sp)
/* 001051 0x80937D5C 00808025 */ move	$s0, $a0
/* 001052 0x80937D60 AFBF001C */ sw	$ra, 0X1C($sp)
/* 001053 0x80937D64 860E01EC */ lh	$t6, 0X1EC($s0)
/* 001054 0x80937D68 2401000E */ li	$at, 0XE
/* 001055 0x80937D6C 240400C8 */ li	$a0, 0XC8
/* 001056 0x80937D70 25CFFFFF */ addiu	$t7, $t6, -0X1
/* 001057 0x80937D74 A60F01EC */ sh	$t7, 0X1EC($s0)
/* 001058 0x80937D78 861801EC */ lh	$t8, 0X1EC($s0)
/* 001059 0x80937D7C 1701000A */ bne	$t8, $at, .L80937DA8
/* 001060 0x80937D80 00000000 */ nop
/* 001061 0x80937D84 0C03FD14 */ jal	Math_Rand_S16Offset
/* 001062 0x80937D88 24050190 */ li	$a1, 0X190
/* 001063 0x80937D8C A60201F0 */ sh	$v0, 0X1F0($s0)
/* 001064 0x80937D90 24040064 */ li	$a0, 0X64
/* 001065 0x80937D94 0C03FD14 */ jal	Math_Rand_S16Offset
/* 001066 0x80937D98 240501F4 */ li	$a1, 0X1F4
/* 001067 0x80937D9C 241907D0 */ li	$t9, 0X7D0
/* 001068 0x80937DA0 A60201F6 */ sh	$v0, 0X1F6($s0)
/* 001069 0x80937DA4 A61901F8 */ sh	$t9, 0X1F8($s0)
.L80937DA8:
/* 001070 0x80937DA8 0C24DED5 */ jal	func_80937B54
/* 001071 0x80937DAC 02002025 */ move	$a0, $s0
/* 001072 0x80937DB0 860801EC */ lh	$t0, 0X1EC($s0)
/* 001073 0x80937DB4 05030004 */ bgezl	$t0, .L80937DC8
/* 001074 0x80937DB8 8FBF001C */ lw	$ra, 0X1C($sp)
/* 001075 0x80937DBC 0C24DF0C */ jal	func_80937C30
/* 001076 0x80937DC0 02002025 */ move	$a0, $s0
/* 001077 0x80937DC4 8FBF001C */ lw	$ra, 0X1C($sp)
.L80937DC8:
/* 001078 0x80937DC8 8FB00018 */ lw	$s0, 0X18($sp)
/* 001079 0x80937DCC 27BD0020 */ addiu	$sp, $sp, 0X20
/* 001080 0x80937DD0 03E00008 */ jr	$ra
/* 001081 0x80937DD4 00000000 */ nop

