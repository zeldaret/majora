glabel func_80C20D64
/* 001053 0x80C20D64 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001054 0x80C20D68 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001055 0x80C20D6C 00803825 */ move	$a3, $a0
/* 001056 0x80C20D70 8CE20228 */ lw	$v0, 0X228($a3)
/* 001057 0x80C20D74 3C0E80C2 */ lui	$t6, %hi(func_80C1FE20)
/* 001058 0x80C20D78 25CEFE20 */ addiu	$t6, $t6, %lo(func_80C1FE20)
/* 001059 0x80C20D7C 11C20006 */ beq	$t6, $v0, .L80C20D98
/* 001060 0x80C20D80 3C0F80C2 */ lui	$t7, %hi(func_80C2077C)
/* 001061 0x80C20D84 25EF077C */ addiu	$t7, $t7, %lo(func_80C2077C)
/* 001062 0x80C20D88 11E20003 */ beq	$t7, $v0, .L80C20D98
/* 001063 0x80C20D8C 3C1880C2 */ lui	$t8, %hi(func_80C1FE80)
/* 001064 0x80C20D90 2718FE80 */ addiu	$t8, $t8, %lo(func_80C1FE80)
/* 001065 0x80C20D94 1702003A */ bne	$t8, $v0, .L80C20E80
.L80C20D98:
/* 001066 0x80C20D98 3C1980C2 */ lui	$t9, %hi(func_80C2077C)
/* 001067 0x80C20D9C 2739077C */ addiu	$t9, $t9, %lo(func_80C2077C)
/* 001068 0x80C20DA0 1322001F */ beq	$t9, $v0, .L80C20E20
/* 001069 0x80C20DA4 00A02025 */ move	$a0, $a1
/* 001070 0x80C20DA8 00A02025 */ move	$a0, $a1
/* 001071 0x80C20DAC 0C04900F */ jal	func_8012403C
/* 001072 0x80C20DB0 AFA70018 */ sw	$a3, 0X18($sp)
/* 001073 0x80C20DB4 2401000F */ li	$at, 0XF
/* 001074 0x80C20DB8 14410031 */ bne	$v0, $at, .L80C20E80
/* 001075 0x80C20DBC 8FA70018 */ lw	$a3, 0X18($sp)
/* 001076 0x80C20DC0 8CE80004 */ lw	$t0, 0X4($a3)
/* 001077 0x80C20DC4 2401FFFA */ li	$at, -0X6
/* 001078 0x80C20DC8 8CEE0228 */ lw	$t6, 0X228($a3)
/* 001079 0x80C20DCC 01014824 */ and	$t1, $t0, $at
/* 001080 0x80C20DD0 3C0D80C2 */ lui	$t5, %hi(func_80C1FE80)
/* 001081 0x80C20DD4 ACE90004 */ sw	$t1, 0X4($a3)
/* 001082 0x80C20DD8 352B0009 */ ori	$t3, $t1, 0X9
/* 001083 0x80C20DDC 240C00FF */ li	$t4, 0XFF
/* 001084 0x80C20DE0 25ADFE80 */ addiu	$t5, $t5, %lo(func_80C1FE80)
/* 001085 0x80C20DE4 ACEB0004 */ sw	$t3, 0X4($a3)
/* 001086 0x80C20DE8 A0EC011F */ sb	$t4, 0X11F($a3)
/* 001087 0x80C20DEC 15AE0008 */ bne	$t5, $t6, .L80C20E10
/* 001088 0x80C20DF0 A4E00116 */ sh	$zero, 0X116($a3)
/* 001089 0x80C20DF4 3C0580C2 */ lui	$a1, %hi(D_80C21D04)
/* 001090 0x80C20DF8 24A51D04 */ addiu	$a1, $a1, %lo(D_80C21D04)
/* 001091 0x80C20DFC 24E401E4 */ addiu	$a0, $a3, 0X1E4
/* 001092 0x80C20E00 2406000C */ li	$a2, 0XC
/* 001093 0x80C20E04 0C02F717 */ jal	func_800BDC5C
/* 001094 0x80C20E08 AFA70018 */ sw	$a3, 0X18($sp)
/* 001095 0x80C20E0C 8FA70018 */ lw	$a3, 0X18($sp)
.L80C20E10:
/* 001096 0x80C20E10 0C3081D7 */ jal	func_80C2075C
/* 001097 0x80C20E14 00E02025 */ move	$a0, $a3
/* 001098 0x80C20E18 1000001A */ b	.L80C20E84
/* 001099 0x80C20E1C 8FBF0014 */ lw	$ra, 0X14($sp)
.L80C20E20:
/* 001100 0x80C20E20 0C04900F */ jal	func_8012403C
/* 001101 0x80C20E24 AFA70018 */ sw	$a3, 0X18($sp)
/* 001102 0x80C20E28 2401000F */ li	$at, 0XF
/* 001103 0x80C20E2C 10410014 */ beq	$v0, $at, .L80C20E80
/* 001104 0x80C20E30 8FA70018 */ lw	$a3, 0X18($sp)
/* 001105 0x80C20E34 8CEF0004 */ lw	$t7, 0X4($a3)
/* 001106 0x80C20E38 2401FFF6 */ li	$at, -0XA
/* 001107 0x80C20E3C 8CEB01EC */ lw	$t3, 0X1EC($a3)
/* 001108 0x80C20E40 01E1C024 */ and	$t8, $t7, $at
/* 001109 0x80C20E44 3C0A0600 */ lui	$t2, 0x0600
/* 001110 0x80C20E48 ACF80004 */ sw	$t8, 0X4($a3)
/* 001111 0x80C20E4C 37080005 */ ori	$t0, $t8, 0X5
/* 001112 0x80C20E50 24090055 */ li	$t1, 0X55
/* 001113 0x80C20E54 254A697C */ addiu	$t2, $t2, 0X697C
/* 001114 0x80C20E58 ACE80004 */ sw	$t0, 0X4($a3)
/* 001115 0x80C20E5C A0E9011F */ sb	$t1, 0X11F($a3)
/* 001116 0x80C20E60 154B0005 */ bne	$t2, $t3, .L80C20E78
/* 001117 0x80C20E64 A4E00116 */ sh	$zero, 0X116($a3)
/* 001118 0x80C20E68 0C307F83 */ jal	func_80C1FE0C
/* 001119 0x80C20E6C 00E02025 */ move	$a0, $a3
/* 001120 0x80C20E70 10000004 */ b	.L80C20E84
/* 001121 0x80C20E74 8FBF0014 */ lw	$ra, 0X14($sp)
.L80C20E78:
/* 001122 0x80C20E78 0C307F8C */ jal	func_80C1FE30
/* 001123 0x80C20E7C 00E02025 */ move	$a0, $a3
.L80C20E80:
/* 001124 0x80C20E80 8FBF0014 */ lw	$ra, 0X14($sp)
.L80C20E84:
/* 001125 0x80C20E84 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001126 0x80C20E88 03E00008 */ jr	$ra
/* 001127 0x80C20E8C 00000000 */ nop

