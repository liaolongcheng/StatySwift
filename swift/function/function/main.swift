//
//  main.swift
//  function
//
//  Created by newios on 14-7-31.
//  Copyright (c) 2014年 baihuogou. All rights reserved.
//

import Foundation

//函数的定义与调用
func sayHellow()
{
    println("这是一个最简单的函数");
}
//调用
sayHellow()

//定义一个有一个参数的函数(用多个值组合成一个元组作为函数的返回值进行返回)
func sayHellow(name:String,phone:String) -> String
{
    return ("name is \(name) phone is \(phone)")
}
var result = sayHellow("张三", "123456")
println(result)

//返回符合值的函数
func count(string:String) -> (vs:Int,cs:Int,os:Int)
{
    var voswls = 0
    var consonants = 0
    var other = 0
    
    for charpter in string
    {
        switch String(charpter).lowercaseString{
        case "a","e","i","o","u":
            voswls++
        case "b","c","d":
            consonants++
        default:
            other++
        }
    }
    return (voswls,consonants,other)
}

var total = count("abcdefg")
println(total)


/**在swift中可以和oc中类似为函数的参数添加一个标签作为我们某个参数的描述我们调用的时候可以看到描述

*/
func dscInfo(name:String,phonea phone:String,addressa address:String) ->String
{
    var info = ("名字为\(name)的同学电话是:\(phone)家庭地址是:\(address)")
    return info;
}
var info = dscInfo("小明", phonea: "123456·", addressa: "成都青羊区")
println(info)

/** 我们也可以使用#来做为参数的前缀那么在我们的swift中会将此参数作为参数名也作为参数标签说明*/
func dscInfo1(name:String,#phone:String,#address:String) ->String
{
    var info = ("名字为\(name)的同学电话是:\(phone)家庭地址是:\(address)")
    return info;
}
var info1 = dscInfo1("小张", phone: "123456·", address: "成都高新区")
println(info1)


/**默认参数值的函数在开发中我们可以为函数的某个参数或多个参数提供一个默认值那么此时我们在调用函数的时候可以传递参数也可以不传，如果不传递函数swift会自动使用默认值 如果我们没有写参数描述标签，那么在使用默认值得参数时需要指明是用的哪一个有默认值的参数*/
func defaultFunc(name:String,address aAdddress:String = "中国",phone aPhone:String = "123456")
{
    println("名字为:\(name)的人家庭住址在:\(aAdddress)电话是:\(aPhone)")
}
defaultFunc("码子",address:"12344")
defaultFunc("张三",address:"成都",phone:"fasd")

/***有可变参数的函数 我们可以在参数类型后面加上...标示该参数为一个可变参数我们可以在使用该参数时传入一个或多个值，在函数内部我们可以将此参数当成是一个数组来处理遍历到参数里面的每一个值但是需要注意的是一个函数只能有一个可变参数，并且只能在函数的最后一个参数出现*/

func getSum(name:String,numbers:Double...) ->Double
{
    var sum = 0.0
    for number in numbers
    {
        sum += number
    }
    return sum
}
var sum = getSum( "afdad",12,1.0,2.3)
println(sum)

/**常量参数变量参数的函数*/

/**变量参数的函数
我们只需要在变量前面加上var 关键字那么传入的参数就是一个变量参数我们在函数体内部是可以修改参数的值的 就能避免我们在函数内部定义多个变量
*/

func align(var string:String)
{
    string = "123456789"
    println(String(countElements(string)))
}
align("fadfa")


/**输入输出参数的函数

如果我们希望我们传入函数的参数在函数内部是可以被改变的 并且在函数执行完成时改变的值任然生效那么此时我们应该将函数的参数定义成输入输出参数
我们使用inout 关键字来声明一个参数为输入输出参数 在调用的时候一定是一个变量并且要加上&符号表示这个值可以被函数修改
需要注意的是 输入输出参数不能有默认值 并且可变参数是不能够使用inout标记的  如果使用了inout标记一个参数那么这个参数将不能在被var 或 let修饰
*/
func myOutInFunc(inout a:Int,inout b:Int)
{
    a = 10
    b = 7
}
var a = 3
var b = 7
myOutInFunc(&a,&b)
println("a的值为:"+String(a)+" b的值为:"+String(b))



/**函数类型

是一种数据类型  类似C中得函数指针 或者OC中得Block
**/

/**嵌套函数，在swift中我们可以在函数内部定义函数 称之为嵌套函数*/
func qianTaoFunction(c:Int,#d:Int)
{
    var a = 0
    var b = 10
    func neibuFunction()
    {
        println("a的值是: " + String(a) + "b的值是:" + String(b) + "c的值是:" + String(c) + "d的值是: "+String(d))
    }
    neibuFunction()
}
qianTaoFunction()
/**将函数作为返回值返回*/
/**这里定义了一个有一个参数参数为Int 返回值为一个参数为Int返回值为Int的函数*/
func backFunc(num:Int) -> (Int)->Int
{
    func retfunc(age:Int) -> Int
    {
        return num + age
    }
    return retfunc
}
var tempFunc = backFunc(5)
println(tempFunc(10))
/**定义一个将函数作为参数的函数*/
/**这里定义了一个参数为一个参数为Int返回值为Int的函数返回值为Int的函数*/
func parFunction(parFun:(Int)->Int)->Int
{
    parFunc(10)
}

func parFunc(num:Int)->Int
{
    return num + 10
}


println(parFunction(parFunc))


////函数嵌入
//
////将函数作为返回值s///*定义了一个名字是test2参数名为那name 参数为String 返回值为一个参数类型为String 返回值为String的函数的函数*/
//func test2(name:String)->String->String
//{
//    func step(address:String)->String
//    {
//        return "return value is \(address)"
//    }
//    //返回一个step的函数指针
//    return step
//}
//
//let step=test2("nihao")
//let aa = step("zhangshan")
//println(aa)
//
////将函数作为参数传递
//
////此处可以看成定义了一个名字为test3 参数为一个函数该函数的参数为String类型返回值为String类型  返回值为Int的一个函数
//func test3(fun:String->String)->Int
//{
//    println(fun("hellow this is a func"))
//    return 1
//}
//
//func parFun(name:String)->String
//{
//    return name
//}
//
//println("test3 return value is \(test3(parFun))")




















