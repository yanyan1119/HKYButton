//
//  ViewController.m
//  HKYButton
//
//  Created by hky on 15/8/28.
//  Copyright (c) 2015年 hky. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    HKYButton *btn = [[HKYButton alloc] initWithFrame:CGRectMake(100, 100, [[UIScreen mainScreen]bounds].size.width / 3 + 60, [[UIScreen mainScreen]bounds].size.width / 3 + 60) type:HKYButtonContentTypeTitleBottomImageTop];
    [btn setBackgroundColor:[UIColor yellowColor]];
    btn.layer.cornerRadius = 5;
    btn.clipsToBounds = YES;
    [btn setTitle:@"在线委托" forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"sublet_online_icon"] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
