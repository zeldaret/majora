glabel func_80BDD154
/* 000953 0x80BDD154 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000954 0x80BDD158 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000955 0x80BDD15C AFA40018 */ sw	$a0, 0X18($sp)
/* 000956 0x80BDD160 00A03025 */ move	$a2, $a1
/* 000957 0x80BDD164 8FA40018 */ lw	$a0, 0X18($sp)
/* 000958 0x80BDD168 0C02DCC8 */ jal	Actor_IsLinkFacingActor
/* 000959 0x80BDD16C 24053000 */ li	$a1, 0X3000
/* 000960 0x80BDD170 10400016 */ beqz	$v0, .L80BDD1CC
/* 000961 0x80BDD174 8FA40018 */ lw	$a0, 0X18($sp)
/* 000962 0x80BDD178 0C02DCF8 */ jal	Actor_IsActorFacingLink
/* 000963 0x80BDD17C 24053000 */ li	$a1, 0X3000
/* 000964 0x80BDD180 10400012 */ beqz	$v0, .L80BDD1CC
/* 000965 0x80BDD184 8FAE0018 */ lw	$t6, 0X18($sp)
/* 000966 0x80BDD188 3C01432A */ lui	$at, 0x432A
/* 000967 0x80BDD18C 44813000 */ mtc1	$at, $f6
/* 000968 0x80BDD190 C5C40098 */ lwc1	$f4, 0X98($t6)
/* 000969 0x80BDD194 4606203C */ c.lt.s	$f4, $f6
/* 000970 0x80BDD198 00000000 */ nop
/* 000971 0x80BDD19C 4502000C */ bc1fl .L80BDD1D0
/* 000972 0x80BDD1A0 00001025 */ move	$v0, $zero
/* 000973 0x80BDD1A4 C5C0009C */ lwc1	$f0, 0X9C($t6)
/* 000974 0x80BDD1A8 3C0142C8 */ lui	$at, 0x42C8
/* 000975 0x80BDD1AC 44814000 */ mtc1	$at, $f8
/* 000976 0x80BDD1B0 46000005 */ abs.s	$f0, $f0
/* 000977 0x80BDD1B4 4608003C */ c.lt.s	$f0, $f8
/* 000978 0x80BDD1B8 00000000 */ nop
/* 000979 0x80BDD1BC 45020004 */ bc1fl .L80BDD1D0
/* 000980 0x80BDD1C0 00001025 */ move	$v0, $zero
/* 000981 0x80BDD1C4 10000002 */ b	.L80BDD1D0
/* 000982 0x80BDD1C8 24020001 */ li	$v0, 0X1
.L80BDD1CC:
/* 000983 0x80BDD1CC 00001025 */ move	$v0, $zero
.L80BDD1D0:
/* 000984 0x80BDD1D0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000985 0x80BDD1D4 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000986 0x80BDD1D8 03E00008 */ jr	$ra
/* 000987 0x80BDD1DC 00000000 */ nop

