# Variables and Constants

- Mutable Variables
```swift
var platform : String = "iOS"
```

- Immutable Constants
```swift
let language : String = "Swift"
```

### Type Annotation, Assigning and Declaration

- Type Annotation
```swift
var language : String
```

- Assigning
```swift
var language = "Swift"
```

- Declaration
```swift
var language : String = "Swift"
```

### Types

- Integer
```swift
var counter : Int = 0
```

- Float
```swift
var euler : Float = 2.7182818
```

- Double
```swift
var pi : Double = 3.14159265358979
```

- Bool
```swift
var logic : Bool = true
```

### Tuples
- Declaration
```swift
var red = (hex : "FF0101", rgb : [255,1,1], hsl : [0,100,50], cmyk : [0,100,100,0])
```

```swift
var blue = ("0108FF",[1,8,255],[238,100,50],[100,97,0,0])
```

```swift
print("Blue -> HEX Code : \(blue.0) RGB Code : \(blue.1) HSL Code : \(blue.2) CMYK Code : \(blue.3)")
```

```
Blue -> HEX Code : 0108FF RGB Code : [1, 8, 255] HSL Code : [238, 100, 50] CMYK Code : [100, 97, 0, 0]
```

### Type Alias 

```swift
typealias Angle = Double
var angle : Angle = 30.0;
print("Angle = " , angle)
```

### Type Conversion

```swift
var count : Int = 0
var numeric : String = "5"
var text : String = "Swift"
var euler : Float = 2.7182818
var pi : Double = 3.14159265358979

if let stringToInteger_Numeric = Int(numeric) {
    print("String value converting to integer value : ", stringToInteger_Numeric)
} else {
    print("String value not converting to integer value.")
}

if let stringToInteger_Text = Int(text) {
    print("String value converting to integer value : ", stringToInteger_Text)
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
