//
//  CHButton.m
//  MyButton
//
//  Created by chang on 2022/3/1.
//  Copyright © 2018年 chang. All rights reserved.
//

#import "CHButton.h"
#import <objc/message.h>
@implementation CHButton
static char overviewKey;

@dynamic event;  
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)handleControlEvent:(UIControlEvents)event withBlock:(ActionBlock)block
{
    objc_setAssociatedObject(self, &overviewKey, block, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
    [self addTarget:self action:@selector(callActionBlock:) forControlEvents:event];
    
}


- (void)callActionBlock:(id)sender
{
    ActionBlock block = (ActionBlock)objc_getAssociatedObject(self, &overviewKey);
    
    if (block){
        block();
    }
}


- (void)layoutSubviews {
    [super layoutSubviews];
  
    switch (self.imageMode) {
        case CHImageModeLeft:{
            CGPoint center = self.imageView.center;
            CGRect newFrame = [self titleLabel].frame;
            CGPoint tcenter = self.titleLabel.center;
            CGRect imaFrame = [self imageView].frame;
            center.x = imaFrame.size.width/2 + (self.frame.size.width - (imaFrame.size.width+newFrame.size.width+_imageTitleRange))/2;
            
            center.y = self.frame.size.height/2;
            self.imageView.center = center;
            newFrame.origin.x = center.x+imaFrame.size.height/2 + _imageTitleRange;
            
            self.titleLabel.frame = newFrame;
            self.titleLabel.textAlignment = NSTextAlignmentCenter;
            break;
        }
            
        case CHImageModeRight:{
            CGPoint center = self.titleLabel.center;
            CGRect newFrame = [self imageView].frame;
            CGPoint imacenter = self.imageView.center;
            CGRect tFrame = [self titleLabel].frame;
            
            center.x = self.titleLabel.frame.size.width/2 + (self.frame.size.width - (self.titleLabel.frame.size.width+newFrame.size.width+5+_imageTitleRange))/2;
            self.titleLabel.center = center;
            
            newFrame.origin.x = center.x+self.titleLabel.frame.size.width/2+5+_imageTitleRange;
            self.imageView.frame = newFrame;
            break;
        }
            
        case CHImageModeTop:{
            CGPoint center = self.imageView.center;
            CGRect newFrame = [self titleLabel].frame;
            center.x = self.frame.size.width/2;
            center.y = self.imageView.frame.size.height/2+(self.frame.size.height - (self.imageView.frame.size.height+newFrame.size.height+5+_imageTitleRange))/2;
            self.imageView.center = center;
            
            newFrame.origin.x = 0;
            newFrame.origin.y = center.y+self.imageView.frame.size.height/2 + 5+_imageTitleRange;
            newFrame.size.width = self.frame.size.width;
            
            self.titleLabel.frame = newFrame;
            self.titleLabel.textAlignment = NSTextAlignmentCenter;
            
            break;
        }
            
        case CHImageModeBottom:{
            CGPoint center = self.titleLabel.center;
            CGRect newFrame = [self imageView].frame;
            
            center.x = self.frame.size.width/2;
            center.y = self.titleLabel.frame.size.height/2+(self.frame.size.height-self.titleLabel.frame.size.height - newFrame.size.height - 5 - _imageTitleRange)/2;
            self.titleLabel.center = center;
            self.titleLabel.textAlignment = NSTextAlignmentCenter;
            
            newFrame.origin.x = (self.frame.size.width-newFrame.size.width)/2;
            newFrame.origin.y = center.y+5+_imageTitleRange;
            self.imageView.frame = newFrame;
            break;
        }
            
        default:
            break;
    }
    
}


@end
