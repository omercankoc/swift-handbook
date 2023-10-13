# Initialization and Deinitialization (deinit -> ONLY CLASSES)

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
