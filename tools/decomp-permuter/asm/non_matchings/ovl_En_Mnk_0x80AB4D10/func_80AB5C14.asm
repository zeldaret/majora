glabel func_80AB5C14
/* 000961 0x80AB5C14 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000962 0x80AB5C18 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000963 0x80AB5C1C AFA40028 */ sw	$a0, 0X28($sp)
/* 000964 0x80AB5C20 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000965 0x80AB5C24 8FA50028 */ lw	$a1, 0X28($sp)
/* 000966 0x80AB5C28 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000967 0x80AB5C2C 24060096 */ li	$a2, 0X96
/* 000968 0x80AB5C30 24A50024 */ addiu	$a1, $a1, 0X24
/* 000969 0x80AB5C34 AFA50020 */ sw	$a1, 0X20($sp)
/* 000970 0x80AB5C38 240701F4 */ li	$a3, 0X1F4
/* 000971 0x80AB5C3C 0C02C7BD */ jal	EffectSS_SpawnGRipple
/* 000972 0x80AB5C40 AFA00010 */ sw	$zero, 0X10($sp)
/* 000973 0x80AB5C44 240E00C8 */ li	$t6, 0XC8
/* 000974 0x80AB5C48 8FA50020 */ lw	$a1, 0X20($sp)
/* 000975 0x80AB5C4C AFAE0014 */ sw	$t6, 0X14($sp)
/* 000976 0x80AB5C50 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000977 0x80AB5C54 00003025 */ move	$a2, $zero
/* 000978 0x80AB5C58 00003825 */ move	$a3, $zero
/* 000979 0x80AB5C5C 0C02C7D3 */ jal	EffectSS_SpawnGSplash
/* 000980 0x80AB5C60 AFA00010 */ sw	$zero, 0X10($sp)
/* 000981 0x80AB5C64 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000982 0x80AB5C68 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000983 0x80AB5C6C 03E00008 */ jr	$ra
/* 000984 0x80AB5C70 00000000 */ nop

