glabel func_80A83FBC
/* 002939 0x80A83FBC 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 002940 0x80A83FC0 AFBF001C */ sw	$ra, 0X1C($sp)
/* 002941 0x80A83FC4 AFB00018 */ sw	$s0, 0X18($sp)
/* 002942 0x80A83FC8 8CB00000 */ lw	$s0, 0X0($a1)
/* 002943 0x80A83FCC AFA5003C */ sw	$a1, 0X3C($sp)
/* 002944 0x80A83FD0 0C02E046 */ jal	func_800B8118
/* 002945 0x80A83FD4 24060001 */ li	$a2, 0X1
/* 002946 0x80A83FD8 8FAE003C */ lw	$t6, 0X3C($sp)
/* 002947 0x80A83FDC 0C04B0B7 */ jal	func_8012C2DC
/* 002948 0x80A83FE0 8DC40000 */ lw	$a0, 0X0($t6)
/* 002949 0x80A83FE4 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 002950 0x80A83FE8 3C18E200 */ lui	$t8, 0xE200
/* 002951 0x80A83FEC 3C190C18 */ lui	$t9, 0x0C18
/* 002952 0x80A83FF0 244F0008 */ addiu	$t7, $v0, 0X8
/* 002953 0x80A83FF4 AE0F02C0 */ sw	$t7, 0X2C0($s0)
/* 002954 0x80A83FF8 373949D8 */ ori	$t9, $t9, 0X49D8
/* 002955 0x80A83FFC 3718001C */ ori	$t8, $t8, 0X1C
/* 002956 0x80A84000 AC580000 */ sw	$t8, 0X0($v0)
/* 002957 0x80A84004 AC590004 */ sw	$t9, 0X4($v0)
/* 002958 0x80A84008 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 002959 0x80A8400C 3C09FB00 */ lui	$t1, 0xFB00
/* 002960 0x80A84010 240A004B */ li	$t2, 0X4B
/* 002961 0x80A84014 24480008 */ addiu	$t0, $v0, 0X8
/* 002962 0x80A84018 AE0802C0 */ sw	$t0, 0X2C0($s0)
/* 002963 0x80A8401C AC4A0004 */ sw	$t2, 0X4($v0)
/* 002964 0x80A84020 AC490000 */ sw	$t1, 0X0($v0)
/* 002965 0x80A84024 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 002966 0x80A84028 3C0CDA38 */ lui	$t4, 0xDA38
/* 002967 0x80A8402C 358C0003 */ ori	$t4, $t4, 0X3
/* 002968 0x80A84030 244B0008 */ addiu	$t3, $v0, 0X8
/* 002969 0x80A84034 AE0B02C0 */ sw	$t3, 0X2C0($s0)
/* 002970 0x80A84038 AC4C0000 */ sw	$t4, 0X0($v0)
/* 002971 0x80A8403C 8FAD003C */ lw	$t5, 0X3C($sp)
/* 002972 0x80A84040 8DA40000 */ lw	$a0, 0X0($t5)
/* 002973 0x80A84044 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 002974 0x80A84048 AFA20020 */ sw	$v0, 0X20($sp)
/* 002975 0x80A8404C 8FA30020 */ lw	$v1, 0X20($sp)
/* 002976 0x80A84050 3C0FDE00 */ lui	$t7, 0xDE00
/* 002977 0x80A84054 AC620004 */ sw	$v0, 0X4($v1)
/* 002978 0x80A84058 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 002979 0x80A8405C 3C180600 */ lui	$t8, 0x0600
/* 002980 0x80A84060 27182068 */ addiu	$t8, $t8, 0X2068
/* 002981 0x80A84064 244E0008 */ addiu	$t6, $v0, 0X8
/* 002982 0x80A84068 AE0E02C0 */ sw	$t6, 0X2C0($s0)
/* 002983 0x80A8406C AC580004 */ sw	$t8, 0X4($v0)
/* 002984 0x80A84070 AC4F0000 */ sw	$t7, 0X0($v0)
/* 002985 0x80A84074 8FBF001C */ lw	$ra, 0X1C($sp)
/* 002986 0x80A84078 8FB00018 */ lw	$s0, 0X18($sp)
/* 002987 0x80A8407C 27BD0038 */ addiu	$sp, $sp, 0X38
/* 002988 0x80A84080 03E00008 */ jr	$ra
/* 002989 0x80A84084 00000000 */ nop

