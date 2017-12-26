//
//  ViewController.m
//  ZWDevelopHelperDemo
//
//  Created by 王子武 on 2017/12/26.
//  Copyright © 2017年 wang_ziwu. All rights reserved.
//

#import "ViewController.h"
#import "ZWDevelopHelper.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%@",[ZWSandboxHelper zw_homeDirectory]);
    NSDictionary *dict1 = @{@"account":@"17017517668",
                           @"password":@"123456",
                           @"token":@"123456"
                           };
    NSDictionary *dict2 = @{@"account":@"123456789",
                            @"password":@"654321",
                            @"token":@"123456"
                            };
    if ([ZWFileManageHelper zw_createPathFileName:@"userInfo.txt"]) {
        NSLog(@"========");
    }else{
        NSLog(@"--------");
    }
    NSString *path = [[ZWSandboxHelper zw_documentPath] stringByAppendingPathComponent:@"userInfo.txt"];
    [dict1 writeToFile:path atomically:YES];
    [dict2 writeToFile:path atomically:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
