.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .rodata

glabel enRdOverlayInfo
/* 003312 0x808D71E0 */ .word	0x000032A0
/* 003313 0x808D71E4 */ .word	0x00000090
/* 003314 0x808D71E8 */ .word	0x00000090
/* 003315 0x808D71EC */ .word	0x00000000
/* 003316 0x808D71F0 */ .word	0x000000D4
glabel enRdOverlayRelocations
/* 003317 0x808D71F4 */ .word	0x45000014
/* 003318 0x808D71F8 */ .word	0x46000018
/* 003319 0x808D71FC */ .word	0x45000028
/* 003320 0x808D7200 */ .word	0x4600002C
/* 003321 0x808D7204 */ .word	0x45000168
/* 003322 0x808D7208 */ .word	0x46000170
/* 003323 0x808D720C */ .word	0x440001B0
/* 003324 0x808D7210 */ .word	0x440001C0
/* 003325 0x808D7214 */ .word	0x440001D4
/* 003326 0x808D7218 */ .word	0x450001DC
/* 003327 0x808D721C */ .word	0x460001E0
/* 003328 0x808D7220 */ .word	0x440001EC
/* 003329 0x808D7224 */ .word	0x440001FC
/* 003330 0x808D7228 */ .word	0x44000210
/* 003331 0x808D722C */ .word	0x45000218
/* 003332 0x808D7230 */ .word	0x4600021C
/* 003333 0x808D7234 */ .word	0x44000228
/* 003334 0x808D7238 */ .word	0x44000238
/* 003335 0x808D723C */ .word	0x4400024C
/* 003336 0x808D7240 */ .word	0x45000254
/* 003337 0x808D7244 */ .word	0x46000258
/* 003338 0x808D7248 */ .word	0x4400027C
/* 003339 0x808D724C */ .word	0x45000284
/* 003340 0x808D7250 */ .word	0x46000288
/* 003341 0x808D7254 */ .word	0x44000294
/* 003342 0x808D7258 */ .word	0x45000460
/* 003343 0x808D725C */ .word	0x46000464
/* 003344 0x808D7260 */ .word	0x4500046C
/* 003345 0x808D7264 */ .word	0x46000470
/* 003346 0x808D7268 */ .word	0x45000478
/* 003347 0x808D726C */ .word	0x4600047C
/* 003348 0x808D7270 */ .word	0x45000484
/* 003349 0x808D7274 */ .word	0x46000488
/* 003350 0x808D7278 */ .word	0x45000490
/* 003351 0x808D727C */ .word	0x46000494
/* 003352 0x808D7280 */ .word	0x4500049C
/* 003353 0x808D7284 */ .word	0x460004A0
/* 003354 0x808D7288 */ .word	0x450004A8
/* 003355 0x808D728C */ .word	0x460004AC
/* 003356 0x808D7290 */ .word	0x440004B8
/* 003357 0x808D7294 */ .word	0x45000554
/* 003358 0x808D7298 */ .word	0x46000558
/* 003359 0x808D729C */ .word	0x440006C0
/* 003360 0x808D72A0 */ .word	0x440006D0
/* 003361 0x808D72A4 */ .word	0x440006FC
/* 003362 0x808D72A8 */ .word	0x4400070C
/* 003363 0x808D72AC */ .word	0x44000760
/* 003364 0x808D72B0 */ .word	0x44000770
/* 003365 0x808D72B4 */ .word	0x45000804
/* 003366 0x808D72B8 */ .word	0x4600080C
/* 003367 0x808D72BC */ .word	0x4400089C
/* 003368 0x808D72C0 */ .word	0x440008C4
/* 003369 0x808D72C4 */ .word	0x4500093C
/* 003370 0x808D72C8 */ .word	0x46000940
/* 003371 0x808D72CC */ .word	0x44000948
/* 003372 0x808D72D0 */ .word	0x44000978
/* 003373 0x808D72D4 */ .word	0x45000A0C
/* 003374 0x808D72D8 */ .word	0x46000A14
/* 003375 0x808D72DC */ .word	0x44000AA4
/* 003376 0x808D72E0 */ .word	0x44000ACC
/* 003377 0x808D72E4 */ .word	0x45000B44
/* 003378 0x808D72E8 */ .word	0x46000B48
/* 003379 0x808D72EC */ .word	0x44000B50
/* 003380 0x808D72F0 */ .word	0x44000B80
/* 003381 0x808D72F4 */ .word	0x44000C40
/* 003382 0x808D72F8 */ .word	0x44000C50
/* 003383 0x808D72FC */ .word	0x45000CC0
/* 003384 0x808D7300 */ .word	0x46000CCC
/* 003385 0x808D7304 */ .word	0x44000D5C
/* 003386 0x808D7308 */ .word	0x44000D84
/* 003387 0x808D730C */ .word	0x45000DA0
/* 003388 0x808D7310 */ .word	0x46000DB4
/* 003389 0x808D7314 */ .word	0x44000DCC
/* 003390 0x808D7318 */ .word	0x44000DFC
/* 003391 0x808D731C */ .word	0x44000F7C
/* 003392 0x808D7320 */ .word	0x44000F8C
/* 003393 0x808D7324 */ .word	0x45000FFC
/* 003394 0x808D7328 */ .word	0x4600100C
/* 003395 0x808D732C */ .word	0x45001078
/* 003396 0x808D7330 */ .word	0x4600107C
/* 003397 0x808D7334 */ .word	0x440010B8
/* 003398 0x808D7338 */ .word	0x450010F0
/* 003399 0x808D733C */ .word	0x460010F4
/* 003400 0x808D7340 */ .word	0x45001124
/* 003401 0x808D7344 */ .word	0x46001128
/* 003402 0x808D7348 */ .word	0x4500121C
/* 003403 0x808D734C */ .word	0x46001220
/* 003404 0x808D7350 */ .word	0x45001224
/* 003405 0x808D7354 */ .word	0x4600122C
/* 003406 0x808D7358 */ .word	0x44001318
/* 003407 0x808D735C */ .word	0x440013FC
/* 003408 0x808D7360 */ .word	0x440014A0
/* 003409 0x808D7364 */ .word	0x440014B0
/* 003410 0x808D7368 */ .word	0x440014F4
/* 003411 0x808D736C */ .word	0x4400151C
/* 003412 0x808D7370 */ .word	0x450015FC
/* 003413 0x808D7374 */ .word	0x46001604
/* 003414 0x808D7378 */ .word	0x440016CC
/* 003415 0x808D737C */ .word	0x440016DC
/* 003416 0x808D7380 */ .word	0x44001794
/* 003417 0x808D7384 */ .word	0x440017BC
/* 003418 0x808D7388 */ .word	0x45001898
/* 003419 0x808D738C */ .word	0x460018A4
/* 003420 0x808D7390 */ .word	0x4500193C
/* 003421 0x808D7394 */ .word	0x46001950
/* 003422 0x808D7398 */ .word	0x44001970
/* 003423 0x808D739C */ .word	0x44001980
/* 003424 0x808D73A0 */ .word	0x440019C0
/* 003425 0x808D73A4 */ .word	0x45001A74
/* 003426 0x808D73A8 */ .word	0x46001A80
/* 003427 0x808D73AC */ .word	0x45001AFC
/* 003428 0x808D73B0 */ .word	0x46001B04
/* 003429 0x808D73B4 */ .word	0x45001C3C
/* 003430 0x808D73B8 */ .word	0x46001C44
/* 003431 0x808D73BC */ .word	0x44001E18
/* 003432 0x808D73C0 */ .word	0x45001E88
/* 003433 0x808D73C4 */ .word	0x46001E90
/* 003434 0x808D73C8 */ .word	0x44001F4C
/* 003435 0x808D73CC */ .word	0x45001FB0
/* 003436 0x808D73D0 */ .word	0x46001FB8
/* 003437 0x808D73D4 */ .word	0x45001FF0
/* 003438 0x808D73D8 */ .word	0x46002008
/* 003439 0x808D73DC */ .word	0x4400205C
/* 003440 0x808D73E0 */ .word	0x450020D0
/* 003441 0x808D73E4 */ .word	0x460020D8
/* 003442 0x808D73E8 */ .word	0x44002150
/* 003443 0x808D73EC */ .word	0x45002198
/* 003444 0x808D73F0 */ .word	0x460021A0
/* 003445 0x808D73F4 */ .word	0x45002210
/* 003446 0x808D73F8 */ .word	0x46002218
/* 003447 0x808D73FC */ .word	0x44002268
/* 003448 0x808D7400 */ .word	0x44002278
/* 003449 0x808D7404 */ .word	0x450022EC
/* 003450 0x808D7408 */ .word	0x460022F4
/* 003451 0x808D740C */ .word	0x44002334
/* 003452 0x808D7410 */ .word	0x450023BC
/* 003453 0x808D7414 */ .word	0x460023C4
/* 003454 0x808D7418 */ .word	0x450023FC
/* 003455 0x808D741C */ .word	0x46002424
/* 003456 0x808D7420 */ .word	0x44002484
/* 003457 0x808D7424 */ .word	0x440024BC
/* 003458 0x808D7428 */ .word	0x440024CC
/* 003459 0x808D742C */ .word	0x4500254C
/* 003460 0x808D7430 */ .word	0x46002550
/* 003461 0x808D7434 */ .word	0x44002630
/* 003462 0x808D7438 */ .word	0x4500263C
/* 003463 0x808D743C */ .word	0x46002640
/* 003464 0x808D7440 */ .word	0x4500277C
/* 003465 0x808D7444 */ .word	0x46002780
/* 003466 0x808D7448 */ .word	0x44002838
/* 003467 0x808D744C */ .word	0x44002840
/* 003468 0x808D7450 */ .word	0x44002864
/* 003469 0x808D7454 */ .word	0x44002A54
/* 003470 0x808D7458 */ .word	0x45002AC8
/* 003471 0x808D745C */ .word	0x46002AD0
/* 003472 0x808D7460 */ .word	0x45002AE0
/* 003473 0x808D7464 */ .word	0x46002AE4
/* 003474 0x808D7468 */ .word	0x45002AEC
/* 003475 0x808D746C */ .word	0x46002AF0
/* 003476 0x808D7470 */ .word	0x44002B1C
/* 003477 0x808D7474 */ .word	0x44002B2C
/* 003478 0x808D7478 */ .word	0x44002C2C
/* 003479 0x808D747C */ .word	0x44002C34
/* 003480 0x808D7480 */ .word	0x44002C58
/* 003481 0x808D7484 */ .word	0x45002D10
/* 003482 0x808D7488 */ .word	0x46002D14
/* 003483 0x808D748C */ .word	0x45002DA4
/* 003484 0x808D7490 */ .word	0x46002DA8
/* 003485 0x808D7494 */ .word	0x44002E08
/* 003486 0x808D7498 */ .word	0x44002F14
/* 003487 0x808D749C */ .word	0x44002F4C
/* 003488 0x808D74A0 */ .word	0x44002F58
/* 003489 0x808D74A4 */ .word	0x44002F64
/* 003490 0x808D74A8 */ .word	0x4500312C
/* 003491 0x808D74AC */ .word	0x46003168
/* 003492 0x808D74B0 */ .word	0x45003160
/* 003493 0x808D74B4 */ .word	0x46003164
/* 003494 0x808D74B8 */ .word	0x45003188
/* 003495 0x808D74BC */ .word	0x46003190
/* 003496 0x808D74C0 */ .word	0x450031D4
/* 003497 0x808D74C4 */ .word	0x46003208
/* 003498 0x808D74C8 */ .word	0x4500322C
/* 003499 0x808D74CC */ .word	0x46003230
/* 003500 0x808D74D0 */ .word	0x82000010
/* 003501 0x808D74D4 */ .word	0x82000014
/* 003502 0x808D74D8 */ .word	0x82000018
/* 003503 0x808D74DC */ .word	0x8200001C
/* 003504 0x808D74E0 */ .word	0xC2000014
/* 003505 0x808D74E4 */ .word	0xC2000018
/* 003506 0x808D74E8 */ .word	0xC200001C
/* 003507 0x808D74EC */ .word	0xC2000020
/* 003508 0x808D74F0 */ .word	0xC2000024
/* 003509 0x808D74F4 */ .word	0xC2000028
/* 003510 0x808D74F8 */ .word	0xC200002C
/* 003511 0x808D74FC */ .word	0xC2000030
/* 003512 0x808D7500 */ .word	0xC2000034
/* 003513 0x808D7504 */ .word	0xC2000038
/* 003514 0x808D7508 */ .word	0xC200004C
/* 003515 0x808D750C */ .word	0xC2000050
/* 003516 0x808D7510 */ .word	0xC2000054
/* 003517 0x808D7514 */ .word	0xC2000058
/* 003518 0x808D7518 */ .word	0xC200005C
/* 003519 0x808D751C */ .word	0xC2000060
/* 003520 0x808D7520 */ .word	0xC2000064
/* 003521 0x808D7524 */ .word	0xC2000068
/* 003522 0x808D7528 */ .word	0xC200006C
/* 003523 0x808D752C */ .word	0xC2000070
/* 003524 0x808D7530 */ .word	0xC2000074
/* 003525 0x808D7534 */ .word	0xC2000078
/* 003526 0x808D7538 */ .word	0xC200007C
/* 003527 0x808D753C */ .word	0xC2000080
/* 003528 0x808D7540 */ .word	0xC2000084
/* 003529 0x808D7544 */ .word	0x00000000
/* 003530 0x808D7548 */ .word	0x00000000
glabel enRdOverlayInfoOffset
/* 003531 0x808D754C */ .word	0x00000370
