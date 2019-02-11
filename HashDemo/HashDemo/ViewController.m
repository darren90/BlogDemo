//
//  ViewController.m
//  HashDemo
//
//  Created by fengtengfei on 2018/12/21.
//  Copyright © 2018 Fengtf. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIColor *color1 = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1.0];
    UIColor *color2 = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1.0];
    NSLog(@"color1 == color2 = %@", color1 == color2 ? @"YES" : @"NO");
    NSLog(@"[color1 isEqual:color2] = %@", [color1 isEqual:color2] ? @"YES" : @"NO");
}


@end
