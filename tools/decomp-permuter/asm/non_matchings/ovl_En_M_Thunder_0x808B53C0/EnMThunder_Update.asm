glabel EnMThunder_Update
/* 001034 0x808B63E8 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 001035 0x808B63EC AFB00028 */ sw	$s0, 0X28($sp)
/* 001036 0x808B63F0 00808025 */ move	$s0, $a0
/* 001037 0x808B63F4 AFBF002C */ sw	$ra, 0X2C($sp)
/* 001038 0x808B63F8 AFA50034 */ sw	$a1, 0X34($sp)
/* 001039 0x808B63FC 8E1901B8 */ lw	$t9, 0X1B8($s0)
/* 001040 0x808B6400 02002025 */ move	$a0, $s0
/* 001041 0x808B6404 8FA50034 */ lw	$a1, 0X34($sp)
/* 001042 0x808B6408 0320F809 */ jalr	$t9
/* 001043 0x808B640C 00000000 */ nop
/* 001044 0x808B6410 8FA40034 */ lw	$a0, 0X34($sp)
/* 001045 0x808B6414 0C22D624 */ jal	func_808B5890
/* 001046 0x808B6418 8E0501B4 */ lw	$a1, 0X1B4($s0)
/* 001047 0x808B641C C6040024 */ lwc1	$f4, 0X24($s0)
/* 001048 0x808B6420 3C01437F */ lui	$at, 0x437F
/* 001049 0x808B6424 C60001A4 */ lwc1	$f0, 0X1A4($s0)
/* 001050 0x808B6428 4600218D */ trunc.w.s	$f6, $f4
/* 001051 0x808B642C 44812000 */ mtc1	$at, $f4
/* 001052 0x808B6430 C6080028 */ lwc1	$f8, 0X28($s0)
/* 001053 0x808B6434 C610002C */ lwc1	$f16, 0X2C($s0)
/* 001054 0x808B6438 44053000 */ mfc1	$a1, $f6
/* 001055 0x808B643C 46040182 */ mul.s	$f6, $f0, $f4
/* 001056 0x808B6440 4600428D */ trunc.w.s	$f10, $f8
/* 001057 0x808B6444 24020001 */ li	$v0, 0X1
/* 001058 0x808B6448 00052C00 */ sll	$a1, $a1, 16
/* 001059 0x808B644C 00052C03 */ sra	$a1, $a1, 16
/* 001060 0x808B6450 44065000 */ mfc1	$a2, $f10
/* 001061 0x808B6454 4600848D */ trunc.w.s	$f18, $f16
/* 001062 0x808B6458 3C014F00 */ lui	$at, 0x4F00
/* 001063 0x808B645C 00063400 */ sll	$a2, $a2, 16
/* 001064 0x808B6460 00063403 */ sra	$a2, $a2, 16
/* 001065 0x808B6464 4448F800 */ cfc1	$t0, $31
/* 001066 0x808B6468 44C2F800 */ ctc1	$v0, $31
/* 001067 0x808B646C 44079000 */ mfc1	$a3, $f18
/* 001068 0x808B6470 26040194 */ addiu	$a0, $s0, 0X194
/* 001069 0x808B6474 46003224 */ cvt.w.s	$f8, $f6
/* 001070 0x808B6478 00073C00 */ sll	$a3, $a3, 16
/* 001071 0x808B647C 00073C03 */ sra	$a3, $a3, 16
/* 001072 0x808B6480 4442F800 */ cfc1	$v0, $31
/* 001073 0x808B6484 00000000 */ nop
/* 001074 0x808B6488 30420078 */ andi	$v0, $v0, 0X78
/* 001075 0x808B648C 50400013 */ beqzl	$v0, .L808B64DC
/* 001076 0x808B6490 44024000 */ mfc1	$v0, $f8
/* 001077 0x808B6494 44814000 */ mtc1	$at, $f8
/* 001078 0x808B6498 24020001 */ li	$v0, 0X1
/* 001079 0x808B649C 46083201 */ sub.s	$f8, $f6, $f8
/* 001080 0x808B64A0 44C2F800 */ ctc1	$v0, $31
/* 001081 0x808B64A4 00000000 */ nop
/* 001082 0x808B64A8 46004224 */ cvt.w.s	$f8, $f8
/* 001083 0x808B64AC 4442F800 */ cfc1	$v0, $31
/* 001084 0x808B64B0 00000000 */ nop
/* 001085 0x808B64B4 30420078 */ andi	$v0, $v0, 0X78
/* 001086 0x808B64B8 14400005 */ bnez	$v0, .L808B64D0
/* 001087 0x808B64BC 00000000 */ nop
/* 001088 0x808B64C0 44024000 */ mfc1	$v0, $f8
/* 001089 0x808B64C4 3C018000 */ lui	$at, 0x8000
/* 001090 0x808B64C8 10000007 */ b	.L808B64E8
/* 001091 0x808B64CC 00411025 */ or	$v0, $v0, $at
.L808B64D0:
/* 001092 0x808B64D0 10000005 */ b	.L808B64E8
/* 001093 0x808B64D4 2402FFFF */ li	$v0, -0X1
/* 001094 0x808B64D8 44024000 */ mfc1	$v0, $f8
.L808B64DC:
/* 001095 0x808B64DC 00000000 */ nop
/* 001096 0x808B64E0 0440FFFB */ bltz	$v0, .L808B64D0
/* 001097 0x808B64E4 00000000 */ nop
.L808B64E8:
/* 001098 0x808B64E8 3C0142C8 */ lui	$at, 0x42C8
/* 001099 0x808B64EC 44C8F800 */ ctc1	$t0, $31
/* 001100 0x808B64F0 44815000 */ mtc1	$at, $f10
/* 001101 0x808B64F4 240A0001 */ li	$t2, 0X1
/* 001102 0x808B64F8 304200FF */ andi	$v0, $v0, 0XFF
/* 001103 0x808B64FC 460A0402 */ mul.s	$f16, $f0, $f10
/* 001104 0x808B6500 AFA20010 */ sw	$v0, 0X10($sp)
/* 001105 0x808B6504 AFA20014 */ sw	$v0, 0X14($sp)
/* 001106 0x808B6508 3C014F00 */ lui	$at, 0x4F00
/* 001107 0x808B650C 4449F800 */ cfc1	$t1, $31
/* 001108 0x808B6510 44CAF800 */ ctc1	$t2, $31
/* 001109 0x808B6514 00000000 */ nop
/* 001110 0x808B6518 460084A4 */ cvt.w.s	$f18, $f16
/* 001111 0x808B651C 444AF800 */ cfc1	$t2, $31
/* 001112 0x808B6520 00000000 */ nop
/* 001113 0x808B6524 314A0078 */ andi	$t2, $t2, 0X78
/* 001114 0x808B6528 51400013 */ beqzl	$t2, .L808B6578
/* 001115 0x808B652C 440A9000 */ mfc1	$t2, $f18
/* 001116 0x808B6530 44819000 */ mtc1	$at, $f18
/* 001117 0x808B6534 240A0001 */ li	$t2, 0X1
/* 001118 0x808B6538 46128481 */ sub.s	$f18, $f16, $f18
/* 001119 0x808B653C 44CAF800 */ ctc1	$t2, $31
/* 001120 0x808B6540 00000000 */ nop
/* 001121 0x808B6544 460094A4 */ cvt.w.s	$f18, $f18
/* 001122 0x808B6548 444AF800 */ cfc1	$t2, $31
/* 001123 0x808B654C 00000000 */ nop
/* 001124 0x808B6550 314A0078 */ andi	$t2, $t2, 0X78
/* 001125 0x808B6554 15400005 */ bnez	$t2, .L808B656C
/* 001126 0x808B6558 00000000 */ nop
/* 001127 0x808B655C 440A9000 */ mfc1	$t2, $f18
/* 001128 0x808B6560 3C018000 */ lui	$at, 0x8000
/* 001129 0x808B6564 10000007 */ b	.L808B6584
/* 001130 0x808B6568 01415025 */ or	$t2, $t2, $at
.L808B656C:
/* 001131 0x808B656C 10000005 */ b	.L808B6584
/* 001132 0x808B6570 240AFFFF */ li	$t2, -0X1
/* 001133 0x808B6574 440A9000 */ mfc1	$t2, $f18
.L808B6578:
/* 001134 0x808B6578 00000000 */ nop
/* 001135 0x808B657C 0540FFFB */ bltz	$t2, .L808B656C
/* 001136 0x808B6580 00000000 */ nop
.L808B6584:
/* 001137 0x808B6584 3C014448 */ lui	$at, 0x4448
/* 001138 0x808B6588 44812000 */ mtc1	$at, $f4
/* 001139 0x808B658C 44C9F800 */ ctc1	$t1, $31
/* 001140 0x808B6590 AFAA0018 */ sw	$t2, 0X18($sp)
/* 001141 0x808B6594 46040182 */ mul.s	$f6, $f0, $f4
/* 001142 0x808B6598 4600320D */ trunc.w.s	$f8, $f6
/* 001143 0x808B659C 440C4000 */ mfc1	$t4, $f8
/* 001144 0x808B65A0 0C04067F */ jal	Lights_InitType0PositionalLight
/* 001145 0x808B65A4 AFAC001C */ sw	$t4, 0X1C($sp)
/* 001146 0x808B65A8 8FBF002C */ lw	$ra, 0X2C($sp)
/* 001147 0x808B65AC 8FB00028 */ lw	$s0, 0X28($sp)
/* 001148 0x808B65B0 27BD0030 */ addiu	$sp, $sp, 0X30
/* 001149 0x808B65B4 03E00008 */ jr	$ra
/* 001150 0x808B65B8 00000000 */ nop

