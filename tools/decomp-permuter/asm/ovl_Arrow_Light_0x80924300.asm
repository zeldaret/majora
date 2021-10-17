.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_80924300
/* 000000 0x80924300 AC850160 */ sw	$a1, 0X160($a0)
/* 000001 0x80924304 03E00008 */ jr	$ra
/* 000002 0x80924308 00000000 */ nop

glabel ArrowLight_Init
/* 000003 0x8092430C 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000004 0x80924310 AFB00018 */ sw	$s0, 0X18($sp)
/* 000005 0x80924314 00808025 */ move	$s0, $a0
/* 000006 0x80924318 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000007 0x8092431C AFA50024 */ sw	$a1, 0X24($sp)
/* 000008 0x80924320 3C058092 */ lui	$a1, %hi(D_809260A0)
/* 000009 0x80924324 24A560A0 */ addiu	$a1, $a1, %lo(D_809260A0)
/* 000010 0x80924328 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000011 0x8092432C 02002025 */ move	$a0, $s0
/* 000012 0x80924330 3C013F80 */ lui	$at, 0x3F80
/* 000013 0x80924334 44812000 */ mtc1	$at, $f4
/* 000014 0x80924338 3C058092 */ lui	$a1, %hi(func_809243AC)
/* 000015 0x8092433C A6000144 */ sh	$zero, 0X144($s0)
/* 000016 0x80924340 24A543AC */ addiu	$a1, $a1, %lo(func_809243AC)
/* 000017 0x80924344 02002025 */ move	$a0, $s0
/* 000018 0x80924348 0C2490C0 */ jal	func_80924300
/* 000019 0x8092434C E6040158 */ swc1	$f4, 0X158($s0)
/* 000020 0x80924350 3C053C23 */ lui	$a1, 0x3C23
/* 000021 0x80924354 34A5D70A */ ori	$a1, $a1, 0XD70A
/* 000022 0x80924358 0C02D9F8 */ jal	Actor_SetScale
/* 000023 0x8092435C 02002025 */ move	$a0, $s0
/* 000024 0x80924360 44803000 */ mtc1	$zero, $f6
/* 000025 0x80924364 240E0082 */ li	$t6, 0X82
/* 000026 0x80924368 A20E0148 */ sb	$t6, 0X148($s0)
/* 000027 0x8092436C A6000146 */ sh	$zero, 0X146($s0)
/* 000028 0x80924370 E606015C */ swc1	$f6, 0X15C($s0)
/* 000029 0x80924374 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000030 0x80924378 8FB00018 */ lw	$s0, 0X18($sp)
/* 000031 0x8092437C 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000032 0x80924380 03E00008 */ jr	$ra
/* 000033 0x80924384 00000000 */ nop

glabel ArrowLight_Destroy
/* 000034 0x80924388 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000035 0x8092438C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000036 0x80924390 AFA40018 */ sw	$a0, 0X18($sp)
/* 000037 0x80924394 0C045757 */ jal	func_80115D5C
/* 000038 0x80924398 00A02025 */ move	$a0, $a1
/* 000039 0x8092439C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000040 0x809243A0 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000041 0x809243A4 03E00008 */ jr	$ra
/* 000042 0x809243A8 00000000 */ nop

glabel func_809243AC
/* 000043 0x809243AC 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000044 0x809243B0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000045 0x809243B4 AFA50024 */ sw	$a1, 0X24($sp)
/* 000046 0x809243B8 8C820120 */ lw	$v0, 0X120($a0)
/* 000047 0x809243BC 10400004 */ beqz	$v0, .L809243D0
/* 000048 0x809243C0 00000000 */ nop
/* 000049 0x809243C4 8C4E0138 */ lw	$t6, 0X138($v0)
/* 000050 0x809243C8 55C00006 */ bnezl	$t6, .L809243E4
/* 000051 0x809243CC 84830144 */ lh	$v1, 0X144($a0)
.L809243D0:
/* 000052 0x809243D0 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000053 0x809243D4 00000000 */ nop
/* 000054 0x809243D8 1000002E */ b	.L80924494
/* 000055 0x809243DC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000056 0x809243E0 84830144 */ lh	$v1, 0X144($a0)
.L809243E4:
/* 000057 0x809243E4 2861000A */ slti	$at, $v1, 0XA
/* 000058 0x809243E8 10200002 */ beqz	$at, .L809243F4
/* 000059 0x809243EC 246F0001 */ addiu	$t7, $v1, 0X1
/* 000060 0x809243F0 A48F0144 */ sh	$t7, 0X144($a0)
.L809243F4:
/* 000061 0x809243F4 8C590024 */ lw	$t9, 0X24($v0)
/* 000062 0x809243F8 24830024 */ addiu	$v1, $a0, 0X24
/* 000063 0x809243FC 2405007F */ li	$a1, 0X7F
/* 000064 0x80924400 AC790000 */ sw	$t9, 0X0($v1)
/* 000065 0x80924404 8C580028 */ lw	$t8, 0X28($v0)
/* 000066 0x80924408 AC780004 */ sw	$t8, 0X4($v1)
/* 000067 0x8092440C 8C59002C */ lw	$t9, 0X2C($v0)
/* 000068 0x80924410 AC790008 */ sw	$t9, 0X8($v1)
/* 000069 0x80924414 884900BC */ lwl	$t1, 0XBC($v0)
/* 000070 0x80924418 984900BF */ lwr	$t1, 0XBF($v0)
/* 000071 0x8092441C A88900BC */ swl	$t1, 0XBC($a0)
/* 000072 0x80924420 B88900BF */ swr	$t1, 0XBF($a0)
/* 000073 0x80924424 944900C0 */ lhu	$t1, 0XC0($v0)
/* 000074 0x80924428 A48900C0 */ sh	$t1, 0XC0($a0)
/* 000075 0x8092442C AFA40020 */ sw	$a0, 0X20($sp)
/* 000076 0x80924430 AFA30018 */ sw	$v1, 0X18($sp)
/* 000077 0x80924434 0C02E404 */ jal	func_800B9010
/* 000078 0x80924438 AFA2001C */ sw	$v0, 0X1C($sp)
/* 000079 0x8092443C 8FA2001C */ lw	$v0, 0X1C($sp)
/* 000080 0x80924440 8FA30018 */ lw	$v1, 0X18($sp)
/* 000081 0x80924444 8FA40020 */ lw	$a0, 0X20($sp)
/* 000082 0x80924448 8C4A0120 */ lw	$t2, 0X120($v0)
/* 000083 0x8092444C 55400011 */ bnezl	$t2, .L80924494
/* 000084 0x80924450 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000085 0x80924454 8C6C0000 */ lw	$t4, 0X0($v1)
/* 000086 0x80924458 240D000A */ li	$t5, 0XA
/* 000087 0x8092445C 3C058092 */ lui	$a1, %hi(func_809246C4)
/* 000088 0x80924460 AC8C014C */ sw	$t4, 0X14C($a0)
/* 000089 0x80924464 8C6B0004 */ lw	$t3, 0X4($v1)
/* 000090 0x80924468 24A546C4 */ addiu	$a1, $a1, %lo(func_809246C4)
/* 000091 0x8092446C AC8B0150 */ sw	$t3, 0X150($a0)
/* 000092 0x80924470 8C6C0008 */ lw	$t4, 0X8($v1)
/* 000093 0x80924474 A48D0144 */ sh	$t5, 0X144($a0)
/* 000094 0x80924478 AC8C0154 */ sw	$t4, 0X154($a0)
/* 000095 0x8092447C 0C2490C0 */ jal	func_80924300
/* 000096 0x80924480 AFA40020 */ sw	$a0, 0X20($sp)
/* 000097 0x80924484 8FA40020 */ lw	$a0, 0X20($sp)
/* 000098 0x80924488 240E00FF */ li	$t6, 0XFF
/* 000099 0x8092448C A08E0148 */ sb	$t6, 0X148($a0)
/* 000100 0x80924490 8FBF0014 */ lw	$ra, 0X14($sp)
.L80924494:
/* 000101 0x80924494 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000102 0x80924498 03E00008 */ jr	$ra
/* 000103 0x8092449C 00000000 */ nop

glabel func_809244A0
/* 000104 0x809244A0 44866000 */ mtc1	$a2, $f12
/* 000105 0x809244A4 00000000 */ nop
/* 000106 0x809244A8 C4800000 */ lwc1	$f0, 0X0($a0)
/* 000107 0x809244AC C4A40000 */ lwc1	$f4, 0X0($a1)
/* 000108 0x809244B0 C4820004 */ lwc1	$f2, 0X4($a0)
/* 000109 0x809244B4 C48E0008 */ lwc1	$f14, 0X8($a0)
/* 000110 0x809244B8 46002181 */ sub.s	$f6, $f4, $f0
/* 000111 0x809244BC 460C3202 */ mul.s	$f8, $f6, $f12
/* 000112 0x809244C0 46080280 */ add.s	$f10, $f0, $f8
/* 000113 0x809244C4 E48A0000 */ swc1	$f10, 0X0($a0)
/* 000114 0x809244C8 C4B00004 */ lwc1	$f16, 0X4($a1)
/* 000115 0x809244CC 46028481 */ sub.s	$f18, $f16, $f2
/* 000116 0x809244D0 460C9102 */ mul.s	$f4, $f18, $f12
/* 000117 0x809244D4 46041180 */ add.s	$f6, $f2, $f4
/* 000118 0x809244D8 E4860004 */ swc1	$f6, 0X4($a0)
/* 000119 0x809244DC C4A80008 */ lwc1	$f8, 0X8($a1)
/* 000120 0x809244E0 460E4281 */ sub.s	$f10, $f8, $f14
/* 000121 0x809244E4 460C5402 */ mul.s	$f16, $f10, $f12
/* 000122 0x809244E8 46107480 */ add.s	$f18, $f14, $f16
/* 000123 0x809244EC E4920008 */ swc1	$f18, 0X8($a0)
/* 000124 0x809244F0 03E00008 */ jr	$ra
/* 000125 0x809244F4 00000000 */ nop

glabel func_809244F8
/* 000126 0x809244F8 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000127 0x809244FC 3C014248 */ lui	$at, 0x4248
/* 000128 0x80924500 44811000 */ mtc1	$at, $f2
/* 000129 0x80924504 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000130 0x80924508 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000131 0x8092450C C48000F8 */ lwc1	$f0, 0XF8($a0)
/* 000132 0x80924510 3C018092 */ lui	$at, %hi(D_809260B8)
/* 000133 0x80924514 4602003C */ c.lt.s	$f0, $f2
/* 000134 0x80924518 00000000 */ nop
/* 000135 0x8092451C 45000005 */ bc1f .L80924534
/* 000136 0x80924520 00000000 */ nop
/* 000137 0x80924524 3C014120 */ lui	$at, 0x4120
/* 000138 0x80924528 44816000 */ mtc1	$at, $f12
/* 000139 0x8092452C 10000012 */ b	.L80924578
/* 000140 0x80924530 94830146 */ lhu	$v1, 0X146($a0)
.L80924534:
/* 000141 0x80924534 C42460B8 */ lwc1	$f4, %lo(D_809260B8)($at)
/* 000142 0x80924538 3C018092 */ lui	$at, %hi(D_809260BC)
/* 000143 0x8092453C 4600203C */ c.lt.s	$f4, $f0
/* 000144 0x80924540 00000000 */ nop
/* 000145 0x80924544 45020006 */ bc1fl .L80924560
/* 000146 0x80924548 46020181 */ sub.s	$f6, $f0, $f2
/* 000147 0x8092454C 3C01439B */ lui	$at, 0x439B
/* 000148 0x80924550 44816000 */ mtc1	$at, $f12
/* 000149 0x80924554 10000008 */ b	.L80924578
/* 000150 0x80924558 94830146 */ lhu	$v1, 0X146($a0)
/* 000151 0x8092455C 46020181 */ sub.s	$f6, $f0, $f2
.L80924560:
/* 000152 0x80924560 C42860BC */ lwc1	$f8, %lo(D_809260BC)($at)
/* 000153 0x80924564 3C014120 */ lui	$at, 0x4120
/* 000154 0x80924568 44818000 */ mtc1	$at, $f16
/* 000155 0x8092456C 46083282 */ mul.s	$f10, $f6, $f8
/* 000156 0x80924570 46105300 */ add.s	$f12, $f10, $f16
/* 000157 0x80924574 94830146 */ lhu	$v1, 0X146($a0)
.L80924578:
/* 000158 0x80924578 240A00FF */ li	$t2, 0XFF
/* 000159 0x8092457C 10600029 */ beqz	$v1, .L80924624
/* 000160 0x80924580 246EFFFF */ addiu	$t6, $v1, -0X1
/* 000161 0x80924584 31C3FFFF */ andi	$v1, $t6, 0XFFFF
/* 000162 0x80924588 28610008 */ slti	$at, $v1, 0X8
/* 000163 0x8092458C A48E0146 */ sh	$t6, 0X146($a0)
/* 000164 0x80924590 14200024 */ bnez	$at, .L80924624
/* 000165 0x80924594 00601025 */ move	$v0, $v1
/* 000166 0x80924598 244FFFF8 */ addiu	$t7, $v0, -0X8
/* 000167 0x8092459C 448F9000 */ mtc1	$t7, $f18
/* 000168 0x809245A0 3C018092 */ lui	$at, %hi(D_809260C0)
/* 000169 0x809245A4 C42660C0 */ lwc1	$f6, %lo(D_809260C0)($at)
/* 000170 0x809245A8 46809120 */ cvt.s.w	$f4, $f18
/* 000171 0x809245AC 3C013F80 */ lui	$at, 0x3F80
/* 000172 0x809245B0 44814000 */ mtc1	$at, $f8
/* 000173 0x809245B4 3C014120 */ lui	$at, 0x4120
/* 000174 0x809245B8 44819000 */ mtc1	$at, $f18
/* 000175 0x809245BC 3C014000 */ lui	$at, 0x4000
/* 000176 0x809245C0 46062002 */ mul.s	$f0, $f4, $f6
/* 000177 0x809245C4 C4820158 */ lwc1	$f2, 0X158($a0)
/* 000178 0x809245C8 000240C0 */ sll	$t0, $v0, 3
/* 000179 0x809245CC 01024021 */ addu	$t0, $t0, $v0
/* 000180 0x809245D0 00084080 */ sll	$t0, $t0, 2
/* 000181 0x809245D4 01024023 */ subu	$t0, $t0, $v0
/* 000182 0x809245D8 2509FEE8 */ addiu	$t1, $t0, -0X118
/* 000183 0x809245DC 46000002 */ mul.s	$f0, $f0, $f0
/* 000184 0x809245E0 46004281 */ sub.s	$f10, $f8, $f0
/* 000185 0x809245E4 44814000 */ mtc1	$at, $f8
/* 000186 0x809245E8 3C018092 */ lui	$at, %hi(D_809260C4)
/* 000187 0x809245EC 460C5402 */ mul.s	$f16, $f10, $f12
/* 000188 0x809245F0 46024281 */ sub.s	$f10, $f8, $f2
/* 000189 0x809245F4 46128100 */ add.s	$f4, $f16, $f18
/* 000190 0x809245F8 4600218D */ trunc.w.s	$f6, $f4
/* 000191 0x809245FC 44193000 */ mfc1	$t9, $f6
/* 000192 0x80924600 00000000 */ nop
/* 000193 0x80924604 A4990144 */ sh	$t9, 0X144($a0)
/* 000194 0x80924608 C43060C4 */ lwc1	$f16, %lo(D_809260C4)($at)
/* 000195 0x8092460C 28410010 */ slti	$at, $v0, 0X10
/* 000196 0x80924610 46105482 */ mul.s	$f18, $f10, $f16
/* 000197 0x80924614 46121100 */ add.s	$f4, $f2, $f18
/* 000198 0x80924618 10200002 */ beqz	$at, .L80924624
/* 000199 0x8092461C E4840158 */ swc1	$f4, 0X158($a0)
/* 000200 0x80924620 A0890148 */ sb	$t1, 0X148($a0)
.L80924624:
/* 000201 0x80924624 28610009 */ slti	$at, $v1, 0X9
/* 000202 0x80924628 1420000E */ bnez	$at, .L80924664
/* 000203 0x8092462C 00601025 */ move	$v0, $v1
/* 000204 0x80924630 3C013F80 */ lui	$at, 0x3F80
/* 000205 0x80924634 44813000 */ mtc1	$at, $f6
/* 000206 0x80924638 C480015C */ lwc1	$f0, 0X15C($a0)
/* 000207 0x8092463C 3C013E80 */ lui	$at, 0x3E80
/* 000208 0x80924640 4606003C */ c.lt.s	$f0, $f6
/* 000209 0x80924644 00000000 */ nop
/* 000210 0x80924648 45020012 */ bc1fl .L80924694
/* 000211 0x8092464C 28410008 */ slti	$at, $v0, 0X8
/* 000212 0x80924650 44814000 */ mtc1	$at, $f8
/* 000213 0x80924654 94820146 */ lhu	$v0, 0X146($a0)
/* 000214 0x80924658 46080280 */ add.s	$f10, $f0, $f8
/* 000215 0x8092465C 1000000C */ b	.L80924690
/* 000216 0x80924660 E48A015C */ swc1	$f10, 0X15C($a0)
.L80924664:
/* 000217 0x80924664 C480015C */ lwc1	$f0, 0X15C($a0)
/* 000218 0x80924668 44808000 */ mtc1	$zero, $f16
/* 000219 0x8092466C 3C013E00 */ lui	$at, 0x3E00
/* 000220 0x80924670 4600803C */ c.lt.s	$f16, $f0
/* 000221 0x80924674 00000000 */ nop
/* 000222 0x80924678 45020006 */ bc1fl .L80924694
/* 000223 0x8092467C 28410008 */ slti	$at, $v0, 0X8
/* 000224 0x80924680 44819000 */ mtc1	$at, $f18
/* 000225 0x80924684 94820146 */ lhu	$v0, 0X146($a0)
/* 000226 0x80924688 46120101 */ sub.s	$f4, $f0, $f18
/* 000227 0x8092468C E484015C */ swc1	$f4, 0X15C($a0)
.L80924690:
/* 000228 0x80924690 28410008 */ slti	$at, $v0, 0X8
.L80924694:
/* 000229 0x80924694 10200003 */ beqz	$at, .L809246A4
/* 000230 0x80924698 00000000 */ nop
/* 000231 0x8092469C A0800148 */ sb	$zero, 0X148($a0)
/* 000232 0x809246A0 94820146 */ lhu	$v0, 0X146($a0)
.L809246A4:
/* 000233 0x809246A4 54400004 */ bnezl	$v0, .L809246B8
/* 000234 0x809246A8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000235 0x809246AC 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000236 0x809246B0 A48A0146 */ sh	$t2, 0X146($a0)
/* 000237 0x809246B4 8FBF0014 */ lw	$ra, 0X14($sp)
.L809246B8:
/* 000238 0x809246B8 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000239 0x809246BC 03E00008 */ jr	$ra
/* 000240 0x809246C0 00000000 */ nop

glabel func_809246C4
/* 000241 0x809246C4 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 000242 0x809246C8 AFB00018 */ sw	$s0, 0X18($sp)
/* 000243 0x809246CC 00808025 */ move	$s0, $a0
/* 000244 0x809246D0 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000245 0x809246D4 AFA5003C */ sw	$a1, 0X3C($sp)
/* 000246 0x809246D8 8E020120 */ lw	$v0, 0X120($s0)
/* 000247 0x809246DC 10400004 */ beqz	$v0, .L809246F0
/* 000248 0x809246E0 00000000 */ nop
/* 000249 0x809246E4 8C4E0138 */ lw	$t6, 0X138($v0)
/* 000250 0x809246E8 55C00006 */ bnezl	$t6, .L80924704
/* 000251 0x809246EC 8C580024 */ lw	$t8, 0X24($v0)
.L809246F0:
/* 000252 0x809246F0 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000253 0x809246F4 02002025 */ move	$a0, $s0
/* 000254 0x809246F8 10000043 */ b	.L80924808
/* 000255 0x809246FC 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000256 0x80924700 8C580024 */ lw	$t8, 0X24($v0)
.L80924704:
/* 000257 0x80924704 26050024 */ addiu	$a1, $s0, 0X24
/* 000258 0x80924708 2604014C */ addiu	$a0, $s0, 0X14C
/* 000259 0x8092470C ACB80000 */ sw	$t8, 0X0($a1)
/* 000260 0x80924710 8C4F0028 */ lw	$t7, 0X28($v0)
/* 000261 0x80924714 ACAF0004 */ sw	$t7, 0X4($a1)
/* 000262 0x80924718 8C58002C */ lw	$t8, 0X2C($v0)
/* 000263 0x8092471C ACB80008 */ sw	$t8, 0X8($a1)
/* 000264 0x80924720 884800BC */ lwl	$t0, 0XBC($v0)
/* 000265 0x80924724 984800BF */ lwr	$t0, 0XBF($v0)
/* 000266 0x80924728 AA0800BC */ swl	$t0, 0XBC($s0)
/* 000267 0x8092472C BA0800BF */ swr	$t0, 0XBF($s0)
/* 000268 0x80924730 944800C0 */ lhu	$t0, 0XC0($v0)
/* 000269 0x80924734 A60800C0 */ sh	$t0, 0XC0($s0)
/* 000270 0x80924738 AFA50028 */ sw	$a1, 0X28($sp)
/* 000271 0x8092473C AFA40024 */ sw	$a0, 0X24($sp)
/* 000272 0x80924740 0C03FE21 */ jal	Math_Vec3f_DistXYZ
/* 000273 0x80924744 AFA20034 */ sw	$v0, 0X34($sp)
/* 000274 0x80924748 3C013F80 */ lui	$at, 0x3F80
/* 000275 0x8092474C 44816000 */ mtc1	$at, $f12
/* 000276 0x80924750 3C018092 */ lui	$at, %hi(D_809260C8)
/* 000277 0x80924754 C42460C8 */ lwc1	$f4, %lo(D_809260C8)($at)
/* 000278 0x80924758 8FA20034 */ lw	$v0, 0X34($sp)
/* 000279 0x8092475C 8FA40024 */ lw	$a0, 0X24($sp)
/* 000280 0x80924760 46040082 */ mul.s	$f2, $f0, $f4
/* 000281 0x80924764 8FA50028 */ lw	$a1, 0X28($sp)
/* 000282 0x80924768 3C063D4C */ lui	$a2, 0x3D4C
/* 000283 0x8092476C 34C6CCCD */ ori	$a2, $a2, 0XCCCD
/* 000284 0x80924770 460C103C */ c.lt.s	$f2, $f12
/* 000285 0x80924774 E6020158 */ swc1	$f2, 0X158($s0)
/* 000286 0x80924778 45000002 */ bc1f .L80924784
/* 000287 0x8092477C 00000000 */ nop
/* 000288 0x80924780 E60C0158 */ swc1	$f12, 0X158($s0)
.L80924784:
/* 000289 0x80924784 0C249128 */ jal	func_809244A0
/* 000290 0x80924788 AFA20034 */ sw	$v0, 0X34($sp)
/* 000291 0x8092478C 8FA20034 */ lw	$v0, 0X34($sp)
/* 000292 0x80924790 02002025 */ move	$a0, $s0
/* 000293 0x80924794 90490261 */ lbu	$t1, 0X261($v0)
/* 000294 0x80924798 312A0001 */ andi	$t2, $t1, 0X1
/* 000295 0x8092479C 5140000D */ beqzl	$t2, .L809247D4
/* 000296 0x809247A0 904D0260 */ lbu	$t5, 0X260($v0)
/* 000297 0x809247A4 0C02E3B2 */ jal	func_800B8EC8
/* 000298 0x809247A8 2405183C */ li	$a1, 0X183C
/* 000299 0x809247AC 3C058092 */ lui	$a1, %hi(func_809244F8)
/* 000300 0x809247B0 24A544F8 */ addiu	$a1, $a1, %lo(func_809244F8)
/* 000301 0x809247B4 0C2490C0 */ jal	func_80924300
/* 000302 0x809247B8 02002025 */ move	$a0, $s0
/* 000303 0x809247BC 240B0020 */ li	$t3, 0X20
/* 000304 0x809247C0 240C00FF */ li	$t4, 0XFF
/* 000305 0x809247C4 A60B0146 */ sh	$t3, 0X146($s0)
/* 000306 0x809247C8 1000000E */ b	.L80924804
/* 000307 0x809247CC A20C0148 */ sb	$t4, 0X148($s0)
/* 000308 0x809247D0 904D0260 */ lbu	$t5, 0X260($v0)
.L809247D4:
/* 000309 0x809247D4 29A10022 */ slti	$at, $t5, 0X22
/* 000310 0x809247D8 5020000B */ beqzl	$at, .L80924808
/* 000311 0x809247DC 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000312 0x809247E0 92020148 */ lbu	$v0, 0X148($s0)
/* 000313 0x809247E4 28410023 */ slti	$at, $v0, 0X23
/* 000314 0x809247E8 10200005 */ beqz	$at, .L80924800
/* 000315 0x809247EC 244EFFE7 */ addiu	$t6, $v0, -0X19
/* 000316 0x809247F0 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000317 0x809247F4 02002025 */ move	$a0, $s0
/* 000318 0x809247F8 10000003 */ b	.L80924808
/* 000319 0x809247FC 8FBF001C */ lw	$ra, 0X1C($sp)
.L80924800:
/* 000320 0x80924800 A20E0148 */ sb	$t6, 0X148($s0)
.L80924804:
/* 000321 0x80924804 8FBF001C */ lw	$ra, 0X1C($sp)
.L80924808:
/* 000322 0x80924808 8FB00018 */ lw	$s0, 0X18($sp)
/* 000323 0x8092480C 27BD0038 */ addiu	$sp, $sp, 0X38
/* 000324 0x80924810 03E00008 */ jr	$ra
/* 000325 0x80924814 00000000 */ nop

glabel ArrowLight_Update
/* 000326 0x80924818 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000327 0x8092481C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000328 0x80924820 3C020001 */ lui	$v0, 0x0001
/* 000329 0x80924824 00451021 */ addu	$v0, $v0, $a1
/* 000330 0x80924828 9042682A */ lbu	$v0, 0X682A($v0)
/* 000331 0x8092482C 2401000E */ li	$at, 0XE
/* 000332 0x80924830 10410003 */ beq	$v0, $at, .L80924840
/* 000333 0x80924834 24010012 */ li	$at, 0X12
/* 000334 0x80924838 54410006 */ bnel	$v0, $at, .L80924854
/* 000335 0x8092483C 8C990160 */ lw	$t9, 0X160($a0)
.L80924840:
/* 000336 0x80924840 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000337 0x80924844 00000000 */ nop
/* 000338 0x80924848 10000005 */ b	.L80924860
/* 000339 0x8092484C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000340 0x80924850 8C990160 */ lw	$t9, 0X160($a0)
.L80924854:
/* 000341 0x80924854 0320F809 */ jalr	$t9
/* 000342 0x80924858 00000000 */ nop
/* 000343 0x8092485C 8FBF0014 */ lw	$ra, 0X14($sp)
.L80924860:
/* 000344 0x80924860 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000345 0x80924864 03E00008 */ jr	$ra
/* 000346 0x80924868 00000000 */ nop

glabel ArrowLight_Draw
/* 000347 0x8092486C 27BDFF80 */ addiu	$sp, $sp, -0X80
/* 000348 0x80924870 AFBF003C */ sw	$ra, 0X3C($sp)
/* 000349 0x80924874 AFB00038 */ sw	$s0, 0X38($sp)
/* 000350 0x80924878 8CAE009C */ lw	$t6, 0X9C($a1)
/* 000351 0x8092487C AFAE0074 */ sw	$t6, 0X74($sp)
/* 000352 0x80924880 8C830120 */ lw	$v1, 0X120($a0)
/* 000353 0x80924884 506000F0 */ beqzl	$v1, .L80924C48
/* 000354 0x80924888 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000355 0x8092488C 8C6F0138 */ lw	$t7, 0X138($v1)
/* 000356 0x80924890 51E000ED */ beqzl	$t7, .L80924C48
/* 000357 0x80924894 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000358 0x80924898 94980146 */ lhu	$t8, 0X146($a0)
/* 000359 0x8092489C 00003825 */ move	$a3, $zero
/* 000360 0x809248A0 2B0100FF */ slti	$at, $t8, 0XFF
/* 000361 0x809248A4 502000E8 */ beqzl	$at, .L80924C48
/* 000362 0x809248A8 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000363 0x809248AC 90790261 */ lbu	$t9, 0X261($v1)
/* 000364 0x809248B0 332B0002 */ andi	$t3, $t9, 0X2
/* 000365 0x809248B4 51600004 */ beqzl	$t3, .L809248C8
/* 000366 0x809248B8 00601025 */ move	$v0, $v1
/* 000367 0x809248BC 10000002 */ b	.L809248C8
/* 000368 0x809248C0 00801025 */ move	$v0, $a0
/* 000369 0x809248C4 00601025 */ move	$v0, $v1
.L809248C8:
/* 000370 0x809248C8 8CB00000 */ lw	$s0, 0X0($a1)
/* 000371 0x809248CC C44C0024 */ lwc1	$f12, 0X24($v0)
/* 000372 0x809248D0 C44E0028 */ lwc1	$f14, 0X28($v0)
/* 000373 0x809248D4 8C46002C */ lw	$a2, 0X2C($v0)
/* 000374 0x809248D8 AFA50084 */ sw	$a1, 0X84($sp)
/* 000375 0x809248DC AFA40080 */ sw	$a0, 0X80($sp)
/* 000376 0x809248E0 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 000377 0x809248E4 AFA2006C */ sw	$v0, 0X6C($sp)
/* 000378 0x809248E8 8FA2006C */ lw	$v0, 0X6C($sp)
/* 000379 0x809248EC 24050001 */ li	$a1, 0X1
/* 000380 0x809248F0 0C06026B */ jal	SysMatrix_InsertYRotation_s
/* 000381 0x809248F4 844400BE */ lh	$a0, 0XBE($v0)
/* 000382 0x809248F8 8FA2006C */ lw	$v0, 0X6C($sp)
/* 000383 0x809248FC 24050001 */ li	$a1, 0X1
/* 000384 0x80924900 0C06011E */ jal	SysMatrix_InsertXRotation_s
/* 000385 0x80924904 844400BC */ lh	$a0, 0XBC($v0)
/* 000386 0x80924908 8FA2006C */ lw	$v0, 0X6C($sp)
/* 000387 0x8092490C 24050001 */ li	$a1, 0X1
/* 000388 0x80924910 0C06033E */ jal	SysMatrix_InsertZRotation_s
/* 000389 0x80924914 844400C0 */ lh	$a0, 0XC0($v0)
/* 000390 0x80924918 3C018092 */ lui	$at, %hi(D_809260CC)
/* 000391 0x8092491C C42C60CC */ lwc1	$f12, %lo(D_809260CC)($at)
/* 000392 0x80924920 24070001 */ li	$a3, 0X1
/* 000393 0x80924924 44066000 */ mfc1	$a2, $f12
/* 000394 0x80924928 0C0600E7 */ jal	SysMatrix_InsertScale
/* 000395 0x8092492C 46006386 */ mov.s	$f14, $f12
/* 000396 0x80924930 8FAC0080 */ lw	$t4, 0X80($sp)
/* 000397 0x80924934 44802000 */ mtc1	$zero, $f4
/* 000398 0x80924938 C586015C */ lwc1	$f6, 0X15C($t4)
/* 000399 0x8092493C 4606203C */ c.lt.s	$f4, $f6
/* 000400 0x80924940 00000000 */ nop
/* 000401 0x80924944 4502003B */ bc1fl .L80924A34
/* 000402 0x80924948 8FAF0084 */ lw	$t7, 0X84($sp)
/* 000403 0x8092494C 0C04AFF1 */ jal	func_8012BFC4
/* 000404 0x80924950 8E0402C0 */ lw	$a0, 0X2C0($s0)
/* 000405 0x80924954 AE0202C0 */ sw	$v0, 0X2C0($s0)
/* 000406 0x80924958 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000407 0x8092495C 3C0EFA00 */ lui	$t6, 0xFA00
/* 000408 0x80924960 3C0141F0 */ lui	$at, 0x41F0
/* 000409 0x80924964 244D0008 */ addiu	$t5, $v0, 0X8
/* 000410 0x80924968 AE0D02C0 */ sw	$t5, 0X2C0($s0)
/* 000411 0x8092496C AC4E0000 */ sw	$t6, 0X0($v0)
/* 000412 0x80924970 8FAF0080 */ lw	$t7, 0X80($sp)
/* 000413 0x80924974 44814000 */ mtc1	$at, $f8
/* 000414 0x80924978 3C014220 */ lui	$at, 0x4220
/* 000415 0x8092497C C5E0015C */ lwc1	$f0, 0X15C($t7)
/* 000416 0x80924980 44819000 */ mtc1	$at, $f18
/* 000417 0x80924984 3C014316 */ lui	$at, 0x4316
/* 000418 0x80924988 46080282 */ mul.s	$f10, $f0, $f8
/* 000419 0x8092498C 44814000 */ mtc1	$at, $f8
/* 000420 0x80924990 3C0EE300 */ lui	$t6, 0xE300
/* 000421 0x80924994 46009102 */ mul.s	$f4, $f18, $f0
/* 000422 0x80924998 4600540D */ trunc.w.s	$f16, $f10
/* 000423 0x8092499C 46004282 */ mul.s	$f10, $f8, $f0
/* 000424 0x809249A0 440C8000 */ mfc1	$t4, $f16
/* 000425 0x809249A4 4600218D */ trunc.w.s	$f6, $f4
/* 000426 0x809249A8 000C6E00 */ sll	$t5, $t4, 24
/* 000427 0x809249AC 4600540D */ trunc.w.s	$f16, $f10
/* 000428 0x809249B0 44183000 */ mfc1	$t8, $f6
/* 000429 0x809249B4 00000000 */ nop
/* 000430 0x809249B8 331900FF */ andi	$t9, $t8, 0XFF
/* 000431 0x809249BC 44188000 */ mfc1	$t8, $f16
/* 000432 0x809249C0 00195C00 */ sll	$t3, $t9, 16
/* 000433 0x809249C4 01AB6025 */ or	$t4, $t5, $t3
/* 000434 0x809249C8 331900FF */ andi	$t9, $t8, 0XFF
/* 000435 0x809249CC 01996825 */ or	$t5, $t4, $t9
/* 000436 0x809249D0 AC4D0004 */ sw	$t5, 0X4($v0)
/* 000437 0x809249D4 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000438 0x809249D8 35CE1A01 */ ori	$t6, $t6, 0X1A01
/* 000439 0x809249DC 240F0030 */ li	$t7, 0X30
/* 000440 0x809249E0 244B0008 */ addiu	$t3, $v0, 0X8
/* 000441 0x809249E4 AE0B02C0 */ sw	$t3, 0X2C0($s0)
/* 000442 0x809249E8 AC4F0004 */ sw	$t7, 0X4($v0)
/* 000443 0x809249EC AC4E0000 */ sw	$t6, 0X0($v0)
/* 000444 0x809249F0 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000445 0x809249F4 3C0CE300 */ lui	$t4, 0xE300
/* 000446 0x809249F8 358C1801 */ ori	$t4, $t4, 0X1801
/* 000447 0x809249FC 24580008 */ addiu	$t8, $v0, 0X8
/* 000448 0x80924A00 AE1802C0 */ sw	$t8, 0X2C0($s0)
/* 000449 0x80924A04 241900C0 */ li	$t9, 0XC0
/* 000450 0x80924A08 AC590004 */ sw	$t9, 0X4($v0)
/* 000451 0x80924A0C AC4C0000 */ sw	$t4, 0X0($v0)
/* 000452 0x80924A10 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000453 0x80924A14 3C0E0E00 */ lui	$t6, 0x0E00
/* 000454 0x80924A18 25CE02E0 */ addiu	$t6, $t6, 0X2E0
/* 000455 0x80924A1C 244D0008 */ addiu	$t5, $v0, 0X8
/* 000456 0x80924A20 AE0D02C0 */ sw	$t5, 0X2C0($s0)
/* 000457 0x80924A24 3C0BDE00 */ lui	$t3, 0xDE00
/* 000458 0x80924A28 AC4B0000 */ sw	$t3, 0X0($v0)
/* 000459 0x80924A2C AC4E0004 */ sw	$t6, 0X4($v0)
/* 000460 0x80924A30 8FAF0084 */ lw	$t7, 0X84($sp)
.L80924A34:
/* 000461 0x80924A34 0C04B0B7 */ jal	func_8012C2DC
/* 000462 0x80924A38 8DE40000 */ lw	$a0, 0X0($t7)
/* 000463 0x80924A3C 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000464 0x80924A40 3C0CFA00 */ lui	$t4, 0xFA00
/* 000465 0x80924A44 358C8080 */ ori	$t4, $t4, 0X8080
/* 000466 0x80924A48 24580008 */ addiu	$t8, $v0, 0X8
/* 000467 0x80924A4C AE1802C0 */ sw	$t8, 0X2C0($s0)
/* 000468 0x80924A50 AC4C0000 */ sw	$t4, 0X0($v0)
/* 000469 0x80924A54 8FB90080 */ lw	$t9, 0X80($sp)
/* 000470 0x80924A58 2401AA00 */ li	$at, -0X5600
/* 000471 0x80924A5C 3C18FB00 */ lui	$t8, 0xFB00
/* 000472 0x80924A60 932B0148 */ lbu	$t3, 0X148($t9)
/* 000473 0x80924A64 24044000 */ li	$a0, 0X4000
/* 000474 0x80924A68 00002825 */ move	$a1, $zero
/* 000475 0x80924A6C 01617025 */ or	$t6, $t3, $at
/* 000476 0x80924A70 AC4E0004 */ sw	$t6, 0X4($v0)
/* 000477 0x80924A74 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000478 0x80924A78 3C0CFFFF */ lui	$t4, 0xFFFF
/* 000479 0x80924A7C 358C0080 */ ori	$t4, $t4, 0X80
/* 000480 0x80924A80 244F0008 */ addiu	$t7, $v0, 0X8
/* 000481 0x80924A84 AE0F02C0 */ sw	$t7, 0X2C0($s0)
/* 000482 0x80924A88 AC4C0004 */ sw	$t4, 0X4($v0)
/* 000483 0x80924A8C AC580000 */ sw	$t8, 0X0($v0)
/* 000484 0x80924A90 00003025 */ move	$a2, $zero
/* 000485 0x80924A94 0C06040F */ jal	SysMatrix_InsertRotation
/* 000486 0x80924A98 24070001 */ li	$a3, 0X1
/* 000487 0x80924A9C 8FB90080 */ lw	$t9, 0X80($sp)
/* 000488 0x80924AA0 972D0146 */ lhu	$t5, 0X146($t9)
/* 000489 0x80924AA4 51A00009 */ beqzl	$t5, .L80924ACC
/* 000490 0x80924AA8 44806000 */ mtc1	$zero, $f12
/* 000491 0x80924AAC 44806000 */ mtc1	$zero, $f12
/* 000492 0x80924AB0 24070001 */ li	$a3, 0X1
/* 000493 0x80924AB4 44066000 */ mfc1	$a2, $f12
/* 000494 0x80924AB8 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 000495 0x80924ABC 46006386 */ mov.s	$f14, $f12
/* 000496 0x80924AC0 10000008 */ b	.L80924AE4
/* 000497 0x80924AC4 8FAB0080 */ lw	$t3, 0X80($sp)
/* 000498 0x80924AC8 44806000 */ mtc1	$zero, $f12
.L80924ACC:
/* 000499 0x80924ACC 3C018092 */ lui	$at, %hi(D_809260D0)
/* 000500 0x80924AD0 C42E60D0 */ lwc1	$f14, %lo(D_809260D0)($at)
/* 000501 0x80924AD4 24060000 */ li	$a2, 0X0
/* 000502 0x80924AD8 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 000503 0x80924ADC 24070001 */ li	$a3, 0X1
/* 000504 0x80924AE0 8FAB0080 */ lw	$t3, 0X80($sp)
.L80924AE4:
/* 000505 0x80924AE4 3C018092 */ lui	$at, %hi(D_809260D4)
/* 000506 0x80924AE8 C42660D4 */ lwc1	$f6, %lo(D_809260D4)($at)
/* 000507 0x80924AEC 856E0144 */ lh	$t6, 0X144($t3)
/* 000508 0x80924AF0 3C014080 */ lui	$at, 0x4080
/* 000509 0x80924AF4 44815000 */ mtc1	$at, $f10
/* 000510 0x80924AF8 448E9000 */ mtc1	$t6, $f18
/* 000511 0x80924AFC C5680158 */ lwc1	$f8, 0X158($t3)
/* 000512 0x80924B00 24070001 */ li	$a3, 0X1
/* 000513 0x80924B04 46809120 */ cvt.s.w	$f4, $f18
/* 000514 0x80924B08 46062302 */ mul.s	$f12, $f4, $f6
/* 000515 0x80924B0C 44066000 */ mfc1	$a2, $f12
/* 000516 0x80924B10 460A4382 */ mul.s	$f14, $f8, $f10
/* 000517 0x80924B14 0C0600E7 */ jal	SysMatrix_InsertScale
/* 000518 0x80924B18 00000000 */ nop
/* 000519 0x80924B1C 44806000 */ mtc1	$zero, $f12
/* 000520 0x80924B20 3C01C42F */ lui	$at, 0xC42F
/* 000521 0x80924B24 44817000 */ mtc1	$at, $f14
/* 000522 0x80924B28 44066000 */ mfc1	$a2, $f12
/* 000523 0x80924B2C 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 000524 0x80924B30 24070001 */ li	$a3, 0X1
/* 000525 0x80924B34 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000526 0x80924B38 3C18DA38 */ lui	$t8, 0xDA38
/* 000527 0x80924B3C 37180003 */ ori	$t8, $t8, 0X3
/* 000528 0x80924B40 244F0008 */ addiu	$t7, $v0, 0X8
/* 000529 0x80924B44 AE0F02C0 */ sw	$t7, 0X2C0($s0)
/* 000530 0x80924B48 AC580000 */ sw	$t8, 0X0($v0)
/* 000531 0x80924B4C 8FAC0084 */ lw	$t4, 0X84($sp)
/* 000532 0x80924B50 8D840000 */ lw	$a0, 0X0($t4)
/* 000533 0x80924B54 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000534 0x80924B58 AFA20048 */ sw	$v0, 0X48($sp)
/* 000535 0x80924B5C 8FA30048 */ lw	$v1, 0X48($sp)
/* 000536 0x80924B60 3C09DE00 */ lui	$t1, 0xDE00
/* 000537 0x80924B64 00002825 */ move	$a1, $zero
/* 000538 0x80924B68 AC620004 */ sw	$v0, 0X4($v1)
/* 000539 0x80924B6C 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000540 0x80924B70 3C0D8092 */ lui	$t5, %hi(D_80925F10)
/* 000541 0x80924B74 25AD5F10 */ addiu	$t5, $t5, %lo(D_80925F10)
/* 000542 0x80924B78 24590008 */ addiu	$t9, $v0, 0X8
/* 000543 0x80924B7C AE1902C0 */ sw	$t9, 0X2C0($s0)
/* 000544 0x80924B80 AC4D0004 */ sw	$t5, 0X4($v0)
/* 000545 0x80924B84 AC490000 */ sw	$t1, 0X0($v0)
/* 000546 0x80924B88 240301FF */ li	$v1, 0X1FF
/* 000547 0x80924B8C 8FAA0074 */ lw	$t2, 0X74($sp)
/* 000548 0x80924B90 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000549 0x80924B94 000A7880 */ sll	$t7, $t2, 2
/* 000550 0x80924B98 01EA7821 */ addu	$t7, $t7, $t2
/* 000551 0x80924B9C 244E0008 */ addiu	$t6, $v0, 0X8
/* 000552 0x80924BA0 AE0E02C0 */ sw	$t6, 0X2C0($s0)
/* 000553 0x80924BA4 AC490000 */ sw	$t1, 0X0($v0)
/* 000554 0x80924BA8 8FAB0084 */ lw	$t3, 0X84($sp)
/* 000555 0x80924BAC 31F801FF */ andi	$t8, $t7, 0X1FF
/* 000556 0x80924BB0 00783023 */ subu	$a2, $v1, $t8
/* 000557 0x80924BB4 8D640000 */ lw	$a0, 0X0($t3)
/* 000558 0x80924BB8 000A7080 */ sll	$t6, $t2, 2
/* 000559 0x80924BBC 01CA7021 */ addu	$t6, $t6, $t2
/* 000560 0x80924BC0 000AC100 */ sll	$t8, $t2, 4
/* 000561 0x80924BC4 030AC023 */ subu	$t8, $t8, $t2
/* 000562 0x80924BC8 000E7040 */ sll	$t6, $t6, 1
/* 000563 0x80924BCC 240C0004 */ li	$t4, 0X4
/* 000564 0x80924BD0 AFAC0010 */ sw	$t4, 0X10($sp)
/* 000565 0x80924BD4 31CB01FF */ andi	$t3, $t6, 0X1FF
/* 000566 0x80924BD8 0018C040 */ sll	$t8, $t8, 1
/* 000567 0x80924BDC 24190020 */ li	$t9, 0X20
/* 000568 0x80924BE0 240D0001 */ li	$t5, 0X1
/* 000569 0x80924BE4 AFAD0018 */ sw	$t5, 0X18($sp)
/* 000570 0x80924BE8 AFB90014 */ sw	$t9, 0X14($sp)
/* 000571 0x80924BEC 330C01FF */ andi	$t4, $t8, 0X1FF
/* 000572 0x80924BF0 006CC823 */ subu	$t9, $v1, $t4
/* 000573 0x80924BF4 240D0008 */ li	$t5, 0X8
/* 000574 0x80924BF8 006B7823 */ subu	$t7, $v1, $t3
/* 000575 0x80924BFC 240E0010 */ li	$t6, 0X10
/* 000576 0x80924C00 AFAE0028 */ sw	$t6, 0X28($sp)
/* 000577 0x80924C04 AFAF001C */ sw	$t7, 0X1C($sp)
/* 000578 0x80924C08 AFAD0024 */ sw	$t5, 0X24($sp)
/* 000579 0x80924C0C AFB90020 */ sw	$t9, 0X20($sp)
/* 000580 0x80924C10 00003825 */ move	$a3, $zero
/* 000581 0x80924C14 0C04B2F4 */ jal	Gfx_TwoTexScroll
/* 000582 0x80924C18 AFA20040 */ sw	$v0, 0X40($sp)
/* 000583 0x80924C1C 8FA80040 */ lw	$t0, 0X40($sp)
/* 000584 0x80924C20 3C0FDE00 */ lui	$t7, 0xDE00
/* 000585 0x80924C24 AD020004 */ sw	$v0, 0X4($t0)
/* 000586 0x80924C28 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000587 0x80924C2C 3C188092 */ lui	$t8, %hi(D_80925FC0)
/* 000588 0x80924C30 27185FC0 */ addiu	$t8, $t8, %lo(D_80925FC0)
/* 000589 0x80924C34 244B0008 */ addiu	$t3, $v0, 0X8
/* 000590 0x80924C38 AE0B02C0 */ sw	$t3, 0X2C0($s0)
/* 000591 0x80924C3C AC580004 */ sw	$t8, 0X4($v0)
/* 000592 0x80924C40 AC4F0000 */ sw	$t7, 0X0($v0)
/* 000593 0x80924C44 8FBF003C */ lw	$ra, 0X3C($sp)
.L80924C48:
/* 000594 0x80924C48 8FB00038 */ lw	$s0, 0X38($sp)
/* 000595 0x80924C4C 27BD0080 */ addiu	$sp, $sp, 0X80
/* 000596 0x80924C50 03E00008 */ jr	$ra
/* 000597 0x80924C54 00000000 */ nop
/* 000598 0x80924C58 00000000 */ nop
/* 000599 0x80924C5C 00000000 */ nop
