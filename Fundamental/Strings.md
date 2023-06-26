# String
- Type Annotation
``` swift
var language : String
```
- Declaration
``` swift
var language = "Swift"
```
- Type Annotation and Declaration
``` swift
var language : String = "Swift"
```
- Initialization with String Class
``` swift
var language = String("Swift")
```
- Definition and Initialize with String Class
``` swift
var language : String = String("Swift")
```
-  Initialize Multiline String Literals
``` swift
var language = """
    Swift Programming Languages
    By Apple
"""
```
-  Definition and Initialize Multiline String Literals
``` swift
var language : String = """
    Swift Programming Languages
    By Apple
"""
```
- Nullability Control
```swift
var language : String? = nil
if language != nil {
    print(language!)
} else {
    print("NIL")
}
```
- Show each character in the string
```swift
for character in language {
    print(character)
}
```
## Methods
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
- Count
```swift
var language : String = "Swift"
var result = language.count
```
```
5
```
- Reversed
```Swift
var language : String = "Swift"
var result = String(language.reversed())
```
```
tfiwS
```
- Contains
```swift
var language : String = "Swift"
var result = language.contains("w")
```
```
true
```
- Capitalized
```swift
var language : String = "swift"
var result = language.capitalized
```
```
Swift
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
- Split
```swift
var language : String = "Swift Programming Language"
var result = language.split(separator: " ")
```
```
["Swift", "Programming", "Language"]
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
- Replacing Occurrences
```swift
var message = "I came now!"
var replacedMessage = message.replacingOccurrences(of: "came",with: "go")
```
```
I go now!
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
