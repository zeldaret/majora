glabel func_80BC3B00
/* 000096 0x80BC3B00 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 000097 0x80BC3B04 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000098 0x80BC3B08 00803825 */ move	$a3, $a0
/* 000099 0x80BC3B0C 8CE3015C */ lw	$v1, 0X15C($a3)
/* 000100 0x80BC3B10 54600004 */ bnezl	$v1, .L80BC3B24
/* 000101 0x80BC3B14 8CEE0164 */ lw	$t6, 0X164($a3)
/* 000102 0x80BC3B18 1000005E */ b	.L80BC3C94
/* 000103 0x80BC3B1C 24020001 */ li	$v0, 0X1
/* 000104 0x80BC3B20 8CEE0164 */ lw	$t6, 0X164($a3)
.L80BC3B24:
/* 000105 0x80BC3B24 8CEF0160 */ lw	$t7, 0X160($a3)
/* 000106 0x80BC3B28 55CF0004 */ bnel	$t6, $t7, .L80BC3B3C
/* 000107 0x80BC3B2C 8C640004 */ lw	$a0, 0X4($v1)
/* 000108 0x80BC3B30 10000058 */ b	.L80BC3C94
/* 000109 0x80BC3B34 24020001 */ li	$v0, 0X1
/* 000110 0x80BC3B38 8C640004 */ lw	$a0, 0X4($v1)
.L80BC3B3C:
/* 000111 0x80BC3B3C 0C040141 */ jal	Lib_PtrSegToVirt
/* 000112 0x80BC3B40 AFA70040 */ sw	$a3, 0X40($sp)
/* 000113 0x80BC3B44 8FA70040 */ lw	$a3, 0X40($sp)
/* 000114 0x80BC3B48 24080006 */ li	$t0, 0X6
/* 000115 0x80BC3B4C 27A50028 */ addiu	$a1, $sp, 0X28
/* 000116 0x80BC3B50 8CF80164 */ lw	$t8, 0X164($a3)
/* 000117 0x80BC3B54 24E40024 */ addiu	$a0, $a3, 0X24
/* 000118 0x80BC3B58 03080019 */ multu	$t8, $t0
/* 000119 0x80BC3B5C 0000C812 */ mflo	$t9
/* 000120 0x80BC3B60 00591821 */ addu	$v1, $v0, $t9
/* 000121 0x80BC3B64 84690000 */ lh	$t1, 0X0($v1)
/* 000122 0x80BC3B68 44892000 */ mtc1	$t1, $f4
/* 000123 0x80BC3B6C 00000000 */ nop
/* 000124 0x80BC3B70 468021A0 */ cvt.s.w	$f6, $f4
/* 000125 0x80BC3B74 E7A60028 */ swc1	$f6, 0X28($sp)
/* 000126 0x80BC3B78 846A0002 */ lh	$t2, 0X2($v1)
/* 000127 0x80BC3B7C C7A40028 */ lwc1	$f4, 0X28($sp)
/* 000128 0x80BC3B80 448A4000 */ mtc1	$t2, $f8
/* 000129 0x80BC3B84 00000000 */ nop
/* 000130 0x80BC3B88 468042A0 */ cvt.s.w	$f10, $f8
/* 000131 0x80BC3B8C E7AA002C */ swc1	$f10, 0X2C($sp)
/* 000132 0x80BC3B90 846B0004 */ lh	$t3, 0X4($v1)
/* 000133 0x80BC3B94 448B8000 */ mtc1	$t3, $f16
/* 000134 0x80BC3B98 00000000 */ nop
/* 000135 0x80BC3B9C 468084A0 */ cvt.s.w	$f18, $f16
/* 000136 0x80BC3BA0 E7B20030 */ swc1	$f18, 0X30($sp)
/* 000137 0x80BC3BA4 8CEC0168 */ lw	$t4, 0X168($a3)
/* 000138 0x80BC3BA8 550C002C */ bnel	$t0, $t4, .L80BC3C5C
/* 000139 0x80BC3BAC 8CE60070 */ lw	$a2, 0X70($a3)
/* 000140 0x80BC3BB0 C4E60024 */ lwc1	$f6, 0X24($a3)
/* 000141 0x80BC3BB4 3C014120 */ lui	$at, 0x4120
/* 000142 0x80BC3BB8 44816000 */ mtc1	$at, $f12
/* 000143 0x80BC3BBC 46062001 */ sub.s	$f0, $f4, $f6
/* 000144 0x80BC3BC0 C7A8002C */ lwc1	$f8, 0X2C($sp)
/* 000145 0x80BC3BC4 C4EA0028 */ lwc1	$f10, 0X28($a3)
/* 000146 0x80BC3BC8 C7B00030 */ lwc1	$f16, 0X30($sp)
/* 000147 0x80BC3BCC 4600603C */ c.lt.s	$f12, $f0
/* 000148 0x80BC3BD0 C4F2002C */ lwc1	$f18, 0X2C($a3)
/* 000149 0x80BC3BD4 460A4081 */ sub.s	$f2, $f8, $f10
/* 000150 0x80BC3BD8 45000002 */ bc1f .L80BC3BE4
/* 000151 0x80BC3BDC 46128381 */ sub.s	$f14, $f16, $f18
/* 000152 0x80BC3BE0 ACE00168 */ sw	$zero, 0X168($a3)
.L80BC3BE4:
/* 000153 0x80BC3BE4 4602603C */ c.lt.s	$f12, $f2
/* 000154 0x80BC3BE8 240D0001 */ li	$t5, 0X1
/* 000155 0x80BC3BEC 3C01C120 */ lui	$at, 0xC120
/* 000156 0x80BC3BF0 240E0002 */ li	$t6, 0X2
/* 000157 0x80BC3BF4 45000002 */ bc1f .L80BC3C00
/* 000158 0x80BC3BF8 240F0003 */ li	$t7, 0X3
/* 000159 0x80BC3BFC ACED0168 */ sw	$t5, 0X168($a3)
.L80BC3C00:
/* 000160 0x80BC3C00 460E603C */ c.lt.s	$f12, $f14
/* 000161 0x80BC3C04 44816000 */ mtc1	$at, $f12
/* 000162 0x80BC3C08 24180004 */ li	$t8, 0X4
/* 000163 0x80BC3C0C 24190005 */ li	$t9, 0X5
/* 000164 0x80BC3C10 45020003 */ bc1fl .L80BC3C20
/* 000165 0x80BC3C14 460C003C */ c.lt.s	$f0, $f12
/* 000166 0x80BC3C18 ACEE0168 */ sw	$t6, 0X168($a3)
/* 000167 0x80BC3C1C 460C003C */ c.lt.s	$f0, $f12
.L80BC3C20:
/* 000168 0x80BC3C20 00000000 */ nop
/* 000169 0x80BC3C24 45020003 */ bc1fl .L80BC3C34
/* 000170 0x80BC3C28 460C103C */ c.lt.s	$f2, $f12
/* 000171 0x80BC3C2C ACEF0168 */ sw	$t7, 0X168($a3)
/* 000172 0x80BC3C30 460C103C */ c.lt.s	$f2, $f12
.L80BC3C34:
/* 000173 0x80BC3C34 00000000 */ nop
/* 000174 0x80BC3C38 45020003 */ bc1fl .L80BC3C48
/* 000175 0x80BC3C3C 460C703C */ c.lt.s	$f14, $f12
/* 000176 0x80BC3C40 ACF80168 */ sw	$t8, 0X168($a3)
/* 000177 0x80BC3C44 460C703C */ c.lt.s	$f14, $f12
.L80BC3C48:
/* 000178 0x80BC3C48 00000000 */ nop
/* 000179 0x80BC3C4C 45020003 */ bc1fl .L80BC3C5C
/* 000180 0x80BC3C50 8CE60070 */ lw	$a2, 0X70($a3)
/* 000181 0x80BC3C54 ACF90168 */ sw	$t9, 0X168($a3)
/* 000182 0x80BC3C58 8CE60070 */ lw	$a2, 0X70($a3)
.L80BC3C5C:
/* 000183 0x80BC3C5C 0C040112 */ jal	Lib_PushAwayVec3f
/* 000184 0x80BC3C60 AFA70040 */ sw	$a3, 0X40($sp)
/* 000185 0x80BC3C64 44802000 */ mtc1	$zero, $f4
/* 000186 0x80BC3C68 8FA70040 */ lw	$a3, 0X40($sp)
/* 000187 0x80BC3C6C 24080006 */ li	$t0, 0X6
/* 000188 0x80BC3C70 4604003E */ c.le.s	$f0, $f4
/* 000189 0x80BC3C74 00001025 */ move	$v0, $zero
/* 000190 0x80BC3C78 45000006 */ bc1f .L80BC3C94
/* 000191 0x80BC3C7C 00000000 */ nop
/* 000192 0x80BC3C80 8CE90164 */ lw	$t1, 0X164($a3)
/* 000193 0x80BC3C84 ACE80168 */ sw	$t0, 0X168($a3)
/* 000194 0x80BC3C88 24020001 */ li	$v0, 0X1
/* 000195 0x80BC3C8C 10000001 */ b	.L80BC3C94
/* 000196 0x80BC3C90 ACE90160 */ sw	$t1, 0X160($a3)
.L80BC3C94:
/* 000197 0x80BC3C94 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000198 0x80BC3C98 27BD0040 */ addiu	$sp, $sp, 0X40
/* 000199 0x80BC3C9C 03E00008 */ jr	$ra
/* 000200 0x80BC3CA0 00000000 */ nop

