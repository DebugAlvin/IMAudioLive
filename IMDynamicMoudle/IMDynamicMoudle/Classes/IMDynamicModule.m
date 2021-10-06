//
//  IMDynamicModule.m
//  IMRouter
//
//  Created by 姚佩江 on 2021/10/4.
//

#import "IMDynamicModule.h"
#import "IMDynamicViewController.h"
#import <IMBeeHive/IMBeeHive.h>
@implementation IMDynamicModule


- (UIViewController *)mainViewController {
    IMDynamicViewController *viewController = [[IMDynamicViewController alloc] init];
    return viewController;
}

-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey,id> *)launchOptions {
    NSLog(@"[IMDynamicModule] --- [执行]");
    
    return YES;
}

+ (instancetype)shareInstance {
    static dispatch_once_t p;
    static id Instance = nil;
    dispatch_once(&p, ^{
        Instance = [[self alloc] init];
    });
    return Instance;
}


@end
