glabel func_8086FCA4
/* 001953 0x8086FCA4 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 001954 0x8086FCA8 AFB00030 */ sw	$s0, 0X30($sp)
/* 001955 0x8086FCAC 00808025 */ move	$s0, $a0
/* 001956 0x8086FCB0 AFBF0034 */ sw	$ra, 0X34($sp)
/* 001957 0x8086FCB4 AFA5003C */ sw	$a1, 0X3C($sp)
/* 001958 0x8086FCB8 920202F9 */ lbu	$v0, 0X2F9($s0)
/* 001959 0x8086FCBC 304E0002 */ andi	$t6, $v0, 0X2
/* 001960 0x8086FCC0 51C00043 */ beqzl	$t6, .L8086FDD0
/* 001961 0x8086FCC4 8FBF0034 */ lw	$ra, 0X34($sp)
/* 001962 0x8086FCC8 9218018C */ lbu	$t8, 0X18C($s0)
/* 001963 0x8086FCCC 304FFFFD */ andi	$t7, $v0, 0XFFFD
/* 001964 0x8086FCD0 2401000A */ li	$at, 0XA
/* 001965 0x8086FCD4 17010007 */ bne	$t8, $at, .L8086FCF4
/* 001966 0x8086FCD8 A20F02F9 */ sb	$t7, 0X2F9($s0)
/* 001967 0x8086FCDC 8E190324 */ lw	$t9, 0X324($s0)
/* 001968 0x8086FCE0 3C01000D */ lui	$at, 0x000D
/* 001969 0x8086FCE4 3421B0B3 */ ori	$at, $at, 0XB0B3
/* 001970 0x8086FCE8 8F280000 */ lw	$t0, 0X0($t9)
/* 001971 0x8086FCEC 01014824 */ and	$t1, $t0, $at
/* 001972 0x8086FCF0 15200036 */ bnez	$t1, .L8086FDCC
.L8086FCF4:
/* 001973 0x8086FCF4 02002025 */ move	$a0, $s0
/* 001974 0x8086FCF8 0C02F896 */ jal	func_800BE258
/* 001975 0x8086FCFC 26050300 */ addiu	$a1, $s0, 0X300
/* 001976 0x8086FD00 02002025 */ move	$a0, $s0
/* 001977 0x8086FD04 0C21B83C */ jal	func_8086E0F0
/* 001978 0x8086FD08 8FA5003C */ lw	$a1, 0X3C($sp)
/* 001979 0x8086FD0C 920200B9 */ lbu	$v0, 0XB9($s0)
/* 001980 0x8086FD10 24010003 */ li	$at, 0X3
/* 001981 0x8086FD14 02002025 */ move	$a0, $s0
/* 001982 0x8086FD18 54410006 */ bnel	$v0, $at, .L8086FD34
/* 001983 0x8086FD1C 24010004 */ li	$at, 0X4
/* 001984 0x8086FD20 0C21BCBF */ jal	func_8086F2FC
/* 001985 0x8086FD24 8FA5003C */ lw	$a1, 0X3C($sp)
/* 001986 0x8086FD28 10000029 */ b	.L8086FDD0
/* 001987 0x8086FD2C 8FBF0034 */ lw	$ra, 0X34($sp)
/* 001988 0x8086FD30 24010004 */ li	$at, 0X4
.L8086FD34:
/* 001989 0x8086FD34 1441001D */ bne	$v0, $at, .L8086FDAC
/* 001990 0x8086FD38 8FA5003C */ lw	$a1, 0X3C($sp)
/* 001991 0x8086FD3C 860C0310 */ lh	$t4, 0X310($s0)
/* 001992 0x8086FD40 860B030E */ lh	$t3, 0X30E($s0)
/* 001993 0x8086FD44 3C014080 */ lui	$at, 0x4080
/* 001994 0x8086FD48 44819000 */ mtc1	$at, $f18
/* 001995 0x8086FD4C 448C8000 */ mtc1	$t4, $f16
/* 001996 0x8086FD50 448B7000 */ mtc1	$t3, $f14
/* 001997 0x8086FD54 E6120254 */ swc1	$f18, 0X254($s0)
/* 001998 0x8086FD58 46808420 */ cvt.s.w	$f16, $f16
/* 001999 0x8086FD5C 3C018087 */ lui	$at, %hi(D_80870A04)
/* 002000 0x8086FD60 C4320A04 */ lwc1	$f18, %lo(D_80870A04)($at)
/* 002001 0x8086FD64 240A0014 */ li	$t2, 0X14
/* 002002 0x8086FD68 A20A018C */ sb	$t2, 0X18C($s0)
/* 002003 0x8086FD6C 468073A0 */ cvt.s.w	$f14, $f14
/* 002004 0x8086FD70 E6120258 */ swc1	$f18, 0X258($s0)
/* 002005 0x8086FD74 E7B00010 */ swc1	$f16, 0X10($sp)
/* 002006 0x8086FD78 860D0312 */ lh	$t5, 0X312($s0)
/* 002007 0x8086FD7C 240E0004 */ li	$t6, 0X4
/* 002008 0x8086FD80 24A41CA0 */ addiu	$a0, $a1, 0X1CA0
/* 002009 0x8086FD84 448D8000 */ mtc1	$t5, $f16
/* 002010 0x8086FD88 44077000 */ mfc1	$a3, $f14
/* 002011 0x8086FD8C 240600A2 */ li	$a2, 0XA2
/* 002012 0x8086FD90 46808420 */ cvt.s.w	$f16, $f16
/* 002013 0x8086FD94 AFA00018 */ sw	$zero, 0X18($sp)
/* 002014 0x8086FD98 AFA0001C */ sw	$zero, 0X1C($sp)
/* 002015 0x8086FD9C AFA00020 */ sw	$zero, 0X20($sp)
/* 002016 0x8086FDA0 AFAE0024 */ sw	$t6, 0X24($sp)
/* 002017 0x8086FDA4 0C02EB18 */ jal	Actor_Spawn
/* 002018 0x8086FDA8 E7B00014 */ swc1	$f16, 0X14($sp)
.L8086FDAC:
/* 002019 0x8086FDAC 0C02F88B */ jal	func_800BE22C
/* 002020 0x8086FDB0 02002025 */ move	$a0, $s0
/* 002021 0x8086FDB4 14400003 */ bnez	$v0, .L8086FDC4
/* 002022 0x8086FDB8 8FA4003C */ lw	$a0, 0X3C($sp)
/* 002023 0x8086FDBC 0C02EEA2 */ jal	func_800BBA88
/* 002024 0x8086FDC0 02002825 */ move	$a1, $s0
.L8086FDC4:
/* 002025 0x8086FDC4 0C21BBA3 */ jal	func_8086EE8C
/* 002026 0x8086FDC8 02002025 */ move	$a0, $s0
.L8086FDCC:
/* 002027 0x8086FDCC 8FBF0034 */ lw	$ra, 0X34($sp)
.L8086FDD0:
/* 002028 0x8086FDD0 8FB00030 */ lw	$s0, 0X30($sp)
/* 002029 0x8086FDD4 27BD0038 */ addiu	$sp, $sp, 0X38
/* 002030 0x8086FDD8 03E00008 */ jr	$ra
/* 002031 0x8086FDDC 00000000 */ nop

