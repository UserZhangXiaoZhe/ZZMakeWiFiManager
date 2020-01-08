//
//  ZZMakeWiFiMacro.h
//  ZZMakeWiFiManager
//
//  Created by UserBaiZi on 2020/1/8.
//

#ifndef ZZMakeWiFiMacro_h
#define ZZMakeWiFiMacro_h

/// 类型相关
#define ZZMakeWiFi_IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define ZZMakeWiFi_IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define ZZMakeWiFi_IS_RETINA ([[UIScreen mainScreen] scale] >= 2.0)

/// 手机类型相关
//判断iPhone5系列
#define ZZMakeWiFi_IS_IPHONE_5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && ZZMakeWiFi_IS_IPHONE : NO)
//判断iPhone6系列
#define ZZMakeWiFi_IS_IPHONE_6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && ZZMakeWiFi_IS_IPHONE : NO)
//判断iphone6+系列
#define ZZMakeWiFi_IS_IPHONE_6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) && ZZMakeWiFi_IS_IPHONE : NO)
//判断iPhoneX
#define ZZMakeWiFi_IS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && ZZMakeWiFi_IS_IPHONE : NO)
//判断iPHoneXr
#define ZZMakeWiFi_IS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && ZZMakeWiFi_IS_IPHONE : NO)
//判断iPhoneXs
#define ZZMakeWiFi_IS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && ZZMakeWiFi_IS_IPHONE : NO)
//判断iPhoneXs Max
#define ZZMakeWiFi_IS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && ZZMakeWiFi_IS_IPHONE : NO)
//判断iPhone 11
#define ZZMakeWiFi_IS_IPHONE_11 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && ZZMakeWiFi_IS_IPHONE : NO)
//判断iPhone 11 Pro
#define ZZMakeWiFi_IS_IPHONE_11_Pro ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && ZZMakeWiFi_IS_IPHONE : NO)
//判断iPhoneXs 11 Pro Max
#define ZZMakeWiFi_IS_IPHONE_11_Pro_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && ZZMakeWiFi_IS_IPHONE : NO)

/// 屏幕尺寸相关
#define ZZMakeWiFi_SCREEN_W  ([[UIScreen mainScreen] bounds].size.width)
#define ZZMakeWiFi_SCREEN_H ([[UIScreen mainScreen] bounds].size.height)
#define ZZMakeWiFi_SCREEN_BOUNDS ([[UIScreen mainScreen] bounds])

#define ZZMakeWiFi_SCREEN_MAX_LENGTH (MAX(ZZMakeWiFi_SCREEN_W, ZZMakeWiFi_SCREEN_H))
#define ZZMakeWiFi_SCREEN_MIN_LENGTH (MIN(ZZMakeWiFi_SCREEN_W, ZZMakeWiFi_SCREEN_H))

#define ZZMakeWiFi_IS_IPHONE_XP ((ZZMakeWiFi_IS_IPHONE_X==YES || ZZMakeWiFi_IS_IPHONE_Xr ==YES || ZZMakeWiFi_IS_IPHONE_Xs== YES || ZZMakeWiFi_IS_IPHONE_Xs_Max== YES || ZZMakeWiFi_IS_IPHONE_11 == YES || ZZMakeWiFi_IS_IPHONE_11_Pro== YES || ZZMakeWiFi_IS_IPHONE_11_Pro_Max== YES) ? YES : NO)

/// 导航栏高度
#define ZZMakeWiFi_NAVIGATION_BAR_HEIGHT (ZZMakeWiFi_IS_IPHONE_XP?88.0f:64.0f)
/// 状态栏高度
#define ZZMakeWiFi_STATUS_BAR_HEIGHT (ZZMakeWiFi_IS_IPHONE_XP?44:20.0f)
/// tabBar高度
#define ZZMakeWiFi_TABBAR_BAR_HEIGHT (ZZMakeWiFi_IS_IPHONE_XP?83.0f:49.0f)
/// 底部安全区域高度
#define ZZMakeWiFi_Safe_HEIGHT (ZZMakeWiFi_IS_IPHONE_XP? 34.0f:0.0f)

#endif /* ZZMakeWiFiMacro_h */
