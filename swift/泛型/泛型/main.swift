//
//  main.swift
//  泛型
//
//  Created by newios on 14-8-5.
//  Copyright (c) 2014年 baihuogou. All rights reserved.
//

import Foundation

var dic:Dictionary<String, String> = ["TYO": "Tokyo", "DUB": "Dublin"]
var dic1:Dictionary = Dictionary<String,String>()
var ay:Array = Array<String>()

var ay1 = Array<Dictionary<String,String>>()
var m:String = ay1[0]["ad"]!


func testFanXing<T>(par:T,par1:T)
{
    println("par的值是:\(par) par1的值是:\(par1)")
}
func testFanXing1<T:NSString>(par:T,par1:T)
{
    println("par的值是:\(par) par1的值是:\(par1)")
}

testFanXing1("liao", "longcheng")
testFanXing(1, 2)

