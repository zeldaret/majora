glabel func_80868944
/* 000861 0x80868944 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000862 0x80868948 AFB00018 */ sw	$s0, 0X18($sp)
/* 000863 0x8086894C 00808025 */ move	$s0, $a0
/* 000864 0x80868950 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000865 0x80868954 00A03825 */ move	$a3, $a1
/* 000866 0x80868958 02002025 */ move	$a0, $s0
/* 000867 0x8086895C 00E02825 */ move	$a1, $a3
/* 000868 0x80868960 0C02E314 */ jal	func_800B8C50
/* 000869 0x80868964 AFA70024 */ sw	$a3, 0X24($sp)
/* 000870 0x80868968 8E0201A0 */ lw	$v0, 0X1A0($s0)
/* 000871 0x8086896C 8FA70024 */ lw	$a3, 0X24($sp)
/* 000872 0x80868970 02002025 */ move	$a0, $s0
/* 000873 0x80868974 0440000B */ bltz	$v0, .L808689A4
/* 000874 0x80868978 2841FFF5 */ slti	$at, $v0, -0XB
/* 000875 0x8086897C 3C058087 */ lui	$a1, %hi(func_808687E8)
/* 000876 0x80868980 24A587E8 */ addiu	$a1, $a1, %lo(func_808687E8)
/* 000877 0x80868984 0C219EF4 */ jal	func_80867BD0
/* 000878 0x80868988 AFA70024 */ sw	$a3, 0X24($sp)
/* 000879 0x8086898C 8FA40024 */ lw	$a0, 0X24($sp)
/* 000880 0x80868990 8E060144 */ lw	$a2, 0X144($s0)
/* 000881 0x80868994 0C0318C5 */ jal	func_800C6314
/* 000882 0x80868998 24850880 */ addiu	$a1, $a0, 0X880
/* 000883 0x8086899C 1000000E */ b	.L808689D8
/* 000884 0x808689A0 8FBF001C */ lw	$ra, 0X1C($sp)
.L808689A4:
/* 000885 0x808689A4 14200004 */ bnez	$at, .L808689B8
/* 000886 0x808689A8 00E02025 */ move	$a0, $a3
/* 000887 0x808689AC 244E0001 */ addiu	$t6, $v0, 0X1
/* 000888 0x808689B0 10000008 */ b	.L808689D4
/* 000889 0x808689B4 AE0E01A0 */ sw	$t6, 0X1A0($s0)
.L808689B8:
/* 000890 0x808689B8 0C02D6EC */ jal	Actor_GetSwitchFlag
/* 000891 0x808689BC 920501F0 */ lbu	$a1, 0X1F0($s0)
/* 000892 0x808689C0 50400005 */ beqzl	$v0, .L808689D8
/* 000893 0x808689C4 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000894 0x808689C8 8E0F01A0 */ lw	$t7, 0X1A0($s0)
/* 000895 0x808689CC 25F80001 */ addiu	$t8, $t7, 0X1
/* 000896 0x808689D0 AE1801A0 */ sw	$t8, 0X1A0($s0)
.L808689D4:
/* 000897 0x808689D4 8FBF001C */ lw	$ra, 0X1C($sp)
.L808689D8:
/* 000898 0x808689D8 8FB00018 */ lw	$s0, 0X18($sp)
/* 000899 0x808689DC 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000900 0x808689E0 03E00008 */ jr	$ra
/* 000901 0x808689E4 00000000 */ nop

