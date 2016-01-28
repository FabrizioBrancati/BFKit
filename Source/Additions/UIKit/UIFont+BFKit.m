//
//  UIFont+BFKit.m
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

#import "UIFont+BFKit.h"
#import "NSMutableArray+BFKit.h"
#import "BFLog.h"

@implementation UIFont (BFKit)

static UIFont * _Nullable lightFont;
static UIFont * _Nullable regularFont;
static UIFont * _Nullable boldFont;

+ (UIFont *)lightFont {
    return UIFont.lightFont;
}

+ (void)setLightFont:(UIFont *)lightFont {
    UIFont.lightFont = lightFont;
}

+ (UIFont *)regularFont {
    return UIFont.regularFont;
}

+ (void)setRegularFont:(UIFont *)regularFont {
    UIFont.regularFont = regularFont;
}

+ (UIFont *)boldFont {
    return UIFont.boldFont;
}

+ (void)setBoldFont:(UIFont *)boldFont {
    UIFont.boldFont = boldFont;
}

+ (NSDictionary * _Nonnull)allFamilyAndFonts {
    NSMutableArray *fontFamilies = (NSMutableArray *)[UIFont familyNames];
    fontFamilies = [NSMutableArray sortArrayByKey:@"" array:fontFamilies ascending:YES];
    
    NSMutableDictionary *fontFamilyDic = [[NSMutableDictionary alloc] init];
    
    for (int i = 0; i < [fontFamilies count]; i++) {
        NSString *fontFamily = [fontFamilies objectAtIndex:i];
        NSArray *fontNames = [UIFont fontNamesForFamilyName:fontFamily];
        [fontFamilyDic setObject:fontNames forKey:fontFamily];
    }
    
    BFLog(@"%@", fontFamilyDic);
    
    return fontFamilyDic;
}

+ (NSArray * _Nonnull)fontsNameForFamilyName:(FamilyFontName)familyFontName {
    NSArray *fontNames;
    
    switch (familyFontName) {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        case FamilyFontNameBanglaSangamMN:
            fontNames = [UIFont fontNamesForFamilyName:@"Bangla Sangam MN"];
            break;
        case FamilyFontNameDINAlternate:
            fontNames = [UIFont fontNamesForFamilyName:@"DIN Alternate"];
            break;
        case FamilyFontNameDINCondensed:
            fontNames = [UIFont fontNamesForFamilyName:@"DIN Condensed"];
            break;
        case FamilyFontNameIowanOldStyle:
            fontNames = [UIFont fontNamesForFamilyName:@"Iowan Old Style"];
            break;
        case FamilyFontNameMarion:
            fontNames = [UIFont fontNamesForFamilyName:@"Marion"];
            break;
        case FamilyFontNameSuperclarendon:
            fontNames = [UIFont fontNamesForFamilyName:@"Superclarendon"];
            break;
#pragma clang diagnostic pop
        case FamilyFontNameAcademyEngravedLET:
            fontNames = [UIFont fontNamesForFamilyName:@"Academy Engraved LET"];
            break;
        case FamilyFontNameAlNile:
            fontNames = [UIFont fontNamesForFamilyName:@"Al Nile"];
            break;
        case FamilyFontNameAmericanTypewriter:
            fontNames = [UIFont fontNamesForFamilyName:@"American Typewriter"];
            break;
        case FamilyFontNameAppleColorEmoji:
            fontNames = [UIFont fontNamesForFamilyName:@"Apple Color Emoji"];
            break;
        case FamilyFontNameAppleSDGothicNeo:
            fontNames = [UIFont fontNamesForFamilyName:@"Apple SD Gothic Neo"];
            break;
        case FamilyFontNameArial:
            fontNames = [UIFont fontNamesForFamilyName:@"Arial"];
            break;
        case FamilyFontNameArialHebrew:
            fontNames = [UIFont fontNamesForFamilyName:@"Arial Hebrew"];
            break;
        case FamilyFontNameArialRoundedMTBold:
            fontNames = [UIFont fontNamesForFamilyName:@"Arial Rounded MT Bold"];
            break;
        case FamilyFontNameAvenir:
            fontNames = [UIFont fontNamesForFamilyName:@"Avenir"];
            break;
        case FamilyFontNameAvenirNext:
            fontNames = [UIFont fontNamesForFamilyName:@"Avenir Next"];
            break;
        case FamilyFontNameAvenirNextCondensed:
            fontNames = [UIFont fontNamesForFamilyName:@"Avenir Next Condensed"];
            break;
        case FamilyFontNameBaskerville:
            fontNames = [UIFont fontNamesForFamilyName:@"Baskerville"];
            break;
        case FamilyFontNameBodoni72:
            fontNames = [UIFont fontNamesForFamilyName:@"Bodoni 72"];
            break;
        case FamilyFontNameBodoni72Oldstyle:
            fontNames = [UIFont fontNamesForFamilyName:@"Bodoni 72 Oldstyle"];
            break;
        case FamilyFontNameBodoni72Smallcaps:
            fontNames = [UIFont fontNamesForFamilyName:@"Bodoni 72 Smallcaps"];
            break;
        case FamilyFontNameBodoniOrnaments:
            fontNames = [UIFont fontNamesForFamilyName:@"Bodoni Ornaments"];
            break;
        case FamilyFontNameBradleyHand:
            fontNames = [UIFont fontNamesForFamilyName:@"Bradley Hand"];
            break;
        case FamilyFontNameChalkboardSE:
            fontNames = [UIFont fontNamesForFamilyName:@"Chalkboard SE"];
            break;
        case FamilyFontNameChalkduster:
            fontNames = [UIFont fontNamesForFamilyName:@"Chalkduster"];
            break;
        case FamilyFontNameCochin:
            fontNames = [UIFont fontNamesForFamilyName:@"Cochin"];
            break;
        case FamilyFontNameCopperplate:
            fontNames = [UIFont fontNamesForFamilyName:@"Copperplate"];
            break;
        case FamilyFontNameCourier:
            fontNames = [UIFont fontNamesForFamilyName:@"Courier"];
            break;
        case FamilyFontNameCourierNew:
            fontNames = [UIFont fontNamesForFamilyName:@"Courier New"];
            break;
        case FamilyFontNameDamascus:
            fontNames = [UIFont fontNamesForFamilyName:@"Damascus"];
            break;
        case FamilyFontNameDevanagariSangamMN:
            fontNames = [UIFont fontNamesForFamilyName:@"Devanagari Sangam MN"];
            break;
        case FamilyFontNameDidot:
            fontNames = [UIFont fontNamesForFamilyName:@"Didot"];
            break;
        case FamilyFontNameEuphemiaUCAS:
            fontNames = [UIFont fontNamesForFamilyName:@"Euphemia UCAS"];
            break;
        case FamilyFontNameFarah:
            fontNames = [UIFont fontNamesForFamilyName:@"Farah"];
            break;
        case FamilyFontNameFutura:
            fontNames = [UIFont fontNamesForFamilyName:@"Futura"];
            break;
        case FamilyFontNameGeezaPro:
            fontNames = [UIFont fontNamesForFamilyName:@"Geeza Pro"];
            break;
        case FamilyFontNameGeorgia:
            fontNames = [UIFont fontNamesForFamilyName:@"Georgia"];
            break;
        case FamilyFontNameGillSans:
            fontNames = [UIFont fontNamesForFamilyName:@"Gill Sans"];
            break;
        case FamilyFontNameGujaratiSangemMN:
            fontNames = [UIFont fontNamesForFamilyName:@"Gujarati Sangam MN"];
            break;
        case FamilyFontNameGurmukhiMN:
            fontNames = [UIFont fontNamesForFamilyName:@"Gurmukhi MN"];
            break;
        case FamilyFontNameHeitiSC:
            fontNames = [UIFont fontNamesForFamilyName:@"Heiti SC"];
            break;
        case FamilyFontNameHeitiTC:
            fontNames = [UIFont fontNamesForFamilyName:@"Heiti TC"];
            break;
        case FamilyFontNameHelvetica:
            fontNames = [UIFont fontNamesForFamilyName:@"Helvetica"];
            break;
        case FamilyFontNameHelveticaNeue:
            fontNames = [UIFont fontNamesForFamilyName:@"Helvetica Neue"];
            break;
        case FamilyFontNameHiraginoKakuGothicProN:
            fontNames = [UIFont fontNamesForFamilyName:@"Hiragino Kaku Gothic ProN"];
            break;
        case FamilyFontNameHiraginoMinchoProN:
            fontNames = [UIFont fontNamesForFamilyName:@"Hiragino Mincho ProN"];
            break;
        case FamilyFontNameHoeflerText:
            fontNames = [UIFont fontNamesForFamilyName:@"Hoefler Text"];
            break;
        case FamilyFontNameKailasa:
            fontNames = [UIFont fontNamesForFamilyName:@"Kailasa"];
            break;
        case FamilyFontNameKannadaSangamMN:
            fontNames = [UIFont fontNamesForFamilyName:@"Kannada Sangam MN"];
            break;
        case FamilyFontNameKhmerSangamMN:
            fontNames = [UIFont fontNamesForFamilyName:@"Khmer Sangam MN"];
            break;
        case FamilyFontNameKohinoorBangla:
            fontNames = [UIFont fontNamesForFamilyName:@"Kohinoor Bangla"];
            break;
        case FamilyFontNameKohinoorDevanagari:
            fontNames = [UIFont fontNamesForFamilyName:@"Kohinoor Devanagari"];
            break;
        case FamilyFontNameLaoSangamMN:
            fontNames = [UIFont fontNamesForFamilyName:@"Lao Sangam MN"];
            break;
        case FamilyFontNameMalayamSangamMN:
            fontNames = [UIFont fontNamesForFamilyName:@"Malayalam Sangam MN"];
            break;
        case FamilyFontNameMarkerFelt:
            fontNames = [UIFont fontNamesForFamilyName:@"Marker Felt"];
            break;
        case FamilyFontNameMenlo:
            fontNames = [UIFont fontNamesForFamilyName:@"Menlo"];
            break;
        case FamilyFontNameMishafi:
            fontNames = [UIFont fontNamesForFamilyName:@"Mishafi"];
            break;
        case FamilyFontNameNoteworthy:
            fontNames = [UIFont fontNamesForFamilyName:@"Noteworthy"];
            break;
        case FamilyFontNameOptima:
            fontNames = [UIFont fontNamesForFamilyName:@"Optima"];
            break;
        case FamilyFontNameOriyaSangemMN:
            fontNames = [UIFont fontNamesForFamilyName:@"Oriya Sangam MN"];
            break;
        case FamilyFontNamePalatino:
            fontNames = [UIFont fontNamesForFamilyName:@"Palatino"];
            break;
        case FamilyFontNamePapyrus:
            fontNames = [UIFont fontNamesForFamilyName:@"Papyrus"];
            break;
        case FamilyFontNamePartyLET:
            fontNames = [UIFont fontNamesForFamilyName:@"Party LET"];
            break;
        case FamilyFontNameSavoyeLET:
            fontNames = [UIFont fontNamesForFamilyName:@"Savoye LET"];
            break;
        case FamilyFontNameSinhalaSangamMN:
            fontNames = [UIFont fontNamesForFamilyName:@"Sinhala Sangam MN"];
            break;
        case FamilyFontNameSnellRoundhand:
            fontNames = [UIFont fontNamesForFamilyName:@"Snell Roundhand"];
            break;
        case FamilyFontNameSymbol:
            fontNames = [UIFont fontNamesForFamilyName:@"Symbol"];
            break;
        case FamilyFontNameTamilSangamMN:
            fontNames = [UIFont fontNamesForFamilyName:@"Tamil Sangam MN"];
            break;
        case FamilyFontNameTeluguSangamMN:
            fontNames = [UIFont fontNamesForFamilyName:@"Telugu Sangam MN"];
            break;
        case FamilyFontNameThonburi:
            fontNames = [UIFont fontNamesForFamilyName:@"Thonburi"];
            break;
        case FamilyFontNameTimesNewRoman:
            fontNames = [UIFont fontNamesForFamilyName:@"Times New Roman"];
            break;
        case FamilyFontNameTrebuchetMS:
            fontNames = [UIFont fontNamesForFamilyName:@"Trebuchet MS"];
            break;
        case FamilyFontNameVerdana:
            fontNames = [UIFont fontNamesForFamilyName:@"Verdana"];
            break;
        case FamilyFontNameZapfDingBats:
            fontNames = [UIFont fontNamesForFamilyName:@"Zapf Dingbats"];
            break;
        case FamilyFontNameZapfino:
            fontNames = [UIFont fontNamesForFamilyName:@"Zapfino"];
            break;
    }
    
    BFLog(@"%@", fontNames);
    
    return fontNames;
}

+ (UIFont * _Nonnull)fontForFontName:(FontName)fontName size:(CGFloat)fontSize {
    switch (fontName) {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        case FontNameBanglaSangamMN:
            return [UIFont fontWithName:@"BanglaSangamMN" size:fontSize];
        case FontNameBanglaSangamMNBold:
            return [UIFont fontWithName:@"BanglaSangamMN-Bold" size:fontSize];
        case FontNameDINAlternateBold:
            return [UIFont fontWithName:@"DINAlternate-Bold" size:fontSize];
        case FontNameDINCondensedBold:
            return [UIFont fontWithName:@"DINCondensed-Bold" size:fontSize];
        case FontNameIowanOldStyleBold:
            return [UIFont fontWithName:@"IowanOldStyle-Bold" size:fontSize];
        case FontNameIowanOldStyleBoldItalic:
            return [UIFont fontWithName:@"IowanOldStyle-BoldItalic" size:fontSize];
        case FontNameIowanOldStyleItalic:
            return [UIFont fontWithName:@"IowanOldStyle-Italic" size:fontSize];
        case FontNameIowanOldStyleRoman:
            return [UIFont fontWithName:@"IowanOldStyle-Roman" size:fontSize];
        case FontNameMarionBold:
            return [UIFont fontWithName:@"Marion-Bold" size:fontSize];
        case FontNameMarionItalic:
            return [UIFont fontWithName:@"Marion-Italic" size:fontSize];
        case FontNameMarionRegular:
            return [UIFont fontWithName:@"Marion-Regular" size:fontSize];
        case FontNameSuperclarendonBlack:
            return [UIFont fontWithName:@"Superclarendon-Black" size:fontSize];
        case FontNameSuperclarendonBlackItalic:
            return [UIFont fontWithName:@"Superclarendon-BalckItalic" size:fontSize];
        case FontNameSuperclarendonBold:
            return [UIFont fontWithName:@"Superclarendon-Bold" size:fontSize];
        case FontNameSuperclarendonBoldItalic:
            return [UIFont fontWithName:@"Superclarendon-BoldItalic" size:fontSize];
        case FontNameSuperclarendonItalic:
            return [UIFont fontWithName:@"Superclarendon-Italic" size:fontSize];
        case FontNameSuperclarendonLight:
            return [UIFont fontWithName:@"Superclarendon-Light" size:fontSize];
        case FontNameSuperclarendonLightItalic:
            return [UIFont fontWithName:@"Superclarendon-LightItalic" size:fontSize];
        case FontNameSuperclarendonRegular:
            return [UIFont fontWithName:@"Superclarendon-Regular" size:fontSize];
#pragma clang diagnostic pop
        case FontNameAcademyEngravedLetPlain:
            return [UIFont fontWithName:@"AcademyEngravedLetPlain" size:fontSize];
        case FontNameAlNile:
            return [UIFont fontWithName:@"AlNile" size:fontSize];
        case FontNameAlNileBold:
            return [UIFont fontWithName:@"AlNile-Bold" size:fontSize];
        case FontNameAmericanTypewriter:
            return [UIFont fontWithName:@"AmericanTypewriter" size:fontSize];
        case FontNameAmericanTypewriterBold:
            return [UIFont fontWithName:@"AmericanTypewriter-Bold" size:fontSize];
        case FontNameAmericanTypewriterCondensed:
            return [UIFont fontWithName:@"AmericanTypewriter-Condensed" size:fontSize];
        case FontNameAmericanTypewriterCondensedBold:
            return [UIFont fontWithName:@"AmericanTypewriter-CondensedBold" size:fontSize];
        case FontNameAmericanTypewriterCondensedLight:
            return [UIFont fontWithName:@"AmericanTypewriter-CondensedLight" size:fontSize];
        case FontNameAmericanTypewriterLight:
            return [UIFont fontWithName:@"AmericanTypewriter-Light" size:fontSize];
        case FontNameAppleColorEmoji:
            return [UIFont fontWithName:@"AppleColorEmoji" size:fontSize];
        case FontNameAppleSDGothicNeoBold:
            return [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:fontSize];
        case FontNameAppleSDGothicNeoLight:
            return [UIFont fontWithName:@"AppleSDGothicNeo-Light" size:fontSize];
        case FontNameAppleSDGothicNeoMedium:
            return [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:fontSize];
        case FontNameAppleSDGothicNeoRegular:
            return [UIFont fontWithName:@"AppleSDGothicNeo-Regular" size:fontSize];
        case FontNameAppleSDGothicNeoSemiBold:
            return [UIFont fontWithName:@"AppleSDGothicNeo-SemiBold" size:fontSize];
        case FontNameAppleSDGothicNeoThin:
            return [UIFont fontWithName:@"AppleSDGothicNeo-Thin" size:fontSize];
        case FontNameAppleSDGothicNeoUltraLight:
            return [UIFont fontWithName:@"AppleSDGothicNeo-UltraLight" size:fontSize];
        case FontNameArialBoldItalicMT:
            return [UIFont fontWithName:@"Arial-BoldItalicMT" size:fontSize];
        case FontNameArialBoldMT:
            return [UIFont fontWithName:@"Arial-BoldMT" size:fontSize];
        case FontNameArialHebrew:
            return [UIFont fontWithName:@"ArialHebrew" size:fontSize];
        case FontNameArialHebrewBold:
            return [UIFont fontWithName:@"ArialHebrew-Bold" size:fontSize];
        case FontNameArialHebrewLight:
            return [UIFont fontWithName:@"ArialHebrew-Light" size:fontSize];
        case FontNameArialItalicMT:
            return [UIFont fontWithName:@"Arial-ItalicMT" size:fontSize];
        case FontNameArialMT:
            return [UIFont fontWithName:@"ArialMT" size:fontSize];
        case FontNameArialRoundedMTBold:
            return [UIFont fontWithName:@"ArialRoundedMTBold" size:fontSize];
        case FontNameASTHeitiLight:
            return [UIFont fontWithName:@"ASTHeiti-Light" size:fontSize];
        case FontNameASTHeitiMedium:
            return [UIFont fontWithName:@"ASTHeiti-Medium" size:fontSize];
        case FontNameAvenirBlack:
            return [UIFont fontWithName:@"Avenir-Black" size:fontSize];
        case FontNameAvenirBlackOblique:
            return [UIFont fontWithName:@"Avenir-BlackOblique" size:fontSize];
        case FontNameAvenirBook:
            return [UIFont fontWithName:@"Avenir-Book" size:fontSize];
        case FontNameAvenirBookOblique:
            return [UIFont fontWithName:@"Avenir-BookOblique" size:fontSize];
        case FontNameAvenirHeavyOblique:
            return [UIFont fontWithName:@"Avenir-HeavyOblique" size:fontSize];
        case FontNameAvenirHeavy:
            return [UIFont fontWithName:@"Avenir-Heavy" size:fontSize];
        case FontNameAvenirLight:
            return [UIFont fontWithName:@"Avenir-Light" size:fontSize];
        case FontNameAvenirLightOblique:
            return [UIFont fontWithName:@"Avenir-LightOblique" size:fontSize];
        case FontNameAvenirMedium:
            return [UIFont fontWithName:@"Avenir-Medium" size:fontSize];
        case FontNameAvenirMediumOblique:
            return [UIFont fontWithName:@"Avenir-MediumOblique" size:fontSize];
        case FontNameAvenirNextBold:
            return [UIFont fontWithName:@"AvenirNext-Bold" size:fontSize];
        case FontNameAvenirNextBoldItalic:
            return [UIFont fontWithName:@"AvenirNext-BoldItalic" size:fontSize];
        case FontNameAvenirNextCondensedBold:
            return [UIFont fontWithName:@"AvenirNextCondensed-Bold" size:fontSize];
        case FontNameAvenirNextCondensedBoldItalic:
            return [UIFont fontWithName:@"AvenirNextCondensed-BoldItalic" size:fontSize];
        case FontNameAvenirNextCondensedDemiBold:
            return [UIFont fontWithName:@"AvenirNextCondensed-DemiBold" size:fontSize];
        case FontNameAvenirNextCondensedDemiBoldItalic:
            return [UIFont fontWithName:@"AvenirNextCondensed-DemiBoldItalic" size:fontSize];
        case FontNameAvenirNextCondensedHeavy:
            return [UIFont fontWithName:@"AvenirNextCondensed-Heavy" size:fontSize];
        case FontNameAvenirNextCondensedHeavyItalic:
            return [UIFont fontWithName:@"AvenirNextCondensed-HeavyItalic" size:fontSize];
        case FontNameAvenirNextCondensedItalic:
            return [UIFont fontWithName:@"AvenirNextCondensed-Italic" size:fontSize];
        case FontNameAvenirNextCondensedMedium:
            return [UIFont fontWithName:@"AvenirNextCondensed-Medium" size:fontSize];
        case FontNameAvenirNextCondensedMediumItalic:
            return [UIFont fontWithName:@"AvenirNextCondensed-MediumItalic" size:fontSize];
        case FontNameAvenirNextCondensedRegular:
            return [UIFont fontWithName:@"AvenirNextCondensed-Regular" size:fontSize];
        case FontNameAvenirNextCondensedUltraLight:
            return [UIFont fontWithName:@"AvenirNextCondensed-UltraLight" size:fontSize];
        case FontNameAvenirNextCondensedUltraLightItalic:
            return [UIFont fontWithName:@"AvenirNextCondensed-UltraLightItalic" size:fontSize];
        case FontNameAvenirNextDemiBold:
            return [UIFont fontWithName:@"AvenirNext-DemiBold" size:fontSize];
        case FontNameAvenirNextDemiBoldItalic:
            return [UIFont fontWithName:@"AvenirNext-DemiBoldItalic" size:fontSize];
        case FontNameAvenirNextHeavy:
            return [UIFont fontWithName:@"AvenirNext-Heavy" size:fontSize];
        case FontNameAvenirNextItalic:
            return [UIFont fontWithName:@"AvenirNext-Italic" size:fontSize];
        case FontNameAvenirNextMedium:
            return [UIFont fontWithName:@"AvenirNext-Medium" size:fontSize];
        case FontNameAvenirNextMediumItalic:
            return [UIFont fontWithName:@"AvenirNext-MediumItalic" size:fontSize];
        case FontNameAvenirNextRegular:
            return [UIFont fontWithName:@"AvenirNext-Regular" size:fontSize];
        case FontNameAvenirNextUltraLight:
            return [UIFont fontWithName:@"AvenirNext-UltraLight" size:fontSize];
        case FontNameAvenirNextUltraLightItalic:
            return [UIFont fontWithName:@"AvenirNext-UltraLightItalic" size:fontSize];
        case FontNameAvenirOblique:
            return [UIFont fontWithName:@"Avenir-Oblique" size:fontSize];
        case FontNameAvenirRoman:
            return [UIFont fontWithName:@"Avenir-Roman" size:fontSize];
        case FontNameBaskerville:
            return [UIFont fontWithName:@"Baskerville" size:fontSize];
        case FontNameBaskervilleBold:
            return [UIFont fontWithName:@"Baskerville-Bold" size:fontSize];
        case FontNameBaskervilleBoldItalic:
            return [UIFont fontWithName:@"Baskerville-BoldItalic" size:fontSize];
        case FontNameBaskervilleItalic:
            return [UIFont fontWithName:@"Baskerville-Italic" size:fontSize];
        case FontNameBaskervilleSemiBold:
            return [UIFont fontWithName:@"Baskerville-SemiBold" size:fontSize];
        case FontNameBaskervilleSemiBoldItalic:
            return [UIFont fontWithName:@"Baskerville-SemiBoldItalic" size:fontSize];
        case FontNameBodoniOrnamentsITCTT:
            return [UIFont fontWithName:@"BodoniOrnamentsITCTT" size:fontSize];
        case FontNameBodoniSvtyTwoITCTTBold:
            return [UIFont fontWithName:@"BodoniSvtyTwoITCTT-Bold" size:fontSize];
        case FontNameBodoniSvtyTwoITCTTBook:
            return [UIFont fontWithName:@"BodoniSvtyTwoITCTT-Book" size:fontSize];
        case FontNameBodoniSvtyTwoITCTTBookIta:
            return [UIFont fontWithName:@"BodoniSvtyTwoITCTT-BookIta" size:fontSize];
        case FontNameBodoniSvtyTwoOSITCTTBold:
            return [UIFont fontWithName:@"BodoniSvtyTwoOSITCTT-Bold" size:fontSize];
        case FontNameBodoniSvtyTwoOSITCTTBook:
            return [UIFont fontWithName:@"BodoniSvtyTwoOSITCTT-Book" size:fontSize];
        case FontNameBodoniSvtyTwoOSITCTTBookIt:
            return [UIFont fontWithName:@"BodoniSvtyTwoOSITCTT-BookIt" size:fontSize];
        case FontNameBodoniSvtyTwoSCITCTTBook:
            return [UIFont fontWithName:@"BodoniSvtyTwoSCITCTT-Book" size:fontSize];
        case FontNameBradleyHandITCTTBold:
            return [UIFont fontWithName:@"BradleyHandITCTT-Bold" size:fontSize];
        case FontNameChalkboardSEBold:
            return [UIFont fontWithName:@"ChalkboardSE-Bold" size:fontSize];
        case FontNameChalkboardSELight:
            return [UIFont fontWithName:@"ChalkboardSE-Light" size:fontSize];
        case FontNameChalkboardSERegular:
            return [UIFont fontWithName:@"ChalkboardSE-Regular" size:fontSize];
        case FontNameChalkduster:
            return [UIFont fontWithName:@"Chalkduster" size:fontSize];
        case FontNameCochin:
            return [UIFont fontWithName:@"Cochin" size:fontSize];
        case FontNameCochinBold:
            return [UIFont fontWithName:@"Cochin-Bold" size:fontSize];
        case FontNameCochinBoldItalic:
            return [UIFont fontWithName:@"Cochin-BoldItalic" size:fontSize];
        case FontNameCochinItalic:
            return [UIFont fontWithName:@"Cochin-Italic" size:fontSize];
        case FontNameCopperplate:
            return [UIFont fontWithName:@"Copperplate" size:fontSize];
        case FontNameCopperplateBold:
            return [UIFont fontWithName:@"Copperplate-Bold" size:fontSize];
        case FontNameCopperplateLight:
            return [UIFont fontWithName:@"Copperplate-Light" size:fontSize];
        case FontNameCourier:
            return [UIFont fontWithName:@"Courier" size:fontSize];
        case FontNameCourierBold:
            return [UIFont fontWithName:@"Courier-Bold" size:fontSize];
        case FontNameCourierBoldOblique:
            return [UIFont fontWithName:@"Courier-BoldOblique" size:fontSize];
        case FontNameCourierNewPSBoldItalicMT:
            return [UIFont fontWithName:@"CourierNewPS-BoldItalicMT" size:fontSize];
        case FontNameCourierNewPSBoldMT:
            return [UIFont fontWithName:@"CourierNewPS-BoldMT" size:fontSize];
        case FontNameCourierNewPSItalicMT:
            return [UIFont fontWithName:@"CourierNewPS-ItalicMT" size:fontSize];
        case FontNameCourierNewPSMT:
            return [UIFont fontWithName:@"CourierNewPSMT" size:fontSize];
        case FontNameCourierOblique:
            return [UIFont fontWithName:@"Courier-Oblique" size:fontSize];
        case FontNameDamascus:
            return [UIFont fontWithName:@"Damascus" size:fontSize];
        case FontNameDamascusBold:
            return [UIFont fontWithName:@"DamascusBold" size:fontSize];
        case FontNameDamascusMedium:
            return [UIFont fontWithName:@"DamascusMedium" size:fontSize];
        case FontNameDamascusSemiBold:
            return [UIFont fontWithName:@"DamascusSemiBold" size:fontSize];
        case FontNameDevanagariSangamMN:
            return [UIFont fontWithName:@"DevanagariSangamMN" size:fontSize];
        case FontNameDevanagariSangamMNBold:
            return [UIFont fontWithName:@"DevanagariSangamMN-Bold" size:fontSize];
        case FontNameDidot:
            return [UIFont fontWithName:@"Didot" size:fontSize];
        case FontNameDidotBold:
            return [UIFont fontWithName:@"Didot-Bold" size:fontSize];
        case FontNameDidotItalic:
            return [UIFont fontWithName:@"Didot-Italic" size:fontSize];
        case FontNameDiwanMishafi:
            return [UIFont fontWithName:@"DiwanMishafi" size:fontSize];
        case FontNameEuphemiaUCAS:
            return [UIFont fontWithName:@"EuphemiaUCAS" size:fontSize];
        case FontNameEuphemiaUCASBold:
            return [UIFont fontWithName:@"EuphemiaUCAS-Bold" size:fontSize];
        case FontNameEuphemiaUCASItalic:
            return [UIFont fontWithName:@"EuphemiaUCAS-Italic" size:fontSize];
        case FontNameFarah:
            return [UIFont fontWithName:@"Farah" size:fontSize];
        case FontNameFuturaCondensedExtraBold:
            return [UIFont fontWithName:@"Futura-ExtraBold" size:fontSize];
        case FontNameFuturaCondensedMedium:
            return [UIFont fontWithName:@"Futura-CondensedMedium" size:fontSize];
        case FontNameFuturaMedium:
            return [UIFont fontWithName:@"Futura-Medium" size:fontSize];
        case FontNameFuturaMediumItalicm:
            return [UIFont fontWithName:@"Futura-MediumItalic" size:fontSize];
        case FontNameGeezaPro:
            return [UIFont fontWithName:@"GeezaPro" size:fontSize];
        case FontNameGeezaProBold:
            return [UIFont fontWithName:@"GeezaPro-Bold" size:fontSize];
        case FontNameGeezaProLight:
            return [UIFont fontWithName:@"GeezaPro-Light" size:fontSize];
        case FontNameGeorgia:
            return [UIFont fontWithName:@"Georgia" size:fontSize];
        case FontNameGeorgiaBold:
            return [UIFont fontWithName:@"Georgia-Bold" size:fontSize];
        case FontNameGeorgiaBoldItalic:
            return [UIFont fontWithName:@"Georgia-BoldItalic" size:fontSize];
        case FontNameGeorgiaItalic:
            return [UIFont fontWithName:@"Georgia-Italic" size:fontSize];
        case FontNameGillSans:
            return [UIFont fontWithName:@"GillSans" size:fontSize];
        case FontNameGillSansBold:
            return [UIFont fontWithName:@"GillSans-Bold" size:fontSize];
        case FontNameGillSansBoldItalic:
            return [UIFont fontWithName:@"GillSans-BoldItalic" size:fontSize];
        case FontNameGillSansItalic:
            return [UIFont fontWithName:@"GillSans-Italic" size:fontSize];
        case FontNameGillSansLight:
            return [UIFont fontWithName:@"GillSans-Light" size:fontSize];
        case FontNameGillSansLightItalic:
            return [UIFont fontWithName:@"GillSans-LightItalic" size:fontSize];
        case FontNameGujaratiSangamMN:
            return [UIFont fontWithName:@"GujaratiSangamMN" size:fontSize];
        case FontNameGujaratiSangamMNBold:
            return [UIFont fontWithName:@"GujaratiSangamMN-Bold" size:fontSize];
        case FontNameGurmukhiMN:
            return [UIFont fontWithName:@"GurmukhiMN" size:fontSize];
        case FontNameGurmukhiMNBold:
            return [UIFont fontWithName:@"GurmukhiMN-Bold" size:fontSize];
        case FontNameHelvetica:
            return [UIFont fontWithName:@"Helvetica" size:fontSize];
        case FontNameHelveticaBold:
            return [UIFont fontWithName:@"Helvetica-Bold" size:fontSize];
        case FontNameHelveticaBoldOblique:
            return [UIFont fontWithName:@"Helvetica-BoldOblique" size:fontSize];
        case FontNameHelveticaLight:
            return [UIFont fontWithName:@"Helvetica-Light" size:fontSize];
        case FontNameHelveticaLightOblique:
            return [UIFont fontWithName:@"Helvetica-LightOblique" size:fontSize];
        case FontNameHelveticaNeue:
            return [UIFont fontWithName:@"HelveticaNeue" size:fontSize];
        case FontNameHelveticaNeueBold:
            return [UIFont fontWithName:@"HelveticaNeue-Bold" size:fontSize];
        case FontNameHelveticaNeueBoldItalic:
            return [UIFont fontWithName:@"HelveticaNeue-BoldItalic" size:fontSize];
        case FontNameHelveticaNeueCondensedBlack:
            return [UIFont fontWithName:@"HelveticaNeue-CondensedBlack" size:fontSize];
        case FontNameHelveticaNeueCondensedBold:
            return [UIFont fontWithName:@"HelveticaNeue-CondensedBold" size:fontSize];
        case FontNameHelveticaNeueItalic:
            return [UIFont fontWithName:@"HelveticaNeue-Italic" size:fontSize];
        case FontNameHelveticaNeueLight:
            return [UIFont fontWithName:@"HelveticaNeue-Light" size:fontSize];
        case FontNameHelveticaNeueMedium:
            return [UIFont fontWithName:@"HelveticaNeue-Medium" size:fontSize];
        case FontNameHelveticaNeueMediumItalic:
            return [UIFont fontWithName:@"HelveticaNeue-MediumItalic" size:fontSize];
        case FontNameHelveticaNeueThin:
            return [UIFont fontWithName:@"HelveticaNeue-Thin" size:fontSize];
        case FontNameHelveticaNeueThinItalic:
            return [UIFont fontWithName:@"HelveticaNeue-ThinItalic" size:fontSize];
        case FontNameHelveticaNeueUltraLight:
            return [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:fontSize];
        case FontNameHelveticaNeueUltraLightItalic:
            return [UIFont fontWithName:@"HelveticaNeue-UltraLightItalic" size:fontSize];
        case FontNameHelveticaOblique:
            return [UIFont fontWithName:@"Helvetica-Oblique" size:fontSize];
        case FontNameHiraKakuProNW3:
            return [UIFont fontWithName:@"HiraKakuProN-W3" size:fontSize];
        case FontNameHiraKakuProNW6:
            return [UIFont fontWithName:@"HiraKakuProN-W6" size:fontSize];
        case FontNameHiraMinProNW3:
            return [UIFont fontWithName:@"HiraMinProN-W3" size:fontSize];
        case FontNameHiraMinProNW6:
            return [UIFont fontWithName:@"HiraMinProN-W6" size:fontSize];
        case FontNameHoeflerTextBlack:
            return [UIFont fontWithName:@"HoeflerText-Black" size:fontSize];
        case FontNameHoeflerTextBlackItalic:
            return [UIFont fontWithName:@"HoeflerText-BlackItalic" size:fontSize];
        case FontNameHoeflerTextItalic:
            return [UIFont fontWithName:@"HoeflerText-Italic" size:fontSize];
        case FontNameHoeflerTextRegular:
            return [UIFont fontWithName:@"HoeflerText-Regular" size:fontSize];
        case FontNameKailasa:
            return [UIFont fontWithName:@"Kailasa" size:fontSize];
        case FontNameKailasaBold:
            return [UIFont fontWithName:@"Kailasa-Bold" size:fontSize];
        case FontNameKannadaSangamMN:
            return [UIFont fontWithName:@"KannadaSangamMN" size:fontSize];
        case FontNameKannadaSangamMNBold:
            return [UIFont fontWithName:@"KannadaSangamMN-Bold" size:fontSize];
        case FontNameKhmerSangamMN:
            return [UIFont fontWithName:@"KhmerSangamMN" size:fontSize];
        case FontNameKohinoorBanglaLight:
            return [UIFont fontWithName:@"KohinoorBangla-Light" size:fontSize];
        case FontNameKohinoorBanglaMedium:
            return [UIFont fontWithName:@"KohinoorBangla-Medium" size:fontSize];
        case FontNameKohinoorBanglaRegular:
            return [UIFont fontWithName:@"KohinoorBangla-Regular" size:fontSize];
        case FontNameKohinoorDevanagariLight:
            return [UIFont fontWithName:@"KohinoorDevanagari-Light" size:fontSize];
        case FontNameKohinoorDevanagariMedium:
            return [UIFont fontWithName:@"KohinoorDevanagari-Medium" size:fontSize];
        case FontNameKohinoorDevanagariBook:
            return [UIFont fontWithName:@"KohinoorDevanagari-Book" size:fontSize];
        case FontNameLaoSangamMN:
            return [UIFont fontWithName:@"LaoSangamMN" size:fontSize];
        case FontNameMalayalamSangamMN:
            return [UIFont fontWithName:@"MalayalamSangamMN" size:fontSize];
        case FontNameMalayalamSangamMNBold:
            return [UIFont fontWithName:@"MalayalamSangamMN-Bold" size:fontSize];
        case FontNameMarkerFeltThin:
            return [UIFont fontWithName:@"MarkerFelt-Thin" size:fontSize];
        case FontNameMarkerFeltWide:
            return [UIFont fontWithName:@"MarkerFelt-Wide" size:fontSize];
        case FontNameMenloBold:
            return [UIFont fontWithName:@"Menlo-Bold" size:fontSize];
        case FontNameMenloBoldItalic:
            return [UIFont fontWithName:@"Menlo-BoldItalic" size:fontSize];
        case FontNameMenloItalic:
            return [UIFont fontWithName:@"Menlo-Italic" size:fontSize];
        case FontNameMenloRegular:
            return [UIFont fontWithName:@"Menlo-Regular" size:fontSize];
        case FontNameNoteworthyBold:
            return [UIFont fontWithName:@"Noteworthy-Bold" size:fontSize];
        case FontNameNoteworthyLight:
            return [UIFont fontWithName:@"Noteworthy-Light" size:fontSize];
        case FontNameOptimaBold:
            return [UIFont fontWithName:@"Optima-Bold" size:fontSize];
        case FontNameOptimaBoldItalic:
            return [UIFont fontWithName:@"Optima-BoldItalic" size:fontSize];
        case FontNameOptimaExtraBlack:
            return [UIFont fontWithName:@"Optima-ExtraBold" size:fontSize];
        case FontNameOptimaItalic:
            return [UIFont fontWithName:@"Optima-Italic" size:fontSize];
        case FontNameOptimaRegular:
            return [UIFont fontWithName:@"Optima-Regular" size:fontSize];
        case FontNameOriyaSangamMN:
            return [UIFont fontWithName:@"OriyaSangamMN" size:fontSize];
        case FontNameOriyaSangamMNBold:
            return [UIFont fontWithName:@"OriyaSangamMN-Bold" size:fontSize];
        case FontNamePalatinoBold:
            return [UIFont fontWithName:@"Palatino-Bold" size:fontSize];
        case FontNamePalatinoBoldItalic:
            return [UIFont fontWithName:@"Palatino-BoldItalic" size:fontSize];
        case FontNamePalatinoItalic:
            return [UIFont fontWithName:@"Palatino-Italic" size:fontSize];
        case FontNamePalatinoRoman:
            return [UIFont fontWithName:@"Palatino-Roman" size:fontSize];
        case FontNamePapyrus:
            return [UIFont fontWithName:@"Papyrus" size:fontSize];
        case FontNamePapyrusCondensed:
            return [UIFont fontWithName:@"Papyrus-Condensed" size:fontSize];
        case FontNamePartyLetPlain:
            return [UIFont fontWithName:@"PartyLetPlain" size:fontSize];
        case FontNameSavoyeLetPlain:
            return [UIFont fontWithName:@"SavoyeLetPlain" size:fontSize];
        case FontNameSinhalaSangamMN:
            return [UIFont fontWithName:@"SinhalaSangamMN" size:fontSize];
        case FontNameSinhalaSangamMNBold:
            return [UIFont fontWithName:@"SinhalaSangamMN-Bold" size:fontSize];
        case FontNameSnellRoundhand:
            return [UIFont fontWithName:@"SnellRoundhand" size:fontSize];
        case FontNameSnellRoundhandBlack:
            return [UIFont fontWithName:@"SnellRoundhand-Black" size:fontSize];
        case FontNameSnellRoundhandBold:
            return [UIFont fontWithName:@"SnellRoundhand-Bold" size:fontSize];
        case FontNameSTHeitiSCLight:
            return [UIFont fontWithName:@"STHeitiSC-Light" size:fontSize];
        case FontNameSTHeitiSCMedium:
            return [UIFont fontWithName:@"STHeitiSC-Medium" size:fontSize];
        case FontNameSTHeitiTCLight:
            return [UIFont fontWithName:@"STHeitiTC-Light" size:fontSize];
        case FontNameSTHeitiTCMedium:
            return [UIFont fontWithName:@"STHeitiTC-Medium" size:fontSize];
        case FontNameSymbol:
            return [UIFont fontWithName:@"Symbol" size:fontSize];
        case FontNameTamilSangamMN:
            return [UIFont fontWithName:@"TamilSangamMN" size:fontSize];
        case FontNameTamilSangamMNBold:
            return [UIFont fontWithName:@"TamilSangamMN-Bold" size:fontSize];
        case FontNameTeluguSangamMN:
            return [UIFont fontWithName:@"TeluguSangamMN" size:fontSize];
        case FontNameTeluguSangamMNBold:
            return [UIFont fontWithName:@"TeluguSangamMN-Bold" size:fontSize];
        case FontNameThonburi:
            return [UIFont fontWithName:@"Thonburi" size:fontSize];
        case FontNameThonburiBold:
            return [UIFont fontWithName:@"Thonburi-Bold" size:fontSize];
        case FontNameThonburiLight:
            return [UIFont fontWithName:@"Thonburi-Light" size:fontSize];
        case FontNameTimesNewRomanPSBoldItalicMT:
            return [UIFont fontWithName:@"TimesNewRomanPS-BoldItalic" size:fontSize];
        case FontNameTimesNewRomanPSBoldMT:
            return [UIFont fontWithName:@"TimesNewRomanPS-Bold" size:fontSize];
        case FontNameTimesNewRomanPSItalicMT:
            return [UIFont fontWithName:@"TimesNewRomanPS-ItalicMT" size:fontSize];
        case FontNameTimesNewRomanPSMT:
            return [UIFont fontWithName:@"TimesNewRomanPSMT" size:fontSize];
        case FontNameTrebuchetBoldItalic:
            return [UIFont fontWithName:@"Trebuchet-BoldItalic" size:fontSize];
        case FontNameTrebuchetMS:
            return [UIFont fontWithName:@"TrebuchetMS" size:fontSize];
        case FontNameTrebuchetMSBold:
            return [UIFont fontWithName:@"TrebuchetMS-Bold" size:fontSize];
        case FontNameTrebuchetMSItalic:
            return [UIFont fontWithName:@"TrebuchetMS-Italic" size:fontSize];
        case FontNameVerdana:
            return [UIFont fontWithName:@"Verdana" size:fontSize];
        case FontNameVerdanaBold:
            return [UIFont fontWithName:@"Verdana-Bold" size:fontSize];
        case FontNameVerdanaBoldItalic:
            return [UIFont fontWithName:@"Verdana-BoldItalic" size:fontSize];
        case FontNameVerdanaItalic:
            return [UIFont fontWithName:@"Verdana-Italic" size:fontSize];
        case FontNameZapfDingbatsITC:
            return [UIFont fontWithName:@"ZapfDingbatsITC" size:fontSize];
        case FontNameZapfino:
            return [UIFont fontWithName:@"Zapfino" size:fontSize];
    }
}

@end
