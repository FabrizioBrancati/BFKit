//
//  UIFont+BFKit.h
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

@import Foundation;
@import UIKit;

/**
 *  All font family names available from iOS 7.0 to iOS 9.0
 */
typedef NS_ENUM(NSInteger, FamilyFontName) {
    /**
     *  Academy Engraved LET
     */
    FamilyFontNameAcademyEngravedLET = 0,
    /**
     *  Al Nile
     */
    FamilyFontNameAlNile,
    /**
     *  American Typewriter
     */
    FamilyFontNameAmericanTypewriter,
    /**
     *  Apple Color Emoji
     */
    FamilyFontNameAppleColorEmoji,
    /**
     *  Apple SD Gothic Neo
     */
    FamilyFontNameAppleSDGothicNeo,
    /**
     *  Arial
     */
    FamilyFontNameArial,
    /**
     *  Arial Hebrew
     */
    FamilyFontNameArialHebrew,
    /**
     *  Arial Rounded MT Bold
     */
    FamilyFontNameArialRoundedMTBold,
    /**
     *  Avenir
     */
    FamilyFontNameAvenir,
    /**
     *  Avenir Next
     */
    FamilyFontNameAvenirNext,
    /**
     *  Avenir Next Condensed
     */
    FamilyFontNameAvenirNextCondensed,
    /**
     *  Bangla Sangam MN
     */
    FamilyFontNameBanglaSangamMN NS_ENUM_DEPRECATED_IOS(7_0, 8_0, "This font is not available after iOS 8"),
    /**
     *  Baskerville
     */
    FamilyFontNameBaskerville,
    /**
     *  Bodoni 72
     */
    FamilyFontNameBodoni72,
    /**
     *  Bodoni 72 Oldstyle
     */
    FamilyFontNameBodoni72Oldstyle,
    /**
     *  Bodoni 72 Smallcaps
     */
    FamilyFontNameBodoni72Smallcaps,
    /**
     *  Bodoni Ornaments
     */
    FamilyFontNameBodoniOrnaments,
    /**
     *  Bradley Hand
     */
    FamilyFontNameBradleyHand,
    /**
     *  Chalkboard SE
     */
    FamilyFontNameChalkboardSE,
    /**
     *  Chalkduster
     */
    FamilyFontNameChalkduster,
    /**
     *  Cochin
     */
    FamilyFontNameCochin,
    /**
     *  Copperplate
     */
    FamilyFontNameCopperplate,
    /**
     *  Courier
     */
    FamilyFontNameCourier,
    /**
     *  Courier New
     */
    FamilyFontNameCourierNew,
    /**
     *  Damascus
     */
    FamilyFontNameDamascus,
    /**
     *  Devanagari Sangam MN
     */
    FamilyFontNameDevanagariSangamMN,
    /**
     *  Didot
     */
    FamilyFontNameDidot,
    /**
     *  DIN Alternate
     */
    FamilyFontNameDINAlternate NS_ENUM_DEPRECATED_IOS(7_0, 8_0, "This font is not available after iOS 8"),
    /**
     *  DIN Condensed
     */
    FamilyFontNameDINCondensed NS_ENUM_DEPRECATED_IOS(7_0, 8_0, "This font is not available after iOS 8"),
    /**
     *  Euphemia UCAS
     */
    FamilyFontNameEuphemiaUCAS,
    /**
     *  Farah
     */
    FamilyFontNameFarah,
    /**
     *  Futura
     */
    FamilyFontNameFutura,
    /**
     *  Geeza Pro
     */
    FamilyFontNameGeezaPro,
    /**
     *  Georgia
     */
    FamilyFontNameGeorgia,
    /**
     *  Gill Sans
     */
    FamilyFontNameGillSans,
    /**
     *  Gujarati Sangem MN
     */
    FamilyFontNameGujaratiSangemMN,
    /**
     *  Gurmukhi MN
     */
    FamilyFontNameGurmukhiMN,
    /**
     *  Heiti SC
     */
    FamilyFontNameHeitiSC,
    /**
     *  Heiti TC
     */
    FamilyFontNameHeitiTC,
    /**
     *  Helvetica
     */
    FamilyFontNameHelvetica,
    /**
     *  Helvetica Neue
     */
    FamilyFontNameHelveticaNeue,
    /**
     *  Hiragino Kaku Gothic Pro N
     */
    FamilyFontNameHiraginoKakuGothicProN,
    /**
     *  Hiragino Mincho Pro N
     */
    FamilyFontNameHiraginoMinchoProN,
    /**
     *  Hoefler Text
     */
    FamilyFontNameHoeflerText,
    /**
     *  Iowan OldStyle
     */
    FamilyFontNameIowanOldStyle NS_ENUM_DEPRECATED_IOS(7_0, 8_0, "This font is not available after iOS 8"),
    /**
     *  Kailasa
     */
    FamilyFontNameKailasa,
    /**
     *  Kannada Sangam MN
     */
    FamilyFontNameKannadaSangamMN,
    /**
     *  Khmer Sangam MN
     */
    FamilyFontNameKhmerSangamMN NS_ENUM_AVAILABLE_IOS(8_0),
    /**
     *  Kohinoor Bangla
     */
    FamilyFontNameKohinoorBangla NS_ENUM_AVAILABLE_IOS(9_0),
    /**
     *  Kohinoor Devanagari
     */
    FamilyFontNameKohinoorDevanagari NS_ENUM_AVAILABLE_IOS(8_0),
    /**
     *  Lao Sangam MN
     */
    FamilyFontNameLaoSangamMN NS_ENUM_AVAILABLE_IOS(8_0),
    /**
     *  Malayam Sangam MN
     */
    FamilyFontNameMalayamSangamMN,
    /**
     *  Marion
     */
    FamilyFontNameMarion NS_ENUM_DEPRECATED_IOS(7_0, 8_0, "This font is not available after iOS 8"),
    /**
     *  Marker Felt
     */
    FamilyFontNameMarkerFelt,
    /**
     *  Menlo
     */
    FamilyFontNameMenlo,
    /**
     *  Mishafi
     */
    FamilyFontNameMishafi,
    /**
     *  Noteworthy
     */
    FamilyFontNameNoteworthy,
    /**
     *  Optima
     */
    FamilyFontNameOptima,
    /**
     *  Oriya Sangem MN
     */
    FamilyFontNameOriyaSangemMN,
    /**
     *  Palatino
     */
    FamilyFontNamePalatino,
    /**
     *  Papyrus
     */
    FamilyFontNamePapyrus,
    /**
     *  Party LET
     */
    FamilyFontNamePartyLET,
    /**
     *  Savoye LET
     */
    FamilyFontNameSavoyeLET,
    /**
     *  Sinhala Sangam MN
     */
    FamilyFontNameSinhalaSangamMN,
    /**
     *  Snell Roundhand
     */
    FamilyFontNameSnellRoundhand,
    /**
     *  Superclarendon
     */
    FamilyFontNameSuperclarendon NS_ENUM_DEPRECATED_IOS(7_0, 8_0, "This font is not available after iOS 8"),
    /**
     *  Symbol
     */
    FamilyFontNameSymbol,
    /**
     *  Tamil Sangam MN
     */
    FamilyFontNameTamilSangamMN,
    /**
     *  Telugu Sangam MN
     */
    FamilyFontNameTeluguSangamMN,
    /**
     *  Thonburi
     */
    FamilyFontNameThonburi,
    /**
     *  Times New Roman
     */
    FamilyFontNameTimesNewRoman,
    /**
     *  Trebuchet MS
     */
    FamilyFontNameTrebuchetMS,
    /**
     *  Verdana
     */
    FamilyFontNameVerdana,
    /**
     *  Zapf Ding Bats
     */
    FamilyFontNameZapfDingBats,
    /**
     *  Zapfino
     */
    FamilyFontNameZapfino
};

/**
 *  All font names for all family available from iOS 7.0 to iOS 9.0
 */
typedef NS_ENUM(NSInteger, FontName) {
    /**
     *  Academy Engraved Let Plain
     */
    FontNameAcademyEngravedLetPlain = 0,
    /**
     *  Al Nile
     */
    FontNameAlNile,
    /**
     *  Al Nile Bold
     */
    FontNameAlNileBold,
    /**
     *  American Typewriter
     */
    FontNameAmericanTypewriter,
    /**
     *  American Typewriter Bold
     */
    FontNameAmericanTypewriterBold,
    /**
     *  American Typewriter Condensed
     */
    FontNameAmericanTypewriterCondensed,
    /**
     *  American Typewriter Condensed Bold
     */
    FontNameAmericanTypewriterCondensedBold,
    /**
     *  American Typewriter Condensed Light
     */
    FontNameAmericanTypewriterCondensedLight,
    /**
     *  American Typewriter Light
     */
    FontNameAmericanTypewriterLight,
    /**
     *  Apple Color Emoji
     */
    FontNameAppleColorEmoji,
    /**
     *  Apple SD Gothic Neo Bold
     */
    FontNameAppleSDGothicNeoBold,
    /**
     *  Apple SD Gothic Neo Light
     */
    FontNameAppleSDGothicNeoLight,
    /**
     *  Apple SD Gothic Neo Medium
     */
    FontNameAppleSDGothicNeoMedium,
    /**
     *  Apple SD Gothic Neo Regular
     */
    FontNameAppleSDGothicNeoRegular,
    /**
     *  Apple SD Gothic Neo Semi Bold
     */
    FontNameAppleSDGothicNeoSemiBold,
    /**
     *  Apple SD Gothic Neo Thin
     */
    FontNameAppleSDGothicNeoThin,
    /* 
     *  Apple SD Gothic Neo Ultra Light
     */
    FontNameAppleSDGothicNeoUltraLight NS_ENUM_AVAILABLE_IOS(9_0),
    /**
     *  Arial Bold Italic MT
     */
    FontNameArialBoldItalicMT,
    /**
     *  Arial Bold MT
     */
    FontNameArialBoldMT,
    /**
     *  Arial Hebrew
     */
    FontNameArialHebrew,
    /**
     *  Arial Hebrew Bold
     */
    FontNameArialHebrewBold,
    /**
     *  Arial Hebrew Light
     */
    FontNameArialHebrewLight,
    /**
     *  Arial Italic MT
     */
    FontNameArialItalicMT,
    /**
     *  Arial MT
     */
    FontNameArialMT,
    /**
     *  Arial Rounded MT Bold
     */
    FontNameArialRoundedMTBold,
    /**
     *  AST Heiti Light
     */
    FontNameASTHeitiLight,
    /**
     *  AST Heiti Medium
     */
    FontNameASTHeitiMedium,
    /**
     *  Avenir Black
     */
    FontNameAvenirBlack,
    /**
     *  Avenir Black Oblique
     */
    FontNameAvenirBlackOblique,
    /**
     *  Avenir Book
     */
    FontNameAvenirBook,
    /**
     *  Avenir Book Oblique
     */
    FontNameAvenirBookOblique,
    /**
     *  Avenir Heavy Oblique
     */
    FontNameAvenirHeavyOblique,
    /**
     *  Avenir Heavy
     */
    FontNameAvenirHeavy,
    /**
     *  Avenir Light
     */
    FontNameAvenirLight,
    /**
     *  Avenir Light Oblique
     */
    FontNameAvenirLightOblique,
    /**
     *  Avenir Medium
     */
    FontNameAvenirMedium,
    /**
     *  Avenir Medium Oblique
     */
    FontNameAvenirMediumOblique,
    /**
     *  Avenir Oblique
     */
    FontNameAvenirNextBold,
    /**
     *  Avenir Next Bold Italic
     */
    FontNameAvenirNextBoldItalic,
    /**
     *  Avenir Next Condensed Bold
     */
    FontNameAvenirNextCondensedBold,
    /**
     *  Avenir Next Condensed Bold Italic
     */
    FontNameAvenirNextCondensedBoldItalic,
    /**
     *  Avenir Next Condensed Demi Bold
     */
    FontNameAvenirNextCondensedDemiBold,
    /**
     *  Avenir Next Condensed Demi Bold Italic
     */
    FontNameAvenirNextCondensedDemiBoldItalic,
    /**
     *  Avenir Next Condensed Heavy
     */
    FontNameAvenirNextCondensedHeavy,
    /**
     *  Avenir Next Condensed Heavy Italic
     */
    FontNameAvenirNextCondensedHeavyItalic,
    /**
     *  Avenir Next Condensed Italic
     */
    FontNameAvenirNextCondensedItalic,
    /**
     *  Avenir Next Condensed Medium
     */
    FontNameAvenirNextCondensedMedium,
    /**
     *  Avenir Next Condensed Medium Italic
     */
    FontNameAvenirNextCondensedMediumItalic,
    /**
     *  Avenir Next Condensed Regular
     */
    FontNameAvenirNextCondensedRegular,
    /**
     *  Avenir Next Condensed Ultra Light
     */
    FontNameAvenirNextCondensedUltraLight,
    /**
     *  Avenir Next Condensed Ultra Light Italic
     */
    FontNameAvenirNextCondensedUltraLightItalic,
    /**
     *  Avenir Next Demi Bold
     */
    FontNameAvenirNextDemiBold,
    /**
     *  Avenir Next Demi Bold Italic
     */
    FontNameAvenirNextDemiBoldItalic,
    /**
     *  Avenir Next Heavy
     */
    FontNameAvenirNextHeavy,
    /**
     *  Avenir Next Italic
     */
    FontNameAvenirNextItalic,
    /**
     *  Avenir Next Medium
     */
    FontNameAvenirNextMedium,
    /**
     *  Avenir Next Medium Italic
     */
    FontNameAvenirNextMediumItalic,
    /**
     *  Avenir Next Regular
     */
    FontNameAvenirNextRegular,
    /**
     *  Avenir Next Ultra Light
     */
    FontNameAvenirNextUltraLight,
    /**
     *  Avenir Next Ultra Light Italic
     */
    FontNameAvenirNextUltraLightItalic,
    /**
     *  Avenir Oblique
     */
    FontNameAvenirOblique,
    /**
     *  Avenir Roman
     */
    FontNameAvenirRoman,
    /**
     *  Bangla Sangam MN
     */
    FontNameBanglaSangamMN NS_ENUM_DEPRECATED_IOS(7_0, 8_0, "This font is not available after iOS 8"),
    /**
     *  Bangla Sangam MN Bold
     */
    FontNameBanglaSangamMNBold NS_ENUM_DEPRECATED_IOS(7_0, 8_0, "This font is not available after iOS 8"),
    /**
     *  Baskerville
     */
    FontNameBaskerville,
    /**
     *  Baskerville Bold
     */
    FontNameBaskervilleBold,
    /**
     *  Baskerville Bold Italic
     */
    FontNameBaskervilleBoldItalic,
    /**
     *  Baskerville Italic
     */
    FontNameBaskervilleItalic,
    /**
     *  Baskerville Semi Bold
     */
    FontNameBaskervilleSemiBold,
    /**
     *  Baskerville Semi Bold Italic
     */
    FontNameBaskervilleSemiBoldItalic,
    /**
     *  Bodoni Ornaments ITCTT
     */
    FontNameBodoniOrnamentsITCTT,
    /**
     *  Bodoni Svty Two ITCTT Bold
     */
    FontNameBodoniSvtyTwoITCTTBold,
    /**
     *  Bodoni Svty Two ITCTT Book
     */
    FontNameBodoniSvtyTwoITCTTBook,
    /**
     *  Bodoni Svty Two ITCTT Book Ita
     */
    FontNameBodoniSvtyTwoITCTTBookIta,
    /**
     *  Bodoni Svty Two OS ITCTT Bold
     */
    FontNameBodoniSvtyTwoOSITCTTBold,
    /**
     *  Bodoni Svty Two OS ITCTT Book
     */
    FontNameBodoniSvtyTwoOSITCTTBook,
    /**
     *  Bodoni Svty Two OS ITCTT Book It
     */
    FontNameBodoniSvtyTwoOSITCTTBookIt,
    /**
     *  Bodoni Svty Two SC ITCTT Book
     */
    FontNameBodoniSvtyTwoSCITCTTBook,
    /**
     *  Bradley Hand ITCTT Bold
     */
    FontNameBradleyHandITCTTBold,
    /**
     *  Chalkboard SE Bold
     */
    FontNameChalkboardSEBold,
    /**
     *  Chalkboard SE Light
     */
    FontNameChalkboardSELight,
    /**
     *  Chalkboard SE Regular
     */
    FontNameChalkboardSERegular,
    /**
     *  Chalkduster
     */
    FontNameChalkduster,
    /**
     *  Cochin
     */
    FontNameCochin,
    /**
     *  Cochin Bold
     */
    FontNameCochinBold,
    /**
     *  Cochin Bold Italic
     */
    FontNameCochinBoldItalic,
    /**
     *  Cochin Italic
     */
    FontNameCochinItalic,
    /**
     *  Copperplate
     */
    FontNameCopperplate,
    /**
     *  Copperplate Bold
     */
    FontNameCopperplateBold,
    /**
     *  Copperplate Light
     */
    FontNameCopperplateLight,
    /**
     *  Courier
     */
    FontNameCourier,
    /**
     *  Courier Bold
     */
    FontNameCourierBold,
    /**
     *  Courier Bold Oblique
     */
    FontNameCourierBoldOblique,
    /**
     *  Courier New PS Bold Italic MT
     */
    FontNameCourierNewPSBoldItalicMT,
    /**
     *  Courier New PS Bold MT
     */
    FontNameCourierNewPSBoldMT,
    /**
     *  Courier New PS Italic MT
     */
    FontNameCourierNewPSItalicMT,
    /**
     *  Courier New PS MT
     */
    FontNameCourierNewPSMT,
    /**
     *  Courier Oblique
     */
    FontNameCourierOblique,
    /**
     *  Damascus
     */
    FontNameDamascus,
    /**
     *  Damascus Bold
     */
    FontNameDamascusBold,
    /**
     *  Damascus Medium
     */
    FontNameDamascusMedium,
    /**
     *  Damascus Semi Bold
     */
    FontNameDamascusSemiBold,
    /**
     *  Devanagari Sangam MN
     */
    FontNameDevanagariSangamMN,
    /**
     *  Devanagari Sangam MN Bold
     */
    FontNameDevanagariSangamMNBold,
    /**
     *  Didot
     */
    FontNameDidot,
    /**
     *  Didot Bold
     */
    FontNameDidotBold,
    /**
     *  Didot Italic
     */
    FontNameDidotItalic,
    /**
     *  DIN Alternate Bold
     */
    FontNameDINAlternateBold NS_ENUM_DEPRECATED_IOS(7_0, 8_0, "This font is not available after iOS 8"),
    /**
     *  DIN Condensed Bold
     */
    FontNameDINCondensedBold NS_ENUM_DEPRECATED_IOS(7_0, 8_0, "This font is not available after iOS 8"),
    /**
     *  Diwan Mishafi
     */
    FontNameDiwanMishafi,
    /**
     *  Euphemia UCAS
     */
    FontNameEuphemiaUCAS,
    /**
     *  Euphemia UCAS Bold
     */
    FontNameEuphemiaUCASBold,
    /**
     *  Euphemia UCAS Italic
     */
    FontNameEuphemiaUCASItalic,
    /**
     *  Farah
     */
    FontNameFarah,
    /**
     *  Futura Condensed Extra Bold
     */
    FontNameFuturaCondensedExtraBold,
    /**
     *  Futura Condensed Medium
     */
    FontNameFuturaCondensedMedium,
    /**
     *  Futura Medium
     */
    FontNameFuturaMedium,
    /**
     *  Futura Medium Italicm
     */
    FontNameFuturaMediumItalicm,
    /**
     *  Geeza Pro
     */
    FontNameGeezaPro,
    /**
     *  Geeza Pro Bold
     */
    FontNameGeezaProBold,
    /**
     *  Geeza Pro Light
     */
    FontNameGeezaProLight,
    /**
     *  Georgia
     */
    FontNameGeorgia,
    /**
     *  Georgia Bold
     */
    FontNameGeorgiaBold,
    /**
     *  Georgia Bold Italic
     */
    FontNameGeorgiaBoldItalic,
    /**
     *  Georgia Italic
     */
    FontNameGeorgiaItalic,
    /**
     *  Gill Sans
     */
    FontNameGillSans,
    /**
     *  Gill Sans Bold
     */
    FontNameGillSansBold,
    /**
     *  Gill Sans Bold Italic
     */
    FontNameGillSansBoldItalic,
    /**
     *  Gill Sans Italic
     */
    FontNameGillSansItalic,
    /**
     *  Gill Sans Light
     */
    FontNameGillSansLight,
    /**
     *  Gill Sans Light Italic
     */
    FontNameGillSansLightItalic,
    /**
     *  Gujarati Sangam MN
     */
    FontNameGujaratiSangamMN,
    /**
     *  Gujarati Sangam MN Bold
     */
    FontNameGujaratiSangamMNBold,
    /**
     *  Gurmukhi MN
     */
    FontNameGurmukhiMN,
    /**
     *  Gurmukhi MN Bold
     */
    FontNameGurmukhiMNBold,
    /**
     *  Helvetica
     */
    FontNameHelvetica,
    /**
     *  Helvetica Bold
     */
    FontNameHelveticaBold,
    /**
     *  Helvetica Bold Oblique
     */
    FontNameHelveticaBoldOblique,
    /**
     *  Helvetica Light
     */
    FontNameHelveticaLight,
    /**
     *  Helvetica Light Oblique
     */
    FontNameHelveticaLightOblique,
    /**
     *  Helvetica Neue
     */
    FontNameHelveticaNeue,
    /**
     *  Helvetica Neue Bold
     */
    FontNameHelveticaNeueBold,
    /**
     *  Helvetica Neue Bold Italic
     */
    FontNameHelveticaNeueBoldItalic,
    /**
     *  Helvetica Neue Condensed Black
     */
    FontNameHelveticaNeueCondensedBlack,
    /**
     *  Helvetica Neue Condensed Bold
     */
    FontNameHelveticaNeueCondensedBold,
    /**
     *  Helvetica Neue Italic
     */
    FontNameHelveticaNeueItalic,
    /**
     *  Helvetica Neue Light
     */
    FontNameHelveticaNeueLight,
    /**
     *  Helvetica Neue Medium
     */
    FontNameHelveticaNeueMedium,
    /**
     *  Helvetica Neue Medium Italic
     */
    FontNameHelveticaNeueMediumItalic,
    /**
     *  Helvetica Neue Thin
     */
    FontNameHelveticaNeueThin,
    /**
     *  Helvetica Neue Thin Italic
     */
    FontNameHelveticaNeueThinItalic,
    /**
     *  Helvetica Neue Ultra Light
     */
    FontNameHelveticaNeueUltraLight,
    /**
     *  Helvetica Neue Ultra Light Italic
     */
    FontNameHelveticaNeueUltraLightItalic,
    /**
     *  Helvetica Oblique
     */
    FontNameHelveticaOblique,
    /**
     *  Hira Kaku Pro NW3
     */
    FontNameHiraKakuProNW3,
    /**
     *  Hira Kaku Pro NW6
     */
    FontNameHiraKakuProNW6,
    /**
     *  Hira Min Pro NW3
     */
    FontNameHiraMinProNW3,
    /**
     *  Hira Min Pro NW6
     */
    FontNameHiraMinProNW6,
    /**
     *  Hoefler Text Black
     */
    FontNameHoeflerTextBlack,
    /**
     *  Hoefler Text Black Italic
     */
    FontNameHoeflerTextBlackItalic,
    /**
     *  Hoefler Text Italic
     */
    FontNameHoeflerTextItalic,
    /**
     *  Hoefler Text Regular
     */
    FontNameHoeflerTextRegular,
    /**
     *  Iowan Old Style Bold
     */
    FontNameIowanOldStyleBold NS_ENUM_DEPRECATED_IOS(7_0, 8_0, "This font is not available after iOS 8"),
    /**
     *  Iowan Old Style Bold Italic
     */
    FontNameIowanOldStyleBoldItalic NS_ENUM_DEPRECATED_IOS(7_0, 8_0, "This font is not available after iOS 8"),
    /**
     *  Iowan Old Style Italic
     */
    FontNameIowanOldStyleItalic NS_ENUM_DEPRECATED_IOS(7_0, 8_0, "This font is not available after iOS 8"),
    /**
     *  Iowan Old Style Roman
     */
    FontNameIowanOldStyleRoman NS_ENUM_DEPRECATED_IOS(7_0, 8_0, "This font is not available after iOS 8"),
    /**
     *  Kailasa
     */
    FontNameKailasa,
    /**
     *  Kailasa Bold
     */
    FontNameKailasaBold,
    /**
     *  Kannada Sangam MN
     */
    FontNameKannadaSangamMN,
    /**
     *  Kannada Sangam MN Bold
     */
    FontNameKannadaSangamMNBold,
    /**
     *  Khmer Sangam MN
     */
    FontNameKhmerSangamMN NS_ENUM_AVAILABLE_IOS(8_0),
    /**
     *  Kohinoor Bangla Light
     */
    FontNameKohinoorBanglaLight NS_ENUM_AVAILABLE_IOS(9_0),
    /**
     *  Kohinoor Bangla Medium
     */
    FontNameKohinoorBanglaMedium NS_ENUM_AVAILABLE_IOS(9_0),
    /**
     *  Kohinoor Bangla Regular
     */
    FontNameKohinoorBanglaRegular NS_ENUM_AVAILABLE_IOS(9_0),
    /**
     *  Kohinoor Devanagari Light
     */
    FontNameKohinoorDevanagariLight NS_ENUM_AVAILABLE_IOS(8_0),
    /**
     *  Kohinoor Devanagari Medium
     */
    FontNameKohinoorDevanagariMedium NS_ENUM_AVAILABLE_IOS(8_0),
    /**
     *  Kohinoor Devanagari Book
     */
    FontNameKohinoorDevanagariBook NS_ENUM_AVAILABLE_IOS(8_0),
    /**
     *  Lao Sangam MN
     */
    FontNameLaoSangamMN NS_ENUM_AVAILABLE_IOS(8_0),
    /**
     *  Malayalam Sangam MN
     */
    FontNameMalayalamSangamMN,
    /**
     *  Malayalam Sangam MN Bold
     */
    FontNameMalayalamSangamMNBold,
    /**
     *  Marion Bold
     */
    FontNameMarionBold NS_ENUM_DEPRECATED_IOS(7_0, 8_0, "This font is not available after iOS 8"),
    /**
     *  Marion Italic
     */
    FontNameMarionItalic NS_ENUM_DEPRECATED_IOS(7_0, 8_0, "This font is not available after iOS 8"),
    /**
     *  Marion Regular
     */
    FontNameMarionRegular NS_ENUM_DEPRECATED_IOS(7_0, 8_0, "This font is not available after iOS 8"),
    /**
     *  Marker Felt Thin
     */
    FontNameMarkerFeltThin,
    /**
     *  Marker Felt Wide
     */
    FontNameMarkerFeltWide,
    /**
     *  Menlo Bold
     */
    FontNameMenloBold,
    /**
     *  Menlo Bold Italic
     */
    FontNameMenloBoldItalic,
    /**
     *  Menlo Italic
     */
    FontNameMenloItalic,
    /**
     *  Menlo Regular
     */
    FontNameMenloRegular,
    /**
     *  Noteworthy Bold
     */
    FontNameNoteworthyBold,
    /**
     *  Noteworthy Light
     */
    FontNameNoteworthyLight,
    /**
     *  Optima Bold
     */
    FontNameOptimaBold,
    /**
     *  Optima Bold Italic
     */
    FontNameOptimaBoldItalic,
    /**
     *  Optima Extra Black
     */
    FontNameOptimaExtraBlack,
    /**
     *  Optima Italic
     */
    FontNameOptimaItalic,
    /**
     *  Optima Regular
     */
    FontNameOptimaRegular,
    /**
     *  Oriya Sangam MN
     */
    FontNameOriyaSangamMN,
    /**
     *  Oriya Sangam MN Bold
     */
    FontNameOriyaSangamMNBold,
    /**
     *  Palatino Bold
     */
    FontNamePalatinoBold,
    /**
     *  Palatino Bold Italic
     */
    FontNamePalatinoBoldItalic,
    /**
     *  Palatino Italic
     */
    FontNamePalatinoItalic,
    /**
     *  Palatino Roman
     */
    FontNamePalatinoRoman,
    /**
     *  Papyrus
     */
    FontNamePapyrus,
    /**
     *  Papyrus Condensed
     */
    FontNamePapyrusCondensed,
    /**
     *  Party Let Plain
     */
    FontNamePartyLetPlain,
    /**
     *  Savoye Let Plain
     */
    FontNameSavoyeLetPlain,
    /**
     *  Sinhala Sangam MN
     */
    FontNameSinhalaSangamMN,
    /**
     *  Sinhala Sangam MN Bold
     */
    FontNameSinhalaSangamMNBold,
    /**
     *  Snell Roundhand
     */
    FontNameSnellRoundhand,
    /**
     *  Snell Roundhand Black
     */
    FontNameSnellRoundhandBlack,
    /**
     *  Snell Roundhand Bold
     */
    FontNameSnellRoundhandBold,
    /**
     *  ST Heiti SC Light
     */
    FontNameSTHeitiSCLight,
    /**
     *  ST Heiti SC Medium
     */
    FontNameSTHeitiSCMedium,
    /**
     *  ST Heiti TC Light
     */
    FontNameSTHeitiTCLight,
    /**
     *  ST Heiti TC Medium
     */
    FontNameSTHeitiTCMedium,
    /**
     *  Superclarendon Black
     */
    FontNameSuperclarendonBlack NS_ENUM_DEPRECATED_IOS(7_0, 8_0, "This font is not available after iOS 8"),
    /**
     *  Superclarendon Black Italic
     */
    FontNameSuperclarendonBlackItalic NS_ENUM_DEPRECATED_IOS(7_0, 8_0, "This font is not available after iOS 8"),
    /**
     *  Superclarendon Bold
     */
    FontNameSuperclarendonBold NS_ENUM_DEPRECATED_IOS(7_0, 8_0, "This font is not available after iOS 8"),
    /**
     *  Superclarendon Bold Italic
     */
    FontNameSuperclarendonBoldItalic NS_ENUM_DEPRECATED_IOS(7_0, 8_0, "This font is not available after iOS 8"),
    /**
     *  Superclarendon Italic
     */
    FontNameSuperclarendonItalic NS_ENUM_DEPRECATED_IOS(7_0, 8_0, "This font is not available after iOS 8"),
    /**
     *  Superclarendon Light
     */
    FontNameSuperclarendonLight NS_ENUM_DEPRECATED_IOS(7_0, 8_0, "This font is not available after iOS 8"),
    /**
     *  Superclarendon Light Italic
     */
    FontNameSuperclarendonLightItalic NS_ENUM_DEPRECATED_IOS(7_0, 8_0, "This font is not available after iOS 8"),
    /**
     *  Superclarendon Regular
     */
    FontNameSuperclarendonRegular NS_ENUM_DEPRECATED_IOS(7_0, 8_0, "This font is not available after iOS 8"),
    /**
     *  Symbol
     */
    FontNameSymbol,
    /**
     *  Tamil Sangam MN
     */
    FontNameTamilSangamMN,
    /**
     *  Tamil Sangam MN Bold
     */
    FontNameTamilSangamMNBold,
    /**
     *  Telugu Sangam MN
     */
    FontNameTeluguSangamMN,
    /**
     *  Telugu Sangam MN Bold
     */
    FontNameTeluguSangamMNBold,
    /**
     *  Thonburi
     */
    FontNameThonburi,
    /**
     *  Thonburi Bold
     */
    FontNameThonburiBold,
    /**
     *  Thonburi Light
     */
    FontNameThonburiLight,
    /**
     *  Times New Roman PS Bold Italic MT
     */
    FontNameTimesNewRomanPSBoldItalicMT,
    /**
     *  Times New Roman PS Bold MT
     */
    FontNameTimesNewRomanPSBoldMT,
    /**
     *  Times New Roman PS Italic MT
     */
    FontNameTimesNewRomanPSItalicMT,
    /**
     *  Times New Roman PS MT
     */
    FontNameTimesNewRomanPSMT,
    /**
     *  Trebuchet Bold Italic
     */
    FontNameTrebuchetBoldItalic,
    /**
     *  Trebuchet MS
     */
    FontNameTrebuchetMS,
    /**
     *  Trebuchet MS Bold
     */
    FontNameTrebuchetMSBold,
    /**
     *  Trebuchet MS Italic
     */
    FontNameTrebuchetMSItalic,
    /**
     *  Verdana
     */
    FontNameVerdana,
    /**
     *  Verdana Bold
     */
    FontNameVerdanaBold,
    /**
     *  Verdana Bold Italic
     */
    FontNameVerdanaBoldItalic,
    /**
     *  Verdana Italic
     */
    FontNameVerdanaItalic,
    /**
     *  Zapf Dingbats ITC
     */
    FontNameZapfDingbatsITC,
    /**
     *  Zapfino
     */
    FontNameZapfino
};

/**
 *  This category adds some useful methods to UIFont
 */
@interface UIFont (BFKit)

/**
*  Print in console all family and font names
*
*  @return Returns all the font family names
*/
+ (NSDictionary * _Nonnull)allFamilyAndFonts;


/**
 *  Print in console all font names for a given family
 *
 *  @param familyFontName Family to print the fonts
 *
 *  @return Returns all the fonts for the given family
 */
+ (NSArray * _Nonnull)fontsNameForFamilyName:(FamilyFontName)familyFontName;

/**
 *  Create an UIFont object from the given font name and size
 *
 *  @param fontName Font name
 *  @param fontSize Size of the font
 *
 *  @return Returns an UIFont from the given font name and size
 */
+ (UIFont * _Nonnull)fontForFontName:(FontName)fontName
                                size:(CGFloat)fontSize;

/**
 *  Static light font to use in App
 *
 *  @return Returns light font to use in App
 */
+ (UIFont * _Nullable)lightFont;

/**
 *  Set the new light font for the App
 *
 *  @param newLightFont The new font
 */
+ (void)setLightFont:(UIFont * _Nullable)lightFont;

/**
 *  Static regular font to use in App
 *
 *  @return Returns regular font to use in App
 */
+ (UIFont * _Nullable)regularFont;

/**
 *  Set the new regular font for the App
 *
 *  @param newRegularFont The new font
 */
+ (void)setRegularFont:(UIFont * _Nullable)regularFont;

/**
 *  Static bold font to use in App
 *
 *  @return Returns bold font to use in App
 */
+ (UIFont * _Nullable)boldFont;

/**
 *  Set the new bold font for the App
 *
 *  @param newBoldFont The new font
 */
+ (void)setBoldFont:(UIFont * _Nullable)boldFont;

@end
