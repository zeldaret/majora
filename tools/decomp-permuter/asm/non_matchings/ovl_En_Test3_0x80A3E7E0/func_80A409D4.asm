glabel func_80A409D4
/* 002173 0x80A409D4 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 002174 0x80A409D8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 002175 0x80A409DC 90A21CA5 */ lbu	$v0, 0X1CA5($a1)
/* 002176 0x80A409E0 304E0020 */ andi	$t6, $v0, 0X20
/* 002177 0x80A409E4 15C00002 */ bnez	$t6, .L80A409F0
/* 002178 0x80A409E8 304F0010 */ andi	$t7, $v0, 0X10
/* 002179 0x80A409EC 11E00007 */ beqz	$t7, .L80A40A0C
.L80A409F0:
/* 002180 0x80A409F0 3058FFEF */ andi	$t8, $v0, 0XFFEF
/* 002181 0x80A409F4 0C28FC2C */ jal	func_80A3F0B0
/* 002182 0x80A409F8 A0B81CA5 */ sb	$t8, 0X1CA5($a1)
/* 002183 0x80A409FC 0C03C8F1 */ jal	ActorCutscene_SetReturnCamera
/* 002184 0x80A40A00 00002025 */ move	$a0, $zero
/* 002185 0x80A40A04 10000016 */ b	.L80A40A60
/* 002186 0x80A40A08 8FBF0014 */ lw	$ra, 0X14($sp)
.L80A40A0C:
/* 002187 0x80A40A0C 88A90014 */ lwl	$t1, 0X14($a1)
/* 002188 0x80A40A10 98A90017 */ lwr	$t1, 0X17($a1)
/* 002189 0x80A40A14 3C1980A4 */ lui	$t9, %hi(D_80A41D28)
/* 002190 0x80A40A18 27391D28 */ addiu	$t9, $t9, %lo(D_80A41D28)
/* 002191 0x80A40A1C AF290000 */ sw	$t1, 0X0($t9)
/* 002192 0x80A40A20 88A80018 */ lwl	$t0, 0X18($a1)
/* 002193 0x80A40A24 98A8001B */ lwr	$t0, 0X1B($a1)
/* 002194 0x80A40A28 AF280004 */ sw	$t0, 0X4($t9)
/* 002195 0x80A40A2C 88A9001C */ lwl	$t1, 0X1C($a1)
/* 002196 0x80A40A30 98A9001F */ lwr	$t1, 0X1F($a1)
/* 002197 0x80A40A34 AF290008 */ sw	$t1, 0X8($t9)
/* 002198 0x80A40A38 88A80020 */ lwl	$t0, 0X20($a1)
/* 002199 0x80A40A3C 98A80023 */ lwr	$t0, 0X23($a1)
/* 002200 0x80A40A40 AF28000C */ sw	$t0, 0XC($t9)
/* 002201 0x80A40A44 88A90024 */ lwl	$t1, 0X24($a1)
/* 002202 0x80A40A48 98A90027 */ lwr	$t1, 0X27($a1)
/* 002203 0x80A40A4C AF290010 */ sw	$t1, 0X10($t9)
/* 002204 0x80A40A50 88A80028 */ lwl	$t0, 0X28($a1)
/* 002205 0x80A40A54 98A8002B */ lwr	$t0, 0X2B($a1)
/* 002206 0x80A40A58 AF280014 */ sw	$t0, 0X14($t9)
/* 002207 0x80A40A5C 8FBF0014 */ lw	$ra, 0X14($sp)
.L80A40A60:
/* 002208 0x80A40A60 27BD0018 */ addiu	$sp, $sp, 0X18
/* 002209 0x80A40A64 03E00008 */ jr	$ra
/* 002210 0x80A40A68 00000000 */ nop

