//
//  BFSystemSound.h
//  BFKit
//
//  The MIT License (MIT)
//
//  Copyright (c) 2014 - 2016 Fabrizio Brancati. All rights reserved.
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

@import AudioToolbox;
@import Foundation;

/**
 *  Audio IDs enum - http://iphonedevwiki.net/index.php/AudioServices
 */
typedef NS_ENUM(NSInteger, AudioID) {
    /**
     *  New Mail
     */
    AudioIDNewMail = 1000,
    /**
     *  Mail Sent
     */
    AudioIDMailSent = 1001,
    /**
     *  Voice Mail
     */
    AudioIDVoiceMail = 1002,
    /**
     *  Recived Message
     */
    AudioIDRecivedMessage = 1003,
    /**
     *  Sent Message
     */
    AudioIDSentMessage = 1004,
    /**
     *  Alerm
     */
    AudioIDAlarm = 1005,
    /**
     *  Low pPower
     */
    AudioIDLowPower = 1006,
    /**
     *  SMS Received 1
     */
    AudioIDSMSReceived1 = 1007,
    /**
     *  SMS Received 2
     */
    AudioIDSMSReceived2 = 1008,
    /**
     *  SMS Received 3
     */
    AudioIDSMSReceived3 = 1009,
    /**
     *  SMS Received 4
     */
    AudioIDSMSReceived4 = 1010,
    /**
     *  SMS Received 5
     */
    AudioIDSMSReceived5 = 1013,
    /**
     *  SMS Received 6
     */
    AudioIDSMSReceived6 = 1014,
    /**
     *  Tweet Sent
     */
    AudioIDTweetSent = 1016,
    /**
     *  Anticipate
     */
    AudioIDAnticipate = 1020,
    /**
     *  Bloom
     */
    AudioIDBloom = 1021,
    /**
     *  Calypso
     */
    AudioIDCalypso = 1022,
    /**
     *  Choo Choo
     */
    AudioIDChooChoo = 1023,
    /**
     *  Descent
     */
    AudioIDDescent = 1024,
    /**
     *  Fanfare
     */
    AudioIDFanfare = 1025,
    /**
     *  Ladder
     */
    AudioIDLadder = 1026,
    /**
     *  Minuet
     */
    AudioIDMinuet = 1027,
    /**
     *  News Flash
     */
    AudioIDNewsFlash = 1028,
    /**
     *  Noir
     */
    AudioIDNoir = 1029,
    /**
     *  Sherwood Forest
     */
    AudioIDSherwoodForest = 1030,
    /**
     *  Speel
     */
    AudioIDSpell = 1031,
    /**
     *  Suspance
     */
    AudioIDSuspence = 1032,
    /**
     *  Telegraph
     */
    AudioIDTelegraph = 1033,
    /**
     *  Tiptoes
     */
    AudioIDTiptoes = 1034,
    /**
     *  Typewriters
     */
    AudioIDTypewriters = 1035,
    /**
     *  Update
     */
    AudioIDUpdate = 1036,
    /**
     *  USSD Alert
     */
    AudioIDUSSDAlert = 1050,
    /**
     *  SIM Toolkit Call Dropped
     */
    AudioIDSIMToolkitCallDropped = 1051,
    /**
     *  SIM Toolkit General Beep
     */
    AudioIDSIMToolkitGeneralBeep = 1052,
    /**
     *  SIM Toolkit Negative ACK
     */
    AudioIDSIMToolkitNegativeACK = 1053,
    /**
     *  SIM Toolkit Positive ACK
     */
    AudioIDSIMToolkitPositiveACK = 1054,
    /**
     *  SIM Toolkit SMS
     */
    AudioIDSIMToolkitSMS = 1055,
    /**
     *  Tink
     */
    AudioIDTink = 1057,
    /**
     *  CT Busy
     */
    AudioIDCTBusy = 1070,
    /**
     *  CT Congestion
     */
    AudioIDCTCongestion = 1071,
    /**
     *  CT Pack ACK
     */
    AudioIDCTPathACK = 1072,
    /**
     *  CT Error
     */
    AudioIDCTError = 1073,
    /**
     *  CT Call Waiting
     */
    AudioIDCTCallWaiting = 1074,
    /**
     *  CT Keytone
     */
    AudioIDCTKeytone = 1075,
    /**
     *  Lock
     */
    AudioIDLock = 1100,
    /**
     *  Unlock
     */
    AudioIDUnlock = 1101,
    /**
     *  Failed Unlock
     */
    AudioIDFailedUnlock = 1102,
    /**
     *  Keypressed Tink
     */
    AudioIDKeypressedTink = 1103,
    /**
     *  Keypressed Tock
     */
    AudioIDKeypressedTock = 1104,
    /**
     *  Tock
     */
    AudioIDTock = 1105,
    /**
     *  Beep Beep
     */
    AudioIDBeepBeep = 1106,
    /**
     *  Ringer Charged
     */
    AudioIDRingerCharged = 1107,
    /**
     *  Photo Shutter
     */
    AudioIDPhotoShutter = 1108,
    /**
     *  Shake
     */
    AudioIDShake = 1109,
    /**
     *  JBL Begin
     */
    AudioIDJBLBegin = 1110,
    /**
     *  JBL Confirm
     */
    AudioIDJBLConfirm = 1111,
    /**
     *  JBL Cancel
     */
    AudioIDJBLCancel = 1112,
    /**
     *  Begin Recording
     */
    AudioIDBeginRecording = 1113,
    /**
     *  End Recording
     */
    AudioIDEndRecording = 1114,
    /**
     *  JBL Ambiguous
     */
    AudioIDJBLAmbiguous = 1115,
    /**
     *  JBL No Match
     */
    AudioIDJBLNoMatch = 1116,
    /**
     *  Begin Video Record
     */
    AudioIDBeginVideoRecord = 1117,
    /**
     *  End Video Record
     */
    AudioIDEndVideoRecord = 1118,
    /**
     *  VC Invitation Accepted
     */
    AudioIDVCInvitationAccepted = 1150,
    /**
     *  VC Ringing
     */
    AudioIDVCRinging = 1151,
    /**
     *  VC Ended
     */
    AudioIDVCEnded = 1152,
    /**
     *  VC Call Waiting
     */
    AudioIDVCCallWaiting = 1153,
    /**
     *  VC Call Upgrade
     */
    AudioIDVCCallUpgrade = 1154,
    /**
     *  Touch Tone 1
     */
    AudioIDTouchTone1 = 1200,
    /**
     *  Touch Tone 2
     */
    AudioIDTouchTone2 = 1201,
    /**
     *  Touch Tone 3
     */
    AudioIDTouchTone3 = 1202,
    /**
     *  Touch Tone 4
     */
    AudioIDTouchTone4 = 1203,
    /**
     *  Touch Tone 5
     */
    AudioIDTouchTone5 = 1204,
    /**
     *  Touch Tone 6
     */
    AudioIDTouchTone6 = 1205,
    /**
     *  Touch Tone 7
     */
    AudioIDTouchTone7 = 1206,
    /**
     *  Touch Tone 8
     */
    AudioIDTouchTone8 = 1207,
    /**
     *  Touch Tone 9
     */
    AudioIDTouchTone9 = 1208,
    /**
     *  Touch Tone 10
     */
    AudioIDTouchTone10 = 1209,
    /**
     *  Tone Star
     */
    AudioIDTouchToneStar = 1210,
    /**
     *  Tone Pound
     */
    AudioIDTouchTonePound = 1211,
    /**
     *  Headset Start Call
     */
    AudioIDHeadsetStartCall = 1254,
    /**
     *  Headset Redial
     */
    AudioIDHeadsetRedial = 1255,
    /**
     *  Headset Answer Call
     */
    AudioIDHeadsetAnswerCall = 1256,
    /**
     *  Headset End Call
     */
    AudioIDHeadsetEndCall = 1257,
    /**
     *  Headset Call Waiting Actions
     */
    AudioIDHeadsetCallWaitingActions = 1258,
    /**
     *  Headset Transition End
     */
    AudioIDHeadsetTransitionEnd = 1259,
    /**
     *  Voicemail
     */
    AudioIDVoicemail = 1300,
    /**
     *  Received Message
     */
    AudioIDReceivedMessage = 1301,
    /**
     *  New Mail 2
     */
    AudioIDNewMail2 = 1302,
    /**
     *  Email Sent 2
     */
    AudioIDMailSent2 = 1303,
    /**
     *  Alarm 2
     */
    AudioIDAlarm2 = 1304,
    /**
     *  Lock 2
     */
    AudioIDLock2 = 1305,
    /**
     *  Tock 2
     */
    AudioIDTock2 = 1306,
    /**
     *  SMS Received 7
     */
    AudioIDSMSReceived1_2 = 1307,
    /**
     *  SMS Received 8
     */
    AudioIDSMSReceived2_2 = 1308,
    /**
     *  SMS Received 9
     */
    AudioIDSMSReceived3_2 = 1309,
    /**
     *  SMS Received 10
     */
    AudioIDSMSReceived4_2 = 1310,
    /**
     *  SMS Received Vibrate
     */
    AudioIDSMSReceivedVibrate = 1311,
    /**
     *  SMS Received 11
     */
    AudioIDSMSReceived1_3 = 1312,
    /**
     *  SMS Received 12
     */
    AudioIDSMSReceived5_3 = 1313,
    /**
     *  SMS Received 13
     */
    AudioIDSMSReceived6_3 = 1314,
    /**
     *  Voicemail 2
     */
    AudioIDVoicemail2 = 1315,
    /**
     *  Anticipate 2
     */
    AudioIDAnticipate2 = 1320,
    /**
     *  Bloom 2
     */
    AudioIDBloom2 = 1321,
    /**
     *  Calypso 2
     */
    AudioIDCalypso2 = 1322,
    /**
     *  Choo Choo 2
     */
    AudioIDChooChoo2 = 1323,
    /**
     *  Descent 2
     */
    AudioIDDescent2 = 1324,
    /**
     *  Fanfare 2
     */
    AudioIDFanfare2 = 1325,
    /**
     *  Ladder 2
     */
    AudioIDLadder2 = 1326,
    /**
     *  Minuet 2
     */
    AudioIDMinuet2 = 1327,
    /**
     *  News Flash 2
     */
    AudioIDNewsFlash2 = 1328,
    /**
     *  Noir 2
     */
    AudioIDNoir2 = 1329,
    /**
     *  Sherwood Forest 2
     */
    AudioIDSherwoodForest2 = 1330,
    /**
     *  Speel 2
     */
    AudioIDSpell2 = 1331,
    /**
     *  Suspence 2
     */
    AudioIDSuspence2 = 1332,
    /**
     *  Telegraph 2
     */
    AudioIDTelegraph2 = 1333,
    /**
     *  Tiptoes 2
     */
    AudioIDTiptoes2 = 1334,
    /**
     *  Typewriters 2
     */
    AudioIDTypewriters2 = 1335,
    /**
     *  Update 2
     */
    AudioIDUpdate2 = 1336,
    /**
     *  Ringer View Changed
     */
    AudioIDRingerVibeChanged = 1350,
    /**
     *  Silent View Changed
     */
    AudioIDSilentVibeChanged = 1351,
    /**
     *  Vibrate
     */
    AudioIDVibrate = 4095
};

/**
 *  This class adds some useful methods to play system sounds
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

/**
 *  Play custom sound with url
 *
 *  @param soundURL Sound URL
 *
 *  @return Returns the SystemSoundID
 */
+ (SystemSoundID)playCustomSound:(NSURL * _Nonnull)soundURL;

/**
 *  Dispose custom sound
 *
 *  @param soundID SystemSoundID
 *
 *  @return Returns YES if has been disposed, otherwise NO
 */
+ (BOOL)disposeSound:(SystemSoundID)soundID;

@end
