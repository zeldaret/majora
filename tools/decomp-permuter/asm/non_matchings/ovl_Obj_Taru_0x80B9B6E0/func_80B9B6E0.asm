glabel func_80B9B6E0
/* 000000 0x80B9B6E0 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000001 0x80B9B6E4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000002 0x80B9B6E8 00A03825 */ move	$a3, $a1
/* 000003 0x80B9B6EC 8482001C */ lh	$v0, 0X1C($a0)
/* 000004 0x80B9B6F0 2406FFFF */ li	$a2, -0X1
/* 000005 0x80B9B6F4 00E02025 */ move	$a0, $a3
/* 000006 0x80B9B6F8 3042001F */ andi	$v0, $v0, 0X1F
/* 000007 0x80B9B6FC 00021080 */ sll	$v0, $v0, 2
/* 000008 0x80B9B700 3442FF01 */ ori	$v0, $v0, 0XFF01
/* 000009 0x80B9B704 304F0003 */ andi	$t7, $v0, 0X3
/* 000010 0x80B9B708 51E00005 */ beqzl	$t7, .L80B9B720
/* 000011 0x80B9B70C 28C20000 */ slti	$v0, $a2, 0X0
/* 000012 0x80B9B710 304603FC */ andi	$a2, $v0, 0X3FC
/* 000013 0x80B9B714 00063083 */ sra	$a2, $a2, 2
/* 000014 0x80B9B718 30C600FF */ andi	$a2, $a2, 0XFF
/* 000015 0x80B9B71C 28C20000 */ slti	$v0, $a2, 0X0
.L80B9B720:
/* 000016 0x80B9B720 38420001 */ xori	$v0, $v0, 0X1
/* 000017 0x80B9B724 2C420001 */ sltiu	$v0, $v0, 0X1
/* 000018 0x80B9B728 54400005 */ bnezl	$v0, .L80B9B740
/* 000019 0x80B9B72C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000020 0x80B9B730 0C02D71E */ jal	Actor_GetChestFlag
/* 000021 0x80B9B734 00C02825 */ move	$a1, $a2
/* 000022 0x80B9B738 2C420001 */ sltiu	$v0, $v0, 0X1
/* 000023 0x80B9B73C 8FBF0014 */ lw	$ra, 0X14($sp)
.L80B9B740:
/* 000024 0x80B9B740 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000025 0x80B9B744 03E00008 */ jr	$ra
/* 000026 0x80B9B748 00000000 */ nop

