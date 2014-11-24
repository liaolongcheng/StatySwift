//
//  main.swift
//  protocol
//
//  Created by newios on 14-8-2.
//  Copyright (c) 2014年 baihuogou. All rights reserved.
//

import Foundation

/**
协议其实相当于在java中的接口可以在里面定义需要实现的方法

swift中的协议使用 protocol关键字来定义 协议可以继承其他协议使用冒号来表示继承协议也可以多继承用逗号分开
*/
//定义一个协议
@objc protocol Claim : NSObjectProtocol{
    // 协议内容
    
    //属性的定义
    
    /**swift 中的协议可以定义属性，但是在swift中的属性不能是存储属性我们必须指明属性的读写性使用{get set} 我们也可以定义类属性那么实现协议的一方如果是类的话我们定义的时候使用class关键字来表示如果实现协议的一方是结构体或者枚举我们使用static关键字来表示*/
   
    //定义一个属性
    var money:Double {get set}
    //定义一个类属性
    class var yearEndMoeny:Double{get set}
    
   
    /**
    
    可选方法的定义
    
    swift中的协议可以定义可选方法 但是如果我们要使用可选方法 我们需要在协议前面加上 @objc 其主要目的是为了和oc的协议进行兼容但是使用了@jobc关键字的协议就只能被类实现不能被结构体枚举实现
    
    类方法的定义
    
    除此之外我们也可以在协议中定义类方法如果我们要在协议中使用类方法那么实现协议的一方如果是类的话我们定义的时候使用class关键字来表示如果实现协议的一方是结构体或者枚举我们使用static关键字来表示
    
    突变方法的定义
    
    在协议中如果我们需要改变实例变量的值,那么在定义的时候我们需要加上mutating关键字如果我们使用结构体实现该协议中的方法那么我们需要在实现时也加上mutating关键字 如果是类来实现该协议中的方法我们不需要加上mutating关键字 这样的方法我们也称之为突变方法
    */
    
    //定义普通方法
    func codeObjectc()
    
    func codeSwift()
    
    func codePHP()
    
    //定义类方法
    class func goWork()
    
    //定义一个可选方法
    optional func codeJava()
    
}

//老板类
class Boss : NSObject
{
    //var delegate:Claim?
    var person:protocol<Claim>?
    
    //老板面试员工
    func audition(person:protocol<Claim>)
    {
        //实现代理
        self.person = person
//        self.delegate?.money = 5000.0
    }
    
    //老板让工人工作
    func startWork()
    {
        //deletate 后面加?是因为delegate有可能是nil
        self.person?.codeObjectc()
        self.person?.codeSwift()
        self.person?.codePHP()
        //codeJava后面加问号是因为codeJava这个方法是可选的有可能是没有被实现的所以需要加?判断是否有实现这个方法有就执行没有就不执行
        self.person?.codeJava?()
        
    }
    
    
}

//员工类
class Worker : NSObject,Claim
{
  
    var money:Double = 0.0
    class var yearEndMoeny:Double
    {
        get{
          return 1000
    }
        set{
            
    }
    }
    
    func codeObjectc()
    {
        println("我是工人我回写object-c代码")
    }
    
    func codeSwift()
    {
        println("我是工人我会写swift代码")
    }
    
    func codePHP()
    {
        println("我是工人我会写php代码")
    }
    class func goWork()
    {
        println("我是工人我要去上班")
    }
    func codeJava()
    {
        println("我是工人我额外的会写java代码")
    }
}

//创建员工对象
var worker:Worker = Worker()
worker.money = 200.0


//创建老板对象
var boss:Boss = Boss()

//boss.audition(worker)
boss.person = worker
boss.startWork()




















