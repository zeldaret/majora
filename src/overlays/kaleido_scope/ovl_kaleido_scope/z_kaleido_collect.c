/*
 * File: z_kaleido_collect.c
 * Overlay: ovl_kaleido_scope
 * Description: Pause Menu - Quest Page
 */

#include "z_kaleido_scope.h"
#include "interface/parameter_static/parameter_static.h"

s32 KaleidoScope_UpdateQuestStatusPoint(PauseContext* pauseCtx, s16 point);

extern TexturePtr D_08061000;
extern TexturePtr D_08062000; // gSongNoteTex

s16 D_8082AED0[] = { 120, 60, 2, 80 };
s16 D_8082AED8[] = { 20, 4, 20, 10 };
s16 D_8082AEE0 = 0;
u8 D_8082AEE4[] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
s16 D_8082AEF0[] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
s16 D_8082AF04[][4] = {
    { 255, 0, 0, 255 },
    { 255, 70, 0, 150 },
    { 255, 70, 0, 150 },
    { 255, 0, 0, 255 },
};
s16 D_8082AF24[][3] = {
    { 0, 0, 0 },  { 0, 0, 0 },  { 0, 0, 0 },    { 0, 0, 0 },   { 0, 0, 0 },   { 0, 0, 0 },
    { 0, 60, 0 }, { 90, 0, 0 }, { 0, 40, 110 }, { 80, 40, 0 }, { 70, 0, 90 }, { 90, 90, 0 },
};
s16 D_8082AF6C[] = {
    255, 255, 255, 255, 255, 255,
};
s16 D_8082AF78[] = {
    255, 255, 255, 255, 255, 255,
};
s16 D_8082AF84[] = {
    150, 150, 150, 150, 150, 150,
};
#ifdef NON_MATCHING
void KaleidoScope_DrawQuestStatus(PlayState* play) {
    static s16 D_8082AF90 = 20;
    static s16 D_8082AF94 = 0;
    static s16 D_8082AF98 = 0;
    static s16 D_8082AF9C = 0;
    static s16 D_8082AFA0 = 0;
    static s16 D_8082AFA4 = 0;
    static s16 D_8082AFA8 = 20;
    static s16 D_8082AFAC = 0;
    static TexturePtr sOcarinaButtonTextures[] = {
        gOcarinaATex, gOcarinaCDownTex, gOcarinaCRightTex, gOcarinaCLeftTex, gOcarinaCUpTex,
    };
    static s16 D_8082AFC4[] = {
        150, 255, 100, 255, 255, 255, 255, 255, 255, 255, 255, 255,
    };
    static s16 D_8082AFDC[] = {
        255, 80, 150, 160, 100, 240, 255, 255, 255, 255, 255, 255,
    };
    static s16 D_8082AFF4[] = {
        100, 40, 255, 0, 255, 100, 255, 255, 255, 255, 255, 255,
    };
    static TexturePtr D_8082B00C[][3] = {
        { 0x08053000, 0x08054000, 0x08055000 },
        { 0x08056000, 0x08057000, 0x08058000 },
    };
    static u8 D_8082B024[] = { 0, 1, 0, 0 };
    PauseContext* pauseCtx = &play->pauseCtx;
    s16 sp1CA;
    s16 sp1C8;
    s16 sp1C6;
    s16 sp1C4;
    s16 var_v1;
    s16 i;
    s16 j;
    s16 var_s3;
    s16 sp1B4[3];
    u16 sp1B2;

    OPEN_DISPS(play->state.gfxCtx);

    KaleidoScope_SetCursorVtx(pauseCtx, pauseCtx->cursorSlot[2] * 4, pauseCtx->questVtx);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);
    gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                      ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

    // Draw the Boss Remains icons
    D_8082AF90--;
    for (i = 0, j = 0; i < 4; i++, j += 4) {
        if ((D_8082AF94 != 1) && (D_8082AF94 != 3)) {
            var_v1 = (D_8082AF94 != 0) ? (i + 6) : i;

            if (D_8082AF90 != 0) {
                sp1CA = ABS_ALT(D_8082AF6C[i] - D_8082AF24[var_v1][0]) / D_8082AF90;
                sp1C8 = ABS_ALT(D_8082AF78[i] - D_8082AF24[var_v1][1]) / D_8082AF90;
                sp1C6 = ABS_ALT(D_8082AF84[i] - D_8082AF24[var_v1][2]) / D_8082AF90;

                if (D_8082AF6C[i] >= D_8082AF24[var_v1][0]) {
                    D_8082AF6C[i] -= sp1CA;
                } else {
                    D_8082AF6C[i] += sp1CA;
                }
                if (D_8082AF78[i] >= D_8082AF24[var_v1][1]) {
                    D_8082AF78[i] -= sp1C8;
                } else {
                    D_8082AF78[i] += sp1C8;
                }
                if (D_8082AF84[i] >= D_8082AF24[var_v1][2]) {
                    D_8082AF84[i] -= sp1C6;
                } else {
                    D_8082AF84[i] += sp1C6;
                }
            } else {
                D_8082AF6C[i] = D_8082AF24[var_v1][0];
                D_8082AF78[i] = D_8082AF24[var_v1][1];
                D_8082AF84[i] = D_8082AF24[var_v1][2];
            }
        }

        if (CHECK_QUEST_ITEM(i)) {
            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);
            gDPSetEnvColor(POLY_OPA_DISP++, D_8082AF6C[i], D_8082AF78[i], D_8082AF84[i], 0);
            gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[j], 4, 0);
            KaleidoScope_DrawQuadTextureRGBA32(play->state.gfxCtx, gItemIcons[ITEM_REMAINS_ODOLWA + i], 32, 32, 0);
        }
    }

    if (D_8082AF90 == 0) {
        D_8082AF90 = D_8082AED0[D_8082AF94];
        if (++D_8082AF94 >= 4) {
            D_8082AF94 = 0;
        }
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);
    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

    if (GET_CUR_EQUIP_VALUE(1) != 0) {
        gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[j], 4, 0);
        KaleidoScope_DrawQuadTextureRGBA32(play->state.gfxCtx,
                                           gItemIcons[(ITEM_SHIELD_HERO - 1) + GET_CUR_EQUIP_VALUE(1)], 32, 32, 0);
    }

    j += 4;

    if (GET_CUR_EQUIP_VALUE(0) != 0) {
        gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[j], 4, 0);
        KaleidoScope_DrawQuadTextureRGBA32(play->state.gfxCtx,
                                           gItemIcons[(ITEM_SWORD_KOKIRI - 1) + GET_CUR_EQUIP_VALUE(0)], 32, 32, 0);
    }

    j += 4;

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);

    gDPLoadTextureBlock(POLY_OPA_DISP++, &D_08062000, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 24, 0, G_TX_NOMIRROR | G_TX_WRAP,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    for (i = 0; i < 12; i++, j += 4) {
        if (CHECK_QUEST_ITEM(QUEST_SONG_SONATA + i) ||
            ((i == 1) && !CHECK_QUEST_ITEM(QUEST_SONG_SONATA + i) && CHECK_QUEST_ITEM(QUEST_SONG_LULLABY_INTRO))) {
            if ((i + 6) == pauseCtx->cursorSlot[2]) {
                pauseCtx->questVtx[j + 0].v.ob[0] = pauseCtx->questVtx[j + 2].v.ob[0] =
                    pauseCtx->questVtx[j + 0].v.ob[0] - 2;

                pauseCtx->questVtx[j + 1].v.ob[0] = pauseCtx->questVtx[j + 3].v.ob[0] =
                    pauseCtx->questVtx[j + 1].v.ob[0] + 4;

                pauseCtx->questVtx[j + 0].v.ob[1] = pauseCtx->questVtx[j + 1].v.ob[1] =
                    pauseCtx->questVtx[j + 0].v.ob[1] + 2;

                pauseCtx->questVtx[j + 2].v.ob[1] = pauseCtx->questVtx[j + 3].v.ob[1] =
                    pauseCtx->questVtx[j + 2].v.ob[1] - 4;
            }

            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, D_8082AFC4[i], D_8082AFDC[i], D_8082AFF4[i], pauseCtx->alpha);
            gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[j], 4, 0);
            gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);
        }
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);

    if (CHECK_QUEST_ITEM(QUEST_BOMBERS_NOTEBOOK)) {
        gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[j], 4, 0);
        KaleidoScope_DrawQuadTextureRGBA32(play->state.gfxCtx, &D_08061000, 32, 32, 0);
    }

    j += 4;

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);

    for (i = 0; i < 2; i++, j += 4) {
        gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[j], 4, 0);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);

        if (GET_CUR_UPG_VALUE(D_8082B024[i]) != 0) {
            KaleidoScope_DrawQuadTextureRGBA32(play->state.gfxCtx, D_8082B00C[i][GET_CUR_UPG_VALUE(D_8082B024[i]) - 1],
                                               32, 32, 0);
        }
    }

    j += 4;

    sp1CA = ABS_ALT(D_8082AF98 - D_8082AF04[D_8082AFAC][0]) / D_8082AFA8;
    sp1C8 = ABS_ALT(D_8082AF9C - D_8082AF04[D_8082AFAC][1]) / D_8082AFA8;
    sp1C6 = ABS_ALT(D_8082AFA0 - D_8082AF04[D_8082AFAC][2]) / D_8082AFA8;
    sp1C4 = ABS_ALT(D_8082AFA4 - D_8082AF04[D_8082AFAC][3]) / D_8082AFA8;

    if (D_8082AF98 >= D_8082AF04[D_8082AFAC][0]) {
        D_8082AF98 -= sp1CA;
    } else {
        D_8082AF98 += sp1CA;
    }

    if (D_8082AF9C >= D_8082AF04[D_8082AFAC][1]) {
        D_8082AF9C -= sp1C8;
    } else {
        D_8082AF9C += sp1C8;
    }

    if (D_8082AFA0 >= D_8082AF04[D_8082AFAC][2]) {
        D_8082AFA0 -= sp1C6;
    } else {
        D_8082AFA0 += sp1C6;
    }

    if (D_8082AFA4 >= D_8082AF04[D_8082AFAC][3]) {
        D_8082AFA4 -= sp1C4;
    } else {
        D_8082AFA4 += sp1C4;
    }

    D_8082AFA8--;
    if (D_8082AFA8 == 0) {
        D_8082AF98 = D_8082AF04[D_8082AFAC][0];
        D_8082AF9C = D_8082AF04[D_8082AFAC][1];
        D_8082AFA0 = D_8082AF04[D_8082AFAC][2];
        D_8082AFA4 = D_8082AF04[D_8082AFAC][3];
        D_8082AFA8 = D_8082AED8[D_8082AFAC];
        if (++D_8082AFAC >= 4) {
            D_8082AFAC = 0;
        }
    }

    if ((GET_SAVE_INVENTORY_QUEST_ITEMS >> QUEST_HEART_PIECE_COUNT) != 0) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

        if ((pauseCtx->state == 4) || (pauseCtx->state == 0x1A)) {
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, D_8082AF04[0][0], D_8082AF04[0][1], D_8082AF04[0][2],
                            pauseCtx->alpha);
        } else {
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, D_8082AF98, D_8082AF9C, D_8082AFA0, D_8082AFA4);
        }

        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
        gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[j], 4, 0);

        POLY_OPA_DISP =
            func_8010DC58(POLY_OPA_DISP,
                          gItemIcons[((ITEM_HEART_PIECE_2 - 1) +
                                      ((GET_SAVE_INVENTORY_QUEST_ITEMS & 0xF0000000) >> QUEST_HEART_PIECE_COUNT))],
                          48, 48, 0);
    }

    j += 4;

    if (pauseCtx->state == 6) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

        if (pauseCtx->actionState == PAUSE_ACTIONSTATE_2) {
            pauseCtx->ocarinaStaff = AudioOcarina_GetPlaybackStaff();

            if (pauseCtx->ocarinaStaff->pos != 0) {
                if (D_8082AEE0 == (pauseCtx->ocarinaStaff->pos - 1)) {
                    D_8082AEE0++;
                    D_8082AEE4[pauseCtx->ocarinaStaff->pos - 1] = pauseCtx->ocarinaStaff->buttonIndex;
                }

                for (i = 0, var_s3 = 0; i < 8; i++, var_s3 += 4, j += 4) {
                    if (D_8082AEE4[i] == OCARINA_BTN_INVALID) {
                        break;
                    }

                    if (D_8082AEF0[i] != 255) {
                        D_8082AEF0[i] += 50;
                        if (D_8082AEF0[i] >= 255) {
                            D_8082AEF0[i] = 255;
                        }
                    }

                    pauseCtx->questVtx[j + 0].v.ob[1] = pauseCtx->questVtx[j + 1].v.ob[1] =
                        pauseCtx->unk_2BE[D_8082AEE4[i]];

                    pauseCtx->questVtx[j + 2].v.ob[1] = pauseCtx->questVtx[j + 3].v.ob[1] =
                        pauseCtx->questVtx[j + 0].v.ob[1] - 12;

                    gDPPipeSync(POLY_OPA_DISP++);

                    if (D_8082AEE4[i] == OCARINA_BTN_A) {
                        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 80, 150, 255, D_8082AEF0[i]);
                    } else {
                        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 50, D_8082AEF0[i]);
                    }

                    gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[j], 4, 0);

                    POLY_OPA_DISP = func_8010DC58(POLY_OPA_DISP, sOcarinaButtonTextures[D_8082AEE4[i]], 16, 16, 0);
                }
            }
        } else if (((pauseCtx->actionState >= PAUSE_ACTIONSTATE_4) && (pauseCtx->actionState <= PAUSE_ACTIONSTATE_6)) ||
                   (pauseCtx->actionState == PAUSE_ACTIONSTATE_8)) {
            sp1C8 = pauseCtx->ocarinaSongIndex;
            sp1CA = gOcarinaSongButtons[sp1C8].numButtons;

            i = j;

            for (var_s3 = 0; var_s3 < sp1CA; var_s3++, j += 4) {
                pauseCtx->questVtx[j + 0].v.ob[1] = pauseCtx->questVtx[j + 1].v.ob[1] =
                    pauseCtx->unk_2BE[gOcarinaSongButtons[sp1C8].buttonIndex[var_s3]];

                pauseCtx->questVtx[j + 2].v.ob[1] = pauseCtx->questVtx[j + 3].v.ob[1] =
                    pauseCtx->questVtx[j + 0].v.ob[1] - 12;

                gDPPipeSync(POLY_OPA_DISP++);

                if (pauseCtx->actionState == PAUSE_ACTIONSTATE_8) {
                    if (gOcarinaSongButtons[sp1C8].buttonIndex[var_s3] == 0) {
                        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 80, 150, 255, 200);
                    } else {
                        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 50, 200);
                    }
                } else {
                    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 150, 150, 150, 150);
                }

                gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[j], 4, 0);

                POLY_OPA_DISP = func_8010DC58(
                    POLY_OPA_DISP, sOcarinaButtonTextures[gOcarinaSongButtons[sp1C8].buttonIndex[var_s3]], 16, 16, 0);
            }

            if (pauseCtx->actionState != PAUSE_ACTIONSTATE_8) {
                pauseCtx->ocarinaStaff = AudioOcarina_GetPlayingStaff();

                if (pauseCtx->ocarinaStaff->pos != 0) {
                    if (D_8082AEE0 == (pauseCtx->ocarinaStaff->pos - 1)) {
                        if (pauseCtx->ocarinaStaff->buttonIndex < 5) {
                            D_8082AEE4[pauseCtx->ocarinaStaff->pos - 1] = pauseCtx->ocarinaStaff->buttonIndex;
                            D_8082AEE4[pauseCtx->ocarinaStaff->pos] = OCARINA_BTN_INVALID;
                            D_8082AEE0++;
                        }
                    }
                }

                j = i + 32;
                var_s3 = 0;
                for (; var_s3 < 8; var_s3++, j += 4) {
                    if (D_8082AEE4[var_s3] == OCARINA_BTN_INVALID) {
                        continue;
                    }

                    if (D_8082AEF0[var_s3] != 255) {
                        D_8082AEF0[var_s3] += 50;
                        if (D_8082AEF0[var_s3] >= 255) {
                            D_8082AEF0[var_s3] = 255;
                        }
                    }

                    pauseCtx->questVtx[j + 0].v.ob[1] = pauseCtx->questVtx[j + 1].v.ob[1] =
                        pauseCtx->unk_2BE[D_8082AEE4[var_s3]];

                    pauseCtx->questVtx[j + 2].v.ob[1] = pauseCtx->questVtx[j + 3].v.ob[1] =
                        pauseCtx->questVtx[j + 0].v.ob[1] - 12;

                    gDPPipeSync(POLY_OPA_DISP++);

                    if (D_8082AEE4[var_s3] == OCARINA_BTN_A) {
                        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 80, 150, 255, D_8082AEF0[var_s3]);
                    } else {
                        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 50, D_8082AEF0[var_s3]);
                    }

                    gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[j], 4, 0);

                    POLY_OPA_DISP = func_8010DC58(POLY_OPA_DISP, sOcarinaButtonTextures[D_8082AEE4[var_s3]], 16, 16, 0);
                }

                if (pauseCtx->actionState == PAUSE_ACTIONSTATE_4) {
                    for (var_s3 = 0; var_s3 < 8; var_s3++) {
                        D_8082AEE4[var_s3] = OCARINA_BTN_INVALID;
                        D_8082AEF0[var_s3] = 0;
                    }

                    D_8082AEE0 = 0;
                    AudioOcarina_SetInstrument(1);
                    AudioOcarina_StartDefault((1 << pauseCtx->ocarinaSongIndex) | 0x80000000);
                    pauseCtx->ocarinaStaff = AudioOcarina_GetPlaybackStaff();
                    pauseCtx->ocarinaStaff->pos = 0;
                    pauseCtx->ocarinaStaff->state = 0xFE;
                    pauseCtx->actionState = PAUSE_ACTIONSTATE_5;
                }
            }
        }
    }

    if (CHECK_QUEST_ITEM(0x15) && ((play->sceneNum == 0x27) || (play->sceneNum == 0x28))) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);

        sp1B4[0] = sp1B4[1] = 0;
        sp1B4[2] = Inventory_GetSkullTokenCount(play->sceneNum);

        while (sp1B4[2] >= 100) {
            sp1B4[0]++;
            sp1B4[2] -= 100;
        }

        while (sp1B4[2] >= 10) {
            sp1B4[1]++;
            sp1B4[2] -= 10;
        }

        gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[152], 24, 0);

        for (var_s3 = 0, i = 0; var_s3 < 2; var_s3 += 1) {
            if (var_s3 == 0) {
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 0, 0, 0, pauseCtx->alpha);
            } else if (Inventory_GetSkullTokenCount(play->sceneNum) == 100) {
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 200, 50, 50, pauseCtx->alpha);
            } else {
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);
            }

            sp1B2 = false;
            for (j = 0; j < 3; j++, i += 4) {
                if ((j >= 2) || (sp1B4[j] != 0) || sp1B2) {
                    gDPLoadTextureBlock(POLY_OPA_DISP++, ((u8*)gCounterDigit0Tex + (8 * 16 * sp1B4[j])), G_IM_FMT_I,
                                        G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                                        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

                    gSP1Quadrangle(POLY_OPA_DISP++, i, i + 2, i + 3, i + 1, 0);

                    sp1B2 = true;
                }
            }
        }
    }

    CLOSE_DISPS(play->state.gfxCtx);
}
#else
s16 D_8082AF90 = 20;
s16 D_8082AF94 = 0;
s16 D_8082AF98 = 0;
s16 D_8082AF9C = 0;
s16 D_8082AFA0 = 0;
s16 D_8082AFA4 = 0;
s16 D_8082AFA8 = 20;
s16 D_8082AFAC = 0;
TexturePtr sOcarinaButtonTextures[] = {
    gOcarinaATex, gOcarinaCDownTex, gOcarinaCRightTex, gOcarinaCLeftTex, gOcarinaCUpTex,
};
s16 D_8082AFC4[] = {
    150, 255, 100, 255, 255, 255, 255, 255, 255, 255, 255, 255,
};
s16 D_8082AFDC[] = {
    255, 80, 150, 160, 100, 240, 255, 255, 255, 255, 255, 255,
};
s16 D_8082AFF4[] = {
    100, 40, 255, 0, 255, 100, 255, 255, 255, 255, 255, 255,
};
TexturePtr D_8082B00C[][3] = {
    { 0x08053000, 0x08054000, 0x08055000 },
    { 0x08056000, 0x08057000, 0x08058000 },
};
u8 D_8082B024[] = { 0, 1, 0, 0 };
#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_kaleido_scope/KaleidoScope_DrawQuestStatus.s")
#endif

void KaleidoScope_UpdateQuestCursor(PlayState* play) {
    static s16 D_8082B028 = 0;
    static s16 D_8082B02C[][4] = {
        { -1, 3, 2, 1 },   { 0, 4, 3, -2 },    { 0, 5, 22, 3 },   { 0, 4, 2, 1 },     { 1, 20, 5, -2 },
        { 2, 19, 16, 4 },  { 12, -1, -3, 7 },  { 13, -1, 6, 8 },  { 14, -1, 7, 9 },   { 15, -1, 8, 10 },
        { 16, -1, 9, 19 }, { 17, -1, 10, 5 },  { 18, 6, -3, 13 }, { 18, 7, 12, 14 },  { 22, 8, 13, 15 },
        { 22, 9, 14, 16 }, { 22, 10, 15, 5 },  { 22, 11, 16, 5 }, { -1, 12, -3, 22 }, { 5, -1, 10, 20 },
        { 4, -1, 19, -2 }, { 19, 12, -3, 22 }, { -1, 16, 18, 2 },
    };
    PauseContext* pauseCtx = &play->pauseCtx;
    MessageContext* msgCtx = &play->msgCtx;
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    s32 pad;
    s16 var_s0;
    s16 sp44;
    s16 var_v0;
    u16 temp_s0;
    u16 cursorItem;

    pauseCtx->nameColorSet = 0;
    pauseCtx->cursorColorSet = 0;

    // != PAUSE_ACTIONSTATE_IDLE
    if ((pauseCtx->state == PAUSE_STATE_ACTION) &&
        (!pauseCtx->actionState || (pauseCtx->actionState == PAUSE_ACTIONSTATE_5) ||
         (pauseCtx->actionState == PAUSE_ACTIONSTATE_8)) &&
        (pauseCtx->pageIndex == PAUSE_QUEST) && !pauseCtx->itemDescriptionOn) {
        if (pauseCtx->cursorSpecialPos == 0) {
            sp44 = pauseCtx->cursorPoint[PAUSE_QUEST];

            if (pauseCtx->stickRelX < -30) {
                if (pauseCtx->actionState == PAUSE_ACTIONSTATE_5) {
                    AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                }
                pauseCtx->cursorShrinkRate = 4.0f;

                var_s0 = D_8082B02C[sp44][2];
                if (var_s0 == -3) {
                    KaleidoScope_MoveCursorToSpecialPos(play, 0xA);
                    pauseCtx->actionState = PAUSE_ACTIONSTATE_IDLE;
                    if (interfaceCtx->unk_212 == 6) {
                        func_8011552C(play, 0x15);
                    }
                    return;
                } else {
                    while (var_s0 >= 0) {
                        if (KaleidoScope_UpdateQuestStatusPoint(pauseCtx, var_s0) != 0) {
                            break;
                        }
                        var_s0 = D_8082B02C[var_s0][2];
                    }
                }
            } else if (pauseCtx->stickRelX > 30) {
                if (pauseCtx->actionState == PAUSE_ACTIONSTATE_5) {
                    AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                }
                pauseCtx->cursorShrinkRate = 4.0f;
                var_s0 = D_8082B02C[sp44][3];

                if (var_s0 == -2) {
                    KaleidoScope_MoveCursorToSpecialPos(play, 0xB);
                    pauseCtx->actionState = PAUSE_ACTIONSTATE_IDLE;
                    return;
                }

                while (var_s0 >= 0) {
                    if (KaleidoScope_UpdateQuestStatusPoint(pauseCtx, var_s0) != 0) {
                        break;
                    }
                    var_s0 = D_8082B02C[var_s0][3];
                }
            }

            if (pauseCtx->stickRelY < -30) {
                if (pauseCtx->actionState == PAUSE_ACTIONSTATE_5) {
                    AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                }
                var_s0 = D_8082B02C[sp44][1];

                while (var_s0 >= 0) {
                    pauseCtx->cursorShrinkRate = 4.0f;
                    if (KaleidoScope_UpdateQuestStatusPoint(pauseCtx, var_s0) != 0) {
                        break;
                    }
                    var_s0 = D_8082B02C[var_s0][1];
                }
            } else if (pauseCtx->stickRelY > 30) {
                if (pauseCtx->actionState == PAUSE_ACTIONSTATE_5) {
                    AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                }
                var_s0 = D_8082B02C[sp44][0];
                while (var_s0 >= 0) {
                    pauseCtx->cursorShrinkRate = 4.0f;
                    if (KaleidoScope_UpdateQuestStatusPoint(pauseCtx, var_s0) != 0) {
                        break;
                    }
                    var_s0 = D_8082B02C[var_s0][0];
                }
            }

            if (sp44 != pauseCtx->cursorPoint[PAUSE_QUEST]) {
                pauseCtx->actionState = PAUSE_ACTIONSTATE_IDLE;
                play_sound(NA_SE_SY_CURSOR);
            }

            if (pauseCtx->cursorPoint[PAUSE_QUEST] != 0x16) {
                if (pauseCtx->cursorPoint[PAUSE_QUEST] < 4) {
                    if (CHECK_QUEST_ITEM(pauseCtx->cursorPoint[PAUSE_QUEST])) {
                        cursorItem = ITEM_REMAINS_ODOLWA + pauseCtx->cursorPoint[PAUSE_QUEST];
                    } else {
                        cursorItem = PAUSE_ITEM_NONE;
                    }
                } else if (pauseCtx->cursorPoint[PAUSE_QUEST] == QUEST_BOMBERS_NOTEBOOK) {
                    if (CHECK_QUEST_ITEM(pauseCtx->cursorPoint[PAUSE_QUEST])) {
                        cursorItem = ITEM_BOMBERS_NOTEBOOK;
                    } else {
                        cursorItem = PAUSE_ITEM_NONE;
                    }
                } else if (pauseCtx->cursorPoint[PAUSE_QUEST] == 4) {
                    if (GET_CUR_EQUIP_VALUE(1) != 0) {
                        cursorItem = (ITEM_SHIELD_HERO - 1) + GET_CUR_EQUIP_VALUE(1);
                    } else {
                        cursorItem = PAUSE_ITEM_NONE;
                    }
                } else if (pauseCtx->cursorPoint[PAUSE_QUEST] == 5) {
                    if (GET_CUR_EQUIP_VALUE(0) != 0) {
                        cursorItem = (ITEM_SWORD_KOKIRI - 1) + GET_CUR_EQUIP_VALUE(0);
                    } else {
                        cursorItem = PAUSE_ITEM_NONE;
                    }
                } else if (pauseCtx->cursorPoint[PAUSE_QUEST] < 0x12) {
                    if (CHECK_QUEST_ITEM(pauseCtx->cursorPoint[PAUSE_QUEST])) {
                        cursorItem = ITEM_WALLET_GIANT + pauseCtx->cursorPoint[PAUSE_QUEST];
                    } else if ((pauseCtx->cursorPoint[PAUSE_QUEST] == 7) &&
                               CHECK_QUEST_ITEM(QUEST_SONG_LULLABY_INTRO)) {
                        cursorItem = ITEM_SONG_LULLABY_INTRO;
                    } else {
                        cursorItem = PAUSE_ITEM_NONE;
                    }
                } else if (pauseCtx->cursorPoint[PAUSE_QUEST] == 0x13) {
                    if (GET_CUR_UPG_VALUE(0) != 0) {
                        cursorItem = GET_CUR_UPG_VALUE(0) + 0x52;
                    } else {
                        cursorItem = PAUSE_ITEM_NONE;
                    }
                } else if (pauseCtx->cursorPoint[PAUSE_QUEST] == 0x14) {
                    if (GET_CUR_UPG_VALUE(1) != 0) {
                        cursorItem = GET_CUR_UPG_VALUE(1) + 0x55;
                    } else {
                        cursorItem = PAUSE_ITEM_NONE;
                    }
                } else {
                    cursorItem = PAUSE_ITEM_NONE;
                }
            } else {
                if ((GET_SAVE_INVENTORY_QUEST_ITEMS >> QUEST_HEART_PIECE_COUNT) != 0) {
                    cursorItem = ITEM_HEART_CONTAINER;
                } else {
                    cursorItem = PAUSE_ITEM_NONE;
                }
            }

            temp_s0 = pauseCtx->cursorPoint[PAUSE_QUEST];
            pauseCtx->cursorItem[pauseCtx->pageIndex] = cursorItem;
            pauseCtx->cursorSlot[pauseCtx->pageIndex] = temp_s0;

            // Handle part of the ocarina songs playback
            if ((pauseCtx->debugEditor == DEBUG_EDITOR_NONE) && (pauseCtx->state == PAUSE_STATE_ACTION) &&
                (pauseCtx->actionState == PAUSE_ACTIONSTATE_IDLE) && (pauseCtx->cursorSpecialPos == 0)) {
                if ((temp_s0 >= QUEST_SONG_SONATA) && (temp_s0 <= QUEST_SONG_SUN)) {
                    if ((CHECK_QUEST_ITEM(pauseCtx->cursorPoint[PAUSE_QUEST]) ||
                         ((temp_s0 == 7) && !CHECK_QUEST_ITEM(pauseCtx->cursorPoint[PAUSE_QUEST]) &&
                          CHECK_QUEST_ITEM(0x18))) &&
                        (msgCtx->msgLength == 0)) {
                        if (CHECK_QUEST_ITEM(pauseCtx->cursorPoint[PAUSE_QUEST])) {
                            temp_s0 = pauseCtx->cursorSlot[PAUSE_QUEST];
                        } else {
                            temp_s0 = 0x14;
                        }

                        pauseCtx->ocarinaSongIndex = gOcarinaSongItemMap[temp_s0 - QUEST_SONG_SONATA];
                        D_8082B028 = 10;

                        for (var_v0 = 0; var_v0 < 8; var_v0++) {
                            D_8082AEE4[var_v0] = OCARINA_BTN_INVALID;
                            D_8082AEF0[var_v0] = 0;
                        }

                        D_8082AEE0 = 0;
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_DEFAULT);
                        AudioOcarina_StartDefault((1 << pauseCtx->ocarinaSongIndex) | 0x80000000);
                        pauseCtx->ocarinaStaff = AudioOcarina_GetPlaybackStaff();
                        pauseCtx->ocarinaStaff->pos = 0;
                        pauseCtx->ocarinaStaff->state = 0xFF;
                        pauseCtx->unk_2BE[0] = -62;
                        pauseCtx->unk_2BE[1] = -56;
                        pauseCtx->unk_2BE[2] = -49;
                        pauseCtx->unk_2BE[3] = -46;
                        pauseCtx->unk_2BE[4] = -41;
                        pauseCtx->actionState = PAUSE_ACTIONSTATE_8;

                        if (interfaceCtx->unk_212 != 6) {
                            func_8011552C(play, 6);
                        }

                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);

                        if (gSaveContext.buttonStatus[EQUIP_SLOT_A] == BTN_DISABLED) {
                            gSaveContext.buttonStatus[EQUIP_SLOT_A] = BTN_ENABLED;
                            gSaveContext.unk_3F22 = 0;
                            Interface_ChangeAlpha(50);
                        }
                    } else {
                        if (interfaceCtx->unk_212 != 6) {
                            func_8011552C(play, 6);
                        }
                        if (gSaveContext.buttonStatus[EQUIP_SLOT_A] != BTN_DISABLED) {
                            gSaveContext.buttonStatus[EQUIP_SLOT_A] = BTN_DISABLED;
                            gSaveContext.unk_3F22 = 0;
                            Interface_ChangeAlpha(50);
                        }
                    }
                } else {
                    if ((temp_s0 == 0x12) && (pauseCtx->cursorItem[PAUSE_QUEST] != PAUSE_ITEM_NONE)) {
                        if (interfaceCtx->unk_212 != 6) {
                            func_8011552C(play, 6);
                        }
                        pauseCtx->cursorColorSet = 4;
                    } else if (interfaceCtx->unk_212 == 6) {
                        func_8011552C(play, 0x15);
                    }

                    if ((pauseCtx->cursorItem[PAUSE_QUEST] != PAUSE_ITEM_NONE) && (msgCtx->msgLength == 0)) {
                        if (gSaveContext.buttonStatus[EQUIP_SLOT_A] == BTN_DISABLED) {
                            gSaveContext.buttonStatus[EQUIP_SLOT_A] = 0;
                            gSaveContext.unk_3F22 = 0;
                            Interface_ChangeAlpha(50);
                        }
                        if (CHECK_BTN_ALL(CONTROLLER1(&play->state)->press.button, BTN_A) && (msgCtx->msgLength == 0)) {
                            if (pauseCtx->cursorPoint[PAUSE_QUEST] == 0x12) {
                                play->pauseCtx.unk_1F0 = true;
                                pauseCtx->actionState = PAUSE_ACTIONSTATE_10;
                                play_sound(NA_SE_SY_DECIDE);
                            } else {
                                pauseCtx->itemDescriptionOn = true;
                                if (pauseCtx->cursorYIndex[PAUSE_QUEST] < 2) {
                                    if (pauseCtx->cursorItem[PAUSE_QUEST] < ITEM_REMAINS_ODOLWA) {
                                        func_801514B0(play, pauseCtx->cursorItem[PAUSE_QUEST] + 0x1737, 1);
                                    } else {
                                        func_801514B0(play, pauseCtx->cursorItem[PAUSE_QUEST] + 0x173B, 3);
                                    }
                                } else {
                                    if (pauseCtx->cursorItem[PAUSE_QUEST] < ITEM_REMAINS_ODOLWA) {
                                        func_801514B0(play, pauseCtx->cursorItem[PAUSE_QUEST] + 0x1737, 1);
                                    } else {
                                        func_801514B0(play, pauseCtx->cursorItem[PAUSE_QUEST] + 0x173B, 1);
                                    }
                                }
                            }
                        }
                    } else if (gSaveContext.buttonStatus[EQUIP_SLOT_A] != BTN_DISABLED) {
                        gSaveContext.buttonStatus[EQUIP_SLOT_A] = BTN_DISABLED;
                        gSaveContext.unk_3F22 = 0;
                        Interface_ChangeAlpha(50);
                    }
                }
            } else if (pauseCtx->actionState == PAUSE_ACTIONSTATE_5) {
                // Abort having the player play the song if the stick is moved
                if ((pauseCtx->stickRelX != 0) || (pauseCtx->stickRelY != 0)) {
                    pauseCtx->actionState = PAUSE_ACTIONSTATE_IDLE;
                    AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                }
            } else if ((pauseCtx->actionState == PAUSE_ACTIONSTATE_8) &&
                       CHECK_BTN_ALL(CONTROLLER1(&play->state)->press.button, BTN_A) && (msgCtx->msgLength == 0) &&
                       (temp_s0 >= 6) && (temp_s0 < 0x12)) {
                pauseCtx->actionState = 9;
                D_8082B028 = 10;
            }

            if (pauseCtx->cursorSpecialPos == 0) {
                if ((pauseCtx->cursorSlot[PAUSE_QUEST] >= 6) && (pauseCtx->cursorSlot[PAUSE_QUEST] < 0x12) &&
                    ((pauseCtx->actionState <= PAUSE_ACTIONSTATE_2) || (pauseCtx->actionState == PAUSE_ACTIONSTATE_5) ||
                     (pauseCtx->actionState == PAUSE_ACTIONSTATE_8)) &&
                    (pauseCtx->cursorItem[pauseCtx->pageIndex] != PAUSE_ITEM_NONE)) {
                    pauseCtx->cursorColorSet = 4;
                    if ((pauseCtx->actionState >= PAUSE_ACTIONSTATE_2) &&
                        (pauseCtx->actionState <= PAUSE_ACTIONSTATE_6)) {
                        pauseCtx->cursorColorSet = 0;
                    }
                }
            }
        } else if (pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_LEFT) {
            if (pauseCtx->stickRelX > 30) {
                if (pauseCtx->actionState == PAUSE_ACTIONSTATE_5) {
                    AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                }

                func_80821A04(play);

                pauseCtx->cursorPoint[PAUSE_QUEST] = QUEST_BOMBERS_NOTEBOOK;
                if (CHECK_QUEST_ITEM(QUEST_BOMBERS_NOTEBOOK)) {
                    cursorItem = ITEM_BOMBERS_NOTEBOOK;
                } else {
                    cursorItem = PAUSE_ITEM_NONE;
                }

                temp_s0 = pauseCtx->cursorPoint[PAUSE_QUEST];
                pauseCtx->cursorItem[pauseCtx->pageIndex] = cursorItem;
                pauseCtx->cursorSlot[pauseCtx->pageIndex] = temp_s0;
            }
        } else if (pauseCtx->stickRelX < -30) {
            if (pauseCtx->actionState == PAUSE_ACTIONSTATE_5) {
                AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
            }

            func_80821A04(play);

            pauseCtx->cursorPoint[PAUSE_QUEST] = 1;
            if (CHECK_QUEST_ITEM(pauseCtx->cursorPoint[PAUSE_QUEST])) {
                cursorItem = pauseCtx->cursorPoint[PAUSE_QUEST] + 0x5D;
                if (pauseCtx->cursorPoint[PAUSE_QUEST] != 0) {
                    cursorItem = ITEM_MASK_GIANT;
                }
            } else {
                cursorItem = PAUSE_ITEM_NONE;
            }

            temp_s0 = pauseCtx->cursorPoint[PAUSE_QUEST];
            pauseCtx->cursorItem[pauseCtx->pageIndex] = cursorItem;
            pauseCtx->cursorSlot[pauseCtx->pageIndex] = temp_s0;
        }
    } else if (pauseCtx->actionState == PAUSE_ACTIONSTATE_9) {
        pauseCtx->cursorColorSet = 4;
        D_8082B028--;
        if (D_8082B028 == 0) {
            for (var_v0 = 0; var_v0 < 8; var_v0++) {
                D_8082AEE4[var_v0] = OCARINA_BTN_INVALID;
                D_8082AEF0[var_v0] = 0;
            }
            D_8082AEE0 = 0;

            pauseCtx->unk_2BE[0] = -62;
            pauseCtx->unk_2BE[1] = -56;
            pauseCtx->unk_2BE[2] = -49;
            pauseCtx->unk_2BE[3] = -46;
            pauseCtx->unk_2BE[4] = -41;

            if (CHECK_QUEST_ITEM(pauseCtx->cursorPoint[PAUSE_QUEST])) {
                temp_s0 = pauseCtx->cursorSlot[PAUSE_QUEST];
            } else {
                temp_s0 = 0x14;
            }

            AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_DEFAULT);
            AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_DEFAULT);
            pauseCtx->ocarinaSongIndex = gOcarinaSongItemMap[temp_s0 - QUEST_SONG_SONATA];
            AudioOcarina_SetPlaybackSong(pauseCtx->ocarinaSongIndex + 1, 1);
            pauseCtx->actionState = PAUSE_ACTIONSTATE_2;
            pauseCtx->ocarinaStaff = AudioOcarina_GetPlaybackStaff();
            pauseCtx->ocarinaStaff->pos = 0;
        }
    }
}

s32 KaleidoScope_UpdateQuestStatusPoint(PauseContext* pauseCtx, s16 point) {
    pauseCtx->cursorPoint[PAUSE_QUEST] = point;

    return 1;
}
