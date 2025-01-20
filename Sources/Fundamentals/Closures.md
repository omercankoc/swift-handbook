# Closures

Herhangi bir değişkene atanabilen ve atanan değişkenin içinde saklanabilen, değer döndürebilen kod bloklarına "Closure" denir. Closure aslında özelleşmiş fonksiyonlar olarak düşünülebilir.

- Declaration
```swift
let random = {
    print(Int.random(in: 0...9))
}

let minimum = { () -> Void in
    print(Int.min)
}

let maximum: () -> Void = {
    print(Int.max)
}

random()
minimum()
maximum()
```
```
5
-9223372036854775808
9223372036854775807
```

- Closure Parameter(s)
```swift
var lessThan = {(first: Int, second: Int) in
    first < second ? print(first): print(second)
}

var greaterThan: (Int, Int) -> Void = { first, second in
    first > second ? print(first): print(second)
}

lessThan(5,7)
greaterThan(5,7)
```
```
5
7
```

- Return Value
```swift
let minimum: () -> Int = {
    return Int.min
}

let maximum = { () -> Int in
    return Int.max
}

let values = (min: minimum(), max: maximum())
print(values.min, values.max)
```
```
-9223372036854775808 9223372036854775807
```

- Closure Parameter(s) and Return Value(s)
```swift
var lessThan = {(first: Int, second: Int) -> Int in
    return first < second ? first: second
}

var greaterThan: (Int, Int) -> Int = { first, second in
    return first > second ? first : second
}

let less = lessThan(5,7)
let greater = greaterThan(5,7)

print(less, greater)
```
```
5 7
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

- Trailing Closure

Bir fonksiyonun son parametrelerinden birinin veya daha fazlasının fonksiyon olması durumudur. 

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

- @autoclosure

Closure'dan farklı olarak autoclosure ile çalışan bir fonksiyona parametre olarak bir argument vermek yerine bir "statement" verilir.  Autoclosure kendisine verilen bu statement'ı arka planda otomatik olarak bir closure’a dönüştürür.

```swift
func closure(process: () -> ()){
    print("Process Getting Ready!")
    process()
}

closure {
    print("Processing...")
}

func autoclosure(process: @autoclosure ()->()) {
  print("Process Getting Ready...")
  process()
}

autoclosure(process: print("Processing..."))
```
```
Process Getting Ready!
Processing...
Process Getting Ready...
Processing...
```

- @escaping

...
