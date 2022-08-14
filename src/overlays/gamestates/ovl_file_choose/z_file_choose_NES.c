/*
 * File: z_file_choose_NES.c
 * Overlay: ovl_file_choose
 * Description:
 */

#include "z_file_choose.h"
#include "overlays/gamestates/ovl_opening/z_opening.h"
#include "z64rumble.h"
#include "z64save.h"

void func_801A3238(u8 playerIdx, u16 seqId, u8 fadeTimer, s8 arg3, s8 arg4);
void func_801A4058(u16);
void func_801457CC(FileSelectState* fileSelect, SramContext* sramCtx);

extern Gfx D_010311F0[];
extern Gfx D_01031408[];
extern Gfx D_01031618[];

extern void* D_01002800[];
extern void* D_01007980[];
extern void* D_0102A6B0[];
extern void* D_0102B170[];
extern void* D_010310F0[];

// there are uses of D_0E000000.fillRect (appearing as D_0E0002E0) in this file
extern GfxMasterList D_0E000000;

s16 D_80814280[] = {
    2, 3, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 0, 1, 1, 2, 1, 1, 4, 2, 2, 2, 1, 1, 0, 2, 0, 1, 1, 1, 1, 1, 0,
    1, 1, 1, 2, 2, 2, 2, 2, 3, 2, 2, 4, 3, 2, 4, 1, 2, 2, 1, 1, 2, 2, 3, 2, 2, 0, 2, 2, 2, 0, 3, 1, 0,
};

s16 D_80814304[] = {
    1, 2, 0, 1, 1, 2, 1, 1, 4, 2, 2, 2, 1, 1, 0, 2, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 2, 2, 2, 2, 2, 3,
    2, 2, 4, 3, 2, 4, 1, 2, 2, 1, 1, 2, 2, 3, 2, 2, 0, 2, 2, 2, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 3,
};

s16 D_80814384[] = {
    0, 1, 0, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 2, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
};

s16 D_80814404[] = {
    -94, -96, -48, 0, 32, 64,
};

s16 D_80814410[] = {
    56, 44, 44, 28, 28, 44,
};

s16 D_8081441C[] = {
    72, -48, -48, -48, -48, -48,
};

s16 D_80814428[] = { 0x0102, 0x1D30, 0x0102, 0x17B0 };

s16 D_80814430[] = { 28, 44 };

s16 D_80814434[] = {
    -30, -16, -6, 4, 14, 24, 34, 44, 54, -16, -16, 0,
};

s16 D_8081444C[] = {
    72, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 0,
};

s32 D_80814464[] = {
    0x01007180, 0x00800010, 0x01008600, 0x00400010, 0x01008D00,
    0x00400010, 0x01009700, 0x00600010, 0x01009D00, 0x00300011,
};

s32 D_8081448C[] = {
    0x01008A00, 0x00300010, 0x01008300, 0x00300010, 0x01008000, 0x00300010,
    0x01007D00, 0x00300010, 0x01009100, 0x00300010, 0x01009400, 0x00300010,
};

s16 D_808144BC = 0xFF;
s16 D_808144C0 = 0xFF;
s16 D_808144C4 = 0xFF;
s16 D_808144C8 = 0;
s16 D_808144CC = 0;
s16 D_808144D0 = 0;
s16 D_808144D4 = 1;
s16 D_808144D8 = 20;
s16 D_808144DC[] = { 0xFF, 0xFF, 0xFF, 0, 0xFF, 0xFF };

s32 D_808144E8[] = {
    0x00000000, 0x00000000, 0x00960096, 0x00000000, 0x00000000,
    0x00000000, 0x00000064, 0x41000000, 0x42C80000, 0x00000000,
};

Gfx sScreenFillSetupDL[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_ZBUFFER | G_SHADE | G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN |
                          G_TEXTURE_GEN_LINEAR | G_LOD | G_SHADING_SMOOTH),
    gsDPSetOtherMode(G_AD_DISABLE | G_CD_MAGICSQ | G_CK_NONE | G_TC_FILT | G_TF_BILERP | G_TT_NONE | G_TL_TILE |
                         G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_1PRIMITIVE,
                     G_AC_NONE | G_ZS_PIXEL | G_RM_CLD_SURF | G_RM_CLD_SURF2),
    gsDPSetCombineMode(G_CC_PRIMITIVE, G_CC_PRIMITIVE),
    gsSPEndDisplayList(),
};

s16 sFileInfoBoxPartWidths[] = {
    36, 36, 36, 36, 24, 28, 28, 0,
};

s16 sWindowContentColors[] = { 100, 150, 255 };

s16 sFileSelectSkyboxRotation = 0;

s16 D_80814554[] = { 1, 0, 0, 0 };

#define GET_NEWF(sramCtx, slotNum, index) \
    (sramCtx->readBuff[gSramSlotOffsets[slotNum] + offsetof(SaveContext, save.playerData.newf[index])])
#define SLOT_OCCUPIED(sramCtx, slotNum)                                                  \
    ((GET_NEWF(sramCtx, slotNum, 0) == 'Z') || (GET_NEWF(sramCtx, slotNum, 1) == 'E') || \
     (GET_NEWF(sramCtx, slotNum, 2) == 'L') || (GET_NEWF(sramCtx, slotNum, 3) == 'D') || \
     (GET_NEWF(sramCtx, slotNum, 4) == 'A') || (GET_NEWF(sramCtx, slotNum, 5) == '3'))

#define GET_FILE_CHOOSE_NEWF(fileSelect, slotNum, index) (fileSelect->newf[slotNum][index])
#define FILE_CHOOSE_SLOT_OCCUPIED(fileSelect, slotNum)                                                                 \
    ((GET_FILE_CHOOSE_NEWF(fileSelect, slotNum, 0) == 'Z') && (GET_FILE_CHOOSE_NEWF(fileSelect, slotNum, 1) == 'E') && \
     (GET_FILE_CHOOSE_NEWF(fileSelect, slotNum, 2) == 'L') && (GET_FILE_CHOOSE_NEWF(fileSelect, slotNum, 3) == 'D') && \
     (GET_FILE_CHOOSE_NEWF(fileSelect, slotNum, 4) == 'A') && (GET_FILE_CHOOSE_NEWF(fileSelect, slotNum, 5) == '3'))

void func_8080BC20(FileSelectState* this) {
    this->configMode++;
}

void FileSelect_nop8080bc44(void) {
}

void FileSelect_nop8080BC4C(FileSelectState* this) {
}

void func_8080BC58(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    if (this->configMode == 0) {
        if (gSaveContext.options.optionId != 0xA51D) { // Magic number?
            this->configMode++;
        } else {
            // TODO: defines for these
            this->menuMode = 1;
            this->configMode = 0;
            this->titleLabel = 0;
            this->nextTitleLabel = 1;
        }
    }
    if (this->configMode == 1) {
        this->screenFillAlpha -= 40;
        if (this->screenFillAlpha <= 0) {
            this->screenFillAlpha = 0;
            this->configMode++;
        }
    } else {
        if (this->configMode == 2) {
            func_8080BC20(this);
            return;
        }
        this->screenFillAlpha += 40;
        if (this->screenFillAlpha >= 255) {
            this->screenFillAlpha = 255;
            this->menuMode = 1;
            this->configMode = 0;
            this->titleLabel = 0;
            this->nextTitleLabel = 1;
        }
    }
}

void func_8080BDAC(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    func_8012C628(this->state.gfxCtx);
    FileSelect_nop8080BC4C(this);
}

void FileSelect_RenderView(FileSelectState* this, f32 eyeX, f32 eyeY, f32 eyeZ) {
    Vec3f eye;
    Vec3f lookAt;
    Vec3f up;

    eye.x = eyeX;
    eye.y = eyeY;
    eye.z = eyeZ;

    lookAt.x = lookAt.y = lookAt.z = 0.0f;

    up.x = up.z = 0.0f;
    up.y = 1.0f;

    View_SetViewOrientation(&this->view, &eye, &lookAt, &up);
    View_RenderView(&this->view, 0x7F);
}

Gfx* FileSelect_QuadTextureIA8(Gfx* gfx, void* texture, s16 width, s16 height, s16 point) {
    gDPLoadTextureBlock(gfx++, texture, G_IM_FMT_IA, G_IM_SIZ_8b, width, height, 0, G_TX_NOMIRROR | G_TX_WRAP,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    gSP1Quadrangle(gfx++, point, point + 2, point + 3, point + 1, 0);

    return gfx;
}

void FileSelect_FadeInMenuElements(FileSelectState* this) {
    SramContext* sramCtx = &this->sramCtx;
    s16 i;

    this->titleAlpha[0] += 20;
    this->windowAlpha += 16;

    for (i = 0; i < 3; i++) {
        this->fileButtonAlpha[i] = this->windowAlpha;
        if (gSaveContext.unk_3F3F == 0) {
            if (SLOT_OCCUPIED(sramCtx, i)) {
                this->nameBoxAlpha[i] = this->nameAlpha[i] = this->windowAlpha;
                this->connectorAlpha[i] += 20;
                if (this->connectorAlpha[i] >= 255) {
                    this->connectorAlpha[i] = 255;
                }
            }
        } else if (FILE_CHOOSE_SLOT_OCCUPIED(this, i)) {
            this->nameBoxAlpha[i] = this->nameAlpha[i] = this->windowAlpha;
            this->connectorAlpha[i] += 20;

            if (this->connectorAlpha[i] >= 255) {
                this->connectorAlpha[i] = 255;
            }
        }
    }

    this->actionButtonAlpha[0] = this->actionButtonAlpha[1] = this->optionButtonAlpha = this->windowAlpha;
}

// SplitDigits? ExtractDigits?
void FileSelect_SplitNumber(u16 value, u16* hundreds, u16* tens, u16* ones) {
    *hundreds = 0;
    *tens = 0;
    *ones = value;

    do {
        if ((*ones - 100) < 0) {
            break;
        }
        (*hundreds)++;
        *ones -= 100;
    } while (true);

    do {
        if ((*ones - 10) < 0) {
            break;
        }
        (*tens)++;
        *ones -= 10;
    } while (true);
}

// Start of Config Mode Update Functions

void FileSelect_StartFadeIn(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    FileSelect_FadeInMenuElements(this);
    this->screenFillAlpha -= 40;
    this->windowPosX -= 20;

    if (this->windowPosX <= -94) {
        this->windowPosX = -94;
        this->configMode = 1;
        this->screenFillAlpha = 0;
    }
}

void FileSelect_FinishFadeIn(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    this->controlsAlpha += 20;
    FileSelect_FadeInMenuElements(this);

    if (this->titleAlpha[0] >= 255) {
        this->titleAlpha[0] = 255;
        this->controlsAlpha = 255;
        this->windowAlpha = 200;
        this->configMode = 2;
    }
}

u8 sEmptyName[] = { 0x3E, 0x3E, 0x3E, 0x3E, 0x3E, 0x3E, 0x3E, 0x3E };

void FileSelect_UpdateMainMenu(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    SramContext* sramCtx = &this->sramCtx;
    Input* input = &this->state.input[0];

    if (CHECK_BTN_ALL(input->press.button, BTN_START) || CHECK_BTN_ALL(input->press.button, BTN_A)) {
        if (this->buttonIndex < 3) {
            if (gSaveContext.unk_3F3F == 0) {
                if (!SLOT_OCCUPIED(sramCtx, this->buttonIndex)) {
                    play_sound(NA_SE_SY_FSEL_DECIDE_L);
                    this->configMode = 34;
                    this->kbdButton = 99;
                    this->unk_24512 = 0;
                    if (gSaveContext.options.language != 0) {
                        this->unk_24512 = 2;
                    }
                    this->kbdX = 0;
                    this->kbdY = 0;
                    this->unk_24516 = 0;
                    this->unk_24514 = 0;
                    this->unk_2451C = 0;
                    this->nameEntryBoxPosX = 120;
                    this->nameEntryBoxAlpha = 0;
                    Lib_MemCpy(&this->unk_24414[this->buttonIndex], &sEmptyName, 8);
                } else {
                    play_sound(NA_SE_SY_FSEL_DECIDE_L);
                    this->actionTimer = 4;
                    this->selectMode = 0;
                    this->unk_2448E = this->buttonIndex;
                    this->menuMode = 2;
                    this->nextTitleLabel = 1;
                }
            } else if (!FILE_CHOOSE_SLOT_OCCUPIED(this, this->buttonIndex)) {
                play_sound(NA_SE_SY_FSEL_DECIDE_L);
                this->configMode = 34;
                this->kbdButton = 99;
                this->unk_24512 = 0;
                if (gSaveContext.options.language != 0) {
                    this->unk_24512 = 2;
                }
                this->kbdX = 0;
                this->kbdY = 0;
                this->unk_24516 = 0;
                this->unk_24514 = 0;
                this->unk_2451C = 0;
                this->nameEntryBoxPosX = 120;
                this->nameEntryBoxAlpha = 0;
                Lib_MemCpy(&this->unk_24414[this->buttonIndex], &sEmptyName, 8);
            } else {
                play_sound(NA_SE_SY_FSEL_DECIDE_L);
                this->actionTimer = 4;
                this->selectMode = 0;
                this->unk_2448E = this->buttonIndex;
                this->menuMode = 2;
                this->nextTitleLabel = 1;
            }
        } else if (this->warningLabel == -1) {
            play_sound(NA_SE_SY_FSEL_DECIDE_L);
            this->unk_24488 = this->configMode;
            if (this->buttonIndex == 3) {
                this->configMode = 3;
                this->nextTitleLabel = 2;
            } else if (this->buttonIndex == 4) {
                this->configMode = 21;
                this->nextTitleLabel = 6;
            } else {
                this->configMode = 39;
                this->kbdButton = 0;
                this->kbdX = 0;
                this->kbdY = 0;
                this->unk_24514 = 0;
                this->unk_2451C = 0;
                this->nameEntryBoxPosX = 120;
            }
            this->actionTimer = 4;
        } else {
            play_sound(NA_SE_SY_FSEL_ERROR);
        }
    } else if (CHECK_BTN_ALL(input->press.button, BTN_B)) {
        gSaveContext.gameMode = 1;
        STOP_GAMESTATE(&this->state);
        SET_NEXT_GAMESTATE_TEST(&this->state, Opening_Init, OpeningContext);
    } else {
        if (ABS_ALT(this->stickRelY) > 30) {
            play_sound(NA_SE_SY_FSEL_CURSOR);
            if (this->stickRelY > 30) {
                this->buttonIndex--;
                if (this->buttonIndex == 2) {
                    this->buttonIndex = 1;
                }
                if (this->buttonIndex < 0) {
                    this->buttonIndex = 5;
                }
            } else {
                this->buttonIndex++;
                if (this->buttonIndex == 2) {
                    this->buttonIndex = 3;
                }
                if (this->buttonIndex >= 6) {
                    this->buttonIndex = 0;
                }
            }
        }
        if (this->buttonIndex == 3) {
            if (gSaveContext.unk_3F3F == 0) {
                if (!SLOT_OCCUPIED(sramCtx, 0) && !SLOT_OCCUPIED(sramCtx, 1) && !SLOT_OCCUPIED(sramCtx, 2)) {
                    this->warningButtonIndex = this->buttonIndex;
                    this->warningLabel = 0;
                    this->emptyFileTextAlpha = 255;
                } else if (SLOT_OCCUPIED(sramCtx, 0) && SLOT_OCCUPIED(sramCtx, 1) && SLOT_OCCUPIED(sramCtx, 2)) {
                    this->warningButtonIndex = this->buttonIndex;
                    this->warningLabel = 2;
                    this->emptyFileTextAlpha = 255;
                } else {
                    this->warningLabel = -1;
                }
            } else {
                if (!FILE_CHOOSE_SLOT_OCCUPIED(this, 0) && !FILE_CHOOSE_SLOT_OCCUPIED(this, 1) &&
                    !FILE_CHOOSE_SLOT_OCCUPIED(this, 2)) {
                    this->warningButtonIndex = this->buttonIndex;
                    this->warningLabel = 0;
                    this->emptyFileTextAlpha = 255;
                } else if (FILE_CHOOSE_SLOT_OCCUPIED(this, 0) && FILE_CHOOSE_SLOT_OCCUPIED(this, 1) &&
                           FILE_CHOOSE_SLOT_OCCUPIED(this, 2)) {
                    this->warningButtonIndex = this->buttonIndex;
                    this->warningLabel = 2;
                    this->emptyFileTextAlpha = 255;
                } else {
                    this->warningLabel = -1;
                }
            }
        } else if (this->buttonIndex == 4) {
            if (gSaveContext.unk_3F3F == 0) {
                if (!SLOT_OCCUPIED(sramCtx, 0) && !SLOT_OCCUPIED(sramCtx, 1) && !SLOT_OCCUPIED(sramCtx, 2)) {
                    this->warningButtonIndex = this->buttonIndex;
                    this->warningLabel = 1;
                    this->emptyFileTextAlpha = 255;
                } else {
                    this->warningLabel = -1;
                }
            } else {
                if (!FILE_CHOOSE_SLOT_OCCUPIED(this, 0) && !FILE_CHOOSE_SLOT_OCCUPIED(this, 1) &&
                    !FILE_CHOOSE_SLOT_OCCUPIED(this, 2)) {
                    this->warningButtonIndex = this->buttonIndex;
                    this->warningLabel = 1;
                    this->emptyFileTextAlpha = 255;
                } else {
                    this->warningLabel = -1;
                }
            }
        } else {
            this->warningLabel = -1;
        }
    }
}

void func_8080D164(GameState* thisx) {
}

void func_8080D170(GameState* thisx) {
    static s16 D_80814564 = 0;
    FileSelectState* this = (FileSelectState*)thisx;

    D_80814564 += 2;
    if (D_80814564 == 0xFE) {
        this->configMode = this->nextConfigMode;
        D_80814564 = 0;
    }
}

void FileSelect_RotateToNameEntry(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    this->windowRot += 50.0f;

    if (this->windowRot >= 314.0f) {
        this->windowRot = 314.0f;
        this->configMode = 35;
    }
}

void FileSelect_RotateToOptions(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    this->windowRot += 50.0f;

    if (this->windowRot >= 314.0f) {
        this->windowRot = 314.0f;
        this->configMode = 40;
    }
}

void FileSelect_RotateToMain(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    this->windowRot += 50.0f;

    if (this->windowRot >= 628.0f) {
        this->windowRot = 0.0f;
        this->configMode = 2;
    }
}

// End of Config Mode Update Functions

// Nameset
void func_80804010(GameState* thisx);
void func_808041A0(GameState* thisx);
void func_80804654(GameState* thisx);
void func_808047D8(GameState* thisx);
void func_8080489C(GameState* thisx);
void func_80804DAC(GameState* thisx);
void func_80804E74(GameState* thisx);
void func_80804F98(GameState* thisx);
void func_8080525C(GameState* thisx);
void func_808052B0(GameState* thisx);
void func_808054A4(GameState* thisx);
void func_808055D0(GameState* thisx);
void func_808058A4(GameState* thisx);
void func_80805918(GameState* thisx);
void func_80805A58(GameState* thisx);
void func_80805B30(GameState* thisx);
void func_80805C1C(GameState* thisx);
void func_80806014(GameState* thisx);
void func_80806148(GameState* thisx);
void func_80806310(GameState* thisx);
void func_808067E0(GameState* thisx);
void func_80806BC8(GameState* thisx);
void func_80806CA0(GameState* thisx);
void func_80806E84(GameState* thisx);
void func_80806F30(GameState* thisx);
void func_808071E4(GameState* thisx);
void func_80807390(GameState* thisx);
void func_8080742C(GameState* thisx);
void func_808074B4(GameState* thisx);
void func_808077AC(GameState* thisx);

// Copy/erase?
void FileSelect_StartNameEntry(GameState* thisx);
void func_80809EA0(GameState* thisx);
void func_8080A3CC(GameState* thisx);
void FileSelect_StartOptions(GameState* thisx);
void func_8080A4A0(GameState* thisx);
void func_8080A6BC(GameState* thisx);

void (*gConfigModeUpdateFuncs[])(GameState*) = {
    FileSelect_StartFadeIn,
    FileSelect_FinishFadeIn,
    FileSelect_UpdateMainMenu,
    func_80804010,
    func_808041A0,
    func_80804654,
    func_808047D8,
    func_8080489C,
    func_80804DAC,
    func_80804E74,
    func_80804F98,
    func_8080525C,
    func_808052B0,
    func_808054A4,
    func_808055D0,
    func_808058A4,
    func_80805918,
    func_80805A58,
    func_80805B30,
    func_80805C1C,
    func_80806014,
    func_80806148,
    func_80806310,
    func_808067E0,
    func_80806BC8,
    func_80806CA0,
    func_80806E84,
    func_80806F30,
    func_808071E4,
    func_80807390,
    func_8080742C,
    func_808074B4,
    func_808077AC,
    func_8080D164,
    FileSelect_RotateToNameEntry,
    FileSelect_StartNameEntry,
    func_80809EA0,
    func_8080A3CC,
    FileSelect_RotateToMain,
    FileSelect_RotateToOptions,
    FileSelect_StartOptions,
    func_8080A4A0,
    func_8080A6BC,
    FileSelect_RotateToMain,
    func_8080D170,
};

s16 sCursorAlphaTargets[] = { 70, 200 };
/**
 * Updates the alpha of the cursor to make it pulsate.
 */
void FileSelect_PulsateCursor(FileSelectState* this) {
    s32 step = ABS_ALT(this->highlightColor[3] - sCursorAlphaTargets[this->highlightPulseDir]) / this->highlightTimer;

    if (this->highlightColor[3] >= sCursorAlphaTargets[this->highlightPulseDir]) {
        this->highlightColor[3] -= step;
    } else {
        this->highlightColor[3] += step;
    }

    this->highlightTimer--;

    if (this->highlightTimer == 0) {
        this->highlightColor[3] = sCursorAlphaTargets[this->highlightPulseDir];
        this->highlightTimer = 20;
        this->highlightPulseDir ^= 1;
    }
}

void FileSelect_ConfigModeUpdate(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    gConfigModeUpdateFuncs[this->configMode](&this->state);
}

void FileSelect_SetWindowVtx(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    s16 i;
    s16 j;
    s16 x;
    s32 tmp;
    s32 tmp2;
    s32 tmp3;

    this->windowVtx = GRAPH_ALLOC(this->state.gfxCtx, sizeof(Vtx) * 80);
    tmp = this->windowPosX - 90;

    for (x = 0, i = 0; i < 4; i++) {
        tmp += 0x40;
        tmp2 = (i == 3) ? 0x30 : 0x40;

        for (j = 0, tmp3 = 0x50; j < 5; j++, x += 4, tmp3 -= 0x20) {
            this->windowVtx[x].v.ob[0] = this->windowVtx[x + 2].v.ob[0] = tmp;

            this->windowVtx[x + 1].v.ob[0] = this->windowVtx[x + 3].v.ob[0] = tmp2 + tmp;

            this->windowVtx[x].v.ob[1] = this->windowVtx[x + 1].v.ob[1] = tmp3;

            this->windowVtx[x + 2].v.ob[1] = this->windowVtx[x + 3].v.ob[1] = tmp3 - 0x20;

            this->windowVtx[x].v.ob[2] = this->windowVtx[x + 1].v.ob[2] = this->windowVtx[x + 2].v.ob[2] =
                this->windowVtx[x + 3].v.ob[2] = 0;

            this->windowVtx[x].v.flag = this->windowVtx[x + 1].v.flag = this->windowVtx[x + 2].v.flag =
                this->windowVtx[x + 3].v.flag = 0;

            this->windowVtx[x].v.tc[0] = this->windowVtx[x].v.tc[1] = this->windowVtx[x + 1].v.tc[1] =
                this->windowVtx[x + 2].v.tc[0] = 0;

            this->windowVtx[x + 1].v.tc[0] = this->windowVtx[x + 3].v.tc[0] = tmp2 * 0x20;

            this->windowVtx[x + 2].v.tc[1] = this->windowVtx[x + 3].v.tc[1] = 0x400;

            this->windowVtx[x].v.cn[0] = this->windowVtx[x + 2].v.cn[0] = this->windowVtx[x].v.cn[1] =
                this->windowVtx[x + 2].v.cn[1] = this->windowVtx[x].v.cn[2] = this->windowVtx[x + 2].v.cn[2] =
                    this->windowVtx[x + 1].v.cn[0] = this->windowVtx[x + 3].v.cn[0] = this->windowVtx[x + 1].v.cn[1] =
                        this->windowVtx[x + 3].v.cn[1] = this->windowVtx[x + 1].v.cn[2] =
                            this->windowVtx[x + 3].v.cn[2] = this->windowVtx[x].v.cn[3] =
                                this->windowVtx[x + 2].v.cn[3] = this->windowVtx[x + 1].v.cn[3] =
                                    this->windowVtx[x + 3].v.cn[3] = 255;
        }
    }
}

s16 D_80814620[] = { 8, 8, 8, 0 };
s16 D_80814628[] = { 12, 12, 12, 0 };
s16 D_80814630[] = { 12, 12, 12, 0 };
s16 D_80814638[] = {
    88, 104, 120, 940, 944, 948,
};
s16 D_80814644[] = { 88, 104, 120, 944 };
s16 D_8081464C[] = { 940, 944 };
s16 D_80814650[] = { 940, 944 };
// void FileSelect_SetWindowContentVtx(FileSelectState* this);
void FileSelect_SetWindowContentVtx(GameState* thisx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_file_choose/FileSelect_SetWindowContentVtx.s")
// void FileSelect_SetWindowContentVtx(FileSelectState *this) {
//     s16 spAC;
//     u16 spA8;
//     u16 spA6;
//     u16 spA4;
//     s32 sp9C;
//     s32 sp98;
//     void *sp50;
//     Gfx *temp_v0;
//     GraphicsContext *temp_v1;
//     Vtx *temp_a0;
//     Vtx *temp_a0_10;
//     Vtx *temp_a0_11;
//     Vtx *temp_a0_12;
//     Vtx *temp_a0_13;
//     Vtx *temp_a0_14;
//     Vtx *temp_a0_15;
//     Vtx *temp_a0_16;
//     Vtx *temp_a0_17;
//     Vtx *temp_a0_18;
//     Vtx *temp_a0_19;
//     Vtx *temp_a0_20;
//     Vtx *temp_a0_21;
//     Vtx *temp_a0_22;
//     Vtx *temp_a0_23;
//     Vtx *temp_a0_24;
//     Vtx *temp_a0_25;
//     Vtx *temp_a0_26;
//     Vtx *temp_a0_27;
//     Vtx *temp_a0_28;
//     Vtx *temp_a0_29;
//     Vtx *temp_a0_2;
//     Vtx *temp_a0_30;
//     Vtx *temp_a0_31;
//     Vtx *temp_a0_32;
//     Vtx *temp_a0_33;
//     Vtx *temp_a0_34;
//     Vtx *temp_a0_35;
//     Vtx *temp_a0_36;
//     Vtx *temp_a0_37;
//     Vtx *temp_a0_38;
//     Vtx *temp_a0_39;
//     Vtx *temp_a0_3;
//     Vtx *temp_a0_40;
//     Vtx *temp_a0_41;
//     Vtx *temp_a0_42;
//     Vtx *temp_a0_43;
//     Vtx *temp_a0_44;
//     Vtx *temp_a0_45;
//     Vtx *temp_a0_46;
//     Vtx *temp_a0_47;
//     Vtx *temp_a0_48;
//     Vtx *temp_a0_49;
//     Vtx *temp_a0_4;
//     Vtx *temp_a0_50;
//     Vtx *temp_a0_51;
//     Vtx *temp_a0_52;
//     Vtx *temp_a0_53;
//     Vtx *temp_a0_54;
//     Vtx *temp_a0_55;
//     Vtx *temp_a0_56;
//     Vtx *temp_a0_57;
//     Vtx *temp_a0_58;
//     Vtx *temp_a0_59;
//     Vtx *temp_a0_5;
//     Vtx *temp_a0_60;
//     Vtx *temp_a0_61;
//     Vtx *temp_a0_62;
//     Vtx *temp_a0_63;
//     Vtx *temp_a0_64;
//     Vtx *temp_a0_65;
//     Vtx *temp_a0_66;
//     Vtx *temp_a0_67;
//     Vtx *temp_a0_68;
//     Vtx *temp_a0_69;
//     Vtx *temp_a0_6;
//     Vtx *temp_a0_70;
//     Vtx *temp_a0_71;
//     Vtx *temp_a0_72;
//     Vtx *temp_a0_73;
//     Vtx *temp_a0_74;
//     Vtx *temp_a0_75;
//     Vtx *temp_a0_76;
//     Vtx *temp_a0_77;
//     Vtx *temp_a0_78;
//     Vtx *temp_a0_79;
//     Vtx *temp_a0_7;
//     Vtx *temp_a0_80;
//     Vtx *temp_a0_81;
//     Vtx *temp_a0_82;
//     Vtx *temp_a0_83;
//     Vtx *temp_a0_84;
//     Vtx *temp_a0_85;
//     Vtx *temp_a0_8;
//     Vtx *temp_a0_9;
//     Vtx *temp_a1_20;
//     Vtx *temp_a1_21;
//     Vtx *temp_a1_4;
//     Vtx *temp_a1_5;
//     Vtx *temp_a1_6;
//     Vtx *temp_a1_7;
//     Vtx *temp_v0_4;
//     Vtx *temp_v0_5;
//     Vtx *temp_v0_6;
//     Vtx *temp_v0_7;
//     s16 *temp_a1_10;
//     s16 *temp_a1_8;
//     s16 *temp_a2_3;
//     s16 *temp_a2_4;
//     s16 *temp_t0;
//     s16 *temp_t0_2;
//     s16 temp_a1;
//     s16 temp_a1_13;
//     s16 temp_a1_14;
//     s16 temp_a1_15;
//     s16 temp_a1_16;
//     s16 temp_a1_17;
//     s16 temp_a1_18;
//     s16 temp_a1_19;
//     s16 temp_a1_3;
//     s16 temp_a1_9;
//     s16 temp_a2;
//     s16 temp_a2_2;
//     s16 temp_a2_5;
//     s16 temp_a2_6;
//     s16 temp_a2_7;
//     s16 temp_a2_8;
//     s16 temp_a2_9;
//     s16 temp_a3;
//     s16 temp_a3_2;
//     s16 temp_a3_3;
//     s16 temp_a3_4;
//     s16 temp_a3_5;
//     s16 temp_a3_6;
//     s16 temp_a3_7;
//     s16 temp_a3_8;
//     s16 temp_a3_9;
//     s16 temp_s1;
//     s16 temp_s1_5;
//     s16 temp_s4;
//     s16 temp_s4_2;
//     s16 temp_s4_3;
//     s16 temp_s4_4;
//     s16 temp_t2;
//     s16 temp_t2_2;
//     s16 temp_t3;
//     s16 temp_t3_2;
//     s16 temp_t3_3;
//     s16 temp_t4;
//     s16 temp_v0_2;
//     s16 temp_v0_3;
//     s16 temp_v0_8;
//     s16 temp_v1_10;
//     s16 temp_v1_11;
//     s16 temp_v1_12;
//     s16 temp_v1_13;
//     s16 temp_v1_14;
//     s16 temp_v1_15;
//     s16 temp_v1_16;
//     s16 temp_v1_17;
//     s16 temp_v1_18;
//     s16 temp_v1_19;
//     s16 temp_v1_20;
//     s16 temp_v1_21;
//     s16 temp_v1_22;
//     s16 temp_v1_23;
//     s16 temp_v1_24;
//     s16 temp_v1_25;
//     s16 temp_v1_26;
//     s16 temp_v1_27;
//     s16 temp_v1_28;
//     s16 temp_v1_29;
//     s16 temp_v1_2;
//     s16 temp_v1_30;
//     s16 temp_v1_31;
//     s16 temp_v1_32;
//     s16 temp_v1_33;
//     s16 temp_v1_34;
//     s16 temp_v1_35;
//     s16 temp_v1_36;
//     s16 temp_v1_37;
//     s16 temp_v1_38;
//     s16 temp_v1_39;
//     s16 temp_v1_3;
//     s16 temp_v1_40;
//     s16 temp_v1_41;
//     s16 temp_v1_42;
//     s16 temp_v1_43;
//     s16 temp_v1_44;
//     s16 temp_v1_45;
//     s16 temp_v1_46;
//     s16 temp_v1_47;
//     s16 temp_v1_48;
//     s16 temp_v1_49;
//     s16 temp_v1_4;
//     s16 temp_v1_50;
//     s16 temp_v1_51;
//     s16 temp_v1_52;
//     s16 temp_v1_53;
//     s16 temp_v1_54;
//     s16 temp_v1_55;
//     s16 temp_v1_56;
//     s16 temp_v1_57;
//     s16 temp_v1_58;
//     s16 temp_v1_59;
//     s16 temp_v1_60;
//     s16 temp_v1_61;
//     s16 temp_v1_62;
//     s16 temp_v1_63;
//     s16 temp_v1_64;
//     s16 temp_v1_65;
//     s16 temp_v1_66;
//     s16 temp_v1_67;
//     s16 temp_v1_68;
//     s16 temp_v1_69;
//     s16 temp_v1_6;
//     s16 temp_v1_70;
//     s16 temp_v1_71;
//     s16 temp_v1_72;
//     s16 temp_v1_73;
//     s16 temp_v1_74;
//     s16 temp_v1_75;
//     s16 temp_v1_76;
//     s16 temp_v1_77;
//     s16 temp_v1_78;
//     s16 temp_v1_79;
//     s16 temp_v1_7;
//     s16 temp_v1_80;
//     s16 temp_v1_81;
//     s16 temp_v1_82;
//     s16 temp_v1_83;
//     s16 temp_v1_84;
//     s16 temp_v1_8;
//     s16 temp_v1_9;
//     s32 temp_a1_11;
//     s32 temp_a1_12;
//     s32 temp_s1_2;
//     s32 temp_s1_3;
//     s32 temp_s1_4;
//     s32 temp_s3;
//     s32 temp_s3_10;
//     s32 temp_s3_11;
//     s32 temp_s3_12;
//     s32 temp_s3_13;
//     s32 temp_s3_14;
//     s32 temp_s3_2;
//     s32 temp_s3_3;
//     s32 temp_s3_4;
//     s32 temp_s3_5;
//     s32 temp_s3_6;
//     s32 temp_s3_7;
//     s32 temp_s3_8;
//     s32 temp_s3_9;
//     s32 temp_t1;
//     u16 temp_a1_2;
//     u8 temp_v1_5;
//     s32 phi_t1;
//     s16 phi_s1;
//     s32 phi_s3;
//     s16 phi_s4;
//     s16 phi_a3;
//     s32 phi_s3_2;
//     s16 phi_s4_2;
//     s32 phi_t0;
//     s16 phi_s4_3;
//     s16 phi_a3_2;
//     s32 phi_s1_2;
//     s32 phi_s3_3;
//     u16 *i;
//     s32 phi_s1_3;
//     s32 phi_s3_4;
//     s16 phi_a3_3;
//     s16 phi_a3_4;
//     s32 phi_s1_4;
//     s32 phi_s3_5;
//     s16 phi_s1_5;
//     s32 phi_s3_6;
//     s16 phi_t0_2;
//     s16 phi_a3_5;
//     s16 phi_s1_6;
//     s32 phi_s3_7;
//     s16 phi_a3_6;
//     s32 phi_t0_3;
//     s16 phi_a3_7;
//     s32 phi_s3_8;
//     s16 phi_s1_7;
//     s32 phi_s3_9;
//     s16 phi_a3_8;
//     s32 phi_s3_10;
//     s16 phi_s4_4;
//     s32 phi_a1;
//     s16 phi_s4_5;
//     s32 phi_s3_11;
//     s16 phi_s1_8;
//     void *phi_s6;
//     s16 phi_t6;
//     s32 phi_t9;
//     s32 phi_s3_12;

//     // temp_v1 = this->state.gfxCtx;
//     // temp_v0 = temp_v1->polyOpa.d - 0x3C00;
//     // temp_v1->polyOpa.d = temp_v0;
//     // this->windowContentVtx = (Vtx *) temp_v0;

//     this->windowContentVtx = GRAPH_ALLOC(this->state.gfxCtx, 0x3C0 * sizeof(Vtx));

//     for (phi_t1 = 0; phi_t1 < 0x3C0; phi_t1 += 4) {
//         this->windowContentVtx[phi_t1].v.ob[0] = this->windowContentVtx[phi_t1 + 2].v.ob[0] = 0x12C;
//         this->windowContentVtx[phi_t1 + 1].v.ob[0] = this->windowContentVtx[phi_t1 + 3].v.ob[0] =
//             this->windowContentVtx[phi_t1].v.ob[0] + 0x10;

//         this->windowContentVtx[phi_t1].v.ob[1] = this->windowContentVtx[phi_t1 + 1].v.ob[1] = 0;
//         this->windowContentVtx[phi_t1 + 2].v.ob[1] = this->windowContentVtx[phi_t1 + 3].v.ob[1] =
//             this->windowContentVtx[phi_t1].v.ob[1] - 0x10;

//         this->windowContentVtx[phi_t1].v.ob[2] = this->windowContentVtx[phi_t1 + 1].v.ob[2] =
//             this->windowContentVtx[phi_t1 + 2].v.ob[2] = this->windowContentVtx[phi_t1 + 3].v.ob[2] = 0;

//         this->windowContentVtx[phi_t1].v.flag = this->windowContentVtx[phi_t1 + 1].v.flag =
//             this->windowContentVtx[phi_t1 + 2].v.flag = this->windowContentVtx[phi_t1 + 3].v.flag = 0;

//         this->windowContentVtx[phi_t1].v.tc[0] = this->windowContentVtx[phi_t1].v.tc[1] =
//             this->windowContentVtx[phi_t1 + 1].v.tc[1] = this->windowContentVtx[phi_t1 + 2].v.tc[0] = 0;

//         this->windowContentVtx[phi_t1 + 1].v.tc[0] = this->windowContentVtx[phi_t1 + 2].v.tc[1] =
//             this->windowContentVtx[phi_t1 + 3].v.tc[0] = this->windowContentVtx[phi_t1 + 3].v.tc[1] = 0x200;

//         this->windowContentVtx[phi_t1].v.cn[0] = this->windowContentVtx[phi_t1 + 1].v.cn[0] =
//             this->windowContentVtx[phi_t1 + 2].v.cn[0] = this->windowContentVtx[phi_t1 + 3].v.cn[0] =
//                 this->windowContentVtx[phi_t1].v.cn[1] = this->windowContentVtx[phi_t1 + 1].v.cn[1] =
//                     this->windowContentVtx[phi_t1 + 2].v.cn[1] = this->windowContentVtx[phi_t1 + 3].v.cn[1] =
//                         this->windowContentVtx[phi_t1].v.cn[2] = this->windowContentVtx[phi_t1 + 1].v.cn[2] =
//                             this->windowContentVtx[phi_t1 + 2].v.cn[2] = this->windowContentVtx[phi_t1 + 3].v.cn[2] =
//                                 this->windowContentVtx[phi_t1].v.cn[3] = this->windowContentVtx[phi_t1 + 1].v.cn[3] =
//                                     this->windowContentVtx[phi_t1 + 2].v.cn[3] =
//                                         this->windowContentVtx[phi_t1 + 3].v.cn[3] = 0xFF;
//     }

//     // phi_t1 = 0;
//     // do {
//     //     this->windowContentVtx[phi_t1].unk20 = 0x12C;
//     //     temp_t1 = (phi_t1 + 4) & 0xFFFF;
//     //     temp_a0 = &this->windowContentVtx[phi_t1];
//     //     temp_a0->v.ob[0] = temp_a0->unk20;
//     //     temp_a0_2 = &this->windowContentVtx[phi_t1];
//     //     temp_v1_2 = temp_a0_2->v.ob[0] + 0x10;
//     //     temp_a0_2->unk30 = temp_v1_2;
//     //     this->windowContentVtx[phi_t1].unk10 = temp_v1_2;
//     //     this->windowContentVtx[phi_t1].unk12 = 0;
//     //     temp_a0_3 = &this->windowContentVtx[phi_t1];
//     //     temp_a0_3->v.ob[1] = temp_a0_3->unk12;
//     //     temp_a0_4 = &this->windowContentVtx[phi_t1];
//     //     temp_v1_3 = temp_a0_4->v.ob[1] - 0x10;
//     //     temp_a0_4->unk32 = temp_v1_3;
//     //     this->windowContentVtx[phi_t1].unk22 = temp_v1_3;
//     //     this->windowContentVtx[phi_t1].unk34 = 0;
//     //     temp_a0_5 = &this->windowContentVtx[phi_t1];
//     //     temp_a1 = temp_a0_5->unk34;
//     //     temp_a0_5->unk24 = temp_a1;
//     //     this->windowContentVtx[phi_t1].unk14 = temp_a1;
//     //     this->windowContentVtx[phi_t1].v.ob[2] = temp_a1;
//     //     this->windowContentVtx[phi_t1].unk36 = 0;
//     //     temp_a0_6 = &this->windowContentVtx[phi_t1];
//     //     temp_a1_2 = temp_a0_6->unk36;
//     //     temp_a0_6->unk26 = temp_a1_2;
//     //     this->windowContentVtx[phi_t1].unk16 = temp_a1_2;
//     //     this->windowContentVtx[phi_t1].v.flag = temp_a1_2;
//     //     this->windowContentVtx[phi_t1].unk28 = 0;
//     //     temp_a0_7 = &this->windowContentVtx[phi_t1];
//     //     temp_v1_4 = temp_a0_7->unk28;
//     //     temp_a0_7->unk1A = temp_v1_4;
//     //     this->windowContentVtx[phi_t1].v.tc[1] = temp_v1_4;
//     //     this->windowContentVtx[phi_t1].v.tc[0] = temp_v1_4;
//     //     this->windowContentVtx[phi_t1].unk3A = 0x200;
//     //     temp_a0_8 = &this->windowContentVtx[phi_t1];
//     //     temp_a1_3 = temp_a0_8->unk3A;
//     //     temp_a0_8->unk38 = temp_a1_3;
//     //     this->windowContentVtx[phi_t1].unk2A = temp_a1_3;
//     //     this->windowContentVtx[phi_t1].unk18 = temp_a1_3;
//     //     this->windowContentVtx[phi_t1].unk3F = 0xFF;
//     //     temp_a0_9 = &this->windowContentVtx[phi_t1];
//     //     temp_v1_5 = temp_a0_9->unk3F;
//     //     temp_a0_9->unk2F = temp_v1_5;
//     //     this->windowContentVtx[phi_t1].unk1F = temp_v1_5;
//     //     this->windowContentVtx[phi_t1].v.cn[3] = temp_v1_5;
//     //     this->windowContentVtx[phi_t1].unk3E = temp_v1_5;
//     //     this->windowContentVtx[phi_t1].unk2E = temp_v1_5;
//     //     this->windowContentVtx[phi_t1].unk1E = temp_v1_5;
//     //     this->windowContentVtx[phi_t1].v.cn[2] = temp_v1_5;
//     //     this->windowContentVtx[phi_t1].unk3D = temp_v1_5;
//     //     this->windowContentVtx[phi_t1].unk2D = temp_v1_5;
//     //     this->windowContentVtx[phi_t1].unk1D = temp_v1_5;
//     //     this->windowContentVtx[phi_t1].v.cn[1] = temp_v1_5;
//     //     this->windowContentVtx[phi_t1].unk3C = temp_v1_5;
//     //     this->windowContentVtx[phi_t1].unk2C = temp_v1_5;
//     //     this->windowContentVtx[phi_t1].unk1C = temp_v1_5;
//     //     this->windowContentVtx[phi_t1].v.cn[0] = temp_v1_5;
//     //     phi_t1 = temp_t1;
//     // } while (temp_t1 < 0x3C0);

//     this->windowContentVtx[0].v.ob[0] = this->windowContentVtx[2].v.ob[0] = this->windowPosX;
//     this->windowContentVtx[1].v.ob[0] = this->windowContentVtx[3].v.ob[0] = this->windowContentVtx[0].v.ob[0] + 0x80;
//     this->windowContentVtx[0].v.ob[1] = this->windowContentVtx[1].v.ob[1] = 0x48;
//     this->windowContentVtx[2].v.ob[1] = this->windowContentVtx[3].v.ob[1] = this->windowContentVtx[0].v.ob[1] - 0x10;
//     this->windowContentVtx[1].v.tc[0] = this->windowContentVtx[3].v.tc[0] = 0x1000;

// //     temp_v1_6 = this->windowPosX;
// //     this->windowContentVtx->unk20 = temp_v1_6;
// //     this->windowContentVtx->v.ob[0] = temp_v1_6;
// //     temp_a1_4 = this->windowContentVtx;
// //     temp_v1_7 = temp_a1_4->v.ob[0] + 0x80;
// //     temp_a1_4->unk30 = temp_v1_7;
// //     this->windowContentVtx->unk10 = temp_v1_7;
// //     this->windowContentVtx->unk12 = 0x48;
// //     temp_a1_5 = this->windowContentVtx;
// //     temp_a1_5->v.ob[1] = temp_a1_5->unk12;
// //     temp_a1_6 = this->windowContentVtx;
// //     temp_v1_8 = temp_a1_6->v.ob[1] - 0x10;
// //     temp_a1_6->unk32 = temp_v1_8;
// //     this->windowContentVtx->unk22 = temp_v1_8;
// //     this->windowContentVtx->unk38 = 0x1000;
// //     temp_a1_7 = this->windowContentVtx;
// //     temp_a1_7->unk18 = (s16) temp_a1_7->unk38;

//     for (phi_a3 = 0, phi_s3 = 4; phi_a3 < 3; phi_a3++) {
//         phi_s1 = this->windowPosX - 6;

//         for (phi_s4 = 0; phi_s4 < 7; phi_s4++, phi_s3 += 4) {
//             this->windowContentVtx[phi_s3].v.ob[0] = this->windowContentVtx[phi_s3 + 2].v.ob[0] = phi_s1;
//             this->windowContentVtx[phi_s3 + 1].v.ob[0] = this->windowContentVtx[phi_s3 + 3].v.ob[0] =
//                 this->windowContentVtx[phi_s3].v.ob[0] + sFileInfoBoxPartWidths[phi_s4];

//             this->windowContentVtx[phi_s3].v.ob[1] = this->windowContentVtx[phi_s3 + 1].v.ob[1] =
//                 this->unk_24492[phi_a3] + 0x2C;

//             this->windowContentVtx[phi_s3 + 2].v.ob[1] = this->windowContentVtx[phi_s3 + 3].v.ob[1] =
//                 this->windowContentVtx[phi_s3].v.ob[1] - 0x38;

//             this->windowContentVtx[phi_s3 + 1].v.tc[0] = this->windowContentVtx[phi_s3 + 3].v.tc[0] =
//                 sFileInfoBoxPartWidths[phi_s4] << 5;
//             this->windowContentVtx[phi_s3 + 2].v.tc[1] = this->windowContentVtx[phi_s3 + 3].v.tc[1] = 0x700;
//             phi_s1 += sFileInfoBoxPartWidths[phi_s4];
//         }
//     }

// //     phi_a3 = 0;
// //     phi_a3_2 = 0;
// //     phi_a3_3 = 0;
// //     phi_a3_5 = 0;
// //     phi_a3_6 = 0;
// //     phi_a3_7 = 0;
// //     phi_a3_8 = 0;
// //     phi_s3 = 4;
// //     do {
// //         phi_s1 = this->windowPosX - 6;
// //         phi_s4 = 0;
// //         phi_s4_2 = 0;
// //         phi_s4_3 = 0;
// //         phi_s4_4 = 0;
// // loop_4:
// //         this->windowContentVtx[phi_s3].unk20 = phi_s1;
// //         temp_a1_8 = &sFileInfoBoxPartWidths + (phi_s4 * 2);
// //         this->windowContentVtx[phi_s3].v.ob[0] = phi_s1;
// //         temp_s4 = phi_s4 + 1;
// //         temp_a0_10 = &this->windowContentVtx[phi_s3];
// //         temp_v1_9 = *temp_a1_8 + temp_a0_10->v.ob[0];
// //         temp_a0_10->unk30 = temp_v1_9;
// //         temp_s3 = (phi_s3 + 4) & 0xFFFF;
// //         this->windowContentVtx[phi_s3].unk10 = temp_v1_9;
// //         temp_v1_10 = this->unk_24492[phi_a3] + 0x2C;
// //         this->windowContentVtx[phi_s3].unk12 = temp_v1_10;
// //         this->windowContentVtx[phi_s3].v.ob[1] = temp_v1_10;
// //         temp_a0_11 = &this->windowContentVtx[phi_s3];
// //         temp_v1_11 = temp_a0_11->v.ob[1] - 0x38;
// //         temp_a0_11->unk32 = temp_v1_11;
// //         this->windowContentVtx[phi_s3].unk22 = temp_v1_11;
// //         temp_v1_12 = *temp_a1_8 << 5;
// //         this->windowContentVtx[phi_s3].unk38 = temp_v1_12;
// //         this->windowContentVtx[phi_s3].unk18 = temp_v1_12;
// //         this->windowContentVtx[phi_s3].unk3A = 0x700;
// //         temp_a0_12 = &this->windowContentVtx[phi_s3];
// //         temp_a0_12->unk2A = (s16) temp_a0_12->unk3A;
// //         phi_s1 += *temp_a1_8;
// //         phi_s3 = temp_s3;
// //         phi_s4 = temp_s4;
// //         phi_s3_2 = temp_s3;
// //         phi_s3 = temp_s3;
// //         if ((s32) temp_s4 < 7) {
// //             goto loop_4;
// //         }
// //         temp_a3 = phi_a3 + 1;
// //         phi_a3 = temp_a3;
// //     } while ((s32) temp_a3 < 3);

//     temp_s1 = this->windowPosX - 6;
// //     temp_a1_9 = temp_s1 + 0x40;
// //     temp_a2 = temp_s1 + 0x34;
// //     temp_a3_2 = temp_s1 + 0xA9;
//     phi_t0 = 0x2C;

//     for (phi_s4_2 = 0; phi_s4_2 < 3; phi_s4_2++, phi_t0 -= 0x20) {

//     }

// //     do {
// //         this->windowContentVtx[phi_s3_2].unk20 = temp_s1;
// //         temp_s3_2 = (phi_s3_2 + 0x10) & 0xFFFF;
// //         this->windowContentVtx[phi_s3_2].v.ob[0] = temp_s1;
// //         temp_a0_13 = &this->windowContentVtx[phi_s3_2];
// //         temp_s4_2 = phi_s4_2 + 1;
// //         temp_v1_13 = temp_a0_13->v.ob[0] + 0x40;
// //         temp_a0_13->unk30 = temp_v1_13;
// //         this->windowContentVtx[phi_s3_2].unk10 = temp_v1_13;
// //         temp_v1_14 = this->buttonYOffsets[phi_s4_2] + phi_t0;
// //         this->windowContentVtx[phi_s3_2].unk12 = temp_v1_14;
// //         this->windowContentVtx[phi_s3_2].v.ob[1] = temp_v1_14;
// //         temp_a0_14 = &this->windowContentVtx[phi_s3_2];
// //         temp_v1_15 = temp_a0_14->v.ob[1] - 0x10;
// //         temp_a0_14->unk32 = temp_v1_15;
// //         this->windowContentVtx[phi_s3_2].unk22 = temp_v1_15;
// //         this->windowContentVtx[phi_s3_2].unk38 = 0x800;
// //         temp_a0_15 = &this->windowContentVtx[phi_s3_2];
// //         temp_a0_15->unk18 = (s16) temp_a0_15->unk38;
// //         this->windowContentVtx[phi_s3_2].unk60 = temp_a1_9;
// //         this->windowContentVtx[phi_s3_2].unk40 = temp_a1_9;
// //         temp_a0_16 = &this->windowContentVtx[phi_s3_2];
// //         temp_v1_16 = temp_a0_16->unk40 + 0x6C;
// //         temp_a0_16->unk70 = temp_v1_16;
// //         this->windowContentVtx[phi_s3_2].unk50 = temp_v1_16;
// //         temp_v1_17 = this->buttonYOffsets[phi_s4_2] + phi_t0;
// //         this->windowContentVtx[phi_s3_2].unk52 = temp_v1_17;
// //         this->windowContentVtx[phi_s3_2].unk42 = temp_v1_17;
// //         temp_a0_17 = &this->windowContentVtx[phi_s3_2];
// //         temp_v1_18 = temp_a0_17->unk42 - 0x10;
// //         temp_a0_17->unk72 = temp_v1_18;
// //         this->windowContentVtx[phi_s3_2].unk62 = temp_v1_18;
// //         this->windowContentVtx[phi_s3_2].unk78 = 0xD80;
// //         temp_a0_18 = &this->windowContentVtx[phi_s3_2];
// //         temp_a0_18->unk58 = (s16) temp_a0_18->unk78;
// //         this->windowContentVtx[phi_s3_2].unkA0 = temp_a2;
// //         this->windowContentVtx[phi_s3_2].unk80 = temp_a2;
// //         temp_a0_19 = &this->windowContentVtx[phi_s3_2];
// //         temp_v1_19 = temp_a0_19->unk80 + 0x18;
// //         temp_a0_19->unkB0 = temp_v1_19;
// //         this->windowContentVtx[phi_s3_2].unk90 = temp_v1_19;
// //         temp_v1_20 = this->buttonYOffsets[phi_s4_2] + phi_t0;
// //         this->windowContentVtx[phi_s3_2].unk92 = temp_v1_20;
// //         this->windowContentVtx[phi_s3_2].unk82 = temp_v1_20;
// //         temp_a0_20 = &this->windowContentVtx[phi_s3_2];
// //         temp_v1_21 = temp_a0_20->unk82 - 0x10;
// //         temp_a0_20->unkB2 = temp_v1_21;
// //         this->windowContentVtx[phi_s3_2].unkA2 = temp_v1_21;
// //         this->windowContentVtx[phi_s3_2].unkB8 = 0x300;
// //         temp_a0_21 = &this->windowContentVtx[phi_s3_2];
// //         temp_a0_21->unk98 = (s16) temp_a0_21->unkB8;
// //         this->windowContentVtx[phi_s3_2].unkE0 = temp_a3_2;
// //         this->windowContentVtx[phi_s3_2].unkC0 = temp_a3_2;
// //         temp_a0_22 = &this->windowContentVtx[phi_s3_2];
// //         temp_v1_22 = temp_a0_22->unkC0 + 0x34;
// //         temp_a0_22->unkF0 = temp_v1_22;
// //         this->windowContentVtx[phi_s3_2].unkD0 = temp_v1_22;
// //         temp_v1_23 = this->buttonYOffsets[phi_s4_2] + phi_t0;
// //         this->windowContentVtx[phi_s3_2].unkD2 = temp_v1_23;
// //         this->windowContentVtx[phi_s3_2].unkC2 = temp_v1_23;
// //         temp_a0_23 = &this->windowContentVtx[phi_s3_2];
// //         temp_v1_24 = temp_a0_23->unkC2 - 0x10;
// //         temp_a0_23->unkF2 = temp_v1_24;
// //         this->windowContentVtx[phi_s3_2].unkE2 = temp_v1_24;
// //         this->windowContentVtx[phi_s3_2].unkF8 = 0x680;
// //         temp_a0_24 = &this->windowContentVtx[phi_s3_2];
// //         temp_a0_24->unkD8 = (s16) temp_a0_24->unkF8;
// //         phi_s3_2 = temp_s3_2;
// //         phi_s4_2 = temp_s4_2;
// //         phi_t0 += -0x10;
// //         phi_s3_11 = temp_s3_2;
// //     } while ((s32) temp_s4_2 < 3);

// //     sp9C = 0x2C;

// //     do {
// //         phi_s3_3 = phi_s3_11;
// //         phi_s3_12 = phi_s3_11;
// //         if (gSaveContext.unk_3F3F != 0) {
// //             spAC = phi_s4_3;
// //             if ((this + phi_s4_3)->unk2446A != 0) {
// //                 spAC = phi_s4_3 + 2;
// //             }
// //             temp_v0_2 = this->configMode;
// //             phi_s1_2 = this->windowPosX - 6;
// //             if ((temp_v0_2 == 0x10) && (phi_s6 = this + (phi_s4_3 * 2) + 0x20000, (phi_s4_3 == this->fileNum))) {
// //                 sp98 = this->unk_24492[phi_s4_3] + 0x2C;
// //             } else if (((temp_v0_2 == 0x11) || (temp_v0_2 == 0x12)) && (phi_s6 = this + (phi_s4_3 * 2) + 0x20000,
// (phi_s4_3 == this->fileNum))) {
// //                 sp98 = this->buttonYOffsets[phi_s4_3] + sp9C;
// //             } else {
// //                 sp98 = this->unk_24492[phi_s4_3] + sp9C + this->buttonYOffsets[phi_s4_3];
// //                 phi_s6 = this + (phi_s4_3 * 2) + 0x20000;
// //             }
// //             temp_t2 = sp98 - 2;
// //             temp_a2_2 = temp_t2 - 1;
// //             do {
// //                 temp_a1_10 = &D_80814280 + ((this + (phi_s4_3 * 8) + phi_a3_2)->unk24414 * 2);
// //                 temp_a3_3 = phi_a3_2 + 1;
// //                 temp_v1_25 = *temp_a1_10 + phi_s1_2 + 0x4E;
// //                 this->windowContentVtx[phi_s3_3].unk20 = temp_v1_25;
// //                 this->windowContentVtx[phi_s3_3].v.ob[0] = temp_v1_25;
// //                 temp_a0_25 = &this->windowContentVtx[phi_s3_3];
// //                 temp_s3_3 = (phi_s3_3 + 4) & 0xFFFF;
// //                 temp_v1_26 = temp_a0_25->v.ob[0] + 0xB;
// //                 temp_a0_25->unk30 = temp_v1_26;
// //                 this->windowContentVtx[phi_s3_3].unk10 = temp_v1_26;
// //                 this->windowContentVtx[phi_s3_3].unk12 = temp_t2;
// //                 this->windowContentVtx[phi_s3_3].v.ob[1] = temp_t2;
// //                 temp_a0_26 = &this->windowContentVtx[phi_s3_3];
// //                 temp_v1_27 = temp_a0_26->v.ob[1] - 0xC;
// //                 temp_a0_26->unk32 = temp_v1_27;
// //                 this->windowContentVtx[phi_s3_3].unk22 = temp_v1_27;
// //                 temp_v1_28 = *temp_a1_10 + phi_s1_2 + 0x4F;
// //                 this->windowContentVtx[phi_s3_3].unk220 = temp_v1_28;
// //                 this->windowContentVtx[phi_s3_3].unk200 = temp_v1_28;
// //                 temp_a0_27 = &this->windowContentVtx[phi_s3_3];
// //                 temp_v1_29 = temp_a0_27->unk200 + 0xB;
// //                 temp_a0_27->unk230 = temp_v1_29;
// //                 this->windowContentVtx[phi_s3_3].unk210 = temp_v1_29;
// //                 this->windowContentVtx[phi_s3_3].unk212 = temp_a2_2;
// //                 this->windowContentVtx[phi_s3_3].unk202 = temp_a2_2;
// //                 temp_a0_28 = &this->windowContentVtx[phi_s3_3];
// //                 temp_v1_30 = temp_a0_28->unk202 - 0xC;
// //                 temp_a0_28->unk232 = temp_v1_30;
// //                 this->windowContentVtx[phi_s3_3].unk222 = temp_v1_30;
// //                 phi_a3_2 = temp_a3_3;
// //                 phi_s1_2 += 0xA;
// //                 phi_s3_3 = temp_s3_3;
// //             } while ((s32) temp_a3_3 < 8);
// //             temp_s1_2 = this->windowPosX + 0xE;
// //             FileSelect_SplitNumber((u16) this->rupees[spAC], &spA4, &spA6, &spA8);
// //             temp_t3 = sp98 - 0x18;
// //             temp_t4 = temp_t3 - 1;
// //             sp50 = this + spAC + 0x20000;
// //             i = &(&spA4)[*(&D_80814554 + (this->unk_24474[spAC] * 2))];
// //             phi_s1_3 = temp_s1_2;
// //             phi_s3_4 = (temp_s3_3 + 0x20) & 0xFFFF;
// //             do {
// //                 temp_a1_11 = phi_a3_3 * 2;
// //                 temp_t0 = &D_80814628 + temp_a1_11;
// //                 temp_v1_31 = *(&D_80814280 + (*i * 2)) + phi_s1_3;
// //                 this->windowContentVtx[phi_s3_4].unk20 = temp_v1_31;
// //                 temp_a2_3 = &D_80814630 + temp_a1_11;
// //                 temp_a3_4 = phi_a3_3 + 1;
// //                 this->windowContentVtx[phi_s3_4].v.ob[0] = temp_v1_31;
// //                 temp_a0_29 = &this->windowContentVtx[phi_s3_4];
// //                 temp_v1_32 = *temp_t0 + temp_a0_29->v.ob[0];
// //                 temp_a0_29->unk30 = temp_v1_32;
// //                 temp_s3_4 = (phi_s3_4 + 4) & 0xFFFF;
// //                 this->windowContentVtx[phi_s3_4].unk10 = temp_v1_32;
// //                 this->windowContentVtx[phi_s3_4].unk12 = temp_t3;
// //                 this->windowContentVtx[phi_s3_4].v.ob[1] = temp_t3;
// //                 temp_a0_30 = &this->windowContentVtx[phi_s3_4];
// //                 temp_v1_33 = temp_a0_30->v.ob[1] - *temp_a2_3;
// //                 temp_a0_30->unk32 = temp_v1_33;
// //                 this->windowContentVtx[phi_s3_4].unk22 = temp_v1_33;
// //                 temp_a0_31 = &this->windowContentVtx[phi_s3_4];
// //                 temp_v1_34 = temp_a0_31->v.ob[0] + 1;
// //                 temp_a0_31->unkE0 = temp_v1_34;
// //                 this->windowContentVtx[phi_s3_4].unkC0 = temp_v1_34;
// //                 temp_a0_32 = &this->windowContentVtx[phi_s3_4];
// //                 temp_v1_35 = *temp_t0 + temp_a0_32->unkC0;
// //                 temp_a0_32->unkF0 = temp_v1_35;
// //                 this->windowContentVtx[phi_s3_4].unkD0 = temp_v1_35;
// //                 this->windowContentVtx[phi_s3_4].unkD2 = temp_t4;
// //                 this->windowContentVtx[phi_s3_4].unkC2 = temp_t4;
// //                 temp_a0_33 = &this->windowContentVtx[phi_s3_4];
// //                 temp_v1_36 = temp_a0_33->unkC2 - *temp_a2_3;
// //                 temp_a0_33->unkF2 = temp_v1_36;
// //                 this->windowContentVtx[phi_s3_4].unkE2 = temp_v1_36;
// //                 i += 2;
// //                 phi_s1_3 += *(&D_80814620 + temp_a1_11);
// //                 phi_s3_4 = temp_s3_4;
// //                 phi_a3_3 = temp_a3_4;
// //             } while ((s32) temp_a3_4 < 3);
// //             temp_s1_3 = this->windowPosX + 0x2A;
// //             FileSelect_SplitNumber((u16) this->unk_24478[spAC], &spA4, &spA6, &spA8);
// //             temp_t2_2 = sp98 - 0x2A;
// //             temp_t3_2 = temp_t2_2 - 1;
// //             phi_a3_4 = 1;
// //             phi_s1_4 = temp_s1_3;
// //             phi_s3_5 = (temp_s3_4 + 0xC) & 0xFFFF;
// //             do {
// //                 temp_a1_12 = phi_a3_4 * 2;
// //                 temp_t0_2 = &D_80814628 + temp_a1_12;
// //                 temp_a2_4 = &D_80814630 + temp_a1_12;
// //                 temp_v1_37 = *(&D_80814280 + ((sp + temp_a1_12)->unkA4 * 2)) + phi_s1_4;
// //                 this->windowContentVtx[phi_s3_5].unk20 = temp_v1_37;
// //                 temp_a3_5 = phi_a3_4 + 1;
// //                 this->windowContentVtx[phi_s3_5].v.ob[0] = temp_v1_37;
// //                 temp_a0_34 = &this->windowContentVtx[phi_s3_5];
// //                 temp_v1_38 = *temp_t0_2 + temp_a0_34->v.ob[0];
// //                 temp_a0_34->unk30 = temp_v1_38;
// //                 temp_s3_5 = (phi_s3_5 + 4) & 0xFFFF;
// //                 this->windowContentVtx[phi_s3_5].unk10 = temp_v1_38;
// //                 this->windowContentVtx[phi_s3_5].unk12 = temp_t2_2;
// //                 this->windowContentVtx[phi_s3_5].v.ob[1] = temp_t2_2;
// //                 temp_a0_35 = &this->windowContentVtx[phi_s3_5];
// //                 temp_v1_39 = temp_a0_35->v.ob[1] - *temp_a2_4;
// //                 temp_a0_35->unk32 = temp_v1_39;
// //                 this->windowContentVtx[phi_s3_5].unk22 = temp_v1_39;
// //                 temp_a0_36 = &this->windowContentVtx[phi_s3_5];
// //                 temp_v1_40 = temp_a0_36->v.ob[0] + 1;
// //                 temp_a0_36->unkA0 = temp_v1_40;
// //                 this->windowContentVtx[phi_s3_5].unk80 = temp_v1_40;
// //                 temp_a0_37 = &this->windowContentVtx[phi_s3_5];
// //                 temp_v1_41 = *temp_t0_2 + temp_a0_37->unk80;
// //                 temp_a0_37->unkB0 = temp_v1_41;
// //                 this->windowContentVtx[phi_s3_5].unk90 = temp_v1_41;
// //                 this->windowContentVtx[phi_s3_5].unk92 = temp_t3_2;
// //                 this->windowContentVtx[phi_s3_5].unk82 = temp_t3_2;
// //                 temp_a0_38 = &this->windowContentVtx[phi_s3_5];
// //                 temp_v1_42 = temp_a0_38->unk82 - *temp_a2_4;
// //                 temp_a0_38->unkB2 = temp_v1_42;
// //                 this->windowContentVtx[phi_s3_5].unkA2 = temp_v1_42;
// //                 phi_a3_4 = temp_a3_5;
// //                 phi_s1_4 += *(&D_80814620 + temp_a1_12);
// //                 phi_s3_5 = temp_s3_5;
// //             } while ((s32) temp_a3_5 < 3);
// //             phi_s1_5 = this->windowPosX + 0x3F;
// //             phi_s3_6 = (temp_s3_5 + 8) & 0xFFFF;
// //             phi_t0_2 = sp98 - 0x10;
// //             do {
// //                 this->windowContentVtx[phi_s3_6].unk20 = phi_s1_5;
// //                 this->windowContentVtx[phi_s3_6].v.ob[0] = phi_s1_5;
// //                 temp_s3_6 = (phi_s3_6 + 4) & 0xFFFF;
// //                 temp_a0_39 = &this->windowContentVtx[phi_s3_6];
// //                 temp_v1_43 = temp_a0_39->v.ob[0] + 0xA;
// //                 temp_a0_39->unk30 = temp_v1_43;
// //                 this->windowContentVtx[phi_s3_6].unk10 = temp_v1_43;
// //                 this->windowContentVtx[phi_s3_6].unk12 = phi_t0_2;
// //                 this->windowContentVtx[phi_s3_6].v.ob[1] = phi_t0_2;
// //                 temp_a0_40 = &this->windowContentVtx[phi_s3_6];
// //                 temp_v1_44 = temp_a0_40->v.ob[1] - 0xA;
// //                 temp_a0_40->unk32 = temp_v1_44;
// //                 this->windowContentVtx[phi_s3_6].unk22 = temp_v1_44;
// //                 phi_s3_6 = temp_s3_6;
// //                 phi_s3_7 = temp_s3_6;
// //                 phi_s1_8 = phi_s1_5;
// //                 if (phi_a3_5 == 9) {
// //                     phi_s1_8 = this->windowPosX + 0x36;
// //                     phi_t0_2 += -8;
// //                 }
// //                 temp_a3_6 = phi_a3_5 + 1;
// //                 phi_s1_5 = phi_s1_8 + 9;
// //                 phi_a3_5 = temp_a3_6;
// //             } while ((s32) temp_a3_6 < 0x14);
// //             temp_a2_5 = sp98 - 0x20;
// //             phi_s1_6 = this->windowPosX + 0x40;
// //             do {
// //                 temp_a3_7 = phi_a3_6 + 1;
// //                 this->windowContentVtx[phi_s3_7].unk20 = phi_s1_6;
// //                 this->windowContentVtx[phi_s3_7].v.ob[0] = phi_s1_6;
// //                 temp_a0_41 = &this->windowContentVtx[phi_s3_7];
// //                 temp_s3_7 = (phi_s3_7 + 4) & 0xFFFF;
// //                 temp_v1_45 = temp_a0_41->v.ob[0] + 0x14;
// //                 temp_a0_41->unk30 = temp_v1_45;
// //                 this->windowContentVtx[phi_s3_7].unk10 = temp_v1_45;
// //                 this->windowContentVtx[phi_s3_7].unk12 = temp_a2_5;
// //                 this->windowContentVtx[phi_s3_7].v.ob[1] = temp_a2_5;
// //                 temp_a0_42 = &this->windowContentVtx[phi_s3_7];
// //                 temp_v1_46 = temp_a0_42->v.ob[1] - 0x14;
// //                 temp_a0_42->unk32 = temp_v1_46;
// //                 this->windowContentVtx[phi_s3_7].unk22 = temp_v1_46;
// //                 this->windowContentVtx[phi_s3_7].unk3A = 0x400;
// //                 temp_a0_43 = &this->windowContentVtx[phi_s3_7];
// //                 temp_a1_13 = temp_a0_43->unk3A;
// //                 temp_a0_43->unk38 = temp_a1_13;
// //                 this->windowContentVtx[phi_s3_7].unk2A = temp_a1_13;
// //                 this->windowContentVtx[phi_s3_7].unk18 = temp_a1_13;
// //                 phi_s1_6 += 0x18;
// //                 phi_s3_7 = temp_s3_7;
// //                 phi_a3_6 = temp_a3_7;
// //             } while ((s32) temp_a3_7 < 4);
// //             temp_v1_47 = this->windowPosX - 1;
// //             this->windowContentVtx[temp_s3_7].unk20 = temp_v1_47;
// //             this->windowContentVtx[temp_s3_7].v.ob[0] = temp_v1_47;
// //             temp_s3_8 = (temp_s3_7 + 4) & 0xFFFF;
// //             temp_a0_44 = &this->windowContentVtx[temp_s3_7];
// //             temp_v1_48 = temp_a0_44->v.ob[0] + 0x10;
// //             temp_a0_44->unk30 = temp_v1_48;
// //             this->windowContentVtx[temp_s3_7].unk10 = temp_v1_48;
// //             temp_a1_14 = sp98 - 0x15;
// //             this->windowContentVtx[temp_s3_7].unk12 = temp_a1_14;
// //             this->windowContentVtx[temp_s3_7].v.ob[1] = temp_a1_14;
// //             temp_a0_45 = &this->windowContentVtx[temp_s3_7];
// //             temp_v1_49 = temp_a0_45->v.ob[1] - 0x10;
// //             temp_a0_45->unk32 = temp_v1_49;
// //             this->windowContentVtx[temp_s3_7].unk22 = temp_v1_49;
// //             this->windowContentVtx[temp_s3_7].unk38 = 0x200;
// //             temp_a0_46 = &this->windowContentVtx[temp_s3_7];
// //             temp_a0_46->unk18 = (s16) temp_a0_46->unk38;
// //             this->windowContentVtx[temp_s3_7].unk3A = 0x200;
// //             temp_a0_47 = &this->windowContentVtx[temp_s3_7];
// //             temp_a0_47->unk2A = (s16) temp_a0_47->unk3A;
// //             temp_s3_9 = (temp_s3_8 + 4) & 0xFFFF;
// //             temp_v1_50 = this->windowPosX + 0x27;
// //             this->windowContentVtx[temp_s3_8].unk20 = temp_v1_50;
// //             this->windowContentVtx[temp_s3_8].v.ob[0] = temp_v1_50;
// //             temp_a0_48 = &this->windowContentVtx[temp_s3_8];
// //             temp_v1_51 = temp_a0_48->v.ob[0] + 0x18;
// //             temp_a0_48->unk30 = temp_v1_51;
// //             this->windowContentVtx[temp_s3_8].unk10 = temp_v1_51;
// //             this->windowContentVtx[temp_s3_8].unk12 = temp_a1_14;
// //             this->windowContentVtx[temp_s3_8].v.ob[1] = temp_a1_14;
// //             temp_a0_49 = &this->windowContentVtx[temp_s3_8];
// //             temp_v1_52 = temp_a0_49->v.ob[1] - 0x10;
// //             temp_a0_49->unk32 = temp_v1_52;
// //             this->windowContentVtx[temp_s3_8].unk22 = temp_v1_52;
// //             this->windowContentVtx[temp_s3_8].unk38 = 0x300;
// //             temp_a0_50 = &this->windowContentVtx[temp_s3_8];
// //             temp_a0_50->unk18 = (s16) temp_a0_50->unk38;
// //             this->windowContentVtx[temp_s3_8].unk3A = 0x200;
// //             temp_a0_51 = &this->windowContentVtx[temp_s3_8];
// //             temp_a0_51->unk2A = (s16) temp_a0_51->unk3A;
// //             temp_s3_10 = (temp_s3_9 + 8) & 0xFFFF;
// //             temp_v1_53 = this->windowPosX - 0xA;
// //             this->windowContentVtx[temp_s3_9].unk20 = temp_v1_53;
// //             this->windowContentVtx[temp_s3_9].v.ob[0] = temp_v1_53;
// //             temp_a0_52 = &this->windowContentVtx[temp_s3_9];
// //             temp_v1_54 = temp_a0_52->v.ob[0] + 0x40;
// //             temp_a0_52->unk30 = temp_v1_54;
// //             this->windowContentVtx[temp_s3_9].unk10 = temp_v1_54;
// //             temp_a2_6 = sp98 - 0x27;
// //             this->windowContentVtx[temp_s3_9].unk12 = temp_a2_6;
// //             temp_a1_15 = temp_a2_6 - 1;
// //             this->windowContentVtx[temp_s3_9].v.ob[1] = temp_a2_6;
// //             temp_a0_53 = &this->windowContentVtx[temp_s3_9];
// //             temp_v1_55 = temp_a0_53->v.ob[1] - 0x10;
// //             temp_a0_53->unk32 = temp_v1_55;
// //             this->windowContentVtx[temp_s3_9].unk22 = temp_v1_55;
// //             this->windowContentVtx[temp_s3_9].unk38 = 0x800;
// //             temp_a0_54 = &this->windowContentVtx[temp_s3_9];
// //             temp_a0_54->unk18 = (s16) temp_a0_54->unk38;
// //             this->windowContentVtx[temp_s3_9].unk3A = 0x200;
// //             temp_a0_55 = &this->windowContentVtx[temp_s3_9];
// //             temp_a0_55->unk2A = (s16) temp_a0_55->unk3A;
// //             temp_a0_56 = &this->windowContentVtx[temp_s3_9];
// //             temp_v1_56 = temp_a0_56->v.ob[0] + 1;
// //             temp_a0_56->unk60 = temp_v1_56;
// //             this->windowContentVtx[temp_s3_9].unk40 = temp_v1_56;
// //             temp_a0_57 = &this->windowContentVtx[temp_s3_9];
// //             temp_v1_57 = temp_a0_57->unk40 + 0x40;
// //             temp_a0_57->unk70 = temp_v1_57;
// //             this->windowContentVtx[temp_s3_9].unk50 = temp_v1_57;
// //             this->windowContentVtx[temp_s3_9].unk52 = temp_a1_15;
// //             this->windowContentVtx[temp_s3_9].unk42 = temp_a1_15;
// //             temp_a0_58 = &this->windowContentVtx[temp_s3_9];
// //             temp_v1_58 = temp_a0_58->unk42 - 0x10;
// //             temp_a0_58->unk72 = temp_v1_58;
// //             this->windowContentVtx[temp_s3_9].unk62 = temp_v1_58;
// //             this->windowContentVtx[temp_s3_9].unk78 = 0x800;
// //             temp_a0_59 = &this->windowContentVtx[temp_s3_9];
// //             temp_a0_59->unk58 = (s16) temp_a0_59->unk78;
// //             this->windowContentVtx[temp_s3_9].unk7A = 0x200;
// //             temp_a0_60 = &this->windowContentVtx[temp_s3_9];
// //             temp_a0_60->unk6A = (s16) temp_a0_60->unk7A;
// //             temp_v0_3 = this->configMode;
// //             temp_s1_4 = this->windowPosX + 0xA3;
// //             if ((temp_v0_3 == 0x10) && (phi_s4_3 == this->fileNum)) {
// //                 phi_t0_3 = phi_s6->unk4492 + 0x2C;
// //             } else {
// //                 if (((temp_v0_3 == 0x11) || (temp_v0_3 == 0x12)) && (phi_t9 = sp9C, (phi_s4_3 == this->fileNum)))
// {
// //                     phi_t6 = phi_s6->unk449A;
// //                 } else {
// //                     phi_t6 = phi_s6->unk4492 + sp9C;
// //                     phi_t9 = (s32) phi_s6->unk449A;
// //                 }
// //                 phi_t0_3 = phi_t6 + phi_t9;
// //             }
// //             temp_a1_16 = temp_s1_4 + 0xE;
// //             this->windowContentVtx[temp_s3_10].unk20 = temp_a1_16;
// //             temp_a2_7 = phi_t0_3 - 2;
// //             temp_t3_3 = phi_t0_3 - 0x2B;
// //             this->windowContentVtx[temp_s3_10].v.ob[0] = temp_a1_16;
// //             temp_a0_61 = &this->windowContentVtx[temp_s3_10];
// //             temp_v1_59 = temp_a0_61->v.ob[0] + 0x18;
// //             temp_a0_61->unk30 = temp_v1_59;
// //             this->windowContentVtx[temp_s3_10].unk10 = temp_v1_59;
// //             this->windowContentVtx[temp_s3_10].unk12 = temp_a2_7;
// //             this->windowContentVtx[temp_s3_10].v.ob[1] = temp_a2_7;
// //             temp_a0_62 = &this->windowContentVtx[temp_s3_10];
// //             temp_v1_60 = temp_a0_62->v.ob[1] - 0xC;
// //             temp_a0_62->unk32 = temp_v1_60;
// //             this->windowContentVtx[temp_s3_10].unk22 = temp_v1_60;
// //             this->windowContentVtx[temp_s3_10].unk38 = 0x300;
// //             temp_a0_63 = &this->windowContentVtx[temp_s3_10];
// //             temp_a0_63->unk18 = (s16) temp_a0_63->unk38;
// //             this->windowContentVtx[temp_s3_10].unk3A = 0x180;
// //             temp_a0_64 = &this->windowContentVtx[temp_s3_10];
// //             temp_a0_64->unk2A = (s16) temp_a0_64->unk3A;
// //             phi_s3_8 = (temp_s3_10 + 4) & 0xFFFF;
// //             do {
// //                 temp_a1_17 = temp_s1_4 + phi_a3_7 + 2;
// //                 this->windowContentVtx[phi_s3_8].unk20 = temp_a1_17;
// //                 temp_a2_8 = (phi_t0_3 - phi_a3_7) - 0x12;
// //                 this->windowContentVtx[phi_s3_8].v.ob[0] = temp_a1_17;
// //                 temp_a3_8 = phi_a3_7 + 1;
// //                 temp_a0_65 = &this->windowContentVtx[phi_s3_8];
// //                 temp_v1_61 = temp_a0_65->v.ob[0] + 0x30;
// //                 temp_a0_65->unk30 = temp_v1_61;
// //                 temp_s3_11 = (phi_s3_8 + 4) & 0xFFFF;
// //                 this->windowContentVtx[phi_s3_8].unk10 = temp_v1_61;
// //                 this->windowContentVtx[phi_s3_8].unk12 = temp_a2_8;
// //                 this->windowContentVtx[phi_s3_8].v.ob[1] = temp_a2_8;
// //                 temp_a0_66 = &this->windowContentVtx[phi_s3_8];
// //                 temp_v1_62 = temp_a0_66->v.ob[1] - 0x18;
// //                 temp_a0_66->unk32 = temp_v1_62;
// //                 this->windowContentVtx[phi_s3_8].unk22 = temp_v1_62;
// //                 this->windowContentVtx[phi_s3_8].unk38 = 0x600;
// //                 temp_a0_67 = &this->windowContentVtx[phi_s3_8];
// //                 temp_a0_67->unk18 = (s16) temp_a0_67->unk38;
// //                 this->windowContentVtx[phi_s3_8].unk3A = 0x300;
// //                 temp_a0_68 = &this->windowContentVtx[phi_s3_8];
// //                 temp_a0_68->unk2A = (s16) temp_a0_68->unk3A;
// //                 phi_a3_7 = temp_a3_8;
// //                 phi_s3_8 = temp_s3_11;
// //                 phi_s3_9 = temp_s3_11;
// //             } while ((s32) temp_a3_8 < 2);
// //             temp_a2_9 = phi_t0_3 - 0x2A;
// //             phi_s1_7 = temp_s1_4 + 6;
// //             do {
// //                 temp_a1_18 = phi_s1_7 + 1;
// //                 this->windowContentVtx[phi_s3_9].unk20 = phi_s1_7;
// //                 temp_a3_9 = phi_a3_8 + 1;
// //                 this->windowContentVtx[phi_s3_9].v.ob[0] = phi_s1_7;
// //                 temp_a0_69 = &this->windowContentVtx[phi_s3_9];
// //                 temp_s3_12 = (phi_s3_9 + 4) & 0xFFFF;
// //                 temp_v1_63 = temp_a0_69->v.ob[0] + 0xC;
// //                 temp_a0_69->unk30 = temp_v1_63;
// //                 this->windowContentVtx[phi_s3_9].unk10 = temp_v1_63;
// //                 this->windowContentVtx[phi_s3_9].unk12 = temp_a2_9;
// //                 this->windowContentVtx[phi_s3_9].v.ob[1] = temp_a2_9;
// //                 temp_a0_70 = &this->windowContentVtx[phi_s3_9];
// //                 temp_v1_64 = temp_a0_70->v.ob[1] - 0xC;
// //                 temp_a0_70->unk32 = temp_v1_64;
// //                 this->windowContentVtx[phi_s3_9].unk22 = temp_v1_64;
// //                 this->windowContentVtx[phi_s3_9].unk160 = temp_a1_18;
// //                 this->windowContentVtx[phi_s3_9].unk140 = temp_a1_18;
// //                 temp_a0_71 = &this->windowContentVtx[phi_s3_9];
// //                 temp_v1_65 = temp_a0_71->unk140 + 0xC;
// //                 temp_a0_71->unk170 = temp_v1_65;
// //                 this->windowContentVtx[phi_s3_9].unk150 = temp_v1_65;
// //                 this->windowContentVtx[phi_s3_9].unk152 = temp_t3_3;
// //                 this->windowContentVtx[phi_s3_9].unk142 = temp_t3_3;
// //                 temp_a0_72 = &this->windowContentVtx[phi_s3_9];
// //                 temp_v1_66 = temp_a0_72->unk142 - 0xC;
// //                 temp_a0_72->unk172 = temp_v1_66;
// //                 this->windowContentVtx[phi_s3_9].unk162 = temp_v1_66;
// //                 phi_s1_7 += 8;
// //                 phi_s3_9 = temp_s3_12;
// //                 phi_a3_8 = temp_a3_9;
// //             } while ((s32) temp_a3_9 < 5);
// //             temp_v0_4 = &this->windowContentVtx[temp_s3_11];
// //             temp_v1_67 = temp_v0_4->unk80 + 3;
// //             temp_v0_4->unkA0 = temp_v1_67;
// //             this->windowContentVtx[temp_s3_11].unk80 = temp_v1_67;
// //             temp_v0_5 = &this->windowContentVtx[temp_s3_11];
// //             temp_v1_68 = temp_v0_5->unk80 + 0xC;
// //             temp_v0_5->unkB0 = temp_v1_68;
// //             this->windowContentVtx[temp_s3_11].unk90 = temp_v1_68;
// //             temp_v0_6 = &this->windowContentVtx[temp_s3_11];
// //             temp_v1_69 = temp_v0_6->unk80 + 1;
// //             temp_v0_6->unk1E0 = temp_v1_69;
// //             this->windowContentVtx[temp_s3_11].unk1C0 = temp_v1_69;
// //             temp_v0_7 = &this->windowContentVtx[temp_s3_11];
// //             temp_v1_70 = temp_v0_7->unk1C0 + 0xC;
// //             temp_v0_7->unk1F0 = temp_v1_70;
// //             this->windowContentVtx[temp_s3_11].unk1D0 = temp_v1_70;
// //             phi_s3_12 = (temp_s3_12 + 0x14) & 0xFFFF;
// //         }
// //         temp_s4_3 = phi_s4_3 + 1;
// //         sp9C += -0x10;
// //         phi_s4_3 = temp_s4_3;
// //         phi_s3_10 = phi_s3_12;
// //         phi_s3_11 = phi_s3_12;
// //     } while ((s32) temp_s4_3 < 3);

// //     temp_s1_5 = this->windowPosX - 6;
// //     phi_a1 = -0xC;

// //     do {
// //         this->windowContentVtx[phi_s3_10].unk20 = temp_s1_5;
// //         temp_s3_13 = (phi_s3_10 + 4) & 0xFFFF;
// //         this->windowContentVtx[phi_s3_10].v.ob[0] = temp_s1_5;
// //         temp_s4_4 = phi_s4_4 + 1;
// //         temp_a0_73 = &this->windowContentVtx[phi_s3_10];
// //         temp_v1_71 = temp_a0_73->v.ob[0] + 0x40;
// //         temp_a0_73->unk30 = temp_v1_71;
// //         this->windowContentVtx[phi_s3_10].unk10 = temp_v1_71;
// //         temp_v1_72 = (this + (phi_s4_4 * 2))->unk244A0 + phi_a1;
// //         this->windowContentVtx[phi_s3_10].unk12 = temp_v1_72;
// //         this->windowContentVtx[phi_s3_10].v.ob[1] = temp_v1_72;
// //         temp_a0_74 = &this->windowContentVtx[phi_s3_10];
// //         temp_v1_73 = temp_a0_74->v.ob[1] - 0x10;
// //         temp_a0_74->unk32 = temp_v1_73;
// //         this->windowContentVtx[phi_s3_10].unk22 = temp_v1_73;
// //         this->windowContentVtx[phi_s3_10].unk38 = 0x800;
// //         temp_a0_75 = &this->windowContentVtx[phi_s3_10];
// //         temp_a0_75->unk18 = (s16) temp_a0_75->unk38;
// //         phi_s3_10 = temp_s3_13;
// //         phi_s4_4 = temp_s4_4;
// //         phi_a1 += -0x10;
// //     } while ((s32) temp_s4_4 < 2);

// //     this->windowContentVtx[temp_s3_13].unk20 = temp_s1_5;
// //     temp_s3_14 = (temp_s3_13 + 4) & 0xFFFF;
// //     this->windowContentVtx[temp_s3_13].v.ob[0] = temp_s1_5;
// //     temp_a0_76 = &this->windowContentVtx[temp_s3_13];
// //     temp_v1_74 = temp_a0_76->v.ob[0] + 0x40;
// //     temp_a0_76->unk30 = temp_v1_74;
// //     this->windowContentVtx[temp_s3_13].unk10 = temp_v1_74;
// //     temp_v1_75 = this->buttonYOffsets[5] - 0x34;
// //     this->windowContentVtx[temp_s3_13].unk12 = temp_v1_75;
// //     this->windowContentVtx[temp_s3_13].v.ob[1] = temp_v1_75;
// //     temp_a0_77 = &this->windowContentVtx[temp_s3_13];
// //     temp_v1_76 = temp_a0_77->v.ob[1] - 0x10;
// //     temp_a0_77->unk32 = temp_v1_76;
// //     this->windowContentVtx[temp_s3_13].unk22 = temp_v1_76;
// //     this->windowContentVtx[temp_s3_13].unk38 = 0x800;
// //     temp_a0_78 = &this->windowContentVtx[temp_s3_13];
// //     temp_a0_78->unk18 = (s16) temp_a0_78->unk38;
// //     temp_a1_19 = this->menuMode;

// //     if (((temp_a1_19 == 1) && ((s32) this->configMode >= 2)) || ((temp_a1_19 == 2) && (this->selectMode == 3))) {
// //         if (temp_a1_19 == 1) {
// //             temp_v0_8 = this->configMode;
// //             if ((temp_v0_8 == 4) || (temp_v0_8 == 7) || (temp_v0_8 == 0x16)) {
// //                 phi_s4_5 = *(&D_80814644 + (this->buttonIndex * 2));
// //             } else if ((temp_v0_8 == 0x19) || (temp_v0_8 == 0xC)) {
// //                 phi_s4_5 = *(&D_8081464C + (this->buttonIndex * 2));
// //             } else {
// //                 phi_s4_5 = *(&D_80814638 + (this->buttonIndex * 2));
// //             }
// //         } else {
// //             phi_s4_5 = *(&D_80814650 + (this->confirmButtonIndex * 2));
// //         }
// //         temp_v1_77 = this->windowPosX - 0xA;
// //         this->windowContentVtx[temp_s3_14].unk20 = temp_v1_77;
// //         this->windowContentVtx[temp_s3_14].v.ob[0] = temp_v1_77;
// //         temp_a0_79 = &this->windowContentVtx[temp_s3_14];
// //         temp_v1_78 = temp_a0_79->v.ob[0] + 0x48;
// //         temp_a0_79->unk30 = temp_v1_78;
// //         this->windowContentVtx[temp_s3_14].unk10 = temp_v1_78;
// //         temp_a1_20 = this->windowContentVtx;
// //         temp_v1_79 = temp_a1_20[phi_s4_5].v.ob[1] + 4;
// //         temp_a1_20[temp_s3_14].unk12 = temp_v1_79;
// //         this->windowContentVtx[temp_s3_14].v.ob[1] = temp_v1_79;
// //         temp_a0_80 = &this->windowContentVtx[temp_s3_14];
// //         temp_v1_80 = temp_a0_80->v.ob[1] - 0x18;
// //         temp_a0_80->unk32 = temp_v1_80;
// //         this->windowContentVtx[temp_s3_14].unk22 = temp_v1_80;
// //         this->windowContentVtx[temp_s3_14].unk38 = 0x900;
// //         temp_a0_81 = &this->windowContentVtx[temp_s3_14];
// //         temp_a0_81->unk18 = (s16) temp_a0_81->unk38;
// //         this->windowContentVtx[temp_s3_14].unk3A = 0x300;
// //         temp_a0_82 = &this->windowContentVtx[temp_s3_14];
// //         temp_a0_82->unk2A = (s16) temp_a0_82->unk3A;
// //     }
// //     temp_v1_81 = this->windowPosX + 0x3A;
// //     this->windowContentVtx[temp_s3_14].unk60 = temp_v1_81;
// //     this->windowContentVtx[temp_s3_14].unk40 = temp_v1_81;
// //     temp_a0_83 = &this->windowContentVtx[temp_s3_14];
// //     temp_v1_82 = temp_a0_83->unk40 + 0x80;
// //     temp_a0_83->unk70 = temp_v1_82;
// //     this->windowContentVtx[temp_s3_14].unk50 = temp_v1_82;
// //     temp_a1_21 = this->windowContentVtx;
// //     temp_v1_83 = temp_a1_21[*(&D_80814638 + (this->warningButtonIndex * 2))].v.ob[1];
// //     temp_a1_21[temp_s3_14].unk52 = temp_v1_83;
// //     this->windowContentVtx[temp_s3_14].unk42 = temp_v1_83;
// //     temp_a0_84 = &this->windowContentVtx[temp_s3_14];
// //     temp_v1_84 = temp_a0_84->unk42 - 0x10;
// //     temp_a0_84->unk72 = temp_v1_84;
// //     this->windowContentVtx[temp_s3_14].unk62 = temp_v1_84;
// //     this->windowContentVtx[temp_s3_14].unk78 = 0x1000;
// //     temp_a0_85 = &this->windowContentVtx[temp_s3_14];
// //     temp_a0_85->unk58 = (s16) temp_a0_85->unk78;
// }

s16 D_80814654[] = { 0x0088, 0x0194, 0x02A0, 0 };
s32 D_8081465C[] = { 0x0102BCB0, 0x0102CCB0, 0x0102DCB0, 0x0102ECB0 };
s32 D_8081466C[] = { 0x01030130, 0x01030130, 0x01030370, 0x010305B0 };
s32 D_8081467C[] = { 0x01030AF0, 0x01030C70, 0x01030DF0, 0x01030F70 };
s32 D_8081468C[] = {
    0x02000000, 0x02000100, 0x02000200, 0x02000300, 0x02000400,
    0x02000500, 0x02000600, 0x02000700, 0x02000800, 0x02000900,
};
s32 D_808146B4[] = { 0x00010101, 0x01010202, 0x02020203, 0x03030303 };
s32 D_808146C4[] = {
    0x00C800FF, 0x006400AA, 0x00AA00FF, 0x00FF0069, 0x00690000,
};
s32 D_808146D8[] = {
    0x00000050, 0x0000000A, 0x000A0050, 0x0028000A, 0x00000000,
};
s32 D_808146EC[] = { 0x00FF0046, 0x003200C8, 0x00000000 };
s32 D_808146F8[] = { 0x00320028, 0x003C00FF, 0x00FF00FF };
void FileSelect_DrawFileInfo(GameState*, s16);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_file_choose/FileSelect_DrawFileInfo.s")

extern void* D_010220B0[]; // gFileSelNameBoxTex
extern void* D_010277B0[]; // gOptionsButtonTex // Array on PAL
extern void* D_0102A030[]; // gFileSelDISKButtonTex in OoT
extern void* D_0102AAB0[]; // gFileSelBigButtonHighlightTex

void* sFileInfoBoxTextures[] = { 0x01022E30, 0x01023DF0, 0x01024DB0, 0x01025D70, 0x01026D30, 0x010287B0, 0x010293F0 };

void* D_80814720[] = { 0x01004980, 0x01005180, 0x01002980, 0x01003180, 0x01003980,
                       0x01004180, 0x01005980, 0x01006180, 0x01006980 };

void* D_80814744[] = { 0x01000000, 0x01000800, 0x01001000, 0x01001800, 0x01002000 };

void* sFileButtonTextures[] = { 0x0101EFB0, 0x0101F7B0, 0x0101FFB0 };

void* D_80814764[] = { 0x0101E7B0, 0x01020FB0, 0x010207B0, 0x01027FB0 };
extern int ENVIRONMENT;
extern int PRIMITIVE;
extern int TEXEL0;
void FileSelect_DrawWindowContents(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    s16 fileIndex;
    s16 temp;
    s16 i;
    s16 quadVtxIndex;

    if (1) {}

    OPEN_DISPS(this->state.gfxCtx);

    // draw title label
    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                      ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, this->titleAlpha[0]);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);

    gSPVertex(POLY_OPA_DISP++, &this->windowContentVtx[0], 4, 0);
    gDPLoadTextureBlock(POLY_OPA_DISP++, D_80814720[this->titleLabel], G_IM_FMT_IA, G_IM_SIZ_8b, 128, 16, 0,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                        G_TX_NOLOD);
    gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);

    // draw next title label
    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, this->titleAlpha[1]);
    gDPLoadTextureBlock(POLY_OPA_DISP++, D_80814720[this->nextTitleLabel], G_IM_FMT_IA, G_IM_SIZ_8b, 128, 16, 0,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                        G_TX_NOLOD);
    gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);

    temp = 4;

    gDPPipeSync(POLY_OPA_DISP++);

    // draw file info box (large box when a file is selected)
    for (fileIndex = 0; fileIndex < 3; fileIndex++, temp += 28) {
        if (fileIndex < 2) {
            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->unk_244B0[0], this->unk_244B0[1], this->unk_244B0[2],
                            this->fileInfoAlpha[fileIndex]);
            gSPVertex(POLY_OPA_DISP++, &this->windowContentVtx[temp], 28, 0);

            for (quadVtxIndex = 0, i = 0; i < 7; i++, quadVtxIndex += 4) {
                if ((i < 5) || ((this->unk_2446A[fileIndex] != 0) && (i >= 5))) {
                    gDPLoadTextureBlock(POLY_OPA_DISP++, sFileInfoBoxTextures[i], G_IM_FMT_IA, G_IM_SIZ_16b,
                                        sFileInfoBoxPartWidths[i], 56, 0, G_TX_NOMIRROR | G_TX_WRAP,
                                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
                    gSP1Quadrangle(POLY_OPA_DISP++, quadVtxIndex, quadVtxIndex + 2, quadVtxIndex + 3, quadVtxIndex + 1,
                                   0);
                }
            }
        }
    }

    gDPPipeSync(POLY_OPA_DISP++);

    for (i = 0; i < 3; i++, temp += 16) {
        if (i < 2) {
            // draw file button
            gSPVertex(POLY_OPA_DISP++, &this->windowContentVtx[temp], 16, 0);

            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, sWindowContentColors[0], sWindowContentColors[1],
                            sWindowContentColors[2], this->fileButtonAlpha[i]);
            gDPLoadTextureBlock(POLY_OPA_DISP++, sFileButtonTextures[i], G_IM_FMT_IA, G_IM_SIZ_16b, 64, 16, 0,
                                G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                G_TX_NOLOD, G_TX_NOLOD);
            gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);

            // draw file name box
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, sWindowContentColors[0], sWindowContentColors[1],
                            sWindowContentColors[2], this->nameBoxAlpha[i]);
            gDPLoadTextureBlock(POLY_OPA_DISP++, D_010220B0, G_IM_FMT_IA, G_IM_SIZ_16b, 108, 16, 0,
                                G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                G_TX_NOLOD, G_TX_NOLOD);
            gSP1Quadrangle(POLY_OPA_DISP++, 4, 6, 7, 5, 0);

            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, sWindowContentColors[0], sWindowContentColors[1],
                            sWindowContentColors[2], this->connectorAlpha[i]);
            gDPLoadTextureBlock(POLY_OPA_DISP++, D_01002800, G_IM_FMT_IA, G_IM_SIZ_8b, 24, 16, 0,
                                G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                G_TX_NOLOD, G_TX_NOLOD);
            gSP1Quadrangle(POLY_OPA_DISP++, 8, 10, 11, 9, 0);

            if (this->unk_2446A[i] != 0) {
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, sWindowContentColors[0], sWindowContentColors[1],
                                sWindowContentColors[2], this->nameBoxAlpha[i]);
                gDPLoadTextureBlock(POLY_OPA_DISP++, D_0102A030, G_IM_FMT_IA, G_IM_SIZ_16b, 52, 16, 0,
                                    G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                    G_TX_NOLOD, G_TX_NOLOD);
                gSP1Quadrangle(POLY_OPA_DISP++, 12, 14, 15, 13, 0);
            }
        }
    }

    // draw file info
    for (fileIndex = 0; fileIndex < 2; fileIndex++) {
        FileSelect_DrawFileInfo(&this->state, fileIndex);
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                      ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);
    gSPVertex(POLY_OPA_DISP++, &this->windowContentVtx[0x3AC], 20, 0);

    // draw primary action buttons (copy/erase)
    for (quadVtxIndex = 0, i = 0; i < 2; i++, quadVtxIndex += 4) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->unk_244B0[0], this->unk_244B0[1], this->unk_244B0[2],
                        this->actionButtonAlpha[i]);
        gDPLoadTextureBlock(POLY_OPA_DISP++, D_80814764[i], G_IM_FMT_IA, G_IM_SIZ_16b, 64, 16, 0,
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                            G_TX_NOLOD);
        gSP1Quadrangle(POLY_OPA_DISP++, quadVtxIndex, quadVtxIndex + 2, quadVtxIndex + 3, quadVtxIndex + 1, 0);
    }

    gDPPipeSync(POLY_OPA_DISP++);

    // draw confirm buttons (yes/quit)
    for (quadVtxIndex = 0, i = 0; i < 2; i++, quadVtxIndex += 4) {
        temp = this->confirmButtonTexIndices[i];
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->unk_244B0[0], this->unk_244B0[1], this->unk_244B0[2],
                        this->confirmButtonAlpha[i]);
        gDPLoadTextureBlock(POLY_OPA_DISP++, D_80814764[temp], G_IM_FMT_IA, G_IM_SIZ_16b, 64, 16, 0,
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                            G_TX_NOLOD);
        gSP1Quadrangle(POLY_OPA_DISP++, quadVtxIndex, quadVtxIndex + 2, quadVtxIndex + 3, quadVtxIndex + 1, 0);
    }

    // draw options button
    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->unk_244B0[0], this->unk_244B0[1], this->unk_244B0[2],
                    this->optionButtonAlpha);
    gDPLoadTextureBlock(POLY_OPA_DISP++, D_010277B0, G_IM_FMT_IA, G_IM_SIZ_16b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    gSP1Quadrangle(POLY_OPA_DISP++, 8, 10, 11, 9, 0);

    // draw highlight over currently selected button
    if (((this->menuMode == 1) && ((this->configMode == 2) || (this->configMode == 4) || (this->configMode == 7) ||
                                   (this->configMode == 12) || (this->configMode == 22) || (this->configMode == 25))) ||
        ((this->menuMode == 2) && (this->selectMode == 3))) {
        gDPPipeSync(POLY_OPA_DISP++);

        gDPSetCombineLERP(POLY_OPA_DISP++, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, 1, 0, PRIMITIVE, 0, TEXEL0, 0,
                          PRIMITIVE, 0);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->highlightColor[0], this->highlightColor[1],
                        this->highlightColor[2], this->highlightColor[3]);
        gDPLoadTextureBlock(POLY_OPA_DISP++, D_0102AAB0, G_IM_FMT_I, G_IM_SIZ_8b, 72, 24, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        gSP1Quadrangle(POLY_OPA_DISP++, 12, 14, 15, 13, 0);
    }

    // draw warning labels
    if (this->warningLabel > -1) {
        gDPPipeSync(POLY_OPA_DISP++);

        gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, this->emptyFileTextAlpha);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);
        gDPLoadTextureBlock(POLY_OPA_DISP++, D_80814744[this->warningLabel], G_IM_FMT_IA, G_IM_SIZ_8b, 128, 16, 0,
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                            G_TX_NOLOD);
        gSP1Quadrangle(POLY_OPA_DISP++, 16, 18, 19, 17, 0);
    }

    gDPPipeSync(POLY_OPA_DISP++);

    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA);

    CLOSE_DISPS(this->state.gfxCtx);
}

void FileSelect_DrawNameEntry(GameState*);
void FileSelect_DrawOptions(GameState*);

void FileSelect_ConfigModeDraw(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    OPEN_DISPS(this->state.gfxCtx);

    gDPPipeSync(POLY_OPA_DISP++);

    func_8012C8AC(this->state.gfxCtx);
    FileSelect_RenderView(this, 0.0f, 0.0f, 64.0f);
    FileSelect_SetWindowVtx(&this->state);
    FileSelect_SetWindowContentVtx(&this->state);

    if ((this->configMode != 36) && (this->configMode != 35)) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->unk_244B0[0], this->unk_244B0[1], this->unk_244B0[2],
                        this->windowAlpha);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);

        Matrix_Translate(0.0f, 0.0f, -93.6f, MTXMODE_NEW);
        Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);

        if (this->windowRot != 0) {
            Matrix_RotateXFApply(this->windowRot / 100.0f);
        }

        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(this->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        gSPVertex(POLY_OPA_DISP++, &this->windowVtx[0], 32, 0);
        gSPDisplayList(POLY_OPA_DISP++, D_010311F0);

        gSPVertex(POLY_OPA_DISP++, &this->windowVtx[32], 32, 0);
        gSPDisplayList(POLY_OPA_DISP++, D_01031408);

        gSPVertex(POLY_OPA_DISP++, &this->windowVtx[64], 16, 0);
        gSPDisplayList(POLY_OPA_DISP++, D_01031618);

        gDPPipeSync(POLY_OPA_DISP++);

        FileSelect_DrawWindowContents(&this->state);
    }

    // draw name entry menu
    if ((this->configMode >= 34) && (this->configMode <= 38)) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->unk_244B0[0], this->unk_244B0[1], this->unk_244B0[2],
                        this->windowAlpha);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);

        Matrix_Translate(0.0f, 0.0f, -93.6f, MTXMODE_NEW);
        Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
        Matrix_RotateXFApply((this->windowRot - 314.0f) / 100.0f);

        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(this->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        gSPVertex(POLY_OPA_DISP++, &this->windowVtx[0], 32, 0);
        gSPDisplayList(POLY_OPA_DISP++, D_010311F0);

        gSPVertex(POLY_OPA_DISP++, &this->windowVtx[32], 32, 0);
        gSPDisplayList(POLY_OPA_DISP++, D_01031408);

        gSPVertex(POLY_OPA_DISP++, &this->windowVtx[64], 16, 0);
        gSPDisplayList(POLY_OPA_DISP++, D_01031618);

        gDPPipeSync(POLY_OPA_DISP++);

        FileSelect_DrawNameEntry(&this->state);
    }

    // draw options menu
    if ((this->configMode >= 39) && (this->configMode <= 43)) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->unk_244B0[0], this->unk_244B0[1], this->unk_244B0[2],
                        this->windowAlpha);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);

        Matrix_Translate(0.0f, 0.0f, -93.6f, MTXMODE_NEW);
        Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
        Matrix_RotateXFApply((this->windowRot - 314.0f) / 100.0f);

        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(this->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        gSPVertex(POLY_OPA_DISP++, &this->windowVtx[0], 32, 0);
        gSPDisplayList(POLY_OPA_DISP++, D_010311F0);

        gSPVertex(POLY_OPA_DISP++, &this->windowVtx[32], 32, 0);
        gSPDisplayList(POLY_OPA_DISP++, D_01031408);

        gSPVertex(POLY_OPA_DISP++, &this->windowVtx[64], 16, 0);
        gSPDisplayList(POLY_OPA_DISP++, D_01031618);

        gDPPipeSync(POLY_OPA_DISP++);

        FileSelect_DrawOptions(&this->state);
    }

    gDPPipeSync(POLY_OPA_DISP++);

    FileSelect_RenderView(this, 0.0f, 0.0f, 64.0f);

    CLOSE_DISPS(this->state.gfxCtx);
}

void FileSelect_FadeMainToSelect(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    SramContext* sramCtx = &this->sramCtx;
    s16 i;

    for (i = 0; i < 3; i++) {
        if (i != this->buttonIndex) {
            this->fileButtonAlpha[i] -= 50;
            this->actionButtonAlpha[0] = this->actionButtonAlpha[1] = this->optionButtonAlpha =
                this->fileButtonAlpha[i];

            if (gSaveContext.unk_3F3F == 0) {
                if (SLOT_OCCUPIED(sramCtx, i)) {
                    this->nameAlpha[i] = this->nameBoxAlpha[i] = this->fileButtonAlpha[i];
                    this->connectorAlpha[i] -= 63;
                }
            } else {
                if (FILE_CHOOSE_SLOT_OCCUPIED(this, i)) {
                    this->nameAlpha[i] = this->nameBoxAlpha[i] = this->fileButtonAlpha[i];
                    this->connectorAlpha[i] -= 63;
                }
            }
        }
    }

    this->titleAlpha[0] -= 63;
    this->titleAlpha[1] += 63;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->actionTimer = 4;
        this->selectMode++;
        this->confirmButtonIndex = 0;
    }
}

// amount to move by to reach the top of the screen
s16 sFileYOffsets[] = { 0, 16, 32 };

void FileSelect_MoveSelectedFileToTop(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    s32 yStep;

    yStep = ABS_ALT(this->buttonYOffsets[this->buttonIndex] - sFileYOffsets[this->buttonIndex]) / this->actionTimer;
    this->buttonYOffsets[this->buttonIndex] += yStep;
    this->actionTimer--;

    if ((this->actionTimer == 0) || (this->buttonYOffsets[this->buttonIndex] == sFileYOffsets[this->buttonIndex])) {
        this->buttonYOffsets[3] = this->buttonYOffsets[4] = -24;
        this->actionTimer = 4;
        this->selectMode++;
    }
}

void FileSelect_FadeInFileInfo(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    this->fileInfoAlpha[this->buttonIndex] += 50;
    this->nameBoxAlpha[this->buttonIndex] -= 100;

    if (this->nameBoxAlpha[this->buttonIndex] <= 0) {
        this->nameBoxAlpha[this->buttonIndex] = 0;
    }
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->fileInfoAlpha[this->buttonIndex] = 200;
        this->actionTimer = 4;
        this->selectMode++;
    }

    this->confirmButtonAlpha[0] = this->confirmButtonAlpha[1] = this->fileInfoAlpha[this->buttonIndex];
}

void FileSelect_ConfirmFile(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    Input* input = &this->state.input[0];

    if (CHECK_BTN_ALL(input->press.button, BTN_START) || (CHECK_BTN_ALL(input->press.button, BTN_A))) {
        if (this->confirmButtonIndex == 0) {
            Rumble_Request(300.0f, 180, 20, 100);
            play_sound(NA_SE_SY_FSEL_DECIDE_L);
            this->selectMode = 6;
            func_801A4058(0xF);
        } else {
            play_sound(NA_SE_SY_FSEL_CLOSE);
            this->selectMode++;
        }
    } else if CHECK_BTN_ALL (input->press.button, BTN_B) {
        play_sound(NA_SE_SY_FSEL_CLOSE);
        this->selectMode++;
    } else if (ABS_ALT(this->stickRelY) >= 30) {
        play_sound(NA_SE_SY_FSEL_CURSOR);
        this->confirmButtonIndex ^= 1;
    }
}

void FileSelect_FadeOutFileInfo(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    this->fileInfoAlpha[this->buttonIndex] -= 200 / 4;
    this->nameBoxAlpha[this->buttonIndex] += 200 / 4;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->buttonYOffsets[3] = this->buttonYOffsets[4] = 0;
        this->nameBoxAlpha[this->buttonIndex] = 200;
        this->fileInfoAlpha[this->buttonIndex] = 0;
        this->nextTitleLabel = 0;
        this->actionTimer = 4;
        this->selectMode++;
    }
    this->confirmButtonAlpha[0] = this->confirmButtonAlpha[1] = this->fileInfoAlpha[this->buttonIndex];
}

void FileSelect_MoveSelectedFileToSlot(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    SramContext* sramCtx = &this->sramCtx;
    s32 yStep;
    s16 i;

    yStep = ABS_ALT(this->buttonYOffsets[this->buttonIndex]) / this->actionTimer;
    this->buttonYOffsets[this->buttonIndex] -= yStep;

    if (this->buttonYOffsets[this->buttonIndex] <= 0) {
        this->buttonYOffsets[this->buttonIndex] = 0;
    }

    for (i = 0; i < 3; i++) {
        if (i != this->buttonIndex) {
            this->fileButtonAlpha[i] += 200 / 4;

            if (this->fileButtonAlpha[i] >= 200) {
                this->fileButtonAlpha[i] = 200;
            }

            this->actionButtonAlpha[0] = this->actionButtonAlpha[1] = this->optionButtonAlpha =
                this->fileButtonAlpha[i];

            if (gSaveContext.unk_3F3F == 0) {
                if (SLOT_OCCUPIED(sramCtx, i)) {
                    this->nameBoxAlpha[i] = this->nameAlpha[i] = this->fileButtonAlpha[i];
                    this->connectorAlpha[i] += 255 / 4;
                }
            } else {
                if (FILE_CHOOSE_SLOT_OCCUPIED(this, i)) {
                    this->nameBoxAlpha[i] = this->nameAlpha[i] = this->fileButtonAlpha[i];
                    this->connectorAlpha[i] += 255 / 4;
                }
            }
        }
    }

    this->titleAlpha[0] -= 255 / 4;
    this->titleAlpha[1] += 255 / 4;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->titleAlpha[0] = 255;
        this->titleAlpha[1] = 0;
        this->titleLabel = this->nextTitleLabel;
        this->actionTimer = 4;
        this->menuMode = 1;
        this->configMode = 2;
        this->nextConfigMode = 2;
        this->selectMode = 0;
    }
}

void FileSelect_FadeOut(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    this->screenFillAlpha += 40;
    if (this->screenFillAlpha >= 255) {
        this->screenFillAlpha = 255;
        this->selectMode++;
    }
}

void FileSelect_LoadGame(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    u16 phi_v0;

    gSaveContext.fileNum = this->buttonIndex;
    Sram_OpenSave(this, &this->sramCtx);

    gSaveContext.gameMode = 0;

    STOP_GAMESTATE(&this->state);
    SET_NEXT_GAMESTATE_TEST(&this->state, Play_Init, PlayState);

    gSaveContext.respawnFlag = 0;
    gSaveContext.respawn[0].entranceIndex = 0xFFFF;
    gSaveContext.seqIndex = 0xFF;
    gSaveContext.nightSeqIndex = 0xFF;
    gSaveContext.showTitleCard = 1;
    gSaveContext.dogParams = 0;

    phi_v0 = 0;
    do {
        gSaveContext.unk_3DD0[phi_v0] = 0;
        phi_v0++;
    } while (phi_v0 < 7);

    gSaveContext.unk_3F26 = 0x32;
    gSaveContext.unk_3DC0 = 0;
    gSaveContext.healthAccumulator = 0;
    gSaveContext.unk_3F2C = 0;
    gSaveContext.unk_3F46 = 0;
    gSaveContext.skyboxTime = 0;
    gSaveContext.nextTransitionType = TRANS_NEXT_TYPE_DEFAULT;
    gSaveContext.cutsceneTrigger = 0;
    gSaveContext.unk_3F4D = 0;
    gSaveContext.nextDayTime = 0xFFFF;
    gSaveContext.unk_3DBB = 0;
    gSaveContext.buttonStatus[0] = 0;
    gSaveContext.buttonStatus[1] = 0;
    gSaveContext.buttonStatus[2] = 0;
    gSaveContext.buttonStatus[3] = 0;
    gSaveContext.buttonStatus[4] = 0;
    gSaveContext.unk_3F1E = 0;
    gSaveContext.unk_3F20 = 0;
    gSaveContext.unk_3F22 = 0;
    gSaveContext.unk_3F24 = 0;
    gSaveContext.save.playerData.tatlTimer = 0;
}

void (*gSelectModeUpdateFuncs[])(GameState*) = {
    FileSelect_FadeMainToSelect, FileSelect_MoveSelectedFileToTop,  FileSelect_FadeInFileInfo, FileSelect_ConfirmFile,
    FileSelect_FadeOutFileInfo,  FileSelect_MoveSelectedFileToSlot, FileSelect_FadeOut,        FileSelect_LoadGame,
};

void FileSelect_SelectModeUpdate(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    gSelectModeUpdateFuncs[this->selectMode](&this->state);
}

void FileSelect_SelectModeDraw(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    OPEN_DISPS(this->state.gfxCtx);

    gDPPipeSync(POLY_OPA_DISP++);

    func_8012C8AC(this->state.gfxCtx);
    FileSelect_RenderView(this, 0.0f, 0.0f, 64.0f);
    FileSelect_SetWindowVtx(&this->state);
    FileSelect_SetWindowContentVtx(&this->state);

    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->unk_244B0[0], this->unk_244B0[1], this->unk_244B0[2],
                    this->windowAlpha);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);

    Matrix_Translate(0.0f, 0.0f, -93.6f, MTXMODE_NEW);
    Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
    Matrix_RotateXFApply(this->windowRot / 100.0f);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(this->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPVertex(POLY_OPA_DISP++, &this->windowVtx[0], 32, 0);
    gSPDisplayList(POLY_OPA_DISP++, D_010311F0);

    gSPVertex(POLY_OPA_DISP++, &this->windowVtx[32], 32, 0);
    gSPDisplayList(POLY_OPA_DISP++, D_01031408);

    gSPVertex(POLY_OPA_DISP++, &this->windowVtx[64], 16, 0);
    gSPDisplayList(POLY_OPA_DISP++, D_01031618);

    FileSelect_DrawWindowContents(&this->state);
    gDPPipeSync(POLY_OPA_DISP++);
    FileSelect_RenderView(this, 0.0f, 0.0f, 64.0f);

    CLOSE_DISPS(this->state.gfxCtx);
}

void FileSelect_UpdateAndDrawSkybox(FileSelectState* this) {
    GraphicsContext* gfxCtx; // TODO: check if this temp is needed, or if it recasts thisx instead
    f32 eyeX;
    f32 eyeY;
    f32 eyeZ;

    gfxCtx = this->state.gfxCtx;
    OPEN_DISPS(gfxCtx);

    gDPPipeSync(POLY_OPA_DISP++);

    eyeX = 1000.0f * Math_CosS(sFileSelectSkyboxRotation) - 1000.0f * Math_SinS(sFileSelectSkyboxRotation);
    eyeY = -700.0f;
    eyeZ = 1000.0f * Math_SinS(sFileSelectSkyboxRotation) + 1000.0f * Math_CosS(sFileSelectSkyboxRotation);

    FileSelect_RenderView(this, eyeX, eyeY, eyeZ);
    SkyboxDraw_Draw(&this->skyboxCtx, this->state.gfxCtx, 1, this->envCtx.unk_13, eyeX, -700.0f, eyeZ);

    gDPSetTextureLUT(POLY_OPA_DISP++, G_TT_NONE);

    sFileSelectSkyboxRotation += -0xA;

    CLOSE_DISPS(gfxCtx);
}

void (*gFileSelectDrawFuncs[])(GameState*) = {
    func_8080BDAC,
    FileSelect_ConfigModeDraw,
    FileSelect_SelectModeDraw,
};
void (*gFileSelectUpdateFuncs[])(GameState*) = {
    func_8080BC58,
    FileSelect_ConfigModeUpdate,
    FileSelect_SelectModeUpdate,
};

// Please wait, Decide/Cancel, Decide/Save
void* D_808147B4[] = { 0x0100B2B0, 0x0100A030, 0x0100A930 };
s16 D_808147C0[] = { 144, 144, 152 };
s16 D_808147C8[] = { 90, 90, 86 };

void FileSelect_Main(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    Input* input = &this->state.input[0];
    s32 texIndex;
    s32 pad;

    func_8012CF0C(this->state.gfxCtx, 0, 1, 0, 0, 0);

    OPEN_DISPS(this->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x01, this->staticSegment);
    gSPSegment(POLY_OPA_DISP++, 0x02, this->parameterSegment);
    gSPSegment(POLY_OPA_DISP++, 0x06, this->titleSegment);

    this->stickRelX = input->rel.stick_x;
    this->stickRelY = input->rel.stick_y;

    if (this->stickRelX < -30) {
        if (this->stickXDir == -1) {
            this->inputTimerX--;
            if (this->inputTimerX < 0) {
                this->inputTimerX = 2;
            } else {
                this->stickRelX = 0;
            }
        } else {
            this->inputTimerX = 10;
            this->stickXDir = -1;
        }
    } else if (this->stickRelX > 30) {
        if (this->stickXDir == 1) {
            this->inputTimerX--;
            if (this->inputTimerX < 0) {
                this->inputTimerX = 2;
            } else {
                this->stickRelX = 0;
            }
        } else {
            this->inputTimerX = 10;
            this->stickXDir = 1;
        }
    } else {
        this->stickXDir = 0;
    }

    if (this->stickRelY < -30) {
        if (this->stickYDir == -1) {
            this->inputTimerY--;
            if (this->inputTimerY < 0) {
                this->inputTimerY = 2;
            } else {
                this->stickRelY = 0;
            }
        } else {
            this->inputTimerY = 10;
            this->stickYDir = -1;
        }
    } else if (this->stickRelY > 30) {
        if (this->stickYDir == 1) {
            this->inputTimerY--;
            if (this->inputTimerY < 0) {
                this->inputTimerY = 2;
            } else {
                this->stickRelY = 0;
            }
        } else {
            this->inputTimerY = 10;
            this->stickYDir = 1;
        }
    } else {
        this->stickYDir = 0;
    }

    this->emptyFileTextAlpha = 0;

    FileSelect_PulsateCursor(this);
    gFileSelectUpdateFuncs[this->menuMode](&this->state);
    FileSelect_UpdateAndDrawSkybox(this);
    gFileSelectDrawFuncs[this->menuMode](&this->state);

    func_8012C628(this->state.gfxCtx);

    gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                      ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 100, 255, 255, this->controlsAlpha);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);

    if (this->sramCtx.status > 0) {
        texIndex = 0;
    } else if ((this->configMode > 38) && (this->configMode < 44)) {
        texIndex = 2;
    } else {
        texIndex = 1;
    }

    gDPLoadTextureBlock(POLY_OPA_DISP++, D_808147B4[texIndex], G_IM_FMT_IA, G_IM_SIZ_8b, D_808147C0[texIndex], 16, 0,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                        G_TX_NOLOD);

    gSPTextureRectangle(POLY_OPA_DISP++, D_808147C8[texIndex] << 2, 204 << 2,
                        (D_808147C8[texIndex] + D_808147C0[texIndex]) << 2, (204 + 16) << 2, G_TX_RENDERTILE, 0, 0,
                        1 << 10, 1 << 10);

    gDPPipeSync(POLY_OPA_DISP++);
    gSPDisplayList(POLY_OPA_DISP++, sScreenFillSetupDL);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 0, 0, 0, this->screenFillAlpha);
    gSPDisplayList(POLY_OPA_DISP++, D_0E000000.fillRect);

    CLOSE_DISPS(this->state.gfxCtx);
}

void FileSelect_InitContext(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    EnvironmentContext* envCtx = &this->envCtx;

    Sram_Alloc(&this->state, &this->sramCtx);
    func_801457CC(&this->state, &this->sramCtx);

    // this->menuMode = FS_MENU_MODE_INIT;
    this->menuMode = 0;

    this->buttonIndex = this->selectMode = this->unk_2448E = this->fileNum = this->confirmButtonIndex = 0;

    this->confirmButtonTexIndices[0] = 2;
    this->confirmButtonTexIndices[1] = 3;
    this->titleLabel = 0;
    this->nextTitleLabel = 1;

    this->screenFillAlpha = 255;
    this->highlightPulseDir = 1;
    this->unk_244F4 = 0xC;
    this->highlightColor[0] = 155;
    this->highlightColor[1] = 255;
    this->highlightColor[2] = 255;
    this->highlightColor[3] = 70;
    this->configMode = 0;
    this->windowRot = 0.0f;

    this->stickXDir = this->inputTimerX = 0;

    this->stickYDir = this->inputTimerY = 0;

    this->kbdX = this->kbdY = this->unk_24516 = 0;

    // this->kbdButton = FS_KBD_BTN_NONE;
    this->kbdButton = 99;

    // windowColor
    this->unk_244B0[0] = 100;
    this->unk_244B0[1] = 150;
    this->unk_244B0[2] = 255;

    this->windowAlpha = this->titleAlpha[0] = this->titleAlpha[1] = this->fileButtonAlpha[0] =
        this->fileButtonAlpha[1] = this->fileButtonAlpha[2] = this->nameBoxAlpha[0] = this->nameBoxAlpha[1] =
            this->nameBoxAlpha[2] = this->nameAlpha[0] = this->nameAlpha[1] = this->nameAlpha[2] =
                this->connectorAlpha[0] = this->connectorAlpha[1] = this->connectorAlpha[2] = this->fileInfoAlpha[0] =
                    this->fileInfoAlpha[1] = this->fileInfoAlpha[2] = this->actionButtonAlpha[0] =
                        this->actionButtonAlpha[1] = this->actionButtonAlpha[2] = this->actionButtonAlpha[3] =
                            this->optionButtonAlpha = this->nameEntryBoxAlpha = this->controlsAlpha =
                                this->emptyFileTextAlpha = 0;

    this->windowPosX = 6;
    this->actionTimer = 4;
    this->warningLabel = -1;

    this->warningButtonIndex = this->buttonYOffsets[0] = this->buttonYOffsets[1] = this->buttonYOffsets[2] =
        this->buttonYOffsets[3] = this->buttonYOffsets[4] = this->buttonYOffsets[5] = this->unk_24492[0] =
            this->unk_24492[1] = this->unk_24492[2] = 0;

    this->unk_2451E[0] = 0;
    this->unk_2451E[1] = 3;
    this->unk_2451E[2] = 6;
    this->unk_2451E[3] = 8;
    this->unk_2451E[4] = 10;
    this->highlightTimer = 20;

    ShrinkWindow_SetLetterboxTarget(0);
    gSaveContext.skyboxTime = 0;
    gSaveContext.save.time = 0;

    // Skybox_Init
    func_801434E4(&this->state, &this->skyboxCtx, 1);
    R_ENV_TIME_INCREMENT = 10;

    // TODO: copy some variable names from OoT
    envCtx->unk_19 = 0;
    envCtx->unk_1A = 0;
    envCtx->unk_21 = 0;
    envCtx->unk_22 = 0;
    envCtx->unk_44 = 0;
    envCtx->unk_10 = 99;
    envCtx->unk_11 = 99;
    envCtx->unk_1F = 0;
    envCtx->unk_20 = 0;
    envCtx->unk_C1 = 0;
    envCtx->unk_17 = 2;
    envCtx->skyboxDisabled = 0;
    envCtx->unk_13 = 0;
    envCtx->unk_84 = 0.0f;
    envCtx->unk_88 = 0.0f;

    gSaveContext.buttonStatus[0] = 0;
    gSaveContext.buttonStatus[1] = 0;
    gSaveContext.buttonStatus[2] = 0;
    gSaveContext.buttonStatus[3] = 0;
    gSaveContext.buttonStatus[4] = 0;
}

void FileSelect_Destroy(GameState* this) {
    ShrinkWindow_Destroy();
}

void FileSelect_Init(GameState* thisx) {
    s32 pad;
    FileSelectState* this = (FileSelectState*)thisx;
    size_t size;

    Game_SetFramerateDivisor(&this->state, 1);
    Matrix_Init(&this->state);
    ShrinkWindow_Init();
    View_Init(&this->view, this->state.gfxCtx);
    this->state.main = FileSelect_Main;
    this->state.destroy = FileSelect_Destroy;
    FileSelect_InitContext(&this->state);
    Font_LoadOrderedFont(&this->font);

    size = SEGMENT_ROM_SIZE(title_static);
    this->staticSegment = THA_AllocEndAlign16(&this->state.heap, size);
    DmaMgr_SendRequest0(this->staticSegment, SEGMENT_ROM_START(title_static), size);

    size = SEGMENT_ROM_SIZE(parameter_static);
    this->parameterSegment = THA_AllocEndAlign16(&this->state.heap, size);
    DmaMgr_SendRequest0(this->parameterSegment, SEGMENT_ROM_START(parameter_static), size);

    size = gObjectTable[OBJECT_MAG].vromEnd - gObjectTable[OBJECT_MAG].vromStart;
    this->titleSegment = THA_AllocEndAlign16(&this->state.heap, size);
    DmaMgr_SendRequest0(this->titleSegment, gObjectTable[OBJECT_MAG].vromStart, size);

    audio_setBGM(0xA);
    func_801A3238(SEQ_PLAYER_BGM_MAIN, NA_BGM_FILE_SELECT, 0, 7, 1);
}
