glabel func_808AA33C
/* 002215 0x808AA33C 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 002216 0x808AA340 AFB10018 */ sw	$s1, 0X18($sp)
/* 002217 0x808AA344 AFB00014 */ sw	$s0, 0X14($sp)
/* 002218 0x808AA348 00808025 */ move	$s0, $a0
/* 002219 0x808AA34C 00A08825 */ move	$s1, $a1
/* 002220 0x808AA350 AFBF001C */ sw	$ra, 0X1C($sp)
/* 002221 0x808AA354 0C054926 */ jal	func_80152498
/* 002222 0x808AA358 26244908 */ addiu	$a0, $s1, 0X4908
/* 002223 0x808AA35C 24010006 */ li	$at, 0X6
/* 002224 0x808AA360 54410024 */ bnel	$v0, $at, .L808AA3F4
/* 002225 0x808AA364 8FBF001C */ lw	$ra, 0X1C($sp)
/* 002226 0x808AA368 0C051D89 */ jal	func_80147624
/* 002227 0x808AA36C 02202025 */ move	$a0, $s1
/* 002228 0x808AA370 1040001F */ beqz	$v0, .L808AA3F0
/* 002229 0x808AA374 240E0043 */ li	$t6, 0X43
/* 002230 0x808AA378 3C010001 */ lui	$at, 0x0001
/* 002231 0x808AA37C 00310821 */ addu	$at, $at, $s1
/* 002232 0x808AA380 A02E682A */ sb	$t6, 0X682A($at)
/* 002233 0x808AA384 3C010001 */ lui	$at, 0x0001
/* 002234 0x808AA388 00310821 */ addu	$at, $at, $s1
/* 002235 0x808AA38C 240F0004 */ li	$t7, 0X4
/* 002236 0x808AA390 3C05808B */ lui	$a1, %hi(func_808AA5E8)
/* 002237 0x808AA394 A02F692B */ sb	$t7, 0X692B($at)
/* 002238 0x808AA398 24A5A5E8 */ addiu	$a1, $a1, %lo(func_808AA5E8)
/* 002239 0x808AA39C 0C22A028 */ jal	func_808A80A0
/* 002240 0x808AA3A0 02002025 */ move	$a0, $s0
/* 002241 0x808AA3A4 861802C2 */ lh	$t8, 0X2C2($s0)
/* 002242 0x808AA3A8 5700000D */ bnezl	$t8, .L808AA3E0
/* 002243 0x808AA3AC 02002025 */ move	$a0, $s0
/* 002244 0x808AA3B0 0C03C81F */ jal	ActorCutscene_GetCurrentIndex
/* 002245 0x808AA3B4 00000000 */ nop
/* 002246 0x808AA3B8 2401007C */ li	$at, 0X7C
/* 002247 0x808AA3BC 54410004 */ bnel	$v0, $at, .L808AA3D0
/* 002248 0x808AA3C0 861902B8 */ lh	$t9, 0X2B8($s0)
/* 002249 0x808AA3C4 0C03C7EF */ jal	ActorCutscene_Stop
/* 002250 0x808AA3C8 2404007C */ li	$a0, 0X7C
/* 002251 0x808AA3CC 861902B8 */ lh	$t9, 0X2B8($s0)
.L808AA3D0:
/* 002252 0x808AA3D0 A61902C0 */ sh	$t9, 0X2C0($s0)
/* 002253 0x808AA3D4 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 002254 0x808AA3D8 860402C0 */ lh	$a0, 0X2C0($s0)
/* 002255 0x808AA3DC 02002025 */ move	$a0, $s0
.L808AA3E0:
/* 002256 0x808AA3E0 02202825 */ move	$a1, $s1
/* 002257 0x808AA3E4 3C0643C8 */ lui	$a2, 0x43C8
/* 002258 0x808AA3E8 0C02E178 */ jal	func_800B85E0
/* 002259 0x808AA3EC 2407FFFF */ li	$a3, -0X1
.L808AA3F0:
/* 002260 0x808AA3F0 8FBF001C */ lw	$ra, 0X1C($sp)
.L808AA3F4:
/* 002261 0x808AA3F4 8FB00014 */ lw	$s0, 0X14($sp)
/* 002262 0x808AA3F8 8FB10018 */ lw	$s1, 0X18($sp)
/* 002263 0x808AA3FC 03E00008 */ jr	$ra
/* 002264 0x808AA400 27BD0020 */ addiu	$sp, $sp, 0X20

