//
//  ViewController.m
//  CHButton
//
//  Created by chang on 2022/3/1.
//  Copyright © 2018年 chang. All rights reserved.
//

#import "ViewController.h"
#import "CHButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    //CHImageModeLeft
    CGFloat button_x = (self.view.frame.size.width-200)/3;
    CHButton *leftImageButton = [[CHButton alloc]initWithFrame:CGRectMake(button_x, 100, 100, 100)];
    leftImageButton.imageMode = CHImageModeLeft;
    leftImageButton.layer.borderColor = [UIColor blackColor].CGColor;
    leftImageButton.layer.borderWidth = 1.f;
    [leftImageButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [leftImageButton setTitle:@"打电话" forState:UIControlStateNormal];
    [leftImageButton setImage:[UIImage imageNamed:@"打电话"] forState:UIControlStateNormal];
    [self.view addSubview:leftImageButton];

    //CHImageModeRight
    CHButton *rightImageButton = [[CHButton alloc]initWithFrame:CGRectMake(button_x*2+100, 100, 100, 100)];
    rightImageButton.imageMode = CHImageModeRight;
    rightImageButton.layer.borderColor = [UIColor blackColor].CGColor;
    rightImageButton.layer.borderWidth = 1.f;
    [rightImageButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [rightImageButton setTitle:@"打电话" forState:UIControlStateNormal];
    [rightImageButton setImage:[UIImage imageNamed:@"打电话"] forState:UIControlStateNormal];
    [self.view addSubview:rightImageButton];

    //CHImageModeTop
    CHButton *topImageButton = [[CHButton alloc]initWithFrame:CGRectMake(button_x, 100*2+button_x, 100, 100)];
    topImageButton.imageMode = CHImageModeTop;
    topImageButton.layer.borderColor = [UIColor blackColor].CGColor;
    topImageButton.layer.borderWidth = 1.f;
    [topImageButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [topImageButton setTitle:@"打电话" forState:UIControlStateNormal];
    [topImageButton setImage:[UIImage imageNamed:@"打电话"] forState:UIControlStateNormal];
    [self.view addSubview:topImageButton];

    //CHImageModeBottom
    CHButton *bottomImageButton = [[CHButton alloc]initWithFrame:CGRectMake(rightImageButton.frame.origin.x, 100*2+button_x, 100, 100)];
    bottomImageButton.imageMode = CHImageModeBottom;
    bottomImageButton.imageTitleRange = 10;
    bottomImageButton.layer.borderColor = [UIColor blackColor].CGColor;
    bottomImageButton.layer.borderWidth = 1.f;
    [bottomImageButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [bottomImageButton setTitle:@"打电话" forState:UIControlStateNormal];
    [bottomImageButton setImage:[UIImage imageNamed:@"打电话"] forState:UIControlStateNormal];
    [self.view addSubview:bottomImageButton];

    //设置文字和图片的间距
    CHButton *topImageButton2 = [[CHButton alloc]initWithFrame:CGRectMake(button_x, topImageButton.frame.origin.y+100+button_x, 100, 100)];
    topImageButton2.imageMode = CHImageModeTop;
    topImageButton2.imageTitleRange = 20;
    topImageButton2.layer.borderColor = [UIColor blackColor].CGColor;
    topImageButton2.layer.borderWidth = 1.f;
    [topImageButton2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [topImageButton2 setTitle:@"打电话" forState:UIControlStateNormal];
    [topImageButton2 setImage:[UIImage imageNamed:@"打电话"] forState:UIControlStateNormal];
    [self.view addSubview:topImageButton2];


    CHButton *badgeButton = [[CHButton alloc]initWithFrame:CGRectMake(rightImageButton.frame.origin.x+15, topImageButton.frame.origin.y+100+button_x+15, 70, 70)];
    [badgeButton setImage:[UIImage imageNamed:@"云随访"] forState:UIControlStateNormal];
    static int badge = 1;
    badgeButton.badgeValue = [NSString stringWithFormat:@"%d",badge];

    [badgeButton handleControlEvent:UIControlEventTouchUpInside withBlock:^{
        badge ++;
        badgeButton.badgeValue = [NSString stringWithFormat:@"%d",badge];
    }];
    [self.view addSubview:badgeButton];
    
    CHButton *badgeButton2 = [[CHButton alloc]initWithFrame:CGRectMake(topImageButton2.frame.origin.x+15, topImageButton2.frame.origin.y+100+button_x-15, 70, 70)];
    [badgeButton2 setImage:[UIImage imageNamed:@"云随访"] forState:UIControlStateNormal];
    badgeButton2.badgeBGColor = [UIColor yellowColor];
    badgeButton2.badgeTextColor = [UIColor blackColor];
    badgeButton2.badgeFont = [UIFont systemFontOfSize:11];
    
     badgeButton2.badgeValue = [NSString stringWithFormat:@"%@",@"一条信息"];
    [self.view addSubview:badgeButton2];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
