/*
 * File: z_en_bom_chu.c
 * Overlay: ovl_En_Bom_Chu
 * Description: Bombchus
 */

#include "z_en_bom_chu.h"
#include "overlays/actors/ovl_En_Bom/z_en_bom.h"
#include "objects/gameplay_keep/gameplay_keep.h"

#define FLAGS 0x00000010

#define THIS ((EnBomChu*)thisx)

void EnBomChu_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBomChu_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBomChu_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBomChu_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808F7868(EnBomChu* this, GlobalContext* globalCtx);
void func_808F7A84(EnBomChu* this, GlobalContext* globalCtx);
void func_808F7FA0(EnBomChu* this, GlobalContext* globalCtx);
void func_808F79D4(EnBomChu* this);
void func_808F7E74(EnBomChu* this, GlobalContext* globalCtx);

const ActorInit En_Bom_Chu_InitVars = {
    ACTOR_EN_BOM_CHU,
    ACTORCAT_EXPLOSIVES,
    FLAGS,
    GAMEPLAY_KEEP,
    sizeof(EnBomChu),
    (ActorFunc)EnBomChu_Init,
    (ActorFunc)EnBomChu_Destroy,
    (ActorFunc)EnBomChu_Update,
    (ActorFunc)EnBomChu_Draw,
};

// static ColliderSphereInit sSphereInit = {
static ColliderSphereInit D_808F88E0 = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_1 | OC1_TYPE_2,
        OC2_TYPE_2,
        COLSHAPE_SPHERE,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0xF7CFFFFF, 0x00, 0x00 },
        TOUCH_NONE | TOUCH_SFX_NORMAL,
        BUMP_ON,
        OCELEM_ON,
    },
    { 1, { { 0, 0, 0 }, 13 }, 100 },
};

// static InitChainEntry sInitChain[] = {
static InitChainEntry D_808F890C[] = {
    ICHAIN_U8(targetMode, 2, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 10, ICHAIN_STOP),
};

static EffectBlureInit2 D_808F8914 = {
    0, 0, 0, { 250, 0, 0, 250 }, { 200, 0, 0, 130 }, { 150, 0, 0, 100 }, { 100, 0, 0, 50 }, 16,
    0, 0, 0, { 0, 0, 0, 0 },     { 0, 0, 0, 0 },
};

static Vec3f D_808F8938 = { 0.0f, 7.0f, -6.0f };

static Vec3f D_808F8944 = { 12.0f, 0.0f, -5.0f };

static Vec3f D_808F8950 = { -12.0f, 0.0f, -5.0f };

void EnBomChu_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnBomChu* this = THIS;

    Actor_ProcessInitChain(&this->actor, D_808F890C);
    Collider_InitAndSetSphere(globalCtx, &this->unk_188, &this->actor, &D_808F88E0);
    this->unk_188.dim.worldSphere.radius = D_808F88E0.dim.modelSphere.radius;
    Effect_Add(globalCtx, &this->unk_180, 2, 0, 0, &D_808F8914);
    Effect_Add(globalCtx, &this->unk_184, 2, 0, 0, &D_808F8914);
    this->unk_14A = 0x78;
    this->actor.room = -1;
    this->unk_148 = 1;
    this->unk_174 = 0.0f;
    this->actionFunc = func_808F7868;
}

void EnBomChu_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnBomChu* this = THIS;

    Effect_Destroy(globalCtx, this->unk_180);
    Effect_Destroy(globalCtx, this->unk_184);
    Collider_DestroySphere(globalCtx, &this->unk_188);
}

s32 func_808F75D0(EnBomChu* this, CollisionPoly* floorPoly, GlobalContext* globalCtx) {
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
        func_808F7E74(this, globalCtx);
        return 0;
    }

    normDotUp = DOTXYZ(normal, this->unk_158);

    if (fabsf(normDotUp) >= 0.999f) {
        return 0;
    }

    angle = func_80086C48(normDotUp);
    if (angle < 0.001f) {
        return 0;
    }

    Math3D_CrossProduct(&this->unk_158, &normal, &vec);

    magnitude = Math3D_Vec3fMagnitude(&vec);

    if (magnitude < 0.001f) {
        func_808F7E74(this, globalCtx);
        return 0;
    }

    Math_Vec3f_Scale(&vec, 1.0f / magnitude);
    Matrix_InsertRotationAroundUnitVector_f(angle, &vec, MTXMODE_NEW);
    Matrix_MultiplyVector3fByState(&this->unk_164, &vec);
    Math_Vec3f_Copy(&this->unk_164, &vec);
    Math3D_CrossProduct(&this->unk_164, &normal, &this->unk_14C);

    magnitude = Math3D_Vec3fMagnitude(&this->unk_14C);
    if (magnitude < 0.001f) {
        func_808F7E74(this, globalCtx);
        return 0;
    }

    Math_Vec3f_Scale(&this->unk_14C, 1.0f / magnitude);
    Math_Vec3f_Copy(&this->unk_158, &normal);
    return 1;
}

void func_808F77E4(EnBomChu* this) {
    MtxF mf;

    mf.xx = this->unk_164.x;
    mf.xy = this->unk_164.y;
    mf.xz = this->unk_164.z;
    mf.yx = this->unk_158.x;
    mf.yy = this->unk_158.y;
    mf.yz = this->unk_158.z;
    mf.zx = this->unk_14C.x;
    mf.zy = this->unk_14C.y;
    mf.zz = this->unk_14C.z;
    func_8018219C(&mf, &this->actor.world.rot, 0);
    this->actor.world.rot.x = -this->actor.world.rot.x;
}

void func_808F7868(EnBomChu* this, GlobalContext* globalCtx) {
    Player* player;

    if (this->unk_14A == 0) {
        func_808F7E74(this, globalCtx);
    } else if (Actor_HasNoParent(&this->actor, globalCtx)) {
        player = GET_PLAYER(globalCtx);
        Math_Vec3f_Copy(&this->actor.world.pos, &player->actor.world.pos);
        Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
        this->actor.shape.rot.y = player->actor.shape.rot.y;
        this->actor.flags |= ACTOR_FLAG_1;
        func_800B8EF4(globalCtx, &this->actor);
        this->unk_149 = 1;
        this->actor.speedXZ = 8.0f;
        this->unk_17C = 8.0f;
        func_808F79D4(this);
    }
}

s32 func_808F7944(GlobalContext* globalCtx, Vec3f* posA, Vec3f* posB, Vec3f* posResult, CollisionPoly** poly,
                  s32* bgId) {
    if ((BgCheck_EntityLineTest1(&globalCtx->colCtx, posA, posB, posResult, poly, 1, 1, 1, 1, bgId)) &&
        ((func_800C9A4C(&globalCtx->colCtx, *poly, *bgId) & 0x30) == 0)) {
        return 1;
    }

    return 0;
}

void func_808F79D4(EnBomChu* this) {
    func_800BE3D0(&this->actor, this->actor.shape.rot.y, &this->actor.shape.rot);
    Matrix_RotateY(this->actor.shape.rot.y, MTXMODE_NEW);
    Matrix_InsertXRotation_s(this->actor.shape.rot.x, MTXMODE_APPLY);
    Matrix_InsertZRotation_s(this->actor.shape.rot.z, MTXMODE_APPLY);
    Matrix_GetStateTranslationAndScaledY(1.0f, &this->unk_158);
    Matrix_GetStateTranslationAndScaledZ(1.0f, &this->unk_14C);
    Matrix_GetStateTranslationAndScaledX(1.0f, &this->unk_164);
    this->actor.world.rot.x = -this->actor.shape.rot.x;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->actor.world.rot.z = this->actor.shape.rot.z;
    this->actionFunc = func_808F7A84;
}

void func_808F7A84(EnBomChu* this, GlobalContext* globalCtx) {
    CollisionPoly* polySide = NULL;
    CollisionPoly* polyUpDown = NULL;
    s32 bgIdSide;
    s32 bgIdUpDown;
    s32 i;
    s32 sp70;
    f32 lineLength;
    Vec3f posA;
    Vec3f posB;
    Vec3f posSide;
    Vec3f posUpDown;

    bgIdUpDown = bgIdSide = 0x32;
    sp70 = 0;

    this->actor.speedXZ = this->unk_17C;
    lineLength = 2.0f * this->unk_17C;

    if ((this->unk_14A == 0) || (this->unk_188.base.acFlags & AC_HIT) || (this->unk_188.base.ocFlags1 & OC1_HIT)) {
        func_808F7E74(this, globalCtx);
        return;
    }

    posA.x = this->actor.world.pos.x + (this->unk_158.x * 2.0f);
    posA.y = this->actor.world.pos.y + (this->unk_158.y * 2.0f);
    posA.z = this->actor.world.pos.z + (this->unk_158.z * 2.0f);

    posB.x = this->actor.world.pos.x - (this->unk_158.x * 4.0f);
    posB.y = this->actor.world.pos.y - (this->unk_158.y * 4.0f);
    posB.z = this->actor.world.pos.z - (this->unk_158.z * 4.0f);

    if (func_808F7944(globalCtx, &posA, &posB, &posUpDown, &polyUpDown, &bgIdUpDown)) {
        posB.x = (this->unk_14C.x * lineLength) + posA.x;
        posB.y = (this->unk_14C.y * lineLength) + posA.y;
        posB.z = (this->unk_14C.z * lineLength) + posA.z;

        if (func_808F7944(globalCtx, &posA, &posB, &posSide, &polySide, &bgIdSide)) {
            sp70 = func_808F75D0(this, polySide, globalCtx);
            Math_Vec3f_Copy(&this->actor.world.pos, &posSide);
            this->actor.floorBgId = bgIdSide;
            this->actor.speedXZ = 0.0f;
        } else {
            if (this->actor.floorPoly != polyUpDown) {
                sp70 = func_808F75D0(this, polyUpDown, globalCtx);
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
                posB.x = posA.x - (this->unk_14C.x * lineLength);
                posB.y = posA.y - (this->unk_14C.y * lineLength);
                posB.z = posA.z - (this->unk_14C.z * lineLength);
            } else if (i == 1) {
                posB.x = posA.x + (this->unk_164.x * lineLength);
                posB.y = posA.y + (this->unk_164.y * lineLength);
                posB.z = posA.z + (this->unk_164.z * lineLength);
            } else {
                posB.x = posA.x - (this->unk_164.x * lineLength);
                posB.y = posA.y - (this->unk_164.y * lineLength);
                posB.z = posA.z - (this->unk_164.z * lineLength);
            }

            if (func_808F7944(globalCtx, &posA, &posB, &posSide, &polySide, &bgIdSide)) {
                sp70 = func_808F75D0(this, polySide, globalCtx);
                Math_Vec3f_Copy(&this->actor.world.pos, &posSide);
                this->actor.floorBgId = bgIdSide;
                break;
            }
        }

        if (i == 3) {
            func_808F7E74(this, globalCtx);
        }
    }

    if (sp70 != 0) {
        func_808F77E4(this);
        this->actor.shape.rot.x = -this->actor.world.rot.x;
        this->actor.shape.rot.y = this->actor.world.rot.y;
        this->actor.shape.rot.z = this->actor.world.rot.z;
    }

    if (this->unk_149 != 0) {
        func_800B8F98(&this->actor, NA_SE_IT_BOMBCHU_MOVE - SFX_FLAG);
    }

    if (this->actor.speedXZ != 0.0f) {
        this->unk_17C = this->actor.speedXZ;
    }
}

void func_808F7E74(EnBomChu* this, GlobalContext* globalCtx) {
    EnBom* bomb;
    s32 i;

    bomb = (EnBom*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BOM, this->actor.world.pos.x,
                               this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, 0);

    this->unk_148 = 1;
    this->unk_149 = 0;

    if (bomb != NULL) {
        bomb->timer = 0;
    }

    this->unk_14A = 1;
    this->actor.speedXZ = 0.0f;

    if (this->actor.depthInWater > 0.0f) {
        for (i = 0; i < 40; i++) {
            EffectSsBubble_Spawn(globalCtx, &this->actor.world.pos, 1.0f, 5.0f, 30.0f, 0.25f);
        }
    }

    this->actor.draw = NULL;
    this->actionFunc = func_808F7FA0;
}

void func_808F7FA0(EnBomChu* this, GlobalContext* globalCtx) {
    if (this->unk_14A == 0) {
        Actor_MarkForDeath(&this->actor);
    }
}

void func_808F7FD0(EnBomChu* this, Vec3f* posModel, Vec3f* dest) {
    f32 x = posModel->x + this->unk_170;

    dest->x = this->actor.world.pos.x + (this->unk_164.x * x) + (this->unk_158.x * posModel->y) +
              (this->unk_14C.x * posModel->z);
    dest->y = this->actor.world.pos.y + (this->unk_164.y * x) + (this->unk_158.y * posModel->y) +
              (this->unk_14C.y * posModel->z);
    dest->z = this->actor.world.pos.z + (this->unk_164.z * x) + (this->unk_158.z * posModel->y) +
              (this->unk_14C.z * posModel->z);
}

void func_808F8080(EnBomChu* this, GlobalContext* globalCtx, f32 y, s32 arg3) {
    s32 pad;
    Vec3f pos;

    pos.x = this->actor.world.pos.x;
    pos.y = y;
    pos.z = this->actor.world.pos.z;

    EffectSsGRipple_Spawn(globalCtx, &pos, 70, 500, 0);

    if (arg3 != 0) {
        EffectSsGRipple_Spawn(globalCtx, &pos, 70, 500, 4);
        EffectSsGRipple_Spawn(globalCtx, &pos, 70, 500, 8);
    } else {
        pos.x -= this->unk_14C.x * 10.0f;
        pos.z -= this->unk_14C.z * 10.0f;
    }

    pos.y += 5.0f;
    EffectSsGSplash_Spawn(globalCtx, &pos, NULL, NULL, 1, 450);
}

void func_808F818C(EnBomChu* this, GlobalContext* globalCtx) {
    Vec3f sp74;
    Vec3f posA;
    Vec3f posB;
    Vec3f sp50;
    s16 yaw;
    f32 sin;
    f32 cos;
    f32 tempX;
    CollisionPoly* sp3C = NULL;
    s32 bgId = 0x32;
    s32 sp34;

    Math_Vec3f_Copy(&sp74, &this->actor.world.pos);
    Math_Vec3f_Copy(&sp50, &this->unk_158);
    yaw = this->actor.shape.rot.y;
    BgCheck2_UpdateActorAttachedToMesh(&globalCtx->colCtx, this->actor.floorBgId, &this->actor);

    if (yaw != this->actor.shape.rot.y) {
        yaw = this->actor.shape.rot.y - yaw;

        sin = Math_SinS(yaw);
        cos = Math_CosS(yaw);

        tempX = this->unk_14C.x;
        this->unk_14C.x = (this->unk_14C.z * sin) + (cos * tempX);
        this->unk_14C.z = (this->unk_14C.z * cos) - (sin * tempX);

        tempX = this->unk_158.x;
        this->unk_158.x = (this->unk_158.z * sin) + (cos * tempX);
        this->unk_158.z = (this->unk_158.z * cos) - (sin * tempX);

        tempX = this->unk_164.x;
        this->unk_164.x = (this->unk_164.z * sin) + (cos * tempX);
        this->unk_164.z = (this->unk_164.z * cos) - (sin * tempX);
    }

    posA.x = sp74.x + (2.0f * sp50.x);
    posA.y = sp74.y + (2.0f * sp50.y);
    posA.z = sp74.z + (2.0f * sp50.z);

    posB.x = this->actor.world.pos.x + (2.0f * this->unk_158.x);
    posB.y = this->actor.world.pos.y + (2.0f * this->unk_158.y);
    posB.z = this->actor.world.pos.z + (2.0f * this->unk_158.z);

    if (func_808F7944(globalCtx, &posA, &posB, &sp74, &sp3C, &bgId) != 0) {
        sp34 = func_808F75D0(this, sp3C, globalCtx);
        Math_Vec3f_Copy(&this->actor.world.pos, &sp74);
        this->actor.floorBgId = bgId;
        this->actor.speedXZ = 0.0f;
        if (sp34 != 0) {
            func_808F77E4(this);
            this->actor.shape.rot.x = -this->actor.world.rot.x;
            this->actor.shape.rot.y = this->actor.world.rot.y;
            this->actor.shape.rot.z = this->actor.world.rot.z;
        }
    }
}

void EnBomChu_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnBomChu* this = THIS;
    Vec3f sp54;
    Vec3f sp48;
    WaterBox* waterBox;
    f32 waterY;

    if (this->actor.floorBgId != 0x32) {
        func_808F818C(this, globalCtx);
    }

    if (this->unk_148 != 0) {
        this->unk_14A--;
    }

    this->actionFunc(this, globalCtx);

    if ((this->actionFunc != func_808F7FA0) &&
        (SurfaceType_IsWallDamage(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorBgId))) {
        func_808F7E74(this, globalCtx);
        return;
    }

    Actor_MoveWithoutGravity(&this->actor);
    this->unk_188.dim.worldSphere.center.x = this->actor.world.pos.x;
    this->unk_188.dim.worldSphere.center.y = this->actor.world.pos.y;
    this->unk_188.dim.worldSphere.center.z = this->actor.world.pos.z;
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->unk_188.base);
    if (this->actionFunc != func_808F7868) {
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->unk_188.base);
    }

    this->actor.focus.pos.x = this->actor.world.pos.x + (20.0f * this->unk_158.x);
    this->actor.focus.pos.y = this->actor.world.pos.y + (20.0f * this->unk_158.y);
    this->actor.focus.pos.z = this->actor.world.pos.z + (20.0f * this->unk_158.z);

    if (this->unk_149 != 0) {
        this->unk_170 =
            (5.0f + (Rand_ZeroOne() * 3.0f)) * Math_SinS((((s32)(Rand_ZeroOne() * 512.0f) + 0x3000) * this->unk_14A));
        func_808F7FD0(this, &D_808F8938, &sp54);
        func_808F7FD0(this, &D_808F8944, &sp48);
        EffectBlure_AddVertex(Effect_GetByIndex(this->unk_180), &sp54, &sp48);
        func_808F7FD0(this, &D_808F8950, &sp48);
        EffectBlure_AddVertex(Effect_GetByIndex(this->unk_184), &sp54, &sp48);

        waterY = this->actor.world.pos.y;

        if (WaterBox_GetSurface1(globalCtx, &globalCtx->colCtx, this->actor.world.pos.x, this->actor.world.pos.z,
                                 &waterY, &waterBox) != 0) {
            this->actor.depthInWater = waterY - this->actor.world.pos.y;

            if (this->actor.depthInWater < 0.0f) {
                if (this->actor.bgCheckFlags & 0x20) {
                    func_808F8080(this, globalCtx, waterY, 1);
                }

                this->actor.bgCheckFlags &= ~0x20;
                return;
            }

            if (!(this->actor.bgCheckFlags & 0x20) && (this->unk_14A != 120)) {
                func_808F8080(this, globalCtx, waterY, 1);
            } else {
                EffectSsBubble_Spawn(globalCtx, &this->actor.world.pos, 0.0f, 3.0f, 15.0f, 0.25f);
            }

            this->actor.bgCheckFlags |= 0x20;
        } else {
            this->actor.bgCheckFlags &= ~0x20;
            this->actor.depthInWater = -32000.0f;
        }
    }
}

void EnBomChu_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnBomChu* this = THIS;
    f32 colorIntensity;
    s32 blinkHalfPeriod;
    s32 blinkTime;

    OPEN_DISPS(globalCtx->state.gfxCtx);

    func_8012C28C(globalCtx->state.gfxCtx);
    func_800B8050(&this->actor, globalCtx, 0);

    if (this->unk_14A >= 40) {
        blinkTime = this->unk_14A % 20;
        blinkHalfPeriod = 10;
    } else if (this->unk_14A >= 10) {
        blinkTime = this->unk_14A % 10;
        blinkHalfPeriod = 5;
    } else {
        blinkTime = this->unk_14A & 1;
        blinkHalfPeriod = 1;
    }

    if (blinkTime > blinkHalfPeriod) {
        blinkTime = 2 * blinkHalfPeriod - blinkTime;
    }

    colorIntensity = blinkTime / (f32)blinkHalfPeriod;
    gDPSetEnvColor(POLY_OPA_DISP++, (s32)(colorIntensity * 209.0f) + 9, (s32)(colorIntensity * 34.0f) + 9,
                   (s32)(colorIntensity * -35.0f) + 35, 255);
    Matrix_InsertTranslation(this->unk_170 * 100.0f, 0.0f, 0.0f, MTXMODE_APPLY);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, gBombchuDL);

    CLOSE_DISPS(globalCtx->state.gfxCtx);
}
