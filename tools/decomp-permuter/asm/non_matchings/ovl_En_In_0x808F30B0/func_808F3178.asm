glabel func_808F3178
/* 000050 0x808F3178 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000051 0x808F317C AFB00018 */ sw	$s0, 0X18($sp)
/* 000052 0x808F3180 00808025 */ move	$s0, $a0
/* 000053 0x808F3184 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000054 0x808F3188 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000055 0x808F318C 920E0260 */ lbu	$t6, 0X260($s0)
/* 000056 0x808F3190 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000057 0x808F3194 26050248 */ addiu	$a1, $s0, 0X248
/* 000058 0x808F3198 A3AE0027 */ sb	$t6, 0X27($sp)
/* 000059 0x808F319C 920F0261 */ lbu	$t7, 0X261($s0)
/* 000060 0x808F31A0 3C06C0C0 */ lui	$a2, 0xC0C0
/* 000061 0x808F31A4 0C04F6E4 */ jal	func_8013DB90
/* 000062 0x808F31A8 A3AF0026 */ sb	$t7, 0X26($sp)
/* 000063 0x808F31AC 305800FF */ andi	$t8, $v0, 0XFF
/* 000064 0x808F31B0 13000009 */ beqz	$t8, .L808F31D8
/* 000065 0x808F31B4 A2020260 */ sb	$v0, 0X260($s0)
/* 000066 0x808F31B8 93B90027 */ lbu	$t9, 0X27($sp)
/* 000067 0x808F31BC 304800FF */ andi	$t0, $v0, 0XFF
/* 000068 0x808F31C0 57200006 */ bnezl	$t9, .L808F31DC
/* 000069 0x808F31C4 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000070 0x808F31C8 11000003 */ beqz	$t0, .L808F31D8
/* 000071 0x808F31CC 02002025 */ move	$a0, $s0
/* 000072 0x808F31D0 0C02E3B2 */ jal	func_800B8EC8
/* 000073 0x808F31D4 24050802 */ li	$a1, 0X802
.L808F31D8:
/* 000074 0x808F31D8 8FA4002C */ lw	$a0, 0X2C($sp)
.L808F31DC:
/* 000075 0x808F31DC 26050254 */ addiu	$a1, $s0, 0X254
/* 000076 0x808F31E0 0C04F6E4 */ jal	func_8013DB90
/* 000077 0x808F31E4 3C06C0C0 */ lui	$a2, 0xC0C0
/* 000078 0x808F31E8 304900FF */ andi	$t1, $v0, 0XFF
/* 000079 0x808F31EC 11200009 */ beqz	$t1, .L808F3214
/* 000080 0x808F31F0 A2020261 */ sb	$v0, 0X261($s0)
/* 000081 0x808F31F4 93AA0026 */ lbu	$t2, 0X26($sp)
/* 000082 0x808F31F8 304B00FF */ andi	$t3, $v0, 0XFF
/* 000083 0x808F31FC 55400006 */ bnezl	$t2, .L808F3218
/* 000084 0x808F3200 00001025 */ move	$v0, $zero
/* 000085 0x808F3204 11600003 */ beqz	$t3, .L808F3214
/* 000086 0x808F3208 02002025 */ move	$a0, $s0
/* 000087 0x808F320C 0C02E3B2 */ jal	func_800B8EC8
/* 000088 0x808F3210 24050802 */ li	$a1, 0X802
.L808F3214:
/* 000089 0x808F3214 00001025 */ move	$v0, $zero
.L808F3218:
/* 000090 0x808F3218 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000091 0x808F321C 8FB00018 */ lw	$s0, 0X18($sp)
/* 000092 0x808F3220 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000093 0x808F3224 03E00008 */ jr	$ra
/* 000094 0x808F3228 00000000 */ nop

