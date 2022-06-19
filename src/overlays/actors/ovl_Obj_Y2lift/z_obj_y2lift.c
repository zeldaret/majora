/*
 * File: z_obj_y2lift.c
 * Overlay: ovl_Obj_Y2lift
 * Description: Unused elevator platform
 */

#include "z_obj_y2lift.h"
#include "objects/object_kaizoku_obj/object_kaizoku_obj.h"

#define FLAGS (ACTOR_FLAG_10)

#define THIS ((ObjY2lift*)thisx)

void ObjY2lift_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjY2lift_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjY2lift_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjY2lift_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit Obj_Y2lift_InitVars = {
    ACTOR_OBJ_Y2LIFT,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_KAIZOKU_OBJ,
    sizeof(ObjY2lift),
    (ActorFunc)ObjY2lift_Init,
    (ActorFunc)ObjY2lift_Destroy,
    (ActorFunc)ObjY2lift_Update,
    (ActorFunc)ObjY2lift_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 4000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 800, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 800, ICHAIN_STOP),
};

void ObjY2lift_Init(Actor* thisx, GlobalContext* globalCtx) {
    ObjY2lift* this = THIS;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyActor_Init(&this->dyna, 1);
    DynaPolyActor_LoadMesh(globalCtx, &this->dyna, &object_kaizoku_obj_Colheader_0019B0);
}

void ObjY2lift_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    ObjY2lift* this = THIS;

    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
}

void ObjY2lift_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    f32 temp_fv0;
    f32 sp1C;
    s32 temp_v0;
    ObjY2lift* this = THIS;

    temp_fv0 = this->dyna.actor.world.pos.y;
    sp1C = 0.0f;
    temp_v0 = DynaPolyActor_IsInRidingMovingState(&this->dyna);
    if ((temp_v0 != 0) || (DynaPolyActor_IsInRidingFallingState(&this->dyna) != 0)) {
        if (this->unk15D == 0) {
            this->unk15D = 1;
            this->unk15F = 0xC;
        } else if ((this->unk15F == 0) && (temp_v0 != 0)) {
            this->unk15C = 0x10;
        }
    } else {
        this->unk15D = 0;
    }
    if (DECR(this->unk15C) != 0) {
        temp_fv0 = this->dyna.actor.home.pos.y + 180.0f;
        sp1C = 2.0f;
    } else if ((temp_v0 == 0) && (this->dyna.actor.velocity.y <= 0.0f)) {
        temp_fv0 = this->dyna.actor.home.pos.y;
        sp1C = -2.0f;
    }
    Math_StepToF(&this->dyna.actor.velocity.y, sp1C, 0.1f);
    this->dyna.actor.world.pos.y += this->dyna.actor.velocity.y;
    if (((this->dyna.actor.world.pos.y - temp_fv0) * sp1C) >= 0.0f) {
        this->dyna.actor.world.pos.y = temp_fv0;
        this->dyna.actor.velocity.y = 0.0f;
        if (this->unk15E == 0) {
            this->unk15E = 1;
            this->unk15F = 12;
        }
    } else {
        this->unk15E = 0;
        func_800B9010(&this->dyna.actor, NA_SE_EV_PLATE_LIFT_LEVEL - SFX_FLAG);
    }
    if (DECR(this->unk15F) != 0) {
        this->dyna.actor.shape.yOffset = (2.0f * (this->unk15F & 1)) * this->unk15F;
    }
}

void ObjY2lift_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, object_kaizoku_obj_DL_001680);
}