//
//  NSTimer+EOCBlocksSupport.h
//  Effective Objective_2.0
//
//  Created by 郑丽兰 on 17/3/22.
//  Copyright © 2017年 zhenglilan. All rights reserved.

//  解决NSTimer保留目标对象， 造成保留环的问题

#import <Foundation/Foundation.h>

@interface NSTimer (EOCBlocksSupport)
+ (NSTimer *)eoc_scheduledTimerWithTimeInterval:(NSTimeInterval)interval
                                          block: (void(^)())block
                                        repeats:(BOOL)repeats;
@end
