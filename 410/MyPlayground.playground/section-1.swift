// Playground - noun: a place where people can play
/*
Swift types in LLDB
1.Optional types
LLDB impliciily unwraps whenever possible

Double Optional

Raw Display
(lldb) fr v -R twice_optional

Types
Static/Dynamic Types
var url: AnyObject = NSURL(string: "http://www.baidu.com")
(Variables have a declared (aka static) type)
url.hash(The one that matchs the runtime (aka dynamic) type)

Dynamic Types in LLDB

class Base{}
class Derived: Base {
    var meaning = 42
}

func userbase(x: Base) {
    println("All your base are belong to us")
}

let base = Base()
let derived = Derived()
userbase(base)
userbase(derived)


2.Protocols
Protocls are types in Swift
1.variables can have protocol types
2.Protocols can be included in function signatures
Variables of protocol type are limited
1.To only reveal what the protocol allows
LLDB opens the curtain for you
1.And it show you the full value

protocol Creature {
func speak()
}

class Dog: Creature {
func speak() {
println("I am a dog")
}
}

class Cat: Creature {
func speak() {
println("I am a cat")
}
}

func atTheZoo(creature: Creature) {
creature.speak()
}

let dog = Dog()
let cat = Cat()
atTheZoo(dog)
atTheZoo(cat)

fr v creature
fv r d -v creature

3.Generics

Debugging combined Swift and Objective-C
Stepping
Data formatters for Swift objects
Name uniqueneness in Swift


*/
import Cocoa

var str: AnyObject = "Hello, playground"
var numbers: [Int] = [Int]()
for i in 0..<100 {
    numbers.append(i)
}
numbers
