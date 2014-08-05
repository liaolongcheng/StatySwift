//
//  main.swift
//  enum
//
//  Created by newios on 14-8-1.
//  Copyright (c) 2014年 baihuogou. All rights reserved.
//

import Foundation

//定义一个枚举
enum fangxiang
{
    case left
    case xia
    case you
    case shang
}

enum fangxiang1
{
    case shang,xia,zuo,you
}
//使用枚举
var d = fangxiang.left
d = .you

var c:fangxiang = .left
var a:fangxiang = fangxiang.shang

//判断枚举
if(a == fangxiang.shang)
{
    println("yes")
}


switch d{
case .left:
    println("left")
case .xia:
    println("xia")
case .you:
    println("you")
case .shang:
    println("shang")
}

enum cores : NSString
{
    case android = "a"
    case ios = "b"
    case windowsPhone = "c"
}

var m = cores.android
//将一个枚举值转化为指定值
var value = m.toRaw()
println(value)

//将指定值转化为枚举值
var enumValue = cores.fromRaw("c")
println(enumValue)




















