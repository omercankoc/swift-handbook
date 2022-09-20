# Tuples
Tuples group multiple values into a single compound value. 
The values within a tuple can be of any type and don’t have to be of the same type as each other.

Let's define a Tuples that holds the codes of Hex, RGB, HSL and CMYK of the blue color.
```swift
var blue = ("0108FF",[1,8,255],[238,100,50],[100,97,0,0])
```
And let's get the values one by one.
```swift
print("Blue -> HEX Code : \(blue.0) RGB Code : \(blue.1) HSL Code : \(blue.2) CMYK Code : \(blue.3)")
```
```
Blue -> HEX Code : 0108FF RGB Code : [1, 8, 255] HSL Code : [238, 100, 50] CMYK Code : [100, 97, 0, 0]
```
You can name the individual elements in a tuple when the tuple is defined.
```swift
var red = (hex : "FF0101", rgb : [255,1,1], hsl : [0,100,50], cmyk : [0,100,100,0])
```
