glabel func_80AB3A7C
/* 001211 0x80AB3A7C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001212 0x80AB3A80 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001213 0x80AB3A84 AFA5001C */ sw	$a1, 0X1C($sp)
/* 001214 0x80AB3A88 8483015E */ lh	$v1, 0X15E($a0)
/* 001215 0x80AB3A8C 28610D48 */ slti	$at, $v1, 0XD48
/* 001216 0x80AB3A90 50200010 */ beqzl	$at, .L80AB3AD4
/* 001217 0x80AB3A94 8482001C */ lh	$v0, 0X1C($a0)
/* 001218 0x80AB3A98 8482001C */ lh	$v0, 0X1C($a0)
/* 001219 0x80AB3A9C 246E0019 */ addiu	$t6, $v1, 0X19
/* 001220 0x80AB3AA0 24010002 */ li	$at, 0X2
/* 001221 0x80AB3AA4 3042F000 */ andi	$v0, $v0, 0XF000
/* 001222 0x80AB3AA8 00021303 */ sra	$v0, $v0, 12
/* 001223 0x80AB3AAC 10410004 */ beq	$v0, $at, .L80AB3AC0
/* 001224 0x80AB3AB0 A48E015E */ sh	$t6, 0X15E($a0)
/* 001225 0x80AB3AB4 24010005 */ li	$at, 0X5
/* 001226 0x80AB3AB8 5441001B */ bnel	$v0, $at, .L80AB3B28
/* 001227 0x80AB3ABC 8FBF0014 */ lw	$ra, 0X14($sp)
.L80AB3AC0:
/* 001228 0x80AB3AC0 0C02E404 */ jal	func_800B9010
/* 001229 0x80AB3AC4 2405213D */ li	$a1, 0X213D
/* 001230 0x80AB3AC8 10000017 */ b	.L80AB3B28
/* 001231 0x80AB3ACC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001232 0x80AB3AD0 8482001C */ lh	$v0, 0X1C($a0)
.L80AB3AD4:
/* 001233 0x80AB3AD4 24010002 */ li	$at, 0X2
/* 001234 0x80AB3AD8 2405293E */ li	$a1, 0X293E
/* 001235 0x80AB3ADC 3042F000 */ andi	$v0, $v0, 0XF000
/* 001236 0x80AB3AE0 00021303 */ sra	$v0, $v0, 12
/* 001237 0x80AB3AE4 10410003 */ beq	$v0, $at, .L80AB3AF4
/* 001238 0x80AB3AE8 24010005 */ li	$at, 0X5
/* 001239 0x80AB3AEC 14410004 */ bne	$v0, $at, .L80AB3B00
/* 001240 0x80AB3AF0 00000000 */ nop
.L80AB3AF4:
/* 001241 0x80AB3AF4 0C02E3B2 */ jal	func_800B8EC8
/* 001242 0x80AB3AF8 AFA40018 */ sw	$a0, 0X18($sp)
/* 001243 0x80AB3AFC 8FA40018 */ lw	$a0, 0X18($sp)
.L80AB3B00:
/* 001244 0x80AB3B00 3C1880AB */ lui	$t8, %hi(func_80AB39BC)
/* 001245 0x80AB3B04 240F0D48 */ li	$t7, 0XD48
/* 001246 0x80AB3B08 271839BC */ addiu	$t8, $t8, %lo(func_80AB39BC)
/* 001247 0x80AB3B0C 2419000A */ li	$t9, 0XA
/* 001248 0x80AB3B10 24080014 */ li	$t0, 0X14
/* 001249 0x80AB3B14 A48F015E */ sh	$t7, 0X15E($a0)
/* 001250 0x80AB3B18 AC980174 */ sw	$t8, 0X174($a0)
/* 001251 0x80AB3B1C A4990154 */ sh	$t9, 0X154($a0)
/* 001252 0x80AB3B20 A4880156 */ sh	$t0, 0X156($a0)
/* 001253 0x80AB3B24 8FBF0014 */ lw	$ra, 0X14($sp)
.L80AB3B28:
/* 001254 0x80AB3B28 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001255 0x80AB3B2C 03E00008 */ jr	$ra
/* 001256 0x80AB3B30 00000000 */ nop

