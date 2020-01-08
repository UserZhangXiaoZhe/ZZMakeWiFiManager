//
//  ZZViewController.m
//  ZZMakeWiFiManager
//
//  Created by UserZhangXiaoZhe on 01/08/2020.
//  Copyright (c) 2020 UserZhangXiaoZhe. All rights reserved.
//

#import "ZZViewController.h"
#import "ZZMakeWiFiManager.h"
@interface ZZViewController ()

@end

@implementation ZZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    btn.frame = CGRectMake(100, 100, 100, 50);
    [btn setTitle:@"开始Wifi" forState:(UIControlStateNormal)];
    [btn setTitleColor:UIColor.orangeColor forState:(UIControlStateNormal)];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btn];
}
-(void)btnClick{
    ZZMakeWiFiManager *vc = [[ZZMakeWiFiManager alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
