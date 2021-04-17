#include "z_obj_lightswitch.h"

#define FLAGS 0x00000010

#define THIS ((ObjLightswitch*)thisx)

void ObjLightswitch_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjLightswitch_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjLightswitch_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjLightswitch_Draw(Actor* thisx, GlobalContext* globalCtx);

// action func
void func_809600BC(ObjLightswitch* this, GlobalContext* globalCtx);
void func_80960014(ObjLightswitch* this, GlobalContext* globalCtx);
void func_80960148(ObjLightswitch* this, GlobalContext* globalCtx);
void func_80960260(ObjLightswitch* this, GlobalContext* globalCtx);
void func_80960370(ObjLightswitch* this, GlobalContext* globalCtx);
void func_80960440(ObjLightswitch* this, GlobalContext* globalCtx);

// setup func
void func_80960224(ObjLightswitch* this);
void func_80960088(ObjLightswitch* this);
void func_80960424(ObjLightswitch* this);
void func_8096012C(ObjLightswitch* this);
void func_8096034C(ObjLightswitch* this);


const ActorInit Obj_Lightswitch_InitVars = {
    ACTOR_OBJ_LIGHTSWITCH,
    ACTORCAT_SWITCH,
    FLAGS,
    OBJECT_LIGHTSWITCH,
    sizeof(ObjLightswitch),
    (ActorFunc)ObjLightswitch_Init,
    (ActorFunc)ObjLightswitch_Destroy,
    (ActorFunc)ObjLightswitch_Update,
    (ActorFunc)ObjLightswitch_Draw
};

static ColliderJntSphElementInit sJntSphElementsInit[1] = {
    {
        { ELEMTYPE_UNK0, { 0x00000000, 0x00, 0x00 }, { 0x00202000, 0x00, 0x00 }, TOUCH_NONE | TOUCH_SFX_NORMAL, BUMP_ON, OCELEM_ON, },
        { 0, { { 0, 0, 0 }, 19 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_NONE, AT_NONE, AC_ON | AC_TYPE_PLAYER | AC_TYPE_OTHER, OC1_ON | OC1_TYPE_ALL, OC2_TYPE_2, COLSHAPE_JNTSPH, },
    1, sJntSphElementsInit,
};

// segmented addresses for poly opa and xlu funcs
// different face addresses for sleep -> wake of light switch face
void* D_80960BC4[] = { 0x06000C20, 0x06000420, 0x06001420,}; // D_80960BC4

// colors used when spawning an effect
Color_RGBA8 D_80960BD0 = { 0xFF, 0xFF, 0xA0, 0xA0, };
Color_RGBA8 D_80960BD4 = { 0xFF, 0x0, 0x0, 0x0, };

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 4000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 200, ICHAIN_STOP),
};

void func_8095FBF0(ObjLightswitch* this, GlobalContext* arg1) {
    s8 pad;

    Collider_InitJntSph(arg1, &this->collider);
    Collider_SetJntSph(arg1, &this->collider, &this->actor, &sJntSphInit, &this->elements);
    this->actor.colChkInfo.mass = 0xFF;
    SysMatrix_SetStateRotationAndTranslation(this->actor.world.pos.x, 
        this->actor.world.pos.y + (this->actor.shape.yOffset * this->actor.scale.y),
        this->actor.world.pos.z, &this->actor.shape);
    Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, 1);
    Collider_UpdateSpheres(0, &this->collider);
}

// set params based switch flag
void func_8095FC94(ObjLightswitch* this, GlobalContext* globalCtx, s32 set) {
    if (this){}

    if (set) {
        Actor_SetSwitchFlag(globalCtx, GET_LIGHTSWITCH_SWITCHFLAG(this));
    } else {
        Actor_UnsetSwitchFlag(globalCtx, GET_LIGHTSWITCH_SWITCHFLAG(this));
    }
}

#if NON_EQUIVELENT
// issues: a lot of ordering issues leading up to the big effect spawn function call
// there are a lot of temps, some might have been removed that were required by accident
//  however, constantly on the edge of stack oversize, so something has to go
void func_8095FCEC(ObjLightswitch* this, GlobalContext* globalCtx) {
    Vec3f effectPos;
    f32 sinResult;
    f32 cosResult;
    f32 tempResult;
    f32 tempResult2; // must exist because of condition assignemt?
    f32 tempResult_shorter; // tempResult - 30
    f32 randomOutput;
    f32 tempResult5;

    sinResult = Math_SinS(this->actor.shape.rot.y);
    cosResult = Math_CosS(this->actor.shape.rot.y);
    if (this->colorAlpha >= 0x1900) {
        // late rodata: 6.127451e-05f = 1 / 16320 ?
        tempResult = (1.0f - ( this->colorAlpha * 6.127451e-05f)) * 400.0f;

        if (tempResult > 60.0f) {
            tempResult2 = 60.0f;
        } else {
            tempResult2 = tempResult;
        }

        tempResult = Rand_ZeroOne() * ((tempResult2 - 30.0f) + 30.0f);
        tempResult_shorter = tempResult - 30.0f;

        if (tempResult > 30.0f) {
            tempResult = 30.0f;
        } else {
            tempResult = 900.0f - SQ(tempResult_shorter);
            if (tempResult < 100.0f) {
                tempResult = 100.0f;
            }
            tempResult = sqrtf(tempResult);
        }

        tempResult5 = 2.0f * ((Rand_ZeroOne() - 0.5f) * tempResult);

        // permuter seems to think something could be added to fix ordering here, but doesn't fix enough
        //goto dummy_label_809848; dummy_label_809848: ; // minor regalloc fix
        //if (cosResult){} // minor regalloc fix, but breaks some code

        // saving fabsf result as a temp might help, but need to reduce temps
        //fabsResult = fabsf(tempResult5);
        //randomOutput = (Rand_ZeroOne() * 10.0f) + ((30.0f - fabsResult) * 0.5f);
        //randomOutput = fabsf(tempResult5);
        //randomOutput = (Rand_ZeroOne() * 10.0f) + ((30.0f - randomOutput) * 0.5f);
        randomOutput = (Rand_ZeroOne() * 10.0f) + ((30.0f - fabsf(tempResult5)) * 0.5f);

        effectPos.x = this->actor.world.pos.x + ((randomOutput * sinResult) + (tempResult5 * cosResult));
        effectPos.y = this->actor.world.pos.y + tempResult_shorter + 10.0f;
        effectPos.z = this->actor.world.pos.z + ((randomOutput * cosResult) - (tempResult5 * sinResult));
        // weirdly, using a temp here make a big difference, but.. is that right? just one temp? prob ordering issue above
        //tempResult = this->actor.world.pos.z + ((randomOutput * cosResult) - (tempResult5 * sinResult)); 
        //effectPos.z = tempResult;
        
        EffectSsDeadDb_Spawn(globalCtx, &effectPos, &D_801D15B0, &D_801D15B0,
             &D_80960BD0, &D_80960BD4, 
             100, 0, 9);

    }
}
#else
#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_Obj_Lightswitch_0x8095FBF0/func_8095FCEC.asm")
#endif

void ObjLightswitch_Init(Actor* thisx, GlobalContext* globalCtx) {
    ObjLightswitch* this = THIS;
    s8 pad[4];
    u32 switchFlagResult;
    s32 previouslyTriggered;

    switchFlagResult = Actor_GetSwitchFlag(globalCtx, GET_LIGHTSWITCH_SWITCHFLAG(this));
    previouslyTriggered = 0;
    Actor_ProcessInitChain(&this->actor, &sInitChain);
    Actor_SetHeight(&this->actor, 0.0f);

    if (switchFlagResult != 0) {
        if (GET_LIGHTSWITCH_TYPE(this) == LIGHTSWITCH_TYPE_FAKE) {
            previouslyTriggered = 1;
        } else {
            func_80960224(this);
        }
    } else {
        func_80960088(this); // switch off setup off
    }

    func_8095FBF0(this, globalCtx); // init collider

    if (GET_LIGHTSWITCH_INVISIBLE(this)) {
        // the stone tower exterior switch is part of the scene mesh, the actor is invisble on top
        this->actor.draw = NULL;
    }

    if (previouslyTriggered) {
        Actor_MarkForDeath(&this->actor);
    }
}

void ObjLightswitch_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    ObjLightswitch* this = THIS;
    Collider_DestroyJntSph(globalCtx, &this->collider);
}

// setup func
void func_8095FFF8(ObjLightswitch* this, ObjLightswitchSetupFunc setupFunc, u32 setState) {
    this->setupFunc = setupFunc;
    this->switchFlagSetType = setState;
    this->actionFunc = func_80960014;
}

// action func: check for cutscene and setup next actionfunc
void func_80960014(ObjLightswitch* this, GlobalContext* globalCtx) {
    if (ActorCutscene_GetCanPlayNext(this->actor.cutscene)) {
        ActorCutscene_StartAndSetUnkLinkFields(this->actor.cutscene, &this->actor);
        func_8095FC94(this, globalCtx, this->switchFlagSetType);
        this->cutsceneTimer = 50;
        this->setupFunc(this);
    } else {
        ActorCutscene_SetIntentToPlay(this->actor.cutscene);
    }
}

// setup: switch is off and ready
void func_80960088(ObjLightswitch* this) {
    this->faceState = LIGHTSWITCH_FACE_ASLEEP;
    this->colorR = 0x26C0;
    this->colorG = 0x1F40;
    this->colorB = 0x3FC0;
    this->colorAlpha = 0x3FC0;
    this->actionFunc = func_809600BC;
}

// action func: switch is off and ready
void func_809600BC(ObjLightswitch* this, GlobalContext* globalCtx) {
    s32 actorType = GET_LIGHTSWITCH_TYPE(this);

    if (this->hitState >= 10) {
        if (actorType == LIGHTSWITCH_TYPE_FAKE) {
            func_8095FFF8(this, func_80960424, 1); // setup burn switch away
        } else {
            if (actorType == LIGHTSWITCH_TYPE_FLIP) {
                this->hitState = 0;
            }
            func_8095FFF8(this, func_8096012C, 1); // setup switch on transition
        }
    }
}

// setup: trigger switch stage 1
void func_8096012C(ObjLightswitch* this) {
    this->faceState = LIGHTSWITCH_FACE_ASLEEP;
    this->colorShiftTimer = 0;
    this->actionFunc = func_80960148;
}

//action func: switch is triggered, color shift has begun
void func_80960148(ObjLightswitch* this, GlobalContext* globalCtx) { 
    if (this->colorShiftTimer == 0) {
        Audio_PlayActorSound2(&this->actor, 0x286F); // sfx NA_SE_EV_SUN_MARK_FLASH
    }
    this->colorShiftTimer++;

    Math_StepToS(&this->edgeRotSpeed, -0xAA, 0xA);
    this->edgeRot += this->edgeRotSpeed;
    this->colorR = (this->colorShiftTimer * 0x140) + 0x26C0;
    this->colorG = (this->colorShiftTimer * 0x1A0) + 0x1F40;

    if (this->colorShiftTimer >= 20) {
        func_80960224(this);
    } else if (this->colorShiftTimer == 15) {
        this->faceState = LIGHTSWITCH_FACE_WAKING;
        Audio_PlayActorSound2(this, 0x2815); // sfx NA_SE_EV_FOOT_SWITCH
    }
}

// setup: switch is fully on
void func_80960224(ObjLightswitch* this) {
    this->faceState = LIGHTSWITCH_FACE_FULLAWAKE;
    this->colorR = 0x3FC0;
    this->colorG = 0x3FC0;
    this->colorB = 0x3FC0;
    this->colorAlpha = 0x3FC0;
    this->edgeRotSpeed = -0xAA;
    this->colorShiftTimer = 0;
    this->actionFunc = func_80960260;
}

//action func: switch is fully on
void func_80960260(ObjLightswitch* this, GlobalContext* globalCtx) {
    s32 actorType = GET_LIGHTSWITCH_TYPE(this);

    if (actorType == LIGHTSWITCH_TYPE_REGULAR) {
        // switch can be disabled outside of this actor by flag
        if (Actor_GetSwitchFlag(globalCtx, GET_LIGHTSWITCH_SWITCHFLAG(this)) == 0) {
            func_8096034C(this); // disable switch
        }
    } else if (actorType == LIGHTSWITCH_TYPE_FLIP) {
        if (this->hitState >= 10) {
            this->hitState = 0;
            func_8095FFF8(this, func_8096034C, 0); //disable switch
        }
    } else if (this->hitState == 0) {
        if (this->colorShiftTimer >= 13) {
            func_8095FC94(this, globalCtx, 0);
            func_8096034C(this); // disable switch
        } else {
            this->colorShiftTimer += 1;
        }
    } else {
        this->colorShiftTimer = 0;
    }
    this->edgeRot += this->edgeRotSpeed;
}

// setup: disable switch transition
void func_8096034C(ObjLightswitch* this) {
    this->colorShiftTimer = 20;
    this->faceState = LIGHTSWITCH_FACE_WAKING;
    this->actionFunc = func_80960370;
}

// action func: disable switch transition
void func_80960370(ObjLightswitch* this, GlobalContext* globalCtx) {
    this->colorShiftTimer--;
    Math_StepToS(&this->edgeRotSpeed, 0, 0xA);
    this->edgeRot += this->edgeRotSpeed;
    this->colorR = (this->colorShiftTimer * 0x140) + 0x26C0;
    this->colorG = (this->colorShiftTimer * 0x1A0) + 0x1F40;

    if (this->colorShiftTimer <= 0) {
        func_80960088(this); // setup switch to off
    } else if (this->colorShiftTimer == 15) {
        this->faceState = LIGHTSWITCH_FACE_ASLEEP;
        Audio_PlayActorSound2(&this->actor, 0x2815); // NA_SE_EV_FOOT_SWITCH
    }
}

// setup: fake switch burn away
void func_80960424(ObjLightswitch* this) {
    this->colorAlpha = 0x3FC0;
    this->actionFunc = func_80960440;
}

// action func: fake switch burning away
void func_80960440(ObjLightswitch* this, GlobalContext* globalCtx) {
    this->colorAlpha -= 0xC8;
    func_8095FCEC(this, globalCtx); // spawn burning fire effect
    if (this->colorAlpha < 0) {
        Actor_MarkForDeath(&this->actor);
    } else {
        func_800B9010(&this->actor, 0x321F); // sfx NA_SE_EN_COMMON_EXTINCT_LEV "burn into ashes"
    }
} 

void ObjLightswitch_Update(Actor* thisx, GlobalContext* globalCtx) {
    ObjLightswitch* this = THIS;
    s8 pad;

    if ((this->collider.base.acFlags & AC_HIT) != 0) {
        // dmgFlags enum doesn't exist yet, 0x2000 is light arrows
        if ((this->collider.elements->info.acHitInfo->toucher.dmgFlags & 0x2000) != 0) {
            this->hitState = 10;
        } else if (GET_LIGHTSWITCH_TYPE(this) == LIGHTSWITCH_TYPE_FLIP) {
            if (this->hitState == 0) {
                if ((this->previousACFlags & AC_HIT) == 0) {
                    this->hitState = 1;
                }
            } else if (this->hitState < 10) {
                this->hitState++;
            }
        } else {
            if (this->hitState < 10) { 
                this->hitState++;
            }
        }
    } else {
        this->hitState = 0;
    }

    // why wouldn't this be in the action func?
    if ((this->cutsceneTimer > 0) && ( (s32) this->actionFunc != (s32) func_80960014 )) {
        this->cutsceneTimer--;
        if (this->cutsceneTimer == 0) {
            ActorCutscene_Stop(this->actor.cutscene);
        }
    }

    this->actionFunc(this, globalCtx);
    if (this->actor.update != 0) {
        this->previousACFlags = this->collider.base.acFlags;
        CollisionCheck_SetOC(globalCtx, &globalCtx->colCheckCtx, &this->collider);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colCheckCtx, &this->collider);
    }
}

#if NON_EQUIVELENT
// gDPSetEnvColor parameter load order is different than the order in which the value is built
// also massive regalloc probably caused by the above
void func_809605F4(ObjLightswitch* this, GlobalContext* globalCtx) {
    Vec3f tempVec3f;
    Vec3s tempVec3s;

    OPEN_DISPS(globalCtx->state.gfxCtx);

    func_8012C28C(globalCtx->state.gfxCtx);

    //temp_v0->words.w1 = ((((s32) this->colorB >> 6) & 0xFF) << 8)
          //| (((s32) this->colorR >> 6) << 0x18) 
          //| ((((s32) this->colorG >> 6) & 0xFF) << 0x10) 
          //| (((s32) this->colorAlpha >> 6) & 0xFF);
    // load order issues with loading this in the right order for the function
    gDPSetEnvColor(POLY_OPA_DISP++, 
        this->colorR >> 6,
        this->colorG >> 6, 
        this->colorB >> 6,
        this->colorAlpha >> 6);

    gSPSegment(POLY_OPA_DISP++, 0x09, &D_801AEFA0);

    tempVec3f.x = this->actor.world.pos.x;
    tempVec3f.y = this->actor.world.pos.y + (this->actor.shape.yOffset * this->actor.scale.y);
    tempVec3f.z = this->actor.world.pos.z;

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx), 
        G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPSegment(POLY_OPA_DISP++, 0x08, Lib_SegmentedToVirtual(D_80960BC4[this->faceState]));

    gSPDisplayList(POLY_OPA_DISP++, 0x6000260);

    tempVec3s.x = this->actor.shape.rot.x;
    tempVec3s.y = this->actor.shape.rot.y;
    tempVec3s.z = this->actor.shape.rot.z + this->edgeRot;
    SysMatrix_SetStateRotationAndTranslation(tempVec3f.z, tempVec3f.y, tempVec3f.x, &tempVec3s);
    Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, 1);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx),
         G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(POLY_OPA_DISP++, 0x6000398);

    tempVec3s.z = this->actor.shape.rot.z - this->edgeRot;
    SysMatrix_SetStateRotationAndTranslation(tempVec3f.z, tempVec3f.y, tempVec3f.x, &tempVec3s);
    Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, 1);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx),
         G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(POLY_OPA_DISP++, 0x6000408);

    CLOSE_DISPS(globalCtx->state.gfxCtx);
    
}
#else
#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_Obj_Lightswitch_0x8095FBF0/func_809605F4.asm")
#endif

#if NON_EQUIVELENT
// same issue as above
void func_80960880(ObjLightswitch* this, GlobalContext* globalCtx) {
    Vec3f temp3f;
    Vec3s temp3s;

    OPEN_DISPS(globalCtx->state.gfxCtx);

    func_8012C2DC(globalCtx->state.gfxCtx);

    //temp_v0->words.w1 = ((((s32) this->colorB >> 6) & 0xFF) << 8) 
        //| (((s32) this->colorR >> 6) << 0x18) 
        //| ((((s32) this->colorG >> 6) & 0xFF) << 0x10) 
        //| (((s32) this->colorAlpha >> 6) & 0xFF);
    gDPSetEnvColor(POLY_XLU_DISP++,
        this->colorR >> 6,
        this->colorG >> 6,
        this->colorB >> 6,
        this->colorAlpha >> 6);


    gSPSegment(POLY_XLU_DISP++, 0x09, &D_801AEF88);

    temp3f.x = this->actor.world.pos.x;
    temp3f.y = this->actor.world.pos.y + (this->actor.shape.yOffset * this->actor.scale.y);
    temp3f.z = this->actor.world.pos.z;

    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx),
         G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPSegment(POLY_XLU_DISP++, 0x08, Lib_SegmentedToVirtual(D_80960BC4[this->faceState]));

    gSPDisplayList(POLY_XLU_DISP++, 0x6000260);

    temp3s.x = this->actor.shape.rot.x;
    temp3s.y = this->actor.shape.rot.y;
    temp3s.z = this->actor.shape.rot.z + this->edgeRot;
    SysMatrix_SetStateRotationAndTranslation(temp3f.x, temp3f.y,  temp3f.z, &temp3s);
    Matrix_Scale(this->actor.scale.x, this->actor.scale.y,  this->actor.scale.z, 1);

    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx),
         G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(POLY_XLU_DISP++, 0x6000398);

    temp3s.z = this->actor.shape.rot.z - this->edgeRot;
    SysMatrix_SetStateRotationAndTranslation(temp3f.x, temp3f.y, temp3f.z, &temp3s);
    Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, 1);

    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx),
     G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(POLY_XLU_DISP++, 0x6000408);

    CLOSE_DISPS(globalCtx->state.gfxCtx);
}
#else
#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_Obj_Lightswitch_0x8095FBF0/func_80960880.asm")
#endif

void ObjLightswitch_Draw(Actor* thisx, GlobalContext* globalCtx) {
    ObjLightswitch* this = THIS;
    s32 alpha = (this->colorAlpha >> 6) & 0xFF;

    if ((GET_LIGHTSWITCH_TYPE(this) == LIGHTSWITCH_TYPE_FAKE) && (alpha > 0) && (alpha < 0xFF)) {
        func_80960880(this, globalCtx); // xlu func
    } else { 
        func_809605F4(this, globalCtx); // opa func
    }
}

