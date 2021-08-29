/*
 * File: z_select.c
 * Overlay: ovl_select
 * Description:
 */

#include "z_select.h"
#include "alloca.h"

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_select/D_80802390.s")

void func_80800910(SelectContext* this, s32);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_select/func_80800910.s")

void func_80800930(SelectContext* this, s32);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_select/func_80800930.s")

void func_80800A44(SelectContext* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_select/func_80800A44.s")

#ifdef NON_MATCHING
void func_808013B8(SelectContext* this, GfxPrint* arg1) {
    s32 temp_hi;
    s32 temp_s0;
    s32 temp_v0;
    s32 phi_s0;
    char* phi_a2;

    GfxPrint_SetColor(arg1, 0xFFU, 0x9BU, 0x96U, 0xFFU);
    GfxPrint_SetPos(arg1, 0xC, 2);
    GfxPrint_Printf(arg1, "ZELDA MAP SELECT");
    GfxPrint_SetColor(arg1, 0xFFU, 0xFFU, 0xFFU, 0xFFU);
    phi_s0 = 0;
    do {
        GfxPrint_SetPos(arg1, 9, phi_s0 + 4);
        temp_v0 = this->unk_210;
        temp_hi = (s32) (this->unk_24C + phi_s0 + temp_v0) % temp_v0;
        if (temp_hi == this->unk_218) {
            GfxPrint_SetColor(arg1, 0xFFU, 0x14U, 0x14U, 0xFFU);
        } else {
            GfxPrint_SetColor(arg1, 0xC8U, 0xC8U, 0x37U, 0xFFU);
        }
        phi_a2 = this->scenes[temp_hi].name;
        if (phi_a2 == NULL) {
            phi_a2 = "**Null**";
        }
        GfxPrint_Printf(arg1, "%s", phi_a2);
        temp_s0 = phi_s0 + 1;
        phi_s0 = temp_s0;
    } while (temp_s0 != 0x14);
    GfxPrint_SetColor(arg1, 0x9BU, 0x37U, 0x96U, 0xFFU);
    GfxPrint_SetPos(arg1, 0x14, 0x1A);
    GfxPrint_Printf(arg1, "OPT=%d", this->unk_248);
}
#else
// Select_PrintMenu
void func_808013B8(SelectContext* this, GfxPrint* printer);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_select/func_808013B8.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_select/D_8080343C.s")

extern char* D_80802334[12];

void func_80801594(SelectContext* this, GfxPrint* printer) {
    GfxPrint_SetPos(printer, 10, 15);
    GfxPrint_SetColor(printer, 255, 255, 255, 255);
    GfxPrint_Printf(printer, "%s", D_80802334[(s32) (Rand_ZeroOne() * ARRAY_COUNT(D_80802334))]);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_select/D_80803588.s")

// sFormLabels
extern char* D_80802364[][2];

#ifdef NON_MATCHING
void func_80801620(SelectContext* this, GfxPrint* printer, s32 arg2) {
    s32 sp20;
    char* (*temp_a0)[2];
    s32 temp_v0;
    char* (*phi_v1)[2];
    s32 phi_v0;

    if ((arg2 >= 0) && (arg2 < 5)) {
        temp_a0 = &D_80802364[arg2];
        phi_v1 = temp_a0 + 8;
        phi_v0 = 8;
loop_3:
        temp_v0 = phi_v0 - 8;
        phi_v0 = temp_v0;
        if (phi_v1 == 0) {
            phi_v1 += -8;
            if (temp_v0 >= 0) {
                goto loop_3;
            }
        }
        sp20 = *temp_a0;
    } else {
        sp20 = 0;
    }
    GfxPrint_SetPos(printer, 4, 0x1A);
    GfxPrint_SetColor(printer, 0xFFU, 0xFFU, 0x37U, 0xFFU);
    if (sp20 != 0) {
        GfxPrint_Printf(printer, "Age:" "%s", sp20);
        return;
    }
    GfxPrint_Printf(printer, "Age:" "???" "(%d)", arg2);
}
#else
void func_80801620(SelectContext* this, GfxPrint* printer, s32 arg2);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_select/func_80801620.s")
#endif

void func_808016E8(SelectContext* this, GfxPrint* printer, u16 arg2);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_select/func_808016E8.s")

void func_8080194C(SelectContext* this) {
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    GfxPrint* printer;

    OPEN_DISPS(gfxCtx);

    func_8012C4C0(gfxCtx);

    printer = alloca(sizeof(GfxPrint));
    GfxPrint_Init(printer);
    GfxPrint_Open(printer, POLY_OPA_DISP);

    func_808013B8(this, printer);
    func_80801620(this, printer, ((void)0, gSaveContext.playerForm));
    func_808016E8(this, printer, ((void)0, gSaveContext.cutscene));

    POLY_OPA_DISP = GfxPrint_Close(printer);
    GfxPrint_Destroy(printer);

    CLOSE_DISPS(gfxCtx);
}

void func_808019FC(SelectContext* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_select/func_808019FC.s")

#ifdef NON_MATCHING
void func_80801A64(SelectContext* this) {
    s32 pad;
    Viewport sp2C;

    func_8012CF0C(this->state.gfxCtx, 1, 1, 0U, 0, 0);
    sp2C.bottomY = 0xF0;
    sp2C.rightX = 0x140;
    sp2C.leftX = 0;
    sp2C.topY = 0;
    View_SetViewport(&this->view, &sp2C);
    View_RenderView(&this->view, 0xF);
    if (this->state.running == 0) {
        func_808019FC(this);
    } else {
        func_8080194C(this);
    }
}
#else
void func_80801A64(SelectContext* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_select/func_80801A64.s")
#endif

void Select_Main(GameState* thisx) {
    SelectContext* this = (SelectContext*)thisx;

    func_80800A44(this);
    func_80801A64(this);
}

void Select_Destroy(GameState* thisx) {
    ShrinkWindow_Fini();
}

extern SceneSelectEntry D_80801C80[];

void Select_Init(GameState* thisx) {
    SelectContext* this = (SelectContext*)thisx;

    this->state.main = Select_Main;
    this->state.destroy = Select_Destroy;

    this->scenes = D_80801C80;
    this->unk_24C = 0;
    this->unk_218 = 0;
    this->unk_220 = 0;
    this->unk_224 = 0x13;
    this->unk_228 = 0x25;
    this->unk_22C = 0x33;
    this->unk_230 = 0x3B;
    this->unk_234 = 0x49;
    this->unk_238 = 0x5B;
    this->unk_21C = 0;
    this->unk_248 = 0;
    this->unk_210 = 0x8F;

    ShrinkWindow_Init();
    View_Init(&this->view, this->state.gfxCtx);
    this->view.flags = 0xA;
    this->unk_25C = 0;
    this->unk_260 = 0;
    this->unk_264 = 0;
    this->unk_268 = 0;
    this->unk_26C = 0;
    this->unk_270 = 0;
    this->unk_274 = 0;

    if ((dREG(80) >= 0) && (dREG(80) < this->unk_210)) {
        this->unk_218 = dREG(80);
        this->unk_24C = dREG(81);
        this->unk_21C = dREG(82);
    }

    Game_SetFramerateDivisor(&this->state, 1);
    gSaveContext.cutscene = 0;
    gSaveContext.playerForm = PLAYER_FORM_HUMAN;
    gSaveContext.linkAge = 0;
}
