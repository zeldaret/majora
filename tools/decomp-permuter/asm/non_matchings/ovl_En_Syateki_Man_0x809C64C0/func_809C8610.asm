glabel func_809C8610
/* 002132 0x809C8610 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 002133 0x809C8614 AFBF0014 */ sw	$ra, 0X14($sp)
/* 002134 0x809C8618 00A03025 */ move	$a2, $a1
/* 002135 0x809C861C 8CC21CCC */ lw	$v0, 0X1CCC($a2)
/* 002136 0x809C8620 3C010001 */ lui	$at, 0x0001
/* 002137 0x809C8624 00C11821 */ addu	$v1, $a2, $at
/* 002138 0x809C8628 8C4E0A6C */ lw	$t6, 0XA6C($v0)
/* 002139 0x809C862C 35CF0020 */ ori	$t7, $t6, 0X20
/* 002140 0x809C8630 AC4F0A6C */ sw	$t7, 0XA6C($v0)
/* 002141 0x809C8634 84786C6E */ lh	$t8, 0X6C6E($v1)
/* 002142 0x809C8638 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 002143 0x809C863C 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 002144 0x809C8640 57000030 */ bnezl	$t8, .L809C8704
/* 002145 0x809C8644 8FBF0014 */ lw	$ra, 0X14($sp)
/* 002146 0x809C8648 8C483DE8 */ lw	$t0, 0X3DE8($v0)
/* 002147 0x809C864C 8C493DEC */ lw	$t1, 0X3DEC($v0)
/* 002148 0x809C8650 3C05809D */ lui	$a1, %hi(D_809C94A0)
/* 002149 0x809C8654 15000010 */ bnez	$t0, .L809C8698
/* 002150 0x809C8658 00000000 */ nop
/* 002151 0x809C865C 1520000E */ bnez	$t1, .L809C8698
/* 002152 0x809C8660 240A0000 */ li	$t2, 0X0
/* 002153 0x809C8664 240B0000 */ li	$t3, 0X0
/* 002154 0x809C8668 24190005 */ li	$t9, 0X5
/* 002155 0x809C866C AC4B3DEC */ sw	$t3, 0X3DEC($v0)
/* 002156 0x809C8670 AC4A3DE8 */ sw	$t2, 0X3DE8($v0)
/* 002157 0x809C8674 A0593DD1 */ sb	$t9, 0X3DD1($v0)
/* 002158 0x809C8678 3C0C809D */ lui	$t4, %hi(func_809C8488)
/* 002159 0x809C867C 258C8488 */ addiu	$t4, $t4, %lo(func_809C8488)
/* 002160 0x809C8680 A480027E */ sh	$zero, 0X27E($a0)
/* 002161 0x809C8684 A480027C */ sh	$zero, 0X27C($a0)
/* 002162 0x809C8688 AC8C0188 */ sw	$t4, 0X188($a0)
/* 002163 0x809C868C 3C01809D */ lui	$at, %hi(D_809C94A0)
/* 002164 0x809C8690 1000001B */ b	.L809C8700
/* 002165 0x809C8694 AC2094A0 */ sw	$zero, %lo(D_809C94A0)($at)
.L809C8698:
/* 002166 0x809C8698 8CA594A0 */ lw	$a1, %lo(D_809C94A0)($a1)
/* 002167 0x809C869C 28A1000B */ slti	$at, $a1, 0XB
/* 002168 0x809C86A0 14200015 */ bnez	$at, .L809C86F8
/* 002169 0x809C86A4 24A50001 */ addiu	$a1, $a1, 0X1
/* 002170 0x809C86A8 8C4F3E94 */ lw	$t7, 0X3E94($v0)
/* 002171 0x809C86AC 8C4E3E90 */ lw	$t6, 0X3E90($v0)
/* 002172 0x809C86B0 24054807 */ li	$a1, 0X4807
/* 002173 0x809C86B4 25F90064 */ addiu	$t9, $t7, 0X64
/* 002174 0x809C86B8 2F210064 */ sltiu	$at, $t9, 0X64
/* 002175 0x809C86BC 01C1C021 */ addu	$t8, $t6, $at
/* 002176 0x809C86C0 AC583E90 */ sw	$t8, 0X3E90($v0)
/* 002177 0x809C86C4 AC593E94 */ sw	$t9, 0X3E94($v0)
/* 002178 0x809C86C8 946D6C44 */ lhu	$t5, 0X6C44($v1)
/* 002179 0x809C86CC 3C010001 */ lui	$at, 0x0001
/* 002180 0x809C86D0 00260821 */ addu	$at, $at, $a2
/* 002181 0x809C86D4 25A8000A */ addiu	$t0, $t5, 0XA
/* 002182 0x809C86D8 A4286C44 */ sh	$t0, 0X6C44($at)
/* 002183 0x809C86DC 84890280 */ lh	$t1, 0X280($a0)
/* 002184 0x809C86E0 252A000A */ addiu	$t2, $t1, 0XA
/* 002185 0x809C86E4 0C02E3B2 */ jal	func_800B8EC8
/* 002186 0x809C86E8 A48A0280 */ sh	$t2, 0X280($a0)
/* 002187 0x809C86EC 3C01809D */ lui	$at, %hi(D_809C94A0)
/* 002188 0x809C86F0 10000003 */ b	.L809C8700
/* 002189 0x809C86F4 AC2094A0 */ sw	$zero, %lo(D_809C94A0)($at)
.L809C86F8:
/* 002190 0x809C86F8 3C01809D */ lui	$at, %hi(D_809C94A0)
/* 002191 0x809C86FC AC2594A0 */ sw	$a1, %lo(D_809C94A0)($at)
.L809C8700:
/* 002192 0x809C8700 8FBF0014 */ lw	$ra, 0X14($sp)
.L809C8704:
/* 002193 0x809C8704 27BD0018 */ addiu	$sp, $sp, 0X18
/* 002194 0x809C8708 03E00008 */ jr	$ra
/* 002195 0x809C870C 00000000 */ nop

