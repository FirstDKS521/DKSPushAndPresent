//
//  DViewController.m
//  DKSPushAndPresent
//
//  Created by aDu on 2017/7/13.
//  Copyright © 2017年 DuKaiShun. All rights reserved.
//

#import "DViewController.h"
#import "AViewController.h"

@interface DViewController ()

@end

@implementation DViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"我是D";
}

- (IBAction)backToA:(id)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"backVC" object:nil];
}

@end
