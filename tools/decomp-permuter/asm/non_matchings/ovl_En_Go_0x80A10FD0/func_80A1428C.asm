glabel func_80A1428C
/* 003247 0x80A1428C 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 003248 0x80A14290 AFB00018 */ sw	$s0, 0X18($sp)
/* 003249 0x80A14294 00808025 */ move	$s0, $a0
/* 003250 0x80A14298 AFBF001C */ sw	$ra, 0X1C($sp)
/* 003251 0x80A1429C AFA50044 */ sw	$a1, 0X44($sp)
/* 003252 0x80A142A0 27A40030 */ addiu	$a0, $sp, 0X30
/* 003253 0x80A142A4 0C03FD43 */ jal	Math_Vec3f_Copy
/* 003254 0x80A142A8 26050024 */ addiu	$a1, $s0, 0X24
/* 003255 0x80A142AC 8E040284 */ lw	$a0, 0X284($s0)
/* 003256 0x80A142B0 3C01FDFF */ lui	$at, 0xFDFF
/* 003257 0x80A142B4 3421FFFF */ ori	$at, $at, 0XFFFF
/* 003258 0x80A142B8 5080000D */ beqzl	$a0, .L80A142F0
/* 003259 0x80A142BC 3C014238 */ lui	$at, 0x4238
/* 003260 0x80A142C0 8E0E0004 */ lw	$t6, 0X4($s0)
/* 003261 0x80A142C4 00002825 */ move	$a1, $zero
/* 003262 0x80A142C8 27A60024 */ addiu	$a2, $sp, 0X24
/* 003263 0x80A142CC 01C17824 */ and	$t7, $t6, $at
/* 003264 0x80A142D0 0C04F22E */ jal	func_8013C8B8
/* 003265 0x80A142D4 AE0F0004 */ sw	$t7, 0X4($s0)
/* 003266 0x80A142D8 27A40030 */ addiu	$a0, $sp, 0X30
/* 003267 0x80A142DC 0C03FE98 */ jal	Math_Vec3f_Yaw
/* 003268 0x80A142E0 27A50024 */ addiu	$a1, $sp, 0X24
/* 003269 0x80A142E4 A60200BE */ sh	$v0, 0XBE($s0)
/* 003270 0x80A142E8 A6020032 */ sh	$v0, 0X32($s0)
/* 003271 0x80A142EC 3C014238 */ lui	$at, 0x4238
.L80A142F0:
/* 003272 0x80A142F0 44812000 */ mtc1	$at, $f4
/* 003273 0x80A142F4 3C01BF80 */ lui	$at, 0xBF80
/* 003274 0x80A142F8 44813000 */ mtc1	$at, $f6
/* 003275 0x80A142FC A6000390 */ sh	$zero, 0X390($s0)
/* 003276 0x80A14300 34190100 */ ori	$t9, $zero, 0X100
/* 003277 0x80A14304 A6190390 */ sh	$t9, 0X390($s0)
/* 003278 0x80A14308 E60400C4 */ swc1	$f4, 0XC4($s0)
/* 003279 0x80A1430C E6060074 */ swc1	$f6, 0X74($s0)
/* 003280 0x80A14310 8FBF001C */ lw	$ra, 0X1C($sp)
/* 003281 0x80A14314 8FB00018 */ lw	$s0, 0X18($sp)
/* 003282 0x80A14318 27BD0040 */ addiu	$sp, $sp, 0X40
/* 003283 0x80A1431C 03E00008 */ jr	$ra
/* 003284 0x80A14320 00000000 */ nop

