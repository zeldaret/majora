glabel func_80A2D4B8
/* 000142 0x80A2D4B8 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000143 0x80A2D4BC AFB00018 */ sw	$s0, 0X18($sp)
/* 000144 0x80A2D4C0 00808025 */ move	$s0, $a0
/* 000145 0x80A2D4C4 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000146 0x80A2D4C8 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000147 0x80A2D4CC 0C28B50B */ jal	func_80A2D42C
/* 000148 0x80A2D4D0 02002025 */ move	$a0, $s0
/* 000149 0x80A2D4D4 24010001 */ li	$at, 0X1
/* 000150 0x80A2D4D8 10410063 */ beq	$v0, $at, .L80A2D668
/* 000151 0x80A2D4DC 02002025 */ move	$a0, $s0
/* 000152 0x80A2D4E0 24010002 */ li	$at, 0X2
/* 000153 0x80A2D4E4 10410008 */ beq	$v0, $at, .L80A2D508
/* 000154 0x80A2D4E8 02002025 */ move	$a0, $s0
/* 000155 0x80A2D4EC 24010003 */ li	$at, 0X3
/* 000156 0x80A2D4F0 1041009A */ beq	$v0, $at, .L80A2D75C
/* 000157 0x80A2D4F4 24010004 */ li	$at, 0X4
/* 000158 0x80A2D4F8 50410021 */ beql	$v0, $at, .L80A2D580
/* 000159 0x80A2D4FC 8E190004 */ lw	$t9, 0X4($s0)
/* 000160 0x80A2D500 1000007E */ b	.L80A2D6FC
/* 000161 0x80A2D504 02002025 */ move	$a0, $s0
.L80A2D508:
/* 000162 0x80A2D508 8E0E0004 */ lw	$t6, 0X4($s0)
/* 000163 0x80A2D50C 2401FFFE */ li	$at, -0X2
/* 000164 0x80A2D510 240528E4 */ li	$a1, 0X28E4
/* 000165 0x80A2D514 01C17824 */ and	$t7, $t6, $at
/* 000166 0x80A2D518 0C02E3B2 */ jal	func_800B8EC8
/* 000167 0x80A2D51C AE0F0004 */ sw	$t7, 0X4($s0)
/* 000168 0x80A2D520 3C013FC0 */ lui	$at, 0x3FC0
/* 000169 0x80A2D524 44810000 */ mtc1	$at, $f0
/* 000170 0x80A2D528 C6060058 */ lwc1	$f6, 0X58($s0)
/* 000171 0x80A2D52C 44802000 */ mtc1	$zero, $f4
/* 000172 0x80A2D530 3C0180A3 */ lui	$at, %hi(D_80A2E600)
/* 000173 0x80A2D534 46003202 */ mul.s	$f8, $f6, $f0
/* 000174 0x80A2D538 C422E600 */ lwc1	$f2, %lo(D_80A2E600)($at)
/* 000175 0x80A2D53C C60A0060 */ lwc1	$f10, 0X60($s0)
/* 000176 0x80A2D540 3C014000 */ lui	$at, 0x4000
/* 000177 0x80A2D544 E6040164 */ swc1	$f4, 0X164($s0)
/* 000178 0x80A2D548 46005402 */ mul.s	$f16, $f10, $f0
/* 000179 0x80A2D54C 44812000 */ mtc1	$at, $f4
/* 000180 0x80A2D550 C6120088 */ lwc1	$f18, 0X88($s0)
/* 000181 0x80A2D554 3C1880A3 */ lui	$t8, %hi(func_80A2D9CC)
/* 000182 0x80A2D558 2718D9CC */ addiu	$t8, $t8, %lo(func_80A2D9CC)
/* 000183 0x80A2D55C 46049180 */ add.s	$f6, $f18, $f4
/* 000184 0x80A2D560 AE0000C8 */ sw	$zero, 0XC8($s0)
/* 000185 0x80A2D564 E6080058 */ swc1	$f8, 0X58($s0)
/* 000186 0x80A2D568 E6100060 */ swc1	$f16, 0X60($s0)
/* 000187 0x80A2D56C E6060028 */ swc1	$f6, 0X28($s0)
/* 000188 0x80A2D570 AE180144 */ sw	$t8, 0X144($s0)
/* 000189 0x80A2D574 10000079 */ b	.L80A2D75C
/* 000190 0x80A2D578 E602005C */ swc1	$f2, 0X5C($s0)
/* 000191 0x80A2D57C 8E190004 */ lw	$t9, 0X4($s0)
.L80A2D580:
/* 000192 0x80A2D580 44804000 */ mtc1	$zero, $f8
/* 000193 0x80A2D584 8E020194 */ lw	$v0, 0X194($s0)
/* 000194 0x80A2D588 2401FFFE */ li	$at, -0X2
/* 000195 0x80A2D58C 03214024 */ and	$t0, $t9, $at
/* 000196 0x80A2D590 AE080004 */ sw	$t0, 0X4($s0)
/* 000197 0x80A2D594 E6080164 */ swc1	$f8, 0X164($s0)
/* 000198 0x80A2D598 84440032 */ lh	$a0, 0X32($v0)
/* 000199 0x80A2D59C 84490030 */ lh	$t1, 0X30($v0)
/* 000200 0x80A2D5A0 A7A40022 */ sh	$a0, 0X22($sp)
/* 000201 0x80A2D5A4 0C03FB51 */ jal	Math_Coss
/* 000202 0x80A2D5A8 A7A90020 */ sh	$t1, 0X20($sp)
/* 000203 0x80A2D5AC 3C0180A3 */ lui	$at, %hi(D_80A2E604)
/* 000204 0x80A2D5B0 C42AE604 */ lwc1	$f10, %lo(D_80A2E604)($at)
/* 000205 0x80A2D5B4 460A0002 */ mul.s	$f0, $f0, $f10
/* 000206 0x80A2D5B8 46000005 */ abs.s	$f0, $f0
/* 000207 0x80A2D5BC E6000058 */ swc1	$f0, 0X58($s0)
/* 000208 0x80A2D5C0 0C03FB51 */ jal	Math_Coss
/* 000209 0x80A2D5C4 87A40020 */ lh	$a0, 0X20($sp)
/* 000210 0x80A2D5C8 3C0180A3 */ lui	$at, %hi(D_80A2E608)
/* 000211 0x80A2D5CC C430E608 */ lwc1	$f16, %lo(D_80A2E608)($at)
/* 000212 0x80A2D5D0 46100002 */ mul.s	$f0, $f0, $f16
/* 000213 0x80A2D5D4 46000005 */ abs.s	$f0, $f0
/* 000214 0x80A2D5D8 E600005C */ swc1	$f0, 0X5C($s0)
/* 000215 0x80A2D5DC 0C03FB61 */ jal	Math_Sins
/* 000216 0x80A2D5E0 87A40022 */ lh	$a0, 0X22($sp)
/* 000217 0x80A2D5E4 3C0180A3 */ lui	$at, %hi(D_80A2E60C)
/* 000218 0x80A2D5E8 C422E60C */ lwc1	$f2, %lo(D_80A2E60C)($at)
/* 000219 0x80A2D5EC 3C0180A3 */ lui	$at, %hi(D_80A2E610)
/* 000220 0x80A2D5F0 C432E610 */ lwc1	$f18, %lo(D_80A2E610)($at)
/* 000221 0x80A2D5F4 C60C0058 */ lwc1	$f12, 0X58($s0)
/* 000222 0x80A2D5F8 3C0A80A3 */ lui	$t2, %hi(func_80A2D9CC)
/* 000223 0x80A2D5FC 46120002 */ mul.s	$f0, $f0, $f18
/* 000224 0x80A2D600 4602603C */ c.lt.s	$f12, $f2
/* 000225 0x80A2D604 254AD9CC */ addiu	$t2, $t2, %lo(func_80A2D9CC)
/* 000226 0x80A2D608 46000005 */ abs.s	$f0, $f0
/* 000227 0x80A2D60C 45000003 */ bc1f .L80A2D61C
/* 000228 0x80A2D610 E6000060 */ swc1	$f0, 0X60($s0)
/* 000229 0x80A2D614 10000002 */ b	.L80A2D620
/* 000230 0x80A2D618 E6020058 */ swc1	$f2, 0X58($s0)
.L80A2D61C:
/* 000231 0x80A2D61C E60C0058 */ swc1	$f12, 0X58($s0)
.L80A2D620:
/* 000232 0x80A2D620 C600005C */ lwc1	$f0, 0X5C($s0)
/* 000233 0x80A2D624 4602003C */ c.lt.s	$f0, $f2
/* 000234 0x80A2D628 00000000 */ nop
/* 000235 0x80A2D62C 45020004 */ bc1fl .L80A2D640
/* 000236 0x80A2D630 E600005C */ swc1	$f0, 0X5C($s0)
/* 000237 0x80A2D634 10000002 */ b	.L80A2D640
/* 000238 0x80A2D638 E602005C */ swc1	$f2, 0X5C($s0)
/* 000239 0x80A2D63C E600005C */ swc1	$f0, 0X5C($s0)
.L80A2D640:
/* 000240 0x80A2D640 C6000060 */ lwc1	$f0, 0X60($s0)
/* 000241 0x80A2D644 4602003C */ c.lt.s	$f0, $f2
/* 000242 0x80A2D648 00000000 */ nop
/* 000243 0x80A2D64C 45020004 */ bc1fl .L80A2D660
/* 000244 0x80A2D650 E6000060 */ swc1	$f0, 0X60($s0)
/* 000245 0x80A2D654 10000002 */ b	.L80A2D660
/* 000246 0x80A2D658 E6020060 */ swc1	$f2, 0X60($s0)
/* 000247 0x80A2D65C E6000060 */ swc1	$f0, 0X60($s0)
.L80A2D660:
/* 000248 0x80A2D660 1000003E */ b	.L80A2D75C
/* 000249 0x80A2D664 AE0A0144 */ sw	$t2, 0X144($s0)
.L80A2D668:
/* 000250 0x80A2D668 8E0B0004 */ lw	$t3, 0X4($s0)
/* 000251 0x80A2D66C 2401FFFE */ li	$at, -0X2
/* 000252 0x80A2D670 240528E3 */ li	$a1, 0X28E3
/* 000253 0x80A2D674 01616024 */ and	$t4, $t3, $at
/* 000254 0x80A2D678 0C02E3B2 */ jal	func_800B8EC8
/* 000255 0x80A2D67C AE0C0004 */ sw	$t4, 0X4($s0)
/* 000256 0x80A2D680 44802000 */ mtc1	$zero, $f4
/* 000257 0x80A2D684 8E020194 */ lw	$v0, 0X194($s0)
/* 000258 0x80A2D688 240D0005 */ li	$t5, 0X5
/* 000259 0x80A2D68C A60D001C */ sh	$t5, 0X1C($s0)
/* 000260 0x80A2D690 26050024 */ addiu	$a1, $s0, 0X24
/* 000261 0x80A2D694 E6040164 */ swc1	$f4, 0X164($s0)
/* 000262 0x80A2D698 0C03FE98 */ jal	Math_Vec3f_Yaw
/* 000263 0x80A2D69C 24440024 */ addiu	$a0, $v0, 0X24
/* 000264 0x80A2D6A0 A6020032 */ sh	$v0, 0X32($s0)
/* 000265 0x80A2D6A4 8A0F0030 */ lwl	$t7, 0X30($s0)
/* 000266 0x80A2D6A8 9A0F0033 */ lwr	$t7, 0X33($s0)
/* 000267 0x80A2D6AC 3C014120 */ lui	$at, 0x4120
/* 000268 0x80A2D6B0 44813000 */ mtc1	$at, $f6
/* 000269 0x80A2D6B4 AA0F00BC */ swl	$t7, 0XBC($s0)
/* 000270 0x80A2D6B8 3C014040 */ lui	$at, 0x4040
/* 000271 0x80A2D6BC BA0F00BF */ swr	$t7, 0XBF($s0)
/* 000272 0x80A2D6C0 960F0034 */ lhu	$t7, 0X34($s0)
/* 000273 0x80A2D6C4 44814000 */ mtc1	$at, $f8
/* 000274 0x80A2D6C8 3C0180A3 */ lui	$at, %hi(D_80A2E614)
/* 000275 0x80A2D6CC E6060068 */ swc1	$f6, 0X68($s0)
/* 000276 0x80A2D6D0 A60F00C0 */ sh	$t7, 0XC0($s0)
/* 000277 0x80A2D6D4 E6080070 */ swc1	$f8, 0X70($s0)
/* 000278 0x80A2D6D8 C42AE614 */ lwc1	$f10, %lo(D_80A2E614)($at)
/* 000279 0x80A2D6DC 3C1980A3 */ lui	$t9, %hi(func_80A2D9DC)
/* 000280 0x80A2D6E0 24180001 */ li	$t8, 0X1
/* 000281 0x80A2D6E4 2739D9DC */ addiu	$t9, $t9, %lo(func_80A2D9DC)
/* 000282 0x80A2D6E8 A61802FA */ sh	$t8, 0X2FA($s0)
/* 000283 0x80A2D6EC A60002F8 */ sh	$zero, 0X2F8($s0)
/* 000284 0x80A2D6F0 AE190144 */ sw	$t9, 0X144($s0)
/* 000285 0x80A2D6F4 10000019 */ b	.L80A2D75C
/* 000286 0x80A2D6F8 E60A0074 */ swc1	$f10, 0X74($s0)
.L80A2D6FC:
/* 000287 0x80A2D6FC 860302F8 */ lh	$v1, 0X2F8($s0)
/* 000288 0x80A2D700 14600003 */ bnez	$v1, .L80A2D710
/* 000289 0x80A2D704 2468FFFF */ addiu	$t0, $v1, -0X1
/* 000290 0x80A2D708 10000003 */ b	.L80A2D718
/* 000291 0x80A2D70C 00001025 */ move	$v0, $zero
.L80A2D710:
/* 000292 0x80A2D710 A60802F8 */ sh	$t0, 0X2F8($s0)
/* 000293 0x80A2D714 860202F8 */ lh	$v0, 0X2F8($s0)
.L80A2D718:
/* 000294 0x80A2D718 14400010 */ bnez	$v0, .L80A2D75C
/* 000295 0x80A2D71C 00000000 */ nop
/* 000296 0x80A2D720 0C02E3B2 */ jal	func_800B8EC8
/* 000297 0x80A2D724 240528B1 */ li	$a1, 0X28B1
/* 000298 0x80A2D728 26040148 */ addiu	$a0, $s0, 0X148
/* 000299 0x80A2D72C 0C28B4A0 */ jal	func_80A2D280
/* 000300 0x80A2D730 24050003 */ li	$a1, 0X3
/* 000301 0x80A2D734 3C014120 */ lui	$at, 0x4120
/* 000302 0x80A2D738 44818000 */ mtc1	$at, $f16
/* 000303 0x80A2D73C 2404001E */ li	$a0, 0X1E
/* 000304 0x80A2D740 2405001E */ li	$a1, 0X1E
/* 000305 0x80A2D744 0C03FD14 */ jal	Math_Rand_S16Offset
/* 000306 0x80A2D748 E6100068 */ swc1	$f16, 0X68($s0)
/* 000307 0x80A2D74C 3C0980A3 */ lui	$t1, %hi(func_80A2D778)
/* 000308 0x80A2D750 2529D778 */ addiu	$t1, $t1, %lo(func_80A2D778)
/* 000309 0x80A2D754 A60202F8 */ sh	$v0, 0X2F8($s0)
/* 000310 0x80A2D758 AE090144 */ sw	$t1, 0X144($s0)
.L80A2D75C:
/* 000311 0x80A2D75C 0C02DAA2 */ jal	Actor_SetVelocityAndMoveYRotationAndGravity
/* 000312 0x80A2D760 02002025 */ move	$a0, $s0
/* 000313 0x80A2D764 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000314 0x80A2D768 8FB00018 */ lw	$s0, 0X18($sp)
/* 000315 0x80A2D76C 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000316 0x80A2D770 03E00008 */ jr	$ra
/* 000317 0x80A2D774 00000000 */ nop


.section .late_rodata

glabel D_80A2E600
/* 001248 0x80A2E600 */ .word	0x3A83126F
glabel D_80A2E604
/* 001249 0x80A2E604 */ .word	0x3C23D70A
glabel D_80A2E608
/* 001250 0x80A2E608 */ .word	0x3C23D70A
glabel D_80A2E60C
/* 001251 0x80A2E60C */ .word	0x3A83126F
glabel D_80A2E610
/* 001252 0x80A2E610 */ .word	0x3C23D70A
glabel D_80A2E614
/* 001253 0x80A2E614 */ .word	0xBF4CCCCD
