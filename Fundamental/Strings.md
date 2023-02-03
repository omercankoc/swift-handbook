# String
A string is a series of characters, such as "hello, world" or "albatross". Swift strings are represented by the String type. The contents of a String can be accessed in various ways, including as a collection of Character values.

Swift’s String and Character types provide a fast, Unicode-compliant way to work with text in your code. The syntax for string creation and manipulation is lightweight and readable, with a string literal syntax that’s similar to C. String concatenation is as simple as combining two strings with the + operator, and string mutability is managed by choosing between a constant or a variable, just like any other value in Swift. You can also use strings to insert constants, variables, literals, and expressions into longer strings, in a process known as string interpolation. This makes it easy to create custom string values for display, storage, and printing.

Despite this simplicity of syntax, Swift’s String type is a fast, modern string implementation. Every string is composed of encoding-independent Unicode characters, and provides support for accessing those characters in various Unicode representations.

- Definition a String
``` swift
var language : String
```
- Initialize a String
``` swift
var language = "Swift"
```
- Definition and Initialize a String
``` swift
var language : String = "Swift"
```
- Define via the String Class
``` swift
var language : String
```
- Initialize via the String Class
``` swift
var language = String("Swift")
```
- Define and Initialize via the String Class
``` swift
var language : String = String("Swift")
```
-  Definition via Multiline String Literals
``` swift
var language : Swift
```
-  Initialize via Multiline String Literals
``` swift
var language = """
    Swift Programming Languages
    By Apple
"""
```
-  Definition and Initialize via Multiline String Literals
``` swift
var language : String = """
    Swift Programming Languages
    By Apple
"""
```
- Nullability Control
```swift
var language : String? = nil
if(language != nil){
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
language.insert("-", at: language.startIndex)
```
```
-Swift
```
- Remove
```swift
var language : String = "Swift"
var index = language.index(language.startIndex, offsetBy: 0)

language.remove(at: index)
```
```
wift
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
print(dropFirst)
```
```
wift
```
- Drop Last
```swift
var language : String = "Swift"

var dropLast = language.dropLast()
print(dropLast)
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
var replacedMessage = message.replacingOccurrences(of: "came",with: "just")
```
```
I just now!
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
