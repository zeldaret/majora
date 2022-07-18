/*
 * File: z_en_rat.c
 * Overlay: ovl_En_Rat
 * Description: Real Bombchu
 */

#include "z_en_rat.h"
#include "objects/gameplay_keep/gameplay_keep.h"
#include "overlays/actors/ovl_En_Bom/z_en_bom.h"

#define FLAGS (ACTOR_FLAG_1 | ACTOR_FLAG_4 | ACTOR_FLAG_200)

#define THIS ((EnRat*)thisx)

void EnRat_Init(Actor* thisx, PlayState* play);
void EnRat_Destroy(Actor* thisx, PlayState* play);
void EnRat_Update(Actor* thisx, PlayState* play);
void EnRat_Draw(Actor* thisx, PlayState* play);

void func_80A563CC(EnRat* this);
void EnRat_UpdateRotation(EnRat* this);
void func_80A57330(EnRat* this);
void func_80A57384(EnRat* this, PlayState* play);
void func_80A57488(EnRat* this);
void func_80A574E8(EnRat* this, PlayState* play);
void func_80A575F4(EnRat* this);
void func_80A5764C(EnRat* this, PlayState* play);
void EnRat_Bounced(EnRat* this, PlayState* play);
void func_80A57A9C(EnRat* this, PlayState* play);
void func_80A5723C(EnRat* this, PlayState* play);
void EnRat_Explode(EnRat* this, PlayState* play);
s32 func_80A56AFC(EnRat* this, PlayState* play);
void EnRat_SetupBounced(EnRat* this);

const ActorInit En_Rat_InitVars = {
    ACTOR_EN_RAT,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_RAT,
    sizeof(EnRat),
    (ActorFunc)EnRat_Init,
    (ActorFunc)EnRat_Destroy,
    (ActorFunc)EnRat_Update,
    (ActorFunc)EnRat_Draw,
};

// static ColliderSphereInit sSphereInit = {
static ColliderSphereInit D_80A58400 = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_SPHERE,
    },
    {
        ELEMTYPE_UNK0,
        { 0xF7CFFFFF, 0x00, 0x08 },
        { 0xF7CFFFFF, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_HARD,
        BUMP_ON | BUMP_HOOKABLE,
        OCELEM_ON,
    },
    { 1, { { 0, 0, 0 }, 23 }, 100 },
};

// static DamageTable sDamageTable = {
static DamageTable D_80A5842C = {
    /* Deku Nut       */ DMG_ENTRY(0, 0x1),
    /* Deku Stick     */ DMG_ENTRY(1, 0x0),
    /* Horse trample  */ DMG_ENTRY(1, 0x0),
    /* Explosives     */ DMG_ENTRY(1, 0x0),
    /* Zora boomerang */ DMG_ENTRY(1, 0x0),
    /* Normal arrow   */ DMG_ENTRY(1, 0x0),
    /* UNK_DMG_0x06   */ DMG_ENTRY(0, 0x0),
    /* Hookshot       */ DMG_ENTRY(0, 0xF),
    /* Goron punch    */ DMG_ENTRY(1, 0x0),
    /* Sword          */ DMG_ENTRY(1, 0x0),
    /* Goron pound    */ DMG_ENTRY(1, 0x0),
    /* Fire arrow     */ DMG_ENTRY(2, 0x0),
    /* Ice arrow      */ DMG_ENTRY(2, 0x0),
    /* Light arrow    */ DMG_ENTRY(2, 0x0),
    /* Goron spikes   */ DMG_ENTRY(1, 0x0),
    /* Deku spin      */ DMG_ENTRY(1, 0x0),
    /* Deku bubble    */ DMG_ENTRY(1, 0x0),
    /* Deku launch    */ DMG_ENTRY(2, 0x0),
    /* UNK_DMG_0x12   */ DMG_ENTRY(0, 0x1),
    /* Zora barrier   */ DMG_ENTRY(1, 0x0),
    /* Normal shield  */ DMG_ENTRY(0, 0x0),
    /* Light ray      */ DMG_ENTRY(0, 0x0),
    /* Thrown object  */ DMG_ENTRY(1, 0x0),
    /* Zora punch     */ DMG_ENTRY(1, 0x0),
    /* Spin attack    */ DMG_ENTRY(1, 0x0),
    /* Sword beam     */ DMG_ENTRY(0, 0x0),
    /* Normal Roll    */ DMG_ENTRY(0, 0x0),
    /* UNK_DMG_0x1B   */ DMG_ENTRY(0, 0x0),
    /* UNK_DMG_0x1C   */ DMG_ENTRY(0, 0x0),
    /* Unblockable    */ DMG_ENTRY(0, 0x0),
    /* UNK_DMG_0x1E   */ DMG_ENTRY(0, 0x0),
    /* Powder Keg     */ DMG_ENTRY(1, 0x0),
};

// sColChkInfoInit
static CollisionCheckInfoInit D_80A5844C = { 1, 30, 30, 50 };

static TexturePtr D_80A58454[] = {
    gElectricSpark1Tex,
    gElectricSpark2Tex,
    gElectricSpark3Tex,
    gElectricSpark4Tex,
};

// static InitChainEntry sInitChain[] = {
static InitChainEntry D_80A58464[] = {
    ICHAIN_S8(hintId, 97, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 15, ICHAIN_CONTINUE),
    ICHAIN_F32(targetArrowOffset, 5000, ICHAIN_STOP),
};

static EffectBlureInit2 D_80A58470 = {
    0, 0, 0, { 250, 0, 0, 250 }, { 200, 0, 0, 130 }, { 150, 0, 0, 100 }, { 100, 0, 0, 50 }, 16,
    0, 0, 0, { 0, 0, 0, 0 },     { 0, 0, 0, 0 },
};

static s32 D_80A58494 = 0;

static Vec3f D_80A58498 = { 0.0f, 0.600000023842f, 0.0f };

static Color_RGBA8 D_80A584A4 = { 255, 255, 255, 255 };

static Vec3f D_80A584A8 = { 0.0f, 10.5f, -9.0f };

static Vec3f D_80A584B4 = { 18.0f, 0.0f, -7.5f };

static Vec3f D_80A584C0 = { -18.0f, 0.0f, -7.5f };

static Vec3f D_80A584CC = { 0.0f, 3.0f, 0.0f };

void EnRat_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    EnRat* this = THIS;
    s32 temp_s1;
    s32 i;

    Actor_ProcessInitChain(&this->actor, D_80A58464);
    Collider_InitAndSetSphere(play, &this->collider, &this->actor, &D_80A58400);
    this->collider.dim.worldSphere.radius = D_80A58400.dim.modelSphere.radius;

    temp_s1 = this->actor.params & 0xFF;
    if (ENRAT_GET_8000(&this->actor)) {
        this->actor.params = 1;
    } else {
        this->actor.params = 0;
    }

    SkelAnime_InitFlex(play, &this->skelAnime, &gRealBombchuSkel, &gRealBombchuRunAnim, this->jointTable,
                       this->morphTable, REAL_BOMBCHU_LIMB_MAX);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 25.0f);
    if (this->actor.params == 0) {
        Effect_Add(play, &this->blure1Index, EFFECT_BLURE2, 0, 0, &D_80A58470);
        Effect_Add(play, &this->blure2Index, EFFECT_BLURE2, 0, 0, &D_80A58470);
        this->unk_190 = 0x1E;
    } else {
        this->unk_190 = 0x96;
    }

    CollisionCheck_SetInfo(&this->actor.colChkInfo, &D_80A5842C, &D_80A5844C);
    func_80A563CC(this);
    EnRat_UpdateRotation(this);

    if ((temp_s1 == 0xFF) || (temp_s1 == 0)) {
        this->unk_258 = 350.0f;
    } else if (this->actor.params == 0) {
        this->unk_258 = temp_s1 * 0.1f * 40.0f;
    } else {
        this->unk_258 = temp_s1 * 0.5f * 40.0f;
    }

    if (!D_80A58494) {
        for (i = 0; i < 4; i++) {
            D_80A58454[i] = Lib_SegmentedToVirtual(D_80A58454[i]);
        }

        D_80A58494 = true;
    }

    func_80A57330(this);
}

void EnRat_Destroy(Actor* thisx, PlayState* play) {
    EnRat* this = THIS;

    if (this->actor.params == 0) {
        Effect_Destroy(play, this->blure1Index);
        Effect_Destroy(play, this->blure2Index);
    }

    Collider_DestroySphere(play, &this->collider);
}

void func_80A563CC(EnRat* this) {
    Matrix_RotateYS(this->actor.shape.rot.y, MTXMODE_NEW);
    Matrix_RotateXS(this->actor.shape.rot.x, MTXMODE_APPLY);
    Matrix_RotateZS(this->actor.shape.rot.z, MTXMODE_APPLY);
    Matrix_MultVecZ(1.0f, &this->axisForwards);
    Matrix_MultVecY(1.0f, &this->axisUp);
    Matrix_MultVecX(1.0f, &this->axisLeft);
}

/**
 * Returns true if floorPoly is valid for the Real Bombchu to move on, false otherwise.
 */
s32 EnRat_UpdateFloorPoly(EnRat* this, CollisionPoly* floorPoly, PlayState* play) {
    Vec3f normal;
    Vec3f vec;
    f32 angle;
    f32 magnitude;
    f32 normDotUp;

    this->actor.floorPoly = floorPoly;

    if (floorPoly != NULL) {
        normal.x = COLPOLY_GET_NORMAL(floorPoly->normal.x);
        normal.y = COLPOLY_GET_NORMAL(floorPoly->normal.y);
        normal.z = COLPOLY_GET_NORMAL(floorPoly->normal.z);
    } else {
        normal.x = 0.0f;
        normal.z = 0.0f;
        normal.y = 1.0f;
    }

    normDotUp = DOTXYZ(normal, this->axisUp);

    if (fabsf(normDotUp) >= 0.999f) {
        return false;
    }

    angle = func_80086C48(normDotUp);
    if (angle < 0.001f) {
        return false;
    }

    Math3D_CrossProduct(&this->axisUp, &normal, &vec);

    magnitude = Math3D_Vec3fMagnitude(&vec);

    if (magnitude < 0.001f) {
        EnRat_Explode(this, play);
        return false;
    }

    Math_Vec3f_Scale(&vec, 1.0f / magnitude);
    Matrix_RotateAxisF(angle, &vec, MTXMODE_NEW);
    Matrix_MultVec3f(&this->axisLeft, &vec);
    Math_Vec3f_Copy(&this->axisLeft, &vec);
    Math3D_CrossProduct(&this->axisLeft, &normal, &this->axisForwards);

    magnitude = Math3D_Vec3fMagnitude(&this->axisForwards);
    if (magnitude < 0.001f) {
        EnRat_Explode(this, play);
        return false;
    }

    Math_Vec3f_Scale(&this->axisForwards, 1.0f / magnitude);
    Math_Vec3f_Copy(&this->axisUp, &normal);
    return true;
}

void EnRat_UpdateRotation(EnRat* this) {
    MtxF mf;

    mf.xx = this->axisLeft.x;
    mf.yx = this->axisLeft.y;
    mf.zx = this->axisLeft.z;

    mf.xy = this->axisUp.x;
    mf.yy = this->axisUp.y;
    mf.zy = this->axisUp.z;

    mf.xz = this->axisForwards.x;
    mf.yz = this->axisForwards.y;
    mf.zz = this->axisForwards.z;

    Matrix_MtxFToYXZRot(&mf, &this->actor.world.rot, false);
    this->actor.world.rot.x = -this->actor.world.rot.x;
}

void func_80A566E0(EnRat* this) {
    Vec3f sp74;
    s16 var_v1;

    if (this->actionFunc != func_80A57384) {
        var_v1 = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
        if (this->axisUp.y < -0.25f) {
            var_v1 -= 0x8000;
        }
    } else {
        if (Actor_DistanceToPoint(&this->actor, &this->actor.home.pos) > 50.0f) {
            Vec3f sp64;
            Vec3f sp58;
            Vec3f sp4C;
            Vec3f sp40;

            Matrix_RotateZS(-this->actor.home.rot.z, MTXMODE_NEW);
            Matrix_RotateXS(-this->actor.home.rot.x, MTXMODE_APPLY);
            Matrix_RotateYS(-this->actor.home.rot.y, MTXMODE_APPLY);
            Matrix_MultVec3f(&this->axisUp, &sp40);
            Math_Vec3f_Sum(&this->actor.world.pos, &this->axisForwards, &sp64);
            Matrix_MultVec3f(&sp64, &sp4C);
            Matrix_MultVec3f(&this->actor.home.pos, &sp64);
            Matrix_MultVec3f(&this->actor.world.pos, &sp58);
            var_v1 = Math_Vec3f_Yaw(&sp58, &sp64) - Math_Vec3f_Yaw(&sp58, &sp4C);
            if (sp40.y < -0.25f) {
                var_v1 -= 0x8000;
            }

            var_v1 += (s16)randPlusMinusPoint5Scaled(2048.0f);
        } else {
            var_v1 = (Rand_ZeroOne() < 0.1f) ? (s16)randPlusMinusPoint5Scaled(2048.0f) : 0;
        }
    }

    var_v1 = CLAMP(var_v1, -0x800, 0x800);
    Matrix_RotateAxisF(var_v1 * 0.0000958738f, &this->axisUp, MTXMODE_NEW);
    Matrix_MultVec3f(&this->axisForwards, &sp74);
    Math_Vec3f_Copy(&this->axisForwards, &sp74);
    Math3D_CrossProduct(&this->axisUp, &this->axisForwards, &this->axisLeft);
    this->unk_18D = 1;
}

s32 EnRat_IsOnCollisionPoly(PlayState* play, Vec3f* posA, Vec3f* posB, Vec3f* posResult, CollisionPoly** poly,
                            s32* bgId) {
    WaterBox* waterBox;
    s32 var_v1;
    f32 waterSurface;

    if ((WaterBox_GetSurface1(play, &play->colCtx, posB->x, posB->z, &waterSurface, &waterBox) != 0) &&
        (waterSurface <= posA->y) && (posB->y <= waterSurface)) {
        var_v1 = true;
    } else {
        var_v1 = false;
    }

    if (BgCheck_EntityLineTest1(&play->colCtx, posA, posB, posResult, poly, 1, 1, 1, 1, bgId)) {
        if (!(func_800C9A4C(&play->colCtx, *poly, *bgId) & 0x30) && ((var_v1 == 0) || (waterSurface <= posResult->y))) {
            return true;
        }
    }

    if (var_v1) {
        posResult->x = posB->x;
        posResult->y = waterSurface;
        posResult->z = posB->z;
        *poly = NULL;
        *bgId = BGCHECK_SCENE;
        return true;
    }

    return false;
}

s32 func_80A56AFC(EnRat* this, PlayState* play) {
    CollisionPoly* polySide = NULL;
    CollisionPoly* polyUpDown = NULL;
    s32 bgIdSide;
    s32 bgIdUpDown;
    s32 i;
    f32 lineLength;
    Vec3f posA;
    Vec3f posB;
    Vec3f posSide;
    Vec3f posUpDown;

    bgIdUpDown = bgIdSide = BGCHECK_SCENE;

    lineLength = 2.0f * this->actor.speedXZ;

    posA.x = this->actor.world.pos.x + (this->axisUp.x * 5.0f);
    posA.y = this->actor.world.pos.y + (this->axisUp.y * 5.0f);
    posA.z = this->actor.world.pos.z + (this->axisUp.z * 5.0f);

    posB.x = this->actor.world.pos.x - (this->axisUp.x * 4.0f);
    posB.y = this->actor.world.pos.y - (this->axisUp.y * 4.0f);
    posB.z = this->actor.world.pos.z - (this->axisUp.z * 4.0f);

    if (EnRat_IsOnCollisionPoly(play, &posA, &posB, &posUpDown, &polyUpDown, &bgIdUpDown)) {
        posB.x = (this->axisForwards.x * lineLength) + posA.x;
        posB.y = (this->axisForwards.y * lineLength) + posA.y;
        posB.z = (this->axisForwards.z * lineLength) + posA.z;

        if (EnRat_IsOnCollisionPoly(play, &posA, &posB, &posSide, &polySide, &bgIdSide)) {
            if ((polySide != NULL) && (this->unk_18C != 0)) {
                return false;
            }

            this->unk_18D |= EnRat_UpdateFloorPoly(this, polySide, play);
            Math_Vec3f_Copy(&this->actor.world.pos, &posSide);
            this->actor.floorBgId = bgIdSide;
            this->actor.speedXZ = 0.0f;
        } else {
            if (polyUpDown != this->actor.floorPoly) {
                this->unk_18D |= EnRat_UpdateFloorPoly(this, polyUpDown, play);
            }

            Math_Vec3f_Copy(&this->actor.world.pos, &posUpDown);
            this->actor.floorBgId = bgIdUpDown;
        }
    } else {
        this->actor.speedXZ = 0.0f;
        lineLength *= 3.0f;
        Math_Vec3f_Copy(&posA, &posB);

        for (i = 0; i < 3; i++) {
            if (i == 0) {
                // backwards
                posB.x = posA.x - (this->axisForwards.x * lineLength);
                posB.y = posA.y - (this->axisForwards.y * lineLength);
                posB.z = posA.z - (this->axisForwards.z * lineLength);
            } else if (i == 1) {
                // left
                posB.x = posA.x + (this->axisLeft.x * lineLength);
                posB.y = posA.y + (this->axisLeft.y * lineLength);
                posB.z = posA.z + (this->axisLeft.z * lineLength);
            } else {
                // right
                posB.x = posA.x - (this->axisLeft.x * lineLength);
                posB.y = posA.y - (this->axisLeft.y * lineLength);
                posB.z = posA.z - (this->axisLeft.z * lineLength);
            }

            if (EnRat_IsOnCollisionPoly(play, &posA, &posB, &posSide, &polySide, &bgIdSide)) {
                this->unk_18D |= EnRat_UpdateFloorPoly(this, polySide, play);
                Math_Vec3f_Copy(&this->actor.world.pos, &posSide);
                this->actor.floorBgId = bgIdSide;
                break;
            }
        }

        if (i == 3) {
            return false;
        }
    }

    return true;
}

/**
 * Transform coordinates from actor coordinate space to world space, according to current orientation.
 * `offset` is expected to already be at world scale.
 */
void EnRat_ActorCoordsToWorld(EnRat* this, Vec3f* offset, Vec3f* pos) {
    f32 x = offset->x + this->visualJitter;

    pos->x = this->actor.world.pos.x + (this->axisLeft.x * x) + (this->axisUp.x * offset->y) +
             (this->axisForwards.x * offset->z);
    pos->y = this->actor.world.pos.y + (this->axisLeft.y * x) + (this->axisUp.y * offset->y) +
             (this->axisForwards.y * offset->z);
    pos->z = this->actor.world.pos.z + (this->axisLeft.z * x) + (this->axisUp.z * offset->y) +
             (this->axisForwards.z * offset->z);
}

void func_80A56F68(EnRat* this, PlayState* play) {
    s32 pad;
    Vec3f sp28;

    EffectSsGRipple_Spawn(play, &this->actor.world.pos, 70, 500, 0);
    sp28.x = this->actor.world.pos.x - (this->axisForwards.x * 10.0f);
    sp28.z = this->actor.world.pos.z - (this->axisForwards.z * 10.0f);
    sp28.y = this->actor.world.pos.y + 5.0f;
    EffectSsGSplash_Spawn(play, &sp28, NULL, NULL, 1, 450);
}

void EnRat_HandleNonSceneCollision(EnRat* this, PlayState* play) {
    s16 yaw = this->actor.shape.rot.y;
    f32 sin;
    f32 cos;
    f32 tempX;

    BgCheck2_UpdateActorAttachedToMesh(&play->colCtx, this->actor.floorBgId, &this->actor);

    if (yaw != this->actor.shape.rot.y) {
        yaw = this->actor.shape.rot.y - yaw;

        sin = Math_SinS(yaw);
        cos = Math_CosS(yaw);

        tempX = this->axisForwards.x;
        this->axisForwards.x = (sin * this->axisForwards.z) + (cos * tempX);
        this->axisForwards.z = (cos * this->axisForwards.z) - (sin * tempX);

        tempX = this->axisUp.x;
        this->axisUp.x = (sin * this->axisUp.z) + (cos * tempX);
        this->axisUp.z = (cos * this->axisUp.z) - (sin * tempX);

        tempX = this->axisLeft.x;
        this->axisLeft.x = (sin * this->axisLeft.z) + (cos * tempX);
        this->axisLeft.z = (cos * this->axisLeft.z) - (sin * tempX);
    }
}

void func_80A57118(EnRat* this, PlayState* play) {
    func_800B0EB0(play, &this->unk_230, &gZeroVec3f, &D_80A58498, &D_80A584A4, &D_80A584A4, 75, 7, 8);
}

void func_80A57180(EnRat* this) {
    this->unk_18C = 0;
    this->unk_190 = 200;
    this->unk_192 = 0;
    Math_Vec3f_Copy(&this->actor.world.pos, &this->actor.home.pos);
    this->actor.shape.yOffset = 0.0f;
    this->actor.shape.rot.x = this->actor.home.rot.x;
    this->actor.shape.rot.y = this->actor.home.rot.y;
    this->actor.shape.rot.z = this->actor.home.rot.z;
    func_80A563CC(this);
    EnRat_UpdateRotation(this);
    this->actor.flags &= ~1;
    this->actor.speedXZ = 0.0f;
    Animation_PlayLoopSetSpeed(&this->skelAnime, &gRealBombchuBounceAnim, 0.0f);
    this->unk_25C = 2666.6667f;
    this->actor.draw = NULL;
    this->actor.shape.shadowDraw = NULL;
    this->actionFunc = func_80A5723C;
}

void func_80A5723C(EnRat* this, PlayState* play) {
    if (this->unk_190 > 0) {
        this->unk_190--;
        if (this->unk_190 == 0) {
            this->actor.flags |= ACTOR_FLAG_1;
            this->actor.draw = EnRat_Draw;
            this->skelAnime.playSpeed = 1.0f;
        }
    } else {
        Math_StepToF(&this->unk_25C, 0.0f, 666.6667f);
        if (Animation_OnFrame(&this->skelAnime, 2.0f)) {
            func_800B1210(play, &this->actor.world.pos, &this->axisUp, &gZeroVec3f, 600, 100);
            this->actor.shape.shadowDraw = ActorShadow_DrawCircle;
        }

        if (Animation_OnFrame(&this->skelAnime, 0.0f)) {
            this->actor.flags &= ~ACTOR_FLAG_10;
            this->unk_190 = 150;
            func_80A57330(this);
        }
    }
}

void func_80A57330(EnRat* this) {
    Animation_PlayLoop(&this->skelAnime, &gRealBombchuRunAnim);
    this->unk_18E = 5;
    this->actor.speedXZ = 2.0f;
    this->actionFunc = func_80A57384;
}

void func_80A57384(EnRat* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    this->actor.speedXZ = 2.0f;
    if (Animation_OnFrame(&this->skelAnime, 0.0f)) {
        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_BOMCHU_WALK);
        if (this->unk_18E != 0) {
            this->unk_18E--;
        }
    }

    if ((this->unk_18E == 0) && (Rand_ZeroOne() < 0.05f)) {
        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_BOMCHU_VOICE);
        this->unk_18E = 5;
    }

    if (!(player->stateFlags3 & PLAYER_STATE3_100) && (this->actor.xzDistToPlayer < this->unk_258) &&
        (Player_GetMask(play) != PLAYER_MASK_STONE) && (Actor_IsFacingPlayer(&this->actor, 0x3800))) {
        func_80A57488(this);
    }
}

void func_80A57488(EnRat* this) {
    this->actor.flags |= ACTOR_FLAG_10;
    Animation_MorphToLoop(&this->skelAnime, &gRealBombchuBounceAnim, -5.0f);
    this->unk_18E = 3;
    this->actor.speedXZ = 0.0f;
    this->actionFunc = func_80A574E8;
}

void func_80A574E8(EnRat* this, PlayState* play) {
    if ((this->unk_18E == 3) && (Animation_OnFrame(&this->skelAnime, 5.0f))) {
        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_BOMCHU_AIM);
    }

    if (Animation_OnFrame(&this->skelAnime, 0.0f)) {
        this->unk_18E--;
        if (this->unk_18E == 0) {
            func_80A575F4(this);
        }
    }
}

void func_80A57570(EnRat* this) {
    s32 i;
    Vec3f* ptr;

    for (i = 0; i < ARRAY_COUNT(this->unk_23C); i++) {
        ptr = &this->unk_23C[i];
        ptr->x = randPlusMinusPoint5Scaled(6.0f);
        ptr->y = randPlusMinusPoint5Scaled(6.0f);
        ptr->z = randPlusMinusPoint5Scaled(6.0f);
    }
}

void func_80A575F4(EnRat* this) {
    Animation_MorphToLoop(&this->skelAnime, &gRealBombchuRunAnim, -5.0f);
    this->actor.speedXZ = 6.1f;
    func_80A57570(this);
    this->actionFunc = func_80A5764C;
}

void func_80A5764C(EnRat* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    Vec3f sp48;
    Vec3f sp3C;

    this->actor.speedXZ = 6.1f;
    if (this->unk_18C != 0) {
        if (!(player->stateFlags3 & PLAYER_STATE3_100) && (Player_GetMask(play) != PLAYER_MASK_STONE) &&
            (Actor_IsFacingPlayer(&this->actor, 0x3000))) {
            this->unk_18C = 0;
        }
    } else if ((player->stateFlags3 & PLAYER_STATE3_100) || (Player_GetMask(play) == PLAYER_MASK_STONE)) {
        this->unk_18C = 1;
    }

    if (Animation_OnFrame(&this->skelAnime, 0.0f)) {
        if (this->unk_18E != 0) {
            this->unk_18E--;
        }

        Actor_PlaySfxAtPos(&this->actor, 0x3828U);
    }

    if (this->unk_190 != 0) {
        this->unk_190--;
    }

    if ((this->unk_190 == 0) && (this->actor.params == 0)) {
        this->unk_190 = 30;
    }

    func_80A57118(this, play);
    this->visualJitter =
        (5.0f + (Rand_ZeroOne() * 3.0f)) * Math_SinS(((Rand_ZeroOne() * 512.0f) + 12288.0f) * this->unk_190);

    if (this->actor.params == 0) {
        EnRat_ActorCoordsToWorld(this, &D_80A584A8, &sp48);
        EnRat_ActorCoordsToWorld(this, &D_80A584B4, &sp3C);
        EffectBlure_AddVertex(Effect_GetByIndex(this->blure1Index), &sp48, &sp3C);
        EnRat_ActorCoordsToWorld(this, &D_80A584C0, &sp3C);
        EffectBlure_AddVertex(Effect_GetByIndex(this->blure2Index), &sp48, &sp3C);
    } else if ((this->actor.floorPoly != NULL) && !(play->gameplayFrames & 3)) {
        func_800B1210(play, &this->actor.world.pos, &D_80A584CC, &gZeroVec3f, 550, 50);
    }

    if ((this->actor.floorPoly == NULL) && (Animation_OnFrame(&this->skelAnime, 0.0f))) {
        func_80A56F68(this, play);
    }

    if ((this->unk_18E == 0) && (Rand_ZeroOne() < 0.05f)) {
        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_BOMCHU_AIM);
        this->unk_18E = 5;
    }

    func_800B9010(&this->actor, NA_SE_EN_BOMCHU_RUN - SFX_FLAG);
    func_80A57570(this);
}

void EnRat_SetupBounced(EnRat* this) {
    this->actor.speedXZ = 5.0f;
    this->actor.velocity.y = 8.0f;
    this->actor.world.rot.y = this->actor.yawTowardsPlayer + 0x8000;
    this->actor.gravity = -1.0f;
    func_80A57570(this);
    this->actor.bgCheckFlags &= ~(0x10 | 0x8 | 0x1);
    this->actionFunc = EnRat_Bounced;
}

void EnRat_Bounced(EnRat* this, PlayState* play) {
    this->actor.shape.rot.x -= 0x700;
    Math_StepToF(&this->actor.shape.yOffset, 1700.0f, 170.0f);
    this->unk_190--;
    if (this->unk_190 == 0) {
        this->unk_190 = 30;
    }

    if (this->actor.bgCheckFlags & (0x10 | 0x8 | 0x1)) {
        EnRat_Explode(this, play);
    }
}

void EnRat_Explode(EnRat* this, PlayState* play) {
    EnBom* bomb;

    bomb = (EnBom*)Actor_Spawn(&play->actorCtx, play, ACTOR_EN_BOM, this->actor.world.pos.x, this->actor.world.pos.y,
                               this->actor.world.pos.z, 0, 0, 0, 0);
    if (bomb != NULL) {
        bomb->timer = 0;
    }

    if (this->actor.params == 1) {
        Item_DropCollectibleRandom(play, &this->actor, &this->actor.world.pos, 0x100);
    }

    this->actor.speedXZ = 0.0f;
    this->actionFunc = func_80A57A9C;
}

void func_80A57A9C(EnRat* this, PlayState* play) {
    if (this->actor.params == 1) {
        func_80A57180(this);
    } else {
        Actor_MarkForDeath(&this->actor);
    }
}

void EnRat_Update(Actor* thisx, PlayState* play) {
    s32 pad;
    EnRat* this = THIS;

    this->unk_18D = 0;
    if (this->unk_192 == 0) {
        SkelAnime_Update(&this->skelAnime);
    }

    if (this->collider.base.atFlags & AT_HIT) {
        this->collider.base.atFlags &= ~AT_HIT;
        this->collider.base.acFlags &= ~AC_HIT;
        this->collider.base.ocFlags1 &= ~OC1_HIT;
        if (this->collider.base.atFlags & AT_BOUNCED) {
            EnRat_SetupBounced(this);
        } else {
            EnRat_Explode(this, play);
            return;
        }
    } else if (this->collider.base.acFlags & AC_HIT) {
        this->collider.base.acFlags &= ~AC_HIT;
        if (this->actor.colChkInfo.damageEffect == 0xF) {
            this->unk_192 = -2;
        } else if (this->actor.colChkInfo.damageEffect == 1) {
            Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_COMMON_FREEZE);
            Actor_SetColorFilter(&this->actor, 0, 120, 0, 40);
            if (this->actionFunc == EnRat_Bounced) {
                this->actor.speedXZ = 0.0f;
                if (this->actor.velocity.y > 0.0f) {
                    this->actor.velocity.y = 0.0f;
                }
            } else {
                this->unk_192 = 40;
            }
        } else {
            EnRat_Explode(this, play);
            return;
        }
    } else if (((this->collider.base.ocFlags1 & OC1_HIT) && (((this->collider.base.oc->category == ACTORCAT_ENEMY)) ||
                                                             (this->collider.base.oc->category == ACTORCAT_BOSS) ||
                                                             (this->collider.base.oc->category == ACTORCAT_PLAYER))) ||
               ((this->actionFunc == func_80A5764C) && (this->unk_190 == 0))) {
        this->collider.base.ocFlags1 &= ~OC1_HIT;
        EnRat_Explode(this, play);
        return;
    }

    this->actionFunc(this, play);

    if ((this->actionFunc != func_80A57A9C) && (this->actionFunc != func_80A5723C)) {
        if (this->unk_192 > 0) {
            this->unk_192--;
        } else if (this->unk_192 < 0) {
            if (this->unk_192 == -2) {
                this->unk_192 = -1;
            } else if ((this->actor.flags & ACTOR_FLAG_2000) != ACTOR_FLAG_2000) {
                EnRat_Explode(this, play);
                return;
            }
        } else if (this->actionFunc != EnRat_Bounced) {
            if (this->actor.floorBgId != BGCHECK_SCENE) {
                EnRat_HandleNonSceneCollision(this, play);
            }

            if (this->unk_18C == 0) {
                func_80A566E0(this);
            }

            if ((this->actionFunc != func_80A574E8) && !func_80A56AFC(this, play)) {
                EnRat_Explode(this, play);
                return;
            }

            if (this->unk_18D != 0) {
                EnRat_UpdateRotation(this);
                this->actor.shape.rot.x = -this->actor.world.rot.x;
                this->actor.shape.rot.y = this->actor.world.rot.y;
                this->actor.shape.rot.z = this->actor.world.rot.z;
            }

            Actor_MoveWithoutGravity(&this->actor);
            this->actor.floorHeight = this->actor.world.pos.y;
        } else {
            Actor_MoveWithGravity(&this->actor);
            Actor_UpdateBgCheckInfo(play, &this->actor, 20.0f, 30.0f, 60.0f, 7);
        }

        if (SurfaceType_IsWallDamage(&play->colCtx, this->actor.floorPoly, this->actor.floorBgId) != 0) {
            EnRat_Explode(this, play);
            return;
        }

        this->collider.dim.worldSphere.center.x = this->actor.world.pos.x + (this->axisUp.x * 10.0f);
        this->collider.dim.worldSphere.center.y = this->actor.world.pos.y + (this->axisUp.y * 10.0f);
        this->collider.dim.worldSphere.center.z = this->actor.world.pos.z + (this->axisUp.z * 10.0f);

        if (this->actionFunc != func_80A5723C) {
            if (this->unk_192 == 0) {
                CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
            }

            CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
            CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
        }

        Actor_SetFocus(&this->actor, this->actor.shape.yOffset * 0.015f);
    }
}

s32 EnRat_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnRat* this = THIS;

    if (limbIndex == REAL_BOMBCHU_LIMB_BODY) {
        pos->y -= this->unk_25C;
    }

    if (limbIndex == REAL_BOMBCHU_LIMB_TAIL_END) {
        *dList = NULL;
    }

    return false;
}

void EnRat_PostLimbDraw(PlayState* play2, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    PlayState* play = play2;
    EnRat* this = THIS;
    MtxF* currentMatrixState;
    Vec3f* ptr;
    f32 var_fv0;

    if (limbIndex == REAL_BOMBCHU_LIMB_TAIL_END) {
        OPEN_DISPS(play->state.gfxCtx);

        Matrix_ReplaceRotation(&play->billboardMtxF);
        Matrix_MultZero(&this->unk_230);
        this->unk_230.y += 15.0f;
        currentMatrixState = Matrix_GetCurrent();

        if (this->actionFunc == func_80A5764C) {
            s32 i;

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 150, 255);
            gDPSetEnvColor(POLY_XLU_DISP++, 0xFF, 0x00, 0x00, 0x00);
            Matrix_Scale(45.0f, 45.0f, 45.0f, MTXMODE_APPLY);

            for (i = 0; i < ARRAY_COUNT(this->unk_23C); i++) {
                ptr = &this->unk_23C[i];
                currentMatrixState->mf[3][0] = this->unk_230.x + ptr->x;
                currentMatrixState->mf[3][1] = this->unk_230.y + ptr->y;
                currentMatrixState->mf[3][2] = this->unk_230.z + ptr->z;
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPSegment(POLY_XLU_DISP++, 0x08, D_80A58454[(play->gameplayFrames + i) & 3]);
                gSPDisplayList(POLY_XLU_DISP++, gameplay_keep_DL_037850);
            }

            Matrix_Scale(0.022222223f, 0.022222223f, 0.022222223f, MTXMODE_APPLY);
            currentMatrixState->mf[3][0] = this->unk_230.x;
            currentMatrixState->mf[3][1] = this->unk_230.y - 15.0f;
            currentMatrixState->mf[3][2] = this->unk_230.z;
        }

        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, gameplay_keep_DL_015FA0);
        if (this->actor.params == 0) {
            var_fv0 = fabsf(cos_rad(this->unk_190 * 0.10471976f));
        } else {
            if (this->unk_190 >= 120) {
                var_fv0 = fabsf(cos_rad((this->unk_190 % 30) * 0.10471976f));
            } else if (this->unk_190 >= 30) {
                var_fv0 = fabsf(cos_rad((this->unk_190 % 6) * 0.5235988f));
            } else {
                var_fv0 = fabsf(cos_rad((this->unk_190 % 3) * 1.0471976f));
            }
        }

        gDPSetEnvColor(POLY_OPA_DISP++, (s32)((1.0f - var_fv0) * 255.0f), 0, 40, 255);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, (s32)((1.0f - var_fv0) * 255.0f), 0, 40, 255);
        Matrix_RotateZYX(0x4000, 0, 0, MTXMODE_APPLY);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, gameplay_keep_DL_015DB0);

        CLOSE_DISPS(play->state.gfxCtx);
    }
}

void EnRat_Draw(Actor* thisx, PlayState* play) {
    EnRat* this = THIS;

    func_8012C28C(play->state.gfxCtx);
    func_8012C974(play->state.gfxCtx);
    func_800B8050(&this->actor, play, 0);
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnRat_OverrideLimbDraw, EnRat_PostLimbDraw, &this->actor);
}
