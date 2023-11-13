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
- Structures are atomic (thread safe), Classes are non-atomic. Thread Safe; It is a concept that protects the current thread's resource against possible errors that may occur as a result of inconsistencies that may arise if more than one thread can access/use a single resource at the same time, and provides this for all threads using that resource.

Value Type: Get Stored on Stack Memory. Each instance keeps a unique copy of its data. A type that creates a new instance (copy) when assigned to a variable or constant, or when passed to a function. (Int, Float, Double, String, Tuple, Array, Dicitonary, Set, Struct, Enum.)

Reference Type: Get Stored on Managed Heap Memory. Each instances share a single copy of the data. A type that once initialized, when assigned to a variable or constant, or when passed to a function, returns a reference to the same existing instance. (Class, Function, Closure)

Stack is used for static memory allocation and Heap for dynamic memory allocation, both stored in the computer’s RAM. For reference types the reference is stored on the STACK while the object it refers to is stored on the HEAP. For value types, the object itself is stored on the STACK.

## Struct

- Declaration
```swift
struct Sphere {
    var radius : Int?
    var area : Double?
    var circumference : Double?
    var volume : Double?
       
    mutating func parameters(radius : Int){
        self.radius = radius
        self.area = 4 * Double.pi * pow(Double(radius),2)
        self.circumference = 2 * Double.pi * Double(radius)
        self.volume = (4 / 3) * Double.pi * pow(Double(radius), 3)
    }
}
```
- Instance
```swift
var sphere = Sphere(radius: 3, area: 113, circumference: 18, volume: 113)
print(sphere)

sphere.parameters(radius: 2)
print(sphere)
```
```
Sphere(radius: Optional(3), area: Optional(113.0), circumference: Optional(18.0), volume: Optional(113.0))
Sphere(radius: Optional(2), area: Optional(50.26548245743669), circumference: Optional(12.566370614359172), volume: Optional(33.510321638291124))
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

## Initialization and Deinitialization
Initialization is the preparation process when we create an instance of Class, Enum or Struct. This process allows an initial value to be set for each stored property and necessary operations to be performed before it is ready for use.

Deinitalization, the object is called just before it is destroyed (deallocate) from the stack by the Automatic Reference Counter (ARC) mechanism. There is no return value. Used only with classes.

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

### Initialization Parameters

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

## Composition
Object composition is closely related ways to combine objects into more complex ones. They have an ownership (Has-A) relationship.
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
It is used to access class features and functions without an instance of the class.
```swift
struct Circle {
    static let pi : Double = Double.pi
    
    static func formulas(_ radius: Double) -> (radius: Double, perimeter: Double, area: Double) {
        return (radius, Double.pi * 2 * radius, Double.pi * pow(radius, 2))
    }
}
```
```swift
var results = Circle.formulas(3)
print(results.radius, results.perimeter, results.area, Circle.pi)
```
```
3.0 18.84955592153876 28.274333882308138 3.141592653589793
```

## Access Control
Access control restricts access to parts of your code from code in other source files and modules. This feature enables you to hide the implementation details of your code, 
and to specify a preferred interface through which that code can be accessed and used. You can assign specific access levels to individual types (classes, structures, and enumerations), 
as well as to properties, methods, initializers, and subscripts belonging to those types. Protocols can be restricted to a certain context, as can global constants, variables 
and functions.

1. Private: It makes a feature or function we define unusable outside the scope (Class, Struct, Enum) in which it is defined.
2. File Private: It makes a feature or function we define unusable outside of the file in which it is defined.
3. Internal: Normally when you define a property, your property uses “internal” by default. Features or functions defined with the “internal” element can be used anywhere in the “Target”.
4. Open: The “open” element is an element used in “frameworks”. We can give the UIKit “framework” as an example. If you click on a “UIViewController” 
element and click “Jump to Definition”, you will see that there is an “open” element at the beginning of most of the classes, features and methods there. 
In order to access a method or property defined with “open”, we first need to go into the subclass of the module.
5. public: The “public” element is very similar to the “open” element. The biggest difference between them is that while we can use the elements we define with "open" 
outside the module (example: UIKit) as we use the -UIViewController element, we cannot use the elements we define with "public" outside the module.
