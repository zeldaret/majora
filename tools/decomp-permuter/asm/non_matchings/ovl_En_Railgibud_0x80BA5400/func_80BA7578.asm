glabel func_80BA7578
/* 002142 0x80BA7578 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 002143 0x80BA757C AFB00018 */ sw	$s0, 0X18($sp)
/* 002144 0x80BA7580 00808025 */ move	$s0, $a0
/* 002145 0x80BA7584 AFBF001C */ sw	$ra, 0X1C($sp)
/* 002146 0x80BA7588 00A03825 */ move	$a3, $a1
/* 002147 0x80BA758C 960E0400 */ lhu	$t6, 0X400($s0)
/* 002148 0x80BA7590 24E44908 */ addiu	$a0, $a3, 0X4908
/* 002149 0x80BA7594 15C00027 */ bnez	$t6, .L80BA7634
/* 002150 0x80BA7598 00000000 */ nop
/* 002151 0x80BA759C 860F03F8 */ lh	$t7, 0X3F8($s0)
/* 002152 0x80BA75A0 00E02825 */ move	$a1, $a3
/* 002153 0x80BA75A4 15E00023 */ bnez	$t7, .L80BA7634
/* 002154 0x80BA75A8 00000000 */ nop
/* 002155 0x80BA75AC 02002025 */ move	$a0, $s0
/* 002156 0x80BA75B0 0C02E134 */ jal	func_800B84D0
/* 002157 0x80BA75B4 AFA70024 */ sw	$a3, 0X24($sp)
/* 002158 0x80BA75B8 1040000F */ beqz	$v0, .L80BA75F8
/* 002159 0x80BA75BC 8FA70024 */ lw	$a3, 0X24($sp)
/* 002160 0x80BA75C0 24180001 */ li	$t8, 0X1
/* 002161 0x80BA75C4 A61803FA */ sh	$t8, 0X3FA($s0)
/* 002162 0x80BA75C8 00E02025 */ move	$a0, $a3
/* 002163 0x80BA75CC 240513B2 */ li	$a1, 0X13B2
/* 002164 0x80BA75D0 0C05462C */ jal	func_801518B0
/* 002165 0x80BA75D4 02003025 */ move	$a2, $s0
/* 002166 0x80BA75D8 241913B2 */ li	$t9, 0X13B2
/* 002167 0x80BA75DC A6190400 */ sh	$t9, 0X400($s0)
/* 002168 0x80BA75E0 02002025 */ move	$a0, $s0
/* 002169 0x80BA75E4 0C02E3B2 */ jal	func_800B8EC8
/* 002170 0x80BA75E8 240538E5 */ li	$a1, 0X38E5
/* 002171 0x80BA75EC 44802000 */ mtc1	$zero, $f4
/* 002172 0x80BA75F0 1000002F */ b	.L80BA76B0
/* 002173 0x80BA75F4 E6040070 */ swc1	$f4, 0X70($s0)
.L80BA75F8:
/* 002174 0x80BA75F8 8E080004 */ lw	$t0, 0X4($s0)
/* 002175 0x80BA75FC 24010009 */ li	$at, 0X9
/* 002176 0x80BA7600 31090009 */ andi	$t1, $t0, 0X9
/* 002177 0x80BA7604 5521002B */ bnel	$t1, $at, .L80BA76B4
/* 002178 0x80BA7608 8FBF001C */ lw	$ra, 0X1C($sp)
/* 002179 0x80BA760C 920A0155 */ lbu	$t2, 0X155($s0)
/* 002180 0x80BA7610 02002025 */ move	$a0, $s0
/* 002181 0x80BA7614 00E02825 */ move	$a1, $a3
/* 002182 0x80BA7618 314B0002 */ andi	$t3, $t2, 0X2
/* 002183 0x80BA761C 55600025 */ bnezl	$t3, .L80BA76B4
/* 002184 0x80BA7620 8FBF001C */ lw	$ra, 0X1C($sp)
/* 002185 0x80BA7624 0C02E185 */ jal	func_800B8614
/* 002186 0x80BA7628 3C0642C8 */ lui	$a2, 0x42C8
/* 002187 0x80BA762C 10000021 */ b	.L80BA76B4
/* 002188 0x80BA7630 8FBF001C */ lw	$ra, 0X1C($sp)
.L80BA7634:
/* 002189 0x80BA7634 0C054926 */ jal	func_80152498
/* 002190 0x80BA7638 AFA70024 */ sw	$a3, 0X24($sp)
/* 002191 0x80BA763C 2C410007 */ sltiu	$at, $v0, 0X7
/* 002192 0x80BA7640 1020001B */ beqz	$at, .L80BA76B0
/* 002193 0x80BA7644 8FA70024 */ lw	$a3, 0X24($sp)
/* 002194 0x80BA7648 00026080 */ sll	$t4, $v0, 2
/* 002195 0x80BA764C 3C0180BB */ lui	$at, %hi(jtbl_D_80BA8390)
/* 002196 0x80BA7650 002C0821 */ addu	$at, $at, $t4
/* 002197 0x80BA7654 8C2C8390 */ lw	$t4, %lo(jtbl_D_80BA8390)($at)
/* 002198 0x80BA7658 01800008 */ jr	$t4
/* 002199 0x80BA765C 00000000 */ nop
glabel L80BA7660
.L80BA7660:
/* 002200 0x80BA7660 00E02025 */ move	$a0, $a3
/* 002201 0x80BA7664 0C051D89 */ jal	func_80147624
/* 002202 0x80BA7668 AFA70024 */ sw	$a3, 0X24($sp)
/* 002203 0x80BA766C 10400010 */ beqz	$v0, .L80BA76B0
/* 002204 0x80BA7670 8FA70024 */ lw	$a3, 0X24($sp)
/* 002205 0x80BA7674 00E02025 */ move	$a0, $a3
/* 002206 0x80BA7678 240513B3 */ li	$a1, 0X13B3
/* 002207 0x80BA767C 0C05462C */ jal	func_801518B0
/* 002208 0x80BA7680 02003025 */ move	$a2, $s0
/* 002209 0x80BA7684 240D13B3 */ li	$t5, 0X13B3
/* 002210 0x80BA7688 10000009 */ b	.L80BA76B0
/* 002211 0x80BA768C A60D0400 */ sh	$t5, 0X400($s0)
glabel L80BA7690
.L80BA7690:
/* 002212 0x80BA7690 0C051D89 */ jal	func_80147624
/* 002213 0x80BA7694 00E02025 */ move	$a0, $a3
/* 002214 0x80BA7698 10400005 */ beqz	$v0, .L80BA76B0
/* 002215 0x80BA769C 3C0180BB */ lui	$at, %hi(D_80BA83AC)
/* 002216 0x80BA76A0 A6000400 */ sh	$zero, 0X400($s0)
/* 002217 0x80BA76A4 A60003FA */ sh	$zero, 0X3FA($s0)
/* 002218 0x80BA76A8 C42683AC */ lwc1	$f6, %lo(D_80BA83AC)($at)
/* 002219 0x80BA76AC E6060070 */ swc1	$f6, 0X70($s0)
glabel L80BA76B0
.L80BA76B0:
/* 002220 0x80BA76B0 8FBF001C */ lw	$ra, 0X1C($sp)
.L80BA76B4:
/* 002221 0x80BA76B4 8FB00018 */ lw	$s0, 0X18($sp)
/* 002222 0x80BA76B8 27BD0020 */ addiu	$sp, $sp, 0X20
/* 002223 0x80BA76BC 03E00008 */ jr	$ra
/* 002224 0x80BA76C0 00000000 */ nop


.section .late_rodata

glabel jtbl_D_80BA8390
/* 003044 0x80BA8390 */ .word	L80BA76B0
/* 003045 0x80BA8394 */ .word	L80BA76B0
/* 003046 0x80BA8398 */ .word	L80BA76B0
/* 003047 0x80BA839C */ .word	L80BA76B0
/* 003048 0x80BA83A0 */ .word	L80BA76B0
/* 003049 0x80BA83A4 */ .word	L80BA7660
/* 003050 0x80BA83A8 */ .word	L80BA7690
glabel D_80BA83AC
/* 003051 0x80BA83AC */ .word	0x3F19999A
