glabel func_80BB1C1C
/* 000339 0x80BB1C1C 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000340 0x80BB1C20 AFB20020 */ sw	$s2, 0X20($sp)
/* 000341 0x80BB1C24 00809025 */ move	$s2, $a0
/* 000342 0x80BB1C28 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000343 0x80BB1C2C AFB1001C */ sw	$s1, 0X1C($sp)
/* 000344 0x80BB1C30 AFB00018 */ sw	$s0, 0X18($sp)
/* 000345 0x80BB1C34 824E0038 */ lb	$t6, 0X38($s2)
/* 000346 0x80BB1C38 24100001 */ li	$s0, 0X1
/* 000347 0x80BB1C3C 24110001 */ li	$s1, 0X1
/* 000348 0x80BB1C40 A64E049C */ sh	$t6, 0X49C($s2)
.L80BB1C44:
/* 000349 0x80BB1C44 00117840 */ sll	$t7, $s1, 1
/* 000350 0x80BB1C48 024FC021 */ addu	$t8, $s2, $t7
/* 000351 0x80BB1C4C 0C03C82E */ jal	ActorCutscene_GetAdditionalCutscene
/* 000352 0x80BB1C50 8704049A */ lh	$a0, 0X49A($t8)
/* 000353 0x80BB1C54 0010C840 */ sll	$t9, $s0, 1
/* 000354 0x80BB1C58 26100001 */ addiu	$s0, $s0, 0X1
/* 000355 0x80BB1C5C 3210FFFF */ andi	$s0, $s0, 0XFFFF
/* 000356 0x80BB1C60 2A010008 */ slti	$at, $s0, 0X8
/* 000357 0x80BB1C64 02594021 */ addu	$t0, $s2, $t9
/* 000358 0x80BB1C68 02008825 */ move	$s1, $s0
/* 000359 0x80BB1C6C 1420FFF5 */ bnez	$at, .L80BB1C44
/* 000360 0x80BB1C70 A502049C */ sh	$v0, 0X49C($t0)
/* 000361 0x80BB1C74 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000362 0x80BB1C78 8FB00018 */ lw	$s0, 0X18($sp)
/* 000363 0x80BB1C7C 8FB1001C */ lw	$s1, 0X1C($sp)
/* 000364 0x80BB1C80 8FB20020 */ lw	$s2, 0X20($sp)
/* 000365 0x80BB1C84 03E00008 */ jr	$ra
/* 000366 0x80BB1C88 27BD0028 */ addiu	$sp, $sp, 0X28

