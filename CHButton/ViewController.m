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
    CHButton *button = [[CHButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    button.backgroundColor = [UIColor redColor];
    
    button.imageMode = CHImageModeRight;
    
     button.imageTitleRange = 10;
    
    [button handleControlEvent:UIControlEventTouchUpInside withBlock:^{
        NSLog(@"234");
    }];
    
    [button setTitle:@"打电话" forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"打电话"] forState:UIControlStateNormal];
    
    
   
    [self.view addSubview:button];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
