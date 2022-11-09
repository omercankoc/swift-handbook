# Arrays
An array stores values of the same type in an ordered list. The same value can appear in an array multiple times at different positions.

The type of a Swift array is written in full as Array<Element>, where Element is the type of values the array is allowed to store. You can also write the type of an array in shorthand form as [Element]. Although the two forms are functionally identical, the shorthand form is preferred and is used throughout this guide when referring to the type of an array.
## Definition and Initialize
- Creating an Array with Shortland: 
```swift
var os : [String] = ["macOS","iOS","iPadOS","watchOS"]
```
- Creating an Empty Array with Shortland:
```swift
var os : [String] = []
```
- Creating an Array Without Specifying a Type:
```swift
var os = ["iOS","iPadOS","macOS","watchOS"]
```   
- Creating an Empty Array Without Specifying a Type:
```swift
var os = [String]()
```
- Creating an Array by Specifying a Type:
```swift
var os : Array = ["iOS","iPadOS","macOS","watchOS"]
```
- Creating an Empty Array by Specifying a Type:
```swift
var os : Array = [String]()
```
- Iterating Over an Array:
```swift
for iterator in os {
    print(iterator)
}
```
- Enumerated:
```swift
for (index,iterator) in os.enumerated() {
    print("\(index) : \(iterator)")
}
```

## Methods
- Append an item to the end of the Array:
```swift
os.append("tvOS")
```
```
["macOS", "iOS", "iPadOS", "watchOS", "tvOS"]
```
With this parameter, one array is added to another Array.
```swift
os.append(contentsOf: os)
```
```
["macOS", "iOS", "iPadOS", "watchOS", "macOS", "iOS", "iPadOS", "watchOS"]
```
- Insert an element to the specified position of the Array:
```swift
os.insert("tvOS", at: 2)
```
```
["macOS", "iOS", "tvOS", "iPadOS", "watchOS"]
```
- Remove an item from the Array:
```swift
os.remove(at: 2)
```
```
["macOS", "iOS", "watchOS"]
```
```swift
os.removeFirst()
```
```
["iOS", "iPadOS", "watchOS"]
```
```swift
os.removeLast()
```
```
["macOS", "iOS", "iPadOS"]
```
```swift
os.removeAll()
```
```
[]
```
- Returns the Count of Elements in the Array:
```swift
os.count
```
```
4
```
- Returns true if the Array is not empty, false otherwise:
```swift
os.isEmpty
```
```
false
```
- The First and Last Element in the Array:
```swift
var first = os.first
```
```
"macOS"
```
 ```swift
var last = os.last
```
```
"watchOS"
```
- Sort of Elements in the Array:
```swift
os.sort()
```
```
["iOS", "iPadOS", "macOS", "watchOS"]
```
```swift
os.sort(by: <)
```
```
["iOS", "iPadOS", "macOS", "watchOS"]
```
```swift
os.sort(by: >)
```
```
["watchOS", "macOS", "iPadOS", "iOS"]
```
- Reverses the order of Elements in the Array:
```swift
os.reverse()
```
```
["watchOS", "iPadOS", "iOS", "macOS"]
```
- Searches for the Element in an Array:
```swift
if os.contains("iOS") { print("TRUE") } else { print(false) }
```
```
TRUE
```
- Filter by one or more constraints in the Array:
```swift
var result = os.filter({$0.hasPrefix("i")})
```
```
["iOS", "iPadOS"]
```
- Exchanges the position of Elements in the Array:
```swift
os.swapAt(1, 2)
```
```
["macOS", "iPadOS", "iOS", "watchOS"]
```

- Changes the positions of the Elements randomly:
```swift
os.shuffle()
```
```
["iPadOS", "iOS", "macOS", "watchOS"]
```
