## Struct

[EN]
1. Definable calculated and stored properties.
2. Methods and closures can be created for functionality.
3. Subscripts can be created for get and set operations in collections.
4. Initialization states can be set (init).
5. Extension can be defined to add new functionality.
6. They can work with protocols.
7. They are Value Type. Each instance stores a unique copy. They are stored in the STACK area of ​​memory. (Int, Float, Double, String, Tuple, Array, Set, Dictionary, Enum)
8. They are thread safe. It is a concept that ensures the security of the resource and all threads using that resource to prevent inconsistencies that may arise when multiple threads access a single resource at the same time.

[TR]
1. Computed ve Stored propertyler tanımlanabilir.
2. İşlevsellik eklemek için methodlar ve closurelar oluşturulabilir.
3. Koleksiyonlarda get ve set işlemleri için subscriptler oluşturulabilir.
4. Başlangıç durumları ayarlanabilir (init).
5. Yeni işlevsellikler eklemek için extensionlar tanımlanabilir.
6. Protokollerle çalışabilirler.
7. Değer türüdürler. Her örnek benzersiz bir kopya depolar. Belleğin STACK alanında depolanırlar. (Int, Float, Double, String, Tuple, Array, Set, Dictionary, Enum)
8. Atomiktirler. Birden fazla iş parçacığının aynı anda tek bir kaynağa erişmesi durumunda ortaya çıkabilecek tutarsızlıkları önlemek için kaynağın ve o kaynağı kullanan tüm iş parçacıklarının güvenliğini sağlayan bir kavramdır.

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
        self.volume = (4 / 3) * Double.pi * pow(radius,3)
    }
}
```
- Instance
```swift
var sphere = Sphere(radius: 2)

sphere.surfaceAreaOfSphere()
sphere.volumeOfSphere()
```
```
Sphere(radius: 2.0, area: nil, volume: nil)
Sphere(radius: 2.0, area: Optional(50.26548245743669), volume: nil)
Sphere(radius: 2.0, area: Optional(50.26548245743669), volume: Optional(33.510321638291124))
```

## Class

[EN]
1. Definable calculated and stored properties.
2. Methods and closures can be created for functionality.
3. Subscripts can be created for get and set operations in collections.
4. Initialization states can be set (init).
5. Extension can be defined to add new functionality.
6. They can work with protocols.
7. Inheritance allows a class to inherit the properties and methods of another class.
8. Type casting, allows you to check and interpret the type of a class instance at runtime.
9. Automatic Reference Counting allows multiple references to a class instance.
10. Their pre-deallocate status can be set (deinit).
11. Each instance stores a unique copy. REFERENCE is stored in the STACK area of ​​memory. OBJECT is stored in the HEAD area of ​​memory. STACK is used to allocate static memory, while HEAD is used to allocate dynamic memory.

[TR]
1. Computed ve Stored propertyler tanımlanabilir.
2. İşlevsellik eklemek için methodlar ve closurelar oluşturulabilir.
3. Koleksiyonlarda get ve set işlemleri için subscriptler oluşturulabilir.
4. Başlangıç durumları ayarlanabilir (init).
5. Yeni işlevsellikler eklemek için extensionlar tanımlanabilir.
6. Protokollerle çalışabilirler.
7. Kalıtım, bir sınıfın başka bir sınıfın özelliklerini ve yöntemlerini miras almasına izin verir.
8. Type Casting, bir sınıf örneğinin türünü çalışma zamanında kontrol etmenize ve yorumlamanıza izin verir.
9. ARC, bir sınıf örneğine birden fazla referans yapılmasına izin verir.
10. Deallocate öncesi durumları ayarlanabilir (deinit).
11. Her örnek benzersiz bir kopya depolar. REFERENCE, belleğin STACK alanında saklanır. OBJECT, belleğin HEAD alanında saklanır. STACK statik belleği ayırmak için kullanılırken, HEAD dinamik belleği ayırmak için kullanılır.


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
        self.volume = (4 / 3) * Double.pi * pow(radius,3)
    }
}
```
- Instance
```swift
var sphere = Sphere()

sphere.radius = 2

sphere.surfaceAreaOfSphere()
sphere.volumeOfSphere()
```
```
0.0 nil nil
2.0 nil nil
2.0 Optional(50.26548245743669) nil
2.0 Optional(50.26548245743669) Optional(33.510321638291124)
```

### Static Properties and Methods
It is used to access class or struct properties and functions without an instance of the class or struct.
```swift
struct Sphere {
    static var radius : Double = 0.0
    
    static func solve(_ radius: Double) -> (diameter: Double, area: Double, volume: Double) {
        return (radius * 2, 4 * Double.pi * pow(radius,2), (4 / 3) * Double.pi * pow(radius,3))
    }
}
```
```swift
Sphere.radius = 2.0
Sphere.solve(Sphere.radius)
```
```
2.0 (diameter: 4.0, area: 50.26548245743669, volume: 33.510321638291124)
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
        self.volume = (4 / 3) * Double.pi * pow(radius,3)
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
```
```
2.0 50.26548245743669 33.510321638291124
```
```swift
var sphere = Sphere()
```
```
0.0 0.0 0.0
```

### Initialization Parameters
- Declaration
```swift
class Sphere {
    var result: Double

    init(area radius : Double){
        self.result = 4 * Double.pi * pow(radius,2)
    }
    
    init(volume radius : Double){
        self.result = (4 / 3) * Double.pi * pow(radius,3)
    }
}
```

- Instance
```swift
var area = Sphere(area: 2)
var volume = Sphere(volume: 2)
```
```
50.26548245743669 33.510321638291124
```

## Composition
Object composition is closely related ways to combine objects into more complex ones. They have an ownership (Has-A) relationship.
```swift
struct Radius {
    var radius: Double
    var diameter: Double
    
    init(radius: Double){
        self.radius = radius
        self.diameter = radius * 2
    }
}

struct Sphere {
    var radius: Radius
    var area: Double
    var volume: Double
    
    init(radius: Radius) {
        self.radius = radius
        self.area = 4 * Double.pi * pow(radius.radius,2)
        self.volume = (4 / 3) * Double.pi * pow(radius.radius,3)
    }
}
```
```swift
var sphere = Sphere(radius: Radius(radius: 2))
```
```
Sphere(radius: Radius(radius: 2.0, diameter: 4.0), area: 50.26548245743669, volume: 33.510321638291124)
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
