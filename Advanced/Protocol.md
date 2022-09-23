# Protocol
A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality. The protocol can then be adopted by a class, structure, or enumeration to provide an actual implementation of those requirements. Any type that satisfies the requirements of a protocol is said to conform to that protocol.

In addition to specifying requirements that conforming types must implement, you can extend a protocol to implement some of these requirements or to implement additional functionality that conforming types can take advantage of.

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
        return firstString
    }
}

struct SecondStruct : SecondProtocol {
    var secondInt: Int
    
    var secondString: String
    
    func secondMessage() {
        print("Second Struct using Second Protocol")
    }
    
    func secondCustomMessage() -> String {
        return secondString
    }
}

struct ThirdStruct : FirstProtocol, SecondProtocol {
        
    var firstInt: Int
    var secondInt: Int
    
    var firstString: String
    var secondString: String
    
    func firstMessage() {
        print("Third Struct using First Protocol")
    }
    
    func secondMessage() {
        print("Third Struct using Second Protocol")
    }
    
    func firstCustomMessage() -> String {
        return firstString
    }
    
    func secondCustomMessage() -> String {
        return secondString
    }
}
```

```swift
var first = FirstStruct(firstInt: 1, firstString: "Return First Struct using First Protocol")
first.firstMessage()
print(first.firstInt, first.firstString)
```

```
First Struct using First Protocol
1 Return First Struct using First Protocol
```

```swift
var second = SecondStruct(secondInt: 2, secondString: "Return Second Struct using Second Protocol")
second.secondMessage()
print(second.secondInt, second.secondString)
```

```
Second Struct using Second Protocol
2 Return Second Struct using Second Protocol
```

```swift
var third = ThirdStruct(firstInt: 3, secondInt: 4, firstString: "Return Third S using First P", secondString: "Return Third S using Second P")
third.firstMessage()
third.secondMessage()
print(third.firstInt,third.secondInt,third.firstString,third.secondString)
```

```
Third Struct using First Protocol
Third Struct using Second Protocol
3 4 Return Third S using First P Return Third S using Second P
```
