# Function
Functions are self-contained chunks of code that perform a specific task. 
You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed.

Swift’s unified function syntax is flexible enough to express anything from a simple C-style function with no parameter names to a complex Objective-C style method with names and argument labels for each parameter. 
Parameters can provide default values to simplify function calls and can be passed as in-out parameters, which modify a passed variable once the function has completed its execution.

Every function in Swift has a type, consisting of the function’s parameter types and return type. 
You can use this type like any other type in Swift, which makes it easy to pass functions as parameters to other functions, and to return functions from functions. 
Functions can also be written within other functions to encapsulate useful functionality within a nested function scope.

Sample of a function that has no parameters and does not return a value.
```swift
func Message(){
    print("Hello Swift!")
}
```
```swift
Message()
```

Method Overload is the provisioning of different versions of a method. These versions can be used for the same or different purposes or return different types of values.
```swift
func Message(name : String){
    print("Hello",name)
}
```
```swift
Message(name : "Omer")
```
```swift
func Message(name : String, surname : String){
  print("Hello",name,surname)
}
```
```swift
Message(name : "Omer", surname : "Koc")
```

Example of function that takes parameters and returns results
```swift
func Calculate(base : Int, exponent : Int) -> Int {
    var result : Int = 1
    var iterator : Int = 1
    while iterator <= exponent{
        result *= base
        iterator += 1
    }
    return result
}
```
```swift
Calculate(base : 2,exponent : 2)
```
```swift
var exponent = Calculate(base: 3, exponent: 3)
```

Example of a function that takes an array instead of a parameter and returns multiple results.
```swift
func MinMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
```
```swift
MinMax(array: [1,1,2,3,5,8,13,21])
```
