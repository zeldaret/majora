glabel func_809D3ADC
/* 003435 0x809D3ADC 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 003436 0x809D3AE0 AFB00018 */ sw	$s0, 0X18($sp)
/* 003437 0x809D3AE4 00808025 */ move	$s0, $a0
/* 003438 0x809D3AE8 AFBF001C */ sw	$ra, 0X1C($sp)
/* 003439 0x809D3AEC AFA5002C */ sw	$a1, 0X2C($sp)
/* 003440 0x809D3AF0 8E0E09DC */ lw	$t6, 0X9DC($s0)
/* 003441 0x809D3AF4 26040164 */ addiu	$a0, $s0, 0X164
/* 003442 0x809D3AF8 25CF0001 */ addiu	$t7, $t6, 0X1
/* 003443 0x809D3AFC AE0F09DC */ sw	$t7, 0X9DC($s0)
/* 003444 0x809D3B00 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 003445 0x809D3B04 AFA40024 */ sw	$a0, 0X24($sp)
/* 003446 0x809D3B08 02002025 */ move	$a0, $s0
/* 003447 0x809D3B0C 0C02E3B2 */ jal	func_800B8EC8
/* 003448 0x809D3B10 24053017 */ li	$a1, 0X3017
/* 003449 0x809D3B14 8FA40024 */ lw	$a0, 0X24($sp)
/* 003450 0x809D3B18 0C04DE2E */ jal	func_801378B8
/* 003451 0x809D3B1C 8E0501A8 */ lw	$a1, 0X1A8($s0)
/* 003452 0x809D3B20 10400006 */ beqz	$v0, .L809D3B3C
/* 003453 0x809D3B24 3C0141A0 */ lui	$at, 0x41A0
/* 003454 0x809D3B28 C60401A8 */ lwc1	$f4, 0X1A8($s0)
/* 003455 0x809D3B2C 44813000 */ mtc1	$at, $f6
/* 003456 0x809D3B30 00000000 */ nop
/* 003457 0x809D3B34 46062201 */ sub.s	$f8, $f4, $f6
/* 003458 0x809D3B38 E608017C */ swc1	$f8, 0X17C($s0)
.L809D3B3C:
/* 003459 0x809D3B3C 8E1809DC */ lw	$t8, 0X9DC($s0)
/* 003460 0x809D3B40 3C02809E */ lui	$v0, %hi(D_809D8A18)
/* 003461 0x809D3B44 24428A18 */ addiu	$v0, $v0, %lo(D_809D8A18)
/* 003462 0x809D3B48 2F01001E */ sltiu	$at, $t8, 0X1E
/* 003463 0x809D3B4C 54200018 */ bnezl	$at, .L809D3BB0
/* 003464 0x809D3B50 26040032 */ addiu	$a0, $s0, 0X32
/* 003465 0x809D3B54 C60A0928 */ lwc1	$f10, 0X928($s0)
/* 003466 0x809D3B58 8C590000 */ lw	$t9, 0X0($v0)
/* 003467 0x809D3B5C 2401001E */ li	$at, 0X1E
/* 003468 0x809D3B60 240D0064 */ li	$t5, 0X64
/* 003469 0x809D3B64 E72A0024 */ swc1	$f10, 0X24($t9)
/* 003470 0x809D3B68 8C480000 */ lw	$t0, 0X0($v0)
/* 003471 0x809D3B6C C610092C */ lwc1	$f16, 0X92C($s0)
/* 003472 0x809D3B70 02002025 */ move	$a0, $s0
/* 003473 0x809D3B74 E5100028 */ swc1	$f16, 0X28($t0)
/* 003474 0x809D3B78 8C490000 */ lw	$t1, 0X0($v0)
/* 003475 0x809D3B7C C6120930 */ lwc1	$f18, 0X930($s0)
/* 003476 0x809D3B80 E532002C */ swc1	$f18, 0X2C($t1)
/* 003477 0x809D3B84 8C4B0000 */ lw	$t3, 0X0($v0)
/* 003478 0x809D3B88 860A0032 */ lh	$t2, 0X32($s0)
/* 003479 0x809D3B8C A56A0032 */ sh	$t2, 0X32($t3)
/* 003480 0x809D3B90 8E0C09DC */ lw	$t4, 0X9DC($s0)
/* 003481 0x809D3B94 55810006 */ bnel	$t4, $at, .L809D3BB0
/* 003482 0x809D3B98 26040032 */ addiu	$a0, $s0, 0X32
/* 003483 0x809D3B9C 8C4E0000 */ lw	$t6, 0X0($v0)
/* 003484 0x809D3BA0 2405484F */ li	$a1, 0X484F
/* 003485 0x809D3BA4 0C02E3B2 */ jal	func_800B8EC8
/* 003486 0x809D3BA8 A5CD0148 */ sh	$t5, 0X148($t6)
/* 003487 0x809D3BAC 26040032 */ addiu	$a0, $s0, 0X32
.L809D3BB0:
/* 003488 0x809D3BB0 86050092 */ lh	$a1, 0X92($s0)
/* 003489 0x809D3BB4 24060005 */ li	$a2, 0X5
/* 003490 0x809D3BB8 0C03FFF6 */ jal	Math_SmoothScaleMaxS
/* 003491 0x809D3BBC 24070500 */ li	$a3, 0X500
/* 003492 0x809D3BC0 3C013F80 */ lui	$at, 0x3F80
/* 003493 0x809D3BC4 44810000 */ mtc1	$at, $f0
/* 003494 0x809D3BC8 26040070 */ addiu	$a0, $s0, 0X70
/* 003495 0x809D3BCC 44050000 */ mfc1	$a1, $f0
/* 003496 0x809D3BD0 44060000 */ mfc1	$a2, $f0
/* 003497 0x809D3BD4 0C03FF9A */ jal	Math_SmoothDownscaleMaxF
/* 003498 0x809D3BD8 00000000 */ nop
/* 003499 0x809D3BDC 8E0F09DC */ lw	$t7, 0X9DC($s0)
/* 003500 0x809D3BE0 02002025 */ move	$a0, $s0
/* 003501 0x809D3BE4 8FA5002C */ lw	$a1, 0X2C($sp)
/* 003502 0x809D3BE8 2DE10083 */ sltiu	$at, $t7, 0X83
/* 003503 0x809D3BEC 54200004 */ bnezl	$at, .L809D3C00
/* 003504 0x809D3BF0 8FBF001C */ lw	$ra, 0X1C($sp)
/* 003505 0x809D3BF4 0C2747A9 */ jal	func_809D1EA4
/* 003506 0x809D3BF8 2406000A */ li	$a2, 0XA
/* 003507 0x809D3BFC 8FBF001C */ lw	$ra, 0X1C($sp)
.L809D3C00:
/* 003508 0x809D3C00 8FB00018 */ lw	$s0, 0X18($sp)
/* 003509 0x809D3C04 27BD0028 */ addiu	$sp, $sp, 0X28
/* 003510 0x809D3C08 03E00008 */ jr	$ra
/* 003511 0x809D3C0C 00000000 */ nop

