glabel func_8099571C
/* 000987 0x8099571C 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000988 0x80995720 AFB00018 */ sw	$s0, 0X18($sp)
/* 000989 0x80995724 00808025 */ move	$s0, $a0
/* 000990 0x80995728 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000991 0x8099572C 02002025 */ move	$a0, $s0
/* 000992 0x80995730 0C02E3B2 */ jal	func_800B8EC8
/* 000993 0x80995734 24053831 */ li	$a1, 0X3831
/* 000994 0x80995738 860203DE */ lh	$v0, 0X3DE($s0)
/* 000995 0x8099573C 44802000 */ mtc1	$zero, $f4
/* 000996 0x80995740 24010009 */ li	$at, 0X9
/* 000997 0x80995744 A60003DC */ sh	$zero, 0X3DC($s0)
/* 000998 0x80995748 14410010 */ bne	$v0, $at, .L8099578C
/* 000999 0x8099574C E60400CC */ swc1	$f4, 0XCC($s0)
/* 001000 0x80995750 3C058099 */ lui	$a1, %hi(D_80997330)
/* 001001 0x80995754 24A57330 */ addiu	$a1, $a1, %lo(D_80997330)
/* 001002 0x80995758 26040144 */ addiu	$a0, $s0, 0X144
/* 001003 0x8099575C 0C02F717 */ jal	func_800BDC5C
/* 001004 0x80995760 24060008 */ li	$a2, 0X8
/* 001005 0x80995764 3C018099 */ lui	$at, %hi(D_80997598)
/* 001006 0x80995768 C4267598 */ lwc1	$f6, %lo(D_80997598)($at)
/* 001007 0x8099576C 3C01BF80 */ lui	$at, 0xBF80
/* 001008 0x80995770 44814000 */ mtc1	$at, $f8
/* 001009 0x80995774 3C014040 */ lui	$at, 0x4040
/* 001010 0x80995778 44815000 */ mtc1	$at, $f10
/* 001011 0x8099577C E6060070 */ swc1	$f6, 0X70($s0)
/* 001012 0x80995780 E6080074 */ swc1	$f8, 0X74($s0)
/* 001013 0x80995784 1000001A */ b	.L809957F0
/* 001014 0x80995788 E60A0068 */ swc1	$f10, 0X68($s0)
.L8099578C:
/* 001015 0x8099578C 2401000A */ li	$at, 0XA
/* 001016 0x80995790 14410007 */ bne	$v0, $at, .L809957B0
/* 001017 0x80995794 26040144 */ addiu	$a0, $s0, 0X144
/* 001018 0x80995798 3C058099 */ lui	$a1, %hi(D_80997330)
/* 001019 0x8099579C 24A57330 */ addiu	$a1, $a1, %lo(D_80997330)
/* 001020 0x809957A0 0C02F717 */ jal	func_800BDC5C
/* 001021 0x809957A4 24060008 */ li	$a2, 0X8
/* 001022 0x809957A8 10000011 */ b	.L809957F0
/* 001023 0x809957AC 00000000 */ nop
.L809957B0:
/* 001024 0x809957B0 2401000B */ li	$at, 0XB
/* 001025 0x809957B4 1441000E */ bne	$v0, $at, .L809957F0
/* 001026 0x809957B8 26040144 */ addiu	$a0, $s0, 0X144
/* 001027 0x809957BC 3C058099 */ lui	$a1, %hi(D_80997330)
/* 001028 0x809957C0 24A57330 */ addiu	$a1, $a1, %lo(D_80997330)
/* 001029 0x809957C4 0C02F717 */ jal	func_800BDC5C
/* 001030 0x809957C8 24060009 */ li	$a2, 0X9
/* 001031 0x809957CC 3C018099 */ lui	$at, %hi(D_8099759C)
/* 001032 0x809957D0 C430759C */ lwc1	$f16, %lo(D_8099759C)($at)
/* 001033 0x809957D4 3C01BF80 */ lui	$at, 0xBF80
/* 001034 0x809957D8 44819000 */ mtc1	$at, $f18
/* 001035 0x809957DC 3C014000 */ lui	$at, 0x4000
/* 001036 0x809957E0 44812000 */ mtc1	$at, $f4
/* 001037 0x809957E4 E6100070 */ swc1	$f16, 0X70($s0)
/* 001038 0x809957E8 E6120074 */ swc1	$f18, 0X74($s0)
/* 001039 0x809957EC E6040068 */ swc1	$f4, 0X68($s0)
.L809957F0:
/* 001040 0x809957F0 3C0F8099 */ lui	$t7, %hi(func_80995818)
/* 001041 0x809957F4 240E000D */ li	$t6, 0XD
/* 001042 0x809957F8 25EF5818 */ addiu	$t7, $t7, %lo(func_80995818)
/* 001043 0x809957FC A60E03DE */ sh	$t6, 0X3DE($s0)
/* 001044 0x80995800 AE0F0228 */ sw	$t7, 0X228($s0)
/* 001045 0x80995804 8FBF001C */ lw	$ra, 0X1C($sp)
/* 001046 0x80995808 8FB00018 */ lw	$s0, 0X18($sp)
/* 001047 0x8099580C 27BD0020 */ addiu	$sp, $sp, 0X20
/* 001048 0x80995810 03E00008 */ jr	$ra
/* 001049 0x80995814 00000000 */ nop


.section .late_rodata

glabel D_80997598
/* 002938 0x80997598 */ .word	0x4019999A
glabel D_8099759C
/* 002939 0x8099759C */ .word	0x404CCCCD
