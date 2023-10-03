# Dictionaries

- Declaration
```swift
var languages: [String: String] = ["Swift":"Apple","Kotlin":"JetBrains","Go":"Google","Rust":"Mozilla","CSharp":"Microsoft"]
```
```swift
var os : Dictionary<String, String> = ["Swift":"Apple","Kotlin":"JetBrains","Go":"Google","Rust":"Mozilla","CSharp":"Microsoft"]
```
```swift
var languages: [String: Int] = [:]
```
```swift
var os : Dictionary<String, String> = [:]
```

- Add Key-Value
```swift
languages["Dart"] = "Google"
```
```
["Kotlin": "JetBrains", "Swift": "Apple", "Go": "Google", "Rust": "Mozilla", "CSharp": "Microsoft", "Dart": "Google"]
```

- For Loop in Dictionary
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

- Get Keys
```swift
let languagesKeys = [String](languages.keys)
```
```
["Swift", "Kotlin", "Go", "Rust", "CSharp"]
```
- Get Values
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

- Enumerated
```swift
for (index, item) in languages.enumerated(){
    print(index, item.key, item.value)
}
```
```
0 C# Microsoft
1 Java Oracle
2 Swift Apple
3 Kotlin JetBrains
4 Go Google
5 Rust Mozilla
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

- Max
```swift
var max = languages.max{$0.value.count < $1.value.count}
print(max?.key ?? "")
```
```
CSharp
```

- Min
```swift
var min = languages.min{$0.value.count < $1.value.count}
print(min?.key ?? "")
```
```
Swift
```

- Contains
```swift
var contain = languages.contains{$0.key == "Swift"}
print(contain)
```
```
true
```

- Filter
```swift
var filter = languages.filter{$0.key == "Swift"}.first?.value ?? "nil"
print(filter)
```
```
Apple
```

- Map Value
```swift
var mapping = languages.mapValues{$0 + "."}
print(mapping)
```
```
["C#": "Microsoft.", "Java": "Oracle.", "Swift": "Apple.", "Kotlin": "JetBrains.", "Go": "Google.", "Rust": "Mozilla."]
```
