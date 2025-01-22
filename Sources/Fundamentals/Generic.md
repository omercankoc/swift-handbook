# Generic 
Generic allows us to specify type-independent, general-purpose, and non-duplicative functions and types.


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

- Type : String
```swift
var stringStack = Stack<String>()
```

```swift
stringStack.push("First")
stringStack.push("Second")
stringStack.push("Third")

print(stringStack)
```

```
Stack<String>(array: ["Third", "Second", "First"])
```

```swift
var lastInFirstOut = stringStack.pop()

print(lastInFirstOut as Any)
print(stringStack)
```

```
Optional("Third")
Stack<String>(array: ["Second", "First"])
```

- Type : Integer
```swift
var integerStack = Stack<Int>()
```

```swift
integerStack.push(1)
integerStack.push(2)
integerStack.push(3)

print(integerStack)
```

```
Stack<Int>(array: [3, 2, 1])
```

```swift
var lastInFirstOut = integerStack.pop()

print(lastInFirstOut as Any)
print(integerStack)
```

```
Optional(3)
Stack<Int>(array: [2, 1])
```
