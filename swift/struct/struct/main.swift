//
//  main.swift
//  struct
//
//  Created by newios on 14-8-1.
//  Copyright (c) 2014年 baihuogou. All rights reserved.
//

import Foundation

//定义一个结构体
struct QFTest
{
    var x = 0
    var y = 0
    static var z = 0
    
    
    /**如果我们没有自定写构造函数那么系统会为我们提供构造函数 如果我们自己实现了一个无参的构造函数 那么系统将不在为我们提供构造函数结构体不能够有结构函数*/
    //定义构造函数
    init()
    {
        
    }
    //定义两个参数的构造函数
    init(x:Int,y:Int)
    {
        self.x = x
        self.y = y
    }
    
    
    /**结构体也可以定义方法 结构体中的方法默认情况之下是不能访问成员变量的 如果我们在结构体中的方法内部需要访问成员字段那么我们可以使用mutating关键字来修饰函数那么在函数内部就可以访问到成员变量我们把这这样的方法称为变异方法*/
    mutating func getSum(otherX:Int,otherY:Int)
    {
        x += otherX
        y += otherY
    }
    
    /**
    在结构体中我们可以使用static 关键字来定义一个静态的变量 和方法  那么该方法或属性可以通过结构体名称来调用
    */
    static func testStaticFunc()
    {
        println("这是一个静态的方法")
    }
    
    
    
}

func testStructure()
{
    //创建一个结构体对象
    var s = QFTest(x: 100, y: 100)
    println("x= \(s.x) y=\(s.y)")
    
    //使用无参的构造函数
    var s1 = QFTest()
    println("x= \(s1.x) y=\(s1.y)")
    s1.x = 111
    s1.y = 222
    println("x= \(s1.x) y=\(s1.y)")
    
    /**在使用结构体的方法的时候需要注意的是 如果我们有两个以上的参数那么第一个参数不用写标签从第二个参数开始一定要写上标签 如果在定义的时候我们没有指定标签那么使用定义是后的参数名作为标签*/
    s1.getSum(12,otherY: 23)
    println("x= \(s1.x) y=\(s1.y)")
    
    /**
    结构体是值类型
    
    在之前的章节中，我们已经大量使用了值类型。实际上，在 Swift 中，所有的基本类型：整数(Integer)、浮点数(floating-point)、布尔值(Booleans)、字符串(string)、数组(array)和字典(dictionaries)，都是值类型，并且都是以结构体的形式在后台所实现。
    
    在 Swift 中，所有的结构体和枚举都是值类型。这意味着它们的实例，以及实例中所包含的任何值类型属性，在代码中传递的时候都会被复制。
    */
    var s2 = s1
    s2.x = 1
    s2.y = 1
    println("x= \(s1.x) y=\(s1.y)")
    println("x= \(s2.x) y=\(s2.y)")
    
    /**使用静态属性和静态方法*/
    QFTest.z = 20
    println("z的值是:\(QFTest.z)")
    QFTest.testStaticFunc()
    
    
    
}

testStructure()

