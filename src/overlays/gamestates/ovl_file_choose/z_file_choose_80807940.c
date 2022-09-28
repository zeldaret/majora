/*
 * File: z_file_choose_80807940.c
 * Overlay: ovl_file_choose
 * Description:
 */

#include "prevent_bss_reordering.h"
#include "z_file_choose.h"
#include "z64rumble.h"
#include "misc/title_static/title_static.h"
#include "overlays/ovl_File_Choose/ovl_file_choose.h"

extern UNK_TYPE D_01002800;
extern UNK_TYPE D_01007980;
extern UNK_TYPE D_0102A6B0;
extern UNK_TYPE D_0102B170;
extern UNK_TYPE D_010310F0;
extern UNK_TYPE D_010311F0;

// there are uses of D_0E000000.fillRect (appearing as D_0E0002E0) in this file
extern GfxMasterList D_0E000000;

extern u8 D_808141F0[];

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

TexturePtr sBackspaceEndTextures[] = { gFileSelBackspaceButtonTex, gFileSelENDButtonENGTex };

u16 sBackspaceEndWidths[] = { 28, 44 };

s16 D_80814434[] = {
    -30, -16, -6, 4, 14, 24, 34, 44, 54, -16, -16, 0,
};

s16 D_8081444C[] = {
    72, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 0,
};

void FileSelect_DrawTexQuadI4(GraphicsContext* gfxCtx, TexturePtr texture, s16 point) {
    OPEN_DISPS(gfxCtx);

    gDPLoadTextureBlock_4b(POLY_OPA_DISP++, texture, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                           G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    gSP1Quadrangle(POLY_OPA_DISP++, point, point + 2, point + 3, point + 1, 0);

    CLOSE_DISPS(gfxCtx);
}

void FileSelect_DrawMultiTexQuadI4(GraphicsContext* gfxCtx, TexturePtr texture1, TexturePtr texture2, s16 point) {
    OPEN_DISPS(gfxCtx);

    gDPLoadTextureBlock_4b(POLY_OPA_DISP++, texture1, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                           G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    gDPLoadMultiBlock_4b(POLY_OPA_DISP++, texture2, 0x0080, 1, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    gSP1Quadrangle(POLY_OPA_DISP++, point, point + 2, point + 3, point + 1, 0);

    CLOSE_DISPS(gfxCtx);
}

void FileSelect_SetKeyboardVtx(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    s16 phi_t2;
    s16 phi_t0;
    s16 phi_t3;
    s16 phi_s1;
    s16 phi_t1;
    s16 phi_s2;

    this->keyboardVtx = GRAPH_ALLOC(this->state.gfxCtx, sizeof(Vtx) * 4 * 5 * 13);

    phi_s1 = 0x26;

    for (phi_t2 = 0, phi_s2 = 0, phi_t3 = 0; phi_s2 < 5; phi_s2++) {
        phi_t0 = -0x60;

        for (phi_t1 = 0; phi_t1 < 13; phi_t1++, phi_t3 += 4, phi_t2++) {
            //! @bug D_80814304 is accessed out of bounds when drawing the empty space character (value of 64). Under
            //! normal circumstances it reads a halfword from sNameLabelTextures.
            this->keyboardVtx[phi_t3].v.ob[0] = this->keyboardVtx[phi_t3 + 2].v.ob[0] = D_80814304[phi_t2] + phi_t0;

            this->keyboardVtx[phi_t3 + 1].v.ob[0] = this->keyboardVtx[phi_t3 + 3].v.ob[0] =
                D_80814304[phi_t2] + phi_t0 + 12;

            this->keyboardVtx[phi_t3].v.ob[1] = this->keyboardVtx[phi_t3 + 1].v.ob[1] = phi_s1;

            this->keyboardVtx[phi_t3 + 2].v.ob[1] = this->keyboardVtx[phi_t3 + 3].v.ob[1] = phi_s1 - 12;

            this->keyboardVtx[phi_t3].v.ob[2] = this->keyboardVtx[phi_t3 + 1].v.ob[2] =
                this->keyboardVtx[phi_t3 + 2].v.ob[2] = this->keyboardVtx[phi_t3 + 3].v.ob[2] = 0;

            this->keyboardVtx[phi_t3].v.flag = this->keyboardVtx[phi_t3 + 1].v.flag =
                this->keyboardVtx[phi_t3 + 2].v.flag = this->keyboardVtx[phi_t3 + 3].v.flag = 0;

            this->keyboardVtx[phi_t3].v.tc[0] = this->keyboardVtx[phi_t3].v.tc[1] =
                this->keyboardVtx[phi_t3 + 1].v.tc[1] = this->keyboardVtx[phi_t3 + 2].v.tc[0] = 0;

            this->keyboardVtx[phi_t3 + 1].v.tc[0] = this->keyboardVtx[phi_t3 + 2].v.tc[1] =
                this->keyboardVtx[phi_t3 + 3].v.tc[0] = this->keyboardVtx[phi_t3 + 3].v.tc[1] = 0x200;

            this->keyboardVtx[phi_t3].v.cn[0] = this->keyboardVtx[phi_t3 + 1].v.cn[0] =
                this->keyboardVtx[phi_t3 + 2].v.cn[0] = this->keyboardVtx[phi_t3 + 3].v.cn[0] =
                    this->keyboardVtx[phi_t3].v.cn[1] = this->keyboardVtx[phi_t3 + 1].v.cn[1] =
                        this->keyboardVtx[phi_t3 + 2].v.cn[1] = this->keyboardVtx[phi_t3 + 3].v.cn[1] =
                            this->keyboardVtx[phi_t3].v.cn[2] = this->keyboardVtx[phi_t3 + 1].v.cn[2] =
                                this->keyboardVtx[phi_t3 + 2].v.cn[2] = this->keyboardVtx[phi_t3 + 3].v.cn[2] =
                                    this->keyboardVtx[phi_t3].v.cn[3] = this->keyboardVtx[phi_t3 + 1].v.cn[3] =
                                        this->keyboardVtx[phi_t3 + 2].v.cn[3] = this->keyboardVtx[phi_t3 + 3].v.cn[3] =
                                            255;

            phi_t0 += 0x10;
        }

        phi_s1 -= 0x10;
    }

    this->keyboard2Vtx = GRAPH_ALLOC(this->state.gfxCtx, sizeof(Vtx) * 24);

    for (phi_t1 = 0, phi_t3 = 0; phi_t3 < 6; phi_t3++, phi_t1 += 4) {

        this->keyboard2Vtx[phi_t1 + 0].v.ob[0] = this->keyboard2Vtx[phi_t1 + 2].v.ob[0] = D_80814404[phi_t3] + 1;

        this->keyboard2Vtx[phi_t1 + 1].v.ob[0] = this->keyboard2Vtx[phi_t1 + 3].v.ob[0] =
            this->keyboard2Vtx[phi_t1 + 0].v.ob[0] + D_80814410[phi_t3] - 2;

        this->keyboard2Vtx[phi_t1 + 0].v.ob[1] = this->keyboard2Vtx[phi_t1 + 1].v.ob[1] = D_8081441C[phi_t3] - 1;

        this->keyboard2Vtx[phi_t1 + 2].v.ob[1] = this->keyboard2Vtx[phi_t1 + 3].v.ob[1] =
            this->keyboard2Vtx[phi_t1 + 0].v.ob[1] - 0xE;

        this->keyboard2Vtx[phi_t1 + 0].v.ob[2] = this->keyboard2Vtx[phi_t1 + 1].v.ob[2] =
            this->keyboard2Vtx[phi_t1 + 2].v.ob[2] = this->keyboard2Vtx[phi_t1 + 3].v.ob[2] = 0;

        this->keyboard2Vtx[phi_t1 + 0].v.flag = this->keyboard2Vtx[phi_t1 + 1].v.flag =
            this->keyboard2Vtx[phi_t1 + 2].v.flag = this->keyboard2Vtx[phi_t1 + 3].v.flag = 0;

        this->keyboard2Vtx[phi_t1 + 0].v.tc[0] = this->keyboard2Vtx[phi_t1 + 0].v.tc[1] =
            this->keyboard2Vtx[phi_t1 + 1].v.tc[1] = this->keyboard2Vtx[phi_t1 + 2].v.tc[0] = 0;

        this->keyboard2Vtx[phi_t1 + 1].v.tc[0] = this->keyboard2Vtx[phi_t1 + 3].v.tc[0] = D_80814410[phi_t3] << 5;

        this->keyboard2Vtx[phi_t1 + 2].v.tc[1] = this->keyboard2Vtx[phi_t1 + 3].v.tc[1] = 0x200;

        this->keyboard2Vtx[phi_t1 + 0].v.cn[0] = this->keyboard2Vtx[phi_t1 + 1].v.cn[0] =
            this->keyboard2Vtx[phi_t1 + 2].v.cn[0] = this->keyboard2Vtx[phi_t1 + 3].v.cn[0] =
                this->keyboard2Vtx[phi_t1 + 0].v.cn[1] = this->keyboard2Vtx[phi_t1 + 1].v.cn[1] =
                    this->keyboard2Vtx[phi_t1 + 2].v.cn[1] = this->keyboard2Vtx[phi_t1 + 3].v.cn[1] =
                        this->keyboard2Vtx[phi_t1 + 0].v.cn[2] = this->keyboard2Vtx[phi_t1 + 1].v.cn[2] =
                            this->keyboard2Vtx[phi_t1 + 2].v.cn[2] = this->keyboard2Vtx[phi_t1 + 3].v.cn[2] =
                                this->keyboard2Vtx[phi_t1 + 0].v.cn[3] = this->keyboard2Vtx[phi_t1 + 1].v.cn[3] =
                                    this->keyboard2Vtx[phi_t1 + 2].v.cn[3] = this->keyboard2Vtx[phi_t1 + 3].v.cn[3] =
                                        255;
    }
}

/**
 * Set vertices used by all elements of the name entry screen that are NOT the keyboard.
 * This includes the cursor highlight, the name entry plate and characters, and the buttons.
 */
void FileSelect_SetNameEntryVtx(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    Font* font = &this->font;
    u8 temp;
    s16 var_s0;
    s16 var_t1;
    s16 sp108;

    OPEN_DISPS(this->state.gfxCtx);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                      ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, this->titleAlpha[0]);

    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);
    gSPVertex(POLY_OPA_DISP++, this->keyboard2Vtx, 24, 0);
    gDPLoadTextureBlock(POLY_OPA_DISP++, gFileSelNameENGTex, G_IM_FMT_IA, G_IM_SIZ_8b, 56, 16, 0,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                        G_TX_NOLOD);
    gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);
    gDPPipeSync(POLY_OPA_DISP++);

    for (var_t1 = 0, var_s0 = 0x10; var_t1 < 2; var_t1++, var_s0 += 4) {
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->windowColor[0], this->windowColor[1], this->windowColor[2], 255);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);
        gDPLoadTextureBlock(POLY_OPA_DISP++, sBackspaceEndTextures[var_t1], G_IM_FMT_IA, G_IM_SIZ_16b,
                            sBackspaceEndWidths[var_t1], 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        gSP1Quadrangle(POLY_OPA_DISP++, var_s0, var_s0 + 2, var_s0 + 3, var_s0 + 1, 0);
    }

    this->nameEntryVtx = GRAPH_ALLOC(this->state.gfxCtx, 44 * sizeof(Vtx));

    for (var_s0 = 0, var_t1 = 0; var_t1 < 44; var_t1 += 4, var_s0++) {
        if ((var_s0 > 0) && (var_s0 < 9)) {
            temp = this->playerName[this->buttonIndex][var_s0 - 1];

            this->nameEntryVtx[var_t1].v.ob[0] = this->nameEntryVtx[var_t1 + 2].v.ob[0] =
                D_80814434[var_s0] + this->nameEntryBoxPosX + D_80814280[temp];

            this->nameEntryVtx[var_t1 + 1].v.ob[0] = this->nameEntryVtx[var_t1 + 3].v.ob[0] =
                this->nameEntryVtx[var_t1].v.ob[0] + 0xA;
        } else {
            this->nameEntryVtx[var_t1].v.ob[0] = this->nameEntryVtx[var_t1 + 2].v.ob[0] =
                D_80814434[var_s0] + this->nameEntryBoxPosX;

            this->nameEntryVtx[var_t1 + 1].v.ob[0] = this->nameEntryVtx[var_t1 + 3].v.ob[0] =
                this->nameEntryVtx[var_t1].v.ob[0] + 0xA;
        }

        this->nameEntryVtx[var_t1].v.ob[1] = this->nameEntryVtx[var_t1 + 1].v.ob[1] = D_8081444C[var_s0];

        this->nameEntryVtx[var_t1 + 2].v.ob[1] = this->nameEntryVtx[var_t1 + 3].v.ob[1] =
            this->nameEntryVtx[var_t1].v.ob[1] - 0xA;

        this->nameEntryVtx[var_t1].v.ob[2] = this->nameEntryVtx[var_t1 + 1].v.ob[2] =
            this->nameEntryVtx[var_t1 + 2].v.ob[2] = this->nameEntryVtx[var_t1 + 3].v.ob[2] = 0;

        this->nameEntryVtx[var_t1].v.flag = this->nameEntryVtx[var_t1 + 1].v.flag =
            this->nameEntryVtx[var_t1 + 2].v.flag = this->nameEntryVtx[var_t1 + 3].v.flag = 0;

        this->nameEntryVtx[var_t1].v.tc[0] = this->nameEntryVtx[var_t1].v.tc[1] =
            this->nameEntryVtx[var_t1 + 1].v.tc[1] = this->nameEntryVtx[var_t1 + 2].v.tc[0] = 0;

        this->nameEntryVtx[var_t1 + 1].v.tc[0] = this->nameEntryVtx[var_t1 + 2].v.tc[1] =
            this->nameEntryVtx[var_t1 + 3].v.tc[0] = this->nameEntryVtx[var_t1 + 3].v.tc[1] = 0x200;

        this->nameEntryVtx[var_t1].v.cn[0] = this->nameEntryVtx[var_t1 + 1].v.cn[0] =
            this->nameEntryVtx[var_t1 + 2].v.cn[0] = this->nameEntryVtx[var_t1 + 3].v.cn[0] =
                this->nameEntryVtx[var_t1].v.cn[1] = this->nameEntryVtx[var_t1 + 1].v.cn[1] =
                    this->nameEntryVtx[var_t1 + 2].v.cn[1] = this->nameEntryVtx[var_t1 + 3].v.cn[1] =
                        this->nameEntryVtx[var_t1].v.cn[2] = this->nameEntryVtx[var_t1 + 1].v.cn[2] =
                            this->nameEntryVtx[var_t1 + 2].v.cn[2] = this->nameEntryVtx[var_t1 + 3].v.cn[2] =
                                this->nameEntryVtx[var_t1].v.cn[3] = this->nameEntryVtx[var_t1 + 1].v.cn[3] =
                                    this->nameEntryVtx[var_t1 + 2].v.cn[3] = this->nameEntryVtx[var_t1 + 3].v.cn[3] =
                                        0xFF;
    }

    this->nameEntryVtx[1].v.ob[0] = this->nameEntryVtx[3].v.ob[0] = this->nameEntryVtx[0].v.ob[0] + 0x6C;
    this->nameEntryVtx[2].v.ob[1] = this->nameEntryVtx[3].v.ob[1] = this->nameEntryVtx[0].v.ob[1] - 0x10;
    this->nameEntryVtx[1].v.tc[0] = this->nameEntryVtx[3].v.tc[0] = 0xD80;

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                      ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->windowColor[0], this->windowColor[1], this->windowColor[2],
                    this->nameEntryBoxAlpha);
    gSPVertex(POLY_OPA_DISP++, this->nameEntryVtx, 4, 0);

    gDPLoadTextureBlock(POLY_OPA_DISP++, gFileSelFileNameBoxTex, G_IM_FMT_IA, G_IM_SIZ_16b, 108, 16, 0,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                        G_TX_NOLOD);
    gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);
    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineLERP(POLY_OPA_DISP++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0,
                      PRIMITIVE, 0);
    gSPVertex(POLY_OPA_DISP++, this->nameEntryVtx + 4, 32, 0);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, this->nameEntryBoxAlpha);

    for (sp108 = 0, var_s0 = 0; var_s0 < 0x20; var_s0 += 4, sp108++) {
        FileSelect_DrawTexQuadI4(this->state.gfxCtx,
                                 font->fontBuf + this->playerName[this->buttonIndex][sp108] * FONT_CHAR_TEX_SIZE,
                                 var_s0);
    }

    this->nameEntryVtx[0x25].v.tc[0] = this->nameEntryVtx[0x26].v.tc[1] = this->nameEntryVtx[0x27].v.tc[0] =
        this->nameEntryVtx[0x27].v.tc[1] = this->nameEntryVtx[0x29].v.tc[0] = this->nameEntryVtx[0x2A].v.tc[1] =
            this->nameEntryVtx[0x2B].v.tc[0] = this->nameEntryVtx[0x2B].v.tc[1] = 0x300;

    if ((this->kbdButton == 0) || (this->kbdButton == 1) || (this->kbdButton == 4)) {
        this->nameEntryVtx[0x29].v.tc[0] = this->nameEntryVtx[0x2B].v.tc[0] = 0x700;
    } else if ((this->kbdButton == 2) || (this->kbdButton == 3)) {
        this->nameEntryVtx[0x29].v.tc[0] = this->nameEntryVtx[0x2B].v.tc[0] = 0x500;
    }

    CLOSE_DISPS(this->state.gfxCtx);
}

void FileSelect_DrawKeyboard(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    Font* font = &this->font;
    s16 i;
    s16 tmp;
    s16 vtx;

    OPEN_DISPS(this->state.gfxCtx);

    func_8012C8AC(this->state.gfxCtx);
    gDPSetCycleType(POLY_OPA_DISP++, G_CYC_2CYCLE);
    gDPSetRenderMode(POLY_OPA_DISP++, G_RM_PASS, G_RM_XLU_SURF2);
    gDPSetCombineLERP(POLY_OPA_DISP++, 0, 0, 0, PRIMITIVE, TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, 0, 0, 0, COMBINED, 0,
                      0, 0, COMBINED);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, this->unk_24514, 255, 255, 255, 255);

    for (i = 0, vtx = 0; vtx < 0x100; vtx += 32) {
        gSPVertex(POLY_OPA_DISP++, &this->keyboardVtx[vtx], 32, 0);

        for (tmp = 0; tmp < 32; i++, tmp += 4) {
            FileSelect_DrawTexQuadI4(this->state.gfxCtx, font->fontBuf + D_808141F0[i] * FONT_CHAR_TEX_SIZE, tmp);
        }
    }

    gSPVertex(POLY_OPA_DISP++, &this->keyboardVtx[0x100], 4, 0);
    FileSelect_DrawTexQuadI4(this->state.gfxCtx, font->fontBuf + D_808141F0[i] * FONT_CHAR_TEX_SIZE, 0);

    CLOSE_DISPS(this->state.gfxCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_file_choose/FileSelect_DrawNameEntry.s")

/**
 * Fade in the name entry box and slide it to the center of the screen from the right side.
 * After the name entry box is in place, init the keyboard/cursor and change modes.
 * Update function for `CM_START_NAME_ENTRY`
 */
void FileSelect_StartNameEntry(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    this->nameEntryBoxAlpha += 25;

    if (this->nameEntryBoxAlpha >= 255) {
        this->nameEntryBoxAlpha = 255;
    }

    this->nameEntryBoxPosX -= 30;

    if (this->nameEntryBoxPosX <= 0) {
        this->nameEntryBoxPosX = 0;
        this->nameEntryBoxAlpha = 255;
        this->kbdX = 0;
        this->kbdY = 0;
        this->kbdButton = 99;
        this->configMode = CM_NAME_ENTRY;
    }
}

/**
 * Update the keyboard cursor and play sound effects at the appropriate times.
 * There are many special cases for warping the cursor depending on where
 * the cursor currently is.
 * Update function for `CM_NAME_ENTRY`
 */
void FileSelect_UpdateKeyboardCursor(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    s16 prevKbdX;

    this->kbdButton = 99;

    if (this->kbdY != 5) {
        if (this->stickAdjX < -30) {
            play_sound(NA_SE_SY_FSEL_CURSOR);
            this->charIndex--;
            this->kbdX--;
            if (this->kbdX < 0) {
                this->kbdX = 12;
                this->charIndex = (this->kbdY * 13) + this->kbdX;
            }
        } else if (this->stickAdjX > 30) {
            play_sound(NA_SE_SY_FSEL_CURSOR);
            this->charIndex++;
            this->kbdX++;
            if (this->kbdX > 12) {
                this->kbdX = 0;
                this->charIndex = (this->kbdY * 13) + this->kbdX;
            }
        }
    } else {
        if (this->stickAdjX < -30) {
            play_sound(NA_SE_SY_FSEL_CURSOR);
            this->kbdX--;
            if (this->kbdX < 3) {
                this->kbdX = 4;
            }
        } else if (this->stickAdjX > 30) {
            play_sound(NA_SE_SY_FSEL_CURSOR);
            this->kbdX++;
            if (this->kbdX > 4) {
                this->kbdX = 3;
            }
        }
    }

    if (this->stickAdjY > 30) {
        play_sound(NA_SE_SY_FSEL_CURSOR);

        this->kbdY--;

        if (this->kbdY < 0) {
            // dont go to bottom row
            if (this->kbdX < 8) {
                this->kbdY = 4;
                this->charIndex = (s32)(this->kbdX + 52);
            } else {
                this->kbdY = 5;
                this->charIndex += 52;
                prevKbdX = this->kbdX;

                if (this->kbdX < 10) {
                    this->kbdX = 3;
                } else if (this->kbdX < 13) {
                    this->kbdX = 4;
                }
                this->unk_2451E[this->kbdX] = prevKbdX;
            }
        } else {
            this->charIndex -= 13;

            if (this->kbdY == 4) {
                this->charIndex = 52;
                this->kbdX = this->unk_2451E[this->kbdX];
                this->charIndex += this->kbdX;
            }
        }
    } else if (this->stickAdjY < -30) {
        play_sound(NA_SE_SY_FSEL_CURSOR);
        this->kbdY++;

        if (this->kbdY > 5) {
            this->kbdY = 0;
            this->kbdX = this->unk_2451E[this->kbdX];
            this->charIndex = this->kbdX;
        } else {
            this->charIndex += 13;

            if (this->kbdY == 5) {
                if (this->kbdX < 8) {
                    this->kbdY = 0;
                    this->charIndex = this->kbdX;
                } else {
                    prevKbdX = this->kbdX;

                    if (this->kbdX < 3) {
                        this->kbdX = 0;
                    } else if (this->kbdX < 6) {
                        this->kbdX = 1;
                    } else if (this->kbdX < 8) {
                        this->kbdX = 2;
                    } else if (this->kbdX < 10) {
                        this->kbdX = 3;
                    } else if (this->kbdX < 13) {
                        this->kbdX = 4;
                    }
                    this->unk_2451E[this->kbdX] = prevKbdX;
                }
            }
        }
    }
    if (this->kbdY == 5) {
        this->kbdButton = this->kbdX;
    }
}

void func_8080A3CC(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    SramContext* sramCtx = &this->sramCtx;

    func_80147068(sramCtx);

    if (sramCtx->status == 0) {
        this->configMode = 0x26;
    }
}

/**
 * This function is mostly a copy paste of `FileSelect_StartNameEntry`.
 * The name entry box fades and slides in even though it is not visible.
 * After this is complete, change to the options config mode.
 * Update function for `CM_START_OPTIONS`
 */
void FileSelect_StartOptions(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    this->nameEntryBoxAlpha += 25;

    if (this->nameEntryBoxAlpha >= 255) {
        this->nameEntryBoxAlpha = 255;
    }

    this->nameEntryBoxPosX -= 30;

    if (this->nameEntryBoxPosX <= 0) {
        this->nameEntryBoxPosX = 0;
        this->nameEntryBoxAlpha = 255;
        this->configMode = CM_OPTIONS_MENU;
    }
}

u8 sSelectedSetting;
// bss padding
s32 D_80814E94;
s32 D_80814E98;
s32 D_80814E9C;
s32 D_80814EA0;

/**
 * Update the cursor and appropriate settings for the options menu.
 * If the player presses B, write the selected options to the SRAM header
 * and set config mode to rotate back to the main menu.
 * Update function for `CM_OPTIONS_MENU`
 */
void FileSelect_UpdateOptionsMenu(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    SramContext* sramCtx = &this->sramCtx;
    Input* input = CONTROLLER1(&this->state);

    if (CHECK_BTN_ALL(input->press.button, BTN_B)) {
        play_sound(NA_SE_SY_FSEL_DECIDE_L);
        func_80146DF8(sramCtx);
        if (!gSaveContext.unk_3F3F) {
            this->configMode = 0x2B;
        } else {
            func_80147008(sramCtx, D_801C67E8[0], D_801C6838[0]);
            func_80147020(sramCtx);
            this->configMode = 0x2A;
        }
        func_801A3D98(gSaveContext.options.audioSetting);
        return;
    }

    if (this->stickAdjX < -30) {
        play_sound(NA_SE_SY_FSEL_CURSOR);

        if (sSelectedSetting == 0) {
            gSaveContext.options.audioSetting--;

            // because audio setting is unsigned, can't check for < 0
            if (gSaveContext.options.audioSetting > 0xF0) {
                gSaveContext.options.audioSetting = 3;
            }
        } else {
            gSaveContext.options.zTargetSetting ^= 1;
        }
    } else if (this->stickAdjX > 30) {
        play_sound(NA_SE_SY_FSEL_CURSOR);

        if (sSelectedSetting == 0) {
            gSaveContext.options.audioSetting++;
            if (gSaveContext.options.audioSetting > 3) {
                gSaveContext.options.audioSetting = 0;
            }
        } else {
            gSaveContext.options.zTargetSetting ^= 1;
        }
    }

    if ((this->stickAdjY < -30) || (this->stickAdjY > 30)) {
        play_sound(NA_SE_SY_FSEL_CURSOR);
        sSelectedSetting ^= 1;
        return;
    }
    if (CHECK_BTN_ALL(input->press.button, BTN_A)) {
        play_sound(NA_SE_SY_FSEL_DECIDE_L);
        sSelectedSetting ^= 1;
    }
}

void func_8080A6BC(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    SramContext* sramCtx = &this->sramCtx;

    func_80147068(sramCtx);

    if (sramCtx->status == 0) {
        this->configMode = 0x2B;
    }
}

typedef struct {
    /* 0x00 */ TexturePtr texture;
    /* 0x0C */ u16 width;
    /* 0x12 */ u16 height;
} OptionsMenuTextureInfo; // size = 0x14

OptionsMenuTextureInfo gOptionsMenuHeaders[] = {
    { gFileSelOptionsENGTex, 128, 16 },          { gFileSelSOUNDENGTex, 64, 16 },
    { gFileSelTargetingENGTex, 64, 16 },         { gFileSelCheckBrightnessENGTex, 96, 16 },
    { gFileSelDolbySurroundLogoENGTex, 48, 17 },
};

OptionsMenuTextureInfo gOptionsMenuSettings[] = {
    { gFileSelStereoENGTex, 48, 16 },   { gFileSelMonoENGTex, 48, 16 },   { gFileSelHeadsetENGTex, 48, 16 },
    { gFileSelSurroundENGTex, 48, 16 }, { gFileSelSwitchENGTex, 48, 16 }, { gFileSelHoldENGTex, 48, 16 },
};

void FileSelect_DrawOptionsImpl(GameState* thisx) {
    static s16 sCursorPrimRed = 255;
    static s16 sCursorPrimGreen = 255;
    static s16 sCursorPrimBlue = 255;
    static s16 sCursorEnvRed = 0;
    static s16 sCursorEnvGreen = 0;
    static s16 sCursorEnvBlue = 0;
    static s16 sCursorPulseDir = 1;
    static s16 sCursorFlashTimer = 20;
    static s16 sCursorPrimColors[][3] = {
        { 255, 255, 255 },
        { 0, 255, 255 },
    };
    static s16 sCursorEnvColors[][3] = {
        { 0, 0, 0 },
        { 0, 150, 150 },
    };
    FileSelectState* this = (FileSelectState*)thisx;
    s16 cursorRed;
    s16 cursorGreen;
    s16 cursorBlue;
    s16 i;
    s16 j;
    s16 vtx;

    OPEN_DISPS(this->state.gfxCtx);

    cursorRed = ABS_ALT(sCursorPrimRed - sCursorPrimColors[sCursorPulseDir][0]) / sCursorFlashTimer;
    cursorGreen = ABS_ALT(sCursorPrimGreen - sCursorPrimColors[sCursorPulseDir][1]) / sCursorFlashTimer;
    cursorBlue = ABS_ALT(sCursorPrimBlue - sCursorPrimColors[sCursorPulseDir][2]) / sCursorFlashTimer;

    if (sCursorPrimRed >= sCursorPrimColors[sCursorPulseDir][0]) {
        sCursorPrimRed -= cursorRed;
    } else {
        sCursorPrimRed += cursorRed;
    }

    if (sCursorPrimGreen >= sCursorPrimColors[sCursorPulseDir][1]) {
        sCursorPrimGreen -= cursorGreen;
    } else {
        sCursorPrimGreen += cursorGreen;
    }

    if (sCursorPrimBlue >= sCursorPrimColors[sCursorPulseDir][2]) {
        sCursorPrimBlue -= cursorBlue;
    } else {
        sCursorPrimBlue += cursorBlue;
    }

    cursorRed = ABS_ALT(sCursorEnvRed - sCursorEnvColors[sCursorPulseDir][0]) / sCursorFlashTimer;
    cursorGreen = ABS_ALT(sCursorEnvGreen - sCursorEnvColors[sCursorPulseDir][1]) / sCursorFlashTimer;
    cursorBlue = ABS_ALT(sCursorEnvBlue - sCursorEnvColors[sCursorPulseDir][2]) / sCursorFlashTimer;

    if (sCursorEnvRed >= sCursorEnvColors[sCursorPulseDir][0]) {
        sCursorEnvRed -= cursorRed;
    } else {
        sCursorEnvRed += cursorRed;
    }

    if (sCursorEnvGreen >= sCursorEnvColors[sCursorPulseDir][1]) {
        sCursorEnvGreen -= cursorGreen;
    } else {
        sCursorEnvGreen += cursorGreen;
    }

    if (sCursorEnvBlue >= sCursorEnvColors[sCursorPulseDir][2]) {
        sCursorEnvBlue -= cursorBlue;
    } else {
        sCursorEnvBlue += cursorBlue;
    }

    if (--sCursorFlashTimer == 0) {
        sCursorPrimRed = sCursorPrimColors[sCursorPulseDir][0];
        sCursorPrimGreen = sCursorPrimColors[sCursorPulseDir][1];
        sCursorPrimBlue = sCursorPrimColors[sCursorPulseDir][2];

        sCursorEnvRed = sCursorEnvColors[sCursorPulseDir][0];
        sCursorEnvGreen = sCursorEnvColors[sCursorPulseDir][1];
        sCursorEnvBlue = sCursorEnvColors[sCursorPulseDir][2];

        sCursorFlashTimer = 20;

        if (++sCursorPulseDir > 1) {
            sCursorPulseDir = 0;
        }
    }

    // blue divider lines
    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 0, 255, 255, this->titleAlpha[0]);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);

    gDPLoadTextureBlock_4b(POLY_OPA_DISP++, gFileSelOptionsDividerTex, G_IM_FMT_IA, 256, 2, 0,
                           G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                           G_TX_NOLOD);

    Matrix_Push();
    Matrix_Translate(0.0f, 0.1f, 0.0f, MTXMODE_APPLY);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(this->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPVertex(POLY_OPA_DISP++, D_80814130, 4, 0);
    gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);
    Matrix_Pop();

    Matrix_Push();
    Matrix_Translate(0.0f, 0.2f, 0.0f, MTXMODE_APPLY);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(this->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPVertex(POLY_OPA_DISP++, D_80814170, 4, 0);
    gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);
    Matrix_Pop();

    Matrix_Push();
    Matrix_Translate(0.0f, 0.4f, 0.0f, MTXMODE_APPLY);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(this->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPVertex(POLY_OPA_DISP++, D_808141B0, 4, 0);
    gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);
    Matrix_Pop();

    gSPVertex(POLY_OPA_DISP++, D_80813DF0, 32, 0);
    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                      ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, this->titleAlpha[0]);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);

    for (i = 0, vtx = 0; i < 5; i++, vtx += 4) {
        if (i == 4) {
            gDPPipeSync(POLY_OPA_DISP++);
            if (gSaveContext.options.audioSetting == 3) {
                gDPSetEnvColor(POLY_OPA_DISP++, 255, 255, 255, 255);
            } else {
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 0, 0, 0, this->titleAlpha[0]);
                gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
            }
        }

        gDPLoadTextureBlock(POLY_OPA_DISP++, gOptionsMenuHeaders[i].texture, G_IM_FMT_IA, G_IM_SIZ_8b,
                            gOptionsMenuHeaders[i].width, gOptionsMenuHeaders[i].height, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        gSP1Quadrangle(POLY_OPA_DISP++, vtx, vtx + 2, vtx + 3, vtx + 1, 0);
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                      ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, this->titleAlpha[0]);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    gSPVertex(POLY_OPA_DISP++, D_80813F30, 32, 0);

    for (i = 0, vtx = 0; i < 4; i++, vtx += 4) {
        gDPPipeSync(POLY_OPA_DISP++);
        if (i == gSaveContext.options.audioSetting) {
            if (sSelectedSetting == 0) {
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, sCursorPrimRed, sCursorPrimGreen, sCursorPrimBlue,
                                this->titleAlpha[0]);
                gDPSetEnvColor(POLY_OPA_DISP++, sCursorEnvRed, sCursorEnvGreen, sCursorEnvBlue, 255);
            } else {
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, this->titleAlpha[0]);
                gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
            }
        } else {
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 120, 120, 120, this->titleAlpha[0]);
            gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
        }

        gDPLoadTextureBlock(POLY_OPA_DISP++, gOptionsMenuSettings[i].texture, G_IM_FMT_IA, G_IM_SIZ_8b,
                            gOptionsMenuSettings[i].width, gOptionsMenuHeaders[i].height, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        gSP1Quadrangle(POLY_OPA_DISP++, vtx, vtx + 2, vtx + 3, vtx + 1, 0);
    }

    for (; i < 6; i++, vtx += 4) {
        gDPPipeSync(POLY_OPA_DISP++);

        if (i == (gSaveContext.options.zTargetSetting + 4)) {
            if (sSelectedSetting == 1) {
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, sCursorPrimRed, sCursorPrimGreen, sCursorPrimBlue,
                                this->titleAlpha[0]);
                gDPSetEnvColor(POLY_OPA_DISP++, sCursorEnvRed, sCursorEnvGreen, sCursorEnvBlue, 255);
            } else {
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, this->titleAlpha[0]);
                gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
            }
        } else {
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 120, 120, 120, this->titleAlpha[0]);
            gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
        }

        gDPLoadTextureBlock(POLY_OPA_DISP++, gOptionsMenuSettings[i].texture, G_IM_FMT_IA, G_IM_SIZ_8b,
                            gOptionsMenuSettings[i].width, gOptionsMenuHeaders[i].height, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        gSP1Quadrangle(POLY_OPA_DISP++, vtx, vtx + 2, vtx + 3, vtx + 1, 0);
    }

    gDPPipeSync(POLY_OPA_DISP++);

    // check brightness bars
    gDPLoadTextureBlock_4b(POLY_OPA_DISP++, gFileSelBrightnessCheckTex, G_IM_FMT_IA, 96, 16, 0,
                           G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                           G_TX_NOLOD);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 55, 55, 55, this->titleAlpha[0]);
    gDPSetEnvColor(POLY_OPA_DISP++, 40, 40, 40, 255);
    gSP1Quadrangle(POLY_OPA_DISP++, vtx, vtx + 2, vtx + 3, vtx + 1, 0);

    vtx += 4;

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 30, 30, 30, this->titleAlpha[0]);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    gSP1Quadrangle(POLY_OPA_DISP++, vtx, vtx + 2, vtx + 3, vtx + 1, 0);

    CLOSE_DISPS(this->state.gfxCtx);
}

void FileSelect_DrawOptions(GameState* thisx) {
    FileSelect_DrawOptionsImpl(thisx);
}
