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
    NSString *currentVersion = [ZJWVersion currentVersion];
    NSLog(@"当前版本:%@", currentVersion);
    
    // versionDidChange
    BOOL change = [ZJWVersion versionDidChange];
    
    if (change) {
        NSLog(@"版本已更改");
    } else {
        NSLog(@"版本未更改");
    }
}

@end
