glabel func_80879A98
/* 000234 0x80879A98 27BDFFB0 */ addiu	$sp, $sp, -0X50
/* 000235 0x80879A9C AFB30028 */ sw	$s3, 0X28($sp)
/* 000236 0x80879AA0 00809825 */ move	$s3, $a0
/* 000237 0x80879AA4 AFBF002C */ sw	$ra, 0X2C($sp)
/* 000238 0x80879AA8 AFB20024 */ sw	$s2, 0X24($sp)
/* 000239 0x80879AAC AFB10020 */ sw	$s1, 0X20($sp)
/* 000240 0x80879AB0 AFB0001C */ sw	$s0, 0X1C($sp)
/* 000241 0x80879AB4 F7B40010 */ sdc1	$f20, 0X10($sp)
/* 000242 0x80879AB8 866E001C */ lh	$t6, 0X1C($s3)
/* 000243 0x80879ABC 3C018088 */ lui	$at, %hi(D_8087B508)
/* 000244 0x80879AC0 8CB01CFC */ lw	$s0, 0X1CFC($a1)
/* 000245 0x80879AC4 00009025 */ move	$s2, $zero
/* 000246 0x80879AC8 15C00005 */ bnez	$t6, .L80879AE0
/* 000247 0x80879ACC C434B508 */ lwc1	$f20, %lo(D_8087B508)($at)
/* 000248 0x80879AD0 926F018D */ lbu	$t7, 0X18D($s3)
/* 000249 0x80879AD4 24010003 */ li	$at, 0X3
/* 000250 0x80879AD8 11E10003 */ beq	$t7, $at, .L80879AE8
/* 000251 0x80879ADC 00000000 */ nop
.L80879AE0:
/* 000252 0x80879AE0 10000044 */ b	.L80879BF4
/* 000253 0x80879AE4 00001025 */ move	$v0, $zero
.L80879AE8:
/* 000254 0x80879AE8 12000013 */ beqz	$s0, .L80879B38
/* 000255 0x80879AEC 24110039 */ li	$s1, 0X39
/* 000256 0x80879AF0 86180000 */ lh	$t8, 0X0($s0)
.L80879AF4:
/* 000257 0x80879AF4 5638000E */ bnel	$s1, $t8, .L80879B30
/* 000258 0x80879AF8 8E10012C */ lw	$s0, 0X12C($s0)
/* 000259 0x80879AFC 861901DC */ lh	$t9, 0X1DC($s0)
/* 000260 0x80879B00 02602025 */ move	$a0, $s3
/* 000261 0x80879B04 5320000A */ beqzl	$t9, .L80879B30
/* 000262 0x80879B08 8E10012C */ lw	$s0, 0X12C($s0)
/* 000263 0x80879B0C 0C02DB73 */ jal	Actor_DistanceBetweenActors
/* 000264 0x80879B10 02002825 */ move	$a1, $s0
/* 000265 0x80879B14 4614003C */ c.lt.s	$f0, $f20
/* 000266 0x80879B18 00000000 */ nop
/* 000267 0x80879B1C 45020004 */ bc1fl .L80879B30
/* 000268 0x80879B20 8E10012C */ lw	$s0, 0X12C($s0)
/* 000269 0x80879B24 46000506 */ mov.s	$f20, $f0
/* 000270 0x80879B28 02009025 */ move	$s2, $s0
/* 000271 0x80879B2C 8E10012C */ lw	$s0, 0X12C($s0)
.L80879B30:
/* 000272 0x80879B30 5600FFF0 */ bnezl	$s0, .L80879AF4
/* 000273 0x80879B34 86180000 */ lh	$t8, 0X0($s0)
.L80879B38:
/* 000274 0x80879B38 1240002E */ beqz	$s2, .L80879BF4
/* 000275 0x80879B3C 00001025 */ move	$v0, $zero
/* 000276 0x80879B40 C6440024 */ lwc1	$f4, 0X24($s2)
/* 000277 0x80879B44 3C014250 */ lui	$at, 0x4250
/* 000278 0x80879B48 44814000 */ mtc1	$at, $f8
/* 000279 0x80879B4C E7A40034 */ swc1	$f4, 0X34($sp)
/* 000280 0x80879B50 C6460028 */ lwc1	$f6, 0X28($s2)
/* 000281 0x80879B54 3C0141F0 */ lui	$at, 0x41F0
/* 000282 0x80879B58 44818000 */ mtc1	$at, $f16
/* 000283 0x80879B5C 46083280 */ add.s	$f10, $f6, $f8
/* 000284 0x80879B60 27B00034 */ addiu	$s0, $sp, 0X34
/* 000285 0x80879B64 02002825 */ move	$a1, $s0
/* 000286 0x80879B68 02602025 */ move	$a0, $s3
/* 000287 0x80879B6C 46105480 */ add.s	$f18, $f10, $f16
/* 000288 0x80879B70 E7B20038 */ swc1	$f18, 0X38($sp)
/* 000289 0x80879B74 C644002C */ lwc1	$f4, 0X2C($s2)
/* 000290 0x80879B78 0C02DB7E */ jal	Actor_DistanceToPoint
/* 000291 0x80879B7C E7A4003C */ swc1	$f4, 0X3C($sp)
/* 000292 0x80879B80 3C014170 */ lui	$at, 0x4170
/* 000293 0x80879B84 44813000 */ mtc1	$at, $f6
/* 000294 0x80879B88 02602025 */ move	$a0, $s3
/* 000295 0x80879B8C 4606003C */ c.lt.s	$f0, $f6
/* 000296 0x80879B90 00000000 */ nop
/* 000297 0x80879B94 45000005 */ bc1f .L80879BAC
/* 000298 0x80879B98 00000000 */ nop
/* 000299 0x80879B9C 0C21E654 */ jal	func_80879950
/* 000300 0x80879BA0 02602025 */ move	$a0, $s3
/* 000301 0x80879BA4 10000013 */ b	.L80879BF4
/* 000302 0x80879BA8 24020001 */ li	$v0, 0X1
.L80879BAC:
/* 000303 0x80879BAC 0C02DB35 */ jal	Actor_YawBetweenActors
/* 000304 0x80879BB0 02402825 */ move	$a1, $s2
/* 000305 0x80879BB4 00022C00 */ sll	$a1, $v0, 16
/* 000306 0x80879BB8 00052C03 */ sra	$a1, $a1, 16
/* 000307 0x80879BBC 266400BE */ addiu	$a0, $s3, 0XBE
/* 000308 0x80879BC0 0C03FB9C */ jal	Lib_StepTowardsCheckFramerateScaled_s
/* 000309 0x80879BC4 24060300 */ li	$a2, 0X300
/* 000310 0x80879BC8 02602025 */ move	$a0, $s3
/* 000311 0x80879BCC 0C02DB6A */ jal	Actor_PitchToPoint
/* 000312 0x80879BD0 02002825 */ move	$a1, $s0
/* 000313 0x80879BD4 24451554 */ addiu	$a1, $v0, 0X1554
/* 000314 0x80879BD8 00052C00 */ sll	$a1, $a1, 16
/* 000315 0x80879BDC 00052C03 */ sra	$a1, $a1, 16
/* 000316 0x80879BE0 266400BC */ addiu	$a0, $s3, 0XBC
/* 000317 0x80879BE4 0C03FB9C */ jal	Lib_StepTowardsCheckFramerateScaled_s
/* 000318 0x80879BE8 24060100 */ li	$a2, 0X100
/* 000319 0x80879BEC 10000001 */ b	.L80879BF4
/* 000320 0x80879BF0 24020001 */ li	$v0, 0X1
.L80879BF4:
/* 000321 0x80879BF4 8FBF002C */ lw	$ra, 0X2C($sp)
/* 000322 0x80879BF8 D7B40010 */ ldc1	$f20, 0X10($sp)
/* 000323 0x80879BFC 8FB0001C */ lw	$s0, 0X1C($sp)
/* 000324 0x80879C00 8FB10020 */ lw	$s1, 0X20($sp)
/* 000325 0x80879C04 8FB20024 */ lw	$s2, 0X24($sp)
/* 000326 0x80879C08 8FB30028 */ lw	$s3, 0X28($sp)
/* 000327 0x80879C0C 03E00008 */ jr	$ra
/* 000328 0x80879C10 27BD0050 */ addiu	$sp, $sp, 0X50


.section .late_rodata

glabel D_8087B508
/* 001926 0x8087B508 */ .word	0x4708B800
