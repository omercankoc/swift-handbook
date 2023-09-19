# Initialization and Deinitialization
Initialization is the process of preparing an instance of a class, structure, or enumeration for use. 
This process involves setting an initial value for each stored property on that instance and performing any other setup or 
initialization that’s required before the new instance is ready for use.

You implement this initialization process by defining initializers, which are like special methods that can be called to 
create a new instance of a particular type. Unlike Objective-C initializers, Swift initializers don’t return a value. 
Their primary role is to ensure that new instances of a type are correctly initialized before they’re used for the first time.

Just before a class object is destroyed from the stack by the Automatic Reference Counter (ARS) mechanism, 
the deinit method of that class is called for that object. The deinit method has no parameters and no return value. 
In other words, we can use the deinit method to perform operations before our object is repositioned. 
The deinit method runs before our object is repositioned.

A deinitializer is called immediately before a class instance is deallocated. You write deinitializers with the deinit keyword, 
similar to how initializers are written with the init keyword. Deinitializers are only available on class types.

- Declaration
```swift
class Circle {
    var radius : Double
    let pi : Double = 3.1415
    
    var perimeter : Double
    var area : Double
    var volume : Double
    
    init(radius_ : Double){
        self.radius = radius_
        self.perimeter = 2 * pi * radius_
        self.area = pi * pow(radius_, 2.0)
        self.volume = (4 / 3) * pi * pow(radius_, 3.0)
    }
    
    convenience init(){
        self.init(radius_: 0.0)
    }
    
    deinit {
        self.radius = 0
        self.perimeter = 0
        self.area = 0
        self.volume = 0
    }
    
    func show() -> String {
        return "Radius : \(self.radius) - Perimeter : \(self.perimeter) - Area : \(self.area) - Volume : \(self.volume)"
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
Radius : 0.0 - Perimeter : 0.0 - Area : 0.0 - Volume : 0.0
```

- Overload init()
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

    init(volume radius : Double){
        self.result = (4 / 3) * pi * pow(radius, 3.0)
    }
}
```
- Instance
```swift
var perimeter = Circle(perimeter: 3.0)
var area = Circle(area: 3.0)
var volume = Circle(volume: 3.0)

print(perimeter.result, area.result, volume.result)
```
```
18.849 28.273500000000002 113.094
```
