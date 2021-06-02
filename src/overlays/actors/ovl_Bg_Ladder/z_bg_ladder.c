/*
 * File: z_bg_ladder.c
 * Overlay: ovl_Bg_Ladder
 * Description: Wooden Ladder
 */
#include "z_bg_ladder.h"

#define FLAGS 0x00000010

#define THIS ((BgLadder*)thisx)

void BgLadder_Init(Actor* thisx, GlobalContext* globalCtx);
void BgLadder_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgLadder_Update(Actor* thisx, GlobalContext* globalCtx);
void BgLadder_Draw(Actor* thisx, GlobalContext* globalCtx);
void BgLadder_ActionWait(BgLadder* this, GlobalContext* globalCtx);
void BgLadder_ActionStartCutscene(BgLadder* this, GlobalContext* globalCtx);
void BgLadder_ActionFadeIn(BgLadder* this, GlobalContext* globalCtx);
void BgLadder_ActionIdle(BgLadder* this, GlobalContext* globalCtx);

extern Gfx D_060000A0[];
extern Gfx D_060002D0[];
extern Gfx D_06000500[];
extern Gfx D_06000730[];

extern CollisionHeader D_060001D8;
extern CollisionHeader D_06000408;
extern CollisionHeader D_06000638;
extern CollisionHeader D_06000868;

const ActorInit Bg_Ladder_InitVars = {
    ACTOR_BG_LADDER,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_LADDER,
    sizeof(BgLadder),
    (ActorFunc)BgLadder_Init,
    (ActorFunc)BgLadder_Destroy,
    (ActorFunc)BgLadder_Update,
    (ActorFunc)BgLadder_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

static Gfx* sLadderDLists[] = {
    D_060000A0, // 12 Rung
    D_060002D0, // 16 Rung
    D_06000500, // 20 Rung
    D_06000730, // 24 Rung
};

void BgLadder_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgLadder* this = THIS;
    BgLadderSize size;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);

    // Has to be `thisx` instead of `&this->actor` to match
    this->switchFlag = GET_BGLADDER_SWITCHFLAG(thisx);
    thisx->params = GET_BGLADDER_SIZE(thisx);
    BcCheck3_BgActorInit(&this->dyna, 0);
    size = thisx->params;

    if (size == LADDER_SIZE_12RUNG) {
        BgCheck3_LoadMesh(globalCtx, &this->dyna, &D_060001D8);
    } else if (size == LADDER_SIZE_16RUNG) {
        BgCheck3_LoadMesh(globalCtx, &this->dyna, &D_06000408);
    } else if (size == LADDER_SIZE_20RUNG) {
        BgCheck3_LoadMesh(globalCtx, &this->dyna, &D_06000638);
    } else if (size == LADDER_SIZE_24RUNG) {
        BgCheck3_LoadMesh(globalCtx, &this->dyna, &D_06000868);
    } else {
        Actor_MarkForDeath(&this->dyna.actor);
        return;
    }

    if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
        // If the flag is set, then the ladder draws immediately
        this->alpha = 255;
        this->dyna.actor.flags &= ~0x10; // always update = off
        this->action = BgLadder_ActionIdle;
    } else {
        // Otherwise, the ladder doesn't draw; wait for the flag to be set
        this->alpha = 5;
        func_800C62BC(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
        this->dyna.actor.draw = NULL;
        this->action = BgLadder_ActionWait;
    }
}

void BgLadder_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgLadder* this = THIS;

    BgCheck_RemoveActorMesh(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
}

void BgLadder_ActionWait(BgLadder* this, GlobalContext* globalCtx) {
    // Wait for the flag to be set, then trigger the cutscene
    if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
        ActorCutscene_SetIntentToPlay(this->dyna.actor.cutscene);
        this->action = BgLadder_ActionStartCutscene;
    }
}

void BgLadder_ActionStartCutscene(BgLadder* this, GlobalContext* globalCtx) {
    // Trigger the cutscene, then make the ladder fade in
    if (ActorCutscene_GetCanPlayNext(this->dyna.actor.cutscene)) {
        ActorCutscene_StartAndSetUnkLinkFields(this->dyna.actor.cutscene, &this->dyna.actor);
        this->dyna.actor.draw = BgLadder_Draw;
        Audio_PlayActorSound2(&this->dyna.actor, 0x2997);
        this->action = BgLadder_ActionFadeIn;
    } else {
        ActorCutscene_SetIntentToPlay(this->dyna.actor.cutscene);
    }
}

void BgLadder_ActionFadeIn(BgLadder* this, GlobalContext* globalCtx) {
    // Fade in the ladder, then stop the cutscene & go idle
    this->alpha += 5;
    if (this->alpha >= 255) {
        this->alpha = 255;
        ActorCutscene_Stop(this->dyna.actor.cutscene);
        func_800C6314(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
        this->dyna.actor.flags &= ~0x10; // always update = off
        this->action = BgLadder_ActionIdle;
    }
}

void BgLadder_ActionIdle(BgLadder* this, GlobalContext* globalCtx) {
}

void BgLadder_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgLadder* this = THIS;

    this->action(this, globalCtx);
}

void BgLadder_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgLadder* this = THIS;
    s32 pad;
    Gfx* gfx;

    OPEN_DISPS(globalCtx->state.gfxCtx);

    if (this->alpha == 255) {
        Scene_SetRenderModeXlu(globalCtx, 0, 0x01);
        gfx = POLY_OPA_DISP;
    } else {
        Scene_SetRenderModeXlu(globalCtx, 1, 0x02);
        gfx = POLY_XLU_DISP;
    }

    gSPDisplayList(&gfx[0], &sSetupDL[6 * 0x19]);
    gDPSetEnvColor(&gfx[1], 255, 255, 255, this->alpha);
    gSPMatrix(&gfx[2], Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_LOAD);
    gSPDisplayList(&gfx[3], sLadderDLists[this->dyna.actor.params]);

    if (this->alpha == 255) {
        POLY_OPA_DISP = gfx + 4;
    } else {
        POLY_XLU_DISP = gfx + 4;
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx);
}
