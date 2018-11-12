// PROPERTIES

//Computed properties are provided by classes, structures, and enumerations. Stored properties are provided only by classes and structures.

//Property observers can be added to stored properties you define yourself, and also to properties that a subclass inherits from its superclass.

// Проперти объекта класса, объявленого константой можно изменять, в отличие от проперти константы объекта структуры

// NOTE
//If a property marked with the lazy modifier is accessed by multiple threads simultaneously and the property has not yet been initialized, there is no guarantee that the property will be initialized only once.

//NOTE
//You must declare computed properties—including read-only computed properties—as variable properties with the var keyword, because their value is not fixed. The let keyword is only used for constant properties, to indicate that their values cannot be changed once they are set as part of instance initialization.

// Глобальные свойства, которые не являются геттерами, являются по дефолту lazy.
var example = 3.5


// Статические свойства объявляются либо с class либо с static
class Point {
    var x: Int?
    var y: Int?
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = x
    }
    class var zeroPoint: Point {
        return Point(x: 0, y: 0)
    }
    static var piPoint: Point {
        return Point(x: 3, y: 3)
    }
}

print(Point.zeroPoint)

struct AudioChannel {
    static let thresholdLevel = 10
    static var maxInputLevelForAllChannels = 0
    var currentLevel: Int = 0 {
        didSet {
            if currentLevel > AudioChannel.thresholdLevel {
                // cap the new audio level to the threshold level
                // Кстати, здесь не вызывается второй раз обсервер
                currentLevel = AudioChannel.thresholdLevel
                
            }
            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                // store this as the new overall maximum input level
                // И здесь бы не вызывался обзервер
                AudioChannel.maxInputLevelForAllChannels = currentLevel
            }
        }
    }
}

struct Wheel {
    let radius: Int
    let material: String
}

struct Car {
    let firm: String
    let age: Int
    let wheel: Wheel
}
let wheel = Wheel(radius: 18, material: "Resina")
let car = Car(firm: "Mercedes benz", age: 2, wheel: wheel)

// NOTE: It's impossible to observe LAZY properties
