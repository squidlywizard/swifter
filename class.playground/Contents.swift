//: Playground - noun: a place where people can play

import UIKit
class Shape {
    var numberOfSides = 0
    func simpleDesc() -> String {
        return "its got \(numberOfSides) sides"
    }
}
let userKnoife = Shape(numberOfSides: 5)
print(userKnoife.simpleDesc)
