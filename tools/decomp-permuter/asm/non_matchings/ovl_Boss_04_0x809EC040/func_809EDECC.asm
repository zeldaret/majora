glabel func_809EDECC
/* 001955 0x809EDECC 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 001956 0x809EDED0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001957 0x809EDED4 AFA40028 */ sw	$a0, 0X28($sp)
/* 001958 0x809EDED8 AFA60030 */ sw	$a2, 0X30($sp)
/* 001959 0x809EDEDC AFA70034 */ sw	$a3, 0X34($sp)
/* 001960 0x809EDEE0 24010001 */ li	$at, 0X1
/* 001961 0x809EDEE4 54A10019 */ bnel	$a1, $at, .L809EDF4C
/* 001962 0x809EDEE8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001963 0x809EDEEC 8FA50038 */ lw	$a1, 0X38($sp)
/* 001964 0x809EDEF0 3C01C3FA */ lui	$at, 0xC3FA
/* 001965 0x809EDEF4 44816000 */ mtc1	$at, $f12
/* 001966 0x809EDEF8 0C0606F1 */ jal	SysMatrix_GetStateTranslationAndScaledY
/* 001967 0x809EDEFC 24A5003C */ addiu	$a1, $a1, 0X3C
/* 001968 0x809EDF00 3C04809F */ lui	$a0, %hi(D_809EE228)
/* 001969 0x809EDF04 2484E228 */ addiu	$a0, $a0, %lo(D_809EE228)
/* 001970 0x809EDF08 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 001971 0x809EDF0C 27A50018 */ addiu	$a1, $sp, 0X18
/* 001972 0x809EDF10 8FA50038 */ lw	$a1, 0X38($sp)
/* 001973 0x809EDF14 00002025 */ move	$a0, $zero
/* 001974 0x809EDF18 27A60018 */ addiu	$a2, $sp, 0X18
/* 001975 0x809EDF1C 0C27B010 */ jal	func_809EC040
/* 001976 0x809EDF20 24A50208 */ addiu	$a1, $a1, 0X208
/* 001977 0x809EDF24 3C04809F */ lui	$a0, %hi(D_809EE234)
/* 001978 0x809EDF28 2484E234 */ addiu	$a0, $a0, %lo(D_809EE234)
/* 001979 0x809EDF2C 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 001980 0x809EDF30 27A50018 */ addiu	$a1, $sp, 0X18
/* 001981 0x809EDF34 8FA50038 */ lw	$a1, 0X38($sp)
/* 001982 0x809EDF38 00002025 */ move	$a0, $zero
/* 001983 0x809EDF3C 27A60018 */ addiu	$a2, $sp, 0X18
/* 001984 0x809EDF40 0C27B010 */ jal	func_809EC040
/* 001985 0x809EDF44 24A50268 */ addiu	$a1, $a1, 0X268
/* 001986 0x809EDF48 8FBF0014 */ lw	$ra, 0X14($sp)
.L809EDF4C:
/* 001987 0x809EDF4C 27BD0028 */ addiu	$sp, $sp, 0X28
/* 001988 0x809EDF50 03E00008 */ jr	$ra
/* 001989 0x809EDF54 00000000 */ nop

