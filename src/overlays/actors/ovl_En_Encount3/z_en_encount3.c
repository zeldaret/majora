/*
 * File: z_en_encount3.c
 * Overlay: ovl_En_Encount3
 * Description: Garo spawner
 */

#include "z_en_encount3.h"

#define FLAGS (ACTOR_FLAG_10 | ACTOR_FLAG_20 | ACTOR_FLAG_CANT_LOCK_ON)

#define THIS ((EnEncount3*)thisx)

void EnEncount3_Init(Actor* thisx, PlayState* play);
void EnEncount3_Destroy(Actor* thisx, PlayState* play);
void EnEncount3_Update(Actor* thisx, PlayState* play2);
void EnEncount3_Draw(Actor* thisx, PlayState* play);

void func_809AD058(EnEncount3* this);

void func_809AD084(EnEncount3* this, PlayState* play);
void func_809AD194(EnEncount3* this, PlayState* play);
void func_809AD1EC(EnEncount3* this, PlayState* play);

ActorInit En_Encount3_InitVars = {
    ACTOR_EN_ENCOUNT3,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_BIG_FWALL,
    sizeof(EnEncount3),
    (ActorFunc)EnEncount3_Init,
    (ActorFunc)EnEncount3_Destroy,
    (ActorFunc)EnEncount3_Update,
    (ActorFunc)EnEncount3_Draw,
};

u32 D_809AD810 = false;

extern UNK_TYPE D_060009A0;

void EnEncount3_Init(Actor* thisx, PlayState* play) {
    EnEncount3* this = THIS;

    this->unk14A = (this->actor.params >> 0xC) & 0xF;
    this->unk158 = (this->actor.params >> 7) & 0x1F;
    this->unk15C = this->actor.params & 0x7F;
    this->unk15A = this->actor.csId;
    this->unk16C = this->actor.world.rot.z * 10.0f;
    if (this->unk16C < 10.0f) {
        this->unk16C = 10.0f;
    } else if (this->unk16C > 1000.0f) {
        this->unk16C = 1000.0f;
    }
    if (this->unk15C == 0x7F) {
        this->unk15C = -1;
    }
    if ((this->unk15C >= 0) && (Flags_GetSwitch(play, this->unk15C) != 0)) {
        Actor_Kill(&this->actor);
    }
    this->actor.flags |= 0x08000000;
    this->actor.flags &= ~ACTOR_FLAG_TARGETABLE;
    func_809AD058(this);
}

void EnEncount3_Destroy(Actor* thisx, PlayState* play) {
}

void func_809AD058(EnEncount3* this) {
    this->unk154 = 0x113;
    this->unk150 = 1;
    this->unk15E = 0x1E;
    this->actionFunc = func_809AD084;
}

void func_809AD084(EnEncount3* this, PlayState* play) {
    if ((this->unk15C >= 0) && (Flags_GetSwitch(play, this->unk15C) != 0)) {
        Actor_Kill(&this->actor);
    } else if (!(this->unk16C < this->actor.xzDistToPlayer) && (Player_GetMask(play) == 6) && (!D_809AD810)) {
        if (this->unk15E > 0) {
            this->unk15E--;
        } else {
            this->unk17C =
                Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, this->unk154, this->actor.world.pos.x,
                                   this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, this->unk158);
            if (this->unk17C != NULL) {
                this->unk14E++;
                D_809AD810 = true;
                this->actionFunc = func_809AD194;
            }
        }
    }
}

void func_809AD194(EnEncount3* this, PlayState* play) {
    if (this->unk14E == 0) {
        this->unk178 = 0.0f;
        if (this->unk15C >= 0) {
            Flags_SetSwitch(play, this->unk15C);
        }
        this->actionFunc = func_809AD1EC;
    }
}

void func_809AD1EC(EnEncount3* this, PlayState* play) {
    if (this->unk174 < 0.002f) {
        D_809AD810 = false;
        Actor_Kill(&this->actor);
    }
}

void EnEncount3_Update(Actor* thisx, PlayState* play2) {
    EnEncount3* this = THIS;
    f32 new_var;
    PlayState* play = play2;
    Player* player = GET_PLAYER(play);
    f32 sp3C;
    f32 sp38;

    this->actionFunc(this, play);
    if (this->actionFunc == func_809AD194) {
        new_var = this->unk16C * 0.52f;
        if (new_var < this->actor.xzDistToPlayer) {
            this->unk178 = ((this->unk16C * 0.03125f) * 0.001f) + 0.1f;
        } else {
            this->unk178 = 0.06f;
        }

        if (((this->unk16C + 50.0f) + BREG(0)) < this->actor.xzDistToPlayer) {
            if (this->actionFunc == func_809AD194) {
                this->unk148 = 0;
                this->unk178 = 0.0f;
                D_809AD810 = false;
                if (((this->unk17C != NULL) && (this->unk17C->update != NULL)) &&
                    (this->unk17C->colChkInfo.health > 0)) {
                    Actor_Kill(this->unk17C);
                    this->unk17C = NULL;
                }
                func_809AD058(this);
            }
        } else if (this->unk16C < this->actor.xzDistToPlayer) {
            s16 i = 0;
            while (i < PLAYER_BODYPART_MAX) {
                player->flameTimers[i++] = Rand_S16Offset(0, 0xC8);
            }
            player->isBurning = 1;

            sp3C = this->actor.world.pos.x - player->actor.world.pos.x;
            sp38 = this->actor.world.pos.z - player->actor.world.pos.z;
            if (Play_InCsMode(play) == 0) {
                func_800B8D50(play, &this->actor, 10.0f, Math_Atan2S_XY(sp38, sp3C), 0.0f, 1U);
            }
        }
        this->unk17C->colChkInfo = this->unk17C->colChkInfo;
    }

    this->unk168 = this->unk16C;
    this->unk168 /= 7666.0f;
    if (this->actionFunc != func_809AD194) {
        Math_ApproachZeroF(&this->unk170, 0.3f, 10.0f);
        Math_ApproachZeroF(&this->unk160, 0.3f, 5.0f);
        if (this->unk160 < 1.0f) {
            play->unk_18880 = 0;
        }
    } else if (this->unk148 != 0) {
        Math_ApproachF(&this->unk170, 255.0f, 0.4f, 10.0f);
        Math_ApproachF(&this->unk160, 60.0f, 0.3f, 5.0f);
    }
    Math_ApproachF(&this->unk174, this->unk178, 0.3f, 0.03f);

    this->unk164 = this->unk160 / 60.0f;
    if (this->unk164 != 0.0f) {
        play->envCtx.lightSettings.fogNear = (0x3C0 - play->envCtx.unk_C4.fogNear) * this->unk164;
        play->envCtx.lightSettings.fogColor[0] = (40.0f - play->envCtx.unk_C4.fogColor[0]) * this->unk164;
        play->envCtx.lightSettings.fogColor[1] = (10.0f - play->envCtx.unk_C4.fogColor[1]) * this->unk164;
        play->envCtx.lightSettings.fogColor[2] = (0.0f - play->envCtx.unk_C4.fogColor[2]) * this->unk164;
    }
}

void EnEncount3_Draw(Actor* thisx, PlayState* play) {
    EnEncount3* this = THIS;
    s32 pad;

    if (this->unk170 > 0.0f) {
        OPEN_DISPS(play->state.gfxCtx);

        Gfx_SetupDL25_Xlu(play->state.gfxCtx);
        Matrix_Push();

        gDPPipeSync(POLY_XLU_DISP++);
        gSPSegment(POLY_XLU_DISP++, 0x08,
                   Gfx_TwoTexScroll(play->state.gfxCtx, 0, (s32)play->gameplayFrames, 0U, 0x20, 0x40, 1,
                                    (s32)play->gameplayFrames * -2, (s32)play->gameplayFrames * -8, 0x20, 0x20));

        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 200, 0, (s8)this->unk170);
        gDPSetEnvColor(POLY_XLU_DISP++, 255, 0, 0, 128);

        Matrix_Translate(this->actor.world.pos.x, this->actor.world.pos.y - 40.0f, this->actor.world.pos.z,
                         MTXMODE_NEW);
        Matrix_Scale(this->unk168, this->unk174, this->unk168, MTXMODE_APPLY);

        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, &D_060009A0);

        Matrix_Pop();
        CLOSE_DISPS(play->state.gfxCtx);
    }
}
