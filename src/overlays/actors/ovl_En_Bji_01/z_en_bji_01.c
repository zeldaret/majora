#include "z_en_bji_01.h"

#define FLAGS 0x00000019

#define THIS ((EnBji01*)thisx)

void EnBji01_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBji01_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBji01_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBji01_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809CCE98(EnBji01* this, GlobalContext* globalCtx);
void func_809CCEE8(EnBji01* this, GlobalContext* globalCtx);
void func_809CD328(EnBji01* this, GlobalContext* globalCtx);
void func_809CD6B0(EnBji01* this, GlobalContext* globalCtx);
void func_809CD77C(EnBji01* this, GlobalContext* globalCtx);
void func_809CD70C(EnBji01* this, GlobalContext* globalCtx);
void func_809CD6C0(EnBji01* this, GlobalContext* globalCtx);

extern FlexSkeletonHeader D_0600578C;
extern AnimationHeader D_06000FDC;

extern ColliderCylinderInit D_809CDC50;
extern struct_80B8E1A8 D_809CDC7C[4]; /*Type is unconfirmed, but likely this*/
extern s16 D_809CDCBC[6]; /*Type is unconfirmed, but likely this*/

/*
const ActorInit En_Bji_01_InitVars = {
    ACTOR_EN_BJI_01,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_BJI,
    sizeof(EnBji01),
    (ActorFunc)EnBji01_Init,
    (ActorFunc)EnBji01_Destroy,
    (ActorFunc)EnBji01_Update,
    (ActorFunc)EnBji01_Draw,
};
*/

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bji_01_0x809CCDE0/func_809CCDE0.asm")

/*#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bji_01_0x809CCDE0/func_809CCE98.asm")*/

void func_809CCE98(EnBji01* this, GlobalContext* globalCtx) /*globalCtx likely but unconfirmed*/ {
    func_8013E1C8(&this->skelAnime, &D_809CDC7C, 0, &this->unk_298);
    this->actor.textId = 0;
    this->actionFunc = func_809CCEE8;
}

/*#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bji_01_0x809CCDE0/func_809CCEE8.asm")*/

void func_809CCEE8(EnBji01 *this, GlobalContext *globalCtx) {

    Math_ScaledStepToS(&this->actor.shape.rot.y, this->actor.home.rot.y, 0x444);
    if (this->actor.params == 0) {
        if ((this->actor.xzDistToPlayer <= 60.0f) && (this->actor.yDistToPlayer <= 10.0f)) {
            this->actor.flags |= 0x10000;
        } else {
            this->actor.flags &= 0xFFFEFFFF;
        }
    }
    if (func_800B84D0((Actor *) this, globalCtx) != 0) {
        globalCtx->msgCtx.unk11F22 = 0;
        globalCtx->msgCtx.unk11F10 = 0;
        func_809CD028(this, globalCtx);
    }
    else {
        if (this->moonsTear != NULL) {
            if (this->moonsTear->actor.colChkInfo.health == 1) {
                func_809CD6C0(this, globalCtx);
                return;
            }
	} else {
    	    this->moonsTear = (ObjMoonStone*) func_ActorCategoryIterateById(globalCtx, NULL, ACTORCAT_PROP, ACTOR_OBJ_MOON_STONE);
        }
        func_800B8500((Actor *) this, globalCtx, 60.0f, 10.0f, 0);
    }
}


#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bji_01_0x809CCDE0/func_809CD028.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bji_01_0x809CCDE0/func_809CD328.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bji_01_0x809CCDE0/func_809CD634.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bji_01_0x809CCDE0/func_809CD6B0.asm")

/*#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bji_01_0x809CCDE0/func_809CD6C0.asm")*/

void func_809CD6C0(EnBji01 *this, GlobalContext *globalCtx) {
    func_8013E1C8(&this->skelAnime, D_809CDC7C, 2, &this->unk_298);
    this->actionFunc = func_809CD70C;
}

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bji_01_0x809CCDE0/func_809CD70C.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bji_01_0x809CCDE0/func_809CD77C.asm")

/*#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bji_01_0x809CCDE0/EnBji01_Init.asm")*/

void EnBji01_Init(Actor* thisx, GlobalContext* globalCtx) {

    EnBji01* this = THIS;

    ActorShape_Init(&this->actor.shape, 0.0f, func_800B3FC0, 30.0f);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_0600578C, &D_06000FDC, this->jointTable, this->morphTable, 0x10);
    Collider_InitAndSetCylinder(globalCtx, &this->collider, &this->actor, &D_809CDC50);

    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    this->actor.targetMode = 0;
    this->actor.child = NULL;
    this->unk_298 = -1;

    Actor_SetScale(&this->actor, 0.01f);
    func_8013E3B8(&this->actor, &this->unk_2AC, 1);
    this->moonsTear = func_ActorCategoryIterateById(globalCtx, NULL, ACTORCAT_PROP, ACTOR_OBJ_MOON_STONE);

    switch (gSaveContext.entranceIndex) {
        case 0x4C00: /* Observatory from ECT */
        case 0x4C10: /* Observatory from Termina Field door */
            this->actor.params = 0;
            func_809CCE98(&this->actor, globalCtx);
            break;
        case 0x4C20: /* Observatory from Termina Field telescope */
            this->actor.flags |= 0x10000;
            func_801A5BD0(0);
            func_801A89A8(0xE0000100);
            this->actor.params = 3;
            func_809CCE98(&this->actor, globalCtx);
            break;
        default:
            Actor_MarkForDeath(&this->actor);
            break;
    }

}


/*#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bji_01_0x809CCDE0/EnBji01_Destroy.asm")*/

void EnBji01_Destroy(Actor* thisx, GlobalContext *globalCtx) {

    EnBji01* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);

}

/*#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bji_01_0x809CCDE0/EnBji01_Update.asm")*/

void EnBji01_Update(Actor *thisx, GlobalContext *globalCtx) {
    ColliderCylinder *sp28;
    ColliderCylinder *temp_a2;
    s16 temp_v0;
    s16 temp_v0_2;

    this->actionFunc(this, globalCtx);
    Actor_UpdateBgCheckInfo(globalCtx, (Actor *) this, 0.0f, 0.0f, 0.0f, 4U);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    temp_v0 = this->unk2A0;
    this->unk2A0 = (s16) (temp_v0 - 1);
    if ((s32) temp_v0 <= 0) {
        this->unk29E = (s16) (this->unk29E - 1);
        temp_v0_2 = this->unk29E;
        if ((s32) temp_v0_2 < 0) {
            this->unk29E = 4;
            this->unk2A0 = (s16) (s32) ((Rand_ZeroOne() * 60.0f) + 20.0f);
        } else {
            this->unk_29C = D_809CDCBC[temp_v0_2];
        }
    }
    Actor_SetHeight((Actor *) this, 40.0f);
    temp_a2 = &this->collider;
    sp28 = temp_a2;
    Collider_UpdateCylinder((Actor *) this, temp_a2);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, (Collider *) temp_a2);
}


#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bji_01_0x809CCDE0/func_809CDA4C.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bji_01_0x809CCDE0/func_809CDB04.asm")

#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Bji_01_0x809CCDE0/EnBji01_Draw.asm")
