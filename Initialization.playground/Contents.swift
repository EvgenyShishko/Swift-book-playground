//NOTE
//When you assign a default value to a stored property, or set its initial value within an initializer, the value of that property is set directly, without calling any property

// Every class must have at least one designated initializer
// Designated initializers are the primary initializers for a class. A designated initializer fully initializes all properties introduced by that class and calls an appropriate superclass initializer to continue the initialization process up the superclass chain.

// - Designated initializers must always delegate up.
// - Convenience initializers must always delegate across.

enum Body {
    case weak, normal, strong
}

class Person {
    var name: String
    var age: Int
    var body: Body = .normal
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    convenience init (name: String) {
        self.init(name: name, age: 20)
    }
}

class Wizard: Person {
    var magicWandName: String
    var intelligenceCount: Int = 20
    
    override init(name: String, age: Int) {
        self.magicWandName = "default"
        
        super.init(name: name, age: age)
        
        self.name = "Wizard the \(name)"
        self.age = age
    }
    
    init(characterName: String, magicWandName: String, intelligenceCount: Int) {
        self.magicWandName = magicWandName
        self.intelligenceCount = intelligenceCount
        
        super.init(name: characterName, age: 20)
    }
}

let wizard = Wizard(characterName: "John", magicWandName: "Harry Potter wand", intelligenceCount: 100)
let person = Person(name: "SSS")

// NOTE: You cannot define a failable and a nonfailable initializer with the same parameter types and names.
class A {
    var name: String
    
    init?(name: String?) {
        guard let name = name else {
            return nil
        }
        
        self.name = name
    }
}

//Failable Initializers for Enumerations
enum TemperatureUnit {
    case kelvin, celsius, fahrenheit
    init?(symbol: Character) {
        switch symbol {
        case "K":
            self = .kelvin
        case "C":
            self = .celsius
        case "F":
            self = .fahrenheit
        default:
            return nil
        }
    }
}

// NOTE: You can override a failable initializer with a nonfailable initializer but not the other way around.
// You can delegate from init? to init! and vice versa, and you can override init? with init! and vice versa.

//Required Initializers

//Write the required modifier before the definition of a class initializer to indicate that every subclass of the class must implement that initializer
class Aaa {
    var name: String
    required init(name: String) {
        self.name = name
    }
}

class Bbb : Aaa {
    init() {
        super.init(name: "Default")
    }
    required init(name: String) {
        super.init(name: name)
    }
}

class Ccc: Bbb {
    override init() {
        super.init()
    }
    
    required init(name: String) {
        fatalError("init(name:) has not been implemented")
    }
}

//Setting a Default Property Value with a Closure or Function

//If a stored property’s default value requires some customization or setup, you can use a closure or global function to provide a customized default value for that property. Whenever a new instance of the type that the property belongs to is initialized, the closure or function is called, and its return value is assigned as the property’s default value.

//If you use a closure to initialize a property, remember that the rest of the instance has not yet been initialized at the point that the closure is executed. This means that you cannot access any other property values from within your closure, even if those properties have default values. You also cannot use the implicit self property, or call any of the instance’s methods.

class ClassWithPropertyClosure {
    var count: Int?
    var type: String = "DefaultType"
    var name: String = {
//        self.count = 5 ----- Not allowed
//        self.type = "" ----- Not allowed
        return "Default"
    }()
}
