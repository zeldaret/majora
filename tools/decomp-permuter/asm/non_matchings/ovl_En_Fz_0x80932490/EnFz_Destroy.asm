glabel EnFz_Destroy
/* 000153 0x809326F4 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000154 0x809326F8 AFB00018 */ sw	$s0, 0X18($sp)
/* 000155 0x809326FC 00808025 */ move	$s0, $a0
/* 000156 0x80932700 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000157 0x80932704 AFA50024 */ sw	$a1, 0X24($sp)
/* 000158 0x80932708 8FA40024 */ lw	$a0, 0X24($sp)
/* 000159 0x8093270C 0C03847B */ jal	Collision_FiniCylinder
/* 000160 0x80932710 26050148 */ addiu	$a1, $s0, 0X148
/* 000161 0x80932714 8FA40024 */ lw	$a0, 0X24($sp)
/* 000162 0x80932718 0C03847B */ jal	Collision_FiniCylinder
/* 000163 0x8093271C 26050194 */ addiu	$a1, $s0, 0X194
/* 000164 0x80932720 8FA40024 */ lw	$a0, 0X24($sp)
/* 000165 0x80932724 0C03847B */ jal	Collision_FiniCylinder
/* 000166 0x80932728 260501E0 */ addiu	$a1, $s0, 0X1E0
/* 000167 0x8093272C 8E030120 */ lw	$v1, 0X120($s0)
/* 000168 0x80932730 50600010 */ beqzl	$v1, .L80932774
/* 000169 0x80932734 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000170 0x80932738 860E0BC4 */ lh	$t6, 0XBC4($s0)
/* 000171 0x8093273C 55C0000D */ bnezl	$t6, .L80932774
/* 000172 0x80932740 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000173 0x80932744 846F0000 */ lh	$t7, 0X0($v1)
/* 000174 0x80932748 2401015D */ li	$at, 0X15D
/* 000175 0x8093274C 55E10009 */ bnel	$t7, $at, .L80932774
/* 000176 0x80932750 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000177 0x80932754 8C780138 */ lw	$t8, 0X138($v1)
/* 000178 0x80932758 53000006 */ beqzl	$t8, .L80932774
/* 000179 0x8093275C 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000180 0x80932760 8C790448 */ lw	$t9, 0X448($v1)
/* 000181 0x80932764 53200003 */ beqzl	$t9, .L80932774
/* 000182 0x80932768 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000183 0x8093276C AC600448 */ sw	$zero, 0X448($v1)
/* 000184 0x80932770 8FBF001C */ lw	$ra, 0X1C($sp)
.L80932774:
/* 000185 0x80932774 8FB00018 */ lw	$s0, 0X18($sp)
/* 000186 0x80932778 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000187 0x8093277C 03E00008 */ jr	$ra
/* 000188 0x80932780 00000000 */ nop

