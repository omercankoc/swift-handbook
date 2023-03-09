## Optionals
In Swift, if a variable has no value, it must be declared as optional in order for it to have a value of "nil". 
If a variable can take a null value, that variable is optional.

### Definition Optional Variable
```swift
var value : String? = nil
```
Assigning a value to an optional variable.
```swift
var value = "5"
```

## Unwrapping
Optional variables are converted to regular type variables with Unwrapping.

1. Force Unwrapping:
Extracts the value of the optional variable. Forced unwrapping assumes the value is definitely not-nil. Thus, it throws a fatal error if the variable is nil. Optionals can be forced unwrapped by placing ! after the variable name.
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
2. Implicit Unwrapping:
Optionals are similar to optionals since they’re allowed to have nil value but they do not need to be checked before accessing. It’s called implicitly unwrapped since Swift force unwraps it every time. The drawback of this is same as forced unwrapping - if the value is nil when accessing, it leads to a fatal error.
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

3. Optional Binding:
To safely unwrap the value of an Optional , use one of the optional binding control structures, including if let and guard let. Optional binding conditionally binds the wrapped value of an Optional instance to a new variable.
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
It is used if we want to return a default value for cases where the optional variable is nil.
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
