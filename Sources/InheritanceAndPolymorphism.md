# Inheritance
A class can inherit methods, properties, and other characteristics from another class. 
When one class inherits from another, the inheriting class is known as a subclass, and the class it inherits from is known as its superclass. 

### Superclass
A class that does not inherit from another class and transfers its properties to subclasses is called a base class.
```swift
enum Fuel {
    case GASOLINE,DIESEL,HYDROGEN,HYBRID,ELECTRIC
}

class Vehicle {
    var weight: Double
    var width: Double
    var height: Double
    var length: Double
    var fuel: Fuel
    
    init(weight: Double, width: Double, height: Double, length: Double, fuel: Fuel) {
        self.weight = weight
        self.width = width
        self.height = height
        self.length = length
        self.fuel = fuel
        print("Created Vahicle")
    }
    
    func dimensions(){
        print("Vehicle Dimensions: \(self.width) x \(self.height) x \(self.length) and Weight \(self.weight)")
    }
}
```
### Subclass
Subclassification is the process of basing a new class on an existing class. The subclass inherits features of the existing class, which you can later develop. You can also add new properties to the subclass.

- The "super" identifier is used to access the properties and methods of the superclass.
- The "override" specifier means that a method of a class is replaced by the method in the base class by defining a method of the same name in another class derived from that class. This process allows a method to perform different functions in different classes derived from the same class. The method in the base class is overridden by adding the override keyword before the name of the method in the derived class.

```swift
enum Segment {
    case A,B,C,D,E,F,J,M,S
}

class Car: Vehicle {
    var segment: Segment
    var passenger: Int = 0
    
    init(segment: Segment, passenger: Int, weight: Double, width: Double, height: Double, length: Double, fuel: Fuel) {
        self.segment = segment
        self.passenger = passenger
        super.init(weight: weight, width: width, height: height, length: length, fuel: fuel)
        
        print("Created Car")
    }
    
    func superDimensions(){
        super.dimensions()
    }
    
    override func dimensions() {
        print("This car is \(segment) segment")
    }
    
    func capacity(){
        print("This car has a capacity of \(passenger) passengers.")
    }
}
```

```swift
class Truck: Vehicle {
    var axle: Int
    var tonnage: Int
    
    init(axle: Int, tonnage: Int, weight: Double, width: Double, height: Double, length: Double, fuel: Fuel) {
        self.axle = axle
        self.tonnage = tonnage
        super.init(weight: weight, width: width, height: height, length: length, fuel: fuel)
        print("Created Truck")
    }
    
    func superDimensions(){
        super.dimensions()
    }
    
    override func dimensions() {
        print("This truck has \(axle) axles.")
    }
    
    func limit(){
        print("The load carrying capacity of this truck is \(tonnage) tons.")
    }
}
```

```swift
let car = Car(segment: .B, passenger: 5, weight: 1120, width: 4065, height: 1450, length: 1750, fuel: .GASOLINE)
car.superDimensions()
car.dimensions()
car.capacity()
```
```
Created Vahicle
Created Car
Vehicle Dimensions: 4065.0 x 1450.0 x 1750.0 and Weight 1120.0
This car is B segment
This car has a capacity of 5 passengers.
```

```swift
let truck = Truck(axle: 3, tonnage: 35, weight: 2400, width: 5800, height: 3950, length: 1930, fuel: .DIESEL)
truck.superDimensions()
truck.dimensions()
truck.limit()
```
```
Created Vahicle
Created Truck
Vehicle Dimensions: 5800.0 x 3950.0 x 1930.0 and Weight 2400.0
This truck has 3 axles.
The load carrying capacity of this truck is 35 tons.
```

# Polymorphism
Polymorphism in Swift allows objects of different classes to be treated as objects of a common superclass or protocol. It enables objects of different types to be used interchangeably, as long as they conform to a common interface or protocol.

```swift
let car = Car(segment: .B, passenger: 5, weight: 1120, width: 4065, height: 1450, length: 1750, fuel: .GASOLINE)
let truck = Truck(axle: 3, tonnage: 35, weight: 2400, width: 5800, height: 3950, length: 1930, fuel: .DIESEL)
let other = Car(segment: .S, passenger: 1, weight: 1100, width: 3100, height: 1200, length: 1650, fuel: .HYBRID)

var vehicles: [Vehicle] = [car,truck,other]

for vehicle in vehicles {
    print(vehicle.dimensions())
}
```
```
Created Vahicle
Created Car
Created Vahicle
Created Truck
Created Vahicle
Created Car
This car is B segment
This truck has 3 axles.
This car is S segment
```

## Type Casting
The conversion of Superclass to Subclass is called <b>"DOWNCASTING"</b>, conversion of Subclass to superclass is called <b>"UPCASTING"</b>.

- is : Used for type checking.
```swift
var carCount = 0
var truckCount = 0

for vehicle in vehicles {
    if vehicle is Car {
        carCount += 1
    } else if vehicle is Truck {
        truckCount += 1
    }
}

print(carCount, truckCount)
```
```
2 1
```

- as : It is used to convert one type to another.
```swift

```
```

```

- as! (Force Downcasting) : It is used to convert one type to another type. Returns value if successful, error if unsuccessful.
```swift

```
```

```

- as? (Optinonal Downcasting) : It is used if there is an optional data during the conversion. Returns value if successful, nil if unsuccessful.
```swift

```
```

```
