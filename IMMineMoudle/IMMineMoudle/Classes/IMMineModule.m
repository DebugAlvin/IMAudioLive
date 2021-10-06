//
//  IMMineModlue.m
//  IMMineMoudle
//
//  Created by 姚佩江 on 2021/10/5.
//

#import "IMMineModule.h"
#import "IMMIneViewController.h"

@implementation IMMineModule

+ (instancetype)shareInstance {
    static dispatch_once_t p;
    static id Instance = nil;
    dispatch_once(&p, ^{
        Instance = [[self alloc] init];
    });
    return Instance;
}

-(UIViewController *)mainViewController {
    IMMIneViewController *controller = [[IMMIneViewController alloc] init];
    return controller;
}

@end
