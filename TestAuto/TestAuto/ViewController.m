//
//  ViewController.m
//  TestAuto
//
//  Created by user on 14/11/14.
//  Copyright (c) 2014年 user. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIView *sView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    sView.translatesAutoresizingMaskIntoConstraints = NO;
    sView.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:sView];

    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:sView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1 constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:sView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1 constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:sView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeHeight multiplier:1 constant:20]];
    
    UIView *navView = [[UIView alloc] init];
    navView.backgroundColor = [UIColor orangeColor];
    navView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:navView];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[navView]-0-|" options:0 metrics:nil views:@{@"navView":navView}]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[navView(44)]" options:0 metrics:nil views:@{@"navView":navView}]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
