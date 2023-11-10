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
