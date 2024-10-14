# Variables

- Mutable
```swift
var variable: Int = 0
```

- Immutable
```swift
let constant: Int = 1
```

### Type Annotation, Assignment and Declaration

- Type Annotation
```swift
var base: Int
```

- Assignment
```swift
var base = 10
```

- Declaration
```swift
var base: Int = 10
```

### Types

- Integer
```swift
var min: Int = Int.min
var max: Int = Int.max
print(min, max)

var int8Min: Int8 = Int8.min
var int8Max: Int8 = Int8.max
print(int8Min, int8Max)

var uInt8Max: UInt8 = UInt8.max
var uInt8Min: UInt8 = UInt8.min
print(uInt8Min, uInt8Max)

var int16Min: Int16 = Int16.min
var int16Max: Int16 = Int16.max
print(int16Min, int16Max)

var uInt16Max: UInt16 = UInt16.max
var uInt16Min: UInt16 = UInt16.min
print(uInt16Min, uInt16Max)

var int32Min: Int32 = Int32.min
var int32Max: Int32 = Int32.max
print(int32Min, int32Max)

var uInt32Max: UInt32 = UInt32.max
var uInt32Min: UInt32 = UInt32.min
print(uInt32Min, uInt32Max)

var int64Min: Int64 = Int64.min
var int64Max: Int64 = Int64.max
print(int64Min, int64Max)

var uInt64Max: UInt64 = UInt64.max
var uInt64Min: UInt64 = UInt64.min
print(uInt64Min, uInt64Max)
```
```
-9223372036854775808 9223372036854775807
-128 127
0 255
-32768 32767
0 65535
-2147483648 2147483647
0 4294967295
-9223372036854775808 9223372036854775807
0 18446744073709551615
```

- Float
```swift
var pi: Float = Float.pi
print(pi)

var pi32: Float32 = Float32.pi
print(pi32)

var pi64: Float64 = Float64.pi
print(pi64)

var pi80: Float80 = Float80.pi
print(pi80)
```
```
3.1415925
3.1415925
3.141592653589793
3.1415926535897932385
```

- Double
```swift
var pi: Double = Double.pi
print(pi)
```
```
3.141592653589793
```

- Bool
```swift
var logic: Bool = true
```

### Tuples
It allows us to declare multiple different types of values ​​in a single composite value.
- Declaration
```swift
var red = (hex: "FF0101", rgb: [255,1,1], hsl: [0,100,50], cmyk: [0,100,100,0])
print(red.hex)
```
```
FF0101
```

```swift
var blue = ("0108FF",[1,8,255],[238,100,50],[100,97,0,0])
print(blue.0)
```

```
0108FF
```

### Type Alias
It is a structure that allows us to create aliases instead of our existing data types.
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
    var celsius: Celsius
    var fahrenheit: Fahrenheit
    var kelvin: Kelvin
    
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
var integerMax: Int = Int.max
var floatPi: Float = Float.pi
var doublePi: Double = Double.pi

let floatToDouble = Float(floatPi)
print(floatToDouble)

let doubleToFloat = Double(doublePi)
print(doubleToFloat)

let doubleToInteger = Int(doublePi)
print(doubleToInteger)
```
```
3.1415925
3.141592653589793
3
```
