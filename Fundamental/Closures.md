## Closures

It is a code block that has no name, takes parameters and returns values, can be stored in a variable, passed as a parameter to a function.

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
