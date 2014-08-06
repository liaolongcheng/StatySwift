//
//  main.swift
//  HelloWorld
//
//  Created by JayWon on 14/6/6.
//  Copyright (c) 2014年 www.iphonetrain.com 无限互联3G学院. All rights reserved.
//

import Foundation

println("Hello, World!")    //输出函数, 跟Cocoa中的NSlog函数是一个意思


//这是一条注释

/*  演示多行注释
/*
    这是多行注释的写法
*/
*/

//分号
//1.单个语句无需加分号,加了也没问题
//2.多个语句放在一行,需要加分号


//变量
/*
    类型推导：编译器在编译的时候 通过你提供的初始化的值 自动推导出特定的表达式的值
*/
var myVariable = 42     //编译器自动推导其类型为Int
myVariable = 50         //变量多次赋值的时候需要保证值的类型是相同的
println(myVariable)

//常量
let myConstant = 12
//myConstant = 40     //错误, 常量不能被2次修改


//显示声明类型, 语法: "变量\常量:类型"
let double: Double = 40.0
let int: Int = 10

//Swift不会自动给变量赋初始值, 也就是说变量不会有默认值, 所以要求在使用变量之前必须要对其初始化
//var noValue     //错误, 需要赋初始值




//命名规则：Swift中可以使用几乎任何字符来作为常量和变量名，包括Unicode。但是不能含有数学符号，箭头，无效的Unicode，横线-和制表符，且不能以数字开头

var π = 3.14
var 无限互联 = "学习iOS"
let 🐶 = "汪"
let cat = "🐱"

println(π)
println(无限互联)
println(🐶)
println(cat)




/*
整型可以写成：
一个十进制数，不带前缀
一个二进制数，用前缀0b
一个八进制数，用0o前缀
一个十六进制数，以0x前缀
*/
let int1 = 17
let int2 = 0b10001  //二进制表示
let int3 = 0o21     //八进制
let int4 = 0x11     //十六进制

let minValue = UInt8.min
let maxValue = UInt8.max

println(minValue, maxValue)



/*
类型别名
    使用typealias关键字定义类型别名，类似typedef
*/
typealias NSInteger = Int   //给Int取个别名叫NSInteger
var value: NSInteger = 45
value = 12
println(value)


//布尔类型
var tigerIsAnimal: Bool = true
var animalIsTiger = false



//字符串
let label = "The width is "     //定义字符串常量
let width = 56
var widthLabel = label + String(width)  //swift不支持隐式类型转换, 需要显示类型转换
widthLabel += "!"
println(widthLabel)

//字符串格式化，使用\(item)
let apples = 3
let oranges = 5
let applesSummary = "I have \(apples) apples"
let fruitSummary = "I have \(apples + oranges) pieces of fruit"
println(applesSummary)
println(fruitSummary)

