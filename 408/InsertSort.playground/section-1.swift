// Playground - noun: a place where people can play

import Cocoa
import XCPlayground

var data = Int[]()
for i in 0...20 {
    data.append(Int(arc4random()) % 1000)
}

data

func visualize<T>(data: T[], identifier: String) {
    for x in data {
        XCPCaptureValue(identifier, x)
    }
}

for i in 0...20 {
    var maxIndex = i
    for j in i+1...20 {
        if data[j] > data[maxIndex] {
            maxIndex = j
        }
    }
    var temp = data[maxIndex]
    data[maxIndex] = data[i]
    data[i] = temp
    visualize(data, "iteration \(i)")
}

data

visualize(data, "End")


