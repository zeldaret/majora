glabel func_80A28760
/* 001168 0x80A28760 94820090 */ lhu	$v0, 0X90($a0)
/* 001169 0x80A28764 3C014170 */ lui	$at, 0x4170
/* 001170 0x80A28768 44812000 */ mtc1	$at, $f4
/* 001171 0x80A2876C 304E0008 */ andi	$t6, $v0, 0X8
/* 001172 0x80A28770 11C00015 */ beqz	$t6, .L80A287C8
/* 001173 0x80A28774 E4840070 */ swc1	$f4, 0X70($a0)
/* 001174 0x80A28778 84850092 */ lh	$a1, 0X92($a0)
/* 001175 0x80A2877C 84860086 */ lh	$a2, 0X86($a0)
/* 001176 0x80A28780 304FFFF7 */ andi	$t7, $v0, 0XFFF7
/* 001177 0x80A28784 A48F0090 */ sh	$t7, 0X90($a0)
/* 001178 0x80A28788 00A61823 */ subu	$v1, $a1, $a2
/* 001179 0x80A2878C 00031C00 */ sll	$v1, $v1, 16
/* 001180 0x80A28790 00031C03 */ sra	$v1, $v1, 16
/* 001181 0x80A28794 28613C01 */ slti	$at, $v1, 0X3C01
/* 001182 0x80A28798 14200003 */ bnez	$at, .L80A287A8
/* 001183 0x80A2879C 24D83C00 */ addiu	$t8, $a2, 0X3C00
/* 001184 0x80A287A0 1000000B */ b	.L80A287D0
/* 001185 0x80A287A4 A4980032 */ sh	$t8, 0X32($a0)
.L80A287A8:
/* 001186 0x80A287A8 2861C400 */ slti	$at, $v1, -0X3C00
/* 001187 0x80A287AC 10200003 */ beqz	$at, .L80A287BC
/* 001188 0x80A287B0 24D9C400 */ addiu	$t9, $a2, -0X3C00
/* 001189 0x80A287B4 10000006 */ b	.L80A287D0
/* 001190 0x80A287B8 A4990032 */ sh	$t9, 0X32($a0)
.L80A287BC:
/* 001191 0x80A287BC A4850032 */ sh	$a1, 0X32($a0)
/* 001192 0x80A287C0 10000003 */ b	.L80A287D0
/* 001193 0x80A287C4 00000000 */ nop
.L80A287C8:
/* 001194 0x80A287C8 84880092 */ lh	$t0, 0X92($a0)
/* 001195 0x80A287CC A4880032 */ sh	$t0, 0X32($a0)
.L80A287D0:
/* 001196 0x80A287D0 3C0980A3 */ lui	$t1, %hi(func_80A287E8)
/* 001197 0x80A287D4 252987E8 */ addiu	$t1, $t1, %lo(func_80A287E8)
/* 001198 0x80A287D8 A480029E */ sh	$zero, 0X29E($a0)
/* 001199 0x80A287DC AC890298 */ sw	$t1, 0X298($a0)
/* 001200 0x80A287E0 03E00008 */ jr	$ra
/* 001201 0x80A287E4 00000000 */ nop

