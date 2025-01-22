# Protocols 
Bir protocol, belirli bir göreve veya işlevsellik parçasına uyan method, property ve diğer gereksinimlerin bir taslağını tanımlar. Protocol daha sonra bu gereksinimlerin gerçek bir uygulamasını sağlamak için bir class, struct veya enum tarafından benimsenebilir. Bir protocol'un gereksinimlerini karşılayan herhangi bir türün o protocol'e uygun olduğu söylenir. Uygun türlerin uygulaması gereken gereksinimleri belirtmenin yanı sıra, bu gereksinimlerden bazılarını uygulamak veya uygun türlerin yararlanabileceği ek işlevleri uygulamak için bir protocol'u genişletebilirsiniz.

- Declaration
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

- Implementation
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

<b> Third Struct is an instance of Protocol Composition. </b>
- Instance
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

### Delegation
Delegation is a design pattern that enables a class or structure to hand off (or delegate) some of its responsibilities to an instance of another type. This design pattern is implemented by defining a protocol that encapsulates the delegated responsibilities, such that a conforming type (known as a delegate) is guaranteed to provide the functionality that has been delegated. Delegation can be used to respond to a particular action, or to retrieve data from an external source without needing to know the underlying type of that source.
