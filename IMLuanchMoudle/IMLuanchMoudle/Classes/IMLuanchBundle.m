//
//  IMLuanchBundle.m
//  IMLuanchMoudle
//
//  Created by 姚佩江 on 2021/10/5.
//

#import "IMLuanchBundle.h"
#import "IMLuanchMoudle.h"

@implementation IMLuanchBundle

+ (NSBundle *)bundle {
    return [self.class bundleWithName:NSStringFromClass([IMLuanchMoudle class])];
}

@end
