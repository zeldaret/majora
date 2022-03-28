#ifndef Z64RUMBLE_H
#define Z64RUMBLE_H

#include "PR/ultratypes.h"
#include "io/controller.h"

typedef struct RumbleManager {
    /* 0x000 */ u8 rumbleEnabled[MAXCONTROLLERS];
    /* 0x004 */ u8 unk_04[0x40];
    /* 0x044 */ u8 unk_44[0x40]; // delay timer?
    /* 0x084 */ u8 unk_84[0x40];
    /* 0x0C4 */ u8 unk_C4[0x40];
    /* 0x104 */ u8 unk_104; // state?
    /* 0x105 */ u8 unk_105; // seems to be a boolean value which controls updating the instance. Maybe updateEnabled?
    /* 0x106 */ u16 unk_106;
    /* 0x108 */ u16 unk_108;
    /* 0x10A */ u8 unk_10A;
    /* 0x10B */ u8 unk_10B; // delay timer?
    /* 0x10C */ u8 unk_10C;
    /* 0x10D */ u8 unk_10D;
} RumbleManager; // size = 0x10E

void func_8013EC44(f32 distSq, u8 arg1, u8 arg2, u8 arg3);
void func_8013ECE0(f32 distSq, u8 arg1, u8 arg2, u8 arg3);
void Rumble_Init(void);
void Rumble_Destroy(void);
s32 Rumble_ControllerOneHasRumblePak(void);
void func_8013EE24(void);
void func_8013EE38(void);
void func_8013EE48(s32 arg0);

void RumbleManager_Update(RumbleManager* rumbleMgr);
void RumbleManager_Init(RumbleManager* rumbleMgr);
void RumbleManager_Destroy(RumbleManager* rumbleMgr);

#endif
