# Properties
Properties associate values with a particular class, structure, or enumeration. Stored properties store constant and variable values as part of an instance, whereas computed properties calculate a value. Computed properties are provided by classes, structures, and enumerations. Stored properties are provided only by classes and structures.

In addition, you can define property observers to monitor changes in a property’s value, which you can respond to with custom actions. Property observers can be added to stored properties you define yourself, and also to properties that a subclass inherits from its superclass.

## Stored Properties
In its simplest form, a stored property is a constant or variable that’s stored as part of an instance of a particular class or structure. Stored properties can be either variable stored properties (introduced by the <b>var</b> keyword) or constant stored properties (introduced by the <b>let</b> keyword).

```swift
struct User {
    var name: String
    var surname: String
}

var user = User(name: "Omer", surname: "Koc")
print(user)

user.name = "Omer Can"
print(user)
```
```
User(name: "Omer", surname: "Koc")
User(name: "Omer Can", surname: "Koc")
```

### Lazy Stored Properties
A lazy stored property is a property whose initial value is not calculated until the first time it’s used.

You must always declare a lazy property as a variable (with the var keyword), because its initial value might not be retrieved until after instance initialization completes. Constant properties must always have a value before initialization completes, and therefore can’t be declared as lazy.

Lazy properties are useful when the initial value for a property is dependent on outside factors whose values aren’t known until after an instance’s initialization is complete. Lazy properties are also useful when the initial value for a property requires complex or computationally expensive setup that shouldn’t be performed unless or until it’s needed.

```swift
struct User {
    var name: String
    var surname: String
    
    lazy var username: String = {
        return (self.name.lowercased() + "." + self.surname.lowercased())
            .replacingOccurrences(of: " ", with: "")
    }()
}
```
```swift
var user = User(name: "Omer Can", surname: "KOC")
print(user)
```
```
User(name: "Omer Can", surname: "KOC", $__lazy_storage_$_username: nil)
```
```swift
_ = user.username
print(user)
```
```
User(name: "Omer Can", surname: "KOC", $__lazy_storage_$_username: Optional("omercan.koc"))
```

Advantages:
- It is an easy structure that we can use to store data.
- It is a data storage structure that we can use directly without calculating each time.

Disadvantages:
- It can only have one value.
- When we want to change its value, it must contain logic codes.

## Computed Properties
In addition to stored properties, classes, structures, and enumerations can define computed properties, which don’t actually store a value. Instead, they provide a getter and an optional setter to retrieve and set other properties and values indirectly.

- Getter and Setter
```swift
struct Body {
    var area: Double = 0.0
    var volume: Double = 0.0
}

struct Radius {
    var radius: Double = 0.0
}

struct Sphere {
    var radius = Radius()
    var body: Body {
        get {
            let area = 4 * Double.pi * pow(self.radius.radius,2)
            let volume = (4 / 3) * Double.pi * pow(radius.radius,3)
            return Body(area: area, volume: volume)
        }
        
        set(new) {
            if new.area != 0.0 {
                radius.radius = pow(new.area / (4 * Double.pi), 1/2)
            } else if new.volume != 0.0 {
                radius.radius = pow(new.volume / ((4/3) * Double.pi), 1/3)
            } else {
                radius.radius = 0.0
            }
        }
    }
}
```
```swift
var sphere: Sphere = Sphere(radius: Radius(radius: 2.0))
print(sphere, sphere.body.area, sphere.body.volume)

sphere.body = Body(area: 50.26548245743669)
print(sphere)

sphere.body = Body(volume: 33.510321638291124)
print(sphere)
```
```
Sphere(radius: Console.Radius(radius: 2.0)) 50.26548245743669 33.510321638291124
Sphere(radius: Console.Radius(radius: 2.0))
Sphere(radius: Console.Radius(radius: 2.0))
```

### Shorthand Getter and Setter Declaration
```swift
struct Body {
    var area: Double = 0.0
    var volume: Double = 0.0
}

struct Radius {
    var radius: Double = 0.0
}

struct Sphere {
    var radius = Radius()
    var body: Body {
        get {
            Body(area: 4 * Double.pi * pow(self.radius.radius,2), volume: (4 / 3) * Double.pi * pow(radius.radius,3))
        }
        
        set {
            if newValue.area != 0.0 {
                radius.radius = pow(newValue.area / (4 * Double.pi), 1/2)
            } else if newValue.volume != 0.0 {
                radius.radius = pow(newValue.volume / ((4/3) * Double.pi), 1/3)
            } else {
                radius.radius = 0.0
            }
        }
    }
}
```
### Read-Only Computed Properties
A computed property with a getter but no setter is known as a read-only computed property. A read-only computed property always returns a value, and can be accessed through dot syntax, but can’t be set to a different value.
```swift
struct Body {
    var area: Double = 0.0
    var volume: Double = 0.0
}

struct Radius {
    var radius: Double = 0.0
}

struct Sphere {
    var radius = Radius()
    var body: Body {
        get {
            Body(area: 4 * Double.pi * pow(self.radius.radius,2), volume: (4 / 3) * Double.pi * pow(radius.radius,3))
        }
    }
}
```
```swift
var sphere: Sphere = Sphere(radius: Radius(radius: 2.0))
print(sphere, sphere.body.area, sphere.body.volume)
```
```
Sphere(radius: Console.Radius(radius: 2.0)) 50.26548245743669 33.510321638291124
```

Advantages:
- It can dynamically calculate its value each time according to the results of the logic codes inside it.
- It does not need data storage to keep the value from calculation when we need it.

Disadvantages:
- May affect performance as it needs to be calculated every time.
- If the logic inside is faulty, the calculated value may also be faulty.

## Property Observers
Property observers observe and respond to changes in a property’s value. Property observers are called every time a property’s value is set, even if the new value is the same as the property’s current value.
```swift
class Logic {
    var status : Bool = false {
        willSet {
            print("WILL SET : Current Value -> \(status) : New Value -> \(newValue)")
        }
        
        didSet {
            print("DID SET : Current Value  -> \(status) : Old Value -> \(oldValue)")
        }
    }
}

var first = Logic()
first.status = true
```

```
WILL SET : Current Value -> false : New Value -> true
DID SET : Current Value  -> true : Old Value -> false
```

## Property Wrappers
A property wrapper adds a layer of separation between code that manages how a property is stored and the code that defines a property. For example, if you have properties that provide thread-safety checks or store their underlying data in a database, you have to write that code on every property. When you use a property wrapper, you write the management code once when you define the wrapper, and then reuse that management code by applying it to multiple properties.

```swift
@propertyWrapper
struct Positive {
    var wrappedValue: Int
    
    init(wrappedValue: Int) {
        if wrappedValue < 0 { self.wrappedValue = 0 }
        else { self.wrappedValue = wrappedValue }
    }
}

struct Victory {
    var winner: String
    @Positive var score: Int
}
```
```swift
var victory = Victory(username: "victory", score: 120)
print(victory)
```
```
Victory(username: "victory", _score: Console.Positive(wrappedValue: 120))
```
```swift
var victory = Victory(username: "victory", score: -120)
print(victory)
```
```
Victory(username: "victory", _score: Console.Positive(wrappedValue: 0))
```



```swift
@propertyWrapper
struct Storage<T> {
    var storageKey: String
    var storageValue: T
    let storage: UserDefaults = .standard
    
    var wrappedValue: T {
        get {
            let value = storage.value(forKey: storageKey) as? T
            return value ?? storageValue
        }
        
        set {
            storage.setValue(newValue, forKey: storageKey)
        }
    }
}

struct LastWinner {
    @Storage(storageKey: "username", storageValue: "guest") var username: String
    @Storage(storageKey: "score", storageValue: 0) var score: Int
}
```

```swift
var lastWinner = LastWinner()
lastWinner.username = "lastWinner"
lastWinner.score = 95

print(lastWinner.username, lastWinner.score)
```
```
lastWinner 95
```
```swift
var lastWinner = LastWinner()

print(lastWinner.username, lastWinner.score)
```
```
lastWinner 95
```

Advantages:
- It is a structure that we can use to store data.
- Thanks to the logic codes inside, it can perform operations such as allowing data to change or checking the accuracy of the data.
- We can use the same structure over and over again for different data.

Disadvantages:
- May affect performance and code complexity around it.
