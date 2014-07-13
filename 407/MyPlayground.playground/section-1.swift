// Playground - noun: a place where people can play

import Cocoa /*
Working with Cocoa
1.How Objective-C APIs look and feel in Swift
2.id and AnyObject

a.A value of class type in Swift is nerver nil
b.Optional types generalize the notion of nil
c.Objective-C does not have a notion of nerver-nil pointer
! is an implicitly unwrapped optional
a.can be tested explictly for nil
b.can directly access properties/methods of the underlying value
c.can be implicitly converted to its underlying value 

AnyObject = id
object.removeFromSuperview?()
AnyObject cannot be implicitly downcast
let view = object as UIView surely
if let view = object as? UIView {
    //view is a UIView
}


NSObjectProtocol


Bridging Core Cocoa Types
NSString String
NSArray AnyObject[]
NSDictionary Dictionaries

for object: AnyObject in viewcontroller.toolbarItems {
    let item = object as UIBarButtonItem
}

for item in viewController.toolbarItems as UIBarButtonItem[] {

}

Swift array has two representations
1.It has a length and capacity T[]
2.NSArray object

NSArray -> Swift Array Bridging
let items: ArrayObject[] = viewController.toolbarItems

T[] -> NSArray Bridging
//Native array representation "isa" NSArray,optimized
viewController.toolbarItems = myToolbarItems

Subclassing Objective-C Classes
Swift Objects Are Objective-C Objects

class MyDocument: UIDocument [
    var items: String[] = []
}

override Method
override property

Limitations of Objective-C
Swift has advanced features that aren't expressible in Objective-C
Tuples
Generics
Enums and Structs
@objc attribute verifies that the declaration can be used in Objective-C
@objc attribute can be used to change the name of an Objective-C method
var enabled: Bool {             //property is named "enabled"
    @objc(isEnabled) get {..}   //getter is named "isEnabled"
    set {...}                   //setter is named "setEnabled"
}
CF Interoperability

CF in Objective-C

*/
var str = "Hello, playground"
let fruits = str
