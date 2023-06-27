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

### Multiple Results
```swift
func endpoints(array: [Int]) -> (min: Int, max: Int) {
    var minimum = array[0]
    var maximum = array[0]
    for value in array[1..<array.count] {
        if value < minimum {
            minimum = value
        } else if value > maximum {
            maximum = value
        }
    }
    return (minimum, maximum)
}
```
```swift
var max : Int = endpoints(array: [1,1,2,3,5,8,13,21]).max
var min : Int = endpoints(array: [1,1,2,3,5,8,13,21]).min
```
```
21 1
```

### Variadic Parameters
```swift
func totalizer(values : Int...) -> Int {
    var total = 0
    for value in values {
        total += value
    }
    return total
}
```
```swift
var sum = totalizer(values: 1,2,3,4,5,6,7,8,9)
```
```
45
```

### Mutating Function
```swift
struct Person {
    var name : String

    mutating func uppercasedName(){
        self.name = name.uppercased()
    }
}
```
```swift
var developer = Person(name: "developer")
```
```swift
print("Name : \(developer.name)")
```
```
Name : developer
```
```swift
developer.uppercasedName()
```
```swift
print("Name : \(developer.name)")
```
```
Name : DEVELOPER
```

### Functions in "for" Keyword
```swift
struct Message {
    mutating func show(for type : Int) -> String {
        return "Status Code : \(type)"
    }
}

var status = Message()
var message = status.show(for: 200)
```
### Functions in "_" Keyword
```swift
struct Messages {
    func status(_ code : Int) -> String {
        switch code {
        case 100 :
            return "Informational Responses"
        case 200:
            return "Successful Responses"
        case 300:
            return "Redirection Messages"
        case 400:
            return "Client Error Responses"
        case 500:
            return "Server Error Responses"
        default:
            return "Unknown"
        }
    }
}

var response = Messages()
var message = response.status(200)
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
