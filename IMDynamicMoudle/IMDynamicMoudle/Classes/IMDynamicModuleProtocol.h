//
//  IMDynamicProtocol.h
//  IMRouter
//
//  Created by 姚佩江 on 2021/9/26.
//

#import <IMBeeHive/IMBeeHive.h>

@protocol IMDynamicModuleProtocol <NSObject, IMModuleProtocol>

- (UIViewController *)mainViewController;

@end
