#include "global.h"
#include "z64rumble.h"

RumbleManager gRumbleMgr;

void Rumble_Update(void* arg0) {
    RumbleManager_Update(&gRumbleMgr);
    PadMgr_RumbleSet(gRumbleMgr.rumbleEnabled);
}

// Used by some bosses (and fishing)
void Rumble_Override(f32 distSq, u8 arg1, u8 arg2, u8 decreaseStep) {
    s32 temp;
    s32 distance;

    if (SQ(1000.0f) < distSq) {
        distance = 1000;
    } else {
        distance = sqrtf(distSq);
    }

    if ((distance < 1000) && (arg1 != 0) && (decreaseStep != 0)) {
        temp = arg1 - (distance * 255) / 1000;

        if (temp > 0) {
            gRumbleMgr.unk_10A = temp;
            gRumbleMgr.unk_10B = arg2;
            gRumbleMgr.overrideDecreaseStep = decreaseStep;
        }
    }
}

void Rumble_Request(f32 distSq, u8 arg1, u8 arg2, u8 decreaseStep) {
    s32 temp;
    s32 distance;
    s32 i;

    if (SQ(1000.0f) < distSq) {
        distance = 1000;
    } else {
        distance = sqrtf(distSq);
    }

    if ((distance < 1000) && (arg1 != 0) && (decreaseStep != 0)) {
        temp = arg1 - (distance * 255) / 1000;

        for (i = 0; i < RUMBLE_REQUEST_BUFFER_SIZE; i++) {
            if (gRumbleMgr.unk_04[i] == 0) {
                if (temp > 0) {
                    gRumbleMgr.unk_04[i] = temp;
                    gRumbleMgr.unk_44[i] = arg2;
                    gRumbleMgr.decreaseStep[i] = decreaseStep;
                }
                break;
            }
        }
    }
}

void Rumble_Init(void) {
    RumbleManager_Init(&gRumbleMgr);
    func_80174F24(Rumble_Update, NULL);
}

void Rumble_Destroy(void) {
    func_80174F44(Rumble_Update, NULL);
    RumbleManager_Destroy(&gRumbleMgr);
}

s32 Rumble_ControllerOneHasRumblePak(void) {
    return PadMgr_ControllerHasRumblePak(0);
}

/**
 * Wipes every old request for a fresh start, then proceeds to process them as normal
 */
void Rumble_StateReset(void) {
    gRumbleMgr.state = RUMBLEMANAGER_STATE_INITIAL;
}

/**
 * Changes the state of the manager to WIPE
 * 
 * On this state, every request is deleted
 */
void Rumble_StateWipeRequests(void) {
    gRumbleMgr.state = RUMBLEMANAGER_STATE_WIPE;
}

/**
 * Request processing is paused if updateEnabled is set to false
 */
void Rumble_SetUpdateEnabled(s32 updateEnabled) {
    gRumbleMgr.updateEnabled = !!updateEnabled;
}
