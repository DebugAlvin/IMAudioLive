//
//  IMChatModule.m
//  IMChatMoudle
//
//  Created by 姚佩江 on 2021/10/6.
//

#import "IMChatModule.h"
#import "IMSessionListViewController.h"
@implementation IMChatModule

+ (instancetype)shareInstance {
    static dispatch_once_t p;
    static id Instance = nil;
    dispatch_once(&p, ^{
        Instance = [[self alloc] init];
    });
    return Instance;
}

- (UIViewController *)mainViewController { 
    IMSessionListViewController *controller = [[IMSessionListViewController alloc] init];
    return controller;
}

@end
