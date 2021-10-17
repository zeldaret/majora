glabel Collision_CylinderWithTriGroupAC
/* 064128 0x800E44C0 27BDFF88 */ addiu	$sp, $sp, -0X78
/* 064129 0x800E44C4 AFB10028 */ sw	$s1, 0X28($sp)
/* 064130 0x800E44C8 00C08825 */ move	$s1, $a2
/* 064131 0x800E44CC AFBF003C */ sw	$ra, 0X3C($sp)
/* 064132 0x800E44D0 AFB50038 */ sw	$s5, 0X38($sp)
/* 064133 0x800E44D4 AFB40034 */ sw	$s4, 0X34($sp)
/* 064134 0x800E44D8 AFB30030 */ sw	$s3, 0X30($sp)
/* 064135 0x800E44DC AFB2002C */ sw	$s2, 0X2C($sp)
/* 064136 0x800E44E0 AFB00024 */ sw	$s0, 0X24($sp)
/* 064137 0x800E44E4 AFA40078 */ sw	$a0, 0X78($sp)
/* 064138 0x800E44E8 AFA5007C */ sw	$a1, 0X7C($sp)
/* 064139 0x800E44EC 862E0040 */ lh	$t6, 0X40($s1)
/* 064140 0x800E44F0 00E09025 */ move	$s2, $a3
/* 064141 0x800E44F4 59C00044 */ blezl	$t6, .L800E4608
/* 064142 0x800E44F8 8FBF003C */ lw	$ra, 0X3C($sp)
/* 064143 0x800E44FC 862F0042 */ lh	$t7, 0X42($s1)
/* 064144 0x800E4500 59E00041 */ blezl	$t7, .L800E4608
/* 064145 0x800E4504 8FBF003C */ lw	$ra, 0X3C($sp)
/* 064146 0x800E4508 8CF80018 */ lw	$t8, 0X18($a3)
/* 064147 0x800E450C 5B00003E */ blezl	$t8, .L800E4608
/* 064148 0x800E4510 8FBF003C */ lw	$ra, 0X3C($sp)
/* 064149 0x800E4514 8CF9001C */ lw	$t9, 0X1C($a3)
/* 064150 0x800E4518 26340018 */ addiu	$s4, $s1, 0X18
/* 064151 0x800E451C 02802025 */ move	$a0, $s4
/* 064152 0x800E4520 53200039 */ beqzl	$t9, .L800E4608
/* 064153 0x800E4524 8FBF003C */ lw	$ra, 0X3C($sp)
/* 064154 0x800E4528 0C038AE6 */ jal	Collision_CantBeToucherAC
/* 064155 0x800E452C AFA70084 */ sw	$a3, 0X84($sp)
/* 064156 0x800E4530 14400034 */ bnez	$v0, .L800E4604
/* 064157 0x800E4534 8FA30084 */ lw	$v1, 0X84($sp)
/* 064158 0x800E4538 8C680018 */ lw	$t0, 0X18($v1)
/* 064159 0x800E453C 2415005C */ li	$s5, 0X5C
/* 064160 0x800E4540 8C70001C */ lw	$s0, 0X1C($v1)
/* 064161 0x800E4544 01150019 */ multu	$t0, $s5
/* 064162 0x800E4548 27B30060 */ addiu	$s3, $sp, 0X60
/* 064163 0x800E454C 00004812 */ mflo	$t1
/* 064164 0x800E4550 02095021 */ addu	$t2, $s0, $t1
/* 064165 0x800E4554 020A082B */ sltu	$at, $s0, $t2
/* 064166 0x800E4558 5020002B */ beqzl	$at, .L800E4608
/* 064167 0x800E455C 8FBF003C */ lw	$ra, 0X3C($sp)
.L800E4560:
/* 064168 0x800E4560 0C038AEF */ jal	Collision_CantBeBumperAC
/* 064169 0x800E4564 02002025 */ move	$a0, $s0
/* 064170 0x800E4568 1440001D */ bnez	$v0, .L800E45E0
/* 064171 0x800E456C 02802025 */ move	$a0, $s4
/* 064172 0x800E4570 0C038AF8 */ jal	Collision_ToucherIsExcluded
/* 064173 0x800E4574 02002825 */ move	$a1, $s0
/* 064174 0x800E4578 14400019 */ bnez	$v0, .L800E45E0
/* 064175 0x800E457C 26240040 */ addiu	$a0, $s1, 0X40
/* 064176 0x800E4580 26050028 */ addiu	$a1, $s0, 0X28
/* 064177 0x800E4584 0C05FB48 */ jal	Math3D_ColCylinderTri
/* 064178 0x800E4588 02603025 */ move	$a2, $s3
/* 064179 0x800E458C 10400014 */ beqz	$v0, .L800E45E0
/* 064180 0x800E4590 26250046 */ addiu	$a1, $s1, 0X46
/* 064181 0x800E4594 27B20054 */ addiu	$s2, $sp, 0X54
/* 064182 0x800E4598 0C03FD53 */ jal	Math_Vec3s_ToVec3f
/* 064183 0x800E459C 02402025 */ move	$a0, $s2
/* 064184 0x800E45A0 27B50048 */ addiu	$s5, $sp, 0X48
/* 064185 0x800E45A4 02A02825 */ move	$a1, $s5
/* 064186 0x800E45A8 0C038D72 */ jal	Collision_TriCalcAvgPoint
/* 064187 0x800E45AC 02002025 */ move	$a0, $s0
/* 064188 0x800E45B0 8FAB0084 */ lw	$t3, 0X84($sp)
/* 064189 0x800E45B4 8FA40078 */ lw	$a0, 0X78($sp)
/* 064190 0x800E45B8 02202825 */ move	$a1, $s1
/* 064191 0x800E45BC 02803025 */ move	$a2, $s4
/* 064192 0x800E45C0 02403825 */ move	$a3, $s2
/* 064193 0x800E45C4 AFB00014 */ sw	$s0, 0X14($sp)
/* 064194 0x800E45C8 AFB50018 */ sw	$s5, 0X18($sp)
/* 064195 0x800E45CC AFB3001C */ sw	$s3, 0X1C($sp)
/* 064196 0x800E45D0 0C038CC9 */ jal	Collision_HandleCollisionATWithAC
/* 064197 0x800E45D4 AFAB0010 */ sw	$t3, 0X10($sp)
/* 064198 0x800E45D8 1000000B */ b	.L800E4608
/* 064199 0x800E45DC 8FBF003C */ lw	$ra, 0X3C($sp)
.L800E45E0:
/* 064200 0x800E45E0 8E4D0018 */ lw	$t5, 0X18($s2)
/* 064201 0x800E45E4 8E4C001C */ lw	$t4, 0X1C($s2)
/* 064202 0x800E45E8 2610005C */ addiu	$s0, $s0, 0X5C
/* 064203 0x800E45EC 01B50019 */ multu	$t5, $s5
/* 064204 0x800E45F0 00007012 */ mflo	$t6
/* 064205 0x800E45F4 018E7821 */ addu	$t7, $t4, $t6
/* 064206 0x800E45F8 020F082B */ sltu	$at, $s0, $t7
/* 064207 0x800E45FC 1420FFD8 */ bnez	$at, .L800E4560
/* 064208 0x800E4600 00000000 */ nop
.L800E4604:
/* 064209 0x800E4604 8FBF003C */ lw	$ra, 0X3C($sp)
.L800E4608:
/* 064210 0x800E4608 8FB00024 */ lw	$s0, 0X24($sp)
/* 064211 0x800E460C 8FB10028 */ lw	$s1, 0X28($sp)
/* 064212 0x800E4610 8FB2002C */ lw	$s2, 0X2C($sp)
/* 064213 0x800E4614 8FB30030 */ lw	$s3, 0X30($sp)
/* 064214 0x800E4618 8FB40034 */ lw	$s4, 0X34($sp)
/* 064215 0x800E461C 8FB50038 */ lw	$s5, 0X38($sp)
/* 064216 0x800E4620 03E00008 */ jr	$ra
/* 064217 0x800E4624 27BD0078 */ addiu	$sp, $sp, 0X78

