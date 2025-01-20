# Inheritance
Bir sınıfın veya yapının, başka bir sınıftan özellikleri ve metotları miras almasına "inheritance" denir. Bir sınıf başka bir sınıftan miras aldığında, miras alan sınıfa "subclass", miras aldığı sınıfa ise "superclass" denir.

### Superclass
Başka bir sınıftan miras almayan, özelliklerini ve metotlarını subclass'lara aktaran sınıfa "superclass" denir.

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
Yeni bir sınıfı var olan bir sınıfa dayandırma sürecidir. Subclass, daha sonra genişletebileceğiniz veya değiştirebileceğiniz var olan sınıfın özelliklerini devralır. Ayrıca subclass'a yeni özellikler veya metotlar eklenebilir.

- "super" belirteci, superclass'ın özelliklerine ve metotlarına erişmek için kullanılır.
- "override" belirteci, bir sınıfın metotlarının, o sınıftan türetilen başka bir sınıfta aynı adlı bir metodu tanımlayarak superclass'daki metotla değiştirilmesi anlamına gelir. Bu işlem, bir metodun aynı class'dan türetilen farklı classlarda farklı işlevler gerçekleştirmesine olanak tanır. Superclass'daki metot, subclass'daki metodun adından önce override anahtar sözcüğünin eklenmesi ile geçersiz kılınır.

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

### Static, Class ve Final Keywords

- Static: Subclass'da override edilemezler. Superclass ve subclass üzerinden çağrılabilir fakat nesneler üzerinden çağrılamazlar. Struct ve Class için geçerlidir.

```swift
struct Sphere {
    static var radius : Double = 0.0
    
    static func solve(_ radius: Double) -> (diameter: Double, area: Double, volume: Double) {
        return (radius * 2, 4 * Double.pi * pow(radius,2), (4 / 3) * Double.pi * pow(radius,3))
    }
}

Sphere.radius = 2.0
Sphere.solve(Sphere.radius)
```
```
2.0 (diameter: 4.0, area: 50.26548245743669, volume: 33.510321638291124)
```

- Class: Subclass'da override edilebilirler. Superclass ve subclass üzerinden çağrılabilir fakat nesneler üzerinden çağrılamazlar. Sadece Class için geçerlidir.

```swift

```
```

```

- Final: Subclass'da override edilemezler. Super ve Sub object üzerinden çağrılabilirler fakat class üzerinden çağrılamazlar. Sadece Class için geçerlidir.

```swift

```
```

```

# Polymorphism
Farklı sınıflardaki nesnelerin ortak bir üst sınıf veya protokolün nesneleri olarak ele alınmasına olanak tanır. Ortak bir arayüze veya protokole uydukları sürece farklı türlerdeki nesnelerin birbirinin yerine kullanılabilmesini sağlar.

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
Üst sınıfın alt sınıfa dönüştürülmesine <b>"DOWNCASTING"</b>, alt sınıfın üst sınıfa dönüştürülmesine <b>"UPCASTING"</b> denir.

- is -> Tip kontrolü için kullanılır.
- as -> Bir tipi diğerine dönüştürmek için kullanılır.
- as! (Force Downcasting) -> Bir tipi diğerine dönüştürmek için kullanılır. Başarılı ise değer, başarısız ise hata döndürür.
- as? (Optional Downcasting) -> Dönüştürme sırasında isteğe bağlı bir veri varsa kullanılır. Başarılı ise değer, başarısız ise nil döndürür.
