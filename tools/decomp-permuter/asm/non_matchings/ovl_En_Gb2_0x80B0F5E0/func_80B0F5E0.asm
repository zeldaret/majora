glabel func_80B0F5E0
/* 000000 0x80B0F5E0 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000001 0x80B0F5E4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000002 0x80B0F5E8 AFA50024 */ sw	$a1, 0X24($sp)
/* 000003 0x80B0F5EC 00803825 */ move	$a3, $a0
/* 000004 0x80B0F5F0 C4E40024 */ lwc1	$f4, 0X24($a3)
/* 000005 0x80B0F5F4 C4E80028 */ lwc1	$f8, 0X28($a3)
/* 000006 0x80B0F5F8 C4F0002C */ lwc1	$f16, 0X2C($a3)
/* 000007 0x80B0F5FC 4600218D */ trunc.w.s	$f6, $f4
/* 000008 0x80B0F600 3C010001 */ lui	$at, 0x0001
/* 000009 0x80B0F604 34218884 */ ori	$at, $at, 0X8884
/* 000010 0x80B0F608 4600428D */ trunc.w.s	$f10, $f8
/* 000011 0x80B0F60C 440F3000 */ mfc1	$t7, $f6
/* 000012 0x80B0F610 24E6021C */ addiu	$a2, $a3, 0X21C
/* 000013 0x80B0F614 4600848D */ trunc.w.s	$f18, $f16
/* 000014 0x80B0F618 44195000 */ mfc1	$t9, $f10
/* 000015 0x80B0F61C A4EF0262 */ sh	$t7, 0X262($a3)
/* 000016 0x80B0F620 44099000 */ mfc1	$t1, $f18
/* 000017 0x80B0F624 A4F90264 */ sh	$t9, 0X264($a3)
/* 000018 0x80B0F628 A4E90266 */ sh	$t1, 0X266($a3)
/* 000019 0x80B0F62C 8FA40024 */ lw	$a0, 0X24($sp)
/* 000020 0x80B0F630 AFA60018 */ sw	$a2, 0X18($sp)
/* 000021 0x80B0F634 00812821 */ addu	$a1, $a0, $at
/* 000022 0x80B0F638 0C0389D0 */ jal	Collision_AddAC
/* 000023 0x80B0F63C AFA5001C */ sw	$a1, 0X1C($sp)
/* 000024 0x80B0F640 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000025 0x80B0F644 8FA60018 */ lw	$a2, 0X18($sp)
/* 000026 0x80B0F648 0C038A4A */ jal	Collision_AddOT
/* 000027 0x80B0F64C 8FA40024 */ lw	$a0, 0X24($sp)
/* 000028 0x80B0F650 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000029 0x80B0F654 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000030 0x80B0F658 03E00008 */ jr	$ra
/* 000031 0x80B0F65C 00000000 */ nop

