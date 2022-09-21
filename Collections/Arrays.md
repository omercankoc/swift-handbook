# Arrays
An array stores values of the same type in an ordered list. The same value can appear in an array multiple times at different positions.

The type of a Swift array is written in full as Array<Element>, where Element is the type of values the array is allowed to store. You can also write the type of an array in shorthand form as [Element]. Although the two forms are functionally identical, the shorthand form is preferred and is used throughout this guide when referring to the type of an array.

### Creating an Array with Shortland   
```swift
var os : [String] = ["iOS","iPadOS","macOS","watchOS"]
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
### Iterating Over an Array
```swift
for iterator in os {
    print(iterator)
}
```

## Methods
1 - Append
```swift
fos.append("tvOS")
```


