glabel func_800E0B78
/* 060462 0x800E0B78 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 060463 0x800E0B7C AFB20020 */ sw	$s2, 0X20($sp)
/* 060464 0x800E0B80 AFB1001C */ sw	$s1, 0X1C($sp)
/* 060465 0x800E0B84 00A08825 */ move	$s1, $a1
/* 060466 0x800E0B88 00809025 */ move	$s2, $a0
/* 060467 0x800E0B8C AFBF0024 */ sw	$ra, 0X24($sp)
/* 060468 0x800E0B90 AFB00018 */ sw	$s0, 0X18($sp)
/* 060469 0x800E0B94 02402025 */ move	$a0, $s2
/* 060470 0x800E0B98 0C038160 */ jal	Collision_FiniCommon
/* 060471 0x800E0B9C 02202825 */ move	$a1, $s1
/* 060472 0x800E0BA0 8E2E0018 */ lw	$t6, 0X18($s1)
/* 060473 0x800E0BA4 8E24001C */ lw	$a0, 0X1C($s1)
/* 060474 0x800E0BA8 000E7980 */ sll	$t7, $t6, 6
/* 060475 0x800E0BAC 008FC021 */ addu	$t8, $a0, $t7
/* 060476 0x800E0BB0 0098082B */ sltu	$at, $a0, $t8
/* 060477 0x800E0BB4 1020000C */ beqz	$at, .L800E0BE8
/* 060478 0x800E0BB8 00808025 */ move	$s0, $a0
/* 060479 0x800E0BBC 02402025 */ move	$a0, $s2
.L800E0BC0:
/* 060480 0x800E0BC0 0C038294 */ jal	Collision_FiniSphereGroupElem
/* 060481 0x800E0BC4 02002825 */ move	$a1, $s0
/* 060482 0x800E0BC8 8E390018 */ lw	$t9, 0X18($s1)
/* 060483 0x800E0BCC 8E24001C */ lw	$a0, 0X1C($s1)
/* 060484 0x800E0BD0 26100040 */ addiu	$s0, $s0, 0X40
/* 060485 0x800E0BD4 00194180 */ sll	$t0, $t9, 6
/* 060486 0x800E0BD8 00884821 */ addu	$t1, $a0, $t0
/* 060487 0x800E0BDC 0209082B */ sltu	$at, $s0, $t1
/* 060488 0x800E0BE0 5420FFF7 */ bnezl	$at, .L800E0BC0
/* 060489 0x800E0BE4 02402025 */ move	$a0, $s2
.L800E0BE8:
/* 060490 0x800E0BE8 10800003 */ beqz	$a0, .L800E0BF8
/* 060491 0x800E0BEC AE200018 */ sw	$zero, 0X18($s1)
/* 060492 0x800E0BF0 0C040B38 */ jal	zelda_free
/* 060493 0x800E0BF4 00000000 */ nop
.L800E0BF8:
/* 060494 0x800E0BF8 AE20001C */ sw	$zero, 0X1C($s1)
/* 060495 0x800E0BFC 24020001 */ li	$v0, 0X1
/* 060496 0x800E0C00 8FBF0024 */ lw	$ra, 0X24($sp)
/* 060497 0x800E0C04 8FB00018 */ lw	$s0, 0X18($sp)
/* 060498 0x800E0C08 8FB1001C */ lw	$s1, 0X1C($sp)
/* 060499 0x800E0C0C 8FB20020 */ lw	$s2, 0X20($sp)
/* 060500 0x800E0C10 03E00008 */ jr	$ra
/* 060501 0x800E0C14 27BD0028 */ addiu	$sp, $sp, 0X28

