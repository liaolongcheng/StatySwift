//
//  main.swift
//  StringDemo
//
//  Created by JayWon on 14-6-21.
//  Copyright (c) 2014年 www.iphonetrain.com 无限互联3G学院. All rights reserved.
//

import Foundation

//1.字符
let money: Character = "¥"
var face: Character = "😱"
println(money + face)



//2.字符串
//Swift中的字符串不是指针,而是实际的值
let someString = "ABC"
var someStr = "ABC"

/*
字符串常量可以包括下面这些特殊字符：
空字符\0，反斜杠\，制表符\t，换行符\n，回车符\r，双引号\”和单引号\’
单字节Unicode字符，\xnn，其中nn是两个十六进制数
双字节Unicode字符，\unnnn，其中nnnn是四个十六进制数
四字节Unicode字符，\Unnnnnnnn，其中nnnnnnnn是八个十六进制数
*/
let words = " \" "
let dollarSign = "\x24" //$
let blackHeart = "\u2665"   //♥
let sparkHeart = "\U0001F496"   //💖

//2.1初始化空的字符串
var emptyString = ""
var anotherEmptyString = String()

//检查字符串是否为空
if emptyString.isEmpty {
    println("Nothing to see here")
}


//3.变长字符串
var variableString = "Horse"
variableString += " and carriage"
println(variableString)


let constantString = ""
//constantString += "123" //错误, constantString 是常量


//4.字符计数
//在Swift里面,使用countElements来计算一个字符串中的字符的数量
let countStr = "wu xian hu lian"
println("countStr count is \(countElements(countStr))")
/*
注意：通过 countElements 返回的字符数量并不总是与包含相同字符的 NSString 的 length 属性相同。NSString 的 length 属性是基于利用 UTF-16 编码的数目，而不是基于 Unicode 字符
//Swift 中的字符在一个字符串中 并不一定占用相同的内存空间，需使用全局函数countElements计算一个字符串中字符的数量
*/


//5.组合字符串与字符
let string1 = "hello"
let string2 = " there"
let character1: Character = "!"
let character2: Character = "?"

let stringPlusCharacter = string1 + character1
let stringPlusString = string1 + string2
let characterPlusString = character1 + string1
let characterPlusCharacter = character1 + character2

println(stringPlusCharacter)
println(stringPlusString)
println(characterPlusString)
println(characterPlusCharacter)



//6.字符串格式化
let sum = 3
println("sum is \(sum), sum double is \(Double(sum) * 2.5)")



//7.字符串比较
//Swift提供三种方法比较字符串的值：字符串相等，前缀相等，和后缀相等

//7.1字符串相等
let someStr1 = "ABC"
let someStr2 = "ABC"
if someStr1 == someStr2 {
    println("someStr1 == someStr2")
}


//7.2前缀相等
let animals = ["食肉:老虎", "食肉:狮子", "食草:牛群", "食草:羊群", "食草:马群"]
var aCount = 0
var bCount = 0
for animal in animals {
    if animal.hasPrefix("食肉"){  //前缀相等
        ++aCount
    }
    
    if animal.hasSuffix("群"){   //后缀相等
        ++bCount
    }
}
println("这有\(aCount)头食肉动物")
println("这有\(bCount)群食草动物")



//8.字符串大小写
let normal = "Could you help me, please?"
let shouty = normal.uppercaseString     //大写
let whispered = normal.lowercaseString  //小写
println("shouty:" + shouty)
println("whispered:" + whispered)


//9.字符串编码
let dogString = "Dog!🐶"
//utf-8
for codeUnit in dogString.utf8 {
    print("\(codeUnit) ")
}
print("\n")

//utf-16
for codeUnit in dogString.utf16 {
    print("\(codeUnit) ")
}
print("\n")

//unicode 标量
for scalar in dogString.unicodeScalars {
//    print("\(scalar)")
    print("\(scalar.value) ")
}



