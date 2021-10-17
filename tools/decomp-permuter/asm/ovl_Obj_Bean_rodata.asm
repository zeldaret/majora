.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .rodata

glabel objBeanOverlayInfo
/* 002288 0x809390B0 */ .word	0x00002290
/* 002289 0x809390B4 */ .word	0x000000C0
/* 002290 0x809390B8 */ .word	0x00000070
/* 002291 0x809390BC */ .word	0x00000000
/* 002292 0x809390C0 */ .word	0x000000B9
glabel objBeanOverlayRelocations
/* 002293 0x809390C4 */ .word	0x45000014
/* 002294 0x809390C8 */ .word	0x46000018
/* 002295 0x809390CC */ .word	0x450000A0
/* 002296 0x809390D0 */ .word	0x460000A4
/* 002297 0x809390D4 */ .word	0x4500012C
/* 002298 0x809390D8 */ .word	0x46000130
/* 002299 0x809390DC */ .word	0x45000138
/* 002300 0x809390E0 */ .word	0x4600013C
/* 002301 0x809390E4 */ .word	0x4500033C
/* 002302 0x809390E8 */ .word	0x46000340
/* 002303 0x809390EC */ .word	0x45000344
/* 002304 0x809390F0 */ .word	0x46000348
/* 002305 0x809390F4 */ .word	0x45000350
/* 002306 0x809390F8 */ .word	0x46000354
/* 002307 0x809390FC */ .word	0x4500035C
/* 002308 0x80939100 */ .word	0x46000360
/* 002309 0x80939104 */ .word	0x45000398
/* 002310 0x80939108 */ .word	0x4600039C
/* 002311 0x8093910C */ .word	0x450003AC
/* 002312 0x80939110 */ .word	0x460003B0
/* 002313 0x80939114 */ .word	0x450003F4
/* 002314 0x80939118 */ .word	0x460003F8
/* 002315 0x8093911C */ .word	0x450004D0
/* 002316 0x80939120 */ .word	0x460004D4
/* 002317 0x80939124 */ .word	0x450004E8
/* 002318 0x80939128 */ .word	0x460004EC
/* 002319 0x8093912C */ .word	0x45000640
/* 002320 0x80939130 */ .word	0x46000648
/* 002321 0x80939134 */ .word	0x45000678
/* 002322 0x80939138 */ .word	0x4600067C
/* 002323 0x8093913C */ .word	0x45000684
/* 002324 0x80939140 */ .word	0x46000688
/* 002325 0x80939144 */ .word	0x450006AC
/* 002326 0x80939148 */ .word	0x460006B0
/* 002327 0x8093914C */ .word	0x45000798
/* 002328 0x80939150 */ .word	0x460007A8
/* 002329 0x80939154 */ .word	0x440008E0
/* 002330 0x80939158 */ .word	0x45000950
/* 002331 0x8093915C */ .word	0x46000954
/* 002332 0x80939160 */ .word	0x45000974
/* 002333 0x80939164 */ .word	0x46000980
/* 002334 0x80939168 */ .word	0x45000B90
/* 002335 0x8093916C */ .word	0x46000B94
/* 002336 0x80939170 */ .word	0x45000BB0
/* 002337 0x80939174 */ .word	0x46000BB4
/* 002338 0x80939178 */ .word	0x45000BE8
/* 002339 0x8093917C */ .word	0x46000BF4
/* 002340 0x80939180 */ .word	0x45000C08
/* 002341 0x80939184 */ .word	0x46000C0C
/* 002342 0x80939188 */ .word	0x44000C38
/* 002343 0x8093918C */ .word	0x44000C44
/* 002344 0x80939190 */ .word	0x44000C74
/* 002345 0x80939194 */ .word	0x45000CDC
/* 002346 0x80939198 */ .word	0x46000CE0
/* 002347 0x8093919C */ .word	0x44000D14
/* 002348 0x809391A0 */ .word	0x44000D1C
/* 002349 0x809391A4 */ .word	0x44000D24
/* 002350 0x809391A8 */ .word	0x44000D4C
/* 002351 0x809391AC */ .word	0x44000DE4
/* 002352 0x809391B0 */ .word	0x44000E00
/* 002353 0x809391B4 */ .word	0x45000EB0
/* 002354 0x809391B8 */ .word	0x46000EB4
/* 002355 0x809391BC */ .word	0x45000EE4
/* 002356 0x809391C0 */ .word	0x46000EE8
/* 002357 0x809391C4 */ .word	0x45000EFC
/* 002358 0x809391C8 */ .word	0x46000F00
/* 002359 0x809391CC */ .word	0x45000F20
/* 002360 0x809391D0 */ .word	0x46000F24
/* 002361 0x809391D4 */ .word	0x45000F50
/* 002362 0x809391D8 */ .word	0x46000F54
/* 002363 0x809391DC */ .word	0x44000FC4
/* 002364 0x809391E0 */ .word	0x44000FDC
/* 002365 0x809391E4 */ .word	0x45001004
/* 002366 0x809391E8 */ .word	0x46001008
/* 002367 0x809391EC */ .word	0x440010B8
/* 002368 0x809391F0 */ .word	0x440010CC
/* 002369 0x809391F4 */ .word	0x450010E8
/* 002370 0x809391F8 */ .word	0x460010EC
/* 002371 0x809391FC */ .word	0x4400112C
/* 002372 0x80939200 */ .word	0x45001214
/* 002373 0x80939204 */ .word	0x46001218
/* 002374 0x80939208 */ .word	0x45001208
/* 002375 0x8093920C */ .word	0x46001210
/* 002376 0x80939210 */ .word	0x4400125C
/* 002377 0x80939214 */ .word	0x44001278
/* 002378 0x80939218 */ .word	0x440012A4
/* 002379 0x8093921C */ .word	0x450012C0
/* 002380 0x80939220 */ .word	0x460012C4
/* 002381 0x80939224 */ .word	0x44001324
/* 002382 0x80939228 */ .word	0x44001380
/* 002383 0x8093922C */ .word	0x44001408
/* 002384 0x80939230 */ .word	0x44001430
/* 002385 0x80939234 */ .word	0x450014C0
/* 002386 0x80939238 */ .word	0x460014C4
/* 002387 0x8093923C */ .word	0x44001534
/* 002388 0x80939240 */ .word	0x44001568
/* 002389 0x80939244 */ .word	0x45001594
/* 002390 0x80939248 */ .word	0x46001598
/* 002391 0x8093924C */ .word	0x440015FC
/* 002392 0x80939250 */ .word	0x44001630
/* 002393 0x80939254 */ .word	0x4500164C
/* 002394 0x80939258 */ .word	0x46001650
/* 002395 0x8093925C */ .word	0x440016AC
/* 002396 0x80939260 */ .word	0x450016C4
/* 002397 0x80939264 */ .word	0x460016CC
/* 002398 0x80939268 */ .word	0x44001700
/* 002399 0x8093926C */ .word	0x45001738
/* 002400 0x80939270 */ .word	0x4600173C
/* 002401 0x80939274 */ .word	0x440017C4
/* 002402 0x80939278 */ .word	0x450017F8
/* 002403 0x8093927C */ .word	0x46001800
/* 002404 0x80939280 */ .word	0x45001840
/* 002405 0x80939284 */ .word	0x46001844
/* 002406 0x80939288 */ .word	0x4500185C
/* 002407 0x8093928C */ .word	0x46001860
/* 002408 0x80939290 */ .word	0x44001880
/* 002409 0x80939294 */ .word	0x45001898
/* 002410 0x80939298 */ .word	0x460018A0
/* 002411 0x8093929C */ .word	0x450018F0
/* 002412 0x809392A0 */ .word	0x460018F4
/* 002413 0x809392A4 */ .word	0x45001928
/* 002414 0x809392A8 */ .word	0x4600192C
/* 002415 0x809392AC */ .word	0x45001940
/* 002416 0x809392B0 */ .word	0x46001944
/* 002417 0x809392B4 */ .word	0x4400195C
/* 002418 0x809392B8 */ .word	0x44001964
/* 002419 0x809392BC */ .word	0x45001980
/* 002420 0x809392C0 */ .word	0x46001984
/* 002421 0x809392C4 */ .word	0x450019C8
/* 002422 0x809392C8 */ .word	0x460019CC
/* 002423 0x809392CC */ .word	0x45001A18
/* 002424 0x809392D0 */ .word	0x46001A1C
/* 002425 0x809392D4 */ .word	0x44001A64
/* 002426 0x809392D8 */ .word	0x45001A7C
/* 002427 0x809392DC */ .word	0x46001A80
/* 002428 0x809392E0 */ .word	0x44001AE0
/* 002429 0x809392E4 */ .word	0x44001AE8
/* 002430 0x809392E8 */ .word	0x45001B1C
/* 002431 0x809392EC */ .word	0x46001B24
/* 002432 0x809392F0 */ .word	0x45001B20
/* 002433 0x809392F4 */ .word	0x46001B28
/* 002434 0x809392F8 */ .word	0x44001B64
/* 002435 0x809392FC */ .word	0x44001B6C
/* 002436 0x80939300 */ .word	0x45001B8C
/* 002437 0x80939304 */ .word	0x46001B94
/* 002438 0x80939308 */ .word	0x45001B90
/* 002439 0x8093930C */ .word	0x46001B98
/* 002440 0x80939310 */ .word	0x44001BCC
/* 002441 0x80939314 */ .word	0x44001BE8
/* 002442 0x80939318 */ .word	0x44001BF0
/* 002443 0x8093931C */ .word	0x44001BF8
/* 002444 0x80939320 */ .word	0x44001C20
/* 002445 0x80939324 */ .word	0x45001C40
/* 002446 0x80939328 */ .word	0x46001C48
/* 002447 0x8093932C */ .word	0x45001C44
/* 002448 0x80939330 */ .word	0x46001C4C
/* 002449 0x80939334 */ .word	0x44001C88
/* 002450 0x80939338 */ .word	0x44001C90
/* 002451 0x8093933C */ .word	0x45001CAC
/* 002452 0x80939340 */ .word	0x46001CB0
/* 002453 0x80939344 */ .word	0x44001CF0
/* 002454 0x80939348 */ .word	0x44001CF8
/* 002455 0x8093934C */ .word	0x44001D00
/* 002456 0x80939350 */ .word	0x44001D08
/* 002457 0x80939354 */ .word	0x44001D44
/* 002458 0x80939358 */ .word	0x45001D50
/* 002459 0x8093935C */ .word	0x46001D54
/* 002460 0x80939360 */ .word	0x44001D74
/* 002461 0x80939364 */ .word	0x44001D9C
/* 002462 0x80939368 */ .word	0x45001DB8
/* 002463 0x8093936C */ .word	0x46001DC0
/* 002464 0x80939370 */ .word	0x45001DBC
/* 002465 0x80939374 */ .word	0x46001DC8
/* 002466 0x80939378 */ .word	0x44001E04
/* 002467 0x8093937C */ .word	0x44001E10
/* 002468 0x80939380 */ .word	0x44001F08
/* 002469 0x80939384 */ .word	0x44001F10
/* 002470 0x80939388 */ .word	0x44002008
/* 002471 0x8093938C */ .word	0x44002088
/* 002472 0x80939390 */ .word	0x440020B4
/* 002473 0x80939394 */ .word	0x440020C4
/* 002474 0x80939398 */ .word	0x440020DC
/* 002475 0x8093939C */ .word	0x82000010
/* 002476 0x809393A0 */ .word	0x82000014
/* 002477 0x809393A4 */ .word	0x82000018
/* 002478 0x809393A8 */ .word	0x00000000
glabel objBeanOverlayInfoOffset
/* 002479 0x809393AC */ .word	0x00000300
