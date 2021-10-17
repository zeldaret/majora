.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel osViSetXScale
/* 022076 0x80095950 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 022077 0x80095954 AFBF0014 */ sw	$ra, 0X14($sp)
/* 022078 0x80095958 0C024698 */ jal	__osDisableInt
/* 022079 0x8009595C E7AC0018 */ swc1	$f12, 0X18($sp)
/* 022080 0x80095960 3C06800A */ lui	$a2, %hi(__osViNext)
/* 022081 0x80095964 24C680C4 */ addiu	$a2, $a2, %lo(__osViNext)
/* 022082 0x80095968 8CCE0000 */ lw	$t6, 0X0($a2)
/* 022083 0x8009596C C7A40018 */ lwc1	$f4, 0X18($sp)
/* 022084 0x80095970 3C014F80 */ lui	$at, 0x4F80
/* 022085 0x80095974 00402025 */ move	$a0, $v0
/* 022086 0x80095978 E5C40018 */ swc1	$f4, 0X18($t6)
/* 022087 0x8009597C 8CC30000 */ lw	$v1, 0X0($a2)
/* 022088 0x80095980 946F0000 */ lhu	$t7, 0X0($v1)
/* 022089 0x80095984 35F80002 */ ori	$t8, $t7, 0X2
/* 022090 0x80095988 A4780000 */ sh	$t8, 0X0($v1)
/* 022091 0x8009598C 8CC30000 */ lw	$v1, 0X0($a2)
/* 022092 0x80095990 8C790008 */ lw	$t9, 0X8($v1)
/* 022093 0x80095994 C4660018 */ lwc1	$f6, 0X18($v1)
/* 022094 0x80095998 8F250020 */ lw	$a1, 0X20($t9)
/* 022095 0x8009599C 30A80FFF */ andi	$t0, $a1, 0XFFF
/* 022096 0x800959A0 44884000 */ mtc1	$t0, $f8
/* 022097 0x800959A4 05010004 */ bgez	$t0, .L800959B8
/* 022098 0x800959A8 468042A0 */ cvt.s.w	$f10, $f8
/* 022099 0x800959AC 44818000 */ mtc1	$at, $f16
/* 022100 0x800959B0 00000000 */ nop
/* 022101 0x800959B4 46105280 */ add.s	$f10, $f10, $f16
.L800959B8:
/* 022102 0x800959B8 460A3482 */ mul.s	$f18, $f6, $f10
/* 022103 0x800959BC 240A0001 */ li	$t2, 0X1
/* 022104 0x800959C0 3C014F00 */ lui	$at, 0x4F00
/* 022105 0x800959C4 4449F800 */ cfc1	$t1, $31
/* 022106 0x800959C8 44CAF800 */ ctc1	$t2, $31
/* 022107 0x800959CC 00000000 */ nop
/* 022108 0x800959D0 46009124 */ cvt.w.s	$f4, $f18
/* 022109 0x800959D4 444AF800 */ cfc1	$t2, $31
/* 022110 0x800959D8 00000000 */ nop
/* 022111 0x800959DC 314A0078 */ andi	$t2, $t2, 0X78
/* 022112 0x800959E0 51400013 */ beqzl	$t2, .L80095A30
/* 022113 0x800959E4 440A2000 */ mfc1	$t2, $f4
/* 022114 0x800959E8 44812000 */ mtc1	$at, $f4
/* 022115 0x800959EC 240A0001 */ li	$t2, 0X1
/* 022116 0x800959F0 46049101 */ sub.s	$f4, $f18, $f4
/* 022117 0x800959F4 44CAF800 */ ctc1	$t2, $31
/* 022118 0x800959F8 00000000 */ nop
/* 022119 0x800959FC 46002124 */ cvt.w.s	$f4, $f4
/* 022120 0x80095A00 444AF800 */ cfc1	$t2, $31
/* 022121 0x80095A04 00000000 */ nop
/* 022122 0x80095A08 314A0078 */ andi	$t2, $t2, 0X78
/* 022123 0x80095A0C 15400005 */ bnez	$t2, .L80095A24
/* 022124 0x80095A10 00000000 */ nop
/* 022125 0x80095A14 440A2000 */ mfc1	$t2, $f4
/* 022126 0x80095A18 3C018000 */ lui	$at, 0x8000
/* 022127 0x80095A1C 10000007 */ b	.L80095A3C
/* 022128 0x80095A20 01415025 */ or	$t2, $t2, $at
.L80095A24:
/* 022129 0x80095A24 10000005 */ b	.L80095A3C
/* 022130 0x80095A28 240AFFFF */ li	$t2, -0X1
/* 022131 0x80095A2C 440A2000 */ mfc1	$t2, $f4
.L80095A30:
/* 022132 0x80095A30 00000000 */ nop
/* 022133 0x80095A34 0540FFFB */ bltz	$t2, .L80095A24
/* 022134 0x80095A38 00000000 */ nop
.L80095A3C:
/* 022135 0x80095A3C 44C9F800 */ ctc1	$t1, $31
/* 022136 0x80095A40 314B0FFF */ andi	$t3, $t2, 0XFFF
/* 022137 0x80095A44 0C0246B4 */ jal	__osRestoreInt
/* 022138 0x80095A48 AC6B0020 */ sw	$t3, 0X20($v1)
/* 022139 0x80095A4C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 022140 0x80095A50 27BD0018 */ addiu	$sp, $sp, 0X18
/* 022141 0x80095A54 03E00008 */ jr	$ra
/* 022142 0x80095A58 00000000 */ nop
/* 022143 0x80095A5C 00000000 */ nop
