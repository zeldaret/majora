glabel func_80A136B8
/* 002490 0x80A136B8 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 002491 0x80A136BC AFBF001C */ sw	$ra, 0X1C($sp)
/* 002492 0x80A136C0 AFA5002C */ sw	$a1, 0X2C($sp)
/* 002493 0x80A136C4 AFA60030 */ sw	$a2, 0X30($sp)
/* 002494 0x80A136C8 AFA70034 */ sw	$a3, 0X34($sp)
/* 002495 0x80A136CC 0C05A5B5 */ jal	Play_GetCamera
/* 002496 0x80A136D0 00002825 */ move	$a1, $zero
/* 002497 0x80A136D4 00402025 */ move	$a0, $v0
/* 002498 0x80A136D8 0C04AAA7 */ jal	Quake_Add
/* 002499 0x80A136DC 24050003 */ li	$a1, 0X3
/* 002500 0x80A136E0 00022400 */ sll	$a0, $v0, 16
/* 002501 0x80A136E4 A7A20026 */ sh	$v0, 0X26($sp)
/* 002502 0x80A136E8 00042403 */ sra	$a0, $a0, 16
/* 002503 0x80A136EC 0C04AA3C */ jal	Quake_SetCountdown
/* 002504 0x80A136F0 87A50036 */ lh	$a1, 0X36($sp)
/* 002505 0x80A136F4 87A40026 */ lh	$a0, 0X26($sp)
/* 002506 0x80A136F8 0C04AA2A */ jal	Quake_SetSpeed
/* 002507 0x80A136FC 87A5002E */ lh	$a1, 0X2E($sp)
/* 002508 0x80A13700 87A40026 */ lh	$a0, 0X26($sp)
/* 002509 0x80A13704 87A50032 */ lh	$a1, 0X32($sp)
/* 002510 0x80A13708 00003025 */ move	$a2, $zero
/* 002511 0x80A1370C 00003825 */ move	$a3, $zero
/* 002512 0x80A13710 0C04AA5E */ jal	Quake_SetQuakeValues
/* 002513 0x80A13714 AFA00010 */ sw	$zero, 0X10($sp)
/* 002514 0x80A13718 8FBF001C */ lw	$ra, 0X1C($sp)
/* 002515 0x80A1371C 27BD0028 */ addiu	$sp, $sp, 0X28
/* 002516 0x80A13720 03E00008 */ jr	$ra
/* 002517 0x80A13724 00000000 */ nop

