glabel EnZog_Update
/* 002004 0x80B95260 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 002005 0x80B95264 AFB00020 */ sw	$s0, 0X20($sp)
/* 002006 0x80B95268 00808025 */ move	$s0, $a0
/* 002007 0x80B9526C AFBF0024 */ sw	$ra, 0X24($sp)
/* 002008 0x80B95270 AFA5003C */ sw	$a1, 0X3C($sp)
/* 002009 0x80B95274 0C02DAA2 */ jal	Actor_SetVelocityAndMoveYRotationAndGravity
/* 002010 0x80B95278 02002025 */ move	$a0, $s0
/* 002011 0x80B9527C 3C014120 */ lui	$at, 0x4120
/* 002012 0x80B95280 44810000 */ mtc1	$at, $f0
/* 002013 0x80B95284 240E0005 */ li	$t6, 0X5
/* 002014 0x80B95288 AFAE0014 */ sw	$t6, 0X14($sp)
/* 002015 0x80B9528C 44060000 */ mfc1	$a2, $f0
/* 002016 0x80B95290 44070000 */ mfc1	$a3, $f0
/* 002017 0x80B95294 8FA4003C */ lw	$a0, 0X3C($sp)
/* 002018 0x80B95298 02002825 */ move	$a1, $s0
/* 002019 0x80B9529C 0C02DE2E */ jal	func_800B78B8
/* 002020 0x80B952A0 E7A00010 */ swc1	$f0, 0X10($sp)
/* 002021 0x80B952A4 8FA4003C */ lw	$a0, 0X3C($sp)
/* 002022 0x80B952A8 0C03B8A7 */ jal	func_800EE29C
/* 002023 0x80B952AC 240501D7 */ li	$a1, 0X1D7
/* 002024 0x80B952B0 5040000C */ beqzl	$v0, .L80B952E4
/* 002025 0x80B952B4 8E190328 */ lw	$t9, 0X328($s0)
/* 002026 0x80B952B8 860F001C */ lh	$t7, 0X1C($s0)
/* 002027 0x80B952BC 24010002 */ li	$at, 0X2
/* 002028 0x80B952C0 3C1980B9 */ lui	$t9, %hi(func_80B9461C)
/* 002029 0x80B952C4 31F8000F */ andi	$t8, $t7, 0XF
/* 002030 0x80B952C8 53010006 */ beql	$t8, $at, .L80B952E4
/* 002031 0x80B952CC 8E190328 */ lw	$t9, 0X328($s0)
/* 002032 0x80B952D0 44802000 */ mtc1	$zero, $f4
/* 002033 0x80B952D4 2739461C */ addiu	$t9, $t9, %lo(func_80B9461C)
/* 002034 0x80B952D8 AE190328 */ sw	$t9, 0X328($s0)
/* 002035 0x80B952DC E60400C4 */ swc1	$f4, 0XC4($s0)
/* 002036 0x80B952E0 8E190328 */ lw	$t9, 0X328($s0)
.L80B952E4:
/* 002037 0x80B952E4 02002025 */ move	$a0, $s0
/* 002038 0x80B952E8 8FA5003C */ lw	$a1, 0X3C($sp)
/* 002039 0x80B952EC 0320F809 */ jalr	$t9
/* 002040 0x80B952F0 00000000 */ nop
/* 002041 0x80B952F4 86020304 */ lh	$v0, 0X304($s0)
/* 002042 0x80B952F8 24010006 */ li	$at, 0X6
/* 002043 0x80B952FC 26040190 */ addiu	$a0, $s0, 0X190
/* 002044 0x80B95300 54410007 */ bnel	$v0, $at, .L80B95320
/* 002045 0x80B95304 24010011 */ li	$at, 0X11
/* 002046 0x80B95308 0C04DE2E */ jal	func_801378B8
/* 002047 0x80B9530C 3C05422C */ lui	$a1, 0x422C
/* 002048 0x80B95310 54400009 */ bnezl	$v0, .L80B95338
/* 002049 0x80B95314 02002025 */ move	$a0, $s0
/* 002050 0x80B95318 86020304 */ lh	$v0, 0X304($s0)
/* 002051 0x80B9531C 24010011 */ li	$at, 0X11
.L80B95320:
/* 002052 0x80B95320 14410007 */ bne	$v0, $at, .L80B95340
/* 002053 0x80B95324 26040190 */ addiu	$a0, $s0, 0X190
/* 002054 0x80B95328 0C04DE2E */ jal	func_801378B8
/* 002055 0x80B9532C 3C054160 */ lui	$a1, 0x4160
/* 002056 0x80B95330 10400003 */ beqz	$v0, .L80B95340
/* 002057 0x80B95334 02002025 */ move	$a0, $s0
.L80B95338:
/* 002058 0x80B95338 0C02E3B2 */ jal	func_800B8EC8
/* 002059 0x80B9533C 24052995 */ li	$a1, 0X2995
.L80B95340:
/* 002060 0x80B95340 9608030A */ lhu	$t0, 0X30A($s0)
/* 002061 0x80B95344 26060144 */ addiu	$a2, $s0, 0X144
/* 002062 0x80B95348 00C02825 */ move	$a1, $a2
/* 002063 0x80B9534C 31090001 */ andi	$t1, $t0, 0X1
/* 002064 0x80B95350 1120000F */ beqz	$t1, .L80B95390
/* 002065 0x80B95354 02002025 */ move	$a0, $s0
/* 002066 0x80B95358 C60602F0 */ lwc1	$f6, 0X2F0($s0)
/* 002067 0x80B9535C C60A0028 */ lwc1	$f10, 0X28($s0)
/* 002068 0x80B95360 C61202F8 */ lwc1	$f18, 0X2F8($s0)
/* 002069 0x80B95364 4600320D */ trunc.w.s	$f8, $f6
/* 002070 0x80B95368 26060144 */ addiu	$a2, $s0, 0X144
/* 002071 0x80B9536C 4600540D */ trunc.w.s	$f16, $f10
/* 002072 0x80B95370 440B4000 */ mfc1	$t3, $f8
/* 002073 0x80B95374 4600910D */ trunc.w.s	$f4, $f18
/* 002074 0x80B95378 440D8000 */ mfc1	$t5, $f16
/* 002075 0x80B9537C A60B018A */ sh	$t3, 0X18A($s0)
/* 002076 0x80B95380 440F2000 */ mfc1	$t7, $f4
/* 002077 0x80B95384 A60D018C */ sh	$t5, 0X18C($s0)
/* 002078 0x80B95388 10000004 */ b	.L80B9539C
/* 002079 0x80B9538C A60F018E */ sh	$t7, 0X18E($s0)
.L80B95390:
/* 002080 0x80B95390 0C039F7E */ jal	Collision_CylinderMoveToActor
/* 002081 0x80B95394 AFA6002C */ sw	$a2, 0X2C($sp)
/* 002082 0x80B95398 8FA6002C */ lw	$a2, 0X2C($sp)
.L80B9539C:
/* 002083 0x80B9539C 8FA4003C */ lw	$a0, 0X3C($sp)
/* 002084 0x80B953A0 3C010001 */ lui	$at, 0x0001
/* 002085 0x80B953A4 34218884 */ ori	$at, $at, 0X8884
/* 002086 0x80B953A8 0C038A4A */ jal	Collision_AddOT
/* 002087 0x80B953AC 00812821 */ addu	$a1, $a0, $at
/* 002088 0x80B953B0 8E190028 */ lw	$t9, 0X28($s0)
/* 002089 0x80B953B4 8E080024 */ lw	$t0, 0X24($s0)
/* 002090 0x80B953B8 9603030A */ lhu	$v1, 0X30A($s0)
/* 002091 0x80B953BC AE190040 */ sw	$t9, 0X40($s0)
/* 002092 0x80B953C0 C6120040 */ lwc1	$f18, 0X40($s0)
/* 002093 0x80B953C4 3C0141F0 */ lui	$at, 0x41F0
/* 002094 0x80B953C8 44818000 */ mtc1	$at, $f16
/* 002095 0x80B953CC AE08003C */ sw	$t0, 0X3C($s0)
/* 002096 0x80B953D0 8E08002C */ lw	$t0, 0X2C($s0)
/* 002097 0x80B953D4 46109400 */ add.s	$f16, $f18, $f16
/* 002098 0x80B953D8 30690004 */ andi	$t1, $v1, 0X4
/* 002099 0x80B953DC AE080044 */ sw	$t0, 0X44($s0)
/* 002100 0x80B953E0 11200033 */ beqz	$t1, .L80B954B0
/* 002101 0x80B953E4 E6100040 */ swc1	$f16, 0X40($s0)
/* 002102 0x80B953E8 8602031A */ lh	$v0, 0X31A($s0)
/* 002103 0x80B953EC 2404FFFF */ li	$a0, -0X1
/* 002104 0x80B953F0 306AFFFB */ andi	$t2, $v1, 0XFFFB
/* 002105 0x80B953F4 14820003 */ bne	$a0, $v0, .L80B95404
/* 002106 0x80B953F8 00025840 */ sll	$t3, $v0, 1
/* 002107 0x80B953FC 1000002C */ b	.L80B954B0
/* 002108 0x80B95400 A60A030A */ sh	$t2, 0X30A($s0)
.L80B95404:
/* 002109 0x80B95404 020B6021 */ addu	$t4, $s0, $t3
/* 002110 0x80B95408 858D030C */ lh	$t5, 0X30C($t4)
/* 002111 0x80B9540C 306EFFFB */ andi	$t6, $v1, 0XFFFB
/* 002112 0x80B95410 148D0003 */ bne	$a0, $t5, .L80B95420
/* 002113 0x80B95414 00000000 */ nop
/* 002114 0x80B95418 10000025 */ b	.L80B954B0
/* 002115 0x80B9541C A60E030A */ sh	$t6, 0X30A($s0)
.L80B95420:
/* 002116 0x80B95420 0C03C81F */ jal	ActorCutscene_GetCurrentIndex
/* 002117 0x80B95424 00000000 */ nop
/* 002118 0x80B95428 2401007C */ li	$at, 0X7C
/* 002119 0x80B9542C 5441000B */ bnel	$v0, $at, .L80B9545C
/* 002120 0x80B95430 8608031A */ lh	$t0, 0X31A($s0)
/* 002121 0x80B95434 0C03C7EF */ jal	ActorCutscene_Stop
/* 002122 0x80B95438 2404007C */ li	$a0, 0X7C
/* 002123 0x80B9543C 860F031A */ lh	$t7, 0X31A($s0)
/* 002124 0x80B95440 000FC040 */ sll	$t8, $t7, 1
/* 002125 0x80B95444 0218C821 */ addu	$t9, $s0, $t8
/* 002126 0x80B95448 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 002127 0x80B9544C 8724030C */ lh	$a0, 0X30C($t9)
/* 002128 0x80B95450 10000018 */ b	.L80B954B4
/* 002129 0x80B95454 8FBF0024 */ lw	$ra, 0X24($sp)
/* 002130 0x80B95458 8608031A */ lh	$t0, 0X31A($s0)
.L80B9545C:
/* 002131 0x80B9545C 00084840 */ sll	$t1, $t0, 1
/* 002132 0x80B95460 02095021 */ addu	$t2, $s0, $t1
/* 002133 0x80B95464 0C03C6F9 */ jal	ActorCutscene_GetCanPlayNext
/* 002134 0x80B95468 8544030C */ lh	$a0, 0X30C($t2)
/* 002135 0x80B9546C 5040000C */ beqzl	$v0, .L80B954A0
/* 002136 0x80B95470 8618031A */ lh	$t8, 0X31A($s0)
/* 002137 0x80B95474 860B031A */ lh	$t3, 0X31A($s0)
/* 002138 0x80B95478 02002825 */ move	$a1, $s0
/* 002139 0x80B9547C 000B6040 */ sll	$t4, $t3, 1
/* 002140 0x80B95480 020C6821 */ addu	$t5, $s0, $t4
/* 002141 0x80B95484 0C03C71A */ jal	ActorCutscene_StartAndSetUnkLinkFields
/* 002142 0x80B95488 85A4030C */ lh	$a0, 0X30C($t5)
/* 002143 0x80B9548C 960E030A */ lhu	$t6, 0X30A($s0)
/* 002144 0x80B95490 31CFFFFB */ andi	$t7, $t6, 0XFFFB
/* 002145 0x80B95494 10000006 */ b	.L80B954B0
/* 002146 0x80B95498 A60F030A */ sh	$t7, 0X30A($s0)
/* 002147 0x80B9549C 8618031A */ lh	$t8, 0X31A($s0)
.L80B954A0:
/* 002148 0x80B954A0 0018C840 */ sll	$t9, $t8, 1
/* 002149 0x80B954A4 02194021 */ addu	$t0, $s0, $t9
/* 002150 0x80B954A8 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 002151 0x80B954AC 8504030C */ lh	$a0, 0X30C($t0)
.L80B954B0:
/* 002152 0x80B954B0 8FBF0024 */ lw	$ra, 0X24($sp)
.L80B954B4:
/* 002153 0x80B954B4 8FB00020 */ lw	$s0, 0X20($sp)
/* 002154 0x80B954B8 27BD0038 */ addiu	$sp, $sp, 0X38
/* 002155 0x80B954BC 03E00008 */ jr	$ra
/* 002156 0x80B954C0 00000000 */ nop

