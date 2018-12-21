//
//  LoadUse.m
//  LoadAndInitialize
//
//  Created by fengtengfei on 2018/12/21.
//  Copyright © 2018 Fengtf. All rights reserved.
//

#import "LoadUse.h"
#import <objc/runtime.h>

@implementation LoadUse

static NSString *name;

+ (void)load {
    name = @"Other";
    NSLog(@"Load Class Other");
    
    Method originalFunc = class_getInstanceMethod([self class], @selector(originalFunc));
    Method swizzledFunc = class_getInstanceMethod([self class], @selector(swizzledFunc));
    
    method_exchangeImplementations(originalFunc, swizzledFunc);
}

+ (void)printName {
    NSLog(@"%@",name);
}

- (void)originalFunc {
    NSLog(@"Original Output");
}

- (void)swizzledFunc {
    NSLog(@"Swizzled Output");
}

@end
