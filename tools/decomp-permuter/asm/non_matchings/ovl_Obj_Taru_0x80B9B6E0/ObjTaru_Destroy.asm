glabel ObjTaru_Destroy
/* 000530 0x80B9BF28 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000531 0x80B9BF2C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000532 0x80B9BF30 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000533 0x80B9BF34 00803825 */ move	$a3, $a0
/* 000534 0x80B9BF38 84EE001C */ lh	$t6, 0X1C($a3)
/* 000535 0x80B9BF3C 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000536 0x80B9BF40 24E5015C */ addiu	$a1, $a3, 0X15C
/* 000537 0x80B9BF44 31CF0080 */ andi	$t7, $t6, 0X80
/* 000538 0x80B9BF48 55E00005 */ bnezl	$t7, .L80B9BF60
/* 000539 0x80B9BF4C 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000540 0x80B9BF50 0C03847B */ jal	Collision_FiniCylinder
/* 000541 0x80B9BF54 AFA70018 */ sw	$a3, 0X18($sp)
/* 000542 0x80B9BF58 8FA70018 */ lw	$a3, 0X18($sp)
/* 000543 0x80B9BF5C 8FA4001C */ lw	$a0, 0X1C($sp)
.L80B9BF60:
/* 000544 0x80B9BF60 8CE60144 */ lw	$a2, 0X144($a3)
/* 000545 0x80B9BF64 0C031933 */ jal	BgCheck_RemoveActorMesh
/* 000546 0x80B9BF68 24850880 */ addiu	$a1, $a0, 0X880
/* 000547 0x80B9BF6C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000548 0x80B9BF70 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000549 0x80B9BF74 03E00008 */ jr	$ra
/* 000550 0x80B9BF78 00000000 */ nop

