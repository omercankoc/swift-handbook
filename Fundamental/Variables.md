# Variables

### Declaration and Initialization

- Declaration : It is used to define a variable without assigning a value.
```swift
var language : String
```
- Initialization : It is the operation of assigning a value without specifying the type of the variable.
```swift
var language = "Swift"
```
- Declaration and Initialization : It is the operation of defining the type of the variable and assigning a value.
```swift
var language : String = "Swift"
```

### Variables and Constants

- Mutable Variables : The value of the variable can be changed later.
```swift
var platform : String = "iOS"
```

- Immutable Constants : The variable cannot be changed after it has received a value.
```swift
let language : String = "Swift"
```

### Types

- Integer : Integers are numbers that are not fractions. Integers are signed (positive, zero, or negative) or unsigned (positive or zero).
```swift
var counter : Int = 0
```

- Float : Represents a 32-bit floating-point number.
```swift
var euler : Float = 2.7182818
```

- Double : Represents a 64-bit floating-point number.
```swift
var pi : Double = 3.14159265358979
```

- Bool : Boolean values are called logical only because they can be true or false. Bool provides two constants true and false:
```swift
var logic : Bool = true
```

### Type Alias 
Defines an alternative name for an existing type. It is defined by the keyword "typealias".
```swift
typealias Angle = Double
var angle : Angle = 30.0;
print("Angle = " , angle)
```

### Type Conversion
It is the process of converting a value with a type to another type.
```swift
var count : Int = 0
var numeric : String = "5"
var text : String = "Swift"
var euler : Float = 2.7182818
var pi : Double = 3.14159265358979

if let stringToIntegerNumeric = Int(numeric) {
    print("String value converting to integer value : ", stringToIntegerNumeric)
} else {
    print("String value not converting to integer value.")
}

if let stringToIntegerLanguage = Int(text) {
    print("String value converting to integer value : ", stringToIntegerLanguage)
} else {
    print("String value not converting to integer value.")
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
