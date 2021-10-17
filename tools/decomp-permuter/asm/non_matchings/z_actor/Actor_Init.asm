glabel Actor_Init
/* 019884 0x800B9170 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 019885 0x800B9174 AFB10018 */ sw	$s1, 0X18($sp)
/* 019886 0x800B9178 AFB00014 */ sw	$s0, 0X14($sp)
/* 019887 0x800B917C 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 019888 0x800B9180 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 019889 0x800B9184 00A08025 */ move	$s0, $a1
/* 019890 0x800B9188 00808825 */ move	$s1, $a0
/* 019891 0x800B918C AFBF001C */ sw	$ra, 0X1C($sp)
/* 019892 0x800B9190 AFA60030 */ sw	$a2, 0X30($sp)
/* 019893 0x800B9194 904E0F54 */ lbu	$t6, 0XF54($v0)
/* 019894 0x800B9198 35CF0080 */ ori	$t7, $t6, 0X80
/* 019895 0x800B919C A04F0F54 */ sb	$t7, 0XF54($v0)
/* 019896 0x800B91A0 0C05A72F */ jal	convert_scene_number_among_shared_scenes
/* 019897 0x800B91A4 862400A4 */ lh	$a0, 0XA4($s1)
/* 019898 0x800B91A8 0002C080 */ sll	$t8, $v0, 2
/* 019899 0x800B91AC 0302C021 */ addu	$t8, $t8, $v0
/* 019900 0x800B91B0 0018C080 */ sll	$t8, $t8, 2
/* 019901 0x800B91B4 3C08801F */ lui	$t0, %hi(gSaveContext)
/* 019902 0x800B91B8 2508F670 */ addiu	$t0, $t0, %lo(gSaveContext)
/* 019903 0x800B91BC 27193F68 */ addiu	$t9, $t8, 0X3F68
/* 019904 0x800B91C0 03283021 */ addu	$a2, $t9, $t0
/* 019905 0x800B91C4 AFA60020 */ sw	$a2, 0X20($sp)
/* 019906 0x800B91C8 02002025 */ move	$a0, $s0
/* 019907 0x800B91CC 0C02258C */ jal	bzero
/* 019908 0x800B91D0 24050284 */ li	$a1, 0X284
/* 019909 0x800B91D4 0C02FEBA */ jal	ActorOverlayTable_Init
/* 019910 0x800B91D8 00000000 */ nop
/* 019911 0x800B91DC 3C010001 */ lui	$at, 0x0001
/* 019912 0x800B91E0 342187FC */ ori	$at, $at, 0X87FC
/* 019913 0x800B91E4 3C05801D */ lui	$a1, %hi(D_801D1E20)
/* 019914 0x800B91E8 24A51E20 */ addiu	$a1, $a1, %lo(D_801D1E20)
/* 019915 0x800B91EC 0C060737 */ jal	SysMatrix_Copy
/* 019916 0x800B91F0 02212021 */ addu	$a0, $s1, $at
/* 019917 0x800B91F4 3C010001 */ lui	$at, 0x0001
/* 019918 0x800B91F8 342187B0 */ ori	$at, $at, 0X87B0
/* 019919 0x800B91FC 3C05801D */ lui	$a1, %hi(D_801D1E20)
/* 019920 0x800B9200 24A51E20 */ addiu	$a1, $a1, %lo(D_801D1E20)
/* 019921 0x800B9204 0C060737 */ jal	SysMatrix_Copy
/* 019922 0x800B9208 02212021 */ addu	$a0, $s1, $at
/* 019923 0x800B920C 3C01801B */ lui	$at, %hi(gActorOverlayTable + 0x10)
/* 019924 0x800B9210 AC20EFE0 */ sw	$zero, %lo(gActorOverlayTable + 0x10)($at)
/* 019925 0x800B9214 3C02801B */ lui	$v0, %hi(gActorOverlayTable + 0x20)
/* 019926 0x800B9218 2442EFF0 */ addiu	$v0, $v0, %lo(gActorOverlayTable + 0x20)
/* 019927 0x800B921C 3C01801B */ lui	$at, %hi(gActorOverlayTable + 0x1E)
/* 019928 0x800B9220 8FA60020 */ lw	$a2, 0X20($sp)
/* 019929 0x800B9224 A020EFEE */ sb	$zero, %lo(gActorOverlayTable + 0x1E)($at)
/* 019930 0x800B9228 A040001E */ sb	$zero, 0X1E($v0)
/* 019931 0x800B922C AC400010 */ sw	$zero, 0X10($v0)
/* 019932 0x800B9230 24420020 */ addiu	$v0, $v0, 0X20
/* 019933 0x800B9234 24030002 */ li	$v1, 0X2
/* 019934 0x800B9238 240402B2 */ li	$a0, 0X2B2
.L800B923C:
/* 019935 0x800B923C 24630004 */ addiu	$v1, $v1, 0X4
/* 019936 0x800B9240 AC400030 */ sw	$zero, 0X30($v0)
/* 019937 0x800B9244 A040003E */ sb	$zero, 0X3E($v0)
/* 019938 0x800B9248 AC400050 */ sw	$zero, 0X50($v0)
/* 019939 0x800B924C A040005E */ sb	$zero, 0X5E($v0)
/* 019940 0x800B9250 AC400070 */ sw	$zero, 0X70($v0)
/* 019941 0x800B9254 A040007E */ sb	$zero, 0X7E($v0)
/* 019942 0x800B9258 24420080 */ addiu	$v0, $v0, 0X80
/* 019943 0x800B925C AC40FF90 */ sw	$zero, -0X70($v0)
/* 019944 0x800B9260 1464FFF6 */ bne	$v1, $a0, .L800B923C
/* 019945 0x800B9264 A040FF9E */ sb	$zero, -0X62($v0)
/* 019946 0x800B9268 8CC90000 */ lw	$t1, 0X0($a2)
/* 019947 0x800B926C 24010018 */ li	$at, 0X18
/* 019948 0x800B9270 3C0E801F */ lui	$t6, %hi(gSaveContext)
/* 019949 0x800B9274 AE0901C8 */ sw	$t1, 0X1C8($s0)
/* 019950 0x800B9278 8CCA0004 */ lw	$t2, 0X4($a2)
/* 019951 0x800B927C 25CEF670 */ addiu	$t6, $t6, %lo(gSaveContext)
/* 019952 0x800B9280 AE0A01B8 */ sw	$t2, 0X1B8($s0)
/* 019953 0x800B9284 8CCB0008 */ lw	$t3, 0X8($a2)
/* 019954 0x800B9288 AE0B01BC */ sw	$t3, 0X1BC($s0)
/* 019955 0x800B928C 862200A4 */ lh	$v0, 0XA4($s1)
/* 019956 0x800B9290 14410005 */ bne	$v0, $at, .L800B92A8
/* 019957 0x800B9294 00026080 */ sll	$t4, $v0, 2
/* 019958 0x800B9298 01826021 */ addu	$t4, $t4, $v0
/* 019959 0x800B929C 000C6080 */ sll	$t4, $t4, 2
/* 019960 0x800B92A0 258D3F68 */ addiu	$t5, $t4, 0X3F68
/* 019961 0x800B92A4 01AE3021 */ addu	$a2, $t5, $t6
.L800B92A8:
/* 019962 0x800B92A8 8CCF0010 */ lw	$t7, 0X10($a2)
/* 019963 0x800B92AC 02202025 */ move	$a0, $s1
/* 019964 0x800B92B0 260501E4 */ addiu	$a1, $s0, 0X1E4
/* 019965 0x800B92B4 AE0F01D4 */ sw	$t7, 0X1D4($s0)
/* 019966 0x800B92B8 8CD8000C */ lw	$t8, 0XC($a2)
/* 019967 0x800B92BC 0C02D77C */ jal	Actor_TitleCardContextInit
/* 019968 0x800B92C0 AE1801CC */ sw	$t8, 0X1CC($s0)
/* 019969 0x800B92C4 0C02D91A */ jal	func_800B6468
/* 019970 0x800B92C8 02202025 */ move	$a0, $s1
/* 019971 0x800B92CC AE000250 */ sw	$zero, 0X250($s0)
/* 019972 0x800B92D0 8FA50030 */ lw	$a1, 0X30($sp)
/* 019973 0x800B92D4 02002025 */ move	$a0, $s0
/* 019974 0x800B92D8 0C02ECB4 */ jal	func_800BB2D0
/* 019975 0x800B92DC 02203025 */ move	$a2, $s1
/* 019976 0x800B92E0 26040120 */ addiu	$a0, $s0, 0X120
/* 019977 0x800B92E4 8E05002C */ lw	$a1, 0X2C($s0)
/* 019978 0x800B92E8 0C02D469 */ jal	Actor_TargetContextInit
/* 019979 0x800B92EC 02203025 */ move	$a2, $s1
/* 019980 0x800B92F0 0C02E448 */ jal	func_800B9120
/* 019981 0x800B92F4 02002025 */ move	$a0, $s0
/* 019982 0x800B92F8 3C04801F */ lui	$a0, %hi(D_801ED8A0)
/* 019983 0x800B92FC 3C05800B */ lui	$a1, %hi(Actor_PrintLists)
/* 019984 0x800B9300 24A53AD0 */ addiu	$a1, $a1, %lo(Actor_PrintLists)
/* 019985 0x800B9304 2484D8A0 */ addiu	$a0, $a0, %lo(D_801ED8A0)
/* 019986 0x800B9308 02003025 */ move	$a2, $s0
/* 019987 0x800B930C 0C02067C */ jal	Fault_AddClient
/* 019988 0x800B9310 00003825 */ move	$a3, $zero
/* 019989 0x800B9314 02202025 */ move	$a0, $s1
/* 019990 0x800B9318 0C02DC8B */ jal	func_800B722C
/* 019991 0x800B931C 8E05002C */ lw	$a1, 0X2C($s0)
/* 019992 0x800B9320 8FBF001C */ lw	$ra, 0X1C($sp)
/* 019993 0x800B9324 8FB00014 */ lw	$s0, 0X14($sp)
/* 019994 0x800B9328 8FB10018 */ lw	$s1, 0X18($sp)
/* 019995 0x800B932C 03E00008 */ jr	$ra
/* 019996 0x800B9330 27BD0028 */ addiu	$sp, $sp, 0X28

