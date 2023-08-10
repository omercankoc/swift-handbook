# Optional Chaining

- Decleration
```swift
var value : String? = nil
```
- Assignment
```swift
var value = "5"
```

### Unwrapping

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
value = "Apple"
print(value!)
print(value)
```
```
Apple
Optional("Apple")
```

3. Optional Binding
```swift
var value : String? = nil

if let verify = value {
    print(verify)
} else {
    print("Value is Nil!")
}
```
```
Value is Nil!
```

### Nil Coalescing
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
