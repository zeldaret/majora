glabel func_8094506C
/* 000931 0x8094506C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000932 0x80945070 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000933 0x80945074 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000934 0x80945078 84820254 */ lh	$v0, 0X254($a0)
/* 000935 0x8094507C 14400003 */ bnez	$v0, .L8094508C
/* 000936 0x80945080 244EFFFF */ addiu	$t6, $v0, -0X1
/* 000937 0x80945084 10000003 */ b	.L80945094
/* 000938 0x80945088 00001825 */ move	$v1, $zero
.L8094508C:
/* 000939 0x8094508C A48E0254 */ sh	$t6, 0X254($a0)
/* 000940 0x80945090 84830254 */ lh	$v1, 0X254($a0)
.L80945094:
/* 000941 0x80945094 14600004 */ bnez	$v1, .L809450A8
/* 000942 0x80945098 00000000 */ nop
/* 000943 0x8094509C 0C2511EA */ jal	func_809447A8
/* 000944 0x809450A0 AFA40018 */ sw	$a0, 0X18($sp)
/* 000945 0x809450A4 8FA40018 */ lw	$a0, 0X18($sp)
.L809450A8:
/* 000946 0x809450A8 0C251206 */ jal	func_80944818
/* 000947 0x809450AC 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000948 0x809450B0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000949 0x809450B4 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000950 0x809450B8 03E00008 */ jr	$ra
/* 000951 0x809450BC 00000000 */ nop

