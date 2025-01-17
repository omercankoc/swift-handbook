# Closures

Herhangi bir değişkene atanabilen ve atanan değişkenin içinde saklanabilen, değer döndürebilen kod bloklarına "Closure" denir. Closure aslında özelleşmiş fonksiyonlar olarak düşünülebilir.

- Declaration
```swift
let closure = {
    print("Hello Closure!")
}

closure()
```
```
Hello Closure!
```

- Closure Parameter(s)
```swift
var equality = {(first: Int, second: Int) in
    if first == second { print("Equal")}
    else { print("Not Equal")}
}

var otherEquality: (Int, Int) -> Void = { first, second in
    if first == second { print("Equal")}
    else { print("Not Equal")}
}

equality(3,3)
otherEquality(4,1)
```
```
Equal
Not Equal
```

- Return Value(s)
```swift
let modulus = {(first: Int, second: Int) -> Int in
    return first % second
}

let otherModulus: (Int, Int) -> Int = { first, second in
    return first % second
}

let first = modulus(12, 5)
let second = otherModulus(16, 9)
```
```
2 7
```

- Closure as Function Parameter
```swift
func work(process: ()->()) {
  print("Process Getting Ready...")
  process()
}
```
```swift
work {
    print("Processing...")
}
```
```
Process Getting Ready...
Processing...
```

- Trailing Closures
```swift
func action(status : Bool, onSuccess : (() -> ())? = nil, onFail : (() -> ())? = nil){
    if status {
        onSuccess?()
    } else {
        onFail?()
    }
}
```
```swift
action(status: true) {
    print("Connected!")
} onFail: {
    print("Not Connected!")
}
```
```
Connected!
```

- Autoclosure 
```swift
func work(process: @autoclosure ()->()) {
  print("Process Getting Ready...")
  process()
}
```
```swift
work(process: print("Processing..."))
```
```
Process Getting Ready...
Processing...
```
