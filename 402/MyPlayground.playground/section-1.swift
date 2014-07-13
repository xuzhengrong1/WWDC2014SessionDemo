// Playground - noun: a place where people can play

import Cocoa

//The Basic
var laguageName: String = "Swift"
var version: Double = 1.0
var introduced: Int = 2014
var isQwesome: Bool = true
let constants:Int = 2014
//constants = 2015

//String

var a = "WWDC"
var b = 2014
var c = a + String(b)

//Character
var 🐱 = "cat"
var ch = "中"

//Array

var names = ["Anna","Alex","Brain","Jack"]
names[0] = "Annay"
//["Annay", "Alex", "Brain", "Jack"]
names += "AlayshChen"
//["Annay", "Alex", "Brain", "Jack", "AlayshChen"]
names[1..1] = ["Alexy"]
//["Annay", "Alexy", "Alex", "Brain", "Jack", "AlayshChen"]
names[1...3] = ["Alexy","Brainy"]
//["Annay", "Alexy", "Brainy", "AlayshChen"]
names.removeAtIndex(3)
//["Annay", "Alexy", "Brainy"]
names.removeLast()
//["Annay", "Alexy"]

//Dictionary

var numberOfLegs = ["ant":6,"snack":4,"cheetah":9]
numberOfLegs["ant"] = 8
//"ant": 8, "snack": 4, "cheetah": 9]
numberOfLegs["spider"] = 8
//["ant": 8, "spider": 8, "snack": 4, "cheetah": 9]
numberOfLegs.removeValueForKey("spider")
//["ant": 8, "snack": 4, "cheetah": 9]

//Optional

var fruit = ["apple": 4, "pear": 5, "peach": 2, "watermelon": 1, "banana": 10]
let basket: Int? = fruit["banana"]
if basket {
    let amount = basket!
    println("There is \(amount) banana")
}
else {
    println("There is no banana")
}

if let amount = fruit["banana"] {
    println("There is \(amount) banana")
}
else {
    println("There is no banana")
}

if basket {
    println("There is \(basket!) banana")
}
else {
    println("There is no banana")
}

//Control Flow

var num: Int = 10
if num > 0 {
    println("\(num) is bigger than 0")
}
else{
    println("\(num) is smaller than 10")
}

switch num{
case 1,2,3,4,5:
    println("It is 1/2/3/4/5")
case 6,7,8,9:
    println("It is 6/7/8/9")
case 10...20:
    println("It is between 10 and 20")
default:
    println("It is default")
}

//Function

func sayHello() {
    println("Hello")
}
sayHello()

func sayHelloTo(name: String = "World") -> () {
    println("Hello \(name)")
}

sayHelloTo(name: "WWDC")
sayHelloTo()

func sayHelloTo2(name: String = "World") -> String {
    return "Hello \(name)"
}
var str = sayHelloTo2(name: "AlayshChen")
println(str)

func getHttpStatus() -> (status: Int,description: String) {
    return (404,"Not Found")
}
let (status,description) = getHttpStatus()
println("HttpStatus:\(status) description:\(description)")

let httpStatus = getHttpStatus()
println("HttpStatus:\(httpStatus.status) description:\(httpStatus.description)")

//Closures


func printWithTimes(count: Int, fun: (count: Int, count2: Int) -> Int) {
    for i in 0..count {
        println(fun(count: i, count2:i + 1))
    }
}
/*
printWithTimes(10, {(count: Int)->() in
    println(count)})
*/
printWithTimes(10, {count, count2 in count + count2})
printWithTimes(10,{count, count2 in count})


var fruits = ["apple": 1, "pear": 2, "watermelon": 3]
let banana = fruits["banana"]
if banana {
    println("There are \(banana) banana")
}
else {
    println("There is no banana")
}

if let banana = fruit["banana"] {
    println("There are \(banana) banana")
}
else {
    println("There is no banana")
}

class Size {
    var length: Int?
}

class Frame {
    var size: Size?
}

class View {
    var frame: Frame?
}
var view: View = View()
if let length = view.frame?.size?.length {
    println(length)
}
else {
    println("nil")
}
