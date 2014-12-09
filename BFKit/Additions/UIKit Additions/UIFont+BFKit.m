//
//  UIFont+BFKit.m
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

#import "UIFont+BFKit.h"

@implementation UIFont (BFKit)

+ (void)allFamilyAndFonts
{
    NSArray *fontFamilies = [UIFont familyNames];
    
    for(int i = 0; i < [fontFamilies count]; i++)
    {
        NSString *fontFamily = [fontFamilies objectAtIndex:i];
        NSArray *fontNames = [UIFont fontNamesForFamilyName:[fontFamilies objectAtIndex:i]];
        NSLog(@"%@: %@", fontFamily, fontNames);
    }
}

+ (NSArray *)fontsNameForFamilyName:(FamilyFontName)familyFontName
{
    NSArray *fontNames;
    
    switch(familyFontName)
    {
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
        case FamilyFontNameBanglaSangamMN:
            fontNames = [UIFont fontNamesForFamilyName:@"Bangla Sangam MN"];
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
        case FamilyFontNameDINAlternate:
            fontNames = [UIFont fontNamesForFamilyName:@"DIN Alternate"];
            break;
        case FamilyFontNameDINCondensed:
            fontNames = [UIFont fontNamesForFamilyName:@"DIN Condensed"];
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
        case FamilyFontNameIowanOldStyle:
            fontNames = [UIFont fontNamesForFamilyName:@"Iowan Old Style"];
            break;
        case FamilyFontNameKailasa:
            fontNames = [UIFont fontNamesForFamilyName:@"Kailasa"];
            break;
        case FamilyFontNameKannadaSangamMN:
            fontNames = [UIFont fontNamesForFamilyName:@"Kannada Sangam MN"];
            break;
        case FamilyFontNameMalayamSangamMN:
            fontNames = [UIFont fontNamesForFamilyName:@"Malayalam Sangam MN"];
            break;
        case FamilyFontNameMarion:
            fontNames = [UIFont fontNamesForFamilyName:@"Marion"];
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
        case FamilyFontNameSuperclarendon:
            fontNames = [UIFont fontNamesForFamilyName:@"Superclarendon"];
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
        default:
            break;
    }
    
    NSLog (@"%@", fontNames);
    
    return fontNames;
}

+ (UIFont *)fontForFontName:(FontName)fontName size:(CGFloat)fontSize
{
    switch(fontName)
    {
        case FontNameAcademyEngravedLetPlain:
            return [UIFont fontWithName:@"AcademyEngravedLetPlain" size:fontSize];
            break;
        case FontNameAlNile:
            return [UIFont fontWithName:@"AlNile" size:fontSize];
            break;
        case FontNameAlNileBold:
            return [UIFont fontWithName:@"AlNile-Bold" size:fontSize];
            break;
        case FontNameAmericanTypewriter:
            return [UIFont fontWithName:@"AmericanTypewriter" size:fontSize];
            break;
        case FontNameAmericanTypewriterBold:
            return [UIFont fontWithName:@"AmericanTypewriter-Bold" size:fontSize];
            break;
        case FontNameAmericanTypewriterCondensed:
            return [UIFont fontWithName:@"AmericanTypewriter-Condensed" size:fontSize];
            break;
        case FontNameAmericanTypewriterCondensedBold:
            return [UIFont fontWithName:@"AmericanTypewriter-CondensedBold" size:fontSize];
            break;
        case FontNameAmericanTypewriterCondensedLight:
            return [UIFont fontWithName:@"AmericanTypewriter-CondensedLight" size:fontSize];
            break;
        case FontNameAmericanTypewriterLight:
            return [UIFont fontWithName:@"AmericanTypewriter-Light" size:fontSize];
            break;
        case FontNameAppleColorEmoji:
            return [UIFont fontWithName:@"AppleColorEmoji" size:fontSize];
            break;
        case FontNameAppleSDGohticNeoBold:
            return [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:fontSize];
            break;
        case FontNameAppleSDGohticNeoLight:
            return [UIFont fontWithName:@"AppleSDGothicNeo-Light" size:fontSize];
            break;
        case FontNameAppleSDGohticNeoMedium:
            return [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:fontSize];
            break;
        case FontNameAppleSDGohticNeoRegular:
            return [UIFont fontWithName:@"AppleSDGothicNeo-Regular" size:fontSize];
            break;
        case FontNameAppleSDGohticNeoSemiBold:
            return [UIFont fontWithName:@"AppleSDGothicNeo-SemiBold" size:fontSize];
            break;
        case FontNameAppleSDGohticNeoThin:
            return [UIFont fontWithName:@"AppleSDGothicNeo-Thin" size:fontSize];
            break;
        case FontNameArialBoldItalicMT:
            return [UIFont fontWithName:@"Arial-BoldItalicMT" size:fontSize];
            break;
        case FontNameArialBoldMT:
            return [UIFont fontWithName:@"Arial-BoldMT" size:fontSize];
            break;
        case FontNameArialHebrew:
            return [UIFont fontWithName:@"ArialHebrew" size:fontSize];
            break;
        case FontNameArialHebrewBold:
            return [UIFont fontWithName:@"ArialHebrew-Bold" size:fontSize];
            break;
        case FontNameArialHebrewLight:
            return [UIFont fontWithName:@"ArialHebrew-Light" size:fontSize];
            break;
        case FontNameArialItalicMT:
            return [UIFont fontWithName:@"Arial-ItalicMT" size:fontSize];
            break;
        case FontNameArialMT:
            return [UIFont fontWithName:@"ArialMT" size:fontSize];
            break;
        case FontNameArialRoundedMTBold:
            return [UIFont fontWithName:@"ArialRoundedMTBold" size:fontSize];
            break;
        case FontNameASTHeitiLight:
            return [UIFont fontWithName:@"ASTHeiti-Light" size:fontSize];
            break;
        case FontNameASTHeitiMedium:
            return [UIFont fontWithName:@"ASTHeiti-Medium" size:fontSize];
            break;
        case FontNameAvenirBlack:
            return [UIFont fontWithName:@"Avenir-Black" size:fontSize];
            break;
        case FontNameAvenirBlackOblique:
            return [UIFont fontWithName:@"Avenir-BlackOblique" size:fontSize];
            break;
        case FontNameAvenirBook:
            return [UIFont fontWithName:@"Avenir-Book" size:fontSize];
            break;
        case FontNameAvenirBookOblique:
            return [UIFont fontWithName:@"Avenir-BookOblique" size:fontSize];
            break;
        case FontNameAvenirHeavtOblique:
            return [UIFont fontWithName:@"Avenir-HeavyOblique" size:fontSize];
            break;
        case FontNameAvenirHeavy:
            return [UIFont fontWithName:@"Avenir-Heavy" size:fontSize];
            break;
        case FontNameAvenirLight:
            return [UIFont fontWithName:@"Avenir-Light" size:fontSize];
            break;
        case FontNameAvenirLightOblique:
            return [UIFont fontWithName:@"Avenir-LightOblique" size:fontSize];
            break;
        case FontNameAvenirMedium:
            return [UIFont fontWithName:@"Avenir-Medium" size:fontSize];
            break;
        case FontNameAvenirMediumOblique:
            return [UIFont fontWithName:@"Avenir-MediumOblique" size:fontSize];
            break;
        case FontNameAvenirNextBold:
            return [UIFont fontWithName:@"AvenirNext-Bold" size:fontSize];
            break;
        case FontNameAvenirNextBoldItalic:
            return [UIFont fontWithName:@"AvenirNext-BoldItalic" size:fontSize];
            break;
        case FontNameAvenirNextCondensedBold:
            return [UIFont fontWithName:@"AvenirNextCondensed-Bold" size:fontSize];
            break;
        case FontNameAvenirNextCondensedBoldItalic:
            return [UIFont fontWithName:@"AvenirNextCondensed-BoldItalic" size:fontSize];
            break;
        case FontNameAvenirNextCondensedDemiBold:
            return [UIFont fontWithName:@"AvenirNextCondensed-DemiBold" size:fontSize];
            break;
        case FontNameAvenirNextCondensedDemiBoldItalic:
            return [UIFont fontWithName:@"AvenirNextCondensed-DemiBoldItalic" size:fontSize];
            break;
        case FontNameAvenirNextCondensedHeavy:
            return [UIFont fontWithName:@"AvenirNextCondensed-Heavy" size:fontSize];
            break;
        case FontNameAvenirNextCondensedHeavyItalic:
            return [UIFont fontWithName:@"AvenirNextCondensed-HeavyItalic" size:fontSize];
            break;
        case FontNameAvenirNextCondensedItalic:
            return [UIFont fontWithName:@"AvenirNextCondensed-Italic" size:fontSize];
            break;
        case FontNameAvenirNextCondensedMedium:
            return [UIFont fontWithName:@"AvenirNextCondensed-Medium" size:fontSize];
            break;
        case FontNameAvenirNextCondensedMediumItalic:
            return [UIFont fontWithName:@"AvenirNextCondensed-MediumItalic" size:fontSize];
            break;
        case FontNameAvenirNextCondensedRegular:
            return [UIFont fontWithName:@"AvenirNextCondensed-Regular" size:fontSize];
            break;
        case FontNameAvenirNextCondensedUltraLight:
            return [UIFont fontWithName:@"AvenirNextCondensed-UltraLight" size:fontSize];
            break;
        case FontNameAvenirNextCondensedUltraLightItalic:
            return [UIFont fontWithName:@"AvenirNextCondensed-UltraLightItalic" size:fontSize];
            break;
        case FontNameAvenirNextDemiBold:
            return [UIFont fontWithName:@"AvenirNext-DemiBold" size:fontSize];
            break;
        case FontNameAvenirNextDemiBoldItalic:
            return [UIFont fontWithName:@"AvenirNext-BoldItalic" size:fontSize];
            break;
        case FontNameAvenirNextHeavy:
            return [UIFont fontWithName:@"AvenirNext-Heavy" size:fontSize];
            break;
        case FontNameAvenirNextItalic:
            return [UIFont fontWithName:@"AvenirNext-Italic" size:fontSize];
            break;
        case FontNameAvenirNextMedium:
            return [UIFont fontWithName:@"AvenirNext-Medium" size:fontSize];
            break;
        case FontNameAvenirNextMediumItalic:
            return [UIFont fontWithName:@"AvenirNext-MediumItalic" size:fontSize];
            break;
        case FontNameAvenirNextRegular:
            return [UIFont fontWithName:@"AvenirNext-Regular" size:fontSize];
            break;
        case FontNameAvenirNextUltraLight:
            return [UIFont fontWithName:@"AvenirNext-UltraLight" size:fontSize];
            break;
        case FontNameAvenirNextUltraLightItalic:
            return [UIFont fontWithName:@"AvenirNext-UltraLightItalic" size:fontSize];
            break;
        case FontNameAvenirOblique:
            return [UIFont fontWithName:@"Avenir-Oblique" size:fontSize];
            break;
        case FontNameAvenirRoman:
            return [UIFont fontWithName:@"Avenir-Roman" size:fontSize];
            break;
        case FontNameBanglaSangamMN:
            return [UIFont fontWithName:@"BanglaSangamMN" size:fontSize];
            break;
        case FontNameBanglaSangamMNBold:
            return [UIFont fontWithName:@"BanglaSangamMN-Bold" size:fontSize];
            break;
        case FontNameBaskerville:
            return [UIFont fontWithName:@"Baskerville" size:fontSize];
            break;
        case FontNameBaskervilleBold:
            return [UIFont fontWithName:@"Baskerville-Bold" size:fontSize];
            break;
        case FontNameBaskervilleBoldItalic:
            return [UIFont fontWithName:@"Baskerville-BoldItalic" size:fontSize];
            break;
        case FontNameBaskervilleItalic:
            return [UIFont fontWithName:@"Baskerville-Italic" size:fontSize];
            break;
        case FontNameBaskervilleSemiBold:
            return [UIFont fontWithName:@"Baskerville-SemiBold" size:fontSize];
            break;
        case FontNameBaskervilleSemiBoldItalic:
            return [UIFont fontWithName:@"Baskerville-BoldItalic" size:fontSize];
            break;
        case FontNameBodoniOrnamentsITCTT:
            return [UIFont fontWithName:@"BodoniOrnamentsITCTT" size:fontSize];
            break;
        case FontNameBodoniSvtyTwoITCTTBold:
            return [UIFont fontWithName:@"BodoniSvtyTwoITCTT-Bold" size:fontSize];
            break;
        case FontNameBodoniSvtyTwoITCTTBook:
            return [UIFont fontWithName:@"BodoniSvtyTwoITCTT-Book" size:fontSize];
            break;
        case FontNameBodoniSvtyTwoITCTTBookIta:
            return [UIFont fontWithName:@"BodoniSvtyTwoITCTT-BookIta" size:fontSize];
            break;
        case FontNameBodoniSvtyTwoOSITCTTBold:
            return [UIFont fontWithName:@"BodoniSvtyTwoOSITCTT-Bold" size:fontSize];
            break;
        case FontNameBodoniSvtyTwoOSITCTTBook:
            return [UIFont fontWithName:@"BodoniSvtyTwoOSITCTT-Book" size:fontSize];
            break;
        case FontNameBodoniSvtyTwoOSITCTTBookIt:
            return [UIFont fontWithName:@"BodoniSvtyTwoOSITCTT-BookIt" size:fontSize];
            break;
        case FontNameBodoniSvtyTwoSCITCTTBook:
            return [UIFont fontWithName:@"BodoniSvtyTwoSCITCTT-Book" size:fontSize];
            break;
        case FontNameBradleyHandITCTTBold:
            return [UIFont fontWithName:@"BradleyHandITCTT-Bold" size:fontSize];
            break;
        case FontNameChalkboardSEBold:
            return [UIFont fontWithName:@"ChalkboardSE-Bold" size:fontSize];
            break;
        case FontNameChalkboardSELight:
            return [UIFont fontWithName:@"ChalkboardSE-Light" size:fontSize];
            break;
        case FontNameChalkboardSERegular:
            return [UIFont fontWithName:@"ChalkboardSE-Regular" size:fontSize];
            break;
        case FontNameChalkduster:
            return [UIFont fontWithName:@"Chalkduster" size:fontSize];
            break;
        case FontNameCochin:
            return [UIFont fontWithName:@"Cochin" size:fontSize];
            break;
        case FontNameCochinBold:
            return [UIFont fontWithName:@"Cochin-Bold" size:fontSize];
            break;
        case FontNameCochinBoldItalic:
            return [UIFont fontWithName:@"Cochin-BoldItalic" size:fontSize];
            break;
        case FontNameCochinItalic:
            return [UIFont fontWithName:@"Cochin-Italic" size:fontSize];
            break;
        case FontNameCopperplate:
            return [UIFont fontWithName:@"Copperplate" size:fontSize];
            break;
        case FontNameCopperplateBold:
            return [UIFont fontWithName:@"Copperplate-Bold" size:fontSize];
            break;
        case FontNameCopperplateLight:
            return [UIFont fontWithName:@"Copperplate-Light" size:fontSize];
            break;
        case FontNameCourier:
            return [UIFont fontWithName:@"Courier" size:fontSize];
            break;
        case FontNameCourierBold:
            return [UIFont fontWithName:@"Courier-Bold" size:fontSize];
            break;
        case FontNameCourierBoldOblique:
            return [UIFont fontWithName:@"Courier-BoldOblique" size:fontSize];
            break;
        case FontNameCourierNewPSBoldItalicMT:
            return [UIFont fontWithName:@"CourierNewPS-BoldItalicMT" size:fontSize];
            break;
        case FontNameCourierNewPSBoldMT:
            return [UIFont fontWithName:@"CourierNewPS-BoldMT" size:fontSize];
            break;
        case FontNameCourierNewPSItalicMT:
            return [UIFont fontWithName:@"CourierNewPS-ItalicMT" size:fontSize];
            break;
        case FontNameCourierNewPSMT:
            return [UIFont fontWithName:@"CourierNewPSMT" size:fontSize];
            break;
        case FontNameCourierOblique:
            return [UIFont fontWithName:@"Courier-Oblique" size:fontSize];
            break;
        case FontNameDamascus:
            return [UIFont fontWithName:@"Damascus" size:fontSize];
            break;
        case FontNameDamascusBold:
            return [UIFont fontWithName:@"DamascusBold" size:fontSize];
            break;
        case FontNameDamascusMedium:
            return [UIFont fontWithName:@"DamascusMedium" size:fontSize];
            break;
        case FontNameDamascusSemiBold:
            return [UIFont fontWithName:@"DamascusSemiBold" size:fontSize];
            break;
        case FontNameDevanagariSangamMN:
            return [UIFont fontWithName:@"DevanagariSangamMN" size:fontSize];
            break;
        case FontNameDevanagariSangamMNBold:
            return [UIFont fontWithName:@"DevanagariSangamMN-Bold" size:fontSize];
            break;
        case FontNameDidot:
            return [UIFont fontWithName:@"Didot" size:fontSize];
            break;
        case FontNameDidotBold:
            return [UIFont fontWithName:@"Didot-Bold" size:fontSize];
            break;
        case FontNameDidotItalic:
            return [UIFont fontWithName:@"Didot-Italic" size:fontSize];
            break;
        case FontNameDINAlternateBold:
            return [UIFont fontWithName:@"DINAlternate-Bold" size:fontSize];
            break;
        case FontNameDINCondensedBold:
            return [UIFont fontWithName:@"DINCondensed-Bold" size:fontSize];
            break;
        case FontNameDiwanMishafi:
            return [UIFont fontWithName:@"DiwanMishafi" size:fontSize];
            break;
        case FontNameEuphemiaUCAS:
            return [UIFont fontWithName:@"EuphemiaUCAS" size:fontSize];
            break;
        case FontNameEuphemiaUCASBold:
            return [UIFont fontWithName:@"EuphemiaUCAS-Bold" size:fontSize];
            break;
        case FontNameEuphemiaUCASItalic:
            return [UIFont fontWithName:@"EuphemiaUCAS-Italic" size:fontSize];
            break;
        case FontNameFarah:
            return [UIFont fontWithName:@"Farah" size:fontSize];
            break;
        case FontNameFuturaCondensedExtraBold:
            return [UIFont fontWithName:@"Futura-ExtraBold" size:fontSize];
            break;
        case FontNameFuturaCondensedMedium:
            return [UIFont fontWithName:@"Futura-CondensedMedium" size:fontSize];
            break;
        case FontNameFuturaMedium:
            return [UIFont fontWithName:@"Futura-Medium" size:fontSize];
            break;
        case FontNameFuturaMediumItalicm:
            return [UIFont fontWithName:@"Futura-MediumItalic" size:fontSize];
            break;
        case FontNameGeezaPro:
            return [UIFont fontWithName:@"GeezaPro" size:fontSize];
            break;
        case FontNameGeezaProBold:
            return [UIFont fontWithName:@"GeezaPro-Bold" size:fontSize];
            break;
        case FontNameGeezaProLight:
            return [UIFont fontWithName:@"GeezaPro-Light" size:fontSize];
            break;
        case FontNameGeorgia:
            return [UIFont fontWithName:@"Georgia" size:fontSize];
            break;
        case FontNameGeorgiaBold:
            return [UIFont fontWithName:@"Georgia-Bold" size:fontSize];
            break;
        case FontNameGeorgiaBoldItalic:
            return [UIFont fontWithName:@"Georgia-BoldItalic" size:fontSize];
            break;
        case FontNameGeorgiaItalic:
            return [UIFont fontWithName:@"Georgia-Italic" size:fontSize];
            break;
        case FontNameGillSans:
            return [UIFont fontWithName:@"GillSans" size:fontSize];
            break;
        case FontNameGillSansBold:
            return [UIFont fontWithName:@"GillSans-Bold" size:fontSize];
            break;
        case FontNameGillSansBoldItalic:
            return [UIFont fontWithName:@"GillSans-BoldItalic" size:fontSize];
            break;
        case FontNameGillSansItalic:
            return [UIFont fontWithName:@"GillSans-Italic" size:fontSize];
            break;
        case FontNameGillSansLight:
            return [UIFont fontWithName:@"GillSans-Light" size:fontSize];
            break;
        case FontNameGillSansLightItalic:
            return [UIFont fontWithName:@"GillSans-LightItalic" size:fontSize];
            break;
        case FontNameGujaratiSangamMN:
            return [UIFont fontWithName:@"GujaratiSangamMN" size:fontSize];
            break;
        case FontNameGujaratiSangamMNBold:
            return [UIFont fontWithName:@"GujaratiSangamMN-Bold" size:fontSize];
            break;
        case FontNameGurmukhiMN:
            return [UIFont fontWithName:@"GurmukhiMN" size:fontSize];
            break;
        case FontNameGurmukhiMNBold:
            return [UIFont fontWithName:@"GurmukhiMN-Bold" size:fontSize];
            break;
        case FontNameHelvetica:
            return [UIFont fontWithName:@"Helvetica" size:fontSize];
            break;
        case FontNameHelveticaBold:
            return [UIFont fontWithName:@"Helvetica-Bold" size:fontSize];
            break;
        case FontNameHelveticaBoldOblique:
            return [UIFont fontWithName:@"Helvetica-BoldOblique" size:fontSize];
            break;
        case FontNameHelveticaLight:
            return [UIFont fontWithName:@"Helvetica-Light" size:fontSize];
            break;
        case FontNameHelveticaLightOblique:
            return [UIFont fontWithName:@"Helvetica-LightOblique" size:fontSize];
            break;
        case FontNameHelveticaNeue:
            return [UIFont fontWithName:@"HelveticaNeue" size:fontSize];
            break;
        case FontNameHelveticaNeueBold:
            return [UIFont fontWithName:@"HelveticaNeue-Bold" size:fontSize];
            break;
        case FontNameHelveticaNeueBoldItalic:
            return [UIFont fontWithName:@"HelveticaNeue-BoldItalic" size:fontSize];
            break;
        case FontNameHelveticaNeueCondensedBlack:
            return [UIFont fontWithName:@"HelveticaNeue-CondensedBlack" size:fontSize];
            break;
        case FontNameHelveticaNeueCondensedBold:
            return [UIFont fontWithName:@"HelveticaNeue-CondensedBold" size:fontSize];
            break;
        case FontNameHelveticaNeueItalic:
            return [UIFont fontWithName:@"HelveticaNeue-Italic" size:fontSize];
            break;
        case FontNameHelveticaNeueLight:
            return [UIFont fontWithName:@"HelveticaNeue-Light" size:fontSize];
            break;
        case FontNameHelveticaNeueMedium:
            return [UIFont fontWithName:@"HelveticaNeue-Medium" size:fontSize];
            break;
        case FontNameHelveticaNeueMediumItalic:
            return [UIFont fontWithName:@"HelveticaNeue-MediumItalic" size:fontSize];
            break;
        case FontNameHelveticaNeueThin:
            return [UIFont fontWithName:@"HelveticaNeue-Thin" size:fontSize];
            break;
        case FontNameHelveticaNeueThinItalic:
            return [UIFont fontWithName:@"HelveticaNeue-ThinItalic" size:fontSize];
            break;
        case FontNameHelveticaNeueUltraLight:
            return [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:fontSize];
            break;
        case FontNameHelveticaNeueUltraLightItalic:
            return [UIFont fontWithName:@"HelveticaNeue-UltraLightItalic" size:fontSize];
            break;
        case FontNameHelveticaOblique:
            return [UIFont fontWithName:@"Helvetica-Oblique" size:fontSize];
            break;
        case FontNameHiraKakuProNW3:
            return [UIFont fontWithName:@"HiraKakuProN-W3" size:fontSize];
            break;
        case FontNameHiraKakuProNW6:
            return [UIFont fontWithName:@"HiraKakuProN-W6" size:fontSize];
            break;
        case FontNameHiraMinProNW3:
            return [UIFont fontWithName:@"HiraMinProN-W3" size:fontSize];
            break;
        case FontNameHiraMinProNW6:
            return [UIFont fontWithName:@"HiraMinProN-W6" size:fontSize];
            break;
        case FontNameHoeflerTextBlack:
            return [UIFont fontWithName:@"HoeflerText-Black" size:fontSize];
            break;
        case FontNameHoeflerTextBlackItalic:
            return [UIFont fontWithName:@"HoeflerText-BlackItalic" size:fontSize];
            break;
        case FontNameHoeflerTextItalic:
            return [UIFont fontWithName:@"HoeflerText-Italic" size:fontSize];
            break;
        case FontNameHoeflerTextRegular:
            return [UIFont fontWithName:@"HoeflerText-Regular" size:fontSize];
            break;
        case FontNameIowanOldStyleBold:
            return [UIFont fontWithName:@"IowanOldStyle-Bold" size:fontSize];
            break;
        case FontNameIowanOldStyleBoldItalic:
            return [UIFont fontWithName:@"IowanOldStyle-BoldItalic" size:fontSize];
            break;
        case FontNameIowanOldStyleItalic:
            return [UIFont fontWithName:@"IowanOldStyle-Italic" size:fontSize];
            break;
        case FontNameIowanOldStyleRoman:
            return [UIFont fontWithName:@"IowanOldStyle-Roman" size:fontSize];
            break;
        case FontNameKailasa:
            return [UIFont fontWithName:@"Kailasa" size:fontSize];
            break;
        case FontNameKailasaBold:
            return [UIFont fontWithName:@"Kailasa-Bold" size:fontSize];
            break;
        case FontNameKannadaSangamMN:
            return [UIFont fontWithName:@"KannadaSangamMN" size:fontSize];
            break;
        case FontNameKannadaSangamMNBold:
            return [UIFont fontWithName:@"KannadaSangamMN-Bold" size:fontSize];
            break;
        case FontNameMalayalamSangamMN:
            return [UIFont fontWithName:@"MalayalamSangamMN" size:fontSize];
            break;
        case FontNameMalayalamSangamMNBold:
            return [UIFont fontWithName:@"MalayalamSangamMN-Bold" size:fontSize];
            break;
        case FontNameMarionBold:
            return [UIFont fontWithName:@"Marion-Bold" size:fontSize];
            break;
        case FontNameMarionItalic:
            return [UIFont fontWithName:@"Marion-Italic" size:fontSize];
            break;
        case FontNameMarionRegular:
            return [UIFont fontWithName:@"Marion-Regular" size:fontSize];
            break;
        case FontNameMarkerFeltThin:
            return [UIFont fontWithName:@"MarkerFelt-Thin" size:fontSize];
            break;
        case FontNameMarkerFeltWide:
            return [UIFont fontWithName:@"MarkerFelt-Wide" size:fontSize];
            break;
        case FontNameMenloBold:
            return [UIFont fontWithName:@"Menlo-Bold" size:fontSize];
            break;
        case FontNameMenloBoldItalic:
            return [UIFont fontWithName:@"Menlo-BoldItalic" size:fontSize];
            break;
        case FontNameMenloItalic:
            return [UIFont fontWithName:@"Menlo-Italic" size:fontSize];
            break;
        case FontNameMenloRegular:
            return [UIFont fontWithName:@"Menlo-Regular" size:fontSize];
            break;
        case FontNameNoteworthyBold:
            return [UIFont fontWithName:@"Noteworthy-Bold" size:fontSize];
            break;
        case FontNameNoteworthyLight:
            return [UIFont fontWithName:@"Noteworthy-Light" size:fontSize];
            break;
        case FontNameOptimaBold:
            return [UIFont fontWithName:@"Optima-Bold" size:fontSize];
            break;
        case FontNameOptimaBoldItalic:
            return [UIFont fontWithName:@"Optima-BoldItalic" size:fontSize];
            break;
        case FontNameOptimaExtraBlack:
            return [UIFont fontWithName:@"Optima-ExtraBold" size:fontSize];
            break;
        case FontNameOptimaItalic:
            return [UIFont fontWithName:@"Optima-Italic" size:fontSize];
            break;
        case FontNameOptimaRegular:
            return [UIFont fontWithName:@"Optima-Regular" size:fontSize];
            break;
        case FontNameOriyaSangamMN:
            return [UIFont fontWithName:@"OriyaSangamMN" size:fontSize];
            break;
        case FontNameOriyaSangamMNBold:
            return [UIFont fontWithName:@"OriyaSangamMN-Bold" size:fontSize];
            break;
        case FontNamePalatinoBold:
            return [UIFont fontWithName:@"Palatino-Bold" size:fontSize];
            break;
        case FontNamePalatinoBoldItalic:
            return [UIFont fontWithName:@"Palatino-BoldItalic" size:fontSize];
            break;
        case FontNamePalatinoItalic:
            return [UIFont fontWithName:@"Palatino-Italic" size:fontSize];
            break;
        case FontNamePalatinoRoman:
            return [UIFont fontWithName:@"Palatino-Roman" size:fontSize];
            break;
        case FontNamePapyrus:
            return [UIFont fontWithName:@"Papyrus" size:fontSize];
            break;
        case FontNamePapyrusCondensed:
            return [UIFont fontWithName:@"Papyrus-Condensed" size:fontSize];
            break;
        case FontNamePartyLetPlain:
            return [UIFont fontWithName:@"PartyLetPlain" size:fontSize];
            break;
        case FontNameSavoyeLetPlain:
            return [UIFont fontWithName:@"SavoyeLetPlain" size:fontSize];
            break;
        case FontNameSinhalaSangamMN:
            return [UIFont fontWithName:@"SinhalaSangamMN" size:fontSize];
            break;
        case FontNameSinhalaSangamMNBold:
            return [UIFont fontWithName:@"SinhalaSangamMN-Bold" size:fontSize];
            break;
        case FontNameSnellRoundhand:
            return [UIFont fontWithName:@"SnellRoundhand" size:fontSize];
            break;
        case FontNameSnellRoundhandBlack:
            return [UIFont fontWithName:@"SnellRoundhand-Black" size:fontSize];
            break;
        case FontNameSnellRoundhandBold:
            return [UIFont fontWithName:@"SnellRoundhand-Bold" size:fontSize];
            break;
        case FontNameSTHeitiSCLight:
            return [UIFont fontWithName:@"STHeitiSC-Light" size:fontSize];
            break;
        case FontNameSTHeitiSCMedium:
            return [UIFont fontWithName:@"STHeitiSC-Medium" size:fontSize];
            break;
        case FontNameSTHeitiTCLight:
            return [UIFont fontWithName:@"STHeitiTC-Light" size:fontSize];
            break;
        case FontNameSTHeitiTCMedium:
            return [UIFont fontWithName:@"STHeitiTC-Medium" size:fontSize];
            break;
        case FontNameSuperclarendonBlack:
            return [UIFont fontWithName:@"Superclarendon-Black" size:fontSize];
            break;
        case FontNameSuperclarendonBlackItalic:
            return [UIFont fontWithName:@"Superclarendon-BalckItalic" size:fontSize];
            break;
        case FontNameSuperclarendonBold:
            return [UIFont fontWithName:@"Superclarendon-Bold" size:fontSize];
            break;
        case FontNameSuperclarendonBoldItalic:
            return [UIFont fontWithName:@"Superclarendon-BoldItalic" size:fontSize];
            break;
        case FontNameSuperclarendonItalic:
            return [UIFont fontWithName:@"Superclarendon-Italic" size:fontSize];
            break;
        case FontNameSuperclarendonLight:
            return [UIFont fontWithName:@"Superclarendon-Light" size:fontSize];
            break;
        case FontNameSuperclarendonLightItalic:
            return [UIFont fontWithName:@"Superclarendon-LightItalic" size:fontSize];
            break;
        case FontNameSuperclarendonRegular:
            return [UIFont fontWithName:@"Superclarendon-Regular" size:fontSize];
            break;
        case FontNameSymbol:
            return [UIFont fontWithName:@"Symbol" size:fontSize];
            break;
        case FontNameTamilSangamMN:
            return [UIFont fontWithName:@"TamilSangamMN" size:fontSize];
            break;
        case FontNameTamilSangamMNBold:
            return [UIFont fontWithName:@"TamilSangamMN-Bold" size:fontSize];
            break;
        case FontNameTeluguSangamMN:
            return [UIFont fontWithName:@"TeluguSangamMN" size:fontSize];
            break;
        case FontNameTeluguSangamMNBold:
            return [UIFont fontWithName:@"TeluguSangamMN-Bold" size:fontSize];
            break;
        case FontNameThonburi:
            return [UIFont fontWithName:@"Thonburi" size:fontSize];
            break;
        case FontNameThonburiBold:
            return [UIFont fontWithName:@"Thonburi-Bold" size:fontSize];
            break;
        case FontNameThonburiLight:
            return [UIFont fontWithName:@"Thonburi-Light" size:fontSize];
            break;
        case FontNameTimesNewRomanPSBoldItalicMT:
            return [UIFont fontWithName:@"TimesNewRomanPS-BoldItalic" size:fontSize];
            break;
        case FontNameTimesNewRomanPSBoldMT:
            return [UIFont fontWithName:@"TimesNewRomanPS-Bold" size:fontSize];
            break;
        case FontNameTimesNewRomanPSItalicMT:
            return [UIFont fontWithName:@"TimesNewRomanPS-ItalicMT" size:fontSize];
            break;
        case FontNameTimesNewRomanPSMT:
            return [UIFont fontWithName:@"TimesNewRomanPSMT" size:fontSize];
            break;
        case FontNameTrebuchetBoldItalic:
            return [UIFont fontWithName:@"Trebuchet-BoldItalic" size:fontSize];
            break;
        case FontNameTrebuchetMS:
            return [UIFont fontWithName:@"TrebuchetMS" size:fontSize];
            break;
        case FontNameTrebuchetMSBold:
            return [UIFont fontWithName:@"TrebuchetMS-Bold" size:fontSize];
            break;
        case FontNameTrebuchetMSItalic:
            return [UIFont fontWithName:@"TrebuchetMS-Italic" size:fontSize];
            break;
        case FontNameVerdana:
            return [UIFont fontWithName:@"Verdana" size:fontSize];
            break;
        case FontNameVerdanaBold:
            return [UIFont fontWithName:@"Verdana-Bold" size:fontSize];
            break;
        case FontNameVerdanaBoldItalic:
            return [UIFont fontWithName:@"Verdana-BoldItalic" size:fontSize];
            break;
        case FontNameVerdanaItalic:
            return [UIFont fontWithName:@"Verdana-Italic" size:fontSize];
            break;
        case FontNameZapfDingbatsITC:
            return [UIFont fontWithName:@"ZapfDingbatsITC" size:fontSize];
            break;
        case FontNameZapfino:
            return [UIFont fontWithName:@"Zapfino" size:fontSize];
            break;
        default:
            break;
    }
    
    return nil;
}

@end
