glabel func_80B2A094
/* 001865 0x80B2A094 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 001866 0x80B2A098 AFB00018 */ sw	$s0, 0X18($sp)
/* 001867 0x80B2A09C 00808025 */ move	$s0, $a0
/* 001868 0x80B2A0A0 AFBF001C */ sw	$ra, 0X1C($sp)
/* 001869 0x80B2A0A4 AFA5003C */ sw	$a1, 0X3C($sp)
/* 001870 0x80B2A0A8 860E02B4 */ lh	$t6, 0X2B4($s0)
/* 001871 0x80B2A0AC 240F0001 */ li	$t7, 0X1
/* 001872 0x80B2A0B0 3C0180B3 */ lui	$at, %hi(D_80B2B2E4)
/* 001873 0x80B2A0B4 15C00002 */ bnez	$t6, .L80B2A0C0
/* 001874 0x80B2A0B8 00000000 */ nop
/* 001875 0x80B2A0BC AC2FB2E4 */ sw	$t7, %lo(D_80B2B2E4)($at)
.L80B2A0C0:
/* 001876 0x80B2A0C0 0C03C86E */ jal	ActorCutscene_GetCurrentCamera
/* 001877 0x80B2A0C4 860402BA */ lh	$a0, 0X2BA($s0)
/* 001878 0x80B2A0C8 3C0480B3 */ lui	$a0, %hi(D_80B2B2EC)
/* 001879 0x80B2A0CC 2484B2EC */ addiu	$a0, $a0, %lo(D_80B2B2EC)
/* 001880 0x80B2A0D0 A60202CA */ sh	$v0, 0X2CA($s0)
/* 001881 0x80B2A0D4 8C830000 */ lw	$v1, 0X0($a0)
/* 001882 0x80B2A0D8 1060000A */ beqz	$v1, .L80B2A104
/* 001883 0x80B2A0DC 24780001 */ addiu	$t8, $v1, 0X1
/* 001884 0x80B2A0E0 2B0100C9 */ slti	$at, $t8, 0XC9
/* 001885 0x80B2A0E4 14200007 */ bnez	$at, .L80B2A104
/* 001886 0x80B2A0E8 AC980000 */ sw	$t8, 0X0($a0)
/* 001887 0x80B2A0EC 0C02D9C3 */ jal	Actor_MarkForDeath
/* 001888 0x80B2A0F0 02002025 */ move	$a0, $s0
/* 001889 0x80B2A0F4 0C03C7EF */ jal	ActorCutscene_Stop
/* 001890 0x80B2A0F8 860402BA */ lh	$a0, 0X2BA($s0)
/* 001891 0x80B2A0FC 1000004B */ b	.L80B2A22C
/* 001892 0x80B2A100 8FBF001C */ lw	$ra, 0X1C($sp)
.L80B2A104:
/* 001893 0x80B2A104 8E030350 */ lw	$v1, 0X350($s0)
/* 001894 0x80B2A108 50600032 */ beqzl	$v1, .L80B2A1D4
/* 001895 0x80B2A10C 8FA4003C */ lw	$a0, 0X3C($sp)
/* 001896 0x80B2A110 8C680138 */ lw	$t0, 0X138($v1)
/* 001897 0x80B2A114 27A4002C */ addiu	$a0, $sp, 0X2C
/* 001898 0x80B2A118 5100002E */ beqzl	$t0, .L80B2A1D4
/* 001899 0x80B2A11C 8FA4003C */ lw	$a0, 0X3C($sp)
/* 001900 0x80B2A120 0C03FD43 */ jal	Math_Vec3f_Copy
/* 001901 0x80B2A124 24650024 */ addiu	$a1, $v1, 0X24
/* 001902 0x80B2A128 0C03FB61 */ jal	Math_Sins
/* 001903 0x80B2A12C 2404C568 */ li	$a0, -0X3A98
/* 001904 0x80B2A130 3C0142DC */ lui	$at, 0x42DC
/* 001905 0x80B2A134 44813000 */ mtc1	$at, $f6
/* 001906 0x80B2A138 C7A4002C */ lwc1	$f4, 0X2C($sp)
/* 001907 0x80B2A13C 2404C568 */ li	$a0, -0X3A98
/* 001908 0x80B2A140 46060202 */ mul.s	$f8, $f0, $f6
/* 001909 0x80B2A144 46082280 */ add.s	$f10, $f4, $f8
/* 001910 0x80B2A148 0C03FB51 */ jal	Math_Coss
/* 001911 0x80B2A14C E7AA002C */ swc1	$f10, 0X2C($sp)
/* 001912 0x80B2A150 3C0142DC */ lui	$at, 0x42DC
/* 001913 0x80B2A154 44819000 */ mtc1	$at, $f18
/* 001914 0x80B2A158 C7B00034 */ lwc1	$f16, 0X34($sp)
/* 001915 0x80B2A15C 260402DC */ addiu	$a0, $s0, 0X2DC
/* 001916 0x80B2A160 46120182 */ mul.s	$f6, $f0, $f18
/* 001917 0x80B2A164 27A5002C */ addiu	$a1, $sp, 0X2C
/* 001918 0x80B2A168 46068100 */ add.s	$f4, $f16, $f6
/* 001919 0x80B2A16C 0C03FD43 */ jal	Math_Vec3f_Copy
/* 001920 0x80B2A170 E7A40034 */ swc1	$f4, 0X34($sp)
/* 001921 0x80B2A174 8E050350 */ lw	$a1, 0X350($s0)
/* 001922 0x80B2A178 27A4002C */ addiu	$a0, $sp, 0X2C
/* 001923 0x80B2A17C 0C03FD43 */ jal	Math_Vec3f_Copy
/* 001924 0x80B2A180 24A50024 */ addiu	$a1, $a1, 0X24
/* 001925 0x80B2A184 0C03FB61 */ jal	Math_Sins
/* 001926 0x80B2A188 2404C568 */ li	$a0, -0X3A98
/* 001927 0x80B2A18C 3C014120 */ lui	$at, 0x4120
/* 001928 0x80B2A190 44815000 */ mtc1	$at, $f10
/* 001929 0x80B2A194 C7A8002C */ lwc1	$f8, 0X2C($sp)
/* 001930 0x80B2A198 2404C568 */ li	$a0, -0X3A98
/* 001931 0x80B2A19C 460A0482 */ mul.s	$f18, $f0, $f10
/* 001932 0x80B2A1A0 46124400 */ add.s	$f16, $f8, $f18
/* 001933 0x80B2A1A4 0C03FB51 */ jal	Math_Coss
/* 001934 0x80B2A1A8 E7B0002C */ swc1	$f16, 0X2C($sp)
/* 001935 0x80B2A1AC 3C014120 */ lui	$at, 0x4120
/* 001936 0x80B2A1B0 44812000 */ mtc1	$at, $f4
/* 001937 0x80B2A1B4 C7A60034 */ lwc1	$f6, 0X34($sp)
/* 001938 0x80B2A1B8 260402E8 */ addiu	$a0, $s0, 0X2E8
/* 001939 0x80B2A1BC 46040282 */ mul.s	$f10, $f0, $f4
/* 001940 0x80B2A1C0 27A5002C */ addiu	$a1, $sp, 0X2C
/* 001941 0x80B2A1C4 460A3200 */ add.s	$f8, $f6, $f10
/* 001942 0x80B2A1C8 0C03FD43 */ jal	Math_Vec3f_Copy
/* 001943 0x80B2A1CC E7A80034 */ swc1	$f8, 0X34($sp)
/* 001944 0x80B2A1D0 8FA4003C */ lw	$a0, 0X3C($sp)
.L80B2A1D4:
/* 001945 0x80B2A1D4 860502CA */ lh	$a1, 0X2CA($s0)
/* 001946 0x80B2A1D8 260602E8 */ addiu	$a2, $s0, 0X2E8
/* 001947 0x80B2A1DC 0C05A5C3 */ jal	func_8016970C
/* 001948 0x80B2A1E0 260702DC */ addiu	$a3, $s0, 0X2DC
/* 001949 0x80B2A1E4 8E030350 */ lw	$v1, 0X350($s0)
/* 001950 0x80B2A1E8 50600005 */ beqzl	$v1, .L80B2A200
/* 001951 0x80B2A1EC 8E0A02B0 */ lw	$t2, 0X2B0($s0)
/* 001952 0x80B2A1F0 8C690138 */ lw	$t1, 0X138($v1)
/* 001953 0x80B2A1F4 5520000D */ bnezl	$t1, .L80B2A22C
/* 001954 0x80B2A1F8 8FBF001C */ lw	$ra, 0X1C($sp)
/* 001955 0x80B2A1FC 8E0A02B0 */ lw	$t2, 0X2B0($s0)
.L80B2A200:
/* 001956 0x80B2A200 AE000350 */ sw	$zero, 0X350($s0)
/* 001957 0x80B2A204 240D0014 */ li	$t5, 0X14
/* 001958 0x80B2A208 254B0001 */ addiu	$t3, $t2, 0X1
/* 001959 0x80B2A20C 2961000B */ slti	$at, $t3, 0XB
/* 001960 0x80B2A210 14200005 */ bnez	$at, .L80B2A228
/* 001961 0x80B2A214 AE0B02B0 */ sw	$t3, 0X2B0($s0)
/* 001962 0x80B2A218 3C0E80B3 */ lui	$t6, %hi(func_80B2A23C)
/* 001963 0x80B2A21C 25CEA23C */ addiu	$t6, $t6, %lo(func_80B2A23C)
/* 001964 0x80B2A220 A60D02B4 */ sh	$t5, 0X2B4($s0)
/* 001965 0x80B2A224 AE0E02A8 */ sw	$t6, 0X2A8($s0)
.L80B2A228:
/* 001966 0x80B2A228 8FBF001C */ lw	$ra, 0X1C($sp)
.L80B2A22C:
/* 001967 0x80B2A22C 8FB00018 */ lw	$s0, 0X18($sp)
/* 001968 0x80B2A230 27BD0038 */ addiu	$sp, $sp, 0X38
/* 001969 0x80B2A234 03E00008 */ jr	$ra
/* 001970 0x80B2A238 00000000 */ nop

