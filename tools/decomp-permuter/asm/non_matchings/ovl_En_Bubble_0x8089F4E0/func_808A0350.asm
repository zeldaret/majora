glabel func_808A0350
/* 000924 0x808A0350 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000925 0x808A0354 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000926 0x808A0358 AFA40018 */ sw	$a0, 0X18($sp)
/* 000927 0x808A035C AFA5001C */ sw	$a1, 0X1C($sp)
/* 000928 0x808A0360 8FA40018 */ lw	$a0, 0X18($sp)
/* 000929 0x808A0364 0C227D98 */ jal	func_8089F660
/* 000930 0x808A0368 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000931 0x808A036C 04400008 */ bltz	$v0, .L808A0390
/* 000932 0x808A0370 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000933 0x808A0374 8FA50018 */ lw	$a1, 0X18($sp)
/* 000934 0x808A0378 2406003C */ li	$a2, 0X3C
/* 000935 0x808A037C 24073949 */ li	$a3, 0X3949
/* 000936 0x808A0380 0C03C15A */ jal	func_800F0568
/* 000937 0x808A0384 24A50024 */ addiu	$a1, $a1, 0X24
/* 000938 0x808A0388 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000939 0x808A038C 8FA40018 */ lw	$a0, 0X18($sp)
.L808A0390:
/* 000940 0x808A0390 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000941 0x808A0394 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000942 0x808A0398 03E00008 */ jr	$ra
/* 000943 0x808A039C 00000000 */ nop

