glabel func_809F2140
/* 000008 0x809F2140 3C013F80 */ lui	$at, 0x3F80
/* 000009 0x809F2144 3C02809F */ lui	$v0, %hi(D_809F4974)
/* 000010 0x809F2148 3C03809F */ lui	$v1, %hi(D_809F4978)
/* 000011 0x809F214C 3C04809F */ lui	$a0, %hi(D_809F497C)
/* 000012 0x809F2150 44810000 */ mtc1	$at, $f0
/* 000013 0x809F2154 2484497C */ addiu	$a0, $a0, %lo(D_809F497C)
/* 000014 0x809F2158 24634978 */ addiu	$v1, $v1, %lo(D_809F4978)
/* 000015 0x809F215C 24424974 */ addiu	$v0, $v0, %lo(D_809F4974)
/* 000016 0x809F2160 8C4E0000 */ lw	$t6, 0X0($v0)
/* 000017 0x809F2164 2401763D */ li	$at, 0X763D
/* 000018 0x809F2168 8C790000 */ lw	$t9, 0X0($v1)
/* 000019 0x809F216C 000E7880 */ sll	$t7, $t6, 2
/* 000020 0x809F2170 01EE7823 */ subu	$t7, $t7, $t6
/* 000021 0x809F2174 000F7880 */ sll	$t7, $t7, 2
/* 000022 0x809F2178 01EE7823 */ subu	$t7, $t7, $t6
/* 000023 0x809F217C 000F7880 */ sll	$t7, $t7, 2
/* 000024 0x809F2180 01EE7823 */ subu	$t7, $t7, $t6
/* 000025 0x809F2184 000F7880 */ sll	$t7, $t7, 2
/* 000026 0x809F2188 01EE7823 */ subu	$t7, $t7, $t6
/* 000027 0x809F218C 01E1001A */ div	$zero, $t7, $at
/* 000028 0x809F2190 00194080 */ sll	$t0, $t9, 2
/* 000029 0x809F2194 01194023 */ subu	$t0, $t0, $t9
/* 000030 0x809F2198 00084080 */ sll	$t0, $t0, 2
/* 000031 0x809F219C 01194023 */ subu	$t0, $t0, $t9
/* 000032 0x809F21A0 00006810 */ mfhi	$t5
/* 000033 0x809F21A4 00084080 */ sll	$t0, $t0, 2
/* 000034 0x809F21A8 01194023 */ subu	$t0, $t0, $t9
/* 000035 0x809F21AC 00084080 */ sll	$t0, $t0, 2
/* 000036 0x809F21B0 24017663 */ li	$at, 0X7663
/* 000037 0x809F21B4 0101001A */ div	$zero, $t0, $at
/* 000038 0x809F21B8 8C8A0000 */ lw	$t2, 0X0($a0)
/* 000039 0x809F21BC 00007010 */ mfhi	$t6
/* 000040 0x809F21C0 24017673 */ li	$at, 0X7673
/* 000041 0x809F21C4 000A5880 */ sll	$t3, $t2, 2
/* 000042 0x809F21C8 016A5821 */ addu	$t3, $t3, $t2
/* 000043 0x809F21CC 000B5880 */ sll	$t3, $t3, 2
/* 000044 0x809F21D0 016A5821 */ addu	$t3, $t3, $t2
/* 000045 0x809F21D4 000B5880 */ sll	$t3, $t3, 2
/* 000046 0x809F21D8 016A5821 */ addu	$t3, $t3, $t2
/* 000047 0x809F21DC 000B5840 */ sll	$t3, $t3, 1
/* 000048 0x809F21E0 0161001A */ div	$zero, $t3, $at
/* 000049 0x809F21E4 448D2000 */ mtc1	$t5, $f4
/* 000050 0x809F21E8 448E8000 */ mtc1	$t6, $f16
/* 000051 0x809F21EC 00007810 */ mfhi	$t7
/* 000052 0x809F21F0 468021A0 */ cvt.s.w	$f6, $f4
/* 000053 0x809F21F4 AC4D0000 */ sw	$t5, 0X0($v0)
/* 000054 0x809F21F8 AC6E0000 */ sw	$t6, 0X0($v1)
/* 000055 0x809F21FC AC8F0000 */ sw	$t7, 0X0($a0)
/* 000056 0x809F2200 3C01809F */ lui	$at, %hi(D_809F4110)
/* 000057 0x809F2204 468084A0 */ cvt.s.w	$f18, $f16
/* 000058 0x809F2208 C4284110 */ lwc1	$f8, %lo(D_809F4110)($at)
/* 000059 0x809F220C 3C01809F */ lui	$at, %hi(D_809F4114)
/* 000060 0x809F2210 C4244114 */ lwc1	$f4, %lo(D_809F4114)($at)
/* 000061 0x809F2214 448F8000 */ mtc1	$t7, $f16
/* 000062 0x809F2218 46083283 */ div.s	$f10, $f6, $f8
/* 000063 0x809F221C 3C01809F */ lui	$at, %hi(D_809F4118)
/* 000064 0x809F2220 46049183 */ div.s	$f6, $f18, $f4
/* 000065 0x809F2224 C4244118 */ lwc1	$f4, %lo(D_809F4118)($at)
/* 000066 0x809F2228 468084A0 */ cvt.s.w	$f18, $f16
/* 000067 0x809F222C 46065200 */ add.s	$f8, $f10, $f6
/* 000068 0x809F2230 46049283 */ div.s	$f10, $f18, $f4
/* 000069 0x809F2234 460A4080 */ add.s	$f2, $f8, $f10
/* 000070 0x809F2238 4602003E */ c.le.s	$f0, $f2
/* 000071 0x809F223C 00000000 */ nop
/* 000072 0x809F2240 45020007 */ bc1fl .L809F2260
/* 000073 0x809F2244 46001005 */ abs.s	$f0, $f2
/* 000074 0x809F2248 46001081 */ sub.s	$f2, $f2, $f0
.L809F224C:
/* 000075 0x809F224C 4602003E */ c.le.s	$f0, $f2
/* 000076 0x809F2250 00000000 */ nop
/* 000077 0x809F2254 4503FFFD */ bc1tl .L809F224C
/* 000078 0x809F2258 46001081 */ sub.s	$f2, $f2, $f0
/* 000079 0x809F225C 46001005 */ abs.s	$f0, $f2
.L809F2260:
/* 000080 0x809F2260 03E00008 */ jr	$ra
/* 000081 0x809F2264 00000000 */ nop


.section .late_rodata

glabel D_809F4110
/* 002044 0x809F4110 */ .word	0x46EC7A00
glabel D_809F4114
/* 002045 0x809F4114 */ .word	0x46ECC600
glabel D_809F4118
/* 002046 0x809F4118 */ .word	0x46ECE600
