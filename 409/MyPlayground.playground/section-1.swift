// Playground - noun: a place where people can play
/*
LLDB
REPL Read Eval Print Loop

Basic debugging survial skills
1.Reading a stopped app
What is the stop reason
(lldb) ti (thread info)
(lldb) bt (thread backtrace)
(lldb) f 1 (frame select 1)
(lldb) p foo (expression foo)

EXC_BAD_INSTRUCTION Assertion
SIGABRT             Exception
EXC_BAD_ACCESS      Memory error


2.Stopping an app at the right time

(lldb)br l (breakpoint list)
(lldb)br dis 1 (breakpoint disable 1)
(lldb)b timetwo
(lldb)br s -r timestwo.*String (breakpoint set --func-regex timestwo.*String)
 Methods of a class: -r Account\\.
Functions in a module: -r main\\.

(lldb)br m -c "valueInCents < Int(amountInCents)"" (breakpoint modify --condiction "...")

(lldb)br co a
> p ***
> continue
> DONE

REPL-enabled debugging workflows
1.Validating existing code

lauch the REPL
$ xcrun swift


func partition(input: Int[]) -> (Int[], Int[]) {
    let length = input.count
    var a: Int[] = Int[]()
    var b: Int[] = Int[]()
    for i in 0...length/2-1 {
        a.append(input[i])
    }
    for i in length/2...length-1 {
        b.append(input[i])
    }
    return (a, b)
}
(lldb) repl
> partition([1, 2, 3, 4, 5])
> func ispartition(l: Int[], r: Int[]) -> Bool {
4. for le in l {
6.  for re in r {
8.      if le > re { return false }
10. }
12. }
14. return true
16. }
17> ispartition(partition([1, 2, 3, 4, 5, 6]))
$R2: Bool = true



2.Trying out new code

import Foundation


func partition(input: Int[]) -> (Int[], Int[]) {
    let length = input.count
    var a: Int[] = Int[]()
    var b: Int[] = Int[]()
    for i in 0...length/2-1 {
        a.append(input[i])
    }
    for i in length/2...length-1 {
        b.append(input[i])
    }
    return (a, b)
}

var queue: dispatch_queue_t = dispatch_queue_create("myQueue", nil)

(lldb) repl
1> dispatch_sync(queue) {println("Hello World")}
Hello World

func partition(input: Int[]) -> (Int[], Int[]) {
    let length = input.count
    var a: Int[] = Int[]()
    var b: Int[] = Int[]()
    for i in 0...length/2-1 {
        a.append(input[i])
    }
    for i in length/2...length-1 {
        b.append(input[i])
    }
    return (a, b)
}

protocol Doublable {func twice () -> Self}
extension Int : Doublable {
    func twice () -> Int {return 2 * self}
}

func fourtimes<T:Doublable>(a: T) -> T {
    return a.twice().twice()
}

1> extension String : Doublable {
3. func twice() -> String {return self + self}
5. }
6> fourtimes(2)
$R1: (Int) = 8
7> fourtimes("Hello ")
$R2: (String) = "Hello Hello Hello Hello "

*/
import Cocoa

func sum(a: Int, b: Int) -> Int {
    return a+b
}

sum(0,1)
