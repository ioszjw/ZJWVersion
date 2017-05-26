//
//  ZJWVersion.m
//  ZJWVersionDemo
//
//  Created by zjw on 2017/5/25.
//  Copyright © 2017年 ioszjw. All rights reserved.
//

#import "ZJWVersion.h"

@implementation ZJWVersion

static NSString * const ZJWVersionKey = @"ZJWVersionKey";

/** 版本号 */
+ (NSString *)version {
    return [NSBundle mainBundle].infoDictionary[@"CFBundleShortVersionString"];
}

/** 上一次版本号 */
+ (NSString *)lastVersion {
    return [[NSUserDefaults standardUserDefaults] objectForKey:ZJWVersionKey];
}

/** 判断版本号是否更新 */
+ (BOOL)isVersionUpdate {
    NSString *version = [self version];
    NSString *lastVersion = [self lastVersion];
    
    if ([version compare:lastVersion] == NSOrderedDescending) {
        // 如果版本号已更新，存储版本号
        [[NSUserDefaults standardUserDefaults] setObject:version forKey:ZJWVersionKey];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        return YES;
    }
    else {
        return NO;
    }
}

@end
