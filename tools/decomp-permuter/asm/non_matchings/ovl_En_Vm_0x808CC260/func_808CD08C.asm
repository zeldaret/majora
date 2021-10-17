glabel func_808CD08C
/* 000907 0x808CD08C 27BDFF90 */ addiu	$sp, $sp, -0X70
/* 000908 0x808CD090 AFB10034 */ sw	$s1, 0X34($sp)
/* 000909 0x808CD094 AFB00030 */ sw	$s0, 0X30($sp)
/* 000910 0x808CD098 8FB00080 */ lw	$s0, 0X80($sp)
/* 000911 0x808CD09C 00A08825 */ move	$s1, $a1
/* 000912 0x808CD0A0 AFBF003C */ sw	$ra, 0X3C($sp)
/* 000913 0x808CD0A4 AFB20038 */ sw	$s2, 0X38($sp)
/* 000914 0x808CD0A8 AFA40070 */ sw	$a0, 0X70($sp)
/* 000915 0x808CD0AC AFA60078 */ sw	$a2, 0X78($sp)
/* 000916 0x808CD0B0 AFA7007C */ sw	$a3, 0X7C($sp)
/* 000917 0x808CD0B4 02202025 */ move	$a0, $s1
/* 000918 0x808CD0B8 0C039FF7 */ jal	func_800E7FDC
/* 000919 0x808CD0BC 26050240 */ addiu	$a1, $s0, 0X240
/* 000920 0x808CD0C0 24010002 */ li	$at, 0X2
/* 000921 0x808CD0C4 16210056 */ bne	$s1, $at, .L808CD220
/* 000922 0x808CD0C8 2611003C */ addiu	$s1, $s0, 0X3C
/* 000923 0x808CD0CC AFA0004C */ sw	$zero, 0X4C($sp)
/* 000924 0x808CD0D0 0C0606D4 */ jal	SysMatrix_GetStateTranslation
/* 000925 0x808CD0D4 02202025 */ move	$a0, $s1
/* 000926 0x808CD0D8 3C0144C8 */ lui	$at, 0x44C8
/* 000927 0x808CD0DC 44816000 */ mtc1	$at, $f12
/* 000928 0x808CD0E0 0C060704 */ jal	SysMatrix_GetStateTranslationAndScaledZ
/* 000929 0x808CD0E4 26050228 */ addiu	$a1, $s0, 0X228
/* 000930 0x808CD0E8 3C01808D */ lui	$at, %hi(D_808CD5E0)
/* 000931 0x808CD0EC C426D5E0 */ lwc1	$f6, %lo(D_808CD5E0)($at)
/* 000932 0x808CD0F0 C6040224 */ lwc1	$f4, 0X224($s0)
/* 000933 0x808CD0F4 26120234 */ addiu	$s2, $s0, 0X234
/* 000934 0x808CD0F8 02402825 */ move	$a1, $s2
/* 000935 0x808CD0FC 46062302 */ mul.s	$f12, $f4, $f6
/* 000936 0x808CD100 0C060704 */ jal	SysMatrix_GetStateTranslationAndScaledZ
/* 000937 0x808CD104 00000000 */ nop
/* 000938 0x808CD108 8FA40070 */ lw	$a0, 0X70($sp)
/* 000939 0x808CD10C 27AE004C */ addiu	$t6, $sp, 0X4C
/* 000940 0x808CD110 240F0001 */ li	$t7, 0X1
/* 000941 0x808CD114 24180001 */ li	$t8, 0X1
/* 000942 0x808CD118 24190001 */ li	$t9, 0X1
/* 000943 0x808CD11C 27A80048 */ addiu	$t0, $sp, 0X48
/* 000944 0x808CD120 AFA80024 */ sw	$t0, 0X24($sp)
/* 000945 0x808CD124 AFB90020 */ sw	$t9, 0X20($sp)
/* 000946 0x808CD128 AFB80018 */ sw	$t8, 0X18($sp)
/* 000947 0x808CD12C AFAF0014 */ sw	$t7, 0X14($sp)
/* 000948 0x808CD130 AFAE0010 */ sw	$t6, 0X10($sp)
/* 000949 0x808CD134 02202825 */ move	$a1, $s1
/* 000950 0x808CD138 02403025 */ move	$a2, $s2
/* 000951 0x808CD13C 27A7005C */ addiu	$a3, $sp, 0X5C
/* 000952 0x808CD140 AFA0001C */ sw	$zero, 0X1C($sp)
/* 000953 0x808CD144 0C031571 */ jal	func_800C55C4
/* 000954 0x808CD148 24840830 */ addiu	$a0, $a0, 0X830
/* 000955 0x808CD14C 1040000E */ beqz	$v0, .L808CD188
/* 000956 0x808CD150 02202025 */ move	$a0, $s1
/* 000957 0x808CD154 0C03FE21 */ jal	Math_Vec3f_DistXYZ
/* 000958 0x808CD158 27A5005C */ addiu	$a1, $sp, 0X5C
/* 000959 0x808CD15C 3C0140A0 */ lui	$at, 0x40A0
/* 000960 0x808CD160 44814000 */ mtc1	$at, $f8
/* 000961 0x808CD164 24090002 */ li	$t1, 0X2
/* 000962 0x808CD168 A2090210 */ sb	$t1, 0X210($s0)
/* 000963 0x808CD16C 46080281 */ sub.s	$f10, $f0, $f8
/* 000964 0x808CD170 02402025 */ move	$a0, $s2
/* 000965 0x808CD174 27A5005C */ addiu	$a1, $sp, 0X5C
/* 000966 0x808CD178 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000967 0x808CD17C E60A0224 */ swc1	$f10, 0X224($s0)
/* 000968 0x808CD180 10000007 */ b	.L808CD1A0
/* 000969 0x808CD184 860C00BE */ lh	$t4, 0XBE($s0)
.L808CD188:
/* 000970 0x808CD188 920A0210 */ lbu	$t2, 0X210($s0)
/* 000971 0x808CD18C 240B0001 */ li	$t3, 0X1
/* 000972 0x808CD190 51400003 */ beqzl	$t2, .L808CD1A0
/* 000973 0x808CD194 860C00BE */ lh	$t4, 0XBE($s0)
/* 000974 0x808CD198 A20B0210 */ sb	$t3, 0X210($s0)
/* 000975 0x808CD19C 860C00BE */ lh	$t4, 0XBE($s0)
.L808CD1A0:
/* 000976 0x808CD1A0 860D0218 */ lh	$t5, 0X218($s0)
/* 000977 0x808CD1A4 018D2021 */ addu	$a0, $t4, $t5
/* 000978 0x808CD1A8 00042400 */ sll	$a0, $a0, 16
/* 000979 0x808CD1AC 0C03FB51 */ jal	Math_Coss
/* 000980 0x808CD1B0 00042403 */ sra	$a0, $a0, 16
/* 000981 0x808CD1B4 3C0140A0 */ lui	$at, 0x40A0
/* 000982 0x808CD1B8 44818000 */ mtc1	$at, $f16
/* 000983 0x808CD1BC C6040234 */ lwc1	$f4, 0X234($s0)
/* 000984 0x808CD1C0 46100482 */ mul.s	$f18, $f0, $f16
/* 000985 0x808CD1C4 46049180 */ add.s	$f6, $f18, $f4
/* 000986 0x808CD1C8 E7A60050 */ swc1	$f6, 0X50($sp)
/* 000987 0x808CD1CC C6080238 */ lwc1	$f8, 0X238($s0)
/* 000988 0x808CD1D0 E7A80054 */ swc1	$f8, 0X54($sp)
/* 000989 0x808CD1D4 860F0218 */ lh	$t7, 0X218($s0)
/* 000990 0x808CD1D8 860E00BE */ lh	$t6, 0XBE($s0)
/* 000991 0x808CD1DC 01CF2021 */ addu	$a0, $t6, $t7
/* 000992 0x808CD1E0 00042400 */ sll	$a0, $a0, 16
/* 000993 0x808CD1E4 0C03FB61 */ jal	Math_Sins
/* 000994 0x808CD1E8 00042403 */ sra	$a0, $a0, 16
/* 000995 0x808CD1EC 3C0140A0 */ lui	$at, 0x40A0
/* 000996 0x808CD1F0 44818000 */ mtc1	$at, $f16
/* 000997 0x808CD1F4 C60A023C */ lwc1	$f10, 0X23C($s0)
/* 000998 0x808CD1F8 27B80050 */ addiu	$t8, $sp, 0X50
/* 000999 0x808CD1FC 46100482 */ mul.s	$f18, $f0, $f16
/* 001000 0x808CD200 AFB80010 */ sw	$t8, 0X10($sp)
/* 001001 0x808CD204 260402E0 */ addiu	$a0, $s0, 0X2E0
/* 001002 0x808CD208 00002825 */ move	$a1, $zero
/* 001003 0x808CD20C 02203025 */ move	$a2, $s1
/* 001004 0x808CD210 02403825 */ move	$a3, $s2
/* 001005 0x808CD214 46125101 */ sub.s	$f4, $f10, $f18
/* 001006 0x808CD218 0C039FB3 */ jal	Collision_TriGroupSetCoordsAtIndex
/* 001007 0x808CD21C E7A40058 */ swc1	$f4, 0X58($sp)
.L808CD220:
/* 001008 0x808CD220 8FBF003C */ lw	$ra, 0X3C($sp)
/* 001009 0x808CD224 8FB00030 */ lw	$s0, 0X30($sp)
/* 001010 0x808CD228 8FB10034 */ lw	$s1, 0X34($sp)
/* 001011 0x808CD22C 8FB20038 */ lw	$s2, 0X38($sp)
/* 001012 0x808CD230 03E00008 */ jr	$ra
/* 001013 0x808CD234 27BD0070 */ addiu	$sp, $sp, 0X70


.section .late_rodata

glabel D_808CD5E0
/* 001248 0x808CD5E0 */ .word	0x428EDB6D
