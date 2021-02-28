//
//  MacroDef.h
//  ShadowTBVCell
//
//  Created by Jobs on 2020/12/16.
//  Copyright © 2020 Jobs. All rights reserved.
//

#ifndef MacroDef_h
#define MacroDef_h
// http://ww1.fuckingclangwarnings.com/
//#pragma clang diagnostic push
//#pragma clang diagnostic ignored "-Wobjc-designated-initializers"
//#pragma clang diagnostic ignored "-Wundeclared-selector"
//#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
//#pragma clang diagnostic ignored "-Wincomplete-implementation"
//#pragma clang diagnostic ignored "-Wdeprecated-implementations"
//#pragma clang diagnostic ignored "-Wdeprecated-declarations"
//#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
//#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"
//#pragma clang diagnostic pop
//警告处理⚠️
#define SuppressWobjcProtocolMethodImplementationWarning(Stuff) \
    do { \
        _Pragma("clang diagnostic push") \
        _Pragma("clang diagnostic ignored \"-Wobjc-protocol-method-implementation\"") \
        Stuff; \
        _Pragma("clang diagnostic pop") \
} while (0)

#define SuppressDesignatedInitializersWarning(Stuff) \
    do { \
        _Pragma("clang diagnostic push") \
        _Pragma("clang diagnostic ignored \"-Wobjc-designated-initializers\"") \
        Stuff; \
        _Pragma("clang diagnostic pop") \
} while (0)

#define SuppressWundeclaredSelectorWarning(Stuff) \
    do { \
        _Pragma("clang diagnostic push") \
        _Pragma("clang diagnostic ignored \"-Wundeclared-selector\"") \
        Stuff; \
        _Pragma("clang diagnostic pop") \
} while (0)

#define SuppressWincompatiblePointerTypesWarning(Stuff) \
    do { \
        _Pragma("clang diagnostic push") \
        _Pragma("clang diagnostic ignored \"-Wincompatible-pointer-types\"") \
        Stuff; \
        _Pragma("clang diagnostic pop") \
} while (0)

#define SuppressWincompatiblePointerTypesWarning(Stuff) \
    do { \
        _Pragma("clang diagnostic push") \
        _Pragma("clang diagnostic ignored \"-Wincompatible-pointer-types\"") \
        Stuff; \
        _Pragma("clang diagnostic pop") \
} while (0)

#define SuppressWincompleteImplementationWarning(Stuff) \
    do { \
        _Pragma("clang diagnostic push") \
        _Pragma("clang diagnostic ignored \"-Wincomplete-implementation\"") \
        Stuff; \
        _Pragma("clang diagnostic pop") \
} while (0)

#define SuppressWdeprecatedImplementationsWarning(Stuff) \
    do { \
        _Pragma("clang diagnostic push") \
        _Pragma("clang diagnostic ignored \"-Wdeprecated-implementations\"") \
        Stuff; \
        _Pragma("clang diagnostic pop") \
} while (0)
//
#define SuppressWdeprecatedDeclarationsWarning(Stuff) \
    do { \
        _Pragma("clang diagnostic push") \
        _Pragma("clang diagnostic ignored \"-Wdeprecated-declarations\"") \
        Stuff; \
        _Pragma("clang diagnostic pop") \
} while (0)

#define SuppressWarcPerformSelectorLeaksWarning(Stuff) \
    do { \
        _Pragma("clang diagnostic push") \
        _Pragma("clang diagnostic ignored \"-Warc-performSelector-leaks\"") \
        Stuff; \
        _Pragma("clang diagnostic pop") \
} while (0)

#define WeakSelf __weak typeof(self) weakSelf = self;
#define StrongSelf __strong typeof(self) strongSelf = self;

#ifndef SCREEN_BOUNDS
#define SCREEN_BOUNDS [UIScreen mainScreen].bounds
#endif
#ifndef SCREEN_WIDTH
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#endif
#ifndef SCREEN_HEIGHT
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#endif

//输入原型图上的宽和高，对外输出App对应的移动设备的真实宽高
#define KWidth(width) (SCREEN_WIDTH / 375) * (width) //375 对应原型图的宽
#define KHeight(height) (SCREEN_HEIGHT / 743) * (height) //743 对应原型图的高

#import "SceneDelegate.h"
static inline UIWindow * getMainWindow(){
    UIWindow *window = nil;
    if (@available(iOS 13.0, *)) {
        window = [SceneDelegate sharedInstance].window;
        //以下方法有时候会拿不到window
        {
//            for (UIWindowScene* windowScene in [UIApplication sharedApplication].connectedScenes){
//                if (windowScene.activationState == UISceneActivationStateForegroundActive){
//                    window = windowScene.windows.firstObject;
//                    break;
//                }
//            }
        }
    }else{
        window = UIApplication.sharedApplication.delegate.window;
//        [UIApplication sharedApplication].keyWindow
    }return window;
}

static inline BOOL isiPhoneX_series() {
    BOOL iPhoneXSeries = NO;
    if (UIDevice.currentDevice.userInterfaceIdiom != UIUserInterfaceIdiomPhone) {
        return iPhoneXSeries;
    }

    if (@available(iOS 11.0, *)) {
        UIWindow *mainWindow = getMainWindow();
        if (mainWindow.safeAreaInsets.bottom > 0.0) {
            iPhoneXSeries = YES;
        }
    }return iPhoneXSeries;
}

static inline CGFloat Top(){
    static CGFloat value = 0;
    static dispatch_once_t once_t = 0;
    dispatch_once(&once_t, ^{
        value = isiPhoneX_series() ? 88.0f : 64.0f;
    });
    return value;
}

#define StringFormat(format,...) [NSString stringWithFormat:format, ##__VA_ARGS__]
#define kFontSize(x) [UIFont systemFontOfSize:x weight:UIFontWeightRegular]

#pragma mark ======================================== 默认值 ========================================
#define DefaultValue 0
#define DefaultObj Nil
#define DefaultSize CGSizeZero
#pragma mark ======================================== 色彩相关 ========================================
#define kTableViewBackgroundColor HEXCOLOR(0xf6f5fa)
///常见颜色
#define kClearColor     [UIColor clearColor]
#define kBlackColor     [UIColor blackColor]
#define kBlueColor      [UIColor blueColor]
#define kWhiteColor     [UIColor whiteColor]
#define kCyanColor      [UIColor cyanColor]
#define kGrayColor      [UIColor grayColor]
#define kOrangeColor    [UIColor orangeColor]
#define kRedColor       [UIColor redColor]
#define KBrownColor     [UIColor brownColor]
#define KDarkGrayColor  [UIColor darkGrayColor]
#define KDarkTextColor  [UIColor darkTextColor]
#define KYellowColor    [UIColor yellowColor]
#define KPurpleColor    [UIColor purpleColor]
#define KLightTextColor [UIColor lightTextColor]
#define KLightGrayColor [UIColor lightGrayColor]
#define KGreenColor     [UIColor greenColor]
#define KMagentaColor   [UIColor magentaColor]
///RGB颜色
#define RGBSAME_COLOR(x,a) [UIColor colorWithRed:(x)/255.0 green:(x)/255.0 blue:(x)/255.0 alpha:a]
#define RGBSAMECOLOR(x) [UIColor colorWithRed:(x)/255.0 green:(x)/255.0 blue:(x)/255.0 alpha:1]
#define COLOR_RGB(r,g,b,a)  [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define RGBCOLOR(r,g,b)  [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]
///随机颜色
#define RandomColor [UIColor colorWithRed:arc4random_uniform(256) / 255.0 \
green:arc4random_uniform(256) / 255.0 \
blue:arc4random_uniform(256) / 255.0 \
alpha:1] \
///十六进制颜色
#define HEXCOLOR(hexValue)  [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0 green:((float)((hexValue & 0xFF00) >> 8))/255.0 blue:((float)(hexValue & 0xFF))/255.0 alpha:1]
#define COLOR_HEX(hexValue, al)  [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0 green:((float)((hexValue & 0xFF00) >> 8))/255.0 blue:((float)(hexValue & 0xFF))/255.0 alpha:al]

#define ReuseIdentifier NSStringFromClass ([self class])

#endif /* MacroDef_h */
