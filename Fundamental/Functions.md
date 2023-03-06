# Function
Functions are self-contained chunks of code that perform a specific task. 
You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed.

Swift’s unified function syntax is flexible enough to express anything from a simple C-style function with no parameter names to a complex Objective-C style method with names and argument labels for each parameter. 
Parameters can provide default values to simplify function calls and can be passed as in-out parameters, which modify a passed variable once the function has completed its execution.

Every function in Swift has a type, consisting of the function’s parameter types and return type. 
You can use this type like any other type in Swift, which makes it easy to pass functions as parameters to other functions, and to return functions from functions. 
Functions can also be written within other functions to encapsulate useful functionality within a nested function scope.

- Function
```swift
func Message(){
    print("Hello Swift!")
}
```
```swift
Message()
```
- Parameter of Function
```swift
func Message(name : String){
    print("Hello",name)
}
```
```swift
Message(name : "Omer")
```
- Method Overloading is the provisioning of different versions of a method. These versions can be used for the same or different purposes or return different types of values.
```swift
func Message(name : String, surname : String){
  print("Hello" \(name) \(surname))
}
```
```swift
Message(name : "Omer", surname : "Koc")
```
- Return Value of Function
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
## Mutating Function
It is used when a structural change is desired in a particular method. It can only be used in Struct.
```swift
struct Person {
    var name : String

    mutating func uppercasedName(){
        self.name = name.uppercased()
    }
}
```

Let's create a Person Object.
```swift
var developer = Person(name: "developer")
```
```swift
print("Name : \(developer.name)")
```
```
Name : developer
```
Now let's look at the Object after the Mutating Function is run.
```swift
developer.uppercasedName()
```
```swift
print("Name : \(developer.name)")
```
```
Name : DEVELOPER
```
## Functions with Variadic Parameters
It allows to enter as many parameters as desired into the function.
```swift
func totalizer(values : Int...) -> Int {
    var total = 0
    for value in values {
        total += value
    }
    return total
}
```
```swift
var sum = totalizer(values: 1,2,3,4,5,6,7,8,9)
```
### Functions in "for" Keyword
If there is a for keyword in front of the identifier of the parameter of the function, when the function is called from outside, it takes a value with the identifier "for", but is processed with the name of the identifier inside the function.
```swift
struct Message {
    mutating func show(for type : Int) -> String {
        return "Status Code : \(type)"
    }
}

var status = Message()
var message = status.show(for: 200)
```
### Functions in "_" Keyword
If the parameter identifier of the function has the keyword "_" in front of it, when the function is called from outside, it takes the value without needing the identifier, but is rendered with the name of the identifier inside the function.
```swift
struct Messages {
    func status(_ code : Int) -> String {
        switch code {
        case 100 :
            return "Informational Responses"
        case 200:
            return "Successful Responses"
        case 300:
            return "Redirection Messages"
        case 400:
            return "Client Error Responses"
        case 500:
            return "Server Rrror Responses"
        default:
            return "Unknown"
        }
    }
}

var response = Messages()
var message = response.status(200)
```
