glabel func_80995818
/* 001050 0x80995818 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 001051 0x8099581C AFB40030 */ sw	$s4, 0X30($sp)
/* 001052 0x80995820 AFB20028 */ sw	$s2, 0X28($sp)
/* 001053 0x80995824 00809025 */ move	$s2, $a0
/* 001054 0x80995828 00A0A025 */ move	$s4, $a1
/* 001055 0x8099582C AFBF0034 */ sw	$ra, 0X34($sp)
/* 001056 0x80995830 AFB3002C */ sw	$s3, 0X2C($sp)
/* 001057 0x80995834 AFB10024 */ sw	$s1, 0X24($sp)
/* 001058 0x80995838 AFB00020 */ sw	$s0, 0X20($sp)
/* 001059 0x8099583C 264400CC */ addiu	$a0, $s2, 0XCC
/* 001060 0x80995840 3C0541C8 */ lui	$a1, 0x41C8
/* 001061 0x80995844 3C063F80 */ lui	$a2, 0x3F80
/* 001062 0x80995848 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 001063 0x8099584C 3C074020 */ lui	$a3, 0x4020
/* 001064 0x80995850 240E0064 */ li	$t6, 0X64
/* 001065 0x80995854 AFAE0010 */ sw	$t6, 0X10($sp)
/* 001066 0x80995858 264400BC */ addiu	$a0, $s2, 0XBC
/* 001067 0x8099585C 00002825 */ move	$a1, $zero
/* 001068 0x80995860 24060010 */ li	$a2, 0X10
/* 001069 0x80995864 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 001070 0x80995868 240707D0 */ li	$a3, 0X7D0
/* 001071 0x8099586C 26440144 */ addiu	$a0, $s2, 0X144
/* 001072 0x80995870 0C04DE2E */ jal	func_801378B8
/* 001073 0x80995874 8E450154 */ lw	$a1, 0X154($s2)
/* 001074 0x80995878 10400006 */ beqz	$v0, .L80995894
/* 001075 0x8099587C 3C01C000 */ lui	$at, 0xC000
/* 001076 0x80995880 44812000 */ mtc1	$at, $f4
/* 001077 0x80995884 A64000BC */ sh	$zero, 0XBC($s2)
/* 001078 0x80995888 02402025 */ move	$a0, $s2
/* 001079 0x8099588C 0C26568C */ jal	func_80995A30
/* 001080 0x80995890 E6440074 */ swc1	$f4, 0X74($s2)
.L80995894:
/* 001081 0x80995894 964F0090 */ lhu	$t7, 0X90($s2)
/* 001082 0x80995898 00008025 */ move	$s0, $zero
/* 001083 0x8099589C 31F80002 */ andi	$t8, $t7, 0X2
/* 001084 0x809958A0 5300000D */ beqzl	$t8, .L809958D8
/* 001085 0x809958A4 8FBF0034 */ lw	$ra, 0X34($sp)
/* 001086 0x809958A8 44803000 */ mtc1	$zero, $f6
/* 001087 0x809958AC 26510024 */ addiu	$s1, $s2, 0X24
/* 001088 0x809958B0 2413000A */ li	$s3, 0XA
/* 001089 0x809958B4 E6460070 */ swc1	$f6, 0X70($s2)
/* 001090 0x809958B8 02802025 */ move	$a0, $s4
.L809958BC:
/* 001091 0x809958BC 02402825 */ move	$a1, $s2
/* 001092 0x809958C0 0C2651EC */ jal	func_809947B0
/* 001093 0x809958C4 02203025 */ move	$a2, $s1
/* 001094 0x809958C8 26100001 */ addiu	$s0, $s0, 0X1
/* 001095 0x809958CC 5613FFFB */ bnel	$s0, $s3, .L809958BC
/* 001096 0x809958D0 02802025 */ move	$a0, $s4
/* 001097 0x809958D4 8FBF0034 */ lw	$ra, 0X34($sp)
.L809958D8:
/* 001098 0x809958D8 8FB00020 */ lw	$s0, 0X20($sp)
/* 001099 0x809958DC 8FB10024 */ lw	$s1, 0X24($sp)
/* 001100 0x809958E0 8FB20028 */ lw	$s2, 0X28($sp)
/* 001101 0x809958E4 8FB3002C */ lw	$s3, 0X2C($sp)
/* 001102 0x809958E8 8FB40030 */ lw	$s4, 0X30($sp)
/* 001103 0x809958EC 03E00008 */ jr	$ra
/* 001104 0x809958F0 27BD0038 */ addiu	$sp, $sp, 0X38

