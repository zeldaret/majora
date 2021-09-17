#include "z_arrow_ice.h"

#include "overlays/actors/ovl_En_Arrow/z_en_arrow.h"

#define FLAGS 0x02000010

#define THIS ((ArrowIce*)thisx)

void ArrowIce_Init(Actor* thisx, GlobalContext* globalCtx);
void ArrowIce_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ArrowIce_Update(Actor* thisx, GlobalContext* globalCtx);
void ArrowIce_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809224DC(ArrowIce* this, GlobalContext* globalCtx);
void func_80922628(ArrowIce* this, GlobalContext* globalCtx);
void func_809227F4(ArrowIce* this, GlobalContext* globalCtx);

void ArrowIce_SetupAction(ArrowIce* this, ArrowIceActionFunc actionFunc);

#include "z_arrow_ice_gfx.c"

const ActorInit Arrow_Ice_InitVars = {
    ACTOR_ARROW_ICE,
    ACTORCAT_ITEMACTION,
    FLAGS,
    GAMEPLAY_KEEP,
    sizeof(ArrowIce),
    (ActorFunc)ArrowIce_Init,
    (ActorFunc)ArrowIce_Destroy,
    (ActorFunc)ArrowIce_Update,
    (ActorFunc)ArrowIce_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneForward, 2000, ICHAIN_STOP),
};

extern Gfx D_0E0002E0[];

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Arrow_Ice/D_80924200.s")

void ArrowIce_SetupAction(ArrowIce* this, ArrowIceActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void ArrowIce_Init(Actor* thisx, GlobalContext* globalCtx) {
    ArrowIce* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    this->unk_144 = 0;
    this->unk_158 = 1.0f;
    ArrowIce_SetupAction(this, func_809224DC);
    Actor_SetScale(&this->actor, 0.01f);
    this->unk_148 = 0x64;
    this->unk_146 = 0;
    this->unk_15C = 0.0f;
}

void ArrowIce_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    func_80115D5C(globalCtx);
}

void func_809224DC(ArrowIce* this, GlobalContext* globalCtx) {
    EnArrow* arrow;

    arrow = (EnArrow*)this->actor.parent;
    if ((arrow == NULL) || (arrow->actor.update == NULL)) {
        Actor_MarkForDeath(&this->actor);
        return;
    }

    if (this->unk_144 < 10) {
        this->unk_144 += 1;
    }
    // copy position and rotation from arrow
    this->actor.world.pos = arrow->actor.world.pos;
    this->actor.shape.rot = arrow->actor.shape.rot;

    func_800B9010(&this->actor, NA_SE_PL_ARROW_CHARGE_ICE - SFX_FLAG);

    // if arrow has no parent, player has fired the arrow
    if (arrow->actor.parent == NULL) {
        this->unk_14C = this->actor.world.pos;
        this->unk_144 = 10;
        ArrowIce_SetupAction(this, func_809227F4);
        this->unk_148 = 255;
    }
}

void func_809225D0(Vec3f* unkPos, Vec3f* icePos, f32 scale) {
    unkPos->x += ((icePos->x - unkPos->x) * scale);
    unkPos->y += ((icePos->y - unkPos->y) * scale);
    unkPos->z += ((icePos->z - unkPos->z) * scale);
}

void func_80922628(ArrowIce* this, GlobalContext* globalCtx) {
    f32 scale;
    f32 offset;
    u16 timer;

    if (this->actor.projectedW < 50.0f) {
        scale = 10.0f;
    } else {
        if (950.0f < this->actor.projectedW) {
            scale = 310.0f;
        } else {
            scale = this->actor.projectedW;
            scale = ((scale - 50.0f) * (1.0f / 3.0f)) + 10.0f;
        }
    }

    timer = this->unk_146;
    if (timer != 0) {
        this->unk_146 -= 1;

        if (this->unk_146 >= 8) {
            offset = ((this->unk_146 - 8) * (1.0f / 24.0f));
            offset = SQ(offset);
            this->unk_144 = (((1.0f - offset) * scale) + 10.0f);
            this->unk_158 += ((2.0f - this->unk_158) * 0.1f);
            if (this->unk_146 < 16) {
                if (1) {}
                this->unk_148 = ((this->unk_146 * 0x23) - 0x118);
            }
        }
    }

    if (this->unk_146 >= 9) {
        if (this->unk_15C < 1.0f) {
            this->unk_15C += 0.25f;
        }
    } else {
        if (this->unk_15C > 0.0f) {
            this->unk_15C -= 0.125f;
        }
    }

    if (this->unk_146 < 8) {
        this->unk_148 = 0;
    }

    if (this->unk_146 == 0) {
        this->unk_146 = 255;
        Actor_MarkForDeath(&this->actor);
    }
}

void func_809227F4(ArrowIce* this, GlobalContext* globalCtx) {
    EnArrow* arrow;
    f32 distanceScaled;
    s32 pad;

    arrow = (EnArrow*)this->actor.parent;
    if ((arrow == NULL) || (arrow->actor.update == NULL)) {
        Actor_MarkForDeath(&this->actor);
        return;
    }
    // copy position and rotation from arrow
    this->actor.world.pos = arrow->actor.world.pos;
    this->actor.shape.rot = arrow->actor.shape.rot;
    distanceScaled = Math_Vec3f_DistXYZ(&this->unk_14C, &this->actor.world.pos) * (1.0f / 24.0f);
    this->unk_158 = distanceScaled;
    if (distanceScaled < 1.0f) {
        this->unk_158 = 1.0f;
    }
    func_809225D0(&this->unk_14C, &this->actor.world.pos, 0.05f);

    if (arrow->unk_261 & 1) {
        Audio_PlayActorSound2(&this->actor, NA_SE_IT_EXPLOSION_ICE);
        ArrowIce_SetupAction(this, func_80922628);
        this->unk_146 = 32;
        this->unk_148 = 255;
    } else if (arrow->unk_260 < 34) {
        if (this->unk_148 < 35) {
            Actor_MarkForDeath(&this->actor);
        } else {
            this->unk_148 -= 25;
        }
    }
}

void ArrowIce_Update(Actor* thisx, GlobalContext* globalCtx) {
    ArrowIce* this = THIS;

    if ((globalCtx->msgCtx.unk11F22 == 0xE) || (globalCtx->msgCtx.unk11F22 == 0x12)) {
        Actor_MarkForDeath(&this->actor);
    } else {
        this->actionFunc(this, globalCtx);
    }
}

void ArrowIce_Draw(Actor* thisx, GlobalContext* globalCtx) {
    ArrowIce* this = THIS;
    s32 pad;
    Actor* transform;
    u32 stateFrames = globalCtx->state.frames;
    EnArrow* arrow = (EnArrow*)this->actor.parent;

    if ((arrow != NULL) && (arrow->actor.update != NULL) && (this->unk_146 < 255)) {
        transform = (arrow->unk_261 & 2) ? &this->actor : &arrow->actor;

        OPEN_DISPS(globalCtx->state.gfxCtx);

        SysMatrix_InsertTranslation(transform->world.pos.x, transform->world.pos.y, transform->world.pos.z,
                                    MTXMODE_NEW);
        Matrix_RotateY(transform->shape.rot.y, MTXMODE_APPLY);
        SysMatrix_InsertXRotation_s(transform->shape.rot.x, MTXMODE_APPLY);
        SysMatrix_InsertZRotation_s(transform->shape.rot.z, MTXMODE_APPLY);
        Matrix_Scale(0.01f, 0.01f, 0.01f, MTXMODE_APPLY);
        if (this->unk_15C > 0.0f) {
            POLY_XLU_DISP = func_8012BFC4(POLY_XLU_DISP);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0, (s32)(this->unk_15C * 10.0f) & 0xFF,
                            (s32)(50.0f * this->unk_15C) & 0xFF, (s32)(150.0f * this->unk_15C) & 0xFF);
            gDPSetAlphaDither(POLY_XLU_DISP++, G_AD_DISABLE);
            gDPSetColorDither(POLY_XLU_DISP++, G_CD_DISABLE);
            gSPDisplayList(POLY_XLU_DISP++, D_0E0002E0);
        }
        func_8012C2DC(globalCtx->state.gfxCtx);
        gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, 170, 255, 255, (s32)(this->unk_148 * 0.5f) & 0xFF);
        gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 255, 128);
        SysMatrix_InsertRotation(0x4000, 0, 0, MTXMODE_APPLY);
        if (this->unk_146 != 0) {
            SysMatrix_InsertTranslation(0.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        } else {
            SysMatrix_InsertTranslation(0.0f, 1500.0f, 0.0f, MTXMODE_APPLY);
        }
        Matrix_Scale(this->unk_144 * 0.2f, this->unk_158 * 3.0f, this->unk_144 * 0.2f, MTXMODE_APPLY);
        SysMatrix_InsertTranslation(0.0f, -700.0f, 0.0f, MTXMODE_APPLY);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, D_80924060);
        gSPDisplayList(POLY_XLU_DISP++,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 511 - (stateFrames * 5) % 512, 0, 128, 32, 1,
                                        511 - (stateFrames * 10) % 512, 511 - (stateFrames * 10) % 512, 4, 16));
        gSPDisplayList(POLY_XLU_DISP++, D_80924110);

        CLOSE_DISPS(globalCtx->state.gfxCtx);
    }
}
