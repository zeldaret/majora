glabel func_809CE15C
/* 000167 0x809CE15C C484000C */ lwc1	$f4, 0XC($a0)
/* 000168 0x809CE160 C4860028 */ lwc1	$f6, 0X28($a0)
/* 000169 0x809CE164 3C014120 */ lui	$at, 0x4120
/* 000170 0x809CE168 44815000 */ mtc1	$at, $f10
/* 000171 0x809CE16C 46062201 */ sub.s	$f8, $f4, $f6
/* 000172 0x809CE170 8C8F02F8 */ lw	$t7, 0X2F8($a0)
/* 000173 0x809CE174 460A4402 */ mul.s	$f16, $f8, $f10
/* 000174 0x809CE178 4600848D */ trunc.w.s	$f18, $f16
/* 000175 0x809CE17C 44029000 */ mfc1	$v0, $f18
/* 000176 0x809CE180 00000000 */ nop
/* 000177 0x809CE184 00021400 */ sll	$v0, $v0, 16
/* 000178 0x809CE188 00021403 */ sra	$v0, $v0, 16
/* 000179 0x809CE18C A5E2005C */ sh	$v0, 0X5C($t7)
/* 000180 0x809CE190 8C9802F8 */ lw	$t8, 0X2F8($a0)
/* 000181 0x809CE194 A7020056 */ sh	$v0, 0X56($t8)
/* 000182 0x809CE198 8C9902F8 */ lw	$t9, 0X2F8($a0)
/* 000183 0x809CE19C A7220050 */ sh	$v0, 0X50($t9)
/* 000184 0x809CE1A0 8C8802F8 */ lw	$t0, 0X2F8($a0)
/* 000185 0x809CE1A4 A502004A */ sh	$v0, 0X4A($t0)
/* 000186 0x809CE1A8 8C8902F8 */ lw	$t1, 0X2F8($a0)
/* 000187 0x809CE1AC A5220044 */ sh	$v0, 0X44($t1)
/* 000188 0x809CE1B0 8C8A02F8 */ lw	$t2, 0X2F8($a0)
/* 000189 0x809CE1B4 A542003E */ sh	$v0, 0X3E($t2)
/* 000190 0x809CE1B8 8C8B02F8 */ lw	$t3, 0X2F8($a0)
/* 000191 0x809CE1BC A5620014 */ sh	$v0, 0X14($t3)
/* 000192 0x809CE1C0 8C8C02F8 */ lw	$t4, 0X2F8($a0)
/* 000193 0x809CE1C4 A5820002 */ sh	$v0, 0X2($t4)
/* 000194 0x809CE1C8 03E00008 */ jr	$ra
/* 000195 0x809CE1CC 00000000 */ nop

