// Swift Functions

import Foundation

// We use let _ = <function call> , if we do not need returned value

func countAndPrint(string: String) -> Int {
    print(string)
    return string.count
}

let _ = countAndPrint(string: "blabla")


// Function can return tuples

func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let tuple = minMax(array: [2, 3, 4, 5])
print(tuple!.min)

// An optional tuple type such as (Int, Int)? is different from a tuple that contains optional types such as (Int?, Int?). With an optional tuple type, the entire tuple is optional, not just each individual value within the tuple.

// 'from' argument label and 'hometown' - parameter name
func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)!  Glad you could visit from \(hometown)."
}
print(greet(person: "Bill", from: "Cupertino"))

// Default parameters

func takeFirstFrom(_ array: [Int]) -> Int?{
    return array.first;
}
print(takeFirstFrom([5, 2]))


// Variadic Parameters

func arithmeticMean(_ numbers: Double...) -> Double {
    var totalNumber: Double = 0
    for number in numbers {
        totalNumber += number
    }
    return totalNumber / Double(numbers.count)
}

print(arithmeticMean())
print(arithmeticMean(2, 0.5, -2))

// In-out parametrs
//NOTE
//In-out parameters cannot have default values, and variadic parameters cannot be marked as inout.

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var a = 2
var b = 3

swapTwoInts(&a, &b)

// you can define a constant or variable to be of a function type and assign an appropriate function to that variable
var mathFunction: (inout Int, inout Int) -> Void = swapTwoInts
mathFunction(&a, &b)

// NESTED FUNCTIONS
func increment(_ number: Int, by multiple: Int) -> Int {
    var increasedNumber = number
    func increaseByOne() {
        increasedNumber += 1
    }
    
    for _ in 0..<multiple {
        increaseByOne()
    }
    
    return increasedNumber
}

// Nested functions capture outscope variables and can even modify 'em

print(increment(5, by: 10))



























