glabel func_80AABE34
/* 000125 0x80AABE34 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000126 0x80AABE38 AFB10018 */ sw	$s1, 0X18($sp)
/* 000127 0x80AABE3C AFB00014 */ sw	$s0, 0X14($sp)
/* 000128 0x80AABE40 00808025 */ move	$s0, $a0
/* 000129 0x80AABE44 00A08825 */ move	$s1, $a1
/* 000130 0x80AABE48 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000131 0x80AABE4C 8605001C */ lh	$a1, 0X1C($s0)
/* 000132 0x80AABE50 02202025 */ move	$a0, $s1
/* 000133 0x80AABE54 24A50071 */ addiu	$a1, $a1, 0X71
/* 000134 0x80AABE58 30A5FFFF */ andi	$a1, $a1, 0XFFFF
/* 000135 0x80AABE5C 0C03B8A7 */ jal	func_800EE29C
/* 000136 0x80AABE60 A7A50026 */ sh	$a1, 0X26($sp)
/* 000137 0x80AABE64 10400029 */ beqz	$v0, .L80AABF0C
/* 000138 0x80AABE68 97A50026 */ lhu	$a1, 0X26($sp)
/* 000139 0x80AABE6C 0C03B880 */ jal	func_800EE200
/* 000140 0x80AABE70 02202025 */ move	$a0, $s1
/* 000141 0x80AABE74 00027080 */ sll	$t6, $v0, 2
/* 000142 0x80AABE78 022E1821 */ addu	$v1, $s1, $t6
/* 000143 0x80AABE7C 8C641F4C */ lw	$a0, 0X1F4C($v1)
/* 000144 0x80AABE80 962F1F34 */ lhu	$t7, 0X1F34($s1)
/* 000145 0x80AABE84 00403825 */ move	$a3, $v0
/* 000146 0x80AABE88 94980002 */ lhu	$t8, 0X2($a0)
/* 000147 0x80AABE8C 55F8001A */ bnel	$t7, $t8, .L80AABEF8
/* 000148 0x80AABE90 02002025 */ move	$a0, $s0
/* 000149 0x80AABE94 94850000 */ lhu	$a1, 0X0($a0)
/* 000150 0x80AABE98 92190260 */ lbu	$t9, 0X260($s0)
/* 000151 0x80AABE9C 3C0C80AB */ lui	$t4, %hi(D_80AAC460)
/* 000152 0x80AABEA0 258CC460 */ addiu	$t4, $t4, %lo(D_80AAC460)
/* 000153 0x80AABEA4 13250013 */ beq	$t9, $a1, .L80AABEF4
/* 000154 0x80AABEA8 26040144 */ addiu	$a0, $s0, 0X144
/* 000155 0x80AABEAC A2050260 */ sb	$a1, 0X260($s0)
/* 000156 0x80AABEB0 8C681F4C */ lw	$t0, 0X1F4C($v1)
/* 000157 0x80AABEB4 24010001 */ li	$at, 0X1
/* 000158 0x80AABEB8 95090000 */ lhu	$t1, 0X0($t0)
/* 000159 0x80AABEBC 55210004 */ bnel	$t1, $at, .L80AABED0
/* 000160 0x80AABEC0 A2000261 */ sb	$zero, 0X261($s0)
/* 000161 0x80AABEC4 10000002 */ b	.L80AABED0
/* 000162 0x80AABEC8 A2000261 */ sb	$zero, 0X261($s0)
/* 000163 0x80AABECC A2000261 */ sb	$zero, 0X261($s0)
.L80AABED0:
/* 000164 0x80AABED0 920A0261 */ lbu	$t2, 0X261($s0)
/* 000165 0x80AABED4 AFA70020 */ sw	$a3, 0X20($sp)
/* 000166 0x80AABED8 00003025 */ move	$a2, $zero
/* 000167 0x80AABEDC 000A5880 */ sll	$t3, $t2, 2
/* 000168 0x80AABEE0 016A5823 */ subu	$t3, $t3, $t2
/* 000169 0x80AABEE4 000B58C0 */ sll	$t3, $t3, 3
/* 000170 0x80AABEE8 0C2AAF10 */ jal	func_80AABC40
/* 000171 0x80AABEEC 016C2821 */ addu	$a1, $t3, $t4
/* 000172 0x80AABEF0 8FA70020 */ lw	$a3, 0X20($sp)
.L80AABEF4:
/* 000173 0x80AABEF4 02002025 */ move	$a0, $s0
.L80AABEF8:
/* 000174 0x80AABEF8 02202825 */ move	$a1, $s1
/* 000175 0x80AABEFC 0C03B7C9 */ jal	func_800EDF24
/* 000176 0x80AABF00 00E03025 */ move	$a2, $a3
/* 000177 0x80AABF04 10000004 */ b	.L80AABF18
/* 000178 0x80AABF08 8FBF001C */ lw	$ra, 0X1C($sp)
.L80AABF0C:
/* 000179 0x80AABF0C 240D0063 */ li	$t5, 0X63
/* 000180 0x80AABF10 A20D0260 */ sb	$t5, 0X260($s0)
/* 000181 0x80AABF14 8FBF001C */ lw	$ra, 0X1C($sp)
.L80AABF18:
/* 000182 0x80AABF18 8FB00014 */ lw	$s0, 0X14($sp)
/* 000183 0x80AABF1C 8FB10018 */ lw	$s1, 0X18($sp)
/* 000184 0x80AABF20 03E00008 */ jr	$ra
/* 000185 0x80AABF24 27BD0028 */ addiu	$sp, $sp, 0X28

