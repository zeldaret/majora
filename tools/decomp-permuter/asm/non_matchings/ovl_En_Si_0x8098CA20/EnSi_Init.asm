glabel EnSi_Init
/* 000126 0x8098CC18 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000127 0x8098CC1C AFB00018 */ sw	$s0, 0X18($sp)
/* 000128 0x8098CC20 00808025 */ move	$s0, $a0
/* 000129 0x8098CC24 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000130 0x8098CC28 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000131 0x8098CC2C 26050148 */ addiu	$a1, $s0, 0X148
/* 000132 0x8098CC30 AFA50020 */ sw	$a1, 0X20($sp)
/* 000133 0x8098CC34 0C038855 */ jal	Collision_InitSphereDefault
/* 000134 0x8098CC38 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000135 0x8098CC3C 3C078099 */ lui	$a3, %hi(D_8098CD80)
/* 000136 0x8098CC40 8FA50020 */ lw	$a1, 0X20($sp)
/* 000137 0x8098CC44 24E7CD80 */ addiu	$a3, $a3, %lo(D_8098CD80)
/* 000138 0x8098CC48 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000139 0x8098CC4C 0C03887D */ jal	Collision_InitSphereWithData
/* 000140 0x8098CC50 02003025 */ move	$a2, $s0
/* 000141 0x8098CC54 3C058099 */ lui	$a1, %hi(D_8098CDB8)
/* 000142 0x8098CC58 3C068099 */ lui	$a2, %hi(D_8098CDAC)
/* 000143 0x8098CC5C 24C6CDAC */ addiu	$a2, $a2, %lo(D_8098CDAC)
/* 000144 0x8098CC60 24A5CDB8 */ addiu	$a1, $a1, %lo(D_8098CDB8)
/* 000145 0x8098CC64 0C039D57 */ jal	func_800E755C
/* 000146 0x8098CC68 260400A0 */ addiu	$a0, $s0, 0XA0
/* 000147 0x8098CC6C 02002025 */ move	$a0, $s0
/* 000148 0x8098CC70 0C02D9F8 */ jal	Actor_SetScale
/* 000149 0x8098CC74 3C053E80 */ lui	$a1, 0x3E80
/* 000150 0x8098CC78 3C0E8099 */ lui	$t6, %hi(func_8098CB70)
/* 000151 0x8098CC7C 25CECB70 */ addiu	$t6, $t6, %lo(func_8098CB70)
/* 000152 0x8098CC80 AE0E0144 */ sw	$t6, 0X144($s0)
/* 000153 0x8098CC84 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000154 0x8098CC88 8FB00018 */ lw	$s0, 0X18($sp)
/* 000155 0x8098CC8C 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000156 0x8098CC90 03E00008 */ jr	$ra
/* 000157 0x8098CC94 00000000 */ nop

