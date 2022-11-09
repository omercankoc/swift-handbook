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
Accessing the Keys and Values in the Dictionary:
```swift
for (key,value) in languages {
  print("\(key): \(value)")
}
```
```
Rust: Mozilla
CSharp: Microsoft
Kotlin: JetBrains
Swift: Apple
Go: Google
```
Accessing the Keys in the Dictionary:
```swift
let languagesKeys = [String](languages.keys)
```
```
["Swift", "Kotlin", "Go", "Rust", "CSharp"]
```
Accessing the Values in the Dictionary:
```swift
let languagesValues = [String](languages.values)
```
```
["Google", "Apple", "JetBrains", "Mozilla", "Microsoft"]
```
Remove an Element from a Dictionary:
```swift
languages.removeValue(forKey: "CSharp")
```
```
["Kotlin": "JetBrains", "Go": "Google", "Rust": "Mozilla", "Swift": "Apple"]
```
Find Number of Dictionary Elements:
```swift
languages.count
```
```
5
```
Sorts Dictionary Elements:
```swift
languages.sorted(by: <)
```
```
["Rust": "Mozilla", "Go": "Google", "Swift": "Apple", "CSharp": "Microsoft", "Kotlin": "JetBrains"]
```
Changes the order of Dictionary Elements:
```swift
languages.shuffled()
```
```
["Rust": "Mozilla", "Swift": "Apple", "Kotlin": "JetBrains", "Go": "Google", "CSharp": "Microsoft"]
```
Checks if the specified Element is present:
```swift
languages.shuffled()
```
```
["Rust": "Mozilla", "Go": "Google", "Swift": "Apple", "CSharp": "Microsoft", "Kotlin": "JetBrains"]
```
Sorts Dictionary Elements:
```swift
languages.sorted(by: <)
```
```
["Rust": "Mozilla", "Go": "Google", "Swift": "Apple", "CSharp": "Microsoft", "Kotlin": "JetBrains"]
```
Sorts Dictionary Elements:
```swift
languages.sorted(by: <)
```
```
["Rust": "Mozilla", "Go": "Google", "Swift": "Apple", "CSharp": "Microsoft", "Kotlin": "JetBrains"]
```
