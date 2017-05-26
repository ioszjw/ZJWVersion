//
//  ZJWVersion.h
//  ZJWVersionDemo
//
//  Created by zjw on 2017/5/25.
//  Copyright © 2017年 ioszjw. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZJWVersion : NSObject

/** 版本号 */
+ (NSString *)version;

/** 判断版本号是否更新 */
+ (BOOL)isVersionUpdate;

@end
