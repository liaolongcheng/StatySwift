//
//  main.swift
//  ch02
//
//  Created by liaolongcheng on 14-6-6.
//  Copyright (c) 2014年 liaolongcheng. All rights reserved.
//

import Foundation

//var a=10.0;
//var b=1;
//var he=Double(b)+a;
//println(he)
//
//if (a==b)
//{
//
//}
//
//for (var index = 0; index < 3; index++)
//{
//    println("index is \(index)")
//}
//
//for(var i=0;i<10;i++)
//{
//    println("这是第\(i)循环")
//}
//
//let ay=["张三","李四","王五"]
//for(var i=0;i<ay.count;i++)
//{
//    println("第\(i)个元素的值是:\(ay[i])")
//}
//
//for name in ay
//{
//    println(name)
//}
//
//for i in 1...3
//{
//    println(i)
//}
//var j=0
//switch j{
//case 0:
//    println(j)
//default:
//    println("0")
//}
//let vegetable = "red pepper"
//switch (vegetable) {
//case "celery":
//    let vegetableComment = "Add some raisins and make ants on a log."
//case "cucumber", "watercress":
//    let vegetableComment = "That would make a good tea sandwich."
//case let x where x.hasSuffix("pepper"):
//    let vegetableComment = "Is it a spicy \(x)?"
//default:
//    let vegetableComment = "Everything tastes good in soup."
//}
//
//var optionalString: String? = "Hello"
//optionalString == nil
//
//var optionalName: String? = "John Appleseed"
//var greeting = "Hello!"
//if (greeting != optionalString){
//    greeting = greeting + optionalName!
//}
//println("------------>\(greeting)")


//var str=String("abcdeft")
//
//
//println("字符串是:\(str)")
////判断是否为空
//if(!str.isEmpty)
//{
//    println("不为空")
//}
//else
//{
//    println("是空得")
//}
//
////得到字符串的长度
//println("字符串的长度是:\(countElements(str))")
//var f: Float = "10.25".floatValue;
//
//
//println("---------->\(str.substringFromIndex(3))")
//
//
////循环得到字符
//for cha in str
//{
//    println("-------->\(cha)")
//}
////转换大小写
//println(str.uppercaseString)
//println(str.lowercaseString)
//let romeoAndJuliet =
//[
//    "Act 1 Scene 1: Verona, A public place",
//    "Act 1 Scene 2: Capulet's mansion",
//    "Act 1 Scene 3: A room in Capulet's mansion",
//    "Act 1 Scene 4: A street outside Capulet's mansion",
//    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
//    "Act 2 Scene 1: Outside Capulet's mansion",
//    "Act 2 Scene 2: Capulet's orchard",
//    "Act 2 Scene 3: Outside Friar Lawrence's cell",
//    "Act 2 Scene 4: A street in Verona",
//    "Act 2 Scene 5: Capulet's mansion",
//    "Act 2 Scene 6: Friar Lawrence's cell"
//]
//var act1SceneCount = 0
//for scene in romeoAndJuliet
//{
//    if scene.hasPrefix("Act 1 ")
//    {
//        ++act1SceneCount
//    }
//}
//
//println("There are \(act1SceneCount) scenes in Act 1")
//
//var ay:Array=["1","2","3"]
//ay.insert("4",atIndex: 1)
//println("ay is \(ay)")

/*元组*/

//var user = ("zhangsan","135689223");
//var phone1="134234q342"
//var user1 = ("lisi",phone1)
//println(user1)
//
//var (name,phone) = ("wangwu","242342234")
//println("name:\(name)    phone:\(phone)")
//
//var (name2,_) = ("zhangqiang","134234234")
//println("name2:\(name2)")
//
//var user3 = (name:"liming",phone:"132323323")
//println("user3 name is \(user3.name) phone is \(user3.phone)")
//
//
//var array =
//[
//    "dic1":["q,w,e,r,t,y,u"],
//    "dic2":["a","s","d","f"],
//    "dic3":["z","x","c","v"]
//]
//
//for (key,valueArray) in array
//{
//    println("array key is \(key) valueArray is \(valueArray)")
//
//    for cha in valueArray
//    {
//        println("valueArray value is \(cha)")
//    }
//}

//var iphone:String! = "fasd"
//var name:String? = "zhangsan"
////name="张三"
//
//var info:String = name! + "1232132"
//
//typealias ID = Dictionary<String,String>;
//
//var myType:ID? = ["zhangsan":"1243242"]
//
//println("------->myType is \(myType)")
//
//println("----------------->"+(toString(myType)))
//println("----------------->\(String(iphone))")

//Array

/*********数组**********/
/*
如果你将一个数组(Array)实例赋给一个变量或常量，或者将其作为参数传递给函数或方法调用，在事件发生时数组的内容不会被拷贝。相反，数组公用相同的元素序列。当你在一个数组内修改某一元素，修改结果也会在另一数组显示。

对数组来说，拷贝行为仅仅当操作有可能修改数组长度时才会发生。这种行为包括了附加(appending),插入(inserting),删除(removing)或者使用范围下标(ranged subscript)去替换这一范围内的元素。只有当数组拷贝确要发生时，数组内容的行为规则与字典中键值的相同，参见章节[集合（collection）类型的赋值与复制行为](#assignment_and_copy_behavior_for_collection_types。

var a = [1, 2, 3]
var b = a
var c = a
我们可以在a,b,c上使用下标语法以得到数组的第一个元素：

println(a[0])
// 1
println(b[0])
// 1
println(c[0])
// 1
如果通过下标语法修改数组中某一元素的值，那么a,b,c中的相应值都会发生改变。请注意当你用下标语法修改某一值时，并没有拷贝行为伴随发生，因为下表语法修改值时没有改变数组长度的可能：

a[0] = 42
println(a[0])
// 42
println(b[0])
// 42
println(c[0])
// 42
然而，当你给a附加新元素时，数组的长度会改变。 当附加元素这一事件发生时，Swift 会创建这个数组的一个拷贝。从此以后，a将会是原数组的一个独立拷贝。

拷贝发生后，如果再修改a中元素值的话，a将会返回与b，c不同的结果，因为后两者引用的是原来的数组：

a.append(4)
a[0] = 777
println(a[0])
// 777
println(b[0])
// 42
println(c[0])
// 42


在操作一个数组，或将其传递给函数以及方法调用之前是很有必要先确定这个数组是有一个唯一拷贝的。通过在数组变量上调用unshare方法来确定数组引用的唯一性。(当数组赋给常量时，不能调用unshare方法)

如果一个数组被多个变量引用，在其中的一个变量上调用unshare方法，则会拷贝此数组，此时这个变量将会有属于它自己的独立数组拷贝。当数组仅被一个变量引用时，则不会有拷贝发生。
b.unshare()
在unshare方法调用后再修改b中第一个元素的值，这三个数组(a,b,c)会返回不同的三个值：

b[0] = -105
println(a[0])
// 77
println(b[0])
// -105
println(c[0])
// 42


我们通过使用恒等运算符(identity operators)( === and !==)来判定两个数组或子数组共用相同的储存空间或元素。

下面这个示例使用了“恒等于(identical to)” 运算符(===) 来判定b和c是否共用相同的数组元

if b === c {
println("b and c still share the same array elements.")
} else {
println("b and c now refer to two independent sets of array elements.")
}

// 输出 "b and c now refer totwo independent sets of array elements."


此外，我们还可以使用恒等运算符来判定两个子数组是否共用相同的元素。下面这个示例中，比较了b的两个相等的子数组，并且确定了这两个子数组都引用相同的元素：

if b[0...1] === b[0...1] {
println("These two subarrays share the same elements.")
} else {
println("These two subarrays do not share the same elements.")
}
// 输出 "These two subarrays share the same elements."



强制复制数组
我们通过调用数组的copy方法进行强制显性复制。这个方法对数组进行了浅拷贝(shallow copy),并且返回一个包含此拷贝的新数组。

下面这个示例中定义了一个names数组，其包含了七个人名。还定义了一个copiedNames变量，用以储存在names上调用copy方法所返回的结果：

var names = ["Mohsen", "Hilary", "Justyn", "Amy", "Rich", "Graham", "Vic"]
var copiedNames = names.copy
我们可以通过修改一个数组中某元素，并且检查另一个数组中对应元素的方法来判定names数组确已被复制。如果你将copiedNames中第一个元素从"Mohsen"修改为"Mo",则names数组返回的仍是拷贝发生前的"Mohsen"：

copiedName[0] = "Mo"
println(name[0])
// 输出 "Mohsen"
*/

var array:Array=Array()
var array1=[String]()
var array3=["1","2","3","4"]


//array.insert("1", atIndex: 0)
//println(array)
//
//array.append(5)
//println(array)
//
//array3 += ["5","6","7"]

//for(var i=0;i<array3.count;i++)
//{
//    println("array \(i) object is  \(array3[i])")
//}

//for i in 0..array3.count
//{
//    println("array \(i) object is  \(array3[i])")
//}

//for value in array3
//{
//    println("array value is \(value)")
//}

//for (index,value) in enumerate(array3)
//{
//    println("array index is \(index) value is \(value)")
//}

//println(array3)
//
//println("array count is \(array3.count)")
////删除数组某个值
//println("remove one array \(array3.removeAtIndex(2))")
////删除所有元素
//println("array remove all object\(array3.removeAll())")
//
//
//println("array count is \(array3.count)\(array3)")
//
//NSArray
//var ay:NSMutableArray!
//ay=NSMutableArray()
//ay.addObject("1")
//println(ay)
////NSDictionary
//Dictionary

var a:Array = Array<String>()
/*************************************字典********************************/

/*swift将字典附值给一个常量或者变量时，字典的key value会同时被拷贝，所以会变为两个独立的字典

var ages = ["Peter": 23, "Wei": 35, "Anish": 65, "Katya": 19]
var copiedAges = ages

copiedAges["Peter"] = 24
println(ages["Peter"])
// 输出 "23"


*/
//var dic = ["name":"zhangsan","phone":"123456789"]
//var dic1:Dictionary<String,String> = ["name":"lisi","phone":"123456789","address":"shapingba"]
//
//println("dic is \(dic) dic1 is\(dic1)")
//
////字典长度
//println("dic count is \(dic.count)")
//
//var a = dic1.indexForKey("name")
//////根据下标取得key的值
////println("index for key is \(a)")
//
//////删除
//dic1.removeValueForKey("name")
//println("remvoe key is \(dic1)")
//
////遍历字典
//for (key,value) in dic1
//{
//    println("dic1 key is "+key+" value is "+value)
//}
//
//for key in dic1.keys
//{
//    println("dic1 key is \(key)")
//}
//
//for value in dic1.values
//{
//    println("dic1 value is \(value)")
//}
//
//var keys=Array(dic1.keys)
//println(keys)


/************************Switch Case******************/
//fallthrough
//
//var swValue = 1
//
///*在swift中本身switch case 语句是默认加上了break的  我们可以显示的加上fallthrough让其显示的转换成不加break语句*/
//
//switch (swValue){
//
//case 1:
//    println("current value is 1")
//    fallthrough
//case 1,2,3,4,5:
//    println("current value is 2,3,4,5")
//case 5...10:
//    println("current value is 5,6,7,8,9,10")
//default:
//    println("current value is not found")
//
//}
//

/************************函数***********************/


/*func test(name:String,phone:String)->String
{
return "this is my swift first returnvalue is "+name + " "+phone
}

println(test("shangsan","lisi"))
//多返回值的函数
func doubleReturnFunc (name:String,phone:String,address:String)->(name:String,phone:String,address:String)
{
print("this is a double return value function ")
return (name,phone,address)
}

let doubleReturn = doubleReturnFunc("wangwu", "123456789", "chengdu")

println("name:\(doubleReturn.name) phone:\(doubleReturn.phone) address:\(doubleReturn.address)")

//var (name,phone) = ("wangwu","242342234")
//println("name:\(name)    phone:\(phone)")
//
//var aa = ("wangwu","242342234")
//println("name:\(aa.0)")

//函数参数是可变的
func mutiFunc(nums:Int...)->Int!
{
var sum = 0
for num in nums
{
sum += num
}
return sum
}

println("sum is \(mutiFunc())")
println("sum is \(mutiFunc(1,2,3))")

//函数嵌入

//将函数作为返回值
/*定义了一个名字是test2参数名为那name 参数为String 返回值为一个参数类型为String 返回值为String的函数的函数*/
func test2(name:String)->String->String
{
func step(address:String)->String
{
return "return value is \(address)"
}
//返回一个step的函数指针
return step
}

let step=test2("nihao")
let aa = step("zhangshan")
println(aa)

//将函数作为参数传递

//此处可以看成定义了一个名字为test3 参数为一个函数该函数的参数为String类型返回值为String类型  返回值为Int的一个函数
func test3(fun:String->String)->Int
{
println(fun("hellow this is a func"))
return 1
}

func parFun(name:String)->String
{
return name
}

println("test3 return value is \(test3(parFun))")*/

//创建一个类
class Person : NSObject
{
    //定义两个属性
    var name:NSString?
    var phone:NSString?
    var bb:String
    
    
    //定义方法
    func sayHellow()
    {
        println("my name is \(self.name) my phone is \(self.phone)")
    }
    
    //无参的构造函数
    //    init()
    //    {
    //        super.init()
    //    }
    //
    //有参的构造函数
    init(name:NSString,phone:NSString)
    {
        self.name=name;
        self.phone=phone;
        self.bb = ""
    }
    
}
/*和java一样一旦重写了有参的构造函数那么系统将不在隐式的提供无参的构造函数就必须要手动的写出无参的构造函数*/

/*在swift中类是引用类型在附值操作时不会进行拷贝所以可以使用 ==== 和 !== 来比较两个类的对象是否相等  而结构体和枚举是值类型在赋值操作的时候会被重新拷贝一份所以不能使用以上方式进行比较*/


class Student : Person
{
    var stuNo:NSString?
    var text:NSString
    
    /*@lazy 修饰的属性表示延时加载属性，该属性在类初始化的时候不被附值,只有在该属性被使用时候才会被副职*/
    lazy var address = "成都 青羊区"
    
    
    
    init(name:NSString,phone:NSString,stuNo:NSString)
    {
        self.text = ""
        super.init(name:name,phone: phone)
        self.stuNo=stuNo
    }
    
    //方法的重写需要加上override 关键字
    override func sayHellow()
    {
        super.sayHellow()
        println("this student sayHellow")
    }
    
    //定义静态方法也称之为类方法
    class func sayGoodBye()
    {
        println("goodbye object-c")
    }
    
    //方法的重载
    func hellow(say:NSString!)
    {
        println("hellow \(name) \(say)")
    }
    
    func hellow()
    {
        println("hellow \(name)")
    }
    
}

var stu3 = Student.`new`()
var stu4 = Student.alloc()

//var per = Person(name: "zhangsan",phone: "123456")
//println("my name is \(per.name)")
//per.sayHellow()

//var stu = Student(name:"wangwu",phone:"56789",stuNo:"no1")
//stu.sayHellow()
//
//Student.sayGoodBye()

//stu.hellow()
//stu.hellow("what are you doing")

//let stu1 = Student();
//stu1.name="zhangsan"
//
//var address = stu1.address
//
//println("name:\(stu1.name)")

//let stu2 = Student()
//stu2.stuNo = "no02"


/*-----------------------计算属性-------------------

除存储属性外，类、结构体和枚举可以定义计算属性，计算属性不直接存储值，而是提供一个 getter 来获取值，一个可选的 setter 来间接设置其他属性或变量的值。

*/

//struct Point {
//    var x = 0.0, y = 0.0
//}
//struct Size {
//    var width = 0.0, height = 0.0
//}
//struct Rect {
//    var origin = Point()
//    var size = Size()
//    var center: Point {
//    get {
//        let centerX = origin.x + (size.width / 2)
//        let centerY = origin.y + (size.height / 2)
//        return Point(x: centerX, y: centerY)
//    }
//    set(newCenter) {
//
//        origin.x = newCenter.x - (size.width / 2)
//        origin.y = newCenter.y - (size.height / 2)
//    }
//    }
//
//    var stuNo:NSString
//    {
//    get
//    {
//        return stuNo
//    }
//    set(aStuNo)
//    {
//        println("fasda")
//        stuNo=aStuNo
//    }
//    }
//}
//var square = Rect(origin: Point(x: 0.0, y: 0.0),
//    size: Size(width: 10.0, height: 10.0))
//let initialSquareCenter = square.center
//square.center = Point(x: 15.0, y: 15.0)
//println("square.origin is now at (\(square.origin.x), \(square.origin.y))")
// 输出 "square.origin is now at (10.0, 10.0)”

/*-----------------------属性监视器---------------------


属性监视器监控和响应属性值的变化，每次属性被设置值的时候都会调用属性监视器，甚至新的值和现在的值相同的时候也不例外。

可以为除了延迟存储属性之外的其他存储属性添加属性监视器，也可以通过重载属性的方式为继承的属性（包括存储属性和计算属性）添加属性监视器。属性重载请参考继承一章的重载。

class StepCounter {
var totalSteps: Int = 0 {
willSet(newTotalSteps) {
println("About to set totalSteps to \(newTotalSteps)")
}
didSet {
if totalSteps > oldValue  {
println("Added \(totalSteps - oldValue) steps")
}
}
}
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
// About to set totalSteps to 200
// Added 200 steps
stepCounter.totalSteps = 360
// About to set totalSteps to 360
// Added 160 steps
stepCounter.totalSteps = 896
// About to set totalSteps to 89r6
// Added 536 steps

*/


/*-------------------------闭包-------------------------*/
//将函数作为参数传递可以做到oc中的block的事情
func someFunctionThatTakesAClosure(fun:(par1:NSString,par2:NSString)->String)
{
    var a = fun(par1: "zhangsan",par2: "123455")
}

func closure(par1:NSString,par2:NSString)->String
{
    
    println("name is \(par1) phone is \(par2)")
    return "aa"
}

someFunctionThatTakesAClosure({(par1:NSString,par2:NSString)->String in
    
    println("name is \(par1) phone is \(par2)")
    return "aa"
    
    });

//reversed = sort(names, { (s1: String, s2: String) -> Bool in
//    return s1 > s2
//    })

//someFunctionThatTakesAClosure(closure);


//func someFunctionThatTakesAClosure(closure: () -> ()) {
//    // 函数体部分
//}
//
//// 以下是不使用尾随闭包进行函数调用
//
//someFunctionThatTakesAClosure({
//    // 闭包主体部分
//    })
//
//// 以下是使用尾随闭包进行函数调用
//
//someFunctionThatTakesAClosure() {
//    // 闭包主体部分
//}




//
//class SurveyQuestion : NSObject
//{
//    var text: String
//    var response: String?
//    var aa:String
//
//    init(text: String) {
//
//        self.text = text
//        self.aa = ""
//    }
//    func ask() {
//        println(text)
//    }
//}
//let cheeseQuestion = SurveyQuestion(text: "Do you like cheese?")
//cheeseQuestion.ask()
//// 输出 "Do you like cheese?"
//cheeseQuestion.response = "Yes, I do like cheese."











