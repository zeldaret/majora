glabel func_80BC2EA4
/* 001385 0x80BC2EA4 27BDFFB8 */ addiu	$sp, $sp, -0X48
/* 001386 0x80BC2EA8 AFB00018 */ sw	$s0, 0X18($sp)
/* 001387 0x80BC2EAC 00808025 */ move	$s0, $a0
/* 001388 0x80BC2EB0 AFBF001C */ sw	$ra, 0X1C($sp)
/* 001389 0x80BC2EB4 0C03FB61 */ jal	Math_Sins
/* 001390 0x80BC2EB8 860400BE */ lh	$a0, 0XBE($s0)
/* 001391 0x80BC2EBC 860400BE */ lh	$a0, 0XBE($s0)
/* 001392 0x80BC2EC0 0C03FB51 */ jal	Math_Coss
/* 001393 0x80BC2EC4 E7A00044 */ swc1	$f0, 0X44($sp)
/* 001394 0x80BC2EC8 8E0E0124 */ lw	$t6, 0X124($s0)
/* 001395 0x80BC2ECC 85C400BE */ lh	$a0, 0XBE($t6)
/* 001396 0x80BC2ED0 0C03FB61 */ jal	Math_Sins
/* 001397 0x80BC2ED4 E7A00040 */ swc1	$f0, 0X40($sp)
/* 001398 0x80BC2ED8 8E0F0124 */ lw	$t7, 0X124($s0)
/* 001399 0x80BC2EDC 85E400BE */ lh	$a0, 0XBE($t7)
/* 001400 0x80BC2EE0 0C03FB51 */ jal	Math_Coss
/* 001401 0x80BC2EE4 E7A0003C */ swc1	$f0, 0X3C($sp)
/* 001402 0x80BC2EE8 C7A20044 */ lwc1	$f2, 0X44($sp)
/* 001403 0x80BC2EEC C7AC0040 */ lwc1	$f12, 0X40($sp)
/* 001404 0x80BC2EF0 C7AE003C */ lwc1	$f14, 0X3C($sp)
/* 001405 0x80BC2EF4 8E0C0024 */ lw	$t4, 0X24($s0)
/* 001406 0x80BC2EF8 24050002 */ li	$a1, 0X2
/* 001407 0x80BC2EFC 24180030 */ li	$t8, 0X30
/* 001408 0x80BC2F00 24190001 */ li	$t9, 0X1
/* 001409 0x80BC2F04 24080060 */ li	$t0, 0X60
/* 001410 0x80BC2F08 24090090 */ li	$t1, 0X90
/* 001411 0x80BC2F0C 240A0003 */ li	$t2, 0X3
/* 001412 0x80BC2F10 A60A0270 */ sh	$t2, 0X270($s0)
/* 001413 0x80BC2F14 A6090272 */ sh	$t1, 0X272($s0)
/* 001414 0x80BC2F18 A6080262 */ sh	$t0, 0X262($s0)
/* 001415 0x80BC2F1C A6190250 */ sh	$t9, 0X250($s0)
/* 001416 0x80BC2F20 A6180252 */ sh	$t8, 0X252($s0)
/* 001417 0x80BC2F24 A6050260 */ sh	$a1, 0X260($s0)
/* 001418 0x80BC2F28 27A20028 */ addiu	$v0, $sp, 0X28
/* 001419 0x80BC2F2C A6000242 */ sh	$zero, 0X242($s0)
/* 001420 0x80BC2F30 A6000240 */ sh	$zero, 0X240($s0)
/* 001421 0x80BC2F34 AC4C0000 */ sw	$t4, 0X0($v0)
/* 001422 0x80BC2F38 8E0B0028 */ lw	$t3, 0X28($s0)
/* 001423 0x80BC2F3C 8C4E0000 */ lw	$t6, 0X0($v0)
/* 001424 0x80BC2F40 3C0380BC */ lui	$v1, %hi(D_80BC36AC)
/* 001425 0x80BC2F44 AC4B0004 */ sw	$t3, 0X4($v0)
/* 001426 0x80BC2F48 8E0C002C */ lw	$t4, 0X2C($s0)
/* 001427 0x80BC2F4C 246336AC */ addiu	$v1, $v1, %lo(D_80BC36AC)
/* 001428 0x80BC2F50 3C0480BC */ lui	$a0, %hi(D_80BC36B8)
/* 001429 0x80BC2F54 AC4C0008 */ sw	$t4, 0X8($v0)
/* 001430 0x80BC2F58 AE0E0210 */ sw	$t6, 0X210($s0)
/* 001431 0x80BC2F5C 8C4D0004 */ lw	$t5, 0X4($v0)
/* 001432 0x80BC2F60 8E190124 */ lw	$t9, 0X124($s0)
/* 001433 0x80BC2F64 248436B8 */ addiu	$a0, $a0, %lo(D_80BC36B8)
/* 001434 0x80BC2F68 AE0D0214 */ sw	$t5, 0X214($s0)
/* 001435 0x80BC2F6C 8C4E0008 */ lw	$t6, 0X8($v0)
/* 001436 0x80BC2F70 AE0E0218 */ sw	$t6, 0X218($s0)
/* 001437 0x80BC2F74 8C580000 */ lw	$t8, 0X0($v0)
/* 001438 0x80BC2F78 AE180204 */ sw	$t8, 0X204($s0)
/* 001439 0x80BC2F7C 8C4F0004 */ lw	$t7, 0X4($v0)
/* 001440 0x80BC2F80 AE0F0208 */ sw	$t7, 0X208($s0)
/* 001441 0x80BC2F84 8C580008 */ lw	$t8, 0X8($v0)
/* 001442 0x80BC2F88 AE18020C */ sw	$t8, 0X20C($s0)
/* 001443 0x80BC2F8C 8F290024 */ lw	$t1, 0X24($t9)
/* 001444 0x80BC2F90 AC490000 */ sw	$t1, 0X0($v0)
/* 001445 0x80BC2F94 8F280028 */ lw	$t0, 0X28($t9)
/* 001446 0x80BC2F98 8C4B0000 */ lw	$t3, 0X0($v0)
/* 001447 0x80BC2F9C AC480004 */ sw	$t0, 0X4($v0)
/* 001448 0x80BC2FA0 8F29002C */ lw	$t1, 0X2C($t9)
/* 001449 0x80BC2FA4 AC490008 */ sw	$t1, 0X8($v0)
/* 001450 0x80BC2FA8 AE0B0228 */ sw	$t3, 0X228($s0)
/* 001451 0x80BC2FAC 8C4A0004 */ lw	$t2, 0X4($v0)
/* 001452 0x80BC2FB0 C6120204 */ lwc1	$f18, 0X204($s0)
/* 001453 0x80BC2FB4 AE0A022C */ sw	$t2, 0X22C($s0)
/* 001454 0x80BC2FB8 8C4B0008 */ lw	$t3, 0X8($v0)
/* 001455 0x80BC2FBC AE0B0230 */ sw	$t3, 0X230($s0)
/* 001456 0x80BC2FC0 8C4D0000 */ lw	$t5, 0X0($v0)
/* 001457 0x80BC2FC4 AE0D021C */ sw	$t5, 0X21C($s0)
/* 001458 0x80BC2FC8 8C4C0004 */ lw	$t4, 0X4($v0)
/* 001459 0x80BC2FCC AE0C0220 */ sw	$t4, 0X220($s0)
/* 001460 0x80BC2FD0 8C4D0008 */ lw	$t5, 0X8($v0)
/* 001461 0x80BC2FD4 3C0280BC */ lui	$v0, %hi(D_80BC36C4)
/* 001462 0x80BC2FD8 244236C4 */ addiu	$v0, $v0, %lo(D_80BC36C4)
/* 001463 0x80BC2FDC AE0D0224 */ sw	$t5, 0X224($s0)
/* 001464 0x80BC2FE0 C4640008 */ lwc1	$f4, 0X8($v1)
/* 001465 0x80BC2FE4 C4680000 */ lwc1	$f8, 0X0($v1)
/* 001466 0x80BC2FE8 46022182 */ mul.s	$f6, $f4, $f2
/* 001467 0x80BC2FEC 00000000 */ nop
/* 001468 0x80BC2FF0 460C4282 */ mul.s	$f10, $f8, $f12
/* 001469 0x80BC2FF4 C6080208 */ lwc1	$f8, 0X208($s0)
/* 001470 0x80BC2FF8 460A3400 */ add.s	$f16, $f6, $f10
/* 001471 0x80BC2FFC 46109100 */ add.s	$f4, $f18, $f16
/* 001472 0x80BC3000 E6040204 */ swc1	$f4, 0X204($s0)
/* 001473 0x80BC3004 C4660004 */ lwc1	$f6, 0X4($v1)
/* 001474 0x80BC3008 46064280 */ add.s	$f10, $f8, $f6
/* 001475 0x80BC300C E60A0208 */ swc1	$f10, 0X208($s0)
/* 001476 0x80BC3010 C4720008 */ lwc1	$f18, 0X8($v1)
/* 001477 0x80BC3014 C4640000 */ lwc1	$f4, 0X0($v1)
/* 001478 0x80BC3018 C60A020C */ lwc1	$f10, 0X20C($s0)
/* 001479 0x80BC301C 460C9402 */ mul.s	$f16, $f18, $f12
/* 001480 0x80BC3020 3C0380BC */ lui	$v1, %hi(D_80BC36D0)
/* 001481 0x80BC3024 246336D0 */ addiu	$v1, $v1, %lo(D_80BC36D0)
/* 001482 0x80BC3028 46022202 */ mul.s	$f8, $f4, $f2
/* 001483 0x80BC302C 46088181 */ sub.s	$f6, $f16, $f8
/* 001484 0x80BC3030 46065480 */ add.s	$f18, $f10, $f6
/* 001485 0x80BC3034 E612020C */ swc1	$f18, 0X20C($s0)
/* 001486 0x80BC3038 C4840008 */ lwc1	$f4, 0X8($a0)
/* 001487 0x80BC303C C4880000 */ lwc1	$f8, 0X0($a0)
/* 001488 0x80BC3040 C6120210 */ lwc1	$f18, 0X210($s0)
/* 001489 0x80BC3044 46022402 */ mul.s	$f16, $f4, $f2
/* 001490 0x80BC3048 00000000 */ nop
/* 001491 0x80BC304C 460C4282 */ mul.s	$f10, $f8, $f12
/* 001492 0x80BC3050 C6080214 */ lwc1	$f8, 0X214($s0)
/* 001493 0x80BC3054 460A8180 */ add.s	$f6, $f16, $f10
/* 001494 0x80BC3058 46069100 */ add.s	$f4, $f18, $f6
/* 001495 0x80BC305C E6040210 */ swc1	$f4, 0X210($s0)
/* 001496 0x80BC3060 C4900004 */ lwc1	$f16, 0X4($a0)
/* 001497 0x80BC3064 46104280 */ add.s	$f10, $f8, $f16
/* 001498 0x80BC3068 E60A0214 */ swc1	$f10, 0X214($s0)
/* 001499 0x80BC306C C4920008 */ lwc1	$f18, 0X8($a0)
/* 001500 0x80BC3070 C4840000 */ lwc1	$f4, 0X0($a0)
/* 001501 0x80BC3074 C60A0218 */ lwc1	$f10, 0X218($s0)
/* 001502 0x80BC3078 460C9182 */ mul.s	$f6, $f18, $f12
/* 001503 0x80BC307C 00000000 */ nop
/* 001504 0x80BC3080 46022202 */ mul.s	$f8, $f4, $f2
/* 001505 0x80BC3084 46083401 */ sub.s	$f16, $f6, $f8
/* 001506 0x80BC3088 46105480 */ add.s	$f18, $f10, $f16
/* 001507 0x80BC308C E6120218 */ swc1	$f18, 0X218($s0)
/* 001508 0x80BC3090 C4440008 */ lwc1	$f4, 0X8($v0)
/* 001509 0x80BC3094 C4480000 */ lwc1	$f8, 0X0($v0)
/* 001510 0x80BC3098 C612021C */ lwc1	$f18, 0X21C($s0)
/* 001511 0x80BC309C 460E2182 */ mul.s	$f6, $f4, $f14
/* 001512 0x80BC30A0 00000000 */ nop
/* 001513 0x80BC30A4 46004282 */ mul.s	$f10, $f8, $f0
/* 001514 0x80BC30A8 C6080220 */ lwc1	$f8, 0X220($s0)
/* 001515 0x80BC30AC 460A3400 */ add.s	$f16, $f6, $f10
/* 001516 0x80BC30B0 46109100 */ add.s	$f4, $f18, $f16
/* 001517 0x80BC30B4 E604021C */ swc1	$f4, 0X21C($s0)
/* 001518 0x80BC30B8 C4460004 */ lwc1	$f6, 0X4($v0)
/* 001519 0x80BC30BC 46064280 */ add.s	$f10, $f8, $f6
/* 001520 0x80BC30C0 E60A0220 */ swc1	$f10, 0X220($s0)
/* 001521 0x80BC30C4 C4520008 */ lwc1	$f18, 0X8($v0)
/* 001522 0x80BC30C8 C4440000 */ lwc1	$f4, 0X0($v0)
/* 001523 0x80BC30CC C60A0224 */ lwc1	$f10, 0X224($s0)
/* 001524 0x80BC30D0 46009402 */ mul.s	$f16, $f18, $f0
/* 001525 0x80BC30D4 00000000 */ nop
/* 001526 0x80BC30D8 460E2202 */ mul.s	$f8, $f4, $f14
/* 001527 0x80BC30DC 46088181 */ sub.s	$f6, $f16, $f8
/* 001528 0x80BC30E0 46065480 */ add.s	$f18, $f10, $f6
/* 001529 0x80BC30E4 E6120224 */ swc1	$f18, 0X224($s0)
/* 001530 0x80BC30E8 C4640008 */ lwc1	$f4, 0X8($v1)
/* 001531 0x80BC30EC C4680000 */ lwc1	$f8, 0X0($v1)
/* 001532 0x80BC30F0 C6120228 */ lwc1	$f18, 0X228($s0)
/* 001533 0x80BC30F4 460E2402 */ mul.s	$f16, $f4, $f14
/* 001534 0x80BC30F8 00000000 */ nop
/* 001535 0x80BC30FC 46004282 */ mul.s	$f10, $f8, $f0
/* 001536 0x80BC3100 C608022C */ lwc1	$f8, 0X22C($s0)
/* 001537 0x80BC3104 460A8180 */ add.s	$f6, $f16, $f10
/* 001538 0x80BC3108 46069100 */ add.s	$f4, $f18, $f6
/* 001539 0x80BC310C E6040228 */ swc1	$f4, 0X228($s0)
/* 001540 0x80BC3110 C4700004 */ lwc1	$f16, 0X4($v1)
/* 001541 0x80BC3114 46104280 */ add.s	$f10, $f8, $f16
/* 001542 0x80BC3118 E60A022C */ swc1	$f10, 0X22C($s0)
/* 001543 0x80BC311C C4720008 */ lwc1	$f18, 0X8($v1)
/* 001544 0x80BC3120 C4640000 */ lwc1	$f4, 0X0($v1)
/* 001545 0x80BC3124 C60A0230 */ lwc1	$f10, 0X230($s0)
/* 001546 0x80BC3128 46009182 */ mul.s	$f6, $f18, $f0
/* 001547 0x80BC312C A6050364 */ sh	$a1, 0X364($s0)
/* 001548 0x80BC3130 A6000366 */ sh	$zero, 0X366($s0)
/* 001549 0x80BC3134 460E2202 */ mul.s	$f8, $f4, $f14
/* 001550 0x80BC3138 46083401 */ sub.s	$f16, $f6, $f8
/* 001551 0x80BC313C 46105480 */ add.s	$f18, $f10, $f16
/* 001552 0x80BC3140 E6120230 */ swc1	$f18, 0X230($s0)
/* 001553 0x80BC3144 8FBF001C */ lw	$ra, 0X1C($sp)
/* 001554 0x80BC3148 8FB00018 */ lw	$s0, 0X18($sp)
/* 001555 0x80BC314C 03E00008 */ jr	$ra
/* 001556 0x80BC3150 27BD0048 */ addiu	$sp, $sp, 0X48

