glabel DLF_LoadGameState
/* 014192 0x800B3880 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 014193 0x800B3884 AFB00018 */ sw	$s0, 0X18($sp)
/* 014194 0x800B3888 00808025 */ move	$s0, $a0
/* 014195 0x800B388C AFBF001C */ sw	$ra, 0X1C($sp)
/* 014196 0x800B3890 8E0E0000 */ lw	$t6, 0X0($s0)
/* 014197 0x800B3894 55C0003F */ bnezl	$t6, .L800B3994
/* 014198 0x800B3898 8FBF001C */ lw	$ra, 0X1C($sp)
/* 014199 0x800B389C 8E06000C */ lw	$a2, 0XC($s0)
/* 014200 0x800B38A0 54C00004 */ bnezl	$a2, .L800B38B4
/* 014201 0x800B38A4 8E040004 */ lw	$a0, 0X4($s0)
/* 014202 0x800B38A8 10000039 */ b	.L800B3990
/* 014203 0x800B38AC AE000028 */ sw	$zero, 0X28($s0)
/* 014204 0x800B38B0 8E040004 */ lw	$a0, 0X4($s0)
.L800B38B4:
/* 014205 0x800B38B4 8E050008 */ lw	$a1, 0X8($s0)
/* 014206 0x800B38B8 0C021432 */ jal	Load2_AllocateAndLoad
/* 014207 0x800B38BC 8E070010 */ lw	$a3, 0X10($s0)
/* 014208 0x800B38C0 10400033 */ beqz	$v0, .L800B3990
/* 014209 0x800B38C4 AE020000 */ sw	$v0, 0X0($s0)
/* 014210 0x800B38C8 8E030014 */ lw	$v1, 0X14($s0)
/* 014211 0x800B38CC 50600006 */ beqzl	$v1, .L800B38E8
/* 014212 0x800B38D0 00001025 */ move	$v0, $zero
/* 014213 0x800B38D4 8E0F000C */ lw	$t7, 0XC($s0)
/* 014214 0x800B38D8 01E2C823 */ subu	$t9, $t7, $v0
/* 014215 0x800B38DC 10000002 */ b	.L800B38E8
/* 014216 0x800B38E0 00791023 */ subu	$v0, $v1, $t9
/* 014217 0x800B38E4 00001025 */ move	$v0, $zero
.L800B38E8:
/* 014218 0x800B38E8 8E030018 */ lw	$v1, 0X18($s0)
/* 014219 0x800B38EC AE020014 */ sw	$v0, 0X14($s0)
/* 014220 0x800B38F0 00001025 */ move	$v0, $zero
/* 014221 0x800B38F4 10600006 */ beqz	$v1, .L800B3910
/* 014222 0x800B38F8 00000000 */ nop
/* 014223 0x800B38FC 8E08000C */ lw	$t0, 0XC($s0)
/* 014224 0x800B3900 8E090000 */ lw	$t1, 0X0($s0)
/* 014225 0x800B3904 01095023 */ subu	$t2, $t0, $t1
/* 014226 0x800B3908 10000001 */ b	.L800B3910
/* 014227 0x800B390C 006A1023 */ subu	$v0, $v1, $t2
.L800B3910:
/* 014228 0x800B3910 8E03001C */ lw	$v1, 0X1C($s0)
/* 014229 0x800B3914 AE020018 */ sw	$v0, 0X18($s0)
/* 014230 0x800B3918 00001025 */ move	$v0, $zero
/* 014231 0x800B391C 10600006 */ beqz	$v1, .L800B3938
/* 014232 0x800B3920 00000000 */ nop
/* 014233 0x800B3924 8E0B000C */ lw	$t3, 0XC($s0)
/* 014234 0x800B3928 8E0C0000 */ lw	$t4, 0X0($s0)
/* 014235 0x800B392C 016C6823 */ subu	$t5, $t3, $t4
/* 014236 0x800B3930 10000001 */ b	.L800B3938
/* 014237 0x800B3934 006D1023 */ subu	$v0, $v1, $t5
.L800B3938:
/* 014238 0x800B3938 8E030020 */ lw	$v1, 0X20($s0)
/* 014239 0x800B393C AE02001C */ sw	$v0, 0X1C($s0)
/* 014240 0x800B3940 00001025 */ move	$v0, $zero
/* 014241 0x800B3944 10600006 */ beqz	$v1, .L800B3960
/* 014242 0x800B3948 00000000 */ nop
/* 014243 0x800B394C 8E0E000C */ lw	$t6, 0XC($s0)
/* 014244 0x800B3950 8E0F0000 */ lw	$t7, 0X0($s0)
/* 014245 0x800B3954 01CFC023 */ subu	$t8, $t6, $t7
/* 014246 0x800B3958 10000001 */ b	.L800B3960
/* 014247 0x800B395C 00781023 */ subu	$v0, $v1, $t8
.L800B3960:
/* 014248 0x800B3960 8E030024 */ lw	$v1, 0X24($s0)
/* 014249 0x800B3964 AE020020 */ sw	$v0, 0X20($s0)
/* 014250 0x800B3968 00001025 */ move	$v0, $zero
/* 014251 0x800B396C 10600006 */ beqz	$v1, .L800B3988
/* 014252 0x800B3970 00000000 */ nop
/* 014253 0x800B3974 8E19000C */ lw	$t9, 0XC($s0)
/* 014254 0x800B3978 8E080000 */ lw	$t0, 0X0($s0)
/* 014255 0x800B397C 03284823 */ subu	$t1, $t9, $t0
/* 014256 0x800B3980 10000001 */ b	.L800B3988
/* 014257 0x800B3984 00691023 */ subu	$v0, $v1, $t1
.L800B3988:
/* 014258 0x800B3988 AE020024 */ sw	$v0, 0X24($s0)
/* 014259 0x800B398C AE000028 */ sw	$zero, 0X28($s0)
.L800B3990:
/* 014260 0x800B3990 8FBF001C */ lw	$ra, 0X1C($sp)
.L800B3994:
/* 014261 0x800B3994 8FB00018 */ lw	$s0, 0X18($sp)
/* 014262 0x800B3998 27BD0020 */ addiu	$sp, $sp, 0X20
/* 014263 0x800B399C 03E00008 */ jr	$ra
/* 014264 0x800B39A0 00000000 */ nop

