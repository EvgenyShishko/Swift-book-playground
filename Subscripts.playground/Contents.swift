import UIKit

var str = "Hello, playground"

// Classes, structures and enums can define subscripts

class MyArray<T> {
    private var array: Array<T> = Array<T>()
    
    public func addElement(_ element: T) {
        array.append(element)
    }
    
    subscript(index: Int, index2: Int) -> T {
        get {
            return array[index]
        }
        set {
            array[index] = newValue
        }
    }
}

let array = MyArray<Int>()
array.addElement(5)
array.addElement(10)

