# Variables and Constants

- Mutable Variables
```swift
var platform : String = "iOS"
```

- Immutable Constants
```swift
let language : String = "Swift"
```

### Type Annotation, Assignment and Declaration

- Type Annotation
```swift
var language : String
```

- Assignment
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
red.hex
```
```
FF0101
```

```swift
var blue = ("0108FF",[1,8,255],[238,100,50],[100,97,0,0])
```
```swift
blue.0
```
```
0108FF
```

### Type Alias 
- Usage
```swift
typealias Celsius = Double
typealias Fahrenheit = Double
typealias Kelvin = Double

extension Celsius {
    func celsiusToFahrenheit() -> Fahrenheit {
        return (self * 1.8) + 32
    }
    
    func celsiusToKelvin() -> Kelvin {
        return (self + 273.15)
    }
}

extension Fahrenheit {
    func fahrenheitToCelsius() -> Celsius {
        return (self - 32) / 1.8
    }
    
    func fahrenheitToKelvin() -> Kelvin {
        return (self + 459.67) * (5/9)
    }
}

extension Kelvin {
    func kelvinToCelsius() -> Celsius {
        return (self - 273.15)
    }
    
    func kelvinToFahrenheit() -> Fahrenheit {
        return (self / (5/9)) - 459.67
    }
}


struct Temperature {
    var celsius : Celsius
    var fahrenheit : Fahrenheit
    var kelvin : Kelvin
    
    init(celcius: Celsius) {
        self.celsius = celcius
        self.fahrenheit = celcius.celsiusToFahrenheit()
        self.kelvin = celcius.celsiusToKelvin()
    }
    
    init(fahrenheit: Fahrenheit){
        self.celsius = fahrenheit.fahrenheitToCelsius()
        self.fahrenheit = fahrenheit
        self.kelvin = fahrenheit.fahrenheitToKelvin()
    }
    
    init(kelvin: Kelvin){
        self.celsius = kelvin.kelvinToCelsius()
        self.fahrenheit = kelvin.kelvinToFahrenheit()
        self.kelvin = kelvin
    }
}

var celsius = Temperature(celcius: 30)
print(celsius.celsius, "C =", celsius.fahrenheit, "F =", celsius.kelvin,"K")

var fahrenheit = Temperature(fahrenheit: 60)
print(fahrenheit.fahrenheit, "F =", fahrenheit.celsius, "C =", fahrenheit.kelvin, "K")

var kelvin = Temperature(kelvin: 90)
print(kelvin.kelvin, "K =", kelvin.celsius, "C =", kelvin.fahrenheit, "F")
```
```
30.0 C = 86.0 F = 303.15 K
60.0 F = 15.555555555555555 C = 288.70555555555563 K
90.0 K = -183.14999999999998 C = -297.67 F
```

### Type Conversion
- Usage
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
