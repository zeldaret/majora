glabel Fault_AddClient
/* 001636 0x800819F0 3C0DFFFA */ lui	$t5, 0xFFFA
/* 001637 0x800819F4 03A07025 */ move	$t6, $sp
/* 001638 0x800819F8 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 001639 0x800819FC 35AD5A5A */ ori	$t5, $t5, 0X5A5A
.L80081A00:
/* 001640 0x80081A00 25CEFFF8 */ addiu	$t6, $t6, -0X8
/* 001641 0x80081A04 ADCD0000 */ sw	$t5, 0X0($t6)
/* 001642 0x80081A08 15DDFFFD */ bne	$t6, $sp, .L80081A00
/* 001643 0x80081A0C ADCD0004 */ sw	$t5, 0X4($t6)
/* 001644 0x80081A10 AFB00018 */ sw	$s0, 0X18($sp)
/* 001645 0x80081A14 00808025 */ move	$s0, $a0
/* 001646 0x80081A18 AFBF001C */ sw	$ra, 0X1C($sp)
/* 001647 0x80081A1C AFA5002C */ sw	$a1, 0X2C($sp)
/* 001648 0x80081A20 AFA60030 */ sw	$a2, 0X30($sp)
/* 001649 0x80081A24 AFA70034 */ sw	$a3, 0X34($sp)
/* 001650 0x80081A28 AFA00020 */ sw	$zero, 0X20($sp)
/* 001651 0x80081A2C 0C022004 */ jal	osSetIntMask
/* 001652 0x80081A30 24040001 */ li	$a0, 0X1
/* 001653 0x80081A34 3C05800A */ lui	$a1, %hi(faultCtxt)
/* 001654 0x80081A38 24A5BE50 */ addiu	$a1, $a1, %lo(faultCtxt)
/* 001655 0x80081A3C 00402025 */ move	$a0, $v0
/* 001656 0x80081A40 8CAE0000 */ lw	$t6, 0X0($a1)
/* 001657 0x80081A44 240F0001 */ li	$t7, 0X1
/* 001658 0x80081A48 8FB8002C */ lw	$t8, 0X2C($sp)
/* 001659 0x80081A4C 8DC307D8 */ lw	$v1, 0X7D8($t6)
/* 001660 0x80081A50 50600009 */ beqzl	$v1, .L80081A78
/* 001661 0x80081A54 AE180004 */ sw	$t8, 0X4($s0)
.L80081A58:
/* 001662 0x80081A58 54700004 */ bnel	$v1, $s0, .L80081A6C
/* 001663 0x80081A5C 8C630000 */ lw	$v1, 0X0($v1)
/* 001664 0x80081A60 1000000E */ b	.L80081A9C
/* 001665 0x80081A64 AFAF0020 */ sw	$t7, 0X20($sp)
/* 001666 0x80081A68 8C630000 */ lw	$v1, 0X0($v1)
.L80081A6C:
/* 001667 0x80081A6C 1460FFFA */ bnez	$v1, .L80081A58
/* 001668 0x80081A70 00000000 */ nop
/* 001669 0x80081A74 AE180004 */ sw	$t8, 0X4($s0)
.L80081A78:
/* 001670 0x80081A78 8FB90030 */ lw	$t9, 0X30($sp)
/* 001671 0x80081A7C AE190008 */ sw	$t9, 0X8($s0)
/* 001672 0x80081A80 8FA80034 */ lw	$t0, 0X34($sp)
/* 001673 0x80081A84 AE08000C */ sw	$t0, 0XC($s0)
/* 001674 0x80081A88 8CA90000 */ lw	$t1, 0X0($a1)
/* 001675 0x80081A8C 8D2A07D8 */ lw	$t2, 0X7D8($t1)
/* 001676 0x80081A90 AE0A0000 */ sw	$t2, 0X0($s0)
/* 001677 0x80081A94 8CAB0000 */ lw	$t3, 0X0($a1)
/* 001678 0x80081A98 AD7007D8 */ sw	$s0, 0X7D8($t3)
.L80081A9C:
/* 001679 0x80081A9C 0C022004 */ jal	osSetIntMask
/* 001680 0x80081AA0 00000000 */ nop
/* 001681 0x80081AA4 8FAC0020 */ lw	$t4, 0X20($sp)
/* 001682 0x80081AA8 3C04800A */ lui	$a0, %hi(D_800984B4)
/* 001683 0x80081AAC 248484B4 */ addiu	$a0, $a0, %lo(D_800984B4)
/* 001684 0x80081AB0 51800004 */ beqzl	$t4, .L80081AC4
/* 001685 0x80081AB4 8FBF001C */ lw	$ra, 0X1C($sp)
/* 001686 0x80081AB8 0C02064F */ jal	Fault_Log
/* 001687 0x80081ABC 02002825 */ move	$a1, $s0
/* 001688 0x80081AC0 8FBF001C */ lw	$ra, 0X1C($sp)
.L80081AC4:
/* 001689 0x80081AC4 8FB00018 */ lw	$s0, 0X18($sp)
/* 001690 0x80081AC8 27BD0028 */ addiu	$sp, $sp, 0X28
/* 001691 0x80081ACC 03E00008 */ jr	$ra
/* 001692 0x80081AD0 00000000 */ nop

