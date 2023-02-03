## Closures
Code blocks that can return a value, can be assigned to any variable and stored in the assigned variable are called "Closure". Closures can actually be thought of as specialized functions.

1. Closures That Take No Parameters and Return No Value
```swift
let noParameterNoReturn = {
    print("Closures That Take No Parameters and Return No Value.")
}
```
```swift
noParameterNoReturn()
```
```
Closures That Take No Parameters and Return No Value.
```

2. Closures That Take Parameters
```swift
var yesParameterNoReturn = { (first : String, second : String) in
    print("Closures That Take \(first) Parameters and Return \(second) Value.")
}

var yesParameterNoReturn_ : (String, String) -> Void = { first, second in
    print("Closures That Take \(first) Parameters and Return \(second) Value.")
}
```
```swift
yesParameterNoReturn("yes", "yes")
yesParameterNoReturn_("no", "no")
```
```
Closures That Take yes Parameters and Return yes Value.
Closures That Take no Parameters and Return no Value.
```

3. Closures That Take Return Value
```swift
let modulus = {
    (val1 : Int, val2 : Int) -> Int in
    return val1 % val2
}
```
```swift
let mod = modulus(43,22)
print("Modulus : ",mod)
```
```
Modulus :  21
```

4. Trailing Closures
```swift

```
```swift

```
```

```
