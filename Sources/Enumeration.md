## Enumeration
An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.

Enumerations in Swift are first-class types in their own right. 
They adopt many features traditionally supported only by classes, such as computed properties to provide additional information about the enumeration’s current value, 
and instance methods to provide functionality related to the values the enumeration represents. 
Enumerations can also define initializers to provide an initial case value; can be extended to expand their functionality beyond their original implementation; and 
can conform to protocols to provide standard functionality.

- Declaration
```swift
enum LanguageType {
    case Scripting
    case Compiled
}
```

- Enum in Model Classes
```swift
class Language {
    var language : String
    var developer : String
    var year : Int
    var type : LanguageType
    
    init(language : String, developer : String, year : Int, type : LanguageType) {
        self.language = language
        self.developer = developer
        self.year = year
        self.type = type
        
        print("Created Language Object!")
    }
}
```

- Instance
```swift
var swift = Language(language: "Swift", developer: "Apple", year: 2014, type: .Compiled)
print(swift.language, swift.developer, swift.year, swift.type)
```
```
Created Language Object!
Swift Apple 2014 Compiled
```
