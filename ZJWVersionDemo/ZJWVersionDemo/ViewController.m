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
    
    // currentVersion
    NSLog(@"当前版本%@", [ZJWVersion currentVersion]);
    
    // versionDidUpdate
    if ([ZJWVersion versionDidUpdate]) {
        NSLog(@"版本已更新");
    } else {
        NSLog(@"版本未更新");
    }
}

@end
