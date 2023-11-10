# Structures and Classes
- Definable, storage or computed properties, functions and clousures.
- Initial state can be defined with init().
- Both can be used with subscript.
- Both can inherit properties and functions.
- Both can extend their functionality with the help of Extensions.
- Both can comply with Protocols to provide functionality.

But Classes have additional capabilities that Structures don’t have:
- Classes can pass on their properties and functions with the help of inheritance.
- Classes allows you to check and interpret a class instance at runtime.
- Classes are reference types and structures are value types.
- Classes can be used with Objective C. Structs cannot be used with Objective-C.

However, Structures also have some advantages:
- Structures are kept in memory with stack logic, so when data is wanted to be read, it is read faster. But classes are stored randomly in memory. When you try to read data due to irregular storage, it takes longer to read.
- Structures do not cause RAM problems.
- Structures are atomic (thread safe), Classes are non-atomic.

Value Type: Get Stored on Stack Memory. Each instance keeps a unique copy of its data. A type that creates a new instance (copy) when assigned to a variable or constant, or when passed to a function. (Int, Float, Double, String, Tuple, Array, Dicitonary, Set, Struct, Enum.)

Reference Type: Get Stored on Managed Heap Memory. Each instances share a single copy of the data. A type that once initialized, when assigned to a variable or constant, or when passed to a function, returns a reference to the same existing instance. (Class, Function, Closure)

Stack is used for static memory allocation and Heap for dynamic memory allocation, both stored in the computer’s RAM. For reference types the reference is stored on the STACK while the object it refers to is stored on the HEAP. For value types, the object itself is stored on the STACK.

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

## Composition
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

## Initialization and Deinitialization (deinit -> ONLY CLASSES)

- Declaration
```swift
class Circle {
    let pi : Double = 3.1415
    
    var radius : Double
    var perimeter : Double
    var area : Double
    
    init(radius_ : Double){
        self.radius = radius_
        self.perimeter = 2 * pi * radius_
        self.area = pi * pow(radius_, 2.0)
    }
    
    convenience init(){
        self.init(radius_: 0.0)
    }
    
    deinit {
        self.radius = 0
        self.perimeter = 0
        self.area = 0
    }
    
    func show() -> String {
        return "r -> \(self.radius) : C -> \(self.perimeter) : A -> \(self.area)"
    }
}
```

- Instance
```swift
var circle = Circle(radius_: 3.0)
var show = circle.show()

print(show)
```
```
Radius : 3.0 - Perimeter : 18.849 - Area : 28.273500000000002 - Volume : 113.094
```
```swift
var circle = Circle()
var show = circle.show()

print(show)
```
```
r -> 0.0 : C -> 0.0 : A -> 0.0
```

### Overload Initialization

- Declaration
```swift
class Circle {
    var result : Double
    let pi : Double = 3.1415
    
    init(perimeter radius : Double){
        self.result = 2 * pi * radius
    }

    init(area radius : Double){
        self.result = pi * pow(radius, 2.0)
    }
}
```

- Instance
```swift
var perimeter = Circle(perimeter: 3.0)
var area = Circle(area: 3.0)

print(perimeter.result, area.result)
```
```
18.849 28.273500000000002
```

```
Status Code : 200
```
