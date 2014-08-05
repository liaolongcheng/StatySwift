//
//  main.swift
//  类型检查
//
//  Created by newios on 14-8-2.
//  Copyright (c) 2014年 baihuogou. All rights reserved.
//

import Foundation

//class Person
//{
//    
//}
//
//class Student : Person
//{
//    
//}
//
//var per:Person = Person()
//var stu:Student = Student()
//
//if (per is Student)
//{
//    println("yes")
//}
//else
//{
//    println("no")
//}

//定义一个父类
class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

//定义一个子类
class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
    
    func canSong()
    {
        println("我是歌唱类")
    }
}

//在定义一个子类
class Movie: MediaItem
{
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
    
    func canMovie()
    {
        println("我是电影类")
    }
}

let library = [
    Movie(name: "Casablanca", director: "Michael Curtiz"),
    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
    Movie(name: "Citizen Kane", director: "Orson Welles"),
    Song(name: "The One And Only", artist: "Chesney Hawkes"),
    Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
]


/**
用类型检查操作符(is)来检查一个实例是否属于特定子类型。类型检查操作符返回 true 若实例属于那个子类型，若不属于返回 false 。

某类型的一个常量或变量可能在幕后实际上属于一个子类。你可以相信，上面就是这种情况。你可以尝试向下转到它的子类型，用类型检查操作符(as)

因为向下转型可能会失败 当你不确定下转可以成功时，用类型检查的可选形式(as?)。可选形式的类型检查总是返回一个可选值（optional value），并且若下转是不可能的，可选值将是 nil 。这使你能够检查下转是否成功
*/
var movieCount = 0
var songCount = 0

for item in library {
    if item is Movie {
        ++movieCount
        var movie:Movie = item as Movie
        movie.canMovie()
    } else if item is Song {
        ++songCount
        var song:Song = item as Song
        song.canSong()
    }
}

println("Media library contains \(movieCount) movies and \(songCount) songs")



