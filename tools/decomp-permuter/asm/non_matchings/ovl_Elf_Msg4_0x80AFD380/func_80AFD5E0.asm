glabel func_80AFD5E0
/* 000152 0x80AFD5E0 3C0142C8 */ lui	$at, 0x42C8
/* 000153 0x80AFD5E4 44811000 */ mtc1	$at, $f2
/* 000154 0x80AFD5E8 00000000 */ nop
/* 000155 0x80AFD5EC C4860058 */ lwc1	$f6, 0X58($a0)
/* 000156 0x80AFD5F0 C4840098 */ lwc1	$f4, 0X98($a0)
/* 000157 0x80AFD5F4 00001025 */ move	$v0, $zero
/* 000158 0x80AFD5F8 46061202 */ mul.s	$f8, $f2, $f6
/* 000159 0x80AFD5FC 4608203C */ c.lt.s	$f4, $f8
/* 000160 0x80AFD600 00000000 */ nop
/* 000161 0x80AFD604 45000002 */ bc1f .L80AFD610
/* 000162 0x80AFD608 00000000 */ nop
/* 000163 0x80AFD60C 24020001 */ li	$v0, 0X1
.L80AFD610:
/* 000164 0x80AFD610 10400013 */ beqz	$v0, .L80AFD660
/* 000165 0x80AFD614 00000000 */ nop
/* 000166 0x80AFD618 C480009C */ lwc1	$f0, 0X9C($a0)
/* 000167 0x80AFD61C 44805000 */ mtc1	$zero, $f10
/* 000168 0x80AFD620 00001025 */ move	$v0, $zero
/* 000169 0x80AFD624 4600503E */ c.le.s	$f10, $f0
/* 000170 0x80AFD628 00000000 */ nop
/* 000171 0x80AFD62C 45000002 */ bc1f .L80AFD638
/* 000172 0x80AFD630 00000000 */ nop
/* 000173 0x80AFD634 24020001 */ li	$v0, 0X1
.L80AFD638:
/* 000174 0x80AFD638 10400009 */ beqz	$v0, .L80AFD660
/* 000175 0x80AFD63C 00000000 */ nop
/* 000176 0x80AFD640 C490005C */ lwc1	$f16, 0X5C($a0)
/* 000177 0x80AFD644 00001025 */ move	$v0, $zero
/* 000178 0x80AFD648 46101482 */ mul.s	$f18, $f2, $f16
/* 000179 0x80AFD64C 4612003C */ c.lt.s	$f0, $f18
/* 000180 0x80AFD650 00000000 */ nop
/* 000181 0x80AFD654 45000002 */ bc1f .L80AFD660
/* 000182 0x80AFD658 00000000 */ nop
/* 000183 0x80AFD65C 24020001 */ li	$v0, 0X1
.L80AFD660:
/* 000184 0x80AFD660 03E00008 */ jr	$ra
/* 000185 0x80AFD664 00000000 */ nop

