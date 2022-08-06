/*
 * File: z_bg_dkjail_ivy.c
 * Overlay: ovl_Bg_Dkjail_Ivy
 * Description: Cuttable Ivy wall (beneath Woodfall Temple, Swamp Spider House)
 */

#include "z_bg_dkjail_ivy.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"
#include "assets/objects/object_dkjail_obj/object_dkjail_obj.h"

#define FLAGS 0x00000000

#define THIS ((BgDkjailIvy*)thisx)

void BgDkjailIvy_Init(Actor* thisx, PlayState* play);
void BgDkjailIvy_Destroy(Actor* thisx, PlayState* play);
void BgDkjailIvy_Update(Actor* thisx, PlayState* play);
void BgDkjailIvy_Draw(Actor* thisx, PlayState* play);

void func_80ADE6AC(BgDkjailIvy* this);
void BgDkjailIvy_SetCollision(BgDkjailIvy* this, PlayState* play);
void func_80ADE734(BgDkjailIvy* this);
void BgDkjailIvy_SetupCutscene(BgDkjailIvy* this, PlayState* play);
void func_80ADE7E0(BgDkjailIvy* this);
void BgDkjailIvy_FadeOut(BgDkjailIvy* this, PlayState* play);

const ActorInit Bg_Dkjail_Ivy_InitVars = {
    ACTOR_BG_DKJAIL_IVY,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_DKJAIL_OBJ,
    sizeof(BgDkjailIvy),
    (ActorFunc)BgDkjailIvy_Init,
    (ActorFunc)BgDkjailIvy_Destroy,
    (ActorFunc)BgDkjailIvy_Update,
    (ActorFunc)BgDkjailIvy_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x01000200, 0x00, 0x00 },
        TOUCH_NONE | TOUCH_SFX_NORMAL,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 20, 80, 0, { 0, 0, 0 } },
};

static Gfx* sLeafDlists[] = { gKakeraLeafMiddle, gKakeraLeafTip };

static s16 sLeafScales[] = { 110, 80, 60, 40 };

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneForward, 4000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 200, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgDkjailIvy_IvyCutEffects(BgDkjailIvy* this, PlayState* play) {
    f32 phi_fs0;
    s32 i;
    Vec3f spD4;
    Vec3f spC8;
    Vec3f spBC;
    Vec3f spB0;
    s16 i2;

    Matrix_RotateYS(this->dyna.actor.home.rot.y, MTXMODE_NEW);

    for (i = 0, i2 = 0; i < 50; i++, i2 += 0x4e20) {
        spD4.y = (i * (90.0f / 49.0f)) + 2.0f;
        if (spD4.y < 45.0f) {
            phi_fs0 = ((1.0f / 180.0f) * spD4.y) + 0.75f;
        } else if (spD4.y < 90.0f) {
            phi_fs0 = ((-1.0f / 180.0f) * spD4.y) + 1.25f;
        } else {
            phi_fs0 = ((-1.0f / 30.0f) * spD4.y) + 3.75f;
        }

        spD4.x = Math_SinS(i2) * 40.0f * phi_fs0;
        spD4.z = (Rand_ZeroOne() * 6.0f) - 3.0f;

        Matrix_MultVec3f(&spD4, &spC8);

        spBC.x = (Rand_ZeroOne() - 0.5f) + (spC8.x * 0.075f);
        spBC.y = 2.0f * Rand_ZeroOne();
        spBC.z = (Rand_ZeroOne() - 0.5f) + (spC8.z * 0.075f);

        spC8.x += this->dyna.actor.world.pos.x;
        spC8.y += this->dyna.actor.world.pos.y;
        spC8.z += this->dyna.actor.world.pos.z;

        EffectSsKakera_Spawn(play, &spC8, &spBC, &spC8, -0x82, 0x40, 0x28, 0, 0, sLeafScales[i & 3], 0, 0, 44, -1,
                             GAMEPLAY_KEEP, sLeafDlists[(s32)Rand_Next() > 0]);

        if ((i > 20) && ((i & 1) != 0)) {
            spB0.x = (Rand_ZeroOne() - 0.5f) * 0.2f;
            spB0.y = (Rand_ZeroOne() * 0.02f) - 0.1f;
            spB0.z = (Rand_ZeroOne() - 0.5f) * 0.2f;

            func_800B12F0(play, &spC8, &gZeroVec3f, &spB0, ((Rand_Next() >> 26) + 10), (Rand_Next() >> 28), 50);
        }
    }
}

void BgDkjailIvy_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    BgDkjailIvy* this = THIS;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyActor_Init(&this->dyna, 0);
    Collider_InitCylinder(play, &this->collider);

    if (Flags_GetSwitch(play, BG_DKJAIL_GET_SWITCH(thisx))) {
        Actor_MarkForDeath(&this->dyna.actor);
    } else {
        DynaPolyActor_LoadMesh(play, &this->dyna, &object_dkjail_obj_Colheader_0011A8);
        Collider_SetCylinder(play, &this->collider, &this->dyna.actor, &sCylinderInit);
        Collider_UpdateCylinder(&this->dyna.actor, &this->collider);
        this->alpha = 255;
        func_80ADE6AC(this);
    }
}

void BgDkjailIvy_Destroy(Actor* thisx, PlayState* play) {
    BgDkjailIvy* this = THIS;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
    Collider_DestroyCylinder(play, &this->collider);
}

void func_80ADE6AC(BgDkjailIvy* this) {
    this->actionFunc = BgDkjailIvy_SetCollision;
}

void BgDkjailIvy_SetCollision(BgDkjailIvy* this, PlayState* play) {
    if (this->collider.base.acFlags & AC_HIT) {
        this->collider.base.acFlags &= ~AC_HIT;
        this->dyna.actor.flags |= ACTOR_FLAG_10;
        ActorCutscene_SetIntentToPlay(this->dyna.actor.cutscene);
        func_80ADE734(this);
    } else {
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
    }
}

void func_80ADE734(BgDkjailIvy* this) {
    this->actionFunc = BgDkjailIvy_SetupCutscene;
}

void BgDkjailIvy_SetupCutscene(BgDkjailIvy* this, PlayState* play) {
    if (ActorCutscene_GetCanPlayNext(this->dyna.actor.cutscene)) {
        ActorCutscene_StartAndSetUnkLinkFields(this->dyna.actor.cutscene, &this->dyna.actor);
        this->fadeOutTimer = 50;
        func_800C62BC(play, &play->colCtx.dyna, this->dyna.bgId);
        Flags_SetSwitch(play, BG_DKJAIL_GET_SWITCH(&this->dyna.actor));
        BgDkjailIvy_IvyCutEffects(this, play);
        Actor_PlaySfxAtPos(&this->dyna.actor, NA_SE_EV_GRASS_WALL_BROKEN);
        func_80ADE7E0(this);
    } else {
        ActorCutscene_SetIntentToPlay(this->dyna.actor.cutscene);
    }
}

void func_80ADE7E0(BgDkjailIvy* this) {
    this->actionFunc = BgDkjailIvy_FadeOut;
}

void BgDkjailIvy_FadeOut(BgDkjailIvy* this, PlayState* play) {
    if (this->alpha > 8) {
        this->alpha -= 8;
    } else {
        this->alpha = 0;
        this->dyna.actor.draw = NULL;
    }
    this->fadeOutTimer--;
    if (this->fadeOutTimer <= 0) {
        Actor_MarkForDeath(&this->dyna.actor);
    }
}

void BgDkjailIvy_Update(Actor* thisx, PlayState* play) {
    BgDkjailIvy* this = THIS;

    this->actionFunc(this, play);
}

void BgDkjailIvy_Draw(Actor* thisx, PlayState* play) {
    BgDkjailIvy* this = THIS;

    OPEN_DISPS(play->state.gfxCtx);

    func_8012C2DC(play->state.gfxCtx);

    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0xFF, 255, 255, 255, this->alpha);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, &gDkjailIvyDL);

    CLOSE_DISPS(play->state.gfxCtx);
}
