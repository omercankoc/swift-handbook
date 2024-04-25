# Inheritance
A class can inherit methods, properties, and other characteristics from another class. 
When one class inherits from another, the inheriting class is known as a subclass, and the class it inherits from is known as its superclass. 

### Superclass
Any class that doesn’t inherit from another class is known as a base class.
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
Subclassing is the act of basing a new class on an existing class. 
The subclass inherits characteristics from the existing class, which you can then refine. 
You can also add new characteristics to the subclass.
The "super" identifier is used to access the properties and methods of the superclass.

### Override
A subclass can provide its own custom implementation of an instance method, type method, instance property, type property, 
or subscript that it would otherwise inherit from a superclass. This is known as overriding.

To override a characteristic that would otherwise be inherited, you prefix your overriding definition with the override keyword. 
Doing so clarifies that you intend to provide an override and haven’t provided a matching definition by mistake. 
Overriding by accident can cause unexpected behavior, and any overrides without the override keyword are diagnosed as an error when your code is compiled.

The override keyword also prompts the Swift compiler to check that your overriding class’s superclass (or one of its parents) 
has a declaration that matches the one you provided for the override. This check ensures that your overriding definition is correct.

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

```swift
class Language {
    func message(){
        print("Superclass")
    }
}

class Swift : Language {
    override func message(){
        print("Subclass")
    }
}
```

```swift
var language : Language = Swift()
language.message()
```
```
Subclass
```

## Downcasting and Upcasting
The conversion of Superclass to Subclass is called Downcasting, conversion of Subclass to superclass is called Upcasting.
- is : Used for type checking.
- as : It is used to convert one type to another.
- as! (Force Downcasting) : It is used to convert one type to another type. Returns value if successful, error if unsuccessful.
- as? (For Optinonal Downcasting) : It is used if there is an optional data during the conversion. Returns value if successful, nil if unsuccessful.
