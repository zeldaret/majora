glabel func_80BAC2FC
/* 001803 0x80BAC2FC 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 001804 0x80BAC300 AFB00018 */ sw	$s0, 0X18($sp)
/* 001805 0x80BAC304 00808025 */ move	$s0, $a0
/* 001806 0x80BAC308 AFBF001C */ sw	$ra, 0X1C($sp)
/* 001807 0x80BAC30C 00A03825 */ move	$a3, $a1
/* 001808 0x80BAC310 C6040168 */ lwc1	$f4, 0X168($s0)
/* 001809 0x80BAC314 8CE31CCC */ lw	$v1, 0X1CCC($a3)
/* 001810 0x80BAC318 3C0480BB */ lui	$a0, %hi(D_80BAE6D0)
/* 001811 0x80BAC31C 4600218D */ trunc.w.s	$f6, $f4
/* 001812 0x80BAC320 440F3000 */ mfc1	$t7, $f6
/* 001813 0x80BAC324 00000000 */ nop
/* 001814 0x80BAC328 A7AF0022 */ sh	$t7, 0X22($sp)
/* 001815 0x80BAC32C 8E180450 */ lw	$t8, 0X450($s0)
/* 001816 0x80BAC330 AFA7002C */ sw	$a3, 0X2C($sp)
/* 001817 0x80BAC334 AFA30024 */ sw	$v1, 0X24($sp)
/* 001818 0x80BAC338 0018C880 */ sll	$t9, $t8, 2
/* 001819 0x80BAC33C 0338C823 */ subu	$t9, $t9, $t8
/* 001820 0x80BAC340 0019C8C0 */ sll	$t9, $t9, 3
/* 001821 0x80BAC344 00992021 */ addu	$a0, $a0, $t9
/* 001822 0x80BAC348 0C04D1D2 */ jal	SkelAnime_GetFrameCount
/* 001823 0x80BAC34C 8C84E6D0 */ lw	$a0, %lo(D_80BAE6D0)($a0)
/* 001824 0x80BAC350 92090428 */ lbu	$t1, 0X428($s0)
/* 001825 0x80BAC354 3C0580BB */ lui	$a1, %hi(D_80BAE6D0)
/* 001826 0x80BAC358 24A5E6D0 */ addiu	$a1, $a1, %lo(D_80BAE6D0)
/* 001827 0x80BAC35C 252AFFFF */ addiu	$t2, $t1, -0X1
/* 001828 0x80BAC360 2D41000F */ sltiu	$at, $t2, 0XF
/* 001829 0x80BAC364 8FA30024 */ lw	$v1, 0X24($sp)
/* 001830 0x80BAC368 102000D5 */ beqz	$at, .L80BAC6C0
/* 001831 0x80BAC36C 8FA7002C */ lw	$a3, 0X2C($sp)
/* 001832 0x80BAC370 000A5080 */ sll	$t2, $t2, 2
/* 001833 0x80BAC374 3C0180BB */ lui	$at, %hi(jtbl_D_80BAEA50)
/* 001834 0x80BAC378 002A0821 */ addu	$at, $at, $t2
/* 001835 0x80BAC37C 8C2AEA50 */ lw	$t2, %lo(jtbl_D_80BAEA50)($at)
/* 001836 0x80BAC380 01400008 */ jr	$t2
/* 001837 0x80BAC384 00000000 */ nop
glabel L80BAC388
.L80BAC388:
/* 001838 0x80BAC388 960B01E4 */ lhu	$t3, 0X1E4($s0)
/* 001839 0x80BAC38C 02002025 */ move	$a0, $s0
/* 001840 0x80BAC390 00E02825 */ move	$a1, $a3
/* 001841 0x80BAC394 356C0080 */ ori	$t4, $t3, 0X80
/* 001842 0x80BAC398 0C2EAFF5 */ jal	func_80BABFD4
/* 001843 0x80BAC39C A60C01E4 */ sh	$t4, 0X1E4($s0)
/* 001844 0x80BAC3A0 100000C8 */ b	.L80BAC6C4
/* 001845 0x80BAC3A4 260400BE */ addiu	$a0, $s0, 0XBE
glabel L80BAC3A8
.L80BAC3A8:
/* 001846 0x80BAC3A8 8E0D0450 */ lw	$t5, 0X450($s0)
/* 001847 0x80BAC3AC 24010001 */ li	$at, 0X1
/* 001848 0x80BAC3B0 87AE0022 */ lh	$t6, 0X22($sp)
/* 001849 0x80BAC3B4 15A1000A */ bne	$t5, $at, .L80BAC3E0
/* 001850 0x80BAC3B8 00000000 */ nop
/* 001851 0x80BAC3BC 15C20008 */ bne	$t6, $v0, .L80BAC3E0
/* 001852 0x80BAC3C0 24060002 */ li	$a2, 0X2
/* 001853 0x80BAC3C4 AE060450 */ sw	$a2, 0X450($s0)
/* 001854 0x80BAC3C8 AFA7002C */ sw	$a3, 0X2C($sp)
/* 001855 0x80BAC3CC AFA30024 */ sw	$v1, 0X24($sp)
/* 001856 0x80BAC3D0 0C02F717 */ jal	func_800BDC5C
/* 001857 0x80BAC3D4 26040150 */ addiu	$a0, $s0, 0X150
/* 001858 0x80BAC3D8 8FA30024 */ lw	$v1, 0X24($sp)
/* 001859 0x80BAC3DC 8FA7002C */ lw	$a3, 0X2C($sp)
.L80BAC3E0:
/* 001860 0x80BAC3E0 3C0F801F */ lui	$t7, %hi(gSaveContext + 0xF4B)
/* 001861 0x80BAC3E4 91EF05BB */ lbu	$t7, %lo(gSaveContext + 0xF4B)($t7)
/* 001862 0x80BAC3E8 31F80004 */ andi	$t8, $t7, 0X4
/* 001863 0x80BAC3EC 5700002A */ bnezl	$t8, .L80BAC498
/* 001864 0x80BAC3F0 02002025 */ move	$a0, $s0
/* 001865 0x80BAC3F4 961901E4 */ lhu	$t9, 0X1E4($s0)
/* 001866 0x80BAC3F8 33291000 */ andi	$t1, $t9, 0X1000
/* 001867 0x80BAC3FC 55200026 */ bnezl	$t1, .L80BAC498
/* 001868 0x80BAC400 02002025 */ move	$a0, $s0
/* 001869 0x80BAC404 86040456 */ lh	$a0, 0X456($s0)
/* 001870 0x80BAC408 AFA7002C */ sw	$a3, 0X2C($sp)
/* 001871 0x80BAC40C 0C03C6F9 */ jal	ActorCutscene_GetCanPlayNext
/* 001872 0x80BAC410 AFA30024 */ sw	$v1, 0X24($sp)
/* 001873 0x80BAC414 8FA30024 */ lw	$v1, 0X24($sp)
/* 001874 0x80BAC418 1040001A */ beqz	$v0, .L80BAC484
/* 001875 0x80BAC41C 8FA7002C */ lw	$a3, 0X2C($sp)
/* 001876 0x80BAC420 86040456 */ lh	$a0, 0X456($s0)
/* 001877 0x80BAC424 AFA7002C */ sw	$a3, 0X2C($sp)
/* 001878 0x80BAC428 AFA30024 */ sw	$v1, 0X24($sp)
/* 001879 0x80BAC42C 0C03C761 */ jal	ActorCutscene_Start
/* 001880 0x80BAC430 02002825 */ move	$a1, $s0
/* 001881 0x80BAC434 8FA30024 */ lw	$v1, 0X24($sp)
/* 001882 0x80BAC438 3C041000 */ lui	$a0, 0x1000
/* 001883 0x80BAC43C 8FA7002C */ lw	$a3, 0X2C($sp)
/* 001884 0x80BAC440 8C6A0A6C */ lw	$t2, 0XA6C($v1)
/* 001885 0x80BAC444 000A58C0 */ sll	$t3, $t2, 3
/* 001886 0x80BAC448 05620008 */ bltzl	$t3, .L80BAC46C
/* 001887 0x80BAC44C 961801E4 */ lhu	$t8, 0X1E4($s0)
/* 001888 0x80BAC450 960C01E6 */ lhu	$t4, 0X1E6($s0)
/* 001889 0x80BAC454 358D0010 */ ori	$t5, $t4, 0X10
/* 001890 0x80BAC458 A60D01E6 */ sh	$t5, 0X1E6($s0)
/* 001891 0x80BAC45C 8C6E0A6C */ lw	$t6, 0XA6C($v1)
/* 001892 0x80BAC460 01C47825 */ or	$t7, $t6, $a0
/* 001893 0x80BAC464 AC6F0A6C */ sw	$t7, 0XA6C($v1)
/* 001894 0x80BAC468 961801E4 */ lhu	$t8, 0X1E4($s0)
.L80BAC46C:
/* 001895 0x80BAC46C 960901E6 */ lhu	$t1, 0X1E6($s0)
/* 001896 0x80BAC470 37191000 */ ori	$t9, $t8, 0X1000
/* 001897 0x80BAC474 352A0002 */ ori	$t2, $t1, 0X2
/* 001898 0x80BAC478 A61901E4 */ sh	$t9, 0X1E4($s0)
/* 001899 0x80BAC47C 10000005 */ b	.L80BAC494
/* 001900 0x80BAC480 A60A01E6 */ sh	$t2, 0X1E6($s0)
.L80BAC484:
/* 001901 0x80BAC484 86040456 */ lh	$a0, 0X456($s0)
/* 001902 0x80BAC488 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 001903 0x80BAC48C AFA7002C */ sw	$a3, 0X2C($sp)
/* 001904 0x80BAC490 8FA7002C */ lw	$a3, 0X2C($sp)
.L80BAC494:
/* 001905 0x80BAC494 02002025 */ move	$a0, $s0
.L80BAC498:
/* 001906 0x80BAC498 0C2EAFF5 */ jal	func_80BABFD4
/* 001907 0x80BAC49C 00E02825 */ move	$a1, $a3
/* 001908 0x80BAC4A0 10000088 */ b	.L80BAC6C4
/* 001909 0x80BAC4A4 260400BE */ addiu	$a0, $s0, 0XBE
glabel L80BAC4A8
.L80BAC4A8:
/* 001910 0x80BAC4A8 960B01E4 */ lhu	$t3, 0X1E4($s0)
/* 001911 0x80BAC4AC 02002025 */ move	$a0, $s0
/* 001912 0x80BAC4B0 00E02825 */ move	$a1, $a3
/* 001913 0x80BAC4B4 356C0080 */ ori	$t4, $t3, 0X80
/* 001914 0x80BAC4B8 0C2EB088 */ jal	func_80BAC220
/* 001915 0x80BAC4BC A60C01E4 */ sh	$t4, 0X1E4($s0)
/* 001916 0x80BAC4C0 10000080 */ b	.L80BAC6C4
/* 001917 0x80BAC4C4 260400BE */ addiu	$a0, $s0, 0XBE
glabel L80BAC4C8
.L80BAC4C8:
/* 001918 0x80BAC4C8 960D01E4 */ lhu	$t5, 0X1E4($s0)
/* 001919 0x80BAC4CC 02002025 */ move	$a0, $s0
/* 001920 0x80BAC4D0 00E02825 */ move	$a1, $a3
/* 001921 0x80BAC4D4 35AE0080 */ ori	$t6, $t5, 0X80
/* 001922 0x80BAC4D8 0C2EB088 */ jal	func_80BAC220
/* 001923 0x80BAC4DC A60E01E4 */ sh	$t6, 0X1E4($s0)
/* 001924 0x80BAC4E0 10000078 */ b	.L80BAC6C4
/* 001925 0x80BAC4E4 260400BE */ addiu	$a0, $s0, 0XBE
glabel L80BAC4E8
.L80BAC4E8:
/* 001926 0x80BAC4E8 960F01E4 */ lhu	$t7, 0X1E4($s0)
/* 001927 0x80BAC4EC 8E020144 */ lw	$v0, 0X144($s0)
/* 001928 0x80BAC4F0 24080002 */ li	$t0, 0X2
/* 001929 0x80BAC4F4 35F90080 */ ori	$t9, $t7, 0X80
/* 001930 0x80BAC4F8 A61901E4 */ sh	$t9, 0X1E4($s0)
/* 001931 0x80BAC4FC 37290020 */ ori	$t1, $t9, 0X20
/* 001932 0x80BAC500 A60901E4 */ sh	$t1, 0X1E4($s0)
/* 001933 0x80BAC504 944A044E */ lhu	$t2, 0X44E($v0)
/* 001934 0x80BAC508 01003025 */ move	$a2, $t0
/* 001935 0x80BAC50C 26040150 */ addiu	$a0, $s0, 0X150
/* 001936 0x80BAC510 314BFF7F */ andi	$t3, $t2, 0XFF7F
/* 001937 0x80BAC514 A44B044E */ sh	$t3, 0X44E($v0)
/* 001938 0x80BAC518 8E0C0450 */ lw	$t4, 0X450($s0)
/* 001939 0x80BAC51C 510C0006 */ beql	$t0, $t4, .L80BAC538
/* 001940 0x80BAC520 02002025 */ move	$a0, $s0
/* 001941 0x80BAC524 AE080450 */ sw	$t0, 0X450($s0)
/* 001942 0x80BAC528 0C02F717 */ jal	func_800BDC5C
/* 001943 0x80BAC52C AFA7002C */ sw	$a3, 0X2C($sp)
/* 001944 0x80BAC530 8FA7002C */ lw	$a3, 0X2C($sp)
/* 001945 0x80BAC534 02002025 */ move	$a0, $s0
.L80BAC538:
/* 001946 0x80BAC538 0C2EB088 */ jal	func_80BAC220
/* 001947 0x80BAC53C 00E02825 */ move	$a1, $a3
/* 001948 0x80BAC540 10000060 */ b	.L80BAC6C4
/* 001949 0x80BAC544 260400BE */ addiu	$a0, $s0, 0XBE
glabel L80BAC548
.L80BAC548:
/* 001950 0x80BAC548 960D01E4 */ lhu	$t5, 0X1E4($s0)
/* 001951 0x80BAC54C 02002025 */ move	$a0, $s0
/* 001952 0x80BAC550 00E02825 */ move	$a1, $a3
/* 001953 0x80BAC554 35AF0020 */ ori	$t7, $t5, 0X20
/* 001954 0x80BAC558 A60F01E4 */ sh	$t7, 0X1E4($s0)
/* 001955 0x80BAC55C 35F80080 */ ori	$t8, $t7, 0X80
/* 001956 0x80BAC560 0C2EB088 */ jal	func_80BAC220
/* 001957 0x80BAC564 A61801E4 */ sh	$t8, 0X1E4($s0)
/* 001958 0x80BAC568 10000056 */ b	.L80BAC6C4
/* 001959 0x80BAC56C 260400BE */ addiu	$a0, $s0, 0XBE
glabel L80BAC570
.L80BAC570:
/* 001960 0x80BAC570 961901E4 */ lhu	$t9, 0X1E4($s0)
/* 001961 0x80BAC574 02002025 */ move	$a0, $s0
/* 001962 0x80BAC578 00E02825 */ move	$a1, $a3
/* 001963 0x80BAC57C 372A0020 */ ori	$t2, $t9, 0X20
/* 001964 0x80BAC580 A60A01E4 */ sh	$t2, 0X1E4($s0)
/* 001965 0x80BAC584 354B0080 */ ori	$t3, $t2, 0X80
/* 001966 0x80BAC588 0C2EAFF5 */ jal	func_80BABFD4
/* 001967 0x80BAC58C A60B01E4 */ sh	$t3, 0X1E4($s0)
/* 001968 0x80BAC590 1000004C */ b	.L80BAC6C4
/* 001969 0x80BAC594 260400BE */ addiu	$a0, $s0, 0XBE
glabel L80BAC598
.L80BAC598:
/* 001970 0x80BAC598 0C02D9C3 */ jal	Actor_MarkForDeath
/* 001971 0x80BAC59C 02002025 */ move	$a0, $s0
/* 001972 0x80BAC5A0 10000048 */ b	.L80BAC6C4
/* 001973 0x80BAC5A4 260400BE */ addiu	$a0, $s0, 0XBE
glabel L80BAC5A8
.L80BAC5A8:
/* 001974 0x80BAC5A8 3C0C801F */ lui	$t4, %hi(gSaveContext + 0xF49)
/* 001975 0x80BAC5AC 918C05B9 */ lbu	$t4, %lo(gSaveContext + 0xF49)($t4)
/* 001976 0x80BAC5B0 3C01C180 */ lui	$at, 0xC180
/* 001977 0x80BAC5B4 318D0004 */ andi	$t5, $t4, 0X4
/* 001978 0x80BAC5B8 55A00042 */ bnezl	$t5, .L80BAC6C4
/* 001979 0x80BAC5BC 260400BE */ addiu	$a0, $s0, 0XBE
/* 001980 0x80BAC5C0 44810000 */ mtc1	$at, $f0
/* 001981 0x80BAC5C4 960E01E4 */ lhu	$t6, 0X1E4($s0)
/* 001982 0x80BAC5C8 3C014140 */ lui	$at, 0x4140
/* 001983 0x80BAC5CC 44814000 */ mtc1	$at, $f8
/* 001984 0x80BAC5D0 8E020144 */ lw	$v0, 0X144($s0)
/* 001985 0x80BAC5D4 35CF0080 */ ori	$t7, $t6, 0X80
/* 001986 0x80BAC5D8 A60F01E4 */ sh	$t7, 0X1E4($s0)
/* 001987 0x80BAC5DC E6000024 */ swc1	$f0, 0X24($s0)
/* 001988 0x80BAC5E0 E600002C */ swc1	$f0, 0X2C($s0)
/* 001989 0x80BAC5E4 E6080028 */ swc1	$f8, 0X28($s0)
/* 001990 0x80BAC5E8 9458044E */ lhu	$t8, 0X44E($v0)
/* 001991 0x80BAC5EC 3C0980BB */ lui	$t1, %hi(func_80BADA08)
/* 001992 0x80BAC5F0 2529DA08 */ addiu	$t1, $t1, %lo(func_80BADA08)
/* 001993 0x80BAC5F4 37190080 */ ori	$t9, $t8, 0X80
/* 001994 0x80BAC5F8 A459044E */ sh	$t9, 0X44E($v0)
/* 001995 0x80BAC5FC 10000030 */ b	.L80BAC6C0
/* 001996 0x80BAC600 AE090148 */ sw	$t1, 0X148($s0)
glabel L80BAC604
.L80BAC604:
/* 001997 0x80BAC604 3C0A801F */ lui	$t2, %hi(gSaveContext + 0xF19)
/* 001998 0x80BAC608 914A0589 */ lbu	$t2, %lo(gSaveContext + 0xF19)($t2)
/* 001999 0x80BAC60C 314B0008 */ andi	$t3, $t2, 0X8
/* 002000 0x80BAC610 5560002C */ bnezl	$t3, .L80BAC6C4
/* 002001 0x80BAC614 260400BE */ addiu	$a0, $s0, 0XBE
/* 002002 0x80BAC618 8E020450 */ lw	$v0, 0X450($s0)
/* 002003 0x80BAC61C 24080002 */ li	$t0, 0X2
/* 002004 0x80BAC620 24010001 */ li	$at, 0X1
/* 002005 0x80BAC624 11020003 */ beq	$t0, $v0, .L80BAC634
/* 002006 0x80BAC628 240C0005 */ li	$t4, 0X5
/* 002007 0x80BAC62C 5441000A */ bnel	$v0, $at, .L80BAC658
/* 002008 0x80BAC630 960D01E4 */ lhu	$t5, 0X1E4($s0)
.L80BAC634:
/* 002009 0x80BAC634 AE0C0450 */ sw	$t4, 0X450($s0)
/* 002010 0x80BAC638 AFA7002C */ sw	$a3, 0X2C($sp)
/* 002011 0x80BAC63C AFA30024 */ sw	$v1, 0X24($sp)
/* 002012 0x80BAC640 26040150 */ addiu	$a0, $s0, 0X150
/* 002013 0x80BAC644 0C02F717 */ jal	func_800BDC5C
/* 002014 0x80BAC648 24060005 */ li	$a2, 0X5
/* 002015 0x80BAC64C 8FA30024 */ lw	$v1, 0X24($sp)
/* 002016 0x80BAC650 8FA7002C */ lw	$a3, 0X2C($sp)
/* 002017 0x80BAC654 960D01E4 */ lhu	$t5, 0X1E4($s0)
.L80BAC658:
/* 002018 0x80BAC658 960201E6 */ lhu	$v0, 0X1E6($s0)
/* 002019 0x80BAC65C 02003025 */ move	$a2, $s0
/* 002020 0x80BAC660 35AE0010 */ ori	$t6, $t5, 0X10
/* 002021 0x80BAC664 304F0002 */ andi	$t7, $v0, 0X2
/* 002022 0x80BAC668 11E00003 */ beqz	$t7, .L80BAC678
/* 002023 0x80BAC66C A60E01E4 */ sh	$t6, 0X1E4($s0)
/* 002024 0x80BAC670 3058FFFD */ andi	$t8, $v0, 0XFFFD
/* 002025 0x80BAC674 A61801E6 */ sh	$t8, 0X1E6($s0)
.L80BAC678:
/* 002026 0x80BAC678 8C790A6C */ lw	$t9, 0XA6C($v1)
/* 002027 0x80BAC67C 240E2A30 */ li	$t6, 0X2A30
/* 002028 0x80BAC680 3C041000 */ lui	$a0, 0x1000
/* 002029 0x80BAC684 001948C0 */ sll	$t1, $t9, 3
/* 002030 0x80BAC688 05200007 */ bltz	$t1, .L80BAC6A8
/* 002031 0x80BAC68C 31C5FFFF */ andi	$a1, $t6, 0XFFFF
/* 002032 0x80BAC690 960A01E6 */ lhu	$t2, 0X1E6($s0)
/* 002033 0x80BAC694 354B0010 */ ori	$t3, $t2, 0X10
/* 002034 0x80BAC698 A60B01E6 */ sh	$t3, 0X1E6($s0)
/* 002035 0x80BAC69C 8C6C0A6C */ lw	$t4, 0XA6C($v1)
/* 002036 0x80BAC6A0 01846825 */ or	$t5, $t4, $a0
/* 002037 0x80BAC6A4 AC6D0A6C */ sw	$t5, 0XA6C($v1)
.L80BAC6A8:
/* 002038 0x80BAC6A8 A60E01E8 */ sh	$t6, 0X1E8($s0)
/* 002039 0x80BAC6AC 0C05462C */ jal	func_801518B0
/* 002040 0x80BAC6B0 00E02025 */ move	$a0, $a3
/* 002041 0x80BAC6B4 3C0F80BB */ lui	$t7, %hi(func_80BAD2B4)
/* 002042 0x80BAC6B8 25EFD2B4 */ addiu	$t7, $t7, %lo(func_80BAD2B4)
/* 002043 0x80BAC6BC AE0F0148 */ sw	$t7, 0X148($s0)
glabel L80BAC6C0
.L80BAC6C0:
/* 002044 0x80BAC6C0 260400BE */ addiu	$a0, $s0, 0XBE
.L80BAC6C4:
/* 002045 0x80BAC6C4 86050032 */ lh	$a1, 0X32($s0)
/* 002046 0x80BAC6C8 24060004 */ li	$a2, 0X4
/* 002047 0x80BAC6CC 0C03FFF6 */ jal	Math_SmoothScaleMaxS
/* 002048 0x80BAC6D0 24071554 */ li	$a3, 0X1554
/* 002049 0x80BAC6D4 8FBF001C */ lw	$ra, 0X1C($sp)
/* 002050 0x80BAC6D8 8FB00018 */ lw	$s0, 0X18($sp)
/* 002051 0x80BAC6DC 27BD0028 */ addiu	$sp, $sp, 0X28
/* 002052 0x80BAC6E0 03E00008 */ jr	$ra
/* 002053 0x80BAC6E4 00000000 */ nop


.section .late_rodata

glabel jtbl_D_80BAEA50
/* 004320 0x80BAEA50 */ .word	L80BAC598
/* 004321 0x80BAEA54 */ .word	L80BAC5A8
/* 004322 0x80BAEA58 */ .word	L80BAC6C0
/* 004323 0x80BAEA5C */ .word	L80BAC604
/* 004324 0x80BAEA60 */ .word	L80BAC6C0
/* 004325 0x80BAEA64 */ .word	L80BAC4A8
/* 004326 0x80BAEA68 */ .word	L80BAC548
/* 004327 0x80BAEA6C */ .word	L80BAC4A8
/* 004328 0x80BAEA70 */ .word	L80BAC4E8
/* 004329 0x80BAEA74 */ .word	L80BAC4C8
/* 004330 0x80BAEA78 */ .word	L80BAC4E8
/* 004331 0x80BAEA7C */ .word	L80BAC388
/* 004332 0x80BAEA80 */ .word	L80BAC388
/* 004333 0x80BAEA84 */ .word	L80BAC570
/* 004334 0x80BAEA88 */ .word	L80BAC3A8
