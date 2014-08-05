//
//  main.swift
//  Extensions
//
//  Created by newios on 14-8-2.
//  Copyright (c) 2014年 baihuogou. All rights reserved.
//


/**
扩展就是向一个已有的类、结构体或枚举类型添加新功能（functionality）。这包括在没有权限获取原始源代码的情况下扩展类型的能力（即逆向建模）。扩展和 Objective-C 中的分类（categories）类似。（不过与Objective-C不同的是，Swift 的扩展没有名字。）
*/
import Foundation

class Person
{
    var name:String?
    var age:Int = 0
    var kechengNum = 3
    var scoreSum = 275.8
    
    func work()
    {
        println("我会走路")
    }
}


extension Person{

    var scoreAvg:Double
    {
        return scoreSum / Double(kechengNum)
    }
    
    func playThePlino()
    {
        println("我会弹钢琴")
    }
    
}

var per = Person()
println("我的平均成绩是:\(per.scoreAvg)")
per.playThePlino()

