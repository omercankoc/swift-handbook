## Variable and Value Type

### Definition and Initialize

Definition:
```swift
var language : String
```
Initialization:
```swift
var language = "Swift"
```
Definition and Initialization:
```swift
var language : String = "Swift"
```

### Variables and Constants

Mutable Variables:
```swift
var platform : String = "iOS"
```

Inmutable Constants:
```swift
let language : String = "Swift"
```

### Types

Integer:
```swift
var counter : Int = 0
```

Float:
```swift
var euler : Float = 2.7182818
```

Double:
```swift
var pi : Double = 3.14159265358979
```

Bool:
```swift
var logic : Bool = true
```

### Typealias
It is used to assign a new name to an existing type.
```swift
typealias Angle = Double
var angle : Angle = 30.0;
print("Angle = " , angle)
```

### Type Conversion
```swift
var count : Int = 0
var numeric : String = "5"
var language : String = "Swift"
var euler : Float = 2.7182818
var pi : Double = 3.14159265358979

if let stringToIntegerNumeric = Int(numeric) {
    print(stringToIntegerNumeric)
} else {
    print("NUMERIC : String value not converting to integer value.")
}

if let stringToIntegerLanguage = Int(language) {
    print(stringToIntegerLanguage)
} else {
    print("LANGUAGE : String value not converting to integer value.")
}

let integerToStringCount = String(count)
print(integerToStringCount)

let doubleToFloat = Float(pi)
print(doubleToFloat)

let floatToDouble = Double(euler)
print(floatToDouble)

let doubleToInteger = Int(pi)
print(doubleToInteger)

```
