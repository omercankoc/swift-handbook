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
    var radius: Double
    var area: Double?
    var volume: Double?
    
    mutating func surfaceAreaOfSphere(){
        self.area = 4 * Double.pi * pow(radius,2)
    }
    
    mutating func volumeOfSphere(){
        self.volume = (4 / 3) * Double.pi * pow(radius, 3)
    }
}
```
- Instance
```swift
var sphere = Sphere(radius: 2)
print(sphere)

sphere.surfaceAreaOfSphere()
print(sphere)

sphere.volumeOfSphere()
print(sphere)
```
```
Sphere(radius: 2.0, area: nil, volume: nil)
Sphere(radius: 2.0, area: Optional(50.26548245743669), volume: nil)
Sphere(radius: 2.0, area: Optional(50.26548245743669), volume: Optional(33.510321638291124))
```

## Class

- Declaration
```swift
class Sphere {
    var radius: Double = 0.0
    var area: Double?
    var volume: Double?
    
    func surfaceAreaOfSphere(){
        self.area = 4 * Double.pi * pow(radius,2)
    }
    
    func volumeOfSphere(){
        self.volume = (4 / 3) * Double.pi * pow(radius, 3)
    }
}
```

- Instance
```swift
var sphere = Sphere()
sphere.radius = 2
print(sphere.radius)

sphere.surfaceAreaOfSphere()
print(sphere.area as Any)

sphere.volumeOfSphere()
print(sphere.volume as Any)
```
```
2.0
Optional(50.26548245743669)
Optional(33.510321638291124)
```

## Initialization and Deinitialization
Initialization is the preparation process when we create an instance of Class, Enum or Struct. This process allows an initial value to be set for each stored property and necessary operations to be performed before it is ready for use.

Deinitialization is the object is called just before it is destroyed (deallocate) from the stack by the Automatic Reference Counter (ARC) mechanism. There is no return value. Used only with classes.

- Declaration
```swift
class Sphere {
    var radius: Double
    var area: Double
    var volume: Double
    
    convenience init() {
        self.init(radius: 0.0)
    }
    
    init(radius: Double) {
        self.radius = radius
        self.area = 4 * Double.pi * pow(radius,2)
        self.volume = (4 / 3) * Double.pi * pow(radius, 3)
    }
    
    deinit {
        self.radius = 0.0
        self.area = 0.0
        self.volume = 0.0
    }
}
```

- Instance
```swift
var sphere = Sphere(radius: 2)
print(sphere.radius, sphere.area, sphere.volume)
```
```
2.0 50.26548245743669 33.510321638291124
```
```swift
var sphere = Sphere()
print(sphere.radius, sphere.area, sphere.volume)
```
```
0.0 0.0 0.0
```

### Initialization Parameters

- Declaration
```swift
class Circle {
    var result : Double
    
    init(perimeter radius : Double){
        self.result = 2 * Double.pi * radius
    }

    init(area radius : Double){
        self.result = Double.pi * pow(radius, 2.0)
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
18.84955592153876 28.274333882308138
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
var user = User(username: "omer", password: "********", contact: Contact(email: "omer@mail.com", phone: "+19876543210"))
print(user)
```
```
User(username: "omer", password: "********", contact: Board.Contact(email: "omer@mail.com", phone: "+19876543210"))
```

## Static Properties and Functions
It is used to access class or struct properties and functions without an instance of the class or struct.
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
5. Public: The “public” element is very similar to the “open” element. The biggest difference between them is that while we can use the elements we define with "open" 
outside the module (example: UIKit) as we use the -UIViewController element, we cannot use the elements we define with "public" outside the module.
