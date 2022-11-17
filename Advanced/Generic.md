# Generic
Provides type independent operation.

In some scenarios, it may be necessary to write more than one function that does the same job for different types. 
In order not to write all these functions one by one, we use the generic mechanism and write a template, 
and the compiler does the necessary operations for other types, independent of the type, for us.

```swift
public struct Stack<T> {
    private var array : [T] = []
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    mutating func push(_ element: T) {
        array.insert(element, at: 0)
    }
    
    mutating func pop() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
}
```

```swift
var stringStack = Stack<String>()
```

```swift
stringStack.push("Swift")
stringStack.push("Objective-C")
```

```
["Objective-C", "Swift"]
```

```swift
stringStack.pop()
```

```
["Swift"]
```

```swift
var integerStack = Stack<Int>()
```

```swift
integerStack.push(1)
integerStack.push(2)
```

```
[2, 1]
```

```swift
integerStack.pop()
```

```
[1]
```

- Equatable Protocol:
The Equatable protocol gives us the operators “==” and “!=”. We can use these two operators in our generic types to which we add this protocol.
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
The Comparable protocol gives us the “<“, “>”, “<=”, “>=” operators that we use to compare. 
In addition, since this protocol inherits from the Equatable protocol, it also allows the "==" and "!=" operators.
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
