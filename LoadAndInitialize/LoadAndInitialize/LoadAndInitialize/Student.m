//
//  Student.m
//  LoadAndInitialize
//
//  Created by fengtengfei on 2018/12/21.
//  Copyright © 2018 Fengtf. All rights reserved.
//

#import "Student.h"
#import "LoadUse.h"

@implementation Student

+ (void)load {
    NSLog(@"加载Load方法: Student");
    
    /**
     *  这时候Other类还没调用load方法，所以输出结果是Original Output
     */
    LoadUse *other = [LoadUse new];
    [other originalFunc];
    
    // 如果不先调用other的load，下面这行代码就无效，打印出null
    [LoadUse printName];
}

//+ (void)initialize {
//    NSLog(@"加载Student 的initialize方法:  %@", [self class]);
//}

@end
