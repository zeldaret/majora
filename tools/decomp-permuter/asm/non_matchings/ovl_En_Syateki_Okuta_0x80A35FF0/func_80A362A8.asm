glabel func_80A362A8
/* 000174 0x80A362A8 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000175 0x80A362AC AFBF0014 */ sw	$ra, 0X14($sp)
/* 000176 0x80A362B0 8CA21CE4 */ lw	$v0, 0X1CE4($a1)
/* 000177 0x80A362B4 2403011D */ li	$v1, 0X11D
/* 000178 0x80A362B8 5040000C */ beqzl	$v0, .L80A362EC
/* 000179 0x80A362BC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000180 0x80A362C0 844E0000 */ lh	$t6, 0X0($v0)
.L80A362C4:
/* 000181 0x80A362C4 546E0006 */ bnel	$v1, $t6, .L80A362E0
/* 000182 0x80A362C8 8C42012C */ lw	$v0, 0X12C($v0)
/* 000183 0x80A362CC 0C28D8BE */ jal	func_80A362F8
/* 000184 0x80A362D0 AC820120 */ sw	$v0, 0X120($a0)
/* 000185 0x80A362D4 10000005 */ b	.L80A362EC
/* 000186 0x80A362D8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000187 0x80A362DC 8C42012C */ lw	$v0, 0X12C($v0)
.L80A362E0:
/* 000188 0x80A362E0 5440FFF8 */ bnezl	$v0, .L80A362C4
/* 000189 0x80A362E4 844E0000 */ lh	$t6, 0X0($v0)
/* 000190 0x80A362E8 8FBF0014 */ lw	$ra, 0X14($sp)
.L80A362EC:
/* 000191 0x80A362EC 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000192 0x80A362F0 03E00008 */ jr	$ra
/* 000193 0x80A362F4 00000000 */ nop

