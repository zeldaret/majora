/*
 * File: z_en_kaizoku.c
 * Overlay: ovl_En_Kaizoku
 * Description: Fighter pirate
 */

#include "z_en_kaizoku.h"

#define FLAGS (ACTOR_FLAG_1 | ACTOR_FLAG_4 | ACTOR_FLAG_10 | ACTOR_FLAG_100000)

#define THIS ((EnKaizoku*)thisx)

void EnKaizoku_Init(Actor* thisx, PlayState* play);
void EnKaizoku_Destroy(Actor* thisx, PlayState* play);
void EnKaizoku_Update(Actor* thisx, PlayState* play2);
void EnKaizoku_Draw(Actor* thisx, PlayState* play);

void func_80B85F48(EnKaizoku* this);
s32 EnKaizoku_ValidatePictograph(PlayState* play, Actor* actor);
void func_80B87C7C(EnKaizoku* this);
void func_80B88CD8(EnKaizoku* this);
void func_80B87900(EnKaizoku* this);
void func_80B87E28(EnKaizoku* this);
void func_80B87F70(EnKaizoku* this);
void func_80B874D8(EnKaizoku* this, PlayState* play);
void func_80B85FA8(EnKaizoku* this, PlayState* play);
void func_80B85FA8(EnKaizoku* this, PlayState* play);
void func_80B872A4(EnKaizoku* this);
void func_80B868B8(EnKaizoku* this, PlayState* play);
void func_80B86B74(EnKaizoku* this, PlayState* play);
void func_80B872F4(EnKaizoku* this, PlayState* play);
void func_80B88214(EnKaizoku* this);
void func_80B8833C(EnKaizoku* this);
void func_80B88770(EnKaizoku* this);
void func_80B88910(EnKaizoku* this);
void func_80B8760C(EnKaizoku* this, PlayState* play);
void func_80B8798C(EnKaizoku* this, PlayState* play);
void func_80B88CD8(EnKaizoku* this);
void func_80B87D3C(EnKaizoku* this, PlayState* play);
void func_80B87CF8(PlayState*, Vec3f*);
void func_80B87E9C(EnKaizoku* this, PlayState* play);
void func_80B87FDC(EnKaizoku* this, PlayState* play2);
void func_80B88CD8(EnKaizoku* this);
void func_80B87E28(EnKaizoku* this);
void func_80B86B58(EnKaizoku* this);
void func_80B8971C(EnKaizoku* this, PlayState* play);
void func_80B894C0(EnKaizoku* this, PlayState* play);
void func_80B89280(EnKaizoku* this, PlayState* play);
void func_80B88D6C(EnKaizoku* this, PlayState* play);
void func_80B88964(EnKaizoku* this, PlayState* play);
void func_80B887AC(EnKaizoku* this, PlayState* play);
void func_80B88278(EnKaizoku* this, PlayState* play);
void func_80B88378(EnKaizoku* this, PlayState* play);

u16 D_80B8A8D0[] = {
    0x11A4, 0x11A5, 0x11A6, 0x11A7, 0x11A8, 0x11A9, 0x11AA, 0x11AB, 0x11AC, 0x11AD,
};

Vec3f D_80B8A8E4[] = {
    { -70.0f, 9.0f, 30.0f },   { -70.0f, 9.0f, 30.0f },   { -70.0f, 9.0f, 30.0f },   { 41.0f, 55.0f, 11.0f },
    { 41.0f, 55.0f, 11.0f },   { 70.0f, 45.0f, 35.0f },   { 80.0f, 45.0f, 25.0f },   { 0.0f, 0.0f, 0.0f },
    { -70.0f, 9.0f, 30.0f },   { -70.0f, 9.0f, 30.0f },   { -70.0f, 9.0f, 30.0f },   { 41.0f, 55.0f, 11.0f },
    { 41.0f, 55.0f, 11.0f },   { 70.0f, 45.0f, 25.0f },   { 80.0f, 45.0f, 25.0f },   { 0.0f, 0.0f, 0.0f },
    { 90.0f, 9.0f, -30.0f },   { 90.0f, 9.0f, -30.0f },   { 90.0f, 9.0f, -30.0f },   { -41.0f, 55.0f, -11.0f },
    { -41.0f, 55.0f, -11.0f }, { -70.0f, 45.0f, -25.0f }, { -80.0f, 45.0f, -25.0f }, { 0.0f, 0.0f, 0.0f },
};

Vec3f D_80B8AA04[] = {
    { 120.0f, 60.0f, -20.0f },   { 120.0f, 60.0f, -20.0f },   { 120.0f, 60.0f, -20.0f },   { -470.0f, 30.0f, -140.0f },
    { -470.0f, 30.0f, -140.0f }, { -410.0f, 80.0f, -130.0f }, { -410.0f, 80.0f, -130.0f }, { 0.0f, 0.0f, 0.0f },
    { 120.0f, 60.0f, -20.0f },   { 120.0f, 60.0f, -20.0f },   { 120.0f, 60.0f, -20.0f },   { -470.0f, 30.0f, -140.0f },
    { -470.0f, 30.0f, -140.0f }, { -410.0f, 80.0f, -130.0f }, { -410.0f, 80.0f, -130.0f }, { 0.0f, 0.0f, 0.0f },
    { -120.0f, 60.0f, 20.0f },   { -120.0f, 60.0f, 20.0f },   { -120.0f, 60.0f, 20.0f },   { 470.0f, 30.0f, 140.0f },
    { 470.0f, 30.0f, 140.0f },   { 410.0f, 80.0f, 130.0f },   { 410.0f, 80.0f, 130.0f },   { 0.0f, 0.0f, 0.0f },
};

Color_RGBA8 D_80B8AB24[] = {
    { 255, 255, 90, 255 },
    { 55, 25, 80, 255 },
    { 5, 195, 110, 255 },
};

Color_RGBA8 D_80B8AB30[] = {
    { 255, 130, 10, 255 },
    { 185, 130, 210, 255 },
    { 135, 195, 80, 255 },
};

static DamageTable sDamageTable = {
    /* Deku Nut       */ DMG_ENTRY(0, 0x1),
    /* Deku Stick     */ DMG_ENTRY(1, 0xF),
    /* Horse trample  */ DMG_ENTRY(0, 0x0),
    /* Explosives     */ DMG_ENTRY(1, 0xF),
    /* Zora boomerang */ DMG_ENTRY(0, 0x1),
    /* Normal arrow   */ DMG_ENTRY(1, 0xF),
    /* UNK_DMG_0x06   */ DMG_ENTRY(0, 0x0),
    /* Hookshot       */ DMG_ENTRY(0, 0x1),
    /* Goron punch    */ DMG_ENTRY(1, 0xE),
    /* Sword          */ DMG_ENTRY(1, 0xE),
    /* Goron pound    */ DMG_ENTRY(0, 0xD),
    /* Fire arrow     */ DMG_ENTRY(2, 0x2),
    /* Ice arrow      */ DMG_ENTRY(2, 0x3),
    /* Light arrow    */ DMG_ENTRY(2, 0x4),
    /* Goron spikes   */ DMG_ENTRY(1, 0xE),
    /* Deku spin      */ DMG_ENTRY(0, 0x1),
    /* Deku bubble    */ DMG_ENTRY(1, 0xE),
    /* Deku launch    */ DMG_ENTRY(2, 0xE),
    /* UNK_DMG_0x12   */ DMG_ENTRY(0, 0x1),
    /* Zora barrier   */ DMG_ENTRY(0, 0x5),
    /* Normal shield  */ DMG_ENTRY(0, 0x0),
    /* Light ray      */ DMG_ENTRY(0, 0x0),
    /* Thrown object  */ DMG_ENTRY(1, 0xE),
    /* Zora punch     */ DMG_ENTRY(1, 0xE),
    /* Spin attack    */ DMG_ENTRY(1, 0xD),
    /* Sword beam     */ DMG_ENTRY(0, 0x0),
    /* Normal Roll    */ DMG_ENTRY(0, 0x0),
    /* UNK_DMG_0x1B   */ DMG_ENTRY(0, 0x0),
    /* UNK_DMG_0x1C   */ DMG_ENTRY(0, 0x0),
    /* Unblockable    */ DMG_ENTRY(0, 0x0),
    /* UNK_DMG_0x1E   */ DMG_ENTRY(0, 0x0),
    /* Powder Keg     */ DMG_ENTRY(1, 0xE),
};

ActorInit En_Kaizoku_InitVars = {
    ACTOR_EN_KAIZOKU,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_KZ,
    sizeof(EnKaizoku),
    (ActorFunc)EnKaizoku_Init,
    (ActorFunc)EnKaizoku_Destroy,
    (ActorFunc)EnKaizoku_Update,
    (ActorFunc)NULL,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK4,
        { 0x00000000, 0x00, 0x00 },
        { 0xF7CFFFFF, 0x00, 0x00 },
        TOUCH_NONE | TOUCH_SFX_NORMAL,
        BUMP_ON | BUMP_HOOKABLE,
        OCELEM_ON,
    },
    { 20, 50, 0, { 0, 0, 0 } },
};

static ColliderQuadInit sQuadInit = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_PLAYER | AT_TYPE_ENEMY,
        AC_NONE,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_QUAD,
    },
    {
        ELEMTYPE_UNK4,
        { 0xF7CFFFFF, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL | TOUCH_UNK7,
        BUMP_NONE,
        OCELEM_NONE,
    },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

static AnimationHeader* sAnimations[] = {
    &object_kz_Anim_00F8E4, // EN_KAIZOKU_ANIM_0
    &object_kz_Anim_00EF9C, // EN_KAIZOKU_ANIM_1
    &object_kz_Anim_00E1C8, // EN_KAIZOKU_ANIM_2
    &object_kz_Anim_00DBE4, // EN_KAIZOKU_ANIM_3
    &object_kz_Anim_0058B8, // EN_KAIZOKU_ANIM_4
    &object_kz_Anim_004860, // EN_KAIZOKU_ANIM_5
    &object_kz_Anim_002730, // EN_KAIZOKU_ANIM_6
    &object_kz_Anim_001578, // EN_KAIZOKU_ANIM_7
    &object_kz_Anim_001390, // EN_KAIZOKU_ANIM_8
    &object_kz_Anim_0003CC, // EN_KAIZOKU_ANIM_9
    &object_kz_Anim_000F5C, // EN_KAIZOKU_ANIM_10
    &object_kz_Anim_00E8BC, // EN_KAIZOKU_ANIM_11
    &object_kz_Anim_00ED1C, // EN_KAIZOKU_ANIM_12
    &object_kz_Anim_005644, // EN_KAIZOKU_ANIM_13
    &object_kz_Anim_00F288, // EN_KAIZOKU_ANIM_14
    &object_kz_Anim_0043E4, // EN_KAIZOKU_ANIM_15
    &object_kz_Anim_003A3C, // EN_KAIZOKU_ANIM_16
    &object_kz_Anim_002BA0, // EN_KAIZOKU_ANIM_17
    &object_kz_Anim_001E9C, // EN_KAIZOKU_ANIM_18
};

static u8 sAnimationModes[] = {
    ANIMMODE_LOOP, // EN_KAIZOKU_ANIM_0
    ANIMMODE_LOOP, // EN_KAIZOKU_ANIM_1
    ANIMMODE_ONCE, // EN_KAIZOKU_ANIM_2
    ANIMMODE_LOOP, // EN_KAIZOKU_ANIM_3
    ANIMMODE_LOOP, // EN_KAIZOKU_ANIM_4
    ANIMMODE_ONCE, // EN_KAIZOKU_ANIM_5
    ANIMMODE_ONCE, // EN_KAIZOKU_ANIM_6
    ANIMMODE_ONCE, // EN_KAIZOKU_ANIM_7
    ANIMMODE_ONCE, // EN_KAIZOKU_ANIM_8
    ANIMMODE_ONCE, // EN_KAIZOKU_ANIM_9
    ANIMMODE_ONCE, // EN_KAIZOKU_ANIM_10
    ANIMMODE_ONCE, // EN_KAIZOKU_ANIM_11
    ANIMMODE_LOOP, // EN_KAIZOKU_ANIM_12
    ANIMMODE_ONCE, // EN_KAIZOKU_ANIM_13
    ANIMMODE_ONCE, // EN_KAIZOKU_ANIM_14
    ANIMMODE_ONCE, // EN_KAIZOKU_ANIM_15
    ANIMMODE_ONCE, // EN_KAIZOKU_ANIM_16
    ANIMMODE_LOOP, // EN_KAIZOKU_ANIM_17
    ANIMMODE_ONCE, // EN_KAIZOKU_ANIM_18
};

Color_RGBA8 D_80B8AC58 = { 200, 160, 120, 255 };
Color_RGBA8 D_80B8AC5C = { 130, 90, 50, 255 };

Vec3f D_80B8AC60 = { 0.0f, -1.5f, 0.0f };
Vec3f D_80B8AC6C = { 0.0f, -0.2f, 0.0f };
Vec3f D_80B8AC78 = { 300.0f, 0.0f, 0.0f };
Vec3f D_80B8AC84 = { 0.0f, -3000.0f, 0.0f };
Vec3f D_80B8AC90 = { 400.0f, 0.0f, 0.0f };
Vec3f D_80B8AC9C = { 1600.0f, -4000.0f, 0.0f };
Vec3f D_80B8ACA8 = { -3000.0f, -2000.0f, 1300.0f };
Vec3f D_80B8ACB4 = { -3000.0f, -2000.0f, -1300.0f };
Vec3f D_80B8ACC0 = { 1000.0f, 1000.0f, 0.0f };

static TexturePtr sEyeTextures[] = {
    gKaizokuEyeOpenTex,
    gKaizokuEyeHalfTex,
    gKaizokuEyeClosedTex,
    gKaizokuEyeHalfTex,
};

void EnKaizoku_Init(Actor* thisx, PlayState* play) {
    EnKaizoku* this = THIS;
    s32 pad;
    Player* player = GET_PLAYER(play);
    EffectBlureInit1 blureInit;

    this->picto.actor.hintId = TATL_HINT_ID_PIRATE;
    this->picto.actor.targetMode = 3;
    this->picto.actor.colChkInfo.mass = 80;
    ActorShape_Init(&this->picto.actor.shape, 0.0f, ActorShadow_DrawFeet, 0.0f);
    this->unk_2CA = this->picto.actor.world.rot.z;
    this->picto.actor.colChkInfo.health = 8;
    this->exitIndex = KAIZOKU_GET_EXIT_INDEX(&this->picto.actor);
    this->switchFlag = KAIZOKU_GET_SWITCHFLAG(&this->picto.actor);

    if (this->unk_2CA >= 2) {
        this->unk_2CA = 0;
    } else if (this->unk_2CA == 2) {
        this->unk_2CA = 0;
    }

    this->unk_2EC = this->picto.actor.world.rot.z;
    this->picto.actor.world.rot.z = 0;
    this->picto.actor.colChkInfo.damageTable = &sDamageTable;
    SkelAnime_InitFlex(play, &this->skelAnime, &gKaizokuSkel, &object_kz_Anim_0058B8, this->jointTable,
                       this->morphTable, KAIZOKU_LIMB_MAX);
    Collider_InitAndSetCylinder(play, &this->unk_3D4, &this->picto.actor, &sCylinderInit);
    Collider_InitAndSetQuad(play, &this->unk_420, &this->picto.actor, &sQuadInit);
    blureInit.p1StartColor[0] = blureInit.p1StartColor[1] = blureInit.p1StartColor[2] = blureInit.p1StartColor[3] =
        blureInit.p2StartColor[0] = blureInit.p2StartColor[1] = blureInit.p2StartColor[2] = blureInit.p1EndColor[0] =
            blureInit.p1EndColor[1] = blureInit.p1EndColor[2] = blureInit.p2EndColor[0] = blureInit.p2EndColor[1] =
                blureInit.p2EndColor[2] = 255;
    blureInit.p2StartColor[3] = 64;
    blureInit.p1EndColor[3] = blureInit.p2EndColor[3] = 0;
    blureInit.elemDuration = 8;
    blureInit.unkFlag = 0;
    blureInit.calcMode = 2;
    Effect_Add(play, &this->unk_3D0, EFFECT_BLURE1, 0, 0, &blureInit);
    Actor_SetScale(&this->picto.actor, 0.0125f);
    this->picto.actor.flags |= ACTOR_FLAG_8000000;
    this->picto.actor.flags &= ~ACTOR_FLAG_1;
    if (this->switchFlag == 127) {
        this->switchFlag = -1;
    }

    if ((this->switchFlag >= 0) && Flags_GetSwitch(play, this->switchFlag)) {
        Actor_Kill(&this->picto.actor);
        return;
    }

    this->unk_3D4.dim.radius = 20;
    this->unk_3D4.dim.height = 65;
    this->unk_3D4.dim.yShift = 0;
    this->unk_2D6 = this->picto.actor.cutscene;
    this->picto.actor.world.pos.y = player->actor.world.pos.y + 160.0f;
    this->picto.validationFunc = EnKaizoku_ValidatePictograph;
    this->picto.actor.flags |= ACTOR_FLAG_400;
    func_80B85F48(this);
}

void EnKaizoku_Destroy(Actor* thisx, PlayState* play) {
    EnKaizoku* this = THIS;

    Effect_Destroy(play, this->unk_3D0);
    Collider_DestroyCylinder(play, &this->unk_3D4);
    Collider_DestroyQuad(play, &this->unk_420);
    Audio_RestorePrevBgm();
}

s32 func_80B85858(EnKaizoku* this, PlayState* play) {
    Actor* itemAction;
    Player* player = GET_PLAYER(play);
    s16 sp1E = this->unk_2B0;

    for (itemAction = play->actorCtx.actorLists[ACTORCAT_ITEMACTION].first; itemAction != NULL;
         itemAction = itemAction->next) {
        //! FAKE:
        if (1) {}
        if ((itemAction->id == ACTOR_ARMS_HOOK || itemAction->id == ACTOR_EN_ARROW) && player->unk_D57) {
            if ((itemAction->id != ACTOR_ARMS_HOOK || this->unk_2B0 != 13) && this->unk_2B0 != 6) {
                func_80B87C7C(this);
            }
            break;
        }
    }

    if (sp1E != this->unk_2B0) {
        return true;
    } else {
        return false;
    }
}

void func_80B85900(EnKaizoku* this) {
    if (this->unk_2B0 == 1) {
        this->unk_57A = Math_SinS(this->unk_2B4 * 0x1068) * 8920.0f;
    } else if (this->unk_2B0 != 13) {
        if ((this->unk_2B0 == 9) || (this->unk_2B0 == 11)) {
            Math_SmoothStepToS(&this->unk_57A, this->picto.actor.yawTowardsPlayer - this->picto.actor.shape.rot.y, 1,
                               500, 0);
            this->unk_57A = CLAMP(this->unk_57A, -0x256F, 0x256F);
        } else {
            this->unk_57A = 0;
        }
    }
}

s32 func_80B85A00(EnKaizoku* this, PlayState* play, s16 arg2) {
    Player* player = GET_PLAYER(play);
    s16 sp32 = ABS_ALT(this->picto.actor.wallYaw - this->picto.actor.shape.rot.y);
    s16 sp30 = ABS_ALT(this->picto.actor.yawTowardsPlayer - this->picto.actor.shape.rot.y);
    Actor* explosiveActor;

    if (func_800BE184(play, &this->picto.actor, 100.0f, 0x2710, 0x4000, this->picto.actor.shape.rot.y)) {
        if (player->meleeWeaponAnimation == PLAYER_MWA_JUMPSLASH_START) {
            if (this->unk_2B0 != 2) {
                func_80B874D8(this, play);
            }
            return true;
        } else {
            func_80B87900(this);
            return true;
        }
    } else if (func_800BE184(play, &this->picto.actor, 100.0f, 0x5DC0, 0x2AA8, this->picto.actor.shape.rot.y)) {
        this->picto.actor.shape.rot.y = this->picto.actor.world.rot.y = this->picto.actor.yawTowardsPlayer;
        if ((this->picto.actor.bgCheckFlags & 8) && (ABS_ALT(sp32) < 0x2EE0) &&
            (this->picto.actor.xzDistToPlayer < 90.0f)) {
            if (this->unk_2B0 != 6) {
                func_80B87C7C(this);
            }
            return true;
        } else if (player->meleeWeaponAnimation == PLAYER_MWA_JUMPSLASH_START) {
            if (this->unk_2B0 != 2) {
                func_80B874D8(this, play);
            }
        } else if (this->picto.actor.xzDistToPlayer < BREG(11) + 180.0f) {
            func_80B87900(this);
        } else if (this->unk_2B0 != 7) {
            func_80B87E28(this);
        }
        return true;
    }

    explosiveActor = Actor_FindNearby(play, &this->picto.actor, -1, ACTORCAT_EXPLOSIVES, 80.0f);
    if (explosiveActor != NULL) {
        this->picto.actor.shape.rot.y = this->picto.actor.world.rot.y = this->picto.actor.yawTowardsPlayer;

        if (((this->picto.actor.bgCheckFlags & 8) && (sp32 < 12000)) || (explosiveActor->id == ACTOR_EN_BOM_CHU)) {
            if ((explosiveActor->id == ACTOR_EN_BOM_CHU) &&
                (Actor_DistanceBetweenActors(&this->picto.actor, explosiveActor) < 80.0f) &&
                (BINANG_ADD(this->picto.actor.shape.rot.y - explosiveActor->world.rot.y, 0x8000) < 0x4000)) {
                if (this->unk_2B0 != 6) {
                    func_80B87C7C(this);
                }
            } else {
                func_80B87900(this);
            }

            return true;
        }

        if (this->unk_2B0 != 7) {
            func_80B87E28(this);
        }
        return true;
    }

    if (arg2) {
        s16 sp2A;

        //! FAKE:
    label:;
        if (sp30 >= 10000) {
            func_80B87900(this);
        } else {
            sp2A = player->actor.shape.rot.y - this->picto.actor.shape.rot.y;
            if (this->picto.actor.xzDistToPlayer <= 65.0f && !Actor_OtherIsTargeted(play, &this->picto.actor) &&
                ABS_ALT(sp2A) < 0x5000) {
                if (this->unk_2B0 != 9) {
                    func_80B87F70(this);
                    return 1;
                }
            } else if (this->unk_2B0 != 3) {
                func_80B88CD8(this);
            }
        }
        return true;
    }

    return false;
}

void EnKaizoku_ChangeAnim(EnKaizoku* this, EnKaizokuAnimation animIndex) {
    this->animIndex = animIndex;
    this->frameCount = Animation_GetLastFrame(sAnimations[this->animIndex]);
    Animation_Change(&this->skelAnime, sAnimations[this->animIndex], 1.0f, 0.0f, this->frameCount,
                     sAnimationModes[this->animIndex], 0.0f);
}

s32 EnKaizoku_ValidatePictograph(PlayState* play, Actor* actor) {
    s32 ret = Snap_ValidatePictograph(play, actor, PICTOGRAPH_PIRATE_GOOD, &actor->focus.pos, &actor->shape.rot, 10.0f,
                                      400.0f, -1);

    ret |= Snap_ValidatePictograph(play, actor, PICTOGRAPH_PIRATE_TOO_FAR, &actor->focus.pos, &actor->shape.rot, 10.0f,
                                   1200.0f, -1);
    return ret;
}

void func_80B85F48(EnKaizoku* this) {
    Math_Vec3f_Copy(&this->unk_2F8, &gZeroVec3f);
    Math_Vec3f_Copy(&this->unk_304, &gZeroVec3f);
    this->unk_2D8 = 1;
    this->unk_2B0 = 0;
    this->actionFunc = func_80B85FA8;
}

void func_80B85FA8(EnKaizoku* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    f32 curFrame = this->skelAnime.curFrame;
    s32 sp54;

    switch (this->unk_59C) {
        case 0:
            if (!(this->picto.actor.xzDistToPlayer < 200.0f)) {
                break;
            }

            if (!ActorCutscene_GetCanPlayNext(this->unk_2D6)) {
                ActorCutscene_SetIntentToPlay(this->unk_2D6);
                return;
            }

            ActorCutscene_StartAndSetUnkLinkFields(this->unk_2D6, &this->picto.actor);
            func_800B7298(play, &this->picto.actor, 0x15);
            this->subCamId = ActorCutscene_GetCurrentSubCamId(this->picto.actor.cutscene);
            this->picto.actor.shape.rot.y = this->picto.actor.world.rot.y = this->picto.actor.yawTowardsPlayer;

            sp54 = (this->unk_2CA * 4) + this->unk_2C8;
            if (this->unk_2EC != 2) {
                player->actor.world.pos.x = this->picto.actor.home.pos.x + 90.0f;
                player->actor.world.pos.z = this->picto.actor.home.pos.z + 30.0f;
            } else {
                player->actor.world.pos.x = this->picto.actor.home.pos.x - 90.0f;
                player->actor.world.pos.z = this->picto.actor.home.pos.z - 30.0f;
            }

            player->actor.speedXZ = 0.0f;
            this->picto.actor.world.pos.x = this->picto.actor.home.pos.x;
            this->picto.actor.world.pos.z = this->picto.actor.home.pos.z;
            Message_StartTextbox(play, D_80B8A8D0[sp54], &this->picto.actor);
            this->unk_2C8 += 1;
            this->picto.actor.flags &= ~ACTOR_FLAG_1;
            player->actor.shape.rot.y = player->actor.world.rot.y =
                Math_Vec3f_Yaw(&player->actor.world.pos, &this->picto.actor.world.pos);
            Math_Vec3f_Copy(&this->subCamEye, &this->unk_5C8);
            Math_Vec3f_Copy(&this->subCamAt, &this->unk_5D4);
            this->subCamUp.x = -0.11f;
            this->picto.actor.draw = EnKaizoku_Draw;
            this->unk_598 = 0;
            func_801A0238(0, 0xA);
            this->unk_59C += 1;

        case 1:
            player->actor.shape.rot.y = player->actor.world.rot.y =
                Math_Vec3f_Yaw(&player->actor.world.pos, &this->picto.actor.world.pos);
            this->picto.actor.shape.rot.y = this->picto.actor.world.rot.y = this->picto.actor.yawTowardsPlayer;

            if (this->unk_2EC != 2) {
                player->actor.world.pos.x = this->picto.actor.home.pos.x + 90.0f;
                player->actor.world.pos.z = this->picto.actor.home.pos.z + 30.0f;
            } else {
                player->actor.world.pos.x = this->picto.actor.home.pos.x - 90.0f;
                player->actor.world.pos.z = this->picto.actor.home.pos.z - 30.0f;
            }

            if ((Message_GetState(&play->msgCtx) == TEXT_STATE_5) && Message_ShouldAdvance(play)) {
                func_801477B4(play);
                EnKaizoku_ChangeAnim(this, EN_KAIZOKU_ANIM_11);
                this->unk_598 = 0;
                this->unk_59C += 1;
                this->picto.actor.gravity = -2.0f;
            }
            break;

        case 2:
            if (this->picto.actor.bgCheckFlags & 1) {
                if (this->unk_2D8 != 0) {
                    this->unk_2D8 = 0;
                    this->picto.actor.world.pos.y = this->picto.actor.floorHeight;
                    this->picto.actor.velocity.y = 0.0f;
                    func_800B7298(play, &this->picto.actor, 4);
                    Actor_SpawnFloorDustRing(play, &this->picto.actor, &this->unk_58C, 3.0f, 2, 2.0f, 0, 0, 0);
                    Actor_SpawnFloorDustRing(play, &this->picto.actor, &this->unk_580, 3.0f, 2, 2.0f, 0, 0, 0);
                    Actor_PlaySfxAtPos(&this->picto.actor, NA_SE_EN_PIRATE_ONGND);
                }

                if (curFrame >= 11.0f) {
                    this->unk_59C++;
                    this->unk_598 = 0;
                    this->subCamUp.x = 0.0f;
                }
            }
            break;

        case 3:
            if (this->frameCount <= curFrame) {
                sp54 = this->unk_2CA * 4 + this->unk_2C8;
                if (Player_GetMask(play) == PLAYER_MASK_STONE) {
                    if (D_80B8A8D0[sp54] == 0x11A5) {
                        sp54 = 8;
                    } else if (D_80B8A8D0[sp54] == 0x11A9) {
                        sp54 = 9;
                    }
                }

                Message_StartTextbox(play, D_80B8A8D0[sp54], &this->picto.actor);
                EnKaizoku_ChangeAnim(this, EN_KAIZOKU_ANIM_12);
                this->unk_2C8++;
                this->unk_598 = 0;
                this->unk_59C++;
            }
            break;

        case 4:
            if ((Message_GetState(&play->msgCtx) == TEXT_STATE_5) && Message_ShouldAdvance(play)) {
                func_801477B4(play);
                this->unk_598 = 0;
                this->unk_59C++;
                func_801A0238(0x7F, 0);
                Audio_PlayBgm_StorePrevBgm(NA_BGM_MINI_BOSS);
                EnKaizoku_ChangeAnim(this, EN_KAIZOKU_ANIM_13);
            }
            break;

        case 5:
            Math_ApproachF(&this->unk_5E0, 2.0f, 0.2f, 1.0f);
            if (Animation_OnFrame(&this->skelAnime, 20.0f)) {
                Actor_PlaySfxAtPos(&this->picto.actor, NA_SE_EN_BOSU_SWORD);
            }
            if (curFrame >= 30.0f) {
                this->unk_598 = 0;
                this->unk_59C++;
            }
            break;

        case 6:
            Math_ApproachF(&this->unk_5E0, 5.0f, 0.3f, 1.0f);
            if (this->frameCount <= curFrame) {
                this->unk_598 = 7;
                this->unk_2F8.x = 1.0f;
                this->unk_59C++;
                this->unk_2F8.y = 1.0f;
                this->unk_2F8.z = 1.0f;
                this->unk_304.x = 1.0f;
                this->unk_304.y = 1.0f;
                this->unk_304.z = 1.0f;
            }
            break;

        case 7:
            if (this->unk_598 == 0) {
                func_800B7298(play, &this->picto.actor, 6);
                ActorCutscene_Stop(this->unk_2D6);
                this->unk_59C = 0;
                this->subCamId = 0;
                this->picto.actor.flags &= ~ACTOR_FLAG_100000;
                this->picto.actor.flags &= ~ACTOR_FLAG_8000000;
                this->picto.actor.flags |= ACTOR_FLAG_1;
                func_80B872A4(this);
            }
            break;
    }

    if (this->unk_59C < 7) {
        s32 temp_v0_3 = this->unk_2EC * 8;

        temp_v0_3 += this->unk_59C;
        this->unk_5C8.x = D_80B8A8E4[temp_v0_3].x + this->picto.actor.home.pos.x;
        this->unk_5C8.y = D_80B8A8E4[temp_v0_3].y + player->actor.world.pos.y;
        this->unk_5C8.z = D_80B8A8E4[temp_v0_3].z + this->picto.actor.home.pos.z;

        this->unk_5D4.x = D_80B8AA04[temp_v0_3].x + this->picto.actor.home.pos.x;
        this->unk_5D4.y = D_80B8AA04[temp_v0_3].y + player->actor.world.pos.y;
        this->unk_5D4.z = D_80B8AA04[temp_v0_3].z + this->picto.actor.home.pos.z;
    }

    if (this->unk_59C >= 5) {
        if (curFrame >= 6.0f) {
            Math_ApproachF(&this->unk_2F8.x, 1.0f, 0.3f, 0.3f);
            this->unk_2F8.z = this->unk_2F8.y = this->unk_2F8.x;
        }

        if (curFrame >= 22.0f) {
            Math_ApproachF(&this->unk_304.x, 1.0f, 0.3f, 0.3f);
            this->unk_304.z = this->unk_304.y = this->unk_304.x;
        }
    }

    if (this->unk_59C >= 5) {
        Math_ApproachF(&this->subCamEye.x, this->unk_5C8.x, 0.5f, this->unk_5E0);
        Math_ApproachF(&this->subCamEye.y, this->unk_5C8.y, 0.5f, this->unk_5E0);
        Math_ApproachF(&this->subCamEye.z, this->unk_5C8.z, 0.5f, this->unk_5E0);
        Math_ApproachF(&this->subCamAt.x, this->unk_5D4.x, 0.5f, this->unk_5E0);
        Math_ApproachF(&this->subCamAt.y, this->unk_5D4.y, 0.5f, this->unk_5E0);
        Math_ApproachF(&this->subCamAt.z, this->unk_5D4.z, 0.5f, this->unk_5E0);
    } else {
        Math_Vec3f_Copy(&this->subCamEye, &this->unk_5C8);
        Math_Vec3f_Copy(&this->subCamAt, &this->unk_5D4);
    }

    if (this->subCamId != 0) {
        this->subCamUp.y = 1.0f;
        this->subCamUp.z = 0.0f;
        Play_SetCameraAtEyeUp(play, this->subCamId, &this->subCamAt, &this->subCamEye, &this->subCamUp);
    }
}

void func_80B86804(EnKaizoku* this, PlayState* play) {
    if (this->subCamId == 0) {
        if (!ActorCutscene_GetCanPlayNext(this->unk_2D6)) {
            ActorCutscene_SetIntentToPlay(this->unk_2D6);
            return;
        }
        ActorCutscene_StartAndSetUnkLinkFields(this->unk_2D6, &this->picto.actor);
    }

    func_800B7298(play, &this->picto.actor, 0x60);
    this->subCamId = ActorCutscene_GetCurrentSubCamId(this->picto.actor.cutscene);
    this->unk_2B2 = 30;
    this->picto.actor.flags &= ~ACTOR_FLAG_1;
    this->unk_598 = 0;
    this->unk_59C = 0;
    this->unk_2D8 = 0;
    this->unk_2B0 = 0;
    this->actionFunc = func_80B868B8;
    this->picto.actor.speedXZ = 0.0f;
}

void func_80B868B8(EnKaizoku* this, PlayState* play) {
    f32 curFrame = this->skelAnime.curFrame;

    Math_SmoothStepToS(&this->picto.actor.shape.rot.y, this->picto.actor.yawTowardsPlayer, 1, 4000, 1);
    this->subCamEye.x = Math_SinS(this->picto.actor.yawTowardsPlayer) * 155.0f + this->picto.actor.world.pos.x;
    this->subCamEye.y = this->picto.actor.world.pos.y + 10.0f;
    this->subCamEye.z = Math_CosS(this->picto.actor.yawTowardsPlayer) * 115.0f + this->picto.actor.world.pos.z;

    this->subCamAt.x = Math_SinS(this->picto.actor.yawTowardsPlayer) + this->picto.actor.world.pos.x;
    this->subCamAt.y = this->picto.actor.world.pos.y + 30.0f;
    this->subCamAt.z = Math_CosS(this->picto.actor.yawTowardsPlayer) * 11.0f + this->picto.actor.world.pos.z;

    switch (this->unk_59C) {
        case 0:
            if (this->frameCount <= curFrame) {
                EnKaizoku_ChangeAnim(this, EN_KAIZOKU_ANIM_14);
                this->unk_2C8 = 3;
                this->unk_598 = 0;
                this->unk_59C++;
            }
            break;

        case 1:
            if (this->frameCount <= curFrame) {
                s32 textId;

                EnKaizoku_ChangeAnim(this, EN_KAIZOKU_ANIM_15);
                textId = this->unk_2CA * 4 + this->unk_2C8;
                Message_StartTextbox(play, D_80B8A8D0[textId], &this->picto.actor);
                Actor_PlaySfxAtPos(&this->picto.actor, NA_SE_EN_LAST2_SHOUT);
                this->unk_598 = 0;
                this->unk_59C++;
            }
            break;

        case 2:
            if ((Message_GetState(&play->msgCtx) == TEXT_STATE_5) && Message_ShouldAdvance(play)) {
                func_801477B4(play);
                func_800B7298(play, &this->picto.actor, 6);
                ActorCutscene_Stop(this->unk_2D6);
                this->subCamId = 0;
                play->nextEntrance = play->setupExitList[this->exitIndex];
                gSaveContext.nextCutsceneIndex = 0;
                Scene_SetExitFade(play);
                play->transitionTrigger = TRANS_TRIGGER_START;
                this->unk_59C++;
                this->unk_2B0 = 16;
            }

            break;
    }

    if (this->subCamId != 0) {
        this->subCamUp.x = 0.0f;
        this->subCamUp.y = 1.0f;
        this->subCamUp.z = 0.0f;
        Play_SetCameraAtEyeUp(play, this->subCamId, &this->subCamAt, &this->subCamEye, &this->subCamUp);
    }
}

void func_80B86B58(EnKaizoku* this) {
    this->unk_2D8 = 0;
    this->unk_2B0 = 0;
    this->actionFunc = func_80B86B74;
}

void func_80B86B74(EnKaizoku* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 textId;
    f32 curFrame = this->skelAnime.curFrame;

    if (this->unk_59C < 2) {
        Math_SmoothStepToS(&this->picto.actor.shape.rot.y, this->picto.actor.yawTowardsPlayer, 1, 0xFA0, 1);
        player->actor.world.pos.x = this->picto.actor.home.pos.x + 90.0f;
        player->actor.world.pos.z = this->picto.actor.home.pos.z + 30.0f;
        this->picto.actor.world.pos.x = this->picto.actor.home.pos.x;
        this->picto.actor.world.pos.z = this->picto.actor.home.pos.z;
        this->unk_5C8.x = player->actor.world.pos.x + 39.0f;
        this->unk_5C8.y = player->actor.world.pos.y + 4.0f;
        this->unk_5C8.z = player->actor.world.pos.z - 41.0f;
        this->unk_5D4.x = player->actor.world.pos.x - 150.0f;
        this->unk_5D4.y = player->actor.world.pos.y + 60.0f;
        this->unk_5D4.z = player->actor.world.pos.z + 50.0f;
    }

    player->actor.shape.rot.y = player->actor.world.rot.y =
        Math_Vec3f_Yaw(&player->actor.world.pos, &this->picto.actor.world.pos);
    switch (this->unk_59C) {
        case 0:
            EnKaizoku_ChangeAnim(this, EN_KAIZOKU_ANIM_17);
            this->unk_2C8 = 2;
            textId = this->unk_2CA * 4 + this->unk_2C8;
            Message_StartTextbox(play, D_80B8A8D0[textId], &this->picto.actor);
            this->unk_2D9 = 0;
            this->unk_598 = 0;
            this->unk_59C++;
            break;

        case 1:
            if (this->frameCount <= curFrame) {
                if (this->unk_2D9 == 0) {
                    Actor_PlaySfxAtPos(&this->picto.actor, NA_SE_EN_PIRATE_DAMM_BREATH);
                    this->unk_2D9 = 1;
                } else {
                    Actor_PlaySfxAtPos(&this->picto.actor, NA_SE_EN_PIRATE_BREATH);
                }
            }

            if ((Message_GetState(&play->msgCtx) == TEXT_STATE_5) && Message_ShouldAdvance(play)) {
                func_801477B4(play);
                EnKaizoku_ChangeAnim(this, EN_KAIZOKU_ANIM_18);
                func_800B7298(play, &this->picto.actor, 0x85);
                this->unk_5A0 = 0;
                this->unk_598 = 0;
                this->unk_59C++;
            }
            break;

        case 2:
            this->unk_5C8.x = player->actor.world.pos.x + 77.0f;
            this->unk_5C8.y = player->actor.world.pos.y + 84.0f;
            this->unk_5C8.z = player->actor.world.pos.z - 71.0f;

            this->unk_5D4.x = player->actor.world.pos.x - 110.0f;
            this->unk_5D4.y = player->actor.world.pos.y;
            this->unk_5D4.z = player->actor.world.pos.z + 30.0f;
            this->unk_5A0++;
            if (curFrame >= 1.0f) {
                Math_ApproachZeroF(&this->unk_2F8.x, 0.3f, 0.3f);
                Math_ApproachZeroF(&this->unk_304.x, 0.3f, 0.3f);
                this->unk_2F8.z = this->unk_2F8.y = this->unk_2F8.x;
                this->unk_304.z = this->unk_304.y = this->unk_304.x;
            }
            if (this->unk_5A0 == 0x12) {
                Actor* temp_v0_2;

                Actor_PlaySfxAtPos(&this->picto.actor, NA_SE_EN_PIRATE_SHOUT);
                temp_v0_2 = Actor_Spawn(&play->actorCtx, play, ACTOR_EN_ARROW, this->picto.actor.world.pos.x,
                                        this->picto.actor.world.pos.y + 10.0f, this->picto.actor.world.pos.z,
                                        this->picto.actor.shape.rot.x, this->picto.actor.shape.rot.y,
                                        this->picto.actor.shape.rot.z, -8);
                if (temp_v0_2 != NULL) {
                    temp_v0_2->gravity = -10.0f;
                    play->envCtx.fillScreen = 1;
                }
            }

            if (this->unk_5A0 >= 0x12) {
                Math_ApproachF(&this->unk_5EC, 60.0f, 1.0f, 20.0f);
                this->unk_5E8 = this->unk_5EC / 60.0f;
                play->envCtx.screenFillColor[3] = this->unk_5E8 * 255.0f;
                play->envCtx.screenFillColor[0] = play->envCtx.screenFillColor[1] = play->envCtx.screenFillColor[2] =
                    255;
            }

            if ((this->frameCount <= curFrame) && (this->unk_5A0 >= 0x28)) {
                this->picto.actor.draw = NULL;
                this->unk_598 = 10;
                Math_Vec3f_Copy(&this->unk_2F8, &gZeroVec3f);
                Math_Vec3f_Copy(&this->unk_304, &gZeroVec3f);
                this->unk_59C++;
            }
            break;

        case 3:
            if (this->unk_598 == 0) {
                Math_ApproachZeroF(&this->unk_5EC, 0.5f, 10.0f);
                this->unk_5E8 = this->unk_5EC / 60.0f;
                play->envCtx.screenFillColor[3] = this->unk_5E8 * 255.0f;
                if (play->envCtx.screenFillColor[3] < 10) {
                    play->envCtx.screenFillColor[0] = 0;
                    play->envCtx.screenFillColor[1] = 0;
                    play->envCtx.screenFillColor[2] = 0;
                    play->envCtx.screenFillColor[3] = 0;
                    play->envCtx.fillScreen = 0;
                    this->unk_59C = 0;
                    this->subCamId = 0;
                    func_800B7298(play, &this->picto.actor, 6);
                    ActorCutscene_Stop(this->unk_2D6);
                    if (this->switchFlag >= 0) {
                        Flags_SetSwitch(play, this->switchFlag);
                    }
                    Actor_Kill(&this->picto.actor);
                }
            }
            break;
    }
    Math_ApproachF(&this->subCamEye.x, this->unk_5C8.x, 0.5f, this->unk_5E0);
    Math_ApproachF(&this->subCamEye.y, this->unk_5C8.y, 0.5f, this->unk_5E0);
    Math_ApproachF(&this->subCamEye.z, this->unk_5C8.z, 0.5f, this->unk_5E0);
    Math_ApproachF(&this->subCamAt.x, this->unk_5D4.x, 0.5f, this->unk_5E0);
    Math_ApproachF(&this->subCamAt.y, this->unk_5D4.y, 0.5f, this->unk_5E0);
    Math_ApproachF(&this->subCamAt.z, this->unk_5D4.z, 0.5f, this->unk_5E0);
    Math_ApproachF(&this->unk_5E0, 10.0f, 0.5f, 100.0f);

    if (this->subCamId != 0) {
        this->subCamUp.x = 0.0f;
        this->subCamUp.z = 0.0f;
        this->subCamUp.y = 1.0f;
        Play_SetCameraAtEyeUp(play, this->subCamId, &this->subCamAt, &this->subCamEye, &this->subCamUp);
    }
}

void func_80B872A4(EnKaizoku* this) {
    this->picto.actor.speedXZ = 0.0f;
    EnKaizoku_ChangeAnim(this, EN_KAIZOKU_ANIM_0);
    this->unk_2B0 = 1;
    this->actionFunc = func_80B872F4;
    this->picto.actor.shape.shadowScale = 90.0f;
}

void func_80B872F4(EnKaizoku* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if ((this->unk_2B4 == 0) && !func_80B85858(this, play) && !func_80B85A00(this, play, false)) {
        s16 yawDiff = this->picto.actor.yawTowardsPlayer - this->picto.actor.shape.rot.y;

        if ((this->picto.actor.xzDistToPlayer < 100.0f) && (player->meleeWeaponState != 0) && (yawDiff >= 0x1F40)) {
            this->picto.actor.shape.rot.y = this->picto.actor.world.rot.y = this->picto.actor.yawTowardsPlayer;
            func_80B88CD8(this);
        } else if (Actor_IsFacingPlayer(&this->picto.actor, 0xBB8)) {
            if ((this->picto.actor.xzDistToPlayer < 400.0f && this->picto.actor.xzDistToPlayer > 150.0f) &&
                (Rand_ZeroOne() < 0.7f)) {
                if ((Rand_ZeroOne() > 0.5f) || (ABS_ALT(yawDiff) < 0x3000)) {
                    func_80B88214(this);
                } else {
                    func_80B88910(this);
                }
            } else if (Rand_ZeroOne() > 0.1f) {
                func_80B8833C(this);
            } else {
                func_80B88CD8(this);
            }
        } else {
            func_80B88770(this);
        }
    }
}

void func_80B874D8(EnKaizoku* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    EnKaizoku_ChangeAnim(this, EN_KAIZOKU_ANIM_3);
    if (Math_SinS(player->actor.shape.rot.y - this->picto.actor.shape.rot.y) > 0.0f) {
        this->picto.actor.speedXZ = -10.0f;
    } else if (Math_SinS(player->actor.shape.rot.y - this->picto.actor.shape.rot.y) < 0.0f) {
        this->picto.actor.speedXZ = 10.0f;
    } else if (Rand_ZeroOne() > 0.5f) {
        this->picto.actor.speedXZ = 10.0f;
    } else {
        this->picto.actor.speedXZ = -10.0f;
    }

    this->skelAnime.playSpeed = 1.0f;
    this->picto.actor.world.rot.y = this->picto.actor.shape.rot.y;
    this->unk_2B2 = 6;
    this->unk_2B0 = 2;
    this->unk_2E0 = 0.0f;
    this->actionFunc = func_80B8760C;
}

void func_80B8760C(EnKaizoku* this, PlayState* play) {
    s16 var_v0;
    s32 temp_ft0;
    s32 temp_ft1;

    this->picto.actor.world.rot.y = this->picto.actor.yawTowardsPlayer + 0x3A98;
    if ((this->picto.actor.bgCheckFlags & 8) ||
        !Actor_TestFloorInDirection(&this->picto.actor, play, this->picto.actor.speedXZ,
                                    this->picto.actor.shape.rot.y + 0x4000)) {
        if (this->picto.actor.bgCheckFlags & 8) {
            if (this->picto.actor.speedXZ >= 0.0f) {
                var_v0 = this->picto.actor.shape.rot.y + 0x4000;
            } else {
                var_v0 = this->picto.actor.shape.rot.y - 0x4000;
            }
            var_v0 = this->picto.actor.wallYaw - var_v0;
        } else {
            this->picto.actor.speedXZ *= -0.8f;
            var_v0 = 0;
        }

        if (ABS_ALT(var_v0) > 0x4000) {
            func_80B87C7C(this);
            return;
        }
    }

    if (this->picto.actor.xzDistToPlayer <= 65.0f) {
        Math_ApproachF(&this->unk_2E0, -4.0f, 1.0f, 1.5f);
    } else if (this->picto.actor.xzDistToPlayer > 40.0f) {
        Math_ApproachF(&this->unk_2E0, 4.0f, 1.0f, 1.5f);
    } else {
        Math_ApproachZeroF(&this->unk_2E0, 1.0f, 6.65f);
    }

    if (this->unk_2E0 != 0.0f) {
        this->picto.actor.world.pos.x += Math_SinS(this->picto.actor.yawTowardsPlayer) * this->unk_2E0;
        this->picto.actor.world.pos.z += Math_CosS(this->picto.actor.yawTowardsPlayer) * this->unk_2E0;
    }

    this->skelAnime.playSpeed = 1.0f;
    temp_ft0 = this->skelAnime.curFrame - this->skelAnime.playSpeed;
    temp_ft1 = this->skelAnime.curFrame + this->skelAnime.playSpeed;
    if (this->skelAnime.curFrame != 0.0f && ((temp_ft0 < 0 && temp_ft1 > 0) || (temp_ft0 < 5 && temp_ft1 >= 6))) {
        Actor_PlaySfxAtPos(&this->picto.actor, NA_SE_EN_GERUDOFT_WALK);
    }

    if (!(play->gameplayFrames & 0x5F)) {
        Actor_PlaySfxAtPos(&this->picto.actor, NA_SE_EN_PIRATE_BREATH);
    }

    if (this->unk_2B2 == 0) {
        this->picto.actor.shape.rot.y = this->picto.actor.yawTowardsPlayer;
        if (!func_80B85858(this, play)) {
            if (this->picto.actor.xzDistToPlayer <= 70.0f) {
                func_80B87F70(this);
            } else {
                func_80B87E28(this);
            }
        }
    } else {
        if (this->picto.actor.speedXZ >= 0.0f) {
            this->picto.actor.shape.rot.y += 0x4000;
        } else {
            this->picto.actor.shape.rot.y -= 0x4000;
        }
    }
}

void func_80B87900(EnKaizoku* this) {
    EnKaizoku_ChangeAnim(this, EN_KAIZOKU_ANIM_7);

    if (this->unk_2D2 != 0) {
        this->unk_2D2 = -1;
    }
    this->unk_2D8 = 0;
    this->picto.actor.speedXZ = 0.0f;
    this->unk_2B2 = Rand_S16Offset(10, 10);
    this->unk_3D4.base.acFlags |= AC_HARD;
    this->unk_2B4 = 12;
    this->unk_2B0 = 12;
    this->actionFunc = func_80B8798C;
}

void func_80B8798C(EnKaizoku* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 temp_v0;

    this->unk_2D8 = 1;
    if (this->unk_2B2 == 0) {
        this->skelAnime.playSpeed = 1.0f;
    }
    if (this->unk_2B4 == 0) {
        this->unk_2D8 = 0;
        temp_v0 = this->picto.actor.yawTowardsPlayer - this->picto.actor.shape.rot.y;
        if (ABS_ALT(temp_v0) <= 0x4000 && this->picto.actor.xzDistToPlayer < 40.0f &&
            fabsf(this->picto.actor.playerHeightRel) < 50.0f) {
            if (func_800BE184(play, &this->picto.actor, 100.0f, 10000, 0x4000, this->picto.actor.shape.rot.y)) {
                if (player->meleeWeaponAnimation == PLAYER_MWA_JUMPSLASH_START) {
                    this->unk_3D4.base.acFlags &= ~AC_HARD;
                    func_80B874D8(this, play);
                } else if (!(play->gameplayFrames & 1)) {
                    func_80B87900(this);
                } else {
                    this->unk_3D4.base.acFlags &= ~AC_HARD;
                    func_80B87E28(this);
                }
            } else {
                temp_v0 = player->actor.shape.rot.y - this->picto.actor.shape.rot.y;
                if (ABS_ALT(temp_v0) < 0x4000) {
                    this->unk_3D4.base.acFlags &= ~AC_HARD;
                    func_80B87F70(this);
                } else {
                    this->unk_3D4.base.acFlags &= ~AC_HARD;
                    func_80B88CD8(this);
                }
            }
        } else {
            this->unk_3D4.base.acFlags &= ~AC_HARD;
            func_80B88CD8(this);
        }
    } else if (this->unk_2B2 == 0 &&
               func_800BE184(play, &this->picto.actor, 100.0f, 10000, 0x4000, this->picto.actor.shape.rot.y)) {
        if (player->meleeWeaponAnimation == PLAYER_MWA_JUMPSLASH_START) {
            this->unk_3D4.base.acFlags &= ~AC_HARD;
            func_80B874D8(this, play);
        } else if (!func_80B85858(this, play)) {
            if (!(play->gameplayFrames & 1)) {
                if (this->picto.actor.xzDistToPlayer < 100.0f && Rand_ZeroOne() > 0.7f) {
                    this->unk_3D4.base.acFlags &= ~AC_HARD;
                    func_80B87C7C(this);
                } else {
                    this->unk_3D4.base.acFlags &= ~AC_HARD;
                    func_80B87E28(this);
                }
            } else {
                func_80B87900(this);
            }
        }
    }
}

void func_80B87C7C(EnKaizoku* this) {
    EnKaizoku_ChangeAnim(this, EN_KAIZOKU_ANIM_8);
    this->picto.actor.speedXZ = 6.5f;
    this->picto.actor.velocity.y = 15.0f;
    Actor_PlaySfxAtPos(&this->picto.actor, NA_SE_EN_TEKU_JUMP);
    this->picto.actor.world.rot.y = this->picto.actor.shape.rot.y;
    this->unk_3D4.info.elemType = 4;
    this->unk_3D4.base.colType = 10;
    this->unk_420.info.elemType = 4;
    this->unk_2B0 = 6;
    this->actionFunc = func_80B87D3C;
}

void func_80B87CF8(PlayState* arg0, Vec3f* arg1) {
    EffectSsKirakira_SpawnSmall(arg0, arg1, &D_80B8AC60, &D_80B8AC6C, &D_80B8AC58, &D_80B8AC5C);
}

void func_80B87D3C(EnKaizoku* this, PlayState* play) {
    f32 curFrame = this->skelAnime.curFrame;

    Math_SmoothStepToS(&this->picto.actor.shape.rot.y, this->picto.actor.yawTowardsPlayer, 1, 0xFA0, 1);
    if (this->picto.actor.velocity.y >= 5.0f) {
        func_80B87CF8(play, &this->unk_58C);
        func_80B87CF8(play, &this->unk_580);
    }

    this->unk_2D8 = 0;
    if ((this->frameCount <= curFrame) && (this->picto.actor.bgCheckFlags & 3)) {
        this->unk_3D4.info.elemType = 1;
        this->unk_3D4.base.colType = 3;
        this->unk_420.info.elemType = 2;
        this->picto.actor.shape.rot.x = 0;
        this->picto.actor.world.rot.y = this->picto.actor.shape.rot.y = this->picto.actor.yawTowardsPlayer;
        this->picto.actor.speedXZ = 0.0f;
        this->picto.actor.velocity.y = 0.0f;
        this->picto.actor.world.pos.y = this->picto.actor.floorHeight;
        func_80B87F70(this);
    }
}

void func_80B87E28(EnKaizoku* this) {
    EnKaizoku_ChangeAnim(this, EN_KAIZOKU_ANIM_8);
    this->picto.actor.speedXZ = -8.0f;
    Actor_PlaySfxAtPos(&this->picto.actor, NA_SE_EN_TEKU_JUMP);
    this->unk_3D4.info.elemType = ELEMTYPE_UNK4;
    this->unk_3D4.base.colType = COLTYPE_NONE;
    this->unk_420.info.elemType = ELEMTYPE_UNK4;
    this->unk_2B0 = 7;
    this->actionFunc = func_80B87E9C;
    this->picto.actor.shape.rot.y = this->picto.actor.world.rot.y = this->picto.actor.yawTowardsPlayer;
}

void func_80B87E9C(EnKaizoku* this, PlayState* play) {
    f32 curFrame = this->skelAnime.curFrame;

    this->unk_2D8 = 0;
    if (this->frameCount <= curFrame) {
        if (this->picto.actor.xzDistToPlayer < 170.0f && this->picto.actor.xzDistToPlayer > 140.0f &&
            Rand_ZeroOne() < 0.2f) {
            func_80B88910(this);
        } else {
            func_80B87900(this);
        }
    }
    if (!(play->state.frames & 0x5F)) {
        Actor_PlaySfxAtPos(&this->picto.actor, NA_SE_EN_PIRATE_BREATH);
    }
}

void func_80B87F70(EnKaizoku* this) {
    EnKaizoku_ChangeAnim(this, EN_KAIZOKU_ANIM_9);
    this->unk_2D0 = 0;
    this->unk_420.base.atFlags &= ~AT_BOUNCED;
    this->picto.actor.speedXZ = 0.0f;
    AudioSfx_StopByPosAndId(&this->picto.actor.projectedPos, NA_SE_EN_PIRATE_BREATH);
    this->unk_2B0 = 9;
    this->actionFunc = func_80B87FDC;
}

void func_80B87FDC(EnKaizoku* this, PlayState* play2) {
    PlayState* play = play2;
    f32 curFrame;
    s16 sp2E;
    s16 sp2C;
    Player* player = GET_PLAYER(play2);

    curFrame = this->skelAnime.curFrame;
    sp2E = ABS_ALT(player->actor.shape.rot.y - this->picto.actor.shape.rot.y);
    sp2C = ABS_ALT(this->picto.actor.yawTowardsPlayer - this->picto.actor.shape.rot.y);
    this->picto.actor.speedXZ = 0.0f;

    if (Animation_OnFrame(&this->skelAnime, 1.0f)) {
        Actor_PlaySfxAtPos(&this->picto.actor, NA_SE_EN_PIRATE_ATTACK);
        this->unk_2D2 = 1;
    } else if (Animation_OnFrame(&this->skelAnime, 6.0f)) {
        this->unk_2D2 = -1;
    }

    if (this->unk_420.base.atFlags & AT_BOUNCED) {
        this->unk_2D2 = -1;
        this->unk_420.base.atFlags &= ~(AT_BOUNCED | AT_HIT);
        func_80B87E28(this);
        return;
    }

    this->unk_2D8 = 0;
    if (this->frameCount <= curFrame) {
        if (!Actor_IsFacingPlayer(&this->picto.actor, 0x1554)) {
            func_80B872A4(this);

            if (sp2C > 0x4000) {
                this->unk_2B4 = 0x14;
            }
        } else {
            if (Rand_ZeroOne() > 0.7f || this->picto.actor.xzDistToPlayer >= 120.0f) {
                func_80B872A4(this);
                return;
            }

            this->picto.actor.world.rot.y = this->picto.actor.yawTowardsPlayer;

            if (BREG(12) * 0.1f + 0.39999998f < Rand_ZeroOne()) {
                func_80B87900(this);
            } else if (sp2E <= 0x2710) {
                if (sp2C > 0x4000) {
                    this->picto.actor.world.rot.y = this->picto.actor.yawTowardsPlayer;
                    func_80B88CD8(this);
                } else {
                    func_80B85A00(this, play, true);
                }
            } else {
                func_80B88CD8(this);
            }
        }
    }
}

void func_80B88214(EnKaizoku* this) {
    EnKaizoku_ChangeAnim(this, EN_KAIZOKU_ANIM_8);
    this->unk_2B2 = 0;
    this->picto.actor.speedXZ = 10.0f;
    this->picto.actor.world.rot.y = this->picto.actor.shape.rot.y = this->picto.actor.yawTowardsPlayer;
    Actor_PlaySfxAtPos(&this->picto.actor, NA_SE_EN_TEKU_JUMP);
    this->unk_2B0 = 5;
    this->actionFunc = func_80B88278;
}

void func_80B88278(EnKaizoku* this, PlayState* play) {
    f32 curFrame = this->skelAnime.curFrame;

    this->unk_2D8 = 0;
    if (this->frameCount <= curFrame) {
        this->picto.actor.speedXZ = 0.0f;
        if (!Actor_IsFacingPlayer(&this->picto.actor, 0x1554)) {
            func_80B872A4(this);
            this->unk_2B2 = Rand_ZeroOne() * 5.0f + 5.0f;
        } else {
            func_80B87F70(this);
        }
    }
    if (!(play->gameplayFrames & 0x5F)) {
        Actor_PlaySfxAtPos(&this->picto.actor, NA_SE_EN_PIRATE_BREATH);
    }
}

void func_80B8833C(EnKaizoku* this) {
    EnKaizoku_ChangeAnim(this, EN_KAIZOKU_ANIM_4);
    this->unk_2B0 = 4;
    this->actionFunc = func_80B88378;
}

void func_80B88378(EnKaizoku* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s32 sp30;
    s32 sp2C;
    s16 sp2A;

    if (!func_80B85858(this, play)) {
        Math_SmoothStepToS(&this->picto.actor.shape.rot.y, this->picto.actor.yawTowardsPlayer, 1, 0x2EE, 0);
        this->picto.actor.world.rot.y = this->picto.actor.shape.rot.y;
        if (this->picto.actor.xzDistToPlayer <= 40.0f) {
            Math_ApproachF(&this->picto.actor.speedXZ, -8.0f, 1.0f, 1.5f);
        } else if (this->picto.actor.xzDistToPlayer > 55.0f) {
            Math_ApproachF(&this->picto.actor.speedXZ, 8.0f, 1.0f, 1.5f);
        } else {
            Math_ApproachZeroF(&this->picto.actor.speedXZ, 2.0f, 6.65f);
        }

        this->skelAnime.playSpeed = 1.0f;
        sp2A = ABS_ALT(player->actor.shape.rot.y - this->picto.actor.shape.rot.y);
        if (this->picto.actor.xzDistToPlayer < 150.0f && player->meleeWeaponState != 0 && sp2A >= 0x2000) {
            this->picto.actor.shape.rot.y = this->picto.actor.world.rot.y = this->picto.actor.yawTowardsPlayer;
            if (Rand_ZeroOne() > 0.7f) {
                func_80B88CD8(this);
                return;
            }
        }

        sp30 = this->skelAnime.curFrame - this->skelAnime.playSpeed;
        sp2C = this->skelAnime.curFrame + this->skelAnime.playSpeed;
        if (!Actor_IsFacingPlayer(&this->picto.actor, 0x11C7)) {
            if (Rand_ZeroOne() > 0.5f) {
                func_80B88CD8(this);
            } else {
                func_80B872A4(this);
            }
        } else if (this->picto.actor.xzDistToPlayer < 90.0f) {
            if ((Rand_ZeroOne() > 0.03f) || ((this->picto.actor.xzDistToPlayer <= 65.0f) && (sp2A < 0x4000))) {
                func_80B87F70(this);
            } else if (Actor_OtherIsTargeted(play, &this->picto.actor) && (Rand_ZeroOne() > 0.5f)) {
                func_80B87E28(this);
            } else {
                func_80B88CD8(this);
            }
        }

        if (!func_80B85A00(this, play, false)) {
            if (this->picto.actor.xzDistToPlayer < 210.0f && this->picto.actor.xzDistToPlayer > 150.0f &&
                Actor_IsFacingPlayer(&this->picto.actor, 0x1388)) {
                if (Actor_IsTargeted(play, &this->picto.actor)) {
                    if (Rand_ZeroOne() > 0.5f) {
                        func_80B88214(this);
                    } else {
                        func_80B88910(this);
                    }
                } else {
                    func_80B88CD8(this);
                    return;
                }
            }

            if (!(play->gameplayFrames & 0x5F)) {
                Actor_PlaySfxAtPos(&this->picto.actor, NA_SE_EN_PIRATE_BREATH);
            }

            if (this->skelAnime.curFrame != 0.0f && ((sp30 < 0 && sp2C > 0) || (sp30 < 4 && sp2C >= 5))) {
                Actor_PlaySfxAtPos(&this->picto.actor, NA_SE_EN_GERUDOFT_WALK);
            }
        }
    }
}

void func_80B88770(EnKaizoku* this) {
    EnKaizoku_ChangeAnim(this, EN_KAIZOKU_ANIM_3);
    this->unk_2B0 = 0xA;
    this->actionFunc = func_80B887AC;
}

void func_80B887AC(EnKaizoku* this, PlayState* play) {
    s16 temp_v0;
    s16 var_a2;

    if (!func_80B85858(this, play) && !func_80B85A00(this, play, false)) {
        temp_v0 = this->picto.actor.yawTowardsPlayer - this->picto.actor.shape.rot.y;
        if (temp_v0 > 0) {
            var_a2 = (s16)(temp_v0 * 0.25f) + 0x7D0;
        } else {
            var_a2 = (s16)(temp_v0 * 0.25f) - 0x7D0;
        }
        this->picto.actor.shape.rot.y += var_a2;
        this->picto.actor.world.rot.y = this->picto.actor.shape.rot.y;
        this->skelAnime.playSpeed = 1.0f;

        if (Actor_IsFacingPlayer(&this->picto.actor, 0x1388)) {
            if (Rand_ZeroOne() > 0.8f) {
                func_80B88CD8(this);
            } else {
                func_80B8833C(this);
            }
        }
        if (!(play->gameplayFrames & 0x5F)) {
            Actor_PlaySfxAtPos(&this->picto.actor, NA_SE_EN_PIRATE_BREATH);
        }
    }
}

void func_80B88910(EnKaizoku* this) {
    EnKaizoku_ChangeAnim(this, EN_KAIZOKU_ANIM_10);
    this->unk_420.base.atFlags &= ~(AT_BOUNCED | AT_HIT);
    this->unk_2D0 = 0;
    this->unk_2B0 = 11;
    this->actionFunc = func_80B88964;
    this->picto.actor.speedXZ = 0.0f;
}

void func_80B88964(EnKaizoku* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    f32 curFrame = this->skelAnime.curFrame;
    s16 v1;
    s16 a0;
    s32 pad;

    if (this->unk_2D0 < 2) {
        if (this->unk_420.base.atFlags & AT_BOUNCED) {
            this->unk_420.base.atFlags &= ~(AT_BOUNCED | AT_HIT);
            this->unk_2D0 = 1;
            this->skelAnime.playSpeed = 1.0f;
        }
    }

    if (this->skelAnime.curFrame <= 8.0f) {
        this->picto.actor.shape.rot.y = this->picto.actor.world.rot.y = this->picto.actor.yawTowardsPlayer;
    } else {
        if (Animation_OnFrame(&this->skelAnime, 13.0f)) {
            Actor_SpawnFloorDustRing(play, &this->picto.actor, &this->unk_58C, 3.0f, 2, 2.0f, 0, 0, 0);
            Actor_SpawnFloorDustRing(play, &this->picto.actor, &this->unk_580, 3.0f, 2, 2.0f, 0, 0, 0);
            this->unk_2D2 = 1;
            this->picto.actor.speedXZ = 10.0f;
            Actor_PlaySfxAtPos(&this->picto.actor, NA_SE_EN_PIRATE_ATTACK);
        } else if (Animation_OnFrame(&this->skelAnime, 21.0f)) {
            this->picto.actor.speedXZ = 0.0f;
        } else if (Animation_OnFrame(&this->skelAnime, 24.0f)) {
            this->unk_2D2 = -1;
        }
    }

    this->unk_2D8 = 0;
    if (this->frameCount <= curFrame && this->unk_2D0 < 2) {
        if (!Actor_IsFacingPlayer(&this->picto.actor, 0x1554)) {
            func_80B872A4(this);
            this->unk_2B2 = Rand_ZeroOne() * 5.0f + 5.0f;
            this->unk_2B4 = 46;
            return;
        }

        if (this->unk_2D0 != 0) {
            func_80B87E28(this);
            return;
        }

        if ((Rand_ZeroOne() > 0.7f) || (this->picto.actor.xzDistToPlayer >= 120.0f)) {
            func_80B872A4(this);
            this->unk_2B2 = Rand_ZeroOne() * 5.0f + 5.0f;
            return;
        }

        this->picto.actor.world.rot.y = this->picto.actor.yawTowardsPlayer;
        if (BREG(12) * 0.1f + 0.39999998f < Rand_ZeroOne()) {
            func_80B87900(this);
            return;
        }

        v1 = ABS_ALT(player->actor.shape.rot.y - this->picto.actor.shape.rot.y);
        if (v1 <= 0x2710) {

            a0 = ABS_ALT(this->picto.actor.yawTowardsPlayer - this->picto.actor.shape.rot.y);
            if (a0 > 0x4000) {
                this->picto.actor.world.rot.y = this->picto.actor.yawTowardsPlayer;
                func_80B88CD8(this);
            } else {
                func_80B85A00(this, play, true);
            }
        } else {
            func_80B88CD8(this);
        }
    }
}

void func_80B88CD8(EnKaizoku* this) {
    EnKaizoku_ChangeAnim(this, EN_KAIZOKU_ANIM_3);
    this->picto.actor.speedXZ = randPlusMinusPoint5Scaled(12.0f);
    this->skelAnime.playSpeed = 1.0f;
    this->picto.actor.world.rot.y = this->picto.actor.shape.rot.y;
    this->unk_2B2 = Rand_ZeroOne() * 30.0f + 30.0f;
    this->unk_2B0 = 3;
    this->actionFunc = func_80B88D6C;
    this->unk_2E0 = 0.0f;
}

void func_80B88D6C(EnKaizoku* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 sp2A;
    s32 temp_ft4;
    s32 temp_ft5;
    s16 yaw;

    Math_SmoothStepToS(&this->picto.actor.shape.rot.y, this->picto.actor.yawTowardsPlayer, 1, 0xFA0, 1);
    if (!func_80B85858(this, play) && !func_80B85A00(this, play, false)) {
        this->picto.actor.world.rot.y = this->picto.actor.shape.rot.y + 0x4000;
        sp2A = player->actor.shape.rot.y + 0x8000;
        if (Math_SinS(sp2A - this->picto.actor.shape.rot.y) >= 0.0f) {
            this->picto.actor.speedXZ -= 0.25f;
            if (this->picto.actor.speedXZ < -8.0f) {
                this->picto.actor.speedXZ = -8.0f;
            }
        } else if (Math_SinS((sp2A - this->picto.actor.shape.rot.y)) < 0.0f) {
            this->picto.actor.speedXZ += 0.25f;
            if (this->picto.actor.speedXZ > 8.0f) {
                this->picto.actor.speedXZ = 8.0f;
            }
        }

        if ((this->picto.actor.bgCheckFlags & 8) ||
            !Actor_TestFloorInDirection(&this->picto.actor, play, this->picto.actor.speedXZ,
                                        this->picto.actor.shape.rot.y + 0x4000)) {

            if (this->picto.actor.bgCheckFlags & 8) {
                if (this->picto.actor.speedXZ >= 0.0f) {
                    yaw = this->picto.actor.shape.rot.y + 0x4000;
                } else {
                    yaw = this->picto.actor.shape.rot.y - 0x4000;
                }
                yaw = this->picto.actor.wallYaw - (yaw);
            } else {
                this->picto.actor.speedXZ *= -0.8f;
                yaw = 0;
            }

            if (ABS_ALT(yaw) > 0x4000) {
                this->picto.actor.speedXZ *= -0.8f;
                if (this->picto.actor.speedXZ < 0.0f) {
                    this->picto.actor.speedXZ -= 0.5f;
                } else {
                    this->picto.actor.speedXZ += 0.5f;
                }
            }
        }

        if (this->picto.actor.xzDistToPlayer <= 65.0f) {
            Math_ApproachF(&this->unk_2E0, -4.0f, 1.0f, 1.5f);
        } else if (this->picto.actor.xzDistToPlayer > 40.0f) {
            Math_ApproachF(&this->unk_2E0, 4.0f, 1.0f, 1.5f);
        } else {
            Math_ApproachZeroF(&this->unk_2E0, 1.0f, 6.65f);
        }

        if (this->unk_2E0 != 0.0f) {
            this->picto.actor.world.pos.x += Math_SinS(this->picto.actor.shape.rot.y) * this->unk_2E0;
            this->picto.actor.world.pos.z += Math_CosS(this->picto.actor.shape.rot.y) * this->unk_2E0;
        }

        temp_ft4 = this->skelAnime.curFrame - this->skelAnime.playSpeed;
        temp_ft5 = this->skelAnime.curFrame + this->skelAnime.playSpeed;
        if (this->skelAnime.curFrame != 0.0f) {
            if (((temp_ft4 < 0 && temp_ft5 > 0) || (temp_ft4 < 5 && temp_ft5 > 5))) {
                Actor_PlaySfxAtPos(&this->picto.actor, NA_SE_EN_GERUDOFT_WALK);
            }
        }

        if (!(play->gameplayFrames & 0x5F)) {
            Actor_PlaySfxAtPos(&this->picto.actor, NA_SE_EN_PIRATE_BREATH);
        }

        if (this->picto.actor.xzDistToPlayer <= 65.0f) {
            func_80B87F70(this);
        } else if (this->unk_2B2 == 0) {
            if (Actor_OtherIsTargeted(play, &this->picto.actor) && (Rand_ZeroOne() > 0.5f)) {
                func_80B87E28(this);
            } else {
                func_80B872A4(this);
            }
        }
    }
}

void func_80B891B8(EnKaizoku* this) {
    if (this->picto.actor.bgCheckFlags & 1) {
        this->picto.actor.speedXZ = 0.0f;
    }

    if (this->unk_2B0 == 11) {
        EnKaizoku_ChangeAnim(this, EN_KAIZOKU_ANIM_5);
    }

    if (((this->drawDmgEffType == ACTOR_DRAW_DMGEFF_FROZEN_SFX) ||
         (this->drawDmgEffType == ACTOR_DRAW_DMGEFF_FROZEN_NO_SFX)) &&
        (this->unk_2B8 == 0)) {
        this->unk_2B8 = 0;
        this->drawDmgEffType = ACTOR_DRAW_DMGEFF_FIRE;
    }

    Actor_PlaySfxAtPos(&this->picto.actor, NA_SE_EN_COMMON_FREEZE);
    this->unk_2D8 = 1;

    if ((this->drawDmgEffType != ACTOR_DRAW_DMGEFF_FROZEN_SFX) &&
        (this->drawDmgEffType != ACTOR_DRAW_DMGEFF_FROZEN_NO_SFX)) {
        this->unk_2B6 = 40;
    }

    this->unk_2B0 = 13;
    this->actionFunc = func_80B89280;
}

void func_80B89280(EnKaizoku* this, PlayState* play) {
    if (this->drawDmgEffType == ACTOR_DRAW_DMGEFF_FROZEN_SFX) {
        if (this->unk_2B8 != 0 && this->unk_2B8 < 60) {
            this->drawDmgEffType = ACTOR_DRAW_DMGEFF_FROZEN_NO_SFX;
        }
    }

    if (this->picto.actor.bgCheckFlags & 2) {
        this->picto.actor.speedXZ = 0.0f;
    }

    if (this->picto.actor.bgCheckFlags & 1) {
        if (this->picto.actor.speedXZ < 0.0f) {
            this->picto.actor.speedXZ += 0.05f;
        }
    }

    if ((this->unk_2B6 == 0) && (this->unk_2B8 == 0) && !CHECK_FLAG_ALL(this->picto.actor.flags, ACTOR_FLAG_2000) &&
        (this->picto.actor.bgCheckFlags & 1)) {
        this->unk_2D8 = 0;
        func_80B85A00(this, play, true);

        if (this->drawDmgEffType == ACTOR_DRAW_DMGEFF_FROZEN_SFX ||
            this->drawDmgEffType == ACTOR_DRAW_DMGEFF_FROZEN_NO_SFX) {
            Actor_SpawnIceEffects(play, &this->picto.actor, this->bodyPartsPos, ARRAY_COUNT(this->bodyPartsPos), 2,
                                  0.7f, 0.4f);
            this->unk_2B8 = 0;
            this->drawDmgEffType = ACTOR_DRAW_DMGEFF_FIRE;
            this->picto.actor.flags |= ACTOR_FLAG_400;
        }
    }
}

void func_80B893CC(EnKaizoku* this, PlayState* play) {
    Vec3f sp34;

    Matrix_RotateYS(this->picto.actor.yawTowardsPlayer, MTXMODE_NEW);
    Matrix_MultVecZ(-10.0f, &sp34);
    Math_Vec3f_Copy(&this->unk_3C4, &sp34);
    this->unk_2B4 = 0;
    this->unk_2D8 = 0;
    this->picto.actor.speedXZ = 0.0f;
    EnKaizoku_ChangeAnim(this, EN_KAIZOKU_ANIM_5);

    if (((this->drawDmgEffType == ACTOR_DRAW_DMGEFF_FROZEN_SFX) ||
         (this->drawDmgEffType == ACTOR_DRAW_DMGEFF_FROZEN_NO_SFX)) &&
        (this->unk_2B8 != 0)) {
        Actor_SpawnIceEffects(play, &this->picto.actor, this->bodyPartsPos, ARRAY_COUNT(this->bodyPartsPos), 2, 0.7f,
                              0.4f);
        this->unk_2B8 = 0;
        this->drawDmgEffType = ACTOR_DRAW_DMGEFF_FIRE;
        this->picto.actor.flags |= ACTOR_FLAG_400;
    }

    Actor_PlaySfxAtPos(&this->picto.actor, NA_SE_EN_PIRATE_DAMAGE);
    this->unk_2B0 = 14;
    this->actionFunc = func_80B894C0;
}

void func_80B894C0(EnKaizoku* this, PlayState* play) {
    s16 temp_v0;

    Math_SmoothStepToS(&this->picto.actor.shape.rot.y, this->picto.actor.yawTowardsPlayer, 1, 4500, 0);
    if (!func_80B85858(this, play) && !func_80B85A00(this, play, false) && (this->unk_3C4.x < 1.0f) &&
        (this->unk_3C4.z < 1.0f)) {
        temp_v0 = this->picto.actor.wallYaw - this->picto.actor.shape.rot.y;
        if (this->picto.actor.bgCheckFlags & 8) {
            if (ABS_ALT(temp_v0) < 0x3000 && (this->picto.actor.xzDistToPlayer < 90.0f)) {
                func_80B87C7C(this);
                return;
            }
        }

        if (this->picto.actor.xzDistToPlayer <= 65.0f && ((play->gameplayFrames % 8) != 0)) {
            this->unk_420.info.elemType = 2;
            func_80B87F70(this);
        } else {
            func_80B87E28(this);
        }
    }
}

void func_80B8960C(EnKaizoku* this, PlayState* play) {
    Vec3f sp24;

    this->picto.actor.flags |= ACTOR_FLAG_100000;
    Matrix_RotateYS(this->picto.actor.yawTowardsPlayer, MTXMODE_NEW);
    Matrix_MultVecZ(-10.0f, &sp24);
    Math_Vec3f_Copy(&this->unk_3C4, &sp24);
    EnKaizoku_ChangeAnim(this, EN_KAIZOKU_ANIM_16);

    if (((this->drawDmgEffType == ACTOR_DRAW_DMGEFF_FROZEN_SFX) ||
         (this->drawDmgEffType == ACTOR_DRAW_DMGEFF_FROZEN_NO_SFX)) &&
        (this->unk_2B8 == 0)) {
        this->drawDmgEffType = ACTOR_DRAW_DMGEFF_FIRE;
    }
    this->picto.actor.speedXZ = 0.0f;
    this->unk_2D8 = 1;
    func_800B7298(play, &this->picto.actor, 0x7B);
    Enemy_StartFinishingBlow(play, &this->picto.actor);
    Actor_PlaySfxAtPos(&this->picto.actor, NA_SE_EN_PIRATE_DEAD);
    this->picto.actor.flags |= ACTOR_FLAG_8000000;
    this->picto.actor.flags &= ~ACTOR_FLAG_1;
    this->picto.actor.flags &= ~ACTOR_FLAG_400;
    this->unk_598 = 0;
    this->unk_59C = 0;
    this->unk_2B0 = 15;
    this->actionFunc = func_80B8971C;
}

void func_80B8971C(EnKaizoku* this, PlayState* play) {
    f32 curFrame = this->skelAnime.curFrame;
    Player* player;

    if (this->picto.actor.bgCheckFlags & 2) {
        this->picto.actor.speedXZ = 0.0f;
    }

    if (this->picto.actor.bgCheckFlags & 1) {
        Math_SmoothStepToF(&this->picto.actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);
    }

    if ((this->drawDmgEffType == ACTOR_DRAW_DMGEFF_FROZEN_SFX) ||
        (this->drawDmgEffType == ACTOR_DRAW_DMGEFF_FROZEN_NO_SFX)) {
        if (this->unk_2B8 == 0) {
            return;
        }
        Actor_SpawnIceEffects(play, &this->picto.actor, this->bodyPartsPos, ARRAY_COUNT(this->bodyPartsPos), 2, 0.7f,
                              0.4f);
        this->unk_2B8 = 0;
        this->drawDmgEffType = ACTOR_DRAW_DMGEFF_FIRE;
    }

    if (curFrame >= 25.0f) {
        player = GET_PLAYER(play);
        if (this->subCamId == 0) {
            if (!ActorCutscene_GetCanPlayNext(this->unk_2D6)) {
                ActorCutscene_SetIntentToPlay(this->unk_2D6);
                return;
            }
            ActorCutscene_StartAndSetUnkLinkFields(this->unk_2D6, &this->picto.actor);
            this->subCamId = ActorCutscene_GetCurrentSubCamId(this->picto.actor.cutscene);
        }

        Math_Vec3f_Copy(&this->unk_3C4, &gZeroVec3f);
        player->actor.world.pos.x = this->picto.actor.home.pos.x + 90.0f;
        player->actor.world.pos.z = this->picto.actor.home.pos.z + 30.0f;
        this->picto.actor.world.pos.x = this->picto.actor.home.pos.x;
        this->picto.actor.world.pos.z = this->picto.actor.home.pos.z;

        this->subCamEye.x = this->unk_5C8.x = player->actor.world.pos.x + 39.0f;
        this->subCamEye.y = this->unk_5C8.y = player->actor.world.pos.y + 4.0f;
        this->subCamEye.z = this->unk_5C8.z = player->actor.world.pos.z - 41.0f;

        this->subCamAt.x = this->unk_5D4.x = player->actor.world.pos.x - 150.0f;
        this->subCamAt.y = this->unk_5D4.y = player->actor.world.pos.y + 60.0f;
        this->subCamAt.z = this->unk_5D4.z = player->actor.world.pos.z + 50.0f;

        player->actor.shape.rot.y = player->actor.world.rot.y =
            Math_Vec3f_Yaw(&player->actor.world.pos, &this->picto.actor.world.pos);

        if (this->subCamId != 0) {
            this->subCamUp.x = 0.0f;
            this->subCamUp.y = 1.0f;
            this->subCamUp.z = 0.0f;
            Play_SetCameraAtEyeUp(play, this->subCamId, &this->subCamAt, &this->subCamEye, &this->subCamUp);
        }
    }

    Math_SmoothStepToS(&this->picto.actor.shape.rot.y, this->picto.actor.yawTowardsPlayer, 1, 0xFA0, 1);
    SkelAnime_Update(&this->skelAnime);
    if (this->frameCount <= curFrame) {
        this->unk_2D8 = 0;
        func_80B86B58(this);
    } else if (Animation_OnFrame(&this->skelAnime, 10.0f)) {
        Actor_PlaySfxAtPos(&this->picto.actor, NA_SE_EN_GERUDOFT_DOWN);
    }
}

void func_80B89A08(EnKaizoku* this, PlayState* play) {
    s32 sp64 = 0;
    Vec3f sp58;
    s32 i;
    Vec3f sp48;
    Player* player;

    if (gSaveContext.save.playerData.health <= 16) {
        this->unk_420.info.toucher.damage = 0;
    } else {
        this->unk_420.info.toucher.damage = 4;
    }

    if (!(this->unk_420.base.atFlags & AT_BOUNCED) && (this->unk_420.base.atFlags & AT_HIT)) {
        if ((gSaveContext.save.playerData.health <= 16) && (this->unk_2B0 != 16)) {
            this->unk_2D0 = 2;
            this->subCamId = 0;
            this->picto.actor.flags |= ACTOR_FLAG_100000;

            if (!ActorCutscene_GetCanPlayNext(this->unk_2D6)) {
                ActorCutscene_SetIntentToPlay(this->unk_2D6);
                this->actionFunc = func_80B86804;
            } else {
                ActorCutscene_StartAndSetUnkLinkFields(this->unk_2D6, &this->picto.actor);
                this->subCamId = ActorCutscene_GetCurrentSubCamId(this->picto.actor.cutscene);
                this->actionFunc = func_80B86804;
            }
            return;
        } else if ((this->unk_2B0 == 11) && (this->unk_420.base.at == &GET_PLAYER(play)->actor)) {
            func_800B8D98(play, &this->picto.actor, 3.0f, this->picto.actor.yawTowardsPlayer, 1.0f);
            Health_ChangeBy(play, -12);
            if ((gSaveContext.save.playerData.health <= 16) && (this->unk_2B0 != 16)) {
                Health_ChangeBy(play, 16);
                this->unk_2D0 = 2;
                this->subCamId = 0;
                this->picto.actor.flags |= ACTOR_FLAG_100000;

                if (!ActorCutscene_GetCanPlayNext(this->unk_2D6)) {
                    ActorCutscene_SetIntentToPlay(this->unk_2D6);
                    this->actionFunc = func_80B86804;
                } else {
                    ActorCutscene_StartAndSetUnkLinkFields(this->unk_2D6, &this->picto.actor);
                    this->subCamId = ActorCutscene_GetCurrentSubCamId(this->picto.actor.cutscene);
                    this->actionFunc = func_80B86804;
                }
                return;
            }
        }

        if (this->unk_420.base.at->id == ACTOR_OBJ_TARU) {
            this->unk_420.base.at->home.rot.z = 1;
        }
    }

    if ((this->picto.actor.bgCheckFlags & 8) && this->picto.actor.wallBgId != BG_ACTOR_MAX &&
        (this->unk_2B0 == 2 || this->unk_2B0 == 3 || this->unk_2B0 == 4 || this->unk_2B0 == 1)) {
        func_80B87F70(this);
    }

    if ((this->unk_3D4.base.acFlags & AC_HIT) && this->unk_2B0 > 0 && this->unk_2D0 < 2 && this->unk_2B0 != 6 &&
        this->unk_2B0 != 12 && this->unk_2B0 != 14 && this->unk_2B0 != 15) {
        Actor_SetDropFlag(&this->picto.actor, &this->unk_3D4.info);
        AudioSfx_StopByPosAndId(&this->picto.actor.projectedPos, NA_SE_EN_PIRATE_BREATH);

        switch (this->picto.actor.colChkInfo.damageEffect) {
            case 5:
                if (((this->drawDmgEffType != ACTOR_DRAW_DMGEFF_FROZEN_SFX) &&
                     (this->drawDmgEffType != ACTOR_DRAW_DMGEFF_FROZEN_NO_SFX)) ||
                    (this->unk_2B8 == 0)) {
                    this->unk_2B8 = 40;
                    this->drawDmgEffType = ACTOR_DRAW_DMGEFF_ELECTRIC_SPARKS_MEDIUM;
                }
                /* fallthrough */
            case 1:
                if (((this->drawDmgEffType != ACTOR_DRAW_DMGEFF_FROZEN_SFX) &&
                     (this->drawDmgEffType != ACTOR_DRAW_DMGEFF_FROZEN_NO_SFX)) ||
                    this->unk_2B8 == 0) {
                    Actor_SetColorFilter(&this->picto.actor, 0, 120, 0, 40);
                    this->unk_3D4.info.elemType = 1;
                    this->unk_3D4.base.colType = 3;
                    this->unk_420.info.elemType = 2;
                    func_80B891B8(this);
                }
                break;

            case 15:
                if (this->unk_2B0 != 5 && this->unk_2B0 != 7 && this->unk_2B0 < 14) {
                    sp64 = 1;
                }
                break;

            case 14:
                sp64 = 1;
                break;

            case 13:
                if (this->unk_2B0 == 13) {
                    sp64 = 1;
                } else if (this->unk_2B0 != 6) {
                    func_80B87C7C(this);
                }
                break;

            case 2:
                if (this->unk_2B0 != 5 && this->unk_2B0 != 7 && this->unk_2B0 < 14) {
                    this->unk_2B8 = 40;
                    this->drawDmgEffType = ACTOR_DRAW_DMGEFF_FIRE;
                    sp64 = 1;
                }
                break;

            case 3:
                if (((this->drawDmgEffType != ACTOR_DRAW_DMGEFF_FROZEN_SFX) &&
                     (this->drawDmgEffType != ACTOR_DRAW_DMGEFF_FROZEN_NO_SFX)) ||
                    (this->unk_2B8 == 0)) {
                    Actor_ApplyDamage(&this->picto.actor);
                    this->unk_3D4.info.elemType = 1;
                    this->unk_3D4.base.colType = 3;
                    this->unk_420.info.elemType = 4;
                    this->unk_2B8 = 80;
                    this->drawDmgEffType = ACTOR_DRAW_DMGEFF_FROZEN_SFX;
                    this->drawDmgEffScale = 0.0f;
                    this->drawDmgEffFrozenSteamScale = 1.5f;
                    this->picto.actor.flags &= ~ACTOR_FLAG_400;
                    if (this->picto.actor.colChkInfo.health <= 0) {
                        func_80B8960C(this, play);
                    } else {
                        func_80B891B8(this);
                    }
                }
                break;

            case 4:
                if (((this->drawDmgEffType != ACTOR_DRAW_DMGEFF_FROZEN_SFX) &&
                     (this->drawDmgEffType != ACTOR_DRAW_DMGEFF_FROZEN_NO_SFX)) ||
                    (this->unk_2B8 == 0)) {
                    this->unk_2B8 = 20;
                    this->drawDmgEffType = ACTOR_DRAW_DMGEFF_LIGHT_ORBS;
                    Actor_Spawn(&play->actorCtx, play, ACTOR_EN_CLEAR_TAG, this->picto.actor.focus.pos.x,
                                this->picto.actor.focus.pos.y, this->picto.actor.focus.pos.z, 0, 0, 0,
                                CLEAR_TAG_LARGE_LIGHT_RAYS);
                    sp64 = 1;
                }
                break;
        }

        if (sp64) {
            Actor_SetColorFilter(&this->picto.actor, 0x4000, 255, 0, 8);
            Actor_ApplyDamage(&this->picto.actor);
            if (this->picto.actor.colChkInfo.health <= 0) {
                func_80B8960C(this, play);
                return;
            }

            this->unk_3D4.info.elemType = 1;
            this->unk_3D4.base.colType = 3;
            this->unk_420.info.elemType = 4;
            Math_Vec3f_Copy(&sp58, &this->picto.actor.focus.pos);
            for (i = 0; i < 3; i++) {
                sp58.y += Rand_ZeroFloat(20.0f);
                CollisionCheck_BlueBlood(play, NULL, &sp58);
            }

            func_80B893CC(this, play);
        }
    } else if (this->unk_3D4.base.acFlags & AC_HIT) {
        if ((this->unk_2B0 != 6) && (this->unk_2B0 != 14) && (this->unk_2B0 != 15)) {
            player = GET_PLAYER(play);
            sp48.x = this->unk_3D4.info.bumper.hitPos.x;
            sp48.y = this->unk_3D4.info.bumper.hitPos.y;
            sp48.z = this->unk_3D4.info.bumper.hitPos.z;
            if (player->transformation != PLAYER_FORM_HUMAN) {
                player->unk_B84 = this->picto.actor.yawTowardsPlayer;
                player->unk_B80 = 15.0f;
            }
            this->unk_3D4.base.acFlags &= ~AC_HIT;
            Actor_PlaySfxAtPos(&this->picto.actor, NA_SE_IT_SHIELD_BOUND);
            EffectSsHitmark_SpawnFixedScale(play, 3, &sp48);
            CollisionCheck_SpawnShieldParticlesMetal(play, &sp48);
        }
    }
}

void EnKaizoku_Update(Actor* thisx, PlayState* play2) {
    EnKaizoku* this = THIS;
    PlayState* play = play2;
    Vec3f sp34;
    s32 pad;

    if (this->unk_2D8 == 0) {
        SkelAnime_Update(&this->skelAnime);
    }

    if (this->unk_2B0 != 0) {
        func_80B85900(this);
    }

    if (this->blinkTimer != 0) {
        this->blinkTimer--;
    }
    if (this->unk_2B2 != 0) {
        this->unk_2B2--;
    }
    if (this->unk_2B4 != 0) {
        this->unk_2B4--;
    }
    if (this->unk_2B6 != 0) {
        this->unk_2B6--;
    }
    if (this->unk_598 != 0) {
        this->unk_598--;
    }
    if (this->unk_2B8 != 0) {
        this->unk_2B8--;
    }

    this->actionFunc(this, play);
    Actor_MoveWithGravity(&this->picto.actor);
    if (this->unk_2B0 != 0) {
        func_80B89A08(this, play);
    }
    if (this->unk_2B0 != 0) {
        Actor_SetFocus(&this->picto.actor, 60.0f);
    }

    Actor_SetScale(&this->picto.actor, 0.0125f);
    if (this->blinkTimer == 0) {
        this->eyeIndex++;
        if (this->eyeIndex >= ARRAY_COUNT(sEyeTextures)) {
            this->eyeIndex = 0;
            this->blinkTimer = Rand_S16Offset(20, 60);
        }
    }

    if (this->picto.actor.bgCheckFlags & 1) {
        Matrix_RotateYS(this->picto.actor.shape.rot.y + this->unk_2F4, 0);
        Matrix_MultVecZ(this->unk_2F0, &sp34);
        this->picto.actor.world.pos.x += this->unk_3C4.x + sp34.x;
        this->picto.actor.world.pos.z += this->unk_3C4.z + sp34.z;
        Math_ApproachZeroF(&this->unk_3C4.x, 1.0f, 2.0f);
        Math_ApproachZeroF(&this->unk_3C4.z, 1.0f, 2.0f);
        Math_ApproachZeroF(&this->unk_2F0, 1.0f, 5.0f);
    }

    Actor_UpdateBgCheckInfo(play, &this->picto.actor, 35.0f, 40.0f, 35.0f, 31);
    Collider_UpdateCylinder(&this->picto.actor, &this->unk_3D4);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->unk_3D4.base);
    if (this->unk_2D0 < 2 && this->unk_2B0 != 0) {
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->unk_3D4.base);
    }
    if (this->unk_2D2 > 0) {
        CollisionCheck_SetAT(play, &play->colChkCtx, &this->unk_420.base);
    }
}

s32 EnKaizoku_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnKaizoku* this = THIS;

    OPEN_DISPS(play->state.gfxCtx);
    if (limbIndex == KAIZOKU_LIMB_05) {
        *dList = NULL;
    }

    if (limbIndex == KAIZOKU_LIMB_03) {
        rot->z += this->unk_578;
        rot->x += this->unk_57A;
        rot->y += this->unk_57C;
    } else if (limbIndex == KAIZOKU_LIMB_06) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetEnvColor(POLY_OPA_DISP++, D_80B8AB24[this->unk_2EC].r, D_80B8AB24[this->unk_2EC].g,
                       D_80B8AB24[this->unk_2EC].b, 255);
    } else {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetEnvColor(POLY_OPA_DISP++, D_80B8AB30[this->unk_2EC].r, D_80B8AB30[this->unk_2EC].g,
                       D_80B8AB30[this->unk_2EC].b, 255);
    }

    CLOSE_DISPS(play->state.gfxCtx);
    return false;
}

void EnKaizoku_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    Vec3f sp4C;
    Vec3f sp40;
    EnKaizoku* this = THIS;

    if (limbIndex == KAIZOKU_LIMB_0B) {
        Matrix_MultVec3f(&D_80B8AC9C, &this->unk_420.dim.quad[1]);
        Matrix_MultVec3f(&D_80B8ACA8, &this->unk_420.dim.quad[0]);
        Matrix_MultVec3f(&D_80B8ACB4, &this->unk_420.dim.quad[3]);
        Matrix_MultVec3f(&D_80B8ACC0, &this->unk_420.dim.quad[2]);
        Collider_SetQuadVertices(&this->unk_420, &this->unk_420.dim.quad[0], &this->unk_420.dim.quad[1],
                                 &this->unk_420.dim.quad[2], &this->unk_420.dim.quad[3]);
        Matrix_MultVec3f(&D_80B8AC84, &sp4C);
        Matrix_MultVec3f(&D_80B8AC90, &sp40);
        if ((this->unk_2D2 == 1) && ((this->unk_2B0 == 9) || (this->unk_2B0 == 11))) {
            EffectBlure_AddVertex(Effect_GetByIndex(this->unk_3D0), &sp4C, &sp40);
        } else if (this->unk_2D2 != 0) {
            EffectBlure_AddSpace(Effect_GetByIndex(this->unk_3D0));
            this->unk_2D2 = 0;
        }
    } else {
        Actor_SetFeetPos(&this->picto.actor, limbIndex, KAIZOKU_LIMB_13, &D_80B8AC78, KAIZOKU_LIMB_16, &D_80B8AC78);
    }

    if (limbIndex == KAIZOKU_LIMB_13) {
        Matrix_MultVec3f(&D_80B8AC78, &this->unk_58C);
    } else if (limbIndex == KAIZOKU_LIMB_16) {
        Matrix_MultVec3f(&D_80B8AC78, &this->unk_580);
    }

    if (limbIndex == KAIZOKU_LIMB_02 || limbIndex == KAIZOKU_LIMB_06 || limbIndex == KAIZOKU_LIMB_07 ||
        limbIndex == KAIZOKU_LIMB_08 || limbIndex == KAIZOKU_LIMB_0A || limbIndex == KAIZOKU_LIMB_0C ||
        limbIndex == KAIZOKU_LIMB_0D || limbIndex == KAIZOKU_LIMB_0F || limbIndex == KAIZOKU_LIMB_11 ||
        limbIndex == KAIZOKU_LIMB_12 || limbIndex == KAIZOKU_LIMB_13 || limbIndex == KAIZOKU_LIMB_14 ||
        limbIndex == KAIZOKU_LIMB_15 || limbIndex == KAIZOKU_LIMB_16 || limbIndex == KAIZOKU_LIMB_17) {
        Matrix_MultZero(&this->bodyPartsPos[this->bodyPartsPosIndex]);
        if (++this->bodyPartsPosIndex >= ARRAY_COUNT(this->bodyPartsPos)) {
            this->bodyPartsPosIndex = 0;
        }
    }
}

void EnKaizoku_TransformLimbDraw(PlayState* play, s32 limbIndex, Actor* thisx) {
    EnKaizoku* this = THIS;

    if (limbIndex == KAIZOKU_LIMB_0B) {
        Matrix_Scale(this->unk_2F8.x, this->unk_2F8.y, this->unk_2F8.z, MTXMODE_APPLY);
    }
    if (limbIndex == KAIZOKU_LIMB_10) {
        Matrix_Scale(this->unk_304.x, this->unk_304.y, this->unk_304.z, MTXMODE_APPLY);
    }
}

void EnKaizoku_Draw(Actor* thisx, PlayState* play) {
    f32 pad[4];
    f32 drawDmgEffAlpha;
    EnKaizoku* this = THIS;

    func_8012C2DC(play->state.gfxCtx);
    func_8012C28C(play->state.gfxCtx);

    OPEN_DISPS(play->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeIndex]));
    SkelAnime_DrawTransformFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable,
                                   this->skelAnime.dListCount, EnKaizoku_OverrideLimbDraw, EnKaizoku_PostLimbDraw,
                                   EnKaizoku_TransformLimbDraw, &this->picto.actor);

    if (this->unk_2B8 != 0) {
        drawDmgEffAlpha = this->unk_2B8 * 0.05f;

        if ((this->drawDmgEffType == ACTOR_DRAW_DMGEFF_FROZEN_SFX) ||
            (this->drawDmgEffType == ACTOR_DRAW_DMGEFF_FROZEN_NO_SFX)) {
            this->drawDmgEffScale += 0.3f;
            if (this->drawDmgEffScale > 0.5f) {
                this->drawDmgEffScale = 0.5f;
            }
            Math_ApproachF(&this->drawDmgEffFrozenSteamScale, this->drawDmgEffScale, 0.1f, 0.04f);
        } else {
            this->drawDmgEffScale = 0.8f;
            this->drawDmgEffFrozenSteamScale = 0.8f;
        }

        Actor_DrawDamageEffects(play, &this->picto.actor, this->bodyPartsPos, ARRAY_COUNT(this->bodyPartsPos),
                                this->drawDmgEffScale, this->drawDmgEffFrozenSteamScale, drawDmgEffAlpha,
                                this->drawDmgEffType);
    }

    CLOSE_DISPS(play->state.gfxCtx);
}
