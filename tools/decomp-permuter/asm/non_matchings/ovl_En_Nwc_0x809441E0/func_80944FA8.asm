glabel func_80944FA8
/* 000882 0x80944FA8 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000883 0x80944FAC AFB00020 */ sw	$s0, 0X20($sp)
/* 000884 0x80944FB0 00808025 */ move	$s0, $a0
/* 000885 0x80944FB4 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000886 0x80944FB8 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000887 0x80944FBC 86020254 */ lh	$v0, 0X254($s0)
/* 000888 0x80944FC0 24010007 */ li	$at, 0X7
/* 000889 0x80944FC4 14400003 */ bnez	$v0, .L80944FD4
/* 000890 0x80944FC8 244EFFFF */ addiu	$t6, $v0, -0X1
/* 000891 0x80944FCC 10000004 */ b	.L80944FE0
/* 000892 0x80944FD0 00001825 */ move	$v1, $zero
.L80944FD4:
/* 000893 0x80944FD4 A60E0254 */ sh	$t6, 0X254($s0)
/* 000894 0x80944FD8 86020254 */ lh	$v0, 0X254($s0)
/* 000895 0x80944FDC 00401825 */ move	$v1, $v0
.L80944FE0:
/* 000896 0x80944FE0 14600005 */ bnez	$v1, .L80944FF8
/* 000897 0x80944FE4 304F0007 */ andi	$t7, $v0, 0X7
/* 000898 0x80944FE8 0C2511EA */ jal	func_809447A8
/* 000899 0x80944FEC 02002025 */ move	$a0, $s0
/* 000900 0x80944FF0 1000001A */ b	.L8094505C
/* 000901 0x80944FF4 8FBF0024 */ lw	$ra, 0X24($sp)
.L80944FF8:
/* 000902 0x80944FF8 15E10005 */ bne	$t7, $at, .L80945010
/* 000903 0x80944FFC 02002025 */ move	$a0, $s0
/* 000904 0x80945000 3C014000 */ lui	$at, 0x4000
/* 000905 0x80945004 44812000 */ mtc1	$at, $f4
/* 000906 0x80945008 86020254 */ lh	$v0, 0X254($s0)
/* 000907 0x8094500C E6040068 */ swc1	$f4, 0X68($s0)
.L80945010:
/* 000908 0x80945010 3058000B */ andi	$t8, $v0, 0XB
/* 000909 0x80945014 24010008 */ li	$at, 0X8
/* 000910 0x80945018 57010004 */ bnel	$t8, $at, .L8094502C
/* 000911 0x8094501C 96190090 */ lhu	$t9, 0X90($s0)
/* 000912 0x80945020 0C02E3B2 */ jal	func_800B8EC8
/* 000913 0x80945024 24052994 */ li	$a1, 0X2994
/* 000914 0x80945028 96190090 */ lhu	$t9, 0X90($s0)
.L8094502C:
/* 000915 0x8094502C 260400BE */ addiu	$a0, $s0, 0XBE
/* 000916 0x80945030 2406000A */ li	$a2, 0XA
/* 000917 0x80945034 33280001 */ andi	$t0, $t9, 0X1
/* 000918 0x80945038 15000007 */ bnez	$t0, .L80945058
/* 000919 0x8094503C 24071000 */ li	$a3, 0X1000
/* 000920 0x80945040 86050256 */ lh	$a1, 0X256($s0)
/* 000921 0x80945044 24090800 */ li	$t1, 0X800
/* 000922 0x80945048 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 000923 0x8094504C AFA90010 */ sw	$t1, 0X10($sp)
/* 000924 0x80945050 860A00BE */ lh	$t2, 0XBE($s0)
/* 000925 0x80945054 A60A0032 */ sh	$t2, 0X32($s0)
.L80945058:
/* 000926 0x80945058 8FBF0024 */ lw	$ra, 0X24($sp)
.L8094505C:
/* 000927 0x8094505C 8FB00020 */ lw	$s0, 0X20($sp)
/* 000928 0x80945060 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000929 0x80945064 03E00008 */ jr	$ra
/* 000930 0x80945068 00000000 */ nop

