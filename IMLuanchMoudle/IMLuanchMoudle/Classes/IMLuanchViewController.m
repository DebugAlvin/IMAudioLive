//
//  IMLuanchViewController.m
//  IMRouter
//
//  Created by 姚佩江 on 2021/9/28.
//

#import "IMLuanchViewController.h"
#import "IMLuanchMoudle.h"
#import "IMLuanchBundle.h"
#import "IMDynamicModuleProtocol.h"
#import "IMChatModuleProtocol.h"
#import "IMMineModuleProtocol.h"
#import "IMHomeModuleProtocol.h"
@interface IMLuanchViewController ()

@end

@implementation IMLuanchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"IMLuanchViewController");
    UIImage *launchImage = [self getLaunchImage];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.frame];
    imageView.image = launchImage;
    [self.view addSubview:imageView];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self setupTabBarController];
    });
    
}


-(void)setupTabBarController {
    NSArray *titles = @[@"首页",@"消息",@"动态",@"我的"];
    NSArray *imageTags = @[@"message",@"message",@"follow",@"me"];
    NSMutableArray *viewControllers = [NSMutableArray array];
    for (NSInteger i = 0; i < titles.count; i ++) {
        UIViewController *vc = nil;
        switch (i) {
            case 0:{
               
               vc = [IMGetBean(IMHomeModuleProtocol) mainViewController];
            }
                break;
            case 1:{
                vc = [IMGetBean(IMChatModuleProtocol) mainViewController];
            }
                break;
            case 2:{
                vc = [IMGetBean(IMDynamicModuleProtocol) mainViewController];
            }
                break;
            case 3:{
                vc = [IMGetBean(IMMineModuleProtocol) mainViewController];
            }
                break;
            default:
                break;
        }
        //        NSLog(@"vc = %@",vc);
        
        
        UIImage *normalImage = [IMLuanchBundle imageNamed:[NSString stringWithFormat:@"lc_root_tab_%@_normal",imageTags[i]]];
        UIImage *selectImage = [IMLuanchBundle imageNamed:[NSString stringWithFormat:@"lc_root_tab_%@_pressed",imageTags[i]]];
        
        UITabBarItem *tabBarItem = [[UITabBarItem alloc]initWithTitle:titles[i] image:normalImage selectedImage:selectImage];
        vc.tabBarItem = tabBarItem;
        UINavigationController *nc = [[UINavigationController alloc]initWithRootViewController:vc];
        [viewControllers addObject:nc];
    }
    UITabBarController *tbc = [[UITabBarController alloc]init];
    tbc.viewControllers = viewControllers;
    [UIApplication sharedApplication].keyWindow.rootViewController = tbc;
}


/** 获取启动图片 */
- (UIImage *)getLaunchImage
{
    CGSize viewSize = [UIScreen mainScreen].bounds.size;
    NSString *viewOrientation = @"Portrait";                // 横屏请设置为 @"Landscape"
    UIImage *lauchImage = nil;
    NSArray *imagesDictionary = [[[NSBundle mainBundle] infoDictionary] valueForKey:@"UILaunchImages"];
    for (NSDictionary *dict in imagesDictionary)
    {
        CGSize imageSize = CGSizeFromString(dict[@"UILaunchImageSize"]);
        if (CGSizeEqualToSize(imageSize, viewSize) && [viewOrientation isEqualToString:dict[@"UILaunchImageOrientation"]])
        {
            lauchImage = [UIImage imageNamed:dict[@"UILaunchImageName"]];
        }
    }
    return lauchImage;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
