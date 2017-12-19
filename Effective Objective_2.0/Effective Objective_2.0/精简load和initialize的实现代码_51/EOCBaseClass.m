//
//  EOCBaseClass.m
//  Effective Objective_2.0
//
//  Created by 郑丽兰 on 17/3/28.
//  Copyright © 2017年 zhenglilan. All rights reserved.
//

#import "EOCBaseClass.h"

@implementation EOCBaseClass
//+(void)load {
//    NSLog(@"%@  load", self);
//}

+ (void)initialize {
    if (self == [EOCBaseClass class]) {
        NSLog(@"%@ initialized", self);
    }
}
@end
