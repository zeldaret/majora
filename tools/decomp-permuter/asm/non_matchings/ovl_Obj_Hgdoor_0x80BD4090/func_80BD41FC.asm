glabel func_80BD41FC
/* 000091 0x80BD41FC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000092 0x80BD4200 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 000093 0x80BD4204 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 000094 0x80BD4208 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000095 0x80BD420C AFA5001C */ sw	$a1, 0X1C($sp)
/* 000096 0x80BD4210 904E0F43 */ lbu	$t6, 0XF43($v0)
/* 000097 0x80BD4214 31CF0020 */ andi	$t7, $t6, 0X20
/* 000098 0x80BD4218 55E00021 */ bnezl	$t7, .L80BD42A0
/* 000099 0x80BD421C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000100 0x80BD4220 90580F2C */ lbu	$t8, 0XF2C($v0)
/* 000101 0x80BD4224 3C0142C8 */ lui	$at, 0x42C8
/* 000102 0x80BD4228 33190020 */ andi	$t9, $t8, 0X20
/* 000103 0x80BD422C 5720001C */ bnezl	$t9, .L80BD42A0
/* 000104 0x80BD4230 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000105 0x80BD4234 C4840098 */ lwc1	$f4, 0X98($a0)
/* 000106 0x80BD4238 44813000 */ mtc1	$at, $f6
/* 000107 0x80BD423C 3C014220 */ lui	$at, 0x4220
/* 000108 0x80BD4240 4606203C */ c.lt.s	$f4, $f6
/* 000109 0x80BD4244 00000000 */ nop
/* 000110 0x80BD4248 45020015 */ bc1fl .L80BD42A0
/* 000111 0x80BD424C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000112 0x80BD4250 C488009C */ lwc1	$f8, 0X9C($a0)
/* 000113 0x80BD4254 44815000 */ mtc1	$at, $f10
/* 000114 0x80BD4258 00000000 */ nop
/* 000115 0x80BD425C 460A403C */ c.lt.s	$f8, $f10
/* 000116 0x80BD4260 00000000 */ nop
/* 000117 0x80BD4264 4502000E */ bc1fl .L80BD42A0
/* 000118 0x80BD4268 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000119 0x80BD426C 8488001C */ lh	$t0, 0X1C($a0)
/* 000120 0x80BD4270 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000121 0x80BD4274 31098000 */ andi	$t1, $t0, 0X8000
/* 000122 0x80BD4278 51200009 */ beqzl	$t1, .L80BD42A0
/* 000123 0x80BD427C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000124 0x80BD4280 0C2F5024 */ jal	func_80BD4090
/* 000125 0x80BD4284 AFA40018 */ sw	$a0, 0X18($sp)
/* 000126 0x80BD4288 8FA40018 */ lw	$a0, 0X18($sp)
/* 000127 0x80BD428C 0C2F5034 */ jal	func_80BD40D0
/* 000128 0x80BD4290 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000129 0x80BD4294 0C2F50AB */ jal	func_80BD42AC
/* 000130 0x80BD4298 8FA40018 */ lw	$a0, 0X18($sp)
/* 000131 0x80BD429C 8FBF0014 */ lw	$ra, 0X14($sp)
.L80BD42A0:
/* 000132 0x80BD42A0 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000133 0x80BD42A4 03E00008 */ jr	$ra
/* 000134 0x80BD42A8 00000000 */ nop

