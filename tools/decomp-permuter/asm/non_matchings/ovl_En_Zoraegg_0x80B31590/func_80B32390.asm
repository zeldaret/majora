glabel func_80B32390
/* 000896 0x80B32390 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000897 0x80B32394 AFB00018 */ sw	$s0, 0X18($sp)
/* 000898 0x80B32398 00808025 */ move	$s0, $a0
/* 000899 0x80B3239C AFBF001C */ sw	$ra, 0X1C($sp)
/* 000900 0x80B323A0 8CA31CCC */ lw	$v1, 0X1CCC($a1)
/* 000901 0x80B323A4 82040038 */ lb	$a0, 0X38($s0)
/* 000902 0x80B323A8 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000903 0x80B323AC 0C03C6F9 */ jal	ActorCutscene_GetCanPlayNext
/* 000904 0x80B323B0 AFA30020 */ sw	$v1, 0X20($sp)
/* 000905 0x80B323B4 8FA30020 */ lw	$v1, 0X20($sp)
/* 000906 0x80B323B8 10400010 */ beqz	$v0, .L80B323FC
/* 000907 0x80B323BC 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000908 0x80B323C0 0C2CC745 */ jal	func_80B31D14
/* 000909 0x80B323C4 00A02025 */ move	$a0, $a1
/* 000910 0x80B323C8 10400034 */ beqz	$v0, .L80B3249C
/* 000911 0x80B323CC 00402825 */ move	$a1, $v0
/* 000912 0x80B323D0 0C03C71A */ jal	ActorCutscene_StartAndSetUnkLinkFields
/* 000913 0x80B323D4 82040038 */ lb	$a0, 0X38($s0)
/* 000914 0x80B323D8 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 000915 0x80B323DC 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 000916 0x80B323E0 906E100F */ lbu	$t6, 0X100F($v1)
/* 000917 0x80B323E4 02002025 */ move	$a0, $s0
/* 000918 0x80B323E8 35CF0008 */ ori	$t7, $t6, 0X8
/* 000919 0x80B323EC 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000920 0x80B323F0 A06F100F */ sb	$t7, 0X100F($v1)
/* 000921 0x80B323F4 1000002A */ b	.L80B324A0
/* 000922 0x80B323F8 8FBF001C */ lw	$ra, 0X1C($sp)
.L80B323FC:
/* 000923 0x80B323FC 00A02025 */ move	$a0, $a1
/* 000924 0x80B32400 0C2CC66A */ jal	func_80B319A8
/* 000925 0x80B32404 AFA30020 */ sw	$v1, 0X20($sp)
/* 000926 0x80B32408 28410007 */ slti	$at, $v0, 0X7
/* 000927 0x80B3240C 14200023 */ bnez	$at, .L80B3249C
/* 000928 0x80B32410 8FA30020 */ lw	$v1, 0X20($sp)
/* 000929 0x80B32414 3C0142C8 */ lui	$at, 0x42C8
/* 000930 0x80B32418 44811000 */ mtc1	$at, $f2
/* 000931 0x80B3241C C6080058 */ lwc1	$f8, 0X58($s0)
/* 000932 0x80B32420 C4640024 */ lwc1	$f4, 0X24($v1)
/* 000933 0x80B32424 C6060024 */ lwc1	$f6, 0X24($s0)
/* 000934 0x80B32428 46081282 */ mul.s	$f10, $f2, $f8
/* 000935 0x80B3242C 46062001 */ sub.s	$f0, $f4, $f6
/* 000936 0x80B32430 46000005 */ abs.s	$f0, $f0
/* 000937 0x80B32434 460A003C */ c.lt.s	$f0, $f10
/* 000938 0x80B32438 00000000 */ nop
/* 000939 0x80B3243C 45020018 */ bc1fl .L80B324A0
/* 000940 0x80B32440 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000941 0x80B32444 C6040060 */ lwc1	$f4, 0X60($s0)
/* 000942 0x80B32448 C470002C */ lwc1	$f16, 0X2C($v1)
/* 000943 0x80B3244C C612002C */ lwc1	$f18, 0X2C($s0)
/* 000944 0x80B32450 46041182 */ mul.s	$f6, $f2, $f4
/* 000945 0x80B32454 46128001 */ sub.s	$f0, $f16, $f18
/* 000946 0x80B32458 46000005 */ abs.s	$f0, $f0
/* 000947 0x80B3245C 4606003C */ c.lt.s	$f0, $f6
/* 000948 0x80B32460 00000000 */ nop
/* 000949 0x80B32464 4502000E */ bc1fl .L80B324A0
/* 000950 0x80B32468 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000951 0x80B3246C C4680028 */ lwc1	$f8, 0X28($v1)
/* 000952 0x80B32470 C60A0028 */ lwc1	$f10, 0X28($s0)
/* 000953 0x80B32474 3C0141F0 */ lui	$at, 0x41F0
/* 000954 0x80B32478 44818000 */ mtc1	$at, $f16
/* 000955 0x80B3247C 460A4001 */ sub.s	$f0, $f8, $f10
/* 000956 0x80B32480 46000005 */ abs.s	$f0, $f0
/* 000957 0x80B32484 4610003C */ c.lt.s	$f0, $f16
/* 000958 0x80B32488 00000000 */ nop
/* 000959 0x80B3248C 45020004 */ bc1fl .L80B324A0
/* 000960 0x80B32490 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000961 0x80B32494 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 000962 0x80B32498 82040038 */ lb	$a0, 0X38($s0)
.L80B3249C:
/* 000963 0x80B3249C 8FBF001C */ lw	$ra, 0X1C($sp)
.L80B324A0:
/* 000964 0x80B324A0 8FB00018 */ lw	$s0, 0X18($sp)
/* 000965 0x80B324A4 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000966 0x80B324A8 03E00008 */ jr	$ra
/* 000967 0x80B324AC 00000000 */ nop

