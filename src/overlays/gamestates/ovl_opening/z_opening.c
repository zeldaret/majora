/*
 * File: z_opening.c
 * Overlay: ovl_opening
 * Description: Initializes the game into the title screen
 */

#include "z_opening.h"

void TitleSetup_SetupTitleScreen(TitleSetupState* this) {
    static s32 sOpeningEntrances[] = { ENTRANCE(CUTSCENE, 0), ENTRANCE(CUTSCENE, 1) };
    static s32 sOpeningCutscenes[] = { 0xFFFA, 0xFFFA };

    gSaveContext.eventInf[1] &= (u8)~0x80;
    gSaveContext.gameMode = 1;

    Sram_InitNewSave();

    gSaveContext.save.entrance = sOpeningEntrances[D_801BB12C];
    gSaveContext.nextCutsceneIndex = gSaveContext.save.cutscene = sOpeningCutscenes[D_801BB12C];
    gSaveContext.sceneSetupIndex = 0;

    gSaveContext.save.time = CLOCK_TIME(8, 0);
    gSaveContext.save.day = 1;

    STOP_GAMESTATE(&this->state);
    NEXT_GAMESTATE(&this->state, Play_Init, sizeof(PlayState));

    gSaveContext.save.playerForm = PLAYER_FORM_HUMAN;
}

void func_80803EA0(TitleSetupState* this) {
    SREG(33) |= 1;
}

void TitleSetup_Main(GameState* thisx) {
    TitleSetupState* this = (TitleSetupState*)thisx;

    func_8012CF0C(this->state.gfxCtx, false, true, 0, 0, 0);
    TitleSetup_SetupTitleScreen(this);
    func_80803EA0(this);
}

void TitleSetup_Destroy(GameState* thisx) {
    ShrinkWindow_Destroy();
}

void TitleSetup_Init(GameState* thisx) {
    TitleSetupState* this = (TitleSetupState*)thisx;

    Game_SetFramerateDivisor(&this->state, 1);
    Matrix_Init(&this->state);
    ShrinkWindow_Init();
    View_Init(&this->view, this->state.gfxCtx);
    this->state.main = TitleSetup_Main;
    this->state.destroy = TitleSetup_Destroy;

    gSaveContext.respawnFlag = 0;
    gSaveContext.respawn[RESPAWN_MODE_GORON].entrance = 0xFF;
    gSaveContext.respawn[RESPAWN_MODE_ZORA].entrance = 0xFF;
    gSaveContext.respawn[RESPAWN_MODE_DEKU].entrance = 0xFF;
    gSaveContext.respawn[RESPAWN_MODE_HUMAN].entrance = 0xFF;
}
