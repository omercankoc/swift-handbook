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
Unwrapping ile Optional olan değişken tiplerini normal tipteki değişkenlerimize çeviriyoruz.
1. Force Unwrapping
2. Implicit Unwrapping
3. Optional Binding

### 1. Force Unwrapping
An optional variable "!" is the process of converting it to a variable of normal type using the condition. 
It can be used if the variable needs to take a value, otherwise it will throw an error.
```swift
var value : String? = nil
var value = "5"
var newValue = value!
print("Value : \(value)")
print("New Value \(newValue)")
```
```
Value : Optional("5")
New Value 5
```

### 2. Implicit Unwrapping
The optional variable will take absolute value.
If no value is assigned to the variable while using the variable, our application will throw a runtime error and crash.

```swift
var value : String? = nil
value = "swift"
print(value!.uppercased())
```
```swift
SWIFT
```

### 3. Optional Binding
The most important advantage over other types of Unwrapping is that even if the variable is nil, your application will continue to work without crashing.
```swift
var value : String? = nil
value = "SWIFT"
print(value?.lowercased())
```
```
Optional("swift")
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
