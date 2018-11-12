//: Playground - noun: a place where people can play

import UIKit

enum ErrorCode: Int, CaseIterable {
    case a = 1
}

print(ErrorCode.allCases)

// ASSOSIATED VALUES
// Assosiated values are stored inside cases of enums
enum Barcode {
    case upc(Int?, Int?, Int, Int)
    case qrCode(String)
}
var barcode = Barcode.upc(nil, nil, 2, 3)
switch barcode {
case .upc(let a, let b, let c, let d):
    print("agagagagag")
    print(a) // nil
case .qrCode(let line):
    print("line: \(line)")
}

// RAW VALUES
// Raw values stored in each case and can be used by .rawValue
// Implicitly assigned raw values
enum Numbers: Double {
    case zero = 0, one, two, three, four
}

print(Numbers.two.rawValue + 3)

// Init enum with raw value (always optional)
let possibleNumber = Numbers.init(rawValue: 8)

// RECURSIVE ENUMS

// `indirect` keyword indicates that case has another Enum as assosiated value
enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
    indirect case divide(ArithmeticExpression, ArithmeticExpression)
}

// You can also add `indirect` before `enum` keyword to make all case indirect
indirect enum ArithmeticExpressionIndirect {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case var .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    case let .divide(left, right):
        return evaluate(left) / evaluate(right)
    }
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))
let division = ArithmeticExpression.divide(product, ArithmeticExpression.number(2))

print(evaluate(division))
