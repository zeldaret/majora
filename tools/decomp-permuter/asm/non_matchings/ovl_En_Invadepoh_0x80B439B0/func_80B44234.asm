glabel func_80B44234
/* 000545 0x80B44234 27BDFFA0 */ addiu	$sp, $sp, -0X60
/* 000546 0x80B44238 AFB50030 */ sw	$s5, 0X30($sp)
/* 000547 0x80B4423C 00A0A825 */ move	$s5, $a1
/* 000548 0x80B44240 AFBF0034 */ sw	$ra, 0X34($sp)
/* 000549 0x80B44244 AFB4002C */ sw	$s4, 0X2C($sp)
/* 000550 0x80B44248 AFB30028 */ sw	$s3, 0X28($sp)
/* 000551 0x80B4424C AFB20024 */ sw	$s2, 0X24($sp)
/* 000552 0x80B44250 AFB10020 */ sw	$s1, 0X20($sp)
/* 000553 0x80B44254 AFB0001C */ sw	$s0, 0X1C($sp)
/* 000554 0x80B44258 F7B40010 */ sdc1	$f20, 0X10($sp)
/* 000555 0x80B4425C 80930308 */ lb	$s3, 0X308($a0)
/* 000556 0x80B44260 3C0180B5 */ lui	$at, %hi(D_80B4EE40)
/* 000557 0x80B44264 C434EE40 */ lwc1	$f20, %lo(D_80B4EE40)($at)
/* 000558 0x80B44268 0000A025 */ move	$s4, $zero
/* 000559 0x80B4426C 00008025 */ move	$s0, $zero
/* 000560 0x80B44270 1A600011 */ blez	$s3, .L80B442B8
/* 000561 0x80B44274 8C91030C */ lw	$s1, 0X30C($a0)
/* 000562 0x80B44278 27B20048 */ addiu	$s2, $sp, 0X48
.L80B4427C:
/* 000563 0x80B4427C 02402025 */ move	$a0, $s2
/* 000564 0x80B44280 0C03FD53 */ jal	Math_Vec3s_ToVec3f
/* 000565 0x80B44284 02202825 */ move	$a1, $s1
/* 000566 0x80B44288 02402025 */ move	$a0, $s2
/* 000567 0x80B4428C 0C05E9BE */ jal	Math3D_DistanceSquared
/* 000568 0x80B44290 02A02825 */ move	$a1, $s5
/* 000569 0x80B44294 4614003C */ c.lt.s	$f0, $f20
/* 000570 0x80B44298 00000000 */ nop
/* 000571 0x80B4429C 45020004 */ bc1fl .L80B442B0
/* 000572 0x80B442A0 26100001 */ addiu	$s0, $s0, 0X1
/* 000573 0x80B442A4 46000506 */ mov.s	$f20, $f0
/* 000574 0x80B442A8 0200A025 */ move	$s4, $s0
/* 000575 0x80B442AC 26100001 */ addiu	$s0, $s0, 0X1
.L80B442B0:
/* 000576 0x80B442B0 1613FFF2 */ bne	$s0, $s3, .L80B4427C
/* 000577 0x80B442B4 26310006 */ addiu	$s1, $s1, 0X6
.L80B442B8:
/* 000578 0x80B442B8 02801025 */ move	$v0, $s4
/* 000579 0x80B442BC 8FBF0034 */ lw	$ra, 0X34($sp)
/* 000580 0x80B442C0 D7B40010 */ ldc1	$f20, 0X10($sp)
/* 000581 0x80B442C4 8FB0001C */ lw	$s0, 0X1C($sp)
/* 000582 0x80B442C8 8FB10020 */ lw	$s1, 0X20($sp)
/* 000583 0x80B442CC 8FB20024 */ lw	$s2, 0X24($sp)
/* 000584 0x80B442D0 8FB30028 */ lw	$s3, 0X28($sp)
/* 000585 0x80B442D4 8FB4002C */ lw	$s4, 0X2C($sp)
/* 000586 0x80B442D8 8FB50030 */ lw	$s5, 0X30($sp)
/* 000587 0x80B442DC 03E00008 */ jr	$ra
/* 000588 0x80B442E0 27BD0060 */ addiu	$sp, $sp, 0X60

