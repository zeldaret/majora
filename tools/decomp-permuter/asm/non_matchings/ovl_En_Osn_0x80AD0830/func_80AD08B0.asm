glabel func_80AD08B0
/* 000032 0x80AD08B0 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000033 0x80AD08B4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000034 0x80AD08B8 0C04900F */ jal	func_8012403C
/* 000035 0x80AD08BC 00000000 */ nop
/* 000036 0x80AD08C0 244EFFFF */ addiu	$t6, $v0, -0X1
/* 000037 0x80AD08C4 2DC10014 */ sltiu	$at, $t6, 0X14
/* 000038 0x80AD08C8 1020002F */ beqz	$at, .L80AD0988
/* 000039 0x80AD08CC 00001025 */ move	$v0, $zero
/* 000040 0x80AD08D0 000E7080 */ sll	$t6, $t6, 2
/* 000041 0x80AD08D4 3C0180AD */ lui	$at, %hi(jtbl_D_80AD25A0)
/* 000042 0x80AD08D8 002E0821 */ addu	$at, $at, $t6
/* 000043 0x80AD08DC 8C2E25A0 */ lw	$t6, %lo(jtbl_D_80AD25A0)($at)
/* 000044 0x80AD08E0 01C00008 */ jr	$t6
/* 000045 0x80AD08E4 00000000 */ nop
glabel L80AD08E8
.L80AD08E8:
/* 000046 0x80AD08E8 10000027 */ b	.L80AD0988
/* 000047 0x80AD08EC 24021FD6 */ li	$v0, 0X1FD6
glabel L80AD08F0
.L80AD08F0:
/* 000048 0x80AD08F0 10000025 */ b	.L80AD0988
/* 000049 0x80AD08F4 24021FD8 */ li	$v0, 0X1FD8
glabel L80AD08F8
.L80AD08F8:
/* 000050 0x80AD08F8 10000023 */ b	.L80AD0988
/* 000051 0x80AD08FC 24021FDA */ li	$v0, 0X1FDA
glabel L80AD0900
.L80AD0900:
/* 000052 0x80AD0900 10000021 */ b	.L80AD0988
/* 000053 0x80AD0904 24021FDC */ li	$v0, 0X1FDC
glabel L80AD0908
.L80AD0908:
/* 000054 0x80AD0908 1000001F */ b	.L80AD0988
/* 000055 0x80AD090C 24021FDE */ li	$v0, 0X1FDE
glabel L80AD0910
.L80AD0910:
/* 000056 0x80AD0910 1000001D */ b	.L80AD0988
/* 000057 0x80AD0914 24021FE0 */ li	$v0, 0X1FE0
glabel L80AD0918
.L80AD0918:
/* 000058 0x80AD0918 1000001B */ b	.L80AD0988
/* 000059 0x80AD091C 24021FE2 */ li	$v0, 0X1FE2
glabel L80AD0920
.L80AD0920:
/* 000060 0x80AD0920 10000019 */ b	.L80AD0988
/* 000061 0x80AD0924 24021FE4 */ li	$v0, 0X1FE4
glabel L80AD0928
.L80AD0928:
/* 000062 0x80AD0928 10000017 */ b	.L80AD0988
/* 000063 0x80AD092C 24021FE6 */ li	$v0, 0X1FE6
glabel L80AD0930
.L80AD0930:
/* 000064 0x80AD0930 10000015 */ b	.L80AD0988
/* 000065 0x80AD0934 24021FE8 */ li	$v0, 0X1FE8
glabel L80AD0938
.L80AD0938:
/* 000066 0x80AD0938 10000013 */ b	.L80AD0988
/* 000067 0x80AD093C 24021FEA */ li	$v0, 0X1FEA
glabel L80AD0940
.L80AD0940:
/* 000068 0x80AD0940 10000011 */ b	.L80AD0988
/* 000069 0x80AD0944 24021FEC */ li	$v0, 0X1FEC
glabel L80AD0948
.L80AD0948:
/* 000070 0x80AD0948 1000000F */ b	.L80AD0988
/* 000071 0x80AD094C 24021FEE */ li	$v0, 0X1FEE
glabel L80AD0950
.L80AD0950:
/* 000072 0x80AD0950 1000000D */ b	.L80AD0988
/* 000073 0x80AD0954 24021FF0 */ li	$v0, 0X1FF0
glabel L80AD0958
.L80AD0958:
/* 000074 0x80AD0958 1000000B */ b	.L80AD0988
/* 000075 0x80AD095C 24021FF2 */ li	$v0, 0X1FF2
glabel L80AD0960
.L80AD0960:
/* 000076 0x80AD0960 10000009 */ b	.L80AD0988
/* 000077 0x80AD0964 24021FF4 */ li	$v0, 0X1FF4
glabel L80AD0968
.L80AD0968:
/* 000078 0x80AD0968 10000007 */ b	.L80AD0988
/* 000079 0x80AD096C 24021FF6 */ li	$v0, 0X1FF6
glabel L80AD0970
.L80AD0970:
/* 000080 0x80AD0970 10000005 */ b	.L80AD0988
/* 000081 0x80AD0974 24021FF8 */ li	$v0, 0X1FF8
glabel L80AD0978
.L80AD0978:
/* 000082 0x80AD0978 10000003 */ b	.L80AD0988
/* 000083 0x80AD097C 24021FFA */ li	$v0, 0X1FFA
glabel L80AD0980
.L80AD0980:
/* 000084 0x80AD0980 10000001 */ b	.L80AD0988
/* 000085 0x80AD0984 24021FFC */ li	$v0, 0X1FFC
.L80AD0988:
/* 000086 0x80AD0988 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000087 0x80AD098C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000088 0x80AD0990 03E00008 */ jr	$ra
/* 000089 0x80AD0994 00000000 */ nop


.section .late_rodata

glabel jtbl_D_80AD25A0
/* 001884 0x80AD25A0 */ .word	L80AD08F8
/* 001885 0x80AD25A4 */ .word	L80AD0908
/* 001886 0x80AD25A8 */ .word	L80AD0978
/* 001887 0x80AD25AC */ .word	L80AD0948
/* 001888 0x80AD25B0 */ .word	L80AD0968
/* 001889 0x80AD25B4 */ .word	L80AD0970
/* 001890 0x80AD25B8 */ .word	L80AD0980
/* 001891 0x80AD25BC */ .word	L80AD0960
/* 001892 0x80AD25C0 */ .word	L80AD0940
/* 001893 0x80AD25C4 */ .word	L80AD0920
/* 001894 0x80AD25C8 */ .word	L80AD08E8
/* 001895 0x80AD25CC */ .word	L80AD08F0
/* 001896 0x80AD25D0 */ .word	L80AD0910
/* 001897 0x80AD25D4 */ .word	L80AD0930
/* 001898 0x80AD25D8 */ .word	L80AD0950
/* 001899 0x80AD25DC */ .word	L80AD0938
/* 001900 0x80AD25E0 */ .word	L80AD0958
/* 001901 0x80AD25E4 */ .word	L80AD0918
/* 001902 0x80AD25E8 */ .word	L80AD0928
/* 001903 0x80AD25EC */ .word	L80AD0900
