//
//  IMHomeModule.m
//  IMHomeMoudle
//
//  Created by 姚佩江 on 2021/10/6.
//

#import "IMHomeModule.h"
#import "IMHomeViewController.h"
#import <IMBeeHive/IMBeeHive.h>
@implementation IMHomeModule

+(void)load {
    IMBeanRegister(IMHomeModuleProtocol);
}

+ (instancetype)shareInstance {
    static dispatch_once_t p;
    static id Instance = nil;
    dispatch_once(&p, ^{
        Instance = [[self alloc] init];
    });
    return Instance;
}

- (nonnull UIViewController *)mainViewController {
    IMHomeViewController *controller = [[IMHomeViewController alloc] init];
    return controller;
}

@end
