glabel func_80989BF8
/* 000686 0x80989BF8 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000687 0x80989BFC AFBF0014 */ sw	$ra, 0X14($sp)
/* 000688 0x80989C00 84820286 */ lh	$v0, 0X286($a0)
/* 000689 0x80989C04 2841000E */ slti	$at, $v0, 0XE
/* 000690 0x80989C08 10200028 */ beqz	$at, .L80989CAC
/* 000691 0x80989C0C 00000000 */ nop
/* 000692 0x80989C10 04410004 */ bgez	$v0, .L80989C24
/* 000693 0x80989C14 304E0001 */ andi	$t6, $v0, 0X1
/* 000694 0x80989C18 11C00002 */ beqz	$t6, .L80989C24
/* 000695 0x80989C1C 00000000 */ nop
/* 000696 0x80989C20 25CEFFFE */ addiu	$t6, $t6, -0X2
.L80989C24:
/* 000697 0x80989C24 11C00012 */ beqz	$t6, .L80989C70
/* 000698 0x80989C28 3C0C801F */ lui	$t4, %hi(gSaveContext + 0xF22)
/* 000699 0x80989C2C 04410003 */ bgez	$v0, .L80989C3C
/* 000700 0x80989C30 00027843 */ sra	$t7, $v0, 1
/* 000701 0x80989C34 24410001 */ addiu	$at, $v0, 0X1
/* 000702 0x80989C38 00017843 */ sra	$t7, $at, 1
.L80989C3C:
/* 000703 0x80989C3C 3C18801F */ lui	$t8, %hi(gSaveContext + 0xF22)
/* 000704 0x80989C40 030FC021 */ addu	$t8, $t8, $t7
/* 000705 0x80989C44 93180592 */ lbu	$t8, %lo(gSaveContext + 0xF22)($t8)
/* 000706 0x80989C48 00025080 */ sll	$t2, $v0, 2
/* 000707 0x80989C4C 01425023 */ subu	$t2, $t2, $v0
/* 000708 0x80989C50 331900F0 */ andi	$t9, $t8, 0XF0
/* 000709 0x80989C54 00194103 */ sra	$t0, $t9, 4
/* 000710 0x80989C58 000A5040 */ sll	$t2, $t2, 1
/* 000711 0x80989C5C 3C018099 */ lui	$at, %hi(D_8098C2AC)
/* 000712 0x80989C60 002A0821 */ addu	$at, $at, $t2
/* 000713 0x80989C64 25093538 */ addiu	$t1, $t0, 0X3538
/* 000714 0x80989C68 10000013 */ b	.L80989CB8
/* 000715 0x80989C6C A429C2AC */ sh	$t1, %lo(D_8098C2AC)($at)
.L80989C70:
/* 000716 0x80989C70 04410003 */ bgez	$v0, .L80989C80
/* 000717 0x80989C74 00025843 */ sra	$t3, $v0, 1
/* 000718 0x80989C78 24410001 */ addiu	$at, $v0, 0X1
/* 000719 0x80989C7C 00015843 */ sra	$t3, $at, 1
.L80989C80:
/* 000720 0x80989C80 018B6021 */ addu	$t4, $t4, $t3
/* 000721 0x80989C84 918C0592 */ lbu	$t4, %lo(gSaveContext + 0xF22)($t4)
/* 000722 0x80989C88 00027880 */ sll	$t7, $v0, 2
/* 000723 0x80989C8C 01E27823 */ subu	$t7, $t7, $v0
/* 000724 0x80989C90 000F7840 */ sll	$t7, $t7, 1
/* 000725 0x80989C94 3C018099 */ lui	$at, %hi(D_8098C2AC)
/* 000726 0x80989C98 318D000F */ andi	$t5, $t4, 0XF
/* 000727 0x80989C9C 25AE3538 */ addiu	$t6, $t5, 0X3538
/* 000728 0x80989CA0 002F0821 */ addu	$at, $at, $t7
/* 000729 0x80989CA4 10000004 */ b	.L80989CB8
/* 000730 0x80989CA8 A42EC2AC */ sh	$t6, %lo(D_8098C2AC)($at)
.L80989CAC:
/* 000731 0x80989CAC 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000732 0x80989CB0 AFA40018 */ sw	$a0, 0X18($sp)
/* 000733 0x80989CB4 8FA40018 */ lw	$a0, 0X18($sp)
.L80989CB8:
/* 000734 0x80989CB8 84980286 */ lh	$t8, 0X286($a0)
/* 000735 0x80989CBC 3C088099 */ lui	$t0, %hi(D_8098C2A8)
/* 000736 0x80989CC0 2508C2A8 */ addiu	$t0, $t0, %lo(D_8098C2A8)
/* 000737 0x80989CC4 0018C880 */ sll	$t9, $t8, 2
/* 000738 0x80989CC8 0338C823 */ subu	$t9, $t9, $t8
/* 000739 0x80989CCC 0019C840 */ sll	$t9, $t9, 1
/* 000740 0x80989CD0 03281821 */ addu	$v1, $t9, $t0
/* 000741 0x80989CD4 84620004 */ lh	$v0, 0X4($v1)
/* 000742 0x80989CD8 2409353E */ li	$t1, 0X353E
/* 000743 0x80989CDC 240D3538 */ li	$t5, 0X3538
/* 000744 0x80989CE0 28413547 */ slti	$at, $v0, 0X3547
/* 000745 0x80989CE4 10200003 */ beqz	$at, .L80989CF4
/* 000746 0x80989CE8 28413538 */ slti	$at, $v0, 0X3538
/* 000747 0x80989CEC 5020000B */ beqzl	$at, .L80989D1C
/* 000748 0x80989CF0 2401353D */ li	$at, 0X353D
.L80989CF4:
/* 000749 0x80989CF4 A4690004 */ sh	$t1, 0X4($v1)
/* 000750 0x80989CF8 848A0286 */ lh	$t2, 0X286($a0)
/* 000751 0x80989CFC 3C0C8099 */ lui	$t4, %hi(D_8098C2A8)
/* 000752 0x80989D00 258CC2A8 */ addiu	$t4, $t4, %lo(D_8098C2A8)
/* 000753 0x80989D04 000A5880 */ sll	$t3, $t2, 2
/* 000754 0x80989D08 016A5823 */ subu	$t3, $t3, $t2
/* 000755 0x80989D0C 000B5840 */ sll	$t3, $t3, 1
/* 000756 0x80989D10 016C1821 */ addu	$v1, $t3, $t4
/* 000757 0x80989D14 84620004 */ lh	$v0, 0X4($v1)
/* 000758 0x80989D18 2401353D */ li	$at, 0X353D
.L80989D1C:
/* 000759 0x80989D1C 54410003 */ bnel	$v0, $at, .L80989D2C
/* 000760 0x80989D20 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000761 0x80989D24 A46D0004 */ sh	$t5, 0X4($v1)
/* 000762 0x80989D28 8FBF0014 */ lw	$ra, 0X14($sp)
.L80989D2C:
/* 000763 0x80989D2C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000764 0x80989D30 03E00008 */ jr	$ra
/* 000765 0x80989D34 00000000 */ nop

