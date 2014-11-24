//
//  main.swift
//  switch
//
//  Created by newios on 14-7-31.
//  Copyright (c) 2014年 baihuogou. All rights reserved.
//

import Foundation



//最普通的switch 也是其他语言中都有的

var num = 1

//在我们传统的swith case 中在每一个case 后我们需要手动的加上一个break否则程序会依次向下匹配 知道switch结束  但是swith中在每个case后面默认加上了一个break  如果我们需要继续向下匹配那么我们则需要自己手动在每个case后加上一个 fallthrough
switch (num){

case 0:
    println("num的值是 0")
    fallthrough
case 1:
    println("num的值是 1")
case 2:
    println("num的值是 2")
case 3:
    println("num的值是 3")
case 4:
    println("num的值是 4")
case 5:
    println("num的值是 5")
default:
    println("num的值是 没找到")
}

//匹配多个
switch (num){
case 0,1,2:
    println("num的的值可能是0,1,2")
case 3,4,5:
    println("num的值可能是3,4,5")
default:
    println("什么也没找到")
}

//匹配区间
switch (num){
case 0...3:
    println("num的值在0-3之间")
case 3...5:
    println("num的值是在3-5之间")
default:
    println("值没找到")
}

//匹配元组.(x, y)坐标
let somePoint = (2, 0)
switch somePoint {
case (0, 0):
    println("(0, 0) is at the origin")
case (_, 0):
    println("(\(somePoint.0), 0) is on the x-axis")
case (0, _):
    println("(0, \(somePoint.1)) is on the y-axis")
case (-2...2, -2...2):
    println("(\(somePoint.0), \(somePoint.1)) is inside the box")
default:
    println("(\(somePoint.0), \(somePoint.1)) is outside the box")
}

//值绑定
let anotherPoint = (2, 3)
switch anotherPoint {
case (let x, 0):    //此时x只是一个占位符, 用来临时的获取switch条件中的一个或多个值
    println("x value is \(x)")
case (0, let y):
    println("y value is \(y)")
case let (x, y):
    println("somewhere else at (\(x), \(y))")
}


//Where 附加条件
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let(x, y) where x == y:
    println("case 0")
case let(x, y) where x == -y:
    println("case 1")
case let(x, y):
    println("case 2")
}



//标签语句
//根据分数评等级
//题目要求,碰到异常的分数,直接终止循环
var score = [96, 83, 43, 101, 66, 70, -5, 99]
First: for s in score { //定义标签First
    switch s/10 {
    case 10:
        continue First  //使用标签
    case 9:
        println("\(s) 分为优秀")
    case 8:
        println("\(s) 分为良好")
    case 7:
        println("\(s) 分为中等")
    case 0:
        break First     //使用标签, 终止for循环。如果这里没有使用表情， break的将是switch
    default:
        println("\(s) 分为沒及格")
    }
}

//class Preson:NSObject
//{
//    var _block:()?
//    
//    init()
//    {
//        _block!
//    }
//}






