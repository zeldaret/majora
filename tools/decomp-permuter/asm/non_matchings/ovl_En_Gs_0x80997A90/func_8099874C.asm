glabel func_8099874C
/* 000815 0x8099874C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000816 0x80998750 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000817 0x80998754 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000818 0x80998758 00803825 */ move	$a3, $a0
/* 000819 0x8099875C 90EE019C */ lbu	$t6, 0X19C($a3)
/* 000820 0x80998760 00003025 */ move	$a2, $zero
/* 000821 0x80998764 2DC10006 */ sltiu	$at, $t6, 0X6
/* 000822 0x80998768 10200028 */ beqz	$at, .L8099880C
/* 000823 0x8099876C 000E7080 */ sll	$t6, $t6, 2
/* 000824 0x80998770 3C01809A */ lui	$at, %hi(jtbl_D_8099A4C0)
/* 000825 0x80998774 002E0821 */ addu	$at, $at, $t6
/* 000826 0x80998778 8C2EA4C0 */ lw	$t6, %lo(jtbl_D_8099A4C0)($at)
/* 000827 0x8099877C 01C00008 */ jr	$t6
/* 000828 0x80998780 00000000 */ nop
glabel L80998784
.L80998784:
/* 000829 0x80998784 00E02025 */ move	$a0, $a3
/* 000830 0x80998788 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000831 0x8099878C 0C266292 */ jal	func_80998A48
/* 000832 0x80998790 AFA70018 */ sw	$a3, 0X18($sp)
/* 000833 0x80998794 8FA70018 */ lw	$a3, 0X18($sp)
/* 000834 0x80998798 1000001C */ b	.L8099880C
/* 000835 0x8099879C 00403025 */ move	$a2, $v0
glabel L809987A0
.L809987A0:
/* 000836 0x809987A0 00E02025 */ move	$a0, $a3
/* 000837 0x809987A4 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000838 0x809987A8 0C2662EF */ jal	func_80998BBC
/* 000839 0x809987AC AFA70018 */ sw	$a3, 0X18($sp)
/* 000840 0x809987B0 8FA70018 */ lw	$a3, 0X18($sp)
/* 000841 0x809987B4 10000015 */ b	.L8099880C
/* 000842 0x809987B8 00403025 */ move	$a2, $v0
glabel L809987BC
.L809987BC:
/* 000843 0x809987BC 00E02025 */ move	$a0, $a3
/* 000844 0x809987C0 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000845 0x809987C4 0C266351 */ jal	func_80998D44
/* 000846 0x809987C8 AFA70018 */ sw	$a3, 0X18($sp)
/* 000847 0x809987CC 8FA70018 */ lw	$a3, 0X18($sp)
/* 000848 0x809987D0 1000000E */ b	.L8099880C
/* 000849 0x809987D4 00403025 */ move	$a2, $v0
glabel L809987D8
.L809987D8:
/* 000850 0x809987D8 00E02025 */ move	$a0, $a3
/* 000851 0x809987DC 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000852 0x809987E0 0C2663E7 */ jal	func_80998F9C
/* 000853 0x809987E4 AFA70018 */ sw	$a3, 0X18($sp)
/* 000854 0x809987E8 8FA70018 */ lw	$a3, 0X18($sp)
/* 000855 0x809987EC 10000007 */ b	.L8099880C
/* 000856 0x809987F0 00403025 */ move	$a2, $v0
glabel L809987F4
.L809987F4:
/* 000857 0x809987F4 00E02025 */ move	$a0, $a3
/* 000858 0x809987F8 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000859 0x809987FC 0C266569 */ jal	func_809995A4
/* 000860 0x80998800 AFA70018 */ sw	$a3, 0X18($sp)
/* 000861 0x80998804 8FA70018 */ lw	$a3, 0X18($sp)
/* 000862 0x80998808 00403025 */ move	$a2, $v0
.L8099880C:
/* 000863 0x8099880C 54C00066 */ bnezl	$a2, .L809989A8
/* 000864 0x80998810 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000865 0x80998814 80EF019C */ lb	$t7, 0X19C($a3)
/* 000866 0x80998818 24010005 */ li	$at, 0X5
/* 000867 0x8099881C A4E00216 */ sh	$zero, 0X216($a3)
/* 000868 0x80998820 15E1005E */ bne	$t7, $at, .L8099899C
/* 000869 0x80998824 00E02025 */ move	$a0, $a3
/* 000870 0x80998828 80F80194 */ lb	$t8, 0X194($a3)
/* 000871 0x8099882C 1300005B */ beqz	$t8, .L8099899C
/* 000872 0x80998830 00000000 */ nop
/* 000873 0x80998834 84E40212 */ lh	$a0, 0X212($a3)
/* 000874 0x80998838 0C03C7EF */ jal	ActorCutscene_Stop
/* 000875 0x8099883C AFA70018 */ sw	$a3, 0X18($sp)
/* 000876 0x80998840 8FA70018 */ lw	$a3, 0X18($sp)
/* 000877 0x80998844 3C05801F */ lui	$a1, %hi(gSaveContext + 0xEC4)
/* 000878 0x80998848 24060001 */ li	$a2, 0X1
/* 000879 0x8099884C 80E80194 */ lb	$t0, 0X194($a3)
/* 000880 0x80998850 8CA50534 */ lw	$a1, %lo(gSaveContext + 0xEC4)($a1)
/* 000881 0x80998854 00001825 */ move	$v1, $zero
/* 000882 0x80998858 2402000C */ li	$v0, 0XC
/* 000883 0x8099885C 01002025 */ move	$a0, $t0
/* 000884 0x80998860 0065C806 */ srlv	$t9, $a1, $v1
.L80998864:
/* 000885 0x80998864 332A0007 */ andi	$t2, $t9, 0X7
/* 000886 0x80998868 108A0002 */ beq	$a0, $t2, .L80998874
/* 000887 0x8099886C 24630003 */ addiu	$v1, $v1, 0X3
/* 000888 0x80998870 00003025 */ move	$a2, $zero
.L80998874:
/* 000889 0x80998874 5462FFFB */ bnel	$v1, $v0, .L80998864
/* 000890 0x80998878 0065C806 */ srlv	$t9, $a1, $v1
/* 000891 0x8099887C 10C00043 */ beqz	$a2, .L8099898C
/* 000892 0x80998880 00E02025 */ move	$a0, $a3
/* 000893 0x80998884 240BFFFF */ li	$t3, -0X1
/* 000894 0x80998888 24010001 */ li	$at, 0X1
/* 000895 0x8099888C 1101000A */ beq	$t0, $at, .L809988B8
/* 000896 0x80998890 ACEB020C */ sw	$t3, 0X20C($a3)
/* 000897 0x80998894 24010002 */ li	$at, 0X2
/* 000898 0x80998898 1101001E */ beq	$t0, $at, .L80998914
/* 000899 0x8099889C 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 000900 0x809988A0 24010003 */ li	$at, 0X3
/* 000901 0x809988A4 11010010 */ beq	$t0, $at, .L809988E8
/* 000902 0x809988A8 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 000903 0x809988AC 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 000904 0x809988B0 10000022 */ b	.L8099893C
/* 000905 0x809988B4 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
.L809988B8:
/* 000906 0x809988B8 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 000907 0x809988BC 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 000908 0x809988C0 904C0F45 */ lbu	$t4, 0XF45($v0)
/* 000909 0x809988C4 240E0006 */ li	$t6, 0X6
/* 000910 0x809988C8 318D0008 */ andi	$t5, $t4, 0X8
/* 000911 0x809988CC 55A0001C */ bnezl	$t5, .L80998940
/* 000912 0x809988D0 90430F52 */ lbu	$v1, 0XF52($v0)
/* 000913 0x809988D4 ACEE020C */ sw	$t6, 0X20C($a3)
/* 000914 0x809988D8 904F0F45 */ lbu	$t7, 0XF45($v0)
/* 000915 0x809988DC 35F80008 */ ori	$t8, $t7, 0X8
/* 000916 0x809988E0 10000016 */ b	.L8099893C
/* 000917 0x809988E4 A0580F45 */ sb	$t8, 0XF45($v0)
.L809988E8:
/* 000918 0x809988E8 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 000919 0x809988EC 90590F45 */ lbu	$t9, 0XF45($v0)
/* 000920 0x809988F0 240B0006 */ li	$t3, 0X6
/* 000921 0x809988F4 332A0010 */ andi	$t2, $t9, 0X10
/* 000922 0x809988F8 55400011 */ bnezl	$t2, .L80998940
/* 000923 0x809988FC 90430F52 */ lbu	$v1, 0XF52($v0)
/* 000924 0x80998900 ACEB020C */ sw	$t3, 0X20C($a3)
/* 000925 0x80998904 904C0F45 */ lbu	$t4, 0XF45($v0)
/* 000926 0x80998908 358D0010 */ ori	$t5, $t4, 0X10
/* 000927 0x8099890C 1000000B */ b	.L8099893C
/* 000928 0x80998910 A04D0F45 */ sb	$t5, 0XF45($v0)
.L80998914:
/* 000929 0x80998914 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 000930 0x80998918 904E0F45 */ lbu	$t6, 0XF45($v0)
/* 000931 0x8099891C 24180006 */ li	$t8, 0X6
/* 000932 0x80998920 31CF0020 */ andi	$t7, $t6, 0X20
/* 000933 0x80998924 55E00006 */ bnezl	$t7, .L80998940
/* 000934 0x80998928 90430F52 */ lbu	$v1, 0XF52($v0)
/* 000935 0x8099892C ACF8020C */ sw	$t8, 0X20C($a3)
/* 000936 0x80998930 90590F45 */ lbu	$t9, 0XF45($v0)
/* 000937 0x80998934 372A0020 */ ori	$t2, $t9, 0X20
/* 000938 0x80998938 A04A0F45 */ sb	$t2, 0XF45($v0)
.L8099893C:
/* 000939 0x8099893C 90430F52 */ lbu	$v1, 0XF52($v0)
.L80998940:
/* 000940 0x80998940 240D000C */ li	$t5, 0XC
/* 000941 0x80998944 00E02025 */ move	$a0, $a3
/* 000942 0x80998948 306B0010 */ andi	$t3, $v1, 0X10
/* 000943 0x8099894C 15600003 */ bnez	$t3, .L8099895C
/* 000944 0x80998950 346C0010 */ ori	$t4, $v1, 0X10
/* 000945 0x80998954 A04C0F52 */ sb	$t4, 0XF52($v0)
/* 000946 0x80998958 ACED020C */ sw	$t5, 0X20C($a3)
.L8099895C:
/* 000947 0x8099895C 8CEE020C */ lw	$t6, 0X20C($a3)
/* 000948 0x80998960 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000949 0x80998964 19C00005 */ blez	$t6, .L8099897C
/* 000950 0x80998968 00000000 */ nop
/* 000951 0x8099896C 0C26626D */ jal	func_809989B4
/* 000952 0x80998970 00E02025 */ move	$a0, $a3
/* 000953 0x80998974 1000000C */ b	.L809989A8
/* 000954 0x80998978 8FBF0014 */ lw	$ra, 0X14($sp)
.L8099897C:
/* 000955 0x8099897C 0C265F45 */ jal	func_80997D14
/* 000956 0x80998980 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000957 0x80998984 10000008 */ b	.L809989A8
/* 000958 0x80998988 8FBF0014 */ lw	$ra, 0X14($sp)
.L8099898C:
/* 000959 0x8099898C 0C265F45 */ jal	func_80997D14
/* 000960 0x80998990 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000961 0x80998994 10000004 */ b	.L809989A8
/* 000962 0x80998998 8FBF0014 */ lw	$ra, 0X14($sp)
.L8099899C:
/* 000963 0x8099899C 0C265F45 */ jal	func_80997D14
/* 000964 0x809989A0 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000965 0x809989A4 8FBF0014 */ lw	$ra, 0X14($sp)
.L809989A8:
/* 000966 0x809989A8 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000967 0x809989AC 03E00008 */ jr	$ra
/* 000968 0x809989B0 00000000 */ nop


.section .late_rodata

glabel jtbl_D_8099A4C0
/* 002700 0x8099A4C0 */ .word	L80998784
/* 002701 0x8099A4C4 */ .word	L809987A0
/* 002702 0x8099A4C8 */ .word	L809987BC
/* 002703 0x8099A4CC */ .word	L809987D8
/* 002704 0x8099A4D0 */ .word	L809987F4
/* 002705 0x8099A4D4 */ .word	L809987D8
