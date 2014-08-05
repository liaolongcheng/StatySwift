//
//  FuncBlock.m
//  Functions
//
//  Created by JayWon on 14-6-29.
//  Copyright (c) 2014年 www.iphonetrain.com 无限互联3G学院. All rights reserved.
//

#import "FuncBlock.h"

@implementation FuncBlock

//1.定义函数
/*
int sum2(int a, int b)
{
    return a+b;
}
*/

-(void)desc2
{
    //声明block
    int (^p)(int, int);
    
    //3.把函数赋值给block
//    p = sum2;
    
    p = ^(int a, int b)
    {
        return a+b;
    };
    
    //4.使用
    int result = p(10, 40);
    printf("OC方法输出result:%d\n", result);
    
}

@end
