glabel func_808F13FC
/* 000127 0x808F13FC 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 000128 0x808F1400 AFB00030 */ sw	$s0, 0X30($sp)
/* 000129 0x808F1404 00808025 */ move	$s0, $a0
/* 000130 0x808F1408 AFBF0034 */ sw	$ra, 0X34($sp)
/* 000131 0x808F140C 920200B9 */ lbu	$v0, 0XB9($s0)
/* 000132 0x808F1410 24010002 */ li	$at, 0X2
/* 000133 0x808F1414 14410008 */ bne	$v0, $at, .L808F1438
/* 000134 0x808F1418 3C013F40 */ lui	$at, 0x3F40
/* 000135 0x808F141C 44812000 */ mtc1	$at, $f4
/* 000136 0x808F1420 3C014040 */ lui	$at, 0x4040
/* 000137 0x808F1424 44813000 */ mtc1	$at, $f6
/* 000138 0x808F1428 A20001EC */ sb	$zero, 0X1EC($s0)
/* 000139 0x808F142C E60401F4 */ swc1	$f4, 0X1F4($s0)
/* 000140 0x808F1430 10000039 */ b	.L808F1518
/* 000141 0x808F1434 E60601F0 */ swc1	$f6, 0X1F0($s0)
.L808F1438:
/* 000142 0x808F1438 24010004 */ li	$at, 0X4
/* 000143 0x808F143C 1441001E */ bne	$v0, $at, .L808F14B8
/* 000144 0x808F1440 240E0014 */ li	$t6, 0X14
/* 000145 0x808F1444 861802A4 */ lh	$t8, 0X2A4($s0)
/* 000146 0x808F1448 860F02A2 */ lh	$t7, 0X2A2($s0)
/* 000147 0x808F144C 3C013F40 */ lui	$at, 0x3F40
/* 000148 0x808F1450 44819000 */ mtc1	$at, $f18
/* 000149 0x808F1454 44988000 */ mtc1	$t8, $f16
/* 000150 0x808F1458 448F7000 */ mtc1	$t7, $f14
/* 000151 0x808F145C 3C014040 */ lui	$at, 0x4040
/* 000152 0x808F1460 46808420 */ cvt.s.w	$f16, $f16
/* 000153 0x808F1464 44816000 */ mtc1	$at, $f12
/* 000154 0x808F1468 E61201F4 */ swc1	$f18, 0X1F4($s0)
/* 000155 0x808F146C A20E01EC */ sb	$t6, 0X1EC($s0)
/* 000156 0x808F1470 E60C01F0 */ swc1	$f12, 0X1F0($s0)
/* 000157 0x808F1474 468073A0 */ cvt.s.w	$f14, $f14
/* 000158 0x808F1478 E7B00010 */ swc1	$f16, 0X10($sp)
/* 000159 0x808F147C 861902A6 */ lh	$t9, 0X2A6($s0)
/* 000160 0x808F1480 24080003 */ li	$t0, 0X3
/* 000161 0x808F1484 24A41CA0 */ addiu	$a0, $a1, 0X1CA0
/* 000162 0x808F1488 44998000 */ mtc1	$t9, $f16
/* 000163 0x808F148C 44077000 */ mfc1	$a3, $f14
/* 000164 0x808F1490 240600A2 */ li	$a2, 0XA2
/* 000165 0x808F1494 46808420 */ cvt.s.w	$f16, $f16
/* 000166 0x808F1498 AFA00018 */ sw	$zero, 0X18($sp)
/* 000167 0x808F149C AFA0001C */ sw	$zero, 0X1C($sp)
/* 000168 0x808F14A0 AFA00020 */ sw	$zero, 0X20($sp)
/* 000169 0x808F14A4 AFA80024 */ sw	$t0, 0X24($sp)
/* 000170 0x808F14A8 0C02EB18 */ jal	Actor_Spawn
/* 000171 0x808F14AC E7B00014 */ swc1	$f16, 0X14($sp)
/* 000172 0x808F14B0 1000001A */ b	.L808F151C
/* 000173 0x808F14B4 8FBF0034 */ lw	$ra, 0X34($sp)
.L808F14B8:
/* 000174 0x808F14B8 24010003 */ li	$at, 0X3
/* 000175 0x808F14BC 1441000C */ bne	$v0, $at, .L808F14F0
/* 000176 0x808F14C0 2409000A */ li	$t1, 0XA
/* 000177 0x808F14C4 3C013F40 */ lui	$at, 0x3F40
/* 000178 0x808F14C8 44815000 */ mtc1	$at, $f10
/* 000179 0x808F14CC 3C013F80 */ lui	$at, 0x3F80
/* 000180 0x808F14D0 44818000 */ mtc1	$at, $f16
/* 000181 0x808F14D4 3C013F90 */ lui	$at, 0x3F90
/* 000182 0x808F14D8 44819000 */ mtc1	$at, $f18
/* 000183 0x808F14DC A20901EC */ sb	$t1, 0X1EC($s0)
/* 000184 0x808F14E0 E60A01F4 */ swc1	$f10, 0X1F4($s0)
/* 000185 0x808F14E4 E61001F0 */ swc1	$f16, 0X1F0($s0)
/* 000186 0x808F14E8 1000000B */ b	.L808F1518
/* 000187 0x808F14EC E61201F8 */ swc1	$f18, 0X1F8($s0)
.L808F14F0:
/* 000188 0x808F14F0 24010005 */ li	$at, 0X5
/* 000189 0x808F14F4 14410008 */ bne	$v0, $at, .L808F1518
/* 000190 0x808F14F8 240A001F */ li	$t2, 0X1F
/* 000191 0x808F14FC 3C013F40 */ lui	$at, 0x3F40
/* 000192 0x808F1500 44812000 */ mtc1	$at, $f4
/* 000193 0x808F1504 3C014040 */ lui	$at, 0x4040
/* 000194 0x808F1508 44813000 */ mtc1	$at, $f6
/* 000195 0x808F150C A20A01EC */ sb	$t2, 0X1EC($s0)
/* 000196 0x808F1510 E60401F4 */ swc1	$f4, 0X1F4($s0)
/* 000197 0x808F1514 E60601F0 */ swc1	$f6, 0X1F0($s0)
.L808F1518:
/* 000198 0x808F1518 8FBF0034 */ lw	$ra, 0X34($sp)
.L808F151C:
/* 000199 0x808F151C 8FB00030 */ lw	$s0, 0X30($sp)
/* 000200 0x808F1520 27BD0038 */ addiu	$sp, $sp, 0X38
/* 000201 0x808F1524 03E00008 */ jr	$ra
/* 000202 0x808F1528 00000000 */ nop

