glabel BossHakugin_Destroy
/* 000256 0x80B05690 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000257 0x80B05694 AFB40028 */ sw	$s4, 0X28($sp)
/* 000258 0x80B05698 AFB20020 */ sw	$s2, 0X20($sp)
/* 000259 0x80B0569C 00A09025 */ move	$s2, $a1
/* 000260 0x80B056A0 0080A025 */ move	$s4, $a0
/* 000261 0x80B056A4 AFBF002C */ sw	$ra, 0X2C($sp)
/* 000262 0x80B056A8 AFB30024 */ sw	$s3, 0X24($sp)
/* 000263 0x80B056AC AFB1001C */ sw	$s1, 0X1C($sp)
/* 000264 0x80B056B0 AFB00018 */ sw	$s0, 0X18($sp)
/* 000265 0x80B056B4 02402025 */ move	$a0, $s2
/* 000266 0x80B056B8 26450818 */ addiu	$a1, $s2, 0X818
/* 000267 0x80B056BC 0C0409A1 */ jal	Lights_Remove
/* 000268 0x80B056C0 8E860470 */ lw	$a2, 0X470($s4)
/* 000269 0x80B056C4 02402025 */ move	$a0, $s2
/* 000270 0x80B056C8 0C038306 */ jal	Collision_FiniSphereGroup
/* 000271 0x80B056CC 26850484 */ addiu	$a1, $s4, 0X484
/* 000272 0x80B056D0 02402025 */ move	$a0, $s2
/* 000273 0x80B056D4 0C03847B */ jal	Collision_FiniCylinder
/* 000274 0x80B056D8 26850964 */ addiu	$a1, $s4, 0X964
/* 000275 0x80B056DC 00008025 */ move	$s0, $zero
/* 000276 0x80B056E0 2691262C */ addiu	$s1, $s4, 0X262C
/* 000277 0x80B056E4 24130B40 */ li	$s3, 0XB40
.L80B056E8:
/* 000278 0x80B056E8 02402025 */ move	$a0, $s2
/* 000279 0x80B056EC 0C0385ED */ jal	Collision_FiniTriGroup
/* 000280 0x80B056F0 02202825 */ move	$a1, $s1
/* 000281 0x80B056F4 26100090 */ addiu	$s0, $s0, 0X90
/* 000282 0x80B056F8 1613FFFB */ bne	$s0, $s3, .L80B056E8
/* 000283 0x80B056FC 26310090 */ addiu	$s1, $s1, 0X90
/* 000284 0x80B05700 02402025 */ move	$a0, $s2
/* 000285 0x80B05704 0C038869 */ jal	Collision_FiniSphere
/* 000286 0x80B05708 268537B8 */ addiu	$a1, $s4, 0X37B8
/* 000287 0x80B0570C 0C069CB3 */ jal	func_801A72CC
/* 000288 0x80B05710 26840458 */ addiu	$a0, $s4, 0X458
/* 000289 0x80B05714 0C069CB3 */ jal	func_801A72CC
/* 000290 0x80B05718 26840464 */ addiu	$a0, $s4, 0X464
/* 000291 0x80B0571C 8FBF002C */ lw	$ra, 0X2C($sp)
/* 000292 0x80B05720 8FB00018 */ lw	$s0, 0X18($sp)
/* 000293 0x80B05724 8FB1001C */ lw	$s1, 0X1C($sp)
/* 000294 0x80B05728 8FB20020 */ lw	$s2, 0X20($sp)
/* 000295 0x80B0572C 8FB30024 */ lw	$s3, 0X24($sp)
/* 000296 0x80B05730 8FB40028 */ lw	$s4, 0X28($sp)
/* 000297 0x80B05734 03E00008 */ jr	$ra
/* 000298 0x80B05738 27BD0030 */ addiu	$sp, $sp, 0X30

