glabel func_80B60E54
/* 000225 0x80B60E54 AFA40000 */ sw	$a0, 0X0($sp)
/* 000226 0x80B60E58 3C0180B6 */ lui	$at, %hi(D_80B614D8)
/* 000227 0x80B60E5C C42C14D8 */ lwc1	$f12, %lo(D_80B614D8)($at)
/* 000228 0x80B60E60 3084FFFF */ andi	$a0, $a0, 0XFFFF
/* 000229 0x80B60E64 44842000 */ mtc1	$a0, $f4
/* 000230 0x80B60E68 3C014F80 */ lui	$at, 0x4F80
/* 000231 0x80B60E6C 04810004 */ bgez	$a0, .L80B60E80
/* 000232 0x80B60E70 46802020 */ cvt.s.w	$f0, $f4
/* 000233 0x80B60E74 44813000 */ mtc1	$at, $f6
/* 000234 0x80B60E78 00000000 */ nop
/* 000235 0x80B60E7C 46060000 */ add.s	$f0, $f0, $f6
.L80B60E80:
/* 000236 0x80B60E80 460C0203 */ div.s	$f8, $f0, $f12
/* 000237 0x80B60E84 3C0180B6 */ lui	$at, %hi(D_80B614DC)
/* 000238 0x80B60E88 C42614DC */ lwc1	$f6, %lo(D_80B614DC)($at)
/* 000239 0x80B60E8C 3C0180B6 */ lui	$at, %hi(D_80B614E0)
/* 000240 0x80B60E90 4600428D */ trunc.w.s	$f10, $f8
/* 000241 0x80B60E94 440F5000 */ mfc1	$t7, $f10
/* 000242 0x80B60E98 00000000 */ nop
/* 000243 0x80B60E9C 448F8000 */ mtc1	$t7, $f16
/* 000244 0x80B60EA0 00000000 */ nop
/* 000245 0x80B60EA4 468084A0 */ cvt.s.w	$f18, $f16
/* 000246 0x80B60EA8 46126102 */ mul.s	$f4, $f12, $f18
/* 000247 0x80B60EAC 46040081 */ sub.s	$f2, $f0, $f4
/* 000248 0x80B60EB0 4606103C */ c.lt.s	$f2, $f6
/* 000249 0x80B60EB4 00000000 */ nop
/* 000250 0x80B60EB8 45010007 */ bc1t .L80B60ED8
/* 000251 0x80B60EBC 00000000 */ nop
/* 000252 0x80B60EC0 C42814E0 */ lwc1	$f8, %lo(D_80B614E0)($at)
/* 000253 0x80B60EC4 00001025 */ move	$v0, $zero
/* 000254 0x80B60EC8 4602403C */ c.lt.s	$f8, $f2
/* 000255 0x80B60ECC 00000000 */ nop
/* 000256 0x80B60ED0 45000003 */ bc1f .L80B60EE0
/* 000257 0x80B60ED4 00000000 */ nop
.L80B60ED8:
/* 000258 0x80B60ED8 03E00008 */ jr	$ra
/* 000259 0x80B60EDC 24020001 */ li	$v0, 0X1
.L80B60EE0:
/* 000260 0x80B60EE0 03E00008 */ jr	$ra
/* 000261 0x80B60EE4 00000000 */ nop


.section .late_rodata

glabel D_80B614D8
/* 000642 0x80B614D8 */ .word	0x44AAAAAB
glabel D_80B614DC
/* 000643 0x80B614DC */ .word	0x42360B61
glabel D_80B614E0
/* 000644 0x80B614E0 */ .word	0x44A4FA50
