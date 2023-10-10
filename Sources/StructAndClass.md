# Struct and Class
- Both structs and classes can define properties to store values, and they can define functions.
- They can define subscripts to provide access to values with subscript syntax.
- They can define initializers to set up their initial state, with init().
- They can be extended with extension.
- They can conform to protocols, for example to support Protocol Oriented Programming.
- They can work with generics to provide flexible and reusable types.

Classes support a few more capabilities that structs don’t have.
- Classes can inherit from another class, like you inherit from UIViewController to create your own view controller subclass.
- Classes can be deinitialized, i.e. you can invoke a deinit() function before the class is destroyed.
- Classes are reference types and structs are value types.

Value Type: When you copy a value type (i.e., when it’s assigned, initialized or passed into a function), each instance keeps a unique copy of the data. If you change one instance, the other doesn’t change too.

Reference Type: When you copy a reference type, each instance shares the data. The reference itself is copied, but not the data it references. When you change one, the other changes too.

## Struct
- Declaration
```swift
struct Sphere {
    var radius : Int?
    var area : Double = 0.0
    var volume : Double = 0.0
    
    let pi : Double = 3.14159265359
   
    func calculate(_ radius : Int) -> (area: Double, volume: Double) {
        var area = 4 * pi * pow(Double(radius),2)
        var volume = (4 / 3) * pi * pow(Double(radius), 3)
        return (area,volume)
    }
}
```
- Instance
```swift
var sphere = Sphere(radius: 1)
sphere.area = sphere.calculate(sphere.radius ?? 0).area
sphere.volume = sphere.calculate(sphere.radius ?? 0).volume

print(sphere)
```
```
Sphere(radius: Optional(1), area: 12.56637061436, volume: 4.188790204786667, pi: 3.14159265359)
```

## Class
- Declaration
```swift
class Language {
    var language : String?
    var developer : String?
    var year : Int?
   
    func message() -> String {
        if self.language != nil && self.developer != nil && self.year != nil {
            return "\(self.language!) programming language started to be developed by \(self.developer!) in \(self.year!)."
        } else {
            return ""
        }
    }
}
```
- Instance
```swift
var swift = Language()
swift.language = "Swift"
swift.developer = "Apple"
swift.year = 2014

var message = swift.message()

print(message)
```
```
Swift programming language started to be developed by Apple in 2014.
```

## Composition
A parameter of a class or struct can be another class or variable itself. This situation is called composition.
```swift
struct Contact {
    var email : String
    var phone : String
}

struct User {
    var username : String
    var password : String
    var contact : Contact
}
```
```swift
var omer = User(username: "omer", password: "********", contact: Contact(email: "omer@mail.com", phone: "+19876543210"))

```
```
omer ******** omer@mail.com +9876543210
```

## Static Properties and Functions
Used to access a variable or method without an instance of the class or struct.
```swift
class Message {
    static var statusCode : String?
    
    static func message(statusCode : String) -> String {
        return "Status Code : \(statusCode)"
    }
}
```
```swift
Message.statusCode = "200"
Message.message(statusCode: "200")
```
```
Status Code : 200
```
