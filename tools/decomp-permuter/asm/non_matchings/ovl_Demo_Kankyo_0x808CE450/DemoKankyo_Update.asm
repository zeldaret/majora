glabel DemoKankyo_Update
/* 001343 0x808CF94C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001344 0x808CF950 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001345 0x808CF954 8C991644 */ lw	$t9, 0X1644($a0)
/* 001346 0x808CF958 0320F809 */ jalr	$t9
/* 001347 0x808CF95C 00000000 */ nop
/* 001348 0x808CF960 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001349 0x808CF964 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001350 0x808CF968 03E00008 */ jr	$ra
/* 001351 0x808CF96C 00000000 */ nop

