//
//  ViewController.m
//  Effective Objective_2.0
//
//  Created by 郑丽兰 on 17/3/22.
//  Copyright © 2017年 zhenglilan. All rights reserved.
//

#import "ViewController.h"
#import "EOCSubClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {

    [super viewDidLoad];
//    [self testTimer];
    EOCSubClass *s = [[EOCSubClass alloc] init];
}



- (void) testTimer {
    [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(functionTestA) userInfo:nil repeats:NO];
    [self functionTestB];
    [self functionTestC];
}
- (void)functionTestA {
    NSLog(@"A");
}
- (void)functionTestB {
    NSLog(@"B");
    // 整个程序卡10秒。
    [NSThread sleepForTimeInterval:10];
}
- (void)functionTestC {
    NSLog(@"C");
}





@end
