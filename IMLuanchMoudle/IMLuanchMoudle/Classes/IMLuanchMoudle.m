//
//  IMLuanchMoudle.m
//  IMRouter
//
//  Created by 姚佩江 on 2021/9/28.
//

#import "IMLuanchMoudle.h"
#import "IMLuanchViewController.h"
#import "IMBeeHive.h"

@implementation IMLuanchMoudle

+ (instancetype)shareInstance {
    static dispatch_once_t p;
    static id Instance = nil;
    dispatch_once(&p, ^{
        Instance = [[self alloc] init];
    });
    return Instance;
}

+(NSBundle *)mainBundle {
    NSURL *bundleURL =  [[NSBundle mainBundle] URLForResource:@"IMLuanchMoudle" withExtension:@"bundle"];
    NSBundle *bundle = [NSBundle bundleWithURL:bundleURL];
    return bundle;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"[IMLuanchMoudle] --- [执行]");
    mWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    mWindow.backgroundColor = [UIColor whiteColor];
    [mWindow makeKeyAndVisible];
    [UIApplication sharedApplication].delegate.window = mWindow;
    mWindow.rootViewController = [[IMLuanchViewController alloc] init];
    return YES;
}

- (void)doSomeTings {
    
}


@end
