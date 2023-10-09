# Strings and Characters
- Type Annotation
``` swift
var language : String
```

- Assignment
``` swift
var language = "Swift"
```

- Declaration
``` swift
var language : String = "Swift"
```

- Initializing an Empty String
``` swift
var language = String()
```

- Initializing an String
``` swift
var language = String("Swift")
```

- Assignment Multiline String Literals
``` swift
var language = """
    Swift Programming Languages
    By Apple
"""
```

- Nullable
```swift
func validateURL(_ url : String?) -> Bool {
    if url == nil {
        return false
    } else {
        return true
    }
}

let url = validateURL("https://www.youtube.com")
print(url)

let url_ = validateURL(nil)
print(url_)
```
```
true
false
```

- Elements in String
```swift
for item in language {
    print(item)
}
```
```
S w i f t
```

- Enumerated Elements in String
```swift
for (index,item) in language.enumerated(){
    print(index, item)
}
```
```
0 S
1 w
2 i
3 f
4 t
```

- String Interpolation
```swift
var language : String = "Swift"
var developer : String = "Apple"
var message : String = "\(language) programming language developed by \(developer)."
print(message)
```
```
Swift programming language developed by Apple.
```

## Methods

- Count
```swift
var language : String = "Swift"
var result = language.count
```
```
5
```

- Append
```swift
var language : String = "Swift"
language.append(" Programming Language")
```
```
Swift Programming Language
```

- Insert
```swift
var language : String = "Swift"
language.insert(".", at: language.endIndex)
```
```
Swift.
```

- Remove
```swift
var language : String = "Swift"
var index = language.index(language.startIndex, offsetBy: 2)

language.remove(at: index)
```
```
Swft
```

- Remove All
```swift
var language = "Swift Programming Language"
var text: Set<Character> = ["S","P","L"]

language.removeAll(where: { text.contains($0) })
```
```
wift rogramming anguage
```

- Drop First
```swift
var language : String = "Swift"
var dropFirst = language.dropFirst()
```
```
wift
```

- Drop Last
```swift
var language : String = "Swift"
var dropLast = language.dropLast()
```
```
Swif
```

- Lowercase
```swift
var language : String = "SWIFT"
language.lowercased()
```
```
swift
```

- Uppercase
```swift
var language : String = "swift"
language.uppercased()
```
```swift
SWIFT
```

- Capitalized
```swift
var language : String = "swift"
var result = language.capitalized
```
```
Swift
```

- Reversed
```Swift
var language : String = "Swift"
var result = String(language.reversed())
```
```
tfiwS
```

- Split
```swift
var language : String = "Swift Programming Language"
var result = language.split(separator: " ")
```
```
["Swift", "Programming", "Language"]
```

- Joined
```swift
var keywords : [String] = ["Swift", "Programming", "Language"]
var result = keywords.joined(separator: " ")
```
```
Swift Programming Language
```

- Replacing Occurrences
```swift
var message = "I came now!"
var replacedMessage = message.replacingOccurrences(of: "came",with: "go")
```
```
I go now!
```

- Elements Equal
```swift
var language : String = "Swift"
var verification : String = "Swift"

var result = language.elementsEqual(verification)
```
```
true
```

- Contains
```swift
var language : String = "Swift"
var result = language.contains("w")
```
```
true
```

- Has Prefix
```swift
var message : String = "I am Swift Developer"

var hasPrefix = message.hasPrefix("I")
print(hasPrefix)
```
```
true
```

- Has Suffix
```swift
var message : String = "I am Swift Developer"

var hasSuffix = message.hasSuffix("r")
print(hasSuffix)
```
```
true
```

- Index
```swift
var language : String = "Swift"
```

```swift
let index = language.startIndex
language[index]
```
```
S
```

```swift
let index = language.index(before: language.endIndex)
language[index]
```
```
t
```

```swift
let index = language.index(after: language.startIndex)
language[index]
```
```
w
```

```swift
let index = language.index(language.startIndex, offsetBy: 2)
language[index]
```
```
i
```
