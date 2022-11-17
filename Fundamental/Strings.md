# String
A string is a series of characters, such as "hello, world" or "albatross". Swift strings are represented by the String type. The contents of a String can be accessed in various ways, including as a collection of Character values.

Swift’s String and Character types provide a fast, Unicode-compliant way to work with text in your code. The syntax for string creation and manipulation is lightweight and readable, with a string literal syntax that’s similar to C. String concatenation is as simple as combining two strings with the + operator, and string mutability is managed by choosing between a constant or a variable, just like any other value in Swift. You can also use strings to insert constants, variables, literals, and expressions into longer strings, in a process known as string interpolation. This makes it easy to create custom string values for display, storage, and printing.

Despite this simplicity of syntax, Swift’s String type is a fast, modern string implementation. Every string is composed of encoding-independent Unicode characters, and provides support for accessing those characters in various Unicode representations.

- Definition a String:
``` swift
var language : String
```
- Initialize a String:
``` swift
var language = "Swift"
```
- Definition and Initialize a String:
``` swift
var language : String = "Swift"
```
- Define via the String Class:
``` swift
var language : String
```
- Initialize via the String Class:
``` swift
var language = String("Swift")
```
- Define and Initialize via the String Class:
``` swift
var language : String = String("Swift")
```
-  Definition via Multiline String Literals:
``` swift
var language : Swift
```
-  Initialize via Multiline String Literals:
``` swift
var language = """
    Swift Programming Languages
    By Apple
"""
```
-  Definition and Initialize via Multiline String Literals:
``` swift
var language : String = """
    Swift Programming Languages
    By Apple
"""
```
- Nullability Control
```swift
var developer : String? = nil
if(developer != nil){
    print(developer!)
} else {
    developer = "omercan"
}
```

- Show each character in the string.
```swift
for character in language {
    print(character)
}
```

- Append the letter C to the End.
```swift
developer?.append("koc")
```

- Makes each character of the string value Lowercase.
```swift
developer?.lowercased()
```

- Makes each character of the string value Uppercase.
```swift
developer?.uppercased()
```
