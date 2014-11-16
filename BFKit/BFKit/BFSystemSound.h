//
//  BFSystemSound.h
//  BFKit
//
//  The MIT License (MIT)
//
//  Copyright (c) 2014 Fabrizio Brancati. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

#import <AudioToolbox/AudioToolbox.h>

/**
 *  Audio IDs enum. It's not all IDs
 */
typedef NS_ENUM(NSInteger, AudioID)
{
    AudioIDNewMail = 1000,
    AudioIDMailSent = 1001,
    AudioIDVoiceMail = 1002,
    AudioIDRecivedMessage = 1003,
    AudioIDSentMessage = 1004,
    AudioIDAlarm = 1005,
    AudioIDLowPower = 1006,
    AudioIDSMSReceived1 = 1007,
    AudioIDSMSReceived2 = 1008,
    AudioIDSMSReceived3 = 1009,
    AudioIDSMSReceived4 = 1010,
    AudioIDSMSReceived5 = 1013,
    AudioIDSMSReceived6 = 1014,
    AudioIDTweetSent = 1016,
    AudioIDAnticipate = 1020,
    AudioIDBloom = 1021,
    AudioIDCalypso = 1022,
    AudioIDChooChoo = 1023,
    AudioIDDescent = 1024,
    AudioIDFanfare = 1025,
    AudioIDLadder = 1026,
    AudioIDMinuet = 1027,
    AudioIDNewsFlash = 1028,
    AudioIDNoir = 1029,
    AudioIDSherwoodForest = 1030,
    AudioIDSpell = 1031,
    AudioIDSuspence = 1032,
    AudioIDTelegraph = 1033,
    AudioIDTiptoes = 1034,
    AudioIDTypewriters = 1035,
    AudioIDUpdate = 1036,
    AudioIDTink = 1057,
    AudioIDCTBusy = 1070,
    AudioIDCTCongestion = 1071,
    AudioIDCTPathACK = 1072,
    AudioIDCTError = 1073,
    AudioIDCTCallWaiting = 1074,
    AudioIDCTKeytone = 1075,
    AudioIDLock = 1100,
    AudioIDUnlock = 1101,
    AudioIDTock = 1105,
    AudioIDBeepBeep = 1106,
    AudioIDRingerCharged = 1107,
    AudioIDPhotoShutter = 1108,
    AudioIDShake = 1109,
    AudioIDJBLBegin = 1110,
    AudioIDJBLConfirm = 1111,
    AudioIDJBLCancel = 1112,
    AudioIDJBLNoMatch = 1113,
    AudioIDBeginVideoRecord = 1117,
    AudioIDEndVideoRecord = 1118
};

/**
 *  This class add some useful methods to play system sounds
 */
@interface BFSystemSound : NSObject

/**
 *  Play a system sound from the ID
 *
 *  @param audioID ID of system audio from the AudioID enum
 */
+ (void)playSystemSound:(AudioID)audioID;

/**
 *  Play system sound vibrate
 */
+ (void)playSystemSoundVibrate;

@end
