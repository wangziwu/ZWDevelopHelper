//
//  ZWFileManageHelper.h
//  ZWDevelopHelperDemo
//
//  Created by 王子武 on 2017/12/26.
//  Copyright © 2017年 wang_ziwu. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, ZWFilePathOptions) {
    ZWFilePathDocument           =   0,      //  Document
    ZWFilePathLibrary            =   1,      //  Library
    ZWFilePathLibraryCache       =   2,      //  Library/cache
    ZWFilePathLibraryPreference  =   3,      //  Library/Preference
    ZWFilePathTemp               =   4,      //  Tmp
    ZWFilePathHome               =   5,      //  Home
};

@interface ZWFileManageHelper : NSObject
/**
 *  在path沙盒路径下创建目录文件、默认Document
 *  支持“目录/test.txt“格式”
 */
+ (BOOL)zw_createPathFileName:(NSString *)pathFile;
+ (BOOL)zw_createPathFileName:(NSString *)pathFile path:(ZWFilePathOptions)pathOption;
@end
