//
//  main.swift
//  typealias
//
//  Created by liaolongcheng on 13-7-30.
//  Copyright (c) 2013年 liaolongcheng. All rights reserved.
//

import Foundation

/**类型别名 在swift中我们可以用typealias来定义自己的数据类型 类似于oc中使用的typedef*/
typealias ID = Array<String> //这样就定义了我们自己的一个ID类型
var myClassName:ID = ["张三三","李四","王五"] //使用自己定义的ID类型来声明一个变量
println(myClassName)