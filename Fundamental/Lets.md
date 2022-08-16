## Guard Let
It is used to specify the actions to be taken if the condition is not met.

```swift
var toNumeric = "5"
var notNumeric = "A"

func convertToIntegerGuard(value : String) -> Int {
    guard let result = Int(value) else {
        return 0
    }
    return result
}
```
```swift
print(convertToIntegerIf(value: toNumeric))
print(convertToIntegerIf(value: notNumeric))
```
```
5 0
```

## If Let
It is used to separately specify the actions to be taken when the condition is met and when it is not met.

```swift
var toNumeric = "5"
var notNumeric = "O"

func convertToIntegerIf(value : String) -> Int {
    if let result = Int(value) {
        return result
    } else {
        return 0
    }
}
```
```swift
print(convertToIntegerGuard(value: toNumeric))
print(convertToIntegerGuard(value: notNumeric))
```
```
5 0
```
