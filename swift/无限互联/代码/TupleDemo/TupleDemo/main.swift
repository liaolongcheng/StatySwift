//
//  main.swift
//  TupleDemo
//
//  Created by JayWon on 14-6-9.
//  Copyright (c) 2014年 www.iphonetrain.com 无限互联3G学院. All rights reserved.
//

import Foundation

//元组的使用
let (x, y) = (1, 2)     //定义一个简单的元组
println("x is \(x) and y is \(y)")


//元组创建2
let http404Error = (404, "Not Found")   //定义一个由Int和String组成的元组
println(http404Error)

//访问元组的值1
let (statusCode, statusMessage) = http404Error  //采用类似Dictionary的方式, 通过key去拿到值
println("statusCode is \(statusCode) and statusMessage is \(statusMessage)")

//访问元组的值2
//如果仅需要元组中个别的值, 可以使用"_"的方式来忽略不需要的值
let (justTheStatusCode, _) = http404Error
println("justTheStatusCode is \(justTheStatusCode)")

//访问元组的值3, 使用序号
println("status code is \(http404Error.0)")
println("message is \(http404Error.1)")


//元组创建3
let http200Status = (statusCode: 200, desc: "OK")
println("The status code is \(http200Status.statusCode)")
println("The status msg is \(http200Status.desc)")



