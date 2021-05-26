/*
 * File: z_en_pametfrog.c
 * Overlay: En_Pametfrog
 * Description: Gekko & Snapper Miniboss: Gekko
 */

#include "z_en_pametfrog.h"
#include "src/overlays/actors/ovl_En_Bigpamet/z_en_bigpamet.h"

#define FLAGS 0x00000035

#define THIS ((EnPametfrog*)thisx)

void EnPametfrog_Init(Actor* thisx, GlobalContext* globalCtx);
void EnPametfrog_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnPametfrog_Update(Actor* thisx, GlobalContext* globalCtx);
void EnPametfrog_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8086A0F4(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086A964(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086AAA8(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086AA60(EnPametfrog* this);
void func_8086AAA8(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086AB04(EnPametfrog* this);
void func_8086AB68(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086AD34(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086AE48(EnPametfrog* this);
void func_8086AEC8(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086AFC8(EnPametfrog* this);
void func_8086B140(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086B478(EnPametfrog* this);
void func_8086B570(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086B66C(EnPametfrog* this);
void func_8086B794(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086B864(EnPametfrog* this);
void func_8086B8CC(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086B9D0(EnPametfrog* this);
void func_8086BA6C(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086BB4C(EnPametfrog* this);
void func_8086BB9C(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086BDA8(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086BEEC(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086BE60(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086BF90(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086C088(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086C0CC(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086C1AC(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086C274(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086C4B8(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086C618(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086C6D0(EnPametfrog* this);
void func_8086C72C(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086C7C8(EnPametfrog* this);
void func_8086C81C(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086C94C(EnPametfrog* this);
void func_8086C99C(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086C5A8(EnPametfrog* this);
void func_8086CC04(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086CD04(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086CD6C(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086CEB4(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086CEF0(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086D084(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086D140(EnPametfrog* this, GlobalContext* globalCtx);
void func_8086D1E8(EnPametfrog* this, GlobalContext* globalCtx);

extern AnimationHeader D_06000994;
extern AnimationHeader D_06001B08;
extern AnimationHeader D_06001E14;
extern AnimationHeader D_06001F20;
extern AnimationHeader D_060030E4;
extern AnimationHeader D_0600347C;
extern AnimationHeader D_060039C4;
extern AnimationHeader D_06003F28;
extern AnimationHeader D_06004298;
extern AnimationHeader D_06004680;
extern AnimationHeader D_06004894;
extern AnimationHeader D_06004D50;
extern AnimationHeader D_060050B8;
extern AnimationHeader D_060052EC;
extern AnimationHeader D_06005694;
extern AnimationHeader D_06005D54;
extern AnimationHeader D_060066B4;
extern AnimationHeader D_060070C4;
extern FlexSkeletonHeader D_0600DF98;
extern AnimationHeader D_0600F990;
extern AnimationHeader D_0600F048;

const ActorInit En_Pametfrog_InitVars = {
    ACTOR_EN_PAMETFROG,
    ACTORCAT_BOSS,
    FLAGS,
    OBJECT_BIGSLIME,
    sizeof(EnPametfrog),
    (ActorFunc)EnPametfrog_Init,
    (ActorFunc)EnPametfrog_Destroy,
    (ActorFunc)EnPametfrog_Update,
    (ActorFunc)EnPametfrog_Draw,
};

static DamageTable sDamageTable = {
    0x10, 0x01, 0x00, 0x01, 0x01, 0x01, 0x00, 0x10, 0x01, 0x01, 0x01, 0x22, 0x32, 0x42, 0x01, 0x10,
    0x01, 0x02, 0x10, 0x50, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};

static ColliderJntSphElementInit sJntSphElementsInit[2] = {
    {
        {
            ELEMTYPE_UNK1,
            { 0xF7CFFFFF, 0x00, 0x00 },
            { 0xF7CFFFFF, 0x00, 0x00 },
            TOUCH_NONE | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 1, { { 0, 0, 0 }, 32 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xF7CFFFFF, 0x00, 0x04 },
            { 0xF7CFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_WOOD,
            BUMP_NONE,
            OCELEM_NONE,
        },
        { 1, { { 0, 0, 0 }, 25 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    {
        COLTYPE_HIT6,
        AT_NONE | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    2,
    sJntSphElementsInit,
};

static CollisionCheckInfoInit sColChkInit = { 3, 30, 60, 50 };

static InitChainEntry sInitChain[] = {
    ICHAIN_S8(hintId, 69, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(targetArrowOffset, -13221, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -1000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 7, ICHAIN_CONTINUE),
    ICHAIN_U8(targetMode, 10, ICHAIN_STOP),
};

// gSaveContext.perm.weekEventReg[KEY] = VALUE
// KEY | VALUE
s32 D_8086D9F4[] = {
    (0x20 << 8) | 0x40,
    (0x20 << 8) | 0x80,
    (0x21 << 8) | 0x01,
    (0x21 << 8) | 0x02,
};

Vec3f D_8086DA04 = { 0.0f, -0.5f, 0.0f };

Color_RGBA8 D_8086DA10 = { 250, 250, 250, 255 };

Color_RGBA8 D_8086DA14 = { 180, 180, 180, 255 };

static AnimationHeader* sAnimations[] = {
    &D_0600347C,
    &D_060070C4,
    &D_06003F28,
    &D_0600F048,
};

s8 D_8086DA28[] = {
    -1, -1, 0, -1, 1, -1, 2, -1, 3, -1, 4, -1, 5, 6, -1, 7, 8, 9, -1, 10, -1, 11, -1, -1,
};

void EnPametfrog_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnPametfrog* this = THIS;
    s32 i;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, func_800B3FC0, 55.0f);
    CollisionCheck_SetInfo(&this->actor.colChkInfo, &sDamageTable, &sColChkInit);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_0600DF98, &D_0600F990, this->limbDrawTable,
                     this->transitionDrawTable, 24);
    Collider_InitAndSetJntSph(globalCtx, &this->collider, &this->actor, &sJntSphInit, this->colElement);
    this->params = CLAMP(this->actor.params, 1, 4);
    if (Actor_GetRoomCleared(globalCtx, globalCtx->roomContext.currRoom.num)) {
        Actor_MarkForDeath(&this->actor);
        if ((gSaveContext.perm.weekEventReg[D_8086D9F4[this->actor.params - 1] >> 8] &
             (u8)D_8086D9F4[this->actor.params - 1]) == 0) {
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_MINIFROG, this->actor.world.pos.x,
                        this->actor.world.pos.y, this->actor.world.pos.z, 0, this->actor.shape.rot.y, 0, this->params);
        }
    } else {
        for (i = 0; i < 2; i++) {
            this->collider.elements[i].dim.worldSphere.radius = this->collider.elements[i].dim.modelSphere.radius;
        }

        if (Actor_SpawnWithParent(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_BIGPAMET,
                                  this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0,
                                  0) == 0) {
            Actor_MarkForDeath(&this->actor);
        } else {
            this->actor.params = 0;
            func_8086C6D0(this);
        }
    }
}

void EnPametfrog_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnPametfrog* this = THIS;

    Collider_DestroyJntSph(globalCtx, &this->collider);
}

u8 EnPametfrog_Vec3fNormalize(Vec3f* vec) {
    f32 magnitude = Math3D_Vec3fMagnitude(vec);

    if (magnitude < 0.0001f) {
        return false;
    } else {
        Math_Vec3f_Scale(vec, 1.0f / magnitude);
        return true;
    }
}

void func_8086A024(EnPametfrog* this) {
    this->unk_2AC = 10;
    this->collider.base.colType = COLTYPE_HIT3;
    this->collider.elements->info.elemType = ELEMTYPE_UNK0;
    this->unk_2C8 = 0.75f;
    this->unk_2CC = 1.125f;
    this->unk_2C4 = 1.0f;
}

void func_8086A068(EnPametfrog* this, GlobalContext* globalCtx) {
    this->unk_2BC = 0;
    if (this->unk_2AC == 10) {
        this->unk_2AC = 0;
        this->collider.base.colType = COLTYPE_HIT6;
        this->collider.elements->info.elemType = ELEMTYPE_UNK1;
        this->unk_2C4 = 0.0f;
        func_800BF7CC(globalCtx, &this->actor, &this->unk_2F4, 12, 2, 0.3f, 0.2f);
    }
}

void func_8086A0F4(EnPametfrog* this, GlobalContext* globalCtx) {
    Vec3f pos;

    if (this->actor.yDistToWater > 0.0f) {
        pos.x = this->actor.world.pos.x;
        pos.z = this->actor.world.pos.z;
        pos.y = this->actor.world.pos.y + this->actor.yDistToWater;
        EffectSsGRipple_Spawn(globalCtx, &pos, 150, 550, 0);
        pos.y += 8.0f;
        EffectSsGSplash_Spawn(globalCtx, &pos, NULL, NULL, 0, 550);
    }
}

void func_8086A1A0(EnPametfrog* this, GlobalContext* globalCtx) {
    Vec3f pos;

    if ((this->actor.yDistToWater > 0.0f) && ((globalCtx->gameplayFrames % 14) == 0)) {
        pos.x = this->actor.world.pos.x;
        pos.z = this->actor.world.pos.z;
        pos.y = this->actor.world.pos.y + this->actor.yDistToWater;
        EffectSsGRipple_Spawn(globalCtx, &pos, 150, 550, 0);
    }
}

void func_8086A238(EnPametfrog* this) {
    MtxF unkMtx;

    unkMtx.xx = this->unk_2E8.x;
    unkMtx.xy = this->unk_2E8.y;
    unkMtx.xz = this->unk_2E8.z;
    unkMtx.yx = this->unk_2DC.x;
    unkMtx.yy = this->unk_2DC.y;
    unkMtx.yz = this->unk_2DC.z;
    unkMtx.zx = this->unk_2D0.x;
    unkMtx.zy = this->unk_2D0.y;
    unkMtx.zz = this->unk_2D0.z;

    func_8018219C(&unkMtx, &this->actor.shape.rot, 0);
    this->actor.world.rot.x = -this->actor.shape.rot.x;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->actor.world.rot.z = this->actor.shape.rot.z;
}

s32 func_8086A2CC(EnPametfrog* this, CollisionPoly* floorPoly) {
    Vec3f vec1;
    Vec3f vec2;
    f32 temp_f0;
    f32 temp_f12;

    this->actor.floorPoly = floorPoly;
    vec1.x = floorPoly->normal.x * 3.051851e-05f;
    vec1.y = floorPoly->normal.y * 3.051851e-05f;
    vec1.z = floorPoly->normal.z * 3.051851e-05f;
    temp_f12 = (vec1.x * this->unk_2DC.x) + (vec1.y * this->unk_2DC.y) + (vec1.z * this->unk_2DC.z);
    if (fabsf(temp_f12) >= 1.0f) {
        return false;
    }

    temp_f0 = func_80086C48(temp_f12);
    if (temp_f0 < 0.0001f) {
        return false;
    }

    Math3D_CrossProduct(&this->unk_2DC, &vec1, &vec2);
    EnPametfrog_Vec3fNormalize(&vec2);
    SysMatrix_InsertRotationAroundUnitVector_f(temp_f0, &vec2, 0);
    SysMatrix_MultiplyVector3fByState(&this->unk_2E8, &vec2);
    Math_Vec3f_Copy(&this->unk_2E8, &vec2);
    Math3D_CrossProduct(&this->unk_2E8, &vec1, &this->unk_2D0);
    EnPametfrog_Vec3fNormalize(&this->unk_2D0);
    Math_Vec3f_Copy(&this->unk_2DC, &vec1);
    return true;
}

void func_8086A428(EnPametfrog* this, GlobalContext* globalCtx, f32 arg2, f32 arg3) {
    Camera* camera = Play_GetCamera(globalCtx, this->camId);
    s16 y;
    Vec3f eye;

    y = func_800DFCDC(camera) + 0x8000;
    eye.x = (Math_SinS(y) * arg2) + camera->focalPoint.x;
    eye.y = camera->focalPoint.y + arg3;
    eye.z = (Math_CosS(y) * arg2) + camera->focalPoint.z;
    func_8016970C(globalCtx, this->camId, &camera->focalPoint, &eye);
}

void func_8086A4E4(EnPametfrog* this, GlobalContext* globalCtx) {
    Camera* camera;

    if (this->camId != 0) {
        camera = Play_GetCamera(globalCtx, this->camId);
        func_8016970C(globalCtx, 0, &camera->focalPoint, &camera->eye);
        this->camId = 0;
        ActorCutscene_Stop(this->cutscene);
        func_800B724C(globalCtx, this, 6);
    }
}

void func_8086A554(EnPametfrog* this, GlobalContext* globalCtx) {
    CollisionPoly* poly;
    u32 bgId;
    Vec3f vec1;
    Vec3f vec2;
    Vec3f vec3;
    Actor* child;

    poly = NULL;
    this->actor.child->world.pos.x = (Math_SinS(this->actor.shape.rot.y) * 300.0f) + this->actor.world.pos.x;
    this->actor.child->world.pos.z = (Math_CosS(this->actor.shape.rot.y) * 300.0f) + this->actor.world.pos.z;
    this->actor.child->shape.rot.y = this->actor.shape.rot.y + 0x8000;
    vec2.x = this->actor.child->world.pos.x;
    vec2.y = this->actor.child->world.pos.y + 50.0f;
    vec2.z = this->actor.child->world.pos.z;
    vec3.x = this->actor.child->world.pos.x;
    vec3.y = this->actor.child->world.pos.y - 150.0f;
    vec3.z = this->actor.child->world.pos.z;
    if (func_800C55C4(&globalCtx->colCtx, &vec2, &vec3, &vec1, &poly, 0, 1, 0, 1, &bgId) != 0) {
        this->actor.child->floorHeight = vec1.y;
    } else {
        this->actor.child->floorHeight = this->actor.home.pos.y;
    }

    child = this->actor.child;
    child->world.pos.y = child->floorHeight - 60.0f;
}

void func_8086A6B0(EnPametfrog* this, GlobalContext* globalCtx) {
    if (func_801378B8(&this->skelAnime, 1.0f)) {
        Audio_PlayActorSound2(&this->actor, 0x395B);
    } else if (func_801378B8(&this->skelAnime, 11.0f)) {
        func_8086A0F4(this, globalCtx);
        Audio_PlayActorSound2(&this->actor, 0x2902);
    }
}

void func_8086A724(EnPametfrog* this, GlobalContext* globalCtx) {
    if (this->actor.colChkInfo.damageEffect == 2) {
        this->unk_2AC = 0;
        this->unk_2C4 = 3.0f;
        this->unk_2C8 = 0.75f;
    } else if (this->actor.colChkInfo.damageEffect == 4) {
        this->unk_2AC = 0x14;
        this->unk_2C8 = 0.75f;
        this->unk_2C4 = 3.0f;
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_CLEAR_TAG,
                    this->collider.elements[0].info.bumper.hitPos.x, this->collider.elements[0].info.bumper.hitPos.y,
                    this->collider.elements[0].info.bumper.hitPos.z, 0, 0, 0, 4);
    } else if (this->actor.colChkInfo.damageEffect == 3) {
        func_8086A024(this);
    }
}

void func_8086A80C(EnPametfrog* this) {
    this->unk_2BC = 40;
    Audio_PlayActorSound2(&this->actor, 0x389E);
    func_800BCB70(&this->actor, 0, 255, 0, 40);
    this->unk_2AC = 30;
    this->unk_2C8 = 0.75f;
    this->unk_2C4 = 2.0f;
}

void func_8086A878(EnPametfrog* this) {
    this->unk_2BC = 40;
    Audio_PlayActorSound2(&this->actor, 0x389E);
    func_800BCB70(&this->actor, 0, 255, 0, 40);
}

void func_8086A8C0(EnPametfrog* this) {
    if (this->actionFunc == func_8086AB68) {
        SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06005694);
    } else if (this->actionFunc == func_8086AAA8) {
        SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_060052EC);
    } else {
        SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06004680);
    }

    this->actor.flags &= ~1;
    this->actor.params = 3;
    this->actionFunc = func_8086A964;
}

void func_8086A964(EnPametfrog* this, GlobalContext* globalCtx) {
    Actor* actor;
    Vec3f vec1;
    s32 pad;

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        if (Rand_ZeroOne() < 0.5f) {
            SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06004D50);
        } else {
            SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06004680);
        }
    }

    actor = func_800BC270(globalCtx, &this->actor, 60.0f, 0x138B0);
    if (actor != NULL) {
        vec1.x = this->actor.world.pos.x;
        vec1.y = this->actor.world.pos.y + 10.0f;
        vec1.z = this->actor.world.pos.z;
        if (actor->world.rot.x < Actor_PitchToPoint(actor, &vec1)) {
            func_8086AA60(this);
        } else {
            func_8086AB04(this);
        }
    }
}

void func_8086AA60(EnPametfrog* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06004894);
    this->unk_2B6 = 15;
    this->actionFunc = func_8086AAA8;
}

void func_8086AAA8(EnPametfrog* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) && this->unk_2B6 > 0) {
        this->unk_2B6--;
        if (this->unk_2B6 == 0) {
            func_8086A8C0(this);
        }
    }
}

void func_8086AB04(EnPametfrog* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_060050B8);
    this->unk_2B6 = 10;
    this->actor.params = 4;
    this->actor.shape.rot.x = 0;
    this->actor.shape.rot.z = 0;
    this->actor.shape.rot.y = this->actor.child->world.rot.y;
    this->actionFunc = func_8086AB68;
}

// TODO: Verify that this->actor.child is EnBigpamet
void func_8086AB68(EnPametfrog* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->unk_2B6--;
    if (this->unk_2B6 == 0) {
        func_8086A8C0(this);
    } else {
        this->actor.world.pos.y =
            Math_SinS(this->unk_2B6 * 0xCCC) * 100.0f + (((EnBigpamet*)this->actor.child)->unk_2AC + 46.0f);
    }
}

void func_8086AC0C(EnPametfrog* this, GlobalContext* globalCtx) {
    Vec3f eye;
    s16 yaw;

    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06001F20);
    this->actor.params = 6;
    this->actor.speedXZ = 7.0f;
    this->actor.velocity.y = 15.0f;
    this->actor.world.rot.y = this->actor.child->world.rot.y + 0x8000;
    this->actor.shape.rot.y = this->actor.world.rot.y;
    this->actor.flags |= 1;
    this->unk_2B6 = 30;
    this->collider.base.ocFlags1 |= 1;
    yaw = Actor_YawToPoint(&this->actor, &this->actor.home.pos);
    eye.x = (Math_SinS(yaw) * 300.0f) + this->actor.focus.pos.x;
    eye.y = this->actor.focus.pos.y + 100.0f;
    eye.z = (Math_CosS(yaw) * 300.0f) + this->actor.focus.pos.z;
    func_8016970C(globalCtx, this->camId, &this->actor.focus, &eye);
    Audio_PlayActorSound2(this, 0x38D3);
    this->actionFunc = func_8086AD34;
}

void func_8086AD34(EnPametfrog* this, GlobalContext* globalCtx) {
    f32 sin;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->actor.shape.rot.x += 0x800;
    this->actor.shape.rot.z += 0x1000;
    if (this->unk_2B6 != 0) {
        this->unk_2B6--;
    }

    sin = sin_rad(this->unk_2B6 * 1.0471976f) * ((0.02f * (this->unk_2B6 * 0.16666667f)) + 0.005f) + 1.0f;
    func_8086A428(this, globalCtx, 300.0f * sin, 100.0f * sin);
    if (this->actor.bgCheckFlags & 1) {
        func_8086A4E4(this, globalCtx);
        func_8086AE48(this);
    }
}

void func_8086AE48(EnPametfrog* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060039C4, 2.0f, 0.0f, 0.0f, 0, -2.0f);
    this->actor.shape.rot.x = 0;
    this->actor.shape.rot.z = 0;
    this->actor.bgCheckFlags &= ~8;
    Audio_PlayActorSound2(this, 0x39A1);
    this->actionFunc = func_8086AEC8;
}

void func_8086AEC8(EnPametfrog* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    func_8086A6B0(this, globalCtx);
    if ((this->actor.bgCheckFlags & 1) && (this->actor.bgCheckFlags & 8) && (this->actor.wallBgId == BGCHECK_SCENE) &&
        ((this->actor.wallPoly->normal.y * 3.051851e-05f) < 0.5f)) {
        func_8086AFC8(this);
    } else if (((this->actor.bgCheckFlags & 1) == 0) ||
               (this->skelAnime.animCurrentFrame > 1.0f) && (this->skelAnime.animCurrentFrame < 12.0f)) {
        this->actor.speedXZ = 12.0f;
    } else {
        this->actor.speedXZ = 0.0f;
    }
}

void func_8086AFC8(EnPametfrog* this) {
    if (this->actionFunc == func_8086AEC8) {
        SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06001E14);
        this->collider.base.acFlags |= 1;
        this->unk_2D0.x = 0.0f;
        this->unk_2D0.z = 0.0f;
        this->actor.gravity = 0.0f;
        this->actor.world.pos.y = this->actor.focus.pos.y;
        this->unk_2D0.y = 1.0f;
        Math_Vec3f_Copy(&this->actor.colChkInfo.displacement, &D_801D15B0);
        this->actor.colChkInfo.mass = MASS_IMMOVABLE;
        this->unk_2DC.x = this->actor.wallPoly->normal.x * 3.051851e-05f;
        this->unk_2DC.y = this->actor.wallPoly->normal.y * 3.051851e-05f;
        this->unk_2DC.z = this->actor.wallPoly->normal.z * 3.051851e-05f;
        Math3D_CrossProduct(&this->unk_2DC, &this->unk_2D0, &this->unk_2E8);
        EnPametfrog_Vec3fNormalize(&this->unk_2E8);
        Math3D_CrossProduct(&this->unk_2E8, &this->unk_2DC, &this->unk_2D0);
        EnPametfrog_Vec3fNormalize(&this->unk_2D0);
        func_8086A238(this);
        this->actor.floorPoly = this->actor.wallPoly;
        this->unk_2AD = 10;
    } else {
        this->skelAnime.animPlaybackSpeed = 1.0f;
    }

    Audio_PlayActorSound2(this, 0x39A9);
    this->actor.speedXZ = 8.0f;
    this->unk_2B6 = Rand_S16Offset(35, 15);
    this->actionFunc = func_8086B140;
}

void func_8086B140(EnPametfrog* this, GlobalContext* globalCtx) {
    CollisionPoly* poly1;
    CollisionPoly* poly2;
    Vec3f vec1;
    Vec3f vec2;
    Vec3f vec3;
    Vec3f vec4;
    f32 doubleSpeedXZ;
    u32 bgId1;
    u32 bgId2;
    s32 isSuccess;

    poly1 = NULL;
    poly2 = NULL;
    isSuccess = false;

    if (this->unk_2BC > 0) {
        this->unk_2BC--;
    } else {
        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
        this->unk_2B6--;
        this->actor.speedXZ = 8.0f;
        doubleSpeedXZ = this->actor.speedXZ * 2.0f;
        vec1.x = this->actor.world.pos.x + this->unk_2DC.x * 2.0f;
        vec1.y = this->actor.world.pos.y + this->unk_2DC.y * 2.0f;
        vec1.z = this->actor.world.pos.z + this->unk_2DC.z * 2.0f;
        vec2.x = this->actor.world.pos.x - this->unk_2DC.x * 25.0f;
        vec2.y = this->actor.world.pos.y - this->unk_2DC.y * 25.0f;
        vec2.z = this->actor.world.pos.z - this->unk_2DC.z * 25.0f;
        if (func_800C55C4(&globalCtx->colCtx, &vec1, &vec2, &vec4, &poly2, 1, 1, 1, 1, &bgId2) != 0) {
            vec2.x = this->unk_2D0.x * doubleSpeedXZ + vec1.x;
            vec2.y = this->unk_2D0.y * doubleSpeedXZ + vec1.y;
            vec2.z = this->unk_2D0.z * doubleSpeedXZ + vec1.z;
            if (func_800C55C4(&globalCtx->colCtx, &vec1, &vec2, &vec3, &poly1, 1, 1, 1, 1, &bgId1) != 0) {
                isSuccess = func_8086A2CC(this, poly1);
                Math_Vec3f_Copy(&this->actor.world.pos, &vec3);
                this->actor.floorBgId = bgId1;
                this->actor.speedXZ = 0.0f;
            } else {
                if (this->actor.floorPoly != poly2) {
                    isSuccess = func_8086A2CC(this, poly2);
                }
                Math_Vec3f_Copy(&this->actor.world.pos, &vec4);
                this->actor.floorBgId = bgId2;
            }
        } else {
            func_8086B66C(this);
        }

        if (isSuccess) {
            func_8086A238(this);
        }

        if (func_801378B8(&this->skelAnime, 15.0f)) {
            Audio_PlayActorSound2(this, 0x3828);
        }

        if (((globalCtx->gameplayFrames % 60) == 0) && (Rand_ZeroOne() < 0.8f)) {
            Audio_PlayActorSound2(this, 0x38D2);
        }

        if ((this->unk_2B6 == 0) ||
            ((this->actor.world.pos.y < (this->actor.home.pos.y + 200.0f)) && (this->unk_2D0.y <= 0.0f))) {
            this->unk_2AD--;
            if (this->unk_2AD == 0) {
                func_8086B66C(this);
            } else {
                func_8086B478(this);
            }
        }
    }
}

void func_8086B478(EnPametfrog* this) {
    s32 pad;
    f32 randFloat;

    this->actor.speedXZ = 0.0f;
    this->skelAnime.animPlaybackSpeed = 1.5f;
    if (this->unk_2B6 != 0) {
        this->unk_2C0 = this->unk_2E8.y > 0.0f ? 0.10471976f : -0.10471976f;
    } else {
        randFloat = Rand_ZeroFloat(8192.0f);
        this->unk_2C0 = (Rand_ZeroOne() < 0.5f ? -1 : 1) * (4096.0f + randFloat) * 6.391587e-06f;
    }
    this->unk_2B6 = 15;
    Audio_PlayActorSound2(this, 0x39AC);
    this->actionFunc = func_8086B570;
}

void func_8086B570(EnPametfrog* this, GlobalContext* globalCtx) {
    s32 pad1;
    s32 pad2;
    Vec3f* vec;

    if (this->unk_2BC > 0) {
        this->unk_2BC--;
    } else {
        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
        this->unk_2B6--;
        SysMatrix_InsertRotationAroundUnitVector_f(this->unk_2C0, &this->unk_2DC, 0);
        SysMatrix_MultiplyVector3fByState(&this->unk_2D0, &vec);
        Math_Vec3f_Copy(&this->unk_2D0, &vec);
        Math3D_CrossProduct(&this->unk_2DC, &this->unk_2D0, &this->unk_2E8);
        func_8086A238(this);
        if (((globalCtx->gameplayFrames % 60) == 0) && (Rand_ZeroOne() < 0.8f)) {
            Audio_PlayActorSound2(this, 0x38D2);
        }

        if (this->unk_2B6 == 0) {
            func_8086AFC8(this);
        }
    }
}

void func_8086B66C(EnPametfrog* this) {
    s16 yaw;

    SkelAnime_ChangeAnim(&this->skelAnime, &D_060039C4, 0.0f, 0.0f, SkelAnime_GetFrameCount(&D_060039C4), 2, 0.0f);
    this->actor.shape.rot.y = Actor_YawBetweenActors(&this->actor, this->actor.child);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->actor.shape.rot.x = 0;
    this->actor.shape.rot.z = 0;
    this->actor.colChkInfo.mass = 50;
    this->actor.speedXZ = 5.0f;
    this->collider.base.acFlags &= ~1;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = -1.0f;
    yaw = Actor_YawToPoint(&this->actor, &this->actor.home.pos);
    this->actor.world.pos.x += 30.0f * Math_SinS(yaw);
    this->actor.world.pos.z += 30.0f * Math_CosS(yaw);
    this->actor.bgCheckFlags &= ~1;
    this->actor.params = 7;
    this->actionFunc = func_8086B794;
}

void func_8086B794(EnPametfrog* this, GlobalContext* globalCtx) {
    s16 yaw;

    if (this->actor.bgCheckFlags & 1) {
        func_8086B864(this);
    } else if (this->actor.floorHeight == -32000.0f) {
        yaw = Actor_YawToPoint(&this->actor, &this->actor.home.pos);
        this->actor.world.pos.x += 5.0f * Math_SinS(yaw);
        this->actor.world.pos.z += 5.0f * Math_CosS(yaw);
        if (this->actor.world.pos.y < (this->actor.home.pos.y - 5.0f)) {
            this->actor.world.pos.y = this->actor.home.pos.y;
        }
    }
}

void func_8086B864(EnPametfrog* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060039C4, 2.0f, 0.0f, 0.0f, 0, -2.0f);
    this->actor.params = 7;
    this->actionFunc = func_8086B8CC;
}

void func_8086B8CC(EnPametfrog* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    func_8086A6B0(this, globalCtx);
    this->actor.shape.rot.y = Actor_YawBetweenActors(&this->actor, this->actor.child);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    if (((this->actor.bgCheckFlags & 1) == 0) ||
        ((this->skelAnime.animCurrentFrame > 1.0f) && (this->skelAnime.animCurrentFrame < 12.0f))) {
        this->actor.speedXZ = 12.0f;
    } else {
        this->actor.speedXZ = 0.0f;
    }

    if ((this->actor.child->params == 1) && (Actor_XZDistanceBetweenActors(&this->actor, this->actor.child) < 120.0f) &&
        func_801378B8(&this->skelAnime, 0.0f)) {
        func_8086B9D0(this);
    }
}

void func_8086B9D0(EnPametfrog* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06004680, 6.0f);
    this->unk_2B6 = 6;
    this->collider.base.ocFlags1 &= ~1;
    this->collider.base.acFlags &= ~1;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.shape.rot.y = Actor_YawBetweenActors(&this->actor, this->actor.child);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->actor.params = 8;
    Audio_PlayActorSound2(this, 0x395C);
    this->actionFunc = func_8086BA6C;
}

void func_8086BA6C(EnPametfrog* this, GlobalContext* globalCtx) {
    f32 temp_f0;
    EnBigpamet* bigpamet;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->unk_2B6--;
    if (this->unk_2B6 == 0) {
        func_8086BB4C(this);
    } else {
        bigpamet = this->actor.child;
        temp_f0 = 1.0f / this->unk_2B6;
        this->actor.world.pos.x -= (this->actor.world.pos.x - bigpamet->actor.world.pos.x) * temp_f0;
        this->actor.world.pos.z -= (this->actor.world.pos.z - bigpamet->actor.world.pos.z) * temp_f0;
        this->actor.world.pos.y =
            Math_SinS((-this->unk_2B6 * 0x1000) + 0x6000) * 65.0f + ((EnBigpamet*)this->actor.child)->unk_2AC;
    }
}

void func_8086BB4C(EnPametfrog* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06000994);
    this->actor.shape.rot.y = this->actor.child->shape.rot.y;
    this->actor.params = 3;
    this->actionFunc = func_8086BB9C;
}

void func_8086BB9C(EnPametfrog* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        func_8086A4E4(this, globalCtx);
        func_8086A8C0(this);
    }
}

void func_8086BBE0(EnPametfrog* this, GlobalContext* globalCtx) {
    s16 yaw;
    Vec3f eye;
    f32 xzDist;

    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06001F20);
    if (this->actor.colChkInfo.health > 0) {
        this->actor.params = 7;
    }

    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->collider.base.acFlags &= ~1;
    this->unk_2B6 = 10;
    if (this->actor.colChkInfo.health == 0) {
        Audio_PlayActorSound2(this, 0x38D6);
    } else {
        Audio_PlayActorSound2(this, 0x38D3);
    }

    // TODO: args for func_800BCB70
    func_800BCB70(&this->actor, 0x4000, 0xFF, 0, 0x10);
    yaw = Actor_YawToPoint(&this->actor, &this->actor.home.pos);
    this->actor.world.pos.x += 30.0f * Math_SinS(yaw);
    this->actor.world.pos.z += 30.0f * Math_CosS(yaw);

    if (this->camId != 0) {
        xzDist = sqrtf(SQ(this->unk_2DC.x) + SQ(this->unk_2DC.z));
        if (xzDist > 0.001f) {
            xzDist = 200.0f / xzDist;
        } else {
            xzDist = 200.0f;
            this->unk_2DC.x = 1.0f;
            this->unk_2DC.z = 0.0f;
        }

        eye.x = this->actor.world.pos.x + (xzDist * this->unk_2DC.x);
        eye.y = (this->actor.world.pos.y + this->actor.home.pos.y) * 0.5f;
        eye.z = this->actor.world.pos.z + (xzDist * this->unk_2DC.z);
        func_8016970C(globalCtx, this->camId, &this->actor.world.pos, &eye);
    }

    this->actionFunc = func_8086BDA8;
}

void func_8086BDA8(EnPametfrog* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->actor.colorFilterTimer = 0x10;
    if (this->unk_2B6 > 0) {
        this->unk_2B6--;
        if (this->unk_2B6 == 0) {
            this->actor.gravity = -1.0f;
            this->actor.colChkInfo.mass = 50;
        }
    } else {
        this->unk_2B8 += 0xF00;
        if (this->camId != 0) {
            func_8016970C(globalCtx, this->camId, &this->actor.world.pos, &Play_GetCamera(globalCtx, this->camId)->eye);
        }

        if (this->actor.bgCheckFlags & 1) {
            func_8086BE60(this, globalCtx);
        }
    }
}

void func_8086BE60(EnPametfrog* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06004298);
    this->actor.shape.rot.x = 0;
    this->actor.shape.rot.y += this->unk_2B8;
    this->actor.shape.rot.z = 0;
    this->unk_2B8 = 0;
    this->unk_2B6 = 5;
    func_8086A068(this, globalCtx);
    func_8086A0F4(this, globalCtx);
    Audio_PlayActorSound2(this, 0x2902);
    this->actionFunc = func_8086BEEC;
}

void func_8086BEEC(EnPametfrog* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        if (this->skelAnime.animCurrentSeg == &D_06004298) {
            if (this->actor.colChkInfo.health == 0) {
                this->unk_2B6--;
                if (this->unk_2B6 == 0) {
                    func_8086BF90(this, globalCtx);
                }
            } else {
                SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_060030E4);
            }
        } else {
            func_8086B864(this);
        }
    }
}

void func_8086BF90(EnPametfrog* this, GlobalContext* globalCtx) {
    Vec3f eye;
    s16 yaw = Actor_YawToPoint(this->actor.child, &this->actor.home.pos);
    s16 yawDiff = this->actor.yawTowardsPlayer - yaw;

    yaw = yawDiff > 0 ? yaw - 0x2000 : yaw + 0x2000;
    eye.x = this->actor.child->focus.pos.x + 150.0f * Math_SinS(yaw);
    eye.y = this->actor.child->focus.pos.y + 20.0f;
    eye.z = this->actor.child->focus.pos.z + 150.0f * Math_CosS(yaw);
    func_8016970C(globalCtx, this->camId, &this->actor.child->focus, &eye);
    this->actor.params = 9;
    this->unk_2B6 = 38;
    this->actionFunc = func_8086C088;
}

void func_8086C088(EnPametfrog* this, GlobalContext* globalCtx) {
    this->actor.colorFilterTimer = 16;
    if (this->unk_2B6 > 0) {
        this->unk_2B6--;
        if (this->unk_2B6 == 0) {
            func_8086C0CC(this, globalCtx);
        }
    }
}

void func_8086C0CC(EnPametfrog* this, GlobalContext* globalCtx) {
    Vec3f eye;
    s16 yaw = Actor_YawToPoint(&this->actor, &this->actor.home.pos);
    s16 yawDiff = this->actor.yawTowardsPlayer - yaw;

    yaw = yawDiff > 0 ? yaw - 0x2000 : yaw + 0x2000;
    eye.x = this->actor.world.pos.x + Math_SinS(yaw) * 150.0f;
    eye.y = this->actor.world.pos.y + 20.0f;
    eye.z = this->actor.world.pos.z + Math_CosS(yaw) * 150.0f;
    func_8016970C(globalCtx, this->camId, &this->actor.world, &eye);
    this->unk_2B6 = 20;
    this->actionFunc = func_8086C1AC;
}

void func_8086C1AC(EnPametfrog* this, GlobalContext* globalCtx) {
    this->unk_2B6--;
    Actor_SetScale(&this->actor, this->unk_2B6 * 0.00035000002f);
    this->actor.colorFilterTimer = 16;
    func_8086A428(this, globalCtx, (this->unk_2B6 * 3.75f) + 75.0f, (this->unk_2B6 * 0.5f) + 10.0f);
    if (this->unk_2B6 == 0) {
        func_8086C274(this, globalCtx);
    }
}

void func_8086C274(EnPametfrog* this, GlobalContext* globalCtx) {
    s16 yaw = func_800DFCDC(ACTIVE_CAM) + 0x8000;
    Vec3f vec1;
    Vec3f vec2;
    s32 i;

    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_MINIFROG, this->actor.world.pos.x, this->actor.world.pos.y,
                this->actor.world.pos.z, 0, yaw, 0, this->params);
    vec1.x = (Math_SinS(yaw) * 20.0f) + this->actor.world.pos.x;
    vec1.y = this->actor.world.pos.y + 25.0f;
    vec1.z = (Math_CosS(yaw) * 20.0f) + this->actor.world.pos.z;
    this->collider.base.ocFlags1 &= ~1;
    func_800B0DE0(globalCtx, &vec1, &D_801D15B0, &D_801D15B0, &D_8086DA10, &D_8086DA14, 800, 50);
    func_800F0568(globalCtx, &this->actor.world.pos, 40, 0x3A86);
    Actor_SetRoomClearedTemp(globalCtx, globalCtx->roomContext.currRoom.num);
    for (i = 0; i < 25; i++) {
        vec2.x = randPlusMinusPoint5Scaled(5.0f);
        vec2.y = Rand_ZeroFloat(3.0f) + 4.0f;
        vec2.z = randPlusMinusPoint5Scaled(5.0f);
        EffectSsHahen_Spawn(globalCtx, &this->actor.world.pos, &vec2, &D_8086DA04, 0, Rand_S16Offset(12, 3), -1, 10, 0);
    }

    this->unk_2B6 = 40;
    this->actionFunc = func_8086C4B8;
}

void func_8086C4B8(EnPametfrog* this, GlobalContext* globalCtx) {
    f32 temp_f2;

    this->unk_2B6--;
    temp_f2 = (sin_rad(this->unk_2B6 * 0.62831855f) * ((0.04f * (this->unk_2B6 * 0.1f)) + 0.02f)) + 1.0f;
    func_8086A428(this, globalCtx, 75.0f * temp_f2, 10.0f * temp_f2);
    if (this->unk_2B6 == 0) {
        func_8086A4E4(this, globalCtx);
        Actor_MarkForDeath(&this->actor);
    }
}

void func_8086C5A8(EnPametfrog* this) {
    if (this->actor.colChkInfo.health == 0) {
        this->cutscene = this->actor.cutscene;
    } else {
        this->cutscene = ActorCutscene_GetAdditionalCutscene(this->actor.cutscene);
    }

    ActorCutscene_SetIntentToPlay(this->cutscene);
    this->actionFunc = func_8086C618;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
}

void func_8086C618(EnPametfrog* this, GlobalContext* globalCtx) {
    if (ActorCutscene_GetCanPlayNext(this->cutscene)) {
        ActorCutscene_Start(this->cutscene, &this->actor);
        this->camId = ActorCutscene_GetCurrentCamera(this->cutscene);
        func_800B724C(globalCtx, this, 7);
        if (this->actor.colChkInfo.health == 0) {
            if (this->actor.params == 0) {
                func_8086CD6C(this, globalCtx);
            } else {
                func_8086BBE0(this, globalCtx);
            }
        } else {
            func_8086AC0C(this, globalCtx);
        }
    } else {
        ActorCutscene_SetIntentToPlay(this->cutscene);
    }
}

void func_8086C6D0(EnPametfrog* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_060066B4);
    this->collider.base.atFlags &= ~1;
    this->actor.speedXZ = 0.0f;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->actionFunc = func_8086C72C;
}

void func_8086C72C(EnPametfrog* this, GlobalContext* globalCtx) {
    func_8086A1A0(this, globalCtx);
    Math_SmoothStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 5, 0x400, 0x80);
    this->actor.shape.rot.y = this->actor.world.rot.y;
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) && (func_801690CC(globalCtx) == 0)) {
        if (this->unk_2AE == 0) {
            func_801A2E54(0x38);
            this->unk_2AE = 1;
        }
        func_8086C7C8(this);
    }
}

void func_8086C7C8(EnPametfrog* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_060039C4);
    this->collider.base.acFlags |= 1;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->actionFunc = func_8086C81C;
}

void func_8086C81C(EnPametfrog* this, GlobalContext* globalCtx) {
    Math_SmoothStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 5, 0x1000, 0x80);
    this->actor.shape.rot.y = this->actor.world.rot.y;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    func_8086A6B0(this, globalCtx);
    if ((this->actor.bgCheckFlags & 1) == 0 ||
        (this->skelAnime.animCurrentFrame > 1.0f && this->skelAnime.animCurrentFrame < 12.0f)) {
        this->actor.speedXZ = 8.0f;
    } else {
        this->actor.speedXZ = 0.0f;
    }

    if ((this->collider.base.ocFlags1 & 2) && (this->collider.base.ocFlags2 & 1) &&
        Actor_IsActorFacingLink(&this->actor, 0x3000) &&
        (this->skelAnime.animCurrentFrame <= 2.0f || this->skelAnime.animCurrentFrame >= 11.0f)) {
        func_8086C94C(this);
    }
}

void func_8086C94C(EnPametfrog* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_0600F990);
    this->unk_2B6 = 7;
    this->actor.speedXZ = 0.0f;
    this->actionFunc = func_8086C99C;
}

void func_8086C99C(EnPametfrog* this, GlobalContext* globalCtx) {
    func_8086A1A0(this, globalCtx);
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        this->unk_2B6--;
        if (this->unk_2B6 == 0) {
            func_8086C6D0(this);
        } else if (this->unk_2B6 == 6) {
            SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_0600F990);
        } else {
            SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, sAnimations[(s32)Rand_ZeroFloat(4.0f) % 4]);
        }
    }

    if ((this->skelAnime.animCurrentSeg == &D_0600347C && func_801378B8(&this->skelAnime, 2.0f)) ||
        (this->skelAnime.animCurrentSeg == &D_060070C4 && func_801378B8(&this->skelAnime, 9.0f)) ||
        (this->skelAnime.animCurrentSeg == &D_06003F28 && func_801378B8(&this->skelAnime, 2.0f)) ||
        ((this->skelAnime.animCurrentSeg == &D_0600F048) && func_801378B8(&this->skelAnime, 27.0f))) {
        this->collider.base.atFlags |= 1;
        if (this->skelAnime.animCurrentSeg == &D_06003F28) {
            Audio_PlayActorSound2(&this->actor, 0x3966);
        } else {
            Audio_PlayActorSound2(&this->actor, 0x3961);
        }
    } else {
        this->collider.base.atFlags &= ~1;
    }
}

void func_8086CB4C(EnPametfrog* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06005D54, -3.0f);
    this->unk_2B6 = 20;
    this->collider.base.atFlags &= ~1;
    this->collider.base.acFlags &= ~1;
    this->actor.speedXZ = 10.0f;
    Audio_PlayActorSound2(this, 0x38D3);
    func_800BCB70(this, 0x4000, 0xFF, 0, 20);
    func_800BE5CC(this, &this->collider, 0);
    this->actor.shape.rot.y = this->actor.world.rot.y + 0x8000;
    this->actionFunc = func_8086CC04;
}

void func_8086CC04(EnPametfrog* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->unk_2B6--;
    Math_StepToF(&this->actor.speedXZ, 0.0f, 0.5f);
    if (this->unk_2B6 == 0) {
        if (this->actor.colChkInfo.health > 0) {
            func_8086C7C8(this);
        } else {
            func_8086C5A8(this);
        }
    }
}

void func_8086CC84(EnPametfrog* this) {
    if (this->skelAnime.animCurrentSeg == &D_060039C4) {
        this->skelAnime.animCurrentFrame = 0.0f;
        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    }

    this->collider.base.atFlags &= ~1;
    this->actor.speedXZ = 0.0f;
    if (this->actor.colChkInfo.health == 0) {
        this->collider.base.acFlags &= ~1;
    }

    this->actionFunc = func_8086CD04;
}

void func_8086CD04(EnPametfrog* this, GlobalContext* globalCtx) {
    this->unk_2BC--;
    if (this->unk_2BC == 0) {
        func_8086A068(this, globalCtx);
        func_8086C7C8(this);
    } else if (this->unk_2BC == 78) {
        func_8086A068(this, globalCtx);
        this->actor.colorFilterTimer = 0;
        func_8086C5A8(this);
    }
}

void func_8086CD6C(EnPametfrog* this, GlobalContext* globalCtx) {
    Vec3f eye;
    Vec3f focalPoint;
    s16 yawDiff;

    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06001B08, 3.0f);
    Audio_PlayActorSound2(this, 0x395C);
    this->actor.flags &= ~1;
    this->actor.colChkInfo.health = 6;
    this->actor.world.rot.y = Actor_YawToPoint(&this->actor, &this->actor.home.pos);
    yawDiff = this->actor.yawTowardsPlayer - this->actor.world.rot.y;
    if (yawDiff > 0) {
        this->actor.world.rot.y -= 0x2000;
    } else {
        this->actor.world.rot.y += 0x2000;
    }

    this->actor.shape.rot.y = this->actor.world.rot.y;
    focalPoint.x = this->actor.world.pos.x;
    focalPoint.z = this->actor.world.pos.z;
    focalPoint.y = this->actor.world.pos.y + 45.0f;
    eye.x = (Math_SinS(this->actor.shape.rot.y) * 90.0f) + focalPoint.x;
    eye.z = (Math_CosS(this->actor.shape.rot.y) * 90.0f) + focalPoint.z;
    eye.y = focalPoint.y + 4.0f;
    func_8016970C(globalCtx, this->camId, &focalPoint, &eye);
    this->unk_2B6 = 0;
    this->actor.hintId = 0x5F;
    this->actionFunc = func_8086CEB4;
}

void func_8086CEB4(EnPametfrog* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        func_8086CEF0(this, globalCtx);
    }
}

void func_8086CEF0(EnPametfrog* this, GlobalContext* globalCtx) {
    Vec3f focalPoint;
    Vec3f eye;
    s16 yaw;

    func_8086A554(this, globalCtx);
    focalPoint.x = this->actor.child->world.pos.x;
    focalPoint.z = this->actor.child->world.pos.z;
    focalPoint.y = this->actor.child->floorHeight + 50.0f;

    if ((s16)(Actor_YawToPoint(&this->actor, &this->actor.home.pos) - this->actor.shape.rot.y) > 0) {
        yaw = this->actor.child->shape.rot.y - 0x1000;
    } else {
        yaw = this->actor.child->shape.rot.y + 0x1000;
    }

    eye.x = (Math_SinS(yaw) * 500.0f) + focalPoint.x;
    eye.y = focalPoint.y + 55.0f;
    eye.z = (Math_CosS(yaw) * 500.0f) + focalPoint.z;
    func_8016970C(globalCtx, this->camId, &focalPoint, &eye);
    this->quake = Quake_Add(ACTIVE_CAM, 6);
    Quake_SetSpeed(this->quake, 18000);
    Quake_SetQuakeValues(this->quake, 2, 0, 0, 0);
    Quake_SetCountdown(this->quake, 15);
    func_8013ECE0(this->actor.xyzDistToPlayerSq, 120, 20, 10);
    this->unk_2B6 = 40;
    this->actionFunc = func_8086D084;
}

void func_8086D084(EnPametfrog* this, GlobalContext* globalCtx) {
    this->unk_2B6--;
    func_8086A428(this, globalCtx, (f32)(this->unk_2B6 * 7.5f) + 200.0f, ((f32)(this->unk_2B6 * 2) * 0.9375f) + -20.0f);
    if (this->unk_2B6 != 0) {
        func_8013ECE0(this->actor.xyzDistToPlayerSq, 120, 20, 10);
    } else {
        func_8086D140(this, globalCtx);
    }
}

void func_8086D140(EnPametfrog* this, GlobalContext* globalCtx) {
    this->actor.params = 1;
    Quake_RemoveFromIdx(this->quake);
    this->quake = Quake_Add(ACTIVE_CAM, 3);
    Quake_SetSpeed(this->quake, 20000);
    Quake_SetQuakeValues(this->quake, 0x11, 0, 0, 0);
    Quake_SetCountdown(this->quake, 12);
    func_8013ECE0(this->actor.xyzDistToPlayerSq, 255, 20, 150);
    this->actionFunc = func_8086D1E8;
}

void func_8086D1E8(EnPametfrog* this, GlobalContext* globalCtx) {
    if (this->actor.params == 2) {
        func_801A2E54(0x38);
        func_8086B864(this);
    }
}

void func_8086D230(EnPametfrog* this, GlobalContext* globalCtx) {
    if (this->collider.base.acFlags & 2) {
        this->collider.base.acFlags &= ~2;
        if ((this->unk_2AC != 10) || ((this->collider.elements->info.acHitInfo->toucher.dmgFlags & 0xDB0B3) == 0)) {
            if (this->actor.params == 0) {
                if (func_800BE22C(this) == 0) {
                    func_801A2ED8();
                }

                if (this->actor.colChkInfo.damageEffect == 5) {
                    func_8086A80C(this);
                    func_8086CC84(this);
                } else if (this->actor.colChkInfo.damageEffect == 1) {
                    func_8086A878(this);
                    func_8086CC84(this);
                } else if (this->actor.colChkInfo.damageEffect == 3) {
                    func_8086A024(this);
                    this->unk_2BC = 0x50;
                    func_800BCB70(this, 0x4000, 0xFF, 0, 0x50);
                    func_8086CC84(this);
                } else {
                    func_8086A068(this, globalCtx);
                    if (this->actor.colChkInfo.damageEffect == 2) {
                        this->unk_2AC = 0;
                        this->unk_2C8 = 0.75f;
                        this->unk_2C4 = 4.0f;
                    } else if (this->actor.colChkInfo.damageEffect == 4) {
                        this->unk_2AC = 0x14;
                        this->unk_2C8 = 0.75f;
                        this->unk_2C4 = 4.0f;
                        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_CLEAR_TAG,
                                    this->collider.elements[0].info.bumper.hitPos.x,
                                    this->collider.elements[0].info.bumper.hitPos.y,
                                    this->collider.elements[0].info.bumper.hitPos.z, 0, 0, 0, 4);
                    }
                    func_8086CB4C(this);
                }
            } else if (func_800BE22C(this) == 0) {
                this->collider.base.acFlags &= ~1;
                func_8086A724(this, globalCtx);
                func_800BBA88(globalCtx, &this->actor);
                this->actor.flags = this->actor.flags & ~1;
                func_801A2ED8();
                func_8086C5A8(this);
            } else if (this->actor.colChkInfo.damageEffect == 5) {
                func_8086A80C(this);
            } else if (this->actor.colChkInfo.damageEffect == 1) {
                func_8086A878(this);
            } else {
                func_8086A724(this, globalCtx);
                func_8086BBE0(this, globalCtx);
            }
        }
    }
}

void EnPametfrog_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnPametfrog* this = THIS;
    f32 temp_f0;
    f32 phi_f0;

    if (this->actor.params == 5) {
        func_8086C5A8(this);
    } else if (this->actionFunc != func_8086C618) {
        func_8086D230(this, globalCtx);
    } else {
        this->collider.base.acFlags &= ~2;
    }

    this->actionFunc(this, globalCtx);
    if ((this->actionFunc != func_8086BA6C) && (this->actionFunc != func_8086AB68)) {
        if (this->actor.gravity < -0.1f) {
            Actor_SetVelocityAndMoveYRotationAndGravity(&this->actor);
            phi_f0 = this->actionFunc == func_8086BDA8 ? 3.0f : 15.0f;
            func_800B78B8(globalCtx, &this->actor, 25.0f, phi_f0, 3.0f, 0x1F);
        } else if (this->unk_2BC == 0) {
            Actor_SetVelocityAndMoveXYRotation(&this->actor);
            this->actor.floorHeight = this->actor.world.pos.y;
        }
    }

    if (this->collider.base.atFlags & 1) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colCheckCtx, &this->collider.base);
    }

    if (this->collider.base.acFlags & 1) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colCheckCtx, &this->collider.base);
    }

    if (this->collider.base.ocFlags1 & 1) {
        CollisionCheck_SetOC(globalCtx, &globalCtx->colCheckCtx, &this->collider.base);
    }

    if (this->unk_2C4 > 0.0f) {
        if ((this->unk_2AC != 10) && (this->actionFunc != func_8086C618)) {
            Math_StepToF(&this->unk_2C4, 0.0f, 0.05f);
            temp_f0 = ((this->unk_2C4 + 1.0f) * 0.375f);
            this->unk_2C8 = temp_f0;
            this->unk_2C8 = (temp_f0 > 0.75f) ? 0.75f : this->unk_2C8;
        } else if (Math_StepToF(&this->unk_2CC, 0.75f, 0.01875f) == 0) {
            func_800B9010(&this->actor, 0x20B2);
        }
    }
}

void EnPametfrog_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    EnPametfrog* this = THIS;
    Vec3f vec;
    Vec3s* center;
    s8 index;

    if (limbIndex == 20) {
        SysMatrix_GetStateTranslation(&this->actor.focus.pos);
        this->actor.focus.rot.y = this->actor.shape.rot.y;
        SysMatrix_GetStateTranslationAndScaledY(2500.0f, &vec);
        center = &this->collider.elements[0].dim.worldSphere.center;
        center->x = vec.x;
        center->y = vec.y;
        center->z = vec.z;
        center = &this->collider.elements[1].dim.worldSphere.center;
        center->x = (Math_SinS(this->actor.shape.rot.y) * 35.0f) + this->actor.focus.pos.x;
        center->y = this->actor.focus.pos.y - 10.0f;
        center->z = (Math_CosS(this->actor.shape.rot.y) * 35.0f) + this->actor.focus.pos.z;
    }

    index = D_8086DA28[limbIndex];
    if (index != -1) {
        SysMatrix_GetStateTranslation(&this->unk_2F4[index]);
    }
}

void EnPametfrog_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnPametfrog* this = THIS;

    func_8012C28C(globalCtx->state.gfxCtx);
    Matrix_RotateY(this->unk_2B8, MTXMODE_APPLY);
    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount, NULL,
                     EnPametfrog_PostLimbDraw, &this->actor);
    func_800BE680(globalCtx, this, &this->unk_2F4, 12, this->unk_2C8, this->unk_2CC, this->unk_2C4, this->unk_2AC);
}
