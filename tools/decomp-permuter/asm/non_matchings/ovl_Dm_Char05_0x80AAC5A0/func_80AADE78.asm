glabel func_80AADE78
/* 001590 0x80AADE78 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 001591 0x80AADE7C AFB00018 */ sw	$s0, 0X18($sp)
/* 001592 0x80AADE80 00A08025 */ move	$s0, $a1
/* 001593 0x80AADE84 AFBF001C */ sw	$ra, 0X1C($sp)
/* 001594 0x80AADE88 AFA40020 */ sw	$a0, 0X20($sp)
/* 001595 0x80AADE8C 9206018F */ lbu	$a2, 0X18F($s0)
/* 001596 0x80AADE90 820E001E */ lb	$t6, 0X1E($s0)
/* 001597 0x80AADE94 00003825 */ move	$a3, $zero
/* 001598 0x80AADE98 54CE0020 */ bnel	$a2, $t6, .L80AADF1C
/* 001599 0x80AADE9C 8FA40020 */ lw	$a0, 0X20($sp)
/* 001600 0x80AADEA0 C60C0190 */ lwc1	$f12, 0X190($s0)
/* 001601 0x80AADEA4 C60E0194 */ lwc1	$f14, 0X194($s0)
/* 001602 0x80AADEA8 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 001603 0x80AADEAC 8E060198 */ lw	$a2, 0X198($s0)
/* 001604 0x80AADEB0 8FAF0020 */ lw	$t7, 0X20($sp)
/* 001605 0x80AADEB4 3C050002 */ lui	$a1, 0x0002
/* 001606 0x80AADEB8 00002025 */ move	$a0, $zero
/* 001607 0x80AADEBC 00AF2821 */ addu	$a1, $a1, $t7
/* 001608 0x80AADEC0 8CA58840 */ lw	$a1, -0X77C0($a1)
/* 001609 0x80AADEC4 00003025 */ move	$a2, $zero
/* 001610 0x80AADEC8 24070001 */ li	$a3, 0X1
/* 001611 0x80AADECC 00A00821 */ addu	$at, $a1, $zero
/* 001612 0x80AADED0 00052940 */ sll	$a1, $a1, 5
/* 001613 0x80AADED4 00A12823 */ subu	$a1, $a1, $at
/* 001614 0x80AADED8 00052880 */ sll	$a1, $a1, 2
/* 001615 0x80AADEDC 00A12821 */ addu	$a1, $a1, $at
/* 001616 0x80AADEE0 000528C0 */ sll	$a1, $a1, 3
/* 001617 0x80AADEE4 00052C00 */ sll	$a1, $a1, 16
/* 001618 0x80AADEE8 0C06040F */ jal	SysMatrix_InsertRotation
/* 001619 0x80AADEEC 00052C03 */ sra	$a1, $a1, 16
/* 001620 0x80AADEF0 3C0180AB */ lui	$at, %hi(D_80AAE3B8)
/* 001621 0x80AADEF4 C42CE3B8 */ lwc1	$f12, %lo(D_80AAE3B8)($at)
/* 001622 0x80AADEF8 24070001 */ li	$a3, 0X1
/* 001623 0x80AADEFC 44066000 */ mfc1	$a2, $f12
/* 001624 0x80AADF00 0C0600E7 */ jal	SysMatrix_InsertScale
/* 001625 0x80AADF04 46006386 */ mov.s	$f14, $f12
/* 001626 0x80AADF08 8FA40020 */ lw	$a0, 0X20($sp)
/* 001627 0x80AADF0C 0C03B8C8 */ jal	func_800EE320
/* 001628 0x80AADF10 24050045 */ li	$a1, 0X45
/* 001629 0x80AADF14 9206018F */ lbu	$a2, 0X18F($s0)
/* 001630 0x80AADF18 8FA40020 */ lw	$a0, 0X20($sp)
.L80AADF1C:
/* 001631 0x80AADF1C 3C010001 */ lui	$at, 0x0001
/* 001632 0x80AADF20 34217D88 */ ori	$at, $at, 0X7D88
/* 001633 0x80AADF24 00C02825 */ move	$a1, $a2
/* 001634 0x80AADF28 0C04BD9A */ jal	Scene_IsObjectLoaded
/* 001635 0x80AADF2C 00812021 */ addu	$a0, $a0, $at
/* 001636 0x80AADF30 50400004 */ beqzl	$v0, .L80AADF44
/* 001637 0x80AADF34 8FBF001C */ lw	$ra, 0X1C($sp)
/* 001638 0x80AADF38 9218018F */ lbu	$t8, 0X18F($s0)
/* 001639 0x80AADF3C A218001E */ sb	$t8, 0X1E($s0)
/* 001640 0x80AADF40 8FBF001C */ lw	$ra, 0X1C($sp)
.L80AADF44:
/* 001641 0x80AADF44 8FB00018 */ lw	$s0, 0X18($sp)
/* 001642 0x80AADF48 27BD0020 */ addiu	$sp, $sp, 0X20
/* 001643 0x80AADF4C 03E00008 */ jr	$ra
/* 001644 0x80AADF50 00000000 */ nop


.section .late_rodata

glabel D_80AAE3B8
/* 001926 0x80AAE3B8 */ .word	0x3E4CCCCD
