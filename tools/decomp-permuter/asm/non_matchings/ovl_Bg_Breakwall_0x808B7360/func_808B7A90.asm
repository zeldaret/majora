glabel func_808B7A90
/* 000460 0x808B7A90 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000461 0x808B7A94 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000462 0x808B7A98 AFA40030 */ sw	$a0, 0X30($sp)
/* 000463 0x808B7A9C 00A03825 */ move	$a3, $a1
/* 000464 0x808B7AA0 8CE60000 */ lw	$a2, 0X0($a3)
/* 000465 0x808B7AA4 3C04808C */ lui	$a0, %hi(D_808B82F0)
/* 000466 0x808B7AA8 248482F0 */ addiu	$a0, $a0, %lo(D_808B82F0)
/* 000467 0x808B7AAC 27A5002C */ addiu	$a1, $sp, 0X2C
/* 000468 0x808B7AB0 0C03F9EA */ jal	func_800FE7A8
/* 000469 0x808B7AB4 AFA60024 */ sw	$a2, 0X24($sp)
/* 000470 0x808B7AB8 3C04808C */ lui	$a0, %hi(D_808B8300)
/* 000471 0x808B7ABC 24848300 */ addiu	$a0, $a0, %lo(D_808B8300)
/* 000472 0x808B7AC0 0C03F9EA */ jal	func_800FE7A8
/* 000473 0x808B7AC4 27A50028 */ addiu	$a1, $sp, 0X28
/* 000474 0x808B7AC8 8FA60024 */ lw	$a2, 0X24($sp)
/* 000475 0x808B7ACC 8CC302C0 */ lw	$v1, 0X2C0($a2)
/* 000476 0x808B7AD0 3C0FFA00 */ lui	$t7, 0xFA00
/* 000477 0x808B7AD4 35EF0080 */ ori	$t7, $t7, 0X80
/* 000478 0x808B7AD8 246E0008 */ addiu	$t6, $v1, 0X8
/* 000479 0x808B7ADC ACCE02C0 */ sw	$t6, 0X2C0($a2)
/* 000480 0x808B7AE0 AC6F0000 */ sw	$t7, 0X0($v1)
/* 000481 0x808B7AE4 93AA002D */ lbu	$t2, 0X2D($sp)
/* 000482 0x808B7AE8 93B9002C */ lbu	$t9, 0X2C($sp)
/* 000483 0x808B7AEC 93AE002E */ lbu	$t6, 0X2E($sp)
/* 000484 0x808B7AF0 000A5C00 */ sll	$t3, $t2, 16
/* 000485 0x808B7AF4 00194600 */ sll	$t0, $t9, 24
/* 000486 0x808B7AF8 010B6025 */ or	$t4, $t0, $t3
/* 000487 0x808B7AFC 000E7A00 */ sll	$t7, $t6, 8
/* 000488 0x808B7B00 018FC025 */ or	$t8, $t4, $t7
/* 000489 0x808B7B04 371900FF */ ori	$t9, $t8, 0XFF
/* 000490 0x808B7B08 AC790004 */ sw	$t9, 0X4($v1)
/* 000491 0x808B7B0C 8CC302C0 */ lw	$v1, 0X2C0($a2)
/* 000492 0x808B7B10 3C0AFB00 */ lui	$t2, 0xFB00
/* 000493 0x808B7B14 24690008 */ addiu	$t1, $v1, 0X8
/* 000494 0x808B7B18 ACC902C0 */ sw	$t1, 0X2C0($a2)
/* 000495 0x808B7B1C AC6A0000 */ sw	$t2, 0X0($v1)
/* 000496 0x808B7B20 93AC0029 */ lbu	$t4, 0X29($sp)
/* 000497 0x808B7B24 93AB0028 */ lbu	$t3, 0X28($sp)
/* 000498 0x808B7B28 93A9002A */ lbu	$t1, 0X2A($sp)
/* 000499 0x808B7B2C 000C7C00 */ sll	$t7, $t4, 16
/* 000500 0x808B7B30 000B6E00 */ sll	$t5, $t3, 24
/* 000501 0x808B7B34 01AFC025 */ or	$t8, $t5, $t7
/* 000502 0x808B7B38 00095200 */ sll	$t2, $t1, 8
/* 000503 0x808B7B3C 030A4025 */ or	$t0, $t8, $t2
/* 000504 0x808B7B40 350B00FF */ ori	$t3, $t0, 0XFF
/* 000505 0x808B7B44 AC6B0004 */ sw	$t3, 0X4($v1)
/* 000506 0x808B7B48 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000507 0x808B7B4C 03E00008 */ jr	$ra
/* 000508 0x808B7B50 27BD0030 */ addiu	$sp, $sp, 0X30

