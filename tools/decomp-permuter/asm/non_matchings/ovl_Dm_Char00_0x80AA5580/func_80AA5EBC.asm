glabel func_80AA5EBC
/* 000591 0x80AA5EBC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000592 0x80AA5EC0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000593 0x80AA5EC4 90AE1F2C */ lbu	$t6, 0X1F2C($a1)
/* 000594 0x80AA5EC8 51C000A8 */ beqzl	$t6, .L80AA616C
/* 000595 0x80AA5ECC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000596 0x80AA5ED0 84A200A4 */ lh	$v0, 0XA4($a1)
/* 000597 0x80AA5ED4 28410064 */ slti	$at, $v0, 0X64
/* 000598 0x80AA5ED8 14200005 */ bnez	$at, .L80AA5EF0
/* 000599 0x80AA5EDC 24010065 */ li	$at, 0X65
/* 000600 0x80AA5EE0 10410013 */ beq	$v0, $at, .L80AA5F30
/* 000601 0x80AA5EE4 3C18801F */ lui	$t8, %hi(gSaveContext + 0x3CAC)
/* 000602 0x80AA5EE8 100000A0 */ b	.L80AA616C
/* 000603 0x80AA5EEC 8FBF0014 */ lw	$ra, 0X14($sp)
.L80AA5EF0:
/* 000604 0x80AA5EF0 2841002E */ slti	$at, $v0, 0X2E
/* 000605 0x80AA5EF4 14200006 */ bnez	$at, .L80AA5F10
/* 000606 0x80AA5EF8 244FFFE7 */ addiu	$t7, $v0, -0X19
/* 000607 0x80AA5EFC 24010063 */ li	$at, 0X63
/* 000608 0x80AA5F00 10410086 */ beq	$v0, $at, .L80AA611C
/* 000609 0x80AA5F04 3C0A801F */ lui	$t2, %hi(gSaveContext + 0x3CAC)
/* 000610 0x80AA5F08 10000098 */ b	.L80AA616C
/* 000611 0x80AA5F0C 8FBF0014 */ lw	$ra, 0X14($sp)
.L80AA5F10:
/* 000612 0x80AA5F10 2DE10015 */ sltiu	$at, $t7, 0X15
/* 000613 0x80AA5F14 10200094 */ beqz	$at, .L80AA6168
/* 000614 0x80AA5F18 000F7880 */ sll	$t7, $t7, 2
/* 000615 0x80AA5F1C 3C0180AA */ lui	$at, %hi(jtbl_D_80AA79A8)
/* 000616 0x80AA5F20 002F0821 */ addu	$at, $at, $t7
/* 000617 0x80AA5F24 8C2F79A8 */ lw	$t7, %lo(jtbl_D_80AA79A8)($at)
/* 000618 0x80AA5F28 01E00008 */ jr	$t7
/* 000619 0x80AA5F2C 00000000 */ nop
.L80AA5F30:
/* 000620 0x80AA5F30 8F18331C */ lw	$t8, %lo(gSaveContext + 0x3CAC)($t8)
/* 000621 0x80AA5F34 24010001 */ li	$at, 0X1
/* 000622 0x80AA5F38 5701008C */ bnel	$t8, $at, .L80AA616C
/* 000623 0x80AA5F3C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000624 0x80AA5F40 0C2A9587 */ jal	func_80AA561C
/* 000625 0x80AA5F44 00000000 */ nop
/* 000626 0x80AA5F48 10000088 */ b	.L80AA616C
/* 000627 0x80AA5F4C 8FBF0014 */ lw	$ra, 0X14($sp)
glabel L80AA5F50
.L80AA5F50:
/* 000628 0x80AA5F50 3C19801F */ lui	$t9, %hi(gSaveContext + 0x3CAC)
/* 000629 0x80AA5F54 8F39331C */ lw	$t9, %lo(gSaveContext + 0x3CAC)($t9)
/* 000630 0x80AA5F58 57200084 */ bnezl	$t9, .L80AA616C
/* 000631 0x80AA5F5C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000632 0x80AA5F60 94A21F36 */ lhu	$v0, 0X1F36($a1)
/* 000633 0x80AA5F64 24010001 */ li	$at, 0X1
/* 000634 0x80AA5F68 14400005 */ bnez	$v0, .L80AA5F80
/* 000635 0x80AA5F6C 00000000 */ nop
/* 000636 0x80AA5F70 0C2A95C8 */ jal	func_80AA5720
/* 000637 0x80AA5F74 00000000 */ nop
/* 000638 0x80AA5F78 1000007C */ b	.L80AA616C
/* 000639 0x80AA5F7C 8FBF0014 */ lw	$ra, 0X14($sp)
.L80AA5F80:
/* 000640 0x80AA5F80 54410006 */ bnel	$v0, $at, .L80AA5F9C
/* 000641 0x80AA5F84 24010002 */ li	$at, 0X2
/* 000642 0x80AA5F88 0C2A95D7 */ jal	func_80AA575C
/* 000643 0x80AA5F8C 00000000 */ nop
/* 000644 0x80AA5F90 10000076 */ b	.L80AA616C
/* 000645 0x80AA5F94 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000646 0x80AA5F98 24010002 */ li	$at, 0X2
.L80AA5F9C:
/* 000647 0x80AA5F9C 54410073 */ bnel	$v0, $at, .L80AA616C
/* 000648 0x80AA5FA0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000649 0x80AA5FA4 0C2A9624 */ jal	func_80AA5890
/* 000650 0x80AA5FA8 00000000 */ nop
/* 000651 0x80AA5FAC 1000006F */ b	.L80AA616C
/* 000652 0x80AA5FB0 8FBF0014 */ lw	$ra, 0X14($sp)
glabel L80AA5FB4
.L80AA5FB4:
/* 000653 0x80AA5FB4 3C02801F */ lui	$v0, %hi(gSaveContext + 0x3CAC)
/* 000654 0x80AA5FB8 8C42331C */ lw	$v0, %lo(gSaveContext + 0x3CAC)($v0)
/* 000655 0x80AA5FBC 24010002 */ li	$at, 0X2
/* 000656 0x80AA5FC0 14400016 */ bnez	$v0, .L80AA601C
/* 000657 0x80AA5FC4 00000000 */ nop
/* 000658 0x80AA5FC8 94A21F36 */ lhu	$v0, 0X1F36($a1)
/* 000659 0x80AA5FCC 24010001 */ li	$at, 0X1
/* 000660 0x80AA5FD0 14400005 */ bnez	$v0, .L80AA5FE8
/* 000661 0x80AA5FD4 00000000 */ nop
/* 000662 0x80AA5FD8 0C2A9633 */ jal	func_80AA58CC
/* 000663 0x80AA5FDC 00000000 */ nop
/* 000664 0x80AA5FE0 10000062 */ b	.L80AA616C
/* 000665 0x80AA5FE4 8FBF0014 */ lw	$ra, 0X14($sp)
.L80AA5FE8:
/* 000666 0x80AA5FE8 54410006 */ bnel	$v0, $at, .L80AA6004
/* 000667 0x80AA5FEC 24010002 */ li	$at, 0X2
/* 000668 0x80AA5FF0 0C2A9654 */ jal	func_80AA5950
/* 000669 0x80AA5FF4 00000000 */ nop
/* 000670 0x80AA5FF8 1000005C */ b	.L80AA616C
/* 000671 0x80AA5FFC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000672 0x80AA6000 24010002 */ li	$at, 0X2
.L80AA6004:
/* 000673 0x80AA6004 54410059 */ bnel	$v0, $at, .L80AA616C
/* 000674 0x80AA6008 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000675 0x80AA600C 0C2A9658 */ jal	func_80AA5960
/* 000676 0x80AA6010 00000000 */ nop
/* 000677 0x80AA6014 10000055 */ b	.L80AA616C
/* 000678 0x80AA6018 8FBF0014 */ lw	$ra, 0X14($sp)
.L80AA601C:
/* 000679 0x80AA601C 54410053 */ bnel	$v0, $at, .L80AA616C
/* 000680 0x80AA6020 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000681 0x80AA6024 94A21F36 */ lhu	$v0, 0X1F36($a1)
/* 000682 0x80AA6028 24010001 */ li	$at, 0X1
/* 000683 0x80AA602C 14400005 */ bnez	$v0, .L80AA6044
/* 000684 0x80AA6030 00000000 */ nop
/* 000685 0x80AA6034 0C2A9679 */ jal	func_80AA59E4
/* 000686 0x80AA6038 00000000 */ nop
/* 000687 0x80AA603C 1000004B */ b	.L80AA616C
/* 000688 0x80AA6040 8FBF0014 */ lw	$ra, 0X14($sp)
.L80AA6044:
/* 000689 0x80AA6044 54410049 */ bnel	$v0, $at, .L80AA616C
/* 000690 0x80AA6048 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000691 0x80AA604C 0C2A969B */ jal	func_80AA5A6C
/* 000692 0x80AA6050 00000000 */ nop
/* 000693 0x80AA6054 10000045 */ b	.L80AA616C
/* 000694 0x80AA6058 8FBF0014 */ lw	$ra, 0X14($sp)
glabel L80AA605C
.L80AA605C:
/* 000695 0x80AA605C 3C02801F */ lui	$v0, %hi(gSaveContext + 0x3CAC)
/* 000696 0x80AA6060 8C42331C */ lw	$v0, %lo(gSaveContext + 0x3CAC)($v0)
/* 000697 0x80AA6064 24010003 */ li	$at, 0X3
/* 000698 0x80AA6068 54410010 */ bnel	$v0, $at, .L80AA60AC
/* 000699 0x80AA606C 24010007 */ li	$at, 0X7
/* 000700 0x80AA6070 94A21F36 */ lhu	$v0, 0X1F36($a1)
/* 000701 0x80AA6074 24010002 */ li	$at, 0X2
/* 000702 0x80AA6078 14400005 */ bnez	$v0, .L80AA6090
/* 000703 0x80AA607C 00000000 */ nop
/* 000704 0x80AA6080 0C2A96BD */ jal	func_80AA5AF4
/* 000705 0x80AA6084 00000000 */ nop
/* 000706 0x80AA6088 10000038 */ b	.L80AA616C
/* 000707 0x80AA608C 8FBF0014 */ lw	$ra, 0X14($sp)
.L80AA6090:
/* 000708 0x80AA6090 54410036 */ bnel	$v0, $at, .L80AA616C
/* 000709 0x80AA6094 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000710 0x80AA6098 0C2A978B */ jal	func_80AA5E2C
/* 000711 0x80AA609C 00000000 */ nop
/* 000712 0x80AA60A0 10000032 */ b	.L80AA616C
/* 000713 0x80AA60A4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000714 0x80AA60A8 24010007 */ li	$at, 0X7
.L80AA60AC:
/* 000715 0x80AA60AC 5441002F */ bnel	$v0, $at, .L80AA616C
/* 000716 0x80AA60B0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000717 0x80AA60B4 94A21F36 */ lhu	$v0, 0X1F36($a1)
/* 000718 0x80AA60B8 24010001 */ li	$at, 0X1
/* 000719 0x80AA60BC 14400005 */ bnez	$v0, .L80AA60D4
/* 000720 0x80AA60C0 00000000 */ nop
/* 000721 0x80AA60C4 0C2A96FE */ jal	func_80AA5BF8
/* 000722 0x80AA60C8 00000000 */ nop
/* 000723 0x80AA60CC 10000027 */ b	.L80AA616C
/* 000724 0x80AA60D0 8FBF0014 */ lw	$ra, 0X14($sp)
.L80AA60D4:
/* 000725 0x80AA60D4 54410025 */ bnel	$v0, $at, .L80AA616C
/* 000726 0x80AA60D8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000727 0x80AA60DC 0C2A9735 */ jal	func_80AA5CD4
/* 000728 0x80AA60E0 00000000 */ nop
/* 000729 0x80AA60E4 10000021 */ b	.L80AA616C
/* 000730 0x80AA60E8 8FBF0014 */ lw	$ra, 0X14($sp)
glabel L80AA60EC
.L80AA60EC:
/* 000731 0x80AA60EC 3C08801F */ lui	$t0, %hi(gSaveContext + 0x3CAC)
/* 000732 0x80AA60F0 8D08331C */ lw	$t0, %lo(gSaveContext + 0x3CAC)($t0)
/* 000733 0x80AA60F4 5500001D */ bnezl	$t0, .L80AA616C
/* 000734 0x80AA60F8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000735 0x80AA60FC 94A91F36 */ lhu	$t1, 0X1F36($a1)
/* 000736 0x80AA6100 24010001 */ li	$at, 0X1
/* 000737 0x80AA6104 55210019 */ bnel	$t1, $at, .L80AA616C
/* 000738 0x80AA6108 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000739 0x80AA610C 0C2A9772 */ jal	func_80AA5DC8
/* 000740 0x80AA6110 00000000 */ nop
/* 000741 0x80AA6114 10000015 */ b	.L80AA616C
/* 000742 0x80AA6118 8FBF0014 */ lw	$ra, 0X14($sp)
.L80AA611C:
/* 000743 0x80AA611C 8D4A331C */ lw	$t2, %lo(gSaveContext + 0x3CAC)($t2)
/* 000744 0x80AA6120 55400012 */ bnezl	$t2, .L80AA616C
/* 000745 0x80AA6124 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000746 0x80AA6128 94AB1F36 */ lhu	$t3, 0X1F36($a1)
/* 000747 0x80AA612C 5560000F */ bnezl	$t3, .L80AA616C
/* 000748 0x80AA6130 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000749 0x80AA6134 0C2A9744 */ jal	func_80AA5D10
/* 000750 0x80AA6138 00000000 */ nop
/* 000751 0x80AA613C 1000000B */ b	.L80AA616C
/* 000752 0x80AA6140 8FBF0014 */ lw	$ra, 0X14($sp)
glabel L80AA6144
.L80AA6144:
/* 000753 0x80AA6144 3C0C801F */ lui	$t4, %hi(gSaveContext + 0x3CAC)
/* 000754 0x80AA6148 8D8C331C */ lw	$t4, %lo(gSaveContext + 0x3CAC)($t4)
/* 000755 0x80AA614C 55800007 */ bnezl	$t4, .L80AA616C
/* 000756 0x80AA6150 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000757 0x80AA6154 94AD1F36 */ lhu	$t5, 0X1F36($a1)
/* 000758 0x80AA6158 55A00004 */ bnezl	$t5, .L80AA616C
/* 000759 0x80AA615C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000760 0x80AA6160 0C2A975B */ jal	func_80AA5D6C
/* 000761 0x80AA6164 00000000 */ nop
glabel L80AA6168
.L80AA6168:
/* 000762 0x80AA6168 8FBF0014 */ lw	$ra, 0X14($sp)
.L80AA616C:
/* 000763 0x80AA616C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000764 0x80AA6170 03E00008 */ jr	$ra
/* 000765 0x80AA6174 00000000 */ nop


.section .late_rodata

glabel jtbl_D_80AA79A8
/* 002314 0x80AA79A8 */ .word	L80AA5FB4
/* 002315 0x80AA79AC */ .word	L80AA5F50
/* 002316 0x80AA79B0 */ .word	L80AA60EC
/* 002317 0x80AA79B4 */ .word	L80AA6168
/* 002318 0x80AA79B8 */ .word	L80AA6168
/* 002319 0x80AA79BC */ .word	L80AA6168
/* 002320 0x80AA79C0 */ .word	L80AA6168
/* 002321 0x80AA79C4 */ .word	L80AA6168
/* 002322 0x80AA79C8 */ .word	L80AA6168
/* 002323 0x80AA79CC */ .word	L80AA6168
/* 002324 0x80AA79D0 */ .word	L80AA6144
/* 002325 0x80AA79D4 */ .word	L80AA6168
/* 002326 0x80AA79D8 */ .word	L80AA6168
/* 002327 0x80AA79DC */ .word	L80AA6168
/* 002328 0x80AA79E0 */ .word	L80AA6168
/* 002329 0x80AA79E4 */ .word	L80AA6168
/* 002330 0x80AA79E8 */ .word	L80AA6168
/* 002331 0x80AA79EC */ .word	L80AA6168
/* 002332 0x80AA79F0 */ .word	L80AA6168
/* 002333 0x80AA79F4 */ .word	L80AA6168
/* 002334 0x80AA79F8 */ .word	L80AA605C
