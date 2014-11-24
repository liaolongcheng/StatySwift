//
//  main.swift
//  Array
//
//  Created by liaolongcheng on 13-7-26.
//  Copyright (c) 2013年 liaolongcheng. All rights reserved.
//

import Foundation

//声明一个空数组
var ay = []
//声明一个类型为Int的数组
var ay1:Array = [Int]()
var ay2:Array = ["张三","李四","王五"]
var ay3 = [Double](count:3,repeatedValue:2.3)

//往数组添加一个元素
ay2.append("田七")
for aa in ay2
{
    println(aa)
}
//在某个位置插入一个元素
ay2.insert("赵六",atIndex:2)
println(ay2)
//添加元素
println(ay2)
//将一个数组添加到宁外一个数组
ay2 += ["ii","33"]
println(ay2)
//移除下标为2的元素
//ay2.removeAtIndex(2)
println(ay2)
//移除最后一个元素
//ay2.removeLast()
println(ay2)
//移除所有元素
//ay2.removeAll()
println()
//翻转数组
ay2.reverse()
println()


//得到数组元素的个数
var arrayCount = ay2.count
println("数组的长度是:\(arrayCount)")
//得到数组容量（计算方式为2的次方大于等于count的最小值）
var arrayCapaty = ay2.capacity
println("数组的容量为:\(arrayCapaty)")
//判断是否为空
var enemty = ay2.isEmpty
println("数组是否为空:\(enemty)")

//数组的修改
ay2[0] = "王麻子"
println(ay2)

ay2[0...2] = ["王丽","李天一"]
println(ay2)

//数组的遍历
for(var i=0;i<ay2.count;i++)
{
    println("数组的第\(i+1)个元素的值是:\(ay2[i])")
}
for value in ay2
{
    println("value的值为:",value)
}
for (index,value) in enumerate(ay2)
{
    println("数组的\(index + 1)个元素的值是:\(value)")
    
}

var sourceDic:NSDictionary = NSDictionary()
var aa:NSArray = sourceDic["aaa"]?[9] as NSArray
var bb:NSArray = sourceDic["Other"]?[0]?["bb"] as NSArray

var ay4 = ["aa","bb","cc","dd"]

ay4[0...2] = ["vv"]
println(ay)



