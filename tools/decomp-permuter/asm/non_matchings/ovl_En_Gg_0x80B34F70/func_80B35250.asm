glabel func_80B35250
/* 000184 0x80B35250 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000185 0x80B35254 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000186 0x80B35258 00803825 */ move	$a3, $a0
/* 000187 0x80B3525C 240E0014 */ li	$t6, 0X14
/* 000188 0x80B35260 A4EE02E4 */ sh	$t6, 0X2E4($a3)
/* 000189 0x80B35264 A4E002E2 */ sh	$zero, 0X2E2($a3)
/* 000190 0x80B35268 A4E002E6 */ sh	$zero, 0X2E6($a3)
/* 000191 0x80B3526C 3C0580B3 */ lui	$a1, %hi(D_80B36C58)
/* 000192 0x80B35270 24A56C58 */ addiu	$a1, $a1, %lo(D_80B36C58)
/* 000193 0x80B35274 AFA70018 */ sw	$a3, 0X18($sp)
/* 000194 0x80B35278 24E40190 */ addiu	$a0, $a3, 0X190
/* 000195 0x80B3527C 0C02F717 */ jal	func_800BDC5C
/* 000196 0x80B35280 00003025 */ move	$a2, $zero
/* 000197 0x80B35284 8FA70018 */ lw	$a3, 0X18($sp)
/* 000198 0x80B35288 3C0F80B3 */ lui	$t7, %hi(func_80B35450)
/* 000199 0x80B3528C 25EF5450 */ addiu	$t7, $t7, %lo(func_80B35450)
/* 000200 0x80B35290 ACEF01D4 */ sw	$t7, 0X1D4($a3)
/* 000201 0x80B35294 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000202 0x80B35298 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000203 0x80B3529C 03E00008 */ jr	$ra
/* 000204 0x80B352A0 00000000 */ nop

