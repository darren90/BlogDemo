//
//  People.m
//  LoadAndInitialize
//
//  Created by fengtengfei on 2018/12/21.
//  Copyright © 2018 Fengtf. All rights reserved.
//

#import "People.h"

static NSMutableArray *someObjects;


@implementation People

+ (void)load {
    NSLog(@"加载Load方法: People");
}

+ (void)initialize {
    NSLog(@"加载People 的initialize方法:  %@", [self class]);
}

/**
 *  下面这个才是正确的initialize方法的实现，需要判断是不是由自己这个类调用的。
 */
+ (void)initializeCorrect {
    if (self == [People class]) {
        someObjects = [[NSMutableArray alloc] init];    // 不方便编译期复制的对象在这里赋值
        NSLog(@"Initialize Parent, caller Class %@", [self class]);
    }
}

@end
