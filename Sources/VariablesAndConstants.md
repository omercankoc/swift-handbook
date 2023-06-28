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
    func fahrenheitToCelcius() -> Celsius {
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
    var celcius : Celsius
    var fahrenheit : Fahrenheit
    var kelvin : Kelvin
    
    init(celcius: Celsius) {
        self.celcius = celcius
        self.fahrenheit = celcius.celsiusToFahrenheit()
        self.kelvin = celcius.celsiusToKelvin()
    }
}

var temperature = Temperature(celcius: 34)
temperature.celcius
temperature.fahrenheit
temperature.kelvin
```
```
34.0
93.2
307.15
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
