glabel func_80936220
/* 001552 0x80936220 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001553 0x80936224 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001554 0x80936228 AFA5001C */ sw	$a1, 0X1C($sp)
/* 001555 0x8093622C 00803825 */ move	$a3, $a0
/* 001556 0x80936230 90EE0194 */ lbu	$t6, 0X194($a3)
/* 001557 0x80936234 24E40028 */ addiu	$a0, $a3, 0X28
/* 001558 0x80936238 3C063F19 */ lui	$a2, 0x3F19
/* 001559 0x8093623C 25CF0001 */ addiu	$t7, $t6, 0X1
/* 001560 0x80936240 31F800FF */ andi	$t8, $t7, 0XFF
/* 001561 0x80936244 2B010079 */ slti	$at, $t8, 0X79
/* 001562 0x80936248 1420000D */ bnez	$at, .L80936280
/* 001563 0x8093624C A0EF0194 */ sb	$t7, 0X194($a3)
/* 001564 0x80936250 8CE5000C */ lw	$a1, 0XC($a3)
/* 001565 0x80936254 AFA70018 */ sw	$a3, 0X18($sp)
/* 001566 0x80936258 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 001567 0x8093625C 34C6999A */ ori	$a2, $a2, 0X999A
/* 001568 0x80936260 10400007 */ beqz	$v0, .L80936280
/* 001569 0x80936264 8FA70018 */ lw	$a3, 0X18($sp)
/* 001570 0x80936268 90F90194 */ lbu	$t9, 0X194($a3)
/* 001571 0x8093626C 2B2100AA */ slti	$at, $t9, 0XAA
/* 001572 0x80936270 54200004 */ bnezl	$at, .L80936284
/* 001573 0x80936274 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001574 0x80936278 0C24D8A4 */ jal	func_80936290
/* 001575 0x8093627C 00E02025 */ move	$a0, $a3
.L80936280:
/* 001576 0x80936280 8FBF0014 */ lw	$ra, 0X14($sp)
.L80936284:
/* 001577 0x80936284 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001578 0x80936288 03E00008 */ jr	$ra
/* 001579 0x8093628C 00000000 */ nop

