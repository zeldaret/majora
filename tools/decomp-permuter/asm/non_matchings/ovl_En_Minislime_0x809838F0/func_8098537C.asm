glabel func_8098537C
/* 001699 0x8098537C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001700 0x80985380 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001701 0x80985384 AFA5001C */ sw	$a1, 0X1C($sp)
/* 001702 0x80985388 848E014A */ lh	$t6, 0X14A($a0)
/* 001703 0x8098538C 3C018098 */ lui	$at, %hi(D_809858EC)
/* 001704 0x80985390 25CFFFFF */ addiu	$t7, $t6, -0X1
/* 001705 0x80985394 A48F014A */ sh	$t7, 0X14A($a0)
/* 001706 0x80985398 8498014A */ lh	$t8, 0X14A($a0)
/* 001707 0x8098539C C42858EC */ lwc1	$f8, %lo(D_809858EC)($at)
/* 001708 0x809853A0 AFA40018 */ sw	$a0, 0X18($sp)
/* 001709 0x809853A4 44982000 */ mtc1	$t8, $f4
/* 001710 0x809853A8 00000000 */ nop
/* 001711 0x809853AC 468021A0 */ cvt.s.w	$f6, $f4
/* 001712 0x809853B0 46083302 */ mul.s	$f12, $f6, $f8
/* 001713 0x809853B4 0C05E53B */ jal	sin_rad
/* 001714 0x809853B8 00000000 */ nop
/* 001715 0x809853BC 3C018098 */ lui	$at, %hi(D_809858F0)
/* 001716 0x809853C0 C42A58F0 */ lwc1	$f10, %lo(D_809858F0)($at)
/* 001717 0x809853C4 3C013FC0 */ lui	$at, 0x3FC0
/* 001718 0x809853C8 44819000 */ mtc1	$at, $f18
/* 001719 0x809853CC 46005402 */ mul.s	$f16, $f10, $f0
/* 001720 0x809853D0 8FA40018 */ lw	$a0, 0X18($sp)
/* 001721 0x809853D4 3C018098 */ lui	$at, %hi(D_809858F4)
/* 001722 0x809853D8 C42658F4 */ lwc1	$f6, %lo(D_809858F4)($at)
/* 001723 0x809853DC 8499014A */ lh	$t9, 0X14A($a0)
/* 001724 0x809853E0 3C018098 */ lui	$at, %hi(D_809858F8)
/* 001725 0x809853E4 46128100 */ add.s	$f4, $f16, $f18
/* 001726 0x809853E8 44995000 */ mtc1	$t9, $f10
/* 001727 0x809853EC 46062202 */ mul.s	$f8, $f4, $f6
/* 001728 0x809853F0 46805420 */ cvt.s.w	$f16, $f10
/* 001729 0x809853F4 E4880058 */ swc1	$f8, 0X58($a0)
/* 001730 0x809853F8 C43258F8 */ lwc1	$f18, %lo(D_809858F8)($at)
/* 001731 0x809853FC 46128302 */ mul.s	$f12, $f16, $f18
/* 001732 0x80985400 0C05E550 */ jal	cos_rad
/* 001733 0x80985404 00000000 */ nop
/* 001734 0x80985408 3C018098 */ lui	$at, %hi(D_809858FC)
/* 001735 0x8098540C C42458FC */ lwc1	$f4, %lo(D_809858FC)($at)
/* 001736 0x80985410 3C013F40 */ lui	$at, 0x3F40
/* 001737 0x80985414 44814000 */ mtc1	$at, $f8
/* 001738 0x80985418 46040182 */ mul.s	$f6, $f0, $f4
/* 001739 0x8098541C 3C018098 */ lui	$at, %hi(D_80985900)
/* 001740 0x80985420 C4305900 */ lwc1	$f16, %lo(D_80985900)($at)
/* 001741 0x80985424 8FA40018 */ lw	$a0, 0X18($sp)
/* 001742 0x80985428 3C018098 */ lui	$at, %hi(D_80985904)
/* 001743 0x8098542C 2409000A */ li	$t1, 0XA
/* 001744 0x80985430 8488014A */ lh	$t0, 0X14A($a0)
/* 001745 0x80985434 46083280 */ add.s	$f10, $f6, $f8
/* 001746 0x80985438 C4860058 */ lwc1	$f6, 0X58($a0)
/* 001747 0x8098543C 46105482 */ mul.s	$f18, $f10, $f16
/* 001748 0x80985440 E492005C */ swc1	$f18, 0X5C($a0)
/* 001749 0x80985444 C4245904 */ lwc1	$f4, %lo(D_80985904)($at)
/* 001750 0x80985448 46062201 */ sub.s	$f8, $f4, $f6
/* 001751 0x8098544C 15000002 */ bnez	$t0, .L80985458
/* 001752 0x80985450 E4880060 */ swc1	$f8, 0X60($a0)
/* 001753 0x80985454 A489014A */ sh	$t1, 0X14A($a0)
.L80985458:
/* 001754 0x80985458 948A0090 */ lhu	$t2, 0X90($a0)
/* 001755 0x8098545C 314B0001 */ andi	$t3, $t2, 0X1
/* 001756 0x80985460 51600004 */ beqzl	$t3, .L80985474
/* 001757 0x80985464 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001758 0x80985468 0C26113F */ jal	func_809844FC
/* 001759 0x8098546C 00000000 */ nop
/* 001760 0x80985470 8FBF0014 */ lw	$ra, 0X14($sp)
.L80985474:
/* 001761 0x80985474 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001762 0x80985478 03E00008 */ jr	$ra
/* 001763 0x8098547C 00000000 */ nop


.section .late_rodata

glabel D_809858EC
/* 002047 0x809858EC */ .word	0x3F20D97C
glabel D_809858F0
/* 002048 0x809858F0 */ .word	0x3E99999A
glabel D_809858F4
/* 002049 0x809858F4 */ .word	0x3DCCCCCD
glabel D_809858F8
/* 002050 0x809858F8 */ .word	0x3F20D97C
glabel D_809858FC
/* 002051 0x809858FC */ .word	0x3E4CCCCD
glabel D_80985900
/* 002052 0x80985900 */ .word	0x3DCCCCCD
glabel D_80985904
/* 002053 0x80985904 */ .word	0x3E99999A
/* 002054 0x80985908 */ .word	0x00000000
/* 002055 0x8098590C */ .word	0x00000000
