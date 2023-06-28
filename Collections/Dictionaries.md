# Dictionaries

- Declaration
```swift
var languages: [String: String] = ["Swift":"Apple","Kotlin":"JetBrains","Go":"Google","Rust":"Mozilla","CSharp":"Microsoft"]
```
```swift
var languages: [String: Int] = [:]
```

- POST Key - Value in Dictionary
```swift
languages["Dart"] = "Google"
```
```
["Kotlin": "JetBrains", "Swift": "Apple", "Go": "Google", "Rust": "Mozilla", "CSharp": "Microsoft", "Dart": "Google"]
```

- GET Keys - Values in the Dictionary
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

- GET the Keys in the Dictionary
```swift
let languagesKeys = [String](languages.keys)
```
```
["Swift", "Kotlin", "Go", "Rust", "CSharp"]
```
- GET Values in the Dictionary
```swift
let languagesValues = [String](languages.values)
```
```
["Google", "Apple", "JetBrains", "Mozilla", "Microsoft"]
```
## Methods

- Count
```swift
languages.count
```
```
5
```

- Is Empty
```swift
languages.isEmpty
```
```
false
```

- Update Value
```swift
languages.updateValue("Google", forKey: "Dart")
```
```
["Swift": "Apple", "Kotlin": "JetBrains", "Go": "Google", "CSharp": "Microsoft", "Dart": "Google", "Rust": "Mozilla"]
```

- Remove Value
```swift
languages.removeValue(forKey: "CSharp")
```
```
["Kotlin": "JetBrains", "Go": "Google", "Rust": "Mozilla", "Swift": "Apple"]
```
