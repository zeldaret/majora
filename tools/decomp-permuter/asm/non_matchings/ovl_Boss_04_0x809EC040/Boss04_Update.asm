glabel Boss04_Update
/* 001567 0x809ED8BC 27BDFFB8 */ addiu	$sp, $sp, -0X48
/* 001568 0x809ED8C0 AFB00020 */ sw	$s0, 0X20($sp)
/* 001569 0x809ED8C4 00808025 */ move	$s0, $a0
/* 001570 0x809ED8C8 AFBF0024 */ sw	$ra, 0X24($sp)
/* 001571 0x809ED8CC AFA5004C */ sw	$a1, 0X4C($sp)
/* 001572 0x809ED8D0 860E01F4 */ lh	$t6, 0X1F4($s0)
/* 001573 0x809ED8D4 3C18801F */ lui	$t8, %hi(gStaticContext)
/* 001574 0x809ED8D8 25CF0001 */ addiu	$t7, $t6, 0X1
/* 001575 0x809ED8DC A60F01F4 */ sh	$t7, 0X1F4($s0)
/* 001576 0x809ED8E0 8F183F60 */ lw	$t8, %lo(gStaticContext)($t8)
/* 001577 0x809ED8E4 87190A52 */ lh	$t9, 0XA52($t8)
/* 001578 0x809ED8E8 5720003F */ bnezl	$t9, .L809ED9E8
/* 001579 0x809ED8EC 86180200 */ lh	$t8, 0X200($s0)
/* 001580 0x809ED8F0 860201F8 */ lh	$v0, 0X1F8($s0)
/* 001581 0x809ED8F4 10400002 */ beqz	$v0, .L809ED900
/* 001582 0x809ED8F8 2448FFFF */ addiu	$t0, $v0, -0X1
/* 001583 0x809ED8FC A60801F8 */ sh	$t0, 0X1F8($s0)
.L809ED900:
/* 001584 0x809ED900 860201FA */ lh	$v0, 0X1FA($s0)
/* 001585 0x809ED904 10400002 */ beqz	$v0, .L809ED910
/* 001586 0x809ED908 2449FFFF */ addiu	$t1, $v0, -0X1
/* 001587 0x809ED90C A60901FA */ sh	$t1, 0X1FA($s0)
.L809ED910:
/* 001588 0x809ED910 860202C8 */ lh	$v0, 0X2C8($s0)
/* 001589 0x809ED914 10400002 */ beqz	$v0, .L809ED920
/* 001590 0x809ED918 244AFFFF */ addiu	$t2, $v0, -0X1
/* 001591 0x809ED91C A60A02C8 */ sh	$t2, 0X2C8($s0)
.L809ED920:
/* 001592 0x809ED920 860201FE */ lh	$v0, 0X1FE($s0)
/* 001593 0x809ED924 10400002 */ beqz	$v0, .L809ED930
/* 001594 0x809ED928 244BFFFF */ addiu	$t3, $v0, -0X1
/* 001595 0x809ED92C A60B01FE */ sh	$t3, 0X1FE($s0)
.L809ED930:
/* 001596 0x809ED930 86020200 */ lh	$v0, 0X200($s0)
/* 001597 0x809ED934 10400002 */ beqz	$v0, .L809ED940
/* 001598 0x809ED938 244CFFFF */ addiu	$t4, $v0, -0X1
/* 001599 0x809ED93C A60C0200 */ sh	$t4, 0X200($s0)
.L809ED940:
/* 001600 0x809ED940 860202DA */ lh	$v0, 0X2DA($s0)
/* 001601 0x809ED944 10400002 */ beqz	$v0, .L809ED950
/* 001602 0x809ED948 244DFFFF */ addiu	$t5, $v0, -0X1
/* 001603 0x809ED94C A60D02DA */ sh	$t5, 0X2DA($s0)
.L809ED950:
/* 001604 0x809ED950 860206F4 */ lh	$v0, 0X6F4($s0)
/* 001605 0x809ED954 10400002 */ beqz	$v0, .L809ED960
/* 001606 0x809ED958 244EFFFF */ addiu	$t6, $v0, -0X1
/* 001607 0x809ED95C A60E06F4 */ sh	$t6, 0X6F4($s0)
.L809ED960:
/* 001608 0x809ED960 8E190204 */ lw	$t9, 0X204($s0)
/* 001609 0x809ED964 02002025 */ move	$a0, $s0
/* 001610 0x809ED968 8FA5004C */ lw	$a1, 0X4C($sp)
/* 001611 0x809ED96C 0320F809 */ jalr	$t9
/* 001612 0x809ED970 00000000 */ nop
/* 001613 0x809ED974 0C02DAA2 */ jal	Actor_SetVelocityAndMoveYRotationAndGravity
/* 001614 0x809ED978 02002025 */ move	$a0, $s0
/* 001615 0x809ED97C 3C0142C8 */ lui	$at, 0x42C8
/* 001616 0x809ED980 44816000 */ mtc1	$at, $f12
/* 001617 0x809ED984 C6040028 */ lwc1	$f4, 0X28($s0)
/* 001618 0x809ED988 C608010C */ lwc1	$f8, 0X10C($s0)
/* 001619 0x809ED98C 3C014348 */ lui	$at, 0x4348
/* 001620 0x809ED990 460C2181 */ sub.s	$f6, $f4, $f12
/* 001621 0x809ED994 44818000 */ mtc1	$at, $f16
/* 001622 0x809ED998 240F0005 */ li	$t7, 0X5
/* 001623 0x809ED99C 460C4281 */ sub.s	$f10, $f8, $f12
/* 001624 0x809ED9A0 E6060028 */ swc1	$f6, 0X28($s0)
/* 001625 0x809ED9A4 44066000 */ mfc1	$a2, $f12
/* 001626 0x809ED9A8 02002825 */ move	$a1, $s0
/* 001627 0x809ED9AC E60A010C */ swc1	$f10, 0X10C($s0)
/* 001628 0x809ED9B0 AFAF0014 */ sw	$t7, 0X14($sp)
/* 001629 0x809ED9B4 8FA4004C */ lw	$a0, 0X4C($sp)
/* 001630 0x809ED9B8 3C0742F0 */ lui	$a3, 0x42F0
/* 001631 0x809ED9BC 0C02DE2E */ jal	func_800B78B8
/* 001632 0x809ED9C0 E7B00010 */ swc1	$f16, 0X10($sp)
/* 001633 0x809ED9C4 3C0142C8 */ lui	$at, 0x42C8
/* 001634 0x809ED9C8 44816000 */ mtc1	$at, $f12
/* 001635 0x809ED9CC C6120028 */ lwc1	$f18, 0X28($s0)
/* 001636 0x809ED9D0 C606010C */ lwc1	$f6, 0X10C($s0)
/* 001637 0x809ED9D4 460C9100 */ add.s	$f4, $f18, $f12
/* 001638 0x809ED9D8 460C3200 */ add.s	$f8, $f6, $f12
/* 001639 0x809ED9DC E6040028 */ swc1	$f4, 0X28($s0)
/* 001640 0x809ED9E0 E608010C */ swc1	$f8, 0X10C($s0)
/* 001641 0x809ED9E4 86180200 */ lh	$t8, 0X200($s0)
.L809ED9E8:
/* 001642 0x809ED9E8 3C0142C8 */ lui	$at, 0x42C8
/* 001643 0x809ED9EC 44816000 */ mtc1	$at, $f12
/* 001644 0x809ED9F0 2401000A */ li	$at, 0XA
/* 001645 0x809ED9F4 5701000F */ bnel	$t8, $at, .L809EDA34
/* 001646 0x809ED9F8 860A02C8 */ lh	$t2, 0X2C8($s0)
/* 001647 0x809ED9FC 44805000 */ mtc1	$zero, $f10
/* 001648 0x809EDA00 0C05E565 */ jal	randZeroOneScaled
/* 001649 0x809EDA04 E60A02D0 */ swc1	$f10, 0X2D0($s0)
/* 001650 0x809EDA08 3C0142C8 */ lui	$at, 0x42C8
/* 001651 0x809EDA0C 44816000 */ mtc1	$at, $f12
/* 001652 0x809EDA10 3C014270 */ lui	$at, 0x4270
/* 001653 0x809EDA14 44818000 */ mtc1	$at, $f16
/* 001654 0x809EDA18 00000000 */ nop
/* 001655 0x809EDA1C 46100480 */ add.s	$f18, $f0, $f16
/* 001656 0x809EDA20 4600910D */ trunc.w.s	$f4, $f18
/* 001657 0x809EDA24 44092000 */ mfc1	$t1, $f4
/* 001658 0x809EDA28 00000000 */ nop
/* 001659 0x809EDA2C A60902C8 */ sh	$t1, 0X2C8($s0)
/* 001660 0x809EDA30 860A02C8 */ lh	$t2, 0X2C8($s0)
.L809EDA34:
/* 001661 0x809EDA34 55400010 */ bnezl	$t2, .L809EDA78
/* 001662 0x809EDA38 3C063E4C */ lui	$a2, 0x3E4C
/* 001663 0x809EDA3C 0C05E565 */ jal	randZeroOneScaled
/* 001664 0x809EDA40 00000000 */ nop
/* 001665 0x809EDA44 3C014270 */ lui	$at, 0x4270
/* 001666 0x809EDA48 44813000 */ mtc1	$at, $f6
/* 001667 0x809EDA4C 3C01809F */ lui	$at, %hi(D_809EE2B8)
/* 001668 0x809EDA50 C61202D0 */ lwc1	$f18, 0X2D0($s0)
/* 001669 0x809EDA54 46060200 */ add.s	$f8, $f0, $f6
/* 001670 0x809EDA58 4600428D */ trunc.w.s	$f10, $f8
/* 001671 0x809EDA5C 440C5000 */ mfc1	$t4, $f10
/* 001672 0x809EDA60 00000000 */ nop
/* 001673 0x809EDA64 A60C02C8 */ sh	$t4, 0X2C8($s0)
/* 001674 0x809EDA68 C430E2B8 */ lwc1	$f16, %lo(D_809EE2B8)($at)
/* 001675 0x809EDA6C 46128101 */ sub.s	$f4, $f16, $f18
/* 001676 0x809EDA70 E60402D0 */ swc1	$f4, 0X2D0($s0)
/* 001677 0x809EDA74 3C063E4C */ lui	$a2, 0x3E4C
.L809EDA78:
/* 001678 0x809EDA78 34C6CCCD */ ori	$a2, $a2, 0XCCCD
/* 001679 0x809EDA7C 260402CC */ addiu	$a0, $s0, 0X2CC
/* 001680 0x809EDA80 8E0502D0 */ lw	$a1, 0X2D0($s0)
/* 001681 0x809EDA84 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 001682 0x809EDA88 3C07447A */ lui	$a3, 0x447A
/* 001683 0x809EDA8C 8E0E0204 */ lw	$t6, 0X204($s0)
/* 001684 0x809EDA90 3C0D809F */ lui	$t5, %hi(func_809ED2A0)
/* 001685 0x809EDA94 25ADD2A0 */ addiu	$t5, $t5, %lo(func_809ED2A0)
/* 001686 0x809EDA98 11AE0077 */ beq	$t5, $t6, .L809EDC78
/* 001687 0x809EDA9C 260402D4 */ addiu	$a0, $s0, 0X2D4
/* 001688 0x809EDAA0 86190092 */ lh	$t9, 0X92($s0)
/* 001689 0x809EDAA4 860F00BE */ lh	$t7, 0XBE($s0)
/* 001690 0x809EDAA8 24060005 */ li	$a2, 0X5
/* 001691 0x809EDAAC 24070800 */ li	$a3, 0X800
/* 001692 0x809EDAB0 032F1023 */ subu	$v0, $t9, $t7
/* 001693 0x809EDAB4 00021400 */ sll	$v0, $v0, 16
/* 001694 0x809EDAB8 00021403 */ sra	$v0, $v0, 16
/* 001695 0x809EDABC 04410003 */ bgez	$v0, .L809EDACC
/* 001696 0x809EDAC0 00401825 */ move	$v1, $v0
/* 001697 0x809EDAC4 10000001 */ b	.L809EDACC
/* 001698 0x809EDAC8 00021823 */ negu	$v1, $v0
.L809EDACC:
/* 001699 0x809EDACC 28616000 */ slti	$at, $v1, 0X6000
/* 001700 0x809EDAD0 1020000C */ beqz	$at, .L809EDB04
/* 001701 0x809EDAD4 28412501 */ slti	$at, $v0, 0X2501
/* 001702 0x809EDAD8 14200003 */ bnez	$at, .L809EDAE8
/* 001703 0x809EDADC 24182500 */ li	$t8, 0X2500
/* 001704 0x809EDAE0 10000009 */ b	.L809EDB08
/* 001705 0x809EDAE4 A61802D6 */ sh	$t8, 0X2D6($s0)
.L809EDAE8:
/* 001706 0x809EDAE8 2841DB00 */ slti	$at, $v0, -0X2500
/* 001707 0x809EDAEC 10200003 */ beqz	$at, .L809EDAFC
/* 001708 0x809EDAF0 2408DB00 */ li	$t0, -0X2500
/* 001709 0x809EDAF4 10000004 */ b	.L809EDB08
/* 001710 0x809EDAF8 A60802D6 */ sh	$t0, 0X2D6($s0)
.L809EDAFC:
/* 001711 0x809EDAFC 10000002 */ b	.L809EDB08
/* 001712 0x809EDB00 A60202D6 */ sh	$v0, 0X2D6($s0)
.L809EDB04:
/* 001713 0x809EDB04 A60002D6 */ sh	$zero, 0X2D6($s0)
.L809EDB08:
/* 001714 0x809EDB08 0C03FFF6 */ jal	Math_SmoothScaleMaxS
/* 001715 0x809EDB0C 860502D6 */ lh	$a1, 0X2D6($s0)
/* 001716 0x809EDB10 860406F4 */ lh	$a0, 0X6F4($s0)
/* 001717 0x809EDB14 240907D0 */ li	$t1, 0X7D0
/* 001718 0x809EDB18 A60902D8 */ sh	$t1, 0X2D8($s0)
/* 001719 0x809EDB1C 00800821 */ addu	$at, $a0, $zero
/* 001720 0x809EDB20 00042080 */ sll	$a0, $a0, 2
/* 001721 0x809EDB24 00812023 */ subu	$a0, $a0, $at
/* 001722 0x809EDB28 00042300 */ sll	$a0, $a0, 12
/* 001723 0x809EDB2C 00042400 */ sll	$a0, $a0, 16
/* 001724 0x809EDB30 0C03FB61 */ jal	Math_Sins
/* 001725 0x809EDB34 00042403 */ sra	$a0, $a0, 16
/* 001726 0x809EDB38 860206F4 */ lh	$v0, 0X6F4($s0)
/* 001727 0x809EDB3C 3C01809F */ lui	$at, %hi(D_809EE2BC)
/* 001728 0x809EDB40 C430E2BC */ lwc1	$f16, %lo(D_809EE2BC)($at)
/* 001729 0x809EDB44 44823000 */ mtc1	$v0, $f6
/* 001730 0x809EDB48 3C013F80 */ lui	$at, 0x3F80
/* 001731 0x809EDB4C 44812000 */ mtc1	$at, $f4
/* 001732 0x809EDB50 46803220 */ cvt.s.w	$f8, $f6
/* 001733 0x809EDB54 00022080 */ sll	$a0, $v0, 2
/* 001734 0x809EDB58 00822023 */ subu	$a0, $a0, $v0
/* 001735 0x809EDB5C 00042300 */ sll	$a0, $a0, 12
/* 001736 0x809EDB60 00042400 */ sll	$a0, $a0, 16
/* 001737 0x809EDB64 00042403 */ sra	$a0, $a0, 16
/* 001738 0x809EDB68 46080282 */ mul.s	$f10, $f0, $f8
/* 001739 0x809EDB6C 00000000 */ nop
/* 001740 0x809EDB70 46105482 */ mul.s	$f18, $f10, $f16
/* 001741 0x809EDB74 46049180 */ add.s	$f6, $f18, $f4
/* 001742 0x809EDB78 0C03FB51 */ jal	Math_Coss
/* 001743 0x809EDB7C E6060700 */ swc1	$f6, 0X700($s0)
/* 001744 0x809EDB80 860A06F4 */ lh	$t2, 0X6F4($s0)
/* 001745 0x809EDB84 3C013F80 */ lui	$at, 0x3F80
/* 001746 0x809EDB88 44816000 */ mtc1	$at, $f12
/* 001747 0x809EDB8C 448A4000 */ mtc1	$t2, $f8
/* 001748 0x809EDB90 3C01809F */ lui	$at, %hi(D_809EE2C0)
/* 001749 0x809EDB94 C432E2C0 */ lwc1	$f18, %lo(D_809EE2C0)($at)
/* 001750 0x809EDB98 468042A0 */ cvt.s.w	$f10, $f8
/* 001751 0x809EDB9C 3C01447A */ lui	$at, 0x447A
/* 001752 0x809EDBA0 44814000 */ mtc1	$at, $f8
/* 001753 0x809EDBA4 02002025 */ move	$a0, $s0
/* 001754 0x809EDBA8 460A0402 */ mul.s	$f16, $f0, $f10
/* 001755 0x809EDBAC 00000000 */ nop
/* 001756 0x809EDBB0 46128102 */ mul.s	$f4, $f16, $f18
/* 001757 0x809EDBB4 460C2080 */ add.s	$f2, $f4, $f12
/* 001758 0x809EDBB8 460C1181 */ sub.s	$f6, $f2, $f12
/* 001759 0x809EDBBC E60206FC */ swc1	$f2, 0X6FC($s0)
/* 001760 0x809EDBC0 E60206F8 */ swc1	$f2, 0X6F8($s0)
/* 001761 0x809EDBC4 46083282 */ mul.s	$f10, $f6, $f8
/* 001762 0x809EDBC8 E60A00C4 */ swc1	$f10, 0XC4($s0)
/* 001763 0x809EDBCC 0C27B517 */ jal	func_809ED45C
/* 001764 0x809EDBD0 8FA5004C */ lw	$a1, 0X4C($sp)
/* 001765 0x809EDBD4 3C01809F */ lui	$at, %hi(D_809EE2C4)
/* 001766 0x809EDBD8 C430E2C4 */ lwc1	$f16, %lo(D_809EE2C4)($at)
/* 001767 0x809EDBDC C61202CC */ lwc1	$f18, 0X2CC($s0)
/* 001768 0x809EDBE0 8FA4004C */ lw	$a0, 0X4C($sp)
/* 001769 0x809EDBE4 3C010001 */ lui	$at, 0x0001
/* 001770 0x809EDBE8 4612803C */ c.lt.s	$f16, $f18
/* 001771 0x809EDBEC 34218884 */ ori	$at, $at, 0X8884
/* 001772 0x809EDBF0 26060208 */ addiu	$a2, $s0, 0X208
/* 001773 0x809EDBF4 00812821 */ addu	$a1, $a0, $at
/* 001774 0x809EDBF8 45020008 */ bc1fl .L809EDC1C
/* 001775 0x809EDBFC 8E0D0004 */ lw	$t5, 0X4($s0)
/* 001776 0x809EDC00 0C0389D0 */ jal	Collision_AddAC
/* 001777 0x809EDC04 AFA50030 */ sw	$a1, 0X30($sp)
/* 001778 0x809EDC08 8E0B0004 */ lw	$t3, 0X4($s0)
/* 001779 0x809EDC0C 356C0001 */ ori	$t4, $t3, 0X1
/* 001780 0x809EDC10 1000000A */ b	.L809EDC3C
/* 001781 0x809EDC14 AE0C0004 */ sw	$t4, 0X4($s0)
/* 001782 0x809EDC18 8E0D0004 */ lw	$t5, 0X4($s0)
.L809EDC1C:
/* 001783 0x809EDC1C 2401FFFE */ li	$at, -0X2
/* 001784 0x809EDC20 01A17024 */ and	$t6, $t5, $at
/* 001785 0x809EDC24 AE0E0004 */ sw	$t6, 0X4($s0)
/* 001786 0x809EDC28 8FB9004C */ lw	$t9, 0X4C($sp)
/* 001787 0x809EDC2C 3C010001 */ lui	$at, 0x0001
/* 001788 0x809EDC30 34218884 */ ori	$at, $at, 0X8884
/* 001789 0x809EDC34 03217821 */ addu	$t7, $t9, $at
/* 001790 0x809EDC38 AFAF0030 */ sw	$t7, 0X30($sp)
.L809EDC3C:
/* 001791 0x809EDC3C 26060268 */ addiu	$a2, $s0, 0X268
/* 001792 0x809EDC40 AFA6002C */ sw	$a2, 0X2C($sp)
/* 001793 0x809EDC44 8FA4004C */ lw	$a0, 0X4C($sp)
/* 001794 0x809EDC48 0C038A4A */ jal	Collision_AddOT
/* 001795 0x809EDC4C 8FA50030 */ lw	$a1, 0X30($sp)
/* 001796 0x809EDC50 8FA4004C */ lw	$a0, 0X4C($sp)
/* 001797 0x809EDC54 8FA50030 */ lw	$a1, 0X30($sp)
/* 001798 0x809EDC58 0C0389D0 */ jal	Collision_AddAC
/* 001799 0x809EDC5C 8FA6002C */ lw	$a2, 0X2C($sp)
/* 001800 0x809EDC60 8FA4004C */ lw	$a0, 0X4C($sp)
/* 001801 0x809EDC64 8FA50030 */ lw	$a1, 0X30($sp)
/* 001802 0x809EDC68 0C038956 */ jal	Collision_AddAT
/* 001803 0x809EDC6C 8FA6002C */ lw	$a2, 0X2C($sp)
/* 001804 0x809EDC70 0C27B543 */ jal	func_809ED50C
/* 001805 0x809EDC74 02002025 */ move	$a0, $s0
.L809EDC78:
/* 001806 0x809EDC78 3C03809F */ lui	$v1, %hi(D_809EE4D0)
/* 001807 0x809EDC7C 2463E4D0 */ addiu	$v1, $v1, %lo(D_809EE4D0)
/* 001808 0x809EDC80 90620000 */ lbu	$v0, 0X0($v1)
/* 001809 0x809EDC84 10400006 */ beqz	$v0, .L809EDCA0
/* 001810 0x809EDC88 2458FFFF */ addiu	$t8, $v0, -0X1
/* 001811 0x809EDC8C 330800FF */ andi	$t0, $t8, 0XFF
/* 001812 0x809EDC90 15000003 */ bnez	$t0, .L809EDCA0
/* 001813 0x809EDC94 A0780000 */ sb	$t8, 0X0($v1)
/* 001814 0x809EDC98 0C068B95 */ jal	func_801A2E54
/* 001815 0x809EDC9C 24040038 */ li	$a0, 0X38
.L809EDCA0:
/* 001816 0x809EDCA0 9209074A */ lbu	$t1, 0X74A($s0)
/* 001817 0x809EDCA4 02002025 */ move	$a0, $s0
/* 001818 0x809EDCA8 51200004 */ beqzl	$t1, .L809EDCBC
/* 001819 0x809EDCAC 8FBF0024 */ lw	$ra, 0X24($sp)
/* 001820 0x809EDCB0 0C02E3B2 */ jal	func_800B8EC8
/* 001821 0x809EDCB4 24053215 */ li	$a1, 0X3215
/* 001822 0x809EDCB8 8FBF0024 */ lw	$ra, 0X24($sp)
.L809EDCBC:
/* 001823 0x809EDCBC 8FB00020 */ lw	$s0, 0X20($sp)
/* 001824 0x809EDCC0 27BD0048 */ addiu	$sp, $sp, 0X48
/* 001825 0x809EDCC4 03E00008 */ jr	$ra
/* 001826 0x809EDCC8 00000000 */ nop


.section .late_rodata

glabel D_809EE2B8
/* 002206 0x809EE2B8 */ .word	0x461C4000
glabel D_809EE2BC
/* 002207 0x809EE2BC */ .word	0x3CA3D70A
glabel D_809EE2C0
/* 002208 0x809EE2C0 */ .word	0x3CA3D70A
glabel D_809EE2C4
/* 002209 0x809EE2C4 */ .word	0x453B8000
