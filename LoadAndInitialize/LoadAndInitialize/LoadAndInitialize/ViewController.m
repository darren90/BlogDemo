//
//  ViewController.m
//  LoadAndInitialize
//
//  Created by fengtengfei on 2018/12/21.
//  Copyright © 2018 Fengtf. All rights reserved.
//

#import "ViewController.h"
#import "People.h"
#import "People+Category.h"
#import "Student.h"
#import "Student+Category.h"
#import "LoadUse.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     *  这会触发Child和父类的initialize方法
     */
    Student *student = [Student new];
    
    /**
     *  这时候other已经调用过load方法，所以输出结果是Swizzled Output
     */
//    Other *other = [Other new];
//    [other originalFunc];
}


@end
