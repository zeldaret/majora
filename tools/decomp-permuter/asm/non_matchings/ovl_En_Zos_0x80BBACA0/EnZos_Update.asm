glabel EnZos_Update
/* 001492 0x80BBC3F0 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 001493 0x80BBC3F4 AFB00020 */ sw	$s0, 0X20($sp)
/* 001494 0x80BBC3F8 00808025 */ move	$s0, $a0
/* 001495 0x80BBC3FC AFBF0024 */ sw	$ra, 0X24($sp)
/* 001496 0x80BBC400 AFA5003C */ sw	$a1, 0X3C($sp)
/* 001497 0x80BBC404 0C02DAA2 */ jal	Actor_SetVelocityAndMoveYRotationAndGravity
/* 001498 0x80BBC408 02002025 */ move	$a0, $s0
/* 001499 0x80BBC40C 26060260 */ addiu	$a2, $s0, 0X260
/* 001500 0x80BBC410 00C02825 */ move	$a1, $a2
/* 001501 0x80BBC414 AFA60028 */ sw	$a2, 0X28($sp)
/* 001502 0x80BBC418 0C039F7E */ jal	Collision_CylinderMoveToActor
/* 001503 0x80BBC41C 02002025 */ move	$a0, $s0
/* 001504 0x80BBC420 8FA4003C */ lw	$a0, 0X3C($sp)
/* 001505 0x80BBC424 3C010001 */ lui	$at, 0x0001
/* 001506 0x80BBC428 34218884 */ ori	$at, $at, 0X8884
/* 001507 0x80BBC42C 8FA60028 */ lw	$a2, 0X28($sp)
/* 001508 0x80BBC430 0C038A4A */ jal	Collision_AddOT
/* 001509 0x80BBC434 00812821 */ addu	$a1, $a0, $at
/* 001510 0x80BBC438 3C014120 */ lui	$at, 0x4120
/* 001511 0x80BBC43C 44810000 */ mtc1	$at, $f0
/* 001512 0x80BBC440 3C0141F0 */ lui	$at, 0x41F0
/* 001513 0x80BBC444 44812000 */ mtc1	$at, $f4
/* 001514 0x80BBC448 240E0004 */ li	$t6, 0X4
/* 001515 0x80BBC44C 44060000 */ mfc1	$a2, $f0
/* 001516 0x80BBC450 44070000 */ mfc1	$a3, $f0
/* 001517 0x80BBC454 AFAE0014 */ sw	$t6, 0X14($sp)
/* 001518 0x80BBC458 8FA4003C */ lw	$a0, 0X3C($sp)
/* 001519 0x80BBC45C 02002825 */ move	$a1, $s0
/* 001520 0x80BBC460 0C02DE2E */ jal	func_800B78B8
/* 001521 0x80BBC464 E7A40010 */ swc1	$f4, 0X10($sp)
/* 001522 0x80BBC468 8E1902C0 */ lw	$t9, 0X2C0($s0)
/* 001523 0x80BBC46C 02002025 */ move	$a0, $s0
/* 001524 0x80BBC470 8FA5003C */ lw	$a1, 0X3C($sp)
/* 001525 0x80BBC474 0320F809 */ jalr	$t9
/* 001526 0x80BBC478 00000000 */ nop
/* 001527 0x80BBC47C 860302AE */ lh	$v1, 0X2AE($s0)
/* 001528 0x80BBC480 2404003C */ li	$a0, 0X3C
/* 001529 0x80BBC484 14600003 */ bnez	$v1, .L80BBC494
/* 001530 0x80BBC488 246FFFFF */ addiu	$t7, $v1, -0X1
/* 001531 0x80BBC48C 10000004 */ b	.L80BBC4A0
/* 001532 0x80BBC490 00001025 */ move	$v0, $zero
.L80BBC494:
/* 001533 0x80BBC494 A60F02AE */ sh	$t7, 0X2AE($s0)
/* 001534 0x80BBC498 860302AE */ lh	$v1, 0X2AE($s0)
/* 001535 0x80BBC49C 00601025 */ move	$v0, $v1
.L80BBC4A0:
/* 001536 0x80BBC4A0 54400006 */ bnezl	$v0, .L80BBC4BC
/* 001537 0x80BBC4A4 A60302AC */ sh	$v1, 0X2AC($s0)
/* 001538 0x80BBC4A8 0C03FD14 */ jal	Math_Rand_S16Offset
/* 001539 0x80BBC4AC 2405003C */ li	$a1, 0X3C
/* 001540 0x80BBC4B0 A60202AE */ sh	$v0, 0X2AE($s0)
/* 001541 0x80BBC4B4 860302AE */ lh	$v1, 0X2AE($s0)
/* 001542 0x80BBC4B8 A60302AC */ sh	$v1, 0X2AC($s0)
.L80BBC4BC:
/* 001543 0x80BBC4BC 861802AC */ lh	$t8, 0X2AC($s0)
/* 001544 0x80BBC4C0 2B010003 */ slti	$at, $t8, 0X3
/* 001545 0x80BBC4C4 54200003 */ bnezl	$at, .L80BBC4D4
/* 001546 0x80BBC4C8 8FBF0024 */ lw	$ra, 0X24($sp)
/* 001547 0x80BBC4CC A60002AC */ sh	$zero, 0X2AC($s0)
/* 001548 0x80BBC4D0 8FBF0024 */ lw	$ra, 0X24($sp)
.L80BBC4D4:
/* 001549 0x80BBC4D4 8FB00020 */ lw	$s0, 0X20($sp)
/* 001550 0x80BBC4D8 27BD0038 */ addiu	$sp, $sp, 0X38
/* 001551 0x80BBC4DC 03E00008 */ jr	$ra
/* 001552 0x80BBC4E0 00000000 */ nop

