# Dictionaries
A dictionary stores associations between keys of the same type and values of the same type in a collection with no defined ordering. 
Each value is associated with a unique key, which acts as an identifier for that value within the dictionary. 
Unlike items in an array, items in a dictionary don’t have a specified order. 
You use a dictionary when you need to look up values based on their identifier, 
in much the same way that a real-world dictionary is used to look up the definition for a particular word.

### Creating an Dictionary
```swift
var languages : [String:String] = ["Swift":"Apple","Kotlin":"JetBrains","Go":"Google","Rust":"Mozilla","CSharp":"Microsoft"]
```
### Creating an Empty Dictionary
```swift
var languages: [String: Int] = [:]
```
### Add Key-Value in Dictionary
```swift
languages["Swift"] = 2014
```
If you want to access the keys in Dictionary and use it in an array:
```swift
let languagesKeys = [String](languages.keys)
```
If you want to access the values in Dictionary and use it in an array:
```swift
let languagesValues = [Int](languages.values)
```

```swift
```
