//
//  main.swift
//  Functions
//
//  Created by JayWon on 14-6-28.
//  Copyright (c) 2014年 www.iphonetrain.com 无限互联3G学院. All rights reserved.
//

import Foundation

//1.函数的定义与调用
//以 func 作为前缀，返回箭头 -> 表示函数的返回类型
func sayHello(name: String) -> String {
    let greeting = "Hello " + name + "!"
    return greeting
}

println(sayHello("Anna"))



//1.1函数的参数与返回值
//函数可以有多个输入参数，写在圆括号中，用逗号分隔
func minusResult(start: Int, end: Int) -> Int{
    return end - start
}

println(minusResult(1, 10))

//1.2无参函数
func sayHelloWorld() -> String {
    return "hello world"
}
println(sayHelloWorld())


//1.3无返回值函数
/*
严格上来说，虽然没有定义返回值，sayGoodbye 函数依然返回了值。
没有定义返回类型的函数会返回特殊的值，叫 Void。它其实是一个空的元组（tuple），没有任何元素，可以写成()。
*/
func sayGoodbye(name: String) {
    println("Goodbye, \(name)" )
}
println(sayGoodbye("Dave"))


//1.4多重返回值函数
//你可以用元组（tuple）类型让多个值作为一个复合值从函数中返回
func count(string : String) -> (vs: Int, cs: Int, os: Int) {
    var vowels = 0, consonants = 0, others = 0
    for character in string {
        switch String(character).lowercaseString {
            case "a", "e", "i", "o", "u":
                ++vowels
            case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
            "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
                ++consonants
            default:
                ++others
        }
    }
    
    return (vowels, consonants, others)
}
let total = count("some arbitrary string!")
println("\(total.vs) vowels and \(total.cs) consonants")


//2 函数参数名
//2.1 外部参数名

//Demo：把两个字符串联在一起，演示使用外部参数的好处
/*
//不使用外部参数
func join(s1: String, s2: String, joiner: String) -> String {
    return s1 + joiner + s2
}
println(join("hello", "world", ", "))   //这三个字符串的用途不是很明确
*/

/*
//使用外部参数名称
//为了让这些字符串的用途更为明显，我们为 join 函数添加外部参数名
func join(string s1: String, toString s2: String, withJoiner joiner: String) -> String {
    return s1 + joiner + s2
}
//使用外部参数名更有表现力，更为通顺，同时还保持了函数体是可读的和有明确意图的
println(join(string: "hello", toString: "world", withJoiner : ", "))
*/


//2.2 简写外部参数名
//如果你需要提供外部参数名，但是局部参数名已经定义好了，那么你不需要写两次这些参数名。相反，只写一次参数名，并用井号（#）作为前缀就可以了。这告诉 Swift 使用这个参数名作为局部和外部参数名。
func containsCharacter(#string: String, #characterToFind: Character) -> Bool {
    for character in string {
        if character == characterToFind {
            return true
        }
    }
    
    return false
}

//这样定义参数名，使得函数体更为可读，清晰，同时也可以以一个不含糊的方式被调用
let containsAVee = containsCharacter(string: "qwertyuiop", characterToFind: "y")
println(containsAVee)


//2.3 默认参数值
//你可以在函数体中为每个参数定义默认值。当默认值被定义后，调用这个函数时可以略去这个参数
func join(string s1: String, toString s2: String, withJoiner joiner: String = ", ") -> String {
    return s1 + joiner + s2
}
let str1 = join(string: "hello", toString: "world", withJoiner: "-")    //指定第三个参数
println(str1)

let str2 = join(string: "hello", toString: "world") //不指定第三个参数, 第三个参数将使用默认值
println(str2)

//2.4 默认值参数的外部参数名
//当你未给 带默认值的参数提供外部参数名时，Swift 会自动提供外部名字。此时外部参数名与局部名字是一样的，就像你已经在局部参数名前写了井号（#）一样
func join(s1: String, s2: String, joiner: String = " ") -> String {
    return s1 + joiner + s2
}
let str3 = join("hello", "world", joiner: "-")
println(str3)


//3.可变参数
//传入可变参数的值在函数体内当做这个类型的一个数组。例如，一个叫做 numbers 的 Double... 型可变参数，在函数体内可以当做一个叫 numbers 的 Double[] 型的数组常量。
//一个函数最多能有一个可变参数
//可变参数必须放在参数表中最后的位置
func aritheticMean(numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
println(aritheticMean(1.2, 3.5, 4.6))
println(aritheticMean(1.2, 3.5, 4.6, 9.0, 10.0))



//4 常量参数与变量参数
//函数参数默认是常量。但是有时候，如果函数中传入的参数可以修改的话将很有用。你可以通过指定一个或多个参数为变量参数，从而避免自己在函数中定义新的变量。变量参数不是常量，你可以在函数中把它当做新的可修改副本来使用。
//通过在参数名前加关键字 var 来定义变量参数
func alignRight(var string: String, count: Int, pad: Character) -> String {
    let amountToPad = count - countElements(string)
    for _ in 1...amountToPad {
        string = pad + string
    }
    return string
}

let originalString = "hello"
let paddedString = alignRight(originalString, 10, "-")
println("originalString:" + originalString)
println("paddedString:" + paddedString)




//5 输入输出参数
//变量参数，正如上面所述，仅仅能在函数体内被更改。如果你想要一个函数可以修改参数的值，并且想要 这些修改在函数调用结束后仍然存在，那么就应该把这个参数定义为输入输出参数（In-Out Parameters）。

//定义一个输入输出参数，在参数的前面加 inout关键字
//输入输出参数不能有默认值，而且可变参数不能用 inout 标记。如果你用 inout 标记一个参数，这个参数不能被 var 或者 let 标记。
func swapTwoInts(inout a: Int, inout b:Int) {
    let temp = a
    a = b
    b = temp
}

//只能传入一个变量作为输入输出参数
var someInt = 3
var anotherInt = 7
//当传入的参数作为输入输出参数时,需要在参数的前面加&,表示这个值可以被函数修改
swapTwoInts(&someInt, &anotherInt)
println("someInt is now \(someInt), and anotherInt is now \(anotherInt)")




//6.函数类型 (是一种数据类型, 类似C语言的函数指针, OC语言的Block)
//分三步: 1.定义函数; 2.声明函数类型变量或常量; 3.给函数类型变量赋值
//1.定义函数
func addTwoInts(a: Int, b: Int) -> Int {
    return a + b
}

func sum(a: Int, b: Int) -> Int {
    return a - b
}

func printHelloWorld()
{
    println("hello, world")
}

/*
//2、声明一个叫做 mathFunction 的变量，类型是'一个有两个 Int 型的参数并返回一个 Int 型的值的函数'
var mathFunction: (Int, Int) -> Int

//3.给函数类型变量赋值
mathFunction = addTwoInts


//既然是变量, 我们可以重新给mathFunction赋值
mathFunction = sum
*/

/*
//2 3步合并
var mathFunction: (Int, Int) -> Int = sum
*/

//类型推导, 可以让Swift来推测 mathFunction 的类型
var mathFunction = sum
//mathFunction = printHelloWorld    //错误, 类型不匹配


//4.使用
println("Result: \(mathFunction(2, 3))")



//Swift调用C函数
desc1()

//Swift调用OC
var funcClass = FuncBlock() //拿到OC类对象
funcClass.desc2()




//6.1 函数类型作为参数类型
func printMathResult(mathFun: (Int, Int) -> Int, a: Int, b: Int){
    println("Result: \(mathFun(a, b))")
}
printMathResult(addTwoInts, 4, 7)


/*
//6.2 函数类型作为返回类型
func stepForward(input: Int) -> Int {
    return input + 1
}
func stepBackward(input: Int) -> Int {
    println("stepBackward")
    return input - 1
}

//好，有没有晕？😄晕了就休息一下，再看一遍刚刚讲过的内容；没晕就继续了
func chooseStepFunction(backwards: Bool)    ->     (Int) -> Int {
    return backwards ? stepBackward : stepForward   //返回函数类型
}
var currentValue = 3
let moveNearerTozero = chooseStepFunction(currentValue > 0)
//let moveNearerTozero:(Int) -> Int = chooseStepFunction(true)  //原型
//moveNearerTozero = stepBackward
println("moveNearerTozero:\(moveNearerTozero)") //moveNearerTozero指向stepBackward

println("Result:\(moveNearerTozero(10))")
*/

//嵌套函数
func chooseStepFunction(backwards: Bool)    ->     (Int) -> Int {
    func stepForward(input: Int) -> Int {
        return input + 1
    }
    func stepBackward(input: Int) -> Int {
        println("stepBackward")
        return input - 1
    }
    return backwards ? stepBackward : stepForward   //返回函数类型
}
var currentValue = -4
let moveNearerTozero = chooseStepFunction(currentValue > 0)
println("嵌套函数: \(moveNearerTozero(10))")






//8.闭包
//8.1闭包表达式

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]


//不使用闭包
func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}
//Swift 标准库提供了sort函数，会根据您提供的基于输出类型排序的闭包函数将已知类型数组中的值进行排序。
var reversed = sort(names, backwards)
println(reversed)


//使用闭包
//闭包的函数体部分由关键字in引入。 该关键字表示闭包的参数和返回值类型定义已经完成，闭包函数体即将开始。
reversed = sort(names, {(s1: String, s2: String) -> Bool in
    return s1 > s2
})

//根据上下文推断类型
reversed = sort(names, {s1, s2 in return s1 > s2})


//8.2单表达式闭包隐式返回
//如果闭包体只有一个表达式, 那么return关键字可以省略
reversed = sort(names, {s1, s2 in  s1 > s2})

//8.3 参数名称缩写
//$0和$1表示闭包中第一个和第二个String类型的参数。
reversed = sort(names, {$0 > $1})

//8.4 运算符函数
//Swift 的String类型定义了关于大于号 (>) 的字符串实现
reversed = sort(names, >)


//8.5 尾随闭包
//如果您需要将一个很长的闭包表达式(以至于不能在一行中进行书写时)作为最后一个参数传递给函数，可以使用尾随闭包来增强函数的可读性。 尾随闭包是一个书写在函数括号之后的闭包表达式，函数支持将其作为最后一个参数调用。
reversed = sort(names){$0 > $1}

println(reversed)



//8.6 捕获值
func makeIncrementor(forIncrement amount: Int)  ->  ()->Int {
    var runningTotal = 0
    
    //incrementor函数并没有获取任何参数，但是在函数体内访问了runningTotal和amount变量。这是因为其通过捕获在包含它的函数体内已经存在的runningTotal和amount变量而实现
    func incrementor() -> Int {
        runningTotal += amount
        return runningTotal
    }
    
    return incrementor
}
let incrementByTen = makeIncrementor(forIncrement: 10)

//因为每次调用该函数的时候都会修改runningTotal的值，incrementor捕获了当前runningTotal变量的引用，而不是仅仅复制该变量的初始值。捕获一个引用保证了当makeIncrementor结束时候并不会消失，也保证了当下一次执行incrementor函数时，runningTotal可以继续增加
println(incrementByTen())   //10
println(incrementByTen())   //20
println(incrementByTen())   //30


let incrementBySeven = makeIncrementor(forIncrement: 7)
println(incrementBySeven())   //7
println(incrementByTen())       //40


//8.7 闭包是引用类型
//上面的例子中，incrementBySeven和incrementByTen是常量，但是这些常量指向的闭包仍然可以增加其捕获的变量值。 这是因为函数和闭包都是引用类型。

//如果将闭包赋值给了两个不同的常量/变量，两个值都会指向同一个闭包，指向的都是 incrementor
let alsoIncrementByTen = incrementByTen
println(alsoIncrementByTen())   //50


