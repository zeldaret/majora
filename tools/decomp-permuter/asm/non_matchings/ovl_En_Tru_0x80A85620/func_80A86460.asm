glabel func_80A86460
/* 000912 0x80A86460 27BDFF40 */ addiu	$sp, $sp, -0XC0
/* 000913 0x80A86464 AFB20060 */ sw	$s2, 0X60($sp)
/* 000914 0x80A86468 3C12801D */ lui	$s2, %hi(D_801D15B0)
/* 000915 0x80A8646C AFB70074 */ sw	$s7, 0X74($sp)
/* 000916 0x80A86470 AFB30064 */ sw	$s3, 0X64($sp)
/* 000917 0x80A86474 27B300B0 */ addiu	$s3, $sp, 0XB0
/* 000918 0x80A86478 0080B825 */ move	$s7, $a0
/* 000919 0x80A8647C 265215B0 */ addiu	$s2, $s2, %lo(D_801D15B0)
/* 000920 0x80A86480 AFBF007C */ sw	$ra, 0X7C($sp)
/* 000921 0x80A86484 AFBE0078 */ sw	$fp, 0X78($sp)
/* 000922 0x80A86488 AFB60070 */ sw	$s6, 0X70($sp)
/* 000923 0x80A8648C AFB5006C */ sw	$s5, 0X6C($sp)
/* 000924 0x80A86490 AFB40068 */ sw	$s4, 0X68($sp)
/* 000925 0x80A86494 AFB1005C */ sw	$s1, 0X5C($sp)
/* 000926 0x80A86498 AFB00058 */ sw	$s0, 0X58($sp)
/* 000927 0x80A8649C F7BE0050 */ sdc1	$f30, 0X50($sp)
/* 000928 0x80A864A0 F7BC0048 */ sdc1	$f28, 0X48($sp)
/* 000929 0x80A864A4 F7BA0040 */ sdc1	$f26, 0X40($sp)
/* 000930 0x80A864A8 F7B80038 */ sdc1	$f24, 0X38($sp)
/* 000931 0x80A864AC F7B60030 */ sdc1	$f22, 0X30($sp)
/* 000932 0x80A864B0 F7B40028 */ sdc1	$f20, 0X28($sp)
/* 000933 0x80A864B4 02602025 */ move	$a0, $s3
/* 000934 0x80A864B8 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000935 0x80A864BC 02402825 */ move	$a1, $s2
/* 000936 0x80A864C0 27BE008C */ addiu	$fp, $sp, 0X8C
/* 000937 0x80A864C4 03C02025 */ move	$a0, $fp
/* 000938 0x80A864C8 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000939 0x80A864CC 02402825 */ move	$a1, $s2
/* 000940 0x80A864D0 27B400A4 */ addiu	$s4, $sp, 0XA4
/* 000941 0x80A864D4 02802025 */ move	$a0, $s4
/* 000942 0x80A864D8 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000943 0x80A864DC 02402825 */ move	$a1, $s2
/* 000944 0x80A864E0 27B50098 */ addiu	$s5, $sp, 0X98
/* 000945 0x80A864E4 02A02025 */ move	$a0, $s5
/* 000946 0x80A864E8 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000947 0x80A864EC 02402825 */ move	$a1, $s2
/* 000948 0x80A864F0 0C021BF7 */ jal	randZeroOne
/* 000949 0x80A864F4 00000000 */ nop
/* 000950 0x80A864F8 3C0143B4 */ lui	$at, 0x43B4
/* 000951 0x80A864FC 44812000 */ mtc1	$at, $f4
/* 000952 0x80A86500 3C014336 */ lui	$at, 0x4336
/* 000953 0x80A86504 44814000 */ mtc1	$at, $f8
/* 000954 0x80A86508 46040182 */ mul.s	$f6, $f0, $f4
/* 000955 0x80A8650C 3C0141A0 */ lui	$at, 0x41A0
/* 000956 0x80A86510 44819000 */ mtc1	$at, $f18
/* 000957 0x80A86514 26E40024 */ addiu	$a0, $s7, 0X24
/* 000958 0x80A86518 02603025 */ move	$a2, $s3
/* 000959 0x80A8651C E7B200B8 */ swc1	$f18, 0XB8($sp)
/* 000960 0x80A86520 86E50032 */ lh	$a1, 0X32($s7)
/* 000961 0x80A86524 46083282 */ mul.s	$f10, $f6, $f8
/* 000962 0x80A86528 03C03825 */ move	$a3, $fp
/* 000963 0x80A8652C 4600540D */ trunc.w.s	$f16, $f10
/* 000964 0x80A86530 44118000 */ mfc1	$s1, $f16
/* 000965 0x80A86534 00000000 */ nop
/* 000966 0x80A86538 00118C00 */ sll	$s1, $s1, 16
/* 000967 0x80A8653C 0C040047 */ jal	Lib_TranslateAndRotateYVec3f
/* 000968 0x80A86540 00118C03 */ sra	$s1, $s1, 16
/* 000969 0x80A86544 3C0180A9 */ lui	$at, %hi(D_80A8B420)
/* 000970 0x80A86548 C43EB420 */ lwc1	$f30, %lo(D_80A8B420)($at)
/* 000971 0x80A8654C 3C0180A9 */ lui	$at, %hi(D_80A8B424)
/* 000972 0x80A86550 C43CB424 */ lwc1	$f28, %lo(D_80A8B424)($at)
/* 000973 0x80A86554 3C014080 */ lui	$at, 0x4080
/* 000974 0x80A86558 4481D000 */ mtc1	$at, $f26
/* 000975 0x80A8655C 3C014040 */ lui	$at, 0x4040
/* 000976 0x80A86560 4481C000 */ mtc1	$at, $f24
/* 000977 0x80A86564 3C013F80 */ lui	$at, 0x3F80
/* 000978 0x80A86568 4481B000 */ mtc1	$at, $f22
/* 000979 0x80A8656C 3C014140 */ lui	$at, 0x4140
/* 000980 0x80A86570 26F60394 */ addiu	$s6, $s7, 0X394
/* 000981 0x80A86574 4481A000 */ mtc1	$at, $f20
/* 000982 0x80A86578 24170008 */ li	$s7, 0X8
/* 000983 0x80A8657C 00008025 */ move	$s0, $zero
.L80A86580:
/* 000984 0x80A86580 02602025 */ move	$a0, $s3
/* 000985 0x80A86584 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000986 0x80A86588 02402825 */ move	$a1, $s2
/* 000987 0x80A8658C 0C021BF7 */ jal	randZeroOne
/* 000988 0x80A86590 E7B600B4 */ swc1	$f22, 0XB4($sp)
/* 000989 0x80A86594 46180100 */ add.s	$f4, $f0, $f24
/* 000990 0x80A86598 00112C00 */ sll	$a1, $s1, 16
/* 000991 0x80A8659C 00052C03 */ sra	$a1, $a1, 16
/* 000992 0x80A865A0 02402025 */ move	$a0, $s2
/* 000993 0x80A865A4 E7A400B8 */ swc1	$f4, 0XB8($sp)
/* 000994 0x80A865A8 02603025 */ move	$a2, $s3
/* 000995 0x80A865AC 0C040047 */ jal	Lib_TranslateAndRotateYVec3f
/* 000996 0x80A865B0 02A03825 */ move	$a3, $s5
/* 000997 0x80A865B4 02602025 */ move	$a0, $s3
/* 000998 0x80A865B8 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000999 0x80A865BC 02402825 */ move	$a1, $s2
/* 001000 0x80A865C0 0C021BF7 */ jal	randZeroOne
/* 001001 0x80A865C4 00000000 */ nop
/* 001002 0x80A865C8 461A0182 */ mul.s	$f6, $f0, $f26
/* 001003 0x80A865CC 00112C00 */ sll	$a1, $s1, 16
/* 001004 0x80A865D0 00052C03 */ sra	$a1, $a1, 16
/* 001005 0x80A865D4 03C02025 */ move	$a0, $fp
/* 001006 0x80A865D8 02603025 */ move	$a2, $s3
/* 001007 0x80A865DC 02803825 */ move	$a3, $s4
/* 001008 0x80A865E0 46143200 */ add.s	$f8, $f6, $f20
/* 001009 0x80A865E4 0C040047 */ jal	Lib_TranslateAndRotateYVec3f
/* 001010 0x80A865E8 E7A800B8 */ swc1	$f8, 0XB8($sp)
/* 001011 0x80A865EC 240F0004 */ li	$t7, 0X4
/* 001012 0x80A865F0 AFAF001C */ sw	$t7, 0X1C($sp)
/* 001013 0x80A865F4 02C02025 */ move	$a0, $s6
/* 001014 0x80A865F8 02802825 */ move	$a1, $s4
/* 001015 0x80A865FC 02403025 */ move	$a2, $s2
/* 001016 0x80A86600 02A03825 */ move	$a3, $s5
/* 001017 0x80A86604 E7BC0010 */ swc1	$f28, 0X10($sp)
/* 001018 0x80A86608 E7BE0014 */ swc1	$f30, 0X14($sp)
/* 001019 0x80A8660C 0C2A178B */ jal	func_80A85E2C
/* 001020 0x80A86610 E7B40018 */ swc1	$f20, 0X18($sp)
/* 001021 0x80A86614 26311FFE */ addiu	$s1, $s1, 0X1FFE
/* 001022 0x80A86618 00118C00 */ sll	$s1, $s1, 16
/* 001023 0x80A8661C 26100001 */ addiu	$s0, $s0, 0X1
/* 001024 0x80A86620 1617FFD7 */ bne	$s0, $s7, .L80A86580
/* 001025 0x80A86624 00118C03 */ sra	$s1, $s1, 16
/* 001026 0x80A86628 00001025 */ move	$v0, $zero
/* 001027 0x80A8662C 8FBF007C */ lw	$ra, 0X7C($sp)
/* 001028 0x80A86630 D7B40028 */ ldc1	$f20, 0X28($sp)
/* 001029 0x80A86634 D7B60030 */ ldc1	$f22, 0X30($sp)
/* 001030 0x80A86638 D7B80038 */ ldc1	$f24, 0X38($sp)
/* 001031 0x80A8663C D7BA0040 */ ldc1	$f26, 0X40($sp)
/* 001032 0x80A86640 D7BC0048 */ ldc1	$f28, 0X48($sp)
/* 001033 0x80A86644 D7BE0050 */ ldc1	$f30, 0X50($sp)
/* 001034 0x80A86648 8FB00058 */ lw	$s0, 0X58($sp)
/* 001035 0x80A8664C 8FB1005C */ lw	$s1, 0X5C($sp)
/* 001036 0x80A86650 8FB20060 */ lw	$s2, 0X60($sp)
/* 001037 0x80A86654 8FB30064 */ lw	$s3, 0X64($sp)
/* 001038 0x80A86658 8FB40068 */ lw	$s4, 0X68($sp)
/* 001039 0x80A8665C 8FB5006C */ lw	$s5, 0X6C($sp)
/* 001040 0x80A86660 8FB60070 */ lw	$s6, 0X70($sp)
/* 001041 0x80A86664 8FB70074 */ lw	$s7, 0X74($sp)
/* 001042 0x80A86668 8FBE0078 */ lw	$fp, 0X78($sp)
/* 001043 0x80A8666C 03E00008 */ jr	$ra
/* 001044 0x80A86670 27BD00C0 */ addiu	$sp, $sp, 0XC0


.section .late_rodata

glabel D_80A8B420
/* 006016 0x80A8B420 */ .word	0x3D75C28F
glabel D_80A8B424
/* 006017 0x80A8B424 */ .word	0x3ECCCCCD
