glabel func_80A470D8
/* 001886 0x80A470D8 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 001887 0x80A470DC AFB00020 */ sw	$s0, 0X20($sp)
/* 001888 0x80A470E0 00808025 */ move	$s0, $a0
/* 001889 0x80A470E4 AFBF0024 */ sw	$ra, 0X24($sp)
/* 001890 0x80A470E8 AFA5002C */ sw	$a1, 0X2C($sp)
/* 001891 0x80A470EC 240E0014 */ li	$t6, 0X14
/* 001892 0x80A470F0 AFAE0010 */ sw	$t6, 0X10($sp)
/* 001893 0x80A470F4 260403C0 */ addiu	$a0, $s0, 0X3C0
/* 001894 0x80A470F8 00002825 */ move	$a1, $zero
/* 001895 0x80A470FC 2406000A */ li	$a2, 0XA
/* 001896 0x80A47100 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 001897 0x80A47104 24070BB8 */ li	$a3, 0XBB8
/* 001898 0x80A47108 860F0032 */ lh	$t7, 0X32($s0)
/* 001899 0x80A4710C 861803C0 */ lh	$t8, 0X3C0($s0)
/* 001900 0x80A47110 860803B6 */ lh	$t0, 0X3B6($s0)
/* 001901 0x80A47114 260403D4 */ addiu	$a0, $s0, 0X3D4
/* 001902 0x80A47118 01F8C821 */ addu	$t9, $t7, $t8
/* 001903 0x80A4711C 11000006 */ beqz	$t0, .L80A47138
/* 001904 0x80A47120 A6190032 */ sh	$t9, 0X32($s0)
/* 001905 0x80A47124 860903B0 */ lh	$t1, 0X3B0($s0)
/* 001906 0x80A47128 24010004 */ li	$at, 0X4
/* 001907 0x80A4712C 3C053E99 */ lui	$a1, 0x3E99
/* 001908 0x80A47130 1521000E */ bne	$t1, $at, .L80A4716C
/* 001909 0x80A47134 34A5999A */ ori	$a1, $a1, 0X999A
.L80A47138:
/* 001910 0x80A47138 3C053E99 */ lui	$a1, 0x3E99
/* 001911 0x80A4713C 3C063C23 */ lui	$a2, 0x3C23
/* 001912 0x80A47140 34C6D70A */ ori	$a2, $a2, 0XD70A
/* 001913 0x80A47144 0C03FF9A */ jal	Math_SmoothDownscaleMaxF
/* 001914 0x80A47148 34A5999A */ ori	$a1, $a1, 0X999A
/* 001915 0x80A4714C 860503C6 */ lh	$a1, 0X3C6($s0)
/* 001916 0x80A47150 AFA00010 */ sw	$zero, 0X10($sp)
/* 001917 0x80A47154 260403C4 */ addiu	$a0, $s0, 0X3C4
/* 001918 0x80A47158 24060005 */ li	$a2, 0X5
/* 001919 0x80A4715C 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 001920 0x80A47160 24070032 */ li	$a3, 0X32
/* 001921 0x80A47164 1000001A */ b	.L80A471D0
/* 001922 0x80A47168 00000000 */ nop
.L80A4716C:
/* 001923 0x80A4716C 3C063A83 */ lui	$a2, 0x3A83
/* 001924 0x80A47170 34C6126F */ ori	$a2, $a2, 0X126F
/* 001925 0x80A47174 0C03FF9A */ jal	Math_SmoothDownscaleMaxF
/* 001926 0x80A47178 260403D4 */ addiu	$a0, $s0, 0X3D4
/* 001927 0x80A4717C 860503C6 */ lh	$a1, 0X3C6($s0)
/* 001928 0x80A47180 AFA00010 */ sw	$zero, 0X10($sp)
/* 001929 0x80A47184 260403C4 */ addiu	$a0, $s0, 0X3C4
/* 001930 0x80A47188 2406000A */ li	$a2, 0XA
/* 001931 0x80A4718C 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 001932 0x80A47190 24070032 */ li	$a3, 0X32
/* 001933 0x80A47194 8E0A0740 */ lw	$t2, 0X740($s0)
/* 001934 0x80A47198 00001825 */ move	$v1, $zero
/* 001935 0x80A4719C 02001025 */ move	$v0, $s0
/* 001936 0x80A471A0 1940000B */ blez	$t2, .L80A471D0
/* 001937 0x80A471A4 00000000 */ nop
/* 001938 0x80A471A8 844B0896 */ lh	$t3, 0X896($v0)
.L80A471AC:
/* 001939 0x80A471AC 860C03C0 */ lh	$t4, 0X3C0($s0)
/* 001940 0x80A471B0 24630001 */ addiu	$v1, $v1, 0X1
/* 001941 0x80A471B4 24420006 */ addiu	$v0, $v0, 0X6
/* 001942 0x80A471B8 016C6821 */ addu	$t5, $t3, $t4
/* 001943 0x80A471BC A44D0890 */ sh	$t5, 0X890($v0)
/* 001944 0x80A471C0 8E0E0740 */ lw	$t6, 0X740($s0)
/* 001945 0x80A471C4 006E082A */ slt	$at, $v1, $t6
/* 001946 0x80A471C8 5420FFF8 */ bnezl	$at, .L80A471AC
/* 001947 0x80A471CC 844B0896 */ lh	$t3, 0X896($v0)
.L80A471D0:
/* 001948 0x80A471D0 3C05801D */ lui	$a1, %hi(D_801D15B0)
/* 001949 0x80A471D4 24A515B0 */ addiu	$a1, $a1, %lo(D_801D15B0)
/* 001950 0x80A471D8 0C03FD43 */ jal	Math_Vec3f_Copy
/* 001951 0x80A471DC 260403F0 */ addiu	$a0, $s0, 0X3F0
/* 001952 0x80A471E0 3C0180A5 */ lui	$at, %hi(D_80A48DA0)
/* 001953 0x80A471E4 C4268DA0 */ lwc1	$f6, %lo(D_80A48DA0)($at)
/* 001954 0x80A471E8 C60403D4 */ lwc1	$f4, 0X3D4($s0)
/* 001955 0x80A471EC 4606203C */ c.lt.s	$f4, $f6
/* 001956 0x80A471F0 00000000 */ nop
/* 001957 0x80A471F4 45020024 */ bc1fl .L80A47288
/* 001958 0x80A471F8 8FBF0024 */ lw	$ra, 0X24($sp)
/* 001959 0x80A471FC 920203CB */ lbu	$v0, 0X3CB($s0)
/* 001960 0x80A47200 44804000 */ mtc1	$zero, $f8
/* 001961 0x80A47204 24010006 */ li	$at, 0X6
/* 001962 0x80A47208 1441000E */ bne	$v0, $at, .L80A47244
/* 001963 0x80A4720C E60803D4 */ swc1	$f8, 0X3D4($s0)
/* 001964 0x80A47210 860F03B4 */ lh	$t7, 0X3B4($s0)
/* 001965 0x80A47214 24180007 */ li	$t8, 0X7
/* 001966 0x80A47218 55E0000B */ bnezl	$t7, .L80A47248
/* 001967 0x80A4721C 24010006 */ li	$at, 0X6
/* 001968 0x80A47220 A21803CB */ sb	$t8, 0X3CB($s0)
/* 001969 0x80A47224 0C03C7EF */ jal	ActorCutscene_Stop
/* 001970 0x80A47228 82040038 */ lb	$a0, 0X38($s0)
/* 001971 0x80A4722C 8E190004 */ lw	$t9, 0X4($s0)
/* 001972 0x80A47230 3C01FFEF */ lui	$at, 0xFFEF
/* 001973 0x80A47234 3421FFFF */ ori	$at, $at, 0XFFFF
/* 001974 0x80A47238 03214024 */ and	$t0, $t9, $at
/* 001975 0x80A4723C AE080004 */ sw	$t0, 0X4($s0)
/* 001976 0x80A47240 920203CB */ lbu	$v0, 0X3CB($s0)
.L80A47244:
/* 001977 0x80A47244 24010006 */ li	$at, 0X6
.L80A47248:
/* 001978 0x80A47248 1041000E */ beq	$v0, $at, .L80A47284
/* 001979 0x80A4724C 3C0E80A4 */ lui	$t6, %hi(func_80A462F8)
/* 001980 0x80A47250 860903B6 */ lh	$t1, 0X3B6($s0)
/* 001981 0x80A47254 A60003C2 */ sh	$zero, 0X3C2($s0)
/* 001982 0x80A47258 55200006 */ bnezl	$t1, .L80A47274
/* 001983 0x80A4725C 8E0C0004 */ lw	$t4, 0X4($s0)
/* 001984 0x80A47260 8E0B0470 */ lw	$t3, 0X470($s0)
/* 001985 0x80A47264 3C0A0100 */ lui	$t2, 0x0100
/* 001986 0x80A47268 354A0202 */ ori	$t2, $t2, 0X202
/* 001987 0x80A4726C AD6A0008 */ sw	$t2, 0X8($t3)
/* 001988 0x80A47270 8E0C0004 */ lw	$t4, 0X4($s0)
.L80A47274:
/* 001989 0x80A47274 25CE62F8 */ addiu	$t6, $t6, %lo(func_80A462F8)
/* 001990 0x80A47278 AE0E03AC */ sw	$t6, 0X3AC($s0)
/* 001991 0x80A4727C 358D0001 */ ori	$t5, $t4, 0X1
/* 001992 0x80A47280 AE0D0004 */ sw	$t5, 0X4($s0)
.L80A47284:
/* 001993 0x80A47284 8FBF0024 */ lw	$ra, 0X24($sp)
.L80A47288:
/* 001994 0x80A47288 8FB00020 */ lw	$s0, 0X20($sp)
/* 001995 0x80A4728C 27BD0028 */ addiu	$sp, $sp, 0X28
/* 001996 0x80A47290 03E00008 */ jr	$ra
/* 001997 0x80A47294 00000000 */ nop


.section .late_rodata

glabel D_80A48DA0
/* 003728 0x80A48DA0 */ .word	0x3A83126F
