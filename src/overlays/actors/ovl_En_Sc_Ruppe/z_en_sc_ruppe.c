/*
 * File: z_en_sc_ruppe.c
 * Overlay: ovl_En_Sc_Ruppe
 * Description: Giant Rupee
 */

#include "z_en_sc_ruppe.h"
#include "objects/gameplay_keep/gameplay_keep.h"
#define FLAGS (ACTOR_FLAG_10 | ACTOR_FLAG_20)

#define THIS ((EnScRuppe*)thisx)

void EnScRuppe_Init(Actor* thisx, GlobalContext* globalCtx);
void EnScRuppe_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnScRuppe_Update(Actor* thisx, GlobalContext* globalCtx);
void EnScRuppe_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80BD6910(EnScRuppe* this, GlobalContext* globalCtx);
s32 func_80BD697C(s16 this);
void func_80BD6A8C(EnScRuppe* this, GlobalContext* globalCtx);
void func_80BD6B18(EnScRuppe* this, GlobalContext* globalCtx);

typedef struct {
    /* 0x0 */ TexturePtr tex;
    /* 0x4 */ s16 amount;
} RupeeInfo;

const ActorInit En_Sc_Ruppe_InitVars = {
    ACTOR_EN_SC_RUPPE,
    ACTORCAT_NPC,
    FLAGS,
    GAMEPLAY_KEEP,
    sizeof(EnScRuppe),
    (ActorFunc)EnScRuppe_Init,
    (ActorFunc)EnScRuppe_Destroy,
    (ActorFunc)EnScRuppe_Update,
    (ActorFunc)EnScRuppe_Draw,
};

RupeeInfo sRupeeInfo[] = {
    { gameplay_keep_Tex_061FC0, 1 },   // Green rupee
    { gameplay_keep_Tex_061FE0, 5 },   // Blue rupee
    { gameplay_keep_Tex_062000, 20 },  // Red rupee
    { gameplay_keep_Tex_062040, 200 }, // Orange rupee
    { gameplay_keep_Tex_062020, 50 },  // Purple rupee
    { gameplay_keep_Tex_062060, 10 },  // Gray rupee (unused)
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_NO_PUSH | OC1_TYPE_PLAYER,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK4,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_NONE | TOUCH_SFX_NORMAL,
        BUMP_NONE,
        OCELEM_ON,
    },
    { 10, 30, 0, { 0, 0, 0 } },
};

void func_80BD6910(EnScRuppe* this, GlobalContext* globalCtx) {
    Collider_UpdateCylinder(&this->actor, &this->collider.base);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    Actor_UpdateBgCheckInfo(globalCtx, this, 32.0f, 30.0f, 0.0f, 4U);
}

s32 func_80BD697C(s16 this) {
    switch (this) {
        case 0:
            if (gSaveContext.save.weekEventReg[53] & 4) {
                gSaveContext.save.weekEventReg[53] &= (u8)~4;
                return 1;
            }
            break;
        case 1:
            if (gSaveContext.save.weekEventReg[53] & 0x80) {
                gSaveContext.save.weekEventReg[53] &= (u8)~0x80;
                return 1;
            }
            break;
        case 2:
            if (gSaveContext.save.weekEventReg[54] & 1) {
                gSaveContext.save.weekEventReg[54] &= (u8)~1;
                return 1;
            }
            break;
        case 3:
            if (gSaveContext.save.weekEventReg[54] & 2) {
                gSaveContext.save.weekEventReg[54] &= (u8)~2;
                return 1;
            }
            break;
        case 4:
            if (gSaveContext.save.weekEventReg[54] & 4) {
                gSaveContext.save.weekEventReg[54] &= (u8)~4;
                return 1;
            }
            break;
        case 5:
            if ((gSaveContext.save.weekEventReg[54] & 8)) {
                gSaveContext.save.weekEventReg[54] &= (u8)~8;
                return 1;
            }
            break;
    }
    return 0;
}

void func_80BD6A8C(EnScRuppe* this, GlobalContext* globalCtx) {
    if (this->collider.base.ocFlags1 & 2) {
        this->rupeeDisplayTime = 0;
        this->actor.gravity = 0.0f;
        Actor_PlaySfxAtPos(&this->actor, NA_SE_SY_GET_RUPY);
        func_801159EC(sRupeeInfo[this->rupeeIndex].amount);
        this->actionFunc = func_80BD6B18;
    }
    this->actor.shape.rot.y += 0x1F4;
    Actor_MoveWithGravity(&this->actor);
}

void func_80BD6B18(EnScRuppe* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    if (this->rupeeDisplayTime > 30) {
        if (func_80BD697C(this->rupeeIndex)) {
            Actor_MarkForDeath(&this->actor);
        }
    } else {
        f32 scale;
        this->rupeeDisplayTime++;
        this->actor.world.pos = player->actor.world.pos;
        this->actor.world.pos.y += 40.0f;
        scale = (30.0f - this->rupeeDisplayTime) * 0.001f;
        Actor_SetScale(&this->actor, scale);
    }
    this->actor.shape.rot.y += 0x3E8;
    Actor_MoveWithGravity(&this->actor);
}

void EnScRuppe_Init(Actor* thisx, GlobalContext* globalCtx) {
    ColliderCylinder* collider;
    EnScRuppe* this = THIS;

    collider = &this->collider;
    Collider_InitCylinder(globalCtx, collider);
    Collider_InitAndSetCylinder(globalCtx, collider, &this->actor, &sCylinderInit);
    Actor_SetScale(&this->actor, 0.03f);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 10.0f);
    this->rupeeIndex = this->actor.params & 31;
    if ((this->rupeeIndex < 0) || (this->rupeeIndex >= 5)) {
        this->rupeeIndex = 0;
    }
    this->actor.speedXZ = 0.0f;
    this->actionFunc = func_80BD6A8C;
    this->actor.gravity = -0.5f;
    this->actor.shape.yOffset = 700.0f;
}

void EnScRuppe_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnScRuppe* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void EnScRuppe_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnScRuppe* this = THIS;

    this->actionFunc(this, globalCtx);
    func_80BD6910(this, globalCtx);
}

void EnScRuppe_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx* opa;
    EnScRuppe* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx);
    func_8012C28C(globalCtx->state.gfxCtx);
    func_800B8050(&this->actor, globalCtx, 0);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPSegment(POLY_OPA_DISP++, 0x08, Lib_SegmentedToVirtual(sRupeeInfo[this->rupeeIndex].tex));
    gSPDisplayList(POLY_OPA_DISP++, gameplay_keep_DL_0622C0);
    CLOSE_DISPS(globalCtx->state.gfxCtx);
}
