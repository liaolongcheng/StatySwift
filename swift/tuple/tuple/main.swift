//
//  main.swift
//  tuple
//
//  Created by liaolongcheng on 13-7-30.
//  Copyright (c) 2013年 liaolongcheng. All rights reserved.
//

import Foundation

/**元组实际上就是多个值组成的同一个值**/

//定义一个元组
var student:(String,String) = ("zhangsan","123456789")
println(student)
//获取元组某一项信息 元组名字.下标
println(student.0)
var (name,phone):(String,String) = ("lisi","0987654321")
println(name)
var student1 = (name:"wangwu",phone:"1843421341")
println (student1.name)

//当我们不需要得到某一项的时候我们可以使用_来缺省某一项
var (name2,_) = ("zhangqiang","134234234")
println(name2)






