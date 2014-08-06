//
//  main.swift
//  closure
//
//  Created by liaolongcheng on 13-7-31.
//  Copyright (c) 2013年 liaolongcheng. All rights reserved.
//

import Foundation

/**闭包其实类似于其他语言中的回调函数，又或者是在oc中的block 我们可以使用闭包进行回调，传值可以替代一部分代理做的事情*/

//将函数作为参数传递可以做到oc中的block的事情
func someFunctionThatTakesAClosure(fun:(par1:NSString,par2:NSString)->String)
{
    var a = fun(par1: "zhangsan",par2: "123455")
}

func closure(par1:NSString,par2:NSString)->String
{
    
    println("name is \(par1) phone is \(par2)")
    return "aa"
}
someFunctionThatTakesAClosure({(par1,par2)->String in
    
    println("name is \(par1) phone is \(par2)")
    return "aa"
    
    });

//reversed = sort(names, { (s1: String, s2: String) -> Bool in
//    return s1 > s2
//    })

//someFunctionThatTakesAClosure(closure);


//func someFunctionThatTakesAClosure(closure: () -> ()) {
//    // 函数体部分
//}
//
//// 以下是不使用尾随闭包进行函数调用
//
//someFunctionThatTakesAClosure({
//    // 闭包主体部分
//    })
//
//// 以下是使用尾随闭包进行函数调用
//
//someFunctionThatTakesAClosure() {
//    // 闭包主体部分
//}


/***使用闭包计算一个数组所有元素的和*/


func getNumSum(ay:Int[],fun:(Int[])->Int)
{
    var sum = fun(ay)
    println("数组元素的和是:" + String(sum))
}

var ay = [12,34,67,45,89]

getNumSum(ay,{(ay:Int[])->Int in
    
    var sum = 0
    for item in ay
    {
        sum += item
    }
    return sum
    });

getNumSum(ay,{
    var sum = 0
    //可以省略参数的类型 使用$0 表示第1个参数 $2表示第一个参数
    for item in $0
    {
        sum+=item
    }
    return sum
    
    });

//尾随闭包
getNumSum(ay){
    (ay:Int[])->Int in
    
    var sum = 0
    for item in ay
    {
        sum += item
    }
    return sum
};