//
//  ZWSandboxHelper.m
//  ZWDevelopHelperDemo
//
//  Created by 王子武 on 2017/12/26.
//  Copyright © 2017年 wang_ziwu. All rights reserved.
//

#import "ZWSandboxHelper.h"

@implementation ZWSandboxHelper
/**
 *  获取程序的Home目录
 */
+ (NSString *)zw_homeDirectory {
    return NSHomeDirectory();
}
/**
 *  获取document目录
 */
+ (NSString *)zw_documentPath {
    NSArray *docPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [docPaths firstObject];
}
/**
 *  获取Library目录
 */
+ (NSString *)zw_libraryPath {
    NSArray *libraryPaths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    return [libraryPaths firstObject];
}
/**
 *  获取Library/Cache目录
 */
+ (NSString *)zw_libraryCachePath {
    NSArray *cachePaths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    return [cachePaths firstObject];
}
/**
 *  获取Library/preferences目录
 */
+ (NSString *)zw_libraryPreferencePath {
    NSArray *preferencePaths = NSSearchPathForDirectoriesInDomains(NSPreferencePanesDirectory,NSUserDomainMask,YES);
    return [preferencePaths firstObject];
}
/**
 *  获取Tmp目录
 */
+ (NSString *)zw_tempPath {
    return NSTemporaryDirectory();
}
/**
 *  获取NSUserDefaults目录
 */
+ (NSString *)zw_userDefaultsPlist {
    return @"";
}
/**
 *  删除NSUserDefaults中所有信息
 */
+(void)zw_clearAllNSUserDefaultsInfo {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    for (NSString *keyStr in [userDefaults dictionaryRepresentation]) {
        [userDefaults removeObjectForKey:keyStr];
    }
    [userDefaults synchronize];
}
@end
