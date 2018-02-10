import Foundation

// Functions are special cases of closures
let names = ["a", "aa", "b", "bb", "ccccc"]
let sortedNames = names.sorted { (a: String, b: String) -> Bool in return a < b } // Default type
let sortedNames2 = names.sorted { a, b in return a < b } // types are ommitted
let sortedNames3 = names.sorted { a, b in a < b } // return operator also is ommitted
let sortedNames4 = names.sorted(by: {$0 < $1}) // short agrument names
let sortedNAmes5 = names.sorted(by: <)

// TRAILING CLOSURES
func someFunctionThatTakesAClosure(closure: () -> Void) {
    // function body goes here
}

// If the final argument is a closure, u can use TRAILING CLOSURES

// Here's how you call this function without using a trailing closure:

someFunctionThatTakesAClosure(closure: {
    // closure's body goes here
})

// Here's how you call this function with a trailing closure instead:

someFunctionThatTakesAClosure() {
    // trailing closure's body goes here
}

// CAPTURING VALUES
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let a = makeIncrementer(forIncrement: 5)
a()
a()
a()


//NOTE

//As an optimization, Swift may instead capture and store a copy of a value if that value is not mutated by a closure, and if the value is not mutated after the closure is created.

//Swift also handles all memory management involved in disposing of variables when they are no longer needed.


// functions and closures are reference type

// Escaping closures
var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}

func someFunctionWithNonescapingClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure { self.x = 100 }
        someFunctionWithNonescapingClosure { x = 200 }
    }
}

let instance = SomeClass()
instance.doSomething()
print(instance.x)
// Выведет "200"

completionHandlers.first?()
print(instance.x)
// Выведет "100"
// Non-escaping closures go out of memory right after function returns

// Autoclosures
// Autoclosures doesn't need () and

// customersInLine равен ["Ewa", "Barry", "Daniella"]
var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func serve(customer customerProvider: @autoclosure () -> String) {
    print("Now serving \(customerProvider())!")
}
serve(customer: customersInLine.remove(at: 0))

// Выведет "Now serving Ewa!"





