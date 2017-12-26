//
//  ZWFileManageHelper.m
//  ZWDevelopHelperDemo
//
//  Created by 王子武 on 2017/12/26.
//  Copyright © 2017年 wang_ziwu. All rights reserved.
//

/**
 *  NSFileHandle  此类主要是对文件内容进行读取和写入操作,细化文件内容处理.
 *  NSFileManage  此类主要是对文件进行的操作以及文件的拷贝、剪切、创建、删除等.
 */

#import "ZWFileManageHelper.h"
#import "ZWSandboxHelper.h"
@implementation ZWFileManageHelper
/**
 *  在path沙盒路径下创建目录文件
 *  支持“目录/test.txt“格式”
 */
+ (BOOL)zw_createPathFileName:(NSString *)pathFile {
    return [self zw_createPathFileName:pathFile path:ZWFilePathDocument];
}
+ (BOOL)zw_createPathFileName:(NSString *)pathFile path:(ZWFilePathOptions)pathOption {
    if ([ZWFileManageHelper checkFileNameEmpty:pathFile]) {
        return NO;
    }
    NSString *sandboxPath = [ZWFileManageHelper transformFilePath:pathOption];
    NSString *filePath = [sandboxPath stringByAppendingPathComponent:pathFile];    
    if ([pathFile containsString:@"."]) {
        NSString *directory = [ZWFileManageHelper getFileDirectory:pathFile];
        if ([ZWFileManageHelper zw_createDirectory:[sandboxPath stringByAppendingPathComponent:directory]]&&
            [ZWFileManageHelper zw_createFile:filePath]) {
            return YES;
        }
    }else{
        [ZWFileManageHelper zw_createDirectory:filePath];
    }
    return NO;
}
+ (NSString *)getFileDirectory:(NSString *)pathFile {
    NSString *fileName = [[pathFile componentsSeparatedByString:@"/"] lastObject];
    NSRange range = NSMakeRange(pathFile.length-fileName.length, fileName.length);
    NSString *directory = [pathFile stringByReplacingCharactersInRange:range withString:@""];
    return directory;
}
/**
 *  创建文件
 */
+ (BOOL)zw_createFile:(NSString *)fileName{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL result = [fileManager createFileAtPath:fileName contents:nil attributes:nil];
    if (result) {
        NSLog(@"创建文件成功");
    }else{
        NSLog(@"创建文件失败");
    }
    return result;
}
/**
 *  创建目录
 */
+ (BOOL)zw_createDirectory:(NSString *)directoryPath{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL result = NO;
    [fileManager fileExistsAtPath:directoryPath isDirectory:&result];
    if (!result) {
        //创建文件夹
        result = [fileManager createDirectoryAtPath:directoryPath
                        withIntermediateDirectories:YES
                                         attributes:nil
                                              error:nil];
    }
    if (result) {
        NSLog(@"创建文件目录成功");
    }else{
        NSLog(@"创建文件目录失败");
    }
    return result;
}
/**
 *  路径转换
 */
+ (NSString *)transformFilePath:(ZWFilePathOptions)filePath {
    switch (filePath) {
        case ZWFilePathDocument:
        {
            return [ZWSandboxHelper zw_documentPath];
        }
            break;
        case ZWFilePathLibrary:
        {
            return [ZWSandboxHelper zw_libraryPath];
        }
            break;
        case ZWFilePathLibraryCache:
        {
            return [ZWSandboxHelper zw_libraryCachePath];
        }
            break;
        case ZWFilePathLibraryPreference:
        {
            return [ZWSandboxHelper zw_libraryPreferencePath];
        }
            break;
        case ZWFilePathHome:
        {
            return [ZWSandboxHelper zw_homeDirectory];
        }
            break;
        case ZWFilePathTemp:
        {
            return [ZWSandboxHelper zw_tempPath];
        }
            break;
        default:
            break;
    }
    return [ZWSandboxHelper zw_documentPath];
}
/**
 *  判断文件名是否空
 */
+ (BOOL)checkFileNameEmpty:(NSString *)fileName {
    if ([fileName isKindOfClass:[NSNull class]]||
        [fileName isEqualToString:@""]||
        fileName == nil) {
        NSLog(@"fileName不合法!");
        return YES;
    }else{
        return NO;
    }
}
@end
