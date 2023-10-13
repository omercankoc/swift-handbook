# Struct and Class
- Definable, storage or computed properties and functions.
- Classes are reference types and structures are value types.
- Structures have automatic initialization. Classes has not automatic initialization, you have to develop initialization yourself.
- A class or structure can inherit properties and functions from another class.

Value Type: When you copy a value type (i.e., when it’s assigned, initialized or passed into a function) each instance keeps a unique copy of the data. If you change one instance, the other doesn’t change too. (Struct, Enum, Tuple, Array, Set, Dictionary, String, Int, Double, Float, ...)

Reference Type: When you copy a reference type, each instance shares the data. The reference itself is copied, but not the data it references. When you change one, the other changes too. (Class, Function, Closure, ...)

## Struct
- Declaration
```swift
struct Sphere {
    var radius : Int?
    var area : Double = 0.0
    var circumference : Double = 0.0
    var volume : Double = 0.0
    
    let pi : Double = 3.14159265359
   
    func calculate(_ radius : Int) -> (area: Double, circumference: Double, volume: Double) {
        var area = 4 * pi * pow(Double(radius),2)
        var circumference = 2 * pi * Double(radius)
        var volume = (4 / 3) * pi * pow(Double(radius), 3)
        return (area,circumference,volume)
    }
}
```
- Instance
```swift
var sphere = Sphere(radius: 2)
sphere.area = sphere.calculate(sphere.radius ?? 0).area
sphere.circumference = sphere.calculate(sphere.radius ?? 0).circumference
sphere.volume = sphere.calculate(sphere.radius ?? 0).volume

print(sphere)

```
```
Sphere(radius: Optional(2), area: 50.26548245744, circumference: 12.56637061436, volume: 33.510321638293334, pi: 3.14159265359)
```

## Class
- Declaration
```swift
class Sphere {
    var radius : Int?
    var area : Double = 0.0
    var circumference : Double = 0.0
    var volume : Double = 0.0
    
    let pi : Double = 3.14159265359
   
    func calculate(_ radius : Int) -> (area: Double, circumference: Double, volume: Double) {
        var area = 4 * pi * pow(Double(radius),2)
        var circumference = 2 * pi * Double(radius)
        var volume = (4 / 3) * pi * pow(Double(radius), 3)
        return (area,circumference,volume)
    }
}
```
- Instance
```swift
var sphere = Sphere()
sphere.radius = 2
sphere.area = sphere.calculate(sphere.radius ?? 0).area
sphere.circumference = sphere.calculate(sphere.radius ?? 0).circumference
sphere.volume = sphere.calculate(sphere.radius ?? 0).volume

print(sphere.radius as Any, sphere.area, sphere.circumference, sphere.volume)
```
```
Optional(2) 50.26548245744 12.56637061436 33.510321638293334
```

### Composition
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

### Static Properties and Functions
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
