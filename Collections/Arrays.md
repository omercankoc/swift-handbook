# Arrays
An array stores values of the same type in an ordered list. The same value can appear in an array multiple times at different positions.

The type of a Swift array is written in full as Array<Element>, where Element is the type of values the array is allowed to store. You can also write the type of an array in shorthand form as [Element]. Although the two forms are functionally identical, the shorthand form is preferred and is used throughout this guide when referring to the type of an array.

### Creating an Array with Shortland   
```swift
var os : [String] = ["macOS","iOS","iPadOS","watchOS"]
```
 ### Creating an Empty Array with Shortland
```swift
var os : [String] = []
```
### Creating an Array Without Specifying a Type
```swift
var os = ["iOS","iPadOS","macOS","watchOS"]
```   
### Creating an Empty Array Without Specifying a Type
```swift
var os = [String]()
```
### Creating an Array by Specifying a Type
```swift
var os : Array = ["iOS","iPadOS","macOS","watchOS"]
```
### Creating an Empty Array by Specifying a Type
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
This method is also used to append one array to another array.
```swift
os.append(contentsOf: os)
```
```
["macOS", "iOS", "iPadOS", "watchOS", "macOS", "iOS", "iPadOS", "watchOS"]
```
2. Insert : It is used to insert an element at the specified position of the array.
```swift
os.insert("tvOS", at: 2)
```
```
["macOS", "iOS", "tvOS", "iPadOS", "watchOS"]
```
3. Remove : The method is used to extract items from an array.
```swift
os.remove(at: 2)
```
```
["macOS", "iOS", "watchOS"]
```
- removeFirst() : to remove the first element.
- removeLast() :  to remove the last element.
- removeAll() : to remove all elements of an array
4. Sort : Sorts array elements.
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
5. Shuffle : Changes the order of array elements.
```swift
os.shuffle()
```
```
["iPadOS", "iOS", "macOS", "watchOS"]
```
6. Contains : Searches for the element in an array.
```swift
if os.contains("iOS") { print("TRUE") } else { print(false) }
```
```
TRUE
```
7. Swap At : Exchanges the position of array elements.
```swift
os.swapAt(1, 2)
```
```
["macOS", "iPadOS", "iOS", "watchOS"]
```
8. Reverse : Reverses the order of array elements.
```swift
os.reverse()
```
```
["watchOS", "iPadOS", "iOS", "macOS"]
```
9. Count : The count property is used to find the number of elements in an array.
```swift
os.count
```
```
4
```
10. Is Empty : Used to check if a directory is empty.
```swift
os.isEmpty
```
```
false
```
11. Filter : It is used to filter by one or more constraints in the array.
```swift
var result = os.filter({$0.hasPrefix("i")})
```
```
["iOS", "iPadOS"]
```
