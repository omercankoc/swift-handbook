# Operators

### 1. Assignment Operator
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

- Compound Assignment Operators
```swift
let value : Int = 3

var first : Int = 1
var second : Int = 2
var third : Int = 3
var fourth : Int = 4
var fifth : Int = 5

first += value
second -= value
third *= value
fourth /= value
fifth %= value

print(first, second, third, fourth, fifth)
```
```
4 -1 9 1 2
```

- Unary Minus Operator
```swift
let value = -5
let minusValue = -value

print(value, minusValue)
```
```
-5 5
```

- Unary Plus Operator
```swift
let value = -5
let plusValue = +value

print(value, plusValue)
```
```
-5 -5
```

### 2. Arithmetic Operators
- Addition (+)
- Subtraction (-)
- Multiplication (*)
- Division (/)
- Remainder (%)

```swift
let addition = {
    (first : Int, second : Int) -> Int in
    return first + second
}

let subraction = {
    (first : Int, second : Int) -> Int in
    return first - second
}

let multiplication = {
    (first : Int, second : Int) -> Int in
    return first * second
}

let division = {
    (first : Int, second : Int) -> Int in
    return first / second
}

let modulus = {
    (first : Int, second : Int) -> Int in
    return first % second
}

let first = addition(6,4)
let second = subraction(6,4)
let third = multiplication(6,4)
let fourth = division(6,4)
let fifth = modulus(9,2)

print(first, second, third, fourth, fifth)
```
```
10 2 24 1 1
```

### 3. Comparison Operators
- Equal To (a==b)
- Not Equal To (a!=b)
- Greater Than (a>b)
- Less Than (a<b)
- Greater than or Equal to (a>=b)
- Less than or Equal to (a<=b)

```swift
let equalTo = {
    (first : Int, second : Int) -> Bool in
    return first == second ? true : false
}

let notEqualTo = {
    (first : Int, second : Int) -> Bool in
    return first != second ? false : true
}

let greaterThan = {
    (first : Int, second : Int) -> Bool in
    return first > second ? true : false
}

let lessThan = {
    (first : Int, second : Int) -> Bool in
    return first < second ? true : false
}

let greaterThanOrEqualTo = {
    (first : Int, second : Int) -> Bool in
    return first >= second ? true : false
}

let lessThanOrEqualTo = {
    (first : Int, second : Int) -> Bool in
    return first <= second ? true : false
}

let first = equalTo(2, 2)
let second = notEqualTo(3, 5)
let third = greaterThan(2, 4)
let fourth = lessThan(5, 6)
let fifth = greaterThanOrEqualTo(3, 2)
let sixth = lessThanOrEqualTo(5, 4)

print(first, second, third, fourth, fifth, sixth)
```
```
true false false true true false
```

### 4. Logical Operators
1. NOT
1. OR
2. AND

- NOT
```swift
var status : Bool = false

if !status {
    print("Denied")
} else {
    print("Allowed")
}
```
```
Denied
```
- OR
```swift
var before : Bool = true
var after : Bool = false

if before || after {
    print("Stable")
} else {
    print("Unstable")
}
```
```
Stable
```
- AND
```swift
var before : Bool = true
var after : Bool = false

if before && after {
    print("Stable")
} else {
    print("Unstable")
}
```
```
Unstable
```

### Other Operators
1. Ternary Operator
```swift
var os : [String] = ["macOS","iOS","iPadOS","watchOS","tvOS"]
let result : String = os.isEmpty ? "Not Assigned" : "Assigned"
print(result)
```
```
"Assigned"
```

2. Nil Coalescing Operator
```swift
var value : Int? = nil
let verify = value ?? 0
print(verify)
```
```
0
```
```swift
var value : String? = nil
var verify = value ?? "NIL"
print(verify)

```
```
NIL
```
