glabel func_80A1B3D0
/* 000000 0x80A1B3D0 27BDFF40 */ addiu	$sp, $sp, -0XC0
/* 000001 0x80A1B3D4 3C0280A2 */ lui	$v0, %hi(D_80A1DA38)
/* 000002 0x80A1B3D8 3C0380A2 */ lui	$v1, %hi(D_80A1DA3A)
/* 000003 0x80A1B3DC 3C0580A2 */ lui	$a1, %hi(D_80A1DA3C)
/* 000004 0x80A1B3E0 3C0680A2 */ lui	$a2, %hi(D_80A1DA3E)
/* 000005 0x80A1B3E4 3C0780A2 */ lui	$a3, %hi(D_80A1DA40)
/* 000006 0x80A1B3E8 24E7DA40 */ addiu	$a3, $a3, %lo(D_80A1DA40)
/* 000007 0x80A1B3EC 24C6DA3E */ addiu	$a2, $a2, %lo(D_80A1DA3E)
/* 000008 0x80A1B3F0 24A5DA3C */ addiu	$a1, $a1, %lo(D_80A1DA3C)
/* 000009 0x80A1B3F4 2463DA3A */ addiu	$v1, $v1, %lo(D_80A1DA3A)
/* 000010 0x80A1B3F8 2442DA38 */ addiu	$v0, $v0, %lo(D_80A1DA38)
/* 000011 0x80A1B3FC AFBF0044 */ sw	$ra, 0X44($sp)
/* 000012 0x80A1B400 F7BE0038 */ sdc1	$f30, 0X38($sp)
/* 000013 0x80A1B404 F7BC0030 */ sdc1	$f28, 0X30($sp)
/* 000014 0x80A1B408 F7BA0028 */ sdc1	$f26, 0X28($sp)
/* 000015 0x80A1B40C F7B80020 */ sdc1	$f24, 0X20($sp)
/* 000016 0x80A1B410 F7B60018 */ sdc1	$f22, 0X18($sp)
/* 000017 0x80A1B414 F7B40010 */ sdc1	$f20, 0X10($sp)
/* 000018 0x80A1B418 844E0000 */ lh	$t6, 0X0($v0)
/* 000019 0x80A1B41C 84780000 */ lh	$t8, 0X0($v1)
/* 000020 0x80A1B420 84A80000 */ lh	$t0, 0X0($a1)
/* 000021 0x80A1B424 84CA0000 */ lh	$t2, 0X0($a2)
/* 000022 0x80A1B428 84EC0000 */ lh	$t4, 0X0($a3)
/* 000023 0x80A1B42C 25CF0046 */ addiu	$t7, $t6, 0X46
/* 000024 0x80A1B430 A44F0000 */ sh	$t7, 0X0($v0)
/* 000025 0x80A1B434 2719012C */ addiu	$t9, $t8, 0X12C
/* 000026 0x80A1B438 250902BC */ addiu	$t1, $t0, 0X2BC
/* 000027 0x80A1B43C 254B0514 */ addiu	$t3, $t2, 0X514
/* 000028 0x80A1B440 258D22C4 */ addiu	$t5, $t4, 0X22C4
/* 000029 0x80A1B444 A4790000 */ sh	$t9, 0X0($v1)
/* 000030 0x80A1B448 A4A90000 */ sh	$t1, 0X0($a1)
/* 000031 0x80A1B44C A4CB0000 */ sh	$t3, 0X0($a2)
/* 000032 0x80A1B450 A4ED0000 */ sh	$t5, 0X0($a3)
/* 000033 0x80A1B454 0C03FB61 */ jal	Math_Sins
/* 000034 0x80A1B458 84440000 */ lh	$a0, 0X0($v0)
/* 000035 0x80A1B45C 3C0480A2 */ lui	$a0, %hi(D_80A1DA3A)
/* 000036 0x80A1B460 46000706 */ mov.s	$f28, $f0
/* 000037 0x80A1B464 0C03FB61 */ jal	Math_Sins
/* 000038 0x80A1B468 8484DA3A */ lh	$a0, %lo(D_80A1DA3A)($a0)
/* 000039 0x80A1B46C 3C0480A2 */ lui	$a0, %hi(D_80A1DA3C)
/* 000040 0x80A1B470 E7A000B4 */ swc1	$f0, 0XB4($sp)
/* 000041 0x80A1B474 0C03FB61 */ jal	Math_Sins
/* 000042 0x80A1B478 8484DA3C */ lh	$a0, %lo(D_80A1DA3C)($a0)
/* 000043 0x80A1B47C 3C0480A2 */ lui	$a0, %hi(D_80A1DA3E)
/* 000044 0x80A1B480 46000786 */ mov.s	$f30, $f0
/* 000045 0x80A1B484 0C03FB61 */ jal	Math_Sins
/* 000046 0x80A1B488 8484DA3E */ lh	$a0, %lo(D_80A1DA3E)($a0)
/* 000047 0x80A1B48C 3C0480A2 */ lui	$a0, %hi(D_80A1DA40)
/* 000048 0x80A1B490 E7A000AC */ swc1	$f0, 0XAC($sp)
/* 000049 0x80A1B494 0C03FB61 */ jal	Math_Sins
/* 000050 0x80A1B498 8484DA40 */ lh	$a0, %lo(D_80A1DA40)($a0)
/* 000051 0x80A1B49C 3C0480A2 */ lui	$a0, %hi(D_80A1DA38)
/* 000052 0x80A1B4A0 E7A000A8 */ swc1	$f0, 0XA8($sp)
/* 000053 0x80A1B4A4 0C03FB51 */ jal	Math_Coss
/* 000054 0x80A1B4A8 8484DA38 */ lh	$a0, %lo(D_80A1DA38)($a0)
/* 000055 0x80A1B4AC 3C0480A2 */ lui	$a0, %hi(D_80A1DA3A)
/* 000056 0x80A1B4B0 46000686 */ mov.s	$f26, $f0
/* 000057 0x80A1B4B4 0C03FB51 */ jal	Math_Coss
/* 000058 0x80A1B4B8 8484DA3A */ lh	$a0, %lo(D_80A1DA3A)($a0)
/* 000059 0x80A1B4BC 3C0480A2 */ lui	$a0, %hi(D_80A1DA3C)
/* 000060 0x80A1B4C0 46000506 */ mov.s	$f20, $f0
/* 000061 0x80A1B4C4 0C03FB51 */ jal	Math_Coss
/* 000062 0x80A1B4C8 8484DA3C */ lh	$a0, %lo(D_80A1DA3C)($a0)
/* 000063 0x80A1B4CC 3C0480A2 */ lui	$a0, %hi(D_80A1DA3E)
/* 000064 0x80A1B4D0 46000586 */ mov.s	$f22, $f0
/* 000065 0x80A1B4D4 0C03FB51 */ jal	Math_Coss
/* 000066 0x80A1B4D8 8484DA3E */ lh	$a0, %lo(D_80A1DA3E)($a0)
/* 000067 0x80A1B4DC 3C0480A2 */ lui	$a0, %hi(D_80A1DA40)
/* 000068 0x80A1B4E0 46000606 */ mov.s	$f24, $f0
/* 000069 0x80A1B4E4 0C03FB51 */ jal	Math_Coss
/* 000070 0x80A1B4E8 8484DA40 */ lh	$a0, %lo(D_80A1DA40)($a0)
/* 000071 0x80A1B4EC 4614E201 */ sub.s	$f8, $f28, $f20
/* 000072 0x80A1B4F0 3C0180A2 */ lui	$at, %hi(D_80A1D430)
/* 000073 0x80A1B4F4 C422D430 */ lwc1	$f2, %lo(D_80A1D430)($at)
/* 000074 0x80A1B4F8 C7A400B4 */ lwc1	$f4, 0XB4($sp)
/* 000075 0x80A1B4FC 461E4282 */ mul.s	$f10, $f8, $f30
/* 000076 0x80A1B500 C7A600AC */ lwc1	$f6, 0XAC($sp)
/* 000077 0x80A1B504 C7AE00A8 */ lwc1	$f14, 0XA8($sp)
/* 000078 0x80A1B508 3C0180A2 */ lui	$at, %hi(D_80A1D434)
/* 000079 0x80A1B50C 3C0280A2 */ lui	$v0, %hi(D_80A1D838)
/* 000080 0x80A1B510 46143301 */ sub.s	$f12, $f6, $f20
/* 000081 0x80A1B514 2442D838 */ addiu	$v0, $v0, %lo(D_80A1D838)
/* 000082 0x80A1B518 461A5202 */ mul.s	$f8, $f10, $f26
/* 000083 0x80A1B51C 00002025 */ move	$a0, $zero
/* 000084 0x80A1B520 24060008 */ li	$a2, 0X8
/* 000085 0x80A1B524 27A30074 */ addiu	$v1, $sp, 0X74
/* 000086 0x80A1B528 461C4282 */ mul.s	$f10, $f8, $f28
/* 000087 0x80A1B52C 00000000 */ nop
/* 000088 0x80A1B530 46025202 */ mul.s	$f8, $f10, $f2
/* 000089 0x80A1B534 46162281 */ sub.s	$f10, $f4, $f22
/* 000090 0x80A1B538 E7A80074 */ swc1	$f8, 0X74($sp)
/* 000091 0x80A1B53C 46065202 */ mul.s	$f8, $f10, $f6
/* 000092 0x80A1B540 00000000 */ nop
/* 000093 0x80A1B544 46144282 */ mul.s	$f10, $f8, $f20
/* 000094 0x80A1B548 00000000 */ nop
/* 000095 0x80A1B54C 461C5202 */ mul.s	$f8, $f10, $f28
/* 000096 0x80A1B550 4618F281 */ sub.s	$f10, $f30, $f24
/* 000097 0x80A1B554 46024482 */ mul.s	$f18, $f8, $f2
/* 000098 0x80A1B558 00000000 */ nop
/* 000099 0x80A1B55C 46165202 */ mul.s	$f8, $f10, $f22
/* 000100 0x80A1B560 E7B20078 */ swc1	$f18, 0X78($sp)
/* 000101 0x80A1B564 461C4282 */ mul.s	$f10, $f8, $f28
/* 000102 0x80A1B568 00000000 */ nop
/* 000103 0x80A1B56C 461A5202 */ mul.s	$f8, $f10, $f26
/* 000104 0x80A1B570 00000000 */ nop
/* 000105 0x80A1B574 46024282 */ mul.s	$f10, $f8, $f2
/* 000106 0x80A1B578 00000000 */ nop
/* 000107 0x80A1B57C 46186202 */ mul.s	$f8, $f12, $f24
/* 000108 0x80A1B580 E7AA007C */ swc1	$f10, 0X7C($sp)
/* 000109 0x80A1B584 46044282 */ mul.s	$f10, $f8, $f4
/* 000110 0x80A1B588 00000000 */ nop
/* 000111 0x80A1B58C 461A5202 */ mul.s	$f8, $f10, $f26
/* 000112 0x80A1B590 00000000 */ nop
/* 000113 0x80A1B594 46024282 */ mul.s	$f10, $f8, $f2
/* 000114 0x80A1B598 4616E201 */ sub.s	$f8, $f28, $f22
/* 000115 0x80A1B59C C422D434 */ lwc1	$f2, %lo(D_80A1D434)($at)
/* 000116 0x80A1B5A0 3C0180A2 */ lui	$at, %hi(D_80A1D438)
/* 000117 0x80A1B5A4 461C4202 */ mul.s	$f8, $f8, $f28
/* 000118 0x80A1B5A8 E7AA0080 */ swc1	$f10, 0X80($sp)
/* 000119 0x80A1B5AC 46044202 */ mul.s	$f8, $f8, $f4
/* 000120 0x80A1B5B0 00000000 */ nop
/* 000121 0x80A1B5B4 460E4202 */ mul.s	$f8, $f8, $f14
/* 000122 0x80A1B5B8 00000000 */ nop
/* 000123 0x80A1B5BC 46024202 */ mul.s	$f8, $f8, $f2
/* 000124 0x80A1B5C0 E7A80084 */ swc1	$f8, 0X84($sp)
/* 000125 0x80A1B5C4 46182201 */ sub.s	$f8, $f4, $f24
/* 000126 0x80A1B5C8 461E4102 */ mul.s	$f4, $f8, $f30
/* 000127 0x80A1B5CC 00000000 */ nop
/* 000128 0x80A1B5D0 46062202 */ mul.s	$f8, $f4, $f6
/* 000129 0x80A1B5D4 00000000 */ nop
/* 000130 0x80A1B5D8 460E4102 */ mul.s	$f4, $f8, $f14
/* 000131 0x80A1B5DC 461AF201 */ sub.s	$f8, $f30, $f26
/* 000132 0x80A1B5E0 46022182 */ mul.s	$f6, $f4, $f2
/* 000133 0x80A1B5E4 00000000 */ nop
/* 000134 0x80A1B5E8 461A4102 */ mul.s	$f4, $f8, $f26
/* 000135 0x80A1B5EC E7A60088 */ swc1	$f6, 0X88($sp)
/* 000136 0x80A1B5F0 46142182 */ mul.s	$f6, $f4, $f20
/* 000137 0x80A1B5F4 00000000 */ nop
/* 000138 0x80A1B5F8 46003202 */ mul.s	$f8, $f6, $f0
/* 000139 0x80A1B5FC 00000000 */ nop
/* 000140 0x80A1B600 46024102 */ mul.s	$f4, $f8, $f2
/* 000141 0x80A1B604 00000000 */ nop
/* 000142 0x80A1B608 46166182 */ mul.s	$f6, $f12, $f22
/* 000143 0x80A1B60C E7A4008C */ swc1	$f4, 0X8C($sp)
/* 000144 0x80A1B610 46183202 */ mul.s	$f8, $f6, $f24
/* 000145 0x80A1B614 00000000 */ nop
/* 000146 0x80A1B618 46004102 */ mul.s	$f4, $f8, $f0
/* 000147 0x80A1B61C C428D438 */ lwc1	$f8, %lo(D_80A1D438)($at)
/* 000148 0x80A1B620 3C0180A2 */ lui	$at, %hi(D_80A1D43C)
/* 000149 0x80A1B624 44800000 */ mtc1	$zero, $f0
/* 000150 0x80A1B628 46022182 */ mul.s	$f6, $f4, $f2
/* 000151 0x80A1B62C E7A60090 */ swc1	$f6, 0X90($sp)
/* 000152 0x80A1B630 46089102 */ mul.s	$f4, $f18, $f8
/* 000153 0x80A1B634 C426D43C */ lwc1	$f6, %lo(D_80A1D43C)($at)
/* 000154 0x80A1B638 46065202 */ mul.s	$f8, $f10, $f6
/* 000155 0x80A1B63C E7A40050 */ swc1	$f4, 0X50($sp)
/* 000156 0x80A1B640 E7A8004C */ swc1	$f8, 0X4C($sp)
.L80A1B644:
/* 000157 0x80A1B644 308E0007 */ andi	$t6, $a0, 0X7
/* 000158 0x80A1B648 24990001 */ addiu	$t9, $a0, 0X1
/* 000159 0x80A1B64C 000E7880 */ sll	$t7, $t6, 2
/* 000160 0x80A1B650 33280007 */ andi	$t0, $t9, 0X7
/* 000161 0x80A1B654 006FC021 */ addu	$t8, $v1, $t7
/* 000162 0x80A1B658 00084880 */ sll	$t1, $t0, 2
/* 000163 0x80A1B65C 00695021 */ addu	$t2, $v1, $t1
/* 000164 0x80A1B660 C70C0000 */ lwc1	$f12, 0X0($t8)
/* 000165 0x80A1B664 248B0002 */ addiu	$t3, $a0, 0X2
/* 000166 0x80A1B668 248F0003 */ addiu	$t7, $a0, 0X3
/* 000167 0x80A1B66C 24850004 */ addiu	$a1, $a0, 0X4
/* 000168 0x80A1B670 C54E0000 */ lwc1	$f14, 0X0($t2)
/* 000169 0x80A1B674 316C0007 */ andi	$t4, $t3, 0X7
/* 000170 0x80A1B678 31F80007 */ andi	$t8, $t7, 0X7
/* 000171 0x80A1B67C 30A90007 */ andi	$t1, $a1, 0X7
/* 000172 0x80A1B680 000C6880 */ sll	$t5, $t4, 2
/* 000173 0x80A1B684 0018C880 */ sll	$t9, $t8, 2
/* 000174 0x80A1B688 00095080 */ sll	$t2, $t1, 2
/* 000175 0x80A1B68C 006D7021 */ addu	$t6, $v1, $t5
/* 000176 0x80A1B690 00794021 */ addu	$t0, $v1, $t9
/* 000177 0x80A1B694 006A5821 */ addu	$t3, $v1, $t2
/* 000178 0x80A1B698 C5C20000 */ lwc1	$f2, 0X0($t6)
/* 000179 0x80A1B69C C5100000 */ lwc1	$f16, 0X0($t0)
/* 000180 0x80A1B6A0 C5760000 */ lwc1	$f22, 0X0($t3)
/* 000181 0x80A1B6A4 248C0005 */ addiu	$t4, $a0, 0X5
/* 000182 0x80A1B6A8 318D0007 */ andi	$t5, $t4, 0X7
/* 000183 0x80A1B6AC 000D7080 */ sll	$t6, $t5, 2
/* 000184 0x80A1B6B0 006E7821 */ addu	$t7, $v1, $t6
/* 000185 0x80A1B6B4 C5FA0000 */ lwc1	$f26, 0X0($t7)
/* 000186 0x80A1B6B8 24980006 */ addiu	$t8, $a0, 0X6
/* 000187 0x80A1B6BC 33190007 */ andi	$t9, $t8, 0X7
/* 000188 0x80A1B6C0 00194080 */ sll	$t0, $t9, 2
/* 000189 0x80A1B6C4 00684821 */ addu	$t1, $v1, $t0
/* 000190 0x80A1B6C8 C53E0000 */ lwc1	$f30, 0X0($t1)
/* 000191 0x80A1B6CC 248A0007 */ addiu	$t2, $a0, 0X7
/* 000192 0x80A1B6D0 314B0007 */ andi	$t3, $t2, 0X7
/* 000193 0x80A1B6D4 000B6080 */ sll	$t4, $t3, 2
/* 000194 0x80A1B6D8 006C6821 */ addu	$t5, $v1, $t4
/* 000195 0x80A1B6DC C5B20000 */ lwc1	$f18, 0X0($t5)
/* 000196 0x80A1B6E0 C7A80050 */ lwc1	$f8, 0X50($sp)
/* 000197 0x80A1B6E4 C7A40050 */ lwc1	$f4, 0X50($sp)
/* 000198 0x80A1B6E8 C7AA0074 */ lwc1	$f10, 0X74($sp)
/* 000199 0x80A1B6EC C7A6004C */ lwc1	$f6, 0X4C($sp)
/* 000200 0x80A1B6F0 E4480040 */ swc1	$f8, 0X40($v0)
/* 000201 0x80A1B6F4 E4440000 */ swc1	$f4, 0X0($v0)
/* 000202 0x80A1B6F8 E44A0014 */ swc1	$f10, 0X14($v0)
/* 000203 0x80A1B6FC E4460028 */ swc1	$f6, 0X28($v0)
/* 000204 0x80A1B700 C7A60050 */ lwc1	$f6, 0X50($sp)
/* 000205 0x80A1B704 C7AA004C */ lwc1	$f10, 0X4C($sp)
/* 000206 0x80A1B708 C7A40074 */ lwc1	$f4, 0X74($sp)
/* 000207 0x80A1B70C C7A80074 */ lwc1	$f8, 0X74($sp)
/* 000208 0x80A1B710 E4460080 */ swc1	$f6, 0X80($v0)
/* 000209 0x80A1B714 E44A0068 */ swc1	$f10, 0X68($v0)
/* 000210 0x80A1B718 E4440054 */ swc1	$f4, 0X54($v0)
/* 000211 0x80A1B71C E4480094 */ swc1	$f8, 0X94($v0)
/* 000212 0x80A1B720 C7A8004C */ lwc1	$f8, 0X4C($sp)
/* 000213 0x80A1B724 C7A4004C */ lwc1	$f4, 0X4C($sp)
/* 000214 0x80A1B728 C7AA0050 */ lwc1	$f10, 0X50($sp)
/* 000215 0x80A1B72C C7A60074 */ lwc1	$f6, 0X74($sp)
/* 000216 0x80A1B730 E44000FC */ swc1	$f0, 0XFC($v0)
/* 000217 0x80A1B734 E44000F8 */ swc1	$f0, 0XF8($v0)
/* 000218 0x80A1B738 E44000F4 */ swc1	$f0, 0XF4($v0)
/* 000219 0x80A1B73C E44000F0 */ swc1	$f0, 0XF0($v0)
/* 000220 0x80A1B740 E44000EC */ swc1	$f0, 0XEC($v0)
/* 000221 0x80A1B744 E44000DC */ swc1	$f0, 0XDC($v0)
/* 000222 0x80A1B748 E44000CC */ swc1	$f0, 0XCC($v0)
/* 000223 0x80A1B74C 00A02025 */ move	$a0, $a1
/* 000224 0x80A1B750 E44000BC */ swc1	$f0, 0XBC($v0)
/* 000225 0x80A1B754 E44000B8 */ swc1	$f0, 0XB8($v0)
/* 000226 0x80A1B758 E44000B4 */ swc1	$f0, 0XB4($v0)
/* 000227 0x80A1B75C E44000B0 */ swc1	$f0, 0XB0($v0)
/* 000228 0x80A1B760 E44000AC */ swc1	$f0, 0XAC($v0)
/* 000229 0x80A1B764 E440009C */ swc1	$f0, 0X9C($v0)
/* 000230 0x80A1B768 E440008C */ swc1	$f0, 0X8C($v0)
/* 000231 0x80A1B76C E440007C */ swc1	$f0, 0X7C($v0)
/* 000232 0x80A1B770 E4400078 */ swc1	$f0, 0X78($v0)
/* 000233 0x80A1B774 E4400074 */ swc1	$f0, 0X74($v0)
/* 000234 0x80A1B778 E4400070 */ swc1	$f0, 0X70($v0)
/* 000235 0x80A1B77C E440006C */ swc1	$f0, 0X6C($v0)
/* 000236 0x80A1B780 E440005C */ swc1	$f0, 0X5C($v0)
/* 000237 0x80A1B784 E440004C */ swc1	$f0, 0X4C($v0)
/* 000238 0x80A1B788 24420100 */ addiu	$v0, $v0, 0X100
/* 000239 0x80A1B78C E440FF0C */ swc1	$f0, -0XF4($v0)
/* 000240 0x80A1B790 E440FF1C */ swc1	$f0, -0XE4($v0)
/* 000241 0x80A1B794 E440FF2C */ swc1	$f0, -0XD4($v0)
/* 000242 0x80A1B798 E440FF30 */ swc1	$f0, -0XD0($v0)
/* 000243 0x80A1B79C E440FF34 */ swc1	$f0, -0XCC($v0)
/* 000244 0x80A1B7A0 E440FF38 */ swc1	$f0, -0XC8($v0)
/* 000245 0x80A1B7A4 E440FF3C */ swc1	$f0, -0XC4($v0)
/* 000246 0x80A1B7A8 E44CFF04 */ swc1	$f12, -0XFC($v0)
/* 000247 0x80A1B7AC E44EFF44 */ swc1	$f14, -0XBC($v0)
/* 000248 0x80A1B7B0 E44EFF08 */ swc1	$f14, -0XF8($v0)
/* 000249 0x80A1B7B4 E442FF84 */ swc1	$f2, -0X7C($v0)
/* 000250 0x80A1B7B8 E442FF48 */ swc1	$f2, -0XB8($v0)
/* 000251 0x80A1B7BC E442FF10 */ swc1	$f2, -0XF0($v0)
/* 000252 0x80A1B7C0 E442FF18 */ swc1	$f2, -0XE8($v0)
/* 000253 0x80A1B7C4 E450FFC4 */ swc1	$f16, -0X3C($v0)
/* 000254 0x80A1B7C8 E450FF88 */ swc1	$f16, -0X78($v0)
/* 000255 0x80A1B7CC E450FF58 */ swc1	$f16, -0XA8($v0)
/* 000256 0x80A1B7D0 E450FF50 */ swc1	$f16, -0XB0($v0)
/* 000257 0x80A1B7D4 E450FF20 */ swc1	$f16, -0XE0($v0)
/* 000258 0x80A1B7D8 E456FFC8 */ swc1	$f22, -0X38($v0)
/* 000259 0x80A1B7DC E456FF98 */ swc1	$f22, -0X68($v0)
/* 000260 0x80A1B7E0 E456FF90 */ swc1	$f22, -0X70($v0)
/* 000261 0x80A1B7E4 E456FF60 */ swc1	$f22, -0XA0($v0)
/* 000262 0x80A1B7E8 E456FF24 */ swc1	$f22, -0XDC($v0)
/* 000263 0x80A1B7EC E45AFFD8 */ swc1	$f26, -0X28($v0)
/* 000264 0x80A1B7F0 E45AFFD0 */ swc1	$f26, -0X30($v0)
/* 000265 0x80A1B7F4 E45AFFA0 */ swc1	$f26, -0X60($v0)
/* 000266 0x80A1B7F8 E45AFF64 */ swc1	$f26, -0X9C($v0)
/* 000267 0x80A1B7FC E45EFFE0 */ swc1	$f30, -0X20($v0)
/* 000268 0x80A1B800 E45EFFA4 */ swc1	$f30, -0X5C($v0)
/* 000269 0x80A1B804 E452FFE4 */ swc1	$f18, -0X1C($v0)
/* 000270 0x80A1B808 E448FFE8 */ swc1	$f8, -0X18($v0)
/* 000271 0x80A1B80C E444FFA8 */ swc1	$f4, -0X58($v0)
/* 000272 0x80A1B810 E44AFFC0 */ swc1	$f10, -0X40($v0)
/* 000273 0x80A1B814 14A6FF8B */ bne	$a1, $a2, .L80A1B644
/* 000274 0x80A1B818 E446FFD4 */ swc1	$f6, -0X2C($v0)
/* 000275 0x80A1B81C 8FBF0044 */ lw	$ra, 0X44($sp)
/* 000276 0x80A1B820 D7B40010 */ ldc1	$f20, 0X10($sp)
/* 000277 0x80A1B824 D7B60018 */ ldc1	$f22, 0X18($sp)
/* 000278 0x80A1B828 D7B80020 */ ldc1	$f24, 0X20($sp)
/* 000279 0x80A1B82C D7BA0028 */ ldc1	$f26, 0X28($sp)
/* 000280 0x80A1B830 D7BC0030 */ ldc1	$f28, 0X30($sp)
/* 000281 0x80A1B834 D7BE0038 */ ldc1	$f30, 0X38($sp)
/* 000282 0x80A1B838 03E00008 */ jr	$ra
/* 000283 0x80A1B83C 27BD00C0 */ addiu	$sp, $sp, 0XC0


.section .late_rodata

glabel D_80A1D430
/* 002072 0x80A1D430 */ .word	0x3A9D4952
glabel D_80A1D434
/* 002073 0x80A1D434 */ .word	0x3AAA64C3
glabel D_80A1D438
/* 002074 0x80A1D438 */ .word	0x3E4CCCCD
glabel D_80A1D43C
/* 002075 0x80A1D43C */ .word	0x3E4CCCCD
