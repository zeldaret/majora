glabel func_8088159C
/* 006043 0x8088159C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 006044 0x808815A0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 006045 0x808815A4 AFA5001C */ sw	$a1, 0X1C($sp)
/* 006046 0x808815A8 00803025 */ move	$a2, $a0
/* 006047 0x808815AC 8CD80150 */ lw	$t8, 0X150($a2)
/* 006048 0x808815B0 240E0005 */ li	$t6, 0X5
/* 006049 0x808815B4 240F0006 */ li	$t7, 0X6
/* 006050 0x808815B8 3C088089 */ lui	$t0, %hi(D_80888F08)
/* 006051 0x808815BC 0018C880 */ sll	$t9, $t8, 2
/* 006052 0x808815C0 ACCE0144 */ sw	$t6, 0X144($a2)
/* 006053 0x808815C4 ACCF020C */ sw	$t7, 0X20C($a2)
/* 006054 0x808815C8 01194021 */ addu	$t0, $t0, $t9
/* 006055 0x808815CC 8D088F08 */ lw	$t0, %lo(D_80888F08)($t0)
/* 006056 0x808815D0 24C401A4 */ addiu	$a0, $a2, 0X1A4
/* 006057 0x808815D4 8D050018 */ lw	$a1, 0X18($t0)
/* 006058 0x808815D8 0C04DD0C */ jal	SkelAnime_ChangeAnimDefaultStop
/* 006059 0x808815DC AFA60018 */ sw	$a2, 0X18($sp)
/* 006060 0x808815E0 8FA60018 */ lw	$a2, 0X18($sp)
/* 006061 0x808815E4 3C018089 */ lui	$at, %hi(D_808892E0)
/* 006062 0x808815E8 C42292E0 */ lwc1	$f2, %lo(D_808892E0)($at)
/* 006063 0x808815EC 8CC201C4 */ lw	$v0, 0X1C4($a2)
/* 006064 0x808815F0 C4C80528 */ lwc1	$f8, 0X528($a2)
/* 006065 0x808815F4 C4D2025C */ lwc1	$f18, 0X25C($a2)
/* 006066 0x808815F8 84490002 */ lh	$t1, 0X2($v0)
/* 006067 0x808815FC ACC00240 */ sw	$zero, 0X240($a2)
/* 006068 0x80881600 44892000 */ mtc1	$t1, $f4
/* 006069 0x80881604 00000000 */ nop
/* 006070 0x80881608 46802020 */ cvt.s.w	$f0, $f4
/* 006071 0x8088160C 46020182 */ mul.s	$f6, $f0, $f2
/* 006072 0x80881610 00000000 */ nop
/* 006073 0x80881614 46083282 */ mul.s	$f10, $f6, $f8
/* 006074 0x80881618 00000000 */ nop
/* 006075 0x8088161C 46025402 */ mul.s	$f16, $f10, $f2
/* 006076 0x80881620 46109100 */ add.s	$f4, $f18, $f16
/* 006077 0x80881624 E4C4025C */ swc1	$f4, 0X25C($a2)
/* 006078 0x80881628 8FBF0014 */ lw	$ra, 0X14($sp)
/* 006079 0x8088162C 03E00008 */ jr	$ra
/* 006080 0x80881630 27BD0018 */ addiu	$sp, $sp, 0X18

