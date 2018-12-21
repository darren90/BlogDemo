//
//  Student+Category.m
//  LoadAndInitialize
//
//  Created by fengtengfei on 2018/12/21.
//  Copyright © 2018 Fengtf. All rights reserved.
//

#import "Student+Category.h"

@implementation Student (Category)

+ (void)load {
    /**
     *  分类中的load方法会被调用
     */
    NSLog(@"加载Load方法: Student+Category");
}

/**
 *  initialize更像是一个普通的方法。
 *  即使在Student.m中实现了initialize方法，也会在这里被覆盖
 */
//+ (void)initialize {
//    NSLog(@"加载initialize方法: Student+Category");
//}


@end
