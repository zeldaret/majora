glabel func_8088C804
/* 000189 0x8088C804 44866000 */ mtc1	$a2, $f12
/* 000190 0x8088C808 00000000 */ nop
/* 000191 0x8088C80C C4A40000 */ lwc1	$f4, 0X0($a1)
/* 000192 0x8088C810 C4860000 */ lwc1	$f6, 0X0($a0)
/* 000193 0x8088C814 C4A80008 */ lwc1	$f8, 0X8($a1)
/* 000194 0x8088C818 C48A0008 */ lwc1	$f10, 0X8($a0)
/* 000195 0x8088C81C 46062001 */ sub.s	$f0, $f4, $f6
/* 000196 0x8088C820 00001025 */ move	$v0, $zero
/* 000197 0x8088C824 460A4081 */ sub.s	$f2, $f8, $f10
/* 000198 0x8088C828 46000402 */ mul.s	$f16, $f0, $f0
/* 000199 0x8088C82C 00000000 */ nop
/* 000200 0x8088C830 46021482 */ mul.s	$f18, $f2, $f2
/* 000201 0x8088C834 46128100 */ add.s	$f4, $f16, $f18
/* 000202 0x8088C838 460C6182 */ mul.s	$f6, $f12, $f12
/* 000203 0x8088C83C 4604303C */ c.lt.s	$f6, $f4
/* 000204 0x8088C840 00000000 */ nop
/* 000205 0x8088C844 45000002 */ bc1f .L8088C850
/* 000206 0x8088C848 00000000 */ nop
/* 000207 0x8088C84C 24020001 */ li	$v0, 0X1
.L8088C850:
/* 000208 0x8088C850 03E00008 */ jr	$ra
/* 000209 0x8088C854 00000000 */ nop

