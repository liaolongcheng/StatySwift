// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

//字符串
let label = "The width is "     //定义字符串常量
let width = 56
var widthLabel = label + String(width)  //swift不支持隐式类型转换, 需要显示类型转换
widthLabel += "!"
println(widthLabel)

//字符串格式化，使用\(item)
let apples = 3
let oranges = 5
let applesSummary = "I have \(apples) apples"
let fruitSummary = "I have \(apples + oranges) pieces of fruit"
println(applesSummary)
println(fruitSummary)
println(width)
