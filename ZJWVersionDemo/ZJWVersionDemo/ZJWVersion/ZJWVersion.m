//
//  ZJWVersion.m
//  ZJWVersionDemo
//
//  Created by zjw on 2017/5/25.
//  Copyright © 2017年 ioszjw. All rights reserved.
//

#import "ZJWVersion.h"

@implementation ZJWVersion

static NSString * const ZJWVersionCurrentVersionKey = @"ZJWVersionCurrentVersionKey";

/** 当前版本 */
+ (NSString *)currentVersion {
    return [NSBundle mainBundle].infoDictionary[@"CFBundleShortVersionString"];
}

/** 上一次版本 */
+ (NSString *)lastVersion {
    return [[NSUserDefaults standardUserDefaults] objectForKey:ZJWVersionCurrentVersionKey];
}

/** 版本已更改 */
+ (BOOL)versionDidChange {
    NSString *currentVersion = [self currentVersion];
    NSString *lastVersion = [self lastVersion];
    
    if (![currentVersion isEqualToString:lastVersion]) {
        [[NSUserDefaults standardUserDefaults] setObject:currentVersion forKey:ZJWVersionCurrentVersionKey];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        return YES;
    } else {
        return NO;
    }
}

@end