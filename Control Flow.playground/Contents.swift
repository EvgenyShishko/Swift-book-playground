import Foundation

//The body of each case must contain at least one executable statement. It is not valid to write the following code, because the first case is empty:


//To make a switch with a single case that matches both "a" and "A", combine the two values into a compound case, separating the values with commas.

let anotherCharacter: Character = "a"

enum SimpleEnum {
    case one
    case two
}

let enumcheg = SimpleEnum.one
switch enumcheg {
case .one:
    print("one")
case .two:
    print("two")
}

switch anotherCharacter {
case "a", "A":
    print("The letter A")
default:
    print("Not the letter A")
}
// Prints "The letter A"

// Interval matching
let bodyTemperature: Double = 400

let number = 10

switch number {
case 0..<100:
    print("0 to 100")
    fallthrough
//case 0..<9:
//    print("0 to 9")
//case 0..<100:
//    print("0 to 100 last case")
default:
    print("default number")
}

switch bodyTemperature {
case 0..<35.9:
    print("Are u human???")
case 35.9..<36.6:
    print("Just a bit lower")
case 36.6..<37.0:
    print("You're alright")
case 37.0..<37.5:
    print("You're sick")
case 37.5..<Double(Int.max):
    print("You're fucking sick! Go to the doctor")
default:
    print("Try again with the measuring")
}

let minutes = 60
for tickMark in stride(from: 0, through: minutes, by: 5) {
    print(tickMark)
}

let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}

// VALUE BINDING

let xValue: Int? = nil
let anotherPoint = (xValue, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0?, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}

// WHERE

//A switch case can use a where clause to check for additional conditions.

//The example below categorizes an (x, y) point on the following graph:

let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}

let stillAnotherPoint = (9, 0)
switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
    print("On an axis, \(distance) from the origin")
default:
    print("Not on an axis")
}

// Control Transfer Statements

//-continue
//-break
//-fallthrough
//-return
//-throw

let a = 6

switch a {
case 0..<10:
    print("0<10")
    print("234234")
    fallthrough
case 0:
    print("0<100")
    fallthrough
case 1:
    print("!!!!!!")
default:
    print("Default")
}

// NOTE
// The fallthrough keyword does not check the case conditions for the switch case that it causes execution to fall into. The fallthrough keyword simply causes code execution to move directly to the statements inside the next case (or default case) block, as in C’s standard switch statement behavior.

// Labeled Statements: is same as 'goto' statements in other languages
let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
var square = 0
var diceRoll = 0

gameLoop: while square != finalSquare {
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    switch square + diceRoll {
    case finalSquare:
        // diceRoll will move us to the final square, so the game is over
        break gameLoop
    case let newSquare where newSquare > finalSquare:
        // diceRoll will move us beyond the final square, so roll again
        continue gameLoop
    default:
        // this is a valid move, so find out its effect
        square += diceRoll
        square += board[square]
    }
}
print("Game over!")

// EARLY EXIT
func sayWord(word: String?) {
    guard let checkedWord = word else {
        print("I can\'t say that word. It cannot be spelled!")
        return
    }
    
    print("Saying word \(checkedWord)")
}

sayWord(word: nil)
sayWord(word: "John")

// Checking API Availability
if #available(iOS 11, *) {
    // Using iOS 11
} else {
    // Fall back to earlier iOS
}



