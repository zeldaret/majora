glabel BgBotihasira_Update
/* 000059 0x80B2816C 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000060 0x80B28170 AFB10018 */ sw	$s1, 0X18($sp)
/* 000061 0x80B28174 AFB00014 */ sw	$s0, 0X14($sp)
/* 000062 0x80B28178 00808025 */ move	$s0, $a0
/* 000063 0x80B2817C 00A08825 */ move	$s1, $a1
/* 000064 0x80B28180 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000065 0x80B28184 8E19015C */ lw	$t9, 0X15C($s0)
/* 000066 0x80B28188 02002025 */ move	$a0, $s0
/* 000067 0x80B2818C 02202825 */ move	$a1, $s1
/* 000068 0x80B28190 0320F809 */ jalr	$t9
/* 000069 0x80B28194 00000000 */ nop
/* 000070 0x80B28198 860E001C */ lh	$t6, 0X1C($s0)
/* 000071 0x80B2819C 51C00024 */ beqzl	$t6, .L80B28230
/* 000072 0x80B281A0 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000073 0x80B281A4 0C03FB61 */ jal	Math_Sins
/* 000074 0x80B281A8 86040032 */ lh	$a0, 0X32($s0)
/* 000075 0x80B281AC 3C01C1D8 */ lui	$at, 0xC1D8
/* 000076 0x80B281B0 44812000 */ mtc1	$at, $f4
/* 000077 0x80B281B4 C6080008 */ lwc1	$f8, 0X8($s0)
/* 000078 0x80B281B8 86040032 */ lh	$a0, 0X32($s0)
/* 000079 0x80B281BC 46040182 */ mul.s	$f6, $f0, $f4
/* 000080 0x80B281C0 46083280 */ add.s	$f10, $f6, $f8
/* 000081 0x80B281C4 0C03FB51 */ jal	Math_Coss
/* 000082 0x80B281C8 E60A0024 */ swc1	$f10, 0X24($s0)
/* 000083 0x80B281CC 3C0140E0 */ lui	$at, 0x40E0
/* 000084 0x80B281D0 44818000 */ mtc1	$at, $f16
/* 000085 0x80B281D4 C6040010 */ lwc1	$f4, 0X10($s0)
/* 000086 0x80B281D8 26050160 */ addiu	$a1, $s0, 0X160
/* 000087 0x80B281DC 46100482 */ mul.s	$f18, $f0, $f16
/* 000088 0x80B281E0 02002025 */ move	$a0, $s0
/* 000089 0x80B281E4 46049180 */ add.s	$f6, $f18, $f4
/* 000090 0x80B281E8 E606002C */ swc1	$f6, 0X2C($s0)
/* 000091 0x80B281EC 0C039F7E */ jal	Collision_CylinderMoveToActor
/* 000092 0x80B281F0 AFA50020 */ sw	$a1, 0X20($sp)
/* 000093 0x80B281F4 3C010001 */ lui	$at, 0x0001
/* 000094 0x80B281F8 34218884 */ ori	$at, $at, 0X8884
/* 000095 0x80B281FC 02212821 */ addu	$a1, $s1, $at
/* 000096 0x80B28200 AFA50024 */ sw	$a1, 0X24($sp)
/* 000097 0x80B28204 02202025 */ move	$a0, $s1
/* 000098 0x80B28208 0C0389D0 */ jal	Collision_AddAC
/* 000099 0x80B2820C 8FA60020 */ lw	$a2, 0X20($sp)
/* 000100 0x80B28210 8FA50024 */ lw	$a1, 0X24($sp)
/* 000101 0x80B28214 02202025 */ move	$a0, $s1
/* 000102 0x80B28218 0C038A4A */ jal	Collision_AddOT
/* 000103 0x80B2821C 8FA60020 */ lw	$a2, 0X20($sp)
/* 000104 0x80B28220 26040024 */ addiu	$a0, $s0, 0X24
/* 000105 0x80B28224 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000106 0x80B28228 26050008 */ addiu	$a1, $s0, 0X8
/* 000107 0x80B2822C 8FBF001C */ lw	$ra, 0X1C($sp)
.L80B28230:
/* 000108 0x80B28230 8FB00014 */ lw	$s0, 0X14($sp)
/* 000109 0x80B28234 8FB10018 */ lw	$s1, 0X18($sp)
/* 000110 0x80B28238 03E00008 */ jr	$ra
/* 000111 0x80B2823C 27BD0030 */ addiu	$sp, $sp, 0X30

