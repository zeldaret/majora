/*
 * File: z_boss_03.c
 * Overlay: ovl_Boss_03
 * Description: Gyorg
 */

#include "z_boss_03.h"
#include "overlays/actors/ovl_Door_Warp1/z_door_warp1.h"
#include "overlays/actors/ovl_En_Water_Effect/z_en_water_effect.h"
#include "objects/gameplay_keep/gameplay_keep.h"
#include "objects/object_water_effect/object_water_effect.h"

#define FLAGS (ACTOR_FLAG_1 | ACTOR_FLAG_4 | ACTOR_FLAG_10 | ACTOR_FLAG_20)

#define THIS ((Boss03*)thisx)

#define WORK_TIMER_STUNNED 2

void Boss03_Init(Actor* thisx, GlobalContext* globalCtx);
void Boss03_Destroy(Actor* thisx, GlobalContext* globalCtx);
void Boss03_Update(Actor* thisx, GlobalContext* globalCtx);
void Boss03_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809E344C(Boss03* this, GlobalContext* globalCtx);
void func_809E34B8(Boss03* this, GlobalContext* globalCtx);
void func_809E3968(Boss03* this, GlobalContext* globalCtx);
void func_809E3D98(Boss03* this, GlobalContext* globalCtx);
void func_809E421C(Boss03* this, GlobalContext* globalCtx);
void func_809E475C(Boss03* this, GlobalContext* globalCtx);
void func_809E497C(Boss03* this, GlobalContext* globalCtx);
void func_809E4C90(Boss03* this, GlobalContext* globalCtx);
void func_809E4E80(Boss03* this, GlobalContext* globalCtx);
void func_809E5B64(Boss03* this, GlobalContext* globalCtx);
void func_809E6640(Boss03* this, GlobalContext* globalCtx);
void func_809E6BC0(Boss03* this, GlobalContext* globalCtx);

void Boss03_Stunned(Boss03* this, GlobalContext* globalCtx);

void func_809E8810(Actor* thisx, GlobalContext* globalCtx);
void func_809E8BEC(Actor* thisx, GlobalContext* globalCtx);

void func_809E4E2C(Boss03* this, GlobalContext* globalCtx);

void Boss03_DrawEffects(GlobalContext* globalCtx);

void func_809E38EC(Boss03* this, GlobalContext* globalCtx);

void func_809E3D34(Boss03* this, GlobalContext* globalCtx, u8 arg2);
void func_809E4180(Boss03* this, GlobalContext* globalCtx);
void func_809E4910(Boss03* this, GlobalContext* globalCtx);

void func_809E4C34(Boss03* this, GlobalContext* globalCtx);

void func_809E4674(Boss03* this, GlobalContext* globalCtx);

void Boss03_UpdateEffects(GlobalContext* globalCtx);

u8 D_809E9840;
u8 D_809E9841;
u8 D_809E9842;

Vec3f D_809E9848;

GyorgEffect sGyorgEffects[GYORG_EFFECT_COUNT];
Boss03* sGyorgInstance;

extern UNK_TYPE D_06007EC8;
extern AnimationHeader D_06009C14;

void func_809E2760(Vec3f* projectedPos, u16 sfxId) {
    func_8019F420(projectedPos, sfxId);
}

void func_809E2788(GlobalContext* globalCtx, Vec3f* pos) {
    s16 i;
    GyorgEffect* effects = globalCtx->specialEffects;

    for (i = 0; i < GYORG_EFFECT_COUNT; i++) {
        if ((effects->type == 0) || (effects->type == 1)) {
            effects->type = 4;
            effects->pos = *pos;
            effects->unk_34.x = 0.1f;
            effects->unk_34.y = 0.4f;
            effects->velocity = gZeroVec3f;
            effects->accel = gZeroVec3f;
            effects->alpha = 150;
            effects->unk_2E = Rand_ZeroFloat(4.0f) + 5.0f;
            return;
        }

        effects++;
    }
}

void func_809E2880(GlobalContext* globalCtx, Vec3f* pos) {
    s16 i;
    GyorgEffect* effects = globalCtx->specialEffects;

    for (i = 0; i < GYORG_EFFECT_COUNT; i++) {
        if ((effects->type == 0) || (effects->type == 1)) {
            effects->type = 2;
            effects->pos = *pos;
            effects->velocity = gZeroVec3f;
            effects->accel = gZeroVec3f;
            effects->accel.y = -2.0f;
            effects->unk_34.x = 0.1f;
            effects->unk_34.y = 0.0f;
            effects->unk_34.z = Rand_ZeroFloat(2 * M_PI);
            effects->unk_02 = Rand_ZeroFloat(100.0f);
            effects->velocity.x = randPlusMinusPoint5Scaled(25.0f);
            effects->velocity.z = randPlusMinusPoint5Scaled(25.0f);
            return;
        }

        effects++;
    }
}

void func_809E299C(GlobalContext* globalCtx, Vec3f* pos, Vec3f* velocity) {
    Vec3f accel = { 0.0f, -1.0f, 0.0f };
    f32 temp_f2;
    GyorgEffect* effects = globalCtx->specialEffects;
    s16 i;

    for (i = 0; i < GYORG_EFFECT_COUNT; i++) {
        if ((effects->type == 0) || (effects->type == 1)) {
            effects->type = 3;
            effects->pos = *pos;
            effects->velocity = *velocity;
            effects->accel = accel;
            temp_f2 = Rand_ZeroFloat(0.02f) + 0.02f;
            effects->unk_34.y = temp_f2;
            effects->unk_34.x = temp_f2;
            effects->unk_34.z = Rand_ZeroFloat(2 * M_PI);
            effects->unk_02 = Rand_ZeroFloat(100.0f);
            return;
        }

        effects++;
    }
}

void func_809E2AB4(GlobalContext* globalCtx, Vec3f* pos) {
    s16 i;
    GyorgEffect* effects = globalCtx->specialEffects;

    for (i = 0; i < GYORG_EFFECT_COUNT; i++) {
        if (effects->type == 0) {
            effects->type = 1;
            effects->pos = *pos;
            effects->velocity = gZeroVec3f;
            effects->accel = gZeroVec3f;
            effects->accel.y = 0.2f;
            effects->unk_34.x = Rand_ZeroFloat(0.3f) + 0.2f;
            effects->unk_02 = 0;
            return;
        }

        effects++;
    }
}

void func_809E2B8C(s32 index, ColliderJntSph* collider, Vec3f* arg2) {
    ColliderJntSphElement* temp_v1;

    collider->elements[index].dim.worldSphere.center.x = arg2->x;
    collider->elements[index].dim.worldSphere.center.y = arg2->y;
    collider->elements[index].dim.worldSphere.center.z = arg2->z;

    temp_v1 = &collider->elements[index];
    temp_v1->dim.worldSphere.radius = temp_v1->dim.scale * temp_v1->dim.modelSphere.radius;
}


static s32 sRandSeed0;
static s32 sRandSeed1;
static s32 sRandSeed2;

void Boss03_SeedRand(s32 seed0, s32 seed1, s32 seed2) {
    sRandSeed0 = seed0;
    sRandSeed1 = seed1;
    sRandSeed2 = seed2;
}

f32 Boss03_RandZeroOne(void) {
    f32 rand;

    // Wichmann-Hill algorithm
    sRandSeed0 = (sRandSeed0 * 171) % 30269;
    sRandSeed1 = (sRandSeed1 * 172) % 30307;
    sRandSeed2 = (sRandSeed2 * 170) % 30323;

    rand = (sRandSeed0 / 30269.0f) + (sRandSeed1 / 30307.0f) + (sRandSeed2 / 30323.0f);
    while (rand >= 1.0f) {
        rand -= 1.0f;
    }

    return fabsf(rand);
}

Actor* func_809E2D64(GlobalContext* globalCtx) {
    Actor* actor = globalCtx->actorCtx.actorLists[ACTORCAT_BG].first;

    while (actor != NULL) {
        if (actor->id == ACTOR_BG_DBLUE_MOVEBG) {
            return actor;
        }
        actor = actor->next;
    }

    return NULL;
}

const ActorInit Boss_03_InitVars = {
    ACTOR_BOSS_03,
    ACTORCAT_BOSS,
    FLAGS,
    OBJECT_BOSS03,
    sizeof(Boss03),
    (ActorFunc)Boss03_Init,
    (ActorFunc)Boss03_Destroy,
    (ActorFunc)Boss03_Update,
    (ActorFunc)Boss03_Draw,
};

static ColliderJntSphElementInit sJntSphElementsInit1[2] = {
    {
        {
            ELEMTYPE_UNK3,
            { 0xF7CFFFFF, 0x00, 0x08 },
            { 0xF7CFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 0, { { 0, 0, 0 }, 70 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK3,
            { 0xF7CFFFFF, 0x00, 0x08 },
            { 0xF7CFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 1, { { 0, 0, 0 }, 50 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit1 = {
    {
        COLTYPE_HIT3,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_PLAYER,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    ARRAY_COUNT(sJntSphElementsInit1),
    sJntSphElementsInit1,
};

static ColliderJntSphElementInit sJntSphElementsInit2[5] = {
    {
        {
            ELEMTYPE_UNK3,
            { 0xF7CFFFFF, 0x00, 0x08 },
            { 0xF7CFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 2, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK3,
            { 0xF7CFFFFF, 0x00, 0x08 },
            { 0xF7CFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 5, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK3,
            { 0xF7CFFFFF, 0x00, 0x08 },
            { 0xF7CFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 6, { { 0, 0, 0 }, 70 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK3,
            { 0xF7CFFFFF, 0x00, 0x08 },
            { 0xF7CFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 7, { { 0, 0, 0 }, 70 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK3,
            { 0xF7CFFFFF, 0x00, 0x08 },
            { 0xF7CFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 8, { { 0, 0, 0 }, 30 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit2 = {
    {
        COLTYPE_METAL,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_PLAYER,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    ARRAY_COUNT(sJntSphElementsInit2),
    sJntSphElementsInit2,
};

Vec3f D_809E8FE8 = { 1216.0f, 140.0f, -1161.0f };

// Unused. No idea what it can be. Doesn't look like textures or anything similar
UNK_TYPE D_809E8FF4[0x42] = {
    0x43828000, 0x430C0000, 0xC47A0000, 0xC3FC0000, 0x42F00000, 0xC49F8000, 0xC490A000, 0x42A00000, 0xC4510000,
    0xC47F0000, 0x42F00000, 0x43BE8000, 0xC2080000, 0x42F00000, 0x4497A000, 0x4448C000, 0x42A00000, 0x449C4000,
    0x448EE000, 0x42F00000, 0x44174000, 0x44998000, 0x430C0000, 0xC3740000, 0x44980000, 0x430C0000, 0xC4912000,
    0x43828000, 0x430C0000, 0xC47A0000, 0xC3FC0000, 0x42F00000, 0xC45E8000, 0xC490A000, 0x42A00000, 0xC4510000,
    0xC47F0000, 0x42F00000, 0x43BE8000, 0xC2080000, 0x42F00000, 0x4497A000, 0x4448C000, 0x42A00000, 0x449C4000,
    0x448EE000, 0x42F00000, 0x44174000, 0x44998000, 0x430C0000, 0xC3740000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000,
};

Color_RGBA8 D_809E90FC = { 60, 50, 20, 255 };
Color_RGBA8 D_809E9100 = { 40, 30, 30, 255 };

void func_809E2DA0(Boss03* this, GlobalContext* globalCtx) {
    if (this->unk_2AC.y < 80.0f) {
        u8 i;
        Vec3f spA0;
        Vec3f sp94;
        Vec3f sp88;

        for (i = 0; i < 5; i++) {
            sp94.x = randPlusMinusPoint5Scaled(10.0f);
            sp94.y = Rand_ZeroFloat(2.0f) + 2.0f;
            sp94.z = randPlusMinusPoint5Scaled(10.0f);
            sp88.y = -0.075f;
            sp88.z = 0.0f;
            sp88.x = 0.0f;
            spA0.y = Rand_ZeroFloat(20.0f) + 5.0f;
            spA0.z = randPlusMinusPoint5Scaled(150.0f) + this->unk_2AC.z;
            spA0.x = randPlusMinusPoint5Scaled(150.0f) + this->unk_2AC.x;
            func_800B0EB0(globalCtx, &spA0, &sp94, &sp88, &D_809E90FC, &D_809E9100, Rand_ZeroFloat(200.0f) + 400.0f, 10,
                          Rand_ZeroFloat(10.0f) + 25.0f);
        }
    }
}

void Boss03_Init(Actor* thisx, GlobalContext* globalCtx2) {
    Boss03* this = THIS;
    s32 i;
    GlobalContext* globalCtx = globalCtx2;
    Vec3f sp70;

    if (gSaveContext.weekEventReg[55] & 0x80) {
        Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, 0.0f, 440.0f, 200.0f, 0, 0,
                           0, ENDOORWARP1_FF_1);
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, 0.0f, 440.0f, 0.0f, 0, 0, 0, 0);
        Actor_MarkForDeath(&this->actor);
        return;
    }

    // TODO: make a macro / enum
    if (this->actor.params == 0x23) {
        this->actor.update = func_809E8810;
        this->actor.draw = func_809E8BEC;

        this->unk_240 = Rand_ZeroFloat(1000.0f);

        this->actor.scale.x = Rand_ZeroFloat(0.0075f) + 0.027f;
        this->actor.scale.y = 0.02f;
        this->actor.scale.z = 0.015f;

        // This bit is weird, why is it setting the first 6 elements of the joint table?
        for (i = 0; i < 6; i++) {
            this->jointTable[i].x = Math_SinS((this->unk_240 * 0x100) + i * 15000) * 3000.0f;
            this->jointTable[i].y = Math_SinS((this->unk_240 * 0x180) + i * 20000) * 2000.0f;
            this->jointTable[i].z = Math_SinS((this->unk_240 * 0x10) + i * 19000) * 4000.0f;
        }

        this->actor.flags &= ~1;
        return;
    }

    this->actor.world.pos = D_809E8FE8;

    Boss03_SeedRand(1, 29093, 9786);

    for (i = 0; i < 5; i++) {
        Matrix_InsertYRotation_f((Boss03_RandZeroOne() * 3.1415927f * 0.2f) + (1.2566371f * i), 0);
        Matrix_GetStateTranslationAndScaledZ((Boss03_RandZeroOne() * 800.0f) + 400.0f, &sp70);
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_BOSS_03, sp70.x, sp70.y, sp70.z, 0,
                    Boss03_RandZeroOne() * 0x10000, 0, 0x23);
    }

    sGyorgInstance = this;

    globalCtx->specialEffects = sGyorgEffects;

    for (i = 0; i < ARRAY_COUNT(sGyorgEffects); i++) {
        sGyorgEffects[i].type = 0;
    }

    this->actor.targetMode = 5;
    this->actor.colChkInfo.mass = MASS_HEAVY;
    this->actor.colChkInfo.health = 10;
    Collider_InitAndSetJntSph(globalCtx, &this->collider1, &this->actor, &sJntSphInit1, this->colliderElements1);
    Collider_InitAndSetJntSph(globalCtx, &this->collider2, &this->actor, &sJntSphInit2, this->colliderElements2);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &gGyorgSkel, &gGyorgCrawlingAnim, this->jointTable, this->morphTable,
                       GYORG_LIMB_MAX);
    Actor_SetScale(&this->actor, 0.2f);

    if ((KREG(64) != 0) || (gSaveContext.eventInf[5] & 0x40)) {
        this->actionFunc = func_809E344C;
        D_809E9842 = 0;
        Audio_QueueSeqCmd(0x100100FF);
    } else {
        func_809E4E2C(this, globalCtx);
        D_809E9842 = 1;
    }

    this->unk_252 = -1;
    this->unk_258 = 430.0f;
}

void Boss03_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    Boss03* this = THIS;
}

void func_809E344C(Boss03* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    if (player->actor.world.pos.y < 540.0f) {
        this->actionFunc = func_809E34B8;
        Animation_MorphToLoop(&this->skelAnime, &gGyorgFastSwimmingAnim, -15.0f);
        this->unk_274 = 0;
        this->actor.flags |= 1;
    }
}

/*
#ifndef NON_MATCHING
#define NON_MATCHING
#endif
*/

#ifdef NON_MATCHING
// float regalloc
void func_809E34B8(Boss03* this, GlobalContext* globalCtx) {
    f32 new_var;
    // s32 pad[6];
    // s32 pad0;
    s32 pad1;
    s32 pad2;
    s32 pad3;
    s32 pad4;
    s32 pad5;
    Player* player = GET_PLAYER(globalCtx);
    s32 pad6;

    s16 i;
    f32 temp_f12;

    f32 temp_f20;
    f32 temp;
    f32 temp_f22;

    func_809E2760(&this->actor.projectedPos, 0x32AB);

    this->unk_276 = 0x800;
    this->skelAnime.playSpeed = 1.0f;
    this->unk_27C = 1.0f;
    this->unk_278 = 10.0f;

    SkelAnime_Update(&this->skelAnime);
    Matrix_InsertTranslation(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z, 0);
    Matrix_RotateY(this->actor.world.rot.y, 1);

    temp_f20 = this->unk_268.x - this->actor.world.pos.x;
    temp = this->unk_268.y - this->actor.world.pos.y;
    temp_f22 = this->unk_268.z - this->actor.world.pos.z;

    temp_f12 = sqrtf(SQ(temp_f20) + SQ(temp_f22));

    Math_ApproachS(&this->actor.world.rot.x, Math_FAtan2F(temp_f12, -temp), 0x000A, this->unk_274);

    Math_ApproachS(
        &this->unk_2A0,
        Math_SmoothStepToS(&this->actor.world.rot.y, Math_FAtan2F(temp_f22, temp_f20), 0x000A, this->unk_274, 0) *
            -0.5f,
        5, 0x0100);

    Math_ApproachS(&this->unk_274, this->unk_276, 1, 0x100);
    Math_ApproachF(&this->actor.speedXZ, this->unk_278, 1.0f, this->unk_27C);
    Math_ApproachF(&this->unk_260, __sinf(this->skelAnime.curFrame * 0.62831855f) * 10.0f * 0.01f, 0.5f, 1.0f);

    if ((this->workTimer[2] == 0) && (this->actor.bgCheckFlags & 8)) {
        Matrix_GetStateTranslationAndScaledZ(-500.0f, &this->unk_268);
        this->unk_268.y = Rand_ZeroFloat(100.0f) + 150.0f;
        this->workTimer[2] = 60;
        this->workTimer[0] = Rand_ZeroFloat(60.0f) + 60.0f;
        this->unk_274 = 0x100;
    }

    if (this->workTimer[2] == 0) {
        if ((temp_f12 < 100.0f) || (this->workTimer[0] == 0)) {

            for (i = 0; i < 200; i++) {
                if ((!temp_f20) && (!temp_f20)) {}
                this->unk_268.x = randPlusMinusPoint5Scaled(2500.0f);
                this->unk_268.y = Rand_ZeroFloat(100.0f) + 150.0f;
                this->unk_268.z = randPlusMinusPoint5Scaled(2500.0f);

                if (sqrtf(SQ(this->unk_268.x - this->actor.world.pos.x) +
                          SQ(this->unk_268.z - this->actor.world.pos.z)) > 300.0f) {
                    break;
                }
            }

            this->unk_274 = 0x100;
            this->workTimer[0] = Rand_ZeroFloat(60.0f) + 60.0f;
        }
    }

    Actor_MoveWithoutGravityReverse(&this->actor);
    Math_ApproachS(&this->actor.shape.rot.x, this->actor.world.rot.x, 2, this->unk_274 * 2);
    Math_ApproachS(&this->actor.shape.rot.y, this->actor.world.rot.y, 2, this->unk_274 * 2);

    if (this->workTimer[1] == 0) {
        if ((this->unk_258 < player->actor.world.pos.y) && (player->actor.bgCheckFlags & 1)) {
            func_809E4674(this, globalCtx);
        } else if ((player->transformation != PLAYER_FORM_GORON) && (player->transformation != PLAYER_FORM_DEKU)) {
            if (KREG(70) == 0) {
                func_809E38EC(this, globalCtx);
            } else if (this->unk_252 <= 0) {
                func_809E38EC(this, globalCtx);
            }
        }
    }
}
#else
void func_809E34B8(Boss03* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Boss_03/func_809E34B8.s")
#endif

void func_809E38EC(Boss03* this, GlobalContext* globalCtx) {
    this->actionFunc = func_809E3968;
    Animation_MorphToLoop(&this->skelAnime, &gGyorgFastSwimmingAnim, -10.0f);
    this->workTimer[0] = 100;
    this->unk_276 = 0x1000;
    this->skelAnime.playSpeed = 1.5f;
    this->unk_278 = 10.0f;
    this->unk_27C = 1.0f;
}

#ifdef NON_MATCHING
// float regalloc
void func_809E3968(Boss03* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);
    f32 temp_f2;
    f32 temp3;
    f32 temp_f18;

    f32 temp;

    Vec3f sp50;
    f32 temp_f12;
    f32 phi_f2;
    f32 sp44;
    u8 sp43;

    this->unk_2BD = 1;
    SkelAnime_Update(&this->skelAnime);

    temp_f2 = player->actor.world.pos.x - this->actor.world.pos.x;
    temp3 = ((player->actor.world.pos.y - this->actor.world.pos.y) + 50.0f);
    temp_f18 = player->actor.world.pos.z - this->actor.world.pos.z;

    Math_ApproachS(&this->actor.world.rot.x, Math_FAtan2F(sqrtf(SQ(temp_f2) + SQ(temp_f18)), -temp3), 0x000A,
                   this->unk_274);
    temp =
        Math_SmoothStepToS(&this->actor.world.rot.y, Math_FAtan2F(temp_f18, temp_f2), 0x000A, this->unk_274, 0) * -0.5f;
    Math_ApproachS(&this->unk_2A0, temp, 5, 0x100);

    Math_ApproachS(&this->unk_274, this->unk_276, 1, 0x0100);
    Math_ApproachF(&this->actor.speedXZ, this->unk_278, 1.0f, this->unk_27C);
    Math_ApproachF(&this->unk_260, __sinf(this->skelAnime.curFrame * 0.62831855f) * 10.0f * 0.01f, 0.5f, 1.0f);
    Actor_MoveWithoutGravityReverse(&this->actor);
    Math_ApproachS(&this->actor.shape.rot.x, this->actor.world.rot.x, 2, this->unk_274 * 2);
    Math_ApproachS(&this->actor.shape.rot.y, this->actor.world.rot.y, 2, this->unk_274 * 2);

    if (((player->actor.bgCheckFlags & 1) && (player->actor.shape.feetPos[0].y >= 438.0f)) || (this->workTimer[0] == 0)) {
        if (&this->actor == player->actor.parent) {
            player->unk_AE8 = 0x65;
            player->actor.parent = NULL;
            player->csMode = 0;
        }

        func_809E344C(this, globalCtx);
        this->workTimer[1] = 100;
    } else {

        if ((this->unk_258 - 80.0f) < player->actor.world.pos.y) {
            sp43 = 1;
            phi_f2 = 100.0f;
            sp44 = 50.0f;
        } else {
            sp43 = 0;
            phi_f2 = 200.0f;
            sp44 = 100.0f;
        }

        Matrix_InsertTranslation(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z, 0);
        Matrix_RotateY(this->actor.world.rot.y, 1);
        Matrix_GetStateTranslationAndScaledZ(sp44, &sp50);

        temp_f12 = sqrtf(SQ(sp50.x - player->actor.world.pos.x) + SQ(sp50.z - player->actor.world.pos.z));

        if (temp_f12 < (2.0f * phi_f2)) {
            Math_ApproachS(&this->jawZRot, 0x3200, 2, 0x1800);
            this->unk_278 = 25.0f;
            this->unk_27C = 5.0f;
            this->skelAnime.playSpeed = 2.5f;
        }

        if (temp_f12 < phi_f2) {
            func_809E3D34(this, globalCtx, sp43);
            if (sp43 != 0) {
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_WATER_EFFECT, player->actor.world.pos.x,
                            this->unk_258, player->actor.world.pos.z, 0, 0, 0x78, ENWATEREFFECT_777);
                func_809E2760(&this->actor.projectedPos, NA_SE_EN_KONB_SINK_OLD);
            }
            func_809E2760(&this->actor.projectedPos, NA_SE_EN_UTSUBO_EAT);
        }
    }

    func_809E2DA0(this, globalCtx);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Boss_03/func_809E3968.s")
#endif

void func_809E3D34(Boss03* this, GlobalContext* globalCtx, u8 arg2) {
    this->actionFunc = func_809E3D98;
    Animation_MorphToLoop(&this->skelAnime, &gGyorgFastSwimmingAnim, -15.0f);
    this->workTimer[0] = 100;
    this->unk_2C4 = 0.0f;
    this->unk_2B8 = 0.0f;
    this->unk_242 = arg2;
}

void func_809E3D98(Boss03* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);
    f32 temp_f2;
    f32 temp;
    f32 temp_f18;
    Actor* new_var;

    this->skelAnime.playSpeed = 2.0f;
    this->unk_27C = 2.0f;
    this->unk_276 = 0x1000;
    this->unk_2BD = 1;
    this->unk_278 = 15.0f;
    this->actor.flags &= -2;
    SkelAnime_Update(&this->skelAnime);

    temp_f2 = player->actor.world.pos.x - this->actor.world.pos.x;
    temp = player->actor.world.pos.y - this->actor.world.pos.y;
    temp_f18 = player->actor.world.pos.z - this->actor.world.pos.z;

    Math_ApproachS(&this->actor.world.rot.x, Math_FAtan2F(sqrtf(SQ(temp_f2) + SQ(temp_f18)), -temp), 0xA,
                   this->unk_274);
    Math_ApproachS(
        &this->unk_2A0,
        (Math_SmoothStepToS(&this->actor.world.rot.y, Math_FAtan2F(temp_f18, temp_f2), 0xA, this->unk_274, 0) * -0.5f),
        5, 0x100);
    Math_ApproachS(&this->unk_274, this->unk_276, 1, 0x100);
    Math_ApproachF(&this->actor.speedXZ, this->unk_278, 1.0f, this->unk_27C);
    Math_ApproachF(&this->unk_260, __sinf(this->skelAnime.curFrame * 0.62831855f) * 10.0f * 0.01f, 0.5f, 1.0f);
    Actor_MoveWithoutGravityReverse(&this->actor);
    Math_ApproachS(&this->actor.shape.rot.x, this->actor.world.rot.x, 2, this->unk_274 * 2);
    Math_ApproachS(&this->actor.shape.rot.y, this->actor.world.rot.y, 2, this->unk_274 * 2);

    if (((player->actor.bgCheckFlags & 1) && (player->actor.shape.feetPos[0].y >= 438.0f)) || (this->workTimer[0] == 0)) {
        if (&this->actor == player->actor.parent) {
            player->unk_AE8 = 0x65;
            player->actor.parent = NULL;
            player->csMode = 0;
            func_80165690();
        }
        func_809E344C(this, globalCtx);
    } else {
        f32 phi_f0;

        Math_ApproachF(&player->actor.world.pos.x, this->unk_2AC.x, 1.0f, this->unk_2B8);
        Math_ApproachF(&player->actor.world.pos.y, this->unk_2AC.y, 1.0f, this->unk_2B8);
        Math_ApproachF(&player->actor.world.pos.z, this->unk_2AC.z, 1.0f, this->unk_2B8);

        if (this->unk_242 != 0) {
            phi_f0 = 10.0f;
        } else {
            phi_f0 = 2.0f;
        }

        Math_ApproachF(&this->unk_2B8, 100.0f, 1.0f, phi_f0);

        if (this->unk_2B8 > 30.0f) {
            // fake match
            if (((new_var = &this->actor) != player->actor.parent) && (globalCtx->grabPlayer(globalCtx, player) != 0)) {
                player->actor.parent = &this->actor;
                Audio_PlaySfxGeneral(NA_SE_VO_LI_DAMAGE_S, &player->actor.projectedPos, 4, &D_801DB4B0, &D_801DB4B0, &D_801DB4B8);
                func_809E4180(this, globalCtx);
            }
        } else {
            //Math_ApproachS(&this->jawZRot, 0x3200, 2, 3072.0f * phi_f0);
            Math_ApproachS(&this->jawZRot, 0x3200, 2, 0xC00 * phi_f0);
        }

        Math_ApproachS(&player->actor.world.rot.x, 0x4000, 1, 0x400);
        Math_ApproachS(&player->actor.shape.rot.x, 0x4000, 1, 0x400);
        Math_ApproachS(&player->actor.world.rot.y, this->unk_2A2.y, 1, 0x400);
        Math_ApproachS(&player->actor.shape.rot.y, this->unk_2A2.y, 1, 0x400);
    }

    func_809E2DA0(this, globalCtx);
}

void func_809E4180(Boss03* this, GlobalContext* globalCtx) {
    s16 temp;
    Vec3f sp20;

    this->actionFunc = func_809E421C;
    temp = Math_FAtan2F(this->actor.world.pos.z, this->actor.world.pos.x);
    Matrix_RotateY(temp, 0);
    sp20.x = 0.0f;
    sp20.y = 200.0f;
    sp20.z = 700.0f;
    Matrix_MultiplyVector3fByState(&sp20, &this->unk_268);
    this->unk_276 = 0x800;
    this->unk_242 = 0;
    this->workTimer[0] = 100;
    this->skelAnime.playSpeed = 1.0f;
}

#ifdef NON_MATCHING
// float regalloc
void func_809E421C(Boss03* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);
    Input* input = CONTROLLER1(globalCtx);
    f32 temp_f2;
    f32 temp;
    f32 temp_f18;
    f32 temp_f0;
    f32 temp_f12;

    this->unk_2BD = 1;
    this->unk_25C = 0xF;

    if (this->workTimer[0] == 90) {
        func_8016566C(0x96);
    }

    SkelAnime_Update(&this->skelAnime);
    Matrix_InsertTranslation(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z, 0);
    Matrix_RotateY(this->actor.world.rot.y, 1);

    temp_f2 = this->unk_268.x - this->actor.world.pos.x;
    temp = this->unk_268.y - this->actor.world.pos.y;
    temp_f18 = this->unk_268.z - this->actor.world.pos.z;

    temp_f12 = sqrtf(SQ(temp_f2) + SQ(temp_f18));
    Math_ApproachS(&this->actor.world.rot.x, Math_FAtan2F(temp_f12, -temp), 0xA, this->unk_274);
    Math_ApproachS(
        &this->unk_2A0,
        Math_SmoothStepToS(&this->actor.world.rot.y, Math_FAtan2F(temp_f18, temp_f2), 0xA, this->unk_274, 0) * -0.5f, 5,
        0x100);
    Math_ApproachS(&this->unk_274, this->unk_276, 1, 0x100);
    Math_ApproachF(&this->unk_260, __sinf(this->skelAnime.curFrame * 0.62831855f) * 10.0f * 0.01f, 0.5f, 1.0f);

    switch (this->unk_242) {
        case 0x0:
            Math_ApproachF(&this->actor.speedXZ, 10.0f, 1.0f, 1.0f);
            if (temp_f12 < 100.0f) {
                this->unk_242 = 1;
                Animation_MorphToLoop(&this->skelAnime, &D_06009C14, -15.0f);
            }
            break;

        case 0x1:
            Math_ApproachF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f);
            Math_ApproachF(&this->actor.world.pos.y, 200.0f, 0.05f, 5.0f);
            break;
    }

    Actor_MoveWithoutGravityReverse(&this->actor);
    Math_ApproachS(&this->actor.shape.rot.x, this->actor.world.rot.x, 2, this->unk_274 * 2);
    Math_ApproachS(&this->actor.shape.rot.y, this->actor.world.rot.y, 2, this->unk_274 * 2);

    if (CHECK_BTN_ALL(input->press.button, BTN_A) || CHECK_BTN_ALL(input->press.button, BTN_B)) {
        if (this->workTimer[0] != 0) {
            this->workTimer[0]--;
        }
        if (this->workTimer[0] != 0) {
            this->workTimer[0]--;
        }
    }

    if (this->workTimer[0] == 0) {
        if (&this->actor == player->actor.parent) {
            player->unk_AE8 = 0x65;
            player->actor.parent = NULL;
            player->csMode = 0;
            func_80165690();
            func_800B8D50(globalCtx, NULL, 10.0f, this->actor.shape.rot.y, 0.0f, 0x20);
        }

        func_809E344C(this, globalCtx);
        this->workTimer[1] = Rand_ZeroFloat(100.0f) + 200.0f;
        return;
    }

    player->actor.world.pos = this->unk_2AC;
    temp_f0 = Math_SinS(this->unk_240 * 0x2000);

    Math_ApproachS(&this->jawZRot, temp_f0 * 2000.0f, 2, 0x3000);
    player->actor.shape.rot.x = 0x4000;
    player->actor.world.rot.x = player->actor.shape.rot.x;

    player->actor.world.rot.y = player->actor.shape.rot.y = this->unk_2A2.y;
    if (this->workTimer[0] < 5) {
        Math_ApproachS(&this->jawZRot, 0x3200, 2, 0x1800);
        Math_ApproachF(&this->unk_2C4, 100.0f, 1.0f, 100.0f);
    } else {
        Math_ApproachF(&this->unk_2C4, -300.0f, 1.0f, 5.0f);
        if ((this->unk_240 % 8) == 0) {
            func_809E2760(&this->actor.projectedPos, NA_SE_EN_KONB_BITE_OLD);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Boss_03/func_809E421C.s")
#endif

void func_809E4674(Boss03* this, GlobalContext* globalCtx) {
    this->actionFunc = func_809E475C;
    Animation_MorphToLoop(&this->skelAnime, &gGyorgBackingUpAnim, -15.0f);
    this->workTimer[0] = Rand_ZeroFloat(30.0f) + 80.0f;
    this->workTimer[1] = 50;
    this->unk_274 = 0;

    if (sqrtf(SQXZ(this->actor.world.pos)) > 600.0f) {
        if (Rand_ZeroOne() < 0.5f) {
            this->unk_242 = 1;
        } else {
            this->unk_242 = 0;
        }
    } else {
        this->unk_242 = 0;
    }
}

void func_809E475C(Boss03* this, GlobalContext* globalCtx) {
    f32 temp_f0;
    Player* player = GET_PLAYER(globalCtx);

    if (this->workTimer[1] != 0) {
        func_809E2760(&this->actor.projectedPos, NA_SE_EN_KONB_WAIT_OLD - SFX_FLAG);
    }

    Math_ApproachS(
        &this->unk_2A0,
        Math_SmoothStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 0x000A, this->unk_274, 0) * -0.7f, 5,
        0x0200);
    Math_ApproachS(&this->unk_274, 0x800, 1, 0x100);
    Math_ApproachS(&this->actor.shape.rot.y, this->actor.world.rot.y, 2, 0x1000);
    Math_ApproachS(&this->actor.world.rot.x, 0, 0x000A, 0x0200);
    Math_ApproachS(&this->actor.shape.rot.x, 0, 0x000A, 0x0200);

    temp_f0 = this->unk_258 - 70.0f;
    if (temp_f0 < this->actor.world.pos.y) {
        Math_ApproachF(&this->actor.world.pos.y, temp_f0, 0.05f, 5.0f);
    }

    SkelAnime_Update(&this->skelAnime);

    if ((this->unk_258 < player->actor.world.pos.y) && (player->actor.bgCheckFlags & 1)) {
        if (this->workTimer[0] == 0) {
            func_809E4910(this, globalCtx);
        }
    } else if (player->actor.world.pos.y <= this->unk_258) {
        func_809E344C(this, globalCtx);
        this->workTimer[1] = 20;
    }

    Math_ApproachF(&this->actor.speedXZ, -3.0f, 1.0f, 0.5f);
    Actor_MoveWithoutGravityReverse(&this->actor);
}

void func_809E4910(Boss03* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    this->actionFunc = func_809E497C;
    Animation_MorphToLoop(&this->skelAnime, &gGyorgFastSwimmingAnim, -15.0f);
    this->unk_268 = player->actor.world.pos;
}

void func_809E497C(Boss03* this, GlobalContext* globalCtx) {
    f32 temp_f14;
    f32 sp50;
    f32 temp_f12;
    Player* player = GET_PLAYER(globalCtx);
    s16 temp_a1;

    this->skelAnime.playSpeed = 2.0f;
    SkelAnime_Update(&this->skelAnime);
    func_809E2760(&this->actor.projectedPos, NA_SE_EN_KONB_PREATTACK_OLD - SFX_FLAG);

    temp_f14 = this->unk_268.x - this->actor.world.pos.x;
    sp50 = (this->unk_268.y - this->actor.world.pos.y) - 50.0f;
    temp_f12 = this->unk_268.z - this->actor.world.pos.z;

    Math_ApproachS(&this->actor.world.rot.y, Math_FAtan2F(temp_f12, temp_f14), 0xA, 0x1000);

    temp_a1 = Math_FAtan2F(sqrtf(SQ(temp_f14) + SQ(temp_f12)), -sp50);
    Math_ApproachS(&this->actor.world.rot.x, temp_a1, 0xA, 0x1000);

    this->actor.shape.rot = this->actor.world.rot;

    Math_ApproachF(&this->actor.speedXZ, 25.0f, 1.0f, 3.0f);
    Math_ApproachF(&this->unk_260, __sinf(this->skelAnime.curFrame * 0.62831855f) * 10.0f * 0.01f, 0.5f, 1.0f);
    Actor_MoveWithoutGravityReverse(&this->actor);

    if (this->actor.speedXZ >= 20.0f) {
        if (this->unk_242 == 1) {
            if (sqrtf(SQXZ(this->actor.world.pos)) < 700.0f) {
                func_809E4C34(this, globalCtx);
                return;
            }
        }

        if (this->actor.bgCheckFlags & 8) {
            play_sound(NA_SE_IT_BIG_BOMB_EXPLOSION);
            func_800BC848(&this->actor, globalCtx, 20, 15);
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, 0x0170, 0.0f, this->unk_258, 0.0f, 0, 0, 0x96, 0x30C);
            if ((this->unk_258 < player->actor.world.pos.y) && (player->actor.bgCheckFlags & 1)) {
                func_800B8D50(globalCtx, NULL, 7.0f, Math_FAtan2F(player->actor.world.pos.z, player->actor.world.pos.x),
                              7.0f, 0);
            }
            func_809E344C(this, globalCtx);
            this->workTimer[1] = 50;
        }
    }
}

void func_809E4C34(Boss03* this, GlobalContext* globalCtx) {
    this->actionFunc = func_809E4C90;
    this->actor.gravity = -2.0f;
    this->actor.velocity.y = 30.0f;
    this->actor.speedXZ = 25.0f;
    func_809E2760(&this->actor.projectedPos, NA_SE_EN_KONB_JUMP_OLD);
}

void func_809E4C90(Boss03* this, GlobalContext* globalCtx) {
    this->unk_254 = 0;
    func_809E2760(&this->actor.projectedPos, NA_SE_EN_KONB_JUMP_LEV_OLD - SFX_FLAG);

    this->skelAnime.playSpeed = 2.0f;
    SkelAnime_Update(&this->skelAnime);

    Math_ApproachS(&this->actor.world.rot.x, this->actor.velocity.y * -300.0f, 2, 0x2000);
    this->actor.shape.rot.x = this->actor.world.rot.x;

    Actor_MoveWithGravity(&this->actor);
    if ((this->actor.velocity.y < 0.0f) && (this->actor.world.pos.y < this->unk_258 + 50.0f)) {
        this->unk_254 = 2;
        this->actor.gravity = 0.0f;
        Math_ApproachZeroF(&this->actor.velocity.y, 1.0f, 1.0f);
        if (this->actor.velocity.y == 0.0f) {
            func_809E344C(this, globalCtx);
            this->workTimer[1] = 50;
        }
    } else {
        s16 i;
        Vec3f sp30;

        for (i = 0; i < 3; i++) {
            sp30.x = this->actor.world.pos.x + randPlusMinusPoint5Scaled(150.0f);
            sp30.y = this->actor.world.pos.y;
            sp30.z = this->actor.world.pos.z + randPlusMinusPoint5Scaled(150.0f);
            func_809E2880(globalCtx, &sp30);
        }
    }
}

void func_809E4E2C(Boss03* this, GlobalContext* globalCtx) {
    this->actionFunc = func_809E4E80;
    Animation_MorphToLoop(&this->skelAnime, &gGyorgFastSwimmingAnim, -10.0f);
    this->skelAnime.playSpeed = 2.0f;
}

Vec3f D_809E9104[] = {
    { 770.0f, 200.0f, 720.0f },
    { 831.0f, 200.0f, -570.0f },
    { 0.0f, 450.0f, 0.0f },
};

void func_809E4E80(Boss03* this, GlobalContext* globalCtx) {
    s16 phi_s0;
    Vec3f sp70;

    f32 temp_f2;
    f32 temp_f16;
    f32 temp_f18;
    s32 pad;

    f32 sp5C;
    s16 sp5A;
    s16 new_var;
    s16 sp56;
    f32 phi_f2;
    Player* player;


    sp56 = 0;
    player = GET_PLAYER(globalCtx);
    this->unk_254 = 0;
    this->unk_530 += 1;
    this->unk_290 = 0;
    sp5A = 0x4BC;

    switch (this->unk_534) {
        case 0x0:
            if (player->actor.world.pos.y < 1350.0f) {
                func_800EA0D4(globalCtx, &globalCtx->csCtx);
                func_800B7298(globalCtx, &this->actor, 7);
                this->subCamId = Play_CreateSubCamera(globalCtx);
                Play_CameraChangeStatus(globalCtx, 0, 1);
                Play_CameraChangeStatus(globalCtx, this->subCamId, 7);
                this->actor.world.rot.y = -0x7B30;
                this->unk_2C8.y = 1850.0f;

                this->actor.world.pos.x = 1400.0f;
                this->actor.world.pos.y = 130.0f;
                this->actor.world.pos.z = 1400.0f;

                player->actor.shape.rot.y = 0;
                player->actor.world.pos.y = 1850.0f;
                player->actor.world.rot.y = player->actor.shape.rot.y;

                this->unk_544.y = player->actor.world.pos.y + 30.0f;
                this->unk_534 = 1;
                this->unk_530 = 0;
                this->actor.flags &= ~1;
                this->unk_2D5 = 1;

                this->cameraFov = KREG(14) + 60.0f;

                case 0x1:
                    player->actor.world.pos.z = 0.0f;
                    player->actor.world.pos.x = 0.0f;
                    player->actor.speedXZ = 0.0f;

                    this->unk_538.x = 100.0f;
                    this->unk_538.y = 540.0f;

                    this->unk_538.z = player->actor.world.pos.z + 100.0f;
                    this->unk_544.x = player->actor.world.pos.x;

                    Math_ApproachF(&this->unk_544.y, player->actor.world.pos.y + 30.0f, 0.5f, 100.0f);
                    this->unk_544.z = player->actor.world.pos.z;
                    if (this->unk_530 >= 0x6A) {
                        this->unk_534 = 2;
                        this->unk_530 = 0;
                        this->unk_240 = 0;
                        func_8016566C(0x96);
                        this->cameraFov = 80.0f;

                        case 0x2:
                            Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_KONB_DEMO_MOVE_OLD - SFX_FLAG);

                            temp_f2 = D_809E9104[this->unk_242].x - this->actor.world.pos.x;
                            temp_f16 = D_809E9104[this->unk_242].y - this->actor.world.pos.y;
                            temp_f18 = D_809E9104[this->unk_242].z - this->actor.world.pos.z;

                            Math_ApproachS(&this->actor.world.rot.x, Math_FAtan2F(sqrtf(SQ(temp_f2) + SQ(temp_f18)), -temp_f16), 0xA,
                                           this->unk_274);
                            Math_ApproachS(&this->actor.world.rot.y, Math_FAtan2F(temp_f18, temp_f2), 0xA,
                                           this->unk_274);
                            Math_ApproachS(&this->unk_274, 0x200, 1, 0x10);

                            if ((this->unk_530 >= 0x1F) && (this->unk_530 < 0x32)) {
                                sp56 = 2;
                            }

                            if ((this->unk_530 == 0x28) || (this->unk_530 == (KREG(91) + 0x10E))) {
                                Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_COMMON_WATER_DEEP);
                            }

                            if (this->unk_530 >= 0x33) {
                                Math_ApproachF(&this->actor.speedXZ, this->unk_278, 1.0f, 0.1f);
                            }

                            if (this->unk_242 < 2) {
                                //if (1) { } if (1) { } if (1) { }
                                if (sqrtf(SQ(temp_f2) + SQ(temp_f18)) < 100.0f) {
                                    this->unk_242++;
                                    this->unk_274 = 0;
                                    if (this->unk_242 >= 2) {
                                        this->unk_530 = 0x64;
                                    }
                                }
                                this->unk_278 = 5.0f;
                            } else {
                                this->unk_278 = 0.0f;
                                sp56 = 1;
                                if ((this->actor.speedXZ == 0.0f) && ((u32)this->unk_530 >= 0xE7)) {
                                    this->unk_534 = 3;
                                    this->unk_530 = 0;
                                }
                                // if (1) { } if (1) { } if (1) { } if (1) { } if (1) { } if (1) { }
                                if (this->unk_530 == 0xA5) {
                                    Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_COMMON_WATER_MID);
                                }
                                if (this->unk_530 == 0xB4) {
                                    Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_COMMON_WATER_DEEP);
                                }
                            }
                    }
            }
            break;

        case 0x3:
            func_809E2760(&this->actor.projectedPos, NA_SE_EN_KONB_PREATTACK_OLD - SFX_FLAG);
            sp5A = 0x1970;
            Math_ApproachF(&this->actor.speedXZ, 15.0f, 1.0f, 2.0f);
            if (this->unk_530 >= 0x15) {
                this->unk_534 = 4;
                this->unk_530 = 0;
            }
            break;

        case 0x4:
            player->actor.world.rot.y = player->actor.shape.rot.y = 0;

            if (this->unk_530 == 5) {
                func_800B7298(globalCtx, &this->actor, 8);
            }

            //if (1) { } if (1) { } if (1) { } if (1) { }

            this->unk_538.x = player->actor.world.pos.x + 30.0f;
            this->unk_538.y = ((player->actor.world.pos.y + Player_GetHeight(player)) - 4.0f) + BREG(17);
            this->unk_538.z = player->actor.world.pos.z - 30.0f;

            this->unk_544.x = player->actor.world.pos.x;
            this->unk_544.y =
                (((player->actor.world.pos.y + Player_GetHeight(player)) - 18.0f) + 6.0f) + BREG(18);
            this->unk_544.z = player->actor.world.pos.z;

            if (player->transformation == PLAYER_FORM_FIERCE_DEITY) {
                this->unk_538.y -= 60.0f;
                this->unk_544.y -= 35.0f;
            }

            this->cameraFov = 60.0f;
            if (this->unk_530 == 0x10) {
                this->unk_534 = 5;
                this->unk_530 = 0;
                this->unk_2D5 = 0;
                this->actor.speedXZ = -200.0f;
                Actor_MoveWithoutGravityReverse(&this->actor);
                this->actor.world.pos.y = this->unk_258 - 150.0f;
                func_80165690();

                case 0x5:
                    SkelAnime_Update(&this->skelAnime);
                    this->actor.speedXZ = 20.0f;
                    Actor_MoveWithoutGravityReverse(&this->actor);
                    player->actor.shape.rot.y = -0x1470;
                    player->actor.world.rot.y = player->actor.shape.rot.y;

                    this->unk_538.x = ((player->actor.world.pos.x + 30.0f) - 90.0f) + 300.0f;
                    this->unk_538.y = (player->actor.world.pos.y + 40.0f) + 10.0f;
                    this->unk_538.z = ((player->actor.world.pos.z - 30.0f) + 160.0f) + 300.0f;

                    this->unk_544.x = this->actor.world.pos.x;
                    this->unk_544.y = this->actor.world.pos.y - 100.0f;
                    this->unk_544.z = this->actor.world.pos.z;

                    if (this->unk_530 == 0xA) {
                        this->actor.velocity.y = 30.0f;
                        this->unk_534 = 6;
                        this->unk_530 = 0;
                        this->actor.gravity = -1.5f;
                        this->actor.speedXZ = 20.0f;
                        Audio_QueueSeqCmd(0x801B);
                        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_KONB_JUMP_OLD);
                        this->skelAnime.playSpeed = 1.0f;
                    }
            }
            break;

        case 0x6:
            Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_KONB_JUMP_LEV_OLD - SFX_FLAG);

            if (this->unk_530 == 0x1E) {
                TitleCard_InitBossName(&globalCtx->state, &globalCtx->actorCtx.titleCtxt,
                                       Lib_SegmentedToVirtual(&D_06007EC8), 160, 180, 128, 40);
            }

            // if ((this && this) && this) {}

            if ((this->unk_530 < 0x18) || (this->unk_530 >= 0x5A)) {
                SkelAnime_Update(&this->skelAnime);
                Math_ApproachS(&this->actor.world.rot.x, this->actor.velocity.y * -300.0f, 3, 0x1000);
                Actor_MoveWithGravity(&this->actor);
                if ((this->actor.velocity.y <= 0.0f) && (this->actor.world.pos.y < (this->unk_258 + 50.0f))) {
                    this->unk_254 = 2;
                    this->actor.gravity = 0.0f;
                    Math_ApproachZeroF(&this->actor.velocity.y, 1.0f, 1.0f);
                    Math_ApproachZeroF(&this->actor.speedXZ, 1.0f, 0.5f);
                } else {
                    if (1) { } if (1) { } if (1) { } if (1) { } if (1) { } if (1) { }

                    for (phi_s0 = 0; phi_s0 < 3; phi_s0++) {
                        sp70.x = randPlusMinusPoint5Scaled(150.0f) + this->actor.world.pos.x;
                        sp70.y = this->actor.world.pos.y;
                        sp70.z = randPlusMinusPoint5Scaled(150.0f) + this->actor.world.pos.z;

                        func_809E2880(globalCtx, &sp70);
                    }

                    this->unk_55C.x = this->actor.world.pos.x;
                    this->unk_55C.y = this->actor.world.pos.y - 100.0f;
                    this->unk_55C.z = this->actor.world.pos.z;
                }
            } else {
                Math_ApproachF(&this->unk_538.x, (((player->actor.world.pos.x + 30.0f) - 90.0f) + 300.0f) - 90.0f,
                               0.05f, 3.0f);
                Math_ApproachF(&this->unk_538.y, player->actor.world.pos.y + 40.0f + 10.0f + 90.0f, 0.05f, 3.0f);
                Math_ApproachF(&this->unk_538.z, ((player->actor.world.pos.z - 30.0f) + 160.0f + 300.0f) - 90.0f, 0.05f,
                               3.0f);
                Math_ApproachF(&this->unk_568, 90.0f, 0.05f, 3.0f);
            }

            Math_ApproachF(&this->unk_544.x, this->unk_55C.x, 0.5f, 100.0f);
            Math_ApproachF(&this->unk_544.y, this->unk_55C.y + this->unk_568, 0.5f, 100.0f);
            Math_ApproachF(&this->unk_544.z, this->unk_55C.z, 0.5f, 100.0f);

            if (this->unk_530 == 0x91) {
                Camera* temp_v0_4;

                temp_v0_4 = Play_GetCamera(globalCtx, 0);

                temp_v0_4->eye = this->unk_538;
                temp_v0_4->eyeNext = this->unk_538;
                temp_v0_4->at = this->unk_544;
                func_80169AFC(globalCtx, this->subCamId, 0);
                func_800EA0EC(globalCtx, &globalCtx->csCtx);
                func_800B7298(globalCtx, &this->actor, 6);
                this->subCamId = 0;
                func_809E344C(this, globalCtx);
                this->workTimer[1] = 50;
                gSaveContext.eventInf[5] |= 0x40;
            }
            break;
    }

    this->actor.shape.rot = this->actor.world.rot;

    if ((this->unk_534 == 2) || (this->unk_534 == 3)) {
        Actor_MoveWithoutGravityReverse(&this->actor);
        phi_f2 = this->actor.speedXZ * 0.02f;
        if (phi_f2 > 0.12f) {
            phi_f2 = 0.12f;
        }

        sp5C = Math_SinS(this->unk_240 * sp5A) * phi_f2;
        // if (&player->actor.world) {}
        Matrix_InsertTranslation(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z, 0);
        Matrix_RotateY(this->actor.world.rot.y, 1);
        Matrix_InsertYRotation_f(sp5C, 1);
        Matrix_InsertXRotation_s(this->actor.world.rot.x, 1);
        Matrix_GetStateTranslationAndScaledZ(100.0f, &this->unk_544);

        this->unk_538 = this->actor.world.pos;

        for (phi_s0 = 0; phi_s0 < sp56; phi_s0++) {
            sp70.x = randPlusMinusPoint5Scaled(100.0f) + this->unk_544.x;
            sp70.y = (randPlusMinusPoint5Scaled(100.0f) + this->unk_544.y) - 150.0f;
            sp70.z = randPlusMinusPoint5Scaled(100.0f) + this->unk_544.z;
            func_809E2AB4(globalCtx, &sp70);
        }
    }

    if (this->subCamId != 0) {
        Play_CameraSetAtEye(globalCtx, this->subCamId, &this->unk_544, &this->unk_538);
        Play_CameraSetFov(globalCtx, this->subCamId, this->cameraFov);
    }
}

void func_809E5ADC(Boss03* this, GlobalContext* globalCtx) {
    this->actionFunc = func_809E5B64;
    Animation_MorphToLoop(&this->skelAnime, &gGyorgFloppingAnim, -10.0f);
    this->unk_52C = Animation_GetLastFrame(&gGyorgFloppingAnim);
    Audio_QueueSeqCmd(0x100100FF);
    this->workTimer[0] = 0;
    this->unk_242 = 0;
    this->unk_534 = 0;
    this->actor.flags &= ~1;
}

void func_809E5B64(Boss03* this, GlobalContext* globalCtx) {
    s16 i;
    Vec3f sp90;
    Vec3f sp84;
    Vec3f sp78;
    float new_var2;
    float new_var;
    s32 pad;
    f32 pad2;
    f32 sp64;
    Camera* camera = Play_GetCamera(globalCtx, 0);
    Player* player; // sp5C
    f32 sp4C;

    new_var = 0.0f;
    player = GET_PLAYER(globalCtx);
    sp64 = this->actor.scale.x * 5.0f;

    this->unk_530++;

    switch (this->unk_534) {
        case 0:
            if (ActorCutscene_GetCurrentIndex() == -1) {
                func_800EA0D4(globalCtx, &globalCtx->csCtx);
                func_800B7298(globalCtx, &this->actor, 1);
                this->subCamId = Play_CreateSubCamera(globalCtx);
                Play_CameraChangeStatus(globalCtx, 0, 1);
                Play_CameraChangeStatus(globalCtx, this->subCamId, 7);
                this->unk_2BE = Math_FAtan2F(this->actor.world.pos.z, this->actor.world.pos.x);
                if ((this->unk_258 < player->actor.world.pos.y) && (player->actor.bgCheckFlags & 1)) {
                    player->actor.world.pos.x = 0.0f;
                    player->actor.world.pos.z = -200.0f;
                }

                case 1:
                    this->unk_530 = 0;
                    this->unk_534 = 2;
                    this->unk_538.x = camera->eye.x;
                    this->unk_538.y = camera->eye.y;
                    this->unk_538.z = camera->eye.z;
                    this->unk_544.x = camera->at.x;
                    this->unk_544.y = camera->at.y;
                    this->unk_544.z = camera->at.z;

                    // this->unk_568 = Math_Acot2F(this->unk_538.z - this->actor.world.pos.z, this->unk_538.x -
                    // this->actor.world.pos.x);
                    new_var2 = this->unk_538.x - this->actor.world.pos.x;
                    this->unk_568 = Math_Acot2F(this->unk_538.z - this->actor.world.pos.z, new_var2);

                    this->unk_570 = 0.0f;
                    this->unk_56C = 0.0f;

                case 2:
                    sp90.x = 0.0f;
                    sp90.y = (50.0f * sp64) + 150.0f;
                    sp90.z = (400.0f * sp64) + 300.0f;

                    this->unk_55C.x = this->actor.world.pos.x;
                    this->unk_55C.y = this->actor.world.pos.y;
                    this->unk_55C.z = this->actor.world.pos.z;

                    this->unk_568 += this->unk_56C;
                    Matrix_InsertYRotation_f(this->unk_568, 0);
                    Matrix_MultiplyVector3fByState(&sp90, &this->unk_550);

                    this->unk_550.x += this->actor.world.pos.x;
                    this->unk_550.y += this->unk_258;
                    this->unk_550.z += this->actor.world.pos.z;

                    sp4C = 40.0f + new_var;
                    Math_ApproachF(&this->unk_538.x, this->unk_550.x, 0.1f, sp4C);
                    Math_ApproachF(&this->unk_538.y, this->unk_550.y, 0.1f, sp4C);
                    Math_ApproachF(&this->unk_538.z, this->unk_550.z, 0.1f, sp4C);
                    sp4C = 70.0f + new_var;
                    Math_ApproachF(&this->unk_544.x, this->unk_55C.x, 0.1f, sp4C);
                    Math_ApproachF(&this->unk_544.y, this->unk_55C.y, 0.1f, sp4C);
                    Math_ApproachF(&this->unk_544.z, this->unk_55C.z, 0.1f, sp4C);
            }
            break;
    }

    SkelAnime_Update(&this->skelAnime);

    switch (this->unk_242) {
        case 0x0:
            Math_ApproachF(&this->actor.world.pos.y, Math_SinS(this->unk_240 * 0x1000) * 80.0f + this->unk_258, 1.0f,
                           10.0f);
            this->actor.shape.rot.z += 0x100;
            Matrix_RotateY(this->unk_2BE, 0);
            Matrix_GetStateTranslationAndScaledZ(500.0f, &sp84);
            Math_ApproachF(&this->actor.world.pos.x, sp84.x, 0.1f, 5.0f);
            Math_ApproachF(&this->actor.world.pos.z, sp84.z, 0.1f, 5.0f);

            if (Animation_OnFrame(&this->skelAnime, this->unk_52C) != 0) {
                Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_KONB_DEAD_JUMP2_OLD);
            }
            if (Animation_OnFrame(&this->skelAnime, this->unk_52C * 0.5f) != 0) {
                Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_KONB_DEAD_JUMP_OLD);
            }

            if ((this->workTimer[0] == 0) && ((this->unk_258 - 100.0f) < this->actor.world.pos.y)) {
                this->workTimer[0] = Rand_ZeroFloat(15.0f) + 15.0f;
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_WATER_EFFECT, this->actor.world.pos.x, this->unk_258,
                            this->actor.world.pos.z, 0, 0, 0x78, ENWATEREFFECT_777);

                if (this->actionFunc == func_809E5B64) {
                    if ((D_809E9840 & 1) != 0) {
                        func_809E2760(&this->actor.projectedPos, NA_SE_EN_KONB_JUMP_OLD);
                    } else {
                        func_809E2760(&this->actor.projectedPos, NA_SE_EN_KONB_SINK_OLD);
                    }
                    D_809E9840++;
                }

                this->unk_284 = this->actor.world.pos.x;
                this->unk_288 = this->unk_258;
                this->unk_28C = this->actor.world.pos.z;

                this->unk_280 = 0x1B;
                if ((fabsf(this->actor.world.pos.x - sp84.x) < 5.0f) &&
                    (fabsf(this->actor.world.pos.z - sp84.z) < 5.0f)) {
                    this->unk_242 = 1;
                    this->actor.gravity = -2.0f;
                    this->actor.velocity.y = 25.0f;
                    this->actor.speedXZ = 10.0f;
                    this->actor.world.rot.y = this->unk_2BE + 0x8000;
                    this->unk_240 = 0;
                    Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_KONB_DEAD_JUMP2_OLD);
                }
            }
            Math_ApproachF(&this->unk_56C, 0.01f, 1.0f, 0.0005f);
            break;
        case 0x1:
            if (this->unk_240 == 0x96) {
                Audio_QueueSeqCmd(0x8021);
            }
            Math_ApproachF(&this->unk_56C, 0.01f, 1.0f, 0.0005f);
            Math_ApproachF(&this->actor.scale.x, 0.01f, 0.05f, 0.001f);
            Actor_SetScale(&this->actor, this->actor.scale.x);
            if (this->actor.velocity.y < 0.0f) {
                if (this->actor.world.pos.y < 440.0f + (100.0f * sp64)) {
                    this->actor.world.pos.y = 440.0f + (100.0f * sp64);
                    this->actor.velocity.y = ((Rand_ZeroFloat(10.0f) + 7.5f) * sp64) + 7.5f;
                    this->actor.speedXZ = ((Rand_ZeroFloat(5.0f) + 2.5f) * sp64) + 2.5f;

                    if (Rand_ZeroOne() < 0.5f) {
                        this->unk_2D6 = ((s16)randPlusMinusPoint5Scaled(500.0f) + this->unk_2D6) + 0x8000;
                    }

                    if (Rand_ZeroOne() < 0.5f) {
                        this->unk_2DA = ((s16)randPlusMinusPoint5Scaled(500.0f) + this->unk_2DA) + 0x8000;
                    }

                    if (Rand_ZeroOne() < 0.5f) {
                        this->unk_2D8 = Rand_ZeroFloat(65536.0f);
                    }

                    this->actor.world.rot.y = Math_FAtan2F(-this->actor.world.pos.z, -this->actor.world.pos.x);

                    func_809E2760(&this->actor.projectedPos, NA_SE_EN_KONB_BOUND_OLD);
                    func_809E2760(&this->actor.projectedPos, NA_SE_EN_KONB_BOUND2_OLD);
                }
            }

            Math_ApproachS(&this->actor.shape.rot.y, this->unk_2D8, 3, 0x0500);
            Math_ApproachS(&this->actor.shape.rot.x, this->unk_2D6, 3, 0x0A00);
            Math_ApproachS(&this->actor.shape.rot.z, this->unk_2DA, 3, 0x0A00);

            sp4C = 150.0f * sp64;

            for (i = 0; i < 1; i++) {
                sp78.x = randPlusMinusPoint5Scaled(sp4C) + this->actor.world.pos.x;
                sp78.y = this->actor.world.pos.y;
                sp78.z = randPlusMinusPoint5Scaled(sp4C) + this->actor.world.pos.z;
                func_809E2880(globalCtx, &sp78);
            }

            Actor_MoveWithGravity(&this->actor);
            if (this->actor.scale.x <= 0.0111f) {
                this->unk_242 = 2;
                Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, 0.0f, 440.0f, 200.0f, 0, 0, 0,
                                   ENDOORWARP1_FF_1);
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, this->actor.focus.pos.x, 440.0f,
                            this->actor.focus.pos.z, 0, 0, 0, 0);
                this->unk_530 = 0;
                Actor_SetScale(&this->actor, 0.0f);
                Audio_StopSfxByPos(&this->actor.projectedPos);
            }
            break;
        case 0x2:
            Math_ApproachZeroF(&this->unk_56C, 1.0f, 0.0005f);
            if (this->unk_530 == 0x3C) {
                camera = Play_GetCamera(globalCtx, 0);
                camera->eye = this->unk_538;
                camera->eyeNext = this->unk_538;
                camera->at = this->unk_544;
                func_80169AFC(globalCtx, this->subCamId, 0);
                this->subCamId = 0;
                func_800EA0EC(globalCtx, &globalCtx->csCtx);
                func_800B7298(globalCtx, &this->actor, 6U);
                this->unk_534 = 3;
                func_80165690();
                func_809E2760(&this->actor.projectedPos, NA_SE_EN_KONB_INIT_OLD);
                func_809E2760(&D_809E9848, NA_SE_EN_KONB_INIT_OLD);
            }
            break;

        case 0x3:
            this->actor.world.pos.y = 5000.0f;
            break;
    }

    if (this->subCamId != 0) {
        Play_CameraSetAtEye(globalCtx, this->subCamId, &this->unk_544, &this->unk_538);
    }
}

void func_809E65F4(Boss03* this, GlobalContext* globalCtx) {
    this->actionFunc = func_809E6640;
    Animation_MorphToLoop(&this->skelAnime, &gGyorgBackingUpAnim, -15.0f);
    this->unk_534 = 0;
    this->unk_530 = 0;
}

void func_809E6640(Boss03* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    SkelAnime_Update(&this->skelAnime);
    this->unk_530++;
    switch (this->unk_534) {
        case 0x0:
            if (ActorCutscene_GetCurrentIndex() == -1) {
                func_800EA0D4(globalCtx, &globalCtx->csCtx);
                func_800B7298(globalCtx, &this->actor, 1);
                this->subCamId = Play_CreateSubCamera(globalCtx);
                Play_CameraChangeStatus(globalCtx, 0, 1);
                Play_CameraChangeStatus(globalCtx, this->subCamId, 7);
                this->unk_534 = 1;
                this->unk_2BE = 3000;

                case 0x1:
                    if (player->actor.world.pos.y < 437.0f) {
                        player->actor.world.pos.z = 500.0f;
                        player->actor.world.pos.x = 500.0f;
                    }

                    this->actor.shape.rot.z = 0;
                    this->actor.world.pos.z = 1000.0f;
                    this->actor.world.pos.x = 1000.0f;
                    this->actor.world.pos.y = 200.0f;
                    this->actor.shape.rot.x = this->actor.shape.rot.z;

                    this->actor.shape.rot.y = this->actor.world.rot.y =
                        Math_FAtan2F(-this->actor.world.pos.x, -this->actor.world.pos.x);
                    this->unk_260 = 0.0f;

                    player->actor.shape.rot.y = player->actor.world.rot.y = this->actor.world.rot.y + 0x8000;

                    Matrix_InsertTranslation(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z,
                                             0);
                    Matrix_RotateY(this->actor.shape.rot.y + this->unk_2BE, 1);
                    Matrix_GetStateTranslationAndScaledZ(340.0f, &this->unk_538);

                    this->unk_544.x = this->actor.world.pos.x;
                    this->unk_544.y = this->actor.world.pos.y;
                    this->unk_544.z = this->actor.world.pos.z;

                    Math_ApproachS(&this->unk_2BE, -4000, 10, 70);

                    if (this->unk_530 >= 0x3D) {
                        Math_ApproachS(&this->jawZRot, 0x3200, 5, 0x500);
                        if ((this->unk_530 >= 0x5A) && (this->unk_530 < 0x82)) {
                            if ((this->unk_530 & 1) != 0) {
                                Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_TANRON3,
                                                   this->actor.world.pos.x - 110.0f, this->actor.world.pos.y - 20.0f,
                                                   this->actor.world.pos.z - 110.0f, 0, this->actor.shape.rot.y, 0, 0);
                                this->unk_252++;
                            }
                            if ((this->unk_530 & 7) == 0) {
                                Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_KONB_MINI_APPEAR);
                            }
                        }
                    }

                    if (this->unk_530 >= 0x96) {
                        Camera* temp_v0_2;

                        temp_v0_2 = Play_GetCamera(globalCtx, 0);
                        temp_v0_2->eye = this->unk_538;
                        temp_v0_2->eyeNext = this->unk_538;
                        temp_v0_2->at = this->unk_544;

                        func_80169AFC(globalCtx, this->subCamId, 0);
                        this->subCamId = 0;
                        func_800EA0EC(globalCtx, &globalCtx->csCtx);
                        func_800B7298(globalCtx, &this->actor, 6);
                        func_809E344C(this, globalCtx);
                        this->workTimer[1] = 50;
                    }
            }
            break;
    }

    if (this->subCamId != 0) {
        Play_CameraSetAtEye(globalCtx, this->subCamId, &this->unk_544, &this->unk_538);
    }
}

void Boss03_SetupStunned(Boss03* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    if (this->actionFunc != Boss03_Stunned) {
        Animation_MorphToLoop(&this->skelAnime, &gGyorgStunnedAnim, -15.0f);
        this->workTimer[WORK_TIMER_STUNNED] = 200;
        this->actionFunc = Boss03_Stunned;
    }

    if (&this->actor == player->actor.parent) {
        player->unk_AE8 = 0x65;
        player->actor.parent = NULL;
        player->csMode = 0;
        func_80165690();
    }

    this->unk_240 = 0;
}

void Boss03_Stunned(Boss03* this, GlobalContext* globalCtx) {
    this->actor.hintId = 0x29;

    if (this->unk_240 >= 0x10) {
        func_809E2760(&this->actor.projectedPos, NA_SE_EN_COMMON_WEAKENED - SFX_FLAG);
    }

    SkelAnime_Update(&this->skelAnime);

    if ((this->unk_258 + 30.0f) < this->actor.world.pos.y) {
        this->actor.gravity = -2.0f;
        Actor_MoveWithGravity(&this->actor);
        if (this->actor.bgCheckFlags & 2) {
            play_sound(NA_SE_IT_WALL_HIT_HARD);
            func_800BC848(&this->actor, globalCtx, 10, 10);
        }
    } else {
        Math_ApproachS(&this->actor.shape.rot.z, -0x6000, 0xA, 0x900);
        Math_ApproachS(&this->actor.world.rot.x, 0x800, 0xA, 0x1000);
        this->actor.shape.rot.x = this->actor.world.rot.x;

        Math_ApproachF(&this->actor.world.pos.y, 100.0f, 0.05f, 5.0f);
        Math_ApproachF(&this->actor.speedXZ, 0.0f, 1.0f, 1.5f);
        Actor_MoveWithoutGravityReverse(&this->actor);
    }

    if (this->workTimer[WORK_TIMER_STUNNED] == 0) {
        func_809E344C(this, globalCtx);
    }
}

void func_809E6B70(Boss03* this, GlobalContext* globalCtx) {
    Animation_MorphToLoop(&this->skelAnime, &gGyorgFloppingAnim, -10.0f);
    this->actionFunc = func_809E6BC0;
    this->workTimer[0] = 30;
}

void func_809E6BC0(Boss03* this, GlobalContext* globalCtx) {
    this->unk_25C = 0x000F;
    SkelAnime_Update(&this->skelAnime);
    Math_ApproachS(&this->jawZRot, ((Math_SinS(this->unk_240 * 0x2000) * 3000.0f) + 0x3000), 2, 0x3000);
    Math_ApproachF(&this->actor.world.pos.y, 200.0f, 0.05f, 10.0f);
    if (this->workTimer[0] == 0) {
        if ((s8)this->actor.colChkInfo.health < 6) {
            if (this->unk_253 == 0) {
                this->unk_253++;
                func_809E65F4(this, globalCtx);
                return;
            }
        }
        func_809E344C(this, globalCtx);
        this->workTimer[1] = 100;
    }
}

void func_809E6CB4(Boss03* this, GlobalContext* globalCtx) {
    ColliderInfo* hitbox;
    u8 sp4B = true;
    Player* player = GET_PLAYER(globalCtx);
    s32 i;
    s32 phi_v1;
    u32 phi_v0;
    Boss03ActionFunc stunnedActionFunc = Boss03_Stunned;

    if (((KREG(20) + (this->unk_258 - 50.0f)) < player->actor.world.pos.y) &&
        (player->transformation != PLAYER_FORM_FIERCE_DEITY)) {
        sp4B = false;
    }

    if (this->unk_258 < player->actor.world.pos.y) {
        for (i = 0; i < ARRAY_COUNT(sJntSphElementsInit1); i++) {
            if (this->collider1.elements[i].info.toucherFlags & TOUCH_HIT) {
                this->collider1.elements[i].info.toucherFlags &= ~TOUCH_HIT;
                player->unk_B84 = this->actor.shape.rot.y;
                player->unk_B80 = 20.0f;
            }
        }

        for (i = 0; i < ARRAY_COUNT(sJntSphElementsInit2); i++) {
            if (this->collider2.elements[i].info.toucherFlags & TOUCH_HIT) {
                this->collider2.elements[i].info.toucherFlags &= ~TOUCH_HIT;
                player->unk_B84 = this->actor.shape.rot.y;
                player->unk_B80 = 20.0f;
            }
        }
    }

    if (this->unk_25C == 0) {
        if ((this->actionFunc == stunnedActionFunc) && sp4B) {
            for (i = 0; i < ARRAY_COUNT(sJntSphElementsInit2); i++) {
                if (this->collider2.elements[i].info.bumperFlags & BUMP_HIT) {
                    hitbox = this->collider2.elements[i].info.acHitInfo;
                    this->collider2.elements[i].info.bumperFlags &= ~BUMP_HIT;
                    this->unk_25C = 0xF;
                    this->unk_25E = 0xF;

                    // (DMG_SWORD_BEAM | DMG_SPIN_ATTACK | DMG_ZORA_PUNCH | DMG_ZORA_BARRIER | DMG_DEKU_LAUNCH |
                    // DMG_DEKU_SPIN | DMG_GORON_SPIKES | DMG_SWORD | DMG_GORON_PUNCH | DMG_DEKU_STICK)
                    phi_v0 = (hitbox->toucher.dmgFlags & 0x038AC302)
                                 ? this->collider2.elements[i].info.acHitInfo->toucher.damage
                                 : 0;

                    phi_v1 = phi_v0;
                    if (phi_v0 < 1) {
                        phi_v1 = 1;
                    }
                    this->actor.colChkInfo.health -= phi_v1;

                    if ((s8)this->actor.colChkInfo.health <= 0) {
                        func_809E2760(&D_809E9848, NA_SE_EN_KONB_DEAD_OLD);
                        func_809E2760(&D_809E9848, NA_SE_EN_KONB_DEAD2_OLD);
                        func_809E5ADC(this, globalCtx);
                        Enemy_StartFinishingBlow(globalCtx, &this->actor);
                    } else {
                        func_809E6B70(this, globalCtx);
                        func_809E2760(&this->actor.projectedPos, NA_SE_EN_KONB_DAMAGE_OLD);
                    }
                    return;
                }
            }
        }

        for (i = 0; i < ARRAY_COUNT(sJntSphElementsInit1); i++) {
            if (this->collider1.elements[i].info.bumperFlags & BUMP_HIT) {
                hitbox = this->collider1.elements[i].info.acHitInfo;
                this->collider1.elements[i].info.bumperFlags &= ~BUMP_HIT;
                this->unk_25C = 0xF;

                if (this->actionFunc != stunnedActionFunc) {
                    Boss03_SetupStunned(this, globalCtx);
                    func_809E2760(&this->actor.projectedPos, NA_SE_EN_KONB_DAMAGE_OLD);

                    if (&this->actor == player->actor.parent) {
                        player->unk_AE8 = 0x65;
                        player->actor.parent = NULL;
                        player->csMode = 0;
                        func_80165690();
                    }

                    continue;
                }

                if (sp4B) {
                    this->unk_25E = 0xF;

                    // (DMG_SWORD_BEAM | DMG_SPIN_ATTACK | DMG_ZORA_PUNCH | DMG_ZORA_BARRIER | DMG_DEKU_LAUNCH |
                    // DMG_DEKU_SPIN | DMG_GORON_SPIKES | DMG_SWORD | DMG_GORON_PUNCH | DMG_DEKU_STICK)
                    phi_v0 = (hitbox->toucher.dmgFlags & 0x038AC302)
                                 ? (this->collider1.elements[i].info.acHitInfo->toucher.damage)
                                 : 0;

                    phi_v1 = phi_v0;
                    if (phi_v0 < 1) {
                        phi_v1 = 1;
                    }
                    this->actor.colChkInfo.health -= phi_v1;
                    if ((s8)this->actor.colChkInfo.health <= 0) {
                        func_809E2760(&D_809E9848, NA_SE_EN_KONB_DEAD_OLD);
                        func_809E2760(&D_809E9848, NA_SE_EN_KONB_DEAD2_OLD);
                        Enemy_StartFinishingBlow(globalCtx, &this->actor);
                        func_809E5ADC(this, globalCtx);
                    } else {
                        func_809E6B70(this, globalCtx);
                        func_809E2760(&this->actor.projectedPos, NA_SE_EN_KONB_DAMAGE_OLD);
                    }
                }
                return;
            }
        }
    }
}

#ifdef NON_MATCHING
// regalloc and few instructions pushed a bit below from where they should be
void Boss03_Update(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    Boss03* this = (Boss03*)thisx;
    Actor* temp_v0_4;
    Player* player; // sp88
    s32 phi_s0;
    Vec3f sp78;
    Vec3f sp6C;
    Vec3f sp60;
    s16 sp5E;
    f32 sp58;

    player = GET_PLAYER(globalCtx);
    this->actor.hintId = 0x28;

    if ((D_809E9842 == 0) && (player->actor.world.pos.y < 445.0f)) {
        D_809E9842 = 1;
        D_809E9841 = 5;
    }

    if (KREG(63) == 0) {
        this->unk_240++;
        this->unk_2BC = this->unk_290 = 1;

        this->unk_2BD = 0;

        Math_Vec3f_Copy(&D_809E9848, &this->actor.projectedPos);

        for (phi_s0 = 0; phi_s0 != 3; phi_s0++) {
            if (this->workTimer[phi_s0] != 0) {
                this->workTimer[phi_s0]--;
            }
        }

        if (this->unk_324 != 0) {
            this->unk_324--;
        }

        if (this->unk_25C != 0) {
            this->unk_25C--;
        }

        if (this->unk_25E != 0) {
            this->unk_25E--;
        }

        this->actionFunc(this, globalCtx);

        if (this->actionFunc != func_809E5B64) {
            Math_ApproachS(&this->actor.shape.rot.z, 0, 0xA, 0x800);
            this->actor.world.pos.y -= 100.0f;
            this->actor.prevPos.y -= 100.0f;
            Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 50.0f, 150.0f, 100.0f, 5U);
            this->actor.world.pos.y += 100.0f;
            this->actor.prevPos.y += 100.0f;
        }
    }

    if ((this->actionFunc != func_809E5B64) && (this->unk_2D5 == 0)) {
        if (((this->actor.world.pos.y < this->unk_258 + 50.0f) && (this->unk_258 + 50.0f <= this->actor.prevPos.y)) ||
            ((this->unk_258 - 50.0f < this->actor.world.pos.y) && (this->actor.prevPos.y <= this->unk_258 - 50.0f))) {
            if ((this->actor.velocity.y < 0.0f) && (this->actionFunc != func_809E5B64)) {
                Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_KONB_SINK_OLD);
            }

            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_WATER_EFFECT, this->actor.world.pos.x, this->unk_258,
                        this->actor.world.pos.z, 0, 0, 0x78, ENWATEREFFECT_777);
            this->unk_280 = 0x1B;
            this->unk_284 = this->actor.world.pos.x;
            this->unk_288 = this->unk_258;
            this->unk_28C = this->actor.world.pos.z;
        }
    }

    if (this->actionFunc != func_809E5B64) {
        if ((this->actionFunc == Boss03_Stunned) || (this->actionFunc == func_809E6BC0)) {
            this->collider2.base.colType = 3;
        } else {
            this->collider2.base.colType = 9;
        }

        func_809E6CB4(this, globalCtx);

        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);

        if (player->transformation == PLAYER_FORM_HUMAN) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
        }

        if (this->unk_2BD == 0) {
            if (player->transformation != PLAYER_FORM_HUMAN) {
                CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
            }
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
        }

        if ((this->actionFunc != Boss03_Stunned) && (this->unk_2BD == 0)) {
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
        }
    }

    temp_v0_4 = func_809E2D64(globalCtx);
    if (temp_v0_4 != NULL) {
        temp_v0_4->world.pos.y = this->unk_258;
    }

    Math_ApproachZeroF(&this->unk_260, 0.1f, 0.05f);

    if (this->unk_290 != 0) {
        this->unk_294 = this->unk_294 + 0.1f;
        this->unk_298 = this->unk_298 + 0.12f;
        this->leftFinYRot = __sinf(this->unk_294) * 1280.0f;
        this->rightFinYRot = __sinf(this->unk_298) * 1280.0f;
    } else {
        Math_ApproachS(&this->rightFinYRot, 0, 0xA, 0x100);
        Math_ApproachS(&this->leftFinYRot, 0, 0xA, 0x100);
    }

    Math_ApproachS(&this->unk_2A0, 0, 0xA, 0x100);
    Math_ApproachS(&this->jawZRot, 0, 0xA, 0x200);

    if ((this->unk_240 & 1) == 0) {
        for (phi_s0 = 0; phi_s0 < this->unk_254; phi_s0++) {
            sp6C.x = randPlusMinusPoint5Scaled(100.0f) + this->actor.world.pos.x;
            sp6C.y = randPlusMinusPoint5Scaled(100.0f) + this->actor.world.pos.y;
            sp6C.z = randPlusMinusPoint5Scaled(100.0f) + this->actor.world.pos.z;
            func_809E2AB4(globalCtx, &sp6C);
        }
    }

    this->unk_254 = 1;
    Boss03_UpdateEffects(globalCtx);

    if (D_809E9841 != 0) {
        D_809E9841--;
        if (D_809E9841 == 0) {
            Audio_QueueSeqCmd(0x0000801BU);
        }
    }

    if (this->actionFunc != func_809E3D98) {
        Math_ApproachS(&player->actor.world.rot.x, 0, 1, 0x80);
        Math_ApproachS(&player->actor.shape.rot.x, 0, 1, 0x80);
    }

    if ((this->unk_258 < player->actor.world.pos.y) && (this->unk_2C8.y <= this->unk_258)) {
        this->unk_2D4 = 0x14;
    }

    if (((player->actor.bgCheckFlags & 1) != 0) && (player->actor.shape.feetPos[0].y >= 438.0f)) {
        if (this->unk_2D4 != 0) {
            this->unk_2D4--;
            sp78.x = randPlusMinusPoint5Scaled(50.0f) + player->actor.world.pos.x;
            sp78.y = 440.0f;
            sp78.z = randPlusMinusPoint5Scaled(50.0f) + player->actor.world.pos.z;
            func_809E2788(globalCtx, &sp78);
        }
    }

    this->unk_2C8 = player->actor.world.pos;

    if (this->unk_258 < this->actor.world.pos.y) {
        func_8019F540(0);
    } else {
        func_8019F540(1);
    }

    if (this->unk_280 != 0) {
        this->unk_280--;
    }

    if ((this->unk_280 == 1) || (this->unk_280 == 5) || (this->unk_280 == 9)) {
        sp58 = 0.0f;

        for (sp5E = 0, phi_s0 = 0; (phi_s0 < 20); sp5E++) {
            Matrix_InsertYRotation_f(sp58, 0);
            Matrix_GetStateTranslationAndScaledZ(Rand_ZeroFloat(60.000004f) + 312.0f, &sp60);
            sp60.x += this->unk_284 + randPlusMinusPoint5Scaled(40.0f);
            sp60.y = 440.0f;
            sp60.z += this->unk_28C + randPlusMinusPoint5Scaled(40.0f);

            if (sqrtf(SQ(sp60.x) + SQ(sp60.z)) < 355.0f) {
                func_809E2880(globalCtx, &sp60);
                phi_s0++;
            }

            sp58 += 0.12566371f;
            if (sp5E >= 50) {
                break;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_Boss_03/Boss03_Update.s")
#endif

void func_809E7920(GlobalContext* globalCtx, s16 objectId) {
    s32 objectIndex = Object_GetIndex(&globalCtx->objectCtx, objectId);

    OPEN_DISPS(globalCtx->state.gfxCtx);

    gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[objectIndex].segment);

    gSPSegment(POLY_OPA_DISP++, 0x06, globalCtx->objectCtx.status[objectIndex].segment);
    gSPSegment(POLY_XLU_DISP++, 0x06, globalCtx->objectCtx.status[objectIndex].segment);

    CLOSE_DISPS(globalCtx->state.gfxCtx);
}

s32 Boss03_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    Boss03* this = THIS;

    if ((limbIndex == GYORG_LIMB_UPPER_TRUNK) || (limbIndex == GYORG_LIMB_LOWER_TRUNK) ||
        (limbIndex == GYORG_LIMB_TAIL)) {
        rot->y += this->unk_2A0;
    }
    if (limbIndex == GYORG_LIMB_UPPER_RIGHT_FIN) {
        rot->y += this->rightFinYRot;
    }
    if (limbIndex == GYORG_LIMB_LOWER_RIGHT_FIN) {
        rot->y += (s16)(2 * this->rightFinYRot);
    }
    if (limbIndex == GYORG_LIMB_UPPER_LEFT_FIN) {
        rot->y -= this->leftFinYRot;
    }
    if (limbIndex == GYORG_LIMB_LOWER_LEFT_FIN) {
        rot->y -= (s16)(2 * this->leftFinYRot);
    }
    if (limbIndex == GYORG_LIMB_JAW) {
        rot->z += this->jawZRot;
    }

    return false;
}

s8 D_809E9128[] = {
    -1, -1, 0, -1, 4, 5, 6, -1, 2, -1, -1, 3, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
};

Vec3f D_809E9148 = { 600.0f, -100.0f, 0.0f };
Vec3f D_809E9154[] = {
    { 450.0f, 0.0f, 0.0f }, { 140.0f, -60.0f, 0.0f }, { 350.0f, 0.0f, 0.0f }, { 350.0f, 0.0f, 0.0f },
    { 100.0f, 0.0f, 0.0f }, { 150.0f, 0.0f, 0.0f },   { 500.0f, 0.0f, 0.0f },
};
Vec3f D_809E91A8 = { 100000.0f, 100000.0f, 100000.0f };
Vec3f D_809E91B4 = { 300.0f, -100.0f, -200.0f };

void Boss03_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    Boss03* this = THIS;
    s32 pad;
    s8 temp_a3;
    Vec3f sp68;
    Player* player = GET_PLAYER(globalCtx);

    if (limbIndex == GYORG_LIMB_HEAD) {
        Matrix_MultiplyVector3fByState(&D_809E9148, &this->actor.focus.pos);
    }

    temp_a3 = D_809E9128[limbIndex];
    if (temp_a3 >= 0) {
        Matrix_MultiplyVector3fByState(&D_809E9154[temp_a3], &sp68);
        if (temp_a3 < 2) {
            if ((this->actionFunc == Boss03_Stunned) && (this->unk_258 < player->actor.world.pos.y)) {
                func_809E2B8C(temp_a3, &this->collider1, &D_809E91A8);
            } else {
                func_809E2B8C(temp_a3, &this->collider1, &sp68);
            }
        } else {
            func_809E2B8C(temp_a3 - 2, &this->collider2, &sp68);
        }
    }

    if (limbIndex == GYORG_LIMB_JAW) {
        MtxF mf;

        D_809E91B4.x = this->unk_2C4 + 300.0f;
        Matrix_MultiplyVector3fByState(&D_809E91B4, &this->unk_2AC);
        Matrix_CopyCurrentState(&mf);
        func_8018219C(&mf, &this->unk_2A2, 0);
    }
}

#define NOT_DEBUG_PRINT 1

#ifndef NOT_DEBUG_PRINT
#define BOOLSTR(x) ((x) ? "true" : "false")

void Boss03_PrintStruct(Boss03* this, GlobalContext* globalCtx, GfxPrint* printer) {
    s32 x;
    s32 y;
    s32 i;
    s32 initial_x = 27+3;
    s32 initial_Y = 3 + 4;
    uintptr_t actionFuncReloc;

    x = initial_x;
    y = initial_Y;

    GfxPrint_SetColor(printer, 255, 255, 255, 255);



    GfxPrint_SetPos(printer, 1, 1);
    GfxPrint_Printf(printer, "health:%i", this->actor.colChkInfo.health);


    GfxPrint_SetPos(printer, x, 1);
    GfxPrint_Printf(printer, "530:%X", this->unk_530);



    GfxPrint_SetPos(printer, x-7, ++y);
    actionFuncReloc = (uintptr_t)this->actionFunc - (uintptr_t)func_809E2760 + SEGMENT_START(ovl_Boss_03);
    switch (actionFuncReloc & 0x0000FFFF) {
        case 0x6A38:
            GfxPrint_Printf(printer, "actionFunc:Stunned");
            break;

        default:
            GfxPrint_Printf(printer, "actionFunc:%X", actionFuncReloc & 0x0000FFFF);
            break;
    }

    //GfxPrint_SetPos(printer, x, ++y);
    //GfxPrint_Printf(printer, "240:%X", this->unk_240);

    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "242:%X", this->unk_242);

    GfxPrint_SetPos(printer, x-4, ++y);
    GfxPrint_Printf(printer, "work[0]:%X", this->workTimer[0]);

    GfxPrint_SetPos(printer, x-4, ++y);
    GfxPrint_Printf(printer, "work[1]:%X", this->workTimer[1]);

    GfxPrint_SetPos(printer, x-4, ++y);
    GfxPrint_Printf(printer, "work[2]:%X", this->workTimer[2]);

    #if 0
    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "252:%X", this->unk_252);
    #endif

    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "253:%X", this->unk_253);

    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "254:%X", this->unk_254);


    #if 0
    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "258:%f", this->unk_258);
    #endif


    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "25C:%X", this->unk_25C);

    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "25E:%X", this->unk_25E);

    #if 0
    GfxPrint_SetPos(printer, x-1, ++y);
    GfxPrint_Printf(printer, "rotY:%f", this->unk_260);
    #endif

    #if 0
    GfxPrint_SetPos(printer, x-2, ++y);
    GfxPrint_Printf(printer, "268.x:%f", this->unk_268.x);

    GfxPrint_SetPos(printer, x-2, ++y);
    GfxPrint_Printf(printer, "268.y:%f", this->unk_268.y);

    GfxPrint_SetPos(printer, x-2, ++y);
    GfxPrint_Printf(printer, "268.z:%f", this->unk_268.z);
    #endif

    #if 0
    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "274:%X", this->unk_274);
    #endif

    #if 0
    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "276:%X", this->unk_276);
    #endif

    #if 0
    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "278:%f", this->unk_278);

    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "27C:%f", this->unk_27C);
    #endif


    GfxPrint_SetPos(printer, x-2, ++y);
    GfxPrint_Printf(printer, "! 280:%X", this->unk_280);


    #if 0
    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "284:%f", this->unk_284);

    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "288:%f", this->unk_288);

    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "28C:%f", this->unk_28C);
    #endif


    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "290:%X", this->unk_290);

    #if 0
    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "294:%f", this->unk_294);

    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "298:%f", this->unk_298);
    #endif

    #if 0
    GfxPrint_SetPos(printer, x-8, ++y);
    GfxPrint_Printf(printer, "leftFinYRot:%i", this->leftFinYRot);

    GfxPrint_SetPos(printer, x-9, ++y);
    GfxPrint_Printf(printer, "rightFinYRot:%i", this->rightFinYRot);
    #endif


    #if 0
    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "2A0:%X", this->unk_2A0);
    #endif

    #if 0
    GfxPrint_SetPos(printer, x-2, ++y);
    GfxPrint_Printf(printer, "2A2.x:%i", this->unk_2A2.x);

    GfxPrint_SetPos(printer, x-2, ++y);
    GfxPrint_Printf(printer, "2A2.y:%i", this->unk_2A2.y);

    GfxPrint_SetPos(printer, x-2, ++y);
    GfxPrint_Printf(printer, "2A2.z:%i", this->unk_2A2.z);
    #endif

    #if 0
    GfxPrint_SetPos(printer, x-4, ++y);
    GfxPrint_Printf(printer, "jawZRot:%X", this->jawZRot);
    #endif


    #if 0
    GfxPrint_SetPos(printer, x-2, ++y);
    GfxPrint_Printf(printer, "2AC.x:%f", this->unk_2AC.x);

    GfxPrint_SetPos(printer, x-2, ++y);
    GfxPrint_Printf(printer, "2AC.y:%f", this->unk_2AC.y);

    GfxPrint_SetPos(printer, x-2, ++y);
    GfxPrint_Printf(printer, "2AC.z:%f", this->unk_2AC.z);
    #endif


    #if 0
    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "2B8:%f", this->unk_2B8);
    #endif




    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "2BC:%X", this->unk_2BC);

    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "2BD:%X", this->unk_2BD);

    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "2BE:%i", this->unk_2BE);


    #if 0
    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "2C4:%f", this->unk_2C4);
    #endif

    #if 0
    GfxPrint_SetPos(printer, x-2, ++y);
    GfxPrint_Printf(printer, "2C8.x:%f", this->unk_2C8.x);

    GfxPrint_SetPos(printer, x-2, ++y);
    GfxPrint_Printf(printer, "2C8.y:%f", this->unk_2C8.y);

    GfxPrint_SetPos(printer, x-2, ++y);
    GfxPrint_Printf(printer, "2C8.z:%f", this->unk_2C8.z);
    #endif


    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "2D4:%X", this->unk_2D4);

    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "2D5:%X", this->unk_2D5);

    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "2D6:%i", this->unk_2D6);

    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "2D8:%X", this->unk_2D8);

    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "2DA:%i", this->unk_2DA);




    x = 1;
    y = initial_Y;


    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "324:%X", this->unk_324);


    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "52C:%f", this->unk_52C);


    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "534:%X", this->unk_534);

    #if 0
    GfxPrint_SetPos(printer, x, ++y);
    GfxPrint_Printf(printer, "subCamId:%X", this->subCamId);
    #endif


    #if 0
    // Vec3fs
    for (i = 0x538; i < 0x568; i += 4) {
        GfxPrint_SetPos(printer, x, ++y);
        GfxPrint_Printf(printer, "%X:%f", i, ((f32*)(this))[i/4]);

        if (y > 28) {
            return;
        }
    }
    #endif


    for (i = 0x568; i < 0x57C; i += 4) {
        if (i == 0x574) {
            continue;
        }
        GfxPrint_SetPos(printer, x, ++y);
        GfxPrint_Printf(printer, "%X:%f", i, ((f32*)(this))[i/4]);

        if (y > 28) {
            return;
        }
    }




#if 0

    y = 20;

    GfxPrint_SetPos(printer, 1, ++y);
    GfxPrint_Printf(printer, "Flags:");
    GfxPrint_SetPos(printer, 1, ++y);
    GfxPrint_Printf(printer, "   8 4 2 1");
    GfxPrint_SetPos(printer, 1, ++y);
    GfxPrint_Printf(printer, "1  %i %i %i %i", (this->flags & 0x08)>>3, (this->flags & 0x04)>>2, (this->flags & 0x02)>>1, this->flags & 0x01);
    GfxPrint_SetPos(printer, 1, ++y);
    GfxPrint_Printf(printer, "2  %i %i %i %i", (this->flags & 0x80)>>7, (this->flags & 0x40)>>6, (this->flags & 0x20)>>5, (this->flags & 0x10)>>4);
    GfxPrint_SetPos(printer, 1, ++y);
    GfxPrint_Printf(printer, "3  %i %i %i %i", (this->flags & 0x800)>>11, (this->flags & 0x400)>>10, (this->flags & 0x200)>>9, (this->flags & 0x100)>>8);
    GfxPrint_SetPos(printer, 1, ++y);
    GfxPrint_Printf(printer, "4      %i %i", (this->flags & 0x2000)>>13, (this->flags & 0x1000)>>12);

    y = 0;
    for (i = 0; i < 16; i++) {
        static char* flagsMap[] = {
            "OBJ_UM_FLAG_0001",
            "OBJ_UM_FLAG_MOVING",
            "OBJ_UM_FLAG_0004",
            "OBJ_UM_FLAG_WAITING",
            "OBJ_UM_FLAG_0010",
            "OBJ_UM_FLAG_DRAWN_FLOOR",
            "OBJ_UM_FLAG_0040",
            "OBJ_UM_FLAG_PLAYING_MINIGAME",
            "OBJ_UM_FLAG_0100",
            "OBJ_UM_FLAG_0200",
            "OBJ_UM_FLAG_0400",
            "OBJ_UM_FLAG_0800",
            "OBJ_UM_FLAG_1000",
            "OBJ_UM_FLAG_MINIGAME_FINISHED",
        };

        if (this->flags & (1 << i)) {
            GfxPrint_SetPos(printer, 1, ++y);
            GfxPrint_Printf(printer, "%s", &flagsMap[i][7]);
        }
    }
#endif
}

void Boss03_DrawStruct(Boss03* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    GfxPrint printer;
    Gfx* gfxRef;
    Gfx* gfx;

    OPEN_DISPS(gfxCtx);

    func_8012C4C0(gfxCtx);

    GfxPrint_Init(&printer);

    gfxRef = POLY_OPA_DISP;
    gfx = Graph_GfxPlusOne(gfxRef);
    gSPDisplayList(OVERLAY_DISP++, gfx);

    GfxPrint_Open(&printer, gfx);

    Boss03_PrintStruct(this, globalCtx, &printer);

    gfx = GfxPrint_Close(&printer);

    gSPEndDisplayList(gfx++);
    Graph_BranchDlist(gfxRef, gfx);
    POLY_OPA_DISP = gfx;

    GfxPrint_Destroy(&printer);

    CLOSE_DISPS(gfxCtx);
}
#endif


void Boss03_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Boss03* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx);

    func_8012C28C(globalCtx->state.gfxCtx);

    if (this->unk_2D5 == 0) {
        if ((this->unk_25E % 2) != 0) {
            POLY_OPA_DISP = Gfx_SetFog(POLY_OPA_DISP, 255, 0, 0, 255, 900, 1099);
        }

        Matrix_InsertYRotation_f(this->unk_260, MTXMODE_APPLY);
        Matrix_InsertTranslation(0.0f, -600.0f, 0.0f, MTXMODE_APPLY);
        SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                              this->skelAnime.dListCount, Boss03_OverrideLimbDraw, Boss03_PostLimbDraw, &this->actor);
        POLY_OPA_DISP = func_801660B8(globalCtx, POLY_OPA_DISP);
    }

    this->unk_2BC = 0;

    Boss03_DrawEffects(globalCtx);


#ifndef NOT_DEBUG_PRINT
    Boss03_DrawStruct(this, globalCtx);
#endif

    CLOSE_DISPS(globalCtx->state.gfxCtx);
}

void Boss03_UpdateEffects(GlobalContext* globalCtx) {
    GyorgEffect* effects = globalCtx->specialEffects;
    s16 i;
    Vec3f sp94;
    Vec3f velocity;

    for (i = 0; i < GYORG_EFFECT_COUNT; i++, effects++) {
        f32 phi_f0;

        if (effects->type == 0) {
            continue;
        }

        effects->unk_02++;

        effects->pos.x += effects->velocity.x;
        effects->pos.y += effects->velocity.y;
        effects->pos.z += effects->velocity.z;

        effects->velocity.y += effects->accel.y;

        if ((effects->unk_02 & 6) != 0) {
            phi_f0 = 80.0f;
        } else {
            phi_f0 = 200.0f;
        }

        Math_ApproachF(&effects->unk_40, phi_f0, 1.0f, 80.0f);

        if (effects->type == 2) {
            effects->unk_34.z += 0.15f;

            Math_ApproachF(&effects->unk_34.x, 0.03f, 0.5f, 0.005f);
            Math_ApproachF(&effects->unk_34.y, 0.5f, 0.5f, 0.02f);

            if (effects->pos.y <= 430.0f) {
                effects->type = 0U;
                effects->pos.y = 430.0f;
                EffectSsGRipple_Spawn(globalCtx, &effects->pos, 0, 80, 0);
            } else if (effects->pos.y <= 440.0f) {
                s16 j;

                effects->type = 4;
                effects->pos.y = 440.0f;
                effects->unk_34.x = 0.1f;
                effects->unk_34.y = 0.6f;
                effects->velocity = gZeroVec3f;
                effects->accel = gZeroVec3f;
                effects->alpha = 150;
                effects->unk_2E = Rand_ZeroFloat(4.0f) + 5.0f;

                for (j = 0; j < 4; j++) {
                    Matrix_InsertYRotation_f((2.0f * (j * M_PI)) / 6.0f, 0);
                    sp94.x = 0.0f;
                    sp94.y = Rand_ZeroFloat(4.0f) + 2.0f;
                    sp94.z = Rand_ZeroFloat(1.5f) + 1.5f;
                    Matrix_MultiplyVector3fByState(&sp94, &velocity);
                    func_809E299C(globalCtx, &effects->pos, &velocity);
                }
            }
        } else if (effects->type == 3) {
            effects->unk_34.z += 0.15f;

            if (effects->velocity.y < -8.0f) {
                effects->velocity.y = -8.0f;
            }

            if ((effects->velocity.y < 0.0f) && (effects->pos.y <= 440.0f)) {
                effects->type = 4;
                effects->pos.y = 440.0f;
                effects->unk_34.x = 0.05f;
                effects->unk_34.y = 0.2f;
                effects->velocity = gZeroVec3f;
                effects->accel = gZeroVec3f;
                effects->alpha = 150;
                effects->unk_2E = Rand_ZeroFloat(4.0f) + 5.0f;
            }
        } else if (effects->type == 4) {
            Math_ApproachF(&effects->unk_34.x, effects->unk_34.y, 0.1f, 0.6f);

            effects->alpha -= effects->unk_2E;
            if (effects->alpha <= 0) {
                effects->alpha = 0;
                effects->type = 0;
            }
        } else if (effects->type == 1) {
            if (effects->velocity.y > 5.0f) {
                effects->velocity.y = 5.0f;
            }
            if (sGyorgInstance->unk_258 < effects->pos.y) {
                effects->type = 0;
            }
        }
    }
}

void Boss03_DrawEffects(GlobalContext* globalCtx) {
    u8 flag = false;
    s16 i;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad;
    GyorgEffect* eff = globalCtx->specialEffects;
    GyorgEffect* effFirst = eff;

    OPEN_DISPS(gfxCtx);

    func_8012C2DC(globalCtx->state.gfxCtx);
    func_8012C28C(gfxCtx);

    for (i = 0; i < GYORG_EFFECT_COUNT; i++, eff++) {
        if (eff->type == 1) {
            if (!flag) {
                gSPDisplayList(POLY_OPA_DISP++, gGyorgBubbleMaterialDL);
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);
                gDPSetEnvColor(POLY_OPA_DISP++, 150, 150, 150, 0);

                flag = true;
            }

            Matrix_InsertTranslation(eff->pos.x, eff->pos.y, eff->pos.z, MTXMODE_NEW);
            Matrix_Scale(eff->unk_34.x, eff->unk_34.x, 1.0f, MTXMODE_APPLY);
            Matrix_NormalizeXYZ(&globalCtx->billboardMtxF);

            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, gGyorgBubbleModelDL);
        }
    }

    eff = effFirst;

    func_809E7920(globalCtx, OBJECT_WATER_EFFECT);

    flag = false;

    for (i = 0; i < GYORG_EFFECT_COUNT; i++, eff++) {
        if ((eff->type == 2) || (eff->type == 3)) {

            if (!flag) {
                POLY_XLU_DISP = Gfx_CallSetupDL(POLY_XLU_DISP, 0);

                gSPSegment(POLY_XLU_DISP++, 0x08, Lib_SegmentedToVirtual(gDust1Tex));
                gSPDisplayList(POLY_XLU_DISP++, object_water_effect_DL_004260);
                gDPSetEnvColor(POLY_XLU_DISP++, 250, 250, 255, 0);

                flag++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, (u8)eff->unk_40, (u8)((((void)0, eff->unk_40) + 55.0f)), 225,
                            150);

            Matrix_InsertTranslation(eff->pos.x, eff->pos.y, eff->pos.z, MTXMODE_NEW);

            if (eff->type == 2) {
                Matrix_InsertYRotation_f(
                    Camera_GetInputDirYaw(globalCtx->cameraPtrs[globalCtx->activeCamera]) * (M_PI / 0x8000), MTXMODE_APPLY);
            } else {
                Matrix_NormalizeXYZ(&globalCtx->billboardMtxF);
            }

            Matrix_Scale(eff->unk_34.x, eff->unk_34.y, 1.0f, MTXMODE_APPLY);
            Matrix_InsertZRotation_f(eff->unk_34.z, MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, object_water_effect_DL_0042B0);
        }
    }

    eff = effFirst;

    flag = false;

    for (i = 0; i < GYORG_EFFECT_COUNT; i++, eff++) {
        if (eff->type == 4) {
            if (!flag) {
                func_8012C448(gfxCtx);

                gSPSegment(POLY_XLU_DISP++, 0x08, Lib_SegmentedToVirtual(gDust1Tex));
                gDPSetEnvColor(POLY_XLU_DISP++, 250, 250, 255, 0);
                gSPDisplayList(POLY_XLU_DISP++, object_water_effect_DL_004260);

                flag++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, (s16)eff->unk_40, ((void)0, ((s16)eff->unk_40) + 55), 225,
                            eff->alpha);

            Matrix_InsertTranslation(eff->pos.x, eff->pos.y, eff->pos.z, MTXMODE_NEW);

            Matrix_Scale(eff->unk_34.x, 1.0f, eff->unk_34.x, MTXMODE_APPLY);
            Matrix_InsertYRotation_f(eff->unk_34.z, MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, object_water_effect_DL_0042F8);
        }
    }

    func_809E7920(globalCtx, OBJECT_BOSS03);

    CLOSE_DISPS(gfxCtx);
}

void func_809E8810(Actor* thisx, GlobalContext* globalCtx) {
    Boss03* this = THIS;
    s16 i;
    s16 pad;
    s16 phi_s0;
    u8 phi_s3;
    Player* player = GET_PLAYER(globalCtx);
    Boss03* temp_v1_2;
    f32 temp_f0;
    f32 temp_f14;
    f32 temp_f20;
    f32 temp_f2;
    f32 temp_f22;

    phi_s3 = 0;
    this->unk_240++;

    for (i = 0; i < 6; i++) {
        temp_f20 = player->actor.world.pos.x - this->unk_2DC[i].x;
        temp_f2 = player->actor.world.pos.y - this->unk_2DC[i].y;
        temp_f22 = player->actor.world.pos.z - this->unk_2DC[i].z;
        temp_f0 = sqrtf(SQ(temp_f20) + SQ(temp_f2) + SQ(temp_f22));
        temp_f14 = (player->actor.speedXZ * 3.0f) + 70.0f;

        if ((player->actor.bgCheckFlags & 1) != 0) {
            phi_s0 = 0;
        } else {
            phi_s0 = player->actor.speedXZ * 16.0f;
            if (phi_s0 >= 0x1001) {
                phi_s0 = 0x1000;
            } else if (phi_s0 < 0x100) {
                phi_s0 = 0x100;
            }
        }

        if (temp_f0 < temp_f14) {
            Math_ApproachS(&this->morphTable[i].x, (temp_f14 - temp_f0) * 200.0f, 0xA, phi_s0);
            if (phi_s0 != 0) {
                phi_s3 |= 1;
            }
        }
    }

    if ((phi_s3 & 1) != 0) {
        Math_ApproachS(&this->actor.shape.rot.y, Math_FAtan2F(temp_f22, temp_f20), 0x14, 0x800);
    }

    temp_v1_2 = sGyorgInstance;
    if (temp_v1_2->actor.world.pos.y - 40.0f < temp_v1_2->unk_258) {

        for (i = 0; i < 6; i++) {
            temp_v1_2 = sGyorgInstance;

            temp_f20 = temp_v1_2->actor.world.pos.x - this->unk_2DC[i].x;
            temp_f2 = temp_v1_2->actor.world.pos.y - this->unk_2DC[i].y;
            temp_f22 = temp_v1_2->actor.world.pos.z - this->unk_2DC[i].z;

            temp_f0 = sqrtf(SQ(temp_f20) + SQ(temp_f2) + SQ(temp_f22));

            if ((i == 0) && (temp_f0 > 400.0f)) {
                break;
            }

            phi_s0 = (temp_v1_2->actor.speedXZ * 16.0f);
            temp_f14 = (temp_v1_2->actor.speedXZ * 5.0f) + 150.0f;
            if (phi_s0 >= 0x1001) {
                phi_s0 = 0x1000;
            } else if (phi_s0 < 0x100) {
                phi_s0 = 0x0100;
            }

            if (temp_f0 < temp_f14) {
                Math_ApproachS(&this->morphTable[i].x, (temp_f14 - temp_f0) * 200.0f, 0xA, phi_s0);
                if (phi_s0 != 0) {
                    phi_s3 |= 2;
                }
            }
        }

        if ((phi_s3 & 2) != 0) {
            Math_ApproachS(&this->actor.shape.rot.y, Math_FAtan2F(temp_f22, temp_f20), 0x14, 0x800);
        }
    }

    if (phi_s3 == 0) {
        for (i = 0; i < 6; i++) {
            Math_ApproachS(&this->morphTable[i].x, 0, 0x14, 0x80);
        }
    }
}

Gfx* D_809E91C0[] = {
    gGyorgSeaweedTopDL,    gGyorgSeaweedPiece5DL, gGyorgSeaweedPiece4DL,
    gGyorgSeaweedPiece3DL, gGyorgSeaweedPiece2DL, gGyorgSeaweedPiece1DL,
};

void func_809E8BEC(Actor* thisx, GlobalContext* globalCtx) {
    Boss03* this = THIS;
    s16 i;
    // Why 10 Mtxs? This seems to only use the first 6 elements
    Mtx* mtx = GRAPH_ALLOC(globalCtx->state.gfxCtx, sizeof(Mtx) * 10);

    OPEN_DISPS(globalCtx->state.gfxCtx);

    func_8012C28C(globalCtx->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x0D, mtx);

    Matrix_InsertTranslation(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z, 0);
    Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, 1);
    Matrix_RotateY(this->actor.shape.rot.y, 1);
    Matrix_InsertZRotation_s(0x4000, 1);
    // The indices looks a bit random...
    Matrix_RotateY(this->jointTable[5].x * -5.0f * 0.1f, 1);
    Matrix_InsertXRotation_s(this->jointTable[3].y * -5.0f * 0.1f, 1);
    Matrix_InsertZRotation_s(this->jointTable[2].z * 6.0f * 0.1f, 1);

    for (i = 0; i < 6; i++) {
        Matrix_RotateY(this->jointTable[i].x + this->morphTable[i].x, 1);
        Matrix_InsertXRotation_s(this->jointTable[i].y + this->morphTable[i].y, 1);
        Matrix_InsertZRotation_s(this->jointTable[i].z + this->morphTable[i].z, 1);

        Matrix_ToMtx(mtx);

        gSPMatrix(POLY_OPA_DISP++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        gSPDisplayList(POLY_OPA_DISP++, D_809E91C0[i]);

        Matrix_GetStateTranslation(&this->unk_2DC[i]);
        Matrix_InsertTranslation(4000.0f, 0.0f, 0.0f, 1);

        mtx++;
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx);
}
