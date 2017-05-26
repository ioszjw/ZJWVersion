//
//  ViewController.m
//  ZJWVersionDemo
//
//  Created by zjw on 2017/5/25.
//  Copyright © 2017年 ioszjw. All rights reserved.
//

#import "ViewController.h"
#import "ZJWVersion.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"版本号:%@", [ZJWVersion version]);
    
    if ([ZJWVersion isVersionUpdate]) {
        NSLog(@"版本号已更新");
    } else {
        NSLog(@"版本号未更新");
    }
}

@end
