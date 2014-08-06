//
//  main.swift
//  Dictionary
//
//  Created by JayWon on 14/6/7.
//  Copyright (c) 2014年 www.iphonetrain.com 无限互联3G学院. All rights reserved.
//

import Foundation

//字典的使用

let emptyDic1 = [:]     //声明一个空的字典
let emptyDic2 = Dictionary<String, Float>() //声明一个空的字典, key为String类型, value为Float类型

var airports = ["TYO": "Tokyo", "DUB": "Dublin"]
println(airports)

//添加\修改
airports["TYO"] = "Tokyo International" //查找原来的字典, 如果原来的字典包含此key, 那么就把原来字典对应的value换成新的value; 如果没有找到, 那么就是往字典里面添加一对新的值
println(airports)

airports["LHR"] = "London"
println(airports)

/*
//删除
airports["LHR"] = nil
println(airports)

airports.removeValueForKey("TYO")
println(airports)
*/

//输出count
println("airports count is " + String(airports.count))
println("airports count is \(airports.count)")


//字典遍历
for (key, value) in airports {
    println("\(key): \(value)")
}

//遍历所有的key
for key in airports.keys {
    println(key)
}

//遍历所有的value
for value in airports.values {
    println(value)
}


let allKeys = Array(airports.keys)  //把所有的key转换成数组
let allValues = Array(airports.values)  //把所有的value转换成数组
println(allKeys)
println(allValues)




