//
//  main.swift
//  OptionalDemo
//
//  Created by JayWon on 14-6-10.
//  Copyright (c) 2014年 www.iphonetrain.com 无限互联3G学院. All rights reserved.
//

import Foundation

//可选类型
/*
    可选类型表示: 这个值要么存在, 并且等于x, 要么不存在
*/

//由于toInt方法可能会失败，因此它会返回一个可选的Int类型，而不同于Int类型。一个可选的Int类型被记为Int?，不是Int。问号表明它的值是可选的，可能返回的是一个Int，或者返回的值不存在。
let possibleNumber = "123"
let convertedNumber: Int? = possibleNumber.toInt()

var responseCode: Int? = 404    //要么存在, 且值为404
responseCode = nil              //要么不存在, 可以赋值为nil表示不存在

//可选类型类似于Objective-C中指针的nil值，但是nil只对类(class)有用，指对象不存在，而Swift 的 nil 不是指针，它代表特定类型的值不存在。任何类型的可选类型都能赋值为 nil，而不仅限于对象类型。并且更安全。

/*
    1.Swift里面nil 不能用于非可选类型
    2.如果代码中的常量或者变量需要适配值不存在的情况, 务必将它声明为恰当的可选类型
    3.如果定义的可选类型的对象不提供默认值, 该对象将自动设为nil
*/
//var strValue = nil    //错误
var strValue: String? = "hello"

//let hashValue = strValue.hashValue      //错误。对于Optional值，不能直接进行操作
let hashValue = strValue?.hashValue //问号的意思是询问可选量是否响应后面这个方法
println("hashValue is \(hashValue)")


/* 
    总结 ? 的使用场景
    1.声明Optional变量
    2.用在Optional值操作中,用来判断是否响应后面的操作
*/




/*
    解包(!的用法)
    如果确定一个可选类型的对象的值一定存在，那么我们使用 ！进行解包获取它的值，或者使用Optional Binding。
*/
let possibleString: String? = "An optional string"
println(possibleString!)    //解包, 我确定possibleString的值一定存在, 不需要每次都验证他的值是否存在


let stringValue = possibleString!.hashValue //必须解包,才能获取可选量的属性或者方法
println(stringValue)


//Optional Binding, 等价于上面一行
if let sValue = possibleString {
    let stringValue = sValue.hashValue
}


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
