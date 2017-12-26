//
//  ZWSandboxHelper.h
//  ZWDevelopHelperDemo
//
//  Created by 王子武 on 2017/12/26.
//  Copyright © 2017年 wang_ziwu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZWSandboxHelper : NSObject
/**
 *  获取程序的Home目录
 */
+ (NSString *)zw_homeDirectory;

/**
 *  获取document目录
 */
+ (NSString *)zw_documentPath;
/**
 *  获取Library目录
 */
+ (NSString *)zw_libraryPath;

/**
 *  获取Library/Cache目录
 */
+ (NSString *)zw_libraryCachePath;

/**
 *  获取Library/preferences目录
 */
+ (NSString *)zw_libraryPreferencePath;

/**
 *  获取Tmp目录
 */
+ (NSString *)zw_tempPath;

/**
 *  获取NSUserDefaults目录
 */
+ (NSString *)zw_userDefaultsPlist;

/**
 *  删除NSUserDefaults中所有信息
 */
+(void)zw_clearAllNSUserDefaultsInfo;
@end
