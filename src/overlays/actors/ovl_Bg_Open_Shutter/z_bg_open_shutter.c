/*
 * File: z_bg_open_shutter.c
 * Overlay: ovl_Bg_Open_Shutter
 * Description: Sliding doors in opening dungeon
 */

#include "z_bg_open_shutter.h"
#include "objects/object_open_obj/object_open_obj.h"

#define FLAGS (ACTOR_FLAG_10)

#define THIS ((BgOpenShutter*)thisx)

#define FLT_MAX 340282346638528859811704183484516925440.0f

void BgOpenShutter_Init(Actor* thisx, GlobalContext* globalCtx);
void BgOpenShutter_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgOpenShutter_Update(Actor* thisx, GlobalContext* globalCtx);
void BgOpenShutter_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80ACAD88(BgOpenShutter* this, GlobalContext* globalCtx);
void func_80ACAE5C(BgOpenShutter* this, GlobalContext* globalCtx);
void func_80ACAEF0(BgOpenShutter* this, GlobalContext* globalCtx);

enum {
    /* 0x1 */ DOOR_OPEN = 1,
    /* 0x2 */ DOOR_CLOSE = 2,
};

const ActorInit Bg_Open_Shutter_InitVars = {
    ACTOR_BG_OPEN_SHUTTER,
    ACTORCAT_DOOR,
    FLAGS,
    OBJECT_OPEN_OBJ,
    sizeof(BgOpenShutter),
    (ActorFunc)BgOpenShutter_Init,
    (ActorFunc)BgOpenShutter_Destroy,
    (ActorFunc)BgOpenShutter_Update,
    (ActorFunc)BgOpenShutter_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneForward, 4000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 350, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 350, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

f32 func_80ACAB10(GlobalContext* this, Actor* actor, f32 arg2, f32 arg3, f32 arg4) {
    Player* actorPos = GET_PLAYER(this);
    Vec3f point;
    Vec3f offset;

    point.x = actorPos->actor.world.pos.x;
    point.y = actorPos->actor.world.pos.y + arg2;
    point.z = actorPos->actor.world.pos.z;

    Actor_OffsetOfPointInActorCoords(actor, &offset, &point);
    if ((arg3 < fabsf(offset.x)) || (arg4 < fabsf(offset.y))) {
        return FLT_MAX;
    } else {
        return offset.z;
    }
}

s8 func_80ACABA8(BgOpenShutter* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);
    f32 temp_fv0;
    s16 temp_v0;

    if ((Player_InCsMode(&globalCtx->state) == 0) && (this->dyna.actor.xzDistToPlayer < 100.0f)) {
        temp_fv0 = func_80ACAB10(globalCtx, &this->dyna.actor, 0.0f, 65.0f, 15.0f);
        if (fabsf(temp_fv0) < 50.0f) {
            temp_v0 = player->actor.shape.rot.y - this->dyna.actor.shape.rot.y;
            if (temp_fv0 > 0.0f) {
                temp_v0 = (0x8000 - temp_v0);
            }
            if (ABS_ALT(temp_v0) < 0x3000) {
                if (temp_fv0 > 1.0f) {
                    return 1;
                }
                if (temp_fv0 < -1.0f) {
                    return -1;
                }
            }
        }
    }
    return 0;
}

void BgOpenShutter_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgOpenShutter* this = THIS;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyActor_Init(&this->dyna, 1);
    DynaPolyActor_LoadMesh(globalCtx, &this->dyna, &object_open_obj_Colheader_001640);
    this->actionFunc = func_80ACAD88;
}

void BgOpenShutter_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 params = (u16)BGOPENSHUTTER_GET_A(thisx);
    BgOpenShutter* this = THIS;

    globalCtx->doorCtx.transitionActorList[params].id = -globalCtx->doorCtx.transitionActorList[params].id;
    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
}

void func_80ACAD88(BgOpenShutter* this, GlobalContext* globalCtx) {
    s32 quake;

    if (this->unk_15C != 0) {
        Player* player = GET_PLAYER(globalCtx);
        Actor_PlaySfxAtPos(&this->dyna.actor, NA_SE_EV_SLIDE_DOOR_OPEN);
        func_800DFFAC(globalCtx->cameraPtrs[0], &this->dyna.actor, player->unk_3BA, 0.0f, 12, 15, 10);
        this->unk_164 = 0;
        this->actionFunc = func_80ACAE5C;
        this->dyna.actor.velocity.y = 0.0f;
    } else {
        Player* player = GET_PLAYER(globalCtx);
        quake = func_80ACABA8(this, globalCtx);
        if (quake > 0) {
            player->doorType = 2;
            player->doorDirection = quake;
            player->doorActor = &this->dyna.actor;
            func_80122F28(player);
        }
    }
}

void func_80ACAE5C(BgOpenShutter* this, GlobalContext* globalCtx) {
    Math_StepToF(&this->dyna.actor.velocity.y, 15.0f, 3.0f);
    if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y + 120.0f,
                     this->dyna.actor.velocity.y) != 0) {
        this->unk_164 += 1;
    }
    if (this->unk_164 >= 10) {
        Actor_PlaySfxAtPos(&this->dyna.actor, NA_SE_EV_SLIDE_DOOR_CLOSE);
        this->actionFunc = func_80ACAEF0;
    }
}

void func_80ACAEF0(BgOpenShutter* this, GlobalContext* globalCtx) {
    s32 pad;
    s16 quake;

    Math_StepToF(&this->dyna.actor.velocity.y, 20.0f, 8.0f);
    if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y, this->dyna.actor.velocity.y) != 0) {
        this->dyna.actor.floorHeight = this->dyna.actor.home.pos.y;
        Actor_SpawnFloorDustRing(globalCtx, &this->dyna.actor, &this->dyna.actor.world.pos, 60.0f, 10, 8.0f, 500, 10,
                                 1);
        Actor_PlaySfxAtPos(&this->dyna.actor, NA_SE_EV_BIGWALL_BOUND);
        quake = Quake_Add(Play_GetCamera(globalCtx, CAM_ID_MAIN), 3);
        Quake_SetSpeed(quake, -0x7F18);
        Quake_SetQuakeValues(quake, 2, 0, 0, 0);
        Quake_SetCountdown(quake, 10);
        func_8013ECE0(this->dyna.actor.xyzDistToPlayerSq, 180, 20, 100);
        this->unk_15C = 0;
        this->actionFunc = func_80ACAD88;
    }
}

void BgOpenShutter_Update(Actor* thisx, GlobalContext* globalCtx2) {
    BgOpenShutter* this = THIS;
    GlobalContext* globalCtx = globalCtx2;
    s32 index;

    if (Cutscene_CheckActorAction(globalCtx, 0x7C) != 0) {
        index = Cutscene_GetActorActionIndex(globalCtx, 0x7C);
        if (globalCtx->csCtx.actorActions[index]->action == DOOR_OPEN) {
            if (this->actionFunc == func_80ACAD88) {
                Actor_PlaySfxAtPos(&this->dyna.actor, NA_SE_EV_SLIDE_DOOR_OPEN);
                this->actionFunc = func_80ACAE5C;
                this->dyna.actor.velocity.y = 0.0f;
            }
            this->unk_164 = 0;
        } else if (globalCtx->csCtx.actorActions[index]->action == DOOR_CLOSE) {
            if (this->actionFunc == func_80ACAE5C) {
                Actor_PlaySfxAtPos(&this->dyna.actor, NA_SE_EV_SLIDE_DOOR_CLOSE);
                this->actionFunc = func_80ACAEF0;
            }
        }
    }
    this->actionFunc(this, globalCtx);
}

void BgOpenShutter_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, object_open_obj_DL_0003E8);
}