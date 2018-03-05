//
//  CHButton.h
//  MyButton
//
//  Created by chang on 2022/3/1.
//  Copyright © 2018年 chang. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^ActionBlock)(void);
@interface CHButton : UIButton
typedef NS_ENUM(NSInteger, CHImageMode) {
    CHImageModeLeft,
    CHImageModeRight,
    CHImageModeTop,
    CHImageModeBottom
};

@property (readonly) NSMutableDictionary *event;

/**
 *  角标显示的信息，可以为数字和文字
 */
@property (nonatomic) NSString *badgeValue;
/**
 *  角标背景颜色，默认为红色
 */
@property (nonatomic) UIColor *badgeBGColor;
/**
 *  角标文字的颜色
 */
@property (nonatomic) UIColor *badgeTextColor;
/**
 *  角标字号
 */
@property (nonatomic) UIFont *badgeFont;
/**
 *  角标的气泡边界
 */
@property (nonatomic) CGFloat badgePadding;
/**
 *  角标的最小尺寸
 */
@property (nonatomic) CGFloat badgeMinSize;
/**
 *  角标的x值
 */
@property (nonatomic) CGFloat badgeOriginX;
/**
 *  角标的y值
 */
@property (nonatomic) CGFloat badgeOriginY;
/**
 *  当角标为0时，自动去除角标
 */
@property BOOL shouldHideBadgeAtZero;


@property (nonatomic) CHImageMode imageMode;

//图片文字之间的间距
@property (nonatomic,assign) NSInteger imageTitleRange;

- (void)handleControlEvent:(UIControlEvents)event withBlock:(ActionBlock)block;
@end
