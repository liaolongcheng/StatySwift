//
//  main.swift
//  optional
//
//  Created by liaolongcheng on 13-7-30.
//  Copyright (c) 2013年 liaolongcheng. All rights reserved.
//

import Foundation

/**可选类型

optional 当我们不确定一个变量可能在程序运行过程中为空那么我们需要使用可选类型
*/

var name:String = "zhansan"
//如果电话可能为nil那么我们需要将电话声明为一个可选类型 语法 变量名:类型?
var phone:String? = "134234"
//使用可选类型 由于我们phone是一个可选我们并不知道是否值是否存在如果在不存在时我们不能调用toInt()方法所以在使用的时候我们需要加上？表示判断是否值存在能够响应toInt()方法
var aa = phone?.toInt()
//不可选值是不能被赋值为nil的
//var address:String = nil --错误

//解包
//如果我们在确定一个可选类型的变量值一定是存在的那么我们在使用的过程中可以强制解包 使用! 不需要在使用的时候每次都去验证是否有值

//此时我确定phone是有值的所以我可以使用!进行强制解包 但如果一旦phone没有值的情况下就会报错
var description = name + phone!

////Optional Binding, 等价于上面一行
//if let sValue = possibleString {
//    let stringValue = sValue.hashValue
//}

//隐式解包的可选类型
//你可以把 隐式解包可选类型 当成对每次使用的时候自动解包的可选类型。即不是每次使用的时候 在变量/常量后面加！，而是直接在定义的时候加！
let assumedString: String! = "An implicitly unwrapped optional string"
println(assumedString)
println(assumedString.hashValue)


/*
总结!的使用场景
1.强制对 可选量 进行解包
2.声明 隐式解包的可选类型的时候, 一般用于类中的属性
*/





