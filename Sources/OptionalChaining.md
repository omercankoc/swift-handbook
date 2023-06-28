# Optional Chaining

- Decleration
```swift
var value : String? = nil
```
- Assigning
```swift
var value = "5"
```

## Unwrapping

1. Force Unwrapping
```swift
var value : String? = nil
value = "5"
print(value!)
print(value)
```
```
5
Optional("5")
```
2. Implicit Unwrapping
```swift
var value : String! = nil
value = "Swift"
print(value!)
print(value)
```
```swift
Swift
Optional("Swift")
```

3. Optional Binding
```swift
var value : String? = nil

if let validatedValue = value {
    print("\(validatedValue)")
} else { print("Value is Nil!") }
```
```
Value is Nil!
```

## Nil Coalescing
```swift
var value : Int? = nil
let validatedValue = value ?? 0
print(validatedValue)
```
```
0
```
```swift
var value : String? = nil
var validatedValue = value ?? ""
print(validatedValue)

```
```

```
