//
//  main.swift
//  Dictionary
//
//  Created by liaolongcheng on 13-7-30.
//  Copyright (c) 2013年 liaolongcheng. All rights reserved.
//

import Foundation

//声明一个字典
var myDic = [:]
var myDic1:Dictionary = ["name":"张三","phone":"12345678"]
var myDic2:Dictionary = Dictionary<String,Int>()
println(myDic1)


//得到数组的长度
println(myDic1.count)
//得到字典所有的Key值并且转成数组
var keys:Array = Array(myDic1.keys)
println("keys : \(keys)")
//得到字典所有的值 并转化为数组
var values = Array(myDic1.values)
println("values \(values)")
//得到某个键对应的值在字典中的位置
var index = myDic1.indexForKey("name")
println("name键在字典中的位置是:\(index)")


//获取字典中的某个键对应的值
var name = myDic1["name"]
println("name is \(name)")

//查找原来的字典中使用有指定的Key 如果有就替换原来的值  如果没有则添加一对新的键值对
myDic1["name"] = "王五"
println(myDic1)
myDic1.updateValue("李四",forKey:"name")
println(myDic1)
//removeAtIndex
//removeAll

//删除字典
//myDic1["name"] = nil
println(myDic1)
//myDic1.removeValueForKey("phone")
println(myDic1)

//遍历数组
for (key,value) in myDic1
{
    println("key \(key) ------- value \(value)")
}





