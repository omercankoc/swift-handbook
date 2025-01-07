# Optionals

- Optional

[EN] These are variables that can be assigned a "nil" variables.

[TR] Nil değeri alabilen değişkenlerdir.

```swift
var value : String? = nil
```

- Optional Binding

[EN] Checks whether the value of the variable is "nil".

[TR] Değişkenin değerinin "nil" olup olmadığını kontrol eder.

```swift
func optionalBinding(value: Int?) -> Int {
    if let verified = value {
        return verified
    } else {
        return 0
    }
}

print(optionalBinding(value: nil))
print(optionalBinding(value: 5))
```
```
0
5
```

```swift
func optionalBinding(value: Int?) -> Int {
    guard let verified = value else {
        return 0
    }
    return verified
}

print(optionalBinding(value: nil))
print(optionalBinding(value: 5))
```
```
0
5
```

- Optional Chaining (?)

[EN] It is a type of dot notation used when calling an optional entities or its optional properties or methods.

[TR] Opsiyonel bir varlığın ya da bu varlığın opsiyonel özellik veya metotlarının çağrılarını yaparken kullanılan bir nokta notasyon türüdür.

```swift
struct AnyStruct {
    let anyValue: Int
}

let anyStruct: AnyStruct? = AnyStruct(anyValue: 3)
print(anyStruct?.anyValue as Any)
```
```
Optional(3)
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


