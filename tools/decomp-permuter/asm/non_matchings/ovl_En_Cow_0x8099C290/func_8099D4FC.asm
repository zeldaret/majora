glabel func_8099D4FC
/* 001179 0x8099D4FC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001180 0x8099D500 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001181 0x8099D504 AFA40018 */ sw	$a0, 0X18($sp)
/* 001182 0x8099D508 AFA60020 */ sw	$a2, 0X20($sp)
/* 001183 0x8099D50C AFA70024 */ sw	$a3, 0X24($sp)
/* 001184 0x8099D510 24010002 */ li	$at, 0X2
/* 001185 0x8099D514 14A10005 */ bne	$a1, $at, .L8099D52C
/* 001186 0x8099D518 3C04809A */ lui	$a0, %hi(D_8099D63C)
/* 001187 0x8099D51C 8FA50028 */ lw	$a1, 0X28($sp)
/* 001188 0x8099D520 2484D63C */ addiu	$a0, $a0, %lo(D_8099D63C)
/* 001189 0x8099D524 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 001190 0x8099D528 24A5003C */ addiu	$a1, $a1, 0X3C
.L8099D52C:
/* 001191 0x8099D52C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001192 0x8099D530 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001193 0x8099D534 03E00008 */ jr	$ra
/* 001194 0x8099D538 00000000 */ nop

