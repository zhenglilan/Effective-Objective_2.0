//
//  EOCClass.m
//  Effective Objective_2.0
//
//  Created by 郑丽兰 on 17/3/22.
//  Copyright © 2017年 zhenglilan. All rights reserved.
//

/* 要点：
 
    1. NSTimer  对象会保留其目标，直到计时器本身失效为止，调用invalidate方法可令计时器实效，另外，一次性的计算器在触发完成任务之后也会失效。
    2. 反复执行任务的计时器，很容易引入保留环，如果这种计时器的目标对象又保留了计时器本身，那肯定会导致保留环。这种环状保留关系，可能是直接发生的，也可能是通过对象图里的其他对象间接发生的。
    3. 可以扩充NSTimer的功能，用“块”来打破保留环。 不过， 除非NSTimer将来在公共接口里提供此功能 ，否则必须创建分类，将相关实现代码加入其中。
*/
#import "EOCClass.h"
#import "NSTimer+EOCBlocksSupport.h"

@implementation EOCClass
{
    NSTimer *_pollTimer;
}

- (id)init {
    return [super init];
}

- (void)dealloc {
    [_pollTimer invalidate];
}

- (void)stopPolling {
    [_pollTimer invalidate];
}

- (void)startPolling {
    __weak EOCClass *weakSelf = self;
    _pollTimer = [NSTimer eoc_scheduledTimerWithTimeInterval:5.0 block:^{
        // self 不会为计时器所保留，当block块开始执行，立刻生成strong引用，以保证实例在执行期间持续存活。
        EOCClass *stongSelf = weakSelf;
        [stongSelf p_doPoll];
    } repeats:YES];
}

- (void)p_doPoll {
    //...
}
@end
