//: Playground - noun: a place where people can play

import UIKit

//Unlike the assignment operator in C and Objective-C, the assignment operator in Swift does not itself return a value. The following statement is not valid:

//if x = y {
    // This is not valid, because x = y does not return a value.
//}

let wholeNumber = Int(9 / 2)

//NOTE

//The compound assignment operators don’t return a value. For example, you can’t write let b = a += 2.

//NOTE

//Swift also provides two identity operators (=== and !==), which you use to test whether two object references both refer to the same object instance

//You can compare two tuples if they have the same type and the same number of values. Tuples are compared from left to right, one value at a time, until the comparison finds two values that aren’t equal. Those two values are compared, and the result of that comparison determines the overall result of the tuple comparison. If all the elements are equal, then the tuples themselves are equal. For example:
(1, 4) < (2, 1)   // true because 1 is less than 2; "zebra" and "apple" are not compared
(3, "apple") < (3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"
(4, "dog") == (4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog"

//Tuples can be compared with a given operator only if the operator can be applied to each value in the respective tuples. For example, as demonstrated in the code below, you can compare two tuples of type (String, Int) because both String and Int values can be compared using the < operator. In contrast, two tuples of type (String, Bool) can’t be compared with the < operator because the < operator can’t be applied to Bool values.

("blue", -1) < ("purple", 1)        // OK, evaluates to true
//("blue", false) < ("purple", true)  // Error because < can't compare Boolean values
let success: String? = "ffff"
let message = success ?? "fffff"

//NOTE
//The Swift standard library includes tuple comparison operators for tuples with fewer than SEVEN elements. To compare tuples with seven or more elements, you must implement the comparison operators yourself.
let longTuple = (1, 2, 3, 4, 5, 6)
let longTuple2 = (1, 2, 3, 4, 5, 6)

longTuple == longTuple2
//Closed Range Operator

//The closed range operator (a...b) defines a range that runs from a to b, and includes the values a and b. The value of a must not be greater than b.
    
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

// One-Sided Ranges
let names = ["Anna", "Alex", "Brian", "Jack"]

for name in names[2...] {
    print(name)
}
// Brian
// Jack

for name in names[...2] {
    print(name)
}
// Anna
// Alex
// Brian

//The half-open range operator also has a one-sided form that’s written with only its final value. Just like when you include a value on both sides, the final value isn’t part of the range. For example:

    for name in names[..<2] {
        print(name)
}
// Anna
// Alex

//One-sided ranges can be used in other contexts, not just in subscripts. You can’t iterate over a one-sided range that omits a first value, because it isn’t clear where iteration should begin. You can iterate over a one-sided range that omits its final value; however, because the range continues indefinitely, make sure you add an explicit end condition for the loop. You can also check whether a one-sided range contains a particular value, as shown in the code below.

let range = ...5
range.contains(5)
range.contains(7)   // false
range.contains(4)   // true
range.contains(-1)  // true





