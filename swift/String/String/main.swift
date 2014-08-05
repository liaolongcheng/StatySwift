//
//  main.swift
//  String
//
//  Created by newios on 14-7-31.
//  Copyright (c) 2014年 baihuogou. All rights reserved.
//

import Foundation

/**定义一个字符串**/
var str="abc"
var str1 = "CBA"
//定义一个字符
var char:Character = "A"

//得到字符串的长度
var strLength = countElements(str)
println("字符串的长度是\(strLength)")
//将字符串转换成int toInt()方法

//判断字符串是否为空
if str.isEmpty
{
    println("字符串是空的")
}
else
{
    println("字符串不是空的")
}
//比较字符串
if str == str1
{
    println("字符串str 和字符串str1是相等")
}
else
{
    println("字符串str和字符串str1不是相等")
}
//判断字符串是否以什么开头

if str.hasPrefix("a")
{
    println("str1 是以a开头的")
}
//判断字符串是否以什么结尾
if str.hasSuffix("c")
{
    println("字符串str是以c结尾的")
}
//将字符串全部转成大写
var tempStr = str.uppercaseString
println(tempStr)
//将字符串全部转成小写
var tempStr1 =  str.lowercaseString
println(tempStr1)
//字符串拼接
var str3 = str + str1
println(str3)






