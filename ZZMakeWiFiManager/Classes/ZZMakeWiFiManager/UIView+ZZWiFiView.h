//
//  UIView+ZZWiFiView.h

//  Created by  on 2020/1/8.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (ZZWiFiView)

/** 自定义x坐标*/
@property (assign, nonatomic) CGFloat x;
/** 自定义y坐标*/
@property (assign, nonatomic) CGFloat y;

/** 控件左侧 最小x值*/
@property (nonatomic,assign) CGFloat left;
/** 控件右边 最大x值*/
@property (nonatomic, assign) CGFloat right;
/** 控件顶部 最小y值*/
@property (nonatomic,assign) CGFloat top;
/** 控件底部 最大y值*/
@property (nonatomic, assign) CGFloat bottom;

/** 控件中心 x值*/
@property (nonatomic,assign) CGFloat centerX;
/** 控件中心 y值*/
@property (nonatomic,assign) CGFloat centerY;

/** 宽度*/
@property (assign, nonatomic) CGFloat width;
/** 高度*/
@property (assign, nonatomic) CGFloat height;

@property (assign, nonatomic) CGSize size;

@property (assign, nonatomic) CGPoint origin;
@end

NS_ASSUME_NONNULL_END
