glabel func_808CC490
/* 000140 0x808CC490 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000141 0x808CC494 AFB00018 */ sw	$s0, 0X18($sp)
/* 000142 0x808CC498 00808025 */ move	$s0, $a0
/* 000143 0x808CC49C AFBF001C */ sw	$ra, 0X1C($sp)
/* 000144 0x808CC4A0 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000145 0x808CC4A4 8FAE002C */ lw	$t6, 0X2C($sp)
/* 000146 0x808CC4A8 26040216 */ addiu	$a0, $s0, 0X216
/* 000147 0x808CC4AC 00002825 */ move	$a1, $zero
/* 000148 0x808CC4B0 8DCF1CCC */ lw	$t7, 0X1CCC($t6)
/* 000149 0x808CC4B4 2406000A */ li	$a2, 0XA
/* 000150 0x808CC4B8 240705DC */ li	$a3, 0X5DC
/* 000151 0x808CC4BC 0C03FFF6 */ jal	Math_SmoothScaleMaxS
/* 000152 0x808CC4C0 AFAF0024 */ sw	$t7, 0X24($sp)
/* 000153 0x808CC4C4 86180218 */ lh	$t8, 0X218($s0)
/* 000154 0x808CC4C8 02002025 */ move	$a0, $s0
/* 000155 0x808CC4CC 24053170 */ li	$a1, 0X3170
/* 000156 0x808CC4D0 2719FE0C */ addiu	$t9, $t8, -0X1F4
/* 000157 0x808CC4D4 0C02E404 */ jal	func_800B9010
/* 000158 0x808CC4D8 A6190218 */ sh	$t9, 0X218($s0)
/* 000159 0x808CC4DC C604021C */ lwc1	$f4, 0X21C($s0)
/* 000160 0x808CC4E0 C6060098 */ lwc1	$f6, 0X98($s0)
/* 000161 0x808CC4E4 3C0142A0 */ lui	$at, 0x42A0
/* 000162 0x808CC4E8 4604303E */ c.le.s	$f6, $f4
/* 000163 0x808CC4EC 00000000 */ nop
/* 000164 0x808CC4F0 45020030 */ bc1fl .L808CC5B4
/* 000165 0x808CC4F4 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000166 0x808CC4F8 C600009C */ lwc1	$f0, 0X9C($s0)
/* 000167 0x808CC4FC 44814000 */ mtc1	$at, $f8
/* 000168 0x808CC500 3C01C320 */ lui	$at, 0xC320
/* 000169 0x808CC504 4608003E */ c.le.s	$f0, $f8
/* 000170 0x808CC508 00000000 */ nop
/* 000171 0x808CC50C 45020029 */ bc1fl .L808CC5B4
/* 000172 0x808CC510 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000173 0x808CC514 44815000 */ mtc1	$at, $f10
/* 000174 0x808CC518 2604003C */ addiu	$a0, $s0, 0X3C
/* 000175 0x808CC51C 8FA50024 */ lw	$a1, 0X24($sp)
/* 000176 0x808CC520 4600503E */ c.le.s	$f10, $f0
/* 000177 0x808CC524 00000000 */ nop
/* 000178 0x808CC528 45020022 */ bc1fl .L808CC5B4
/* 000179 0x808CC52C 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000180 0x808CC530 86080092 */ lh	$t0, 0X92($s0)
/* 000181 0x808CC534 86090218 */ lh	$t1, 0X218($s0)
/* 000182 0x808CC538 860B00BE */ lh	$t3, 0XBE($s0)
/* 000183 0x808CC53C 24A50024 */ addiu	$a1, $a1, 0X24
/* 000184 0x808CC540 01095023 */ subu	$t2, $t0, $t1
/* 000185 0x808CC544 014B1823 */ subu	$v1, $t2, $t3
/* 000186 0x808CC548 00031C00 */ sll	$v1, $v1, 16
/* 000187 0x808CC54C 00031C03 */ sra	$v1, $v1, 16
/* 000188 0x808CC550 0C03FEA5 */ jal	Math_Vec3f_Pitch
/* 000189 0x808CC554 A7A30022 */ sh	$v1, 0X22($sp)
/* 000190 0x808CC558 00022400 */ sll	$a0, $v0, 16
/* 000191 0x808CC55C 28411B92 */ slti	$at, $v0, 0X1B92
/* 000192 0x808CC560 00042403 */ sra	$a0, $a0, 16
/* 000193 0x808CC564 14200002 */ bnez	$at, .L808CC570
/* 000194 0x808CC568 87A30022 */ lh	$v1, 0X22($sp)
/* 000195 0x808CC56C 24041B91 */ li	$a0, 0X1B91
.L808CC570:
/* 000196 0x808CC570 04610003 */ bgez	$v1, .L808CC580
/* 000197 0x808CC574 00601025 */ move	$v0, $v1
/* 000198 0x808CC578 10000001 */ b	.L808CC580
/* 000199 0x808CC57C 00031023 */ negu	$v0, $v1
.L808CC580:
/* 000200 0x808CC580 28412711 */ slti	$at, $v0, 0X2711
/* 000201 0x808CC584 1020000A */ beqz	$at, .L808CC5B0
/* 000202 0x808CC588 28810E38 */ slti	$at, $a0, 0XE38
/* 000203 0x808CC58C 54200009 */ bnezl	$at, .L808CC5B4
/* 000204 0x808CC590 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000205 0x808CC594 0C04900F */ jal	func_8012403C
/* 000206 0x808CC598 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000207 0x808CC59C 24010010 */ li	$at, 0X10
/* 000208 0x808CC5A0 50410004 */ beql	$v0, $at, .L808CC5B4
/* 000209 0x808CC5A4 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000210 0x808CC5A8 0C233171 */ jal	func_808CC5C4
/* 000211 0x808CC5AC 02002025 */ move	$a0, $s0
.L808CC5B0:
/* 000212 0x808CC5B0 8FBF001C */ lw	$ra, 0X1C($sp)
.L808CC5B4:
/* 000213 0x808CC5B4 8FB00018 */ lw	$s0, 0X18($sp)
/* 000214 0x808CC5B8 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000215 0x808CC5BC 03E00008 */ jr	$ra
/* 000216 0x808CC5C0 00000000 */ nop

