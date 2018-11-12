//: Playground - noun: a place where people can play

import UIKit

// You can declare multiple constants or multiple variables on a single line, separated by commas:

var x = 0.0, y = 0.0, z = 0.0

/* Constant and variable names can’t contain whitespace characters, mathematical symbols, arrows, private-use (or invalid) Unicode code points, or line- and box-drawing characters. Nor can they begin with a number, although numbers may be included elsewhere within the name. */


/* If you need to give a constant or variable the same name as a reserved Swift keyword, surround the keyword with backticks (`) when using it as a name. However, avoid using keywords as names unless you have absolutely no choice. */
let `self` = 25
print(self)

// Semicolons used to write multiple statements in one row
let me = "Zhenya"; print(me)

/* Integer Bounds

You can access the minimum and maximum values of each integer type with its min and max properties:
 
 */
let minValue = UInt8.min  // minValue is equal to 0, and is of type UInt8
let maxValue = UInt8.max  // maxValue is equal to 255, and is of type UInt8

/* The values of these properties are of the appropriate-sized number type (such as UInt8 in the example above) and can therefore be used in expressions alongside other values of the same type.
 */


/* In most cases, you don’t need to pick a specific size of integer to use in your code. Swift provides an additional integer type, Int, which has the same size as the current platform’s native word size:

On a 32-bit platform, Int is the same size as Int32.
On a 64-bit platform, Int is the same size as Int64.
Unless you need to work with a specific size of integer, always use Int for integer values in your code. This aids code consistency and interoperability. Even on 32-bit platforms, Int can store any value between -2,147,483,648 and 2,147,483,647, and is large enough for many integer ranges.
 */

/*
 Double represents a 64-bit floating-point number.
 Float represents a 32-bit floating-point number.
 */

// Likewise, if you don’t specify a type for a floating-point literal, Swift infers that you want to create a Double:

let pi = 3.14159 // Double type

/* Numeric Literals

Integer literals can be written as:

A decimal number, with no prefix
A binary number, with a 0b prefix
An octal number, with a 0o prefix
A hexadecimal number, with a 0x prefix
All of these integer literals have a decimal value of 17:
 
 */

let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation

// All of these floating-point literals have a decimal value of 12.1875:

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0


//Numeric literals can contain extra formatting to make them easier to read. Both integers and floats can be padded with extra zeros and can contain underscores to help with readability. Neither type of formatting affects the underlying value of the literal:

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1


let tooBig: Int8 = Int8.max
let tooBig2: Int8 = Int8.max// + 1
// Int8 cannot store a number larger than its maximum value,
// and so this will also report an error


//Type aliases are useful when you want to refer to an existing type by a name that is contextually more appropriate, such as when working with data of a specific size from an external source:
typealias AudioSample = UInt16

// Swift’s type safety prevents non-Boolean values from being substituted for Bool. The following example reports a compile-time error:

let i = 1
if i == 1 { // if i {
    // this example will not compile, and will report an error
}

//Tuples
//
//Tuples group multiple values into a single compound value. The values within a tuple can be of any type and don’t have to be of the same type as each other.
//
//In this example, (404, "Not Found") is a tuple that describes an HTTP status code. An HTTP status code is a special value returned by a web server whenever you request a web page. A status code of 404 Not Found is returned if you request a webpage that doesn’t exist.

let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")

// The example below uses the initializer to try to convert a String into an Int:
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
// convertedNumber is inferred to be of type "Int?", or "optional Int"

//A do statement creates a new containing scope, which allows errors to be propagated to one or more catch clauses.
//
//Here’s an example of how error handling can be used to respond to different error conditions:

//func makeASandwich() throws {
//    // ...
//}
//
//do {
//    try makeASandwich()
////    eatASandwich()
//} catch SandwichError.outOfCleanDishes {
////    washDishes()
//} catch SandwichError.missingIngredients(let ingredients) {
////    buyGroceries(ingredients)
//}

//Debugging with Assertions
//
//You write an assertion by calling the assert(_:_:file:line:) function from the Swift standard library. You pass this function an expression that evaluates to true or false and a message to display if the result of the condition is false. For example:

let age = -3
assert(age >= -5, "A person's age can't be less than zero.")
// This assertion fails because -3 is not >= 0

// ASSERTS work in debug mode only 

//Enforcing Preconditions
//
//Use a precondition whenever a condition has the potential to be false, but must definitely be true for your code to continue execution. For example, use a precondition to check that a subscript is not out of bounds, or to check that a function has been passed a valid value.
//
//You write a precondition by calling the precondition(_:_:file:line:) function. You pass this function an expression that evaluates to true or false and a message to display if the result of the condition is false. For example:

// In the implementation of a subscript...
let index = 5
precondition(index > 0, "Index must be greater than zero.")
//You can also call the preconditionFailure(_:file:line:) function to indicate that a failure has occurred—for example, if the default case of a switch was taken, but all valid input data should have been handled by one of the switch’s other cases.

// NOTE
//If you compile in unchecked mode (-Ounchecked), preconditions aren’t checked. The compiler assumes that preconditions are always true, and it optimizes your code accordingly. However, the fatalError(_:file:line:) function always halts execution, regardless of optimization settings.
//
//You can use the fatalError(_:file:line:) function during prototyping and early development to create stubs for functionality that hasn’t been implemented yet, by writing fatalError("Unimplemented") as the stub implementation. Because fatal errors are never optimized out, unlike assertions or preconditions, you can be sure that execution always halts if it encounters a stub implementation.





