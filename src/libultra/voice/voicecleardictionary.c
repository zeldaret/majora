#include "global.h"

/**
 * Initializes Voice Recognition System word registration dictionary.
 *
 * The dictionary is initialized so that the specified "numWords" can be
 * registered in the dictionary. 1-255 words can be registered in the dictionary.
 *
 * Words cannot be registered with the osVoiceSetWord before the dictionary
 * is initialized with the osVoiceClearDictionary function
 */
s32 osVoiceClearDictionary(OSVoiceHandle* hd, u8 numWords) {
    u8* data; // u8 data[4];
    u8 status;
    u32 data32; // data[4] as u32
    s32 errorCode;

    errorCode = __osVoiceGetStatus(hd->mq, hd->port, &status);
    if (errorCode != 0) {
        return errorCode;
    }

    data = (u8*)&data32;

    if (status & 2) {
        return CONT_ERR_VOICE_NO_RESPONSE;
    }

    /**
     * data[0] = 2
     * data[1] = 0
     * data[2] = numWords
     * data[3] = 0
     */
    data32 = 0x2000000;
    data[2] = numWords;

    errorCode = __osVoiceContWrite4(hd->mq, hd->port, 0, data);
    if (errorCode != 0) {
        return errorCode;
    }

    errorCode = __osVoiceCheckResult(hd, &status);
    if (errorCode & 0xFF00) {
        errorCode = CONT_ERR_INVALID;
    }

    return errorCode;
}
