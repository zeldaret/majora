glabel func_80868A6C
/* 000935 0x80868A6C 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000936 0x80868A70 AFB00018 */ sw	$s0, 0X18($sp)
/* 000937 0x80868A74 00808025 */ move	$s0, $a0
/* 000938 0x80868A78 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000939 0x80868A7C AFA50024 */ sw	$a1, 0X24($sp)
/* 000940 0x80868A80 02002025 */ move	$a0, $s0
/* 000941 0x80868A84 0C02E314 */ jal	func_800B8C50
/* 000942 0x80868A88 8FA50024 */ lw	$a1, 0X24($sp)
/* 000943 0x80868A8C 8FA40024 */ lw	$a0, 0X24($sp)
/* 000944 0x80868A90 0C02D746 */ jal	Actor_GetRoomClearedTemp
/* 000945 0x80868A94 82050003 */ lb	$a1, 0X3($s0)
/* 000946 0x80868A98 50400014 */ beqzl	$v0, .L80868AEC
/* 000947 0x80868A9C 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000948 0x80868AA0 0C03C6F9 */ jal	ActorCutscene_GetCanPlayNext
/* 000949 0x80868AA4 86040218 */ lh	$a0, 0X218($s0)
/* 000950 0x80868AA8 1040000D */ beqz	$v0, .L80868AE0
/* 000951 0x80868AAC 02002825 */ move	$a1, $s0
/* 000952 0x80868AB0 0C03C71A */ jal	ActorCutscene_StartAndSetUnkLinkFields
/* 000953 0x80868AB4 86040218 */ lh	$a0, 0X218($s0)
/* 000954 0x80868AB8 8FA40024 */ lw	$a0, 0X24($sp)
/* 000955 0x80868ABC 0C02D737 */ jal	Actor_SetRoomCleared
/* 000956 0x80868AC0 82050003 */ lb	$a1, 0X3($s0)
/* 000957 0x80868AC4 3C058087 */ lui	$a1, %hi(func_80868AFC)
/* 000958 0x80868AC8 24A58AFC */ addiu	$a1, $a1, %lo(func_80868AFC)
/* 000959 0x80868ACC 0C219EF4 */ jal	func_80867BD0
/* 000960 0x80868AD0 02002025 */ move	$a0, $s0
/* 000961 0x80868AD4 240EFFE2 */ li	$t6, -0X1E
/* 000962 0x80868AD8 10000003 */ b	.L80868AE8
/* 000963 0x80868ADC AE0E01A0 */ sw	$t6, 0X1A0($s0)
.L80868AE0:
/* 000964 0x80868AE0 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 000965 0x80868AE4 86040218 */ lh	$a0, 0X218($s0)
.L80868AE8:
/* 000966 0x80868AE8 8FBF001C */ lw	$ra, 0X1C($sp)
.L80868AEC:
/* 000967 0x80868AEC 8FB00018 */ lw	$s0, 0X18($sp)
/* 000968 0x80868AF0 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000969 0x80868AF4 03E00008 */ jr	$ra
/* 000970 0x80868AF8 00000000 */ nop

