// Two cast operators in swift: IS and AS


//Swift provides two special types for working with nonspecific types:
//
//Any can represent an instance of any type at all, including function types.
//AnyObject can represent an instance of any class type.


let number: Any = 5
switch number {
case let n as Int:
	print("number is \(n)")
case is Int:
	print("number is an integer")
default:
	print("I don't know")
}

// Swift gives warning when you use optional value instead of Any. To fix it, just cast ur optional value to Any:
let optionalInt: Int? = 5
print(optionalInt)
