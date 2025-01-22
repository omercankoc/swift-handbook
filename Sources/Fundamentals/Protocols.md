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

- Equatable Protocol:
Equatable protokolü bize “==” ve “!=” operatörlerini verir. Bu iki operatörü bu protokolü eklediğimiz genel tiplerimizde kullanabiliriz.

```swift
func getDifferent<T: Equatable>(array: [T], char: T) -> Bool {
    for item in array{
        if char != item{
            return true
        }
    }
    return false
}
```

- Comparable Protocol:
Comparable protokolü bize karşılaştırma yapmak için kullandığımız “<“, “>”, “<=”, “>=" operatörlerini verir. Ayrıca, bu protokol Equatable protokolünden miras aldığı için "==" ve "!=" operatörlerine de izin verir.

```swift
func getMin<T: Comparable>(heightArray: [T]) -> T{
    var min = heightArray[0]
    for (i,_) in heightArray.enumerated(){
        if min > heightArray[i]{
            min = heightArray[i]
        }
    }
    return min
}

```

### Delegation
Delegation, bir class'ın veya struct'ın sorumluluklarının bir kısmını başka bir türün örneğine devretmesini sağlayan bir design pattern'dir (tasarım örüntüsü). Bu design pattern, devredilen sorumlulukları kapsayan bir protocol tanımlayarak uygulanır, böylece uyumlu bir türün devredilen işlevselliği sağlaması garanti edilir. Delege etme, belirli bir eyleme yanıt vermek veya o kaynağın altta yatan türünü bilmeye gerek kalmadan harici bir kaynaktan veri almak için kullanılabilir.
