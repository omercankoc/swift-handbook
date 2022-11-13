# Enumeration
An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.

Enumerations in Swift are first-class types in their own right. 
They adopt many features traditionally supported only by classes, such as computed properties to provide additional information about the enumeration’s current value, 
and instance methods to provide functionality related to the values the enumeration represents. 
Enumerations can also define initializers to provide an initial case value; can be extended to expand their functionality beyond their original implementation; and 
can conform to protocols to provide standard functionality.
```swift
enum LanguageType {
    case Scripting
    case Compiled
}
```

- Adding an enum as a property to a class:
```swift
class Languages { 
    var language : String
    var developer : String
    var year : Int
    var type : LanguageType
    
    init(initLanguage : String, initDeveloper : String, initYear : Int, initType : LanguageType) {
        self.language = initLanguage
        self.developer = initDeveloper
        self.year = initYear
        self.type = initType
        
        print("Created Language Object!")
    }
}
```
```swift
let kotlin = Languages(initLanguage: "Kotlin", initDeveloper: "JetBrains", initYear: 2014, initType: .Compiled)
```
