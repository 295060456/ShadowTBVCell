//
//  UIFont+Extras.m
//  UBallLive
//
//  Created by Jobs on 2020/11/4.
//

#import "UIFont+Extras.h"

@implementation UIFont (Extras)
/// 打印全员字体
+(NSMutableArray <NSString *>*)getAvailableFont{
    NSMutableArray <NSString *>*fontNamesMutArr = NSMutableArray.array;
    for (NSString *familyName in UIFont.familyNames) {
        [fontNamesMutArr addObjectsFromArray:[UIFont fontNamesForFamilyName:familyName]];
    }
    NSLog(@"Font Names = %@", fontNamesMutArr);
    return fontNamesMutArr;
}
/// 打印外援字体
+(NSMutableArray <NSString *>*)foreignAidFontName{
    NSArray *sysFontNameArr = @[
        @"AcademyEngravedLetPlain",
        @"AlNile",
        @"AlNile-Bold",
        @"AmericanTypewriter",
        @"AmericanTypewriter-Light",
        @"AmericanTypewriter-Semibold",
        @"AmericanTypewriter-Bold",
        @"AmericanTypewriter-Condensed",
        @"AmericanTypewriter-CondensedLight",
        @"AmericanTypewriter-CondensedBold",
        @"AppleColorEmoji",
        @"AppleSDGothicNeo-Regular",
        @"AppleSDGothicNeo-Thin",
        @"AppleSDGothicNeo-UltraLight",
        @"AppleSDGothicNeo-Light",
        @"AppleSDGothicNeo-Medium",
        @"AppleSDGothicNeo-SemiBold",
        @"AppleSDGothicNeo-Bold",
        @"AppleSymbols",
        @"ArialMT",
        @"Arial-ItalicMT",
        @"Arial-BoldMT",
        @"Arial-BoldItalicMT",
        @"ArialHebrew",
        @"ArialHebrew-Light",
        @"ArialHebrew-Bold",
        @"ArialRoundedMTBold",
        @"Avenir-Book",
        @"Avenir-Roman",
        @"Avenir-BookOblique",
        @"Avenir-Oblique",
        @"Avenir-Light",
        @"Avenir-LightOblique",
        @"Avenir-Medium",
        @"Avenir-MediumOblique",
        @"Avenir-Heavy",
        @"Avenir-HeavyOblique",
        @"Avenir-Black",
        @"Avenir-BlackOblique",
        @"AvenirNext-Regular",
        @"AvenirNext-Italic",
        @"AvenirNext-UltraLight",
        @"AvenirNext-UltraLightItalic",
        @"AvenirNext-Medium",
        @"AvenirNext-MediumItalic",
        @"AvenirNext-DemiBold",
        @"AvenirNext-DemiBoldItalic",
        @"AvenirNext-Bold",
        @"AvenirNext-BoldItalic",
        @"AvenirNext-Heavy",
        @"AvenirNext-HeavyItalic",
        @"AvenirNextCondensed-Regular",
        @"AvenirNextCondensed-Italic",
        @"AvenirNextCondensed-UltraLight",
        @"AvenirNextCondensed-UltraLightItalic",
        @"AvenirNextCondensed-Medium",
        @"AvenirNextCondensed-MediumItalic",
        @"AvenirNextCondensed-DemiBold",
        @"AvenirNextCondensed-DemiBoldItalic",
        @"AvenirNextCondensed-Bold",
        @"AvenirNextCondensed-BoldItalic",
        @"AvenirNextCondensed-Heavy",
        @"AvenirNextCondensed-HeavyItalic",
        @"Baskerville",
        @"Baskerville-Italic",
        @"Baskerville-SemiBold",
        @"Baskerville-SemiBoldItalic",
        @"Baskerville-Bold",
        @"Baskerville-BoldItalic",
        @"BodoniSvtyTwoITCTT-Book",
        @"BodoniSvtyTwoITCTT-BookIta",
        @"BodoniSvtyTwoITCTT-Bold",
        @"BodoniSvtyTwoOSITCTT-Book",
        @"BodoniSvtyTwoOSITCTT-BookIt",
        @"BodoniSvtyTwoOSITCTT-Bold",
        @"BodoniSvtyTwoSCITCTT-Book",
        @"BodoniOrnamentsITCTT",
        @"BradleyHandITCTT-Bold",
        @"ChalkboardSE-Regular",
        @"ChalkboardSE-Light",
        @"ChalkboardSE-Bold",
        @"Chalkduster",
        @"Charter-Roman",
        @"Charter-Italic",
        @"Charter-Bold",
        @"Charter-BoldItalic",
        @"Charter-Black",
        @"Charter-BlackItalic",
        @"Cochin",
        @"Cochin-Italic",
        @"Cochin-Bold",
        @"Cochin-BoldItalic",
        @"Copperplate",
        @"Copperplate-Light",
        @"Copperplate-Bold",
        @"Courier",
        @"Courier-Oblique",
        @"Courier-Bold",
        @"Courier-BoldOblique",
        @"CourierNewPSMT",
        @"CourierNewPS-ItalicMT",
        @"CourierNewPS-BoldMT",
        @"CourierNewPS-BoldItalicMT",
        @"Damascus",
        @"DamascusLight",
        @"DamascusMedium",
        @"DamascusSemiBold",
        @"DamascusBold",
        @"DevanagariSangamMN",
        @"DevanagariSangamMN-Bold",
        @"Didot",
        @"Didot-Italic",
        @"Didot-Bold",
        @"DINAlternate-Bold",
        @"DINCondensed-Bold",
        @"EuphemiaUCAS",
        @"EuphemiaUCAS-Italic",
        @"EuphemiaUCAS-Bold",
        @"Farah",
        @"Futura-Medium",
        @"Futura-MediumItalic",
        @"Futura-Bold",
        @"Futura-CondensedMedium",
        @"Futura-CondensedExtraBold",
        @"Galvji",
        @"Galvji-Bold",
        @"GeezaPro",
        @"GeezaPro-Bold",
        @"Georgia",
        @"Georgia-Italic",
        @"Georgia-Bold",
        @"Georgia-BoldItalic",
        @"GillSans",
        @"GillSans-Italic",
        @"GillSans-Light",
        @"GillSans-LightItalic",
        @"GillSans-SemiBold",
        @"GillSans-SemiBoldItalic",
        @"GillSans-Bold",
        @"GillSans-BoldItalic",
        @"GillSans-UltraBold",
        @"GranthaSangamMN-Regular",
        @"GranthaSangamMN-Bold",
        @"Helvetica",
        @"Helvetica-Oblique",
        @"Helvetica-Light",
        @"Helvetica-LightOblique",
        @"Helvetica-Bold",
        @"Helvetica-BoldOblique",
        @"HelveticaNeue",
        @"HelveticaNeue-Italic",
        @"HelveticaNeue-UltraLight",
        @"HelveticaNeue-UltraLightItalic",
        @"HelveticaNeue-Thin",
        @"HelveticaNeue-ThinItalic",
        @"HelveticaNeue-Light",
        @"HelveticaNeue-LightItalic",
        @"HelveticaNeue-Medium",
        @"HelveticaNeue-MediumItalic",
        @"HelveticaNeue-Bold",
        @"HelveticaNeue-BoldItalic",
        @"HelveticaNeue-CondensedBold",
        @"HelveticaNeue-CondensedBlack",
        @"HiraMaruProN-W4",
        @"HiraMinProN-W3",
        @"HiraMinProN-W6",
        @"HiraginoSans-W3",
        @"HiraginoSans-W6",
        @"HiraginoSans-W7",
        @"HoeflerText-Regular",
        @"HoeflerText-Italic",
        @"HoeflerText-Black",
        @"HoeflerText-BlackItalic",
        @"Kailasa-Bold",
        @"Kefa-Regular",
        @"KhmerSangamMN",
        @"KohinoorBangla-Regular",
        @"KohinoorBangla-Light",
        @"KohinoorBangla-Semibold",
        @"KohinoorDevanagari-Regular",
        @"KohinoorDevanagari-Light",
        @"KohinoorDevanagari-Semibold",
        @"KohinoorGujarati-Regular",
        @"KohinoorGujarati-Light",
        @"KohinoorGujarati-Bold",
        @"KohinoorTelugu-Regular",
        @"KohinoorTelugu-Light",
        @"KohinoorTelugu-Medium",
        @"LaoSangamMN",
        @"MalayalamSangamMN",
        @"MalayalamSangamMN-Bold",
        @"MarkerFelt-Thin",
        @"MarkerFelt-Wide",
        @"Menlo-Regular",
        @"Menlo-Italic",
        @"Menlo-Bold",
        @"Menlo-BoldItalic",
        @"DiwanMishafi",
        @"MuktaMahee-Regular",
        @"MuktaMahee-Light",
        @"MuktaMahee-Bold",
        @"MyanmarSangamMN",
        @"MyanmarSangamMN-Bold",
        @"Noteworthy-Light",
        @"Noteworthy-Bold",
        @"NotoNastaliqUrdu",
        @"NotoNastaliqUrdu-Bold",
        @"NotoSansKannada-Regular",
        @"NotoSansKannada-Light",
        @"NotoSansKannada-Bold",
        @"NotoSansMyanmar-Regular",
        @"NotoSansMyanmar-Light",
        @"NotoSansMyanmar-Bold",
        @"NotoSansOriya",
        @"NotoSansOriya-Bold",
        @"Optima-Regular",
        @"Optima-Italic",
        @"Optima-Bold",
        @"Optima-BoldItalic",
        @"Optima-ExtraBlack",
        @"Palatino-Roman",
        @"Palatino-Italic",
        @"Palatino-Bold",
        @"Palatino-BoldItalic",
        @"Papyrus",
        @"Papyrus-Condensed",
        @"PartyLetPlain",
        @"PingFangHK-Regular",
        @"PingFangHK-Ultralight",
        @"PingFangHK-Thin",
        @"PingFangHK-Light",
        @"PingFangHK-Medium",
        @"PingFangHK-Semibold",
        @"PingFangSC-Regular",
        @"PingFangSC-Ultralight",
        @"PingFangSC-Thin",
        @"PingFangSC-Light",
        @"PingFangSC-Medium",
        @"PingFangSC-Semibold",
        @"PingFangTC-Regular",
        @"PingFangTC-Ultralight",
        @"PingFangTC-Thin",
        @"PingFangTC-Light",
        @"PingFangTC-Medium",
        @"PingFangTC-Semibold",
        @"Rockwell-Regular",
        @"Rockwell-Italic",
        @"Rockwell-Bold",
        @"Rockwell-BoldItalic",
        @"SavoyeLetPlain",
        @"SinhalaSangamMN",
        @"SinhalaSangamMN-Bold",
        @"SnellRoundhand",
        @"SnellRoundhand-Bold",
        @"SnellRoundhand-Black",
        @"Symbol",
        @"TamilSangamMN",
        @"TamilSangamMN-Bold",
        @"Thonburi",
        @"Thonburi-Light",
        @"Thonburi-Bold",
        @"TimesNewRomanPSMT",
        @"TimesNewRomanPS-ItalicMT",
        @"TimesNewRomanPS-BoldMT",
        @"TimesNewRomanPS-BoldItalicMT",
        @"TrebuchetMS",
        @"TrebuchetMS-Italic",
        @"TrebuchetMS-Bold",
        @"Trebuchet-BoldItalic",
        @"Verdana",
        @"Verdana-Italic",
        @"Verdana-Bold",
        @"Verdana-BoldItalic",
        @"ZapfDingbatsITC",
        @"Zapfino"
    ];// 系统自带的字体合集
    NSMutableArray *temp = NSMutableArray.array;
    for (NSString *string in [UIFont getAvailableFont]) {
        if (![sysFontNameArr containsObject:string]) {
            [temp addObject:string];
        }
    }
    NSLog(@"foreignAidFontName = %@",temp);
    return temp;
}

@end
