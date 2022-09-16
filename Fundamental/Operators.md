# Operators

An operator is a special symbol or phrase that you use to check, change, or combine values. For example, the addition operator (+) adds two numbers, as in let i = 1 + 2, and the logical AND operator (&&) combines two Boolean values, as in if enteredDoorCode && passedRetinaScan.

Swift supports the operators you may already know from languages like C, and improves several capabilities to eliminate common coding errors. The assignment operator (=) doesn’t return a value, to prevent it from being mistakenly used when the equal to operator (==) is intended. Arithmetic operators (+, -, *, /, % and so forth) detect and disallow value overflow, to avoid unexpected results when working with numbers that become larger or smaller than the allowed value range of the type that stores them. You can opt in to value overflow behavior by using Swift’s overflow operators, as described in Overflow Operators.

Swift also provides range operators that aren’t found in C, such as a..<b and a...b, as a shortcut for expressing a range of values.

## 1. Assignment Operator
Initializes or updates the value.
```swift
let count = 10
var item = 0
print("Count : \(count) and Item :\(item)")
item = count
print("Count : \(count) and Item :\(item)")
```
```
Count : 10 and Item :0
Count : 10 and Item :10
```
## 2. Arithmetic Operators
Swift supports the four standard arithmetic operators for all number types:
- Addition (+)
- Subtraction (-)
- Multiplication (*)
- Division (/)
- Remainder (%)
```swift
let additionClousure = {
    (first : Int, second : Int) -> Int in
    return first + second
}

let subractionClousure = {
    (first : Int, second : Int) -> Int in
    return first - second
}

let multiplicationClousure = {
    (first : Int, second : Int) -> Int in
    return first * second
}

let divisionClousure = {
    (first : Int, second : Int) -> Int in
    return first / second
}

func modulus(first : Int, second : Int) -> Int {
    return first % second
}
```

```swift
let addition = additionClousure(6,4) // 10
let subraction = subractionClousure(6,4) // 2
let multiplication = multiplicationClousure(6,4) // 24
let division = divisionClousure(6,4) // 1
modulus(first: 6, second: 4)
```
