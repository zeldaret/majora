glabel EnMnk_Draw
/* 005006 0x80AB9B48 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 005007 0x80AB9B4C AFB00028 */ sw	$s0, 0X28($sp)
/* 005008 0x80AB9B50 00808025 */ move	$s0, $a0
/* 005009 0x80AB9B54 AFBF002C */ sw	$ra, 0X2C($sp)
/* 005010 0x80AB9B58 AFA50034 */ sw	$a1, 0X34($sp)
/* 005011 0x80AB9B5C 02002025 */ move	$a0, $s0
/* 005012 0x80AB9B60 0C2AE675 */ jal	func_80AB99D4
/* 005013 0x80AB9B64 8FA50034 */ lw	$a1, 0X34($sp)
/* 005014 0x80AB9B68 8E05014C */ lw	$a1, 0X14C($s0)
/* 005015 0x80AB9B6C 8E060168 */ lw	$a2, 0X168($s0)
/* 005016 0x80AB9B70 9207014A */ lbu	$a3, 0X14A($s0)
/* 005017 0x80AB9B74 3C0E80AC */ lui	$t6, %hi(func_80AB96A0)
/* 005018 0x80AB9B78 3C0F80AC */ lui	$t7, %hi(func_80AB973C)
/* 005019 0x80AB9B7C 25EF973C */ addiu	$t7, $t7, %lo(func_80AB973C)
/* 005020 0x80AB9B80 25CE96A0 */ addiu	$t6, $t6, %lo(func_80AB96A0)
/* 005021 0x80AB9B84 AFAE0010 */ sw	$t6, 0X10($sp)
/* 005022 0x80AB9B88 AFAF0014 */ sw	$t7, 0X14($sp)
/* 005023 0x80AB9B8C AFB00018 */ sw	$s0, 0X18($sp)
/* 005024 0x80AB9B90 0C04CFCA */ jal	SkelAnime_DrawSV
/* 005025 0x80AB9B94 8FA40034 */ lw	$a0, 0X34($sp)
/* 005026 0x80AB9B98 8FBF002C */ lw	$ra, 0X2C($sp)
/* 005027 0x80AB9B9C 8FB00028 */ lw	$s0, 0X28($sp)
/* 005028 0x80AB9BA0 27BD0030 */ addiu	$sp, $sp, 0X30
/* 005029 0x80AB9BA4 03E00008 */ jr	$ra
/* 005030 0x80AB9BA8 00000000 */ nop

