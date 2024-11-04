# Optional Chaining

- Decleration
```swift
var value : String? = nil
```
- Assignment
```swift
var value = "5"
```
- Optional Binding
```swift
if let verify = value {
    print(verify)
} else {
    print("Value is Nil!")
}
```
```
Value is Nil!
```

### Unwrapping

1. Force Unwrapping
```swift
var value: String? = nil
print(value as Any)
```
```
nil
```

2. Implicit Unwrapping
```swift
var value: String! = nil
print(value as Any)
```
```
nil)
```


