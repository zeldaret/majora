glabel func_80B3F614
/* 001417 0x80B3F614 27BDFF90 */ addiu	$sp, $sp, -0X70
/* 001418 0x80B3F618 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001419 0x80B3F61C AFA40070 */ sw	$a0, 0X70($sp)
/* 001420 0x80B3F620 AFA60078 */ sw	$a2, 0X78($sp)
/* 001421 0x80B3F624 AFA7007C */ sw	$a3, 0X7C($sp)
/* 001422 0x80B3F628 2401000A */ li	$at, 0XA
/* 001423 0x80B3F62C 10A10029 */ beq	$a1, $at, .L80B3F6D4
/* 001424 0x80B3F630 8FA40080 */ lw	$a0, 0X80($sp)
/* 001425 0x80B3F634 2401000B */ li	$at, 0XB
/* 001426 0x80B3F638 14A10028 */ bne	$a1, $at, .L80B3F6DC
/* 001427 0x80B3F63C 3C02801F */ lui	$v0, %hi(gStaticContext)
/* 001428 0x80B3F640 8C423F60 */ lw	$v0, %lo(gStaticContext)($v0)
/* 001429 0x80B3F644 3C0180B4 */ lui	$at, %hi(D_80B3FE4C)
/* 001430 0x80B3F648 8FA50080 */ lw	$a1, 0X80($sp)
/* 001431 0x80B3F64C 844E0C14 */ lh	$t6, 0XC14($v0)
/* 001432 0x80B3F650 3C0480B4 */ lui	$a0, %hi(D_80B3FE4C)
/* 001433 0x80B3F654 2484FE4C */ addiu	$a0, $a0, %lo(D_80B3FE4C)
/* 001434 0x80B3F658 448E2000 */ mtc1	$t6, $f4
/* 001435 0x80B3F65C 24A5003C */ addiu	$a1, $a1, 0X3C
/* 001436 0x80B3F660 468021A0 */ cvt.s.w	$f6, $f4
/* 001437 0x80B3F664 E426FE4C */ swc1	$f6, %lo(D_80B3FE4C)($at)
/* 001438 0x80B3F668 844F0C16 */ lh	$t7, 0XC16($v0)
/* 001439 0x80B3F66C 3C0180B4 */ lui	$at, %hi(D_80B3FE50)
/* 001440 0x80B3F670 448F4000 */ mtc1	$t7, $f8
/* 001441 0x80B3F674 00000000 */ nop
/* 001442 0x80B3F678 468042A0 */ cvt.s.w	$f10, $f8
/* 001443 0x80B3F67C E42AFE50 */ swc1	$f10, %lo(D_80B3FE50)($at)
/* 001444 0x80B3F680 84580C18 */ lh	$t8, 0XC18($v0)
/* 001445 0x80B3F684 44988000 */ mtc1	$t8, $f16
/* 001446 0x80B3F688 00000000 */ nop
/* 001447 0x80B3F68C 468084A0 */ cvt.s.w	$f18, $f16
/* 001448 0x80B3F690 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 001449 0x80B3F694 E432FE54 */ swc1	$f18, %lo(D_80B3FE54)($at)
/* 001450 0x80B3F698 8FA20080 */ lw	$v0, 0X80($sp)
/* 001451 0x80B3F69C 24440048 */ addiu	$a0, $v0, 0X48
/* 001452 0x80B3F6A0 0C03FD4B */ jal	Math_Vec3s_Copy
/* 001453 0x80B3F6A4 24450030 */ addiu	$a1, $v0, 0X30
/* 001454 0x80B3F6A8 0C06007A */ jal	SysMatrix_CopyCurrentState
/* 001455 0x80B3F6AC 27A40024 */ addiu	$a0, $sp, 0X24
/* 001456 0x80B3F6B0 27A40024 */ addiu	$a0, $sp, 0X24
/* 001457 0x80B3F6B4 27A50064 */ addiu	$a1, $sp, 0X64
/* 001458 0x80B3F6B8 0C060867 */ jal	func_8018219C
/* 001459 0x80B3F6BC 00003025 */ move	$a2, $zero
/* 001460 0x80B3F6C0 87B90066 */ lh	$t9, 0X66($sp)
/* 001461 0x80B3F6C4 8FA90080 */ lw	$t1, 0X80($sp)
/* 001462 0x80B3F6C8 2728C000 */ addiu	$t0, $t9, -0X4000
/* 001463 0x80B3F6CC 10000003 */ b	.L80B3F6DC
/* 001464 0x80B3F6D0 A52801D4 */ sh	$t0, 0X1D4($t1)
.L80B3F6D4:
/* 001465 0x80B3F6D4 0C06007A */ jal	SysMatrix_CopyCurrentState
/* 001466 0x80B3F6D8 2484018C */ addiu	$a0, $a0, 0X18C
.L80B3F6DC:
/* 001467 0x80B3F6DC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001468 0x80B3F6E0 27BD0070 */ addiu	$sp, $sp, 0X70
/* 001469 0x80B3F6E4 03E00008 */ jr	$ra
/* 001470 0x80B3F6E8 00000000 */ nop

