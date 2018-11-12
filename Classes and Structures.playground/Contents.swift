//: Playground - noun: a place where people can play

import UIKit

// Classes have additional capabilities that structures do not:
//
//- Inheritance enables one class to inherit the characteristics of another.
//- Type casting enables you to check and interpret the type of a class instance at runtime.
//- Deinitializers enable an instance of a class to free up any resources it has assigned.
//- Reference counting allows more than one reference to a class instance.

// Operators === and !== used to check whether two constants or variables refer to the same single instance
struct Point2D: Equatable{
    var x: Double
    var y: Double
    var description: String {
        return "X: \(x) Y: \(y)"
    }

    mutating func doubleXAxis () {
        x *= 2
    }
    
    static func ==(lhs: Point2D, rhs: Point2D) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}

var point = Point2D(x: 5, y: 5)
var point2 = Point2D(x: 5, y: 5)
print(point.description)

point.doubleXAxis()
print(point)

if (point == point2) {
    print("Equals")
} else {
    print("Not equals")
}

