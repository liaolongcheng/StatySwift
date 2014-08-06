//
//  main.swift
//  Array
//
//  Created by JayWon on 14/6/7.
//  Copyright (c) 2014年 www.iphonetrain.com 无限互联3G学院. All rights reserved.
//

import Foundation

//数组的用法

let emptyArray1: Array = []     //声明一个空的数组
var emptyArray2 = Int[]()       //声明一个空的数组, 限定了值的类型为Int

var shoppingList = ["芒果", "橘子", "水", "葡萄", "香蕉"];   //声明一个5个字符串类型元素的数组
println(shoppingList.capacity)

//增加
shoppingList.append("苹果")   //往数组里面添加一个元素, 方法1
println(shoppingList)

shoppingList.insert("苹果", atIndex: 2)   //方法2
println(shoppingList)

shoppingList += "柚子"        //方法3
println(shoppingList)

shoppingList += ["西瓜", "木瓜"]    //方法4
println(shoppingList)

//常用方法
println(shoppingList.count)     //数组的个数
println(shoppingList.capacity)  //数组的容量, 值大于等于count, 并且是2的次方
println(shoppingList.isEmpty)   //判断数组是否为空


//修改
shoppingList[1] = "哈密瓜"     //修改第一个元素的值
println(shoppingList)

shoppingList[4...7] = ["Bananas", "Apples"] //把下标为4、5、6、7的元素替换成 "Bananas", "Apples", 除了能替换值之外,还能改变数组的个数
println(shoppingList)


//删除
shoppingList.removeLast()       //删除最后一个元素
println(shoppingList)

shoppingList.removeAtIndex(4)   //根据指定位置删除元素
println(shoppingList)

//shoppingList.removeAll()        //删除所有的元素
//println(shoppingList)

/*
//数组的遍历1
for item in shoppingList {
    println(item)
}
*/

//数组遍历2
for (index, value) in enumerate(shoppingList) {
    println("Item \(index + 1): \(value)")
}


//Demo2
var threeDoubles = Double[](count: 3, repeatedValue: 0.0)   //[0.0, 0.0, 0.0]
println(threeDoubles)

var anotherThreeDoubles = Array(count: 3, repeatedValue: 2.5)   //[2.5, 2.5, 2.5]
println(anotherThreeDoubles)

var sixDoubles = threeDoubles + anotherThreeDoubles
println(sixDoubles)
