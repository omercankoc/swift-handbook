# Protocols 

```swift
protocol FirstProtocol {
    var firstInt : Int { get set }
    var firstString : String { get set }
    
    func firstMessage()
    func firstCustomMessage() -> String
}

protocol SecondProtocol {
    var secondInt : Int { get set }
    var secondString : String { get set}
    
    func secondMessage()
    func secondCustomMessage() -> String
}
```

```swift
struct FirstStruct : FirstProtocol {
    var firstInt: Int
    var firstString: String
    
    func firstMessage() {
        print("First Struct using First Protocol")
    }
    
    func firstCustomMessage() -> String {
        return "\(firstInt) -> \(firstString)"
    }
}

struct SecondStruct : SecondProtocol {
    var secondInt: Int
    var secondString: String
    
    func secondMessage() {
        print("Second Struct using Second Protocol")
    }
    
    func secondCustomMessage() -> String {
        return "\(secondInt) -> \(secondString)"
    }
}

struct ThirdStruct : FirstProtocol, SecondProtocol {
        
    var firstInt: Int
    var firstString: String
    
    var secondInt: Int
    var secondString: String
    
    func firstMessage() {
        print("Third Struct using First Protocol")
    }
    
    func firstCustomMessage() -> String {
        return "\(firstInt) -> \(firstString)"
    }
    
    func secondMessage() {
        print("Third Struct using Second Protocol")
    }
    
    func secondCustomMessage() -> String {
        return "\(secondInt) -> \(secondString)"
    }
}
```

```swift
var first = FirstStruct(firstInt: 1, firstString: "First")
print(first.firstInt, first.firstString, first.firstCustomMessage())
first.firstMessage()
```

```
1 First 1 -> First
First Struct using First Protocol
```

```swift
var second = SecondStruct(secondInt: 2, secondString: "Second")
print(second.secondInt, second.secondString, second.secondCustomMessage())
second.secondMessage()
```

```
2 Second 2 -> Second
Second Struct using Second Protocol
```

```swift
var third = ThirdStruct(firstInt: 3, firstString: "Third", secondInt: 4, secondString: "Fourth")
print(third.firstInt, third.firstString, third.firstCustomMessage(), third.secondInt, third.secondString, third.secondCustomMessage())
third.firstMessage()
third.secondMessage()
```

```
3 Third 3 -> Third 4 Fourth 4 -> Fourth
Third Struct using First Protocol
Third Struct using Second Protocol
```
