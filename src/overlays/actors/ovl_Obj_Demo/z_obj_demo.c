/*
 * File: z_obj_demo.c
 * Overlay: ovl_Obj_Demo
 * Description: Cutscene triggers when player is in range
 */

#include "z_obj_demo.h"

#define FLAGS (ACTOR_FLAG_10)

#define THIS ((ObjDemo*)thisx)

void ObjDemo_Init(Actor* thisx, PlayState* play);
void ObjDemo_Update(Actor* thisx, PlayState* play);

void func_80983678(ObjDemo* this, PlayState* play);
void func_80983704(ObjDemo* this, PlayState* play);
void func_80983634(PlayState* play);

ActorInit Obj_Demo_InitVars = {
    ACTOR_OBJ_DEMO,
    ACTORCAT_PROP,
    FLAGS,
    GAMEPLAY_KEEP,
    sizeof(ObjDemo),
    (ActorFunc)ObjDemo_Init,
    (ActorFunc)Actor_Noop,
    (ActorFunc)ObjDemo_Update,
    (ActorFunc)NULL,
};

void ObjDemo_Init(Actor* thisx, PlayState* play) {
    ObjDemo* this = THIS;

    thisx->params = OBJDEMO_GET_FF(thisx);
    if ((thisx->params != OBJDEMO_FF_FF) && (Flags_GetSwitch(play, thisx->params))) {
        Actor_Kill(&this->actor);
        return;
    }
    if (thisx->shape.rot.x < 0) {
        this->unk_148 = 1;
        thisx->shape.rot.x = -thisx->shape.rot.x;
    }
    if (thisx->shape.rot.x == 0) {
        this->xzRange = 80.0f;
    } else {
        this->xzRange = thisx->shape.rot.x * 4.0f;
        thisx->shape.rot.x = 0;
        thisx->world.rot.x = 0;
    }
    if (thisx->shape.rot.z == 0) {
        this->yRange = 60.0f;
    } else {
        this->yRange = thisx->shape.rot.z * 4.0f;
        thisx->shape.rot.z = 0;
        thisx->world.rot.z = 0;
    }
    func_80983634(play);
    this->actionFunc = func_80983678;
}

void func_80983634(PlayState* play) {
    if ((play->sceneId == SCENE_CASTLE) && (Audio_GetActiveSequence(SEQ_PLAYER_BGM_MAIN) == NA_BGM_IKANA_CASTLE)) {
        Audio_QueueSeqCmd(0x100100FF);
    }
}

void func_80983678(ObjDemo* this, PlayState* play) {
    func_80983634(play);
    if ((this->actor.xzDistToPlayer < this->xzRange) && (fabsf(this->actor.playerHeightRel) < this->yRange)) {
        if (this->unk_148 == 1) {
            CutsceneManager_Stop(CS_ID_GLOBAL_DOOR);
        }
        CutsceneManager_Queue(this->actor.csId);
        this->actionFunc = func_80983704;
    }
}

void func_80983704(ObjDemo* this, PlayState* play) {
    if ((this->unk_148 == 1) && (CutsceneManager_GetCurrentCsId() == CS_ID_GLOBAL_DOOR)) {
        CutsceneManager_Stop(CS_ID_GLOBAL_DOOR);
        CutsceneManager_Queue(this->actor.csId);
    } else {
        if (CutsceneManager_IsNext(this->actor.csId)) {
            if (this->unk_148 == 1) {
                CutsceneManager_Start(this->actor.csId, &this->actor);
                func_800E0348(play->cameraPtrs[CAM_ID_MAIN]);
            } else {
                CutsceneManager_StartWithPlayerCs(this->actor.csId, &this->actor);
            }
            if (play->sceneId == SCENE_CASTLE) {
                Audio_QueueSeqCmd(NA_BGM_IKANA_CASTLE | 0x8000);
            }
            this->actor.csId = CutsceneManager_GetAdditionalCsId(this->actor.csId);
            if (this->actor.csId == CS_ID_NONE) {
                if (this->actor.params != 0xFF) {
                    Flags_SetSwitch(play, this->actor.params);
                }
                Actor_Kill(&this->actor);
            }
        } else {
            CutsceneManager_Queue(this->actor.csId);
            func_80983634(play);
        }
    }
}

void ObjDemo_Update(Actor* thisx, PlayState* play) {
    ObjDemo* this = THIS;

    if ((this->actor.params != 0xFF) && Flags_GetSwitch(play, this->actor.params)) {
        Actor_Kill(&this->actor);
        return;
    }
    this->actionFunc(this, play);
}
