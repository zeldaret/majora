glabel func_80B98178
/* 001770 0x80B98178 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001771 0x80B9817C AFBF0014 */ sw	$ra, 0X14($sp)
/* 001772 0x80B98180 AFA5001C */ sw	$a1, 0X1C($sp)
/* 001773 0x80B98184 00803825 */ move	$a3, $a0
/* 001774 0x80B98188 84E6001C */ lh	$a2, 0X1C($a3)
/* 001775 0x80B9818C 30C6001F */ andi	$a2, $a2, 0X1F
/* 001776 0x80B98190 24CEFFFA */ addiu	$t6, $a2, -0X6
/* 001777 0x80B98194 2DC1000C */ sltiu	$at, $t6, 0XC
/* 001778 0x80B98198 1020005B */ beqz	$at, .L80B98308
/* 001779 0x80B9819C 000E7080 */ sll	$t6, $t6, 2
/* 001780 0x80B981A0 3C0180BA */ lui	$at, %hi(jtbl_D_80B99A54)
/* 001781 0x80B981A4 002E0821 */ addu	$at, $at, $t6
/* 001782 0x80B981A8 8C2E9A54 */ lw	$t6, %lo(jtbl_D_80B99A54)($at)
/* 001783 0x80B981AC 01C00008 */ jr	$t6
/* 001784 0x80B981B0 00000000 */ nop
glabel L80B981B4
.L80B981B4:
/* 001785 0x80B981B4 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 001786 0x80B981B8 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 001787 0x80B981BC 906F0020 */ lbu	$t7, 0X20($v1)
/* 001788 0x80B981C0 24010002 */ li	$at, 0X2
/* 001789 0x80B981C4 55E10014 */ bnel	$t7, $at, .L80B98218
/* 001790 0x80B981C8 90620F1E */ lbu	$v0, 0XF1E($v1)
/* 001791 0x80B981CC 8C780018 */ lw	$t8, 0X18($v1)
/* 001792 0x80B981D0 24010005 */ li	$at, 0X5
/* 001793 0x80B981D4 0301001A */ div	$zero, $t8, $at
/* 001794 0x80B981D8 0000C810 */ mfhi	$t9
/* 001795 0x80B981DC 24010003 */ li	$at, 0X3
/* 001796 0x80B981E0 57210004 */ bnel	$t9, $at, .L80B981F4
/* 001797 0x80B981E4 90620F1F */ lbu	$v0, 0XF1F($v1)
/* 001798 0x80B981E8 10000050 */ b	.L80B9832C
/* 001799 0x80B981EC 2405129D */ li	$a1, 0X129D
/* 001800 0x80B981F0 90620F1F */ lbu	$v0, 0XF1F($v1)
.L80B981F4:
/* 001801 0x80B981F4 2405129B */ li	$a1, 0X129B
/* 001802 0x80B981F8 30480001 */ andi	$t0, $v0, 0X1
/* 001803 0x80B981FC 11000003 */ beqz	$t0, .L80B9820C
/* 001804 0x80B98200 34490001 */ ori	$t1, $v0, 0X1
/* 001805 0x80B98204 10000049 */ b	.L80B9832C
/* 001806 0x80B98208 2405129C */ li	$a1, 0X129C
.L80B9820C:
/* 001807 0x80B9820C 10000047 */ b	.L80B9832C
/* 001808 0x80B98210 A0690F1F */ sb	$t1, 0XF1F($v1)
/* 001809 0x80B98214 90620F1E */ lbu	$v0, 0XF1E($v1)
.L80B98218:
/* 001810 0x80B98218 24051291 */ li	$a1, 0X1291
/* 001811 0x80B9821C 304A0080 */ andi	$t2, $v0, 0X80
/* 001812 0x80B98220 11400003 */ beqz	$t2, .L80B98230
/* 001813 0x80B98224 344B0080 */ ori	$t3, $v0, 0X80
/* 001814 0x80B98228 10000040 */ b	.L80B9832C
/* 001815 0x80B9822C 24051293 */ li	$a1, 0X1293
.L80B98230:
/* 001816 0x80B98230 1000003E */ b	.L80B9832C
/* 001817 0x80B98234 A06B0F1E */ sb	$t3, 0XF1E($v1)
glabel L80B98238
.L80B98238:
/* 001818 0x80B98238 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 001819 0x80B9823C 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 001820 0x80B98240 906C0020 */ lbu	$t4, 0X20($v1)
/* 001821 0x80B98244 24010002 */ li	$at, 0X2
/* 001822 0x80B98248 8FA4001C */ lw	$a0, 0X1C($sp)
/* 001823 0x80B9824C 5581000B */ bnel	$t4, $at, .L80B9827C
/* 001824 0x80B98250 84E50018 */ lh	$a1, 0X18($a3)
/* 001825 0x80B98254 90620F1F */ lbu	$v0, 0XF1F($v1)
/* 001826 0x80B98258 240512A6 */ li	$a1, 0X12A6
/* 001827 0x80B9825C 304D0004 */ andi	$t5, $v0, 0X4
/* 001828 0x80B98260 11A00003 */ beqz	$t5, .L80B98270
/* 001829 0x80B98264 344E0004 */ ori	$t6, $v0, 0X4
/* 001830 0x80B98268 10000030 */ b	.L80B9832C
/* 001831 0x80B9826C 240512AA */ li	$a1, 0X12AA
.L80B98270:
/* 001832 0x80B98270 1000002E */ b	.L80B9832C
/* 001833 0x80B98274 A06E0F1F */ sb	$t6, 0XF1F($v1)
/* 001834 0x80B98278 84E50018 */ lh	$a1, 0X18($a3)
.L80B9827C:
/* 001835 0x80B9827C AFA70018 */ sw	$a3, 0X18($sp)
/* 001836 0x80B98280 0C02D6EC */ jal	Actor_GetSwitchFlag
/* 001837 0x80B98284 30A5007F */ andi	$a1, $a1, 0X7F
/* 001838 0x80B98288 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 001839 0x80B9828C 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 001840 0x80B98290 10400003 */ beqz	$v0, .L80B982A0
/* 001841 0x80B98294 8FA70018 */ lw	$a3, 0X18($sp)
/* 001842 0x80B98298 10000024 */ b	.L80B9832C
/* 001843 0x80B9829C 240512A0 */ li	$a1, 0X12A0
.L80B982A0:
/* 001844 0x80B982A0 90620F1F */ lbu	$v0, 0XF1F($v1)
/* 001845 0x80B982A4 240512A2 */ li	$a1, 0X12A2
/* 001846 0x80B982A8 304F0002 */ andi	$t7, $v0, 0X2
/* 001847 0x80B982AC 11E00003 */ beqz	$t7, .L80B982BC
/* 001848 0x80B982B0 34580002 */ ori	$t8, $v0, 0X2
/* 001849 0x80B982B4 1000001D */ b	.L80B9832C
/* 001850 0x80B982B8 240512A5 */ li	$a1, 0X12A5
.L80B982BC:
/* 001851 0x80B982BC 1000001B */ b	.L80B9832C
/* 001852 0x80B982C0 A0780F1F */ sb	$t8, 0XF1F($v1)
glabel L80B982C4
.L80B982C4:
/* 001853 0x80B982C4 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 001854 0x80B982C8 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 001855 0x80B982CC 90790F47 */ lbu	$t9, 0XF47($v1)
/* 001856 0x80B982D0 00061080 */ sll	$v0, $a2, 2
/* 001857 0x80B982D4 2442FFD4 */ addiu	$v0, $v0, -0X2C
/* 001858 0x80B982D8 33280001 */ andi	$t0, $t9, 0X1
/* 001859 0x80B982DC 51000003 */ beqzl	$t0, .L80B982EC
/* 001860 0x80B982E0 90690020 */ lbu	$t1, 0X20($v1)
/* 001861 0x80B982E4 24420002 */ addiu	$v0, $v0, 0X2
/* 001862 0x80B982E8 90690020 */ lbu	$t1, 0X20($v1)
.L80B982EC:
/* 001863 0x80B982EC 24010002 */ li	$at, 0X2
/* 001864 0x80B982F0 51210003 */ beql	$t1, $at, .L80B98300
/* 001865 0x80B982F4 24451302 */ addiu	$a1, $v0, 0X1302
/* 001866 0x80B982F8 24420001 */ addiu	$v0, $v0, 0X1
/* 001867 0x80B982FC 24451302 */ addiu	$a1, $v0, 0X1302
.L80B98300:
/* 001868 0x80B98300 1000000A */ b	.L80B9832C
/* 001869 0x80B98304 30A5FFFF */ andi	$a1, $a1, 0XFFFF
glabel L80B98308
.L80B98308:
/* 001870 0x80B98308 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 001871 0x80B9830C 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 001872 0x80B98310 906A0020 */ lbu	$t2, 0X20($v1)
/* 001873 0x80B98314 24010002 */ li	$at, 0X2
/* 001874 0x80B98318 24051295 */ li	$a1, 0X1295
/* 001875 0x80B9831C 15410003 */ bne	$t2, $at, .L80B9832C
/* 001876 0x80B98320 00000000 */ nop
/* 001877 0x80B98324 10000001 */ b	.L80B9832C
/* 001878 0x80B98328 2405129F */ li	$a1, 0X129F
.L80B9832C:
/* 001879 0x80B9832C 8FA4001C */ lw	$a0, 0X1C($sp)
/* 001880 0x80B98330 0C05462C */ jal	func_801518B0
/* 001881 0x80B98334 00E03025 */ move	$a2, $a3
/* 001882 0x80B98338 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001883 0x80B9833C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001884 0x80B98340 03E00008 */ jr	$ra
/* 001885 0x80B98344 00000000 */ nop


.section .late_rodata

glabel jtbl_D_80B99A54
/* 003361 0x80B99A54 */ .word	L80B981B4
/* 003362 0x80B99A58 */ .word	L80B98238
/* 003363 0x80B99A5C */ .word	L80B98308
/* 003364 0x80B99A60 */ .word	L80B98308
/* 003365 0x80B99A64 */ .word	L80B98308
/* 003366 0x80B99A68 */ .word	L80B982C4
/* 003367 0x80B99A6C */ .word	L80B982C4
/* 003368 0x80B99A70 */ .word	L80B982C4
/* 003369 0x80B99A74 */ .word	L80B982C4
/* 003370 0x80B99A78 */ .word	L80B982C4
/* 003371 0x80B99A7C */ .word	L80B982C4
/* 003372 0x80B99A80 */ .word	L80B982C4
