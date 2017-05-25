//
//  ZJWVersion.h
//  ZJWVersionDemo
//
//  Created by zjw on 2017/5/25.
//  Copyright © 2017年 ioszjw. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZJWVersion : NSObject

/** 当前版本 */
+ (NSString *)currentVersion;

/** 版本是否已更新 */
+ (BOOL)versionDidUpdate;

@end
