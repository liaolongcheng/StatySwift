//
//  main.swift
//  class
//
//  Created by newios on 14-8-1.
//  Copyright (c) 2014年 baihuogou. All rights reserved.
//

import Foundation

//定义一个类
class Person
{
    
    
    
    var name:String?
    
    
    /**在开发中我们可能会为属性赋值的时候赋值一些不符合逻辑的值 比如说年龄不可能为负数  年龄不可能大于150 这样的情况我么可以使用属性监视器来避免*/
    var age:Int = 0{
        
    willSet(newAge){
        
        if Int(newAge) > 150{
            self.age = 100
        }
        if Int(newAge) < 0{
            self.age = 0
        }
    }
    didSet(newAge){
     
    }
    
    }
    
    /**有的时候我们不需要属性马上就加载 我们只是想要属性在使用的时候才加载那么这种情况下我们可以使用lazy关键字来修饰我们的属性 这样就意味着属性不会立即加载在我们使用的时候才会加载*/
    lazy var address:String = "成都 青羊区"
    
    /**对于值类型（指结构体和枚举）可以定义存储型和计算型类型属性，对于类（class）则只能定义计算型类型属性。*/
    class var some:Int{
        return 10
    }
    
  
    
    //妈妈的身高
    var motherHeight:Double = 0
    //爸爸的身高
    var fatherHeight:Double = 0
    
    /**在使用中有的属性是通过其他属性计算得来的 比如 人的理论身高 假设人的理论身高计算公式为 
    
    妈妈的身高是爸爸妈妈总身高的2/5
    （爸爸的身高 + 妈妈的身高 + 10）/ 2
    
    
    */
    var shouldHeight:Double
    {
    get{
        
        return (motherHeight + fatherHeight + 10) / 2
    }
    set(newShouldHeight){
        
        var faAndMa = newShouldHeight * 2 - 10
        motherHeight = faAndMa * 0.4
        fatherHeight = faAndMa * 0.6
    }
    }

   
    init()
    {}
   
    init(name:String,age:Int)
    {
        self.name = name;
        self.age = age
    }
    
    //定义方法
    func sayHellow()
    {
        println("我的名字是:\(name)年龄是:\(self.age)")
    }
    func goHome(address:String,time:Int)
    {
        println("我的名字是:\(name)年龄是:\(age) 我在:\(time)点回家我家住在\(address)")
    }
    //定义类方法
    class func gotoScholl()
    {
        println("我正在去上学的路上")
    }
    
    /**析构函数 析构函数没有过好系统激动调用类似于oc中dealloc方法  我们可以在里面做一些资源释放的操作比如关闭文件 清理对象 等等*/
    deinit
    {
        
    }
    
    /**  恒等运算符  只适用于类 对于结构体而言不能使用恒等运算
    
    类是引用类型
    
    等价于 ( === ) 判断是否是引用了同一个对象
    不等价于 ( !== )
    
    
    
    if s1 === s2
    {
    println("s1 和 s2是引用同一个对象")
    }
    else
    {
    println("s1 和 s2不是引用同一个对象")
    }
    
    
    
    */

}

var xiaoming = Person()
xiaoming.age = 180
xiaoming.sayHellow()
//xiaoming.goHome("重庆三峡广场", time: 8)
//xiaoming.fatherHeight = 175
//xiaoming.motherHeight = 160
//println("小明的理论身高是:\(xiaoming.shouldHeight)")

//Person.gotoScholl()
//println("some的值是:\(Person.some)")


/*
struct Point {
var x = 0.0, y = 0.0
}
struct Size {
var width = 0.0, height = 0.0
}
struct Rect {
var origin = Point()
var size = Size()
var center: Point {
get {
let centerX = origin.x + (size.width / 2)
let centerY = origin.y + (size.height / 2)
return Point(x: centerX, y: centerY)
}
set(newCenter) {
origin.x = newCenter.x - (size.width / 2)
origin.y = newCenter.y - (size.height / 2)
}
}
}
var square = Rect(origin: Point(x: 0.0, y: 0.0),
size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
square.center = Point(x: 15.0, y: 15.0)
println("square.origin is now at (\(square.origin.x), \(square.origin.y))")
// 输出 "square.origin is now at (10.0, 10.0)”

*/

