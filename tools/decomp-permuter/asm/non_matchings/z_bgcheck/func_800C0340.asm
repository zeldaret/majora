glabel func_800C0340
/* 027168 0x800C0340 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 027169 0x800C0344 AFB00038 */ sw	$s0, 0X38($sp)
/* 027170 0x800C0348 00808025 */ move	$s0, $a0
/* 027171 0x800C034C AFBF003C */ sw	$ra, 0X3C($sp)
/* 027172 0x800C0350 AFA50044 */ sw	$a1, 0X44($sp)
/* 027173 0x800C0354 AFA60048 */ sw	$a2, 0X48($sp)
/* 027174 0x800C0358 AFA7004C */ sw	$a3, 0X4C($sp)
/* 027175 0x800C035C 960E0002 */ lhu	$t6, 0X2($s0)
/* 027176 0x800C0360 8FB90044 */ lw	$t9, 0X44($sp)
/* 027177 0x800C0364 3C04801F */ lui	$a0, %hi(D_801ED9F0)
/* 027178 0x800C0368 31CF1FFF */ andi	$t7, $t6, 0X1FFF
/* 027179 0x800C036C 000FC080 */ sll	$t8, $t7, 2
/* 027180 0x800C0370 030FC023 */ subu	$t8, $t8, $t7
/* 027181 0x800C0374 0018C040 */ sll	$t8, $t8, 1
/* 027182 0x800C0378 2484D9F0 */ addiu	$a0, $a0, %lo(D_801ED9F0)
/* 027183 0x800C037C 0C03FD53 */ jal	Math_Vec3s_ToVec3f
/* 027184 0x800C0380 03192821 */ addu	$a1, $t8, $t9
/* 027185 0x800C0384 96080004 */ lhu	$t0, 0X4($s0)
/* 027186 0x800C0388 8FAB0044 */ lw	$t3, 0X44($sp)
/* 027187 0x800C038C 3C04801F */ lui	$a0, %hi(D_801ED9FC)
/* 027188 0x800C0390 31091FFF */ andi	$t1, $t0, 0X1FFF
/* 027189 0x800C0394 00095080 */ sll	$t2, $t1, 2
/* 027190 0x800C0398 01495023 */ subu	$t2, $t2, $t1
/* 027191 0x800C039C 000A5040 */ sll	$t2, $t2, 1
/* 027192 0x800C03A0 2484D9FC */ addiu	$a0, $a0, %lo(D_801ED9FC)
/* 027193 0x800C03A4 0C03FD53 */ jal	Math_Vec3s_ToVec3f
/* 027194 0x800C03A8 014B2821 */ addu	$a1, $t2, $t3
/* 027195 0x800C03AC 960C0006 */ lhu	$t4, 0X6($s0)
/* 027196 0x800C03B0 8FAE0044 */ lw	$t6, 0X44($sp)
/* 027197 0x800C03B4 3C04801F */ lui	$a0, %hi(D_801EDA08)
/* 027198 0x800C03B8 000C6880 */ sll	$t5, $t4, 2
/* 027199 0x800C03BC 01AC6823 */ subu	$t5, $t5, $t4
/* 027200 0x800C03C0 000D6840 */ sll	$t5, $t5, 1
/* 027201 0x800C03C4 2484DA08 */ addiu	$a0, $a0, %lo(D_801EDA08)
/* 027202 0x800C03C8 0C03FD53 */ jal	Math_Vec3s_ToVec3f
/* 027203 0x800C03CC 01AE2821 */ addu	$a1, $t5, $t6
/* 027204 0x800C03D0 860F0008 */ lh	$t7, 0X8($s0)
/* 027205 0x800C03D4 8618000A */ lh	$t8, 0XA($s0)
/* 027206 0x800C03D8 8619000C */ lh	$t9, 0XC($s0)
/* 027207 0x800C03DC 448F2000 */ mtc1	$t7, $f4
/* 027208 0x800C03E0 44984000 */ mtc1	$t8, $f8
/* 027209 0x800C03E4 3C01801E */ lui	$at, %hi(D_801DCD38)
/* 027210 0x800C03E8 468021A0 */ cvt.s.w	$f6, $f4
/* 027211 0x800C03EC C42ECD38 */ lwc1	$f14, %lo(D_801DCD38)($at)
/* 027212 0x800C03F0 44998000 */ mtc1	$t9, $f16
/* 027213 0x800C03F4 8FA90050 */ lw	$t1, 0X50($sp)
/* 027214 0x800C03F8 3C04801F */ lui	$a0, %hi(D_801ED9F0)
/* 027215 0x800C03FC 468042A0 */ cvt.s.w	$f10, $f8
/* 027216 0x800C0400 460E3002 */ mul.s	$f0, $f6, $f14
/* 027217 0x800C0404 C7A8004C */ lwc1	$f8, 0X4C($sp)
/* 027218 0x800C0408 3C05801F */ lui	$a1, %hi(D_801ED9FC)
/* 027219 0x800C040C 3C06801F */ lui	$a2, %hi(D_801EDA08)
/* 027220 0x800C0410 24C6DA08 */ addiu	$a2, $a2, %lo(D_801EDA08)
/* 027221 0x800C0414 460E5082 */ mul.s	$f2, $f10, $f14
/* 027222 0x800C0418 C7AA0048 */ lwc1	$f10, 0X48($sp)
/* 027223 0x800C041C 44070000 */ mfc1	$a3, $f0
/* 027224 0x800C0420 24A5D9FC */ addiu	$a1, $a1, %lo(D_801ED9FC)
/* 027225 0x800C0424 2484D9F0 */ addiu	$a0, $a0, %lo(D_801ED9F0)
/* 027226 0x800C0428 468084A0 */ cvt.s.w	$f18, $f16
/* 027227 0x800C042C E7A20010 */ swc1	$f2, 0X10($sp)
/* 027228 0x800C0430 C7B00054 */ lwc1	$f16, 0X54($sp)
/* 027229 0x800C0434 460E9302 */ mul.s	$f12, $f18, $f14
/* 027230 0x800C0438 E7AC0014 */ swc1	$f12, 0X14($sp)
/* 027231 0x800C043C 8608000E */ lh	$t0, 0XE($s0)
/* 027232 0x800C0440 AFA90024 */ sw	$t1, 0X24($sp)
/* 027233 0x800C0444 E7A8001C */ swc1	$f8, 0X1C($sp)
/* 027234 0x800C0448 44882000 */ mtc1	$t0, $f4
/* 027235 0x800C044C E7AA0020 */ swc1	$f10, 0X20($sp)
/* 027236 0x800C0450 E7B00028 */ swc1	$f16, 0X28($sp)
/* 027237 0x800C0454 468021A0 */ cvt.s.w	$f6, $f4
/* 027238 0x800C0458 0C05EF8C */ jal	func_8017BE30
/* 027239 0x800C045C E7A60018 */ swc1	$f6, 0X18($sp)
/* 027240 0x800C0460 8FBF003C */ lw	$ra, 0X3C($sp)
/* 027241 0x800C0464 8FB00038 */ lw	$s0, 0X38($sp)
/* 027242 0x800C0468 27BD0040 */ addiu	$sp, $sp, 0X40
/* 027243 0x800C046C 03E00008 */ jr	$ra
/* 027244 0x800C0470 00000000 */ nop

