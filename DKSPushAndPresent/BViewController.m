//
//  BViewController.m
//  DKSPushAndPresent
//
//  Created by aDu on 2017/7/13.
//  Copyright © 2017年 DuKaiShun. All rights reserved.
//

#import "BViewController.h"
#import "CViewController.h"

@interface BViewController ()

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"我是B";
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(backVC) name:@"backVC" object:nil];
}

- (IBAction)presentToC:(id)sender {
    CViewController *cVC = [[CViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:cVC];
    [self presentViewController:nav animated:YES completion:nil];
}

- (void)backVC {
    [self dismissViewControllerAnimated:NO completion:nil];
    [self.navigationController popViewControllerAnimated:YES];
}

@end
