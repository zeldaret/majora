glabel EnBbfall_Draw
/* 001529 0x808C0A04 27BDFF40 */ addiu	$sp, $sp, -0XC0
/* 001530 0x808C0A08 AFB70064 */ sw	$s7, 0X64($sp)
/* 001531 0x808C0A0C AFB00048 */ sw	$s0, 0X48($sp)
/* 001532 0x808C0A10 00808025 */ move	$s0, $a0
/* 001533 0x808C0A14 00A0B825 */ move	$s7, $a1
/* 001534 0x808C0A18 AFBF006C */ sw	$ra, 0X6C($sp)
/* 001535 0x808C0A1C AFBE0068 */ sw	$fp, 0X68($sp)
/* 001536 0x808C0A20 AFB60060 */ sw	$s6, 0X60($sp)
/* 001537 0x808C0A24 AFB5005C */ sw	$s5, 0X5C($sp)
/* 001538 0x808C0A28 AFB40058 */ sw	$s4, 0X58($sp)
/* 001539 0x808C0A2C AFB30054 */ sw	$s3, 0X54($sp)
/* 001540 0x808C0A30 AFB20050 */ sw	$s2, 0X50($sp)
/* 001541 0x808C0A34 AFB1004C */ sw	$s1, 0X4C($sp)
/* 001542 0x808C0A38 F7B60040 */ sdc1	$f22, 0X40($sp)
/* 001543 0x808C0A3C F7B40038 */ sdc1	$f20, 0X38($sp)
/* 001544 0x808C0A40 8EF10000 */ lw	$s1, 0X0($s7)
/* 001545 0x808C0A44 3C0EDE00 */ lui	$t6, 0xDE00
/* 001546 0x808C0A48 3C0F801C */ lui	$t7, %hi(sSetupDL + 0x4B0)
/* 001547 0x808C0A4C 8E2202B0 */ lw	$v0, 0X2B0($s1)
/* 001548 0x808C0A50 25EF13A0 */ addiu	$t7, $t7, %lo(sSetupDL + 0x4B0)
/* 001549 0x808C0A54 AC4F0004 */ sw	$t7, 0X4($v0)
/* 001550 0x808C0A58 AC4E0000 */ sw	$t6, 0X0($v0)
/* 001551 0x808C0A5C 24580008 */ addiu	$t8, $v0, 0X8
/* 001552 0x808C0A60 AE3802B0 */ sw	$t8, 0X2B0($s1)
/* 001553 0x808C0A64 8E060164 */ lw	$a2, 0X164($s0)
/* 001554 0x808C0A68 8E050148 */ lw	$a1, 0X148($s0)
/* 001555 0x808C0A6C 3C19808C */ lui	$t9, %hi(func_808C080C)
/* 001556 0x808C0A70 2739080C */ addiu	$t9, $t9, %lo(func_808C080C)
/* 001557 0x808C0A74 3C07808C */ lui	$a3, %hi(func_808C07D4)
/* 001558 0x808C0A78 24E707D4 */ addiu	$a3, $a3, %lo(func_808C07D4)
/* 001559 0x808C0A7C AFB90010 */ sw	$t9, 0X10($sp)
/* 001560 0x808C0A80 AFB000C0 */ sw	$s0, 0XC0($sp)
/* 001561 0x808C0A84 AFB00014 */ sw	$s0, 0X14($sp)
/* 001562 0x808C0A88 0C04CECF */ jal	SkelAnime_Draw
/* 001563 0x808C0A8C 02E02025 */ move	$a0, $s7
/* 001564 0x808C0A90 8FA500C0 */ lw	$a1, 0XC0($sp)
/* 001565 0x808C0A94 90A8024C */ lbu	$t0, 0X24C($a1)
/* 001566 0x808C0A98 59000082 */ blezl	$t0, .L808C0CA4
/* 001567 0x808C0A9C C4AA0260 */ lwc1	$f10, 0X260($a1)
/* 001568 0x808C0AA0 0C04B0B7 */ jal	func_8012C2DC
/* 001569 0x808C0AA4 8EE40000 */ lw	$a0, 0X0($s7)
/* 001570 0x808C0AA8 86E90810 */ lh	$t1, 0X810($s7)
/* 001571 0x808C0AAC 00095080 */ sll	$t2, $t1, 2
/* 001572 0x808C0AB0 02EA5821 */ addu	$t3, $s7, $t2
/* 001573 0x808C0AB4 0C037F37 */ jal	func_800DFCDC
/* 001574 0x808C0AB8 8D640800 */ lw	$a0, 0X800($t3)
/* 001575 0x808C0ABC 8FAC00C0 */ lw	$t4, 0XC0($sp)
/* 001576 0x808C0AC0 34018000 */ ori	$at, $zero, 0X8000
/* 001577 0x808C0AC4 24050001 */ li	$a1, 0X1
/* 001578 0x808C0AC8 858D00BE */ lh	$t5, 0XBE($t4)
/* 001579 0x808C0ACC 004D2023 */ subu	$a0, $v0, $t5
/* 001580 0x808C0AD0 00812021 */ addu	$a0, $a0, $at
/* 001581 0x808C0AD4 00042400 */ sll	$a0, $a0, 16
/* 001582 0x808C0AD8 0C06026B */ jal	SysMatrix_InsertYRotation_s
/* 001583 0x808C0ADC 00042403 */ sra	$a0, $a0, 16
/* 001584 0x808C0AE0 3C013F80 */ lui	$at, 0x3F80
/* 001585 0x808C0AE4 4481B000 */ mtc1	$at, $f22
/* 001586 0x808C0AE8 8FA200C0 */ lw	$v0, 0XC0($sp)
/* 001587 0x808C0AEC 24070001 */ li	$a3, 0X1
/* 001588 0x808C0AF0 4406B000 */ mfc1	$a2, $f22
/* 001589 0x808C0AF4 C44C0258 */ lwc1	$f12, 0X258($v0)
/* 001590 0x808C0AF8 0C0600E7 */ jal	SysMatrix_InsertScale
/* 001591 0x808C0AFC C44E0254 */ lwc1	$f14, 0X254($v0)
/* 001592 0x808C0B00 8E2202C0 */ lw	$v0, 0X2C0($s1)
/* 001593 0x808C0B04 3C0FFB00 */ lui	$t7, 0xFB00
/* 001594 0x808C0B08 3C18FF00 */ lui	$t8, 0xFF00
/* 001595 0x808C0B0C 244E0008 */ addiu	$t6, $v0, 0X8
/* 001596 0x808C0B10 AE2E02C0 */ sw	$t6, 0X2C0($s1)
/* 001597 0x808C0B14 AC580004 */ sw	$t8, 0X4($v0)
/* 001598 0x808C0B18 AC4F0000 */ sw	$t7, 0X0($v0)
/* 001599 0x808C0B1C 0C06008D */ jal	SysMatrix_GetCurrentState
/* 001600 0x808C0B20 00000000 */ nop
/* 001601 0x808C0B24 8FB900C0 */ lw	$t9, 0XC0($sp)
/* 001602 0x808C0B28 3C010001 */ lui	$at, 0x0001
/* 001603 0x808C0B2C 34218000 */ ori	$at, $at, 0X8000
/* 001604 0x808C0B30 02E14821 */ addu	$t1, $s7, $at
/* 001605 0x808C0B34 3C080408 */ lui	$t0, 0x0408
/* 001606 0x808C0B38 9333024C */ lbu	$s3, 0X24C($t9)
/* 001607 0x808C0B3C 2508D590 */ addiu	$t0, $t0, -0X2A70
/* 001608 0x808C0B40 3C01808C */ lui	$at, %hi(D_808C0E40)
/* 001609 0x808C0B44 3C1EDB06 */ lui	$fp, 0xDB06
/* 001610 0x808C0B48 0040A825 */ move	$s5, $v0
/* 001611 0x808C0B4C 37DE0020 */ ori	$fp, $fp, 0X20
/* 001612 0x808C0B50 C4340E40 */ lwc1	$f20, %lo(D_808C0E40)($at)
/* 001613 0x808C0B54 AFA80074 */ sw	$t0, 0X74($sp)
/* 001614 0x808C0B58 AFA90070 */ sw	$t1, 0X70($sp)
/* 001615 0x808C0B5C 0000B025 */ move	$s6, $zero
/* 001616 0x808C0B60 2414FFEC */ li	$s4, -0X14
/* 001617 0x808C0B64 27320268 */ addiu	$s2, $t9, 0X268
.L808C0B68:
/* 001618 0x808C0B68 8E2202C0 */ lw	$v0, 0X2C0($s1)
/* 001619 0x808C0B6C 240B0020 */ li	$t3, 0X20
/* 001620 0x808C0B70 240C0040 */ li	$t4, 0X40
/* 001621 0x808C0B74 244A0008 */ addiu	$t2, $v0, 0X8
/* 001622 0x808C0B78 AE2A02C0 */ sw	$t2, 0X2C0($s1)
/* 001623 0x808C0B7C AC5E0000 */ sw	$fp, 0X0($v0)
/* 001624 0x808C0B80 8EE40000 */ lw	$a0, 0X0($s7)
/* 001625 0x808C0B84 8FAE0070 */ lw	$t6, 0X70($sp)
/* 001626 0x808C0B88 240D0001 */ li	$t5, 0X1
/* 001627 0x808C0B8C AFAD0018 */ sw	$t5, 0X18($sp)
/* 001628 0x808C0B90 AFA0001C */ sw	$zero, 0X1C($sp)
/* 001629 0x808C0B94 AFAC0014 */ sw	$t4, 0X14($sp)
/* 001630 0x808C0B98 AFAB0010 */ sw	$t3, 0X10($sp)
/* 001631 0x808C0B9C 8DCF0840 */ lw	$t7, 0X840($t6)
/* 001632 0x808C0BA0 240A0080 */ li	$t2, 0X80
/* 001633 0x808C0BA4 24090020 */ li	$t1, 0X20
/* 001634 0x808C0BA8 01F6C021 */ addu	$t8, $t7, $s6
/* 001635 0x808C0BAC 03140019 */ multu	$t8, $s4
/* 001636 0x808C0BB0 AFA90024 */ sw	$t1, 0X24($sp)
/* 001637 0x808C0BB4 AFAA0028 */ sw	$t2, 0X28($sp)
/* 001638 0x808C0BB8 00002825 */ move	$a1, $zero
/* 001639 0x808C0BBC 00003025 */ move	$a2, $zero
/* 001640 0x808C0BC0 00003825 */ move	$a3, $zero
/* 001641 0x808C0BC4 00408025 */ move	$s0, $v0
/* 001642 0x808C0BC8 0000C812 */ mflo	$t9
/* 001643 0x808C0BCC 332801FF */ andi	$t0, $t9, 0X1FF
/* 001644 0x808C0BD0 0C04B2F4 */ jal	Gfx_TwoTexScroll
/* 001645 0x808C0BD4 AFA80020 */ sw	$t0, 0X20($sp)
/* 001646 0x808C0BD8 AE020004 */ sw	$v0, 0X4($s0)
/* 001647 0x808C0BDC 8E2202C0 */ lw	$v0, 0X2C0($s1)
/* 001648 0x808C0BE0 3C0CFA00 */ lui	$t4, 0xFA00
/* 001649 0x808C0BE4 326D00FF */ andi	$t5, $s3, 0XFF
/* 001650 0x808C0BE8 244B0008 */ addiu	$t3, $v0, 0X8
/* 001651 0x808C0BEC AE2B02C0 */ sw	$t3, 0X2C0($s1)
/* 001652 0x808C0BF0 3C01FFFF */ lui	$at, 0xFFFF
/* 001653 0x808C0BF4 01A17025 */ or	$t6, $t5, $at
/* 001654 0x808C0BF8 358C8080 */ ori	$t4, $t4, 0X8080
/* 001655 0x808C0BFC AC4C0000 */ sw	$t4, 0X0($v0)
/* 001656 0x808C0C00 AC4E0004 */ sw	$t6, 0X4($v0)
/* 001657 0x808C0C04 C6440000 */ lwc1	$f4, 0X0($s2)
/* 001658 0x808C0C08 E6A40030 */ swc1	$f4, 0X30($s5)
/* 001659 0x808C0C0C C6460004 */ lwc1	$f6, 0X4($s2)
/* 001660 0x808C0C10 E6A60034 */ swc1	$f6, 0X34($s5)
/* 001661 0x808C0C14 C6480008 */ lwc1	$f8, 0X8($s2)
/* 001662 0x808C0C18 E6A80038 */ swc1	$f8, 0X38($s5)
/* 001663 0x808C0C1C 8E2202C0 */ lw	$v0, 0X2C0($s1)
/* 001664 0x808C0C20 3C18DA38 */ lui	$t8, 0xDA38
/* 001665 0x808C0C24 37180003 */ ori	$t8, $t8, 0X3
/* 001666 0x808C0C28 244F0008 */ addiu	$t7, $v0, 0X8
/* 001667 0x808C0C2C AE2F02C0 */ sw	$t7, 0X2C0($s1)
/* 001668 0x808C0C30 AC580000 */ sw	$t8, 0X0($v0)
/* 001669 0x808C0C34 8EE40000 */ lw	$a0, 0X0($s7)
/* 001670 0x808C0C38 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 001671 0x808C0C3C 00408025 */ move	$s0, $v0
/* 001672 0x808C0C40 AE020004 */ sw	$v0, 0X4($s0)
/* 001673 0x808C0C44 8E2202C0 */ lw	$v0, 0X2C0($s1)
/* 001674 0x808C0C48 3C08DE00 */ lui	$t0, 0xDE00
/* 001675 0x808C0C4C 2673FFDD */ addiu	$s3, $s3, -0X23
/* 001676 0x808C0C50 24590008 */ addiu	$t9, $v0, 0X8
/* 001677 0x808C0C54 AE3902C0 */ sw	$t9, 0X2C0($s1)
/* 001678 0x808C0C58 AC480000 */ sw	$t0, 0X0($v0)
/* 001679 0x808C0C5C 8FA90074 */ lw	$t1, 0X74($sp)
/* 001680 0x808C0C60 24070001 */ li	$a3, 0X1
/* 001681 0x808C0C64 AC490004 */ sw	$t1, 0X4($v0)
/* 001682 0x808C0C68 06630004 */ bgezl	$s3, .L808C0C7C
/* 001683 0x808C0C6C 4406B000 */ mfc1	$a2, $f22
/* 001684 0x808C0C70 1000000B */ b	.L808C0CA0
/* 001685 0x808C0C74 8FA500C0 */ lw	$a1, 0XC0($sp)
/* 001686 0x808C0C78 4406B000 */ mfc1	$a2, $f22
.L808C0C7C:
/* 001687 0x808C0C7C 4600A306 */ mov.s	$f12, $f20
/* 001688 0x808C0C80 0C0600E7 */ jal	SysMatrix_InsertScale
/* 001689 0x808C0C84 4600A386 */ mov.s	$f14, $f20
/* 001690 0x808C0C88 26940002 */ addiu	$s4, $s4, 0X2
/* 001691 0x808C0C8C 2401FFF8 */ li	$at, -0X8
/* 001692 0x808C0C90 26D6000A */ addiu	$s6, $s6, 0XA
/* 001693 0x808C0C94 1681FFB4 */ bne	$s4, $at, .L808C0B68
/* 001694 0x808C0C98 2652000C */ addiu	$s2, $s2, 0XC
/* 001695 0x808C0C9C 8FA500C0 */ lw	$a1, 0XC0($sp)
.L808C0CA0:
/* 001696 0x808C0CA0 C4AA0260 */ lwc1	$f10, 0X260($a1)
.L808C0CA4:
/* 001697 0x808C0CA4 02E02025 */ move	$a0, $s7
/* 001698 0x808C0CA8 24A602B0 */ addiu	$a2, $a1, 0X2B0
/* 001699 0x808C0CAC E7AA0010 */ swc1	$f10, 0X10($sp)
/* 001700 0x808C0CB0 C4B00264 */ lwc1	$f16, 0X264($a1)
/* 001701 0x808C0CB4 24070005 */ li	$a3, 0X5
/* 001702 0x808C0CB8 E7B00014 */ swc1	$f16, 0X14($sp)
/* 001703 0x808C0CBC C4B2025C */ lwc1	$f18, 0X25C($a1)
/* 001704 0x808C0CC0 E7B20018 */ swc1	$f18, 0X18($sp)
/* 001705 0x808C0CC4 90AA024F */ lbu	$t2, 0X24F($a1)
/* 001706 0x808C0CC8 0C02F9A0 */ jal	func_800BE680
/* 001707 0x808C0CCC AFAA001C */ sw	$t2, 0X1C($sp)
/* 001708 0x808C0CD0 8FBF006C */ lw	$ra, 0X6C($sp)
/* 001709 0x808C0CD4 D7B40038 */ ldc1	$f20, 0X38($sp)
/* 001710 0x808C0CD8 D7B60040 */ ldc1	$f22, 0X40($sp)
/* 001711 0x808C0CDC 8FB00048 */ lw	$s0, 0X48($sp)
/* 001712 0x808C0CE0 8FB1004C */ lw	$s1, 0X4C($sp)
/* 001713 0x808C0CE4 8FB20050 */ lw	$s2, 0X50($sp)
/* 001714 0x808C0CE8 8FB30054 */ lw	$s3, 0X54($sp)
/* 001715 0x808C0CEC 8FB40058 */ lw	$s4, 0X58($sp)
/* 001716 0x808C0CF0 8FB5005C */ lw	$s5, 0X5C($sp)
/* 001717 0x808C0CF4 8FB60060 */ lw	$s6, 0X60($sp)
/* 001718 0x808C0CF8 8FB70064 */ lw	$s7, 0X64($sp)
/* 001719 0x808C0CFC 8FBE0068 */ lw	$fp, 0X68($sp)
/* 001720 0x808C0D00 03E00008 */ jr	$ra
/* 001721 0x808C0D04 27BD00C0 */ addiu	$sp, $sp, 0XC0
/* 001722 0x808C0D08 00000000 */ nop
/* 001723 0x808C0D0C 00000000 */ nop

.section .late_rodata

glabel D_808C0E40
/* 001800 0x808C0E40 */ .word	0x3F5EB852
/* 001801 0x808C0E44 */ .word	0x00000000
/* 001802 0x808C0E48 */ .word	0x00000000
/* 001803 0x808C0E4C */ .word	0x00000000
