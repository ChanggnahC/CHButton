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

@property (nonatomic) CHImageMode imageMode;

//图片文字之间的间距
@property (nonatomic,assign) NSInteger imageTitleRange;

- (void)handleControlEvent:(UIControlEvents)event withBlock:(ActionBlock)block;
@end
