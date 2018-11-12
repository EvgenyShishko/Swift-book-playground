// METHODS CHAPTER

// Methods of enumerations or structs, that modify properties, must be use with keyword 'mutating'
@discardableResult
func multiply (a: Int, b: Int) -> Int{
    return a * b
}

class A {
    class func myOverridableMethod () {
        
    }
    
    static func nonOverridableFinalMethod () {
        
    }
}

class B: A {
    override class func myOverridableMethod () {
        super.myOverridableMethod()
    }
}

multiply(a: 5, b: 6)
print(5)

func foo(value: Int, block: (() -> Void)) {
    block()
}


