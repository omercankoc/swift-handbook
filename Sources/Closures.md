# Function

- Function
```swift
func message(){
    print("Hello!")
}
```
```swift
message()
```
```
Hello!
```

- Parameter of Function
```swift
func message(name : String){
    print("Hello \(name)!" )
}
```
```swift
message(name : "Omer")
```
```
Hello Omer!
```

- Return Value of Function
```swift
func message(name: String, surname: String) -> String {
    return "Hello \(name) \(surname)!"
}
```
```swift
message(name: "Omer", surname: "Koc")
```
```
Hello Omer Koc!
```

### Overloading
```swift
func power(base: Int) -> Int {
    return base * base
}

func power(base: Int, exponent: Int) -> Int {
    var result = 1
    var iteration = 1
    
    while iteration <= exponent {
        result *= base
        iteration += 1
    }
    
    return result
}
```
```swift
power(base: 2)
power(base: 2, exponent: 3)
```
```
4
8
```



# Closures
Code blocks that can return a value, can be assigned to any variable and stored in the assigned variable are called "Closure". Closures can actually be thought of as specialized functions.

1. Closures
```swift
let first = {
    print(".")
}
```
```swift
first()
```
```
.
```

2. Parameter of Closures
```swift
var equality = { (first : Int, second : Int) in
    if first == second { print("Equal") }
    else { print("Not Equal") }
}

var equality_ : (Int, Int) -> Void = { first, second in
    if first == second { print("Equal") }
    else { print("Not Equal") }
}
```
```swift
equality(3,3)
equality_(4,1)
```
```
Equal
Not Equal
```

3. Return Value of Closures
```swift
let modulus = {
    (first : Int, second : Int) -> Int in
    return first % second
}

let modulus_ : (Int, Int) -> Int = { first, second in
    return first % second
}
```
```swift
modulus(12, 5)
modulus_(16, 9)
```
```
2 7
```

4. Closures as Function Parameter
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

5. Trailing Closures
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
6. Autoclosure 
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
